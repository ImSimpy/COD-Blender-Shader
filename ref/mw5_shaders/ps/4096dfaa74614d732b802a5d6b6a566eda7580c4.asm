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
; shader hash: b708c27c37f4761e23ded83359aa4df8
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
;                                   texture     f32          3d      T3     t52,space2     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     f32          2d      T9     t69,space2     1
;                                   texture    byte         r/o     T10     t18,space1     1
;                                   texture    byte         r/o     T11     t19,space1     1
;                                   texture    byte         r/o     T12     t20,space1     1
;                                   texture    byte         r/o     T13     t21,space1     1
;                                   texture     f32          2d     T14     t37,space2     1
;                                   texture     f32          2d     T15             t0     1
;                                   texture     f32          2d     T16     t58,space2     1
;                                   texture     f32          2d     T17     t57,space2     1
;                                   texture    byte         r/o     T18     t69,space1     1
;                                   texture     u32          2d     T19     t56,space2     1
;                                   texture     f32     2darray     T20     t35,space2     1
;                                   texture     f32          2d     T21     t34,space2     1
;                                   texture     f32          3d     T22     t31,space2     1
;                                   texture     f32          2d     T23      t1,space2     1
;                                   texture     f32          2d     T24      t2,space2     1
;                                   texture     f32          2d     T25      t3,space2     1
;                                   texture     f32          2d     T26      t4,space2     1
;                                   textureunorm_f32     2darray     T27     t80,space2     1
;                                   texture    byte         r/o     T28     t67,space1     1
;                                   texture     f32          2d     T29      t7,space2     1
;                                   texture     f32          2d     T30      t6,space2     1
;                                   texture     f32          2d     T31      t5,space2     1
;                                   texture     f32          2d     T32     t38,space2     1
;                                   texture     f32          1d     T33     t30,space2     1
;                                   texture     f32          3d     T34     t44,space2     1
;                                   texture     f32          3d     T35     t45,space2     1
;                                   texture     f32     2darray     T36     t47,space2     1
;                                   textureunorm_f32     2darray     T37     t85,space2     1
;                                   texture     f32          2d     T38     t83,space2     1
;                                   texture     f32          2d     T39     t86,space2     1
;                                   texture     f32          2d     T40     t12,space2     1
;                                   texture     f32          2d     T41     t55,space2     1
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 55, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
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
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = fcmp fast une float %132, 0.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %137 = fmul fast float %109, 2.000000e+00
  %138 = fmul fast float %137, %135
  %139 = fmul fast float %110, 2.000000e+00
  %140 = fmul fast float %139, %136
  %141 = fsub fast float 1.000000e+00, %138
  %142 = fsub fast float 1.000000e+00, %140
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = select i1 %133, float %144, float %148
  %152 = select i1 %133, float %145, float %149
  %153 = select i1 %133, float %146, float %150
  %154 = fmul fast float %151, %141
  %155 = fmul fast float %152, %141
  %156 = fmul fast float %153, %141
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.f32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = extractvalue %dx.types.CBufRet.f32 %174, 1
  %177 = extractvalue %dx.types.CBufRet.f32 %174, 2
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %191 = fmul fast float %109, 5.000000e-01
  %192 = fmul fast float %110, 5.000000e-01
  %193 = fptosi float %191 to i32
  %194 = fptosi float %192 to i32
  %195 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %193, i32 %194, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = lshr i32 %196, 18
  %198 = uitofp i32 %197 to float
  %199 = fmul fast float %198, 0x3F4C00EBA0000000
  %200 = call float @dx.op.unary.f32(i32 21, float %199)  ; Exp(value)
  %201 = fadd fast float %200, -1.000000e+00
  %202 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %203 = extractvalue %dx.types.Dimensions %202, 0
  %204 = sitofp i32 %203 to float
  %205 = extractvalue %dx.types.Dimensions %202, 1
  %206 = sitofp i32 %205 to float
  %207 = fcmp fast oge float %191, %204
  %208 = fcmp fast oge float %192, %206
  %209 = or i1 %207, %208
  %210 = select i1 %209, float 0x4197782600000000, float %201
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 2
  %213 = extractvalue %dx.types.CBufRet.f32 %211, 3
  %214 = fmul fast float %212, %109
  %215 = fmul fast float %213, %110
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 114688
  %219 = icmp ne i32 %218, 0
  %220 = select i1 %219, float %214, float 0.000000e+00
  %221 = select i1 %219, float %215, float 0.000000e+00
  %222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %220, float %221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = fmul fast float %223, 2.550000e+02
  %225 = fptoui float %224 to i32
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.i32 %227, 3
  %229 = and i32 %228, 3
  %230 = icmp ne i32 %229, 0
  %231 = and i32 %228, 4
  %232 = icmp ne i32 %231, 0
  %233 = and i1 %230, %232
  br i1 %233, label %234, label %245

; <label>:234                                     ; preds = %0
  %235 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %236 = fmul fast float %235, %110
  %237 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %238 = fmul fast float %237, %109
  %239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %44, float %238, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = fsub fast float 1.000000e+00, %240
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = fcmp fast olt float %241, %243
  br label %248

; <label>:245                                     ; preds = %0
  %246 = icmp eq i32 %231, 0
  %247 = and i1 %230, %246
  br label %248

; <label>:248                                     ; preds = %245, %234
  %249 = phi i1 [ %244, %234 ], [ %247, %245 ]
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 2
  %252 = fmul fast float %251, 0x3FE3C6EF40000000
  %253 = frem fast float %109, 2.560000e+02
  %254 = frem fast float %110, 2.560000e+02
  %255 = fptoui float %253 to i32
  %256 = fptoui float %254 to i32
  %257 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %255, i32 %256, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = fadd fast float %258, %252
  %260 = call float @dx.op.unary.f32(i32 22, float %259)  ; Frc(value)
  %261 = add i32 %50, 156
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = shl i32 %263, 4
  %265 = and i32 %264, 32752
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %263, 7
  %268 = and i32 %267, 32752
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %263, 22
  %271 = shl nuw nsw i32 %270, 5
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %50, 216
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 255
  %277 = uitofp i32 %276 to float
  %278 = fmul fast float %277, 0x3F70101020000000
  %279 = lshr i32 %275, 8
  %280 = and i32 %279, 255
  %281 = uitofp i32 %280 to float
  %282 = fmul fast float %281, 0x3F70101020000000
  %283 = lshr i32 %275, 16
  %284 = and i32 %283, 255
  %285 = uitofp i32 %284 to float
  %286 = fmul fast float %285, 0x3F70101020000000
  %287 = add i32 %50, 36
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %50, 288
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 65535
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %296, 16
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = fmul fast float %298, 0x3F50624DE0000000
  %302 = fmul fast float %300, 0x3F50624DE0000000
  %303 = add i32 %50, 172
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = shl i32 %305, 4
  %307 = and i32 %306, 32752
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %305, 7
  %310 = and i32 %309, 32752
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %305, 22
  %313 = shl nuw nsw i32 %312, 5
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %50, 232
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 255
  %319 = uitofp i32 %318 to float
  %320 = fmul fast float %319, 0x3F70101020000000
  %321 = lshr i32 %317, 8
  %322 = and i32 %321, 255
  %323 = uitofp i32 %322 to float
  %324 = fmul fast float %323, 0x3F70101020000000
  %325 = lshr i32 %317, 16
  %326 = and i32 %325, 255
  %327 = uitofp i32 %326 to float
  %328 = fmul fast float %327, 0x3F70101020000000
  %329 = add i32 %50, 52
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %50, 304
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 65535
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = lshr i32 %338, 16
  %342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %341)  ; LegacyF16ToF32(value)
  %343 = fmul fast float %340, 0x3F50624DE0000000
  %344 = fmul fast float %342, 0x3F50624DE0000000
  %345 = add i32 %50, 188
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = shl i32 %347, 4
  %349 = and i32 %348, 32752
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %347, 7
  %352 = and i32 %351, 32752
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %347, 22
  %355 = shl nuw nsw i32 %354, 5
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %50, 248
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = lshr i32 %359, 8
  %364 = and i32 %363, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = lshr i32 %359, 16
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = add i32 %50, 68
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 65535
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = lshr i32 %373, 16
  %377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %376)  ; LegacyF16ToF32(value)
  %378 = add i32 %50, 320
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 65535
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = lshr i32 %380, 16
  %384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %383)  ; LegacyF16ToF32(value)
  %385 = fmul fast float %382, 0x3F50624DE0000000
  %386 = fmul fast float %384, 0x3F50624DE0000000
  %387 = add i32 %50, 204
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = shl i32 %389, 4
  %391 = and i32 %390, 32752
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %389, 7
  %394 = and i32 %393, 32752
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %389, 22
  %397 = shl nuw nsw i32 %396, 5
  %398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %397)  ; LegacyF16ToF32(value)
  %399 = add i32 %50, 264
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 255
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F70101020000000
  %405 = lshr i32 %401, 8
  %406 = and i32 %405, 255
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3F70101020000000
  %409 = lshr i32 %401, 16
  %410 = and i32 %409, 255
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %411, 0x3F70101020000000
  %413 = add i32 %50, 84
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = add i32 %50, 336
  %421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %420, i32 undef)  ; BufferLoad(srv,index,wot)
  %422 = extractvalue %dx.types.ResRet.i32 %421, 0
  %423 = and i32 %422, 65535
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = lshr i32 %422, 16
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = fmul fast float %424, 0x3F50624DE0000000
  %428 = fmul fast float %426, 0x3F50624DE0000000
  %429 = add i32 %50, 348
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 32
  %433 = icmp eq i32 %432, 0
  %434 = and i32 %431, 64
  %435 = icmp eq i32 %434, 0
  %436 = and i32 %431, 128
  %437 = icmp eq i32 %436, 0
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = and i32 %439, 2
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %457, label %442

; <label>:442                                     ; preds = %248
  %443 = add i32 %50, 508
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = add i32 %445, 0
  %447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %447, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %449 = extractvalue %dx.types.ResRet.f32 %448, 0
  %450 = extractvalue %dx.types.ResRet.f32 %448, 1
  %451 = extractvalue %dx.types.ResRet.f32 %448, 2
  %452 = extractvalue %dx.types.ResRet.f32 %448, 3
  %453 = fmul fast float %452, %89
  %454 = fmul fast float %449, %90
  %455 = fmul fast float %450, %91
  %456 = fmul fast float %451, %92
  br label %457

; <label>:457                                     ; preds = %442, %248
  %458 = phi float [ %92, %248 ], [ %456, %442 ]
  %459 = phi float [ %91, %248 ], [ %455, %442 ]
  %460 = phi float [ %90, %248 ], [ %454, %442 ]
  %461 = phi float [ %89, %248 ], [ %453, %442 ]
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = and i32 %463, 2
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %485, label %466

; <label>:466                                     ; preds = %457
  %467 = add i32 %50, 44
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 1
  %471 = icmp ne i32 %470, 0
  %472 = select i1 %471, float %460, float 1.000000e+00
  %473 = add i32 %50, 60
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 1
  %477 = icmp ne i32 %476, 0
  %478 = select i1 %477, float %459, float 1.000000e+00
  %479 = add i32 %50, 76
  %480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.i32 %480, 0
  %482 = and i32 %481, 1
  %483 = icmp ne i32 %482, 0
  %484 = select i1 %483, float %458, float 1.000000e+00
  br label %485

; <label>:485                                     ; preds = %466, %457
  %486 = phi float [ %458, %457 ], [ %484, %466 ]
  %487 = phi float [ %459, %457 ], [ %478, %466 ]
  %488 = phi float [ %460, %457 ], [ %472, %466 ]
  %489 = lshr i32 %463, 20
  %490 = and i32 %489, 3
  %491 = add nuw nsw i32 %490, 1
  %492 = add i32 %50, 24
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = add i32 %50, 28
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = or i32 %497, %494
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %1145, label %500

; <label>:500                                     ; preds = %485
  %501 = and i32 %494, 262144
  %502 = icmp ne i32 %501, 0
  %503 = select i1 %502, float %55, float 1.000000e+00
  %504 = select i1 %502, float %56, float 0.000000e+00
  %505 = select i1 %502, float %57, float 0.000000e+00
  %506 = select i1 %502, float %58, float 1.000000e+00
  %507 = select i1 %502, float %59, float %87
  %508 = select i1 %502, float %60, float %88
  %509 = add i32 %50, 284
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = lshr i32 %511, 16
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = fmul fast float %513, 0x3F50624DE0000000
  %515 = add i32 %50, 88
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = lshr i32 %517, 16
  %519 = and i32 %518, 255
  %520 = lshr i32 %517, 24
  %521 = add i32 %50, 292
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 65535
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = lshr i32 %523, 16
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = add i32 %50, 32
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = lshr i32 %530, 22
  %532 = shl nuw nsw i32 %531, 5
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = shl i32 %530, 4
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %530, 7
  %538 = and i32 %537, 32752
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 3
  %542 = fmul fast float %541, 1.000000e+03
  %543 = fmul fast float %301, %542
  %544 = call float @dx.op.unary.f32(i32 22, float %543)  ; Frc(value)
  %545 = fadd fast float %544, %291
  %546 = fmul fast float %302, %542
  %547 = call float @dx.op.unary.f32(i32 22, float %546)  ; Frc(value)
  %548 = fadd fast float %547, %293
  %549 = fmul fast float %514, %542
  %550 = call float @dx.op.unary.f32(i32 22, float %549)  ; Frc(value)
  %551 = fmul fast float %550, 0x401921FB60000000
  %552 = fadd fast float %551, %533
  %553 = call float @dx.op.unary.f32(i32 13, float %552)  ; Sin(value)
  %554 = call float @dx.op.unary.f32(i32 12, float %552)  ; Cos(value)
  %555 = fsub fast float -0.000000e+00, %553
  %556 = fadd fast float %507, -5.000000e-01
  %557 = fadd fast float %508, -5.000000e-01
  %558 = fmul fast float %525, %556
  %559 = fmul fast float %527, %557
  %560 = fadd fast float %558, 5.000000e-01
  %561 = fadd fast float %559, 5.000000e-01
  %562 = fmul fast float %536, %560
  %563 = fmul fast float %539, %561
  %564 = fmul fast float %554, %562
  %565 = call float @dx.op.tertiary.f32(i32 46, float %555, float %563, float %564)  ; FMad(a,b,c)
  %566 = fmul fast float %553, %562
  %567 = call float @dx.op.tertiary.f32(i32 46, float %554, float %563, float %566)  ; FMad(a,b,c)
  %568 = fadd fast float %545, %565
  %569 = fadd fast float %548, %567
  %570 = icmp ugt i32 %519, 1
  %571 = icmp ugt i32 %517, 33554431
  %572 = or i1 %571, %570
  br i1 %572, label %573, label %598

; <label>:573                                     ; preds = %500
  %574 = add i32 %50, 228
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = lshr i32 %576, 16
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = fmul fast float %541, %578
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = mul nuw nsw i32 %519, %520
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %580, %582
  %584 = call float @dx.op.unary.f32(i32 27, float %583)  ; Round_ni(value)
  %585 = fptoui float %584 to i32
  %586 = urem i32 %585, %519
  %587 = udiv i32 %585, %520
  %588 = call float @dx.op.unary.f32(i32 22, float %568)  ; Frc(value)
  %589 = call float @dx.op.unary.f32(i32 22, float %569)  ; Frc(value)
  %590 = uitofp i32 %586 to float
  %591 = uitofp i32 %587 to float
  %592 = fadd fast float %588, %590
  %593 = fadd fast float %589, %591
  %594 = uitofp i32 %519 to float
  %595 = uitofp i32 %520 to float
  %596 = fdiv fast float %592, %594
  %597 = fdiv fast float %593, %595
  br label %598

; <label>:598                                     ; preds = %573, %500
  %599 = phi float [ %596, %573 ], [ %568, %500 ]
  %600 = phi float [ %597, %573 ], [ %569, %500 ]
  %601 = and i32 %494, 256
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %649, label %603

; <label>:603                                     ; preds = %598
  %604 = add i32 %50, 440
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = add i32 %606, 0
  %608 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %607, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %609 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %608, %dx.types.Handle %106, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = add i32 %50, 100
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = shl i32 %613, 4
  %615 = and i32 %614, 32752
  %616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %615)  ; LegacyF16ToF32(value)
  %617 = lshr i32 %613, 7
  %618 = and i32 %617, 32752
  %619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %618)  ; LegacyF16ToF32(value)
  %620 = fsub fast float 1.000000e+00, %461
  %621 = call float @dx.op.binary.f32(i32 35, float %620, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %622 = bitcast float %461 to i32
  %623 = sitofp i32 %622 to float
  %624 = fadd fast float %623, 0xC1CFBF8940000000
  %625 = fmul fast float %619, %624
  %626 = fadd fast float %625, 0x41CFBF8940000000
  %627 = fptosi float %626 to i32
  %628 = bitcast i32 %627 to float
  %629 = bitcast float %621 to i32
  %630 = sitofp i32 %629 to float
  %631 = fadd fast float %630, 0xC1CFBF8940000000
  %632 = fmul fast float %631, %619
  %633 = fadd fast float %632, 0x41CFBF8940000000
  %634 = fptosi float %633 to i32
  %635 = bitcast i32 %634 to float
  %636 = fmul fast float %628, %616
  %637 = fmul fast float %635, %616
  %638 = fsub fast float %621, %636
  %639 = fadd fast float %637, %621
  %640 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %641 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %642 = fsub fast float %610, %640
  %643 = fsub fast float %641, %640
  %644 = bitcast float %643 to i32
  %645 = sub nsw i32 2129859010, %644
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %646, %642
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  br label %649

; <label>:649                                     ; preds = %603, %598
  %650 = phi float [ %648, %603 ], [ %461, %598 ]
  %651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %652 = extractvalue %dx.types.ResRet.i32 %651, 0
  %653 = and i32 %652, 128
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %671, label %655

; <label>:655                                     ; preds = %649
  %656 = add i32 %50, 424
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.i32 %657, 0
  %659 = add i32 %658, 0
  %660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %660, %dx.types.Handle %106, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = and i32 %664, 524288
  %666 = icmp ne i32 %665, 0
  %667 = fcmp fast ogt float %662, 0x3FE0101020000000
  %668 = select i1 %667, float 1.000000e+00, float 0.000000e+00
  %669 = select i1 %666, float %668, float %662
  %670 = fmul fast float %669, %650
  br label %671

; <label>:671                                     ; preds = %655, %649
  %672 = phi float [ %670, %655 ], [ %650, %649 ]
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 16
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %875, label %677

; <label>:677                                     ; preds = %671
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = add i32 %50, 376
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %680, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = add i32 %682, 0
  %684 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %683, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %685 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %684, %dx.types.Handle %105, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %686 = extractvalue %dx.types.ResRet.f32 %685, 0
  %687 = extractvalue %dx.types.ResRet.f32 %685, 1
  %688 = extractvalue %dx.types.ResRet.f32 %685, 2
  %689 = extractvalue %dx.types.ResRet.f32 %685, 3
  %690 = and i32 %679, 255
  %691 = uitofp i32 %690 to float
  %692 = lshr i32 %679, 8
  %693 = and i32 %692, 255
  %694 = uitofp i32 %693 to float
  %695 = fmul fast float %689, %691
  %696 = fadd fast float %695, %694
  %697 = fmul fast float %696, 0x3F70101000000000
  %698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %699 = extractvalue %dx.types.ResRet.i32 %698, 0
  %700 = and i32 %699, 512
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %710, label %702

; <label>:702                                     ; preds = %677
  %703 = add i32 %50, 460
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %705, 0
  %707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %706, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %708 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %707, %dx.types.Handle %106, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %709 = extractvalue %dx.types.ResRet.f32 %708, 0
  br label %710

; <label>:710                                     ; preds = %702, %677
  %711 = phi float [ %709, %702 ], [ 1.000000e+00, %677 ]
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = and i32 %713, 33554432
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %822, label %716

; <label>:716                                     ; preds = %710
  %717 = add i32 %50, 224
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %717, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 65535
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = lshr i32 %719, 16
  %723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %722)  ; LegacyF16ToF32(value)
  %724 = add i32 %50, 228
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 65535
  %728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %727)  ; LegacyF16ToF32(value)
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = lshr i32 %730, 24
  %732 = uitofp i32 %731 to float
  %733 = fmul fast float %732, 0x3F70101020000000
  %734 = and i32 %730, 255
  %735 = uitofp i32 %734 to float
  %736 = fmul fast float %735, 0x3F70101020000000
  %737 = lshr i32 %730, 8
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = fmul fast float %739, 0x3F70101020000000
  %741 = lshr i32 %730, 16
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101020000000
  %745 = add i32 %50, 220
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = lshr i32 %747, 24
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101020000000
  %751 = and i32 %747, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %752, 0x3F70101020000000
  %754 = lshr i32 %747, 8
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %756, 0x3F70101020000000
  %758 = lshr i32 %747, 16
  %759 = and i32 %758, 255
  %760 = uitofp i32 %759 to float
  %761 = fmul fast float %760, 0x3F70101020000000
  %762 = bitcast float %686 to i32
  %763 = ashr i32 %762, 1
  %764 = sub nsw i32 1597463174, %763
  %765 = bitcast i32 %764 to float
  %766 = fmul fast float %686, 5.000000e-01
  %767 = fmul fast float %765, %765
  %768 = fmul fast float %767, %766
  %769 = fsub fast float 1.500000e+00, %768
  %770 = fmul fast float %765, %686
  %771 = fmul fast float %770, %769
  %772 = bitcast float %687 to i32
  %773 = ashr i32 %772, 1
  %774 = sub nsw i32 1597463174, %773
  %775 = bitcast i32 %774 to float
  %776 = fmul fast float %687, 5.000000e-01
  %777 = fmul fast float %775, %775
  %778 = fmul fast float %777, %776
  %779 = fsub fast float 1.500000e+00, %778
  %780 = fmul fast float %775, %687
  %781 = fmul fast float %780, %779
  %782 = bitcast float %688 to i32
  %783 = ashr i32 %782, 1
  %784 = sub nsw i32 1597463174, %783
  %785 = bitcast i32 %784 to float
  %786 = fmul fast float %688, 5.000000e-01
  %787 = fmul fast float %785, %785
  %788 = fmul fast float %787, %786
  %789 = fsub fast float 1.500000e+00, %788
  %790 = fmul fast float %785, %688
  %791 = fmul fast float %790, %789
  %792 = fsub fast float %771, %753
  %793 = fsub fast float %781, %757
  %794 = fsub fast float %791, %761
  %795 = fmul fast float %792, %721
  %796 = fmul fast float %793, %723
  %797 = fmul fast float %794, %728
  %798 = fadd fast float %795, %736
  %799 = fadd fast float %796, %740
  %800 = fadd fast float %797, %744
  %801 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %802 = call float @dx.op.unary.f32(i32 7, float %799)  ; Saturate(value)
  %803 = call float @dx.op.unary.f32(i32 7, float %800)  ; Saturate(value)
  %804 = fmul fast float %801, %801
  %805 = fmul fast float %802, %802
  %806 = fmul fast float %803, %803
  %807 = fsub fast float %804, %686
  %808 = fsub fast float %805, %687
  %809 = fsub fast float %806, %688
  %810 = fmul fast float %807, %711
  %811 = fmul fast float %808, %711
  %812 = fmul fast float %809, %711
  %813 = fadd fast float %810, %686
  %814 = fadd fast float %811, %687
  %815 = fadd fast float %812, %688
  %816 = fadd fast float %733, %697
  %817 = fsub fast float %816, %750
  %818 = call float @dx.op.unary.f32(i32 7, float %817)  ; Saturate(value)
  %819 = fsub fast float %818, %697
  %820 = fmul fast float %819, %711
  %821 = fadd fast float %820, %697
  br label %875

; <label>:822                                     ; preds = %710
  %823 = and i32 %713, 134217728
  %824 = icmp eq i32 %823, 0
  br i1 %824, label %859, label %825

; <label>:825                                     ; preds = %822
  %826 = call float @dx.op.unary.f32(i32 24, float %278)  ; Sqrt(value)
  %827 = call float @dx.op.unary.f32(i32 24, float %282)  ; Sqrt(value)
  %828 = call float @dx.op.unary.f32(i32 24, float %286)  ; Sqrt(value)
  %829 = fadd fast float %826, -5.000000e-01
  %830 = fadd fast float %827, -5.000000e-01
  %831 = fadd fast float %828, -5.000000e-01
  %832 = fmul fast float %829, %711
  %833 = fmul fast float %830, %711
  %834 = fmul fast float %831, %711
  %835 = fadd fast float %832, 5.000000e-01
  %836 = fadd fast float %833, 5.000000e-01
  %837 = fadd fast float %834, 5.000000e-01
  %838 = call float @dx.op.unary.f32(i32 24, float %686)  ; Sqrt(value)
  %839 = call float @dx.op.unary.f32(i32 24, float %687)  ; Sqrt(value)
  %840 = call float @dx.op.unary.f32(i32 24, float %688)  ; Sqrt(value)
  %841 = fmul fast float %835, 2.000000e+00
  %842 = fsub fast float 1.000000e+00, %841
  %843 = fmul fast float %842, %838
  %844 = fadd fast float %843, %841
  %845 = fmul fast float %844, %838
  %846 = fmul fast float %836, 2.000000e+00
  %847 = fsub fast float 1.000000e+00, %846
  %848 = fmul fast float %847, %839
  %849 = fadd fast float %848, %846
  %850 = fmul fast float %849, %839
  %851 = fmul fast float %837, 2.000000e+00
  %852 = fsub fast float 1.000000e+00, %851
  %853 = fmul fast float %852, %840
  %854 = fadd fast float %853, %851
  %855 = fmul fast float %854, %840
  %856 = fmul fast float %845, %845
  %857 = fmul fast float %850, %850
  %858 = fmul fast float %855, %855
  br label %875

; <label>:859                                     ; preds = %822
  %860 = fmul fast float %278, %278
  %861 = fmul fast float %282, %282
  %862 = fmul fast float %286, %286
  %863 = fadd fast float %860, -1.000000e+00
  %864 = fadd fast float %861, -1.000000e+00
  %865 = fadd fast float %862, -1.000000e+00
  %866 = fmul fast float %711, %863
  %867 = fmul fast float %711, %864
  %868 = fmul fast float %711, %865
  %869 = fadd fast float %866, 1.000000e+00
  %870 = fadd fast float %867, 1.000000e+00
  %871 = fadd fast float %868, 1.000000e+00
  %872 = fmul fast float %869, %686
  %873 = fmul fast float %870, %687
  %874 = fmul fast float %871, %688
  br label %875

; <label>:875                                     ; preds = %859, %825, %716, %671
  %876 = phi float [ %821, %716 ], [ %697, %825 ], [ %697, %859 ], [ 0x3FA23C0BE0000000, %671 ]
  %877 = phi float [ %813, %716 ], [ %856, %825 ], [ %872, %859 ], [ 1.000000e+00, %671 ]
  %878 = phi float [ %814, %716 ], [ %857, %825 ], [ %873, %859 ], [ 1.000000e+00, %671 ]
  %879 = phi float [ %815, %716 ], [ %858, %825 ], [ %874, %859 ], [ 1.000000e+00, %671 ]
  %880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %881 = extractvalue %dx.types.CBufRet.i32 %880, 1
  %882 = and i32 %881, 1
  %883 = icmp ne i32 %882, 0
  %884 = add i32 %50, 356
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = and i32 %886, 32
  %888 = icmp ne i32 %887, 0
  %889 = and i1 %883, %888
  %890 = select i1 %889, float 1.000000e+00, float %877
  %891 = select i1 %889, float 0x3FD3333340000000, float %878
  %892 = select i1 %889, float 0x3FD3333340000000, float %879
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = and i32 %894, 32
  %896 = icmp eq i32 %895, 0
  br i1 %896, label %969, label %897

; <label>:897                                     ; preds = %875
  %898 = add i32 %50, 92
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = add i32 %50, 392
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = add i32 %903, 0
  %905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %904, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %906 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %905, %dx.types.Handle %105, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %907 = extractvalue %dx.types.ResRet.f32 %906, 0
  %908 = extractvalue %dx.types.ResRet.f32 %906, 1
  %909 = extractvalue %dx.types.ResRet.f32 %906, 2
  %910 = extractvalue %dx.types.ResRet.f32 %906, 3
  %911 = and i32 %900, 255
  %912 = uitofp i32 %911 to float
  %913 = lshr i32 %900, 8
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = lshr i32 %900, 16
  %917 = and i32 %916, 255
  %918 = uitofp i32 %917 to float
  %919 = fmul fast float %918, 0x3F70101000000000
  %920 = fmul fast float %907, %912
  %921 = fadd fast float %920, %915
  %922 = fmul fast float %921, 0x3F70101000000000
  %923 = fadd fast float %908, -5.000000e-01
  %924 = fadd fast float %910, -5.000000e-01
  %925 = fmul fast float %923, %919
  %926 = fmul fast float %924, %919
  %927 = fadd fast float %925, 5.000000e-01
  %928 = fadd fast float %926, 5.000000e-01
  %929 = fmul fast float %927, 2.000000e+00
  %930 = fadd fast float %929, -1.000000e+00
  %931 = fmul fast float %928, 2.000000e+00
  %932 = fadd fast float %931, -1.000000e+00
  %933 = fadd fast float %930, %932
  %934 = fmul fast float %933, 5.000000e-01
  %935 = fsub fast float %930, %932
  %936 = fmul fast float %935, 5.000000e-01
  %937 = call float @dx.op.unary.f32(i32 6, float %934)  ; FAbs(value)
  %938 = fsub fast float 1.000000e+00, %937
  %939 = call float @dx.op.unary.f32(i32 6, float %936)  ; FAbs(value)
  %940 = fsub fast float %938, %939
  %941 = call float @dx.op.dot3.f32(i32 55, float %934, float %936, float %940, float %934, float %936, float %940)  ; Dot3(ax,ay,az,bx,by,bz)
  %942 = call float @dx.op.unary.f32(i32 25, float %941)  ; Rsqrt(value)
  %943 = fmul fast float %934, %942
  %944 = fmul fast float %936, %942
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = and i32 %946, 67108864
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %965, label %949

; <label>:949                                     ; preds = %897
  %950 = add i32 %50, 280
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 65535
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 65535
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = lshr i32 %952, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = fsub fast float %922, %960
  %962 = fmul fast float %961, %954
  %963 = fadd fast float %962, %958
  %964 = call float @dx.op.unary.f32(i32 7, float %963)  ; Saturate(value)
  br label %965

; <label>:965                                     ; preds = %949, %897
  %966 = phi float [ %964, %949 ], [ %922, %897 ]
  %967 = call float @dx.op.dot2.f32(i32 54, float %943, float %944, float %503, float %504)  ; Dot2(ax,ay,bx,by)
  %968 = call float @dx.op.dot2.f32(i32 54, float %943, float %944, float %505, float %506)  ; Dot2(ax,ay,bx,by)
  br label %969

; <label>:969                                     ; preds = %965, %875
  %970 = phi float [ %966, %965 ], [ 0x3FD6666660000000, %875 ]
  %971 = phi float [ %967, %965 ], [ 0.000000e+00, %875 ]
  %972 = phi float [ %968, %965 ], [ 0.000000e+00, %875 ]
  %973 = phi float [ %909, %965 ], [ 1.000000e+00, %875 ]
  %974 = add i32 %50, 160
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = lshr i32 %976, 22
  %978 = shl nuw nsw i32 %977, 5
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = and i32 %981, 64
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1017, label %984

; <label>:984                                     ; preds = %969
  %985 = add i32 %50, 408
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = add i32 %987, 0
  %989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 131072
  %993 = icmp eq i32 %992, 0
  %994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %989, %dx.types.Handle %105, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %995 = extractvalue %dx.types.ResRet.f32 %994, 0
  %996 = extractvalue %dx.types.ResRet.f32 %994, 1
  %997 = extractvalue %dx.types.ResRet.f32 %994, 2
  %998 = fmul fast float %995, %266
  %999 = fmul fast float %996, %269
  %1000 = fmul fast float %997, %272
  br i1 %993, label %1007, label %1001

; <label>:1001                                    ; preds = %984
  %1002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1003 = extractvalue %dx.types.CBufRet.f32 %1002, 0
  %1004 = fmul fast float %1003, %998
  %1005 = fmul fast float %1003, %999
  %1006 = fmul fast float %1003, %1000
  br label %1007

; <label>:1007                                    ; preds = %1001, %984
  %1008 = phi float [ %1004, %1001 ], [ %998, %984 ]
  %1009 = phi float [ %1005, %1001 ], [ %999, %984 ]
  %1010 = phi float [ %1006, %1001 ], [ %1000, %984 ]
  %1011 = fmul fast float %1008, %979
  %1012 = select i1 %249, float %1011, float %1008
  %1013 = call float @dx.op.dot3.f32(i32 55, float %1012, float %1009, float %1010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1014 = select i1 %249, float 0.000000e+00, float %1008
  %1015 = select i1 %249, float %1013, float %1009
  %1016 = select i1 %249, float 0.000000e+00, float %1010
  br label %1017

; <label>:1017                                    ; preds = %1007, %969
  %1018 = phi float [ %1014, %1007 ], [ 0.000000e+00, %969 ]
  %1019 = phi float [ %1015, %1007 ], [ 0.000000e+00, %969 ]
  %1020 = phi float [ %1016, %1007 ], [ 0.000000e+00, %969 ]
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = and i32 %1022, 1024
  %1024 = icmp eq i32 %1023, 0
  br i1 %1024, label %1055, label %1025

; <label>:1025                                    ; preds = %1017
  %1026 = add i32 %50, 152
  %1027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1026, i32 undef)  ; BufferLoad(srv,index,wot)
  %1028 = extractvalue %dx.types.ResRet.i32 %1027, 0
  %1029 = and i32 %1028, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = fmul fast float %1030, 0x3F70101020000000
  %1032 = lshr i32 %1028, 8
  %1033 = and i32 %1032, 255
  %1034 = uitofp i32 %1033 to float
  %1035 = fmul fast float %1034, 0x3F70101020000000
  %1036 = lshr i32 %1028, 16
  %1037 = and i32 %1036, 255
  %1038 = uitofp i32 %1037 to float
  %1039 = fmul fast float %1038, 0x3F70101020000000
  %1040 = fmul fast float %1031, %1031
  %1041 = fmul fast float %1035, %1035
  %1042 = fmul fast float %1039, %1039
  %1043 = add i32 %50, 476
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %1045, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1047, %dx.types.Handle %106, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = fmul fast float %1040, %1049
  %1053 = fmul fast float %1041, %1050
  %1054 = fmul fast float %1042, %1051
  br label %1055

; <label>:1055                                    ; preds = %1025, %1017
  %1056 = phi float [ %1052, %1025 ], [ 0.000000e+00, %1017 ]
  %1057 = phi float [ %1053, %1025 ], [ 0.000000e+00, %1017 ]
  %1058 = phi float [ %1054, %1025 ], [ 0.000000e+00, %1017 ]
  %1059 = fcmp fast ogt float %1056, 0.000000e+00
  %1060 = fcmp fast ogt float %1057, 0.000000e+00
  %1061 = fcmp fast ogt float %1058, 0.000000e+00
  %1062 = call float @dx.op.unary.f32(i32 23, float %1056)  ; Log(value)
  %1063 = call float @dx.op.unary.f32(i32 23, float %1057)  ; Log(value)
  %1064 = call float @dx.op.unary.f32(i32 23, float %1058)  ; Log(value)
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = lshr i32 %1066, 7
  %1068 = and i32 %1067, 32752
  %1069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1068)  ; LegacyF16ToF32(value)
  %1070 = fmul fast float %1062, 0xBFE62E4300000000
  %1071 = fmul fast float %1070, %1069
  %1072 = fmul fast float %1063, 0xBFE62E4300000000
  %1073 = fmul fast float %1072, %1069
  %1074 = fmul fast float %1064, 0xBFE62E4300000000
  %1075 = fmul fast float %1074, %1069
  %1076 = select i1 %1059, float %1071, float 1.270000e+02
  %1077 = select i1 %1060, float %1073, float 1.270000e+02
  %1078 = select i1 %1061, float %1075, float 1.270000e+02
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 10240
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1127, label %1083

; <label>:1083                                    ; preds = %1055
  %1084 = add i32 %50, 492
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = add i32 %1086, 0
  %1088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1088, %dx.types.Handle %106, float %599, float %600, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1089, 3
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = and i32 %1093, 1048576
  %1095 = icmp ne i32 %1094, 0
  %1096 = and i32 %1093, 8192
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1113, label %1098

; <label>:1098                                    ; preds = %1083
  %1099 = extractvalue %dx.types.ResRet.f32 %1089, 2
  %1100 = select i1 %1095, float %1099, float %1090
  %1101 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1102 = select i1 %1095, float %1101, float %1090
  %1103 = add i32 %50, 96
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = lshr i32 %1105, 16
  %1107 = and i32 %1106, 255
  %1108 = uitofp i32 %1107 to float
  %1109 = fmul fast float %1108, 0x3F80101020000000
  %1110 = fmul fast float %1109, %1102
  %1111 = fmul fast float %1109, %1090
  %1112 = fmul fast float %1109, %1100
  br label %1113

; <label>:1113                                    ; preds = %1098, %1083
  %1114 = phi float [ %1110, %1098 ], [ 0.000000e+00, %1083 ]
  %1115 = phi float [ %1111, %1098 ], [ 0.000000e+00, %1083 ]
  %1116 = phi float [ %1112, %1098 ], [ 0.000000e+00, %1083 ]
  %1117 = and i32 %1093, 2048
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1127, label %1119

; <label>:1119                                    ; preds = %1113
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = shl i32 %1121, 4
  %1123 = and i32 %1122, 32752
  %1124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1123)  ; LegacyF16ToF32(value)
  %1125 = fmul fast float %1124, %1091
  %1126 = call float @dx.op.binary.f32(i32 35, float %1125, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1127

; <label>:1127                                    ; preds = %1119, %1113, %1055
  %1128 = phi float [ %1114, %1119 ], [ %1114, %1113 ], [ 0.000000e+00, %1055 ]
  %1129 = phi float [ %1115, %1119 ], [ %1115, %1113 ], [ 0.000000e+00, %1055 ]
  %1130 = phi float [ %1116, %1119 ], [ %1116, %1113 ], [ 0.000000e+00, %1055 ]
  %1131 = phi float [ %1126, %1119 ], [ 0x3F70101020000000, %1113 ], [ 0x3F70101020000000, %1055 ]
  %1132 = add i32 %50, 96
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1132, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = and i32 %1134, 255
  %1136 = uitofp i32 %1135 to float
  %1137 = lshr i32 %1134, 8
  %1138 = and i32 %1137, 255
  %1139 = uitofp i32 %1138 to float
  %1140 = call float @dx.op.dot3.f32(i32 55, float %890, float %891, float %892, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = fmul fast float %1139, %1140
  %1142 = fadd fast float %1141, %1136
  %1143 = fmul fast float %1142, 0x3F70101020000000
  %1144 = call float @dx.op.unary.f32(i32 7, float %1143)  ; Saturate(value)
  br label %1145

; <label>:1145                                    ; preds = %1127, %485
  %1146 = phi float [ 0.000000e+00, %485 ], [ %971, %1127 ]
  %1147 = phi float [ 0.000000e+00, %485 ], [ %972, %1127 ]
  %1148 = phi float [ 0.000000e+00, %485 ], [ %890, %1127 ]
  %1149 = phi float [ 0.000000e+00, %485 ], [ %891, %1127 ]
  %1150 = phi float [ 0.000000e+00, %485 ], [ %892, %1127 ]
  %1151 = phi float [ 0.000000e+00, %485 ], [ %1128, %1127 ]
  %1152 = phi float [ 0.000000e+00, %485 ], [ %1129, %1127 ]
  %1153 = phi float [ 0.000000e+00, %485 ], [ %1130, %1127 ]
  %1154 = phi float [ 0.000000e+00, %485 ], [ %1076, %1127 ]
  %1155 = phi float [ 0.000000e+00, %485 ], [ %1077, %1127 ]
  %1156 = phi float [ 0.000000e+00, %485 ], [ %1078, %1127 ]
  %1157 = phi float [ 0.000000e+00, %485 ], [ %1018, %1127 ]
  %1158 = phi float [ 0.000000e+00, %485 ], [ %1019, %1127 ]
  %1159 = phi float [ 0.000000e+00, %485 ], [ %1020, %1127 ]
  %1160 = phi float [ 0.000000e+00, %485 ], [ %876, %1127 ]
  %1161 = phi float [ 0.000000e+00, %485 ], [ %672, %1127 ]
  %1162 = phi float [ 0.000000e+00, %485 ], [ %970, %1127 ]
  %1163 = phi float [ 0.000000e+00, %485 ], [ %973, %1127 ]
  %1164 = phi float [ 0.000000e+00, %485 ], [ %1131, %1127 ]
  %1165 = phi float [ 0.000000e+00, %485 ], [ %1144, %1127 ]
  br i1 %433, label %2088, label %1166

; <label>:1166                                    ; preds = %1145
  %1167 = icmp ult i32 %491, 2
  %1168 = add i32 %50, 40
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = add i32 %50, 44
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = or i32 %1173, %1170
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %2088, label %1176

; <label>:1176                                    ; preds = %1166
  %1177 = and i32 %1170, 262144
  %1178 = icmp ne i32 %1177, 0
  %1179 = select i1 %1178, float %55, float 1.000000e+00
  %1180 = select i1 %1178, float %56, float 0.000000e+00
  %1181 = select i1 %1178, float %57, float 0.000000e+00
  %1182 = select i1 %1178, float %58, float 1.000000e+00
  %1183 = select i1 %1178, float %59, float %87
  %1184 = select i1 %1178, float %60, float %88
  %1185 = add i32 %50, 300
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 16
  %1189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1188)  ; LegacyF16ToF32(value)
  %1190 = fmul fast float %1189, 0x3F50624DE0000000
  %1191 = add i32 %50, 104
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = lshr i32 %1193, 16
  %1195 = and i32 %1194, 255
  %1196 = lshr i32 %1193, 24
  %1197 = add i32 %50, 308
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1197, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 65535
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = lshr i32 %1199, 16
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = add i32 %50, 48
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = lshr i32 %1206, 22
  %1208 = shl nuw nsw i32 %1207, 5
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = shl i32 %1206, 4
  %1211 = and i32 %1210, 32752
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = lshr i32 %1206, 7
  %1214 = and i32 %1213, 32752
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 3
  %1218 = fmul fast float %1217, 1.000000e+03
  %1219 = fmul fast float %343, %1218
  %1220 = call float @dx.op.unary.f32(i32 22, float %1219)  ; Frc(value)
  %1221 = fadd fast float %1220, %333
  %1222 = fmul fast float %344, %1218
  %1223 = call float @dx.op.unary.f32(i32 22, float %1222)  ; Frc(value)
  %1224 = fadd fast float %1223, %335
  %1225 = fmul fast float %1190, %1218
  %1226 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1227 = fmul fast float %1226, 0x401921FB60000000
  %1228 = fadd fast float %1227, %1209
  %1229 = call float @dx.op.unary.f32(i32 13, float %1228)  ; Sin(value)
  %1230 = call float @dx.op.unary.f32(i32 12, float %1228)  ; Cos(value)
  %1231 = fsub fast float -0.000000e+00, %1229
  %1232 = fadd fast float %1183, -5.000000e-01
  %1233 = fadd fast float %1184, -5.000000e-01
  %1234 = fmul fast float %1201, %1232
  %1235 = fmul fast float %1203, %1233
  %1236 = fadd fast float %1234, 5.000000e-01
  %1237 = fadd fast float %1235, 5.000000e-01
  %1238 = fmul fast float %1212, %1236
  %1239 = fmul fast float %1215, %1237
  %1240 = fmul fast float %1230, %1238
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1231, float %1239, float %1240)  ; FMad(a,b,c)
  %1242 = fmul fast float %1229, %1238
  %1243 = call float @dx.op.tertiary.f32(i32 46, float %1230, float %1239, float %1242)  ; FMad(a,b,c)
  %1244 = fadd fast float %1221, %1241
  %1245 = fadd fast float %1224, %1243
  %1246 = icmp ugt i32 %1195, 1
  %1247 = icmp ugt i32 %1193, 33554431
  %1248 = or i1 %1247, %1246
  br i1 %1248, label %1249, label %1274

; <label>:1249                                    ; preds = %1176
  %1250 = add i32 %50, 244
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = lshr i32 %1252, 16
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = fmul fast float %1217, %1254
  %1256 = call float @dx.op.unary.f32(i32 22, float %1255)  ; Frc(value)
  %1257 = mul nuw nsw i32 %1195, %1196
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1256, %1258
  %1260 = call float @dx.op.unary.f32(i32 27, float %1259)  ; Round_ni(value)
  %1261 = fptoui float %1260 to i32
  %1262 = urem i32 %1261, %1195
  %1263 = udiv i32 %1261, %1196
  %1264 = call float @dx.op.unary.f32(i32 22, float %1244)  ; Frc(value)
  %1265 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1266 = uitofp i32 %1262 to float
  %1267 = uitofp i32 %1263 to float
  %1268 = fadd fast float %1264, %1266
  %1269 = fadd fast float %1265, %1267
  %1270 = uitofp i32 %1195 to float
  %1271 = uitofp i32 %1196 to float
  %1272 = fdiv fast float %1268, %1270
  %1273 = fdiv fast float %1269, %1271
  br label %1274

; <label>:1274                                    ; preds = %1249, %1176
  %1275 = phi float [ %1272, %1249 ], [ %1244, %1176 ]
  %1276 = phi float [ %1273, %1249 ], [ %1245, %1176 ]
  %1277 = and i32 %1170, 256
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1325, label %1279

; <label>:1279                                    ; preds = %1274
  %1280 = add i32 %50, 444
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = add i32 %1282, 0
  %1284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1284, %dx.types.Handle %106, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1286 = extractvalue %dx.types.ResRet.f32 %1285, 0
  %1287 = add i32 %50, 116
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = shl i32 %1289, 4
  %1291 = and i32 %1290, 32752
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = lshr i32 %1289, 7
  %1294 = and i32 %1293, 32752
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = fsub fast float 1.000000e+00, %488
  %1297 = call float @dx.op.binary.f32(i32 35, float %1296, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1298 = bitcast float %488 to i32
  %1299 = sitofp i32 %1298 to float
  %1300 = fadd fast float %1299, 0xC1CFBF8940000000
  %1301 = fmul fast float %1295, %1300
  %1302 = fadd fast float %1301, 0x41CFBF8940000000
  %1303 = fptosi float %1302 to i32
  %1304 = bitcast i32 %1303 to float
  %1305 = bitcast float %1297 to i32
  %1306 = sitofp i32 %1305 to float
  %1307 = fadd fast float %1306, 0xC1CFBF8940000000
  %1308 = fmul fast float %1307, %1295
  %1309 = fadd fast float %1308, 0x41CFBF8940000000
  %1310 = fptosi float %1309 to i32
  %1311 = bitcast i32 %1310 to float
  %1312 = fmul fast float %1304, %1292
  %1313 = fmul fast float %1311, %1292
  %1314 = fsub fast float %1297, %1312
  %1315 = fadd fast float %1313, %1297
  %1316 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1317 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1318 = fsub fast float %1286, %1316
  %1319 = fsub fast float %1317, %1316
  %1320 = bitcast float %1319 to i32
  %1321 = sub nsw i32 2129859010, %1320
  %1322 = bitcast i32 %1321 to float
  %1323 = fmul fast float %1322, %1318
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  br label %1325

; <label>:1325                                    ; preds = %1279, %1274
  %1326 = phi float [ %1324, %1279 ], [ %488, %1274 ]
  %1327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.i32 %1327, 0
  %1329 = and i32 %1328, 128
  %1330 = icmp eq i32 %1329, 0
  br i1 %1330, label %1347, label %1331

; <label>:1331                                    ; preds = %1325
  %1332 = add i32 %50, 428
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = add i32 %1334, 0
  %1336 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1335, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1337 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1336, %dx.types.Handle %106, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1338 = extractvalue %dx.types.ResRet.f32 %1337, 0
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = and i32 %1340, 524288
  %1342 = icmp ne i32 %1341, 0
  %1343 = fcmp fast ogt float %1338, 0x3FE0101020000000
  %1344 = select i1 %1343, float 1.000000e+00, float 0.000000e+00
  %1345 = select i1 %1342, float %1344, float %1338
  %1346 = fmul fast float %1345, %1326
  br label %1347

; <label>:1347                                    ; preds = %1331, %1325
  %1348 = phi float [ %1346, %1331 ], [ %1326, %1325 ]
  %1349 = fcmp fast ult float %1348, 0x3F70101020000000
  br i1 %1349, label %2088, label %1350

; <label>:1350                                    ; preds = %1347
  %1351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.i32 %1351, 0
  %1353 = and i32 %1352, 16
  %1354 = icmp eq i32 %1353, 0
  br i1 %1354, label %1553, label %1355

; <label>:1355                                    ; preds = %1350
  %1356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1357 = extractvalue %dx.types.ResRet.i32 %1356, 0
  %1358 = add i32 %50, 380
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = add i32 %1360, 0
  %1362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1362, %dx.types.Handle %105, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1364 = extractvalue %dx.types.ResRet.f32 %1363, 0
  %1365 = extractvalue %dx.types.ResRet.f32 %1363, 1
  %1366 = extractvalue %dx.types.ResRet.f32 %1363, 2
  %1367 = extractvalue %dx.types.ResRet.f32 %1363, 3
  %1368 = and i32 %1357, 255
  %1369 = uitofp i32 %1368 to float
  %1370 = lshr i32 %1357, 8
  %1371 = and i32 %1370, 255
  %1372 = uitofp i32 %1371 to float
  %1373 = fmul fast float %1367, %1369
  %1374 = fadd fast float %1373, %1372
  %1375 = fmul fast float %1374, 0x3F70101000000000
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = and i32 %1377, 512
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1388, label %1380

; <label>:1380                                    ; preds = %1355
  %1381 = add i32 %50, 464
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = add i32 %1383, 0
  %1385 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1384, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1386 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1385, %dx.types.Handle %106, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1387 = extractvalue %dx.types.ResRet.f32 %1386, 0
  br label %1388

; <label>:1388                                    ; preds = %1380, %1355
  %1389 = phi float [ %1387, %1380 ], [ 1.000000e+00, %1355 ]
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 33554432
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1500, label %1394

; <label>:1394                                    ; preds = %1388
  %1395 = add i32 %50, 240
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 65535
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = lshr i32 %1397, 16
  %1401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1400)  ; LegacyF16ToF32(value)
  %1402 = add i32 %50, 244
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 65535
  %1406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1405)  ; LegacyF16ToF32(value)
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = lshr i32 %1408, 24
  %1410 = uitofp i32 %1409 to float
  %1411 = fmul fast float %1410, 0x3F70101020000000
  %1412 = and i32 %1408, 255
  %1413 = uitofp i32 %1412 to float
  %1414 = fmul fast float %1413, 0x3F70101020000000
  %1415 = lshr i32 %1408, 8
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101020000000
  %1419 = lshr i32 %1408, 16
  %1420 = and i32 %1419, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = fmul fast float %1421, 0x3F70101020000000
  %1423 = add i32 %50, 236
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = lshr i32 %1425, 24
  %1427 = uitofp i32 %1426 to float
  %1428 = fmul fast float %1427, 0x3F70101020000000
  %1429 = and i32 %1425, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = fmul fast float %1430, 0x3F70101020000000
  %1432 = lshr i32 %1425, 8
  %1433 = and i32 %1432, 255
  %1434 = uitofp i32 %1433 to float
  %1435 = fmul fast float %1434, 0x3F70101020000000
  %1436 = lshr i32 %1425, 16
  %1437 = and i32 %1436, 255
  %1438 = uitofp i32 %1437 to float
  %1439 = fmul fast float %1438, 0x3F70101020000000
  %1440 = bitcast float %1364 to i32
  %1441 = ashr i32 %1440, 1
  %1442 = sub nsw i32 1597463174, %1441
  %1443 = bitcast i32 %1442 to float
  %1444 = fmul fast float %1364, 5.000000e-01
  %1445 = fmul fast float %1443, %1443
  %1446 = fmul fast float %1445, %1444
  %1447 = fsub fast float 1.500000e+00, %1446
  %1448 = fmul fast float %1443, %1364
  %1449 = fmul fast float %1448, %1447
  %1450 = bitcast float %1365 to i32
  %1451 = ashr i32 %1450, 1
  %1452 = sub nsw i32 1597463174, %1451
  %1453 = bitcast i32 %1452 to float
  %1454 = fmul fast float %1365, 5.000000e-01
  %1455 = fmul fast float %1453, %1453
  %1456 = fmul fast float %1455, %1454
  %1457 = fsub fast float 1.500000e+00, %1456
  %1458 = fmul fast float %1453, %1365
  %1459 = fmul fast float %1458, %1457
  %1460 = bitcast float %1366 to i32
  %1461 = ashr i32 %1460, 1
  %1462 = sub nsw i32 1597463174, %1461
  %1463 = bitcast i32 %1462 to float
  %1464 = fmul fast float %1366, 5.000000e-01
  %1465 = fmul fast float %1463, %1463
  %1466 = fmul fast float %1465, %1464
  %1467 = fsub fast float 1.500000e+00, %1466
  %1468 = fmul fast float %1463, %1366
  %1469 = fmul fast float %1468, %1467
  %1470 = fsub fast float %1449, %1431
  %1471 = fsub fast float %1459, %1435
  %1472 = fsub fast float %1469, %1439
  %1473 = fmul fast float %1470, %1399
  %1474 = fmul fast float %1471, %1401
  %1475 = fmul fast float %1472, %1406
  %1476 = fadd fast float %1473, %1414
  %1477 = fadd fast float %1474, %1418
  %1478 = fadd fast float %1475, %1422
  %1479 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1480 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1481 = call float @dx.op.unary.f32(i32 7, float %1478)  ; Saturate(value)
  %1482 = fmul fast float %1479, %1479
  %1483 = fmul fast float %1480, %1480
  %1484 = fmul fast float %1481, %1481
  %1485 = fsub fast float %1482, %1364
  %1486 = fsub fast float %1483, %1365
  %1487 = fsub fast float %1484, %1366
  %1488 = fmul fast float %1485, %1389
  %1489 = fmul fast float %1486, %1389
  %1490 = fmul fast float %1487, %1389
  %1491 = fadd fast float %1488, %1364
  %1492 = fadd fast float %1489, %1365
  %1493 = fadd fast float %1490, %1366
  %1494 = fadd fast float %1411, %1375
  %1495 = fsub fast float %1494, %1428
  %1496 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  %1497 = fsub fast float %1496, %1375
  %1498 = fmul fast float %1497, %1389
  %1499 = fadd fast float %1498, %1375
  br label %1553

; <label>:1500                                    ; preds = %1388
  %1501 = and i32 %1391, 134217728
  %1502 = icmp eq i32 %1501, 0
  br i1 %1502, label %1537, label %1503

; <label>:1503                                    ; preds = %1500
  %1504 = call float @dx.op.unary.f32(i32 24, float %320)  ; Sqrt(value)
  %1505 = call float @dx.op.unary.f32(i32 24, float %324)  ; Sqrt(value)
  %1506 = call float @dx.op.unary.f32(i32 24, float %328)  ; Sqrt(value)
  %1507 = fadd fast float %1504, -5.000000e-01
  %1508 = fadd fast float %1505, -5.000000e-01
  %1509 = fadd fast float %1506, -5.000000e-01
  %1510 = fmul fast float %1507, %1389
  %1511 = fmul fast float %1508, %1389
  %1512 = fmul fast float %1509, %1389
  %1513 = fadd fast float %1510, 5.000000e-01
  %1514 = fadd fast float %1511, 5.000000e-01
  %1515 = fadd fast float %1512, 5.000000e-01
  %1516 = call float @dx.op.unary.f32(i32 24, float %1364)  ; Sqrt(value)
  %1517 = call float @dx.op.unary.f32(i32 24, float %1365)  ; Sqrt(value)
  %1518 = call float @dx.op.unary.f32(i32 24, float %1366)  ; Sqrt(value)
  %1519 = fmul fast float %1513, 2.000000e+00
  %1520 = fsub fast float 1.000000e+00, %1519
  %1521 = fmul fast float %1520, %1516
  %1522 = fadd fast float %1521, %1519
  %1523 = fmul fast float %1522, %1516
  %1524 = fmul fast float %1514, 2.000000e+00
  %1525 = fsub fast float 1.000000e+00, %1524
  %1526 = fmul fast float %1525, %1517
  %1527 = fadd fast float %1526, %1524
  %1528 = fmul fast float %1527, %1517
  %1529 = fmul fast float %1515, 2.000000e+00
  %1530 = fsub fast float 1.000000e+00, %1529
  %1531 = fmul fast float %1530, %1518
  %1532 = fadd fast float %1531, %1529
  %1533 = fmul fast float %1532, %1518
  %1534 = fmul fast float %1523, %1523
  %1535 = fmul fast float %1528, %1528
  %1536 = fmul fast float %1533, %1533
  br label %1553

; <label>:1537                                    ; preds = %1500
  %1538 = fmul fast float %320, %320
  %1539 = fmul fast float %324, %324
  %1540 = fmul fast float %328, %328
  %1541 = fadd fast float %1538, -1.000000e+00
  %1542 = fadd fast float %1539, -1.000000e+00
  %1543 = fadd fast float %1540, -1.000000e+00
  %1544 = fmul fast float %1389, %1541
  %1545 = fmul fast float %1389, %1542
  %1546 = fmul fast float %1389, %1543
  %1547 = fadd fast float %1544, 1.000000e+00
  %1548 = fadd fast float %1545, 1.000000e+00
  %1549 = fadd fast float %1546, 1.000000e+00
  %1550 = fmul fast float %1547, %1364
  %1551 = fmul fast float %1548, %1365
  %1552 = fmul fast float %1549, %1366
  br label %1553

; <label>:1553                                    ; preds = %1537, %1503, %1394, %1350
  %1554 = phi float [ %1499, %1394 ], [ %1375, %1503 ], [ %1375, %1537 ], [ 0x3FA23C0BE0000000, %1350 ]
  %1555 = phi float [ %1491, %1394 ], [ %1534, %1503 ], [ %1550, %1537 ], [ 1.000000e+00, %1350 ]
  %1556 = phi float [ %1492, %1394 ], [ %1535, %1503 ], [ %1551, %1537 ], [ 1.000000e+00, %1350 ]
  %1557 = phi float [ %1493, %1394 ], [ %1536, %1503 ], [ %1552, %1537 ], [ 1.000000e+00, %1350 ]
  %1558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.i32 %1558, 1
  %1560 = and i32 %1559, 1
  %1561 = icmp ne i32 %1560, 0
  %1562 = add i32 %50, 356
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = and i32 %1564, 32
  %1566 = icmp ne i32 %1565, 0
  %1567 = and i1 %1561, %1566
  %1568 = select i1 %1567, float 1.000000e+00, float %1555
  %1569 = select i1 %1567, float 0x3FD3333340000000, float %1556
  %1570 = select i1 %1567, float 0x3FD3333340000000, float %1557
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 32
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1647, label %1575

; <label>:1575                                    ; preds = %1553
  %1576 = add i32 %50, 108
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = add i32 %50, 396
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = add i32 %1581, 0
  %1583 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1582, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1584 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1583, %dx.types.Handle %105, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.ResRet.f32 %1584, 1
  %1587 = extractvalue %dx.types.ResRet.f32 %1584, 2
  %1588 = extractvalue %dx.types.ResRet.f32 %1584, 3
  %1589 = and i32 %1578, 255
  %1590 = uitofp i32 %1589 to float
  %1591 = lshr i32 %1578, 8
  %1592 = and i32 %1591, 255
  %1593 = uitofp i32 %1592 to float
  %1594 = lshr i32 %1578, 16
  %1595 = and i32 %1594, 255
  %1596 = uitofp i32 %1595 to float
  %1597 = fmul fast float %1596, 0x3F70101000000000
  %1598 = fmul fast float %1585, %1590
  %1599 = fadd fast float %1598, %1593
  %1600 = fmul fast float %1599, 0x3F70101000000000
  %1601 = fadd fast float %1586, -5.000000e-01
  %1602 = fadd fast float %1588, -5.000000e-01
  %1603 = fmul fast float %1601, %1597
  %1604 = fmul fast float %1602, %1597
  %1605 = fadd fast float %1603, 5.000000e-01
  %1606 = fadd fast float %1604, 5.000000e-01
  %1607 = fmul fast float %1605, 2.000000e+00
  %1608 = fadd fast float %1607, -1.000000e+00
  %1609 = fmul fast float %1606, 2.000000e+00
  %1610 = fadd fast float %1609, -1.000000e+00
  %1611 = fadd fast float %1608, %1610
  %1612 = fmul fast float %1611, 5.000000e-01
  %1613 = fsub fast float %1608, %1610
  %1614 = fmul fast float %1613, 5.000000e-01
  %1615 = call float @dx.op.unary.f32(i32 6, float %1612)  ; FAbs(value)
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = call float @dx.op.unary.f32(i32 6, float %1614)  ; FAbs(value)
  %1618 = fsub fast float %1616, %1617
  %1619 = call float @dx.op.dot3.f32(i32 55, float %1612, float %1614, float %1618, float %1612, float %1614, float %1618)  ; Dot3(ax,ay,az,bx,by,bz)
  %1620 = call float @dx.op.unary.f32(i32 25, float %1619)  ; Rsqrt(value)
  %1621 = fmul fast float %1612, %1620
  %1622 = fmul fast float %1614, %1620
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = and i32 %1624, 67108864
  %1626 = icmp eq i32 %1625, 0
  br i1 %1626, label %1643, label %1627

; <label>:1627                                    ; preds = %1575
  %1628 = add i32 %50, 296
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1628, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = and i32 %1630, 65535
  %1632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1631)  ; LegacyF16ToF32(value)
  %1633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1634 = extractvalue %dx.types.ResRet.i32 %1633, 0
  %1635 = and i32 %1634, 65535
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = lshr i32 %1630, 16
  %1638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1637)  ; LegacyF16ToF32(value)
  %1639 = fsub fast float %1600, %1638
  %1640 = fmul fast float %1639, %1632
  %1641 = fadd fast float %1640, %1636
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  br label %1643

; <label>:1643                                    ; preds = %1627, %1575
  %1644 = phi float [ %1642, %1627 ], [ %1600, %1575 ]
  %1645 = call float @dx.op.dot2.f32(i32 54, float %1621, float %1622, float %1179, float %1180)  ; Dot2(ax,ay,bx,by)
  %1646 = call float @dx.op.dot2.f32(i32 54, float %1621, float %1622, float %1181, float %1182)  ; Dot2(ax,ay,bx,by)
  br label %1647

; <label>:1647                                    ; preds = %1643, %1553
  %1648 = phi float [ %1644, %1643 ], [ 0x3FD6666660000000, %1553 ]
  %1649 = phi float [ %1645, %1643 ], [ 0.000000e+00, %1553 ]
  %1650 = phi float [ %1646, %1643 ], [ 0.000000e+00, %1553 ]
  %1651 = phi float [ %1587, %1643 ], [ 1.000000e+00, %1553 ]
  %1652 = add i32 %50, 176
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = lshr i32 %1654, 22
  %1656 = shl nuw nsw i32 %1655, 5
  %1657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1656)  ; LegacyF16ToF32(value)
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = and i32 %1659, 64
  %1661 = icmp eq i32 %1660, 0
  br i1 %1661, label %1695, label %1662

; <label>:1662                                    ; preds = %1647
  %1663 = add i32 %50, 412
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = add i32 %1665, 0
  %1667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = and i32 %1669, 131072
  %1671 = icmp eq i32 %1670, 0
  %1672 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1667, %dx.types.Handle %105, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1673 = extractvalue %dx.types.ResRet.f32 %1672, 0
  %1674 = extractvalue %dx.types.ResRet.f32 %1672, 1
  %1675 = extractvalue %dx.types.ResRet.f32 %1672, 2
  %1676 = fmul fast float %1673, %308
  %1677 = fmul fast float %1674, %311
  %1678 = fmul fast float %1675, %314
  br i1 %1671, label %1685, label %1679

; <label>:1679                                    ; preds = %1662
  %1680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.f32 %1680, 0
  %1682 = fmul fast float %1681, %1676
  %1683 = fmul fast float %1681, %1677
  %1684 = fmul fast float %1681, %1678
  br label %1685

; <label>:1685                                    ; preds = %1679, %1662
  %1686 = phi float [ %1682, %1679 ], [ %1676, %1662 ]
  %1687 = phi float [ %1683, %1679 ], [ %1677, %1662 ]
  %1688 = phi float [ %1684, %1679 ], [ %1678, %1662 ]
  %1689 = fmul fast float %1686, %1657
  %1690 = select i1 %249, float %1689, float %1686
  %1691 = call float @dx.op.dot3.f32(i32 55, float %1690, float %1687, float %1688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1692 = select i1 %249, float 0.000000e+00, float %1686
  %1693 = select i1 %249, float %1691, float %1687
  %1694 = select i1 %249, float 0.000000e+00, float %1688
  br label %1695

; <label>:1695                                    ; preds = %1685, %1647
  %1696 = phi float [ %1692, %1685 ], [ 0.000000e+00, %1647 ]
  %1697 = phi float [ %1693, %1685 ], [ 0.000000e+00, %1647 ]
  %1698 = phi float [ %1694, %1685 ], [ 0.000000e+00, %1647 ]
  %1699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1700 = extractvalue %dx.types.ResRet.i32 %1699, 0
  %1701 = and i32 %1700, 1024
  %1702 = icmp eq i32 %1701, 0
  br i1 %1702, label %1733, label %1703

; <label>:1703                                    ; preds = %1695
  %1704 = add i32 %50, 168
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = and i32 %1706, 255
  %1708 = uitofp i32 %1707 to float
  %1709 = fmul fast float %1708, 0x3F70101020000000
  %1710 = lshr i32 %1706, 8
  %1711 = and i32 %1710, 255
  %1712 = uitofp i32 %1711 to float
  %1713 = fmul fast float %1712, 0x3F70101020000000
  %1714 = lshr i32 %1706, 16
  %1715 = and i32 %1714, 255
  %1716 = uitofp i32 %1715 to float
  %1717 = fmul fast float %1716, 0x3F70101020000000
  %1718 = fmul fast float %1709, %1709
  %1719 = fmul fast float %1713, %1713
  %1720 = fmul fast float %1717, %1717
  %1721 = add i32 %50, 480
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = add i32 %1723, 0
  %1725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1724, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1726 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1725, %dx.types.Handle %106, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1727 = extractvalue %dx.types.ResRet.f32 %1726, 0
  %1728 = extractvalue %dx.types.ResRet.f32 %1726, 1
  %1729 = extractvalue %dx.types.ResRet.f32 %1726, 2
  %1730 = fmul fast float %1718, %1727
  %1731 = fmul fast float %1719, %1728
  %1732 = fmul fast float %1720, %1729
  br label %1733

; <label>:1733                                    ; preds = %1703, %1695
  %1734 = phi float [ %1730, %1703 ], [ 0.000000e+00, %1695 ]
  %1735 = phi float [ %1731, %1703 ], [ 0.000000e+00, %1695 ]
  %1736 = phi float [ %1732, %1703 ], [ 0.000000e+00, %1695 ]
  %1737 = fcmp fast ogt float %1734, 0.000000e+00
  %1738 = fcmp fast ogt float %1735, 0.000000e+00
  %1739 = fcmp fast ogt float %1736, 0.000000e+00
  %1740 = call float @dx.op.unary.f32(i32 23, float %1734)  ; Log(value)
  %1741 = call float @dx.op.unary.f32(i32 23, float %1735)  ; Log(value)
  %1742 = call float @dx.op.unary.f32(i32 23, float %1736)  ; Log(value)
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = lshr i32 %1744, 7
  %1746 = and i32 %1745, 32752
  %1747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1746)  ; LegacyF16ToF32(value)
  %1748 = fmul fast float %1740, 0xBFE62E4300000000
  %1749 = fmul fast float %1748, %1747
  %1750 = fmul fast float %1741, 0xBFE62E4300000000
  %1751 = fmul fast float %1750, %1747
  %1752 = fmul fast float %1742, 0xBFE62E4300000000
  %1753 = fmul fast float %1752, %1747
  %1754 = select i1 %1737, float %1749, float 1.270000e+02
  %1755 = select i1 %1738, float %1751, float 1.270000e+02
  %1756 = select i1 %1739, float %1753, float 1.270000e+02
  %1757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = and i32 %1758, 10240
  %1760 = icmp eq i32 %1759, 0
  br i1 %1760, label %1805, label %1761

; <label>:1761                                    ; preds = %1733
  %1762 = add i32 %50, 496
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = add i32 %1764, 0
  %1766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1766, %dx.types.Handle %106, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1768 = extractvalue %dx.types.ResRet.f32 %1767, 1
  %1769 = extractvalue %dx.types.ResRet.f32 %1767, 3
  %1770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1771 = extractvalue %dx.types.ResRet.i32 %1770, 0
  %1772 = and i32 %1771, 1048576
  %1773 = icmp ne i32 %1772, 0
  %1774 = and i32 %1771, 8192
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1791, label %1776

; <label>:1776                                    ; preds = %1761
  %1777 = extractvalue %dx.types.ResRet.f32 %1767, 2
  %1778 = select i1 %1773, float %1777, float %1768
  %1779 = extractvalue %dx.types.ResRet.f32 %1767, 0
  %1780 = select i1 %1773, float %1779, float %1768
  %1781 = add i32 %50, 112
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = lshr i32 %1783, 16
  %1785 = and i32 %1784, 255
  %1786 = uitofp i32 %1785 to float
  %1787 = fmul fast float %1786, 0x3F80101020000000
  %1788 = fmul fast float %1787, %1780
  %1789 = fmul fast float %1787, %1768
  %1790 = fmul fast float %1787, %1778
  br label %1791

; <label>:1791                                    ; preds = %1776, %1761
  %1792 = phi float [ %1788, %1776 ], [ 0.000000e+00, %1761 ]
  %1793 = phi float [ %1789, %1776 ], [ 0.000000e+00, %1761 ]
  %1794 = phi float [ %1790, %1776 ], [ 0.000000e+00, %1761 ]
  %1795 = and i32 %1771, 2048
  %1796 = icmp eq i32 %1795, 0
  br i1 %1796, label %1805, label %1797

; <label>:1797                                    ; preds = %1791
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1652, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = shl i32 %1799, 4
  %1801 = and i32 %1800, 32752
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = fmul fast float %1802, %1769
  %1804 = call float @dx.op.binary.f32(i32 35, float %1803, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1805

; <label>:1805                                    ; preds = %1797, %1791, %1733
  %1806 = phi float [ %1792, %1797 ], [ %1792, %1791 ], [ 0.000000e+00, %1733 ]
  %1807 = phi float [ %1793, %1797 ], [ %1793, %1791 ], [ 0.000000e+00, %1733 ]
  %1808 = phi float [ %1794, %1797 ], [ %1794, %1791 ], [ 0.000000e+00, %1733 ]
  %1809 = phi float [ %1804, %1797 ], [ 0x3F70101020000000, %1791 ], [ 0x3F70101020000000, %1733 ]
  %1810 = add i32 %50, 112
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = and i32 %1812, 255
  %1814 = uitofp i32 %1813 to float
  %1815 = lshr i32 %1812, 8
  %1816 = and i32 %1815, 255
  %1817 = uitofp i32 %1816 to float
  %1818 = call float @dx.op.dot3.f32(i32 55, float %1568, float %1569, float %1570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1819 = fmul fast float %1817, %1818
  %1820 = fadd fast float %1819, %1814
  %1821 = fmul fast float %1820, 0x3F70101020000000
  %1822 = call float @dx.op.unary.f32(i32 7, float %1821)  ; Saturate(value)
  br i1 %1167, label %1823, label %1858

; <label>:1823                                    ; preds = %1805
  %1824 = fmul fast float %1809, 2.000000e+00
  %1825 = fcmp fast olt float %1754, 1.270000e+02
  %1826 = fcmp fast olt float %1755, 1.270000e+02
  %1827 = fcmp fast olt float %1756, 1.270000e+02
  %1828 = fmul fast float %1754, 0xBFF7154760000000
  %1829 = fmul fast float %1828, %1824
  %1830 = fmul fast float %1755, 0xBFF7154760000000
  %1831 = fmul fast float %1830, %1824
  %1832 = fmul fast float %1756, 0xBFF7154760000000
  %1833 = fmul fast float %1832, %1824
  %1834 = call float @dx.op.unary.f32(i32 21, float %1829)  ; Exp(value)
  %1835 = call float @dx.op.unary.f32(i32 21, float %1831)  ; Exp(value)
  %1836 = call float @dx.op.unary.f32(i32 21, float %1833)  ; Exp(value)
  %1837 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1838 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1839 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  %1840 = fadd fast float %1837, -1.000000e+00
  %1841 = select i1 %1825, float %1840, float -1.000000e+00
  %1842 = fadd fast float %1838, -1.000000e+00
  %1843 = select i1 %1826, float %1842, float -1.000000e+00
  %1844 = fadd fast float %1839, -1.000000e+00
  %1845 = select i1 %1827, float %1844, float -1.000000e+00
  %1846 = fmul fast float %1841, %1348
  %1847 = fmul fast float %1843, %1348
  %1848 = fmul fast float %1845, %1348
  %1849 = fadd fast float %1846, 1.000000e+00
  %1850 = fadd fast float %1847, 1.000000e+00
  %1851 = fadd fast float %1848, 1.000000e+00
  %1852 = fmul fast float %1849, %1148
  %1853 = fmul fast float %1850, %1149
  %1854 = fmul fast float %1851, %1150
  %1855 = fmul fast float %1849, %1157
  %1856 = fmul fast float %1850, %1158
  %1857 = fmul fast float %1851, %1159
  br label %1858

; <label>:1858                                    ; preds = %1823, %1805
  %1859 = phi float [ %1852, %1823 ], [ %1148, %1805 ]
  %1860 = phi float [ %1853, %1823 ], [ %1149, %1805 ]
  %1861 = phi float [ %1854, %1823 ], [ %1150, %1805 ]
  %1862 = phi float [ %1855, %1823 ], [ %1157, %1805 ]
  %1863 = phi float [ %1856, %1823 ], [ %1158, %1805 ]
  %1864 = phi float [ %1857, %1823 ], [ %1159, %1805 ]
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %1168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 3
  %1868 = icmp eq i32 %1867, 3
  br i1 %1868, label %1947, label %1869

; <label>:1869                                    ; preds = %1858
  %1870 = and i32 %1866, 16
  %1871 = icmp ne i32 %1870, 0
  %1872 = select i1 %1871, float %1348, float 0.000000e+00
  %1873 = icmp eq i32 %1867, 0
  br i1 %1873, label %1874, label %1902

; <label>:1874                                    ; preds = %1869
  %1875 = and i32 %1866, 64
  %1876 = icmp ne i32 %1875, 0
  %1877 = select i1 %1876, float %1348, float 0.000000e+00
  %1878 = fsub fast float %1568, %1859
  %1879 = fsub fast float %1569, %1860
  %1880 = fsub fast float %1570, %1861
  %1881 = fmul fast float %1872, %1878
  %1882 = fmul fast float %1872, %1879
  %1883 = fmul fast float %1872, %1880
  %1884 = fadd fast float %1881, %1859
  %1885 = fadd fast float %1882, %1860
  %1886 = fadd fast float %1883, %1861
  %1887 = fsub fast float %1554, %1160
  %1888 = fmul fast float %1872, %1887
  %1889 = fadd fast float %1888, %1160
  %1890 = fsub fast float %1696, %1862
  %1891 = fsub fast float %1697, %1863
  %1892 = fsub fast float %1698, %1864
  %1893 = fmul fast float %1877, %1890
  %1894 = fmul fast float %1877, %1891
  %1895 = fmul fast float %1877, %1892
  %1896 = fadd fast float %1893, %1862
  %1897 = fadd fast float %1894, %1863
  %1898 = fadd fast float %1895, %1864
  %1899 = fsub fast float %1822, %1165
  %1900 = fmul fast float %1872, %1899
  %1901 = fadd fast float %1900, %1165
  br label %1947

; <label>:1902                                    ; preds = %1869
  %1903 = icmp eq i32 %1867, 1
  br i1 %1903, label %1904, label %1917

; <label>:1904                                    ; preds = %1902
  %1905 = fadd fast float %1568, -1.000000e+00
  %1906 = fadd fast float %1569, -1.000000e+00
  %1907 = fadd fast float %1570, -1.000000e+00
  %1908 = fmul fast float %1872, %1905
  %1909 = fmul fast float %1872, %1906
  %1910 = fmul fast float %1872, %1907
  %1911 = fadd fast float %1908, 1.000000e+00
  %1912 = fadd fast float %1909, 1.000000e+00
  %1913 = fadd fast float %1910, 1.000000e+00
  %1914 = fmul fast float %1911, %1859
  %1915 = fmul fast float %1912, %1860
  %1916 = fmul fast float %1913, %1861
  br label %1947

; <label>:1917                                    ; preds = %1902
  %1918 = icmp eq i32 %1867, 2
  br i1 %1918, label %1919, label %1947

; <label>:1919                                    ; preds = %1917
  %1920 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1921 = call float @dx.op.unary.f32(i32 24, float %1569)  ; Sqrt(value)
  %1922 = call float @dx.op.unary.f32(i32 24, float %1570)  ; Sqrt(value)
  %1923 = fadd fast float %1920, -5.000000e-01
  %1924 = fadd fast float %1921, -5.000000e-01
  %1925 = fadd fast float %1922, -5.000000e-01
  %1926 = fmul fast float %1923, %1872
  %1927 = fmul fast float %1924, %1872
  %1928 = fmul fast float %1925, %1872
  %1929 = fadd fast float %1926, 5.000000e-01
  %1930 = fadd fast float %1927, 5.000000e-01
  %1931 = fadd fast float %1928, 5.000000e-01
  %1932 = fmul fast float %1929, 2.000000e+00
  %1933 = fsub fast float 1.000000e+00, %1932
  %1934 = fmul fast float %1933, %1859
  %1935 = fadd fast float %1934, %1932
  %1936 = fmul fast float %1935, %1859
  %1937 = fmul fast float %1930, 2.000000e+00
  %1938 = fsub fast float 1.000000e+00, %1937
  %1939 = fmul fast float %1938, %1860
  %1940 = fadd fast float %1939, %1937
  %1941 = fmul fast float %1940, %1860
  %1942 = fmul fast float %1931, 2.000000e+00
  %1943 = fsub fast float 1.000000e+00, %1942
  %1944 = fmul fast float %1943, %1861
  %1945 = fadd fast float %1944, %1942
  %1946 = fmul fast float %1945, %1861
  br label %1947

; <label>:1947                                    ; preds = %1919, %1917, %1904, %1874, %1858
  %1948 = phi float [ %1859, %1858 ], [ %1936, %1919 ], [ %1859, %1917 ], [ %1914, %1904 ], [ %1884, %1874 ]
  %1949 = phi float [ %1860, %1858 ], [ %1941, %1919 ], [ %1860, %1917 ], [ %1915, %1904 ], [ %1885, %1874 ]
  %1950 = phi float [ %1861, %1858 ], [ %1946, %1919 ], [ %1861, %1917 ], [ %1916, %1904 ], [ %1886, %1874 ]
  %1951 = phi float [ %1862, %1858 ], [ %1862, %1919 ], [ %1862, %1917 ], [ %1862, %1904 ], [ %1896, %1874 ]
  %1952 = phi float [ %1863, %1858 ], [ %1863, %1919 ], [ %1863, %1917 ], [ %1863, %1904 ], [ %1897, %1874 ]
  %1953 = phi float [ %1864, %1858 ], [ %1864, %1919 ], [ %1864, %1917 ], [ %1864, %1904 ], [ %1898, %1874 ]
  %1954 = phi float [ %1160, %1858 ], [ %1160, %1919 ], [ %1160, %1917 ], [ %1160, %1904 ], [ %1889, %1874 ]
  %1955 = phi float [ %1165, %1858 ], [ %1165, %1919 ], [ %1165, %1917 ], [ %1165, %1904 ], [ %1901, %1874 ]
  %1956 = and i32 %1866, 12
  %1957 = icmp eq i32 %1956, 12
  br i1 %1957, label %2088, label %1958

; <label>:1958                                    ; preds = %1947
  %1959 = and i32 %1866, 2097184
  %1960 = icmp eq i32 %1959, 2097184
  %1961 = select i1 %1960, float %1348, float 0.000000e+00
  %1962 = and i32 %1866, 4194336
  %1963 = icmp eq i32 %1962, 4194336
  %1964 = select i1 %1963, float %1348, float 0.000000e+00
  %1965 = and i32 %1866, 8388640
  %1966 = icmp eq i32 %1965, 8388640
  %1967 = select i1 %1966, float %1348, float 0.000000e+00
  %1968 = and i32 %1866, 1024
  %1969 = icmp ne i32 %1968, 0
  %1970 = select i1 %1969, float %1348, float 0.000000e+00
  %1971 = and i32 %1866, 2048
  %1972 = icmp ne i32 %1971, 0
  %1973 = select i1 %1972, float %1348, float 0.000000e+00
  %1974 = and i32 %1866, 8192
  %1975 = icmp ne i32 %1974, 0
  %1976 = select i1 %1975, float %1348, float 0.000000e+00
  %1977 = icmp eq i32 %1956, 0
  br i1 %1977, label %1978, label %2012

; <label>:1978                                    ; preds = %1958
  %1979 = fsub fast float %1649, %1146
  %1980 = fsub fast float %1650, %1147
  %1981 = fmul fast float %1961, %1979
  %1982 = fmul fast float %1961, %1980
  %1983 = fadd fast float %1981, %1146
  %1984 = fadd fast float %1982, %1147
  %1985 = fsub fast float %1651, %1163
  %1986 = fmul fast float %1964, %1985
  %1987 = fadd fast float %1986, %1163
  %1988 = fsub fast float %1648, %1162
  %1989 = fmul fast float %1967, %1988
  %1990 = fadd fast float %1989, %1162
  %1991 = fsub fast float %1754, %1154
  %1992 = fsub fast float %1755, %1155
  %1993 = fsub fast float %1756, %1156
  %1994 = fmul fast float %1970, %1991
  %1995 = fmul fast float %1970, %1992
  %1996 = fmul fast float %1970, %1993
  %1997 = fadd fast float %1994, %1154
  %1998 = fadd fast float %1995, %1155
  %1999 = fadd fast float %1996, %1156
  %2000 = fsub fast float %1809, %1164
  %2001 = fmul fast float %1973, %2000
  %2002 = fadd fast float %2001, %1164
  %2003 = fsub fast float %1806, %1151
  %2004 = fsub fast float %1807, %1152
  %2005 = fsub fast float %1808, %1153
  %2006 = fmul fast float %1976, %2003
  %2007 = fmul fast float %1976, %2004
  %2008 = fmul fast float %1976, %2005
  %2009 = fadd fast float %2006, %1151
  %2010 = fadd fast float %2007, %1152
  %2011 = fadd fast float %2008, %1153
  br label %2088

; <label>:2012                                    ; preds = %1958
  %2013 = icmp eq i32 %1956, 4
  br i1 %2013, label %2014, label %2060

; <label>:2014                                    ; preds = %2012
  %2015 = fmul fast float %1961, %1649
  %2016 = fmul fast float %1961, %1650
  %2017 = fadd fast float %2015, %1146
  %2018 = fadd fast float %2016, %1147
  %2019 = call float @dx.op.binary.f32(i32 36, float %1163, float %1651)  ; FMin(a,b)
  %2020 = fsub fast float %2019, %1163
  %2021 = fmul fast float %2020, %1964
  %2022 = fadd fast float %2021, %1163
  %2023 = fadd fast float %1648, %1162
  %2024 = fmul fast float %2023, 0x3FF337FAE0000000
  %2025 = fmul fast float %1162, %1162
  %2026 = fmul fast float %1648, %1648
  %2027 = fadd fast float %2026, %2025
  %2028 = fmul fast float %2027, 0x3FE5152B00000000
  %2029 = fmul fast float %1162, 0xBFCC1F85E0000000
  %2030 = fmul fast float %2029, %1648
  %2031 = fadd fast float %2030, 0xBFE1363700000000
  %2032 = fadd fast float %2031, %2024
  %2033 = fsub fast float %2032, %2028
  %2034 = fmul fast float %2023, 0x3FBA6F0D00000000
  %2035 = fmul fast float %2027, 0x3FD0432880000000
  %2036 = fmul fast float %1162, 0xBFEF110800000000
  %2037 = fmul fast float %2036, %1648
  %2038 = fadd fast float %2037, 1.000000e+00
  %2039 = fsub fast float %2038, %2034
  %2040 = fadd fast float %2039, %2035
  %2041 = fdiv fast float %2033, %2040
  %2042 = call float @dx.op.unary.f32(i32 7, float %2041)  ; Saturate(value)
  %2043 = fsub fast float %2042, %1162
  %2044 = fmul fast float %2043, %1967
  %2045 = fadd fast float %2044, %1162
  %2046 = fmul fast float %1970, %1754
  %2047 = fmul fast float %1970, %1755
  %2048 = fmul fast float %1970, %1756
  %2049 = fadd fast float %2046, %1154
  %2050 = fadd fast float %2047, %1155
  %2051 = fadd fast float %2048, %1156
  %2052 = fmul fast float %1973, %1809
  %2053 = fadd fast float %2052, %1164
  %2054 = fmul fast float %1976, %1806
  %2055 = fmul fast float %1976, %1807
  %2056 = fmul fast float %1976, %1808
  %2057 = fadd fast float %2054, %1151
  %2058 = fadd fast float %2055, %1152
  %2059 = fadd fast float %2056, %1153
  br label %2088

; <label>:2060                                    ; preds = %2012
  %2061 = icmp eq i32 %1956, 8
  br i1 %2061, label %2062, label %2088

; <label>:2062                                    ; preds = %2060
  %2063 = fmul fast float %1961, %1649
  %2064 = fmul fast float %1961, %1650
  %2065 = fadd fast float %2063, %1146
  %2066 = fadd fast float %2064, %1147
  %2067 = call float @dx.op.binary.f32(i32 36, float %1163, float %1651)  ; FMin(a,b)
  %2068 = fsub fast float %2067, %1163
  %2069 = fmul fast float %2068, %1964
  %2070 = fadd fast float %2069, %1163
  %2071 = fsub fast float %1648, %1162
  %2072 = fmul fast float %1967, %2071
  %2073 = fadd fast float %2072, %1162
  %2074 = fmul fast float %1970, %1754
  %2075 = fmul fast float %1970, %1755
  %2076 = fmul fast float %1970, %1756
  %2077 = fadd fast float %2074, %1154
  %2078 = fadd fast float %2075, %1155
  %2079 = fadd fast float %2076, %1156
  %2080 = fmul fast float %1973, %1809
  %2081 = fadd fast float %2080, %1164
  %2082 = fmul fast float %1976, %1806
  %2083 = fmul fast float %1976, %1807
  %2084 = fmul fast float %1976, %1808
  %2085 = fadd fast float %2082, %1151
  %2086 = fadd fast float %2083, %1152
  %2087 = fadd fast float %2084, %1153
  br label %2088

; <label>:2088                                    ; preds = %2062, %2060, %2014, %1978, %1947, %1347, %1166, %1145
  %2089 = phi float [ %1146, %1947 ], [ %1146, %1347 ], [ %1146, %1145 ], [ %2065, %2062 ], [ %1146, %2060 ], [ %2017, %2014 ], [ %1983, %1978 ], [ %1146, %1166 ]
  %2090 = phi float [ %1147, %1947 ], [ %1147, %1347 ], [ %1147, %1145 ], [ %2066, %2062 ], [ %1147, %2060 ], [ %2018, %2014 ], [ %1984, %1978 ], [ %1147, %1166 ]
  %2091 = phi float [ %1948, %1947 ], [ %1148, %1347 ], [ %1148, %1145 ], [ %1948, %2062 ], [ %1948, %2060 ], [ %1948, %2014 ], [ %1948, %1978 ], [ %1148, %1166 ]
  %2092 = phi float [ %1949, %1947 ], [ %1149, %1347 ], [ %1149, %1145 ], [ %1949, %2062 ], [ %1949, %2060 ], [ %1949, %2014 ], [ %1949, %1978 ], [ %1149, %1166 ]
  %2093 = phi float [ %1950, %1947 ], [ %1150, %1347 ], [ %1150, %1145 ], [ %1950, %2062 ], [ %1950, %2060 ], [ %1950, %2014 ], [ %1950, %1978 ], [ %1150, %1166 ]
  %2094 = phi float [ %1151, %1947 ], [ %1151, %1347 ], [ %1151, %1145 ], [ %2085, %2062 ], [ %1151, %2060 ], [ %2057, %2014 ], [ %2009, %1978 ], [ %1151, %1166 ]
  %2095 = phi float [ %1152, %1947 ], [ %1152, %1347 ], [ %1152, %1145 ], [ %2086, %2062 ], [ %1152, %2060 ], [ %2058, %2014 ], [ %2010, %1978 ], [ %1152, %1166 ]
  %2096 = phi float [ %1153, %1947 ], [ %1153, %1347 ], [ %1153, %1145 ], [ %2087, %2062 ], [ %1153, %2060 ], [ %2059, %2014 ], [ %2011, %1978 ], [ %1153, %1166 ]
  %2097 = phi float [ %1154, %1947 ], [ %1154, %1347 ], [ %1154, %1145 ], [ %2077, %2062 ], [ %1154, %2060 ], [ %2049, %2014 ], [ %1997, %1978 ], [ %1154, %1166 ]
  %2098 = phi float [ %1155, %1947 ], [ %1155, %1347 ], [ %1155, %1145 ], [ %2078, %2062 ], [ %1155, %2060 ], [ %2050, %2014 ], [ %1998, %1978 ], [ %1155, %1166 ]
  %2099 = phi float [ %1156, %1947 ], [ %1156, %1347 ], [ %1156, %1145 ], [ %2079, %2062 ], [ %1156, %2060 ], [ %2051, %2014 ], [ %1999, %1978 ], [ %1156, %1166 ]
  %2100 = phi float [ %1951, %1947 ], [ %1157, %1347 ], [ %1157, %1145 ], [ %1951, %2062 ], [ %1951, %2060 ], [ %1951, %2014 ], [ %1951, %1978 ], [ %1157, %1166 ]
  %2101 = phi float [ %1952, %1947 ], [ %1158, %1347 ], [ %1158, %1145 ], [ %1952, %2062 ], [ %1952, %2060 ], [ %1952, %2014 ], [ %1952, %1978 ], [ %1158, %1166 ]
  %2102 = phi float [ %1953, %1947 ], [ %1159, %1347 ], [ %1159, %1145 ], [ %1953, %2062 ], [ %1953, %2060 ], [ %1953, %2014 ], [ %1953, %1978 ], [ %1159, %1166 ]
  %2103 = phi float [ %1954, %1947 ], [ %1160, %1347 ], [ %1160, %1145 ], [ %1954, %2062 ], [ %1954, %2060 ], [ %1954, %2014 ], [ %1954, %1978 ], [ %1160, %1166 ]
  %2104 = phi float [ %1162, %1947 ], [ %1162, %1347 ], [ %1162, %1145 ], [ %2073, %2062 ], [ %1162, %2060 ], [ %2045, %2014 ], [ %1990, %1978 ], [ %1162, %1166 ]
  %2105 = phi float [ %1163, %1947 ], [ %1163, %1347 ], [ %1163, %1145 ], [ %2070, %2062 ], [ %1163, %2060 ], [ %2022, %2014 ], [ %1987, %1978 ], [ %1163, %1166 ]
  %2106 = phi float [ %1164, %1947 ], [ %1164, %1347 ], [ %1164, %1145 ], [ %2081, %2062 ], [ %1164, %2060 ], [ %2053, %2014 ], [ %2002, %1978 ], [ %1164, %1166 ]
  %2107 = phi float [ %1955, %1947 ], [ %1165, %1347 ], [ %1165, %1145 ], [ %1955, %2062 ], [ %1955, %2060 ], [ %1955, %2014 ], [ %1955, %1978 ], [ %1165, %1166 ]
  br i1 %435, label %3030, label %2108

; <label>:2108                                    ; preds = %2088
  %2109 = icmp ult i32 %491, 3
  %2110 = add i32 %50, 56
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = add i32 %50, 60
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = or i32 %2115, %2112
  %2117 = icmp eq i32 %2116, 0
  br i1 %2117, label %3030, label %2118

; <label>:2118                                    ; preds = %2108
  %2119 = and i32 %2112, 262144
  %2120 = icmp ne i32 %2119, 0
  %2121 = select i1 %2120, float %55, float 1.000000e+00
  %2122 = select i1 %2120, float %56, float 0.000000e+00
  %2123 = select i1 %2120, float %57, float 0.000000e+00
  %2124 = select i1 %2120, float %58, float 1.000000e+00
  %2125 = select i1 %2120, float %59, float %87
  %2126 = select i1 %2120, float %60, float %88
  %2127 = add i32 %50, 316
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = lshr i32 %2129, 16
  %2131 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2130)  ; LegacyF16ToF32(value)
  %2132 = fmul fast float %2131, 0x3F50624DE0000000
  %2133 = add i32 %50, 120
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = lshr i32 %2135, 16
  %2137 = and i32 %2136, 255
  %2138 = lshr i32 %2135, 24
  %2139 = add i32 %50, 324
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = and i32 %2141, 65535
  %2143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2142)  ; LegacyF16ToF32(value)
  %2144 = lshr i32 %2141, 16
  %2145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2144)  ; LegacyF16ToF32(value)
  %2146 = add i32 %50, 64
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = lshr i32 %2148, 22
  %2150 = shl nuw nsw i32 %2149, 5
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = shl i32 %2148, 4
  %2153 = and i32 %2152, 32752
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = lshr i32 %2148, 7
  %2156 = and i32 %2155, 32752
  %2157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2156)  ; LegacyF16ToF32(value)
  %2158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2159 = extractvalue %dx.types.CBufRet.f32 %2158, 3
  %2160 = fmul fast float %2159, 1.000000e+03
  %2161 = fmul fast float %385, %2160
  %2162 = call float @dx.op.unary.f32(i32 22, float %2161)  ; Frc(value)
  %2163 = fadd fast float %2162, %375
  %2164 = fmul fast float %386, %2160
  %2165 = call float @dx.op.unary.f32(i32 22, float %2164)  ; Frc(value)
  %2166 = fadd fast float %2165, %377
  %2167 = fmul fast float %2132, %2160
  %2168 = call float @dx.op.unary.f32(i32 22, float %2167)  ; Frc(value)
  %2169 = fmul fast float %2168, 0x401921FB60000000
  %2170 = fadd fast float %2169, %2151
  %2171 = call float @dx.op.unary.f32(i32 13, float %2170)  ; Sin(value)
  %2172 = call float @dx.op.unary.f32(i32 12, float %2170)  ; Cos(value)
  %2173 = fsub fast float -0.000000e+00, %2171
  %2174 = fadd fast float %2125, -5.000000e-01
  %2175 = fadd fast float %2126, -5.000000e-01
  %2176 = fmul fast float %2143, %2174
  %2177 = fmul fast float %2145, %2175
  %2178 = fadd fast float %2176, 5.000000e-01
  %2179 = fadd fast float %2177, 5.000000e-01
  %2180 = fmul fast float %2154, %2178
  %2181 = fmul fast float %2157, %2179
  %2182 = fmul fast float %2172, %2180
  %2183 = call float @dx.op.tertiary.f32(i32 46, float %2173, float %2181, float %2182)  ; FMad(a,b,c)
  %2184 = fmul fast float %2171, %2180
  %2185 = call float @dx.op.tertiary.f32(i32 46, float %2172, float %2181, float %2184)  ; FMad(a,b,c)
  %2186 = fadd fast float %2163, %2183
  %2187 = fadd fast float %2166, %2185
  %2188 = icmp ugt i32 %2137, 1
  %2189 = icmp ugt i32 %2135, 33554431
  %2190 = or i1 %2189, %2188
  br i1 %2190, label %2191, label %2216

; <label>:2191                                    ; preds = %2118
  %2192 = add i32 %50, 260
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2192, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = lshr i32 %2194, 16
  %2196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2195)  ; LegacyF16ToF32(value)
  %2197 = fmul fast float %2159, %2196
  %2198 = call float @dx.op.unary.f32(i32 22, float %2197)  ; Frc(value)
  %2199 = mul nuw nsw i32 %2137, %2138
  %2200 = uitofp i32 %2199 to float
  %2201 = fmul fast float %2198, %2200
  %2202 = call float @dx.op.unary.f32(i32 27, float %2201)  ; Round_ni(value)
  %2203 = fptoui float %2202 to i32
  %2204 = urem i32 %2203, %2137
  %2205 = udiv i32 %2203, %2138
  %2206 = call float @dx.op.unary.f32(i32 22, float %2186)  ; Frc(value)
  %2207 = call float @dx.op.unary.f32(i32 22, float %2187)  ; Frc(value)
  %2208 = uitofp i32 %2204 to float
  %2209 = uitofp i32 %2205 to float
  %2210 = fadd fast float %2206, %2208
  %2211 = fadd fast float %2207, %2209
  %2212 = uitofp i32 %2137 to float
  %2213 = uitofp i32 %2138 to float
  %2214 = fdiv fast float %2210, %2212
  %2215 = fdiv fast float %2211, %2213
  br label %2216

; <label>:2216                                    ; preds = %2191, %2118
  %2217 = phi float [ %2214, %2191 ], [ %2186, %2118 ]
  %2218 = phi float [ %2215, %2191 ], [ %2187, %2118 ]
  %2219 = and i32 %2112, 256
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2267, label %2221

; <label>:2221                                    ; preds = %2216
  %2222 = add i32 %50, 448
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = add i32 %2224, 0
  %2226 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2225, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2227 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2226, %dx.types.Handle %106, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2228 = extractvalue %dx.types.ResRet.f32 %2227, 0
  %2229 = add i32 %50, 132
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = shl i32 %2231, 4
  %2233 = and i32 %2232, 32752
  %2234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2233)  ; LegacyF16ToF32(value)
  %2235 = lshr i32 %2231, 7
  %2236 = and i32 %2235, 32752
  %2237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2236)  ; LegacyF16ToF32(value)
  %2238 = fsub fast float 1.000000e+00, %487
  %2239 = call float @dx.op.binary.f32(i32 35, float %2238, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2240 = bitcast float %487 to i32
  %2241 = sitofp i32 %2240 to float
  %2242 = fadd fast float %2241, 0xC1CFBF8940000000
  %2243 = fmul fast float %2237, %2242
  %2244 = fadd fast float %2243, 0x41CFBF8940000000
  %2245 = fptosi float %2244 to i32
  %2246 = bitcast i32 %2245 to float
  %2247 = bitcast float %2239 to i32
  %2248 = sitofp i32 %2247 to float
  %2249 = fadd fast float %2248, 0xC1CFBF8940000000
  %2250 = fmul fast float %2249, %2237
  %2251 = fadd fast float %2250, 0x41CFBF8940000000
  %2252 = fptosi float %2251 to i32
  %2253 = bitcast i32 %2252 to float
  %2254 = fmul fast float %2246, %2234
  %2255 = fmul fast float %2253, %2234
  %2256 = fsub fast float %2239, %2254
  %2257 = fadd fast float %2255, %2239
  %2258 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2259 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2260 = fsub fast float %2228, %2258
  %2261 = fsub fast float %2259, %2258
  %2262 = bitcast float %2261 to i32
  %2263 = sub nsw i32 2129859010, %2262
  %2264 = bitcast i32 %2263 to float
  %2265 = fmul fast float %2264, %2260
  %2266 = call float @dx.op.unary.f32(i32 7, float %2265)  ; Saturate(value)
  br label %2267

; <label>:2267                                    ; preds = %2221, %2216
  %2268 = phi float [ %2266, %2221 ], [ %487, %2216 ]
  %2269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2270 = extractvalue %dx.types.ResRet.i32 %2269, 0
  %2271 = and i32 %2270, 128
  %2272 = icmp eq i32 %2271, 0
  br i1 %2272, label %2289, label %2273

; <label>:2273                                    ; preds = %2267
  %2274 = add i32 %50, 432
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = add i32 %2276, 0
  %2278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2277, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2279 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2278, %dx.types.Handle %106, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2280 = extractvalue %dx.types.ResRet.f32 %2279, 0
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = and i32 %2282, 524288
  %2284 = icmp ne i32 %2283, 0
  %2285 = fcmp fast ogt float %2280, 0x3FE0101020000000
  %2286 = select i1 %2285, float 1.000000e+00, float 0.000000e+00
  %2287 = select i1 %2284, float %2286, float %2280
  %2288 = fmul fast float %2287, %2268
  br label %2289

; <label>:2289                                    ; preds = %2273, %2267
  %2290 = phi float [ %2288, %2273 ], [ %2268, %2267 ]
  %2291 = fcmp fast ult float %2290, 0x3F70101020000000
  br i1 %2291, label %3030, label %2292

; <label>:2292                                    ; preds = %2289
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = and i32 %2294, 16
  %2296 = icmp eq i32 %2295, 0
  br i1 %2296, label %2495, label %2297

; <label>:2297                                    ; preds = %2292
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2133, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = add i32 %50, 384
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = add i32 %2302, 0
  %2304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2303, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2305 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2304, %dx.types.Handle %105, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2306 = extractvalue %dx.types.ResRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.ResRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.ResRet.f32 %2305, 2
  %2309 = extractvalue %dx.types.ResRet.f32 %2305, 3
  %2310 = and i32 %2299, 255
  %2311 = uitofp i32 %2310 to float
  %2312 = lshr i32 %2299, 8
  %2313 = and i32 %2312, 255
  %2314 = uitofp i32 %2313 to float
  %2315 = fmul fast float %2309, %2311
  %2316 = fadd fast float %2315, %2314
  %2317 = fmul fast float %2316, 0x3F70101000000000
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 512
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %2330, label %2322

; <label>:2322                                    ; preds = %2297
  %2323 = add i32 %50, 468
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = add i32 %2325, 0
  %2327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2327, %dx.types.Handle %106, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  br label %2330

; <label>:2330                                    ; preds = %2322, %2297
  %2331 = phi float [ %2329, %2322 ], [ 1.000000e+00, %2297 ]
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 33554432
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2442, label %2336

; <label>:2336                                    ; preds = %2330
  %2337 = add i32 %50, 256
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = lshr i32 %2339, 16
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = add i32 %50, 260
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 65535
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = lshr i32 %2350, 24
  %2352 = uitofp i32 %2351 to float
  %2353 = fmul fast float %2352, 0x3F70101020000000
  %2354 = and i32 %2350, 255
  %2355 = uitofp i32 %2354 to float
  %2356 = fmul fast float %2355, 0x3F70101020000000
  %2357 = lshr i32 %2350, 8
  %2358 = and i32 %2357, 255
  %2359 = uitofp i32 %2358 to float
  %2360 = fmul fast float %2359, 0x3F70101020000000
  %2361 = lshr i32 %2350, 16
  %2362 = and i32 %2361, 255
  %2363 = uitofp i32 %2362 to float
  %2364 = fmul fast float %2363, 0x3F70101020000000
  %2365 = add i32 %50, 252
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = lshr i32 %2367, 24
  %2369 = uitofp i32 %2368 to float
  %2370 = fmul fast float %2369, 0x3F70101020000000
  %2371 = and i32 %2367, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = fmul fast float %2372, 0x3F70101020000000
  %2374 = lshr i32 %2367, 8
  %2375 = and i32 %2374, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = fmul fast float %2376, 0x3F70101020000000
  %2378 = lshr i32 %2367, 16
  %2379 = and i32 %2378, 255
  %2380 = uitofp i32 %2379 to float
  %2381 = fmul fast float %2380, 0x3F70101020000000
  %2382 = bitcast float %2306 to i32
  %2383 = ashr i32 %2382, 1
  %2384 = sub nsw i32 1597463174, %2383
  %2385 = bitcast i32 %2384 to float
  %2386 = fmul fast float %2306, 5.000000e-01
  %2387 = fmul fast float %2385, %2385
  %2388 = fmul fast float %2387, %2386
  %2389 = fsub fast float 1.500000e+00, %2388
  %2390 = fmul fast float %2385, %2306
  %2391 = fmul fast float %2390, %2389
  %2392 = bitcast float %2307 to i32
  %2393 = ashr i32 %2392, 1
  %2394 = sub nsw i32 1597463174, %2393
  %2395 = bitcast i32 %2394 to float
  %2396 = fmul fast float %2307, 5.000000e-01
  %2397 = fmul fast float %2395, %2395
  %2398 = fmul fast float %2397, %2396
  %2399 = fsub fast float 1.500000e+00, %2398
  %2400 = fmul fast float %2395, %2307
  %2401 = fmul fast float %2400, %2399
  %2402 = bitcast float %2308 to i32
  %2403 = ashr i32 %2402, 1
  %2404 = sub nsw i32 1597463174, %2403
  %2405 = bitcast i32 %2404 to float
  %2406 = fmul fast float %2308, 5.000000e-01
  %2407 = fmul fast float %2405, %2405
  %2408 = fmul fast float %2407, %2406
  %2409 = fsub fast float 1.500000e+00, %2408
  %2410 = fmul fast float %2405, %2308
  %2411 = fmul fast float %2410, %2409
  %2412 = fsub fast float %2391, %2373
  %2413 = fsub fast float %2401, %2377
  %2414 = fsub fast float %2411, %2381
  %2415 = fmul fast float %2412, %2341
  %2416 = fmul fast float %2413, %2343
  %2417 = fmul fast float %2414, %2348
  %2418 = fadd fast float %2415, %2356
  %2419 = fadd fast float %2416, %2360
  %2420 = fadd fast float %2417, %2364
  %2421 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2422 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  %2423 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  %2424 = fmul fast float %2421, %2421
  %2425 = fmul fast float %2422, %2422
  %2426 = fmul fast float %2423, %2423
  %2427 = fsub fast float %2424, %2306
  %2428 = fsub fast float %2425, %2307
  %2429 = fsub fast float %2426, %2308
  %2430 = fmul fast float %2427, %2331
  %2431 = fmul fast float %2428, %2331
  %2432 = fmul fast float %2429, %2331
  %2433 = fadd fast float %2430, %2306
  %2434 = fadd fast float %2431, %2307
  %2435 = fadd fast float %2432, %2308
  %2436 = fadd fast float %2353, %2317
  %2437 = fsub fast float %2436, %2370
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2439 = fsub fast float %2438, %2317
  %2440 = fmul fast float %2439, %2331
  %2441 = fadd fast float %2440, %2317
  br label %2495

; <label>:2442                                    ; preds = %2330
  %2443 = and i32 %2333, 134217728
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2479, label %2445

; <label>:2445                                    ; preds = %2442
  %2446 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %2447 = call float @dx.op.unary.f32(i32 24, float %366)  ; Sqrt(value)
  %2448 = call float @dx.op.unary.f32(i32 24, float %370)  ; Sqrt(value)
  %2449 = fadd fast float %2446, -5.000000e-01
  %2450 = fadd fast float %2447, -5.000000e-01
  %2451 = fadd fast float %2448, -5.000000e-01
  %2452 = fmul fast float %2449, %2331
  %2453 = fmul fast float %2450, %2331
  %2454 = fmul fast float %2451, %2331
  %2455 = fadd fast float %2452, 5.000000e-01
  %2456 = fadd fast float %2453, 5.000000e-01
  %2457 = fadd fast float %2454, 5.000000e-01
  %2458 = call float @dx.op.unary.f32(i32 24, float %2306)  ; Sqrt(value)
  %2459 = call float @dx.op.unary.f32(i32 24, float %2307)  ; Sqrt(value)
  %2460 = call float @dx.op.unary.f32(i32 24, float %2308)  ; Sqrt(value)
  %2461 = fmul fast float %2455, 2.000000e+00
  %2462 = fsub fast float 1.000000e+00, %2461
  %2463 = fmul fast float %2462, %2458
  %2464 = fadd fast float %2463, %2461
  %2465 = fmul fast float %2464, %2458
  %2466 = fmul fast float %2456, 2.000000e+00
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2459
  %2469 = fadd fast float %2468, %2466
  %2470 = fmul fast float %2469, %2459
  %2471 = fmul fast float %2457, 2.000000e+00
  %2472 = fsub fast float 1.000000e+00, %2471
  %2473 = fmul fast float %2472, %2460
  %2474 = fadd fast float %2473, %2471
  %2475 = fmul fast float %2474, %2460
  %2476 = fmul fast float %2465, %2465
  %2477 = fmul fast float %2470, %2470
  %2478 = fmul fast float %2475, %2475
  br label %2495

; <label>:2479                                    ; preds = %2442
  %2480 = fmul fast float %362, %362
  %2481 = fmul fast float %366, %366
  %2482 = fmul fast float %370, %370
  %2483 = fadd fast float %2480, -1.000000e+00
  %2484 = fadd fast float %2481, -1.000000e+00
  %2485 = fadd fast float %2482, -1.000000e+00
  %2486 = fmul fast float %2331, %2483
  %2487 = fmul fast float %2331, %2484
  %2488 = fmul fast float %2331, %2485
  %2489 = fadd fast float %2486, 1.000000e+00
  %2490 = fadd fast float %2487, 1.000000e+00
  %2491 = fadd fast float %2488, 1.000000e+00
  %2492 = fmul fast float %2489, %2306
  %2493 = fmul fast float %2490, %2307
  %2494 = fmul fast float %2491, %2308
  br label %2495

; <label>:2495                                    ; preds = %2479, %2445, %2336, %2292
  %2496 = phi float [ %2441, %2336 ], [ %2317, %2445 ], [ %2317, %2479 ], [ 0x3FA23C0BE0000000, %2292 ]
  %2497 = phi float [ %2433, %2336 ], [ %2476, %2445 ], [ %2492, %2479 ], [ 1.000000e+00, %2292 ]
  %2498 = phi float [ %2434, %2336 ], [ %2477, %2445 ], [ %2493, %2479 ], [ 1.000000e+00, %2292 ]
  %2499 = phi float [ %2435, %2336 ], [ %2478, %2445 ], [ %2494, %2479 ], [ 1.000000e+00, %2292 ]
  %2500 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.i32 %2500, 1
  %2502 = and i32 %2501, 1
  %2503 = icmp ne i32 %2502, 0
  %2504 = add i32 %50, 356
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = and i32 %2506, 32
  %2508 = icmp ne i32 %2507, 0
  %2509 = and i1 %2503, %2508
  %2510 = select i1 %2509, float 1.000000e+00, float %2497
  %2511 = select i1 %2509, float 0x3FD3333340000000, float %2498
  %2512 = select i1 %2509, float 0x3FD3333340000000, float %2499
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 32
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2589, label %2517

; <label>:2517                                    ; preds = %2495
  %2518 = add i32 %50, 124
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %50, 400
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = add i32 %2523, 0
  %2525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2525, %dx.types.Handle %105, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2527 = extractvalue %dx.types.ResRet.f32 %2526, 0
  %2528 = extractvalue %dx.types.ResRet.f32 %2526, 1
  %2529 = extractvalue %dx.types.ResRet.f32 %2526, 2
  %2530 = extractvalue %dx.types.ResRet.f32 %2526, 3
  %2531 = and i32 %2520, 255
  %2532 = uitofp i32 %2531 to float
  %2533 = lshr i32 %2520, 8
  %2534 = and i32 %2533, 255
  %2535 = uitofp i32 %2534 to float
  %2536 = lshr i32 %2520, 16
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = fmul fast float %2538, 0x3F70101000000000
  %2540 = fmul fast float %2527, %2532
  %2541 = fadd fast float %2540, %2535
  %2542 = fmul fast float %2541, 0x3F70101000000000
  %2543 = fadd fast float %2528, -5.000000e-01
  %2544 = fadd fast float %2530, -5.000000e-01
  %2545 = fmul fast float %2543, %2539
  %2546 = fmul fast float %2544, %2539
  %2547 = fadd fast float %2545, 5.000000e-01
  %2548 = fadd fast float %2546, 5.000000e-01
  %2549 = fmul fast float %2547, 2.000000e+00
  %2550 = fadd fast float %2549, -1.000000e+00
  %2551 = fmul fast float %2548, 2.000000e+00
  %2552 = fadd fast float %2551, -1.000000e+00
  %2553 = fadd fast float %2550, %2552
  %2554 = fmul fast float %2553, 5.000000e-01
  %2555 = fsub fast float %2550, %2552
  %2556 = fmul fast float %2555, 5.000000e-01
  %2557 = call float @dx.op.unary.f32(i32 6, float %2554)  ; FAbs(value)
  %2558 = fsub fast float 1.000000e+00, %2557
  %2559 = call float @dx.op.unary.f32(i32 6, float %2556)  ; FAbs(value)
  %2560 = fsub fast float %2558, %2559
  %2561 = call float @dx.op.dot3.f32(i32 55, float %2554, float %2556, float %2560, float %2554, float %2556, float %2560)  ; Dot3(ax,ay,az,bx,by,bz)
  %2562 = call float @dx.op.unary.f32(i32 25, float %2561)  ; Rsqrt(value)
  %2563 = fmul fast float %2554, %2562
  %2564 = fmul fast float %2556, %2562
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 67108864
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2585, label %2569

; <label>:2569                                    ; preds = %2517
  %2570 = add i32 %50, 312
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 65535
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2127, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = and i32 %2576, 65535
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = lshr i32 %2572, 16
  %2580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2579)  ; LegacyF16ToF32(value)
  %2581 = fsub fast float %2542, %2580
  %2582 = fmul fast float %2581, %2574
  %2583 = fadd fast float %2582, %2578
  %2584 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  br label %2585

; <label>:2585                                    ; preds = %2569, %2517
  %2586 = phi float [ %2584, %2569 ], [ %2542, %2517 ]
  %2587 = call float @dx.op.dot2.f32(i32 54, float %2563, float %2564, float %2121, float %2122)  ; Dot2(ax,ay,bx,by)
  %2588 = call float @dx.op.dot2.f32(i32 54, float %2563, float %2564, float %2123, float %2124)  ; Dot2(ax,ay,bx,by)
  br label %2589

; <label>:2589                                    ; preds = %2585, %2495
  %2590 = phi float [ %2586, %2585 ], [ 0x3FD6666660000000, %2495 ]
  %2591 = phi float [ %2587, %2585 ], [ 0.000000e+00, %2495 ]
  %2592 = phi float [ %2588, %2585 ], [ 0.000000e+00, %2495 ]
  %2593 = phi float [ %2529, %2585 ], [ 1.000000e+00, %2495 ]
  %2594 = add i32 %50, 192
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = lshr i32 %2596, 22
  %2598 = shl nuw nsw i32 %2597, 5
  %2599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2598)  ; LegacyF16ToF32(value)
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = and i32 %2601, 64
  %2603 = icmp eq i32 %2602, 0
  br i1 %2603, label %2637, label %2604

; <label>:2604                                    ; preds = %2589
  %2605 = add i32 %50, 416
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = add i32 %2607, 0
  %2609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 131072
  %2613 = icmp eq i32 %2612, 0
  %2614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2609, %dx.types.Handle %105, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.ResRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.ResRet.f32 %2614, 2
  %2618 = fmul fast float %2615, %350
  %2619 = fmul fast float %2616, %353
  %2620 = fmul fast float %2617, %356
  br i1 %2613, label %2627, label %2621

; <label>:2621                                    ; preds = %2604
  %2622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2623 = extractvalue %dx.types.CBufRet.f32 %2622, 0
  %2624 = fmul fast float %2623, %2618
  %2625 = fmul fast float %2623, %2619
  %2626 = fmul fast float %2623, %2620
  br label %2627

; <label>:2627                                    ; preds = %2621, %2604
  %2628 = phi float [ %2624, %2621 ], [ %2618, %2604 ]
  %2629 = phi float [ %2625, %2621 ], [ %2619, %2604 ]
  %2630 = phi float [ %2626, %2621 ], [ %2620, %2604 ]
  %2631 = fmul fast float %2628, %2599
  %2632 = select i1 %249, float %2631, float %2628
  %2633 = call float @dx.op.dot3.f32(i32 55, float %2632, float %2629, float %2630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2634 = select i1 %249, float 0.000000e+00, float %2628
  %2635 = select i1 %249, float %2633, float %2629
  %2636 = select i1 %249, float 0.000000e+00, float %2630
  br label %2637

; <label>:2637                                    ; preds = %2627, %2589
  %2638 = phi float [ %2634, %2627 ], [ 0.000000e+00, %2589 ]
  %2639 = phi float [ %2635, %2627 ], [ 0.000000e+00, %2589 ]
  %2640 = phi float [ %2636, %2627 ], [ 0.000000e+00, %2589 ]
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = and i32 %2642, 1024
  %2644 = icmp eq i32 %2643, 0
  br i1 %2644, label %2675, label %2645

; <label>:2645                                    ; preds = %2637
  %2646 = add i32 %50, 184
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2646, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 255
  %2650 = uitofp i32 %2649 to float
  %2651 = fmul fast float %2650, 0x3F70101020000000
  %2652 = lshr i32 %2648, 8
  %2653 = and i32 %2652, 255
  %2654 = uitofp i32 %2653 to float
  %2655 = fmul fast float %2654, 0x3F70101020000000
  %2656 = lshr i32 %2648, 16
  %2657 = and i32 %2656, 255
  %2658 = uitofp i32 %2657 to float
  %2659 = fmul fast float %2658, 0x3F70101020000000
  %2660 = fmul fast float %2651, %2651
  %2661 = fmul fast float %2655, %2655
  %2662 = fmul fast float %2659, %2659
  %2663 = add i32 %50, 484
  %2664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.i32 %2664, 0
  %2666 = add i32 %2665, 0
  %2667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2666, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2668 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2667, %dx.types.Handle %106, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2669 = extractvalue %dx.types.ResRet.f32 %2668, 0
  %2670 = extractvalue %dx.types.ResRet.f32 %2668, 1
  %2671 = extractvalue %dx.types.ResRet.f32 %2668, 2
  %2672 = fmul fast float %2660, %2669
  %2673 = fmul fast float %2661, %2670
  %2674 = fmul fast float %2662, %2671
  br label %2675

; <label>:2675                                    ; preds = %2645, %2637
  %2676 = phi float [ %2672, %2645 ], [ 0.000000e+00, %2637 ]
  %2677 = phi float [ %2673, %2645 ], [ 0.000000e+00, %2637 ]
  %2678 = phi float [ %2674, %2645 ], [ 0.000000e+00, %2637 ]
  %2679 = fcmp fast ogt float %2676, 0.000000e+00
  %2680 = fcmp fast ogt float %2677, 0.000000e+00
  %2681 = fcmp fast ogt float %2678, 0.000000e+00
  %2682 = call float @dx.op.unary.f32(i32 23, float %2676)  ; Log(value)
  %2683 = call float @dx.op.unary.f32(i32 23, float %2677)  ; Log(value)
  %2684 = call float @dx.op.unary.f32(i32 23, float %2678)  ; Log(value)
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = lshr i32 %2686, 7
  %2688 = and i32 %2687, 32752
  %2689 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2688)  ; LegacyF16ToF32(value)
  %2690 = fmul fast float %2682, 0xBFE62E4300000000
  %2691 = fmul fast float %2690, %2689
  %2692 = fmul fast float %2683, 0xBFE62E4300000000
  %2693 = fmul fast float %2692, %2689
  %2694 = fmul fast float %2684, 0xBFE62E4300000000
  %2695 = fmul fast float %2694, %2689
  %2696 = select i1 %2679, float %2691, float 1.270000e+02
  %2697 = select i1 %2680, float %2693, float 1.270000e+02
  %2698 = select i1 %2681, float %2695, float 1.270000e+02
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = and i32 %2700, 10240
  %2702 = icmp eq i32 %2701, 0
  br i1 %2702, label %2747, label %2703

; <label>:2703                                    ; preds = %2675
  %2704 = add i32 %50, 500
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = add i32 %2706, 0
  %2708 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2707, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2709 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2708, %dx.types.Handle %106, float %2217, float %2218, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2710 = extractvalue %dx.types.ResRet.f32 %2709, 1
  %2711 = extractvalue %dx.types.ResRet.f32 %2709, 3
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %2713, 1048576
  %2715 = icmp ne i32 %2714, 0
  %2716 = and i32 %2713, 8192
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2733, label %2718

; <label>:2718                                    ; preds = %2703
  %2719 = extractvalue %dx.types.ResRet.f32 %2709, 2
  %2720 = select i1 %2715, float %2719, float %2710
  %2721 = extractvalue %dx.types.ResRet.f32 %2709, 0
  %2722 = select i1 %2715, float %2721, float %2710
  %2723 = add i32 %50, 128
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = lshr i32 %2725, 16
  %2727 = and i32 %2726, 255
  %2728 = uitofp i32 %2727 to float
  %2729 = fmul fast float %2728, 0x3F80101020000000
  %2730 = fmul fast float %2729, %2722
  %2731 = fmul fast float %2729, %2710
  %2732 = fmul fast float %2729, %2720
  br label %2733

; <label>:2733                                    ; preds = %2718, %2703
  %2734 = phi float [ %2730, %2718 ], [ 0.000000e+00, %2703 ]
  %2735 = phi float [ %2731, %2718 ], [ 0.000000e+00, %2703 ]
  %2736 = phi float [ %2732, %2718 ], [ 0.000000e+00, %2703 ]
  %2737 = and i32 %2713, 2048
  %2738 = icmp eq i32 %2737, 0
  br i1 %2738, label %2747, label %2739

; <label>:2739                                    ; preds = %2733
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2594, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = shl i32 %2741, 4
  %2743 = and i32 %2742, 32752
  %2744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2743)  ; LegacyF16ToF32(value)
  %2745 = fmul fast float %2744, %2711
  %2746 = call float @dx.op.binary.f32(i32 35, float %2745, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2747

; <label>:2747                                    ; preds = %2739, %2733, %2675
  %2748 = phi float [ %2734, %2739 ], [ %2734, %2733 ], [ 0.000000e+00, %2675 ]
  %2749 = phi float [ %2735, %2739 ], [ %2735, %2733 ], [ 0.000000e+00, %2675 ]
  %2750 = phi float [ %2736, %2739 ], [ %2736, %2733 ], [ 0.000000e+00, %2675 ]
  %2751 = phi float [ %2746, %2739 ], [ 0x3F70101020000000, %2733 ], [ 0x3F70101020000000, %2675 ]
  %2752 = add i32 %50, 128
  %2753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2754 = extractvalue %dx.types.ResRet.i32 %2753, 0
  %2755 = and i32 %2754, 255
  %2756 = uitofp i32 %2755 to float
  %2757 = lshr i32 %2754, 8
  %2758 = and i32 %2757, 255
  %2759 = uitofp i32 %2758 to float
  %2760 = call float @dx.op.dot3.f32(i32 55, float %2510, float %2511, float %2512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2761 = fmul fast float %2759, %2760
  %2762 = fadd fast float %2761, %2756
  %2763 = fmul fast float %2762, 0x3F70101020000000
  %2764 = call float @dx.op.unary.f32(i32 7, float %2763)  ; Saturate(value)
  br i1 %2109, label %2765, label %2800

; <label>:2765                                    ; preds = %2747
  %2766 = fmul fast float %2751, 2.000000e+00
  %2767 = fcmp fast olt float %2696, 1.270000e+02
  %2768 = fcmp fast olt float %2697, 1.270000e+02
  %2769 = fcmp fast olt float %2698, 1.270000e+02
  %2770 = fmul fast float %2696, 0xBFF7154760000000
  %2771 = fmul fast float %2770, %2766
  %2772 = fmul fast float %2697, 0xBFF7154760000000
  %2773 = fmul fast float %2772, %2766
  %2774 = fmul fast float %2698, 0xBFF7154760000000
  %2775 = fmul fast float %2774, %2766
  %2776 = call float @dx.op.unary.f32(i32 21, float %2771)  ; Exp(value)
  %2777 = call float @dx.op.unary.f32(i32 21, float %2773)  ; Exp(value)
  %2778 = call float @dx.op.unary.f32(i32 21, float %2775)  ; Exp(value)
  %2779 = call float @dx.op.unary.f32(i32 7, float %2776)  ; Saturate(value)
  %2780 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2781 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  %2782 = fadd fast float %2779, -1.000000e+00
  %2783 = select i1 %2767, float %2782, float -1.000000e+00
  %2784 = fadd fast float %2780, -1.000000e+00
  %2785 = select i1 %2768, float %2784, float -1.000000e+00
  %2786 = fadd fast float %2781, -1.000000e+00
  %2787 = select i1 %2769, float %2786, float -1.000000e+00
  %2788 = fmul fast float %2783, %2290
  %2789 = fmul fast float %2785, %2290
  %2790 = fmul fast float %2787, %2290
  %2791 = fadd fast float %2788, 1.000000e+00
  %2792 = fadd fast float %2789, 1.000000e+00
  %2793 = fadd fast float %2790, 1.000000e+00
  %2794 = fmul fast float %2791, %2091
  %2795 = fmul fast float %2792, %2092
  %2796 = fmul fast float %2793, %2093
  %2797 = fmul fast float %2791, %2100
  %2798 = fmul fast float %2792, %2101
  %2799 = fmul fast float %2793, %2102
  br label %2800

; <label>:2800                                    ; preds = %2765, %2747
  %2801 = phi float [ %2794, %2765 ], [ %2091, %2747 ]
  %2802 = phi float [ %2795, %2765 ], [ %2092, %2747 ]
  %2803 = phi float [ %2796, %2765 ], [ %2093, %2747 ]
  %2804 = phi float [ %2797, %2765 ], [ %2100, %2747 ]
  %2805 = phi float [ %2798, %2765 ], [ %2101, %2747 ]
  %2806 = phi float [ %2799, %2765 ], [ %2102, %2747 ]
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = and i32 %2808, 3
  %2810 = icmp eq i32 %2809, 3
  br i1 %2810, label %2889, label %2811

; <label>:2811                                    ; preds = %2800
  %2812 = and i32 %2808, 16
  %2813 = icmp ne i32 %2812, 0
  %2814 = select i1 %2813, float %2290, float 0.000000e+00
  %2815 = icmp eq i32 %2809, 0
  br i1 %2815, label %2816, label %2844

; <label>:2816                                    ; preds = %2811
  %2817 = and i32 %2808, 64
  %2818 = icmp ne i32 %2817, 0
  %2819 = select i1 %2818, float %2290, float 0.000000e+00
  %2820 = fsub fast float %2510, %2801
  %2821 = fsub fast float %2511, %2802
  %2822 = fsub fast float %2512, %2803
  %2823 = fmul fast float %2814, %2820
  %2824 = fmul fast float %2814, %2821
  %2825 = fmul fast float %2814, %2822
  %2826 = fadd fast float %2823, %2801
  %2827 = fadd fast float %2824, %2802
  %2828 = fadd fast float %2825, %2803
  %2829 = fsub fast float %2496, %2103
  %2830 = fmul fast float %2814, %2829
  %2831 = fadd fast float %2830, %2103
  %2832 = fsub fast float %2638, %2804
  %2833 = fsub fast float %2639, %2805
  %2834 = fsub fast float %2640, %2806
  %2835 = fmul fast float %2819, %2832
  %2836 = fmul fast float %2819, %2833
  %2837 = fmul fast float %2819, %2834
  %2838 = fadd fast float %2835, %2804
  %2839 = fadd fast float %2836, %2805
  %2840 = fadd fast float %2837, %2806
  %2841 = fsub fast float %2764, %2107
  %2842 = fmul fast float %2814, %2841
  %2843 = fadd fast float %2842, %2107
  br label %2889

; <label>:2844                                    ; preds = %2811
  %2845 = icmp eq i32 %2809, 1
  br i1 %2845, label %2846, label %2859

; <label>:2846                                    ; preds = %2844
  %2847 = fadd fast float %2510, -1.000000e+00
  %2848 = fadd fast float %2511, -1.000000e+00
  %2849 = fadd fast float %2512, -1.000000e+00
  %2850 = fmul fast float %2814, %2847
  %2851 = fmul fast float %2814, %2848
  %2852 = fmul fast float %2814, %2849
  %2853 = fadd fast float %2850, 1.000000e+00
  %2854 = fadd fast float %2851, 1.000000e+00
  %2855 = fadd fast float %2852, 1.000000e+00
  %2856 = fmul fast float %2853, %2801
  %2857 = fmul fast float %2854, %2802
  %2858 = fmul fast float %2855, %2803
  br label %2889

; <label>:2859                                    ; preds = %2844
  %2860 = icmp eq i32 %2809, 2
  br i1 %2860, label %2861, label %2889

; <label>:2861                                    ; preds = %2859
  %2862 = call float @dx.op.unary.f32(i32 24, float %2510)  ; Sqrt(value)
  %2863 = call float @dx.op.unary.f32(i32 24, float %2511)  ; Sqrt(value)
  %2864 = call float @dx.op.unary.f32(i32 24, float %2512)  ; Sqrt(value)
  %2865 = fadd fast float %2862, -5.000000e-01
  %2866 = fadd fast float %2863, -5.000000e-01
  %2867 = fadd fast float %2864, -5.000000e-01
  %2868 = fmul fast float %2865, %2814
  %2869 = fmul fast float %2866, %2814
  %2870 = fmul fast float %2867, %2814
  %2871 = fadd fast float %2868, 5.000000e-01
  %2872 = fadd fast float %2869, 5.000000e-01
  %2873 = fadd fast float %2870, 5.000000e-01
  %2874 = fmul fast float %2871, 2.000000e+00
  %2875 = fsub fast float 1.000000e+00, %2874
  %2876 = fmul fast float %2875, %2801
  %2877 = fadd fast float %2876, %2874
  %2878 = fmul fast float %2877, %2801
  %2879 = fmul fast float %2872, 2.000000e+00
  %2880 = fsub fast float 1.000000e+00, %2879
  %2881 = fmul fast float %2880, %2802
  %2882 = fadd fast float %2881, %2879
  %2883 = fmul fast float %2882, %2802
  %2884 = fmul fast float %2873, 2.000000e+00
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2885, %2803
  %2887 = fadd fast float %2886, %2884
  %2888 = fmul fast float %2887, %2803
  br label %2889

; <label>:2889                                    ; preds = %2861, %2859, %2846, %2816, %2800
  %2890 = phi float [ %2801, %2800 ], [ %2878, %2861 ], [ %2801, %2859 ], [ %2856, %2846 ], [ %2826, %2816 ]
  %2891 = phi float [ %2802, %2800 ], [ %2883, %2861 ], [ %2802, %2859 ], [ %2857, %2846 ], [ %2827, %2816 ]
  %2892 = phi float [ %2803, %2800 ], [ %2888, %2861 ], [ %2803, %2859 ], [ %2858, %2846 ], [ %2828, %2816 ]
  %2893 = phi float [ %2804, %2800 ], [ %2804, %2861 ], [ %2804, %2859 ], [ %2804, %2846 ], [ %2838, %2816 ]
  %2894 = phi float [ %2805, %2800 ], [ %2805, %2861 ], [ %2805, %2859 ], [ %2805, %2846 ], [ %2839, %2816 ]
  %2895 = phi float [ %2806, %2800 ], [ %2806, %2861 ], [ %2806, %2859 ], [ %2806, %2846 ], [ %2840, %2816 ]
  %2896 = phi float [ %2103, %2800 ], [ %2103, %2861 ], [ %2103, %2859 ], [ %2103, %2846 ], [ %2831, %2816 ]
  %2897 = phi float [ %2107, %2800 ], [ %2107, %2861 ], [ %2107, %2859 ], [ %2107, %2846 ], [ %2843, %2816 ]
  %2898 = and i32 %2808, 12
  %2899 = icmp eq i32 %2898, 12
  br i1 %2899, label %3030, label %2900

; <label>:2900                                    ; preds = %2889
  %2901 = and i32 %2808, 2097184
  %2902 = icmp eq i32 %2901, 2097184
  %2903 = select i1 %2902, float %2290, float 0.000000e+00
  %2904 = and i32 %2808, 4194336
  %2905 = icmp eq i32 %2904, 4194336
  %2906 = select i1 %2905, float %2290, float 0.000000e+00
  %2907 = and i32 %2808, 8388640
  %2908 = icmp eq i32 %2907, 8388640
  %2909 = select i1 %2908, float %2290, float 0.000000e+00
  %2910 = and i32 %2808, 1024
  %2911 = icmp ne i32 %2910, 0
  %2912 = select i1 %2911, float %2290, float 0.000000e+00
  %2913 = and i32 %2808, 2048
  %2914 = icmp ne i32 %2913, 0
  %2915 = select i1 %2914, float %2290, float 0.000000e+00
  %2916 = and i32 %2808, 8192
  %2917 = icmp ne i32 %2916, 0
  %2918 = select i1 %2917, float %2290, float 0.000000e+00
  %2919 = icmp eq i32 %2898, 0
  br i1 %2919, label %2920, label %2954

; <label>:2920                                    ; preds = %2900
  %2921 = fsub fast float %2591, %2089
  %2922 = fsub fast float %2592, %2090
  %2923 = fmul fast float %2903, %2921
  %2924 = fmul fast float %2903, %2922
  %2925 = fadd fast float %2923, %2089
  %2926 = fadd fast float %2924, %2090
  %2927 = fsub fast float %2593, %2105
  %2928 = fmul fast float %2906, %2927
  %2929 = fadd fast float %2928, %2105
  %2930 = fsub fast float %2590, %2104
  %2931 = fmul fast float %2909, %2930
  %2932 = fadd fast float %2931, %2104
  %2933 = fsub fast float %2696, %2097
  %2934 = fsub fast float %2697, %2098
  %2935 = fsub fast float %2698, %2099
  %2936 = fmul fast float %2912, %2933
  %2937 = fmul fast float %2912, %2934
  %2938 = fmul fast float %2912, %2935
  %2939 = fadd fast float %2936, %2097
  %2940 = fadd fast float %2937, %2098
  %2941 = fadd fast float %2938, %2099
  %2942 = fsub fast float %2751, %2106
  %2943 = fmul fast float %2915, %2942
  %2944 = fadd fast float %2943, %2106
  %2945 = fsub fast float %2748, %2094
  %2946 = fsub fast float %2749, %2095
  %2947 = fsub fast float %2750, %2096
  %2948 = fmul fast float %2918, %2945
  %2949 = fmul fast float %2918, %2946
  %2950 = fmul fast float %2918, %2947
  %2951 = fadd fast float %2948, %2094
  %2952 = fadd fast float %2949, %2095
  %2953 = fadd fast float %2950, %2096
  br label %3030

; <label>:2954                                    ; preds = %2900
  %2955 = icmp eq i32 %2898, 4
  br i1 %2955, label %2956, label %3002

; <label>:2956                                    ; preds = %2954
  %2957 = fmul fast float %2903, %2591
  %2958 = fmul fast float %2903, %2592
  %2959 = fadd fast float %2957, %2089
  %2960 = fadd fast float %2958, %2090
  %2961 = call float @dx.op.binary.f32(i32 36, float %2105, float %2593)  ; FMin(a,b)
  %2962 = fsub fast float %2961, %2105
  %2963 = fmul fast float %2962, %2906
  %2964 = fadd fast float %2963, %2105
  %2965 = fadd fast float %2590, %2104
  %2966 = fmul fast float %2965, 0x3FF337FAE0000000
  %2967 = fmul fast float %2104, %2104
  %2968 = fmul fast float %2590, %2590
  %2969 = fadd fast float %2968, %2967
  %2970 = fmul fast float %2969, 0x3FE5152B00000000
  %2971 = fmul fast float %2104, 0xBFCC1F85E0000000
  %2972 = fmul fast float %2971, %2590
  %2973 = fadd fast float %2972, 0xBFE1363700000000
  %2974 = fadd fast float %2973, %2966
  %2975 = fsub fast float %2974, %2970
  %2976 = fmul fast float %2965, 0x3FBA6F0D00000000
  %2977 = fmul fast float %2969, 0x3FD0432880000000
  %2978 = fmul fast float %2104, 0xBFEF110800000000
  %2979 = fmul fast float %2978, %2590
  %2980 = fadd fast float %2979, 1.000000e+00
  %2981 = fsub fast float %2980, %2976
  %2982 = fadd fast float %2981, %2977
  %2983 = fdiv fast float %2975, %2982
  %2984 = call float @dx.op.unary.f32(i32 7, float %2983)  ; Saturate(value)
  %2985 = fsub fast float %2984, %2104
  %2986 = fmul fast float %2985, %2909
  %2987 = fadd fast float %2986, %2104
  %2988 = fmul fast float %2912, %2696
  %2989 = fmul fast float %2912, %2697
  %2990 = fmul fast float %2912, %2698
  %2991 = fadd fast float %2988, %2097
  %2992 = fadd fast float %2989, %2098
  %2993 = fadd fast float %2990, %2099
  %2994 = fmul fast float %2915, %2751
  %2995 = fadd fast float %2994, %2106
  %2996 = fmul fast float %2918, %2748
  %2997 = fmul fast float %2918, %2749
  %2998 = fmul fast float %2918, %2750
  %2999 = fadd fast float %2996, %2094
  %3000 = fadd fast float %2997, %2095
  %3001 = fadd fast float %2998, %2096
  br label %3030

; <label>:3002                                    ; preds = %2954
  %3003 = icmp eq i32 %2898, 8
  br i1 %3003, label %3004, label %3030

; <label>:3004                                    ; preds = %3002
  %3005 = fmul fast float %2903, %2591
  %3006 = fmul fast float %2903, %2592
  %3007 = fadd fast float %3005, %2089
  %3008 = fadd fast float %3006, %2090
  %3009 = call float @dx.op.binary.f32(i32 36, float %2105, float %2593)  ; FMin(a,b)
  %3010 = fsub fast float %3009, %2105
  %3011 = fmul fast float %3010, %2906
  %3012 = fadd fast float %3011, %2105
  %3013 = fsub fast float %2590, %2104
  %3014 = fmul fast float %2909, %3013
  %3015 = fadd fast float %3014, %2104
  %3016 = fmul fast float %2912, %2696
  %3017 = fmul fast float %2912, %2697
  %3018 = fmul fast float %2912, %2698
  %3019 = fadd fast float %3016, %2097
  %3020 = fadd fast float %3017, %2098
  %3021 = fadd fast float %3018, %2099
  %3022 = fmul fast float %2915, %2751
  %3023 = fadd fast float %3022, %2106
  %3024 = fmul fast float %2918, %2748
  %3025 = fmul fast float %2918, %2749
  %3026 = fmul fast float %2918, %2750
  %3027 = fadd fast float %3024, %2094
  %3028 = fadd fast float %3025, %2095
  %3029 = fadd fast float %3026, %2096
  br label %3030

; <label>:3030                                    ; preds = %3004, %3002, %2956, %2920, %2889, %2289, %2108, %2088
  %3031 = phi float [ %2089, %2889 ], [ %2089, %2289 ], [ %2089, %2088 ], [ %3007, %3004 ], [ %2089, %3002 ], [ %2959, %2956 ], [ %2925, %2920 ], [ %2089, %2108 ]
  %3032 = phi float [ %2090, %2889 ], [ %2090, %2289 ], [ %2090, %2088 ], [ %3008, %3004 ], [ %2090, %3002 ], [ %2960, %2956 ], [ %2926, %2920 ], [ %2090, %2108 ]
  %3033 = phi float [ %2890, %2889 ], [ %2091, %2289 ], [ %2091, %2088 ], [ %2890, %3004 ], [ %2890, %3002 ], [ %2890, %2956 ], [ %2890, %2920 ], [ %2091, %2108 ]
  %3034 = phi float [ %2891, %2889 ], [ %2092, %2289 ], [ %2092, %2088 ], [ %2891, %3004 ], [ %2891, %3002 ], [ %2891, %2956 ], [ %2891, %2920 ], [ %2092, %2108 ]
  %3035 = phi float [ %2892, %2889 ], [ %2093, %2289 ], [ %2093, %2088 ], [ %2892, %3004 ], [ %2892, %3002 ], [ %2892, %2956 ], [ %2892, %2920 ], [ %2093, %2108 ]
  %3036 = phi float [ %2094, %2889 ], [ %2094, %2289 ], [ %2094, %2088 ], [ %3027, %3004 ], [ %2094, %3002 ], [ %2999, %2956 ], [ %2951, %2920 ], [ %2094, %2108 ]
  %3037 = phi float [ %2095, %2889 ], [ %2095, %2289 ], [ %2095, %2088 ], [ %3028, %3004 ], [ %2095, %3002 ], [ %3000, %2956 ], [ %2952, %2920 ], [ %2095, %2108 ]
  %3038 = phi float [ %2096, %2889 ], [ %2096, %2289 ], [ %2096, %2088 ], [ %3029, %3004 ], [ %2096, %3002 ], [ %3001, %2956 ], [ %2953, %2920 ], [ %2096, %2108 ]
  %3039 = phi float [ %2097, %2889 ], [ %2097, %2289 ], [ %2097, %2088 ], [ %3019, %3004 ], [ %2097, %3002 ], [ %2991, %2956 ], [ %2939, %2920 ], [ %2097, %2108 ]
  %3040 = phi float [ %2098, %2889 ], [ %2098, %2289 ], [ %2098, %2088 ], [ %3020, %3004 ], [ %2098, %3002 ], [ %2992, %2956 ], [ %2940, %2920 ], [ %2098, %2108 ]
  %3041 = phi float [ %2099, %2889 ], [ %2099, %2289 ], [ %2099, %2088 ], [ %3021, %3004 ], [ %2099, %3002 ], [ %2993, %2956 ], [ %2941, %2920 ], [ %2099, %2108 ]
  %3042 = phi float [ %2893, %2889 ], [ %2100, %2289 ], [ %2100, %2088 ], [ %2893, %3004 ], [ %2893, %3002 ], [ %2893, %2956 ], [ %2893, %2920 ], [ %2100, %2108 ]
  %3043 = phi float [ %2894, %2889 ], [ %2101, %2289 ], [ %2101, %2088 ], [ %2894, %3004 ], [ %2894, %3002 ], [ %2894, %2956 ], [ %2894, %2920 ], [ %2101, %2108 ]
  %3044 = phi float [ %2895, %2889 ], [ %2102, %2289 ], [ %2102, %2088 ], [ %2895, %3004 ], [ %2895, %3002 ], [ %2895, %2956 ], [ %2895, %2920 ], [ %2102, %2108 ]
  %3045 = phi float [ %2896, %2889 ], [ %2103, %2289 ], [ %2103, %2088 ], [ %2896, %3004 ], [ %2896, %3002 ], [ %2896, %2956 ], [ %2896, %2920 ], [ %2103, %2108 ]
  %3046 = phi float [ %2104, %2889 ], [ %2104, %2289 ], [ %2104, %2088 ], [ %3015, %3004 ], [ %2104, %3002 ], [ %2987, %2956 ], [ %2932, %2920 ], [ %2104, %2108 ]
  %3047 = phi float [ %2105, %2889 ], [ %2105, %2289 ], [ %2105, %2088 ], [ %3012, %3004 ], [ %2105, %3002 ], [ %2964, %2956 ], [ %2929, %2920 ], [ %2105, %2108 ]
  %3048 = phi float [ %2106, %2889 ], [ %2106, %2289 ], [ %2106, %2088 ], [ %3023, %3004 ], [ %2106, %3002 ], [ %2995, %2956 ], [ %2944, %2920 ], [ %2106, %2108 ]
  %3049 = phi float [ %2897, %2889 ], [ %2107, %2289 ], [ %2107, %2088 ], [ %2897, %3004 ], [ %2897, %3002 ], [ %2897, %2956 ], [ %2897, %2920 ], [ %2107, %2108 ]
  br i1 %437, label %3972, label %3050

; <label>:3050                                    ; preds = %3030
  %3051 = icmp ult i32 %491, 4
  %3052 = add i32 %50, 72
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %50, 76
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = or i32 %3057, %3054
  %3059 = icmp eq i32 %3058, 0
  br i1 %3059, label %3972, label %3060

; <label>:3060                                    ; preds = %3050
  %3061 = and i32 %3054, 262144
  %3062 = icmp ne i32 %3061, 0
  %3063 = select i1 %3062, float %55, float 1.000000e+00
  %3064 = select i1 %3062, float %56, float 0.000000e+00
  %3065 = select i1 %3062, float %57, float 0.000000e+00
  %3066 = select i1 %3062, float %58, float 1.000000e+00
  %3067 = select i1 %3062, float %59, float %87
  %3068 = select i1 %3062, float %60, float %88
  %3069 = add i32 %50, 332
  %3070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3071 = extractvalue %dx.types.ResRet.i32 %3070, 0
  %3072 = lshr i32 %3071, 16
  %3073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3072)  ; LegacyF16ToF32(value)
  %3074 = fmul fast float %3073, 0x3F50624DE0000000
  %3075 = add i32 %50, 136
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = lshr i32 %3077, 16
  %3079 = and i32 %3078, 255
  %3080 = lshr i32 %3077, 24
  %3081 = add i32 %50, 340
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3081, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = and i32 %3083, 65535
  %3085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3084)  ; LegacyF16ToF32(value)
  %3086 = lshr i32 %3083, 16
  %3087 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3086)  ; LegacyF16ToF32(value)
  %3088 = add i32 %50, 80
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = lshr i32 %3090, 22
  %3092 = shl nuw nsw i32 %3091, 5
  %3093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3092)  ; LegacyF16ToF32(value)
  %3094 = shl i32 %3090, 4
  %3095 = and i32 %3094, 32752
  %3096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3095)  ; LegacyF16ToF32(value)
  %3097 = lshr i32 %3090, 7
  %3098 = and i32 %3097, 32752
  %3099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3098)  ; LegacyF16ToF32(value)
  %3100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3101 = extractvalue %dx.types.CBufRet.f32 %3100, 3
  %3102 = fmul fast float %3101, 1.000000e+03
  %3103 = fmul fast float %427, %3102
  %3104 = call float @dx.op.unary.f32(i32 22, float %3103)  ; Frc(value)
  %3105 = fadd fast float %3104, %417
  %3106 = fmul fast float %428, %3102
  %3107 = call float @dx.op.unary.f32(i32 22, float %3106)  ; Frc(value)
  %3108 = fadd fast float %3107, %419
  %3109 = fmul fast float %3074, %3102
  %3110 = call float @dx.op.unary.f32(i32 22, float %3109)  ; Frc(value)
  %3111 = fmul fast float %3110, 0x401921FB60000000
  %3112 = fadd fast float %3111, %3093
  %3113 = call float @dx.op.unary.f32(i32 13, float %3112)  ; Sin(value)
  %3114 = call float @dx.op.unary.f32(i32 12, float %3112)  ; Cos(value)
  %3115 = fsub fast float -0.000000e+00, %3113
  %3116 = fadd fast float %3067, -5.000000e-01
  %3117 = fadd fast float %3068, -5.000000e-01
  %3118 = fmul fast float %3085, %3116
  %3119 = fmul fast float %3087, %3117
  %3120 = fadd fast float %3118, 5.000000e-01
  %3121 = fadd fast float %3119, 5.000000e-01
  %3122 = fmul fast float %3096, %3120
  %3123 = fmul fast float %3099, %3121
  %3124 = fmul fast float %3114, %3122
  %3125 = call float @dx.op.tertiary.f32(i32 46, float %3115, float %3123, float %3124)  ; FMad(a,b,c)
  %3126 = fmul fast float %3113, %3122
  %3127 = call float @dx.op.tertiary.f32(i32 46, float %3114, float %3123, float %3126)  ; FMad(a,b,c)
  %3128 = fadd fast float %3105, %3125
  %3129 = fadd fast float %3108, %3127
  %3130 = icmp ugt i32 %3079, 1
  %3131 = icmp ugt i32 %3077, 33554431
  %3132 = or i1 %3131, %3130
  br i1 %3132, label %3133, label %3158

; <label>:3133                                    ; preds = %3060
  %3134 = add i32 %50, 276
  %3135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3134, i32 undef)  ; BufferLoad(srv,index,wot)
  %3136 = extractvalue %dx.types.ResRet.i32 %3135, 0
  %3137 = lshr i32 %3136, 16
  %3138 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3137)  ; LegacyF16ToF32(value)
  %3139 = fmul fast float %3101, %3138
  %3140 = call float @dx.op.unary.f32(i32 22, float %3139)  ; Frc(value)
  %3141 = mul nuw nsw i32 %3079, %3080
  %3142 = uitofp i32 %3141 to float
  %3143 = fmul fast float %3140, %3142
  %3144 = call float @dx.op.unary.f32(i32 27, float %3143)  ; Round_ni(value)
  %3145 = fptoui float %3144 to i32
  %3146 = urem i32 %3145, %3079
  %3147 = udiv i32 %3145, %3080
  %3148 = call float @dx.op.unary.f32(i32 22, float %3128)  ; Frc(value)
  %3149 = call float @dx.op.unary.f32(i32 22, float %3129)  ; Frc(value)
  %3150 = uitofp i32 %3146 to float
  %3151 = uitofp i32 %3147 to float
  %3152 = fadd fast float %3148, %3150
  %3153 = fadd fast float %3149, %3151
  %3154 = uitofp i32 %3079 to float
  %3155 = uitofp i32 %3080 to float
  %3156 = fdiv fast float %3152, %3154
  %3157 = fdiv fast float %3153, %3155
  br label %3158

; <label>:3158                                    ; preds = %3133, %3060
  %3159 = phi float [ %3156, %3133 ], [ %3128, %3060 ]
  %3160 = phi float [ %3157, %3133 ], [ %3129, %3060 ]
  %3161 = and i32 %3054, 256
  %3162 = icmp eq i32 %3161, 0
  br i1 %3162, label %3209, label %3163

; <label>:3163                                    ; preds = %3158
  %3164 = add i32 %50, 452
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = add i32 %3166, 0
  %3168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3168, %dx.types.Handle %106, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = add i32 %50, 148
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = shl i32 %3173, 4
  %3175 = and i32 %3174, 32752
  %3176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3175)  ; LegacyF16ToF32(value)
  %3177 = lshr i32 %3173, 7
  %3178 = and i32 %3177, 32752
  %3179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3178)  ; LegacyF16ToF32(value)
  %3180 = fsub fast float 1.000000e+00, %486
  %3181 = call float @dx.op.binary.f32(i32 35, float %3180, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3182 = bitcast float %486 to i32
  %3183 = sitofp i32 %3182 to float
  %3184 = fadd fast float %3183, 0xC1CFBF8940000000
  %3185 = fmul fast float %3179, %3184
  %3186 = fadd fast float %3185, 0x41CFBF8940000000
  %3187 = fptosi float %3186 to i32
  %3188 = bitcast i32 %3187 to float
  %3189 = bitcast float %3181 to i32
  %3190 = sitofp i32 %3189 to float
  %3191 = fadd fast float %3190, 0xC1CFBF8940000000
  %3192 = fmul fast float %3191, %3179
  %3193 = fadd fast float %3192, 0x41CFBF8940000000
  %3194 = fptosi float %3193 to i32
  %3195 = bitcast i32 %3194 to float
  %3196 = fmul fast float %3188, %3176
  %3197 = fmul fast float %3195, %3176
  %3198 = fsub fast float %3181, %3196
  %3199 = fadd fast float %3197, %3181
  %3200 = call float @dx.op.unary.f32(i32 7, float %3198)  ; Saturate(value)
  %3201 = call float @dx.op.unary.f32(i32 7, float %3199)  ; Saturate(value)
  %3202 = fsub fast float %3170, %3200
  %3203 = fsub fast float %3201, %3200
  %3204 = bitcast float %3203 to i32
  %3205 = sub nsw i32 2129859010, %3204
  %3206 = bitcast i32 %3205 to float
  %3207 = fmul fast float %3206, %3202
  %3208 = call float @dx.op.unary.f32(i32 7, float %3207)  ; Saturate(value)
  br label %3209

; <label>:3209                                    ; preds = %3163, %3158
  %3210 = phi float [ %3208, %3163 ], [ %486, %3158 ]
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = and i32 %3212, 128
  %3214 = icmp eq i32 %3213, 0
  br i1 %3214, label %3231, label %3215

; <label>:3215                                    ; preds = %3209
  %3216 = add i32 %50, 436
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3216, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = add i32 %3218, 0
  %3220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3220, %dx.types.Handle %106, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3222 = extractvalue %dx.types.ResRet.f32 %3221, 0
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 524288
  %3226 = icmp ne i32 %3225, 0
  %3227 = fcmp fast ogt float %3222, 0x3FE0101020000000
  %3228 = select i1 %3227, float 1.000000e+00, float 0.000000e+00
  %3229 = select i1 %3226, float %3228, float %3222
  %3230 = fmul fast float %3229, %3210
  br label %3231

; <label>:3231                                    ; preds = %3215, %3209
  %3232 = phi float [ %3230, %3215 ], [ %3210, %3209 ]
  %3233 = fcmp fast ult float %3232, 0x3F70101020000000
  br i1 %3233, label %3972, label %3234

; <label>:3234                                    ; preds = %3231
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 16
  %3238 = icmp eq i32 %3237, 0
  br i1 %3238, label %3437, label %3239

; <label>:3239                                    ; preds = %3234
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = add i32 %50, 388
  %3243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3242, i32 undef)  ; BufferLoad(srv,index,wot)
  %3244 = extractvalue %dx.types.ResRet.i32 %3243, 0
  %3245 = add i32 %3244, 0
  %3246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3246, %dx.types.Handle %105, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3248 = extractvalue %dx.types.ResRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.ResRet.f32 %3247, 1
  %3250 = extractvalue %dx.types.ResRet.f32 %3247, 2
  %3251 = extractvalue %dx.types.ResRet.f32 %3247, 3
  %3252 = and i32 %3241, 255
  %3253 = uitofp i32 %3252 to float
  %3254 = lshr i32 %3241, 8
  %3255 = and i32 %3254, 255
  %3256 = uitofp i32 %3255 to float
  %3257 = fmul fast float %3251, %3253
  %3258 = fadd fast float %3257, %3256
  %3259 = fmul fast float %3258, 0x3F70101000000000
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = and i32 %3261, 512
  %3263 = icmp eq i32 %3262, 0
  br i1 %3263, label %3272, label %3264

; <label>:3264                                    ; preds = %3239
  %3265 = add i32 %50, 472
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = add i32 %3267, 0
  %3269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3269, %dx.types.Handle %106, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  br label %3272

; <label>:3272                                    ; preds = %3264, %3239
  %3273 = phi float [ %3271, %3264 ], [ 1.000000e+00, %3239 ]
  %3274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3275 = extractvalue %dx.types.ResRet.i32 %3274, 0
  %3276 = and i32 %3275, 33554432
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3384, label %3278

; <label>:3278                                    ; preds = %3272
  %3279 = add i32 %50, 272
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3279, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3281, 65535
  %3283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3282)  ; LegacyF16ToF32(value)
  %3284 = lshr i32 %3281, 16
  %3285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3284)  ; LegacyF16ToF32(value)
  %3286 = add i32 %50, 276
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = and i32 %3288, 65535
  %3290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3289)  ; LegacyF16ToF32(value)
  %3291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %3292 = extractvalue %dx.types.ResRet.i32 %3291, 0
  %3293 = lshr i32 %3292, 24
  %3294 = uitofp i32 %3293 to float
  %3295 = fmul fast float %3294, 0x3F70101020000000
  %3296 = and i32 %3292, 255
  %3297 = uitofp i32 %3296 to float
  %3298 = fmul fast float %3297, 0x3F70101020000000
  %3299 = lshr i32 %3292, 8
  %3300 = and i32 %3299, 255
  %3301 = uitofp i32 %3300 to float
  %3302 = fmul fast float %3301, 0x3F70101020000000
  %3303 = lshr i32 %3292, 16
  %3304 = and i32 %3303, 255
  %3305 = uitofp i32 %3304 to float
  %3306 = fmul fast float %3305, 0x3F70101020000000
  %3307 = add i32 %50, 268
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = lshr i32 %3309, 24
  %3311 = uitofp i32 %3310 to float
  %3312 = fmul fast float %3311, 0x3F70101020000000
  %3313 = and i32 %3309, 255
  %3314 = uitofp i32 %3313 to float
  %3315 = fmul fast float %3314, 0x3F70101020000000
  %3316 = lshr i32 %3309, 8
  %3317 = and i32 %3316, 255
  %3318 = uitofp i32 %3317 to float
  %3319 = fmul fast float %3318, 0x3F70101020000000
  %3320 = lshr i32 %3309, 16
  %3321 = and i32 %3320, 255
  %3322 = uitofp i32 %3321 to float
  %3323 = fmul fast float %3322, 0x3F70101020000000
  %3324 = bitcast float %3248 to i32
  %3325 = ashr i32 %3324, 1
  %3326 = sub nsw i32 1597463174, %3325
  %3327 = bitcast i32 %3326 to float
  %3328 = fmul fast float %3248, 5.000000e-01
  %3329 = fmul fast float %3327, %3327
  %3330 = fmul fast float %3329, %3328
  %3331 = fsub fast float 1.500000e+00, %3330
  %3332 = fmul fast float %3327, %3248
  %3333 = fmul fast float %3332, %3331
  %3334 = bitcast float %3249 to i32
  %3335 = ashr i32 %3334, 1
  %3336 = sub nsw i32 1597463174, %3335
  %3337 = bitcast i32 %3336 to float
  %3338 = fmul fast float %3249, 5.000000e-01
  %3339 = fmul fast float %3337, %3337
  %3340 = fmul fast float %3339, %3338
  %3341 = fsub fast float 1.500000e+00, %3340
  %3342 = fmul fast float %3337, %3249
  %3343 = fmul fast float %3342, %3341
  %3344 = bitcast float %3250 to i32
  %3345 = ashr i32 %3344, 1
  %3346 = sub nsw i32 1597463174, %3345
  %3347 = bitcast i32 %3346 to float
  %3348 = fmul fast float %3250, 5.000000e-01
  %3349 = fmul fast float %3347, %3347
  %3350 = fmul fast float %3349, %3348
  %3351 = fsub fast float 1.500000e+00, %3350
  %3352 = fmul fast float %3347, %3250
  %3353 = fmul fast float %3352, %3351
  %3354 = fsub fast float %3333, %3315
  %3355 = fsub fast float %3343, %3319
  %3356 = fsub fast float %3353, %3323
  %3357 = fmul fast float %3354, %3283
  %3358 = fmul fast float %3355, %3285
  %3359 = fmul fast float %3356, %3290
  %3360 = fadd fast float %3357, %3298
  %3361 = fadd fast float %3358, %3302
  %3362 = fadd fast float %3359, %3306
  %3363 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  %3364 = call float @dx.op.unary.f32(i32 7, float %3361)  ; Saturate(value)
  %3365 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3366 = fmul fast float %3363, %3363
  %3367 = fmul fast float %3364, %3364
  %3368 = fmul fast float %3365, %3365
  %3369 = fsub fast float %3366, %3248
  %3370 = fsub fast float %3367, %3249
  %3371 = fsub fast float %3368, %3250
  %3372 = fmul fast float %3369, %3273
  %3373 = fmul fast float %3370, %3273
  %3374 = fmul fast float %3371, %3273
  %3375 = fadd fast float %3372, %3248
  %3376 = fadd fast float %3373, %3249
  %3377 = fadd fast float %3374, %3250
  %3378 = fadd fast float %3295, %3259
  %3379 = fsub fast float %3378, %3312
  %3380 = call float @dx.op.unary.f32(i32 7, float %3379)  ; Saturate(value)
  %3381 = fsub fast float %3380, %3259
  %3382 = fmul fast float %3381, %3273
  %3383 = fadd fast float %3382, %3259
  br label %3437

; <label>:3384                                    ; preds = %3272
  %3385 = and i32 %3275, 134217728
  %3386 = icmp eq i32 %3385, 0
  br i1 %3386, label %3421, label %3387

; <label>:3387                                    ; preds = %3384
  %3388 = call float @dx.op.unary.f32(i32 24, float %404)  ; Sqrt(value)
  %3389 = call float @dx.op.unary.f32(i32 24, float %408)  ; Sqrt(value)
  %3390 = call float @dx.op.unary.f32(i32 24, float %412)  ; Sqrt(value)
  %3391 = fadd fast float %3388, -5.000000e-01
  %3392 = fadd fast float %3389, -5.000000e-01
  %3393 = fadd fast float %3390, -5.000000e-01
  %3394 = fmul fast float %3391, %3273
  %3395 = fmul fast float %3392, %3273
  %3396 = fmul fast float %3393, %3273
  %3397 = fadd fast float %3394, 5.000000e-01
  %3398 = fadd fast float %3395, 5.000000e-01
  %3399 = fadd fast float %3396, 5.000000e-01
  %3400 = call float @dx.op.unary.f32(i32 24, float %3248)  ; Sqrt(value)
  %3401 = call float @dx.op.unary.f32(i32 24, float %3249)  ; Sqrt(value)
  %3402 = call float @dx.op.unary.f32(i32 24, float %3250)  ; Sqrt(value)
  %3403 = fmul fast float %3397, 2.000000e+00
  %3404 = fsub fast float 1.000000e+00, %3403
  %3405 = fmul fast float %3404, %3400
  %3406 = fadd fast float %3405, %3403
  %3407 = fmul fast float %3406, %3400
  %3408 = fmul fast float %3398, 2.000000e+00
  %3409 = fsub fast float 1.000000e+00, %3408
  %3410 = fmul fast float %3409, %3401
  %3411 = fadd fast float %3410, %3408
  %3412 = fmul fast float %3411, %3401
  %3413 = fmul fast float %3399, 2.000000e+00
  %3414 = fsub fast float 1.000000e+00, %3413
  %3415 = fmul fast float %3414, %3402
  %3416 = fadd fast float %3415, %3413
  %3417 = fmul fast float %3416, %3402
  %3418 = fmul fast float %3407, %3407
  %3419 = fmul fast float %3412, %3412
  %3420 = fmul fast float %3417, %3417
  br label %3437

; <label>:3421                                    ; preds = %3384
  %3422 = fmul fast float %404, %404
  %3423 = fmul fast float %408, %408
  %3424 = fmul fast float %412, %412
  %3425 = fadd fast float %3422, -1.000000e+00
  %3426 = fadd fast float %3423, -1.000000e+00
  %3427 = fadd fast float %3424, -1.000000e+00
  %3428 = fmul fast float %3273, %3425
  %3429 = fmul fast float %3273, %3426
  %3430 = fmul fast float %3273, %3427
  %3431 = fadd fast float %3428, 1.000000e+00
  %3432 = fadd fast float %3429, 1.000000e+00
  %3433 = fadd fast float %3430, 1.000000e+00
  %3434 = fmul fast float %3431, %3248
  %3435 = fmul fast float %3432, %3249
  %3436 = fmul fast float %3433, %3250
  br label %3437

; <label>:3437                                    ; preds = %3421, %3387, %3278, %3234
  %3438 = phi float [ %3383, %3278 ], [ %3259, %3387 ], [ %3259, %3421 ], [ 0x3FA23C0BE0000000, %3234 ]
  %3439 = phi float [ %3375, %3278 ], [ %3418, %3387 ], [ %3434, %3421 ], [ 1.000000e+00, %3234 ]
  %3440 = phi float [ %3376, %3278 ], [ %3419, %3387 ], [ %3435, %3421 ], [ 1.000000e+00, %3234 ]
  %3441 = phi float [ %3377, %3278 ], [ %3420, %3387 ], [ %3436, %3421 ], [ 1.000000e+00, %3234 ]
  %3442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.i32 %3442, 1
  %3444 = and i32 %3443, 1
  %3445 = icmp ne i32 %3444, 0
  %3446 = add i32 %50, 356
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = and i32 %3448, 32
  %3450 = icmp ne i32 %3449, 0
  %3451 = and i1 %3445, %3450
  %3452 = select i1 %3451, float 1.000000e+00, float %3439
  %3453 = select i1 %3451, float 0x3FD3333340000000, float %3440
  %3454 = select i1 %3451, float 0x3FD3333340000000, float %3441
  %3455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3456 = extractvalue %dx.types.ResRet.i32 %3455, 0
  %3457 = and i32 %3456, 32
  %3458 = icmp eq i32 %3457, 0
  br i1 %3458, label %3531, label %3459

; <label>:3459                                    ; preds = %3437
  %3460 = add i32 %50, 140
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3460, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = add i32 %50, 404
  %3464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3463, i32 undef)  ; BufferLoad(srv,index,wot)
  %3465 = extractvalue %dx.types.ResRet.i32 %3464, 0
  %3466 = add i32 %3465, 0
  %3467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3467, %dx.types.Handle %105, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3469 = extractvalue %dx.types.ResRet.f32 %3468, 0
  %3470 = extractvalue %dx.types.ResRet.f32 %3468, 1
  %3471 = extractvalue %dx.types.ResRet.f32 %3468, 2
  %3472 = extractvalue %dx.types.ResRet.f32 %3468, 3
  %3473 = and i32 %3462, 255
  %3474 = uitofp i32 %3473 to float
  %3475 = lshr i32 %3462, 8
  %3476 = and i32 %3475, 255
  %3477 = uitofp i32 %3476 to float
  %3478 = lshr i32 %3462, 16
  %3479 = and i32 %3478, 255
  %3480 = uitofp i32 %3479 to float
  %3481 = fmul fast float %3480, 0x3F70101000000000
  %3482 = fmul fast float %3469, %3474
  %3483 = fadd fast float %3482, %3477
  %3484 = fmul fast float %3483, 0x3F70101000000000
  %3485 = fadd fast float %3470, -5.000000e-01
  %3486 = fadd fast float %3472, -5.000000e-01
  %3487 = fmul fast float %3485, %3481
  %3488 = fmul fast float %3486, %3481
  %3489 = fadd fast float %3487, 5.000000e-01
  %3490 = fadd fast float %3488, 5.000000e-01
  %3491 = fmul fast float %3489, 2.000000e+00
  %3492 = fadd fast float %3491, -1.000000e+00
  %3493 = fmul fast float %3490, 2.000000e+00
  %3494 = fadd fast float %3493, -1.000000e+00
  %3495 = fadd fast float %3492, %3494
  %3496 = fmul fast float %3495, 5.000000e-01
  %3497 = fsub fast float %3492, %3494
  %3498 = fmul fast float %3497, 5.000000e-01
  %3499 = call float @dx.op.unary.f32(i32 6, float %3496)  ; FAbs(value)
  %3500 = fsub fast float 1.000000e+00, %3499
  %3501 = call float @dx.op.unary.f32(i32 6, float %3498)  ; FAbs(value)
  %3502 = fsub fast float %3500, %3501
  %3503 = call float @dx.op.dot3.f32(i32 55, float %3496, float %3498, float %3502, float %3496, float %3498, float %3502)  ; Dot3(ax,ay,az,bx,by,bz)
  %3504 = call float @dx.op.unary.f32(i32 25, float %3503)  ; Rsqrt(value)
  %3505 = fmul fast float %3496, %3504
  %3506 = fmul fast float %3498, %3504
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = and i32 %3508, 67108864
  %3510 = icmp eq i32 %3509, 0
  br i1 %3510, label %3527, label %3511

; <label>:3511                                    ; preds = %3459
  %3512 = add i32 %50, 328
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = and i32 %3514, 65535
  %3516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3515)  ; LegacyF16ToF32(value)
  %3517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3069, i32 undef)  ; BufferLoad(srv,index,wot)
  %3518 = extractvalue %dx.types.ResRet.i32 %3517, 0
  %3519 = and i32 %3518, 65535
  %3520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3519)  ; LegacyF16ToF32(value)
  %3521 = lshr i32 %3514, 16
  %3522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3521)  ; LegacyF16ToF32(value)
  %3523 = fsub fast float %3484, %3522
  %3524 = fmul fast float %3523, %3516
  %3525 = fadd fast float %3524, %3520
  %3526 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  br label %3527

; <label>:3527                                    ; preds = %3511, %3459
  %3528 = phi float [ %3526, %3511 ], [ %3484, %3459 ]
  %3529 = call float @dx.op.dot2.f32(i32 54, float %3505, float %3506, float %3063, float %3064)  ; Dot2(ax,ay,bx,by)
  %3530 = call float @dx.op.dot2.f32(i32 54, float %3505, float %3506, float %3065, float %3066)  ; Dot2(ax,ay,bx,by)
  br label %3531

; <label>:3531                                    ; preds = %3527, %3437
  %3532 = phi float [ %3528, %3527 ], [ 0x3FD6666660000000, %3437 ]
  %3533 = phi float [ %3529, %3527 ], [ 0.000000e+00, %3437 ]
  %3534 = phi float [ %3530, %3527 ], [ 0.000000e+00, %3437 ]
  %3535 = phi float [ %3471, %3527 ], [ 1.000000e+00, %3437 ]
  %3536 = add i32 %50, 208
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = lshr i32 %3538, 22
  %3540 = shl nuw nsw i32 %3539, 5
  %3541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3540)  ; LegacyF16ToF32(value)
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = and i32 %3543, 64
  %3545 = icmp eq i32 %3544, 0
  br i1 %3545, label %3579, label %3546

; <label>:3546                                    ; preds = %3531
  %3547 = add i32 %50, 420
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3547, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = add i32 %3549, 0
  %3551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 131072
  %3555 = icmp eq i32 %3554, 0
  %3556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3551, %dx.types.Handle %105, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3558 = extractvalue %dx.types.ResRet.f32 %3556, 1
  %3559 = extractvalue %dx.types.ResRet.f32 %3556, 2
  %3560 = fmul fast float %3557, %392
  %3561 = fmul fast float %3558, %395
  %3562 = fmul fast float %3559, %398
  br i1 %3555, label %3569, label %3563

; <label>:3563                                    ; preds = %3546
  %3564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3565 = extractvalue %dx.types.CBufRet.f32 %3564, 0
  %3566 = fmul fast float %3565, %3560
  %3567 = fmul fast float %3565, %3561
  %3568 = fmul fast float %3565, %3562
  br label %3569

; <label>:3569                                    ; preds = %3563, %3546
  %3570 = phi float [ %3566, %3563 ], [ %3560, %3546 ]
  %3571 = phi float [ %3567, %3563 ], [ %3561, %3546 ]
  %3572 = phi float [ %3568, %3563 ], [ %3562, %3546 ]
  %3573 = fmul fast float %3570, %3541
  %3574 = select i1 %249, float %3573, float %3570
  %3575 = call float @dx.op.dot3.f32(i32 55, float %3574, float %3571, float %3572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3576 = select i1 %249, float 0.000000e+00, float %3570
  %3577 = select i1 %249, float %3575, float %3571
  %3578 = select i1 %249, float 0.000000e+00, float %3572
  br label %3579

; <label>:3579                                    ; preds = %3569, %3531
  %3580 = phi float [ %3576, %3569 ], [ 0.000000e+00, %3531 ]
  %3581 = phi float [ %3577, %3569 ], [ 0.000000e+00, %3531 ]
  %3582 = phi float [ %3578, %3569 ], [ 0.000000e+00, %3531 ]
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = and i32 %3584, 1024
  %3586 = icmp eq i32 %3585, 0
  br i1 %3586, label %3617, label %3587

; <label>:3587                                    ; preds = %3579
  %3588 = add i32 %50, 200
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = and i32 %3590, 255
  %3592 = uitofp i32 %3591 to float
  %3593 = fmul fast float %3592, 0x3F70101020000000
  %3594 = lshr i32 %3590, 8
  %3595 = and i32 %3594, 255
  %3596 = uitofp i32 %3595 to float
  %3597 = fmul fast float %3596, 0x3F70101020000000
  %3598 = lshr i32 %3590, 16
  %3599 = and i32 %3598, 255
  %3600 = uitofp i32 %3599 to float
  %3601 = fmul fast float %3600, 0x3F70101020000000
  %3602 = fmul fast float %3593, %3593
  %3603 = fmul fast float %3597, %3597
  %3604 = fmul fast float %3601, %3601
  %3605 = add i32 %50, 488
  %3606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.i32 %3606, 0
  %3608 = add i32 %3607, 0
  %3609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3609, %dx.types.Handle %106, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.ResRet.f32 %3610, 1
  %3613 = extractvalue %dx.types.ResRet.f32 %3610, 2
  %3614 = fmul fast float %3602, %3611
  %3615 = fmul fast float %3603, %3612
  %3616 = fmul fast float %3604, %3613
  br label %3617

; <label>:3617                                    ; preds = %3587, %3579
  %3618 = phi float [ %3614, %3587 ], [ 0.000000e+00, %3579 ]
  %3619 = phi float [ %3615, %3587 ], [ 0.000000e+00, %3579 ]
  %3620 = phi float [ %3616, %3587 ], [ 0.000000e+00, %3579 ]
  %3621 = fcmp fast ogt float %3618, 0.000000e+00
  %3622 = fcmp fast ogt float %3619, 0.000000e+00
  %3623 = fcmp fast ogt float %3620, 0.000000e+00
  %3624 = call float @dx.op.unary.f32(i32 23, float %3618)  ; Log(value)
  %3625 = call float @dx.op.unary.f32(i32 23, float %3619)  ; Log(value)
  %3626 = call float @dx.op.unary.f32(i32 23, float %3620)  ; Log(value)
  %3627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.i32 %3627, 0
  %3629 = lshr i32 %3628, 7
  %3630 = and i32 %3629, 32752
  %3631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3630)  ; LegacyF16ToF32(value)
  %3632 = fmul fast float %3624, 0xBFE62E4300000000
  %3633 = fmul fast float %3632, %3631
  %3634 = fmul fast float %3625, 0xBFE62E4300000000
  %3635 = fmul fast float %3634, %3631
  %3636 = fmul fast float %3626, 0xBFE62E4300000000
  %3637 = fmul fast float %3636, %3631
  %3638 = select i1 %3621, float %3633, float 1.270000e+02
  %3639 = select i1 %3622, float %3635, float 1.270000e+02
  %3640 = select i1 %3623, float %3637, float 1.270000e+02
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = and i32 %3642, 10240
  %3644 = icmp eq i32 %3643, 0
  br i1 %3644, label %3689, label %3645

; <label>:3645                                    ; preds = %3617
  %3646 = add i32 %50, 504
  %3647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.i32 %3647, 0
  %3649 = add i32 %3648, 0
  %3650 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3649, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3650, %dx.types.Handle %106, float %3159, float %3160, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3651, 3
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = and i32 %3655, 1048576
  %3657 = icmp ne i32 %3656, 0
  %3658 = and i32 %3655, 8192
  %3659 = icmp eq i32 %3658, 0
  br i1 %3659, label %3675, label %3660

; <label>:3660                                    ; preds = %3645
  %3661 = extractvalue %dx.types.ResRet.f32 %3651, 2
  %3662 = select i1 %3657, float %3661, float %3652
  %3663 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3664 = select i1 %3657, float %3663, float %3652
  %3665 = add i32 %50, 144
  %3666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3665, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.i32 %3666, 0
  %3668 = lshr i32 %3667, 16
  %3669 = and i32 %3668, 255
  %3670 = uitofp i32 %3669 to float
  %3671 = fmul fast float %3670, 0x3F80101020000000
  %3672 = fmul fast float %3671, %3664
  %3673 = fmul fast float %3671, %3652
  %3674 = fmul fast float %3671, %3662
  br label %3675

; <label>:3675                                    ; preds = %3660, %3645
  %3676 = phi float [ %3672, %3660 ], [ 0.000000e+00, %3645 ]
  %3677 = phi float [ %3673, %3660 ], [ 0.000000e+00, %3645 ]
  %3678 = phi float [ %3674, %3660 ], [ 0.000000e+00, %3645 ]
  %3679 = and i32 %3655, 2048
  %3680 = icmp eq i32 %3679, 0
  br i1 %3680, label %3689, label %3681

; <label>:3681                                    ; preds = %3675
  %3682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.i32 %3682, 0
  %3684 = shl i32 %3683, 4
  %3685 = and i32 %3684, 32752
  %3686 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3685)  ; LegacyF16ToF32(value)
  %3687 = fmul fast float %3686, %3653
  %3688 = call float @dx.op.binary.f32(i32 35, float %3687, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3689

; <label>:3689                                    ; preds = %3681, %3675, %3617
  %3690 = phi float [ %3676, %3681 ], [ %3676, %3675 ], [ 0.000000e+00, %3617 ]
  %3691 = phi float [ %3677, %3681 ], [ %3677, %3675 ], [ 0.000000e+00, %3617 ]
  %3692 = phi float [ %3678, %3681 ], [ %3678, %3675 ], [ 0.000000e+00, %3617 ]
  %3693 = phi float [ %3688, %3681 ], [ 0x3F70101020000000, %3675 ], [ 0x3F70101020000000, %3617 ]
  %3694 = add i32 %50, 144
  %3695 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.i32 %3695, 0
  %3697 = and i32 %3696, 255
  %3698 = uitofp i32 %3697 to float
  %3699 = lshr i32 %3696, 8
  %3700 = and i32 %3699, 255
  %3701 = uitofp i32 %3700 to float
  %3702 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3453, float %3454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3703 = fmul fast float %3701, %3702
  %3704 = fadd fast float %3703, %3698
  %3705 = fmul fast float %3704, 0x3F70101020000000
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  br i1 %3051, label %3707, label %3742

; <label>:3707                                    ; preds = %3689
  %3708 = fmul fast float %3693, 2.000000e+00
  %3709 = fcmp fast olt float %3638, 1.270000e+02
  %3710 = fcmp fast olt float %3639, 1.270000e+02
  %3711 = fcmp fast olt float %3640, 1.270000e+02
  %3712 = fmul fast float %3638, 0xBFF7154760000000
  %3713 = fmul fast float %3712, %3708
  %3714 = fmul fast float %3639, 0xBFF7154760000000
  %3715 = fmul fast float %3714, %3708
  %3716 = fmul fast float %3640, 0xBFF7154760000000
  %3717 = fmul fast float %3716, %3708
  %3718 = call float @dx.op.unary.f32(i32 21, float %3713)  ; Exp(value)
  %3719 = call float @dx.op.unary.f32(i32 21, float %3715)  ; Exp(value)
  %3720 = call float @dx.op.unary.f32(i32 21, float %3717)  ; Exp(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3723 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3724 = fadd fast float %3721, -1.000000e+00
  %3725 = select i1 %3709, float %3724, float -1.000000e+00
  %3726 = fadd fast float %3722, -1.000000e+00
  %3727 = select i1 %3710, float %3726, float -1.000000e+00
  %3728 = fadd fast float %3723, -1.000000e+00
  %3729 = select i1 %3711, float %3728, float -1.000000e+00
  %3730 = fmul fast float %3725, %3232
  %3731 = fmul fast float %3727, %3232
  %3732 = fmul fast float %3729, %3232
  %3733 = fadd fast float %3730, 1.000000e+00
  %3734 = fadd fast float %3731, 1.000000e+00
  %3735 = fadd fast float %3732, 1.000000e+00
  %3736 = fmul fast float %3733, %3033
  %3737 = fmul fast float %3734, %3034
  %3738 = fmul fast float %3735, %3035
  %3739 = fmul fast float %3733, %3042
  %3740 = fmul fast float %3734, %3043
  %3741 = fmul fast float %3735, %3044
  br label %3742

; <label>:3742                                    ; preds = %3707, %3689
  %3743 = phi float [ %3736, %3707 ], [ %3033, %3689 ]
  %3744 = phi float [ %3737, %3707 ], [ %3034, %3689 ]
  %3745 = phi float [ %3738, %3707 ], [ %3035, %3689 ]
  %3746 = phi float [ %3739, %3707 ], [ %3042, %3689 ]
  %3747 = phi float [ %3740, %3707 ], [ %3043, %3689 ]
  %3748 = phi float [ %3741, %3707 ], [ %3044, %3689 ]
  %3749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.i32 %3749, 0
  %3751 = and i32 %3750, 3
  %3752 = icmp eq i32 %3751, 3
  br i1 %3752, label %3831, label %3753

; <label>:3753                                    ; preds = %3742
  %3754 = and i32 %3750, 16
  %3755 = icmp ne i32 %3754, 0
  %3756 = select i1 %3755, float %3232, float 0.000000e+00
  %3757 = icmp eq i32 %3751, 0
  br i1 %3757, label %3758, label %3786

; <label>:3758                                    ; preds = %3753
  %3759 = and i32 %3750, 64
  %3760 = icmp ne i32 %3759, 0
  %3761 = select i1 %3760, float %3232, float 0.000000e+00
  %3762 = fsub fast float %3452, %3743
  %3763 = fsub fast float %3453, %3744
  %3764 = fsub fast float %3454, %3745
  %3765 = fmul fast float %3756, %3762
  %3766 = fmul fast float %3756, %3763
  %3767 = fmul fast float %3756, %3764
  %3768 = fadd fast float %3765, %3743
  %3769 = fadd fast float %3766, %3744
  %3770 = fadd fast float %3767, %3745
  %3771 = fsub fast float %3438, %3045
  %3772 = fmul fast float %3756, %3771
  %3773 = fadd fast float %3772, %3045
  %3774 = fsub fast float %3580, %3746
  %3775 = fsub fast float %3581, %3747
  %3776 = fsub fast float %3582, %3748
  %3777 = fmul fast float %3761, %3774
  %3778 = fmul fast float %3761, %3775
  %3779 = fmul fast float %3761, %3776
  %3780 = fadd fast float %3777, %3746
  %3781 = fadd fast float %3778, %3747
  %3782 = fadd fast float %3779, %3748
  %3783 = fsub fast float %3706, %3049
  %3784 = fmul fast float %3756, %3783
  %3785 = fadd fast float %3784, %3049
  br label %3831

; <label>:3786                                    ; preds = %3753
  %3787 = icmp eq i32 %3751, 1
  br i1 %3787, label %3788, label %3801

; <label>:3788                                    ; preds = %3786
  %3789 = fadd fast float %3452, -1.000000e+00
  %3790 = fadd fast float %3453, -1.000000e+00
  %3791 = fadd fast float %3454, -1.000000e+00
  %3792 = fmul fast float %3756, %3789
  %3793 = fmul fast float %3756, %3790
  %3794 = fmul fast float %3756, %3791
  %3795 = fadd fast float %3792, 1.000000e+00
  %3796 = fadd fast float %3793, 1.000000e+00
  %3797 = fadd fast float %3794, 1.000000e+00
  %3798 = fmul fast float %3795, %3743
  %3799 = fmul fast float %3796, %3744
  %3800 = fmul fast float %3797, %3745
  br label %3831

; <label>:3801                                    ; preds = %3786
  %3802 = icmp eq i32 %3751, 2
  br i1 %3802, label %3803, label %3831

; <label>:3803                                    ; preds = %3801
  %3804 = call float @dx.op.unary.f32(i32 24, float %3452)  ; Sqrt(value)
  %3805 = call float @dx.op.unary.f32(i32 24, float %3453)  ; Sqrt(value)
  %3806 = call float @dx.op.unary.f32(i32 24, float %3454)  ; Sqrt(value)
  %3807 = fadd fast float %3804, -5.000000e-01
  %3808 = fadd fast float %3805, -5.000000e-01
  %3809 = fadd fast float %3806, -5.000000e-01
  %3810 = fmul fast float %3807, %3756
  %3811 = fmul fast float %3808, %3756
  %3812 = fmul fast float %3809, %3756
  %3813 = fadd fast float %3810, 5.000000e-01
  %3814 = fadd fast float %3811, 5.000000e-01
  %3815 = fadd fast float %3812, 5.000000e-01
  %3816 = fmul fast float %3813, 2.000000e+00
  %3817 = fsub fast float 1.000000e+00, %3816
  %3818 = fmul fast float %3817, %3743
  %3819 = fadd fast float %3818, %3816
  %3820 = fmul fast float %3819, %3743
  %3821 = fmul fast float %3814, 2.000000e+00
  %3822 = fsub fast float 1.000000e+00, %3821
  %3823 = fmul fast float %3822, %3744
  %3824 = fadd fast float %3823, %3821
  %3825 = fmul fast float %3824, %3744
  %3826 = fmul fast float %3815, 2.000000e+00
  %3827 = fsub fast float 1.000000e+00, %3826
  %3828 = fmul fast float %3827, %3745
  %3829 = fadd fast float %3828, %3826
  %3830 = fmul fast float %3829, %3745
  br label %3831

; <label>:3831                                    ; preds = %3803, %3801, %3788, %3758, %3742
  %3832 = phi float [ %3743, %3742 ], [ %3820, %3803 ], [ %3743, %3801 ], [ %3798, %3788 ], [ %3768, %3758 ]
  %3833 = phi float [ %3744, %3742 ], [ %3825, %3803 ], [ %3744, %3801 ], [ %3799, %3788 ], [ %3769, %3758 ]
  %3834 = phi float [ %3745, %3742 ], [ %3830, %3803 ], [ %3745, %3801 ], [ %3800, %3788 ], [ %3770, %3758 ]
  %3835 = phi float [ %3746, %3742 ], [ %3746, %3803 ], [ %3746, %3801 ], [ %3746, %3788 ], [ %3780, %3758 ]
  %3836 = phi float [ %3747, %3742 ], [ %3747, %3803 ], [ %3747, %3801 ], [ %3747, %3788 ], [ %3781, %3758 ]
  %3837 = phi float [ %3748, %3742 ], [ %3748, %3803 ], [ %3748, %3801 ], [ %3748, %3788 ], [ %3782, %3758 ]
  %3838 = phi float [ %3045, %3742 ], [ %3045, %3803 ], [ %3045, %3801 ], [ %3045, %3788 ], [ %3773, %3758 ]
  %3839 = phi float [ %3049, %3742 ], [ %3049, %3803 ], [ %3049, %3801 ], [ %3049, %3788 ], [ %3785, %3758 ]
  %3840 = and i32 %3750, 12
  %3841 = icmp eq i32 %3840, 12
  br i1 %3841, label %3972, label %3842

; <label>:3842                                    ; preds = %3831
  %3843 = and i32 %3750, 2097184
  %3844 = icmp eq i32 %3843, 2097184
  %3845 = select i1 %3844, float %3232, float 0.000000e+00
  %3846 = and i32 %3750, 4194336
  %3847 = icmp eq i32 %3846, 4194336
  %3848 = select i1 %3847, float %3232, float 0.000000e+00
  %3849 = and i32 %3750, 8388640
  %3850 = icmp eq i32 %3849, 8388640
  %3851 = select i1 %3850, float %3232, float 0.000000e+00
  %3852 = and i32 %3750, 1024
  %3853 = icmp ne i32 %3852, 0
  %3854 = select i1 %3853, float %3232, float 0.000000e+00
  %3855 = and i32 %3750, 2048
  %3856 = icmp ne i32 %3855, 0
  %3857 = select i1 %3856, float %3232, float 0.000000e+00
  %3858 = and i32 %3750, 8192
  %3859 = icmp ne i32 %3858, 0
  %3860 = select i1 %3859, float %3232, float 0.000000e+00
  %3861 = icmp eq i32 %3840, 0
  br i1 %3861, label %3862, label %3896

; <label>:3862                                    ; preds = %3842
  %3863 = fsub fast float %3533, %3031
  %3864 = fsub fast float %3534, %3032
  %3865 = fmul fast float %3845, %3863
  %3866 = fmul fast float %3845, %3864
  %3867 = fadd fast float %3865, %3031
  %3868 = fadd fast float %3866, %3032
  %3869 = fsub fast float %3535, %3047
  %3870 = fmul fast float %3848, %3869
  %3871 = fadd fast float %3870, %3047
  %3872 = fsub fast float %3532, %3046
  %3873 = fmul fast float %3851, %3872
  %3874 = fadd fast float %3873, %3046
  %3875 = fsub fast float %3638, %3039
  %3876 = fsub fast float %3639, %3040
  %3877 = fsub fast float %3640, %3041
  %3878 = fmul fast float %3854, %3875
  %3879 = fmul fast float %3854, %3876
  %3880 = fmul fast float %3854, %3877
  %3881 = fadd fast float %3878, %3039
  %3882 = fadd fast float %3879, %3040
  %3883 = fadd fast float %3880, %3041
  %3884 = fsub fast float %3693, %3048
  %3885 = fmul fast float %3857, %3884
  %3886 = fadd fast float %3885, %3048
  %3887 = fsub fast float %3690, %3036
  %3888 = fsub fast float %3691, %3037
  %3889 = fsub fast float %3692, %3038
  %3890 = fmul fast float %3860, %3887
  %3891 = fmul fast float %3860, %3888
  %3892 = fmul fast float %3860, %3889
  %3893 = fadd fast float %3890, %3036
  %3894 = fadd fast float %3891, %3037
  %3895 = fadd fast float %3892, %3038
  br label %3972

; <label>:3896                                    ; preds = %3842
  %3897 = icmp eq i32 %3840, 4
  br i1 %3897, label %3898, label %3944

; <label>:3898                                    ; preds = %3896
  %3899 = fmul fast float %3845, %3533
  %3900 = fmul fast float %3845, %3534
  %3901 = fadd fast float %3899, %3031
  %3902 = fadd fast float %3900, %3032
  %3903 = call float @dx.op.binary.f32(i32 36, float %3047, float %3535)  ; FMin(a,b)
  %3904 = fsub fast float %3903, %3047
  %3905 = fmul fast float %3904, %3848
  %3906 = fadd fast float %3905, %3047
  %3907 = fadd fast float %3532, %3046
  %3908 = fmul fast float %3907, 0x3FF337FAE0000000
  %3909 = fmul fast float %3046, %3046
  %3910 = fmul fast float %3532, %3532
  %3911 = fadd fast float %3910, %3909
  %3912 = fmul fast float %3911, 0x3FE5152B00000000
  %3913 = fmul fast float %3046, 0xBFCC1F85E0000000
  %3914 = fmul fast float %3913, %3532
  %3915 = fadd fast float %3914, 0xBFE1363700000000
  %3916 = fadd fast float %3915, %3908
  %3917 = fsub fast float %3916, %3912
  %3918 = fmul fast float %3907, 0x3FBA6F0D00000000
  %3919 = fmul fast float %3911, 0x3FD0432880000000
  %3920 = fmul fast float %3046, 0xBFEF110800000000
  %3921 = fmul fast float %3920, %3532
  %3922 = fadd fast float %3921, 1.000000e+00
  %3923 = fsub fast float %3922, %3918
  %3924 = fadd fast float %3923, %3919
  %3925 = fdiv fast float %3917, %3924
  %3926 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3927 = fsub fast float %3926, %3046
  %3928 = fmul fast float %3927, %3851
  %3929 = fadd fast float %3928, %3046
  %3930 = fmul fast float %3854, %3638
  %3931 = fmul fast float %3854, %3639
  %3932 = fmul fast float %3854, %3640
  %3933 = fadd fast float %3930, %3039
  %3934 = fadd fast float %3931, %3040
  %3935 = fadd fast float %3932, %3041
  %3936 = fmul fast float %3857, %3693
  %3937 = fadd fast float %3936, %3048
  %3938 = fmul fast float %3860, %3690
  %3939 = fmul fast float %3860, %3691
  %3940 = fmul fast float %3860, %3692
  %3941 = fadd fast float %3938, %3036
  %3942 = fadd fast float %3939, %3037
  %3943 = fadd fast float %3940, %3038
  br label %3972

; <label>:3944                                    ; preds = %3896
  %3945 = icmp eq i32 %3840, 8
  br i1 %3945, label %3946, label %3972

; <label>:3946                                    ; preds = %3944
  %3947 = fmul fast float %3845, %3533
  %3948 = fmul fast float %3845, %3534
  %3949 = fadd fast float %3947, %3031
  %3950 = fadd fast float %3948, %3032
  %3951 = call float @dx.op.binary.f32(i32 36, float %3047, float %3535)  ; FMin(a,b)
  %3952 = fsub fast float %3951, %3047
  %3953 = fmul fast float %3952, %3848
  %3954 = fadd fast float %3953, %3047
  %3955 = fsub fast float %3532, %3046
  %3956 = fmul fast float %3851, %3955
  %3957 = fadd fast float %3956, %3046
  %3958 = fmul fast float %3854, %3638
  %3959 = fmul fast float %3854, %3639
  %3960 = fmul fast float %3854, %3640
  %3961 = fadd fast float %3958, %3039
  %3962 = fadd fast float %3959, %3040
  %3963 = fadd fast float %3960, %3041
  %3964 = fmul fast float %3857, %3693
  %3965 = fadd fast float %3964, %3048
  %3966 = fmul fast float %3860, %3690
  %3967 = fmul fast float %3860, %3691
  %3968 = fmul fast float %3860, %3692
  %3969 = fadd fast float %3966, %3036
  %3970 = fadd fast float %3967, %3037
  %3971 = fadd fast float %3968, %3038
  br label %3972

; <label>:3972                                    ; preds = %3946, %3944, %3898, %3862, %3831, %3231, %3050, %3030
  %3973 = phi float [ %3031, %3831 ], [ %3031, %3231 ], [ %3031, %3030 ], [ %3031, %3050 ], [ %3867, %3862 ], [ %3901, %3898 ], [ %3031, %3944 ], [ %3949, %3946 ]
  %3974 = phi float [ %3032, %3831 ], [ %3032, %3231 ], [ %3032, %3030 ], [ %3032, %3050 ], [ %3868, %3862 ], [ %3902, %3898 ], [ %3032, %3944 ], [ %3950, %3946 ]
  %3975 = phi float [ %3832, %3831 ], [ %3033, %3231 ], [ %3033, %3030 ], [ %3033, %3050 ], [ %3832, %3862 ], [ %3832, %3898 ], [ %3832, %3944 ], [ %3832, %3946 ]
  %3976 = phi float [ %3833, %3831 ], [ %3034, %3231 ], [ %3034, %3030 ], [ %3034, %3050 ], [ %3833, %3862 ], [ %3833, %3898 ], [ %3833, %3944 ], [ %3833, %3946 ]
  %3977 = phi float [ %3834, %3831 ], [ %3035, %3231 ], [ %3035, %3030 ], [ %3035, %3050 ], [ %3834, %3862 ], [ %3834, %3898 ], [ %3834, %3944 ], [ %3834, %3946 ]
  %3978 = phi float [ %3036, %3831 ], [ %3036, %3231 ], [ %3036, %3030 ], [ %3036, %3050 ], [ %3893, %3862 ], [ %3941, %3898 ], [ %3036, %3944 ], [ %3969, %3946 ]
  %3979 = phi float [ %3037, %3831 ], [ %3037, %3231 ], [ %3037, %3030 ], [ %3037, %3050 ], [ %3894, %3862 ], [ %3942, %3898 ], [ %3037, %3944 ], [ %3970, %3946 ]
  %3980 = phi float [ %3038, %3831 ], [ %3038, %3231 ], [ %3038, %3030 ], [ %3038, %3050 ], [ %3895, %3862 ], [ %3943, %3898 ], [ %3038, %3944 ], [ %3971, %3946 ]
  %3981 = phi float [ %3039, %3831 ], [ %3039, %3231 ], [ %3039, %3030 ], [ %3039, %3050 ], [ %3881, %3862 ], [ %3933, %3898 ], [ %3039, %3944 ], [ %3961, %3946 ]
  %3982 = phi float [ %3040, %3831 ], [ %3040, %3231 ], [ %3040, %3030 ], [ %3040, %3050 ], [ %3882, %3862 ], [ %3934, %3898 ], [ %3040, %3944 ], [ %3962, %3946 ]
  %3983 = phi float [ %3041, %3831 ], [ %3041, %3231 ], [ %3041, %3030 ], [ %3041, %3050 ], [ %3883, %3862 ], [ %3935, %3898 ], [ %3041, %3944 ], [ %3963, %3946 ]
  %3984 = phi float [ %3835, %3831 ], [ %3042, %3231 ], [ %3042, %3030 ], [ %3042, %3050 ], [ %3835, %3862 ], [ %3835, %3898 ], [ %3835, %3944 ], [ %3835, %3946 ]
  %3985 = phi float [ %3836, %3831 ], [ %3043, %3231 ], [ %3043, %3030 ], [ %3043, %3050 ], [ %3836, %3862 ], [ %3836, %3898 ], [ %3836, %3944 ], [ %3836, %3946 ]
  %3986 = phi float [ %3837, %3831 ], [ %3044, %3231 ], [ %3044, %3030 ], [ %3044, %3050 ], [ %3837, %3862 ], [ %3837, %3898 ], [ %3837, %3944 ], [ %3837, %3946 ]
  %3987 = phi float [ %3838, %3831 ], [ %3045, %3231 ], [ %3045, %3030 ], [ %3045, %3050 ], [ %3838, %3862 ], [ %3838, %3898 ], [ %3838, %3944 ], [ %3838, %3946 ]
  %3988 = phi float [ %3046, %3831 ], [ %3046, %3231 ], [ %3046, %3030 ], [ %3046, %3050 ], [ %3874, %3862 ], [ %3929, %3898 ], [ %3046, %3944 ], [ %3957, %3946 ]
  %3989 = phi float [ %3047, %3831 ], [ %3047, %3231 ], [ %3047, %3030 ], [ %3047, %3050 ], [ %3871, %3862 ], [ %3906, %3898 ], [ %3047, %3944 ], [ %3954, %3946 ]
  %3990 = phi float [ %3048, %3831 ], [ %3048, %3231 ], [ %3048, %3030 ], [ %3048, %3050 ], [ %3886, %3862 ], [ %3937, %3898 ], [ %3048, %3944 ], [ %3965, %3946 ]
  %3991 = phi float [ %3839, %3831 ], [ %3049, %3231 ], [ %3049, %3030 ], [ %3049, %3050 ], [ %3839, %3862 ], [ %3839, %3898 ], [ %3839, %3944 ], [ %3839, %3946 ]
  %3992 = add i32 %50, 360
  %3993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %3992, i32 undef)  ; BufferLoad(srv,index,wot)
  %3994 = extractvalue %dx.types.ResRet.i32 %3993, 0
  %3995 = extractvalue %dx.types.ResRet.i32 %3993, 1
  %3996 = bitcast i32 %3994 to float
  %3997 = bitcast i32 %3995 to float
  %3998 = fcmp fast oge float %3996, 0.000000e+00
  %3999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4000 = extractvalue %dx.types.CBufRet.f32 %3999, 0
  %4001 = select i1 %3998, float %3996, float %4000
  %4002 = add i32 %50, 456
  %4003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4002, i32 undef)  ; BufferLoad(srv,index,wot)
  %4004 = extractvalue %dx.types.ResRet.i32 %4003, 0
  %4005 = add i32 %4004, 0
  %4006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4006, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = fmul fast float %4008, %3997
  %4010 = fadd fast float %4009, %4001
  %4011 = call float @dx.op.dot2.f32(i32 54, float %3973, float %3974, float %3973, float %3974)  ; Dot2(ax,ay,bx,by)
  %4012 = fmul fast float %4011, 0x3FE3333340000000
  %4013 = fsub fast float 1.000000e+00, %4012
  %4014 = call float @dx.op.dot3.f32(i32 55, float %3973, float %3974, float %4013, float %3973, float %3974, float %4013)  ; Dot3(ax,ay,az,bx,by,bz)
  %4015 = call float @dx.op.unary.f32(i32 25, float %4014)  ; Rsqrt(value)
  %4016 = fmul fast float %4015, %3973
  %4017 = fmul fast float %4015, %3974
  %4018 = fmul fast float %4013, %4015
  %4019 = fmul fast float %4018, %116
  %4020 = fmul fast float %4018, %117
  %4021 = fmul fast float %4018, %118
  %4022 = fmul fast float %4016, %80
  %4023 = fmul fast float %4016, %81
  %4024 = fmul fast float %4016, %82
  %4025 = fadd fast float %4019, %4022
  %4026 = fadd fast float %4020, %4023
  %4027 = fadd fast float %4021, %4024
  %4028 = fmul fast float %128, %4017
  %4029 = fmul fast float %129, %4017
  %4030 = fmul fast float %130, %4017
  %4031 = fadd fast float %4025, %4028
  %4032 = fadd fast float %4026, %4029
  %4033 = fadd fast float %4027, %4030
  %4034 = call float @dx.op.dot3.f32(i32 55, float %4031, float %4032, float %4033, float %4031, float %4032, float %4033)  ; Dot3(ax,ay,az,bx,by,bz)
  %4035 = call float @dx.op.unary.f32(i32 25, float %4034)  ; Rsqrt(value)
  %4036 = fmul fast float %4031, %4035
  %4037 = fmul fast float %4032, %4035
  %4038 = fmul fast float %4033, %4035
  %4039 = icmp eq i32 %51, 65535
  br i1 %4039, label %4638, label %4040

; <label>:4040                                    ; preds = %3972
  %4041 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4042 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %4043 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4044 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4045 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %4046 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4047 = fadd fast float %4041, %52
  %4048 = fadd fast float %4042, %53
  %4049 = fadd fast float %4043, %54
  %4050 = fadd fast float %4044, %52
  %4051 = fadd fast float %4045, %53
  %4052 = fadd fast float %4046, %54
  %4053 = mul i32 %51, 48
  %4054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.ResRet.f32 %4054, 1
  %4057 = extractvalue %dx.types.ResRet.f32 %4054, 2
  %4058 = add i32 %4053, 16
  %4059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4058, i32 undef)  ; BufferLoad(srv,index,wot)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.ResRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.ResRet.f32 %4059, 2
  %4063 = add i32 %4053, 32
  %4064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4063, i32 undef)  ; BufferLoad(srv,index,wot)
  %4065 = extractvalue %dx.types.ResRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.ResRet.f32 %4064, 1
  %4067 = extractvalue %dx.types.ResRet.f32 %4064, 2
  %4068 = extractvalue %dx.types.ResRet.f32 %4064, 3
  %4069 = bitcast float %4068 to i32
  %4070 = fmul fast float %4055, %52
  %4071 = fmul fast float %4056, %53
  %4072 = fmul fast float %4057, %54
  %4073 = fsub fast float %4070, %4060
  %4074 = fsub fast float %4071, %4061
  %4075 = fsub fast float %4072, %4062
  %4076 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4077 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4078 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4079 = fmul fast float %4076, %4065
  %4080 = fmul fast float %4077, %4066
  %4081 = fmul fast float %4078, %4067
  %4082 = fadd fast float %4065, -1.000000e+00
  %4083 = fadd fast float %4066, -1.000000e+00
  %4084 = fadd fast float %4067, -1.000000e+00
  %4085 = call float @dx.op.unary.f32(i32 27, float %4079)  ; Round_ni(value)
  %4086 = call float @dx.op.unary.f32(i32 27, float %4080)  ; Round_ni(value)
  %4087 = call float @dx.op.unary.f32(i32 27, float %4081)  ; Round_ni(value)
  %4088 = call float @dx.op.binary.f32(i32 36, float %4085, float %4082)  ; FMin(a,b)
  %4089 = call float @dx.op.binary.f32(i32 36, float %4086, float %4083)  ; FMin(a,b)
  %4090 = call float @dx.op.binary.f32(i32 36, float %4087, float %4084)  ; FMin(a,b)
  %4091 = fmul fast float %4090, %4066
  %4092 = fadd fast float %4091, %4089
  %4093 = fmul fast float %4092, %4065
  %4094 = fadd fast float %4093, %4088
  %4095 = fptosi float %4094 to i32
  %4096 = add nsw i32 %4095, %4069
  %4097 = shl nsw i32 %4096, 2
  %4098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.i32 %4098, 0
  %4100 = lshr i32 %4099, 16
  %4101 = icmp eq i32 %4100, 0
  br i1 %4101, label %4601, label %4102

; <label>:4102                                    ; preds = %4040
  br label %4103

; <label>:4103                                    ; preds = %4230, %4102
  %4104 = phi i32 [ %4132, %4230 ], [ %4100, %4102 ]
  %4105 = phi float [ %4231, %4230 ], [ 0.000000e+00, %4102 ]
  %4106 = phi float [ %4232, %4230 ], [ %4010, %4102 ]
  %4107 = phi float [ %4233, %4230 ], [ %3991, %4102 ]
  %4108 = phi float [ %4234, %4230 ], [ %3981, %4102 ]
  %4109 = phi float [ %4235, %4230 ], [ %3982, %4102 ]
  %4110 = phi float [ %4236, %4230 ], [ %3983, %4102 ]
  %4111 = phi float [ %4237, %4230 ], [ 0.000000e+00, %4102 ]
  %4112 = phi float [ %4238, %4230 ], [ 0.000000e+00, %4102 ]
  %4113 = phi float [ %4239, %4230 ], [ %3978, %4102 ]
  %4114 = phi float [ %4240, %4230 ], [ %3979, %4102 ]
  %4115 = phi float [ %4241, %4230 ], [ %3980, %4102 ]
  %4116 = phi float [ %4242, %4230 ], [ %3984, %4102 ]
  %4117 = phi float [ %4243, %4230 ], [ %3985, %4102 ]
  %4118 = phi float [ %4244, %4230 ], [ %3986, %4102 ]
  %4119 = phi float [ %4245, %4230 ], [ %4036, %4102 ]
  %4120 = phi float [ %4246, %4230 ], [ %4037, %4102 ]
  %4121 = phi float [ %4247, %4230 ], [ %4038, %4102 ]
  %4122 = phi float [ %4248, %4230 ], [ %3989, %4102 ]
  %4123 = phi float [ %4249, %4230 ], [ %3988, %4102 ]
  %4124 = phi float [ %4250, %4230 ], [ 0.000000e+00, %4102 ]
  %4125 = phi float [ %4251, %4230 ], [ %3987, %4102 ]
  %4126 = phi float [ %4252, %4230 ], [ %3975, %4102 ]
  %4127 = phi float [ %4253, %4230 ], [ %3976, %4102 ]
  %4128 = phi float [ %4254, %4230 ], [ %3977, %4102 ]
  %4129 = shl nuw nsw i32 %4104, 2
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = lshr i32 %4131, 16
  %4133 = shl i32 %4131, 8
  %4134 = and i32 %4133, 16776960
  %4135 = or i32 %4134, 48
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.ResRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.ResRet.f32 %4136, 2
  %4140 = or i32 %4134, 64
  %4141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.i32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.i32 %4141, 1
  %4144 = or i32 %4134, 80
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 3
  %4148 = or i32 %4134, 96
  %4149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4148, i32 undef)  ; BufferLoad(srv,index,wot)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4153 = extractvalue %dx.types.ResRet.f32 %4149, 3
  %4154 = or i32 %4134, 112
  %4155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4154, i32 undef)  ; BufferLoad(srv,index,wot)
  %4156 = extractvalue %dx.types.ResRet.f32 %4155, 2
  %4157 = or i32 %4134, 128
  %4158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4157, i32 undef)  ; BufferLoad(srv,index,wot)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = extractvalue %dx.types.ResRet.f32 %4158, 1
  %4161 = extractvalue %dx.types.ResRet.f32 %4158, 2
  %4162 = extractvalue %dx.types.ResRet.f32 %4158, 3
  %4163 = or i32 %4134, 144
  %4164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.ResRet.f32 %4164, 1
  %4167 = extractvalue %dx.types.ResRet.f32 %4164, 2
  %4168 = extractvalue %dx.types.ResRet.f32 %4164, 3
  %4169 = or i32 %4134, 160
  %4170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.ResRet.f32 %4170, 1
  %4173 = extractvalue %dx.types.ResRet.f32 %4170, 2
  %4174 = extractvalue %dx.types.ResRet.f32 %4170, 3
  %4175 = or i32 %4134, 192
  %4176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.i32 %4176, 0
  %4178 = or i32 %4134, 208
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = or i32 %4134, 248
  %4182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4134, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.ResRet.f32 %4185, 2
  %4189 = extractvalue %dx.types.ResRet.f32 %4185, 3
  %4190 = call float @dx.op.dot4.f32(i32 56, float %4186, float %4187, float %4188, float %4189, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4191 = or i32 %4134, 16
  %4192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.ResRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.ResRet.f32 %4192, 2
  %4196 = extractvalue %dx.types.ResRet.f32 %4192, 3
  %4197 = call float @dx.op.dot4.f32(i32 56, float %4193, float %4194, float %4195, float %4196, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4198 = or i32 %4134, 32
  %4199 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.f32 %4199, 0
  %4201 = extractvalue %dx.types.ResRet.f32 %4199, 1
  %4202 = extractvalue %dx.types.ResRet.f32 %4199, 2
  %4203 = extractvalue %dx.types.ResRet.f32 %4199, 3
  %4204 = call float @dx.op.dot4.f32(i32 56, float %4200, float %4201, float %4202, float %4203, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4205 = call float @dx.op.unary.f32(i32 27, float %4190)  ; Round_ni(value)
  %4206 = call float @dx.op.unary.f32(i32 6, float %4205)  ; FAbs(value)
  %4207 = call float @dx.op.unary.f32(i32 27, float %4197)  ; Round_ni(value)
  %4208 = call float @dx.op.unary.f32(i32 6, float %4207)  ; FAbs(value)
  %4209 = call float @dx.op.unary.f32(i32 6, float %4204)  ; FAbs(value)
  %4210 = call float @dx.op.unary.f32(i32 27, float %4209)  ; Round_ni(value)
  %4211 = fadd fast float %4208, %4206
  %4212 = fadd fast float %4211, %4210
  %4213 = fcmp fast oeq float %4212, 0.000000e+00
  %4214 = call float @dx.op.dot4.f32(i32 56, float %4186, float %4187, float %4188, float %4189, float %4047, float %4048, float %4049, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4215 = call float @dx.op.dot4.f32(i32 56, float %4193, float %4194, float %4195, float %4196, float %4047, float %4048, float %4049, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4216 = call float @dx.op.dot4.f32(i32 56, float %4186, float %4187, float %4188, float %4189, float %4050, float %4051, float %4052, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4217 = call float @dx.op.dot4.f32(i32 56, float %4193, float %4194, float %4195, float %4196, float %4050, float %4051, float %4052, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4218 = fsub fast float %4214, %4190
  %4219 = fsub fast float %4216, %4190
  %4220 = fsub fast float %4215, %4197
  %4221 = fsub fast float %4217, %4197
  %4222 = call float @dx.op.dot3.f32(i32 55, float %4137, float %4138, float %4139, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 2
  %4225 = fadd fast float %4224, %4222
  %4226 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4223, 0
  %4228 = fcmp fast ogt float %4226, %4227
  %4229 = and i1 %4213, %4228
  br i1 %4229, label %4256, label %4230

; <label>:4230                                    ; preds = %4587, %4339, %4256, %4103
  %4231 = phi float [ %4105, %4256 ], [ %4342, %4339 ], [ %4342, %4587 ], [ %4105, %4103 ]
  %4232 = phi float [ %4106, %4256 ], [ %4106, %4339 ], [ %4563, %4587 ], [ %4106, %4103 ]
  %4233 = phi float [ %4107, %4256 ], [ %4107, %4339 ], [ %4561, %4587 ], [ %4107, %4103 ]
  %4234 = phi float [ %4108, %4256 ], [ %4108, %4339 ], [ %4539, %4587 ], [ %4108, %4103 ]
  %4235 = phi float [ %4109, %4256 ], [ %4109, %4339 ], [ %4540, %4587 ], [ %4109, %4103 ]
  %4236 = phi float [ %4110, %4256 ], [ %4110, %4339 ], [ %4541, %4587 ], [ %4110, %4103 ]
  %4237 = phi float [ %4111, %4256 ], [ %4111, %4339 ], [ %4466, %4587 ], [ %4111, %4103 ]
  %4238 = phi float [ %4112, %4256 ], [ %4112, %4339 ], [ %4464, %4587 ], [ %4112, %4103 ]
  %4239 = phi float [ %4113, %4256 ], [ %4113, %4339 ], [ %4509, %4587 ], [ %4113, %4103 ]
  %4240 = phi float [ %4114, %4256 ], [ %4114, %4339 ], [ %4510, %4587 ], [ %4114, %4103 ]
  %4241 = phi float [ %4115, %4256 ], [ %4115, %4339 ], [ %4511, %4587 ], [ %4115, %4103 ]
  %4242 = phi float [ %4116, %4256 ], [ %4116, %4339 ], [ %4597, %4587 ], [ %4116, %4103 ]
  %4243 = phi float [ %4117, %4256 ], [ %4117, %4339 ], [ %4598, %4587 ], [ %4117, %4103 ]
  %4244 = phi float [ %4118, %4256 ], [ %4118, %4339 ], [ %4599, %4587 ], [ %4118, %4103 ]
  %4245 = phi float [ %4119, %4256 ], [ %4119, %4339 ], [ %4445, %4587 ], [ %4119, %4103 ]
  %4246 = phi float [ %4120, %4256 ], [ %4120, %4339 ], [ %4446, %4587 ], [ %4120, %4103 ]
  %4247 = phi float [ %4121, %4256 ], [ %4121, %4339 ], [ %4447, %4587 ], [ %4121, %4103 ]
  %4248 = phi float [ %4122, %4256 ], [ %4122, %4339 ], [ %4519, %4587 ], [ %4122, %4103 ]
  %4249 = phi float [ %4123, %4256 ], [ %4123, %4339 ], [ %4516, %4587 ], [ %4123, %4103 ]
  %4250 = phi float [ %4124, %4256 ], [ %4124, %4339 ], [ %4513, %4587 ], [ %4124, %4103 ]
  %4251 = phi float [ %4125, %4256 ], [ %4125, %4339 ], [ %4462, %4587 ], [ %4125, %4103 ]
  %4252 = phi float [ %4126, %4256 ], [ %4126, %4339 ], [ %4457, %4587 ], [ %4126, %4103 ]
  %4253 = phi float [ %4127, %4256 ], [ %4127, %4339 ], [ %4458, %4587 ], [ %4127, %4103 ]
  %4254 = phi float [ %4128, %4256 ], [ %4128, %4339 ], [ %4459, %4587 ], [ %4128, %4103 ]
  %4255 = icmp eq i32 %4132, 0
  br i1 %4255, label %4600, label %4103

; <label>:4256                                    ; preds = %4103
  %4257 = extractvalue %dx.types.ResRet.f32 %4136, 3
  %4258 = extractvalue %dx.types.ResRet.f32 %4155, 3
  %4259 = extractvalue %dx.types.ResRet.f32 %4155, 1
  %4260 = extractvalue %dx.types.ResRet.f32 %4155, 0
  %4261 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4262 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4263 = extractvalue %dx.types.ResRet.i32 %4141, 3
  %4264 = extractvalue %dx.types.ResRet.i32 %4141, 2
  %4265 = bitcast float %4257 to i32
  %4266 = add i32 %4263, 0
  %4267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4266, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4267, %dx.types.Handle %4268, float %4190, float %4197, float undef, float undef, i32 0, i32 0, i32 undef, float %4218, float %4220, float undef, float %4219, float %4221, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = fmul fast float %4270, %4262
  %4272 = fadd fast float %4271, %4261
  %4273 = call float @dx.op.unary.f32(i32 7, float %4272)  ; Saturate(value)
  %4274 = fmul fast float %4190, %4150
  %4275 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4197, float %4274)  ; FMad(a,b,c)
  %4276 = fadd fast float %4275, %4260
  %4277 = fmul fast float %4190, %4152
  %4278 = call float @dx.op.tertiary.f32(i32 46, float %4153, float %4197, float %4277)  ; FMad(a,b,c)
  %4279 = fadd fast float %4278, %4259
  %4280 = fmul fast float %4218, %4150
  %4281 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4220, float %4280)  ; FMad(a,b,c)
  %4282 = fmul fast float %4218, %4152
  %4283 = call float @dx.op.tertiary.f32(i32 46, float %4153, float %4220, float %4282)  ; FMad(a,b,c)
  %4284 = fmul fast float %4219, %4150
  %4285 = call float @dx.op.tertiary.f32(i32 46, float %4151, float %4221, float %4284)  ; FMad(a,b,c)
  %4286 = fmul fast float %4219, %4152
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4153, float %4221, float %4286)  ; FMad(a,b,c)
  %4288 = add i32 %4264, 0
  %4289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4288, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4289, %dx.types.Handle %4268, float %4276, float %4279, float undef, float undef, i32 0, i32 0, i32 undef, float %4281, float %4283, float undef, float %4285, float %4287, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = and i32 %4265, 1024
  %4293 = icmp ne i32 %4292, 0
  %4294 = fcmp fast ogt float %4291, 0x3FE0101020000000
  %4295 = uitofp i1 %4294 to float
  %4296 = select i1 %4293, float %4295, float %4291
  %4297 = and i32 %4265, 8192
  %4298 = icmp ne i32 %4297, 0
  %4299 = select i1 %4298, float %4258, float 1.000000e+00
  %4300 = fmul fast float %4190, 2.000000e+00
  %4301 = fadd fast float %4300, -1.000000e+00
  %4302 = call float @dx.op.unary.f32(i32 6, float %4301)  ; FAbs(value)
  %4303 = fmul fast float %4302, %4183
  %4304 = fsub fast float %4303, %4183
  %4305 = call float @dx.op.unary.f32(i32 7, float %4304)  ; Saturate(value)
  %4306 = fmul fast float %4197, 2.000000e+00
  %4307 = fadd fast float %4306, -1.000000e+00
  %4308 = call float @dx.op.unary.f32(i32 6, float %4307)  ; FAbs(value)
  %4309 = fmul fast float %4308, %4184
  %4310 = fsub fast float %4309, %4184
  %4311 = call float @dx.op.unary.f32(i32 7, float %4310)  ; Saturate(value)
  %4312 = fmul fast float %4209, %4146
  %4313 = fsub fast float %4312, %4146
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4273, %4299
  %4316 = fmul fast float %4315, %4270
  %4317 = fmul fast float %4316, %4305
  %4318 = fmul fast float %4317, %4296
  %4319 = fmul fast float %4318, %4311
  %4320 = fmul fast float %4319, %4314
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4323 = extractvalue %dx.types.CBufRet.f32 %4321, 0
  %4324 = fsub fast float %4226, %4323
  %4325 = fmul fast float %4324, %4322
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = fmul fast float %4320, %4147
  %4328 = fadd fast float %4320, %4147
  %4329 = fmul fast float %4328, %4156
  %4330 = fsub fast float %4329, %4156
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = and i32 %4265, 128
  %4333 = icmp ne i32 %4332, 0
  %4334 = select i1 %4333, float %4331, float %4327
  %4335 = fmul fast float %4334, %4326
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 0
  %4338 = fcmp fast ugt float %4335, %4337
  br i1 %4338, label %4339, label %4230

; <label>:4339                                    ; preds = %4256
  %4340 = select i1 %4298, float %4335, float 0.000000e+00
  %4341 = fadd fast float %4340, %4105
  %4342 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  br i1 %4298, label %4230, label %4343

; <label>:4343                                    ; preds = %4339
  %4344 = and i32 %4265, 4
  %4345 = and i32 %4265, 8
  %4346 = add i32 %4142, 0
  %4347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4346, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4347, %dx.types.Handle %4348, float %4276, float %4279, float undef, float undef, i32 0, i32 0, i32 undef, float %4281, float %4283, float undef, float %4285, float %4287, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = extractvalue %dx.types.ResRet.f32 %4349, 3
  %4354 = bitcast float %4168 to i32
  %4355 = and i32 %4354, 255
  %4356 = uitofp i32 %4355 to float
  %4357 = lshr i32 %4354, 8
  %4358 = and i32 %4357, 255
  %4359 = uitofp i32 %4358 to float
  %4360 = fmul fast float %4353, %4356
  %4361 = fadd fast float %4360, %4359
  %4362 = fmul fast float %4361, 0x3F70101000000000
  %4363 = add i32 %4143, 0
  %4364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4363, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4364, %dx.types.Handle %4348, float %4276, float %4279, float undef, float undef, i32 0, i32 0, i32 undef, float %4281, float %4283, float undef, float %4285, float %4287, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.ResRet.f32 %4365, 1
  %4368 = extractvalue %dx.types.ResRet.f32 %4365, 2
  %4369 = extractvalue %dx.types.ResRet.f32 %4365, 3
  %4370 = bitcast float %4162 to i32
  %4371 = and i32 %4370, 255
  %4372 = uitofp i32 %4371 to float
  %4373 = lshr i32 %4370, 8
  %4374 = and i32 %4373, 255
  %4375 = uitofp i32 %4374 to float
  %4376 = lshr i32 %4370, 16
  %4377 = and i32 %4376, 255
  %4378 = uitofp i32 %4377 to float
  %4379 = fmul fast float %4378, 0x3F70101000000000
  %4380 = fmul fast float %4366, %4372
  %4381 = fadd fast float %4380, %4375
  %4382 = fmul fast float %4381, 0x3F70101000000000
  %4383 = fadd fast float %4367, -5.000000e-01
  %4384 = fadd fast float %4369, -5.000000e-01
  %4385 = fmul fast float %4383, %4379
  %4386 = fmul fast float %4384, %4379
  %4387 = fadd fast float %4385, 5.000000e-01
  %4388 = fadd fast float %4386, 5.000000e-01
  %4389 = fmul fast float %4350, %4171
  %4390 = fmul fast float %4351, %4172
  %4391 = fmul fast float %4352, %4173
  %4392 = fmul fast float %4387, 2.000000e+00
  %4393 = fadd fast float %4392, -1.000000e+00
  %4394 = fmul fast float %4388, 2.000000e+00
  %4395 = fadd fast float %4394, -1.000000e+00
  %4396 = fadd fast float %4393, %4395
  %4397 = fmul fast float %4396, 5.000000e-01
  %4398 = fsub fast float %4393, %4395
  %4399 = fmul fast float %4398, 5.000000e-01
  %4400 = call float @dx.op.unary.f32(i32 6, float %4397)  ; FAbs(value)
  %4401 = fsub fast float 1.000000e+00, %4400
  %4402 = call float @dx.op.unary.f32(i32 6, float %4399)  ; FAbs(value)
  %4403 = fsub fast float %4401, %4402
  %4404 = call float @dx.op.dot3.f32(i32 55, float %4397, float %4399, float %4403, float %4397, float %4399, float %4403)  ; Dot3(ax,ay,az,bx,by,bz)
  %4405 = call float @dx.op.unary.f32(i32 25, float %4404)  ; Rsqrt(value)
  %4406 = fmul fast float %4397, %4405
  %4407 = fmul fast float %4399, %4405
  %4408 = fmul fast float %4405, %4403
  %4409 = fmul fast float %4408, %4137
  %4410 = fmul fast float %4408, %4138
  %4411 = fmul fast float %4408, %4139
  %4412 = fmul fast float %4406, %4159
  %4413 = fmul fast float %4406, %4160
  %4414 = fmul fast float %4406, %4161
  %4415 = fadd fast float %4412, %4409
  %4416 = fadd fast float %4413, %4410
  %4417 = fadd fast float %4414, %4411
  %4418 = fmul fast float %4407, %4165
  %4419 = fmul fast float %4407, %4166
  %4420 = fmul fast float %4407, %4167
  %4421 = fadd fast float %4415, %4418
  %4422 = fadd fast float %4416, %4419
  %4423 = fadd fast float %4417, %4420
  %4424 = call float @dx.op.dot3.f32(i32 55, float %4421, float %4422, float %4423, float %4421, float %4422, float %4423)  ; Dot3(ax,ay,az,bx,by,bz)
  %4425 = call float @dx.op.unary.f32(i32 25, float %4424)  ; Rsqrt(value)
  %4426 = fmul fast float %4421, %4425
  %4427 = fmul fast float %4422, %4425
  %4428 = fmul fast float %4423, %4425
  %4429 = icmp ne i32 %4345, 0
  %4430 = select i1 %4429, float 1.000000e+00, float 0.000000e+00
  %4431 = fmul fast float %4335, %4430
  %4432 = and i32 %4265, 1
  %4433 = icmp eq i32 %4432, 0
  br i1 %4433, label %4434, label %4438

; <label>:4434                                    ; preds = %4343
  %4435 = fsub fast float %4426, %4119
  %4436 = fsub fast float %4427, %4120
  %4437 = fsub fast float %4428, %4121
  br label %4438

; <label>:4438                                    ; preds = %4434, %4343
  %4439 = phi float [ %4435, %4434 ], [ %4426, %4343 ]
  %4440 = phi float [ %4436, %4434 ], [ %4427, %4343 ]
  %4441 = phi float [ %4437, %4434 ], [ %4428, %4343 ]
  %4442 = fmul float %4441, %4431
  %4443 = fmul float %4440, %4431
  %4444 = fmul float %4439, %4431
  %4445 = fadd fast float %4444, %4119
  %4446 = fadd fast float %4443, %4120
  %4447 = fadd fast float %4442, %4121
  %4448 = icmp ne i32 %4344, 0
  %4449 = select i1 %4448, float 1.000000e+00, float 0.000000e+00
  %4450 = fmul fast float %4335, %4449
  %4451 = fsub fast float %4389, %4126
  %4452 = fsub fast float %4390, %4127
  %4453 = fsub fast float %4391, %4128
  %4454 = fmul fast float %4451, %4450
  %4455 = fmul fast float %4452, %4450
  %4456 = fmul fast float %4453, %4450
  %4457 = fadd fast float %4454, %4126
  %4458 = fadd fast float %4455, %4127
  %4459 = fadd fast float %4456, %4128
  %4460 = fsub fast float %4362, %4125
  %4461 = fmul fast float %4460, %4450
  %4462 = fadd fast float %4461, %4125
  %4463 = fmul fast float %4450, %4112
  %4464 = fsub fast float %4112, %4463
  %4465 = fmul fast float %4450, %4111
  %4466 = fsub fast float %4111, %4465
  %4467 = bitcast float %4180 to i32
  %4468 = lshr i32 %4467, 16
  %4469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4468)  ; LegacyF16ToF32(value)
  %4470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4471 = extractvalue %dx.types.ResRet.i32 %4470, 0
  %4472 = and i32 %4471, 1
  %4473 = icmp eq i32 %4472, 0
  br i1 %4473, label %4474, label %4499

; <label>:4474                                    ; preds = %4438
  %4475 = fadd fast float %4362, 0xBFB99999A0000000
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fmul fast float %4476, 0x3FF1C71C80000000
  %4478 = fsub fast float 1.000000e+00, %4477
  %4479 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4480 = fmul fast float %4479, %4389
  %4481 = fmul fast float %4479, %4390
  %4482 = fmul fast float %4479, %4391
  %4483 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4486 = call float @dx.op.binary.f32(i32 35, float %4484, float %4485)  ; FMax(a,b)
  %4487 = call float @dx.op.binary.f32(i32 35, float %4483, float %4486)  ; FMax(a,b)
  %4488 = fcmp fast ogt float %4487, 0.000000e+00
  %4489 = bitcast float %4487 to i32
  %4490 = sub nsw i32 2129859010, %4489
  %4491 = bitcast i32 %4490 to float
  %4492 = select i1 %4488, float %4491, float 0.000000e+00
  %4493 = fmul fast float %4483, %4469
  %4494 = fmul fast float %4484, %4469
  %4495 = fmul fast float %4485, %4469
  %4496 = fmul fast float %4493, %4492
  %4497 = fmul fast float %4494, %4492
  %4498 = fmul fast float %4495, %4492
  br label %4499

; <label>:4499                                    ; preds = %4474, %4438
  %4500 = phi float [ %4469, %4438 ], [ %4496, %4474 ]
  %4501 = phi float [ %4469, %4438 ], [ %4497, %4474 ]
  %4502 = phi float [ %4469, %4438 ], [ %4498, %4474 ]
  %4503 = fsub fast float %4500, %4113
  %4504 = fsub fast float %4501, %4114
  %4505 = fsub fast float %4502, %4115
  %4506 = fmul fast float %4503, %4450
  %4507 = fmul fast float %4504, %4450
  %4508 = fmul fast float %4505, %4450
  %4509 = fadd fast float %4506, %4113
  %4510 = fadd fast float %4507, %4114
  %4511 = fadd fast float %4508, %4115
  %4512 = fadd fast float %4335, %4124
  %4513 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4514 = fsub fast float %4382, %4123
  %4515 = fmul fast float %4514, %4431
  %4516 = fadd fast float %4515, %4123
  %4517 = fsub fast float %4368, %4122
  %4518 = fmul fast float %4517, %4431
  %4519 = fadd fast float %4518, %4122
  br i1 %4433, label %4528, label %4520

; <label>:4520                                    ; preds = %4499
  %4521 = and i32 %4265, 32768
  %4522 = icmp eq i32 %4521, 0
  br i1 %4522, label %4538, label %4523

; <label>:4523                                    ; preds = %4520
  %4524 = fmul fast float %4431, 1.270000e+02
  %4525 = fadd fast float %4524, %4108
  %4526 = fadd fast float %4524, %4109
  %4527 = fadd fast float %4524, %4110
  br label %4538

; <label>:4528                                    ; preds = %4499
  %4529 = fsub fast float 1.270000e+02, %4108
  %4530 = fsub fast float 1.270000e+02, %4109
  %4531 = fsub fast float 1.270000e+02, %4110
  %4532 = fmul fast float %4431, %4529
  %4533 = fmul fast float %4431, %4530
  %4534 = fmul fast float %4431, %4531
  %4535 = fadd fast float %4532, %4108
  %4536 = fadd fast float %4533, %4109
  %4537 = fadd fast float %4534, %4110
  br label %4538

; <label>:4538                                    ; preds = %4528, %4523, %4520
  %4539 = phi float [ %4525, %4523 ], [ %4108, %4520 ], [ %4535, %4528 ]
  %4540 = phi float [ %4526, %4523 ], [ %4109, %4520 ], [ %4536, %4528 ]
  %4541 = phi float [ %4527, %4523 ], [ %4110, %4520 ], [ %4537, %4528 ]
  %4542 = call float @dx.op.dot3.f32(i32 55, float %4389, float %4390, float %4391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4546 = fmul fast float %4545, %4542
  %4547 = fadd fast float %4546, %4544
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = bitcast float %4174 to i32
  %4550 = and i32 %4549, 65535
  %4551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4550)  ; LegacyF16ToF32(value)
  %4552 = lshr i32 %4549, 16
  %4553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4552)  ; LegacyF16ToF32(value)
  %4554 = fcmp fast oge float %4551, 0.000000e+00
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 0
  %4557 = select i1 %4554, float %4551, float %4556
  %4558 = fadd fast float %4557, %4553
  %4559 = fsub fast float %4548, %4107
  %4560 = fmul fast float %4559, %4335
  %4561 = fadd fast float %4560, %4107
  %4562 = fmul fast float %4558, %4335
  %4563 = call float @dx.op.binary.f32(i32 35, float %4106, float %4562)  ; FMax(a,b)
  %4564 = and i32 %4265, 16
  %4565 = icmp eq i32 %4564, 0
  br i1 %4565, label %4587, label %4566

; <label>:4566                                    ; preds = %4538
  %4567 = add i32 %4177, 0
  %4568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4567, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4569 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4568, %dx.types.Handle %4348, float %4276, float %4279, float undef, float undef, i32 0, i32 0, i32 undef, float %4281, float %4283, float undef, float %4285, float %4287, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4570 = extractvalue %dx.types.ResRet.f32 %4569, 0
  %4571 = extractvalue %dx.types.ResRet.f32 %4569, 1
  %4572 = extractvalue %dx.types.ResRet.f32 %4569, 2
  %4573 = and i32 %4467, 65535
  %4574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4573)  ; LegacyF16ToF32(value)
  %4575 = fmul fast float %4570, %4171
  %4576 = fmul fast float %4571, %4172
  %4577 = fmul fast float %4572, %4173
  %4578 = and i32 %4265, 16384
  %4579 = icmp ne i32 %4578, 0
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = select i1 %4579, float %4581, float 1.000000e+00
  %4583 = fmul fast float %4582, %4574
  %4584 = fmul fast float %4575, %4583
  %4585 = fmul fast float %4576, %4583
  %4586 = fmul fast float %4577, %4583
  br label %4587

; <label>:4587                                    ; preds = %4566, %4538
  %4588 = phi float [ %4584, %4566 ], [ 0.000000e+00, %4538 ]
  %4589 = phi float [ %4585, %4566 ], [ 0.000000e+00, %4538 ]
  %4590 = phi float [ %4586, %4566 ], [ 0.000000e+00, %4538 ]
  %4591 = fsub fast float %4588, %4116
  %4592 = fsub fast float %4589, %4117
  %4593 = fsub fast float %4590, %4118
  %4594 = fmul fast float %4591, %4335
  %4595 = fmul fast float %4592, %4335
  %4596 = fmul fast float %4593, %4335
  %4597 = fadd fast float %4594, %4116
  %4598 = fadd fast float %4595, %4117
  %4599 = fadd fast float %4596, %4118
  br label %4230

; <label>:4600                                    ; preds = %4230
  br label %4601

; <label>:4601                                    ; preds = %4600, %4040
  %4602 = phi float [ 0.000000e+00, %4040 ], [ %4231, %4600 ]
  %4603 = phi float [ %4010, %4040 ], [ %4232, %4600 ]
  %4604 = phi float [ %3991, %4040 ], [ %4233, %4600 ]
  %4605 = phi float [ %3981, %4040 ], [ %4234, %4600 ]
  %4606 = phi float [ %3982, %4040 ], [ %4235, %4600 ]
  %4607 = phi float [ %3983, %4040 ], [ %4236, %4600 ]
  %4608 = phi float [ 0.000000e+00, %4040 ], [ %4237, %4600 ]
  %4609 = phi float [ 0.000000e+00, %4040 ], [ %4238, %4600 ]
  %4610 = phi float [ %3978, %4040 ], [ %4239, %4600 ]
  %4611 = phi float [ %3979, %4040 ], [ %4240, %4600 ]
  %4612 = phi float [ %3980, %4040 ], [ %4241, %4600 ]
  %4613 = phi float [ %3984, %4040 ], [ %4242, %4600 ]
  %4614 = phi float [ %3985, %4040 ], [ %4243, %4600 ]
  %4615 = phi float [ %3986, %4040 ], [ %4244, %4600 ]
  %4616 = phi float [ %4036, %4040 ], [ %4245, %4600 ]
  %4617 = phi float [ %4037, %4040 ], [ %4246, %4600 ]
  %4618 = phi float [ %4038, %4040 ], [ %4247, %4600 ]
  %4619 = phi float [ %3989, %4040 ], [ %4248, %4600 ]
  %4620 = phi float [ %3988, %4040 ], [ %4249, %4600 ]
  %4621 = phi float [ 0.000000e+00, %4040 ], [ %4250, %4600 ]
  %4622 = phi float [ %3987, %4040 ], [ %4251, %4600 ]
  %4623 = phi float [ %3975, %4040 ], [ %4252, %4600 ]
  %4624 = phi float [ %3976, %4040 ], [ %4253, %4600 ]
  %4625 = phi float [ %3977, %4040 ], [ %4254, %4600 ]
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4618, float %4616, float %4617, float %4618)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.unary.f32(i32 25, float %4626)  ; Rsqrt(value)
  %4628 = fmul fast float %4627, %4616
  %4629 = fmul fast float %4627, %4617
  %4630 = fmul fast float %4627, %4618
  %4631 = fadd fast float %4621, %1161
  %4632 = call float @dx.op.unary.f32(i32 7, float %4631)  ; Saturate(value)
  %4633 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %4630, float %4628, float %4629, float %4630)  ; Dot3(ax,ay,az,bx,by,bz)
  %4634 = call float @dx.op.unary.f32(i32 25, float %4633)  ; Rsqrt(value)
  %4635 = fmul fast float %4634, %4628
  %4636 = fmul fast float %4634, %4629
  %4637 = fmul fast float %4634, %4630
  br label %4638

; <label>:4638                                    ; preds = %4601, %3972
  %4639 = phi float [ %4635, %4601 ], [ %4036, %3972 ]
  %4640 = phi float [ %4636, %4601 ], [ %4037, %3972 ]
  %4641 = phi float [ %4637, %4601 ], [ %4038, %3972 ]
  %4642 = phi float [ %4623, %4601 ], [ %3975, %3972 ]
  %4643 = phi float [ %4624, %4601 ], [ %3976, %3972 ]
  %4644 = phi float [ %4625, %4601 ], [ %3977, %3972 ]
  %4645 = phi float [ %4613, %4601 ], [ %3984, %3972 ]
  %4646 = phi float [ %4614, %4601 ], [ %3985, %3972 ]
  %4647 = phi float [ %4615, %4601 ], [ %3986, %3972 ]
  %4648 = phi float [ %4605, %4601 ], [ %3981, %3972 ]
  %4649 = phi float [ %4606, %4601 ], [ %3982, %3972 ]
  %4650 = phi float [ %4607, %4601 ], [ %3983, %3972 ]
  %4651 = phi float [ %4610, %4601 ], [ %3978, %3972 ]
  %4652 = phi float [ %4611, %4601 ], [ %3979, %3972 ]
  %4653 = phi float [ %4612, %4601 ], [ %3980, %3972 ]
  %4654 = phi float [ %4622, %4601 ], [ %3987, %3972 ]
  %4655 = phi float [ %4632, %4601 ], [ %1161, %3972 ]
  %4656 = phi float [ %4620, %4601 ], [ %3988, %3972 ]
  %4657 = phi float [ %4619, %4601 ], [ %3989, %3972 ]
  %4658 = phi float [ %4609, %4601 ], [ 0.000000e+00, %3972 ]
  %4659 = phi float [ %4608, %4601 ], [ 0.000000e+00, %3972 ]
  %4660 = phi float [ %4602, %4601 ], [ 0.000000e+00, %3972 ]
  %4661 = phi float [ %4603, %4601 ], [ %4010, %3972 ]
  %4662 = phi float [ %4604, %4601 ], [ %3991, %3972 ]
  %4663 = fadd fast float %4654, 0xBFB99999A0000000
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = fmul fast float %4664, 0x3FF1C71C80000000
  %4666 = call float @dx.op.binary.f32(i32 36, float %4654, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4667 = fsub fast float 1.000000e+00, %4665
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = fmul fast float %4668, %4642
  %4670 = fmul fast float %4668, %4643
  %4671 = fmul fast float %4668, %4644
  %4672 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4673 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4674 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4675 = fmul fast float %4665, %4642
  %4676 = fmul fast float %4665, %4643
  %4677 = fmul fast float %4665, %4644
  %4678 = fadd fast float %4675, %4666
  %4679 = fadd fast float %4676, %4666
  %4680 = fadd fast float %4677, %4666
  %4681 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4680)  ; Saturate(value)
  %4684 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.i32 %4685, 0
  %4687 = and i32 %4686, 1
  %4688 = icmp eq i32 %4687, 0
  br i1 %4688, label %4703, label %4689

; <label>:4689                                    ; preds = %4638
  %4690 = call float @dx.op.binary.f32(i32 35, float %4673, float %4674)  ; FMax(a,b)
  %4691 = call float @dx.op.binary.f32(i32 35, float %4672, float %4690)  ; FMax(a,b)
  %4692 = fcmp fast ogt float %4691, 0.000000e+00
  %4693 = bitcast float %4691 to i32
  %4694 = sub nsw i32 2129859010, %4693
  %4695 = bitcast i32 %4694 to float
  %4696 = select i1 %4692, float %4695, float 0.000000e+00
  %4697 = fmul fast float %4672, %4651
  %4698 = fmul fast float %4673, %4652
  %4699 = fmul fast float %4674, %4653
  %4700 = fmul fast float %4697, %4696
  %4701 = fmul fast float %4698, %4696
  %4702 = fmul fast float %4699, %4696
  br label %4703

; <label>:4703                                    ; preds = %4689, %4638
  %4704 = phi float [ %4700, %4689 ], [ %4651, %4638 ]
  %4705 = phi float [ %4701, %4689 ], [ %4652, %4638 ]
  %4706 = phi float [ %4702, %4689 ], [ %4653, %4638 ]
  %4707 = call float @dx.op.binary.f32(i32 36, float %4648, float 1.270000e+02)  ; FMin(a,b)
  %4708 = call float @dx.op.binary.f32(i32 36, float %4649, float 1.270000e+02)  ; FMin(a,b)
  %4709 = call float @dx.op.binary.f32(i32 36, float %4650, float 1.270000e+02)  ; FMin(a,b)
  %4710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4711 = extractvalue %dx.types.CBufRet.i32 %4710, 3
  %4712 = and i32 %4711, 8
  %4713 = icmp ne i32 %4712, 0
  %4714 = call float @dx.op.binary.f32(i32 35, float %4672, float %4642)  ; FMax(a,b)
  %4715 = call float @dx.op.binary.f32(i32 35, float %4673, float %4642)  ; FMax(a,b)
  %4716 = call float @dx.op.binary.f32(i32 35, float %4674, float %4642)  ; FMax(a,b)
  %4717 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4718 = select i1 %249, float %4642, float %4672
  %4719 = select i1 %249, float %4717, float %4673
  %4720 = select i1 %249, float 1.000000e+00, float %4674
  %4721 = select i1 %4713, float %4714, float %4718
  %4722 = select i1 %4713, float %4715, float %4719
  %4723 = select i1 %4713, float %4716, float %4720
  %4724 = call float @dx.op.dot3.f32(i32 55, float %4704, float %4705, float %4706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = select i1 %249, float %4724, float %4704
  %4726 = select i1 %249, float %4724, float %4705
  %4727 = select i1 %249, float %4724, float %4706
  %4728 = and i32 %225, 3
  %4729 = select i1 %219, i32 %4728, i32 0
  %4730 = icmp eq i32 %4729, 1
  br i1 %4730, label %4731, label %4807

; <label>:4731                                    ; preds = %4703
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.CBufRet.f32 %4732, 1
  %4735 = fadd fast float %4733, %188
  %4736 = fadd fast float %4734, %189
  %4737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.CBufRet.f32 %4737, 1
  %4740 = fsub fast float %4735, %4738
  %4741 = fsub fast float %4736, %4739
  %4742 = fmul fast float %4740, %4740
  %4743 = fmul fast float %4741, %4741
  %4744 = fadd fast float %4742, %4743
  %4745 = call float @dx.op.unary.f32(i32 24, float %4744)  ; Sqrt(value)
  %4746 = extractvalue %dx.types.CBufRet.f32 %4737, 2
  %4747 = fcmp fast olt float %4745, %4746
  br i1 %4747, label %4748, label %4801

; <label>:4748                                    ; preds = %4731
  %4749 = extractvalue %dx.types.CBufRet.f32 %4732, 2
  %4750 = fadd fast float %4749, %190
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 0
  %4753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.f32 %4753, 0
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 0
  %4757 = extractvalue %dx.types.CBufRet.f32 %4751, 1
  %4758 = extractvalue %dx.types.CBufRet.f32 %4753, 1
  %4759 = extractvalue %dx.types.CBufRet.f32 %4755, 1
  %4760 = extractvalue %dx.types.CBufRet.f32 %4751, 3
  %4761 = extractvalue %dx.types.CBufRet.f32 %4753, 3
  %4762 = extractvalue %dx.types.CBufRet.f32 %4755, 3
  %4763 = fadd fast float %4760, %4735
  %4764 = fadd fast float %4761, %4736
  %4765 = fadd fast float %4750, %4762
  %4766 = fmul fast float %4763, %4752
  %4767 = call float @dx.op.tertiary.f32(i32 46, float %4764, float %4754, float %4766)  ; FMad(a,b,c)
  %4768 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4756, float %4767)  ; FMad(a,b,c)
  %4769 = fmul fast float %4763, %4757
  %4770 = call float @dx.op.tertiary.f32(i32 46, float %4764, float %4758, float %4769)  ; FMad(a,b,c)
  %4771 = call float @dx.op.tertiary.f32(i32 46, float %4765, float %4759, float %4770)  ; FMad(a,b,c)
  %4772 = fsub fast float %4768, %4760
  %4773 = fsub fast float %4771, %4761
  %4774 = fsub fast float %4772, %4738
  %4775 = fadd fast float %4774, %4746
  %4776 = fsub fast float %4773, %4739
  %4777 = fadd fast float %4776, %4746
  %4778 = extractvalue %dx.types.CBufRet.f32 %4737, 3
  %4779 = fmul fast float %4775, %4778
  %4780 = fmul fast float %4777, %4778
  %4781 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4782 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4783 = fsub fast float 1.000000e+00, %4781
  %4784 = fsub fast float 1.000000e+00, %4782
  %4785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %44, float %4783, float %4784, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = fcmp fast ugt float %4786, 0.000000e+00
  br i1 %4787, label %4788, label %4801

; <label>:4788                                    ; preds = %4748
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 2
  %4791 = fmul fast float %4790, %4786
  %4792 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4793 = fadd fast float %4792, %4791
  %4794 = extractvalue %dx.types.CBufRet.f32 %4755, 2
  %4795 = fadd fast float %4793, %4762
  %4796 = fmul fast float %4768, %4756
  %4797 = call float @dx.op.tertiary.f32(i32 46, float %4771, float %4759, float %4796)  ; FMad(a,b,c)
  %4798 = call float @dx.op.tertiary.f32(i32 46, float %4795, float %4794, float %4797)  ; FMad(a,b,c)
  %4799 = fsub fast float %4798, %4762
  %4800 = fsub fast float %4799, %4749
  br label %4801

; <label>:4801                                    ; preds = %4788, %4748, %4731
  %4802 = phi i1 [ true, %4788 ], [ false, %4748 ], [ false, %4731 ]
  %4803 = phi float [ %4800, %4788 ], [ -1.310720e+05, %4748 ], [ -1.310720e+05, %4731 ]
  %4804 = fsub fast float %4803, %190
  %4805 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4806 = select i1 %4802, float %4805, float 1.000000e+00
  br label %4807

; <label>:4807                                    ; preds = %4801, %4703
  %4808 = phi float [ %4806, %4801 ], [ 0.000000e+00, %4703 ]
  %4809 = icmp eq i32 %4729, 3
  %4810 = select i1 %4809, float 1.000000e+00, float %4808
  %4811 = call float @dx.op.binary.f32(i32 35, float %4660, float %4810)  ; FMax(a,b)
  %4812 = fcmp fast olt float %4810, 1.000000e+00
  br i1 %4812, label %4813, label %4986

; <label>:4813                                    ; preds = %4807
  %4814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.i32 %4814, 0
  %4816 = and i32 %4815, 7
  %4817 = icmp eq i32 %4816, 0
  br i1 %4817, label %4889, label %4818

; <label>:4818                                    ; preds = %4813
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4822 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4823 = fadd fast float %4820, %188
  %4824 = fadd fast float %4821, %189
  %4825 = fadd fast float %4822, %190
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.CBufRet.f32 %4826, 1
  %4829 = extractvalue %dx.types.CBufRet.f32 %4826, 2
  %4830 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.CBufRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.CBufRet.f32 %4831, 2
  %4835 = extractvalue %dx.types.CBufRet.f32 %4831, 3
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4838 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4839 = extractvalue %dx.types.CBufRet.f32 %4836, 2
  %4840 = extractvalue %dx.types.CBufRet.f32 %4836, 3
  %4841 = fmul fast float %4823, %4827
  %4842 = call float @dx.op.tertiary.f32(i32 46, float %4824, float %4828, float %4841)  ; FMad(a,b,c)
  %4843 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4829, float %4842)  ; FMad(a,b,c)
  %4844 = fadd fast float %4843, %4830
  %4845 = fmul fast float %4832, %4823
  %4846 = call float @dx.op.tertiary.f32(i32 46, float %4824, float %4833, float %4845)  ; FMad(a,b,c)
  %4847 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4834, float %4846)  ; FMad(a,b,c)
  %4848 = fadd fast float %4847, %4835
  %4849 = fmul fast float %4837, %4823
  %4850 = call float @dx.op.tertiary.f32(i32 46, float %4824, float %4838, float %4849)  ; FMad(a,b,c)
  %4851 = call float @dx.op.tertiary.f32(i32 46, float %4825, float %4839, float %4850)  ; FMad(a,b,c)
  %4852 = fadd fast float %4851, %4840
  %4853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4854 = extractvalue %dx.types.CBufRet.f32 %4853, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4853, 0
  %4856 = fmul fast float %4855, %260
  %4857 = fadd fast float %4852, %4856
  %4858 = fmul fast float %260, 0x401921FB60000000
  %4859 = call float @dx.op.unary.f32(i32 13, float %4858)  ; Sin(value)
  %4860 = call float @dx.op.unary.f32(i32 12, float %4858)  ; Cos(value)
  %4861 = fmul fast float %4860, %4854
  %4862 = call float @dx.op.tertiary.f32(i32 46, float %4859, float %4854, float 0.000000e+00)  ; FMad(a,b,c)
  %4863 = fmul fast float %4854, %4859
  %4864 = fsub fast float -0.000000e+00, %4863
  %4865 = call float @dx.op.tertiary.f32(i32 46, float %4860, float %4854, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4866

; <label>:4866                                    ; preds = %4866, %4818
  %4867 = phi float [ 0.000000e+00, %4818 ], [ %4881, %4866 ]
  %4868 = phi i32 [ 0, %4818 ], [ %4882, %4866 ]
  %4869 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4868
  %4870 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4868
  %4871 = load float, float* %4869, align 4
  %4872 = load float, float* %4870, align 4
  %4873 = fmul fast float %4861, %4871
  %4874 = call float @dx.op.tertiary.f32(i32 46, float %4872, float %4864, float %4873)  ; FMad(a,b,c)
  %4875 = fmul fast float %4871, %4862
  %4876 = call float @dx.op.tertiary.f32(i32 46, float %4872, float %4865, float %4875)  ; FMad(a,b,c)
  %4877 = fadd fast float %4844, %4874
  %4878 = fadd fast float %4848, %4876
  %4879 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %46, float %4877, float %4878, float undef, float undef, i32 0, i32 0, i32 undef, float %4857)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4880 = extractvalue %dx.types.ResRet.f32 %4879, 0
  %4881 = fadd fast float %4880, %4867
  %4882 = add nuw nsw i32 %4868, 1
  %4883 = icmp eq i32 %4882, 4
  br i1 %4883, label %4884, label %4866

; <label>:4884                                    ; preds = %4866
  %4885 = fmul fast float %4881, 2.500000e-01
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 1
  %4888 = fmul fast float %4887, %4885
  br label %4889

; <label>:4889                                    ; preds = %4884, %4813
  %4890 = phi float [ %4885, %4884 ], [ 0.000000e+00, %4813 ]
  %4891 = phi float [ %4888, %4884 ], [ 0.000000e+00, %4813 ]
  %4892 = fcmp uge float %65, 0.000000e+00
  br i1 %4892, label %4893, label %4904

; <label>:4893                                    ; preds = %4889
  %4894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %42, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4895 = extractvalue %dx.types.ResRet.f32 %4894, 0
  %4896 = extractvalue %dx.types.ResRet.f32 %4894, 1
  %4897 = extractvalue %dx.types.ResRet.f32 %4894, 2
  %4898 = fadd fast float %4895, %4811
  %4899 = fcmp fast ogt float %64, 0.000000e+00
  %4900 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4901 = select i1 %4899, float 1.000000e+00, float %4900
  %4902 = fmul fast float %4901, %4897
  %4903 = select i1 %4899, float 0.000000e+00, float %4891
  br label %4986

; <label>:4904                                    ; preds = %4889
  %4905 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4906 = extractvalue %dx.types.CBufRet.i32 %4905, 0
  %4907 = and i32 %4906, 7
  %4908 = icmp eq i32 %4907, 0
  br i1 %4908, label %4986, label %4909

; <label>:4909                                    ; preds = %4904
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = fmul fast float %4911, %4890
  %4913 = fadd fast float %4912, %4811
  %4914 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4915 = fmul fast float %4914, %4890
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = fmul fast float %4917, %4890
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = and i32 %4906, 8
  %4921 = icmp eq i32 %4920, 0
  br i1 %4921, label %4986, label %4922

; <label>:4922                                    ; preds = %4909
  %4923 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4924 = fadd fast float %4923, %190
  %4925 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4926 = fadd fast float %4925, %189
  %4927 = extractvalue %dx.types.CBufRet.f32 %4919, 0
  %4928 = fadd fast float %4927, %188
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 0
  %4931 = extractvalue %dx.types.CBufRet.f32 %4929, 1
  %4932 = extractvalue %dx.types.CBufRet.f32 %4929, 2
  %4933 = fsub fast float %4928, %4930
  %4934 = fsub fast float %4926, %4931
  %4935 = fsub fast float %4924, %4932
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 0
  %4938 = extractvalue %dx.types.CBufRet.f32 %4936, 1
  %4939 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4940 = fmul fast float %4933, %4937
  %4941 = fmul fast float %4934, %4938
  %4942 = fmul fast float %4935, %4939
  %4943 = fcmp fast oge float %4940, 0.000000e+00
  %4944 = fcmp fast oge float %4941, 0.000000e+00
  %4945 = fcmp fast oge float %4942, 0.000000e+00
  %4946 = and i1 %4943, %4944
  %4947 = and i1 %4945, %4946
  %4948 = fcmp fast ole float %4940, 1.000000e+00
  %4949 = fcmp fast ole float %4941, 1.000000e+00
  %4950 = fcmp fast ole float %4942, 1.000000e+00
  %4951 = and i1 %4948, %4949
  %4952 = and i1 %4950, %4951
  %4953 = and i1 %4947, %4952
  br i1 %4953, label %4954, label %4986

; <label>:4954                                    ; preds = %4922
  %4955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.i32 %4955, 0
  %4957 = icmp eq i32 %4956, 0
  br i1 %4957, label %4964, label %4958

; <label>:4958                                    ; preds = %4954
  %4959 = add i32 %4956, 0
  %4960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4961 = fsub fast float -0.000000e+00, %4941
  %4962 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4960, %dx.types.Handle %106, float %4940, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 0
  br label %4964

; <label>:4964                                    ; preds = %4958, %4954
  %4965 = phi float [ %4963, %4958 ], [ 1.000000e+00, %4954 ]
  %4966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4967 = extractvalue %dx.types.CBufRet.i32 %4966, 0
  %4968 = and i32 %4967, 32
  %4969 = icmp ne i32 %4968, 0
  %4970 = fmul fast float %4965, %4890
  %4971 = select i1 %4969, float %4965, float %4970
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 1
  %4974 = fmul fast float %4971, %4973
  %4975 = fadd fast float %4974, %4913
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = fmul fast float %4971, %4977
  %4979 = fadd fast float %4978, %4891
  %4980 = extractvalue %dx.types.CBufRet.f32 %4976, 1
  %4981 = fmul fast float %4971, %4980
  %4982 = fadd fast float %4981, %4915
  %4983 = extractvalue %dx.types.CBufRet.f32 %4976, 2
  %4984 = fmul fast float %4983, %4971
  %4985 = fadd fast float %4984, %4918
  br label %4986

; <label>:4986                                    ; preds = %4964, %4922, %4909, %4904, %4893, %4807
  %4987 = phi float [ %4811, %4904 ], [ %4811, %4807 ], [ %4898, %4893 ], [ %4975, %4964 ], [ %4913, %4922 ], [ %4913, %4909 ]
  %4988 = phi float [ %4891, %4904 ], [ 0.000000e+00, %4807 ], [ %4903, %4893 ], [ %4979, %4964 ], [ %4891, %4922 ], [ %4891, %4909 ]
  %4989 = phi float [ 0.000000e+00, %4904 ], [ 0.000000e+00, %4807 ], [ %4896, %4893 ], [ %4982, %4964 ], [ %4915, %4922 ], [ %4915, %4909 ]
  %4990 = phi float [ 0.000000e+00, %4904 ], [ 0.000000e+00, %4807 ], [ %4902, %4893 ], [ %4985, %4964 ], [ %4918, %4922 ], [ %4918, %4909 ]
  %4991 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4994 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4995 = fcmp fast une float %4993, 0.000000e+00
  %4996 = fcmp fast une float %4994, 0.000000e+00
  %4997 = or i1 %4995, %4996
  br i1 %4997, label %4998, label %5573

; <label>:4998                                    ; preds = %4986
  br i1 %4995, label %4999, label %5272

; <label>:4999                                    ; preds = %4998
  %5000 = call float @dx.op.unary.f32(i32 23, float %4657)  ; Log(value)
  %5001 = fmul fast float %5000, 4.000000e+00
  %5002 = call float @dx.op.unary.f32(i32 21, float %5001)  ; Exp(value)
  %5003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5004 = extractvalue %dx.types.CBufRet.f32 %5003, 0
  %5005 = fmul fast float %5004, %52
  %5006 = fmul fast float %5004, %53
  %5007 = fmul fast float %5004, %54
  %5008 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5009 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5010 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5011 = call float @dx.op.unary.f32(i32 23, float %5008)  ; Log(value)
  %5012 = call float @dx.op.unary.f32(i32 23, float %5009)  ; Log(value)
  %5013 = call float @dx.op.unary.f32(i32 23, float %5010)  ; Log(value)
  %5014 = fmul fast float %5011, 4.000000e+00
  %5015 = fmul fast float %5012, 4.000000e+00
  %5016 = fmul fast float %5013, 4.000000e+00
  %5017 = call float @dx.op.unary.f32(i32 21, float %5014)  ; Exp(value)
  %5018 = call float @dx.op.unary.f32(i32 21, float %5015)  ; Exp(value)
  %5019 = call float @dx.op.unary.f32(i32 21, float %5016)  ; Exp(value)
  %5020 = fadd fast float %5018, %5017
  %5021 = fadd fast float %5020, %5019
  %5022 = fdiv fast float 1.000000e+00, %5021
  %5023 = fmul fast float %5022, %5017
  %5024 = fcmp fast ogt float %61, 0.000000e+00
  %5025 = fcmp fast ogt float %62, 0.000000e+00
  %5026 = fcmp fast ogt float %63, 0.000000e+00
  %5027 = fcmp fast olt float %61, 0.000000e+00
  %5028 = fcmp fast olt float %62, 0.000000e+00
  %5029 = fcmp fast olt float %63, 0.000000e+00
  %5030 = zext i1 %5024 to i32
  %5031 = zext i1 %5025 to i32
  %5032 = zext i1 %5026 to i32
  %5033 = zext i1 %5027 to i32
  %5034 = zext i1 %5028 to i32
  %5035 = zext i1 %5029 to i32
  %5036 = sub nsw i32 %5030, %5033
  %5037 = sub nsw i32 %5031, %5034
  %5038 = sub nsw i32 %5032, %5035
  %5039 = call float @dx.op.unary.f32(i32 83, float %5005)  ; DerivCoarseX(value)
  %5040 = call float @dx.op.unary.f32(i32 83, float %5006)  ; DerivCoarseX(value)
  %5041 = call float @dx.op.unary.f32(i32 83, float %5007)  ; DerivCoarseX(value)
  %5042 = call float @dx.op.unary.f32(i32 84, float %5005)  ; DerivCoarseY(value)
  %5043 = call float @dx.op.unary.f32(i32 84, float %5006)  ; DerivCoarseY(value)
  %5044 = call float @dx.op.unary.f32(i32 84, float %5007)  ; DerivCoarseY(value)
  %5045 = fcmp fast ole float %260, %5023
  %5046 = fmul fast float %5022, %5020
  %5047 = fcmp fast ole float %260, %5046
  %5048 = select i1 %5047, float %5007, float %5005
  %5049 = select i1 %5047, float %5005, float %5006
  %5050 = select i1 %5045, float %5006, float %5048
  %5051 = select i1 %5045, float %5007, float %5049
  %5052 = select i1 %5047, float %5041, float %5039
  %5053 = select i1 %5047, float %5039, float %5040
  %5054 = select i1 %5045, float %5040, float %5052
  %5055 = select i1 %5045, float %5041, float %5053
  %5056 = select i1 %5047, float %5044, float %5042
  %5057 = select i1 %5047, float %5042, float %5043
  %5058 = select i1 %5045, float %5043, float %5056
  %5059 = select i1 %5045, float %5044, float %5057
  %5060 = call float @dx.op.unary.f32(i32 27, float %5050)  ; Round_ni(value)
  %5061 = call float @dx.op.unary.f32(i32 27, float %5051)  ; Round_ni(value)
  %5062 = fptosi float %5060 to i32
  %5063 = fptosi float %5061 to i32
  %5064 = xor i32 %5063, %5062
  %5065 = sitofp i32 %5064 to float
  %5066 = fptosi float %5065 to i32
  %5067 = sitofp i32 %5066 to float
  %5068 = fmul fast float %5067, 0x3FE3C6EF40000000
  %5069 = frem fast float %5060, 2.560000e+02
  %5070 = frem fast float %5061, 2.560000e+02
  %5071 = fptoui float %5069 to i32
  %5072 = fptoui float %5070 to i32
  %5073 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5071, i32 %5072, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5074 = extractvalue %dx.types.ResRet.f32 %5073, 0
  %5075 = extractvalue %dx.types.ResRet.f32 %5073, 1
  %5076 = extractvalue %dx.types.ResRet.f32 %5073, 2
  %5077 = fadd fast float %5074, %5068
  %5078 = fadd fast float %5075, %5068
  %5079 = fadd fast float %5076, %5068
  %5080 = call float @dx.op.unary.f32(i32 22, float %5077)  ; Frc(value)
  %5081 = call float @dx.op.unary.f32(i32 22, float %5078)  ; Frc(value)
  %5082 = call float @dx.op.unary.f32(i32 22, float %5079)  ; Frc(value)
  %5083 = fmul fast float %5082, 0x401921FB60000000
  %5084 = call float @dx.op.unary.f32(i32 13, float %5083)  ; Sin(value)
  %5085 = call float @dx.op.unary.f32(i32 12, float %5083)  ; Cos(value)
  %5086 = fsub fast float -0.000000e+00, %5085
  %5087 = fmul fast float %5085, %5050
  %5088 = call float @dx.op.tertiary.f32(i32 46, float %5084, float %5051, float %5087)  ; FMad(a,b,c)
  %5089 = fmul fast float %5084, %5050
  %5090 = call float @dx.op.tertiary.f32(i32 46, float %5086, float %5051, float %5089)  ; FMad(a,b,c)
  %5091 = fadd fast float %5088, %5080
  %5092 = fadd fast float %5090, %5081
  %5093 = extractvalue %dx.types.CBufRet.f32 %5003, 3
  %5094 = bitcast float %5093 to i32
  %5095 = icmp eq i32 %5094, 0
  br i1 %5095, label %5134, label %5096

; <label>:5096                                    ; preds = %4999
  %5097 = add i32 %5094, 0
  %5098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5098, %dx.types.Handle %106, float %5091, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float %5054, float %5055, float undef, float %5058, float %5059, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 1
  %5103 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5104 = fsub fast float 1.000000e+00, %4993
  %5105 = call float @dx.op.binary.f32(i32 35, float %5104, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5106 = bitcast float %4993 to i32
  %5107 = sitofp i32 %5106 to float
  %5108 = fadd fast float %5107, 0xC1CFBF8940000000
  %5109 = fmul fast float %5103, %5108
  %5110 = fadd fast float %5109, 0x41CFBF8940000000
  %5111 = fptosi float %5110 to i32
  %5112 = bitcast i32 %5111 to float
  %5113 = bitcast float %5105 to i32
  %5114 = sitofp i32 %5113 to float
  %5115 = fadd fast float %5114, 0xC1CFBF8940000000
  %5116 = fmul fast float %5115, %5103
  %5117 = fadd fast float %5116, 0x41CFBF8940000000
  %5118 = fptosi float %5117 to i32
  %5119 = bitcast i32 %5118 to float
  %5120 = fmul fast float %5112, %5102
  %5121 = fmul fast float %5119, %5102
  %5122 = fsub fast float %5105, %5120
  %5123 = fadd fast float %5121, %5105
  %5124 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5126 = fsub fast float %5100, %5124
  %5127 = fsub fast float %5125, %5124
  %5128 = bitcast float %5127 to i32
  %5129 = sub nsw i32 2129859010, %5128
  %5130 = bitcast i32 %5129 to float
  %5131 = fmul fast float %5130, %5126
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fcmp fast olt float %5132, 0x3F70101020000000
  br i1 %5133, label %5272, label %5134

; <label>:5134                                    ; preds = %5096, %4999
  %5135 = phi float [ %5132, %5096 ], [ %4993, %4999 ]
  %5136 = fmul fast float %5135, %5002
  %5137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5138 = extractvalue %dx.types.CBufRet.i32 %5137, 1
  %5139 = extractvalue %dx.types.CBufRet.i32 %5137, 0
  %5140 = add i32 %5139, 0
  %5141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5142 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5141, %dx.types.Handle %105, float %5091, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float %5054, float %5055, float undef, float %5058, float %5059, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 0
  %5144 = extractvalue %dx.types.ResRet.f32 %5142, 1
  %5145 = extractvalue %dx.types.ResRet.f32 %5142, 2
  %5146 = extractvalue %dx.types.ResRet.f32 %5142, 3
  %5147 = and i32 %5138, 255
  %5148 = uitofp i32 %5147 to float
  %5149 = lshr i32 %5138, 8
  %5150 = and i32 %5149, 255
  %5151 = uitofp i32 %5150 to float
  %5152 = fmul fast float %5146, %5148
  %5153 = fadd fast float %5152, %5151
  %5154 = fmul fast float %5153, 0x3F70101000000000
  %5155 = fadd fast float %5154, 0xBFB99999A0000000
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = fmul fast float %5156, 0x3FF1C71C80000000
  %5158 = call float @dx.op.binary.f32(i32 36, float %5154, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5159 = fsub fast float 1.000000e+00, %5157
  %5160 = call float @dx.op.unary.f32(i32 7, float %5159)  ; Saturate(value)
  %5161 = fmul fast float %5160, %5143
  %5162 = fmul fast float %5160, %5144
  %5163 = fmul fast float %5160, %5145
  %5164 = call float @dx.op.unary.f32(i32 7, float %5161)  ; Saturate(value)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5166 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5167 = fmul fast float %5157, %5143
  %5168 = fmul fast float %5157, %5144
  %5169 = fmul fast float %5157, %5145
  %5170 = fadd fast float %5167, %5158
  %5171 = fadd fast float %5168, %5158
  %5172 = fadd fast float %5169, %5158
  %5173 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5174 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5175 = call float @dx.op.unary.f32(i32 7, float %5172)  ; Saturate(value)
  %5176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5177 = extractvalue %dx.types.CBufRet.i32 %5176, 3
  %5178 = extractvalue %dx.types.CBufRet.i32 %5176, 2
  %5179 = add i32 %5178, 0
  %5180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5181 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5180, %dx.types.Handle %105, float %5091, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float %5054, float %5055, float undef, float %5058, float %5059, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5182 = extractvalue %dx.types.ResRet.f32 %5181, 0
  %5183 = extractvalue %dx.types.ResRet.f32 %5181, 1
  %5184 = extractvalue %dx.types.ResRet.f32 %5181, 2
  %5185 = extractvalue %dx.types.ResRet.f32 %5181, 3
  %5186 = and i32 %5177, 255
  %5187 = uitofp i32 %5186 to float
  %5188 = lshr i32 %5177, 8
  %5189 = and i32 %5188, 255
  %5190 = uitofp i32 %5189 to float
  %5191 = lshr i32 %5177, 16
  %5192 = and i32 %5191, 255
  %5193 = uitofp i32 %5192 to float
  %5194 = fmul fast float %5193, 0x3F70101000000000
  %5195 = fmul fast float %5182, %5187
  %5196 = fadd fast float %5195, %5190
  %5197 = fmul fast float %5196, 0x3F70101000000000
  %5198 = fadd fast float %5183, -5.000000e-01
  %5199 = fadd fast float %5185, -5.000000e-01
  %5200 = fmul fast float %5198, %5194
  %5201 = fmul fast float %5199, %5194
  %5202 = fadd fast float %5200, 5.000000e-01
  %5203 = fadd fast float %5201, 5.000000e-01
  %5204 = fmul fast float %5202, 2.000000e+00
  %5205 = fadd fast float %5204, -1.000000e+00
  %5206 = fmul fast float %5203, 2.000000e+00
  %5207 = fadd fast float %5206, -1.000000e+00
  %5208 = fadd fast float %5205, %5207
  %5209 = fmul fast float %5208, 5.000000e-01
  %5210 = fsub fast float %5205, %5207
  %5211 = fmul fast float %5210, 5.000000e-01
  %5212 = call float @dx.op.unary.f32(i32 6, float %5209)  ; FAbs(value)
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = call float @dx.op.unary.f32(i32 6, float %5211)  ; FAbs(value)
  %5215 = fsub fast float %5213, %5214
  %5216 = call float @dx.op.dot3.f32(i32 55, float %5209, float %5211, float %5215, float %5209, float %5211, float %5215)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 25, float %5216)  ; Rsqrt(value)
  %5218 = fmul fast float %5209, %5217
  %5219 = fmul fast float %5211, %5217
  %5220 = select i1 %5047, i32 %5037, i32 %5038
  %5221 = select i1 %5045, i32 %5036, i32 %5220
  %5222 = sitofp i32 %5221 to float
  %5223 = fmul fast float %5215, %5222
  %5224 = fmul fast float %5223, %5217
  %5225 = select i1 %5047, float %5224, float %5219
  %5226 = select i1 %5047, float %5219, float %5224
  %5227 = select i1 %5045, float %5224, float %5218
  %5228 = select i1 %5045, float %5219, float %5225
  %5229 = select i1 %5045, float %5218, float %5226
  %5230 = fsub fast float %5164, %4721
  %5231 = fsub fast float %5165, %4722
  %5232 = fsub fast float %5166, %4723
  %5233 = fmul fast float %5230, %5136
  %5234 = fmul fast float %5231, %5136
  %5235 = fmul fast float %5232, %5136
  %5236 = fadd fast float %5233, %4721
  %5237 = fadd fast float %5234, %4722
  %5238 = fadd fast float %5235, %4723
  %5239 = fsub fast float %5173, %4681
  %5240 = fsub fast float %5174, %4682
  %5241 = fsub fast float %5175, %4683
  %5242 = fmul fast float %5239, %5136
  %5243 = fmul fast float %5240, %5136
  %5244 = fmul fast float %5241, %5136
  %5245 = fadd fast float %5242, %4681
  %5246 = fadd fast float %5243, %4682
  %5247 = fadd fast float %5244, %4683
  %5248 = fadd fast float %5227, %4639
  %5249 = fadd fast float %5228, %4640
  %5250 = fadd fast float %5229, %4641
  %5251 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %5248, float %5249, float %5250)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = call float @dx.op.unary.f32(i32 25, float %5251)  ; Rsqrt(value)
  %5253 = fmul fast float %5248, %5252
  %5254 = fmul fast float %5249, %5252
  %5255 = fmul fast float %5250, %5252
  %5256 = fsub fast float %5253, %4639
  %5257 = fsub fast float %5254, %4640
  %5258 = fsub fast float %5255, %4641
  %5259 = fmul fast float %5256, %5136
  %5260 = fmul fast float %5257, %5136
  %5261 = fmul fast float %5258, %5136
  %5262 = fadd fast float %5259, %4639
  %5263 = fadd fast float %5260, %4640
  %5264 = fadd fast float %5261, %4641
  %5265 = call float @dx.op.binary.f32(i32 36, float %4657, float %5184)  ; FMin(a,b)
  %5266 = fsub fast float %5265, %4657
  %5267 = fmul fast float %5266, %5136
  %5268 = fadd fast float %5267, %4657
  %5269 = fsub fast float %5197, %4684
  %5270 = fmul fast float %5269, %5136
  %5271 = fadd fast float %5270, %4684
  br label %5272

; <label>:5272                                    ; preds = %5134, %5096, %4998
  %5273 = phi float [ %5236, %5134 ], [ %4721, %5096 ], [ %4721, %4998 ]
  %5274 = phi float [ %5237, %5134 ], [ %4722, %5096 ], [ %4722, %4998 ]
  %5275 = phi float [ %5238, %5134 ], [ %4723, %5096 ], [ %4723, %4998 ]
  %5276 = phi float [ %5245, %5134 ], [ %4681, %5096 ], [ %4681, %4998 ]
  %5277 = phi float [ %5246, %5134 ], [ %4682, %5096 ], [ %4682, %4998 ]
  %5278 = phi float [ %5247, %5134 ], [ %4683, %5096 ], [ %4683, %4998 ]
  %5279 = phi float [ %5262, %5134 ], [ %4639, %5096 ], [ %4639, %4998 ]
  %5280 = phi float [ %5263, %5134 ], [ %4640, %5096 ], [ %4640, %4998 ]
  %5281 = phi float [ %5264, %5134 ], [ %4641, %5096 ], [ %4641, %4998 ]
  %5282 = phi float [ %5271, %5134 ], [ %4684, %5096 ], [ %4684, %4998 ]
  %5283 = phi float [ %5268, %5134 ], [ %4657, %5096 ], [ %4657, %4998 ]
  br i1 %4996, label %5284, label %5573

; <label>:5284                                    ; preds = %5272
  %5285 = call float @dx.op.unary.f32(i32 23, float %5283)  ; Log(value)
  %5286 = fmul fast float %5285, 4.000000e+00
  %5287 = call float @dx.op.unary.f32(i32 21, float %5286)  ; Exp(value)
  %5288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5289 = extractvalue %dx.types.CBufRet.f32 %5288, 0
  %5290 = fmul fast float %5289, %52
  %5291 = fmul fast float %5289, %53
  %5292 = fmul fast float %5289, %54
  %5293 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5294 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5295 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5296 = call float @dx.op.unary.f32(i32 23, float %5293)  ; Log(value)
  %5297 = call float @dx.op.unary.f32(i32 23, float %5294)  ; Log(value)
  %5298 = call float @dx.op.unary.f32(i32 23, float %5295)  ; Log(value)
  %5299 = fmul fast float %5296, 4.000000e+00
  %5300 = fmul fast float %5297, 4.000000e+00
  %5301 = fmul fast float %5298, 4.000000e+00
  %5302 = call float @dx.op.unary.f32(i32 21, float %5299)  ; Exp(value)
  %5303 = call float @dx.op.unary.f32(i32 21, float %5300)  ; Exp(value)
  %5304 = call float @dx.op.unary.f32(i32 21, float %5301)  ; Exp(value)
  %5305 = fadd fast float %5303, %5302
  %5306 = fadd fast float %5305, %5304
  %5307 = fdiv fast float 1.000000e+00, %5306
  %5308 = fmul fast float %5307, %5302
  %5309 = fcmp fast ogt float %61, 0.000000e+00
  %5310 = fcmp fast ogt float %62, 0.000000e+00
  %5311 = fcmp fast ogt float %63, 0.000000e+00
  %5312 = fcmp fast olt float %61, 0.000000e+00
  %5313 = fcmp fast olt float %62, 0.000000e+00
  %5314 = fcmp fast olt float %63, 0.000000e+00
  %5315 = zext i1 %5309 to i32
  %5316 = zext i1 %5310 to i32
  %5317 = zext i1 %5311 to i32
  %5318 = zext i1 %5312 to i32
  %5319 = zext i1 %5313 to i32
  %5320 = zext i1 %5314 to i32
  %5321 = sub nsw i32 %5315, %5318
  %5322 = sub nsw i32 %5316, %5319
  %5323 = sub nsw i32 %5317, %5320
  %5324 = call float @dx.op.unary.f32(i32 83, float %5290)  ; DerivCoarseX(value)
  %5325 = call float @dx.op.unary.f32(i32 83, float %5291)  ; DerivCoarseX(value)
  %5326 = call float @dx.op.unary.f32(i32 83, float %5292)  ; DerivCoarseX(value)
  %5327 = call float @dx.op.unary.f32(i32 84, float %5290)  ; DerivCoarseY(value)
  %5328 = call float @dx.op.unary.f32(i32 84, float %5291)  ; DerivCoarseY(value)
  %5329 = call float @dx.op.unary.f32(i32 84, float %5292)  ; DerivCoarseY(value)
  %5330 = fcmp fast ole float %260, %5308
  %5331 = fmul fast float %5307, %5305
  %5332 = fcmp fast ole float %260, %5331
  %5333 = select i1 %5332, float %5292, float %5290
  %5334 = select i1 %5332, float %5290, float %5291
  %5335 = select i1 %5330, float %5291, float %5333
  %5336 = select i1 %5330, float %5292, float %5334
  %5337 = select i1 %5332, float %5326, float %5324
  %5338 = select i1 %5332, float %5324, float %5325
  %5339 = select i1 %5330, float %5325, float %5337
  %5340 = select i1 %5330, float %5326, float %5338
  %5341 = select i1 %5332, float %5329, float %5327
  %5342 = select i1 %5332, float %5327, float %5328
  %5343 = select i1 %5330, float %5328, float %5341
  %5344 = select i1 %5330, float %5329, float %5342
  %5345 = call float @dx.op.unary.f32(i32 27, float %5335)  ; Round_ni(value)
  %5346 = call float @dx.op.unary.f32(i32 27, float %5336)  ; Round_ni(value)
  %5347 = fptosi float %5345 to i32
  %5348 = fptosi float %5346 to i32
  %5349 = xor i32 %5348, %5347
  %5350 = sitofp i32 %5349 to float
  %5351 = fptosi float %5350 to i32
  %5352 = sitofp i32 %5351 to float
  %5353 = fmul fast float %5352, 0x3FE3C6EF40000000
  %5354 = frem fast float %5345, 2.560000e+02
  %5355 = frem fast float %5346, 2.560000e+02
  %5356 = fptoui float %5354 to i32
  %5357 = fptoui float %5355 to i32
  %5358 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5356, i32 %5357, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5359 = extractvalue %dx.types.ResRet.f32 %5358, 0
  %5360 = extractvalue %dx.types.ResRet.f32 %5358, 1
  %5361 = extractvalue %dx.types.ResRet.f32 %5358, 2
  %5362 = fadd fast float %5359, %5353
  %5363 = fadd fast float %5360, %5353
  %5364 = fadd fast float %5361, %5353
  %5365 = call float @dx.op.unary.f32(i32 22, float %5362)  ; Frc(value)
  %5366 = call float @dx.op.unary.f32(i32 22, float %5363)  ; Frc(value)
  %5367 = call float @dx.op.unary.f32(i32 22, float %5364)  ; Frc(value)
  %5368 = fmul fast float %5367, 0x401921FB60000000
  %5369 = call float @dx.op.unary.f32(i32 13, float %5368)  ; Sin(value)
  %5370 = call float @dx.op.unary.f32(i32 12, float %5368)  ; Cos(value)
  %5371 = fsub fast float -0.000000e+00, %5370
  %5372 = fmul fast float %5370, %5335
  %5373 = call float @dx.op.tertiary.f32(i32 46, float %5369, float %5336, float %5372)  ; FMad(a,b,c)
  %5374 = fmul fast float %5369, %5335
  %5375 = call float @dx.op.tertiary.f32(i32 46, float %5371, float %5336, float %5374)  ; FMad(a,b,c)
  %5376 = fadd fast float %5373, %5365
  %5377 = fadd fast float %5375, %5366
  %5378 = extractvalue %dx.types.CBufRet.f32 %5288, 3
  %5379 = bitcast float %5378 to i32
  %5380 = icmp eq i32 %5379, 0
  br i1 %5380, label %5419, label %5381

; <label>:5381                                    ; preds = %5284
  %5382 = add i32 %5379, 0
  %5383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5384 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5383, %dx.types.Handle %106, float %5376, float %5377, float undef, float undef, i32 0, i32 0, i32 undef, float %5339, float %5340, float undef, float %5343, float %5344, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5385 = extractvalue %dx.types.ResRet.f32 %5384, 0
  %5386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5387 = extractvalue %dx.types.CBufRet.f32 %5386, 1
  %5388 = extractvalue %dx.types.CBufRet.f32 %5386, 2
  %5389 = fsub fast float 1.000000e+00, %4994
  %5390 = call float @dx.op.binary.f32(i32 35, float %5389, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5391 = bitcast float %4994 to i32
  %5392 = sitofp i32 %5391 to float
  %5393 = fadd fast float %5392, 0xC1CFBF8940000000
  %5394 = fmul fast float %5388, %5393
  %5395 = fadd fast float %5394, 0x41CFBF8940000000
  %5396 = fptosi float %5395 to i32
  %5397 = bitcast i32 %5396 to float
  %5398 = bitcast float %5390 to i32
  %5399 = sitofp i32 %5398 to float
  %5400 = fadd fast float %5399, 0xC1CFBF8940000000
  %5401 = fmul fast float %5400, %5388
  %5402 = fadd fast float %5401, 0x41CFBF8940000000
  %5403 = fptosi float %5402 to i32
  %5404 = bitcast i32 %5403 to float
  %5405 = fmul fast float %5397, %5387
  %5406 = fmul fast float %5404, %5387
  %5407 = fsub fast float %5390, %5405
  %5408 = fadd fast float %5406, %5390
  %5409 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5410 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5411 = fsub fast float %5385, %5409
  %5412 = fsub fast float %5410, %5409
  %5413 = bitcast float %5412 to i32
  %5414 = sub nsw i32 2129859010, %5413
  %5415 = bitcast i32 %5414 to float
  %5416 = fmul fast float %5415, %5411
  %5417 = call float @dx.op.unary.f32(i32 7, float %5416)  ; Saturate(value)
  %5418 = fcmp fast olt float %5417, 0x3F70101020000000
  br i1 %5418, label %5573, label %5419

; <label>:5419                                    ; preds = %5381, %5284
  %5420 = phi float [ %5417, %5381 ], [ %4994, %5284 ]
  %5421 = fmul fast float %5420, %5287
  %5422 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5423 = extractvalue %dx.types.CBufRet.i32 %5422, 1
  %5424 = extractvalue %dx.types.CBufRet.i32 %5422, 0
  %5425 = add i32 %5424, 0
  %5426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5427 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5426, %dx.types.Handle %105, float %5376, float %5377, float undef, float undef, i32 0, i32 0, i32 undef, float %5339, float %5340, float undef, float %5343, float %5344, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = extractvalue %dx.types.ResRet.f32 %5427, 1
  %5430 = extractvalue %dx.types.ResRet.f32 %5427, 2
  %5431 = extractvalue %dx.types.ResRet.f32 %5427, 3
  %5432 = and i32 %5423, 255
  %5433 = uitofp i32 %5432 to float
  %5434 = lshr i32 %5423, 8
  %5435 = and i32 %5434, 255
  %5436 = uitofp i32 %5435 to float
  %5437 = fmul fast float %5431, %5433
  %5438 = fadd fast float %5437, %5436
  %5439 = fmul fast float %5438, 0x3F70101000000000
  %5440 = fadd fast float %5439, 0xBFB99999A0000000
  %5441 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5442 = fmul fast float %5441, 0x3FF1C71C80000000
  %5443 = call float @dx.op.binary.f32(i32 36, float %5439, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5444 = fsub fast float 1.000000e+00, %5442
  %5445 = call float @dx.op.unary.f32(i32 7, float %5444)  ; Saturate(value)
  %5446 = fmul fast float %5445, %5428
  %5447 = fmul fast float %5445, %5429
  %5448 = fmul fast float %5445, %5430
  %5449 = call float @dx.op.unary.f32(i32 7, float %5446)  ; Saturate(value)
  %5450 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5452 = fmul fast float %5442, %5428
  %5453 = fmul fast float %5442, %5429
  %5454 = fmul fast float %5442, %5430
  %5455 = fadd fast float %5452, %5443
  %5456 = fadd fast float %5453, %5443
  %5457 = fadd fast float %5454, %5443
  %5458 = call float @dx.op.unary.f32(i32 7, float %5455)  ; Saturate(value)
  %5459 = call float @dx.op.unary.f32(i32 7, float %5456)  ; Saturate(value)
  %5460 = call float @dx.op.unary.f32(i32 7, float %5457)  ; Saturate(value)
  %5461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.i32 %5461, 3
  %5463 = extractvalue %dx.types.CBufRet.i32 %5461, 2
  %5464 = add i32 %5463, 0
  %5465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5466 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5465, %dx.types.Handle %105, float %5376, float %5377, float undef, float undef, i32 0, i32 0, i32 undef, float %5339, float %5340, float undef, float %5343, float %5344, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5467 = extractvalue %dx.types.ResRet.f32 %5466, 0
  %5468 = extractvalue %dx.types.ResRet.f32 %5466, 1
  %5469 = extractvalue %dx.types.ResRet.f32 %5466, 2
  %5470 = extractvalue %dx.types.ResRet.f32 %5466, 3
  %5471 = and i32 %5462, 255
  %5472 = uitofp i32 %5471 to float
  %5473 = lshr i32 %5462, 8
  %5474 = and i32 %5473, 255
  %5475 = uitofp i32 %5474 to float
  %5476 = lshr i32 %5462, 16
  %5477 = and i32 %5476, 255
  %5478 = uitofp i32 %5477 to float
  %5479 = fmul fast float %5478, 0x3F70101000000000
  %5480 = fmul fast float %5467, %5472
  %5481 = fadd fast float %5480, %5475
  %5482 = fmul fast float %5481, 0x3F70101000000000
  %5483 = fadd fast float %5468, -5.000000e-01
  %5484 = fadd fast float %5470, -5.000000e-01
  %5485 = fmul fast float %5483, %5479
  %5486 = fmul fast float %5484, %5479
  %5487 = fadd fast float %5485, 5.000000e-01
  %5488 = fadd fast float %5486, 5.000000e-01
  %5489 = fmul fast float %5487, 2.000000e+00
  %5490 = fadd fast float %5489, -1.000000e+00
  %5491 = fmul fast float %5488, 2.000000e+00
  %5492 = fadd fast float %5491, -1.000000e+00
  %5493 = fadd fast float %5490, %5492
  %5494 = fmul fast float %5493, 5.000000e-01
  %5495 = fsub fast float %5490, %5492
  %5496 = fmul fast float %5495, 5.000000e-01
  %5497 = call float @dx.op.unary.f32(i32 6, float %5494)  ; FAbs(value)
  %5498 = fsub fast float 1.000000e+00, %5497
  %5499 = call float @dx.op.unary.f32(i32 6, float %5496)  ; FAbs(value)
  %5500 = fsub fast float %5498, %5499
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5496, float %5500, float %5494, float %5496, float %5500)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = call float @dx.op.unary.f32(i32 25, float %5501)  ; Rsqrt(value)
  %5503 = fmul fast float %5494, %5502
  %5504 = fmul fast float %5496, %5502
  %5505 = select i1 %5332, i32 %5322, i32 %5323
  %5506 = select i1 %5330, i32 %5321, i32 %5505
  %5507 = sitofp i32 %5506 to float
  %5508 = fmul fast float %5500, %5507
  %5509 = fmul fast float %5508, %5502
  %5510 = select i1 %5332, float %5509, float %5504
  %5511 = select i1 %5332, float %5504, float %5509
  %5512 = select i1 %5330, float %5509, float %5503
  %5513 = select i1 %5330, float %5504, float %5510
  %5514 = select i1 %5330, float %5503, float %5511
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 0
  %5517 = fptoui float %5516 to i32
  %5518 = add i32 %5517, 0
  %5519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5520 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5519, %dx.types.Handle %105, float %5376, float %5377, float undef, float undef, i32 0, i32 0, i32 undef, float %5339, float %5340, float undef, float %5343, float %5344, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5521 = extractvalue %dx.types.ResRet.f32 %5520, 0
  %5522 = fsub fast float %5449, %5273
  %5523 = fsub fast float %5450, %5274
  %5524 = fsub fast float %5451, %5275
  %5525 = fmul fast float %5522, %5421
  %5526 = fmul fast float %5523, %5421
  %5527 = fmul fast float %5524, %5421
  %5528 = fadd fast float %5525, %5273
  %5529 = fadd fast float %5526, %5274
  %5530 = fadd fast float %5527, %5275
  %5531 = fsub fast float %5458, %5276
  %5532 = fsub fast float %5459, %5277
  %5533 = fsub fast float %5460, %5278
  %5534 = fmul fast float %5531, %5421
  %5535 = fmul fast float %5532, %5421
  %5536 = fmul fast float %5533, %5421
  %5537 = fadd fast float %5534, %5276
  %5538 = fadd fast float %5535, %5277
  %5539 = fadd fast float %5536, %5278
  %5540 = fadd fast float %5512, %5279
  %5541 = fadd fast float %5513, %5280
  %5542 = fadd fast float %5514, %5281
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5540, float %5541, float %5542, float %5540, float %5541, float %5542)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = call float @dx.op.unary.f32(i32 25, float %5543)  ; Rsqrt(value)
  %5545 = fmul fast float %5544, %5540
  %5546 = fmul fast float %5544, %5541
  %5547 = fmul fast float %5544, %5542
  %5548 = fsub fast float %5545, %5279
  %5549 = fsub fast float %5546, %5280
  %5550 = fsub fast float %5547, %5281
  %5551 = fmul fast float %5548, %5421
  %5552 = fmul fast float %5549, %5421
  %5553 = fmul fast float %5550, %5421
  %5554 = fadd fast float %5551, %5279
  %5555 = fadd fast float %5552, %5280
  %5556 = fadd fast float %5553, %5281
  %5557 = call float @dx.op.binary.f32(i32 36, float %5283, float %5469)  ; FMin(a,b)
  %5558 = fsub fast float %5557, %5283
  %5559 = fmul fast float %5558, %5421
  %5560 = fadd fast float %5559, %5283
  %5561 = fsub fast float %5482, %5282
  %5562 = fmul fast float %5561, %5421
  %5563 = fadd fast float %5562, %5282
  %5564 = fsub fast float %5521, %4725
  %5565 = fsub fast float %5521, %4726
  %5566 = fsub fast float %5521, %4727
  %5567 = fmul fast float %5564, %5421
  %5568 = fmul fast float %5565, %5421
  %5569 = fmul fast float %5566, %5421
  %5570 = fadd fast float %5567, %4725
  %5571 = fadd fast float %5568, %4726
  %5572 = fadd fast float %5569, %4727
  br label %5573

; <label>:5573                                    ; preds = %5419, %5381, %5272, %4986
  %5574 = phi float [ %5528, %5419 ], [ %5273, %5381 ], [ %5273, %5272 ], [ %4721, %4986 ]
  %5575 = phi float [ %5529, %5419 ], [ %5274, %5381 ], [ %5274, %5272 ], [ %4722, %4986 ]
  %5576 = phi float [ %5530, %5419 ], [ %5275, %5381 ], [ %5275, %5272 ], [ %4723, %4986 ]
  %5577 = phi float [ %5537, %5419 ], [ %5276, %5381 ], [ %5276, %5272 ], [ %4681, %4986 ]
  %5578 = phi float [ %5538, %5419 ], [ %5277, %5381 ], [ %5277, %5272 ], [ %4682, %4986 ]
  %5579 = phi float [ %5539, %5419 ], [ %5278, %5381 ], [ %5278, %5272 ], [ %4683, %4986 ]
  %5580 = phi float [ %5554, %5419 ], [ %5279, %5381 ], [ %5279, %5272 ], [ %4639, %4986 ]
  %5581 = phi float [ %5555, %5419 ], [ %5280, %5381 ], [ %5280, %5272 ], [ %4640, %4986 ]
  %5582 = phi float [ %5556, %5419 ], [ %5281, %5381 ], [ %5281, %5272 ], [ %4641, %4986 ]
  %5583 = phi float [ %5570, %5419 ], [ %4725, %5381 ], [ %4725, %5272 ], [ %4725, %4986 ]
  %5584 = phi float [ %5571, %5419 ], [ %4726, %5381 ], [ %4726, %5272 ], [ %4726, %4986 ]
  %5585 = phi float [ %5572, %5419 ], [ %4727, %5381 ], [ %4727, %5272 ], [ %4727, %4986 ]
  %5586 = phi float [ %5563, %5419 ], [ %5282, %5381 ], [ %5282, %5272 ], [ %4684, %4986 ]
  %5587 = phi float [ %5560, %5419 ], [ %5283, %5381 ], [ %5283, %5272 ], [ %4657, %4986 ]
  %5588 = fcmp fast une float %4991, 0.000000e+00
  %5589 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.unary.f32(i32 25, float %5589)  ; Rsqrt(value)
  br i1 %5588, label %5598, label %5591

; <label>:5591                                    ; preds = %5573
  %5592 = fmul fast float %5590, %188
  %5593 = fmul fast float %5590, %189
  %5594 = fmul fast float %5590, %190
  %5595 = fsub fast float -0.000000e+00, %5592
  %5596 = fsub fast float -0.000000e+00, %5593
  %5597 = fsub fast float -0.000000e+00, %5594
  br label %5958

; <label>:5598                                    ; preds = %5573
  %5599 = fmul fast float %188, %5590
  %5600 = fsub fast float -0.000000e+00, %5599
  %5601 = fmul fast float %189, %5590
  %5602 = fsub fast float -0.000000e+00, %5601
  %5603 = fmul fast float %190, %5590
  %5604 = fsub fast float -0.000000e+00, %5603
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5602, float %5604, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = fmul fast float %4991, 2.500000e+00
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = fmul fast float %4991, 0x4013FFFFE0000000
  %5610 = fadd fast float %5609, 0xBFFFFFFFE0000000
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5612 = fmul fast float %4991, 0x4004000020000000
  %5613 = fadd fast float %5612, 0xBFF8000040000000
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = fmul fast float %4663, 1.000000e+01
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fmul fast float %5616, 2.000000e+00
  %5618 = fsub fast float 3.000000e+00, %5617
  %5619 = fmul fast float %5616, %5616
  %5620 = fmul fast float %5619, %5618
  %5621 = fsub fast float 1.000000e+00, %5620
  %5622 = fsub fast float 0x3FE3333340000000, %5586
  %5623 = fmul fast float %5622, 0x400AAAAAA0000000
  %5624 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5625 = fmul fast float %5621, %5624
  %5626 = fmul fast float %5574, 0x3FEA2B8620000000
  %5627 = fmul fast float %5575, 0x3FEA2B8620000000
  %5628 = fmul fast float %5576, 0x3FEA2B8620000000
  %5629 = fadd fast float %5626, 0x3FC81DFBA0000000
  %5630 = fmul fast float %5629, %5574
  %5631 = fadd fast float %5630, 0x3F910E6020000000
  %5632 = fadd fast float %5627, 0x3FC81DFBA0000000
  %5633 = fmul fast float %5632, %5575
  %5634 = fadd fast float %5633, 0x3F910E6020000000
  %5635 = fadd fast float %5628, 0x3FC81DFBA0000000
  %5636 = fmul fast float %5635, %5576
  %5637 = fadd fast float %5636, 0x3F910E6020000000
  %5638 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5639 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5640 = call float @dx.op.unary.f32(i32 7, float %5637)  ; Saturate(value)
  %5641 = fsub fast float %5638, %5574
  %5642 = fsub fast float %5639, %5575
  %5643 = fsub fast float %5640, %5576
  %5644 = fmul fast float %5641, %5608
  %5645 = fmul fast float %5644, %5625
  %5646 = fmul fast float %5642, %5608
  %5647 = fmul fast float %5646, %5625
  %5648 = fmul fast float %5643, %5608
  %5649 = fmul fast float %5648, %5625
  %5650 = fadd fast float %5645, %5574
  %5651 = fadd fast float %5647, %5575
  %5652 = fadd fast float %5649, %5576
  %5653 = fmul fast float %5587, %5587
  %5654 = fmul fast float %5653, %5653
  %5655 = fadd fast float %5611, 1.000000e+00
  %5656 = fsub fast float %5655, %5625
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5658 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fsub fast float 1.000000e+00, %5654
  %5661 = call float @dx.op.binary.f32(i32 36, float %5657, float %5660)  ; FMin(a,b)
  %5662 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5663 = call float @dx.op.binary.f32(i32 35, float %5661, float %5662)  ; FMax(a,b)
  %5664 = fadd fast float %5659, 0xBFE4CCCCC0000000
  %5665 = fmul fast float %5664, 0x4006DB6DA0000000
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fmul fast float %5666, 2.000000e+00
  %5668 = fsub fast float 3.000000e+00, %5667
  %5669 = bitcast float %5577 to i32
  %5670 = ashr i32 %5669, 1
  %5671 = add nsw i32 %5670, 532487669
  %5672 = bitcast i32 %5671 to float
  %5673 = fsub fast float 1.000000e+00, %5672
  %5674 = bitcast float %5673 to i32
  %5675 = sub nsw i32 2129859010, %5674
  %5676 = bitcast i32 %5675 to float
  %5677 = fmul fast float %5676, 2.000000e+00
  %5678 = bitcast float %5578 to i32
  %5679 = ashr i32 %5678, 1
  %5680 = add nsw i32 %5679, 532487669
  %5681 = bitcast i32 %5680 to float
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = bitcast float %5682 to i32
  %5684 = sub nsw i32 2129859010, %5683
  %5685 = bitcast i32 %5684 to float
  %5686 = fmul fast float %5685, 2.000000e+00
  %5687 = bitcast float %5579 to i32
  %5688 = ashr i32 %5687, 1
  %5689 = add nsw i32 %5688, 532487669
  %5690 = bitcast i32 %5689 to float
  %5691 = fsub fast float 1.000000e+00, %5690
  %5692 = bitcast float %5691 to i32
  %5693 = sub nsw i32 2129859010, %5692
  %5694 = bitcast i32 %5693 to float
  %5695 = fmul fast float %5694, 2.000000e+00
  %5696 = fsub fast float 0x4002A9FBE0000000, %5677
  %5697 = fadd fast float %5677, 0x3FD54FDF00000000
  %5698 = bitcast float %5697 to i32
  %5699 = sub nsw i32 2129859010, %5698
  %5700 = bitcast i32 %5699 to float
  %5701 = fmul fast float %5700, %5696
  %5702 = fmul fast float %5701, %5701
  %5703 = fsub fast float 0x4002A9FBE0000000, %5686
  %5704 = fadd fast float %5686, 0x3FD54FDF00000000
  %5705 = bitcast float %5704 to i32
  %5706 = sub nsw i32 2129859010, %5705
  %5707 = bitcast i32 %5706 to float
  %5708 = fmul fast float %5707, %5703
  %5709 = fmul fast float %5708, %5708
  %5710 = fsub fast float 0x4002A9FBE0000000, %5695
  %5711 = fadd fast float %5695, 0x3FD54FDF00000000
  %5712 = bitcast float %5711 to i32
  %5713 = sub nsw i32 2129859010, %5712
  %5714 = bitcast i32 %5713 to float
  %5715 = fmul fast float %5714, %5710
  %5716 = fmul fast float %5715, %5715
  %5717 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5702)  ; FMax(a,b)
  %5718 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5709)  ; FMax(a,b)
  %5719 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5716)  ; FMax(a,b)
  %5720 = fsub fast float 1.000000e+00, %5605
  %5721 = fadd fast float %5720, %5621
  %5722 = call float @dx.op.unary.f32(i32 7, float %5721)  ; Saturate(value)
  %5723 = fsub fast float 1.000000e+00, %4810
  %5724 = fmul fast float %5663, %5723
  %5725 = fmul fast float %5666, %5666
  %5726 = fmul fast float %5725, %5724
  %5727 = fmul fast float %5726, %5668
  %5728 = fmul fast float %5723, 0xBFE99999A0000000
  %5729 = fmul fast float %5728, %5608
  %5730 = fmul fast float %5729, %5625
  %5731 = fadd fast float %5730, 1.000000e+00
  %5732 = fadd fast float %5586, -1.000000e+00
  %5733 = fmul fast float %5731, %5732
  %5734 = fadd fast float %5733, 1.000000e+00
  %5735 = fsub fast float %5717, %5577
  %5736 = fsub fast float %5718, %5578
  %5737 = fsub fast float %5719, %5579
  %5738 = fmul fast float %5727, %5735
  %5739 = fmul fast float %5727, %5736
  %5740 = fmul fast float %5727, %5737
  %5741 = fadd fast float %5738, %5577
  %5742 = fadd fast float %5739, %5578
  %5743 = fadd fast float %5740, %5579
  %5744 = fsub fast float %116, %5580
  %5745 = fsub fast float %117, %5581
  %5746 = fsub fast float %118, %5582
  %5747 = fmul fast float %5727, %5744
  %5748 = fmul fast float %5727, %5745
  %5749 = fmul fast float %5727, %5746
  %5750 = fadd fast float %5747, %5580
  %5751 = fadd fast float %5748, %5581
  %5752 = fadd fast float %5749, %5582
  %5753 = fmul fast float %5727, %5722
  %5754 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5755 = fsub fast float 1.000000e+00, %5754
  %5756 = fmul fast float %5753, %5755
  %5757 = fadd fast float %5756, %5754
  %5758 = fsub fast float 1.000000e+00, %5587
  %5759 = fmul fast float %5727, %5758
  %5760 = fadd fast float %5759, %5587
  %5761 = fcmp fast une float %4992, 0.000000e+00
  %5762 = fcmp fast ogt float %5659, 0x3FE4CCCCC0000000
  %5763 = and i1 %5761, %5762
  br i1 %5763, label %5764, label %5950

; <label>:5764                                    ; preds = %5598
  %5765 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5766 = fadd fast float %5765, %189
  %5767 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5768 = fadd fast float %5767, %188
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 3
  %5771 = fadd fast float %5770, 0x3FC0A3D700000000
  %5772 = fmul fast float %5771, 0x3FF6666660000000
  %5773 = fmul fast float %5770, 0x3FF2978D40000000
  %5774 = fmul fast float %5770, 0x3FF5BA5E40000000
  %5775 = fmul fast float %5770, 0x3FF94FDF40000000
  %5776 = call float @dx.op.unary.f32(i32 6, float %5768)  ; FAbs(value)
  %5777 = call float @dx.op.unary.f32(i32 6, float %5766)  ; FAbs(value)
  %5778 = fmul fast float %5776, 0x3F8EB851E0000000
  %5779 = fmul fast float %5777, 0x3F8EB851E0000000
  %5780 = fmul fast float %4992, 4.000000e+00
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = fadd fast float %5778, 2.500000e-01
  %5783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5782, float %5779, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.ResRet.f32 %5783, 1
  %5786 = extractvalue %dx.types.ResRet.f32 %5783, 2
  %5787 = extractvalue %dx.types.ResRet.f32 %5783, 3
  %5788 = fmul fast float %5785, 2.000000e+00
  %5789 = fmul fast float %5786, 2.000000e+00
  %5790 = fadd fast float %5788, -1.000000e+00
  %5791 = fadd fast float %5789, -1.000000e+00
  %5792 = fsub fast float 1.000000e+00, %5781
  %5793 = fmul fast float %5792, 8.000000e+00
  %5794 = call float @dx.op.unary.f32(i32 21, float %5793)  ; Exp(value)
  %5795 = fmul fast float %5787, %5794
  %5796 = fadd fast float %5772, -1.000000e+00
  %5797 = fadd fast float %5796, %5787
  %5798 = fadd fast float %5797, %5795
  %5799 = frem fast float %5798, %5794
  %5800 = fcmp fast ole float %5799, 1.000000e+00
  %5801 = call float @dx.op.unary.f32(i32 22, float %5799)  ; Frc(value)
  %5802 = select i1 %5800, float %5801, float 0.000000e+00
  %5803 = fadd fast float %5784, -1.000000e+00
  %5804 = fadd fast float %5803, %5802
  %5805 = fsub fast float 1.000000e+00, %5802
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  %5807 = fmul fast float %5806, %5784
  %5808 = fmul fast float %5804, 8.000000e+00
  %5809 = call float @dx.op.binary.f32(i32 35, float %5808, float 0.000000e+00)  ; FMax(a,b)
  %5810 = call float @dx.op.binary.f32(i32 36, float %5809, float 4.000000e+00)  ; FMin(a,b)
  %5811 = fmul fast float %5810, 0x400921FB60000000
  %5812 = call float @dx.op.unary.f32(i32 13, float %5811)  ; Sin(value)
  %5813 = fadd fast float %5802, -1.000000e+00
  %5814 = fmul fast float %5807, %5813
  %5815 = fmul fast float %5814, %5812
  %5816 = fmul fast float %5815, %5790
  %5817 = fmul fast float %5815, %5791
  %5818 = fadd fast float %5780, -1.000000e+00
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = fadd fast float %5778, 0xBFE19999A0000000
  %5821 = fadd fast float %5779, 0x3FD3D70A40000000
  %5822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5820, float %5821, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5823 = extractvalue %dx.types.ResRet.f32 %5822, 0
  %5824 = extractvalue %dx.types.ResRet.f32 %5822, 1
  %5825 = extractvalue %dx.types.ResRet.f32 %5822, 2
  %5826 = extractvalue %dx.types.ResRet.f32 %5822, 3
  %5827 = fmul fast float %5824, 2.000000e+00
  %5828 = fmul fast float %5825, 2.000000e+00
  %5829 = fadd fast float %5827, -1.000000e+00
  %5830 = fadd fast float %5828, -1.000000e+00
  %5831 = fsub fast float 1.000000e+00, %5819
  %5832 = fmul fast float %5831, 8.000000e+00
  %5833 = call float @dx.op.unary.f32(i32 21, float %5832)  ; Exp(value)
  %5834 = fmul fast float %5826, %5833
  %5835 = fadd fast float %5773, 0xBFE5B22D00000000
  %5836 = fadd fast float %5835, %5826
  %5837 = fadd fast float %5836, %5834
  %5838 = frem fast float %5837, %5833
  %5839 = fcmp fast ole float %5838, 1.000000e+00
  %5840 = call float @dx.op.unary.f32(i32 22, float %5838)  ; Frc(value)
  %5841 = select i1 %5839, float %5840, float 0.000000e+00
  %5842 = fadd fast float %5823, -1.000000e+00
  %5843 = fadd fast float %5842, %5841
  %5844 = fsub fast float 1.000000e+00, %5841
  %5845 = call float @dx.op.unary.f32(i32 7, float %5844)  ; Saturate(value)
  %5846 = fmul fast float %5845, %5823
  %5847 = fmul fast float %5843, 8.000000e+00
  %5848 = call float @dx.op.binary.f32(i32 35, float %5847, float 0.000000e+00)  ; FMax(a,b)
  %5849 = call float @dx.op.binary.f32(i32 36, float %5848, float 4.000000e+00)  ; FMin(a,b)
  %5850 = fmul fast float %5849, 0x400921FB60000000
  %5851 = call float @dx.op.unary.f32(i32 13, float %5850)  ; Sin(value)
  %5852 = fadd fast float %5841, -1.000000e+00
  %5853 = fmul fast float %5846, %5852
  %5854 = fmul fast float %5853, %5851
  %5855 = fmul fast float %5854, %5829
  %5856 = fmul fast float %5854, %5830
  %5857 = fadd fast float %5780, -2.000000e+00
  %5858 = call float @dx.op.unary.f32(i32 7, float %5857)  ; Saturate(value)
  %5859 = fadd fast float %5778, 0x3FE3333340000000
  %5860 = fadd fast float %5779, 0x3FEB333340000000
  %5861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5859, float %5860, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5862 = extractvalue %dx.types.ResRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.ResRet.f32 %5861, 1
  %5864 = extractvalue %dx.types.ResRet.f32 %5861, 2
  %5865 = extractvalue %dx.types.ResRet.f32 %5861, 3
  %5866 = fmul fast float %5863, 2.000000e+00
  %5867 = fmul fast float %5864, 2.000000e+00
  %5868 = fadd fast float %5866, -1.000000e+00
  %5869 = fadd fast float %5867, -1.000000e+00
  %5870 = fsub fast float 1.000000e+00, %5858
  %5871 = fmul fast float %5870, 8.000000e+00
  %5872 = call float @dx.op.unary.f32(i32 21, float %5871)  ; Exp(value)
  %5873 = fmul fast float %5865, %5872
  %5874 = fadd fast float %5774, 0xBFD5E35400000000
  %5875 = fadd fast float %5874, %5865
  %5876 = fadd fast float %5875, %5873
  %5877 = frem fast float %5876, %5872
  %5878 = fcmp fast ole float %5877, 1.000000e+00
  %5879 = call float @dx.op.unary.f32(i32 22, float %5877)  ; Frc(value)
  %5880 = select i1 %5878, float %5879, float 0.000000e+00
  %5881 = fadd fast float %5862, -1.000000e+00
  %5882 = fadd fast float %5881, %5880
  %5883 = fsub fast float 1.000000e+00, %5880
  %5884 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5885 = fmul fast float %5884, %5862
  %5886 = fmul fast float %5882, 8.000000e+00
  %5887 = call float @dx.op.binary.f32(i32 35, float %5886, float 0.000000e+00)  ; FMax(a,b)
  %5888 = call float @dx.op.binary.f32(i32 36, float %5887, float 4.000000e+00)  ; FMin(a,b)
  %5889 = fmul fast float %5888, 0x400921FB60000000
  %5890 = call float @dx.op.unary.f32(i32 13, float %5889)  ; Sin(value)
  %5891 = fadd fast float %5880, -1.000000e+00
  %5892 = fmul fast float %5885, %5891
  %5893 = fmul fast float %5892, %5890
  %5894 = fmul fast float %5893, %5868
  %5895 = fmul fast float %5893, %5869
  %5896 = fadd fast float %5780, -3.000000e+00
  %5897 = call float @dx.op.unary.f32(i32 7, float %5896)  ; Saturate(value)
  %5898 = fadd fast float %5778, 5.000000e-01
  %5899 = fadd fast float %5779, -7.500000e-01
  %5900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5898, float %5899, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5901 = extractvalue %dx.types.ResRet.f32 %5900, 0
  %5902 = extractvalue %dx.types.ResRet.f32 %5900, 1
  %5903 = extractvalue %dx.types.ResRet.f32 %5900, 2
  %5904 = extractvalue %dx.types.ResRet.f32 %5900, 3
  %5905 = fmul fast float %5902, 2.000000e+00
  %5906 = fmul fast float %5903, 2.000000e+00
  %5907 = fadd fast float %5905, -1.000000e+00
  %5908 = fadd fast float %5906, -1.000000e+00
  %5909 = fsub fast float 1.000000e+00, %5897
  %5910 = fmul fast float %5909, 8.000000e+00
  %5911 = call float @dx.op.unary.f32(i32 21, float %5910)  ; Exp(value)
  %5912 = fmul fast float %5904, %5911
  %5913 = fadd fast float %5775, 0xBF78938000000000
  %5914 = fadd fast float %5913, %5904
  %5915 = fadd fast float %5914, %5912
  %5916 = frem fast float %5915, %5911
  %5917 = fcmp fast ole float %5916, 1.000000e+00
  %5918 = call float @dx.op.unary.f32(i32 22, float %5916)  ; Frc(value)
  %5919 = select i1 %5917, float %5918, float 0.000000e+00
  %5920 = fadd fast float %5901, -1.000000e+00
  %5921 = fadd fast float %5920, %5919
  %5922 = fsub fast float 1.000000e+00, %5919
  %5923 = call float @dx.op.unary.f32(i32 7, float %5922)  ; Saturate(value)
  %5924 = fmul fast float %5923, %5901
  %5925 = fmul fast float %5921, 8.000000e+00
  %5926 = call float @dx.op.binary.f32(i32 35, float %5925, float 0.000000e+00)  ; FMax(a,b)
  %5927 = call float @dx.op.binary.f32(i32 36, float %5926, float 4.000000e+00)  ; FMin(a,b)
  %5928 = fmul fast float %5927, 0x400921FB60000000
  %5929 = call float @dx.op.unary.f32(i32 13, float %5928)  ; Sin(value)
  %5930 = fadd fast float %5919, -1.000000e+00
  %5931 = fmul fast float %5924, %5930
  %5932 = fmul fast float %5931, %5929
  %5933 = fmul fast float %5932, %5907
  %5934 = fmul fast float %5932, %5908
  %5935 = fadd fast float %5855, %5816
  %5936 = fadd fast float %5856, %5817
  %5937 = fadd fast float %5935, %5894
  %5938 = fadd fast float %5936, %5895
  %5939 = fadd fast float %5937, %5933
  %5940 = fadd fast float %5938, %5934
  %5941 = fmul fast float %5659, 0x4006DB6DA0000000
  %5942 = fadd fast float %5941, 0xBFFDB6DB40000000
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5944 = fmul fast float %5943, %5608
  %5945 = fmul fast float %5944, %5723
  %5946 = fmul fast float %5945, %5939
  %5947 = fmul fast float %5945, %5940
  %5948 = fadd fast float %5946, %5750
  %5949 = fadd fast float %5947, %5751
  br label %5950

; <label>:5950                                    ; preds = %5764, %5598
  %5951 = phi float [ %5750, %5598 ], [ %5948, %5764 ]
  %5952 = phi float [ %5751, %5598 ], [ %5949, %5764 ]
  %5953 = call float @dx.op.dot3.f32(i32 55, float %5951, float %5952, float %5752, float %5951, float %5952, float %5752)  ; Dot3(ax,ay,az,bx,by,bz)
  %5954 = call float @dx.op.unary.f32(i32 25, float %5953)  ; Rsqrt(value)
  %5955 = fmul fast float %5954, %5951
  %5956 = fmul fast float %5954, %5952
  %5957 = fmul fast float %5954, %5752
  br label %5958

; <label>:5958                                    ; preds = %5950, %5591
  %5959 = phi float [ %5597, %5591 ], [ %5604, %5950 ]
  %5960 = phi float [ %5596, %5591 ], [ %5602, %5950 ]
  %5961 = phi float [ %5595, %5591 ], [ %5600, %5950 ]
  %5962 = phi float [ %5594, %5591 ], [ %5603, %5950 ]
  %5963 = phi float [ %5593, %5591 ], [ %5601, %5950 ]
  %5964 = phi float [ %5592, %5591 ], [ %5599, %5950 ]
  %5965 = phi float [ %5574, %5591 ], [ %5650, %5950 ]
  %5966 = phi float [ %5575, %5591 ], [ %5651, %5950 ]
  %5967 = phi float [ %5576, %5591 ], [ %5652, %5950 ]
  %5968 = phi float [ %5577, %5591 ], [ %5741, %5950 ]
  %5969 = phi float [ %5578, %5591 ], [ %5742, %5950 ]
  %5970 = phi float [ %5579, %5591 ], [ %5743, %5950 ]
  %5971 = phi float [ %5580, %5591 ], [ %5955, %5950 ]
  %5972 = phi float [ %5581, %5591 ], [ %5956, %5950 ]
  %5973 = phi float [ %5582, %5591 ], [ %5957, %5950 ]
  %5974 = phi float [ %5586, %5591 ], [ %5757, %5950 ]
  %5975 = phi float [ %5587, %5591 ], [ %5760, %5950 ]
  %5976 = select i1 %249, float 0.000000e+00, float %5970
  %5977 = call float @dx.op.dot3.f32(i32 55, float %5971, float %5972, float %5973, float %5961, float %5960, float %5959)  ; Dot3(ax,ay,az,bx,by,bz)
  %5978 = call float @dx.op.unary.f32(i32 7, float %5977)  ; Saturate(value)
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5964, float %5963, float %5962, float %5971, float %5972, float %5973)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = fmul fast float %5979, 2.000000e+00
  %5981 = fmul fast float %5980, %5971
  %5982 = fmul fast float %5980, %5972
  %5983 = fmul fast float %5980, %5973
  %5984 = fsub fast float %5964, %5981
  %5985 = fsub fast float %5963, %5982
  %5986 = fsub fast float %5962, %5983
  %5987 = call float @dx.op.binary.f32(i32 36, float %5975, float 1.000000e+00)  ; FMin(a,b)
  %5988 = fsub fast float 1.000000e+00, %5987
  %5989 = bitcast float %5988 to i32
  %5990 = ashr i32 %5989, 1
  %5991 = add nsw i32 %5990, 532487669
  %5992 = bitcast i32 %5991 to float
  %5993 = fsub fast float 1.000000e+00, %5974
  %5994 = call float @dx.op.binary.f32(i32 35, float %5993, float 0x3F847AE140000000)  ; FMax(a,b)
  %5995 = fmul fast float %5994, %5994
  %5996 = fmul fast float %5995, %5995
  %5997 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %5992, float %5996, float %5997, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = fsub fast float 1.000000e+00, %5975
  %6001 = bitcast float %6000 to i32
  %6002 = sub nsw i32 2129859010, %6001
  %6003 = bitcast i32 %6002 to float
  %6004 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6005 = fmul fast float %6004, 0x3FD20DD760000000
  %6006 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %6007 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = fcmp fast oeq float %6007, 0.000000e+00
  %6009 = fcmp fast oeq float %6006, 0.000000e+00
  %6010 = or i1 %6009, %6008
  br i1 %6010, label %6040, label %6011

; <label>:6011                                    ; preds = %5958
  %6012 = fsub fast float -0.000000e+00, %79
  %6013 = fsub fast float -0.000000e+00, %77
  %6014 = call float @dx.op.unary.f32(i32 24, float %6007)  ; Sqrt(value)
  %6015 = fdiv fast float %6014, %6006
  %6016 = fcmp fast ogt float %6015, 0x3FFB6F8900000000
  %6017 = select i1 %6016, float 0x3FFB6F8900000000, float %6015
  %6018 = fmul fast float %6017, 0x3FE8A23460000000
  %6019 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  %6020 = call float @dx.op.binary.f32(i32 35, float %6017, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6021 = fmul fast float %6019, %6006
  %6022 = fmul fast float %6020, 0x3FF279A740000000
  %6023 = fadd fast float %6022, -1.000000e+00
  %6024 = call float @dx.op.dot3.f32(i32 55, float %6012, float %6013, float %78, float %6012, float %6013, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %6025 = call float @dx.op.unary.f32(i32 25, float %6024)  ; Rsqrt(value)
  %6026 = fmul fast float %6025, %6012
  %6027 = fmul fast float %6025, %6013
  %6028 = fmul fast float %6025, %78
  %6029 = fmul fast float %6023, %6023
  %6030 = fsub fast float 1.000000e+00, %6029
  %6031 = fmul fast float %6020, 0x40005F8BE0000000
  %6032 = fsub fast float 0x400C5BF8A0000000, %6031
  %6033 = fdiv fast float %6021, %6032
  %6034 = fmul fast float %6033, 0x3FEE31C3C0000000
  %6035 = fmul fast float %6034, %6030
  %6036 = fmul fast float %6020, 0x3FDACB7480000000
  %6037 = fadd fast float %6036, 0xBFD7347680000000
  %6038 = fmul fast float %6037, %6033
  %6039 = fmul fast float %6038, %6030
  br label %6040

; <label>:6040                                    ; preds = %6011, %5958
  %6041 = phi float [ %6026, %6011 ], [ 0.000000e+00, %5958 ]
  %6042 = phi float [ %6027, %6011 ], [ 0.000000e+00, %5958 ]
  %6043 = phi float [ %6028, %6011 ], [ 0.000000e+00, %5958 ]
  %6044 = phi float [ %6035, %6011 ], [ 0.000000e+00, %5958 ]
  %6045 = phi float [ %6039, %6011 ], [ 0.000000e+00, %5958 ]
  %6046 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %5971, float %5972, float %5973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6047 = fmul fast float %6046, 0x3FDF454380000000
  %6048 = fmul fast float %6046, %6046
  %6049 = fmul fast float %6048, 0x3FEE471020000000
  %6050 = fadd fast float %6049, 0xBFD42F6020000000
  %6051 = fmul fast float %6006, 0x3FD20DD760000000
  %6052 = fmul fast float %6050, %6045
  %6053 = fadd fast float %6052, %6051
  %6054 = fmul fast float %6047, %6044
  %6055 = fadd fast float %6053, %6054
  %6056 = fsub fast float %6053, %6054
  %6057 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %6058 = fmul fast float %6057, 0x3FDF454380000000
  %6059 = fmul fast float %6057, %6057
  %6060 = fmul fast float %6059, 0x3FEE471020000000
  %6061 = fadd fast float %6060, 0xBFD42F6020000000
  %6062 = call float @dx.op.dot3.f32(i32 55, float %6006, float %6044, float %6045, float 0x3FD20DD760000000, float %6058, float %6061)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %6064 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = fcmp fast oeq float %6064, 0.000000e+00
  %6066 = fcmp fast oeq float %6063, 0.000000e+00
  %6067 = or i1 %6066, %6065
  br i1 %6067, label %6097, label %6068

; <label>:6068                                    ; preds = %6040
  %6069 = fsub fast float -0.000000e+00, %75
  %6070 = fsub fast float -0.000000e+00, %73
  %6071 = call float @dx.op.unary.f32(i32 24, float %6064)  ; Sqrt(value)
  %6072 = fdiv fast float %6071, %6063
  %6073 = fcmp fast ogt float %6072, 0x3FFB6F8900000000
  %6074 = select i1 %6073, float 0x3FFB6F8900000000, float %6072
  %6075 = fmul fast float %6074, 0x3FE8A23460000000
  %6076 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6077 = call float @dx.op.binary.f32(i32 35, float %6074, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6078 = fmul fast float %6076, %6063
  %6079 = fmul fast float %6077, 0x3FF279A740000000
  %6080 = fadd fast float %6079, -1.000000e+00
  %6081 = call float @dx.op.dot3.f32(i32 55, float %6069, float %6070, float %74, float %6069, float %6070, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %6082 = call float @dx.op.unary.f32(i32 25, float %6081)  ; Rsqrt(value)
  %6083 = fmul fast float %6082, %6069
  %6084 = fmul fast float %6082, %6070
  %6085 = fmul fast float %6082, %74
  %6086 = fmul fast float %6080, %6080
  %6087 = fsub fast float 1.000000e+00, %6086
  %6088 = fmul fast float %6077, 0x40005F8BE0000000
  %6089 = fsub fast float 0x400C5BF8A0000000, %6088
  %6090 = fdiv fast float %6078, %6089
  %6091 = fmul fast float %6090, 0x3FEE31C3C0000000
  %6092 = fmul fast float %6091, %6087
  %6093 = fmul fast float %6077, 0x3FDACB7480000000
  %6094 = fadd fast float %6093, 0xBFD7347680000000
  %6095 = fmul fast float %6094, %6090
  %6096 = fmul fast float %6095, %6087
  br label %6097

; <label>:6097                                    ; preds = %6068, %6040
  %6098 = phi float [ %6083, %6068 ], [ 0.000000e+00, %6040 ]
  %6099 = phi float [ %6084, %6068 ], [ 0.000000e+00, %6040 ]
  %6100 = phi float [ %6085, %6068 ], [ 0.000000e+00, %6040 ]
  %6101 = phi float [ %6092, %6068 ], [ 0.000000e+00, %6040 ]
  %6102 = phi float [ %6096, %6068 ], [ 0.000000e+00, %6040 ]
  %6103 = call float @dx.op.dot3.f32(i32 55, float %6098, float %6099, float %6100, float %5971, float %5972, float %5973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6104 = fmul fast float %6103, 0x3FDF454380000000
  %6105 = fmul fast float %6103, %6103
  %6106 = fmul fast float %6105, 0x3FEE471020000000
  %6107 = fadd fast float %6106, 0xBFD42F6020000000
  %6108 = fmul fast float %6063, 0x3FD20DD760000000
  %6109 = fmul fast float %6107, %6102
  %6110 = fadd fast float %6109, %6108
  %6111 = fmul fast float %6104, %6101
  %6112 = fadd fast float %6110, %6111
  %6113 = fsub fast float %6110, %6111
  %6114 = call float @dx.op.dot3.f32(i32 55, float %6098, float %6099, float %6100, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %6115 = fmul fast float %6114, 0x3FDF454380000000
  %6116 = fmul fast float %6114, %6114
  %6117 = fmul fast float %6116, 0x3FEE471020000000
  %6118 = fadd fast float %6117, 0xBFD42F6020000000
  %6119 = call float @dx.op.dot3.f32(i32 55, float %6063, float %6101, float %6102, float 0x3FD20DD760000000, float %6115, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %6121 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = fcmp fast oeq float %6121, 0.000000e+00
  %6123 = fcmp fast oeq float %6120, 0.000000e+00
  %6124 = or i1 %6123, %6122
  br i1 %6124, label %6154, label %6125

; <label>:6125                                    ; preds = %6097
  %6126 = fsub fast float -0.000000e+00, %71
  %6127 = fsub fast float -0.000000e+00, %69
  %6128 = call float @dx.op.unary.f32(i32 24, float %6121)  ; Sqrt(value)
  %6129 = fdiv fast float %6128, %6120
  %6130 = fcmp fast ogt float %6129, 0x3FFB6F8900000000
  %6131 = select i1 %6130, float 0x3FFB6F8900000000, float %6129
  %6132 = fmul fast float %6131, 0x3FE8A23460000000
  %6133 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6134 = call float @dx.op.binary.f32(i32 35, float %6131, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6135 = fmul fast float %6133, %6120
  %6136 = fmul fast float %6134, 0x3FF279A740000000
  %6137 = fadd fast float %6136, -1.000000e+00
  %6138 = call float @dx.op.dot3.f32(i32 55, float %6126, float %6127, float %70, float %6126, float %6127, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.unary.f32(i32 25, float %6138)  ; Rsqrt(value)
  %6140 = fmul fast float %6139, %6126
  %6141 = fmul fast float %6139, %6127
  %6142 = fmul fast float %6139, %70
  %6143 = fmul fast float %6137, %6137
  %6144 = fsub fast float 1.000000e+00, %6143
  %6145 = fmul fast float %6134, 0x40005F8BE0000000
  %6146 = fsub fast float 0x400C5BF8A0000000, %6145
  %6147 = fdiv fast float %6135, %6146
  %6148 = fmul fast float %6147, 0x3FEE31C3C0000000
  %6149 = fmul fast float %6148, %6144
  %6150 = fmul fast float %6134, 0x3FDACB7480000000
  %6151 = fadd fast float %6150, 0xBFD7347680000000
  %6152 = fmul fast float %6151, %6147
  %6153 = fmul fast float %6152, %6144
  br label %6154

; <label>:6154                                    ; preds = %6125, %6097
  %6155 = phi float [ %6140, %6125 ], [ 0.000000e+00, %6097 ]
  %6156 = phi float [ %6141, %6125 ], [ 0.000000e+00, %6097 ]
  %6157 = phi float [ %6142, %6125 ], [ 0.000000e+00, %6097 ]
  %6158 = phi float [ %6149, %6125 ], [ 0.000000e+00, %6097 ]
  %6159 = phi float [ %6153, %6125 ], [ 0.000000e+00, %6097 ]
  %6160 = call float @dx.op.dot3.f32(i32 55, float %6155, float %6156, float %6157, float %5971, float %5972, float %5973)  ; Dot3(ax,ay,az,bx,by,bz)
  %6161 = fmul fast float %6160, 0x3FDF454380000000
  %6162 = fmul fast float %6160, %6160
  %6163 = fmul fast float %6162, 0x3FEE471020000000
  %6164 = fadd fast float %6163, 0xBFD42F6020000000
  %6165 = fmul fast float %6120, 0x3FD20DD760000000
  %6166 = fmul fast float %6164, %6159
  %6167 = fadd fast float %6166, %6165
  %6168 = fmul fast float %6161, %6158
  %6169 = fadd fast float %6167, %6168
  %6170 = fsub fast float %6167, %6168
  %6171 = call float @dx.op.dot3.f32(i32 55, float %6155, float %6156, float %6157, float %5984, float %5985, float %5986)  ; Dot3(ax,ay,az,bx,by,bz)
  %6172 = fmul fast float %6171, 0x3FDF454380000000
  %6173 = fmul fast float %6171, %6171
  %6174 = fmul fast float %6173, 0x3FEE471020000000
  %6175 = fadd fast float %6174, 0xBFD42F6020000000
  %6176 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6158, float %6159, float 0x3FD20DD760000000, float %6172, float %6175)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = call float @dx.op.binary.f32(i32 35, float %6055, float 0.000000e+00)  ; FMax(a,b)
  %6178 = call float @dx.op.binary.f32(i32 35, float %6112, float 0.000000e+00)  ; FMax(a,b)
  %6179 = call float @dx.op.binary.f32(i32 35, float %6169, float 0.000000e+00)  ; FMax(a,b)
  %6180 = call float @dx.op.binary.f32(i32 35, float %6056, float 0.000000e+00)  ; FMax(a,b)
  %6181 = call float @dx.op.binary.f32(i32 35, float %6113, float 0.000000e+00)  ; FMax(a,b)
  %6182 = call float @dx.op.binary.f32(i32 35, float %6170, float 0.000000e+00)  ; FMax(a,b)
  %6183 = call float @dx.op.binary.f32(i32 35, float %6062, float 0.000000e+00)  ; FMax(a,b)
  %6184 = call float @dx.op.binary.f32(i32 35, float %6119, float 0.000000e+00)  ; FMax(a,b)
  %6185 = call float @dx.op.binary.f32(i32 35, float %6176, float 0.000000e+00)  ; FMax(a,b)
  %6186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6187 = extractvalue %dx.types.CBufRet.f32 %6186, 0
  %6188 = call float @dx.op.binary.f32(i32 36, float %5965, float %6187)  ; FMin(a,b)
  %6189 = fmul fast float %6188, %5988
  %6190 = fsub fast float 1.000000e+00, %6189
  %6191 = bitcast float %6190 to i32
  %6192 = sub nsw i32 2129859010, %6191
  %6193 = bitcast i32 %6192 to float
  %6194 = call float @dx.op.binary.f32(i32 36, float %5966, float %6187)  ; FMin(a,b)
  %6195 = fmul fast float %6194, %5988
  %6196 = fsub fast float 1.000000e+00, %6195
  %6197 = bitcast float %6196 to i32
  %6198 = sub nsw i32 2129859010, %6197
  %6199 = bitcast i32 %6198 to float
  %6200 = call float @dx.op.binary.f32(i32 36, float %5967, float %6187)  ; FMin(a,b)
  %6201 = fmul fast float %6200, %5988
  %6202 = fsub fast float 1.000000e+00, %6201
  %6203 = bitcast float %6202 to i32
  %6204 = sub nsw i32 2129859010, %6203
  %6205 = bitcast i32 %6204 to float
  %6206 = fmul fast float %6177, %5987
  %6207 = fmul fast float %6206, %6193
  %6208 = fmul fast float %6178, %5987
  %6209 = fmul fast float %6208, %6199
  %6210 = fmul fast float %6179, %5987
  %6211 = fmul fast float %6210, %6205
  %6212 = call float @dx.op.binary.f32(i32 36, float %5968, float %6187)  ; FMin(a,b)
  %6213 = fmul fast float %6212, %5988
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = bitcast float %6214 to i32
  %6216 = sub nsw i32 2129859010, %6215
  %6217 = bitcast i32 %6216 to float
  %6218 = call float @dx.op.binary.f32(i32 36, float %5969, float %6187)  ; FMin(a,b)
  %6219 = fmul fast float %6218, %5988
  %6220 = fsub fast float 1.000000e+00, %6219
  %6221 = bitcast float %6220 to i32
  %6222 = sub nsw i32 2129859010, %6221
  %6223 = bitcast i32 %6222 to float
  %6224 = call float @dx.op.binary.f32(i32 36, float %5976, float %6187)  ; FMin(a,b)
  %6225 = fmul fast float %6224, %5988
  %6226 = fsub fast float 1.000000e+00, %6225
  %6227 = bitcast float %6226 to i32
  %6228 = sub nsw i32 2129859010, %6227
  %6229 = bitcast i32 %6228 to float
  %6230 = fmul fast float %6183, %5987
  %6231 = fmul fast float %6230, %6217
  %6232 = fmul fast float %6184, %5987
  %6233 = fmul fast float %6232, %6223
  %6234 = fmul fast float %6185, %5987
  %6235 = fmul fast float %6234, %6229
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6207, float %6209, float %6211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = select i1 %249, float 0.000000e+00, float %6207
  %6238 = select i1 %249, float %6236, float %6209
  %6239 = select i1 %249, float 0.000000e+00, float %6211
  %6240 = call float @dx.op.dot3.f32(i32 55, float %6180, float %6181, float %6182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6241 = select i1 %249, float 0.000000e+00, float %6180
  %6242 = select i1 %249, float %6240, float %6181
  %6243 = select i1 %249, float 0.000000e+00, float %6182
  %6244 = call float @dx.op.dot3.f32(i32 55, float %6231, float %6233, float %6235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6245 = select i1 %249, float 0.000000e+00, float %6231
  %6246 = select i1 %249, float %6244, float %6233
  %6247 = select i1 %249, float 0.000000e+00, float %6235
  %6248 = fmul fast float %3990, %3990
  %6249 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6250 = fmul fast float %5978, 9.843750e-01
  %6251 = fmul fast float %5974, 9.843750e-01
  %6252 = fadd fast float %6250, 7.812500e-03
  %6253 = fadd fast float %6251, 7.812500e-03
  %6254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %6252, float %6253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6255 = extractvalue %dx.types.ResRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.ResRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.ResRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.ResRet.f32 %6254, 3
  %6259 = fsub fast float 1.000000e+00, %6249
  %6260 = fsub fast float %6257, %6255
  %6261 = fsub fast float %6258, %6256
  %6262 = fmul fast float %6260, %6259
  %6263 = fmul fast float %6261, %6259
  %6264 = fadd fast float %6262, %6255
  %6265 = fadd fast float %6263, %6256
  %6266 = fmul fast float %6264, %5968
  %6267 = fmul fast float %6264, %5969
  %6268 = fmul fast float %6264, %5976
  %6269 = fadd fast float %6266, %6265
  %6270 = fadd fast float %6267, %6265
  %6271 = fadd fast float %6268, %6265
  %6272 = fcmp fast ogt float %4658, 0.000000e+00
  br i1 %6272, label %6273, label %6299

; <label>:6273                                    ; preds = %6154
  %6274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4658, float %5978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6275 = extractvalue %dx.types.ResRet.f32 %6274, 0
  %6276 = extractvalue %dx.types.ResRet.f32 %6274, 1
  %6277 = extractvalue %dx.types.ResRet.f32 %6274, 2
  %6278 = fadd fast float %6275, -5.000000e-01
  %6279 = fadd fast float %6276, -5.000000e-01
  %6280 = fadd fast float %6277, -5.000000e-01
  %6281 = fsub fast float 1.000000e+00, %5968
  %6282 = fsub fast float 1.000000e+00, %5969
  %6283 = fsub fast float 1.000000e+00, %5976
  %6284 = fmul fast float %5968, 4.000000e+00
  %6285 = fmul fast float %6284, %6281
  %6286 = fmul fast float %6285, %6278
  %6287 = fmul fast float %5969, 4.000000e+00
  %6288 = fmul fast float %6287, %6282
  %6289 = fmul fast float %6288, %6279
  %6290 = fmul fast float %5976, 4.000000e+00
  %6291 = fmul fast float %6290, %6283
  %6292 = fmul fast float %6291, %6280
  %6293 = fadd fast float %6286, %6269
  %6294 = fadd fast float %6289, %6270
  %6295 = fadd fast float %6292, %6271
  %6296 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6297 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6298 = call float @dx.op.unary.f32(i32 7, float %6295)  ; Saturate(value)
  br label %6299

; <label>:6299                                    ; preds = %6273, %6154
  %6300 = phi float [ %6296, %6273 ], [ %6269, %6154 ]
  %6301 = phi float [ %6297, %6273 ], [ %6270, %6154 ]
  %6302 = phi float [ %6298, %6273 ], [ %6271, %6154 ]
  %6303 = call float @dx.op.binary.f32(i32 35, float %6301, float %6302)  ; FMax(a,b)
  %6304 = call float @dx.op.binary.f32(i32 35, float %6300, float %6303)  ; FMax(a,b)
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = fmul fast float %6304, %5974
  %6307 = fadd fast float %6306, %5974
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 2
  %6310 = extractvalue %dx.types.CBufRet.f32 %6308, 3
  %6311 = fmul fast float %6307, %6309
  %6312 = fadd fast float %6311, %6310
  %6313 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  %6314 = fsub fast float 1.000000e+00, %5999
  %6315 = fadd fast float %6314, %6313
  %6316 = call float @dx.op.unary.f32(i32 7, float %6315)  ; Saturate(value)
  %6317 = fcmp fast olt float %6316, 1.000000e+00
  br i1 %6317, label %6318, label %6766

; <label>:6318                                    ; preds = %6299
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 3
  %6322 = fmul fast float %6320, %109
  %6323 = fmul fast float %6321, %110
  %6324 = fptoui float %6322 to i32
  %6325 = fptoui float %6323 to i32
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 2
  %6329 = extractvalue %dx.types.CBufRet.f32 %6326, 3
  %6330 = fadd fast float %96, -4.000000e+00
  %6331 = call float @dx.op.binary.f32(i32 35, float %6330, float 0.000000e+00)  ; FMax(a,b)
  %6332 = fadd fast float %6331, %6327
  %6333 = fmul fast float %6332, %6328
  %6334 = call float @dx.op.unary.f32(i32 23, float %6333)  ; Log(value)
  %6335 = fmul fast float %6334, %6329
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 2
  %6338 = fmul fast float %6335, %6337
  %6339 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6341 = extractvalue %dx.types.CBufRet.i32 %6340, 1
  %6342 = add i32 %6341, -1
  %6343 = uitofp i32 %6341 to float
  %6344 = fmul fast float %6343, %6339
  %6345 = fptoui float %6344 to i32
  %6346 = call i32 @dx.op.binary.i32(i32 40, i32 %6345, i32 %6342)  ; UMin(a,b)
  %6347 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6348 = extractvalue %dx.types.CBufRet.i32 %6347, 2
  %6349 = extractvalue %dx.types.CBufRet.i32 %6347, 3
  %6350 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6325, i32 %6348, i32 %6324)  ; UMad(a,b,c)
  %6351 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6346, i32 %6349, i32 %6350)  ; UMad(a,b,c)
  %6352 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6353 = fptoui float %6352 to i32
  %6354 = lshr i32 %6353, 5
  %6355 = call i32 @dx.op.binary.i32(i32 40, i32 %6354, i32 8191)  ; UMin(a,b)
  br i1 false, label %6356, label %6363

; <label>:6356                                    ; preds = %6318
  %6357 = fadd fast float 0.000000e+00, %5986
  %6358 = call float @dx.op.dot3.f32(i32 55, float %5984, float %5985, float %6357, float %5984, float %5985, float %6357)  ; Dot3(ax,ay,az,bx,by,bz)
  %6359 = call float @dx.op.unary.f32(i32 25, float %6358)  ; Rsqrt(value)
  %6360 = fmul fast float %6359, %5984
  %6361 = fmul fast float %6359, %5985
  %6362 = fmul fast float %6357, %6359
  br label %6363

; <label>:6363                                    ; preds = %6356, %6318
  %6364 = phi float [ %6360, %6356 ], [ %5984, %6318 ]
  %6365 = phi float [ %6361, %6356 ], [ %5985, %6318 ]
  %6366 = phi float [ %6362, %6356 ], [ %5986, %6318 ]
  %6367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6368 = extractvalue %dx.types.CBufRet.i32 %6367, 2
  %6369 = add nsw i32 %6368, -1
  %6370 = call i32 @dx.op.binary.i32(i32 37, i32 %6369, i32 0)  ; IMax(a,b)
  %6371 = shl i32 %6355, 2
  %6372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6371, i32 undef)  ; BufferLoad(srv,index,wot)
  %6373 = extractvalue %dx.types.ResRet.i32 %6372, 0
  %6374 = lshr i32 %6373, 16
  %6375 = and i32 %6373, 65535
  %6376 = lshr i32 %6373, 21
  %6377 = lshr i32 %6375, 5
  %6378 = call i32 @dx.op.binary.i32(i32 40, i32 %6377, i32 %6370)  ; UMin(a,b)
  %6379 = icmp ugt i32 %6376, %6378
  br i1 %6379, label %6742, label %6380

; <label>:6380                                    ; preds = %6363
  br label %6381

; <label>:6381                                    ; preds = %6734, %6380
  %6382 = phi float [ %6735, %6734 ], [ 0.000000e+00, %6380 ]
  %6383 = phi float [ %6736, %6734 ], [ 0.000000e+00, %6380 ]
  %6384 = phi float [ %6737, %6734 ], [ 0.000000e+00, %6380 ]
  %6385 = phi float [ %6738, %6734 ], [ 1.000000e+00, %6380 ]
  %6386 = phi i32 [ %6739, %6734 ], [ %6376, %6380 ]
  %6387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.i32 %6387, 2
  %6389 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6351, i32 %6388, i32 %6386)  ; UMad(a,b,c)
  %6390 = shl i32 %6389, 2
  %6391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6390, i32 undef)  ; BufferLoad(srv,index,wot)
  %6392 = extractvalue %dx.types.ResRet.i32 %6391, 0
  %6393 = shl i32 %6386, 5
  %6394 = sub nsw i32 %6374, %6393
  %6395 = call i32 @dx.op.binary.i32(i32 37, i32 %6394, i32 0)  ; IMax(a,b)
  %6396 = call i32 @dx.op.binary.i32(i32 38, i32 %6395, i32 31)  ; IMin(a,b)
  %6397 = sub nsw i32 1, %6374
  %6398 = add nsw i32 %6397, %6375
  %6399 = call i32 @dx.op.binary.i32(i32 37, i32 %6398, i32 0)  ; IMax(a,b)
  %6400 = call i32 @dx.op.binary.i32(i32 38, i32 %6399, i32 32)  ; IMin(a,b)
  %6401 = and i32 %6400, 31
  %6402 = shl i32 -1, %6401
  %6403 = xor i32 %6402, -1
  %6404 = and i32 %6396, 31
  %6405 = shl i32 %6403, %6404
  %6406 = icmp eq i32 %6400, 32
  %6407 = select i1 %6406, i32 -1, i32 %6405
  %6408 = and i32 %6407, %6392
  %6409 = icmp eq i32 %6408, 0
  br i1 %6409, label %6734, label %6410

; <label>:6410                                    ; preds = %6381
  br label %6411

; <label>:6411                                    ; preds = %6517, %6410
  %6412 = phi float [ %6518, %6517 ], [ %6382, %6410 ]
  %6413 = phi float [ %6519, %6517 ], [ %6383, %6410 ]
  %6414 = phi float [ %6520, %6517 ], [ %6384, %6410 ]
  %6415 = phi float [ %6521, %6517 ], [ %6385, %6410 ]
  %6416 = phi i32 [ %6421, %6517 ], [ %6408, %6410 ]
  %6417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6416)  ; FirstbitLo(value)
  %6418 = add i32 %6417, %6393
  %6419 = and i32 %6417, 31
  %6420 = shl i32 1, %6419
  %6421 = xor i32 %6420, %6416
  %6422 = mul i32 %6418, 72
  %6423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6422, i32 undef)  ; BufferLoad(srv,index,wot)
  %6424 = extractvalue %dx.types.ResRet.f32 %6423, 0
  %6425 = extractvalue %dx.types.ResRet.f32 %6423, 1
  %6426 = extractvalue %dx.types.ResRet.f32 %6423, 2
  %6427 = add i32 %6422, 12
  %6428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6427, i32 undef)  ; BufferLoad(srv,index,wot)
  %6429 = extractvalue %dx.types.ResRet.i32 %6428, 0
  %6430 = add i32 %6422, 16
  %6431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6430, i32 undef)  ; BufferLoad(srv,index,wot)
  %6432 = extractvalue %dx.types.ResRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.ResRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.ResRet.f32 %6431, 2
  %6435 = add i32 %6422, 28
  %6436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6435, i32 undef)  ; BufferLoad(srv,index,wot)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = add i32 %6422, 32
  %6439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6438, i32 undef)  ; BufferLoad(srv,index,wot)
  %6440 = extractvalue %dx.types.ResRet.f32 %6439, 0
  %6441 = extractvalue %dx.types.ResRet.f32 %6439, 1
  %6442 = extractvalue %dx.types.ResRet.f32 %6439, 2
  %6443 = extractvalue %dx.types.ResRet.f32 %6439, 3
  %6444 = add i32 %6422, 48
  %6445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6444, i32 undef)  ; BufferLoad(srv,index,wot)
  %6446 = extractvalue %dx.types.ResRet.f32 %6445, 0
  %6447 = extractvalue %dx.types.ResRet.f32 %6445, 1
  %6448 = add i32 %6422, 56
  %6449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6448, i32 undef)  ; BufferLoad(srv,index,wot)
  %6450 = extractvalue %dx.types.ResRet.f32 %6449, 0
  %6451 = extractvalue %dx.types.ResRet.f32 %6449, 1
  %6452 = add i32 %6422, 64
  %6453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6452, i32 undef)  ; BufferLoad(srv,index,wot)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.ResRet.f32 %6453, 1
  %6456 = mul i32 %6418, 60
  %6457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6456, i32 undef)  ; BufferLoad(srv,index,wot)
  %6458 = extractvalue %dx.types.ResRet.f32 %6457, 0
  %6459 = extractvalue %dx.types.ResRet.f32 %6457, 1
  %6460 = extractvalue %dx.types.ResRet.f32 %6457, 2
  %6461 = add i32 %6456, 12
  %6462 = add i32 %6456, 48
  %6463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6462, i32 undef)  ; BufferLoad(srv,index,wot)
  %6464 = extractvalue %dx.types.ResRet.f32 %6463, 0
  %6465 = extractvalue %dx.types.ResRet.f32 %6463, 1
  %6466 = extractvalue %dx.types.ResRet.f32 %6463, 2
  %6467 = and i32 %6429, 32767
  %6468 = bitcast float %6424 to i32
  %6469 = icmp eq i32 %6468, -1
  %6470 = bitcast float %6425 to i32
  %6471 = and i32 %6429, 32768
  %6472 = icmp ne i32 %6471, 0
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 0
  %6475 = extractvalue %dx.types.CBufRet.f32 %6473, 1
  %6476 = extractvalue %dx.types.CBufRet.f32 %6473, 2
  %6477 = fsub fast float %6458, %6474
  %6478 = fsub fast float %6459, %6475
  %6479 = fsub fast float %6460, %6476
  %6480 = fsub fast float %188, %6477
  %6481 = fsub fast float %189, %6478
  %6482 = fsub fast float %190, %6479
  %6483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6461, i32 undef)  ; BufferLoad(srv,index,wot)
  %6484 = extractvalue %dx.types.ResRet.f32 %6483, 0
  %6485 = extractvalue %dx.types.ResRet.f32 %6483, 1
  %6486 = extractvalue %dx.types.ResRet.f32 %6483, 2
  %6487 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6481, float %6482, float %6484, float %6485, float %6486)  ; Dot3(ax,ay,az,bx,by,bz)
  %6488 = add i32 %6456, 24
  %6489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6488, i32 undef)  ; BufferLoad(srv,index,wot)
  %6490 = extractvalue %dx.types.ResRet.f32 %6489, 0
  %6491 = extractvalue %dx.types.ResRet.f32 %6489, 1
  %6492 = extractvalue %dx.types.ResRet.f32 %6489, 2
  %6493 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6481, float %6482, float %6490, float %6491, float %6492)  ; Dot3(ax,ay,az,bx,by,bz)
  %6494 = add i32 %6456, 36
  %6495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6494, i32 undef)  ; BufferLoad(srv,index,wot)
  %6496 = extractvalue %dx.types.ResRet.f32 %6495, 0
  %6497 = extractvalue %dx.types.ResRet.f32 %6495, 1
  %6498 = extractvalue %dx.types.ResRet.f32 %6495, 2
  %6499 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6481, float %6482, float %6496, float %6497, float %6498)  ; Dot3(ax,ay,az,bx,by,bz)
  %6500 = call float @dx.op.unary.f32(i32 6, float %6487)  ; FAbs(value)
  %6501 = call float @dx.op.unary.f32(i32 6, float %6493)  ; FAbs(value)
  %6502 = call float @dx.op.unary.f32(i32 6, float %6499)  ; FAbs(value)
  %6503 = fsub fast float %6464, %6500
  %6504 = fsub fast float %6465, %6501
  %6505 = fsub fast float %6466, %6502
  %6506 = fmul fast float %6503, %6432
  %6507 = fmul fast float %6504, %6433
  %6508 = fmul fast float %6505, %6434
  %6509 = call float @dx.op.binary.f32(i32 36, float %6507, float %6508)  ; FMin(a,b)
  %6510 = call float @dx.op.binary.f32(i32 36, float %6506, float %6509)  ; FMin(a,b)
  %6511 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  %6512 = call float @dx.op.binary.f32(i32 36, float %6415, float %6511)  ; FMin(a,b)
  %6513 = uitofp i1 %6472 to float
  %6514 = fsub fast float 1.000000e+00, %6513
  %6515 = fmul fast float %6512, %6514
  %6516 = fcmp fast ogt float %6515, 0.000000e+00
  br i1 %6516, label %6523, label %6517

; <label>:6517                                    ; preds = %6665, %6411
  %6518 = phi float [ %6729, %6665 ], [ %6412, %6411 ]
  %6519 = phi float [ %6730, %6665 ], [ %6413, %6411 ]
  %6520 = phi float [ %6731, %6665 ], [ %6414, %6411 ]
  %6521 = phi float [ %6732, %6665 ], [ %6415, %6411 ]
  %6522 = icmp eq i32 %6416, %6420
  br i1 %6522, label %6733, label %6411

; <label>:6523                                    ; preds = %6411
  br i1 %6469, label %6581, label %6524

; <label>:6524                                    ; preds = %6523
  %6525 = fsub fast float -0.000000e+00, %6484
  %6526 = fsub fast float -0.000000e+00, %6485
  %6527 = fsub fast float -0.000000e+00, %6486
  %6528 = call float @dx.op.dot3.f32(i32 55, float %6364, float %6365, float %6366, float %6525, float %6526, float %6527)  ; Dot3(ax,ay,az,bx,by,bz)
  %6529 = fsub fast float -0.000000e+00, %6528
  %6530 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6481, float %6482, float %6525, float %6526, float %6527)  ; Dot3(ax,ay,az,bx,by,bz)
  %6531 = fadd fast float %6530, %6447
  %6532 = fadd fast float %6446, %6530
  %6533 = fsub fast float -0.000000e+00, %6532
  %6534 = fcmp ogt float %6528, -0.000000e+00
  %6535 = select i1 %6534, float %6533, float %6531
  %6536 = call float @dx.op.unary.f32(i32 6, float %6529)  ; FAbs(value)
  %6537 = fdiv fast float 1.000000e+00, %6536
  %6538 = fmul fast float %6535, %6537
  %6539 = call float @dx.op.binary.f32(i32 35, float %6538, float 0.000000e+00)  ; FMax(a,b)
  %6540 = fsub fast float -0.000000e+00, %6490
  %6541 = fsub fast float -0.000000e+00, %6491
  %6542 = fsub fast float -0.000000e+00, %6492
  %6543 = call float @dx.op.dot3.f32(i32 55, float %6364, float %6365, float %6366, float %6540, float %6541, float %6542)  ; Dot3(ax,ay,az,bx,by,bz)
  %6544 = fsub fast float -0.000000e+00, %6543
  %6545 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6481, float %6482, float %6540, float %6541, float %6542)  ; Dot3(ax,ay,az,bx,by,bz)
  %6546 = fadd fast float %6545, %6451
  %6547 = fadd fast float %6450, %6545
  %6548 = fsub fast float -0.000000e+00, %6547
  %6549 = fcmp ogt float %6543, -0.000000e+00
  %6550 = select i1 %6549, float %6548, float %6546
  %6551 = call float @dx.op.unary.f32(i32 6, float %6544)  ; FAbs(value)
  %6552 = fdiv fast float 1.000000e+00, %6551
  %6553 = fmul fast float %6550, %6552
  %6554 = call float @dx.op.binary.f32(i32 35, float %6553, float 0.000000e+00)  ; FMax(a,b)
  %6555 = fsub fast float -0.000000e+00, %6496
  %6556 = fsub fast float -0.000000e+00, %6497
  %6557 = fsub fast float -0.000000e+00, %6498
  %6558 = call float @dx.op.dot3.f32(i32 55, float %6364, float %6365, float %6366, float %6555, float %6556, float %6557)  ; Dot3(ax,ay,az,bx,by,bz)
  %6559 = fsub fast float -0.000000e+00, %6558
  %6560 = call float @dx.op.dot3.f32(i32 55, float %6480, float %6481, float %6482, float %6555, float %6556, float %6557)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = fadd fast float %6560, %6455
  %6562 = fadd fast float %6454, %6560
  %6563 = fsub fast float -0.000000e+00, %6562
  %6564 = fcmp ogt float %6558, -0.000000e+00
  %6565 = select i1 %6564, float %6563, float %6561
  %6566 = call float @dx.op.unary.f32(i32 6, float %6559)  ; FAbs(value)
  %6567 = fdiv fast float 1.000000e+00, %6566
  %6568 = fmul fast float %6565, %6567
  %6569 = call float @dx.op.binary.f32(i32 35, float %6568, float 0.000000e+00)  ; FMax(a,b)
  %6570 = call float @dx.op.binary.f32(i32 36, float %6554, float %6569)  ; FMin(a,b)
  %6571 = call float @dx.op.binary.f32(i32 36, float %6539, float %6570)  ; FMin(a,b)
  %6572 = fmul fast float %6571, %6364
  %6573 = fmul fast float %6571, %6365
  %6574 = fmul fast float %6571, %6366
  %6575 = fadd fast float %6572, %188
  %6576 = fadd fast float %6573, %189
  %6577 = fadd fast float %6574, %190
  %6578 = fsub fast float %6575, %6424
  %6579 = fsub fast float %6576, %6425
  %6580 = fsub fast float %6577, %6426
  br label %6588

; <label>:6581                                    ; preds = %6523
  %6582 = fmul fast float %6364, 8.096000e+03
  %6583 = fmul fast float %6365, 8.096000e+03
  %6584 = fmul fast float %6366, 8.096000e+03
  %6585 = fadd fast float %6582, %188
  %6586 = fadd fast float %6583, %189
  %6587 = fadd fast float %6584, %190
  br label %6588

; <label>:6588                                    ; preds = %6581, %6524
  %6589 = phi float [ %6364, %6581 ], [ %6578, %6524 ]
  %6590 = phi float [ %6365, %6581 ], [ %6579, %6524 ]
  %6591 = phi float [ %6366, %6581 ], [ %6580, %6524 ]
  %6592 = phi float [ %6585, %6581 ], [ %6575, %6524 ]
  %6593 = phi float [ %6586, %6581 ], [ %6576, %6524 ]
  %6594 = phi float [ %6587, %6581 ], [ %6577, %6524 ]
  %6595 = fcmp fast olt float %6443, 1.000000e+00
  br i1 %6595, label %6596, label %6627, !dx.controlflow.hints !92

; <label>:6596                                    ; preds = %6588
  %6597 = fmul fast float %6591, %6441
  %6598 = fmul fast float %6590, %6442
  %6599 = fsub fast float %6597, %6598
  %6600 = fmul fast float %6589, %6442
  %6601 = fmul fast float %6591, %6440
  %6602 = fsub fast float %6600, %6601
  %6603 = fmul fast float %6590, %6440
  %6604 = fmul fast float %6589, %6441
  %6605 = fsub fast float %6603, %6604
  %6606 = fmul fast float %6599, 2.000000e+00
  %6607 = fmul fast float %6602, 2.000000e+00
  %6608 = fmul fast float %6605, 2.000000e+00
  %6609 = fmul fast float %6606, %6443
  %6610 = fmul fast float %6607, %6443
  %6611 = fmul fast float %6608, %6443
  %6612 = fmul fast float %6608, %6441
  %6613 = fmul fast float %6607, %6442
  %6614 = fmul fast float %6606, %6442
  %6615 = fmul fast float %6608, %6440
  %6616 = fmul fast float %6607, %6440
  %6617 = fmul fast float %6606, %6441
  %6618 = fadd fast float %6612, %6589
  %6619 = fadd fast float %6618, %6609
  %6620 = fsub fast float %6619, %6613
  %6621 = fsub fast float %6590, %6615
  %6622 = fadd fast float %6621, %6610
  %6623 = fadd fast float %6622, %6614
  %6624 = fadd fast float %6611, %6591
  %6625 = fsub fast float %6624, %6617
  %6626 = fadd fast float %6625, %6616
  br label %6627

; <label>:6627                                    ; preds = %6596, %6588
  %6628 = phi float [ %6620, %6596 ], [ %6589, %6588 ]
  %6629 = phi float [ %6623, %6596 ], [ %6590, %6588 ]
  %6630 = phi float [ %6626, %6596 ], [ %6591, %6588 ]
  br i1 %6469, label %6662, label %6631

; <label>:6631                                    ; preds = %6627
  %6632 = fmul fast float %5974, 0x400187C840000000
  %6633 = fadd fast float %6632, 0xC00EFC2120000000
  %6634 = fmul fast float %6633, %5974
  %6635 = fadd fast float %6634, 0x3FE5D16340000000
  %6636 = fmul fast float %6635, %5974
  %6637 = fadd fast float %6636, 1.000000e+00
  %6638 = call float @dx.op.unary.f32(i32 7, float %6637)  ; Saturate(value)
  %6639 = fsub fast float %6592, %188
  %6640 = fsub fast float %6593, %189
  %6641 = fsub fast float %6594, %190
  %6642 = fsub fast float %6592, %6424
  %6643 = fsub fast float %6593, %6425
  %6644 = fsub fast float %6594, %6426
  %6645 = call float @dx.op.dot3.f32(i32 55, float %6639, float %6640, float %6641, float %6639, float %6640, float %6641)  ; Dot3(ax,ay,az,bx,by,bz)
  %6646 = call float @dx.op.dot3.f32(i32 55, float %6642, float %6643, float %6644, float %6642, float %6643, float %6644)  ; Dot3(ax,ay,az,bx,by,bz)
  %6647 = fadd fast float %6646, 0x3EE4F8B580000000
  %6648 = fdiv fast float %6645, %6647
  %6649 = bitcast float %6648 to i32
  %6650 = ashr i32 %6649, 1
  %6651 = add nsw i32 %6650, 532487669
  %6652 = bitcast i32 %6651 to float
  %6653 = fmul fast float %6652, %6638
  %6654 = call float @dx.op.unary.f32(i32 7, float %6653)  ; Saturate(value)
  %6655 = fmul fast float %6654, 0x4009981AE0000000
  %6656 = fsub fast float 0x40111BBD80000000, %6655
  %6657 = fmul fast float %6656, %6654
  %6658 = fadd fast float %6657, 0xC0009F6020000000
  %6659 = fmul fast float %6658, %6654
  %6660 = fadd fast float %6659, 1.000000e+00
  %6661 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  br label %6665

; <label>:6662                                    ; preds = %6627
  %6663 = icmp ne i32 %6470, -1
  %6664 = zext i1 %6663 to i32
  br label %6665

; <label>:6665                                    ; preds = %6662, %6631
  %6666 = phi float [ %5974, %6662 ], [ %6661, %6631 ]
  %6667 = phi i32 [ %6664, %6662 ], [ 0, %6631 ]
  %6668 = fmul float %6666, 5.000000e+00
  %6669 = fsub float 5.000000e+00, %6668
  %6670 = icmp ne i32 %6667, 0
  %6671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6671, 3
  %6673 = fadd fast float %6672, %6669
  %6674 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6673)  ; FMax(a,b)
  %6675 = call float @dx.op.unary.f32(i32 6, float %6628)  ; FAbs(value)
  %6676 = call float @dx.op.unary.f32(i32 6, float %6629)  ; FAbs(value)
  %6677 = fadd fast float %6676, %6675
  %6678 = call float @dx.op.unary.f32(i32 6, float %6630)  ; FAbs(value)
  %6679 = fadd fast float %6677, %6678
  %6680 = fcmp fast oeq float %6679, 0.000000e+00
  %6681 = fdiv fast float 1.000000e+00, %6679
  %6682 = select i1 %6680, float 1.000000e+00, float %6681
  %6683 = fmul fast float %6682, %6628
  %6684 = fmul fast float %6682, %6629
  %6685 = call float @dx.op.unary.f32(i32 6, float %6684)  ; FAbs(value)
  %6686 = call float @dx.op.unary.f32(i32 6, float %6683)  ; FAbs(value)
  %6687 = fsub fast float 1.000000e+00, %6685
  %6688 = fsub fast float 1.000000e+00, %6686
  %6689 = fcmp fast oge float %6683, 0.000000e+00
  %6690 = fcmp fast oge float %6684, 0.000000e+00
  %6691 = select i1 %6689, float 1.000000e+00, float -1.000000e+00
  %6692 = select i1 %6690, float 1.000000e+00, float -1.000000e+00
  %6693 = fcmp fast ole float %6630, 0.000000e+00
  %6694 = fmul fast float %6691, %6687
  %6695 = fmul fast float %6692, %6688
  %6696 = select i1 %6693, float %6694, float %6683
  %6697 = select i1 %6693, float %6695, float %6684
  %6698 = fmul fast float %6696, 5.000000e-01
  %6699 = fmul fast float %6697, 5.000000e-01
  %6700 = fadd fast float %6698, 5.000000e-01
  %6701 = fadd fast float %6699, 5.000000e-01
  %6702 = uitofp i32 %6467 to float
  %6703 = call float @dx.op.binary.f32(i32 36, float %6674, float 3.000000e+00)  ; FMin(a,b)
  %6704 = fadd fast float %6703, 2.000000e+00
  %6705 = call float @dx.op.unary.f32(i32 21, float %6704)  ; Exp(value)
  %6706 = extractvalue %dx.types.CBufRet.f32 %6671, 1
  %6707 = fmul fast float %6706, %6705
  %6708 = fmul fast float %6707, 2.000000e+00
  %6709 = fsub fast float 1.000000e+00, %6708
  %6710 = fmul fast float %6700, %6709
  %6711 = fmul fast float %6701, %6709
  %6712 = fadd fast float %6710, %6707
  %6713 = fadd fast float %6711, %6707
  %6714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %42, float %6712, float %6713, float %6702, float undef, i32 0, i32 0, i32 undef, float %6674)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6715 = extractvalue %dx.types.ResRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.ResRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.ResRet.f32 %6714, 2
  %6718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6719 = extractvalue %dx.types.CBufRet.f32 %6718, 3
  %6720 = fmul fast float %6719, %6437
  %6721 = call float @dx.op.binary.f32(i32 36, float %6005, float %6720)  ; FMin(a,b)
  %6722 = select i1 %6670, float %6721, float %6720
  %6723 = fmul fast float %6715, %6515
  %6724 = fmul fast float %6723, %6722
  %6725 = fmul fast float %6716, %6515
  %6726 = fmul fast float %6725, %6722
  %6727 = fmul fast float %6717, %6515
  %6728 = fmul fast float %6727, %6722
  %6729 = fadd fast float %6724, %6412
  %6730 = fadd fast float %6726, %6413
  %6731 = fadd fast float %6728, %6414
  %6732 = fsub fast float %6415, %6515
  br label %6517

; <label>:6733                                    ; preds = %6517
  br label %6734

; <label>:6734                                    ; preds = %6733, %6381
  %6735 = phi float [ %6382, %6381 ], [ %6518, %6733 ]
  %6736 = phi float [ %6383, %6381 ], [ %6519, %6733 ]
  %6737 = phi float [ %6384, %6381 ], [ %6520, %6733 ]
  %6738 = phi float [ %6385, %6381 ], [ %6521, %6733 ]
  %6739 = add i32 %6386, 1
  %6740 = icmp ugt i32 %6739, %6378
  br i1 %6740, label %6741, label %6381, !llvm.loop !93

; <label>:6741                                    ; preds = %6734
  br label %6742

; <label>:6742                                    ; preds = %6741, %6363
  %6743 = phi float [ 0.000000e+00, %6363 ], [ %6735, %6741 ]
  %6744 = phi float [ 0.000000e+00, %6363 ], [ %6736, %6741 ]
  %6745 = phi float [ 0.000000e+00, %6363 ], [ %6737, %6741 ]
  %6746 = call float @dx.op.dot3.f32(i32 55, float %6743, float %6744, float %6745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6747 = select i1 %249, float 0.000000e+00, float %6743
  %6748 = select i1 %249, float %6746, float %6744
  %6749 = select i1 %249, float 0.000000e+00, float %6745
  %6750 = fcmp fast olt float %6316, 0.000000e+00
  %6751 = call float @dx.op.unary.f32(i32 6, float %6316)  ; FAbs(value)
  %6752 = fmul fast float %6751, %6245
  %6753 = fmul fast float %6751, %6246
  %6754 = fmul fast float %6751, %6247
  %6755 = select i1 %6750, float %6245, float %6752
  %6756 = select i1 %6750, float %6246, float %6753
  %6757 = select i1 %6750, float %6247, float %6754
  %6758 = fsub fast float 1.000000e+00, %6751
  %6759 = call float @dx.op.unary.f32(i32 7, float %6758)  ; Saturate(value)
  %6760 = fmul fast float %6759, %6747
  %6761 = fmul fast float %6759, %6748
  %6762 = fmul fast float %6759, %6749
  %6763 = fadd fast float %6755, %6760
  %6764 = fadd fast float %6756, %6761
  %6765 = fadd fast float %6757, %6762
  br label %6766

; <label>:6766                                    ; preds = %6742, %6299
  %6767 = phi float [ %6245, %6299 ], [ %6763, %6742 ]
  %6768 = phi float [ %6246, %6299 ], [ %6764, %6742 ]
  %6769 = phi float [ %6247, %6299 ], [ %6765, %6742 ]
  %6770 = call float @dx.op.dot3.f32(i32 55, float %5965, float %5966, float %5967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6771 = fcmp fast ogt float %6770, 0x3E7FF19E20000000
  %6772 = fdiv fast float 1.000000e+00, %6770
  %6773 = select i1 %6771, float %6772, float 0.000000e+00
  %6774 = fmul fast float %6773, %5965
  %6775 = fmul fast float %6773, %5966
  %6776 = fmul fast float %6773, %5967
  %6777 = fadd fast float %6774, -1.000000e+00
  %6778 = fadd fast float %6775, -1.000000e+00
  %6779 = fadd fast float %6776, -1.000000e+00
  %6780 = fmul fast float %6777, 5.000000e-01
  %6781 = fmul fast float %6778, 5.000000e-01
  %6782 = fmul fast float %6779, 5.000000e-01
  %6783 = fadd fast float %6780, 1.000000e+00
  %6784 = fadd fast float %6781, 1.000000e+00
  %6785 = fadd fast float %6782, 1.000000e+00
  %6786 = call float @dx.op.binary.f32(i32 35, float %5978, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6787 = fdiv fast float %3990, %6786
  %6788 = fcmp fast olt float %4707, 1.270000e+02
  %6789 = fcmp fast olt float %4708, 1.270000e+02
  %6790 = fcmp fast olt float %4709, 1.270000e+02
  %6791 = fmul fast float %4707, 0xBFF7154760000000
  %6792 = fmul fast float %6791, %6787
  %6793 = fmul fast float %4708, 0xBFF7154760000000
  %6794 = fmul fast float %6793, %6787
  %6795 = fmul fast float %4709, 0xBFF7154760000000
  %6796 = fmul fast float %6795, %6787
  %6797 = call float @dx.op.unary.f32(i32 21, float %6792)  ; Exp(value)
  %6798 = call float @dx.op.unary.f32(i32 21, float %6794)  ; Exp(value)
  %6799 = call float @dx.op.unary.f32(i32 21, float %6796)  ; Exp(value)
  %6800 = call float @dx.op.unary.f32(i32 7, float %6797)  ; Saturate(value)
  %6801 = call float @dx.op.unary.f32(i32 7, float %6798)  ; Saturate(value)
  %6802 = call float @dx.op.unary.f32(i32 7, float %6799)  ; Saturate(value)
  %6803 = select i1 %6788, float %6800, float 0.000000e+00
  %6804 = select i1 %6789, float %6801, float 0.000000e+00
  %6805 = select i1 %6790, float %6802, float 0.000000e+00
  %6806 = fmul fast float %6803, %6305
  %6807 = fmul fast float %6804, %6305
  %6808 = fmul fast float %6805, %6305
  %6809 = fadd fast float %6806, -1.000000e+00
  %6810 = fadd fast float %6807, -1.000000e+00
  %6811 = fadd fast float %6808, -1.000000e+00
  %6812 = fmul fast float %6809, %4655
  %6813 = fmul fast float %6810, %4655
  %6814 = fmul fast float %6811, %4655
  %6815 = fmul fast float %6767, %6300
  %6816 = fmul fast float %6768, %6301
  %6817 = fmul fast float %6769, %6302
  %6818 = fsub fast float 1.000000e+00, %5978
  %6819 = bitcast float %6818 to i32
  %6820 = sitofp i32 %6819 to float
  %6821 = fmul fast float %6820, 5.000000e+00
  %6822 = fadd fast float %6821, 0xC1EFBF8940000000
  %6823 = fptosi float %6822 to i32
  %6824 = bitcast i32 %6823 to float
  %6825 = fmul fast float %6824, %4659
  %6826 = fmul fast float %6237, %6825
  %6827 = fmul fast float %6826, %6305
  %6828 = fmul fast float %6827, %6783
  %6829 = fmul fast float %6238, %6825
  %6830 = fmul fast float %6829, %6305
  %6831 = fmul fast float %6830, %6784
  %6832 = fmul fast float %6239, %6825
  %6833 = fmul fast float %6832, %6305
  %6834 = fmul fast float %6833, %6785
  %6835 = fadd fast float %6815, %4645
  %6836 = fadd fast float %6835, %6828
  %6837 = fmul fast float %6836, %4655
  %6838 = fadd fast float %6816, %4646
  %6839 = fadd fast float %6838, %6831
  %6840 = fmul fast float %6839, %4655
  %6841 = fadd fast float %6817, %4647
  %6842 = fadd fast float %6841, %6834
  %6843 = fmul fast float %6842, %4655
  %6844 = fmul fast float %5969, 0x4012D0A400000000
  %6845 = fadd fast float %6814, 1.000000e+00
  %6846 = fadd fast float %6813, 1.000000e+00
  %6847 = fadd fast float %6812, 1.000000e+00
  %6848 = fmul fast float %6305, %6239
  %6849 = fmul fast float %6305, %6238
  %6850 = fmul fast float %6305, %6237
  %6851 = fmul fast float %5993, %4655
  %6852 = fsub fast float 1.000000e+00, %6851
  %6853 = call float @dx.op.unary.f32(i32 7, float %6852)  ; Saturate(value)
  %6854 = fsub fast float 1.000000e+00, %6853
  %6855 = fadd fast float %6844, 0x3FDB6377A0000000
  %6856 = fmul fast float %6854, %6855
  %6857 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6858 = fadd fast float %6856, %6857
  %6859 = call float @dx.op.unary.f32(i32 7, float %6858)  ; Saturate(value)
  %6860 = call float @dx.op.binary.f32(i32 35, float %6859, float 0x3F847AE140000000)  ; FMax(a,b)
  %6861 = fmul fast float %6860, %6860
  %6862 = fmul fast float %6861, %6861
  %6863 = fmul fast float %6862, 0xC00A935000000000
  %6864 = call float @dx.op.unary.f32(i32 21, float %6863)  ; Exp(value)
  %6865 = fsub fast float 1.000000e+00, %6864
  %6866 = fmul fast float %6847, %6241
  %6867 = fmul fast float %6866, %6865
  %6868 = fmul fast float %6846, %6242
  %6869 = fmul fast float %6868, %6865
  %6870 = fmul fast float %6845, %6243
  %6871 = fmul fast float %6870, %6865
  %6872 = fadd fast float %6867, %6850
  %6873 = fmul fast float %6872, %4655
  %6874 = fadd fast float %6869, %6849
  %6875 = fmul fast float %6874, %4655
  %6876 = fadd fast float %6871, %6848
  %6877 = fmul fast float %6876, %4655
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 3
  %6880 = fcmp fast oeq float %6879, 0.000000e+00
  br i1 %6880, label %8645, label %6881

; <label>:6881                                    ; preds = %6766
  %6882 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6883 = extractvalue %dx.types.CBufRet.f32 %6878, 1
  %6884 = extractvalue %dx.types.CBufRet.f32 %6878, 2
  %6885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6886 = extractvalue %dx.types.CBufRet.f32 %6885, 0
  %6887 = extractvalue %dx.types.CBufRet.f32 %6885, 1
  %6888 = extractvalue %dx.types.CBufRet.f32 %6885, 2
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.f32 %6889, 1
  %6892 = call float @dx.op.dot3.f32(i32 55, float %6886, float %6887, float %6888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6893 = select i1 %249, float %6890, float %6886
  %6894 = select i1 %249, float %6892, float %6887
  %6895 = select i1 %249, float %6891, float %6888
  %6896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6897 = extractvalue %dx.types.CBufRet.f32 %6896, 2
  %6898 = fmul fast float %6897, %116
  %6899 = fmul fast float %6897, %117
  %6900 = fmul fast float %6897, %118
  %6901 = fadd fast float %6898, %188
  %6902 = fadd fast float %6899, %189
  %6903 = fadd fast float %6900, %190
  %6904 = fcmp fast olt float %6879, 0.000000e+00
  br i1 %6904, label %8162, label %6905

; <label>:6905                                    ; preds = %6881
  %6906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6907 = extractvalue %dx.types.CBufRet.f32 %6906, 0
  %6908 = extractvalue %dx.types.CBufRet.f32 %6906, 1
  %6909 = extractvalue %dx.types.CBufRet.f32 %6906, 2
  %6910 = extractvalue %dx.types.CBufRet.f32 %6906, 3
  %6911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6912 = extractvalue %dx.types.CBufRet.f32 %6911, 0
  %6913 = extractvalue %dx.types.CBufRet.f32 %6911, 1
  %6914 = extractvalue %dx.types.CBufRet.f32 %6911, 2
  %6915 = extractvalue %dx.types.CBufRet.f32 %6911, 3
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6918 = extractvalue %dx.types.CBufRet.f32 %6916, 1
  %6919 = extractvalue %dx.types.CBufRet.f32 %6916, 2
  %6920 = extractvalue %dx.types.CBufRet.f32 %6916, 3
  %6921 = fmul fast float %6907, %6901
  %6922 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %6908, float %6921)  ; FMad(a,b,c)
  %6923 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %6909, float %6922)  ; FMad(a,b,c)
  %6924 = fadd fast float %6923, %6910
  %6925 = fmul fast float %6912, %6901
  %6926 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %6913, float %6925)  ; FMad(a,b,c)
  %6927 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %6914, float %6926)  ; FMad(a,b,c)
  %6928 = fadd fast float %6927, %6915
  %6929 = fmul fast float %6917, %6901
  %6930 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %6918, float %6929)  ; FMad(a,b,c)
  %6931 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %6919, float %6930)  ; FMad(a,b,c)
  %6932 = fadd fast float %6931, %6920
  %6933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6934 = extractvalue %dx.types.CBufRet.f32 %6933, 0
  %6935 = fcmp fast une float %6934, 0.000000e+00
  %6936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6937 = extractvalue %dx.types.CBufRet.f32 %6936, 0
  %6938 = extractvalue %dx.types.CBufRet.f32 %6936, 1
  %6939 = extractvalue %dx.types.CBufRet.f32 %6936, 3
  %6940 = fmul fast float %6939, %6924
  %6941 = fmul fast float %6939, %6928
  %6942 = fadd fast float %6940, %6937
  %6943 = fadd fast float %6941, %6938
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 0
  %6946 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6947 = extractvalue %dx.types.CBufRet.f32 %6944, 3
  %6948 = fmul fast float %6947, %6924
  %6949 = fmul fast float %6947, %6928
  %6950 = fadd fast float %6948, %6945
  %6951 = fadd fast float %6949, %6946
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6954 = fsub fast float %6953, %6932
  %6955 = extractvalue %dx.types.CBufRet.f32 %6952, 2
  %6956 = fmul fast float %6954, %6955
  %6957 = fsub fast float 1.000000e+00, %6956
  %6958 = call float @dx.op.unary.f32(i32 7, float %6957)  ; Saturate(value)
  br i1 %6935, label %7019, label %6959

; <label>:6959                                    ; preds = %6905
  %6960 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6962 = extractvalue %dx.types.CBufRet.f32 %6961, 2
  %6963 = fadd fast float %6962, %6960
  %6964 = fcmp fast ogt float %6963, 0.000000e+00
  br i1 %6964, label %6965, label %6989

; <label>:6965                                    ; preds = %6959
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.CBufRet.f32 %6966, 1
  %6969 = fsub fast float %6950, %6967
  %6970 = fsub fast float %6951, %6968
  %6971 = fcmp fast olt float %6969, 0.000000e+00
  %6972 = fcmp fast olt float %6970, 0.000000e+00
  %6973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6974 = extractvalue %dx.types.CBufRet.f32 %6973, 0
  %6975 = extractvalue %dx.types.CBufRet.f32 %6973, 1
  %6976 = extractvalue %dx.types.CBufRet.f32 %6973, 2
  %6977 = extractvalue %dx.types.CBufRet.f32 %6973, 3
  %6978 = select i1 %6971, float %6974, float %6976
  %6979 = select i1 %6972, float %6975, float %6977
  %6980 = fmul fast float %6978, %6969
  %6981 = fmul fast float %6979, %6970
  %6982 = call float @dx.op.unary.f32(i32 6, float %6980)  ; FAbs(value)
  %6983 = call float @dx.op.unary.f32(i32 6, float %6981)  ; FAbs(value)
  %6984 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %6985 = call float @dx.op.binary.f32(i32 35, float %6982, float %6983)  ; FMax(a,b)
  %6986 = fsub fast float %6984, %6985
  %6987 = call float @dx.op.unary.f32(i32 7, float %6986)  ; Saturate(value)
  %6988 = fmul fast float %6987, %6958
  br label %6989

; <label>:6989                                    ; preds = %6965, %6959
  %6990 = phi float [ %6988, %6965 ], [ 0.000000e+00, %6959 ]
  %6991 = extractvalue %dx.types.CBufRet.f32 %6936, 2
  %6992 = extractvalue %dx.types.CBufRet.f32 %6961, 1
  %6993 = fadd fast float %6992, %6991
  %6994 = fcmp fast ogt float %6993, 0.000000e+00
  br i1 %6994, label %6995, label %7019

; <label>:6995                                    ; preds = %6989
  %6996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6996, 0
  %6998 = extractvalue %dx.types.CBufRet.f32 %6996, 1
  %6999 = fsub fast float %6942, %6997
  %7000 = fsub fast float %6943, %6998
  %7001 = fcmp fast olt float %6999, 0.000000e+00
  %7002 = fcmp fast olt float %7000, 0.000000e+00
  %7003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7004 = extractvalue %dx.types.CBufRet.f32 %7003, 0
  %7005 = extractvalue %dx.types.CBufRet.f32 %7003, 1
  %7006 = extractvalue %dx.types.CBufRet.f32 %7003, 2
  %7007 = extractvalue %dx.types.CBufRet.f32 %7003, 3
  %7008 = select i1 %7001, float %7004, float %7006
  %7009 = select i1 %7002, float %7005, float %7007
  %7010 = fmul fast float %7008, %6999
  %7011 = fmul fast float %7009, %7000
  %7012 = call float @dx.op.unary.f32(i32 6, float %7010)  ; FAbs(value)
  %7013 = call float @dx.op.unary.f32(i32 6, float %7011)  ; FAbs(value)
  %7014 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %7015 = call float @dx.op.binary.f32(i32 35, float %7012, float %7013)  ; FMax(a,b)
  %7016 = fsub fast float %7014, %7015
  %7017 = call float @dx.op.unary.f32(i32 7, float %7016)  ; Saturate(value)
  %7018 = fmul fast float %7017, %6958
  br label %7019

; <label>:7019                                    ; preds = %6995, %6989, %6905
  %7020 = phi float [ 0.000000e+00, %6905 ], [ %7018, %6995 ], [ 0.000000e+00, %6989 ]
  %7021 = phi float [ 0.000000e+00, %6905 ], [ %6990, %6995 ], [ %6990, %6989 ]
  %7022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7023 = extractvalue %dx.types.CBufRet.f32 %7022, 1
  %7024 = call float @dx.op.unary.f32(i32 7, float %7023)  ; Saturate(value)
  %7025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7026 = extractvalue %dx.types.CBufRet.f32 %7025, 0
  %7027 = extractvalue %dx.types.CBufRet.f32 %7025, 1
  %7028 = fsub fast float %6924, %7026
  %7029 = fsub fast float %6928, %7027
  %7030 = fcmp fast olt float %7028, 0.000000e+00
  %7031 = fcmp fast olt float %7029, 0.000000e+00
  %7032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7033 = extractvalue %dx.types.CBufRet.f32 %7032, 0
  %7034 = extractvalue %dx.types.CBufRet.f32 %7032, 1
  %7035 = extractvalue %dx.types.CBufRet.f32 %7032, 2
  %7036 = extractvalue %dx.types.CBufRet.f32 %7032, 3
  %7037 = select i1 %7030, float %7033, float %7035
  %7038 = select i1 %7031, float %7034, float %7036
  %7039 = fmul fast float %7037, %7028
  %7040 = fmul fast float %7038, %7029
  %7041 = call float @dx.op.unary.f32(i32 6, float %7039)  ; FAbs(value)
  %7042 = call float @dx.op.unary.f32(i32 6, float %7040)  ; FAbs(value)
  %7043 = extractvalue %dx.types.CBufRet.f32 %6896, 0
  %7044 = call float @dx.op.binary.f32(i32 35, float %7041, float %7042)  ; FMax(a,b)
  %7045 = fsub fast float %7043, %7044
  %7046 = call float @dx.op.unary.f32(i32 7, float %7045)  ; Saturate(value)
  %7047 = call float @dx.op.binary.f32(i32 36, float %7046, float %7024)  ; FMin(a,b)
  %7048 = fmul fast float %7047, %6958
  %7049 = fsub fast float %7020, %7048
  %7050 = fsub fast float %7021, %7020
  %7051 = fsub fast float %7050, %7048
  %7052 = call float @dx.op.binary.f32(i32 35, float %7020, float %7021)  ; FMax(a,b)
  %7053 = call float @dx.op.binary.f32(i32 35, float %7048, float %7052)  ; FMax(a,b)
  %7054 = fcmp fast olt float %7053, 1.000000e+00
  br i1 %7054, label %7055, label %7453, !dx.controlflow.hints !95

; <label>:7055                                    ; preds = %7019
  %7056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7057 = extractvalue %dx.types.CBufRet.f32 %7056, 0
  %7058 = fcmp fast une float %7057, 0.000000e+00
  br i1 %7058, label %7059, label %7453, !dx.controlflow.hints !96

; <label>:7059                                    ; preds = %7055
  %7060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7061 = extractvalue %dx.types.CBufRet.f32 %7060, 0
  %7062 = extractvalue %dx.types.CBufRet.f32 %7060, 1
  %7063 = extractvalue %dx.types.CBufRet.f32 %7060, 2
  %7064 = extractvalue %dx.types.CBufRet.f32 %7060, 3
  %7065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7066 = extractvalue %dx.types.CBufRet.f32 %7065, 0
  %7067 = extractvalue %dx.types.CBufRet.f32 %7065, 1
  %7068 = extractvalue %dx.types.CBufRet.f32 %7065, 2
  %7069 = extractvalue %dx.types.CBufRet.f32 %7065, 3
  %7070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7071 = extractvalue %dx.types.CBufRet.f32 %7070, 0
  %7072 = extractvalue %dx.types.CBufRet.f32 %7070, 1
  %7073 = extractvalue %dx.types.CBufRet.f32 %7070, 2
  %7074 = extractvalue %dx.types.CBufRet.f32 %7070, 3
  %7075 = fmul fast float %7061, %6901
  %7076 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %7062, float %7075)  ; FMad(a,b,c)
  %7077 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %7063, float %7076)  ; FMad(a,b,c)
  %7078 = fadd fast float %7077, %7064
  %7079 = fmul fast float %7066, %6901
  %7080 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %7067, float %7079)  ; FMad(a,b,c)
  %7081 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %7068, float %7080)  ; FMad(a,b,c)
  %7082 = fadd fast float %7081, %7069
  %7083 = fmul fast float %7071, %6901
  %7084 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %7072, float %7083)  ; FMad(a,b,c)
  %7085 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %7073, float %7084)  ; FMad(a,b,c)
  %7086 = fadd fast float %7085, %7074
  %7087 = fcmp fast oge float %7078, 1.000000e+00
  %7088 = fcmp fast oge float %7082, 1.000000e+00
  %7089 = or i1 %7087, %7088
  %7090 = fcmp fast olt float %7078, 0.000000e+00
  %7091 = fcmp fast olt float %7082, 0.000000e+00
  %7092 = or i1 %7090, %7091
  %7093 = or i1 %7089, %7092
  br i1 %7093, label %7453, label %7094, !dx.controlflow.hints !97

; <label>:7094                                    ; preds = %7059
  %7095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7096 = extractvalue %dx.types.CBufRet.f32 %7095, 0
  %7097 = extractvalue %dx.types.CBufRet.f32 %7095, 1
  %7098 = extractvalue %dx.types.CBufRet.f32 %7095, 2
  %7099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.i32 %7099, 2
  %7101 = uitofp i32 %7100 to float
  %7102 = extractvalue %dx.types.CBufRet.i32 %7099, 3
  %7103 = uitofp i32 %7102 to float
  %7104 = extractvalue %dx.types.CBufRet.f32 %7095, 3
  %7105 = fmul fast float %7104, 2.000000e+00
  %7106 = fsub fast float %7078, %7096
  %7107 = fsub fast float %7082, %7097
  %7108 = fmul fast float %7105, %7106
  %7109 = fmul fast float %7105, %7107
  %7110 = fdiv fast float 1.000000e+00, %6884
  %7111 = fmul fast float %7109, %7110
  %7112 = call float @dx.op.unary.f32(i32 6, float %7111)  ; FAbs(value)
  %7113 = fmul fast float %7098, %6903
  %7114 = fmul fast float %7113, %7105
  %7115 = call float @dx.op.unary.f32(i32 6, float %7114)  ; FAbs(value)
  %7116 = call float @dx.op.unary.f32(i32 6, float %7108)  ; FAbs(value)
  %7117 = call float @dx.op.binary.f32(i32 35, float %7115, float %7112)  ; FMax(a,b)
  %7118 = call float @dx.op.binary.f32(i32 35, float %7116, float %7117)  ; FMax(a,b)
  %7119 = fmul fast float %7118, 2.000000e+00
  %7120 = call float @dx.op.unary.f32(i32 23, float %7119)  ; Log(value)
  %7121 = call float @dx.op.binary.f32(i32 35, float %7120, float %7101)  ; FMax(a,b)
  %7122 = call float @dx.op.unary.f32(i32 22, float %7121)  ; Frc(value)
  %7123 = fadd fast float %7122, 0xBFEA666660000000
  %7124 = fmul fast float %7123, 8.000000e+00
  %7125 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7126 = call float @dx.op.unary.f32(i32 27, float %7121)  ; Round_ni(value)
  %7127 = fadd fast float %7126, %7125
  %7128 = call float @dx.op.binary.f32(i32 36, float %7127, float %7103)  ; FMin(a,b)
  %7129 = call float @dx.op.unary.f32(i32 27, float %7128)  ; Round_ni(value)
  %7130 = fsub fast float -0.000000e+00, %7129
  %7131 = call float @dx.op.unary.f32(i32 21, float %7130)  ; Exp(value)
  %7132 = fmul fast float %7131, %7105
  %7133 = fmul fast float %7132, %7078
  %7134 = fmul fast float %7132, %7082
  %7135 = fmul fast float %7133, 2.500000e-01
  %7136 = fmul fast float %7134, 2.500000e-01
  %7137 = fadd fast float %7135, 5.000000e-01
  %7138 = fadd fast float %7136, 5.000000e-01
  %7139 = fsub fast float %7103, %7101
  %7140 = fptoui float %7139 to i32
  %7141 = add i32 %7140, 320
  %7142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7141)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.f32 %7142, 0
  %7144 = extractvalue %dx.types.CBufRet.f32 %7142, 1
  %7145 = fcmp fast une float %7128, %7103
  %7146 = fsub fast float %7078, %7143
  %7147 = fsub fast float %7082, %7144
  %7148 = call float @dx.op.unary.f32(i32 6, float %7146)  ; FAbs(value)
  %7149 = call float @dx.op.unary.f32(i32 6, float %7147)  ; FAbs(value)
  %7150 = fmul fast float %7148, %7132
  %7151 = fmul fast float %7149, %7132
  %7152 = fcmp fast olt float %7150, 1.000000e+00
  %7153 = fcmp fast olt float %7151, 1.000000e+00
  %7154 = and i1 %7152, %7153
  %7155 = or i1 %7145, %7154
  br i1 %7155, label %7156, label %7453, !dx.controlflow.hints !98

; <label>:7156                                    ; preds = %7094
  %7157 = fmul fast float %7134, 5.000000e-01
  %7158 = fmul fast float %7133, 5.000000e-01
  %7159 = fadd fast float %7157, 5.000000e-01
  %7160 = fadd fast float %7158, 5.000000e-01
  %7161 = sitofp i32 %7100 to float
  %7162 = fsub fast float %7128, %7161
  %7163 = call float @dx.op.unary.f32(i32 27, float %7162)  ; Round_ni(value)
  %7164 = call float @dx.op.unary.f32(i32 22, float %7128)  ; Frc(value)
  %7165 = call float @dx.op.unary.f32(i32 22, float %7160)  ; Frc(value)
  %7166 = call float @dx.op.unary.f32(i32 22, float %7159)  ; Frc(value)
  %7167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %7165, float %7166, float %7163, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7168 = extractvalue %dx.types.ResRet.f32 %7167, 0
  %7169 = extractvalue %dx.types.ResRet.f32 %7167, 1
  %7170 = extractvalue %dx.types.ResRet.f32 %7167, 2
  %7171 = extractvalue %dx.types.ResRet.f32 %7167, 3
  %7172 = fcmp fast ogt float %7164, 0.000000e+00
  br i1 %7172, label %7173, label %7194, !dx.controlflow.hints !99

; <label>:7173                                    ; preds = %7156
  %7174 = fadd fast float %7163, 1.000000e+00
  %7175 = call float @dx.op.unary.f32(i32 22, float %7137)  ; Frc(value)
  %7176 = call float @dx.op.unary.f32(i32 22, float %7138)  ; Frc(value)
  %7177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %7175, float %7176, float %7174, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7178 = extractvalue %dx.types.ResRet.f32 %7177, 0
  %7179 = extractvalue %dx.types.ResRet.f32 %7177, 1
  %7180 = extractvalue %dx.types.ResRet.f32 %7177, 2
  %7181 = extractvalue %dx.types.ResRet.f32 %7177, 3
  %7182 = fsub fast float %7178, %7168
  %7183 = fsub fast float %7179, %7169
  %7184 = fsub fast float %7180, %7170
  %7185 = fsub fast float %7181, %7171
  %7186 = fmul fast float %7182, %7164
  %7187 = fmul fast float %7183, %7164
  %7188 = fmul fast float %7184, %7164
  %7189 = fmul fast float %7185, %7164
  %7190 = fadd fast float %7186, %7168
  %7191 = fadd fast float %7187, %7169
  %7192 = fadd fast float %7188, %7170
  %7193 = fadd fast float %7189, %7171
  br label %7194

; <label>:7194                                    ; preds = %7173, %7156
  %7195 = phi float [ %7190, %7173 ], [ %7168, %7156 ]
  %7196 = phi float [ %7191, %7173 ], [ %7169, %7156 ]
  %7197 = phi float [ %7192, %7173 ], [ %7170, %7156 ]
  %7198 = phi float [ %7193, %7173 ], [ %7171, %7156 ]
  %7199 = fadd fast float %7195, -5.000000e-01
  %7200 = fadd fast float %7197, -5.000000e-01
  %7201 = fmul fast float %7199, 0xBFD5555560000000
  %7202 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7200, float %7201)  ; FMad(a,b,c)
  %7203 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7196, float 0.000000e+00)  ; FMad(a,b,c)
  %7204 = fadd fast float %7203, %7198
  %7205 = fmul fast float %7199, -7.500000e-01
  %7206 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7200, float %7205)  ; FMad(a,b,c)
  %7207 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7196, float 0.000000e+00)  ; FMad(a,b,c)
  %7208 = fadd fast float %7207, %7198
  %7209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7210 = extractvalue %dx.types.CBufRet.f32 %7209, 0
  %7211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7212 = extractvalue %dx.types.CBufRet.f32 %7211, 0
  %7213 = extractvalue %dx.types.CBufRet.f32 %7211, 1
  %7214 = extractvalue %dx.types.CBufRet.f32 %7211, 2
  %7215 = extractvalue %dx.types.CBufRet.f32 %7211, 3
  %7216 = fsub fast float %7212, %7202
  %7217 = fsub fast float %7213, %7204
  %7218 = fsub fast float %7214, %7206
  %7219 = fsub fast float %7215, %7208
  %7220 = fmul fast float %7216, %7210
  %7221 = fmul fast float %7217, %7210
  %7222 = fmul fast float %7218, %7210
  %7223 = fmul fast float %7219, %7210
  %7224 = fadd fast float %7220, %7202
  %7225 = fadd fast float %7221, %7204
  %7226 = fadd fast float %7222, %7206
  %7227 = fadd fast float %7223, %7208
  %7228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7229 = extractvalue %dx.types.ResRet.i32 %7228, 0
  %7230 = and i32 %7229, 536870911
  %7231 = uitofp i32 %7230 to float
  %7232 = fmul fast float %7231, %7078
  %7233 = fmul fast float %7231, %7082
  %7234 = fptoui float %7232 to i32
  %7235 = fptoui float %7233 to i32
  %7236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7237 = extractvalue %dx.types.ResRet.i32 %7236, 0
  %7238 = and i32 %7237, 31
  %7239 = lshr i32 %7234, %7238
  %7240 = lshr i32 %7235, %7238
  %7241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7242 = extractvalue %dx.types.ResRet.i32 %7241, 0
  %7243 = and i32 %7242, 31
  %7244 = shl i32 1, %7243
  %7245 = call i32 @dx.op.binary.i32(i32 40, i32 %7244, i32 4)  ; UMin(a,b)
  %7246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7247 = extractvalue %dx.types.ResRet.i32 %7246, 0
  %7248 = extractvalue %dx.types.ResRet.i32 %7246, 1
  %7249 = icmp eq i32 %7245, 0
  br i1 %7249, label %7291, label %7250

; <label>:7250                                    ; preds = %7194
  br label %7251

; <label>:7251                                    ; preds = %7279, %7250
  %7252 = phi i32 [ %7282, %7279 ], [ 0, %7250 ]
  %7253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7254 = extractvalue %dx.types.ResRet.i32 %7253, 0
  %7255 = lshr i32 %7254, 16
  %7256 = and i32 %7255, 31
  %7257 = shl i32 %7240, %7256
  %7258 = add i32 %7257, %7239
  %7259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7260 = extractvalue %dx.types.ResRet.i32 %7259, 0
  %7261 = and i32 %7260, 31
  %7262 = shl i32 %7258, %7261
  %7263 = add i32 %7262, %7252
  %7264 = shl i32 %7263, 2
  %7265 = add i32 %7264, 32
  %7266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7265, i32 undef)  ; BufferLoad(srv,index,wot)
  %7267 = extractvalue %dx.types.ResRet.i32 %7266, 0
  %7268 = icmp slt i32 %7267, 0
  %7269 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7252
  %7270 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7252
  %7271 = bitcast float* %7269 to i32*
  %7272 = bitcast float* %7270 to i32*
  br i1 %7268, label %7273, label %7279

; <label>:7273                                    ; preds = %7251
  %7274 = and i32 %7267, 1073741823
  %7275 = add nuw nsw i32 %7274, 20
  %7276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7275, i32 undef)  ; BufferLoad(srv,index,wot)
  %7277 = extractvalue %dx.types.ResRet.i32 %7276, 0
  %7278 = extractvalue %dx.types.ResRet.i32 %7276, 1
  br label %7279

; <label>:7279                                    ; preds = %7273, %7251
  %7280 = phi i32 [ %7277, %7273 ], [ %7247, %7251 ]
  %7281 = phi i32 [ %7278, %7273 ], [ %7248, %7251 ]
  store i32 %7280, i32* %7271, align 4
  store i32 %7281, i32* %7272, align 4
  %7282 = add nuw i32 %7252, 1
  %7283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7284 = extractvalue %dx.types.CBufRet.i32 %7283, 2
  %7285 = icmp eq i32 %7284, 0
  %7286 = icmp ugt i32 %7267, -1073741825
  %7287 = and i1 %7286, %7285
  %7288 = icmp ult i32 %7282, %7245
  %7289 = and i1 %7287, %7288
  br i1 %7289, label %7251, label %7290

; <label>:7290                                    ; preds = %7279
  br label %7291

; <label>:7291                                    ; preds = %7290, %7194
  %7292 = phi i32 [ 0, %7194 ], [ %7282, %7290 ]
  %7293 = extractvalue %dx.types.CBufRet.f32 %7056, 2
  %7294 = fptoui float %7293 to i32
  %7295 = icmp eq i32 %7294, 0
  br i1 %7295, label %7347, label %7296

; <label>:7296                                    ; preds = %7291
  br label %7297

; <label>:7297                                    ; preds = %7342, %7296
  %7298 = phi i32 [ %7343, %7342 ], [ %7292, %7296 ]
  %7299 = phi i32 [ %7344, %7342 ], [ 0, %7296 ]
  %7300 = lshr i32 %7299, 2
  %7301 = and i32 %7299, 3
  %7302 = add nuw nsw i32 %7300, 83
  %7303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %7302)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.i32 %7303, 0
  %7305 = extractvalue %dx.types.CBufRet.i32 %7303, 1
  %7306 = extractvalue %dx.types.CBufRet.i32 %7303, 2
  %7307 = extractvalue %dx.types.CBufRet.i32 %7303, 3
  %7308 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %7304, i32* %7308, align 4
  %7309 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %7305, i32* %7309, align 4
  %7310 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %7306, i32* %7310, align 4
  %7311 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %7307, i32* %7311, align 4
  %7312 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %7301
  %7313 = load i32, i32* %7312, align 4, !tbaa !100, !noalias !104
  %7314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7315 = extractvalue %dx.types.ResRet.i32 %7314, 0
  %7316 = lshr i32 %7315, 16
  %7317 = and i32 %7316, 31
  %7318 = shl i32 %7240, %7317
  %7319 = add i32 %7318, %7239
  %7320 = shl i32 %7319, 2
  %7321 = add i32 %7320, %7313
  %7322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7321, i32 undef)  ; BufferLoad(srv,index,wot)
  %7323 = extractvalue %dx.types.ResRet.i32 %7322, 0
  %7324 = icmp eq i32 %7323, 0
  br i1 %7324, label %7342, label %7325

; <label>:7325                                    ; preds = %7297
  %7326 = icmp slt i32 %7323, 0
  %7327 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7298
  %7328 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7298
  %7329 = bitcast float* %7327 to i32*
  %7330 = bitcast float* %7328 to i32*
  br i1 %7326, label %7331, label %7338

; <label>:7331                                    ; preds = %7325
  %7332 = and i32 %7323, 1073741823
  %7333 = add i32 %7313, 20
  %7334 = add i32 %7333, %7332
  %7335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7334, i32 undef)  ; BufferLoad(srv,index,wot)
  %7336 = extractvalue %dx.types.ResRet.i32 %7335, 0
  %7337 = extractvalue %dx.types.ResRet.i32 %7335, 1
  br label %7338

; <label>:7338                                    ; preds = %7331, %7325
  %7339 = phi i32 [ %7336, %7331 ], [ %7247, %7325 ]
  %7340 = phi i32 [ %7337, %7331 ], [ %7248, %7325 ]
  store i32 %7339, i32* %7329, align 4
  store i32 %7340, i32* %7330, align 4
  %7341 = add i32 %7298, 1
  br label %7342

; <label>:7342                                    ; preds = %7338, %7297
  %7343 = phi i32 [ %7298, %7297 ], [ %7341, %7338 ]
  %7344 = add nuw i32 %7299, 1
  %7345 = icmp eq i32 %7344, %7294
  br i1 %7345, label %7346, label %7297

; <label>:7346                                    ; preds = %7342
  br label %7347

; <label>:7347                                    ; preds = %7346, %7291
  %7348 = phi i32 [ %7292, %7291 ], [ %7343, %7346 ]
  %7349 = icmp eq i32 %7348, 1
  %7350 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %7351 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %7349, label %7352, label %7355

; <label>:7352                                    ; preds = %7347
  %7353 = load float, float* %7350, align 4
  %7354 = load float, float* %7351, align 4
  br label %7382

; <label>:7355                                    ; preds = %7347
  %7356 = load float, float* %7350, align 4
  %7357 = load float, float* %7351, align 4
  %7358 = fdiv fast float 1.000000e+00, %7357
  %7359 = fsub fast float %7356, %7358
  %7360 = icmp ugt i32 %7348, 1
  br i1 %7360, label %7361, label %7377

; <label>:7361                                    ; preds = %7355
  br label %7362

; <label>:7362                                    ; preds = %7362, %7361
  %7363 = phi float [ %7372, %7362 ], [ %7359, %7361 ]
  %7364 = phi float [ %7373, %7362 ], [ %7356, %7361 ]
  %7365 = phi i32 [ %7374, %7362 ], [ 1, %7361 ]
  %7366 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7365
  %7367 = load float, float* %7366, align 4
  %7368 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7365
  %7369 = load float, float* %7368, align 4
  %7370 = fdiv fast float 1.000000e+00, %7369
  %7371 = fsub fast float %7367, %7370
  %7372 = call float @dx.op.binary.f32(i32 36, float %7363, float %7371)  ; FMin(a,b)
  %7373 = call float @dx.op.binary.f32(i32 35, float %7364, float %7367)  ; FMax(a,b)
  %7374 = add nuw i32 %7365, 1
  %7375 = icmp eq i32 %7374, %7348
  br i1 %7375, label %7376, label %7362

; <label>:7376                                    ; preds = %7362
  br label %7377

; <label>:7377                                    ; preds = %7376, %7355
  %7378 = phi float [ %7359, %7355 ], [ %7372, %7376 ]
  %7379 = phi float [ %7356, %7355 ], [ %7373, %7376 ]
  %7380 = fsub fast float %7379, %7378
  %7381 = fdiv fast float 1.000000e+00, %7380
  br label %7382

; <label>:7382                                    ; preds = %7377, %7352
  %7383 = phi float [ %7353, %7352 ], [ %7379, %7377 ]
  %7384 = phi float [ %7354, %7352 ], [ %7381, %7377 ]
  %7385 = fadd fast float %7086, %7383
  %7386 = fmul fast float %7385, %7384
  %7387 = call float @dx.op.unary.f32(i32 7, float %7386)  ; Saturate(value)
  %7388 = fmul fast float %7387, 2.000000e+00
  %7389 = fsub fast float 1.000000e+00, %7388
  %7390 = fmul fast float %7224, %7224
  %7391 = fsub fast float %7225, %7390
  %7392 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7391)  ; FMax(a,b)
  %7393 = fdiv fast float 1.000000e+00, %7392
  %7394 = fmul fast float %7225, %7224
  %7395 = fsub fast float %7226, %7394
  %7396 = fsub fast float %7389, %7224
  %7397 = fmul fast float %7389, %7389
  %7398 = fsub fast float %7397, %7225
  %7399 = fmul fast float %7393, %7395
  %7400 = fmul fast float %7399, %7396
  %7401 = fsub fast float %7398, %7400
  %7402 = fmul fast float %7225, %7225
  %7403 = fsub fast float %7227, %7402
  %7404 = fmul fast float %7395, %7395
  %7405 = fmul fast float %7404, %7393
  %7406 = fsub fast float %7403, %7405
  %7407 = fdiv fast float %7401, %7406
  %7408 = fmul fast float %7407, %7395
  %7409 = fsub fast float %7396, %7408
  %7410 = fmul fast float %7409, %7393
  %7411 = fmul fast float %7410, %7224
  %7412 = fsub fast float 1.000000e+00, %7411
  %7413 = fmul fast float %7407, %7225
  %7414 = fsub fast float %7412, %7413
  %7415 = fmul fast float %7410, %7410
  %7416 = fmul fast float %7407, 4.000000e+00
  %7417 = fmul fast float %7416, %7414
  %7418 = fsub fast float %7415, %7417
  %7419 = call float @dx.op.unary.f32(i32 24, float %7418)  ; Sqrt(value)
  %7420 = fcmp fast oge float %7410, 0.000000e+00
  %7421 = fsub fast float -0.000000e+00, %7419
  %7422 = select i1 %7420, float %7421, float %7419
  %7423 = fsub fast float %7422, %7410
  %7424 = fdiv fast float %7423, %7407
  %7425 = fdiv fast float %7414, %7423
  %7426 = fmul fast float %7424, 5.000000e-01
  %7427 = fmul fast float %7425, 2.000000e+00
  %7428 = select i1 %7420, float %7426, float %7427
  %7429 = select i1 %7420, float %7427, float %7426
  %7430 = call float @dx.op.binary.f32(i32 35, float %7428, float %7429)  ; FMax(a,b)
  %7431 = call float @dx.op.binary.f32(i32 36, float %7428, float %7429)  ; FMin(a,b)
  %7432 = fcmp fast ogt float %7389, %7430
  %7433 = fsub fast float %7389, %7431
  %7434 = fsub fast float %7389, %7430
  %7435 = fsub fast float %7430, %7431
  %7436 = select i1 %7432, float %7434, float %7435
  %7437 = fmul float %7433, %7436
  %7438 = select i1 %7432, float %7431, float %7389
  %7439 = fcmp fast ogt float %7389, %7431
  %7440 = fmul fast float %7438, %7430
  %7441 = fadd fast float %7438, %7430
  %7442 = fmul fast float %7441, %7224
  %7443 = fadd fast float %7440, %7225
  %7444 = fsub fast float %7443, %7442
  %7445 = fdiv fast float %7444, %7437
  %7446 = select i1 %7439, float %7445, float 0.000000e+00
  %7447 = fsub fast float 1.000000e+00, %7446
  %7448 = select i1 %7432, float %7447, float %7446
  %7449 = call float @dx.op.unary.f32(i32 7, float %7448)  ; Saturate(value)
  %7450 = extractvalue %dx.types.CBufRet.f32 %7209, 3
  %7451 = fmul fast float %7450, %7449
  %7452 = fsub fast float 1.000000e+00, %7451
  br label %7453

; <label>:7453                                    ; preds = %7382, %7094, %7059, %7055, %7019
  %7454 = phi float [ 1.000000e+00, %7019 ], [ %7452, %7382 ], [ 1.000000e+00, %7059 ], [ 1.000000e+00, %7094 ], [ 1.000000e+00, %7055 ]
  %7455 = fcmp fast ogt float %7051, 0.000000e+00
  br i1 %7455, label %7456, label %7620, !dx.controlflow.hints !113

; <label>:7456                                    ; preds = %7453
  %7457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7458 = extractvalue %dx.types.CBufRet.f32 %7457, 2
  %7459 = fadd fast float %7458, %6932
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 2
  %7462 = extractvalue %dx.types.CBufRet.f32 %7460, 3
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 2
  %7465 = call float @dx.op.binary.f32(i32 35, float %7459, float 0.000000e+00)  ; FMax(a,b)
  %7466 = fadd fast float %7465, 0x3F10000000000000
  %7467 = fcmp fast oeq float %7464, 0.000000e+00
  br i1 %7467, label %7468, label %7535

; <label>:7468                                    ; preds = %7456
  %7469 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7470 = extractvalue %dx.types.CBufRet.f32 %7460, 0
  %7471 = fmul fast float %7470, %6950
  %7472 = fmul fast float %7469, %6951
  %7473 = fadd fast float %7471, 5.000000e-01
  %7474 = call float @dx.op.unary.f32(i32 27, float %7473)  ; Round_ni(value)
  %7475 = fadd fast float %7472, 5.000000e-01
  %7476 = call float @dx.op.unary.f32(i32 27, float %7475)  ; Round_ni(value)
  %7477 = fsub fast float %7473, %7474
  %7478 = fsub fast float %7475, %7476
  %7479 = fadd fast float %7474, -5.000000e-01
  %7480 = fadd fast float %7476, -5.000000e-01
  %7481 = fmul fast float %7477, 2.000000e+00
  %7482 = fsub fast float 3.000000e+00, %7481
  %7483 = fadd fast float %7481, 1.000000e+00
  %7484 = fsub fast float 2.000000e+00, %7477
  %7485 = bitcast float %7482 to i32
  %7486 = sub nsw i32 2129859010, %7485
  %7487 = bitcast i32 %7486 to float
  %7488 = fmul fast float %7487, %7484
  %7489 = fadd fast float %7488, -1.000000e+00
  %7490 = bitcast float %7483 to i32
  %7491 = sub nsw i32 2129859010, %7490
  %7492 = bitcast i32 %7491 to float
  %7493 = fmul fast float %7492, %7477
  %7494 = fadd fast float %7493, 1.000000e+00
  %7495 = fmul fast float %7478, 2.000000e+00
  %7496 = fsub fast float 3.000000e+00, %7495
  %7497 = fadd fast float %7495, 1.000000e+00
  %7498 = fsub fast float 2.000000e+00, %7478
  %7499 = bitcast float %7496 to i32
  %7500 = sub nsw i32 2129859010, %7499
  %7501 = bitcast i32 %7500 to float
  %7502 = fmul fast float %7501, %7498
  %7503 = fadd fast float %7502, -1.000000e+00
  %7504 = bitcast float %7497 to i32
  %7505 = sub nsw i32 2129859010, %7504
  %7506 = bitcast i32 %7505 to float
  %7507 = fmul fast float %7506, %7478
  %7508 = fadd fast float %7507, 1.000000e+00
  %7509 = fadd fast float %7489, %7479
  %7510 = fmul fast float %7509, %7461
  %7511 = fadd fast float %7503, %7480
  %7512 = fmul fast float %7511, %7462
  %7513 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7510, float %7512, float undef, float undef, i32 0, i32 0, i32 undef, float %7466)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7514 = extractvalue %dx.types.ResRet.f32 %7513, 0
  %7515 = fmul fast float %7514, %7482
  %7516 = fadd fast float %7494, %7479
  %7517 = fmul fast float %7516, %7461
  %7518 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7517, float %7512, float undef, float undef, i32 0, i32 0, i32 undef, float %7466)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = fmul fast float %7519, %7483
  %7521 = fadd fast float %7508, %7480
  %7522 = fmul fast float %7521, %7462
  %7523 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7510, float %7522, float undef, float undef, i32 0, i32 0, i32 undef, float %7466)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7524 = extractvalue %dx.types.ResRet.f32 %7523, 0
  %7525 = fmul fast float %7524, %7482
  %7526 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7517, float %7522, float undef, float undef, i32 0, i32 0, i32 undef, float %7466)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7527 = extractvalue %dx.types.ResRet.f32 %7526, 0
  %7528 = fmul fast float %7527, %7483
  %7529 = fadd fast float %7528, %7525
  %7530 = fmul fast float %7529, %7497
  %7531 = fadd fast float %7520, %7515
  %7532 = fmul fast float %7531, %7496
  %7533 = fadd fast float %7532, %7530
  %7534 = fmul fast float %7533, 6.250000e-02
  br label %7620

; <label>:7535                                    ; preds = %7456
  %7536 = fmul fast float %260, 0x401921FB60000000
  %7537 = call float @dx.op.unary.f32(i32 13, float %7536)  ; Sin(value)
  %7538 = call float @dx.op.unary.f32(i32 12, float %7536)  ; Cos(value)
  %7539 = fsub fast float -0.000000e+00, %7537
  br label %7540

; <label>:7540                                    ; preds = %7589, %7535
  %7541 = phi float [ 0.000000e+00, %7535 ], [ %7584, %7589 ]
  %7542 = phi float [ 0.000000e+00, %7535 ], [ %7586, %7589 ]
  %7543 = phi i32 [ 0, %7535 ], [ %7590, %7589 ]
  %7544 = mul i32 %7543, 2
  %7545 = add i32 0, %7544
  %7546 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7545
  %7547 = load float, float* %7546, align 4
  %7548 = mul i32 %7543, 2
  %7549 = add i32 1, %7548
  %7550 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7549
  %7551 = load float, float* %7550, align 4
  %7552 = fmul fast float %7547, %7538
  %7553 = call float @dx.op.tertiary.f32(i32 46, float %7551, float %7539, float %7552)  ; FMad(a,b,c)
  %7554 = fmul fast float %7547, %7537
  %7555 = call float @dx.op.tertiary.f32(i32 46, float %7551, float %7538, float %7554)  ; FMad(a,b,c)
  %7556 = fmul fast float %7553, %7464
  %7557 = fmul fast float %7555, %7464
  %7558 = fadd fast float %7556, %6950
  %7559 = fadd fast float %7557, %6951
  %7560 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7558, float %7559, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7561 = extractvalue %dx.types.ResRet.f32 %7560, 0
  %7562 = extractvalue %dx.types.ResRet.f32 %7560, 1
  %7563 = extractvalue %dx.types.ResRet.f32 %7560, 2
  %7564 = extractvalue %dx.types.ResRet.f32 %7560, 3
  %7565 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7561, float* %7565, align 4
  %7566 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7562, float* %7566, align 4
  %7567 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7563, float* %7567, align 4
  %7568 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7564, float* %7568, align 4
  %7569 = fsub fast float %7561, %7466
  %7570 = fcmp fast olt float %7569, 0.000000e+00
  %7571 = select i1 %7570, float 0.000000e+00, float 1.000000e+00
  %7572 = fadd fast float %7571, %7541
  %7573 = fmul fast float %7571, %7569
  %7574 = fadd fast float %7573, %7542
  br label %7575

; <label>:7575                                    ; preds = %7575, %7540
  %7576 = phi i32 [ 1, %7540 ], [ %7587, %7575 ]
  %7577 = phi float [ %7574, %7540 ], [ %7586, %7575 ]
  %7578 = phi float [ %7572, %7540 ], [ %7584, %7575 ]
  %7579 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7576
  %7580 = load float, float* %7579, align 4, !tbaa !114, !noalias !104
  %7581 = fsub fast float %7580, %7466
  %7582 = fcmp fast olt float %7581, 0.000000e+00
  %7583 = select i1 %7582, float 0.000000e+00, float 1.000000e+00
  %7584 = fadd fast float %7583, %7578
  %7585 = fmul fast float %7583, %7581
  %7586 = fadd fast float %7585, %7577
  %7587 = add nuw nsw i32 %7576, 1
  %7588 = icmp eq i32 %7587, 4
  br i1 %7588, label %7589, label %7575, !llvm.loop !116

; <label>:7589                                    ; preds = %7575
  %7590 = add nuw nsw i32 %7543, 1
  %7591 = icmp eq i32 %7590, 8
  br i1 %7591, label %7592, label %7540, !llvm.loop !117

; <label>:7592                                    ; preds = %7589
  %7593 = fdiv fast float 1.000000e+00, %7584
  %7594 = fmul fast float %7593, %7586
  %7595 = fdiv fast float 1.000000e+00, %7466
  %7596 = fmul fast float %7594, %7595
  %7597 = call float @dx.op.unary.f32(i32 7, float %7596)  ; Saturate(value)
  %7598 = call float @dx.op.binary.f32(i32 35, float %7597, float 0.000000e+00)  ; FMax(a,b)
  %7599 = fmul fast float %7584, 3.125000e-02
  %7600 = call float @dx.op.unary.f32(i32 7, float %7599)  ; Saturate(value)
  %7601 = fmul fast float %7600, 2.000000e+00
  %7602 = fadd fast float %7601, -1.000000e+00
  %7603 = fcmp fast ogt float %7602, 0.000000e+00
  %7604 = fcmp fast olt float %7602, 0.000000e+00
  %7605 = zext i1 %7603 to i32
  %7606 = zext i1 %7604 to i32
  %7607 = sub nsw i32 %7605, %7606
  %7608 = sitofp i32 %7607 to float
  %7609 = fmul fast float %7608, %7602
  %7610 = fsub fast float 1.000000e+00, %7609
  %7611 = fmul fast float %7610, %7610
  %7612 = fmul fast float %7611, %7610
  %7613 = fsub fast float %7610, %7612
  %7614 = fmul fast float %7613, %7598
  %7615 = fsub fast float 1.000000e+00, %7612
  %7616 = fsub fast float %7615, %7614
  %7617 = fmul fast float %7608, 5.000000e-01
  %7618 = fmul fast float %7617, %7616
  %7619 = fsub fast float 5.000000e-01, %7618
  br label %7620

; <label>:7620                                    ; preds = %7592, %7468, %7453
  %7621 = phi float [ 1.000000e+00, %7453 ], [ %7534, %7468 ], [ %7619, %7592 ]
  %7622 = fcmp fast ogt float %7049, 0.000000e+00
  br i1 %7622, label %7623, label %7787, !dx.controlflow.hints !118

; <label>:7623                                    ; preds = %7620
  %7624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7625 = extractvalue %dx.types.CBufRet.f32 %7624, 1
  %7626 = fadd fast float %7625, %6932
  %7627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7628 = extractvalue %dx.types.CBufRet.f32 %7627, 2
  %7629 = extractvalue %dx.types.CBufRet.f32 %7627, 3
  %7630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7631 = extractvalue %dx.types.CBufRet.f32 %7630, 1
  %7632 = call float @dx.op.binary.f32(i32 35, float %7626, float 0.000000e+00)  ; FMax(a,b)
  %7633 = fadd fast float %7632, 0x3F10000000000000
  %7634 = fcmp fast oeq float %7631, 0.000000e+00
  br i1 %7634, label %7635, label %7702

; <label>:7635                                    ; preds = %7623
  %7636 = extractvalue %dx.types.CBufRet.f32 %7627, 1
  %7637 = extractvalue %dx.types.CBufRet.f32 %7627, 0
  %7638 = fmul fast float %7637, %6942
  %7639 = fmul fast float %7636, %6943
  %7640 = fadd fast float %7638, 5.000000e-01
  %7641 = call float @dx.op.unary.f32(i32 27, float %7640)  ; Round_ni(value)
  %7642 = fadd fast float %7639, 5.000000e-01
  %7643 = call float @dx.op.unary.f32(i32 27, float %7642)  ; Round_ni(value)
  %7644 = fsub fast float %7640, %7641
  %7645 = fsub fast float %7642, %7643
  %7646 = fadd fast float %7641, -5.000000e-01
  %7647 = fadd fast float %7643, -5.000000e-01
  %7648 = fmul fast float %7644, 2.000000e+00
  %7649 = fsub fast float 3.000000e+00, %7648
  %7650 = fadd fast float %7648, 1.000000e+00
  %7651 = fsub fast float 2.000000e+00, %7644
  %7652 = bitcast float %7649 to i32
  %7653 = sub nsw i32 2129859010, %7652
  %7654 = bitcast i32 %7653 to float
  %7655 = fmul fast float %7654, %7651
  %7656 = fadd fast float %7655, -1.000000e+00
  %7657 = bitcast float %7650 to i32
  %7658 = sub nsw i32 2129859010, %7657
  %7659 = bitcast i32 %7658 to float
  %7660 = fmul fast float %7659, %7644
  %7661 = fadd fast float %7660, 1.000000e+00
  %7662 = fmul fast float %7645, 2.000000e+00
  %7663 = fsub fast float 3.000000e+00, %7662
  %7664 = fadd fast float %7662, 1.000000e+00
  %7665 = fsub fast float 2.000000e+00, %7645
  %7666 = bitcast float %7663 to i32
  %7667 = sub nsw i32 2129859010, %7666
  %7668 = bitcast i32 %7667 to float
  %7669 = fmul fast float %7668, %7665
  %7670 = fadd fast float %7669, -1.000000e+00
  %7671 = bitcast float %7664 to i32
  %7672 = sub nsw i32 2129859010, %7671
  %7673 = bitcast i32 %7672 to float
  %7674 = fmul fast float %7673, %7645
  %7675 = fadd fast float %7674, 1.000000e+00
  %7676 = fadd fast float %7656, %7646
  %7677 = fmul fast float %7676, %7628
  %7678 = fadd fast float %7670, %7647
  %7679 = fmul fast float %7678, %7629
  %7680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7677, float %7679, float undef, float undef, i32 0, i32 0, i32 undef, float %7633)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7681 = extractvalue %dx.types.ResRet.f32 %7680, 0
  %7682 = fmul fast float %7681, %7649
  %7683 = fadd fast float %7661, %7646
  %7684 = fmul fast float %7683, %7628
  %7685 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7684, float %7679, float undef, float undef, i32 0, i32 0, i32 undef, float %7633)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7686 = extractvalue %dx.types.ResRet.f32 %7685, 0
  %7687 = fmul fast float %7686, %7650
  %7688 = fadd fast float %7675, %7647
  %7689 = fmul fast float %7688, %7629
  %7690 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7677, float %7689, float undef, float undef, i32 0, i32 0, i32 undef, float %7633)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7691 = extractvalue %dx.types.ResRet.f32 %7690, 0
  %7692 = fmul fast float %7691, %7649
  %7693 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7684, float %7689, float undef, float undef, i32 0, i32 0, i32 undef, float %7633)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7694 = extractvalue %dx.types.ResRet.f32 %7693, 0
  %7695 = fmul fast float %7694, %7650
  %7696 = fadd fast float %7695, %7692
  %7697 = fmul fast float %7696, %7664
  %7698 = fadd fast float %7687, %7682
  %7699 = fmul fast float %7698, %7663
  %7700 = fadd fast float %7699, %7697
  %7701 = fmul fast float %7700, 6.250000e-02
  br label %7787

; <label>:7702                                    ; preds = %7623
  %7703 = fmul fast float %260, 0x401921FB60000000
  %7704 = call float @dx.op.unary.f32(i32 13, float %7703)  ; Sin(value)
  %7705 = call float @dx.op.unary.f32(i32 12, float %7703)  ; Cos(value)
  %7706 = fsub fast float -0.000000e+00, %7704
  br label %7707

; <label>:7707                                    ; preds = %7756, %7702
  %7708 = phi float [ 0.000000e+00, %7702 ], [ %7751, %7756 ]
  %7709 = phi float [ 0.000000e+00, %7702 ], [ %7753, %7756 ]
  %7710 = phi i32 [ 0, %7702 ], [ %7757, %7756 ]
  %7711 = mul i32 %7710, 2
  %7712 = add i32 0, %7711
  %7713 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7712
  %7714 = load float, float* %7713, align 4
  %7715 = mul i32 %7710, 2
  %7716 = add i32 1, %7715
  %7717 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7716
  %7718 = load float, float* %7717, align 4
  %7719 = fmul fast float %7714, %7705
  %7720 = call float @dx.op.tertiary.f32(i32 46, float %7718, float %7706, float %7719)  ; FMad(a,b,c)
  %7721 = fmul fast float %7714, %7704
  %7722 = call float @dx.op.tertiary.f32(i32 46, float %7718, float %7705, float %7721)  ; FMad(a,b,c)
  %7723 = fmul fast float %7720, %7631
  %7724 = fmul fast float %7722, %7631
  %7725 = fadd fast float %7723, %6942
  %7726 = fadd fast float %7724, %6943
  %7727 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %45, float %7725, float %7726, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7728 = extractvalue %dx.types.ResRet.f32 %7727, 0
  %7729 = extractvalue %dx.types.ResRet.f32 %7727, 1
  %7730 = extractvalue %dx.types.ResRet.f32 %7727, 2
  %7731 = extractvalue %dx.types.ResRet.f32 %7727, 3
  %7732 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7728, float* %7732, align 4
  %7733 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7729, float* %7733, align 4
  %7734 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7730, float* %7734, align 4
  %7735 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7731, float* %7735, align 4
  %7736 = fsub fast float %7728, %7633
  %7737 = fcmp fast olt float %7736, 0.000000e+00
  %7738 = select i1 %7737, float 0.000000e+00, float 1.000000e+00
  %7739 = fadd fast float %7738, %7708
  %7740 = fmul fast float %7738, %7736
  %7741 = fadd fast float %7740, %7709
  br label %7742

; <label>:7742                                    ; preds = %7742, %7707
  %7743 = phi i32 [ 1, %7707 ], [ %7754, %7742 ]
  %7744 = phi float [ %7741, %7707 ], [ %7753, %7742 ]
  %7745 = phi float [ %7739, %7707 ], [ %7751, %7742 ]
  %7746 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7743
  %7747 = load float, float* %7746, align 4, !tbaa !114, !noalias !104
  %7748 = fsub fast float %7747, %7633
  %7749 = fcmp fast olt float %7748, 0.000000e+00
  %7750 = select i1 %7749, float 0.000000e+00, float 1.000000e+00
  %7751 = fadd fast float %7750, %7745
  %7752 = fmul fast float %7750, %7748
  %7753 = fadd fast float %7752, %7744
  %7754 = add nuw nsw i32 %7743, 1
  %7755 = icmp eq i32 %7754, 4
  br i1 %7755, label %7756, label %7742, !llvm.loop !116

; <label>:7756                                    ; preds = %7742
  %7757 = add nuw nsw i32 %7710, 1
  %7758 = icmp eq i32 %7757, 8
  br i1 %7758, label %7759, label %7707, !llvm.loop !117

; <label>:7759                                    ; preds = %7756
  %7760 = fdiv fast float 1.000000e+00, %7751
  %7761 = fmul fast float %7760, %7753
  %7762 = fdiv fast float 1.000000e+00, %7633
  %7763 = fmul fast float %7761, %7762
  %7764 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  %7765 = call float @dx.op.binary.f32(i32 35, float %7764, float 0.000000e+00)  ; FMax(a,b)
  %7766 = fmul fast float %7751, 3.125000e-02
  %7767 = call float @dx.op.unary.f32(i32 7, float %7766)  ; Saturate(value)
  %7768 = fmul fast float %7767, 2.000000e+00
  %7769 = fadd fast float %7768, -1.000000e+00
  %7770 = fcmp fast ogt float %7769, 0.000000e+00
  %7771 = fcmp fast olt float %7769, 0.000000e+00
  %7772 = zext i1 %7770 to i32
  %7773 = zext i1 %7771 to i32
  %7774 = sub nsw i32 %7772, %7773
  %7775 = sitofp i32 %7774 to float
  %7776 = fmul fast float %7775, %7769
  %7777 = fsub fast float 1.000000e+00, %7776
  %7778 = fmul fast float %7777, %7777
  %7779 = fmul fast float %7778, %7777
  %7780 = fsub fast float %7777, %7779
  %7781 = fmul fast float %7780, %7765
  %7782 = fsub fast float 1.000000e+00, %7779
  %7783 = fsub fast float %7782, %7781
  %7784 = fmul fast float %7775, 5.000000e-01
  %7785 = fmul fast float %7784, %7783
  %7786 = fsub fast float 5.000000e-01, %7785
  br label %7787

; <label>:7787                                    ; preds = %7759, %7635, %7620
  %7788 = phi float [ 1.000000e+00, %7620 ], [ %7701, %7635 ], [ %7786, %7759 ]
  %7789 = fcmp fast ogt float %7048, 0.000000e+00
  br i1 %7789, label %7790, label %8108, !dx.controlflow.hints !119

; <label>:7790                                    ; preds = %7787
  %7791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7792 = extractvalue %dx.types.CBufRet.f32 %7791, 0
  %7793 = fadd fast float %7792, %6932
  %7794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7795 = extractvalue %dx.types.CBufRet.f32 %7794, 2
  %7796 = extractvalue %dx.types.CBufRet.f32 %7794, 3
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 0
  %7799 = call float @dx.op.binary.f32(i32 35, float %7793, float 0.000000e+00)  ; FMax(a,b)
  %7800 = fadd fast float %7799, 0x3F10000000000000
  %7801 = fcmp fast oeq float %7798, 0.000000e+00
  br i1 %6935, label %7802, label %7955, !dx.controlflow.hints !120

; <label>:7802                                    ; preds = %7790
  br i1 %7801, label %7803, label %7870

; <label>:7803                                    ; preds = %7802
  %7804 = extractvalue %dx.types.CBufRet.f32 %7794, 1
  %7805 = extractvalue %dx.types.CBufRet.f32 %7794, 0
  %7806 = fmul fast float %7805, %6924
  %7807 = fmul fast float %7804, %6928
  %7808 = fadd fast float %7806, 5.000000e-01
  %7809 = call float @dx.op.unary.f32(i32 27, float %7808)  ; Round_ni(value)
  %7810 = fadd fast float %7807, 5.000000e-01
  %7811 = call float @dx.op.unary.f32(i32 27, float %7810)  ; Round_ni(value)
  %7812 = fsub fast float %7808, %7809
  %7813 = fsub fast float %7810, %7811
  %7814 = fadd fast float %7809, -5.000000e-01
  %7815 = fadd fast float %7811, -5.000000e-01
  %7816 = fmul fast float %7812, 2.000000e+00
  %7817 = fsub fast float 3.000000e+00, %7816
  %7818 = fadd fast float %7816, 1.000000e+00
  %7819 = fsub fast float 2.000000e+00, %7812
  %7820 = bitcast float %7817 to i32
  %7821 = sub nsw i32 2129859010, %7820
  %7822 = bitcast i32 %7821 to float
  %7823 = fmul fast float %7822, %7819
  %7824 = fadd fast float %7823, -1.000000e+00
  %7825 = bitcast float %7818 to i32
  %7826 = sub nsw i32 2129859010, %7825
  %7827 = bitcast i32 %7826 to float
  %7828 = fmul fast float %7827, %7812
  %7829 = fadd fast float %7828, 1.000000e+00
  %7830 = fmul fast float %7813, 2.000000e+00
  %7831 = fsub fast float 3.000000e+00, %7830
  %7832 = fadd fast float %7830, 1.000000e+00
  %7833 = fsub fast float 2.000000e+00, %7813
  %7834 = bitcast float %7831 to i32
  %7835 = sub nsw i32 2129859010, %7834
  %7836 = bitcast i32 %7835 to float
  %7837 = fmul fast float %7836, %7833
  %7838 = fadd fast float %7837, -1.000000e+00
  %7839 = bitcast float %7832 to i32
  %7840 = sub nsw i32 2129859010, %7839
  %7841 = bitcast i32 %7840 to float
  %7842 = fmul fast float %7841, %7813
  %7843 = fadd fast float %7842, 1.000000e+00
  %7844 = fadd fast float %7824, %7814
  %7845 = fmul fast float %7844, %7795
  %7846 = fadd fast float %7838, %7815
  %7847 = fmul fast float %7846, %7796
  %7848 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7845, float %7847, float undef, float undef, i32 0, i32 0, i32 undef, float %7800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7849 = extractvalue %dx.types.ResRet.f32 %7848, 0
  %7850 = fmul fast float %7849, %7817
  %7851 = fadd fast float %7829, %7814
  %7852 = fmul fast float %7851, %7795
  %7853 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7852, float %7847, float undef, float undef, i32 0, i32 0, i32 undef, float %7800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7854 = extractvalue %dx.types.ResRet.f32 %7853, 0
  %7855 = fmul fast float %7854, %7818
  %7856 = fadd fast float %7843, %7815
  %7857 = fmul fast float %7856, %7796
  %7858 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7845, float %7857, float undef, float undef, i32 0, i32 0, i32 undef, float %7800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7859 = extractvalue %dx.types.ResRet.f32 %7858, 0
  %7860 = fmul fast float %7859, %7817
  %7861 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7852, float %7857, float undef, float undef, i32 0, i32 0, i32 undef, float %7800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7862 = extractvalue %dx.types.ResRet.f32 %7861, 0
  %7863 = fmul fast float %7862, %7818
  %7864 = fadd fast float %7863, %7860
  %7865 = fmul fast float %7864, %7832
  %7866 = fadd fast float %7855, %7850
  %7867 = fmul fast float %7866, %7831
  %7868 = fadd fast float %7867, %7865
  %7869 = fmul fast float %7868, 6.250000e-02
  br label %8108

; <label>:7870                                    ; preds = %7802
  %7871 = fmul fast float %260, 0x401921FB60000000
  %7872 = call float @dx.op.unary.f32(i32 13, float %7871)  ; Sin(value)
  %7873 = call float @dx.op.unary.f32(i32 12, float %7871)  ; Cos(value)
  %7874 = fsub fast float -0.000000e+00, %7872
  br label %7875

; <label>:7875                                    ; preds = %7924, %7870
  %7876 = phi float [ 0.000000e+00, %7870 ], [ %7919, %7924 ]
  %7877 = phi float [ 0.000000e+00, %7870 ], [ %7921, %7924 ]
  %7878 = phi i32 [ 0, %7870 ], [ %7925, %7924 ]
  %7879 = mul i32 %7878, 2
  %7880 = add i32 0, %7879
  %7881 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7880
  %7882 = load float, float* %7881, align 4
  %7883 = mul i32 %7878, 2
  %7884 = add i32 1, %7883
  %7885 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7884
  %7886 = load float, float* %7885, align 4
  %7887 = fmul fast float %7882, %7873
  %7888 = call float @dx.op.tertiary.f32(i32 46, float %7886, float %7874, float %7887)  ; FMad(a,b,c)
  %7889 = fmul fast float %7882, %7872
  %7890 = call float @dx.op.tertiary.f32(i32 46, float %7886, float %7873, float %7889)  ; FMad(a,b,c)
  %7891 = fmul fast float %7888, %7798
  %7892 = fmul fast float %7890, %7798
  %7893 = fadd fast float %7891, %6924
  %7894 = fadd fast float %7892, %6928
  %7895 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %45, float %7893, float %7894, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7896 = extractvalue %dx.types.ResRet.f32 %7895, 0
  %7897 = extractvalue %dx.types.ResRet.f32 %7895, 1
  %7898 = extractvalue %dx.types.ResRet.f32 %7895, 2
  %7899 = extractvalue %dx.types.ResRet.f32 %7895, 3
  %7900 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7896, float* %7900, align 4
  %7901 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7897, float* %7901, align 4
  %7902 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7898, float* %7902, align 4
  %7903 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7899, float* %7903, align 4
  %7904 = fsub fast float %7896, %7800
  %7905 = fcmp fast olt float %7904, 0.000000e+00
  %7906 = select i1 %7905, float 0.000000e+00, float 1.000000e+00
  %7907 = fadd fast float %7906, %7876
  %7908 = fmul fast float %7906, %7904
  %7909 = fadd fast float %7908, %7877
  br label %7910

; <label>:7910                                    ; preds = %7910, %7875
  %7911 = phi i32 [ 1, %7875 ], [ %7922, %7910 ]
  %7912 = phi float [ %7909, %7875 ], [ %7921, %7910 ]
  %7913 = phi float [ %7907, %7875 ], [ %7919, %7910 ]
  %7914 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7911
  %7915 = load float, float* %7914, align 4, !tbaa !114, !noalias !104
  %7916 = fsub fast float %7915, %7800
  %7917 = fcmp fast olt float %7916, 0.000000e+00
  %7918 = select i1 %7917, float 0.000000e+00, float 1.000000e+00
  %7919 = fadd fast float %7918, %7913
  %7920 = fmul fast float %7918, %7916
  %7921 = fadd fast float %7920, %7912
  %7922 = add nuw nsw i32 %7911, 1
  %7923 = icmp eq i32 %7922, 4
  br i1 %7923, label %7924, label %7910, !llvm.loop !116

; <label>:7924                                    ; preds = %7910
  %7925 = add nuw nsw i32 %7878, 1
  %7926 = icmp eq i32 %7925, 8
  br i1 %7926, label %7927, label %7875, !llvm.loop !117

; <label>:7927                                    ; preds = %7924
  %7928 = fdiv fast float 1.000000e+00, %7919
  %7929 = fmul fast float %7928, %7921
  %7930 = fdiv fast float 1.000000e+00, %7800
  %7931 = fmul fast float %7929, %7930
  %7932 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7933 = call float @dx.op.binary.f32(i32 35, float %7932, float 0.000000e+00)  ; FMax(a,b)
  %7934 = fmul fast float %7919, 3.125000e-02
  %7935 = call float @dx.op.unary.f32(i32 7, float %7934)  ; Saturate(value)
  %7936 = fmul fast float %7935, 2.000000e+00
  %7937 = fadd fast float %7936, -1.000000e+00
  %7938 = fcmp fast ogt float %7937, 0.000000e+00
  %7939 = fcmp fast olt float %7937, 0.000000e+00
  %7940 = zext i1 %7938 to i32
  %7941 = zext i1 %7939 to i32
  %7942 = sub nsw i32 %7940, %7941
  %7943 = sitofp i32 %7942 to float
  %7944 = fmul fast float %7943, %7937
  %7945 = fsub fast float 1.000000e+00, %7944
  %7946 = fmul fast float %7945, %7945
  %7947 = fmul fast float %7946, %7945
  %7948 = fsub fast float %7945, %7947
  %7949 = fmul fast float %7948, %7933
  %7950 = fsub fast float 1.000000e+00, %7947
  %7951 = fsub fast float %7950, %7949
  %7952 = fmul fast float %7943, 5.000000e-01
  %7953 = fmul fast float %7952, %7951
  %7954 = fsub fast float 5.000000e-01, %7953
  br label %8108

; <label>:7955                                    ; preds = %7790
  br i1 %7801, label %7956, label %8023

; <label>:7956                                    ; preds = %7955
  %7957 = extractvalue %dx.types.CBufRet.f32 %7794, 1
  %7958 = extractvalue %dx.types.CBufRet.f32 %7794, 0
  %7959 = fmul fast float %7958, %6924
  %7960 = fmul fast float %7957, %6928
  %7961 = fadd fast float %7959, 5.000000e-01
  %7962 = call float @dx.op.unary.f32(i32 27, float %7961)  ; Round_ni(value)
  %7963 = fadd fast float %7960, 5.000000e-01
  %7964 = call float @dx.op.unary.f32(i32 27, float %7963)  ; Round_ni(value)
  %7965 = fsub fast float %7961, %7962
  %7966 = fsub fast float %7963, %7964
  %7967 = fadd fast float %7962, -5.000000e-01
  %7968 = fadd fast float %7964, -5.000000e-01
  %7969 = fmul fast float %7965, 2.000000e+00
  %7970 = fsub fast float 3.000000e+00, %7969
  %7971 = fadd fast float %7969, 1.000000e+00
  %7972 = fsub fast float 2.000000e+00, %7965
  %7973 = bitcast float %7970 to i32
  %7974 = sub nsw i32 2129859010, %7973
  %7975 = bitcast i32 %7974 to float
  %7976 = fmul fast float %7975, %7972
  %7977 = fadd fast float %7976, -1.000000e+00
  %7978 = bitcast float %7971 to i32
  %7979 = sub nsw i32 2129859010, %7978
  %7980 = bitcast i32 %7979 to float
  %7981 = fmul fast float %7980, %7965
  %7982 = fadd fast float %7981, 1.000000e+00
  %7983 = fmul fast float %7966, 2.000000e+00
  %7984 = fsub fast float 3.000000e+00, %7983
  %7985 = fadd fast float %7983, 1.000000e+00
  %7986 = fsub fast float 2.000000e+00, %7966
  %7987 = bitcast float %7984 to i32
  %7988 = sub nsw i32 2129859010, %7987
  %7989 = bitcast i32 %7988 to float
  %7990 = fmul fast float %7989, %7986
  %7991 = fadd fast float %7990, -1.000000e+00
  %7992 = bitcast float %7985 to i32
  %7993 = sub nsw i32 2129859010, %7992
  %7994 = bitcast i32 %7993 to float
  %7995 = fmul fast float %7994, %7966
  %7996 = fadd fast float %7995, 1.000000e+00
  %7997 = fadd fast float %7977, %7967
  %7998 = fmul fast float %7997, %7795
  %7999 = fadd fast float %7991, %7968
  %8000 = fmul fast float %7999, %7796
  %8001 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7998, float %8000, float undef, float undef, i32 0, i32 0, i32 undef, float %7800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8002 = extractvalue %dx.types.ResRet.f32 %8001, 0
  %8003 = fmul fast float %8002, %7970
  %8004 = fadd fast float %7982, %7967
  %8005 = fmul fast float %8004, %7795
  %8006 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %8005, float %8000, float undef, float undef, i32 0, i32 0, i32 undef, float %7800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8007 = extractvalue %dx.types.ResRet.f32 %8006, 0
  %8008 = fmul fast float %8007, %7971
  %8009 = fadd fast float %7996, %7968
  %8010 = fmul fast float %8009, %7796
  %8011 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7998, float %8010, float undef, float undef, i32 0, i32 0, i32 undef, float %7800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8012 = extractvalue %dx.types.ResRet.f32 %8011, 0
  %8013 = fmul fast float %8012, %7970
  %8014 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %8005, float %8010, float undef, float undef, i32 0, i32 0, i32 undef, float %7800)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8015 = extractvalue %dx.types.ResRet.f32 %8014, 0
  %8016 = fmul fast float %8015, %7971
  %8017 = fadd fast float %8016, %8013
  %8018 = fmul fast float %8017, %7985
  %8019 = fadd fast float %8008, %8003
  %8020 = fmul fast float %8019, %7984
  %8021 = fadd fast float %8020, %8018
  %8022 = fmul fast float %8021, 6.250000e-02
  br label %8108

; <label>:8023                                    ; preds = %7955
  %8024 = fmul fast float %260, 0x401921FB60000000
  %8025 = call float @dx.op.unary.f32(i32 13, float %8024)  ; Sin(value)
  %8026 = call float @dx.op.unary.f32(i32 12, float %8024)  ; Cos(value)
  %8027 = fsub fast float -0.000000e+00, %8025
  br label %8028

; <label>:8028                                    ; preds = %8077, %8023
  %8029 = phi float [ 0.000000e+00, %8023 ], [ %8072, %8077 ]
  %8030 = phi float [ 0.000000e+00, %8023 ], [ %8074, %8077 ]
  %8031 = phi i32 [ 0, %8023 ], [ %8078, %8077 ]
  %8032 = mul i32 %8031, 2
  %8033 = add i32 0, %8032
  %8034 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8033
  %8035 = load float, float* %8034, align 4
  %8036 = mul i32 %8031, 2
  %8037 = add i32 1, %8036
  %8038 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8037
  %8039 = load float, float* %8038, align 4
  %8040 = fmul fast float %8035, %8026
  %8041 = call float @dx.op.tertiary.f32(i32 46, float %8039, float %8027, float %8040)  ; FMad(a,b,c)
  %8042 = fmul fast float %8035, %8025
  %8043 = call float @dx.op.tertiary.f32(i32 46, float %8039, float %8026, float %8042)  ; FMad(a,b,c)
  %8044 = fmul fast float %8041, %7798
  %8045 = fmul fast float %8043, %7798
  %8046 = fadd fast float %8044, %6924
  %8047 = fadd fast float %8045, %6928
  %8048 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %45, float %8046, float %8047, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8049 = extractvalue %dx.types.ResRet.f32 %8048, 0
  %8050 = extractvalue %dx.types.ResRet.f32 %8048, 1
  %8051 = extractvalue %dx.types.ResRet.f32 %8048, 2
  %8052 = extractvalue %dx.types.ResRet.f32 %8048, 3
  %8053 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %8049, float* %8053, align 4
  %8054 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %8050, float* %8054, align 4
  %8055 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %8051, float* %8055, align 4
  %8056 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %8052, float* %8056, align 4
  %8057 = fsub fast float %8049, %7800
  %8058 = fcmp fast olt float %8057, 0.000000e+00
  %8059 = select i1 %8058, float 0.000000e+00, float 1.000000e+00
  %8060 = fadd fast float %8059, %8029
  %8061 = fmul fast float %8059, %8057
  %8062 = fadd fast float %8061, %8030
  br label %8063

; <label>:8063                                    ; preds = %8063, %8028
  %8064 = phi i32 [ 1, %8028 ], [ %8075, %8063 ]
  %8065 = phi float [ %8062, %8028 ], [ %8074, %8063 ]
  %8066 = phi float [ %8060, %8028 ], [ %8072, %8063 ]
  %8067 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %8064
  %8068 = load float, float* %8067, align 4, !tbaa !114, !noalias !104
  %8069 = fsub fast float %8068, %7800
  %8070 = fcmp fast olt float %8069, 0.000000e+00
  %8071 = select i1 %8070, float 0.000000e+00, float 1.000000e+00
  %8072 = fadd fast float %8071, %8066
  %8073 = fmul fast float %8071, %8069
  %8074 = fadd fast float %8073, %8065
  %8075 = add nuw nsw i32 %8064, 1
  %8076 = icmp eq i32 %8075, 4
  br i1 %8076, label %8077, label %8063, !llvm.loop !116

; <label>:8077                                    ; preds = %8063
  %8078 = add nuw nsw i32 %8031, 1
  %8079 = icmp eq i32 %8078, 8
  br i1 %8079, label %8080, label %8028, !llvm.loop !117

; <label>:8080                                    ; preds = %8077
  %8081 = fdiv fast float 1.000000e+00, %8072
  %8082 = fmul fast float %8081, %8074
  %8083 = fdiv fast float 1.000000e+00, %7800
  %8084 = fmul fast float %8082, %8083
  %8085 = call float @dx.op.unary.f32(i32 7, float %8084)  ; Saturate(value)
  %8086 = call float @dx.op.binary.f32(i32 35, float %8085, float 0.000000e+00)  ; FMax(a,b)
  %8087 = fmul fast float %8072, 3.125000e-02
  %8088 = call float @dx.op.unary.f32(i32 7, float %8087)  ; Saturate(value)
  %8089 = fmul fast float %8088, 2.000000e+00
  %8090 = fadd fast float %8089, -1.000000e+00
  %8091 = fcmp fast ogt float %8090, 0.000000e+00
  %8092 = fcmp fast olt float %8090, 0.000000e+00
  %8093 = zext i1 %8091 to i32
  %8094 = zext i1 %8092 to i32
  %8095 = sub nsw i32 %8093, %8094
  %8096 = sitofp i32 %8095 to float
  %8097 = fmul fast float %8096, %8090
  %8098 = fsub fast float 1.000000e+00, %8097
  %8099 = fmul fast float %8098, %8098
  %8100 = fmul fast float %8099, %8098
  %8101 = fsub fast float %8098, %8100
  %8102 = fmul fast float %8101, %8086
  %8103 = fsub fast float 1.000000e+00, %8100
  %8104 = fsub fast float %8103, %8102
  %8105 = fmul fast float %8096, 5.000000e-01
  %8106 = fmul fast float %8105, %8104
  %8107 = fsub fast float 5.000000e-01, %8106
  br label %8108

; <label>:8108                                    ; preds = %8080, %7956, %7927, %7803, %7787
  %8109 = phi float [ 1.000000e+00, %7787 ], [ %7869, %7803 ], [ %7954, %7927 ], [ %8022, %7956 ], [ %8107, %8080 ]
  %8110 = fsub fast float %7621, %7454
  %8111 = fmul fast float %8110, %7021
  %8112 = fadd fast float %8111, %7454
  %8113 = fsub fast float %7788, %8112
  %8114 = fmul fast float %8113, %7020
  %8115 = fadd fast float %8114, %8112
  %8116 = fsub fast float %8109, %8115
  %8117 = fmul fast float %8116, %7048
  %8118 = fadd fast float %8117, %8115
  %8119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8120 = extractvalue %dx.types.CBufRet.f32 %8119, 2
  %8121 = fcmp fast ogt float %8120, 0.000000e+00
  br i1 %8121, label %8122, label %8162, !dx.controlflow.hints !121

; <label>:8122                                    ; preds = %8108
  %8123 = fcmp fast ugt float %8120, 0.000000e+00
  br i1 %8123, label %8124, label %8159

; <label>:8124                                    ; preds = %8122
  %8125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8126 = extractvalue %dx.types.CBufRet.f32 %8125, 0
  %8127 = extractvalue %dx.types.CBufRet.f32 %8125, 1
  %8128 = extractvalue %dx.types.CBufRet.f32 %8125, 2
  %8129 = extractvalue %dx.types.CBufRet.f32 %8125, 3
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 0
  %8132 = extractvalue %dx.types.CBufRet.f32 %8130, 1
  %8133 = extractvalue %dx.types.CBufRet.f32 %8130, 2
  %8134 = extractvalue %dx.types.CBufRet.f32 %8130, 3
  %8135 = extractvalue %dx.types.CBufRet.f32 %8119, 0
  %8136 = extractvalue %dx.types.CBufRet.f32 %8119, 1
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 0
  %8139 = extractvalue %dx.types.CBufRet.f32 %8137, 1
  %8140 = extractvalue %dx.types.CBufRet.f32 %8137, 2
  %8141 = fadd fast float %8138, %6901
  %8142 = fadd fast float %8139, %6902
  %8143 = fadd fast float %8140, %6903
  %8144 = fmul fast float %8141, %8126
  %8145 = call float @dx.op.tertiary.f32(i32 46, float %8127, float %8142, float %8144)  ; FMad(a,b,c)
  %8146 = call float @dx.op.tertiary.f32(i32 46, float %8128, float %8143, float %8145)  ; FMad(a,b,c)
  %8147 = fadd fast float %8146, %8129
  %8148 = fmul fast float %8141, %8131
  %8149 = call float @dx.op.tertiary.f32(i32 46, float %8132, float %8142, float %8148)  ; FMad(a,b,c)
  %8150 = call float @dx.op.tertiary.f32(i32 46, float %8133, float %8143, float %8149)  ; FMad(a,b,c)
  %8151 = fadd fast float %8150, %8134
  %8152 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %8147, float %8151, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8153 = extractvalue %dx.types.ResRet.f32 %8152, 0
  %8154 = fmul fast float %8153, %8136
  %8155 = fadd fast float %8154, %8135
  %8156 = call float @dx.op.unary.f32(i32 7, float %8155)  ; Saturate(value)
  %8157 = fmul fast float %8156, %8120
  %8158 = fsub fast float 1.000000e+00, %8157
  br label %8159

; <label>:8159                                    ; preds = %8124, %8122
  %8160 = phi float [ %8158, %8124 ], [ 1.000000e+00, %8122 ]
  %8161 = fmul fast float %8160, %8118
  br label %8162

; <label>:8162                                    ; preds = %8159, %8108, %6881
  %8163 = phi float [ 1.000000e+00, %6881 ], [ %8161, %8159 ], [ %8118, %8108 ]
  %8164 = call float @dx.op.binary.f32(i32 36, float %8163, float %8163)  ; FMin(a,b)
  %8165 = call float @dx.op.binary.f32(i32 36, float %8163, float %8164)  ; FMin(a,b)
  %8166 = fcmp fast ogt float %8165, 0.000000e+00
  br i1 %8166, label %8167, label %8333, !dx.controlflow.hints !122

; <label>:8167                                    ; preds = %8162
  %8168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.f32 %8168, 0
  %8170 = extractvalue %dx.types.CBufRet.f32 %8168, 1
  %8171 = extractvalue %dx.types.CBufRet.f32 %8168, 2
  %8172 = extractvalue %dx.types.CBufRet.f32 %8168, 3
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.CBufRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.CBufRet.f32 %8173, 2
  %8177 = extractvalue %dx.types.CBufRet.f32 %8173, 3
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %8180 = extractvalue %dx.types.CBufRet.f32 %8178, 1
  %8181 = extractvalue %dx.types.CBufRet.f32 %8178, 2
  %8182 = extractvalue %dx.types.CBufRet.f32 %8178, 3
  %8183 = fmul fast float %8169, %6901
  %8184 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %8170, float %8183)  ; FMad(a,b,c)
  %8185 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %8171, float %8184)  ; FMad(a,b,c)
  %8186 = fadd fast float %8185, %8172
  %8187 = fmul fast float %8174, %6901
  %8188 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %8175, float %8187)  ; FMad(a,b,c)
  %8189 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %8176, float %8188)  ; FMad(a,b,c)
  %8190 = fadd fast float %8189, %8177
  %8191 = fmul fast float %8179, %6901
  %8192 = call float @dx.op.tertiary.f32(i32 46, float %6902, float %8180, float %8191)  ; FMad(a,b,c)
  %8193 = call float @dx.op.tertiary.f32(i32 46, float %6903, float %8181, float %8192)  ; FMad(a,b,c)
  %8194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8195 = extractvalue %dx.types.CBufRet.f32 %8194, 0
  %8196 = extractvalue %dx.types.CBufRet.f32 %8194, 1
  %8197 = extractvalue %dx.types.CBufRet.f32 %8194, 3
  %8198 = fmul fast float %8197, %8186
  %8199 = fmul fast float %8197, %8190
  %8200 = fadd fast float %8198, %8195
  %8201 = fadd fast float %8199, %8196
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 0
  %8204 = extractvalue %dx.types.CBufRet.f32 %8202, 1
  %8205 = fsub fast float %8200, %8203
  %8206 = fsub fast float %8201, %8204
  %8207 = fcmp fast olt float %8205, 0.000000e+00
  %8208 = fcmp fast olt float %8206, 0.000000e+00
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 0
  %8211 = extractvalue %dx.types.CBufRet.f32 %8209, 1
  %8212 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %8213 = extractvalue %dx.types.CBufRet.f32 %8209, 3
  %8214 = select i1 %8207, float %8210, float %8212
  %8215 = select i1 %8208, float %8211, float %8213
  %8216 = fmul fast float %8214, %8205
  %8217 = fmul fast float %8215, %8206
  %8218 = call float @dx.op.unary.f32(i32 6, float %8216)  ; FAbs(value)
  %8219 = call float @dx.op.unary.f32(i32 6, float %8217)  ; FAbs(value)
  %8220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8221 = extractvalue %dx.types.CBufRet.f32 %8220, 0
  %8222 = call float @dx.op.binary.f32(i32 35, float %8218, float %8219)  ; FMax(a,b)
  %8223 = fsub fast float %8221, %8222
  %8224 = call float @dx.op.unary.f32(i32 7, float %8223)  ; Saturate(value)
  %8225 = fcmp fast ogt float %8224, 0.000000e+00
  br i1 %8225, label %8226, label %8267, !dx.controlflow.hints !123

; <label>:8226                                    ; preds = %8167
  %8227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %8200, float %8201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8228 = extractvalue %dx.types.ResRet.f32 %8227, 1
  %8229 = fcmp fast ogt float %8228, 0.000000e+00
  br i1 %8229, label %8230, label %8262

; <label>:8230                                    ; preds = %8226
  %8231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %8200, float %8201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8232 = extractvalue %dx.types.ResRet.f32 %8231, 0
  %8233 = extractvalue %dx.types.ResRet.f32 %8231, 1
  %8234 = extractvalue %dx.types.ResRet.f32 %8231, 2
  %8235 = extractvalue %dx.types.ResRet.f32 %8231, 3
  %8236 = fsub fast float 1.000000e+00, %8182
  %8237 = fsub fast float %8236, %8193
  %8238 = fmul fast float %8237, 0x400921FB60000000
  %8239 = fadd fast float %8238, 0x3FF921FB60000000
  %8240 = call float @dx.op.unary.f32(i32 13, float %8239)  ; Sin(value)
  %8241 = fadd fast float %8240, -1.000000e+00
  %8242 = fmul fast float %8241, 0x3FD45F3060000000
  %8243 = fmul fast float %8237, 0x401921FB60000000
  %8244 = fadd fast float %8243, 0x400921FB60000000
  %8245 = call float @dx.op.unary.f32(i32 13, float %8244)  ; Sin(value)
  %8246 = fadd fast float %8245, 0x3E7777A5C0000000
  %8247 = fmul fast float %8246, 0x3FC45F3060000000
  %8248 = fmul fast float %8237, 0x4022D97C80000000
  %8249 = fadd fast float %8248, 0x4012D97C80000000
  %8250 = call float @dx.op.unary.f32(i32 13, float %8249)  ; Sin(value)
  %8251 = fadd fast float %8250, 1.000000e+00
  %8252 = fmul fast float %8251, 0x3FBB2995E0000000
  %8253 = fmul fast float %8237, 0x402921FB60000000
  %8254 = fadd fast float %8253, 0x401921FB60000000
  %8255 = call float @dx.op.unary.f32(i32 13, float %8254)  ; Sin(value)
  %8256 = fadd fast float %8255, 0xBE8777A5C0000000
  %8257 = fmul fast float %8256, 0x3FB45F3060000000
  %8258 = call float @dx.op.dot4.f32(i32 56, float %8232, float %8233, float %8234, float %8235, float %8242, float %8247, float %8252, float %8257)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8259 = fmul fast float %8258, 0xBFF7154760000000
  %8260 = call float @dx.op.unary.f32(i32 21, float %8259)  ; Exp(value)
  %8261 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  br label %8262

; <label>:8262                                    ; preds = %8230, %8226
  %8263 = phi float [ %8261, %8230 ], [ 1.000000e+00, %8226 ]
  %8264 = fadd fast float %8263, -1.000000e+00
  %8265 = fmul fast float %8264, %8224
  %8266 = fadd fast float %8265, 1.000000e+00
  br label %8267

; <label>:8267                                    ; preds = %8262, %8167
  %8268 = phi float [ %8266, %8262 ], [ 1.000000e+00, %8167 ]
  %8269 = fmul fast float %8268, %8163
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 0
  %8272 = extractvalue %dx.types.CBufRet.f32 %8270, 1
  %8273 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8274 = fadd fast float %8271, %188
  %8275 = fadd fast float %8272, %189
  %8276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8277 = extractvalue %dx.types.CBufRet.f32 %8276, 1
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.CBufRet.f32 %8278, 1
  %8281 = extractvalue %dx.types.CBufRet.f32 %8278, 2
  %8282 = fsub fast float -0.000000e+00, %8274
  %8283 = fsub fast float -0.000000e+00, %8275
  %8284 = fsub fast float -0.000000e+00, %190
  %8285 = fsub fast float %8284, %8273
  %8286 = fadd fast float %8285, %8277
  %8287 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8282, float %8283, float %8286)  ; Dot3(ax,ay,az,bx,by,bz)
  %8288 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8279, float %8280, float %8281)  ; Dot3(ax,ay,az,bx,by,bz)
  %8289 = fdiv fast float 1.000000e+00, %8288
  %8290 = fmul fast float %8289, %8287
  %8291 = fmul fast float %8279, %8290
  %8292 = fmul fast float %8280, %8290
  %8293 = fadd fast float %8291, %8274
  %8294 = fadd fast float %8292, %8275
  %8295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8296 = extractvalue %dx.types.CBufRet.f32 %8295, 0
  %8297 = extractvalue %dx.types.CBufRet.f32 %8295, 1
  %8298 = fsub fast float %8293, %8296
  %8299 = fsub fast float %8294, %8297
  %8300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8301 = extractvalue %dx.types.CBufRet.f32 %8300, 2
  %8302 = extractvalue %dx.types.CBufRet.f32 %8300, 3
  %8303 = fmul fast float %8298, %8301
  %8304 = fmul fast float %8299, %8302
  %8305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8306 = extractvalue %dx.types.CBufRet.i32 %8305, 3
  %8307 = icmp eq i32 %8306, 0
  br i1 %8307, label %8313, label %8308

; <label>:8308                                    ; preds = %8267
  %8309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %8303, float %8304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8310 = extractvalue %dx.types.ResRet.f32 %8309, 0
  %8311 = extractvalue %dx.types.ResRet.f32 %8309, 1
  %8312 = extractvalue %dx.types.ResRet.f32 %8309, 2
  br label %8318

; <label>:8313                                    ; preds = %8267
  %8314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %8303, float %8304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8315 = extractvalue %dx.types.ResRet.f32 %8314, 0
  %8316 = extractvalue %dx.types.ResRet.f32 %8314, 1
  %8317 = extractvalue %dx.types.ResRet.f32 %8314, 2
  br label %8318

; <label>:8318                                    ; preds = %8313, %8308
  %8319 = phi float [ %8310, %8308 ], [ %8315, %8313 ]
  %8320 = phi float [ %8311, %8308 ], [ %8316, %8313 ]
  %8321 = phi float [ %8312, %8308 ], [ %8317, %8313 ]
  %8322 = extractvalue %dx.types.CBufRet.f32 %8276, 2
  %8323 = fmul fast float %8322, %8319
  %8324 = extractvalue %dx.types.CBufRet.f32 %8276, 0
  %8325 = fsub fast float %8290, %8324
  %8326 = fsub fast float %8325, %8323
  %8327 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8326)  ; FMax(a,b)
  %8328 = fmul fast float %8327, %8320
  %8329 = call float @dx.op.binary.f32(i32 36, float %8321, float %8328)  ; FMin(a,b)
  %8330 = fmul fast float %8329, 0xBFF7154760000000
  %8331 = call float @dx.op.unary.f32(i32 21, float %8330)  ; Exp(value)
  %8332 = fmul fast float %8269, %8331
  br label %8333

; <label>:8333                                    ; preds = %8318, %8162
  %8334 = phi float [ %8332, %8318 ], [ %8163, %8162 ]
  %8335 = call float @dx.op.binary.f32(i32 36, float %8334, float %8334)  ; FMin(a,b)
  %8336 = call float @dx.op.binary.f32(i32 36, float %8334, float %8335)  ; FMin(a,b)
  %8337 = fcmp fast ogt float %8336, 0.000000e+00
  br i1 %8337, label %8338, label %8645, !dx.controlflow.hints !124

; <label>:8338                                    ; preds = %8333
  %8339 = fmul fast float %8334, %6893
  %8340 = fmul fast float %8334, %6894
  %8341 = fmul fast float %8334, %6895
  %8342 = fsub fast float %6882, %5964
  %8343 = fsub fast float %6883, %5963
  %8344 = fsub fast float %6884, %5962
  %8345 = call float @dx.op.dot3.f32(i32 55, float %8342, float %8343, float %8344, float %8342, float %8343, float %8344)  ; Dot3(ax,ay,az,bx,by,bz)
  %8346 = call float @dx.op.unary.f32(i32 25, float %8345)  ; Rsqrt(value)
  %8347 = fmul fast float %8346, %8342
  %8348 = fmul fast float %8346, %8343
  %8349 = fmul fast float %8346, %8344
  %8350 = call float @dx.op.dot3.f32(i32 55, float %6882, float %6883, float %6884, float %5971, float %5972, float %5973)  ; Dot3(ax,ay,az,bx,by,bz)
  %8351 = call float @dx.op.dot3.f32(i32 55, float %5961, float %5960, float %5959, float %8347, float %8348, float %8349)  ; Dot3(ax,ay,az,bx,by,bz)
  %8352 = call float @dx.op.unary.f32(i32 7, float %8350)  ; Saturate(value)
  %8353 = fmul fast float %8352, %8352
  %8354 = fmul fast float %8353, %6003
  %8355 = call float @dx.op.unary.f32(i32 7, float %8354)  ; Saturate(value)
  %8356 = fmul fast float %8355, %8352
  %8357 = call float @dx.op.dot3.f32(i32 55, float %5971, float %5972, float %5973, float %8347, float %8348, float %8349)  ; Dot3(ax,ay,az,bx,by,bz)
  %8358 = fmul fast float %8357, %8357
  %8359 = call float @dx.op.unary.f32(i32 6, float %8350)  ; FAbs(value)
  %8360 = fsub fast float 1.000000e+00, %5996
  %8361 = fmul fast float %5978, %5978
  %8362 = fmul fast float %8361, %8360
  %8363 = fadd fast float %8362, %5996
  %8364 = bitcast float %8363 to i32
  %8365 = ashr i32 %8364, 1
  %8366 = add nsw i32 %8365, 532487669
  %8367 = bitcast i32 %8366 to float
  %8368 = fadd fast float %8367, %5978
  %8369 = fmul fast float %5996, %8358
  %8370 = fsub fast float 1.000000e+00, %8358
  %8371 = fadd fast float %8370, %8369
  %8372 = fmul fast float %8359, %8359
  %8373 = fmul fast float %8372, %8360
  %8374 = fadd fast float %8373, %5996
  %8375 = bitcast float %8374 to i32
  %8376 = ashr i32 %8375, 1
  %8377 = add nsw i32 %8376, 532487669
  %8378 = bitcast i32 %8377 to float
  %8379 = fadd fast float %8378, %8359
  %8380 = fmul fast float %8371, %8371
  %8381 = fmul fast float %8380, %8368
  %8382 = fmul fast float %8381, %8379
  %8383 = fdiv fast float 0x3FF0A00000000000, %8382
  %8384 = fmul fast float %8383, %5996
  %8385 = fmul fast float %6249, 0x3FF9999980000000
  %8386 = fsub fast float 5.000000e+00, %8385
  %8387 = call float @dx.op.unary.f32(i32 6, float %8351)  ; FAbs(value)
  %8388 = fsub fast float 1.000000e+00, %8387
  %8389 = fmul fast float %6249, 0x41D9660740000000
  %8390 = fadd fast float %8389, 0xC1EFBF8940000000
  %8391 = bitcast float %8388 to i32
  %8392 = sitofp i32 %8391 to float
  %8393 = fmul fast float %8392, %8386
  %8394 = fadd fast float %8390, %8393
  %8395 = fptosi float %8394 to i32
  %8396 = bitcast i32 %8395 to float
  %8397 = fsub fast float 1.000000e+00, %5968
  %8398 = fsub fast float 1.000000e+00, %5969
  %8399 = fsub fast float 1.000000e+00, %5976
  %8400 = fmul fast float %8396, %8397
  %8401 = fmul fast float %8396, %8398
  %8402 = fmul fast float %8396, %8399
  %8403 = fadd fast float %8400, %5968
  %8404 = fadd fast float %8401, %5969
  %8405 = fadd fast float %8402, %5976
  br i1 %6272, label %8406, label %8429

; <label>:8406                                    ; preds = %8338
  %8407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4658, float %8387, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = fadd fast float %8408, -5.000000e-01
  %8412 = fadd fast float %8409, -5.000000e-01
  %8413 = fadd fast float %8410, -5.000000e-01
  %8414 = fmul fast float %5968, 4.000000e+00
  %8415 = fmul fast float %8414, %8397
  %8416 = fmul fast float %8415, %8411
  %8417 = fmul fast float %5969, 4.000000e+00
  %8418 = fmul fast float %8417, %8398
  %8419 = fmul fast float %8418, %8412
  %8420 = fmul fast float %5976, 4.000000e+00
  %8421 = fmul fast float %8420, %8399
  %8422 = fmul fast float %8421, %8413
  %8423 = fadd fast float %8416, %8403
  %8424 = fadd fast float %8419, %8404
  %8425 = fadd fast float %8422, %8405
  %8426 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8427 = call float @dx.op.unary.f32(i32 7, float %8424)  ; Saturate(value)
  %8428 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  br label %8429

; <label>:8429                                    ; preds = %8406, %8338
  %8430 = phi float [ %8426, %8406 ], [ %8403, %8338 ]
  %8431 = phi float [ %8427, %8406 ], [ %8404, %8338 ]
  %8432 = phi float [ %8428, %8406 ], [ %8405, %8338 ]
  %8433 = fmul fast float %8350, 9.843750e-01
  %8434 = fadd fast float %8433, 7.812500e-03
  %8435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %8434, float %6253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8436 = extractvalue %dx.types.ResRet.f32 %8435, 0
  %8437 = extractvalue %dx.types.ResRet.f32 %8435, 1
  %8438 = extractvalue %dx.types.ResRet.f32 %8435, 2
  %8439 = extractvalue %dx.types.ResRet.f32 %8435, 3
  %8440 = fsub fast float %8438, %8436
  %8441 = fsub fast float %8439, %8437
  %8442 = fmul fast float %8440, %6259
  %8443 = fmul fast float %8441, %6259
  %8444 = fadd fast float %8442, %8436
  %8445 = fadd fast float %8443, %8437
  %8446 = fmul fast float %8444, %5968
  %8447 = fmul fast float %8444, %5969
  %8448 = fmul fast float %8444, %5976
  %8449 = fadd fast float %8446, %8445
  %8450 = fadd fast float %8447, %8445
  %8451 = fadd fast float %8448, %8445
  br i1 %6272, label %8452, label %8475

; <label>:8452                                    ; preds = %8429
  %8453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4658, float %8350, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8454 = extractvalue %dx.types.ResRet.f32 %8453, 0
  %8455 = extractvalue %dx.types.ResRet.f32 %8453, 1
  %8456 = extractvalue %dx.types.ResRet.f32 %8453, 2
  %8457 = fadd fast float %8454, -5.000000e-01
  %8458 = fadd fast float %8455, -5.000000e-01
  %8459 = fadd fast float %8456, -5.000000e-01
  %8460 = fmul fast float %5968, 4.000000e+00
  %8461 = fmul fast float %8460, %8397
  %8462 = fmul fast float %8461, %8457
  %8463 = fmul fast float %5969, 4.000000e+00
  %8464 = fmul fast float %8463, %8398
  %8465 = fmul fast float %8464, %8458
  %8466 = fmul fast float %5976, 4.000000e+00
  %8467 = fmul fast float %8466, %8399
  %8468 = fmul fast float %8467, %8459
  %8469 = fadd fast float %8462, %8449
  %8470 = fadd fast float %8465, %8450
  %8471 = fadd fast float %8468, %8451
  %8472 = call float @dx.op.unary.f32(i32 7, float %8469)  ; Saturate(value)
  %8473 = call float @dx.op.unary.f32(i32 7, float %8470)  ; Saturate(value)
  %8474 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  br label %8475

; <label>:8475                                    ; preds = %8452, %8429
  %8476 = phi float [ %8472, %8452 ], [ %8449, %8429 ]
  %8477 = phi float [ %8473, %8452 ], [ %8450, %8429 ]
  %8478 = phi float [ %8474, %8452 ], [ %8451, %8429 ]
  %8479 = call float @dx.op.binary.f32(i32 35, float %8477, float %8478)  ; FMax(a,b)
  %8480 = call float @dx.op.binary.f32(i32 35, float %8476, float %8479)  ; FMax(a,b)
  %8481 = fsub fast float 1.000000e+00, %8480
  %8482 = call float @dx.op.binary.f32(i32 35, float %8359, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8483 = fdiv fast float %3990, %8482
  %8484 = fmul fast float %6791, %8483
  %8485 = fmul fast float %6793, %8483
  %8486 = fmul fast float %6795, %8483
  %8487 = call float @dx.op.unary.f32(i32 21, float %8484)  ; Exp(value)
  %8488 = call float @dx.op.unary.f32(i32 21, float %8485)  ; Exp(value)
  %8489 = call float @dx.op.unary.f32(i32 21, float %8486)  ; Exp(value)
  %8490 = call float @dx.op.unary.f32(i32 7, float %8487)  ; Saturate(value)
  %8491 = call float @dx.op.unary.f32(i32 7, float %8488)  ; Saturate(value)
  %8492 = call float @dx.op.unary.f32(i32 7, float %8489)  ; Saturate(value)
  %8493 = select i1 %6788, float %8490, float 0.000000e+00
  %8494 = select i1 %6789, float %8491, float 0.000000e+00
  %8495 = select i1 %6790, float %8492, float 0.000000e+00
  %8496 = fsub fast float -0.000000e+00, %5971
  %8497 = fsub fast float -0.000000e+00, %5972
  %8498 = fsub fast float -0.000000e+00, %5973
  %8499 = call float @dx.op.dot3.f32(i32 55, float %6882, float %6883, float %6884, float %8496, float %8497, float %8498)  ; Dot3(ax,ay,az,bx,by,bz)
  %8500 = call float @dx.op.unary.f32(i32 7, float %8499)  ; Saturate(value)
  %8501 = fmul fast float %8500, 9.843750e-01
  %8502 = fadd fast float %8501, 7.812500e-03
  %8503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %8502, float %6253, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8504 = extractvalue %dx.types.ResRet.f32 %8503, 0
  %8505 = extractvalue %dx.types.ResRet.f32 %8503, 1
  %8506 = extractvalue %dx.types.ResRet.f32 %8503, 2
  %8507 = extractvalue %dx.types.ResRet.f32 %8503, 3
  %8508 = fsub fast float %8506, %8504
  %8509 = fsub fast float %8507, %8505
  %8510 = fmul fast float %8508, %6259
  %8511 = fmul fast float %8509, %6259
  %8512 = fadd fast float %8510, %8504
  %8513 = fadd fast float %8511, %8505
  %8514 = fmul fast float %8512, %5968
  %8515 = fmul fast float %8512, %5969
  %8516 = fmul fast float %8512, %5976
  %8517 = fadd fast float %8514, %8513
  %8518 = fadd fast float %8515, %8513
  %8519 = fadd fast float %8516, %8513
  br i1 %6272, label %8520, label %8543

; <label>:8520                                    ; preds = %8475
  %8521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4658, float %8500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8522 = extractvalue %dx.types.ResRet.f32 %8521, 0
  %8523 = extractvalue %dx.types.ResRet.f32 %8521, 1
  %8524 = extractvalue %dx.types.ResRet.f32 %8521, 2
  %8525 = fadd fast float %8522, -5.000000e-01
  %8526 = fadd fast float %8523, -5.000000e-01
  %8527 = fadd fast float %8524, -5.000000e-01
  %8528 = fmul fast float %5968, 4.000000e+00
  %8529 = fmul fast float %8528, %8397
  %8530 = fmul fast float %8529, %8525
  %8531 = fmul fast float %5969, 4.000000e+00
  %8532 = fmul fast float %8531, %8398
  %8533 = fmul fast float %8532, %8526
  %8534 = fmul fast float %5976, 4.000000e+00
  %8535 = fmul fast float %8534, %8399
  %8536 = fmul fast float %8535, %8527
  %8537 = fadd fast float %8530, %8517
  %8538 = fadd fast float %8533, %8518
  %8539 = fadd fast float %8536, %8519
  %8540 = call float @dx.op.unary.f32(i32 7, float %8537)  ; Saturate(value)
  %8541 = call float @dx.op.unary.f32(i32 7, float %8538)  ; Saturate(value)
  %8542 = call float @dx.op.unary.f32(i32 7, float %8539)  ; Saturate(value)
  br label %8543

; <label>:8543                                    ; preds = %8520, %8475
  %8544 = phi float [ %8540, %8520 ], [ %8517, %8475 ]
  %8545 = phi float [ %8541, %8520 ], [ %8518, %8475 ]
  %8546 = phi float [ %8542, %8520 ], [ %8519, %8475 ]
  %8547 = call float @dx.op.binary.f32(i32 35, float %8545, float %8546)  ; FMax(a,b)
  %8548 = call float @dx.op.binary.f32(i32 35, float %8544, float %8547)  ; FMax(a,b)
  %8549 = fsub fast float 1.000000e+00, %8548
  %8550 = fmul fast float %5993, %6855
  %8551 = fadd fast float %6857, %8550
  %8552 = call float @dx.op.unary.f32(i32 7, float %8551)  ; Saturate(value)
  %8553 = fsub fast float %6882, %5984
  %8554 = fsub fast float %6883, %5985
  %8555 = fsub fast float %6884, %5986
  %8556 = call float @dx.op.dot3.f32(i32 55, float %8553, float %8554, float %8555, float %8553, float %8554, float %8555)  ; Dot3(ax,ay,az,bx,by,bz)
  %8557 = call float @dx.op.unary.f32(i32 25, float %8556)  ; Rsqrt(value)
  %8558 = fmul fast float %8557, %8553
  %8559 = fmul fast float %8557, %8554
  %8560 = fmul fast float %8557, %8555
  %8561 = call float @dx.op.dot3.f32(i32 55, float %8496, float %8497, float %8498, float %8558, float %8559, float %8560)  ; Dot3(ax,ay,az,bx,by,bz)
  %8562 = fmul fast float %8561, %8561
  %8563 = call float @dx.op.unary.f32(i32 6, float %8500)  ; FAbs(value)
  %8564 = call float @dx.op.binary.f32(i32 35, float %8552, float 0x3F847AE140000000)  ; FMax(a,b)
  %8565 = fmul fast float %8564, %8564
  %8566 = fmul fast float %8565, %8565
  %8567 = fsub fast float 1.000000e+00, %8566
  %8568 = fmul fast float %8361, %8567
  %8569 = fadd fast float %8568, %8566
  %8570 = bitcast float %8569 to i32
  %8571 = ashr i32 %8570, 1
  %8572 = add nsw i32 %8571, 532487669
  %8573 = bitcast i32 %8572 to float
  %8574 = fadd fast float %8573, %5978
  %8575 = fmul fast float %8566, %8562
  %8576 = fsub fast float 1.000000e+00, %8562
  %8577 = fadd fast float %8576, %8575
  %8578 = fmul fast float %8563, %8563
  %8579 = fmul fast float %8578, %8567
  %8580 = fadd fast float %8579, %8566
  %8581 = bitcast float %8580 to i32
  %8582 = ashr i32 %8581, 1
  %8583 = add nsw i32 %8582, 532487669
  %8584 = bitcast i32 %8583 to float
  %8585 = fadd fast float %8584, %8563
  %8586 = fmul fast float %8577, %8577
  %8587 = fmul fast float %8586, %8574
  %8588 = fmul fast float %8587, %8585
  %8589 = fdiv fast float 0x3FF0A00000000000, %8588
  %8590 = fmul fast float %8589, %8566
  %8591 = fmul fast float %8500, %8493
  %8592 = fmul fast float %8500, %8494
  %8593 = fmul fast float %8500, %8495
  %8594 = fmul fast float %8591, %8549
  %8595 = fmul fast float %8594, %8590
  %8596 = fmul fast float %8592, %8549
  %8597 = fmul fast float %8596, %8590
  %8598 = fmul fast float %8593, %8549
  %8599 = fmul fast float %8598, %8590
  %8600 = fmul fast float %8430, %8384
  %8601 = fmul fast float %8431, %8384
  %8602 = fmul fast float %8432, %8384
  %8603 = fsub fast float 1.000000e+00, %8351
  %8604 = bitcast float %8603 to i32
  %8605 = sitofp i32 %8604 to float
  %8606 = fmul fast float %8605, 5.000000e+00
  %8607 = fadd fast float %8606, 0xC1EFBF8940000000
  %8608 = fptosi float %8607 to i32
  %8609 = bitcast i32 %8608 to float
  %8610 = fmul fast float %8609, %4659
  %8611 = fmul fast float %8481, %8610
  %8612 = fmul fast float %8611, %6783
  %8613 = fmul fast float %8611, %6784
  %8614 = fmul fast float %8611, %6785
  %8615 = fadd fast float %8612, %8600
  %8616 = fadd fast float %8613, %8601
  %8617 = fadd fast float %8614, %8602
  %8618 = fmul fast float %8615, %8356
  %8619 = fmul fast float %8616, %8356
  %8620 = fmul fast float %8617, %8356
  %8621 = fmul fast float %8356, %8339
  %8622 = fmul fast float %8621, %8481
  %8623 = fmul fast float %8356, %8340
  %8624 = fmul fast float %8623, %8481
  %8625 = fmul fast float %8356, %8341
  %8626 = fmul fast float %8625, %8481
  %8627 = fadd fast float %8618, %8595
  %8628 = fadd fast float %8619, %8597
  %8629 = fadd fast float %8620, %8599
  %8630 = fmul fast float %8627, %8339
  %8631 = fmul fast float %8628, %8340
  %8632 = fmul fast float %8629, %8341
  %8633 = fadd fast float %8622, %6872
  %8634 = fmul fast float %8633, %4655
  %8635 = fadd fast float %8624, %6874
  %8636 = fmul fast float %8635, %4655
  %8637 = fadd fast float %8626, %6876
  %8638 = fmul fast float %8637, %4655
  %8639 = fadd fast float %8630, %6836
  %8640 = fmul fast float %8639, %4655
  %8641 = fadd fast float %8631, %6839
  %8642 = fmul fast float %8641, %4655
  %8643 = fadd fast float %8632, %6842
  %8644 = fmul fast float %8643, %4655
  br label %8645

; <label>:8645                                    ; preds = %8543, %8333, %6766
  %8646 = phi float [ %6837, %6766 ], [ %6837, %8333 ], [ %8640, %8543 ]
  %8647 = phi float [ %6840, %6766 ], [ %6840, %8333 ], [ %8642, %8543 ]
  %8648 = phi float [ %6843, %6766 ], [ %6843, %8333 ], [ %8644, %8543 ]
  %8649 = phi float [ %6873, %6766 ], [ %6873, %8333 ], [ %8634, %8543 ]
  %8650 = phi float [ %6875, %6766 ], [ %6875, %8333 ], [ %8636, %8543 ]
  %8651 = phi float [ %6877, %6766 ], [ %6877, %8333 ], [ %8638, %8543 ]
  %8652 = fmul fast float %4655, %6812
  %8653 = fsub fast float -0.000000e+00, %8652
  %8654 = fmul fast float %4655, %6813
  %8655 = fsub fast float -0.000000e+00, %8654
  %8656 = fmul fast float %4655, %6814
  %8657 = fsub fast float -0.000000e+00, %8656
  %8658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8659 = extractvalue %dx.types.CBufRet.f32 %8658, 0
  %8660 = fmul fast float %8659, %6818
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 3
  %8663 = fsub fast float 1.000000e+00, %4662
  %8664 = call float @dx.op.unary.f32(i32 7, float %8663)  ; Saturate(value)
  %8665 = fadd fast float %8651, %4661
  %8666 = fmul fast float %8665, %4662
  %8667 = fmul fast float %8664, %8662
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 3
  %8670 = fmul fast float %8649, %5965
  %8671 = fmul fast float %8650, %5966
  %8672 = fmul fast float %8651, %5967
  %8673 = fcmp fast ogt float %96, %210
  %8674 = and i1 %8673, %4730
  %8675 = or i1 %4809, %8674
  %8676 = icmp eq i32 %4729, 2
  %8677 = fcmp fast ole float %96, %210
  %8678 = and i1 %8677, %8676
  %8679 = or i1 %8678, %8675
  br i1 %8674, label %8680, label %8937

; <label>:8680                                    ; preds = %8645
  %8681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8682 = extractvalue %dx.types.CBufRet.f32 %8681, 2
  %8683 = extractvalue %dx.types.CBufRet.f32 %8681, 3
  %8684 = fmul fast float %8682, %109
  %8685 = fmul fast float %8683, %110
  %8686 = call float @dx.op.unary.f32(i32 7, float %8684)  ; Saturate(value)
  %8687 = call float @dx.op.unary.f32(i32 7, float %8685)  ; Saturate(value)
  %8688 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %8686, float %8687, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8689 = extractvalue %dx.types.ResRet.f32 %8688, 0
  %8690 = extractvalue %dx.types.ResRet.f32 %8688, 1
  %8691 = extractvalue %dx.types.ResRet.f32 %8688, 2
  %8692 = extractvalue %dx.types.ResRet.f32 %8688, 3
  %8693 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %8686, float %8687, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8694 = extractvalue %dx.types.ResRet.f32 %8693, 0
  %8695 = extractvalue %dx.types.ResRet.f32 %8693, 1
  %8696 = extractvalue %dx.types.ResRet.f32 %8693, 2
  %8697 = extractvalue %dx.types.ResRet.f32 %8693, 3
  %8698 = call float @dx.op.binary.f32(i32 35, float %8690, float %8691)  ; FMax(a,b)
  %8699 = call float @dx.op.binary.f32(i32 35, float %8689, float %8698)  ; FMax(a,b)
  %8700 = call float @dx.op.binary.f32(i32 35, float %8699, float %8692)  ; FMax(a,b)
  %8701 = call float @dx.op.binary.f32(i32 36, float %8695, float %8696)  ; FMin(a,b)
  %8702 = call float @dx.op.binary.f32(i32 36, float %8694, float %8701)  ; FMin(a,b)
  %8703 = call float @dx.op.binary.f32(i32 36, float %8702, float %8697)  ; FMin(a,b)
  %8704 = fmul fast float %8700, 2.550000e+02
  %8705 = fadd fast float %8704, 0x3F70101020000000
  %8706 = fptoui float %8705 to i32
  %8707 = fmul fast float %8703, 2.550000e+02
  %8708 = fadd fast float %8707, 0x3F70101020000000
  %8709 = fptoui float %8708 to i32
  %8710 = icmp ult i32 %8706, %8709
  br i1 %8710, label %8711, label %8879

; <label>:8711                                    ; preds = %8680
  %8712 = fcmp fast ogt float %95, 9.843750e-01
  %8713 = fadd fast float %96, -4.000000e+00
  %8714 = select i1 %8712, float -4.000000e+00, float %8713
  %8715 = call float @dx.op.binary.f32(i32 35, float %8714, float 0.000000e+00)  ; FMax(a,b)
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  %8718 = fadd fast float %8717, %8715
  %8719 = extractvalue %dx.types.CBufRet.f32 %8716, 2
  %8720 = fmul fast float %8718, %8719
  %8721 = call float @dx.op.unary.f32(i32 23, float %8720)  ; Log(value)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8716, 3
  %8723 = fmul fast float %8722, %8721
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8726 = fmul fast float %8723, %8725
  %8727 = call float @dx.op.unary.f32(i32 7, float %8726)  ; Saturate(value)
  %8728 = uitofp i32 %8706 to float
  %8729 = uitofp i32 %8709 to float
  %8730 = fadd fast float %8728, 5.000000e-01
  %8731 = fadd fast float %8729, 5.000000e-01
  %8732 = fmul fast float %8725, %8730
  %8733 = fmul fast float %8725, %8731
  %8734 = fadd fast float %8732, 0x3F0FFB4800000000
  %8735 = fadd fast float %8733, 0xBF0FFB4800000000
  %8736 = call float @dx.op.binary.f32(i32 35, float %8727, float %8734)  ; FMax(a,b)
  %8737 = call float @dx.op.binary.f32(i32 36, float %8736, float %8735)  ; FMin(a,b)
  %8738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8739 = extractvalue %dx.types.CBufRet.f32 %8738, 1
  %8740 = extractvalue %dx.types.CBufRet.f32 %8738, 2
  %8741 = extractvalue %dx.types.CBufRet.f32 %8738, 0
  %8742 = fmul fast float %8739, %8737
  %8743 = fadd fast float %8741, %8742
  %8744 = fadd fast float %8741, %8740
  %8745 = fsub fast float %8739, %8740
  %8746 = fadd fast float %8745, %8741
  %8747 = call float @dx.op.binary.f32(i32 35, float %8743, float %8744)  ; FMax(a,b)
  %8748 = call float @dx.op.binary.f32(i32 36, float %8747, float %8746)  ; FMin(a,b)
  %8749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8686, float %8687, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8750 = extractvalue %dx.types.ResRet.f32 %8749, 0
  %8751 = extractvalue %dx.types.ResRet.f32 %8749, 1
  %8752 = extractvalue %dx.types.ResRet.f32 %8749, 2
  %8753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8754 = extractvalue %dx.types.CBufRet.i32 %8753, 0
  %8755 = extractvalue %dx.types.CBufRet.i32 %8753, 1
  %8756 = uitofp i32 %8754 to float
  %8757 = uitofp i32 %8755 to float
  %8758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8759 = extractvalue %dx.types.CBufRet.f32 %8758, 0
  %8760 = extractvalue %dx.types.CBufRet.f32 %8758, 1
  %8761 = fmul fast float %8756, %8686
  %8762 = fmul fast float %8757, %8687
  %8763 = fadd fast float %8761, -5.000000e-01
  %8764 = fadd fast float %8762, -5.000000e-01
  %8765 = call float @dx.op.unary.f32(i32 22, float %8763)  ; Frc(value)
  %8766 = call float @dx.op.unary.f32(i32 22, float %8764)  ; Frc(value)
  %8767 = fmul fast float %8765, %8765
  %8768 = fmul fast float %8767, %8765
  %8769 = fsub fast float 3.000000e+00, %8765
  %8770 = fmul fast float %8767, %8769
  %8771 = fmul fast float %8765, 3.000000e+00
  %8772 = fmul fast float %8768, 3.000000e+00
  %8773 = fmul fast float %8767, 6.000000e+00
  %8774 = fsub fast float %8772, %8773
  %8775 = fadd fast float %8774, 4.000000e+00
  %8776 = fmul fast float %8775, 0x3FC5555560000000
  %8777 = fmul fast float %8768, -3.000000e+00
  %8778 = fadd fast float %8767, %8765
  %8779 = fmul fast float %8778, 3.000000e+00
  %8780 = fadd fast float %8777, 1.000000e+00
  %8781 = fadd fast float %8780, %8779
  %8782 = fmul fast float %8768, 0x3FC5555560000000
  %8783 = fmul fast float %8766, %8766
  %8784 = fmul fast float %8783, %8766
  %8785 = fsub fast float 3.000000e+00, %8766
  %8786 = fmul fast float %8783, %8785
  %8787 = fmul fast float %8766, 3.000000e+00
  %8788 = fmul fast float %8784, 3.000000e+00
  %8789 = fmul fast float %8783, 6.000000e+00
  %8790 = fsub fast float %8788, %8789
  %8791 = fadd fast float %8790, 4.000000e+00
  %8792 = fmul fast float %8791, 0x3FC5555560000000
  %8793 = fmul fast float %8784, -3.000000e+00
  %8794 = fadd fast float %8783, %8766
  %8795 = fmul fast float %8794, 3.000000e+00
  %8796 = fadd fast float %8793, 1.000000e+00
  %8797 = fadd fast float %8796, %8795
  %8798 = fmul fast float %8784, 0x3FC5555560000000
  %8799 = fadd fast float %8765, 1.000000e+00
  %8800 = fsub fast float 1.000000e+00, %8771
  %8801 = fadd fast float %8800, %8770
  %8802 = fadd fast float %8801, %8775
  %8803 = fmul fast float %8802, 0x3FC5555560000000
  %8804 = fdiv fast float %8776, %8803
  %8805 = fsub fast float %8799, %8804
  %8806 = fsub fast float 1.000000e+00, %8765
  %8807 = fadd fast float %8781, %8768
  %8808 = fmul fast float %8807, 0x3FC5555560000000
  %8809 = fdiv fast float %8782, %8808
  %8810 = fadd fast float %8806, %8809
  %8811 = fadd fast float %8766, 1.000000e+00
  %8812 = fsub fast float 1.000000e+00, %8787
  %8813 = fadd fast float %8812, %8786
  %8814 = fadd fast float %8813, %8791
  %8815 = fmul fast float %8814, 0x3FC5555560000000
  %8816 = fdiv fast float %8792, %8815
  %8817 = fsub fast float %8811, %8816
  %8818 = fsub fast float 1.000000e+00, %8766
  %8819 = fadd fast float %8797, %8784
  %8820 = fmul fast float %8819, 0x3FC5555560000000
  %8821 = fdiv fast float %8798, %8820
  %8822 = fadd fast float %8821, %8818
  %8823 = fmul fast float %8805, %8759
  %8824 = fsub fast float %8686, %8823
  %8825 = fmul fast float %8810, %8759
  %8826 = fadd fast float %8825, %8686
  %8827 = fmul fast float %8822, %8760
  %8828 = fadd fast float %8827, %8687
  %8829 = fmul fast float %8817, %8760
  %8830 = fsub fast float %8687, %8829
  %8831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8824, float %8830, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8832 = extractvalue %dx.types.ResRet.f32 %8831, 0
  %8833 = extractvalue %dx.types.ResRet.f32 %8831, 1
  %8834 = extractvalue %dx.types.ResRet.f32 %8831, 2
  %8835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8826, float %8830, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8836 = extractvalue %dx.types.ResRet.f32 %8835, 0
  %8837 = extractvalue %dx.types.ResRet.f32 %8835, 1
  %8838 = extractvalue %dx.types.ResRet.f32 %8835, 2
  %8839 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8824, float %8828, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8840 = extractvalue %dx.types.ResRet.f32 %8839, 0
  %8841 = extractvalue %dx.types.ResRet.f32 %8839, 1
  %8842 = extractvalue %dx.types.ResRet.f32 %8839, 2
  %8843 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8826, float %8828, float %8748, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8844 = extractvalue %dx.types.ResRet.f32 %8843, 0
  %8845 = extractvalue %dx.types.ResRet.f32 %8843, 1
  %8846 = extractvalue %dx.types.ResRet.f32 %8843, 2
  %8847 = fsub fast float %8840, %8832
  %8848 = fsub fast float %8841, %8833
  %8849 = fsub fast float %8842, %8834
  %8850 = fmul fast float %8847, %8820
  %8851 = fmul fast float %8848, %8820
  %8852 = fmul fast float %8849, %8820
  %8853 = fadd fast float %8850, %8832
  %8854 = fadd fast float %8851, %8833
  %8855 = fadd fast float %8852, %8834
  %8856 = fsub fast float %8844, %8836
  %8857 = fsub fast float %8845, %8837
  %8858 = fsub fast float %8846, %8838
  %8859 = fmul fast float %8856, %8820
  %8860 = fmul fast float %8857, %8820
  %8861 = fmul fast float %8858, %8820
  %8862 = fsub fast float %8836, %8853
  %8863 = fadd fast float %8862, %8859
  %8864 = fsub fast float %8837, %8854
  %8865 = fadd fast float %8864, %8860
  %8866 = fsub fast float %8838, %8855
  %8867 = fadd fast float %8866, %8861
  %8868 = fmul fast float %8863, %8808
  %8869 = fmul fast float %8865, %8808
  %8870 = fmul fast float %8867, %8808
  %8871 = fadd fast float %8868, %8853
  %8872 = fadd fast float %8869, %8854
  %8873 = fadd fast float %8870, %8855
  %8874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8875 = extractvalue %dx.types.CBufRet.f32 %8874, 1
  %8876 = fmul fast float %8871, %8875
  %8877 = fmul fast float %8872, %8875
  %8878 = fmul fast float %8873, %8875
  br label %8879

; <label>:8879                                    ; preds = %8711, %8680
  %8880 = phi float [ %8750, %8711 ], [ 1.000000e+00, %8680 ]
  %8881 = phi float [ %8751, %8711 ], [ 1.000000e+00, %8680 ]
  %8882 = phi float [ %8752, %8711 ], [ 1.000000e+00, %8680 ]
  %8883 = phi float [ %8876, %8711 ], [ 0.000000e+00, %8680 ]
  %8884 = phi float [ %8877, %8711 ], [ 0.000000e+00, %8680 ]
  %8885 = phi float [ %8878, %8711 ], [ 0.000000e+00, %8680 ]
  %8886 = fmul fast float %8883, %8653
  %8887 = fmul fast float %8884, %8655
  %8888 = fmul fast float %8885, %8657
  %8889 = call float @dx.op.dot3.f32(i32 55, float %8880, float %8881, float %8882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8890 = call float @dx.op.dot3.f32(i32 55, float %8886, float %8887, float %8888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8891 = select i1 %249, float %8889, float %8880
  %8892 = select i1 %249, float %8889, float %8881
  %8893 = select i1 %249, float 1.000000e+00, float %8882
  %8894 = select i1 %249, float %8890, float %8886
  %8895 = select i1 %249, float 0.000000e+00, float %8887
  %8896 = select i1 %249, float 0.000000e+00, float %8888
  %8897 = fmul fast float %8891, %8670
  %8898 = fmul fast float %8892, %8671
  %8899 = fmul fast float %8893, %8672
  %8900 = fadd fast float %8897, %8894
  %8901 = fadd fast float %8898, %8895
  %8902 = fadd fast float %8896, %8899
  %8903 = fmul fast float %8891, %8646
  %8904 = fmul fast float %8892, %8647
  %8905 = fmul fast float %8893, %8648
  %8906 = fmul fast float %137, %8682
  %8907 = fmul fast float %139, %8683
  %8908 = fsub fast float 1.000000e+00, %8906
  %8909 = fsub fast float 1.000000e+00, %8907
  %8910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8911 = extractvalue %dx.types.CBufRet.f32 %8910, 0
  %8912 = extractvalue %dx.types.CBufRet.f32 %8910, 1
  %8913 = extractvalue %dx.types.CBufRet.f32 %8910, 2
  %8914 = fmul fast float %8908, %8911
  %8915 = fmul fast float %8908, %8912
  %8916 = fmul fast float %8908, %8913
  %8917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8918 = extractvalue %dx.types.CBufRet.f32 %8917, 0
  %8919 = extractvalue %dx.types.CBufRet.f32 %8917, 1
  %8920 = extractvalue %dx.types.CBufRet.f32 %8917, 2
  %8921 = fmul fast float %8909, %8918
  %8922 = fmul fast float %8909, %8919
  %8923 = fmul fast float %8909, %8920
  %8924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8925 = extractvalue %dx.types.CBufRet.f32 %8924, 0
  %8926 = extractvalue %dx.types.CBufRet.f32 %8924, 1
  %8927 = extractvalue %dx.types.CBufRet.f32 %8924, 2
  %8928 = fadd fast float %8921, %8925
  %8929 = fadd fast float %8928, %8914
  %8930 = fadd fast float %8922, %8926
  %8931 = fadd fast float %8930, %8915
  %8932 = fadd fast float %8923, %8927
  %8933 = fadd fast float %8932, %8916
  %8934 = fmul fast float %8929, %210
  %8935 = fmul fast float %8931, %210
  %8936 = fmul fast float %8933, %210
  br label %8937

; <label>:8937                                    ; preds = %8879, %8645
  %8938 = phi float [ %8934, %8879 ], [ %188, %8645 ]
  %8939 = phi float [ %8935, %8879 ], [ %189, %8645 ]
  %8940 = phi float [ %8936, %8879 ], [ %190, %8645 ]
  %8941 = phi float [ %210, %8879 ], [ %96, %8645 ]
  %8942 = phi float [ %8900, %8879 ], [ %8670, %8645 ]
  %8943 = phi float [ %8901, %8879 ], [ %8671, %8645 ]
  %8944 = phi float [ %8902, %8879 ], [ %8672, %8645 ]
  %8945 = phi float [ %8903, %8879 ], [ %8646, %8645 ]
  %8946 = phi float [ %8904, %8879 ], [ %8647, %8645 ]
  %8947 = phi float [ %8905, %8879 ], [ %8648, %8645 ]
  %8948 = phi float [ %8880, %8879 ], [ 1.000000e+00, %8645 ]
  br i1 %8679, label %10103, label %8949

; <label>:8949                                    ; preds = %8937
  %8950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8951 = extractvalue %dx.types.CBufRet.f32 %8950, 0
  %8952 = extractvalue %dx.types.CBufRet.f32 %8950, 1
  %8953 = extractvalue %dx.types.CBufRet.f32 %8950, 2
  %8954 = extractvalue %dx.types.CBufRet.f32 %8950, 3
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 0
  %8957 = extractvalue %dx.types.CBufRet.f32 %8955, 1
  %8958 = extractvalue %dx.types.CBufRet.f32 %8955, 2
  %8959 = extractvalue %dx.types.CBufRet.f32 %8955, 3
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.CBufRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8964 = extractvalue %dx.types.CBufRet.f32 %8960, 3
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8968 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8969 = extractvalue %dx.types.CBufRet.f32 %8965, 3
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 3
  %8972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8973 = extractvalue %dx.types.CBufRet.f32 %8972, 3
  %8974 = extractvalue %dx.types.CBufRet.f32 %8972, 0
  %8975 = extractvalue %dx.types.CBufRet.f32 %8972, 1
  %8976 = extractvalue %dx.types.CBufRet.f32 %8972, 2
  %8977 = fcmp fast olt float %8976, -5.000000e-01
  %8978 = call float @dx.op.dot3.f32(i32 55, float %8938, float %8939, float %8940, float %8938, float %8939, float %8940)  ; Dot3(ax,ay,az,bx,by,bz)
  %8979 = call float @dx.op.unary.f32(i32 25, float %8978)  ; Rsqrt(value)
  %8980 = fmul fast float %8979, %8978
  %8981 = fmul fast float %8979, %8938
  %8982 = fmul fast float %8979, %8939
  %8983 = fmul fast float %8979, %8940
  %8984 = fadd fast float %8980, %8954
  %8985 = call float @dx.op.dot3.f32(i32 55, float %8981, float %8982, float %8983, float %8951, float %8952, float %8953)  ; Dot3(ax,ay,az,bx,by,bz)
  %8986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8987 = extractvalue %dx.types.CBufRet.i32 %8986, 1
  %8988 = and i32 %8987, 1
  %8989 = icmp ne i32 %8988, 0
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8992 = fcmp fast ogt float %8991, 0.000000e+00
  %8993 = and i1 %8989, %8992
  br i1 %8993, label %8994, label %9400, !dx.controlflow.hints !125

; <label>:8994                                    ; preds = %8949
  %8995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8995, 3
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 2
  %8999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9000 = extractvalue %dx.types.CBufRet.f32 %8999, 2
  %9001 = fsub fast float %8998, %9000
  %9002 = and i32 %8987, 2
  %9003 = extractvalue %dx.types.CBufRet.i32 %8986, 0
  %9004 = call i32 @dx.op.binary.i32(i32 40, i32 %9003, i32 3)  ; UMin(a,b)
  %9005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9006 = extractvalue %dx.types.CBufRet.f32 %9005, 0
  %9007 = extractvalue %dx.types.CBufRet.f32 %9005, 1
  %9008 = extractvalue %dx.types.CBufRet.f32 %8999, 0
  %9009 = extractvalue %dx.types.CBufRet.f32 %8999, 1
  %9010 = fsub fast float %9006, %9008
  %9011 = fsub fast float %9007, %9009
  %9012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9013 = extractvalue %dx.types.CBufRet.f32 %9012, 0
  %9014 = fcmp fast ogt float %9013, 0.000000e+00
  %9015 = fsub fast float -0.000000e+00, %9010
  %9016 = fsub fast float -0.000000e+00, %9011
  %9017 = call float @dx.op.dot2.f32(i32 54, float %8981, float %8982, float %8981, float %8982)  ; Dot2(ax,ay,bx,by)
  %9018 = call float @dx.op.dot2.f32(i32 54, float %8981, float %8982, float %9015, float %9016)  ; Dot2(ax,ay,bx,by)
  %9019 = fmul fast float %9018, 2.000000e+00
  %9020 = call float @dx.op.dot2.f32(i32 54, float %9015, float %9016, float %9015, float %9016)  ; Dot2(ax,ay,bx,by)
  %9021 = fmul fast float %9013, %9013
  %9022 = fsub fast float %9020, %9021
  %9023 = fmul fast float %9019, %9019
  %9024 = fmul fast float %9017, 4.000000e+00
  %9025 = fmul fast float %9024, %9022
  %9026 = fsub fast float %9023, %9025
  %9027 = fcmp fast ogt float %9026, 0.000000e+00
  br i1 %9027, label %9028, label %9043

; <label>:9028                                    ; preds = %8994
  %9029 = fcmp fast ogt float %9019, 0.000000e+00
  %9030 = call float @dx.op.unary.f32(i32 24, float %9026)  ; Sqrt(value)
  %9031 = fsub fast float -0.000000e+00, %9030
  %9032 = select i1 %9029, float %9030, float %9031
  %9033 = fadd fast float %9032, %9019
  %9034 = fmul float %9033, -5.000000e-01
  %9035 = fdiv fast float %9034, %9017
  %9036 = call float @dx.op.binary.f32(i32 35, float %9035, float 0.000000e+00)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 36, float %8980, float %9036)  ; FMin(a,b)
  %9038 = fdiv fast float %9022, %9034
  %9039 = call float @dx.op.binary.f32(i32 35, float %9038, float 0.000000e+00)  ; FMax(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %8980, float %9039)  ; FMin(a,b)
  %9041 = call float @dx.op.binary.f32(i32 36, float %9037, float %9040)  ; FMin(a,b)
  %9042 = call float @dx.op.binary.f32(i32 35, float %9037, float %9040)  ; FMax(a,b)
  br label %9043

; <label>:9043                                    ; preds = %9028, %8994
  %9044 = phi float [ %9042, %9028 ], [ -1.000000e+00, %8994 ]
  %9045 = phi float [ %9041, %9028 ], [ -1.000000e+00, %8994 ]
  %9046 = phi i1 [ true, %9028 ], [ false, %8994 ]
  %9047 = and i1 %9014, %9046
  br i1 %9047, label %9048, label %9050

; <label>:9048                                    ; preds = %9043
  %9049 = fcmp fast oeq float %9045, %9044
  br i1 %9049, label %9353, label %9051

; <label>:9050                                    ; preds = %9043
  br i1 %9014, label %9353, label %9051

; <label>:9051                                    ; preds = %9050, %9048
  %9052 = phi float [ %8980, %9050 ], [ %9044, %9048 ]
  %9053 = phi float [ 0.000000e+00, %9050 ], [ %9045, %9048 ]
  %9054 = icmp ne i32 %9002, 0
  %9055 = fmul fast float %9052, %8983
  %9056 = fadd fast float %9055, %8996
  %9057 = fmul fast float %9056, %9052
  %9058 = select i1 %9054, float 0.000000e+00, float %9057
  %9059 = fcmp fast oeq float %8983, 0.000000e+00
  %9060 = fdiv fast float %9001, %8983
  %9061 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9060)  ; FMax(a,b)
  %9062 = select i1 %9059, float %9052, float %9061
  %9063 = call float @dx.op.binary.f32(i32 36, float %9052, float %9062)  ; FMin(a,b)
  %9064 = fcmp fast ogt float %8983, 0.000000e+00
  %9065 = fcmp fast olt float %9001, 0.000000e+00
  br i1 %9064, label %9066, label %9123

; <label>:9066                                    ; preds = %9051
  %9067 = icmp eq i32 %9002, 0
  br i1 %9065, label %9068, label %9112

; <label>:9068                                    ; preds = %9066
  %9069 = select i1 %9067, float %9052, float 0.000000e+00
  %9070 = fsub fast float -0.000000e+00, %9069
  %9071 = call float @dx.op.unary.f32(i32 6, float %9070)  ; FAbs(value)
  %9072 = fmul fast float %9069, %8983
  %9073 = fadd fast float %9072, %8996
  %9074 = fmul fast float %9071, %9073
  %9075 = fsub fast float %9058, %9074
  %9076 = fsub fast float %9052, %9071
  %9077 = select i1 %9067, float %9076, float 0.000000e+00
  %9078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9079 = extractvalue %dx.types.CBufRet.f32 %9078, 0
  %9080 = extractvalue %dx.types.CBufRet.f32 %9078, 1
  %9081 = extractvalue %dx.types.CBufRet.f32 %9078, 2
  %9082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9083 = extractvalue %dx.types.CBufRet.f32 %9082, 0
  %9084 = extractvalue %dx.types.CBufRet.f32 %9082, 1
  %9085 = extractvalue %dx.types.CBufRet.f32 %9082, 2
  %9086 = extractvalue %dx.types.CBufRet.f32 %9082, 3
  %9087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9087, 3
  %9089 = call float @dx.op.binary.f32(i32 36, float %9075, float %9088)  ; FMin(a,b)
  %9090 = fmul fast float %9086, %9077
  %9091 = call float @dx.op.unary.f32(i32 7, float %9090)  ; Saturate(value)
  %9092 = fsub fast float %9083, %9079
  %9093 = fsub fast float %9084, %9080
  %9094 = fsub fast float %9085, %9081
  %9095 = fmul fast float %9091, %9092
  %9096 = fmul fast float %9091, %9093
  %9097 = fmul fast float %9091, %9094
  %9098 = fadd fast float %9095, %9079
  %9099 = fadd fast float %9096, %9080
  %9100 = fadd fast float %9097, %9081
  %9101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9102 = extractvalue %dx.types.CBufRet.f32 %9101, 0
  %9103 = extractvalue %dx.types.CBufRet.f32 %9101, 1
  %9104 = fadd fast float %9103, %9102
  %9105 = call float @dx.op.unary.f32(i32 7, float %9104)  ; Saturate(value)
  %9106 = extractvalue %dx.types.CBufRet.f32 %9101, 2
  %9107 = extractvalue %dx.types.CBufRet.f32 %9101, 3
  %9108 = fadd fast float %9107, %9106
  %9109 = call float @dx.op.unary.f32(i32 7, float %9108)  ; Saturate(value)
  %9110 = fmul fast float %9105, %9089
  %9111 = fmul fast float %9110, %9109
  br label %9353

; <label>:9112                                    ; preds = %9066
  br i1 %9067, label %9113, label %9134

; <label>:9113                                    ; preds = %9112
  %9114 = call float @dx.op.binary.f32(i32 36, float %9063, float %9053)  ; FMin(a,b)
  %9115 = fsub fast float %9063, %9114
  %9116 = fsub fast float %9115, %9052
  %9117 = call float @dx.op.unary.f32(i32 6, float %9116)  ; FAbs(value)
  %9118 = fadd fast float %9115, %9052
  %9119 = fmul fast float %9118, %8983
  %9120 = fadd fast float %9119, %8996
  %9121 = fmul fast float %9120, %9117
  %9122 = fsub fast float %9058, %9121
  br label %9134

; <label>:9123                                    ; preds = %9051
  br i1 %9065, label %9124, label %9134

; <label>:9124                                    ; preds = %9123
  %9125 = call float @dx.op.binary.f32(i32 35, float %9053, float %9063)  ; FMax(a,b)
  %9126 = icmp eq i32 %9002, 0
  %9127 = select i1 %9126, float %9063, float 0.000000e+00
  %9128 = fsub fast float -0.000000e+00, %9127
  %9129 = call float @dx.op.unary.f32(i32 6, float %9128)  ; FAbs(value)
  %9130 = fmul fast float %9127, %8983
  %9131 = fadd fast float %9130, %8996
  %9132 = fmul fast float %9129, %9131
  %9133 = fsub fast float %9058, %9132
  br label %9134

; <label>:9134                                    ; preds = %9124, %9123, %9113, %9112
  %9135 = phi float [ %9053, %9112 ], [ %9053, %9113 ], [ %9125, %9124 ], [ %9053, %9123 ]
  %9136 = phi float [ 0.000000e+00, %9112 ], [ %9117, %9113 ], [ %9129, %9124 ], [ 0.000000e+00, %9123 ]
  %9137 = phi float [ %9058, %9112 ], [ %9122, %9113 ], [ %9133, %9124 ], [ %9058, %9123 ]
  %9138 = phi float [ %9063, %9112 ], [ %9063, %9113 ], [ %9052, %9124 ], [ %9052, %9123 ]
  %9139 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9139, align 4, !tbaa !114, !noalias !126
  %9140 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9140, align 4, !tbaa !114, !noalias !126
  %9141 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9141, align 4, !tbaa !114, !noalias !126
  %9142 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9142, align 4, !tbaa !114, !noalias !126
  %9143 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9143, align 4, !tbaa !114, !noalias !126
  %9144 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9144, align 4, !tbaa !114, !noalias !126
  %9145 = icmp sgt i32 %9004, 0
  br i1 %9145, label %9146, label %9207

; <label>:9146                                    ; preds = %9134
  br label %9147

; <label>:9147                                    ; preds = %9196, %9146
  %9148 = phi i32 [ %9197, %9196 ], [ 0, %9146 ]
  %9149 = phi i32 [ %9198, %9196 ], [ 0, %9146 ]
  %9150 = add nuw i32 %9149, 171
  %9151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %9150)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.f32 %9151, 0
  %9153 = extractvalue %dx.types.CBufRet.f32 %9151, 1
  %9154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9155 = extractvalue %dx.types.CBufRet.f32 %9154, 0
  %9156 = extractvalue %dx.types.CBufRet.f32 %9154, 1
  %9157 = fsub fast float %9152, %9155
  %9158 = fsub fast float %9153, %9156
  %9159 = extractvalue %dx.types.CBufRet.f32 %9151, 2
  %9160 = fsub fast float -0.000000e+00, %9157
  %9161 = fsub fast float -0.000000e+00, %9158
  %9162 = call float @dx.op.dot2.f32(i32 54, float %8981, float %8982, float %9160, float %9161)  ; Dot2(ax,ay,bx,by)
  %9163 = fmul fast float %9162, 2.000000e+00
  %9164 = call float @dx.op.dot2.f32(i32 54, float %9160, float %9161, float %9160, float %9161)  ; Dot2(ax,ay,bx,by)
  %9165 = fmul fast float %9159, %9159
  %9166 = fsub fast float %9164, %9165
  %9167 = fmul fast float %9163, %9163
  %9168 = fmul fast float %9024, %9166
  %9169 = fsub fast float %9167, %9168
  %9170 = fcmp fast ogt float %9169, 0.000000e+00
  br i1 %9170, label %9171, label %9186

; <label>:9171                                    ; preds = %9147
  %9172 = fcmp fast ogt float %9163, 0.000000e+00
  %9173 = call float @dx.op.unary.f32(i32 24, float %9169)  ; Sqrt(value)
  %9174 = fsub fast float -0.000000e+00, %9173
  %9175 = select i1 %9172, float %9173, float %9174
  %9176 = fadd fast float %9175, %9163
  %9177 = fmul float %9176, -5.000000e-01
  %9178 = fdiv fast float %9177, %9017
  %9179 = call float @dx.op.binary.f32(i32 35, float %9178, float 0.000000e+00)  ; FMax(a,b)
  %9180 = call float @dx.op.binary.f32(i32 36, float %9052, float %9179)  ; FMin(a,b)
  %9181 = fdiv fast float %9166, %9177
  %9182 = call float @dx.op.binary.f32(i32 35, float %9181, float 0.000000e+00)  ; FMax(a,b)
  %9183 = call float @dx.op.binary.f32(i32 36, float %9052, float %9182)  ; FMin(a,b)
  %9184 = call float @dx.op.binary.f32(i32 36, float %9180, float %9183)  ; FMin(a,b)
  %9185 = call float @dx.op.binary.f32(i32 35, float %9180, float %9183)  ; FMax(a,b)
  br label %9186

; <label>:9186                                    ; preds = %9171, %9147
  %9187 = phi float [ %9185, %9171 ], [ -1.000000e+00, %9147 ]
  %9188 = phi float [ %9184, %9171 ], [ -1.000000e+00, %9147 ]
  %9189 = phi i1 [ true, %9171 ], [ false, %9147 ]
  br i1 %9189, label %9190, label %9196

; <label>:9190                                    ; preds = %9186
  %9191 = call float @dx.op.binary.f32(i32 35, float %9135, float %9188)  ; FMax(a,b)
  %9192 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9149
  store float %9191, float* %9192, align 4, !tbaa !114, !noalias !126
  %9193 = call float @dx.op.binary.f32(i32 35, float %9135, float %9187)  ; FMax(a,b)
  %9194 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9149
  store float %9193, float* %9194, align 4, !tbaa !114, !noalias !126
  %9195 = add nsw i32 %9148, 1
  br label %9196

; <label>:9196                                    ; preds = %9190, %9186
  %9197 = phi i32 [ %9195, %9190 ], [ %9148, %9186 ]
  %9198 = add nuw nsw i32 %9149, 1
  %9199 = icmp eq i32 %9198, %9004
  br i1 %9199, label %9200, label %9147

; <label>:9200                                    ; preds = %9196
  %9201 = load float, float* %9141, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %9202 = load float, float* %9140, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %9203 = load float, float* %9139, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %9204 = load float, float* %9144, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %9205 = load float, float* %9143, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %9206 = load float, float* %9142, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %9207

; <label>:9207                                    ; preds = %9200, %9134
  %9208 = phi float [ -1.000000e+00, %9134 ], [ %9206, %9200 ]
  %9209 = phi float [ -1.000000e+00, %9134 ], [ %9205, %9200 ]
  %9210 = phi float [ -1.000000e+00, %9134 ], [ %9204, %9200 ]
  %9211 = phi float [ -1.000000e+00, %9134 ], [ %9203, %9200 ]
  %9212 = phi float [ -1.000000e+00, %9134 ], [ %9202, %9200 ]
  %9213 = phi float [ -1.000000e+00, %9134 ], [ %9201, %9200 ]
  %9214 = phi i32 [ 0, %9134 ], [ %9197, %9200 ]
  %9215 = call float @dx.op.binary.f32(i32 36, float %9212, float %9213)  ; FMin(a,b)
  %9216 = call float @dx.op.binary.f32(i32 36, float %9211, float %9215)  ; FMin(a,b)
  %9217 = call float @dx.op.binary.f32(i32 35, float %9211, float %9212)  ; FMax(a,b)
  %9218 = call float @dx.op.binary.f32(i32 36, float %9217, float %9213)  ; FMin(a,b)
  %9219 = call float @dx.op.binary.f32(i32 36, float %9211, float %9212)  ; FMin(a,b)
  %9220 = call float @dx.op.binary.f32(i32 35, float %9219, float %9218)  ; FMax(a,b)
  %9221 = call float @dx.op.binary.f32(i32 35, float %9212, float %9213)  ; FMax(a,b)
  %9222 = call float @dx.op.binary.f32(i32 35, float %9211, float %9221)  ; FMax(a,b)
  store float %9216, float* %9139, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %9220, float* %9140, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %9222, float* %9141, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %9223 = call float @dx.op.binary.f32(i32 36, float %9209, float %9210)  ; FMin(a,b)
  %9224 = call float @dx.op.binary.f32(i32 36, float %9208, float %9223)  ; FMin(a,b)
  %9225 = call float @dx.op.binary.f32(i32 35, float %9208, float %9209)  ; FMax(a,b)
  %9226 = call float @dx.op.binary.f32(i32 36, float %9225, float %9210)  ; FMin(a,b)
  %9227 = call float @dx.op.binary.f32(i32 36, float %9208, float %9209)  ; FMin(a,b)
  %9228 = call float @dx.op.binary.f32(i32 35, float %9227, float %9226)  ; FMax(a,b)
  %9229 = call float @dx.op.binary.f32(i32 35, float %9209, float %9210)  ; FMax(a,b)
  %9230 = call float @dx.op.binary.f32(i32 35, float %9208, float %9229)  ; FMax(a,b)
  store float %9224, float* %9142, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %9228, float* %9143, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %9230, float* %9144, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %9231 = sub nsw i32 3, %9214
  %9232 = icmp sgt i32 %9231, 2
  br i1 %9232, label %9233, label %9271

; <label>:9233                                    ; preds = %9207
  %9234 = icmp eq i32 %9002, 0
  %9235 = fsub fast float %9052, %9136
  %9236 = select i1 %9234, float %9235, float %9136
  %9237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9238 = extractvalue %dx.types.CBufRet.f32 %9237, 0
  %9239 = extractvalue %dx.types.CBufRet.f32 %9237, 1
  %9240 = extractvalue %dx.types.CBufRet.f32 %9237, 2
  %9241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9242 = extractvalue %dx.types.CBufRet.f32 %9241, 0
  %9243 = extractvalue %dx.types.CBufRet.f32 %9241, 1
  %9244 = extractvalue %dx.types.CBufRet.f32 %9241, 2
  %9245 = extractvalue %dx.types.CBufRet.f32 %9241, 3
  %9246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9247 = extractvalue %dx.types.CBufRet.f32 %9246, 3
  %9248 = call float @dx.op.binary.f32(i32 36, float %9137, float %9247)  ; FMin(a,b)
  %9249 = fmul fast float %9245, %9236
  %9250 = call float @dx.op.unary.f32(i32 7, float %9249)  ; Saturate(value)
  %9251 = fsub fast float %9242, %9238
  %9252 = fsub fast float %9243, %9239
  %9253 = fsub fast float %9244, %9240
  %9254 = fmul fast float %9250, %9251
  %9255 = fmul fast float %9250, %9252
  %9256 = fmul fast float %9250, %9253
  %9257 = fadd fast float %9254, %9238
  %9258 = fadd fast float %9255, %9239
  %9259 = fadd fast float %9256, %9240
  %9260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9261 = extractvalue %dx.types.CBufRet.f32 %9260, 0
  %9262 = extractvalue %dx.types.CBufRet.f32 %9260, 1
  %9263 = fadd fast float %9262, %9261
  %9264 = call float @dx.op.unary.f32(i32 7, float %9263)  ; Saturate(value)
  %9265 = extractvalue %dx.types.CBufRet.f32 %9260, 2
  %9266 = extractvalue %dx.types.CBufRet.f32 %9260, 3
  %9267 = fadd fast float %9266, %9265
  %9268 = call float @dx.op.unary.f32(i32 7, float %9267)  ; Saturate(value)
  %9269 = fmul fast float %9264, %9248
  %9270 = fmul fast float %9269, %9268
  br label %9353

; <label>:9271                                    ; preds = %9207
  %9272 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9231
  %9273 = load float, float* %9272, align 4, !tbaa !114, !noalias !126
  %9274 = fcmp fast olt float %9273, %9138
  %9275 = icmp sgt i32 %9214, 0
  %9276 = and i1 %9275, %9274
  br i1 %9276, label %9277, label %9314

; <label>:9277                                    ; preds = %9271
  br label %9278

; <label>:9278                                    ; preds = %9307, %9277
  %9279 = phi float [ %9308, %9307 ], [ %9136, %9277 ]
  %9280 = phi float [ %9309, %9307 ], [ %9137, %9277 ]
  %9281 = phi float [ %9289, %9307 ], [ %9273, %9277 ]
  %9282 = phi i32 [ %9286, %9307 ], [ %9231, %9277 ]
  %9283 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9282
  %9284 = load float, float* %9283, align 4, !tbaa !114, !noalias !126
  %9285 = icmp slt i32 %9282, 2
  %9286 = add nsw i32 %9282, 1
  %9287 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9286
  %9288 = load float, float* %9287, align 4, !tbaa !114, !noalias !126
  %9289 = select i1 %9285, float %9288, float %9052
  %9290 = call float @dx.op.binary.f32(i32 36, float %9289, float %9284)  ; FMin(a,b)
  %9291 = call float @dx.op.binary.f32(i32 36, float %9138, float %9290)  ; FMin(a,b)
  %9292 = icmp eq i32 %9002, 0
  %9293 = fadd fast float %9291, %9281
  %9294 = fmul fast float %9293, %8983
  %9295 = fadd fast float %9294, %8996
  br i1 %9292, label %9301, label %9296

; <label>:9296                                    ; preds = %9278
  %9297 = fsub fast float %9291, %9281
  %9298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9297)  ; FMax(a,b)
  %9299 = fmul fast float %9298, %9295
  %9300 = fadd fast float %9299, %9280
  br label %9307

; <label>:9301                                    ; preds = %9278
  %9302 = fsub fast float %9281, %9291
  %9303 = call float @dx.op.unary.f32(i32 6, float %9302)  ; FAbs(value)
  %9304 = fadd fast float %9303, %9279
  %9305 = fmul fast float %9303, %9295
  %9306 = fsub fast float %9280, %9305
  br label %9307

; <label>:9307                                    ; preds = %9301, %9296
  %9308 = phi float [ %9298, %9296 ], [ %9304, %9301 ]
  %9309 = phi float [ %9300, %9296 ], [ %9306, %9301 ]
  %9310 = fcmp fast olt float %9289, %9138
  %9311 = icmp slt i32 %9286, 3
  %9312 = and i1 %9311, %9310
  br i1 %9312, label %9278, label %9313

; <label>:9313                                    ; preds = %9307
  br label %9314

; <label>:9314                                    ; preds = %9313, %9271
  %9315 = phi float [ %9136, %9271 ], [ %9308, %9313 ]
  %9316 = phi float [ %9137, %9271 ], [ %9309, %9313 ]
  %9317 = fsub fast float %9052, %9315
  %9318 = select i1 %9054, float %9315, float %9317
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 0
  %9321 = extractvalue %dx.types.CBufRet.f32 %9319, 1
  %9322 = extractvalue %dx.types.CBufRet.f32 %9319, 2
  %9323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9324 = extractvalue %dx.types.CBufRet.f32 %9323, 0
  %9325 = extractvalue %dx.types.CBufRet.f32 %9323, 1
  %9326 = extractvalue %dx.types.CBufRet.f32 %9323, 2
  %9327 = extractvalue %dx.types.CBufRet.f32 %9323, 3
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 3
  %9330 = call float @dx.op.binary.f32(i32 36, float %9316, float %9329)  ; FMin(a,b)
  %9331 = fmul fast float %9327, %9318
  %9332 = call float @dx.op.unary.f32(i32 7, float %9331)  ; Saturate(value)
  %9333 = fsub fast float %9324, %9320
  %9334 = fsub fast float %9325, %9321
  %9335 = fsub fast float %9326, %9322
  %9336 = fmul fast float %9332, %9333
  %9337 = fmul fast float %9332, %9334
  %9338 = fmul fast float %9332, %9335
  %9339 = fadd fast float %9336, %9320
  %9340 = fadd fast float %9337, %9321
  %9341 = fadd fast float %9338, %9322
  %9342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9343 = extractvalue %dx.types.CBufRet.f32 %9342, 0
  %9344 = extractvalue %dx.types.CBufRet.f32 %9342, 1
  %9345 = fadd fast float %9344, %9343
  %9346 = call float @dx.op.unary.f32(i32 7, float %9345)  ; Saturate(value)
  %9347 = extractvalue %dx.types.CBufRet.f32 %9342, 2
  %9348 = extractvalue %dx.types.CBufRet.f32 %9342, 3
  %9349 = fadd fast float %9348, %9347
  %9350 = call float @dx.op.unary.f32(i32 7, float %9349)  ; Saturate(value)
  %9351 = fmul fast float %9346, %9330
  %9352 = fmul fast float %9351, %9350
  br label %9353

; <label>:9353                                    ; preds = %9314, %9233, %9068, %9050, %9048
  %9354 = phi float [ %9077, %9068 ], [ %9236, %9233 ], [ %9318, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9355 = phi float [ %9111, %9068 ], [ %9270, %9233 ], [ %9352, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9356 = phi float [ %9098, %9068 ], [ %9257, %9233 ], [ %9339, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9357 = phi float [ %9099, %9068 ], [ %9258, %9233 ], [ %9340, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9358 = phi float [ %9100, %9068 ], [ %9259, %9233 ], [ %9341, %9314 ], [ 0.000000e+00, %9048 ], [ 0.000000e+00, %9050 ]
  %9359 = fmul fast float %8991, %9355
  %9360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9361 = extractvalue %dx.types.CBufRet.f32 %9360, 2
  %9362 = fsub fast float %8998, %9361
  %9363 = fcmp fast olt float %9359, -2.000000e+01
  %9364 = call float @dx.op.unary.f32(i32 21, float %9359)  ; Exp(value)
  %9365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9366 = extractvalue %dx.types.CBufRet.f32 %9365, 2
  %9367 = extractvalue %dx.types.CBufRet.f32 %9365, 3
  %9368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9369 = extractvalue %dx.types.CBufRet.f32 %9368, 2
  %9370 = fmul fast float %9367, %9362
  %9371 = call float @dx.op.unary.f32(i32 7, float %9370)  ; Saturate(value)
  %9372 = fsub fast float 1.000000e+00, %9371
  %9373 = fmul fast float %8983, 5.000000e-01
  %9374 = fadd fast float %9373, 5.000000e-01
  %9375 = call float @dx.op.unary.f32(i32 7, float %9374)  ; Saturate(value)
  %9376 = fsub fast float 1.000000e+00, %9375
  %9377 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9372)  ; FMax(a,b)
  %9378 = fdiv fast float %9376, %9377
  %9379 = fsub fast float %9362, %8940
  %9380 = call float @dx.op.unary.f32(i32 6, float %9379)  ; FAbs(value)
  %9381 = fmul fast float %9380, %9366
  %9382 = call float @dx.op.unary.f32(i32 7, float %9378)  ; Saturate(value)
  %9383 = fsub fast float 1.000000e+00, %9381
  %9384 = fmul fast float %9383, %9382
  %9385 = fadd fast float %9384, %9381
  %9386 = fmul fast float %9369, %9362
  %9387 = call float @dx.op.unary.f32(i32 7, float %9386)  ; Saturate(value)
  %9388 = fsub fast float 1.000000e+00, %9385
  %9389 = fmul fast float %9388, %9387
  %9390 = fadd fast float %9389, %9385
  %9391 = call float @dx.op.unary.f32(i32 7, float %9390)  ; Saturate(value)
  %9392 = fadd fast float %9364, -1.000000e+00
  %9393 = select i1 %9363, float -1.000000e+00, float %9392
  %9394 = fmul fast float %9391, %9393
  %9395 = fadd fast float %9394, 1.000000e+00
  %9396 = fsub fast float -0.000000e+00, %9394
  %9397 = fmul fast float %9356, %9396
  %9398 = fmul fast float %9357, %9396
  %9399 = fmul fast float %9358, %9396
  br label %9400

; <label>:9400                                    ; preds = %9353, %8949
  %9401 = phi float [ %9354, %9353 ], [ 0.000000e+00, %8949 ]
  %9402 = phi float [ %9395, %9353 ], [ 1.000000e+00, %8949 ]
  %9403 = phi float [ %9397, %9353 ], [ 0.000000e+00, %8949 ]
  %9404 = phi float [ %9398, %9353 ], [ 0.000000e+00, %8949 ]
  %9405 = phi float [ %9399, %9353 ], [ 0.000000e+00, %8949 ]
  %9406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9407 = extractvalue %dx.types.CBufRet.f32 %9406, 1
  %9408 = fsub fast float 1.000000e+00, %9402
  %9409 = fmul fast float %9408, %8984
  %9410 = fmul fast float %9409, %9407
  %9411 = fsub fast float %8984, %9410
  br i1 %8977, label %9412, label %9441, !dx.controlflow.hints !162

; <label>:9412                                    ; preds = %9400
  %9413 = fmul fast float %8985, %8974
  %9414 = fadd fast float %9413, %8975
  %9415 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  %9416 = fmul fast float %8956, %9411
  %9417 = fsub fast float -0.000000e+00, %9416
  %9418 = fmul fast float %8957, %9411
  %9419 = fsub fast float -0.000000e+00, %9418
  %9420 = call float @dx.op.unary.f32(i32 21, float %9417)  ; Exp(value)
  %9421 = call float @dx.op.unary.f32(i32 21, float %9419)  ; Exp(value)
  %9422 = call float @dx.op.binary.f32(i32 35, float %8964, float %9420)  ; FMax(a,b)
  %9423 = call float @dx.op.binary.f32(i32 35, float %8964, float %9421)  ; FMax(a,b)
  %9424 = fsub fast float %9423, %9422
  %9425 = fmul fast float %9424, %9415
  %9426 = fadd fast float %9425, %9422
  %9427 = call float @dx.op.unary.f32(i32 7, float %9426)  ; Saturate(value)
  %9428 = fsub fast float %8961, %8966
  %9429 = fsub fast float %8962, %8967
  %9430 = fsub fast float %8963, %8968
  %9431 = fmul fast float %9415, %9428
  %9432 = fmul fast float %9415, %9429
  %9433 = fmul fast float %9415, %9430
  %9434 = fadd fast float %9431, %8966
  %9435 = fadd fast float %9432, %8967
  %9436 = fadd fast float %9433, %8968
  %9437 = fsub fast float 1.000000e+00, %9427
  %9438 = fmul fast float %9437, %9434
  %9439 = fmul fast float %9437, %9435
  %9440 = fmul fast float %9437, %9436
  br label %9500

; <label>:9441                                    ; preds = %9400
  %9442 = fmul fast float %9411, %8973
  %9443 = call float @dx.op.unary.f32(i32 7, float %9442)  ; Saturate(value)
  %9444 = fsub fast float 2.000000e+00, %9443
  %9445 = fmul fast float %9443, 9.921875e-01
  %9446 = fmul fast float %9445, %9444
  %9447 = fadd fast float %9446, 3.906250e-03
  %9448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %9447, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9449 = extractvalue %dx.types.ResRet.f32 %9448, 0
  %9450 = fsub fast float %9443, %9449
  %9451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9450)  ; FMax(a,b)
  %9452 = fmul fast float %8959, %8940
  %9453 = call float @dx.op.unary.f32(i32 6, float %9452)  ; FAbs(value)
  %9454 = fcmp fast ogt float %9453, 0x3EB0C6F7A0000000
  br i1 %9454, label %9455, label %9461, !dx.controlflow.hints !163

; <label>:9455                                    ; preds = %9441
  %9456 = fmul fast float %9452, 0xBFF7154760000000
  %9457 = call float @dx.op.unary.f32(i32 21, float %9456)  ; Exp(value)
  %9458 = fsub fast float 1.000000e+00, %9457
  %9459 = fdiv fast float %9458, %9452
  %9460 = fmul fast float %9459, %8969
  br label %9461

; <label>:9461                                    ; preds = %9455, %9441
  %9462 = phi float [ %9460, %9455 ], [ %8969, %9441 ]
  %9463 = fadd fast float %9462, %8971
  %9464 = fmul fast float %9463, %9451
  %9465 = fmul fast float %8956, %9464
  %9466 = fsub fast float -0.000000e+00, %9465
  %9467 = fmul fast float %8957, %9464
  %9468 = fsub fast float -0.000000e+00, %9467
  %9469 = fmul fast float %8958, %9464
  %9470 = fsub fast float -0.000000e+00, %9469
  %9471 = call float @dx.op.unary.f32(i32 21, float %9466)  ; Exp(value)
  %9472 = call float @dx.op.unary.f32(i32 21, float %9468)  ; Exp(value)
  %9473 = call float @dx.op.unary.f32(i32 21, float %9470)  ; Exp(value)
  %9474 = fmul fast float %8985, %8985
  %9475 = fadd fast float %9474, 1.000000e+00
  %9476 = fmul fast float %9475, 0x3FAE8EC8A0000000
  %9477 = fmul fast float %9476, %8966
  %9478 = fmul fast float %9476, %8967
  %9479 = fmul fast float %9476, %8968
  %9480 = fmul fast float %8985, %8964
  %9481 = fsub fast float 1.000000e+00, %9480
  %9482 = fmul fast float %8964, %8964
  %9483 = fsub fast float 1.000000e+00, %9482
  %9484 = fmul fast float %9483, 0x3FB45F3060000000
  %9485 = fmul fast float %9481, %9481
  %9486 = fdiv fast float 1.000000e+00, %9485
  %9487 = fmul fast float %9484, %9486
  %9488 = fmul fast float %9487, %8961
  %9489 = fmul fast float %9487, %8962
  %9490 = fmul fast float %9487, %8963
  %9491 = fadd fast float %9488, %9477
  %9492 = fadd fast float %9489, %9478
  %9493 = fadd fast float %9490, %9479
  %9494 = fsub fast float 1.000000e+00, %9471
  %9495 = fsub fast float 1.000000e+00, %9472
  %9496 = fsub fast float 1.000000e+00, %9473
  %9497 = fmul fast float %9491, %9494
  %9498 = fmul fast float %9492, %9495
  %9499 = fmul fast float %9493, %9496
  br label %9500

; <label>:9500                                    ; preds = %9461, %9412
  %9501 = phi float [ %9438, %9412 ], [ %9497, %9461 ]
  %9502 = phi float [ %9439, %9412 ], [ %9498, %9461 ]
  %9503 = phi float [ %9440, %9412 ], [ %9499, %9461 ]
  %9504 = phi float [ %9427, %9412 ], [ %9471, %9461 ]
  %9505 = phi float [ %9427, %9412 ], [ %9472, %9461 ]
  %9506 = phi float [ %9427, %9412 ], [ %9473, %9461 ]
  br i1 %8993, label %9507, label %9705, !dx.controlflow.hints !164

; <label>:9507                                    ; preds = %9500
  %9508 = extractvalue %dx.types.CBufRet.f32 %9406, 0
  %9509 = fmul fast float %9508, %9408
  %9510 = fsub fast float %9403, %9501
  %9511 = fsub fast float %9404, %9502
  %9512 = fsub fast float %9405, %9503
  %9513 = fmul fast float %9509, %9510
  %9514 = fmul fast float %9509, %9511
  %9515 = fmul fast float %9509, %9512
  %9516 = fadd fast float %9513, %9501
  %9517 = fadd fast float %9514, %9502
  %9518 = fadd fast float %9515, %9503
  %9519 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9504)  ; FMax(a,b)
  %9520 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9505)  ; FMax(a,b)
  %9521 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9506)  ; FMax(a,b)
  %9522 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9402)  ; FMax(a,b)
  %9523 = call float @dx.op.binary.f32(i32 35, float %9401, float %9411)  ; FMax(a,b)
  %9524 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9523)  ; FMax(a,b)
  %9525 = fdiv fast float %9401, %9524
  %9526 = call float @dx.op.unary.f32(i32 7, float %9525)  ; Saturate(value)
  %9527 = fdiv fast float %9411, %9524
  %9528 = call float @dx.op.unary.f32(i32 7, float %9527)  ; Saturate(value)
  %9529 = fcmp fast une float %9522, 1.000000e+00
  br i1 %9529, label %9530, label %9543, !dx.controlflow.hints !165

; <label>:9530                                    ; preds = %9507
  %9531 = call float @dx.op.unary.f32(i32 23, float %9522)  ; Log(value)
  %9532 = fmul fast float %9531, 0x3FE62E4300000000
  %9533 = fmul fast float %9403, %9532
  %9534 = fsub fast float -0.000000e+00, %9533
  %9535 = fmul fast float %9404, %9532
  %9536 = fsub fast float -0.000000e+00, %9535
  %9537 = fmul fast float %9405, %9532
  %9538 = fsub fast float -0.000000e+00, %9537
  %9539 = fsub fast float 1.000000e+00, %9522
  %9540 = fdiv fast float %9534, %9539
  %9541 = fdiv fast float %9536, %9539
  %9542 = fdiv fast float %9538, %9539
  br label %9543

; <label>:9543                                    ; preds = %9530, %9507
  %9544 = phi float [ %9540, %9530 ], [ %9403, %9507 ]
  %9545 = phi float [ %9541, %9530 ], [ %9404, %9507 ]
  %9546 = phi float [ %9542, %9530 ], [ %9405, %9507 ]
  %9547 = phi float [ %9532, %9530 ], [ 0.000000e+00, %9507 ]
  %9548 = fcmp fast une float %9519, 1.000000e+00
  br i1 %9548, label %9549, label %9556, !dx.controlflow.hints !166

; <label>:9549                                    ; preds = %9543
  %9550 = call float @dx.op.unary.f32(i32 23, float %9519)  ; Log(value)
  %9551 = fmul fast float %9550, 0x3FE62E4300000000
  %9552 = fmul fast float %9516, %9551
  %9553 = fsub fast float -0.000000e+00, %9552
  %9554 = fsub fast float 1.000000e+00, %9519
  %9555 = fdiv fast float %9553, %9554
  br label %9556

; <label>:9556                                    ; preds = %9549, %9543
  %9557 = phi float [ %9555, %9549 ], [ %9516, %9543 ]
  %9558 = phi float [ %9551, %9549 ], [ 0.000000e+00, %9543 ]
  %9559 = fcmp fast une float %9520, 1.000000e+00
  br i1 %9559, label %9560, label %9567, !dx.controlflow.hints !166

; <label>:9560                                    ; preds = %9556
  %9561 = call float @dx.op.unary.f32(i32 23, float %9520)  ; Log(value)
  %9562 = fmul fast float %9561, 0x3FE62E4300000000
  %9563 = fmul fast float %9517, %9562
  %9564 = fsub fast float -0.000000e+00, %9563
  %9565 = fsub fast float 1.000000e+00, %9520
  %9566 = fdiv fast float %9564, %9565
  br label %9567

; <label>:9567                                    ; preds = %9560, %9556
  %9568 = phi float [ %9566, %9560 ], [ %9517, %9556 ]
  %9569 = phi float [ %9562, %9560 ], [ 0.000000e+00, %9556 ]
  %9570 = fcmp fast une float %9521, 1.000000e+00
  br i1 %9570, label %9571, label %9578, !dx.controlflow.hints !166

; <label>:9571                                    ; preds = %9567
  %9572 = call float @dx.op.unary.f32(i32 23, float %9521)  ; Log(value)
  %9573 = fmul fast float %9572, 0x3FE62E4300000000
  %9574 = fmul fast float %9518, %9573
  %9575 = fsub fast float -0.000000e+00, %9574
  %9576 = fsub fast float 1.000000e+00, %9521
  %9577 = fdiv fast float %9575, %9576
  br label %9578

; <label>:9578                                    ; preds = %9571, %9567
  %9579 = phi float [ %9577, %9571 ], [ %9518, %9567 ]
  %9580 = phi float [ %9573, %9571 ], [ 0.000000e+00, %9567 ]
  %9581 = fmul fast float %9544, %9528
  %9582 = fmul fast float %9545, %9528
  %9583 = fmul fast float %9546, %9528
  %9584 = fmul fast float %9547, %9528
  %9585 = fmul fast float %9557, %9526
  %9586 = fmul fast float %9568, %9526
  %9587 = fmul fast float %9579, %9526
  %9588 = fmul fast float %9558, %9526
  %9589 = fmul fast float %9569, %9526
  %9590 = fmul fast float %9580, %9526
  %9591 = fadd fast float %9585, %9581
  %9592 = fadd fast float %9586, %9582
  %9593 = fadd fast float %9587, %9583
  %9594 = fadd fast float %9588, %9584
  %9595 = fadd fast float %9589, %9584
  %9596 = fadd fast float %9590, %9584
  %9597 = fcmp fast une float %9594, 0.000000e+00
  br i1 %9597, label %9598, label %9605, !dx.controlflow.hints !167

; <label>:9598                                    ; preds = %9578
  %9599 = fmul fast float %9594, 0x3FF7154760000000
  %9600 = call float @dx.op.unary.f32(i32 21, float %9599)  ; Exp(value)
  %9601 = fsub fast float 1.000000e+00, %9600
  %9602 = fmul fast float %9591, %9601
  %9603 = fsub fast float -0.000000e+00, %9602
  %9604 = fdiv fast float %9603, %9594
  br label %9605

; <label>:9605                                    ; preds = %9598, %9578
  %9606 = phi float [ %9600, %9598 ], [ 1.000000e+00, %9578 ]
  %9607 = phi float [ %9604, %9598 ], [ %9591, %9578 ]
  %9608 = fcmp fast une float %9595, 0.000000e+00
  br i1 %9608, label %9609, label %9616, !dx.controlflow.hints !167

; <label>:9609                                    ; preds = %9605
  %9610 = fmul fast float %9595, 0x3FF7154760000000
  %9611 = call float @dx.op.unary.f32(i32 21, float %9610)  ; Exp(value)
  %9612 = fsub fast float 1.000000e+00, %9611
  %9613 = fmul fast float %9592, %9612
  %9614 = fsub fast float -0.000000e+00, %9613
  %9615 = fdiv fast float %9614, %9595
  br label %9616

; <label>:9616                                    ; preds = %9609, %9605
  %9617 = phi float [ %9611, %9609 ], [ 1.000000e+00, %9605 ]
  %9618 = phi float [ %9615, %9609 ], [ %9592, %9605 ]
  %9619 = fcmp fast une float %9596, 0.000000e+00
  br i1 %9619, label %9620, label %9627, !dx.controlflow.hints !167

; <label>:9620                                    ; preds = %9616
  %9621 = fmul fast float %9596, 0x3FF7154760000000
  %9622 = call float @dx.op.unary.f32(i32 21, float %9621)  ; Exp(value)
  %9623 = fsub fast float 1.000000e+00, %9622
  %9624 = fmul fast float %9593, %9623
  %9625 = fsub fast float -0.000000e+00, %9624
  %9626 = fdiv fast float %9625, %9596
  br label %9627

; <label>:9627                                    ; preds = %9620, %9616
  %9628 = phi float [ %9622, %9620 ], [ 1.000000e+00, %9616 ]
  %9629 = phi float [ %9626, %9620 ], [ %9593, %9616 ]
  %9630 = fcmp fast ogt float %9526, %9528
  br i1 %9630, label %9631, label %9651

; <label>:9631                                    ; preds = %9627
  %9632 = fsub fast float 1.000000e+00, %9528
  %9633 = fmul fast float %9544, %9632
  %9634 = fmul fast float %9545, %9632
  %9635 = fmul fast float %9546, %9632
  %9636 = fmul fast float %9547, %9632
  %9637 = fcmp fast une float %9636, 0.000000e+00
  br i1 %9637, label %9638, label %9689, !dx.controlflow.hints !168

; <label>:9638                                    ; preds = %9631
  %9639 = fmul fast float %9636, 0x3FF7154760000000
  %9640 = call float @dx.op.unary.f32(i32 21, float %9639)  ; Exp(value)
  %9641 = fsub fast float 1.000000e+00, %9640
  %9642 = fmul fast float %9633, %9641
  %9643 = fsub fast float -0.000000e+00, %9642
  %9644 = fmul fast float %9634, %9641
  %9645 = fsub fast float -0.000000e+00, %9644
  %9646 = fmul fast float %9635, %9641
  %9647 = fsub fast float -0.000000e+00, %9646
  %9648 = fdiv fast float %9643, %9636
  %9649 = fdiv fast float %9645, %9636
  %9650 = fdiv fast float %9647, %9636
  br label %9689

; <label>:9651                                    ; preds = %9627
  %9652 = fsub fast float 1.000000e+00, %9526
  %9653 = fmul fast float %9557, %9652
  %9654 = fmul fast float %9568, %9652
  %9655 = fmul fast float %9579, %9652
  %9656 = fmul fast float %9558, %9652
  %9657 = fmul fast float %9569, %9652
  %9658 = fmul fast float %9580, %9652
  %9659 = fcmp fast une float %9656, 0.000000e+00
  br i1 %9659, label %9660, label %9667, !dx.controlflow.hints !167

; <label>:9660                                    ; preds = %9651
  %9661 = fmul fast float %9656, 0x3FF7154760000000
  %9662 = call float @dx.op.unary.f32(i32 21, float %9661)  ; Exp(value)
  %9663 = fsub fast float 1.000000e+00, %9662
  %9664 = fmul fast float %9653, %9663
  %9665 = fsub fast float -0.000000e+00, %9664
  %9666 = fdiv fast float %9665, %9656
  br label %9667

; <label>:9667                                    ; preds = %9660, %9651
  %9668 = phi float [ %9666, %9660 ], [ %9653, %9651 ]
  %9669 = phi float [ %9662, %9660 ], [ 1.000000e+00, %9651 ]
  %9670 = fcmp fast une float %9657, 0.000000e+00
  br i1 %9670, label %9671, label %9678, !dx.controlflow.hints !167

; <label>:9671                                    ; preds = %9667
  %9672 = fmul fast float %9657, 0x3FF7154760000000
  %9673 = call float @dx.op.unary.f32(i32 21, float %9672)  ; Exp(value)
  %9674 = fsub fast float 1.000000e+00, %9673
  %9675 = fmul fast float %9654, %9674
  %9676 = fsub fast float -0.000000e+00, %9675
  %9677 = fdiv fast float %9676, %9657
  br label %9678

; <label>:9678                                    ; preds = %9671, %9667
  %9679 = phi float [ %9677, %9671 ], [ %9654, %9667 ]
  %9680 = phi float [ %9673, %9671 ], [ 1.000000e+00, %9667 ]
  %9681 = fcmp fast une float %9658, 0.000000e+00
  br i1 %9681, label %9682, label %9689, !dx.controlflow.hints !167

; <label>:9682                                    ; preds = %9678
  %9683 = fmul fast float %9658, 0x3FF7154760000000
  %9684 = call float @dx.op.unary.f32(i32 21, float %9683)  ; Exp(value)
  %9685 = fsub fast float 1.000000e+00, %9684
  %9686 = fmul fast float %9655, %9685
  %9687 = fsub fast float -0.000000e+00, %9686
  %9688 = fdiv fast float %9687, %9658
  br label %9689

; <label>:9689                                    ; preds = %9682, %9678, %9638, %9631
  %9690 = phi float [ %9688, %9682 ], [ %9650, %9638 ], [ %9635, %9631 ], [ %9655, %9678 ]
  %9691 = phi float [ %9679, %9682 ], [ %9649, %9638 ], [ %9634, %9631 ], [ %9679, %9678 ]
  %9692 = phi float [ %9668, %9682 ], [ %9648, %9638 ], [ %9633, %9631 ], [ %9668, %9678 ]
  %9693 = phi float [ %9684, %9682 ], [ %9640, %9638 ], [ 1.000000e+00, %9631 ], [ 1.000000e+00, %9678 ]
  %9694 = phi float [ %9680, %9682 ], [ %9640, %9638 ], [ 1.000000e+00, %9631 ], [ %9680, %9678 ]
  %9695 = phi float [ %9669, %9682 ], [ %9640, %9638 ], [ 1.000000e+00, %9631 ], [ %9669, %9678 ]
  %9696 = fmul fast float %9695, %9607
  %9697 = fmul fast float %9694, %9618
  %9698 = fmul fast float %9693, %9629
  %9699 = fadd fast float %9696, %9692
  %9700 = fadd fast float %9697, %9691
  %9701 = fadd fast float %9698, %9690
  %9702 = fmul fast float %9695, %9606
  %9703 = fmul fast float %9694, %9617
  %9704 = fmul fast float %9693, %9628
  br label %9705

; <label>:9705                                    ; preds = %9689, %9500
  %9706 = phi float [ %9704, %9689 ], [ %9506, %9500 ]
  %9707 = phi float [ %9703, %9689 ], [ %9505, %9500 ]
  %9708 = phi float [ %9702, %9689 ], [ %9504, %9500 ]
  %9709 = phi float [ %9701, %9689 ], [ %9503, %9500 ]
  %9710 = phi float [ %9700, %9689 ], [ %9502, %9500 ]
  %9711 = phi float [ %9699, %9689 ], [ %9501, %9500 ]
  %9712 = fmul fast float %9711, %8653
  %9713 = fmul fast float %9710, %8655
  %9714 = fmul fast float %9709, %8657
  %9715 = fmul fast float %9708, %8948
  %9716 = call float @dx.op.dot3.f32(i32 55, float %9708, float %9707, float %9706, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9717 = call float @dx.op.dot3.f32(i32 55, float %9712, float %9713, float %9714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9718 = select i1 %249, float %9716, float %9708
  %9719 = select i1 %249, float %9716, float %9707
  %9720 = select i1 %249, float 1.000000e+00, float %9706
  %9721 = select i1 %249, float %9717, float %9712
  %9722 = select i1 %249, float 0.000000e+00, float %9713
  %9723 = select i1 %249, float 0.000000e+00, float %9714
  %9724 = fmul fast float %9718, %8942
  %9725 = fmul fast float %9719, %8943
  %9726 = fmul fast float %9720, %8944
  %9727 = fadd fast float %9724, %9721
  %9728 = fadd fast float %9725, %9722
  %9729 = fadd fast float %9723, %9726
  %9730 = fmul fast float %9718, %8945
  %9731 = fmul fast float %9719, %8946
  %9732 = fmul fast float %9720, %8947
  %9733 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9734 = extractvalue %dx.types.CBufRet.i32 %9733, 0
  %9735 = icmp eq i32 %9734, 0
  br i1 %9735, label %10103, label %9736, !dx.controlflow.hints !169

; <label>:9736                                    ; preds = %9705
  %9737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9738 = extractvalue %dx.types.CBufRet.f32 %9737, 2
  %9739 = extractvalue %dx.types.CBufRet.f32 %9737, 3
  %9740 = fmul fast float %9738, %109
  %9741 = fmul fast float %9739, %110
  %9742 = fmul fast float %9740, 2.000000e+00
  %9743 = fmul fast float %9741, 2.000000e+00
  %9744 = fsub fast float 1.000000e+00, %9742
  %9745 = fsub fast float 1.000000e+00, %9743
  %9746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9747 = extractvalue %dx.types.CBufRet.f32 %9746, 0
  %9748 = extractvalue %dx.types.CBufRet.f32 %9746, 1
  %9749 = extractvalue %dx.types.CBufRet.f32 %9746, 2
  %9750 = fmul fast float %9744, %9747
  %9751 = fmul fast float %9744, %9748
  %9752 = fmul fast float %9744, %9749
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.CBufRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.CBufRet.f32 %9753, 2
  %9757 = fmul fast float %9745, %9754
  %9758 = fmul fast float %9745, %9755
  %9759 = fmul fast float %9745, %9756
  %9760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9761 = extractvalue %dx.types.CBufRet.f32 %9760, 0
  %9762 = extractvalue %dx.types.CBufRet.f32 %9760, 1
  %9763 = extractvalue %dx.types.CBufRet.f32 %9760, 2
  %9764 = fadd fast float %9757, %9761
  %9765 = fadd fast float %9764, %9750
  %9766 = fadd fast float %9758, %9762
  %9767 = fadd fast float %9766, %9751
  %9768 = fadd fast float %9759, %9763
  %9769 = fadd fast float %9768, %9752
  %9770 = fmul fast float %9765, %8941
  %9771 = fmul fast float %9767, %8941
  %9772 = fmul fast float %9769, %8941
  %9773 = fmul fast float %9770, %9770
  %9774 = fmul fast float %9771, %9771
  %9775 = fadd fast float %9773, %9774
  %9776 = fmul fast float %9772, %9772
  %9777 = fadd fast float %9775, %9776
  %9778 = call float @dx.op.unary.f32(i32 24, float %9777)  ; Sqrt(value)
  %9779 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %9780 = fsub fast float %9778, %9779
  %9781 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %9782 = fmul fast float %9780, %9781
  %9783 = call float @dx.op.unary.f32(i32 7, float %9782)  ; Saturate(value)
  %9784 = fadd fast float %9783, -5.000000e-01
  %9785 = fmul fast float %9784, 2.000000e+00
  %9786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9787 = extractvalue %dx.types.CBufRet.f32 %9786, 2
  %9788 = call float @dx.op.binary.f32(i32 36, float %9787, float %9785)  ; FMin(a,b)
  %9789 = fsub fast float -0.000000e+00, %9787
  %9790 = fcmp fast ogt float %9788, %9789
  br i1 %9790, label %9791, label %10103, !dx.controlflow.hints !170

; <label>:9791                                    ; preds = %9736
  %9792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9793 = extractvalue %dx.types.CBufRet.f32 %9792, 3
  %9794 = fcmp fast ogt float %9793, 0.000000e+00
  br i1 %9794, label %9795, label %9870, !dx.controlflow.hints !171

; <label>:9795                                    ; preds = %9791
  %9796 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9797 = extractvalue %dx.types.Dimensions %9796, 0
  %9798 = sitofp i32 %9797 to float
  %9799 = extractvalue %dx.types.Dimensions %9796, 1
  %9800 = sitofp i32 %9799 to float
  %9801 = fmul fast float %9740, %9798
  %9802 = fmul fast float %9741, %9800
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 1
  %9805 = fsub fast float -0.000000e+00, %9804
  %9806 = fptoui float %9805 to i32
  %9807 = fptoui float %9801 to i32
  %9808 = fptoui float %9802 to i32
  %9809 = and i32 %9806, 31
  %9810 = lshr i32 %9807, %9809
  %9811 = lshr i32 %9808, %9809
  %9812 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9806, i32 %9810, i32 %9811, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9813 = extractvalue %dx.types.ResRet.f32 %9812, 0
  %9814 = fcmp fast olt float %9813, -1.000000e+00
  %9815 = fcmp fast ogt float %9813, -1.000000e+00
  %9816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9817 = extractvalue %dx.types.CBufRet.f32 %9816, 1
  %9818 = select i1 %9815, float %9817, float 1.000000e+00
  %9819 = fadd fast float %9813, 1.000000e+00
  %9820 = fmul fast float %9818, %9819
  %9821 = call float @dx.op.unary.f32(i32 6, float %9820)  ; FAbs(value)
  %9822 = extractvalue %dx.types.CBufRet.f32 %9816, 3
  %9823 = fcmp fast oge float %9821, %9822
  %9824 = select i1 %9823, float 0x4197782600000000, float %9821
  %9825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9826 = extractvalue %dx.types.CBufRet.f32 %9825, 0
  %9827 = extractvalue %dx.types.CBufRet.f32 %9825, 1
  %9828 = extractvalue %dx.types.CBufRet.f32 %9825, 2
  %9829 = select i1 %9814, float %9826, float %9747
  %9830 = select i1 %9814, float %9827, float %9748
  %9831 = select i1 %9814, float %9828, float %9749
  %9832 = fmul fast float %9829, %9744
  %9833 = fmul fast float %9830, %9744
  %9834 = fmul fast float %9831, %9744
  %9835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9836 = extractvalue %dx.types.CBufRet.f32 %9835, 0
  %9837 = extractvalue %dx.types.CBufRet.f32 %9835, 1
  %9838 = extractvalue %dx.types.CBufRet.f32 %9835, 2
  %9839 = select i1 %9814, float %9836, float %9754
  %9840 = select i1 %9814, float %9837, float %9755
  %9841 = select i1 %9814, float %9838, float %9756
  %9842 = fmul fast float %9839, %9745
  %9843 = fmul fast float %9840, %9745
  %9844 = fmul fast float %9841, %9745
  %9845 = fadd fast float %9842, %9832
  %9846 = fadd fast float %9843, %9833
  %9847 = fadd fast float %9844, %9834
  %9848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9849 = extractvalue %dx.types.CBufRet.f32 %9848, 0
  %9850 = extractvalue %dx.types.CBufRet.f32 %9848, 1
  %9851 = extractvalue %dx.types.CBufRet.f32 %9848, 2
  %9852 = select i1 %9814, float %9849, float %9761
  %9853 = select i1 %9814, float %9850, float %9762
  %9854 = select i1 %9814, float %9851, float %9763
  %9855 = fadd fast float %9845, %9852
  %9856 = fadd fast float %9846, %9853
  %9857 = fadd fast float %9847, %9854
  %9858 = fmul fast float %9855, %9824
  %9859 = fmul fast float %9856, %9824
  %9860 = fmul fast float %9857, %9824
  %9861 = fmul fast float %9858, %9858
  %9862 = fmul fast float %9859, %9859
  %9863 = fadd fast float %9861, %9862
  %9864 = fmul fast float %9860, %9860
  %9865 = fadd fast float %9863, %9864
  %9866 = call float @dx.op.unary.f32(i32 24, float %9865)  ; Sqrt(value)
  %9867 = fsub fast float %9866, %9779
  %9868 = fmul fast float %9867, %9781
  %9869 = call float @dx.op.unary.f32(i32 7, float %9868)  ; Saturate(value)
  br label %9870

; <label>:9870                                    ; preds = %9795, %9791
  %9871 = phi float [ %9869, %9795 ], [ 1.000000e+00, %9791 ]
  %9872 = fmul fast float %9788, 5.000000e-01
  %9873 = fadd fast float %9872, 5.000000e-01
  %9874 = call float @dx.op.unary.f32(i32 22, float %9873)  ; Frc(value)
  %9875 = call float @dx.op.unary.f32(i32 27, float %9874)  ; Round_ni(value)
  %9876 = call float @dx.op.unary.f32(i32 22, float %9874)  ; Frc(value)
  %9877 = fmul fast float %9876, 2.000000e+00
  %9878 = fadd fast float %9877, -1.000000e+00
  %9879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %9740, float %9741, float %9875, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9880 = extractvalue %dx.types.ResRet.f32 %9879, 0
  %9881 = extractvalue %dx.types.ResRet.f32 %9879, 1
  %9882 = extractvalue %dx.types.ResRet.f32 %9879, 2
  %9883 = extractvalue %dx.types.ResRet.f32 %9879, 3
  %9884 = fadd fast float %9880, -5.000000e-01
  %9885 = fadd fast float %9882, -5.000000e-01
  %9886 = fmul fast float %9884, 0xBFD5555560000000
  %9887 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9885, float %9886)  ; FMad(a,b,c)
  %9888 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9881, float 0.000000e+00)  ; FMad(a,b,c)
  %9889 = fadd fast float %9888, %9883
  %9890 = fmul fast float %9884, -7.500000e-01
  %9891 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9885, float %9890)  ; FMad(a,b,c)
  %9892 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9881, float 0.000000e+00)  ; FMad(a,b,c)
  %9893 = fadd fast float %9892, %9883
  %9894 = call float @dx.op.binary.f32(i32 35, float %9887, float -1.000000e+00)  ; FMax(a,b)
  %9895 = call float @dx.op.binary.f32(i32 35, float %9889, float -1.000000e+00)  ; FMax(a,b)
  %9896 = call float @dx.op.binary.f32(i32 35, float %9891, float -1.000000e+00)  ; FMax(a,b)
  %9897 = call float @dx.op.binary.f32(i32 35, float %9893, float -1.000000e+00)  ; FMax(a,b)
  %9898 = call float @dx.op.binary.f32(i32 36, float %9894, float 1.000000e+00)  ; FMin(a,b)
  %9899 = call float @dx.op.binary.f32(i32 36, float %9895, float 1.000000e+00)  ; FMin(a,b)
  %9900 = call float @dx.op.binary.f32(i32 36, float %9896, float 1.000000e+00)  ; FMin(a,b)
  %9901 = call float @dx.op.binary.f32(i32 36, float %9897, float 1.000000e+00)  ; FMin(a,b)
  %9902 = fcmp fast olt float %9898, 0x3FEFFF8020000000
  br i1 %9902, label %9903, label %10018, !dx.controlflow.hints !172

; <label>:9903                                    ; preds = %9870
  %9904 = extractvalue %dx.types.CBufRet.f32 %9786, 3
  %9905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9906 = extractvalue %dx.types.CBufRet.f32 %9905, 0
  %9907 = extractvalue %dx.types.CBufRet.f32 %9905, 1
  %9908 = extractvalue %dx.types.CBufRet.f32 %9905, 2
  %9909 = extractvalue %dx.types.CBufRet.f32 %9905, 3
  %9910 = fsub fast float %9906, %9898
  %9911 = fsub fast float %9907, %9899
  %9912 = fsub fast float %9908, %9900
  %9913 = fsub fast float %9909, %9901
  %9914 = fmul fast float %9910, %9904
  %9915 = fmul fast float %9911, %9904
  %9916 = fmul fast float %9912, %9904
  %9917 = fmul fast float %9913, %9904
  %9918 = fadd fast float %9914, %9898
  %9919 = fadd fast float %9915, %9899
  %9920 = fsub fast float -0.000000e+00, %9919
  %9921 = fadd fast float %9916, %9900
  %9922 = fadd fast float %9917, %9901
  %9923 = fmul fast float %9918, %9918
  %9924 = fsub fast float %9919, %9923
  %9925 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9924)  ; FMax(a,b)
  %9926 = fdiv fast float 1.000000e+00, %9925
  %9927 = fmul fast float %9919, %9918
  %9928 = fsub fast float %9921, %9927
  %9929 = fsub fast float %9878, %9918
  %9930 = fmul fast float %9878, %9878
  %9931 = fsub fast float %9930, %9919
  %9932 = fmul fast float %9929, %9926
  %9933 = fmul fast float %9932, %9928
  %9934 = fsub fast float %9931, %9933
  %9935 = fmul fast float %9919, %9919
  %9936 = fsub fast float %9922, %9935
  %9937 = fmul fast float %9928, %9928
  %9938 = fmul fast float %9937, %9926
  %9939 = fsub fast float %9936, %9938
  %9940 = fdiv fast float %9934, %9939
  %9941 = fmul fast float %9928, %9940
  %9942 = fsub fast float %9929, %9941
  %9943 = fmul fast float %9942, %9926
  %9944 = fmul fast float %9943, %9918
  %9945 = fsub fast float 1.000000e+00, %9944
  %9946 = fmul fast float %9919, %9940
  %9947 = fsub fast float %9945, %9946
  %9948 = fmul fast float %9943, %9943
  %9949 = fmul fast float %9940, 4.000000e+00
  %9950 = fmul fast float %9949, %9947
  %9951 = fsub fast float %9948, %9950
  %9952 = call float @dx.op.unary.f32(i32 24, float %9951)  ; Sqrt(value)
  %9953 = fcmp fast oge float %9943, 0.000000e+00
  %9954 = fsub fast float -0.000000e+00, %9952
  %9955 = select i1 %9953, float %9954, float %9952
  %9956 = fsub fast float %9955, %9943
  %9957 = fdiv fast float %9956, %9940
  %9958 = fdiv fast float %9947, %9956
  %9959 = fmul fast float %9957, 5.000000e-01
  %9960 = fmul fast float %9958, 2.000000e+00
  %9961 = select i1 %9953, float %9959, float %9960
  %9962 = select i1 %9953, float %9960, float %9959
  %9963 = call float @dx.op.binary.f32(i32 35, float %9961, float %9962)  ; FMax(a,b)
  %9964 = call float @dx.op.binary.f32(i32 36, float %9961, float %9962)  ; FMin(a,b)
  %9965 = fcmp fast ogt float %9878, %9964
  br i1 %9965, label %9966, label %9976

; <label>:9966                                    ; preds = %9903
  %9967 = fsub fast float %9878, %9964
  %9968 = fsub fast float %9963, %9964
  %9969 = fmul fast float %9967, %9968
  %9970 = fmul fast float %9963, %9878
  %9971 = fadd fast float %9963, %9878
  %9972 = fmul fast float %9971, %9918
  %9973 = fadd fast float %9970, %9919
  %9974 = fsub fast float %9973, %9972
  %9975 = fdiv fast float %9974, %9969
  br label %9976

; <label>:9976                                    ; preds = %9966, %9903
  %9977 = phi float [ %9975, %9966 ], [ 0.000000e+00, %9903 ]
  %9978 = fcmp fast ogt float %9878, %9963
  %9979 = fsub fast float %9878, %9963
  br i1 %9978, label %9980, label %9990

; <label>:9980                                    ; preds = %9976
  %9981 = fsub fast float %9963, %9964
  %9982 = fmul fast float %9981, %9979
  %9983 = fmul fast float %9964, %9878
  %9984 = fadd fast float %9964, %9878
  %9985 = fmul fast float %9984, %9918
  %9986 = fsub fast float %9920, %9983
  %9987 = fadd fast float %9986, %9985
  %9988 = fdiv fast float %9987, %9982
  %9989 = fadd fast float %9988, %9977
  br label %9990

; <label>:9990                                    ; preds = %9980, %9976
  %9991 = phi float [ %9989, %9980 ], [ %9977, %9976 ]
  %9992 = fsub fast float %9878, %9964
  %9993 = fmul fast float %9992, %9979
  %9994 = fmul fast float %9964, %9963
  %9995 = fadd fast float %9964, %9963
  %9996 = fmul fast float %9995, %9918
  %9997 = fadd fast float %9994, %9919
  %9998 = fsub fast float %9997, %9996
  %9999 = fdiv fast float %9998, %9993
  %10000 = call float @dx.op.unary.f32(i32 7, float %9991)  ; Saturate(value)
  %10001 = fcmp fast oeq float %8669, 0.000000e+00
  %10002 = extractvalue %dx.types.CBufRet.f32 %9786, 0
  %10003 = fcmp fast oeq float %10002, 0.000000e+00
  %10004 = or i1 %10001, %10003
  %10005 = fmul fast float %10002, 2.000000e+00
  %10006 = fadd fast float %9787, %9788
  %10007 = fdiv fast float %10006, %10005
  %10008 = call float @dx.op.unary.f32(i32 7, float %10007)  ; Saturate(value)
  %10009 = fmul fast float %10008, 2.000000e+00
  %10010 = fsub fast float 3.000000e+00, %10009
  %10011 = fmul fast float %10008, %10008
  %10012 = fmul fast float %10011, %10010
  %10013 = select i1 %10004, float 1.000000e+00, float %10012
  %10014 = fmul fast float %9999, %8669
  %10015 = fadd fast float %10000, %10014
  %10016 = call float @dx.op.unary.f32(i32 7, float %10015)  ; Saturate(value)
  %10017 = fmul fast float %10013, %10016
  br label %10018

; <label>:10018                                   ; preds = %9990, %9870
  %10019 = phi float [ %10017, %9990 ], [ 0.000000e+00, %9870 ]
  %10020 = fsub fast float 1.000000e+00, %10019
  %10021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %9740, float %9741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10022 = extractvalue %dx.types.ResRet.f32 %10021, 0
  %10023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10024 = extractvalue %dx.types.CBufRet.i32 %10023, 2
  %10025 = icmp eq i32 %10024, 0
  br i1 %10025, label %10031, label %10026

; <label>:10026                                   ; preds = %10018
  %10027 = call float @dx.op.unary.f32(i32 7, float %10019)  ; Saturate(value)
  %10028 = fadd fast float %10022, -1.000000e+00
  %10029 = fmul fast float %10027, %10028
  %10030 = fadd fast float %10029, 1.000000e+00
  br label %10031

; <label>:10031                                   ; preds = %10026, %10018
  %10032 = phi float [ %10030, %10026 ], [ %10020, %10018 ]
  br i1 %9794, label %10033, label %10051

; <label>:10033                                   ; preds = %10031
  %10034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10035 = extractvalue %dx.types.CBufRet.f32 %10034, 1
  %10036 = fsub fast float %9871, %10035
  %10037 = call float @dx.op.unary.f32(i32 7, float %10036)  ; Saturate(value)
  %10038 = fsub fast float %9871, %9793
  %10039 = call float @dx.op.unary.f32(i32 7, float %10038)  ; Saturate(value)
  %10040 = fsub fast float %10037, %10039
  %10041 = fsub fast float %9873, %10039
  %10042 = fdiv fast float %10041, %10040
  %10043 = call float @dx.op.unary.f32(i32 7, float %10042)  ; Saturate(value)
  %10044 = fmul fast float %10043, 2.000000e+00
  %10045 = fsub fast float 3.000000e+00, %10044
  %10046 = fsub fast float %10022, %10032
  %10047 = fmul fast float %10043, %10043
  %10048 = fmul fast float %10047, %10046
  %10049 = fmul fast float %10048, %10045
  %10050 = fadd fast float %10049, %10032
  br label %10051

; <label>:10051                                   ; preds = %10033, %10031
  %10052 = phi float [ %10050, %10033 ], [ %10032, %10031 ]
  %10053 = call float @dx.op.binary.f32(i32 35, float %10022, float %10052)  ; FMax(a,b)
  %10054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10055 = extractvalue %dx.types.CBufRet.i32 %10054, 2
  %10056 = and i32 %10055, 1
  %10057 = icmp eq i32 %10056, 0
  %10058 = fcmp fast une float %10053, 1.000000e+00
  %10059 = and i1 %10058, %10057
  br i1 %10059, label %10060, label %10079

; <label>:10060                                   ; preds = %10051
  %10061 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9740, float %9741, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10062 = extractvalue %dx.types.ResRet.f32 %10061, 0
  %10063 = extractvalue %dx.types.ResRet.f32 %10061, 1
  %10064 = extractvalue %dx.types.ResRet.f32 %10061, 2
  %10065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10066 = extractvalue %dx.types.CBufRet.f32 %10065, 1
  %10067 = fmul fast float %10066, %10062
  %10068 = fmul fast float %10066, %10063
  %10069 = fmul fast float %10066, %10064
  %10070 = fcmp fast ogt float %10022, 0x3FEFFF2E40000000
  %10071 = fsub fast float 1.000000e+00, %10053
  %10072 = fsub fast float 1.000000e+00, %10022
  %10073 = fdiv fast float %10071, %10072
  %10074 = call float @dx.op.unary.f32(i32 7, float %10073)  ; Saturate(value)
  %10075 = select i1 %10070, float 0.000000e+00, float %10074
  %10076 = fmul fast float %10067, %10075
  %10077 = fmul fast float %10068, %10075
  %10078 = fmul fast float %10069, %10075
  br label %10079

; <label>:10079                                   ; preds = %10060, %10051
  %10080 = phi float [ 0.000000e+00, %10051 ], [ %10076, %10060 ]
  %10081 = phi float [ 0.000000e+00, %10051 ], [ %10077, %10060 ]
  %10082 = phi float [ 0.000000e+00, %10051 ], [ %10078, %10060 ]
  %10083 = fmul fast float %10080, %8653
  %10084 = fmul fast float %10081, %8655
  %10085 = fmul fast float %10082, %8657
  %10086 = fmul fast float %10053, %9715
  %10087 = call float @dx.op.dot3.f32(i32 55, float %10053, float %10053, float %10053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10088 = call float @dx.op.dot3.f32(i32 55, float %10083, float %10084, float %10085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10089 = select i1 %249, float %10087, float %10053
  %10090 = select i1 %249, float 1.000000e+00, float %10053
  %10091 = select i1 %249, float %10088, float %10083
  %10092 = select i1 %249, float 0.000000e+00, float %10084
  %10093 = select i1 %249, float 0.000000e+00, float %10085
  %10094 = fmul fast float %10089, %9727
  %10095 = fmul fast float %10089, %9728
  %10096 = fmul fast float %10090, %9729
  %10097 = fadd fast float %10094, %10091
  %10098 = fadd fast float %10095, %10092
  %10099 = fadd fast float %10093, %10096
  %10100 = fmul fast float %10089, %9730
  %10101 = fmul fast float %10089, %9731
  %10102 = fmul fast float %10090, %9732
  br label %10103

; <label>:10103                                   ; preds = %10079, %9736, %9705, %8937
  %10104 = phi float [ %8942, %8937 ], [ %9727, %9705 ], [ %10097, %10079 ], [ %9727, %9736 ]
  %10105 = phi float [ %8943, %8937 ], [ %9728, %9705 ], [ %10098, %10079 ], [ %9728, %9736 ]
  %10106 = phi float [ %8944, %8937 ], [ %9729, %9705 ], [ %10099, %10079 ], [ %9729, %9736 ]
  %10107 = phi float [ %8945, %8937 ], [ %9730, %9705 ], [ %10100, %10079 ], [ %9730, %9736 ]
  %10108 = phi float [ %8946, %8937 ], [ %9731, %9705 ], [ %10101, %10079 ], [ %9731, %9736 ]
  %10109 = phi float [ %8947, %8937 ], [ %9732, %9705 ], [ %10102, %10079 ], [ %9732, %9736 ]
  %10110 = phi float [ %8948, %8937 ], [ %9715, %9705 ], [ %10086, %10079 ], [ %9715, %9736 ]
  %10111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10112 = extractvalue %dx.types.CBufRet.f32 %10111, 2
  %10113 = extractvalue %dx.types.CBufRet.f32 %10111, 3
  %10114 = fmul fast float %10112, %109
  %10115 = fmul fast float %10113, %110
  %10116 = call float @dx.op.unary.f32(i32 7, float %10114)  ; Saturate(value)
  %10117 = call float @dx.op.unary.f32(i32 7, float %10115)  ; Saturate(value)
  %10118 = select i1 %8679, i32 2, i32 0
  %10119 = or i32 %10118, 1
  %10120 = uitofp i32 %10119 to float
  %10121 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %10116, float %10117, float %10120, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10122 = extractvalue %dx.types.ResRet.f32 %10121, 0
  %10123 = extractvalue %dx.types.ResRet.f32 %10121, 1
  %10124 = extractvalue %dx.types.ResRet.f32 %10121, 2
  %10125 = extractvalue %dx.types.ResRet.f32 %10121, 3
  %10126 = add nuw nsw i32 %10118, 2
  %10127 = uitofp i32 %10126 to float
  %10128 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %10116, float %10117, float %10127, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10129 = extractvalue %dx.types.ResRet.f32 %10128, 0
  %10130 = extractvalue %dx.types.ResRet.f32 %10128, 1
  %10131 = extractvalue %dx.types.ResRet.f32 %10128, 2
  %10132 = extractvalue %dx.types.ResRet.f32 %10128, 3
  %10133 = call float @dx.op.binary.f32(i32 35, float %10123, float %10124)  ; FMax(a,b)
  %10134 = call float @dx.op.binary.f32(i32 35, float %10122, float %10133)  ; FMax(a,b)
  %10135 = call float @dx.op.binary.f32(i32 35, float %10134, float %10125)  ; FMax(a,b)
  %10136 = call float @dx.op.binary.f32(i32 36, float %10130, float %10131)  ; FMin(a,b)
  %10137 = call float @dx.op.binary.f32(i32 36, float %10129, float %10136)  ; FMin(a,b)
  %10138 = call float @dx.op.binary.f32(i32 36, float %10137, float %10132)  ; FMin(a,b)
  %10139 = fmul fast float %10135, 2.550000e+02
  %10140 = fadd fast float %10139, 0x3F70101020000000
  %10141 = fptoui float %10140 to i32
  %10142 = fmul fast float %10138, 2.550000e+02
  %10143 = fadd fast float %10142, 0x3F70101020000000
  %10144 = fptoui float %10143 to i32
  %10145 = icmp ult i32 %10141, %10144
  br i1 %10145, label %10146, label %10315

; <label>:10146                                   ; preds = %10103
  %10147 = fcmp fast ogt float %95, 9.843750e-01
  %10148 = fadd fast float %8941, -4.000000e+00
  %10149 = select i1 %10147, float -4.000000e+00, float %10148
  %10150 = call float @dx.op.binary.f32(i32 35, float %10149, float 0.000000e+00)  ; FMax(a,b)
  %10151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10152 = extractvalue %dx.types.CBufRet.f32 %10151, 0
  %10153 = fadd fast float %10152, %10150
  %10154 = extractvalue %dx.types.CBufRet.f32 %10151, 2
  %10155 = fmul fast float %10153, %10154
  %10156 = call float @dx.op.unary.f32(i32 23, float %10155)  ; Log(value)
  %10157 = extractvalue %dx.types.CBufRet.f32 %10151, 3
  %10158 = fmul fast float %10157, %10156
  %10159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10160 = extractvalue %dx.types.CBufRet.f32 %10159, 2
  %10161 = fmul fast float %10158, %10160
  %10162 = call float @dx.op.unary.f32(i32 7, float %10161)  ; Saturate(value)
  %10163 = uitofp i32 %10141 to float
  %10164 = uitofp i32 %10144 to float
  %10165 = fadd fast float %10163, 5.000000e-01
  %10166 = fadd fast float %10164, 5.000000e-01
  %10167 = fmul fast float %10160, %10165
  %10168 = fmul fast float %10160, %10166
  %10169 = fadd fast float %10167, 0x3F0FFB4800000000
  %10170 = fadd fast float %10168, 0xBF0FFB4800000000
  %10171 = call float @dx.op.binary.f32(i32 35, float %10162, float %10169)  ; FMax(a,b)
  %10172 = call float @dx.op.binary.f32(i32 36, float %10171, float %10170)  ; FMin(a,b)
  %10173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10174 = extractvalue %dx.types.CBufRet.f32 %10173, 1
  %10175 = extractvalue %dx.types.CBufRet.f32 %10173, 2
  %10176 = extractvalue %dx.types.CBufRet.f32 %10173, 0
  %10177 = select i1 %8679, float %10176, float 0.000000e+00
  %10178 = fmul fast float %10174, %10172
  %10179 = fadd fast float %10177, %10178
  %10180 = fadd fast float %10177, %10175
  %10181 = fsub fast float %10174, %10175
  %10182 = fadd fast float %10181, %10177
  %10183 = call float @dx.op.binary.f32(i32 35, float %10179, float %10180)  ; FMax(a,b)
  %10184 = call float @dx.op.binary.f32(i32 36, float %10183, float %10182)  ; FMin(a,b)
  %10185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %10116, float %10117, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10186 = extractvalue %dx.types.ResRet.f32 %10185, 0
  %10187 = extractvalue %dx.types.ResRet.f32 %10185, 1
  %10188 = extractvalue %dx.types.ResRet.f32 %10185, 2
  %10189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10190 = extractvalue %dx.types.CBufRet.i32 %10189, 0
  %10191 = extractvalue %dx.types.CBufRet.i32 %10189, 1
  %10192 = uitofp i32 %10190 to float
  %10193 = uitofp i32 %10191 to float
  %10194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10195 = extractvalue %dx.types.CBufRet.f32 %10194, 0
  %10196 = extractvalue %dx.types.CBufRet.f32 %10194, 1
  %10197 = fmul fast float %10192, %10116
  %10198 = fmul fast float %10193, %10117
  %10199 = fadd fast float %10197, -5.000000e-01
  %10200 = fadd fast float %10198, -5.000000e-01
  %10201 = call float @dx.op.unary.f32(i32 22, float %10199)  ; Frc(value)
  %10202 = call float @dx.op.unary.f32(i32 22, float %10200)  ; Frc(value)
  %10203 = fmul fast float %10201, %10201
  %10204 = fmul fast float %10203, %10201
  %10205 = fsub fast float 3.000000e+00, %10201
  %10206 = fmul fast float %10203, %10205
  %10207 = fmul fast float %10201, 3.000000e+00
  %10208 = fmul fast float %10204, 3.000000e+00
  %10209 = fmul fast float %10203, 6.000000e+00
  %10210 = fsub fast float %10208, %10209
  %10211 = fadd fast float %10210, 4.000000e+00
  %10212 = fmul fast float %10211, 0x3FC5555560000000
  %10213 = fmul fast float %10204, -3.000000e+00
  %10214 = fadd fast float %10203, %10201
  %10215 = fmul fast float %10214, 3.000000e+00
  %10216 = fadd fast float %10213, 1.000000e+00
  %10217 = fadd fast float %10216, %10215
  %10218 = fmul fast float %10204, 0x3FC5555560000000
  %10219 = fmul fast float %10202, %10202
  %10220 = fmul fast float %10219, %10202
  %10221 = fsub fast float 3.000000e+00, %10202
  %10222 = fmul fast float %10219, %10221
  %10223 = fmul fast float %10202, 3.000000e+00
  %10224 = fmul fast float %10220, 3.000000e+00
  %10225 = fmul fast float %10219, 6.000000e+00
  %10226 = fsub fast float %10224, %10225
  %10227 = fadd fast float %10226, 4.000000e+00
  %10228 = fmul fast float %10227, 0x3FC5555560000000
  %10229 = fmul fast float %10220, -3.000000e+00
  %10230 = fadd fast float %10219, %10202
  %10231 = fmul fast float %10230, 3.000000e+00
  %10232 = fadd fast float %10229, 1.000000e+00
  %10233 = fadd fast float %10232, %10231
  %10234 = fmul fast float %10220, 0x3FC5555560000000
  %10235 = fadd fast float %10201, 1.000000e+00
  %10236 = fsub fast float 1.000000e+00, %10207
  %10237 = fadd fast float %10236, %10206
  %10238 = fadd fast float %10237, %10211
  %10239 = fmul fast float %10238, 0x3FC5555560000000
  %10240 = fdiv fast float %10212, %10239
  %10241 = fsub fast float %10235, %10240
  %10242 = fsub fast float 1.000000e+00, %10201
  %10243 = fadd fast float %10217, %10204
  %10244 = fmul fast float %10243, 0x3FC5555560000000
  %10245 = fdiv fast float %10218, %10244
  %10246 = fadd fast float %10242, %10245
  %10247 = fadd fast float %10202, 1.000000e+00
  %10248 = fsub fast float 1.000000e+00, %10223
  %10249 = fadd fast float %10248, %10222
  %10250 = fadd fast float %10249, %10227
  %10251 = fmul fast float %10250, 0x3FC5555560000000
  %10252 = fdiv fast float %10228, %10251
  %10253 = fsub fast float %10247, %10252
  %10254 = fsub fast float 1.000000e+00, %10202
  %10255 = fadd fast float %10233, %10220
  %10256 = fmul fast float %10255, 0x3FC5555560000000
  %10257 = fdiv fast float %10234, %10256
  %10258 = fadd fast float %10257, %10254
  %10259 = fmul fast float %10241, %10195
  %10260 = fsub fast float %10116, %10259
  %10261 = fmul fast float %10246, %10195
  %10262 = fadd fast float %10261, %10116
  %10263 = fmul fast float %10258, %10196
  %10264 = fadd fast float %10263, %10117
  %10265 = fmul fast float %10253, %10196
  %10266 = fsub fast float %10117, %10265
  %10267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %10260, float %10266, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10268 = extractvalue %dx.types.ResRet.f32 %10267, 0
  %10269 = extractvalue %dx.types.ResRet.f32 %10267, 1
  %10270 = extractvalue %dx.types.ResRet.f32 %10267, 2
  %10271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %10262, float %10266, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10272 = extractvalue %dx.types.ResRet.f32 %10271, 0
  %10273 = extractvalue %dx.types.ResRet.f32 %10271, 1
  %10274 = extractvalue %dx.types.ResRet.f32 %10271, 2
  %10275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %10260, float %10264, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10276 = extractvalue %dx.types.ResRet.f32 %10275, 0
  %10277 = extractvalue %dx.types.ResRet.f32 %10275, 1
  %10278 = extractvalue %dx.types.ResRet.f32 %10275, 2
  %10279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %10262, float %10264, float %10184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10280 = extractvalue %dx.types.ResRet.f32 %10279, 0
  %10281 = extractvalue %dx.types.ResRet.f32 %10279, 1
  %10282 = extractvalue %dx.types.ResRet.f32 %10279, 2
  %10283 = fsub fast float %10276, %10268
  %10284 = fsub fast float %10277, %10269
  %10285 = fsub fast float %10278, %10270
  %10286 = fmul fast float %10283, %10256
  %10287 = fmul fast float %10284, %10256
  %10288 = fmul fast float %10285, %10256
  %10289 = fadd fast float %10286, %10268
  %10290 = fadd fast float %10287, %10269
  %10291 = fadd fast float %10288, %10270
  %10292 = fsub fast float %10280, %10272
  %10293 = fsub fast float %10281, %10273
  %10294 = fsub fast float %10282, %10274
  %10295 = fmul fast float %10292, %10256
  %10296 = fmul fast float %10293, %10256
  %10297 = fmul fast float %10294, %10256
  %10298 = fsub fast float %10272, %10289
  %10299 = fadd fast float %10298, %10295
  %10300 = fsub fast float %10273, %10290
  %10301 = fadd fast float %10300, %10296
  %10302 = fsub fast float %10274, %10291
  %10303 = fadd fast float %10302, %10297
  %10304 = fmul fast float %10299, %10244
  %10305 = fmul fast float %10301, %10244
  %10306 = fmul fast float %10303, %10244
  %10307 = fadd fast float %10304, %10289
  %10308 = fadd fast float %10305, %10290
  %10309 = fadd fast float %10306, %10291
  %10310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10311 = extractvalue %dx.types.CBufRet.f32 %10310, 1
  %10312 = fmul fast float %10307, %10311
  %10313 = fmul fast float %10308, %10311
  %10314 = fmul fast float %10309, %10311
  br label %10315

; <label>:10315                                   ; preds = %10146, %10103
  %10316 = phi float [ %10186, %10146 ], [ 1.000000e+00, %10103 ]
  %10317 = phi float [ %10187, %10146 ], [ 1.000000e+00, %10103 ]
  %10318 = phi float [ %10188, %10146 ], [ 1.000000e+00, %10103 ]
  %10319 = phi float [ %10312, %10146 ], [ 0.000000e+00, %10103 ]
  %10320 = phi float [ %10313, %10146 ], [ 0.000000e+00, %10103 ]
  %10321 = phi float [ %10314, %10146 ], [ 0.000000e+00, %10103 ]
  %10322 = fmul fast float %10319, %8653
  %10323 = fmul fast float %10320, %8655
  %10324 = fmul fast float %10321, %8657
  %10325 = fmul fast float %10316, %10110
  %10326 = call float @dx.op.dot3.f32(i32 55, float %10316, float %10317, float %10318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10327 = call float @dx.op.dot3.f32(i32 55, float %10322, float %10323, float %10324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10328 = select i1 %249, float %10326, float %10316
  %10329 = select i1 %249, float %10326, float %10317
  %10330 = select i1 %249, float 1.000000e+00, float %10318
  %10331 = select i1 %249, float %10327, float %10322
  %10332 = select i1 %249, float 0.000000e+00, float %10323
  %10333 = select i1 %249, float 0.000000e+00, float %10324
  %10334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10335 = extractvalue %dx.types.CBufRet.i32 %10334, 3
  %10336 = and i32 %10335, 3
  %10337 = icmp ne i32 %10336, 0
  %10338 = and i32 %10335, 4
  %10339 = icmp ne i32 %10338, 0
  %10340 = and i1 %10337, %10339
  %10341 = and i1 %249, %10340
  br i1 %10341, label %10342, label %10348

; <label>:10342                                   ; preds = %10315
  %10343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10344 = extractvalue %dx.types.CBufRet.f32 %10343, 1
  %10345 = fadd fast float %10325, -1.000000e+00
  %10346 = fmul fast float %10344, %10345
  %10347 = fadd fast float %10346, 1.000000e+00
  br label %10348

; <label>:10348                                   ; preds = %10342, %10315
  %10349 = phi float [ %10347, %10342 ], [ %10325, %10315 ]
  %10350 = fadd fast float %10107, %10104
  %10351 = fmul fast float %10328, %10350
  %10352 = fadd fast float %10351, %10331
  %10353 = fadd fast float %10108, %10105
  %10354 = fmul fast float %10329, %10353
  %10355 = fadd fast float %10354, %10332
  %10356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10357 = extractvalue %dx.types.CBufRet.f32 %10356, 0
  br i1 %249, label %10358, label %10373

; <label>:10358                                   ; preds = %10348
  %10359 = fadd fast float %10352, %10355
  %10360 = fmul fast float %10357, %10359
  %10361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10362 = extractvalue %dx.types.CBufRet.f32 %10361, 3
  %10363 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %10364 = fsub fast float %8666, %8660
  %10365 = fadd fast float %10364, %8667
  %10366 = fsub fast float %10365, %10363
  %10367 = extractvalue %dx.types.CBufRet.f32 %8661, 2
  %10368 = fmul fast float %10366, %10367
  %10369 = call float @dx.op.unary.f32(i32 7, float %10368)  ; Saturate(value)
  %10370 = fsub fast float %10369, %10362
  %10371 = fmul fast float %10370, %10349
  %10372 = fadd fast float %10371, %10362
  br label %10399

; <label>:10373                                   ; preds = %10348
  %10374 = fadd fast float %10109, %10106
  %10375 = fmul fast float %10330, %10374
  %10376 = fadd fast float %10375, %10333
  %10377 = fmul fast float %10357, %10352
  %10378 = fmul fast float %10357, %10355
  %10379 = fmul fast float %10357, %10376
  %10380 = call float @dx.op.binary.f32(i32 35, float %10378, float %10379)  ; FMax(a,b)
  %10381 = call float @dx.op.binary.f32(i32 35, float %10377, float %10380)  ; FMax(a,b)
  %10382 = call float @dx.op.binary.f32(i32 35, float %8655, float %8657)  ; FMax(a,b)
  %10383 = call float @dx.op.binary.f32(i32 35, float %8653, float %10382)  ; FMax(a,b)
  %10384 = call float @dx.op.binary.f32(i32 35, float %10381, float %10383)  ; FMax(a,b)
  %10385 = fcmp fast ugt float %10384, 0x3F10000000000000
  br i1 %10385, label %10387, label %10386

; <label>:10386                                   ; preds = %10373
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10387

; <label>:10387                                   ; preds = %10386, %10373
  %10388 = add i32 %50, 356
  %10389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %10388, i32 undef)  ; BufferLoad(srv,index,wot)
  %10390 = extractvalue %dx.types.ResRet.i32 %10389, 0
  %10391 = and i32 %10390, 32
  %10392 = icmp eq i32 %10391, 0
  br i1 %10392, label %10399, label %10393

; <label>:10393                                   ; preds = %10387
  %10394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10395 = extractvalue %dx.types.CBufRet.f32 %10394, 0
  %10396 = fmul fast float %10395, 0x3FE99999A0000000
  %10397 = fadd fast float %10395, %10377
  %10398 = fadd fast float %10396, %10379
  br label %10399

; <label>:10399                                   ; preds = %10393, %10387, %10358
  %10400 = phi float [ 1.000000e+00, %10358 ], [ %8655, %10393 ], [ %8655, %10387 ]
  %10401 = phi float [ 1.000000e+00, %10358 ], [ %8657, %10393 ], [ %8657, %10387 ]
  %10402 = phi float [ %10360, %10358 ], [ %10397, %10393 ], [ %10377, %10387 ]
  %10403 = phi float [ %10372, %10358 ], [ %10378, %10393 ], [ %10378, %10387 ]
  %10404 = phi float [ 1.000000e+00, %10358 ], [ %10398, %10393 ], [ %10379, %10387 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10405 = call float @dx.op.binary.f32(i32 36, float %10402, float 3.225500e+04)  ; FMin(a,b)
  %10406 = call float @dx.op.binary.f32(i32 36, float %10403, float 3.225500e+04)  ; FMin(a,b)
  %10407 = call float @dx.op.binary.f32(i32 36, float %10404, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10405)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10406)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10407)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10408 = call float @dx.op.binary.f32(i32 36, float %8653, float 3.225500e+04)  ; FMin(a,b)
  %10409 = call float @dx.op.binary.f32(i32 36, float %10400, float 3.225500e+04)  ; FMin(a,b)
  %10410 = call float @dx.op.binary.f32(i32 36, float %10401, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10408)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10409)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10410)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!62}
!dx.entryPoints = !{!63}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !51, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 52, i32 1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 18, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 19, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 20, i32 1, i32 11, i32 0, null}
!20 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 21, i32 1, i32 11, i32 0, null}
!21 = !{i32 14, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!24 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!25 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!26 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 56, i32 1, i32 2, i32 0, !27}
!27 = !{i32 0, i32 5}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 1, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !36}
!36 = !{i32 0, i32 14}
!37 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!38 = !{i32 29, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!43 = !{i32 34, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!46 = !{i32 37, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 85, i32 1, i32 7, i32 0, !36}
!47 = !{i32 38, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!48 = !{i32 39, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 12, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 55, i32 1, i32 2, i32 0, !7}
!51 = !{!52, !53}
!52 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!53 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!54 = !{!55, !56, !57, !58, !59, !60, !61}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!60 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!61 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!62 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !91}
!64 = !{!65, !87, null}
!65 = !{!66, !69, !70, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86}
!66 = !{i32 0, !"SV_Position", i8 9, i8 3, !67, i8 4, i32 1, i8 4, i32 0, i8 0, !68}
!67 = !{i32 0}
!68 = !{i32 3, i32 15}
!69 = !{i32 1, !"COLOR", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 1, i8 0, !68}
!70 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 2, i8 0, !71}
!71 = !{i32 3, i32 3}
!72 = !{i32 3, !"NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 3, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 4, !"TANGENT", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 4, i8 0, !68}
!75 = !{i32 5, !"SH_RED", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 5, i8 0, !68}
!76 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 6, i8 0, !68}
!77 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 7, i8 0, !68}
!78 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !67, i8 2, i32 1, i8 3, i32 8, i8 0, !73}
!79 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 9, i8 0, !68}
!80 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !67, i8 2, i32 1, i8 2, i32 10, i8 0, !71}
!81 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 11, i8 0, !68}
!82 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !67, i8 2, i32 1, i8 4, i32 12, i8 0, !73}
!83 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !67, i8 1, i32 1, i8 1, i32 13, i8 0, !84}
!84 = !{i32 3, i32 1}
!85 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 14, i8 0, !84}
!86 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!87 = !{!88, !89}
!88 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
!89 = !{i32 1, !"SV_Target", i8 9, i8 16, !90, i8 0, i32 1, i8 4, i32 1, i8 0, !68}
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
!132 = distinct !{!132, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!133 = distinct !{!133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!134 = distinct !{!134, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!135 = distinct !{!135, !133, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!136 = distinct !{!136, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!137 = distinct !{!137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!138 = distinct !{!138, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!139 = distinct !{!139, !137, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
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

