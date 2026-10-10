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
; shader hash: a061b5c124f8db96a91f3b26151861a1
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

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = alloca [4 x i32], align 4
  %48 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 13, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 12, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %91 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %92 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %93 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %94 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %95 = alloca [12 x float], align 4
  %96 = alloca [12 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = alloca [4 x float], align 4
  %99 = alloca [4 x float], align 4
  %100 = alloca [4 x float], align 4
  %101 = alloca [3 x float], align 4
  %102 = alloca [3 x float], align 4
  %103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = fmul fast float %106, %91
  %108 = fmul fast float %106, %92
  %109 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %110 = bitcast float %109 to i32
  %111 = ashr i32 %110, 1
  %112 = sub nsw i32 1597250115, %111
  %113 = bitcast i32 %112 to float
  %114 = fmul fast float %113, %82
  %115 = fmul fast float %113, %83
  %116 = fmul fast float %113, %84
  %117 = fmul fast float %83, %80
  %118 = fmul fast float %84, %79
  %119 = fsub fast float %117, %118
  %120 = fmul fast float %84, %78
  %121 = fmul fast float %82, %80
  %122 = fsub fast float %120, %121
  %123 = fmul fast float %82, %79
  %124 = fmul fast float %83, %78
  %125 = fsub fast float %123, %124
  %126 = fmul fast float %119, %81
  %127 = fmul fast float %122, %81
  %128 = fmul fast float %125, %81
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = fcmp fast une float %130, 0.000000e+00
  %132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.f32 %132, 2
  %134 = extractvalue %dx.types.CBufRet.f32 %132, 3
  %135 = fmul fast float %107, 2.000000e+00
  %136 = fmul fast float %135, %133
  %137 = fmul fast float %108, 2.000000e+00
  %138 = fmul fast float %137, %134
  %139 = fsub fast float 1.000000e+00, %136
  %140 = fsub fast float 1.000000e+00, %138
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = select i1 %131, float %142, float %146
  %150 = select i1 %131, float %143, float %147
  %151 = select i1 %131, float %144, float %148
  %152 = fmul fast float %149, %139
  %153 = fmul fast float %150, %139
  %154 = fmul fast float %151, %139
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = select i1 %131, float %156, float %160
  %164 = select i1 %131, float %157, float %161
  %165 = select i1 %131, float %158, float %162
  %166 = fmul fast float %163, %140
  %167 = fmul fast float %164, %140
  %168 = fmul fast float %165, %140
  %169 = fadd fast float %166, %152
  %170 = fadd fast float %167, %153
  %171 = fadd fast float %168, %154
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = extractvalue %dx.types.CBufRet.f32 %172, 2
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = select i1 %131, float %173, float %177
  %181 = select i1 %131, float %174, float %178
  %182 = select i1 %131, float %175, float %179
  %183 = fadd fast float %169, %180
  %184 = fadd fast float %170, %181
  %185 = fadd fast float %171, %182
  %186 = fmul fast float %183, %94
  %187 = fmul fast float %184, %94
  %188 = fmul fast float %185, %94
  %189 = fmul fast float %107, 5.000000e-01
  %190 = fmul fast float %108, 5.000000e-01
  %191 = fptosi float %189 to i32
  %192 = fptosi float %190 to i32
  %193 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = lshr i32 %194, 18
  %196 = uitofp i32 %195 to float
  %197 = fmul fast float %196, 0x3F4C00EBA0000000
  %198 = call float @dx.op.unary.f32(i32 21, float %197)  ; Exp(value)
  %199 = fadd fast float %198, -1.000000e+00
  %200 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %201 = extractvalue %dx.types.Dimensions %200, 0
  %202 = sitofp i32 %201 to float
  %203 = extractvalue %dx.types.Dimensions %200, 1
  %204 = sitofp i32 %203 to float
  %205 = fcmp fast oge float %189, %202
  %206 = fcmp fast oge float %190, %204
  %207 = or i1 %205, %206
  %208 = select i1 %207, float 0x4197782600000000, float %199
  %209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %210 = extractvalue %dx.types.CBufRet.f32 %209, 2
  %211 = extractvalue %dx.types.CBufRet.f32 %209, 3
  %212 = fmul fast float %210, %107
  %213 = fmul fast float %211, %108
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 114688
  %217 = icmp ne i32 %216, 0
  %218 = select i1 %217, float %212, float 0.000000e+00
  %219 = select i1 %217, float %213, float 0.000000e+00
  %220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %43, float %218, float %219, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %221 = extractvalue %dx.types.ResRet.f32 %220, 0
  %222 = fmul fast float %221, 2.550000e+02
  %223 = fptoui float %222 to i32
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 3
  %227 = and i32 %226, 3
  %228 = icmp ne i32 %227, 0
  %229 = and i32 %226, 4
  %230 = icmp ne i32 %229, 0
  %231 = and i1 %228, %230
  br i1 %231, label %232, label %243

; <label>:232                                     ; preds = %0
  %233 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %234 = fmul fast float %233, %108
  %235 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %236 = fmul fast float %235, %107
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %236, float %234, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fsub fast float 1.000000e+00, %238
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %242 = fcmp fast olt float %239, %241
  br label %246

; <label>:243                                     ; preds = %0
  %244 = icmp eq i32 %229, 0
  %245 = and i1 %228, %244
  br label %246

; <label>:246                                     ; preds = %243, %232
  %247 = phi i1 [ %242, %232 ], [ %245, %243 ]
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 2
  %250 = fmul fast float %249, 0x3FE3C6EF40000000
  %251 = frem fast float %107, 2.560000e+02
  %252 = frem fast float %108, 2.560000e+02
  %253 = fptoui float %251 to i32
  %254 = fptoui float %252 to i32
  %255 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %253, i32 %254, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = fadd fast float %256, %250
  %258 = call float @dx.op.unary.f32(i32 22, float %257)  ; Frc(value)
  %259 = add i32 %48, 156
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = shl i32 %261, 4
  %263 = and i32 %262, 32752
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = lshr i32 %261, 7
  %266 = and i32 %265, 32752
  %267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %266)  ; LegacyF16ToF32(value)
  %268 = lshr i32 %261, 22
  %269 = shl nuw nsw i32 %268, 5
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %48, 216
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %273, 8
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = lshr i32 %273, 16
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = add i32 %48, 36
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %48, 288
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 65535
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %294, 16
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = fmul fast float %296, 0x3F50624DE0000000
  %300 = fmul fast float %298, 0x3F50624DE0000000
  %301 = add i32 %48, 172
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = shl i32 %303, 4
  %305 = and i32 %304, 32752
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %303, 7
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %303, 22
  %311 = shl nuw nsw i32 %310, 5
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %48, 232
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %315, 8
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = lshr i32 %315, 16
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = add i32 %48, 52
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %48, 304
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 65535
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %336, 16
  %340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %339)  ; LegacyF16ToF32(value)
  %341 = fmul fast float %338, 0x3F50624DE0000000
  %342 = fmul fast float %340, 0x3F50624DE0000000
  %343 = add i32 %48, 188
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = shl i32 %345, 4
  %347 = and i32 %346, 32752
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %345, 7
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %345, 22
  %353 = shl nuw nsw i32 %352, 5
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %48, 248
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = lshr i32 %357, 8
  %362 = and i32 %361, 255
  %363 = uitofp i32 %362 to float
  %364 = fmul fast float %363, 0x3F70101020000000
  %365 = lshr i32 %357, 16
  %366 = and i32 %365, 255
  %367 = uitofp i32 %366 to float
  %368 = fmul fast float %367, 0x3F70101020000000
  %369 = add i32 %48, 68
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 65535
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = lshr i32 %371, 16
  %375 = call float @dx.op.legacyF16ToF32(i32 131, i32 %374)  ; LegacyF16ToF32(value)
  %376 = add i32 %48, 320
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 65535
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %378, 16
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = fmul fast float %380, 0x3F50624DE0000000
  %384 = fmul fast float %382, 0x3F50624DE0000000
  %385 = add i32 %48, 204
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = shl i32 %387, 4
  %389 = and i32 %388, 32752
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %387, 7
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %387, 22
  %395 = shl nuw nsw i32 %394, 5
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = add i32 %48, 264
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 255
  %401 = uitofp i32 %400 to float
  %402 = fmul fast float %401, 0x3F70101020000000
  %403 = lshr i32 %399, 8
  %404 = and i32 %403, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = lshr i32 %399, 16
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = add i32 %48, 84
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 65535
  %415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %414)  ; LegacyF16ToF32(value)
  %416 = lshr i32 %413, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = add i32 %48, 336
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = fmul fast float %422, 0x3F50624DE0000000
  %426 = fmul fast float %424, 0x3F50624DE0000000
  %427 = add i32 %48, 348
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 32
  %431 = icmp eq i32 %430, 0
  %432 = and i32 %429, 64
  %433 = icmp eq i32 %432, 0
  %434 = and i32 %429, 128
  %435 = icmp eq i32 %434, 0
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 2
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %455, label %440

; <label>:440                                     ; preds = %246
  %441 = add i32 %48, 488
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = add i32 %443, 0
  %445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %445, %dx.types.Handle %104, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %447 = extractvalue %dx.types.ResRet.f32 %446, 0
  %448 = extractvalue %dx.types.ResRet.f32 %446, 1
  %449 = extractvalue %dx.types.ResRet.f32 %446, 2
  %450 = extractvalue %dx.types.ResRet.f32 %446, 3
  %451 = fmul fast float %450, %87
  %452 = fmul fast float %447, %88
  %453 = fmul fast float %448, %89
  %454 = fmul fast float %449, %90
  br label %455

; <label>:455                                     ; preds = %440, %246
  %456 = phi float [ %90, %246 ], [ %454, %440 ]
  %457 = phi float [ %89, %246 ], [ %453, %440 ]
  %458 = phi float [ %88, %246 ], [ %452, %440 ]
  %459 = phi float [ %87, %246 ], [ %451, %440 ]
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 2
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %483, label %464

; <label>:464                                     ; preds = %455
  %465 = add i32 %48, 44
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 1
  %469 = icmp ne i32 %468, 0
  %470 = select i1 %469, float %458, float 1.000000e+00
  %471 = add i32 %48, 60
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = and i32 %473, 1
  %475 = icmp ne i32 %474, 0
  %476 = select i1 %475, float %457, float 1.000000e+00
  %477 = add i32 %48, 76
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 1
  %481 = icmp ne i32 %480, 0
  %482 = select i1 %481, float %456, float 1.000000e+00
  br label %483

; <label>:483                                     ; preds = %464, %455
  %484 = phi float [ %456, %455 ], [ %482, %464 ]
  %485 = phi float [ %457, %455 ], [ %476, %464 ]
  %486 = phi float [ %458, %455 ], [ %470, %464 ]
  %487 = lshr i32 %461, 20
  %488 = and i32 %487, 3
  %489 = add nuw nsw i32 %488, 1
  %490 = add i32 %48, 24
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = add i32 %48, 28
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = or i32 %495, %492
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %1143, label %498

; <label>:498                                     ; preds = %483
  %499 = and i32 %492, 262144
  %500 = icmp ne i32 %499, 0
  %501 = select i1 %500, float %53, float 1.000000e+00
  %502 = select i1 %500, float %54, float 0.000000e+00
  %503 = select i1 %500, float %55, float 0.000000e+00
  %504 = select i1 %500, float %56, float 1.000000e+00
  %505 = select i1 %500, float %57, float %85
  %506 = select i1 %500, float %58, float %86
  %507 = add i32 %48, 284
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = lshr i32 %509, 16
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = fmul fast float %511, 0x3F50624DE0000000
  %513 = add i32 %48, 88
  %514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.i32 %514, 0
  %516 = lshr i32 %515, 16
  %517 = and i32 %516, 255
  %518 = lshr i32 %515, 24
  %519 = add i32 %48, 292
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 65535
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %521, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = add i32 %48, 32
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %526, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = lshr i32 %528, 22
  %530 = shl nuw nsw i32 %529, 5
  %531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %530)  ; LegacyF16ToF32(value)
  %532 = shl i32 %528, 4
  %533 = and i32 %532, 32752
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = lshr i32 %528, 7
  %536 = and i32 %535, 32752
  %537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %536)  ; LegacyF16ToF32(value)
  %538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %539 = extractvalue %dx.types.CBufRet.f32 %538, 3
  %540 = fmul fast float %539, 1.000000e+03
  %541 = fmul fast float %299, %540
  %542 = call float @dx.op.unary.f32(i32 22, float %541)  ; Frc(value)
  %543 = fadd fast float %542, %289
  %544 = fmul fast float %300, %540
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = fadd fast float %545, %291
  %547 = fmul fast float %512, %540
  %548 = call float @dx.op.unary.f32(i32 22, float %547)  ; Frc(value)
  %549 = fmul fast float %548, 0x401921FB60000000
  %550 = fadd fast float %549, %531
  %551 = call float @dx.op.unary.f32(i32 13, float %550)  ; Sin(value)
  %552 = call float @dx.op.unary.f32(i32 12, float %550)  ; Cos(value)
  %553 = fsub fast float -0.000000e+00, %551
  %554 = fadd fast float %505, -5.000000e-01
  %555 = fadd fast float %506, -5.000000e-01
  %556 = fmul fast float %523, %554
  %557 = fmul fast float %525, %555
  %558 = fadd fast float %556, 5.000000e-01
  %559 = fadd fast float %557, 5.000000e-01
  %560 = fmul fast float %534, %558
  %561 = fmul fast float %537, %559
  %562 = fmul fast float %552, %560
  %563 = call float @dx.op.tertiary.f32(i32 46, float %553, float %561, float %562)  ; FMad(a,b,c)
  %564 = fmul fast float %551, %560
  %565 = call float @dx.op.tertiary.f32(i32 46, float %552, float %561, float %564)  ; FMad(a,b,c)
  %566 = fadd fast float %543, %563
  %567 = fadd fast float %546, %565
  %568 = icmp ugt i32 %517, 1
  %569 = icmp ugt i32 %515, 33554431
  %570 = or i1 %569, %568
  br i1 %570, label %571, label %596

; <label>:571                                     ; preds = %498
  %572 = add i32 %48, 228
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = lshr i32 %574, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = fmul fast float %539, %576
  %578 = call float @dx.op.unary.f32(i32 22, float %577)  ; Frc(value)
  %579 = mul nuw nsw i32 %517, %518
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %578, %580
  %582 = call float @dx.op.unary.f32(i32 27, float %581)  ; Round_ni(value)
  %583 = fptoui float %582 to i32
  %584 = urem i32 %583, %517
  %585 = udiv i32 %583, %518
  %586 = call float @dx.op.unary.f32(i32 22, float %566)  ; Frc(value)
  %587 = call float @dx.op.unary.f32(i32 22, float %567)  ; Frc(value)
  %588 = uitofp i32 %584 to float
  %589 = uitofp i32 %585 to float
  %590 = fadd fast float %586, %588
  %591 = fadd fast float %587, %589
  %592 = uitofp i32 %517 to float
  %593 = uitofp i32 %518 to float
  %594 = fdiv fast float %590, %592
  %595 = fdiv fast float %591, %593
  br label %596

; <label>:596                                     ; preds = %571, %498
  %597 = phi float [ %594, %571 ], [ %566, %498 ]
  %598 = phi float [ %595, %571 ], [ %567, %498 ]
  %599 = and i32 %492, 256
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %647, label %601

; <label>:601                                     ; preds = %596
  %602 = add i32 %48, 424
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = add i32 %604, 0
  %606 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %605, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %607 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %606, %dx.types.Handle %104, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %608 = extractvalue %dx.types.ResRet.f32 %607, 0
  %609 = add i32 %48, 100
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = shl i32 %611, 4
  %613 = and i32 %612, 32752
  %614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %613)  ; LegacyF16ToF32(value)
  %615 = lshr i32 %611, 7
  %616 = and i32 %615, 32752
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = fsub fast float 1.000000e+00, %459
  %619 = call float @dx.op.binary.f32(i32 35, float %618, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %620 = bitcast float %459 to i32
  %621 = sitofp i32 %620 to float
  %622 = fadd fast float %621, 0xC1CFBF8940000000
  %623 = fmul fast float %617, %622
  %624 = fadd fast float %623, 0x41CFBF8940000000
  %625 = fptosi float %624 to i32
  %626 = bitcast i32 %625 to float
  %627 = bitcast float %619 to i32
  %628 = sitofp i32 %627 to float
  %629 = fadd fast float %628, 0xC1CFBF8940000000
  %630 = fmul fast float %629, %617
  %631 = fadd fast float %630, 0x41CFBF8940000000
  %632 = fptosi float %631 to i32
  %633 = bitcast i32 %632 to float
  %634 = fmul fast float %626, %614
  %635 = fmul fast float %633, %614
  %636 = fsub fast float %619, %634
  %637 = fadd fast float %635, %619
  %638 = call float @dx.op.unary.f32(i32 7, float %636)  ; Saturate(value)
  %639 = call float @dx.op.unary.f32(i32 7, float %637)  ; Saturate(value)
  %640 = fsub fast float %608, %638
  %641 = fsub fast float %639, %638
  %642 = bitcast float %641 to i32
  %643 = sub nsw i32 2129859010, %642
  %644 = bitcast i32 %643 to float
  %645 = fmul fast float %644, %640
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  br label %647

; <label>:647                                     ; preds = %601, %596
  %648 = phi float [ %646, %601 ], [ %459, %596 ]
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 128
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %669, label %653

; <label>:653                                     ; preds = %647
  %654 = add i32 %48, 408
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %104, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.i32 %661, 0
  %663 = and i32 %662, 524288
  %664 = icmp ne i32 %663, 0
  %665 = fcmp fast ogt float %660, 0x3FE0101020000000
  %666 = select i1 %665, float 1.000000e+00, float 0.000000e+00
  %667 = select i1 %664, float %666, float %660
  %668 = fmul fast float %667, %648
  br label %669

; <label>:669                                     ; preds = %653, %647
  %670 = phi float [ %668, %653 ], [ %648, %647 ]
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = and i32 %672, 16
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %873, label %675

; <label>:675                                     ; preds = %669
  %676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.i32 %676, 0
  %678 = add i32 %48, 360
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = add i32 %680, 0
  %682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %682, %dx.types.Handle %103, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %684 = extractvalue %dx.types.ResRet.f32 %683, 0
  %685 = extractvalue %dx.types.ResRet.f32 %683, 1
  %686 = extractvalue %dx.types.ResRet.f32 %683, 2
  %687 = extractvalue %dx.types.ResRet.f32 %683, 3
  %688 = and i32 %677, 255
  %689 = uitofp i32 %688 to float
  %690 = lshr i32 %677, 8
  %691 = and i32 %690, 255
  %692 = uitofp i32 %691 to float
  %693 = fmul fast float %687, %689
  %694 = fadd fast float %693, %692
  %695 = fmul fast float %694, 0x3F70101000000000
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 512
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %708, label %700

; <label>:700                                     ; preds = %675
  %701 = add i32 %48, 440
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %104, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  br label %708

; <label>:708                                     ; preds = %700, %675
  %709 = phi float [ %707, %700 ], [ 1.000000e+00, %675 ]
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 33554432
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %820, label %714

; <label>:714                                     ; preds = %708
  %715 = add i32 %48, 224
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 65535
  %719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %718)  ; LegacyF16ToF32(value)
  %720 = lshr i32 %717, 16
  %721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %720)  ; LegacyF16ToF32(value)
  %722 = add i32 %48, 228
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 65535
  %726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %725)  ; LegacyF16ToF32(value)
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = lshr i32 %728, 24
  %730 = uitofp i32 %729 to float
  %731 = fmul fast float %730, 0x3F70101020000000
  %732 = and i32 %728, 255
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F70101020000000
  %735 = lshr i32 %728, 8
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %737, 0x3F70101020000000
  %739 = lshr i32 %728, 16
  %740 = and i32 %739, 255
  %741 = uitofp i32 %740 to float
  %742 = fmul fast float %741, 0x3F70101020000000
  %743 = add i32 %48, 220
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %745 = extractvalue %dx.types.ResRet.i32 %744, 0
  %746 = lshr i32 %745, 24
  %747 = uitofp i32 %746 to float
  %748 = fmul fast float %747, 0x3F70101020000000
  %749 = and i32 %745, 255
  %750 = uitofp i32 %749 to float
  %751 = fmul fast float %750, 0x3F70101020000000
  %752 = lshr i32 %745, 8
  %753 = and i32 %752, 255
  %754 = uitofp i32 %753 to float
  %755 = fmul fast float %754, 0x3F70101020000000
  %756 = lshr i32 %745, 16
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = fmul fast float %758, 0x3F70101020000000
  %760 = bitcast float %684 to i32
  %761 = ashr i32 %760, 1
  %762 = sub nsw i32 1597463174, %761
  %763 = bitcast i32 %762 to float
  %764 = fmul fast float %684, 5.000000e-01
  %765 = fmul fast float %763, %763
  %766 = fmul fast float %765, %764
  %767 = fsub fast float 1.500000e+00, %766
  %768 = fmul fast float %763, %684
  %769 = fmul fast float %768, %767
  %770 = bitcast float %685 to i32
  %771 = ashr i32 %770, 1
  %772 = sub nsw i32 1597463174, %771
  %773 = bitcast i32 %772 to float
  %774 = fmul fast float %685, 5.000000e-01
  %775 = fmul fast float %773, %773
  %776 = fmul fast float %775, %774
  %777 = fsub fast float 1.500000e+00, %776
  %778 = fmul fast float %773, %685
  %779 = fmul fast float %778, %777
  %780 = bitcast float %686 to i32
  %781 = ashr i32 %780, 1
  %782 = sub nsw i32 1597463174, %781
  %783 = bitcast i32 %782 to float
  %784 = fmul fast float %686, 5.000000e-01
  %785 = fmul fast float %783, %783
  %786 = fmul fast float %785, %784
  %787 = fsub fast float 1.500000e+00, %786
  %788 = fmul fast float %783, %686
  %789 = fmul fast float %788, %787
  %790 = fsub fast float %769, %751
  %791 = fsub fast float %779, %755
  %792 = fsub fast float %789, %759
  %793 = fmul fast float %790, %719
  %794 = fmul fast float %791, %721
  %795 = fmul fast float %792, %726
  %796 = fadd fast float %793, %734
  %797 = fadd fast float %794, %738
  %798 = fadd fast float %795, %742
  %799 = call float @dx.op.unary.f32(i32 7, float %796)  ; Saturate(value)
  %800 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  %801 = call float @dx.op.unary.f32(i32 7, float %798)  ; Saturate(value)
  %802 = fmul fast float %799, %799
  %803 = fmul fast float %800, %800
  %804 = fmul fast float %801, %801
  %805 = fsub fast float %802, %684
  %806 = fsub fast float %803, %685
  %807 = fsub fast float %804, %686
  %808 = fmul fast float %805, %709
  %809 = fmul fast float %806, %709
  %810 = fmul fast float %807, %709
  %811 = fadd fast float %808, %684
  %812 = fadd fast float %809, %685
  %813 = fadd fast float %810, %686
  %814 = fadd fast float %731, %695
  %815 = fsub fast float %814, %748
  %816 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %817 = fsub fast float %816, %695
  %818 = fmul fast float %817, %709
  %819 = fadd fast float %818, %695
  br label %873

; <label>:820                                     ; preds = %708
  %821 = and i32 %711, 134217728
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %857, label %823

; <label>:823                                     ; preds = %820
  %824 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %825 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %826 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %827 = fadd fast float %824, -5.000000e-01
  %828 = fadd fast float %825, -5.000000e-01
  %829 = fadd fast float %826, -5.000000e-01
  %830 = fmul fast float %827, %709
  %831 = fmul fast float %828, %709
  %832 = fmul fast float %829, %709
  %833 = fadd fast float %830, 5.000000e-01
  %834 = fadd fast float %831, 5.000000e-01
  %835 = fadd fast float %832, 5.000000e-01
  %836 = call float @dx.op.unary.f32(i32 24, float %684)  ; Sqrt(value)
  %837 = call float @dx.op.unary.f32(i32 24, float %685)  ; Sqrt(value)
  %838 = call float @dx.op.unary.f32(i32 24, float %686)  ; Sqrt(value)
  %839 = fmul fast float %833, 2.000000e+00
  %840 = fsub fast float 1.000000e+00, %839
  %841 = fmul fast float %840, %836
  %842 = fadd fast float %841, %839
  %843 = fmul fast float %842, %836
  %844 = fmul fast float %834, 2.000000e+00
  %845 = fsub fast float 1.000000e+00, %844
  %846 = fmul fast float %845, %837
  %847 = fadd fast float %846, %844
  %848 = fmul fast float %847, %837
  %849 = fmul fast float %835, 2.000000e+00
  %850 = fsub fast float 1.000000e+00, %849
  %851 = fmul fast float %850, %838
  %852 = fadd fast float %851, %849
  %853 = fmul fast float %852, %838
  %854 = fmul fast float %843, %843
  %855 = fmul fast float %848, %848
  %856 = fmul fast float %853, %853
  br label %873

; <label>:857                                     ; preds = %820
  %858 = fmul fast float %276, %276
  %859 = fmul fast float %280, %280
  %860 = fmul fast float %284, %284
  %861 = fadd fast float %858, -1.000000e+00
  %862 = fadd fast float %859, -1.000000e+00
  %863 = fadd fast float %860, -1.000000e+00
  %864 = fmul fast float %709, %861
  %865 = fmul fast float %709, %862
  %866 = fmul fast float %709, %863
  %867 = fadd fast float %864, 1.000000e+00
  %868 = fadd fast float %865, 1.000000e+00
  %869 = fadd fast float %866, 1.000000e+00
  %870 = fmul fast float %867, %684
  %871 = fmul fast float %868, %685
  %872 = fmul fast float %869, %686
  br label %873

; <label>:873                                     ; preds = %857, %823, %714, %669
  %874 = phi float [ %819, %714 ], [ %695, %823 ], [ %695, %857 ], [ 0x3FA23C0BE0000000, %669 ]
  %875 = phi float [ %811, %714 ], [ %854, %823 ], [ %870, %857 ], [ 1.000000e+00, %669 ]
  %876 = phi float [ %812, %714 ], [ %855, %823 ], [ %871, %857 ], [ 1.000000e+00, %669 ]
  %877 = phi float [ %813, %714 ], [ %856, %823 ], [ %872, %857 ], [ 1.000000e+00, %669 ]
  %878 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %879 = extractvalue %dx.types.CBufRet.i32 %878, 1
  %880 = and i32 %879, 1
  %881 = icmp ne i32 %880, 0
  %882 = add i32 %48, 356
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 32
  %886 = icmp ne i32 %885, 0
  %887 = and i1 %881, %886
  %888 = select i1 %887, float 1.000000e+00, float %875
  %889 = select i1 %887, float 0x3FD3333340000000, float %876
  %890 = select i1 %887, float 0x3FD3333340000000, float %877
  %891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %892 = extractvalue %dx.types.ResRet.i32 %891, 0
  %893 = and i32 %892, 32
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %967, label %895

; <label>:895                                     ; preds = %873
  %896 = add i32 %48, 92
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = add i32 %48, 376
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = add i32 %901, 0
  %903 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %902, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %904 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %903, %dx.types.Handle %103, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %905 = extractvalue %dx.types.ResRet.f32 %904, 0
  %906 = extractvalue %dx.types.ResRet.f32 %904, 1
  %907 = extractvalue %dx.types.ResRet.f32 %904, 2
  %908 = extractvalue %dx.types.ResRet.f32 %904, 3
  %909 = and i32 %898, 255
  %910 = uitofp i32 %909 to float
  %911 = lshr i32 %898, 8
  %912 = and i32 %911, 255
  %913 = uitofp i32 %912 to float
  %914 = lshr i32 %898, 16
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = fmul fast float %916, 0x3F70101000000000
  %918 = fmul fast float %905, %910
  %919 = fadd fast float %918, %913
  %920 = fmul fast float %919, 0x3F70101000000000
  %921 = fadd fast float %906, -5.000000e-01
  %922 = fadd fast float %908, -5.000000e-01
  %923 = fmul fast float %921, %917
  %924 = fmul fast float %922, %917
  %925 = fadd fast float %923, 5.000000e-01
  %926 = fadd fast float %924, 5.000000e-01
  %927 = fmul fast float %925, 2.000000e+00
  %928 = fadd fast float %927, -1.000000e+00
  %929 = fmul fast float %926, 2.000000e+00
  %930 = fadd fast float %929, -1.000000e+00
  %931 = fadd fast float %928, %930
  %932 = fmul fast float %931, 5.000000e-01
  %933 = fsub fast float %928, %930
  %934 = fmul fast float %933, 5.000000e-01
  %935 = call float @dx.op.unary.f32(i32 6, float %932)  ; FAbs(value)
  %936 = fsub fast float 1.000000e+00, %935
  %937 = call float @dx.op.unary.f32(i32 6, float %934)  ; FAbs(value)
  %938 = fsub fast float %936, %937
  %939 = call float @dx.op.dot3.f32(i32 55, float %932, float %934, float %938, float %932, float %934, float %938)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = call float @dx.op.unary.f32(i32 25, float %939)  ; Rsqrt(value)
  %941 = fmul fast float %932, %940
  %942 = fmul fast float %934, %940
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 67108864
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %963, label %947

; <label>:947                                     ; preds = %895
  %948 = add i32 %48, 280
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = and i32 %950, 65535
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = and i32 %954, 65535
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = lshr i32 %950, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = fsub fast float %920, %958
  %960 = fmul fast float %959, %952
  %961 = fadd fast float %960, %956
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  br label %963

; <label>:963                                     ; preds = %947, %895
  %964 = phi float [ %962, %947 ], [ %920, %895 ]
  %965 = call float @dx.op.dot2.f32(i32 54, float %941, float %942, float %501, float %502)  ; Dot2(ax,ay,bx,by)
  %966 = call float @dx.op.dot2.f32(i32 54, float %941, float %942, float %503, float %504)  ; Dot2(ax,ay,bx,by)
  br label %967

; <label>:967                                     ; preds = %963, %873
  %968 = phi float [ %964, %963 ], [ 0x3FD6666660000000, %873 ]
  %969 = phi float [ %965, %963 ], [ 0.000000e+00, %873 ]
  %970 = phi float [ %966, %963 ], [ 0.000000e+00, %873 ]
  %971 = phi float [ %907, %963 ], [ 1.000000e+00, %873 ]
  %972 = add i32 %48, 160
  %973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.i32 %973, 0
  %975 = lshr i32 %974, 22
  %976 = shl nuw nsw i32 %975, 5
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.i32 %978, 0
  %980 = and i32 %979, 64
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1015, label %982

; <label>:982                                     ; preds = %967
  %983 = add i32 %48, 392
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %983, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %985, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 131072
  %991 = icmp eq i32 %990, 0
  %992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %987, %dx.types.Handle %103, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = fmul fast float %993, %264
  %997 = fmul fast float %994, %267
  %998 = fmul fast float %995, %270
  br i1 %991, label %1005, label %999

; <label>:999                                     ; preds = %982
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = fmul fast float %1001, %996
  %1003 = fmul fast float %1001, %997
  %1004 = fmul fast float %1001, %998
  br label %1005

; <label>:1005                                    ; preds = %999, %982
  %1006 = phi float [ %1002, %999 ], [ %996, %982 ]
  %1007 = phi float [ %1003, %999 ], [ %997, %982 ]
  %1008 = phi float [ %1004, %999 ], [ %998, %982 ]
  %1009 = fmul fast float %1006, %977
  %1010 = select i1 %247, float %1009, float %1006
  %1011 = call float @dx.op.dot3.f32(i32 55, float %1010, float %1007, float %1008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1012 = select i1 %247, float 0.000000e+00, float %1006
  %1013 = select i1 %247, float %1011, float %1007
  %1014 = select i1 %247, float 0.000000e+00, float %1008
  br label %1015

; <label>:1015                                    ; preds = %1005, %967
  %1016 = phi float [ %1012, %1005 ], [ 0.000000e+00, %967 ]
  %1017 = phi float [ %1013, %1005 ], [ 0.000000e+00, %967 ]
  %1018 = phi float [ %1014, %1005 ], [ 0.000000e+00, %967 ]
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %1020, 1024
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1053, label %1023

; <label>:1023                                    ; preds = %1015
  %1024 = add i32 %48, 152
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %1026, 255
  %1028 = uitofp i32 %1027 to float
  %1029 = fmul fast float %1028, 0x3F70101020000000
  %1030 = lshr i32 %1026, 8
  %1031 = and i32 %1030, 255
  %1032 = uitofp i32 %1031 to float
  %1033 = fmul fast float %1032, 0x3F70101020000000
  %1034 = lshr i32 %1026, 16
  %1035 = and i32 %1034, 255
  %1036 = uitofp i32 %1035 to float
  %1037 = fmul fast float %1036, 0x3F70101020000000
  %1038 = fmul fast float %1029, %1029
  %1039 = fmul fast float %1033, %1033
  %1040 = fmul fast float %1037, %1037
  %1041 = add i32 %48, 456
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = add i32 %1043, 0
  %1045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1045, %dx.types.Handle %104, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = fmul fast float %1038, %1047
  %1051 = fmul fast float %1039, %1048
  %1052 = fmul fast float %1040, %1049
  br label %1053

; <label>:1053                                    ; preds = %1023, %1015
  %1054 = phi float [ %1050, %1023 ], [ 0.000000e+00, %1015 ]
  %1055 = phi float [ %1051, %1023 ], [ 0.000000e+00, %1015 ]
  %1056 = phi float [ %1052, %1023 ], [ 0.000000e+00, %1015 ]
  %1057 = fcmp fast ogt float %1054, 0.000000e+00
  %1058 = fcmp fast ogt float %1055, 0.000000e+00
  %1059 = fcmp fast ogt float %1056, 0.000000e+00
  %1060 = call float @dx.op.unary.f32(i32 23, float %1054)  ; Log(value)
  %1061 = call float @dx.op.unary.f32(i32 23, float %1055)  ; Log(value)
  %1062 = call float @dx.op.unary.f32(i32 23, float %1056)  ; Log(value)
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = lshr i32 %1064, 7
  %1066 = and i32 %1065, 32752
  %1067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1066)  ; LegacyF16ToF32(value)
  %1068 = fmul fast float %1060, 0xBFE62E4300000000
  %1069 = fmul fast float %1068, %1067
  %1070 = fmul fast float %1061, 0xBFE62E4300000000
  %1071 = fmul fast float %1070, %1067
  %1072 = fmul fast float %1062, 0xBFE62E4300000000
  %1073 = fmul fast float %1072, %1067
  %1074 = select i1 %1057, float %1069, float 1.270000e+02
  %1075 = select i1 %1058, float %1071, float 1.270000e+02
  %1076 = select i1 %1059, float %1073, float 1.270000e+02
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 10240
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1125, label %1081

; <label>:1081                                    ; preds = %1053
  %1082 = add i32 %48, 472
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %104, float %597, float %598, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 3
  %1090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.i32 %1090, 0
  %1092 = and i32 %1091, 1048576
  %1093 = icmp ne i32 %1092, 0
  %1094 = and i32 %1091, 8192
  %1095 = icmp eq i32 %1094, 0
  br i1 %1095, label %1111, label %1096

; <label>:1096                                    ; preds = %1081
  %1097 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1098 = select i1 %1093, float %1097, float %1088
  %1099 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1100 = select i1 %1093, float %1099, float %1088
  %1101 = add i32 %48, 96
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = lshr i32 %1103, 16
  %1105 = and i32 %1104, 255
  %1106 = uitofp i32 %1105 to float
  %1107 = fmul fast float %1106, 0x3F80101020000000
  %1108 = fmul fast float %1107, %1100
  %1109 = fmul fast float %1107, %1088
  %1110 = fmul fast float %1107, %1098
  br label %1111

; <label>:1111                                    ; preds = %1096, %1081
  %1112 = phi float [ %1108, %1096 ], [ 0.000000e+00, %1081 ]
  %1113 = phi float [ %1109, %1096 ], [ 0.000000e+00, %1081 ]
  %1114 = phi float [ %1110, %1096 ], [ 0.000000e+00, %1081 ]
  %1115 = and i32 %1091, 2048
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1125, label %1117

; <label>:1117                                    ; preds = %1111
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = shl i32 %1119, 4
  %1121 = and i32 %1120, 32752
  %1122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1121)  ; LegacyF16ToF32(value)
  %1123 = fmul fast float %1122, %1089
  %1124 = call float @dx.op.binary.f32(i32 35, float %1123, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1125

; <label>:1125                                    ; preds = %1117, %1111, %1053
  %1126 = phi float [ %1112, %1117 ], [ %1112, %1111 ], [ 0.000000e+00, %1053 ]
  %1127 = phi float [ %1113, %1117 ], [ %1113, %1111 ], [ 0.000000e+00, %1053 ]
  %1128 = phi float [ %1114, %1117 ], [ %1114, %1111 ], [ 0.000000e+00, %1053 ]
  %1129 = phi float [ %1124, %1117 ], [ 0x3F70101020000000, %1111 ], [ 0x3F70101020000000, %1053 ]
  %1130 = add i32 %48, 96
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1130, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = and i32 %1132, 255
  %1134 = uitofp i32 %1133 to float
  %1135 = lshr i32 %1132, 8
  %1136 = and i32 %1135, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = call float @dx.op.dot3.f32(i32 55, float %888, float %889, float %890, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1139 = fmul fast float %1137, %1138
  %1140 = fadd fast float %1139, %1134
  %1141 = fmul fast float %1140, 0x3F70101020000000
  %1142 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  br label %1143

; <label>:1143                                    ; preds = %1125, %483
  %1144 = phi float [ 0.000000e+00, %483 ], [ %969, %1125 ]
  %1145 = phi float [ 0.000000e+00, %483 ], [ %970, %1125 ]
  %1146 = phi float [ 0.000000e+00, %483 ], [ %888, %1125 ]
  %1147 = phi float [ 0.000000e+00, %483 ], [ %889, %1125 ]
  %1148 = phi float [ 0.000000e+00, %483 ], [ %890, %1125 ]
  %1149 = phi float [ 0.000000e+00, %483 ], [ %1016, %1125 ]
  %1150 = phi float [ 0.000000e+00, %483 ], [ %1017, %1125 ]
  %1151 = phi float [ 0.000000e+00, %483 ], [ %1018, %1125 ]
  %1152 = phi float [ 0.000000e+00, %483 ], [ %1074, %1125 ]
  %1153 = phi float [ 0.000000e+00, %483 ], [ %1075, %1125 ]
  %1154 = phi float [ 0.000000e+00, %483 ], [ %1076, %1125 ]
  %1155 = phi float [ 0.000000e+00, %483 ], [ %1126, %1125 ]
  %1156 = phi float [ 0.000000e+00, %483 ], [ %1127, %1125 ]
  %1157 = phi float [ 0.000000e+00, %483 ], [ %1128, %1125 ]
  %1158 = phi float [ 0.000000e+00, %483 ], [ %874, %1125 ]
  %1159 = phi float [ 0.000000e+00, %483 ], [ %670, %1125 ]
  %1160 = phi float [ 0.000000e+00, %483 ], [ %968, %1125 ]
  %1161 = phi float [ 0.000000e+00, %483 ], [ %971, %1125 ]
  %1162 = phi float [ 0.000000e+00, %483 ], [ %1129, %1125 ]
  %1163 = phi float [ 0.000000e+00, %483 ], [ %1142, %1125 ]
  br i1 %431, label %2086, label %1164

; <label>:1164                                    ; preds = %1143
  %1165 = icmp ult i32 %489, 2
  %1166 = add i32 %48, 40
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %48, 44
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = or i32 %1171, %1168
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %2086, label %1174

; <label>:1174                                    ; preds = %1164
  %1175 = and i32 %1168, 262144
  %1176 = icmp ne i32 %1175, 0
  %1177 = select i1 %1176, float %53, float 1.000000e+00
  %1178 = select i1 %1176, float %54, float 0.000000e+00
  %1179 = select i1 %1176, float %55, float 0.000000e+00
  %1180 = select i1 %1176, float %56, float 1.000000e+00
  %1181 = select i1 %1176, float %57, float %85
  %1182 = select i1 %1176, float %58, float %86
  %1183 = add i32 %48, 300
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = lshr i32 %1185, 16
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = fmul fast float %1187, 0x3F50624DE0000000
  %1189 = add i32 %48, 104
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = lshr i32 %1191, 16
  %1193 = and i32 %1192, 255
  %1194 = lshr i32 %1191, 24
  %1195 = add i32 %48, 308
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 65535
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = lshr i32 %1197, 16
  %1201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1200)  ; LegacyF16ToF32(value)
  %1202 = add i32 %48, 48
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = lshr i32 %1204, 22
  %1206 = shl nuw nsw i32 %1205, 5
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = shl i32 %1204, 4
  %1209 = and i32 %1208, 32752
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = lshr i32 %1204, 7
  %1212 = and i32 %1211, 32752
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1215 = extractvalue %dx.types.CBufRet.f32 %1214, 3
  %1216 = fmul fast float %1215, 1.000000e+03
  %1217 = fmul fast float %341, %1216
  %1218 = call float @dx.op.unary.f32(i32 22, float %1217)  ; Frc(value)
  %1219 = fadd fast float %1218, %331
  %1220 = fmul fast float %342, %1216
  %1221 = call float @dx.op.unary.f32(i32 22, float %1220)  ; Frc(value)
  %1222 = fadd fast float %1221, %333
  %1223 = fmul fast float %1188, %1216
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = fmul fast float %1224, 0x401921FB60000000
  %1226 = fadd fast float %1225, %1207
  %1227 = call float @dx.op.unary.f32(i32 13, float %1226)  ; Sin(value)
  %1228 = call float @dx.op.unary.f32(i32 12, float %1226)  ; Cos(value)
  %1229 = fsub fast float -0.000000e+00, %1227
  %1230 = fadd fast float %1181, -5.000000e-01
  %1231 = fadd fast float %1182, -5.000000e-01
  %1232 = fmul fast float %1199, %1230
  %1233 = fmul fast float %1201, %1231
  %1234 = fadd fast float %1232, 5.000000e-01
  %1235 = fadd fast float %1233, 5.000000e-01
  %1236 = fmul fast float %1210, %1234
  %1237 = fmul fast float %1213, %1235
  %1238 = fmul fast float %1228, %1236
  %1239 = call float @dx.op.tertiary.f32(i32 46, float %1229, float %1237, float %1238)  ; FMad(a,b,c)
  %1240 = fmul fast float %1227, %1236
  %1241 = call float @dx.op.tertiary.f32(i32 46, float %1228, float %1237, float %1240)  ; FMad(a,b,c)
  %1242 = fadd fast float %1219, %1239
  %1243 = fadd fast float %1222, %1241
  %1244 = icmp ugt i32 %1193, 1
  %1245 = icmp ugt i32 %1191, 33554431
  %1246 = or i1 %1245, %1244
  br i1 %1246, label %1247, label %1272

; <label>:1247                                    ; preds = %1174
  %1248 = add i32 %48, 244
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = lshr i32 %1250, 16
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = fmul fast float %1215, %1252
  %1254 = call float @dx.op.unary.f32(i32 22, float %1253)  ; Frc(value)
  %1255 = mul nuw nsw i32 %1193, %1194
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1254, %1256
  %1258 = call float @dx.op.unary.f32(i32 27, float %1257)  ; Round_ni(value)
  %1259 = fptoui float %1258 to i32
  %1260 = urem i32 %1259, %1193
  %1261 = udiv i32 %1259, %1194
  %1262 = call float @dx.op.unary.f32(i32 22, float %1242)  ; Frc(value)
  %1263 = call float @dx.op.unary.f32(i32 22, float %1243)  ; Frc(value)
  %1264 = uitofp i32 %1260 to float
  %1265 = uitofp i32 %1261 to float
  %1266 = fadd fast float %1262, %1264
  %1267 = fadd fast float %1263, %1265
  %1268 = uitofp i32 %1193 to float
  %1269 = uitofp i32 %1194 to float
  %1270 = fdiv fast float %1266, %1268
  %1271 = fdiv fast float %1267, %1269
  br label %1272

; <label>:1272                                    ; preds = %1247, %1174
  %1273 = phi float [ %1270, %1247 ], [ %1242, %1174 ]
  %1274 = phi float [ %1271, %1247 ], [ %1243, %1174 ]
  %1275 = and i32 %1168, 256
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1323, label %1277

; <label>:1277                                    ; preds = %1272
  %1278 = add i32 %48, 428
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = add i32 %1280, 0
  %1282 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1281, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1283 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1282, %dx.types.Handle %104, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1284 = extractvalue %dx.types.ResRet.f32 %1283, 0
  %1285 = add i32 %48, 116
  %1286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1285, i32 undef)  ; BufferLoad(srv,index,wot)
  %1287 = extractvalue %dx.types.ResRet.i32 %1286, 0
  %1288 = shl i32 %1287, 4
  %1289 = and i32 %1288, 32752
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = lshr i32 %1287, 7
  %1292 = and i32 %1291, 32752
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = fsub fast float 1.000000e+00, %486
  %1295 = call float @dx.op.binary.f32(i32 35, float %1294, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1296 = bitcast float %486 to i32
  %1297 = sitofp i32 %1296 to float
  %1298 = fadd fast float %1297, 0xC1CFBF8940000000
  %1299 = fmul fast float %1293, %1298
  %1300 = fadd fast float %1299, 0x41CFBF8940000000
  %1301 = fptosi float %1300 to i32
  %1302 = bitcast i32 %1301 to float
  %1303 = bitcast float %1295 to i32
  %1304 = sitofp i32 %1303 to float
  %1305 = fadd fast float %1304, 0xC1CFBF8940000000
  %1306 = fmul fast float %1305, %1293
  %1307 = fadd fast float %1306, 0x41CFBF8940000000
  %1308 = fptosi float %1307 to i32
  %1309 = bitcast i32 %1308 to float
  %1310 = fmul fast float %1302, %1290
  %1311 = fmul fast float %1309, %1290
  %1312 = fsub fast float %1295, %1310
  %1313 = fadd fast float %1311, %1295
  %1314 = call float @dx.op.unary.f32(i32 7, float %1312)  ; Saturate(value)
  %1315 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1316 = fsub fast float %1284, %1314
  %1317 = fsub fast float %1315, %1314
  %1318 = bitcast float %1317 to i32
  %1319 = sub nsw i32 2129859010, %1318
  %1320 = bitcast i32 %1319 to float
  %1321 = fmul fast float %1320, %1316
  %1322 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  br label %1323

; <label>:1323                                    ; preds = %1277, %1272
  %1324 = phi float [ %1322, %1277 ], [ %486, %1272 ]
  %1325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1326 = extractvalue %dx.types.ResRet.i32 %1325, 0
  %1327 = and i32 %1326, 128
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1345, label %1329

; <label>:1329                                    ; preds = %1323
  %1330 = add i32 %48, 412
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = add i32 %1332, 0
  %1334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1334, %dx.types.Handle %104, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1336 = extractvalue %dx.types.ResRet.f32 %1335, 0
  %1337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1338 = extractvalue %dx.types.ResRet.i32 %1337, 0
  %1339 = and i32 %1338, 524288
  %1340 = icmp ne i32 %1339, 0
  %1341 = fcmp fast ogt float %1336, 0x3FE0101020000000
  %1342 = select i1 %1341, float 1.000000e+00, float 0.000000e+00
  %1343 = select i1 %1340, float %1342, float %1336
  %1344 = fmul fast float %1343, %1324
  br label %1345

; <label>:1345                                    ; preds = %1329, %1323
  %1346 = phi float [ %1344, %1329 ], [ %1324, %1323 ]
  %1347 = fcmp fast ult float %1346, 0x3F70101020000000
  br i1 %1347, label %2086, label %1348

; <label>:1348                                    ; preds = %1345
  %1349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1350 = extractvalue %dx.types.ResRet.i32 %1349, 0
  %1351 = and i32 %1350, 16
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1551, label %1353

; <label>:1353                                    ; preds = %1348
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = add i32 %48, 364
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1356, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = add i32 %1358, 0
  %1360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1360, %dx.types.Handle %103, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1362 = extractvalue %dx.types.ResRet.f32 %1361, 0
  %1363 = extractvalue %dx.types.ResRet.f32 %1361, 1
  %1364 = extractvalue %dx.types.ResRet.f32 %1361, 2
  %1365 = extractvalue %dx.types.ResRet.f32 %1361, 3
  %1366 = and i32 %1355, 255
  %1367 = uitofp i32 %1366 to float
  %1368 = lshr i32 %1355, 8
  %1369 = and i32 %1368, 255
  %1370 = uitofp i32 %1369 to float
  %1371 = fmul fast float %1365, %1367
  %1372 = fadd fast float %1371, %1370
  %1373 = fmul fast float %1372, 0x3F70101000000000
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 512
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1386, label %1378

; <label>:1378                                    ; preds = %1353
  %1379 = add i32 %48, 444
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = add i32 %1381, 0
  %1383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1383, %dx.types.Handle %104, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  br label %1386

; <label>:1386                                    ; preds = %1378, %1353
  %1387 = phi float [ %1385, %1378 ], [ 1.000000e+00, %1353 ]
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 33554432
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1498, label %1392

; <label>:1392                                    ; preds = %1386
  %1393 = add i32 %48, 240
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1393, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 65535
  %1397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1396)  ; LegacyF16ToF32(value)
  %1398 = lshr i32 %1395, 16
  %1399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1398)  ; LegacyF16ToF32(value)
  %1400 = add i32 %48, 244
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = and i32 %1402, 65535
  %1404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1403)  ; LegacyF16ToF32(value)
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1421 = add i32 %48, 236
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1421, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = lshr i32 %1423, 24
  %1425 = uitofp i32 %1424 to float
  %1426 = fmul fast float %1425, 0x3F70101020000000
  %1427 = and i32 %1423, 255
  %1428 = uitofp i32 %1427 to float
  %1429 = fmul fast float %1428, 0x3F70101020000000
  %1430 = lshr i32 %1423, 8
  %1431 = and i32 %1430, 255
  %1432 = uitofp i32 %1431 to float
  %1433 = fmul fast float %1432, 0x3F70101020000000
  %1434 = lshr i32 %1423, 16
  %1435 = and i32 %1434, 255
  %1436 = uitofp i32 %1435 to float
  %1437 = fmul fast float %1436, 0x3F70101020000000
  %1438 = bitcast float %1362 to i32
  %1439 = ashr i32 %1438, 1
  %1440 = sub nsw i32 1597463174, %1439
  %1441 = bitcast i32 %1440 to float
  %1442 = fmul fast float %1362, 5.000000e-01
  %1443 = fmul fast float %1441, %1441
  %1444 = fmul fast float %1443, %1442
  %1445 = fsub fast float 1.500000e+00, %1444
  %1446 = fmul fast float %1441, %1362
  %1447 = fmul fast float %1446, %1445
  %1448 = bitcast float %1363 to i32
  %1449 = ashr i32 %1448, 1
  %1450 = sub nsw i32 1597463174, %1449
  %1451 = bitcast i32 %1450 to float
  %1452 = fmul fast float %1363, 5.000000e-01
  %1453 = fmul fast float %1451, %1451
  %1454 = fmul fast float %1453, %1452
  %1455 = fsub fast float 1.500000e+00, %1454
  %1456 = fmul fast float %1451, %1363
  %1457 = fmul fast float %1456, %1455
  %1458 = bitcast float %1364 to i32
  %1459 = ashr i32 %1458, 1
  %1460 = sub nsw i32 1597463174, %1459
  %1461 = bitcast i32 %1460 to float
  %1462 = fmul fast float %1364, 5.000000e-01
  %1463 = fmul fast float %1461, %1461
  %1464 = fmul fast float %1463, %1462
  %1465 = fsub fast float 1.500000e+00, %1464
  %1466 = fmul fast float %1461, %1364
  %1467 = fmul fast float %1466, %1465
  %1468 = fsub fast float %1447, %1429
  %1469 = fsub fast float %1457, %1433
  %1470 = fsub fast float %1467, %1437
  %1471 = fmul fast float %1468, %1397
  %1472 = fmul fast float %1469, %1399
  %1473 = fmul fast float %1470, %1404
  %1474 = fadd fast float %1471, %1412
  %1475 = fadd fast float %1472, %1416
  %1476 = fadd fast float %1473, %1420
  %1477 = call float @dx.op.unary.f32(i32 7, float %1474)  ; Saturate(value)
  %1478 = call float @dx.op.unary.f32(i32 7, float %1475)  ; Saturate(value)
  %1479 = call float @dx.op.unary.f32(i32 7, float %1476)  ; Saturate(value)
  %1480 = fmul fast float %1477, %1477
  %1481 = fmul fast float %1478, %1478
  %1482 = fmul fast float %1479, %1479
  %1483 = fsub fast float %1480, %1362
  %1484 = fsub fast float %1481, %1363
  %1485 = fsub fast float %1482, %1364
  %1486 = fmul fast float %1483, %1387
  %1487 = fmul fast float %1484, %1387
  %1488 = fmul fast float %1485, %1387
  %1489 = fadd fast float %1486, %1362
  %1490 = fadd fast float %1487, %1363
  %1491 = fadd fast float %1488, %1364
  %1492 = fadd fast float %1409, %1373
  %1493 = fsub fast float %1492, %1426
  %1494 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1495 = fsub fast float %1494, %1373
  %1496 = fmul fast float %1495, %1387
  %1497 = fadd fast float %1496, %1373
  br label %1551

; <label>:1498                                    ; preds = %1386
  %1499 = and i32 %1389, 134217728
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1535, label %1501

; <label>:1501                                    ; preds = %1498
  %1502 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %1503 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %1504 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %1505 = fadd fast float %1502, -5.000000e-01
  %1506 = fadd fast float %1503, -5.000000e-01
  %1507 = fadd fast float %1504, -5.000000e-01
  %1508 = fmul fast float %1505, %1387
  %1509 = fmul fast float %1506, %1387
  %1510 = fmul fast float %1507, %1387
  %1511 = fadd fast float %1508, 5.000000e-01
  %1512 = fadd fast float %1509, 5.000000e-01
  %1513 = fadd fast float %1510, 5.000000e-01
  %1514 = call float @dx.op.unary.f32(i32 24, float %1362)  ; Sqrt(value)
  %1515 = call float @dx.op.unary.f32(i32 24, float %1363)  ; Sqrt(value)
  %1516 = call float @dx.op.unary.f32(i32 24, float %1364)  ; Sqrt(value)
  %1517 = fmul fast float %1511, 2.000000e+00
  %1518 = fsub fast float 1.000000e+00, %1517
  %1519 = fmul fast float %1518, %1514
  %1520 = fadd fast float %1519, %1517
  %1521 = fmul fast float %1520, %1514
  %1522 = fmul fast float %1512, 2.000000e+00
  %1523 = fsub fast float 1.000000e+00, %1522
  %1524 = fmul fast float %1523, %1515
  %1525 = fadd fast float %1524, %1522
  %1526 = fmul fast float %1525, %1515
  %1527 = fmul fast float %1513, 2.000000e+00
  %1528 = fsub fast float 1.000000e+00, %1527
  %1529 = fmul fast float %1528, %1516
  %1530 = fadd fast float %1529, %1527
  %1531 = fmul fast float %1530, %1516
  %1532 = fmul fast float %1521, %1521
  %1533 = fmul fast float %1526, %1526
  %1534 = fmul fast float %1531, %1531
  br label %1551

; <label>:1535                                    ; preds = %1498
  %1536 = fmul fast float %318, %318
  %1537 = fmul fast float %322, %322
  %1538 = fmul fast float %326, %326
  %1539 = fadd fast float %1536, -1.000000e+00
  %1540 = fadd fast float %1537, -1.000000e+00
  %1541 = fadd fast float %1538, -1.000000e+00
  %1542 = fmul fast float %1387, %1539
  %1543 = fmul fast float %1387, %1540
  %1544 = fmul fast float %1387, %1541
  %1545 = fadd fast float %1542, 1.000000e+00
  %1546 = fadd fast float %1543, 1.000000e+00
  %1547 = fadd fast float %1544, 1.000000e+00
  %1548 = fmul fast float %1545, %1362
  %1549 = fmul fast float %1546, %1363
  %1550 = fmul fast float %1547, %1364
  br label %1551

; <label>:1551                                    ; preds = %1535, %1501, %1392, %1348
  %1552 = phi float [ %1497, %1392 ], [ %1373, %1501 ], [ %1373, %1535 ], [ 0x3FA23C0BE0000000, %1348 ]
  %1553 = phi float [ %1489, %1392 ], [ %1532, %1501 ], [ %1548, %1535 ], [ 1.000000e+00, %1348 ]
  %1554 = phi float [ %1490, %1392 ], [ %1533, %1501 ], [ %1549, %1535 ], [ 1.000000e+00, %1348 ]
  %1555 = phi float [ %1491, %1392 ], [ %1534, %1501 ], [ %1550, %1535 ], [ 1.000000e+00, %1348 ]
  %1556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.i32 %1556, 1
  %1558 = and i32 %1557, 1
  %1559 = icmp ne i32 %1558, 0
  %1560 = add i32 %48, 356
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = and i32 %1562, 32
  %1564 = icmp ne i32 %1563, 0
  %1565 = and i1 %1559, %1564
  %1566 = select i1 %1565, float 1.000000e+00, float %1553
  %1567 = select i1 %1565, float 0x3FD3333340000000, float %1554
  %1568 = select i1 %1565, float 0x3FD3333340000000, float %1555
  %1569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1570 = extractvalue %dx.types.ResRet.i32 %1569, 0
  %1571 = and i32 %1570, 32
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %1645, label %1573

; <label>:1573                                    ; preds = %1551
  %1574 = add i32 %48, 108
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = add i32 %48, 380
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %1579, 0
  %1581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1582 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1581, %dx.types.Handle %103, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1583 = extractvalue %dx.types.ResRet.f32 %1582, 0
  %1584 = extractvalue %dx.types.ResRet.f32 %1582, 1
  %1585 = extractvalue %dx.types.ResRet.f32 %1582, 2
  %1586 = extractvalue %dx.types.ResRet.f32 %1582, 3
  %1587 = and i32 %1576, 255
  %1588 = uitofp i32 %1587 to float
  %1589 = lshr i32 %1576, 8
  %1590 = and i32 %1589, 255
  %1591 = uitofp i32 %1590 to float
  %1592 = lshr i32 %1576, 16
  %1593 = and i32 %1592, 255
  %1594 = uitofp i32 %1593 to float
  %1595 = fmul fast float %1594, 0x3F70101000000000
  %1596 = fmul fast float %1583, %1588
  %1597 = fadd fast float %1596, %1591
  %1598 = fmul fast float %1597, 0x3F70101000000000
  %1599 = fadd fast float %1584, -5.000000e-01
  %1600 = fadd fast float %1586, -5.000000e-01
  %1601 = fmul fast float %1599, %1595
  %1602 = fmul fast float %1600, %1595
  %1603 = fadd fast float %1601, 5.000000e-01
  %1604 = fadd fast float %1602, 5.000000e-01
  %1605 = fmul fast float %1603, 2.000000e+00
  %1606 = fadd fast float %1605, -1.000000e+00
  %1607 = fmul fast float %1604, 2.000000e+00
  %1608 = fadd fast float %1607, -1.000000e+00
  %1609 = fadd fast float %1606, %1608
  %1610 = fmul fast float %1609, 5.000000e-01
  %1611 = fsub fast float %1606, %1608
  %1612 = fmul fast float %1611, 5.000000e-01
  %1613 = call float @dx.op.unary.f32(i32 6, float %1610)  ; FAbs(value)
  %1614 = fsub fast float 1.000000e+00, %1613
  %1615 = call float @dx.op.unary.f32(i32 6, float %1612)  ; FAbs(value)
  %1616 = fsub fast float %1614, %1615
  %1617 = call float @dx.op.dot3.f32(i32 55, float %1610, float %1612, float %1616, float %1610, float %1612, float %1616)  ; Dot3(ax,ay,az,bx,by,bz)
  %1618 = call float @dx.op.unary.f32(i32 25, float %1617)  ; Rsqrt(value)
  %1619 = fmul fast float %1610, %1618
  %1620 = fmul fast float %1612, %1618
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = and i32 %1622, 67108864
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1641, label %1625

; <label>:1625                                    ; preds = %1573
  %1626 = add i32 %48, 296
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = and i32 %1628, 65535
  %1630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1629)  ; LegacyF16ToF32(value)
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = and i32 %1632, 65535
  %1634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1633)  ; LegacyF16ToF32(value)
  %1635 = lshr i32 %1628, 16
  %1636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1635)  ; LegacyF16ToF32(value)
  %1637 = fsub fast float %1598, %1636
  %1638 = fmul fast float %1637, %1630
  %1639 = fadd fast float %1638, %1634
  %1640 = call float @dx.op.unary.f32(i32 7, float %1639)  ; Saturate(value)
  br label %1641

; <label>:1641                                    ; preds = %1625, %1573
  %1642 = phi float [ %1640, %1625 ], [ %1598, %1573 ]
  %1643 = call float @dx.op.dot2.f32(i32 54, float %1619, float %1620, float %1177, float %1178)  ; Dot2(ax,ay,bx,by)
  %1644 = call float @dx.op.dot2.f32(i32 54, float %1619, float %1620, float %1179, float %1180)  ; Dot2(ax,ay,bx,by)
  br label %1645

; <label>:1645                                    ; preds = %1641, %1551
  %1646 = phi float [ %1642, %1641 ], [ 0x3FD6666660000000, %1551 ]
  %1647 = phi float [ %1643, %1641 ], [ 0.000000e+00, %1551 ]
  %1648 = phi float [ %1644, %1641 ], [ 0.000000e+00, %1551 ]
  %1649 = phi float [ %1585, %1641 ], [ 1.000000e+00, %1551 ]
  %1650 = add i32 %48, 176
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = lshr i32 %1652, 22
  %1654 = shl nuw nsw i32 %1653, 5
  %1655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1654)  ; LegacyF16ToF32(value)
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 64
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1693, label %1660

; <label>:1660                                    ; preds = %1645
  %1661 = add i32 %48, 396
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = add i32 %1663, 0
  %1665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 131072
  %1669 = icmp eq i32 %1668, 0
  %1670 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1665, %dx.types.Handle %103, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1672 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1673 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1674 = fmul fast float %1671, %306
  %1675 = fmul fast float %1672, %309
  %1676 = fmul fast float %1673, %312
  br i1 %1669, label %1683, label %1677

; <label>:1677                                    ; preds = %1660
  %1678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1679 = extractvalue %dx.types.CBufRet.f32 %1678, 0
  %1680 = fmul fast float %1679, %1674
  %1681 = fmul fast float %1679, %1675
  %1682 = fmul fast float %1679, %1676
  br label %1683

; <label>:1683                                    ; preds = %1677, %1660
  %1684 = phi float [ %1680, %1677 ], [ %1674, %1660 ]
  %1685 = phi float [ %1681, %1677 ], [ %1675, %1660 ]
  %1686 = phi float [ %1682, %1677 ], [ %1676, %1660 ]
  %1687 = fmul fast float %1684, %1655
  %1688 = select i1 %247, float %1687, float %1684
  %1689 = call float @dx.op.dot3.f32(i32 55, float %1688, float %1685, float %1686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1690 = select i1 %247, float 0.000000e+00, float %1684
  %1691 = select i1 %247, float %1689, float %1685
  %1692 = select i1 %247, float 0.000000e+00, float %1686
  br label %1693

; <label>:1693                                    ; preds = %1683, %1645
  %1694 = phi float [ %1690, %1683 ], [ 0.000000e+00, %1645 ]
  %1695 = phi float [ %1691, %1683 ], [ 0.000000e+00, %1645 ]
  %1696 = phi float [ %1692, %1683 ], [ 0.000000e+00, %1645 ]
  %1697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.i32 %1697, 0
  %1699 = and i32 %1698, 1024
  %1700 = icmp eq i32 %1699, 0
  br i1 %1700, label %1731, label %1701

; <label>:1701                                    ; preds = %1693
  %1702 = add i32 %48, 168
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 255
  %1706 = uitofp i32 %1705 to float
  %1707 = fmul fast float %1706, 0x3F70101020000000
  %1708 = lshr i32 %1704, 8
  %1709 = and i32 %1708, 255
  %1710 = uitofp i32 %1709 to float
  %1711 = fmul fast float %1710, 0x3F70101020000000
  %1712 = lshr i32 %1704, 16
  %1713 = and i32 %1712, 255
  %1714 = uitofp i32 %1713 to float
  %1715 = fmul fast float %1714, 0x3F70101020000000
  %1716 = fmul fast float %1707, %1707
  %1717 = fmul fast float %1711, %1711
  %1718 = fmul fast float %1715, %1715
  %1719 = add i32 %48, 460
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = add i32 %1721, 0
  %1723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1723, %dx.types.Handle %104, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1725 = extractvalue %dx.types.ResRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.ResRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.ResRet.f32 %1724, 2
  %1728 = fmul fast float %1716, %1725
  %1729 = fmul fast float %1717, %1726
  %1730 = fmul fast float %1718, %1727
  br label %1731

; <label>:1731                                    ; preds = %1701, %1693
  %1732 = phi float [ %1728, %1701 ], [ 0.000000e+00, %1693 ]
  %1733 = phi float [ %1729, %1701 ], [ 0.000000e+00, %1693 ]
  %1734 = phi float [ %1730, %1701 ], [ 0.000000e+00, %1693 ]
  %1735 = fcmp fast ogt float %1732, 0.000000e+00
  %1736 = fcmp fast ogt float %1733, 0.000000e+00
  %1737 = fcmp fast ogt float %1734, 0.000000e+00
  %1738 = call float @dx.op.unary.f32(i32 23, float %1732)  ; Log(value)
  %1739 = call float @dx.op.unary.f32(i32 23, float %1733)  ; Log(value)
  %1740 = call float @dx.op.unary.f32(i32 23, float %1734)  ; Log(value)
  %1741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1742 = extractvalue %dx.types.ResRet.i32 %1741, 0
  %1743 = lshr i32 %1742, 7
  %1744 = and i32 %1743, 32752
  %1745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1744)  ; LegacyF16ToF32(value)
  %1746 = fmul fast float %1738, 0xBFE62E4300000000
  %1747 = fmul fast float %1746, %1745
  %1748 = fmul fast float %1739, 0xBFE62E4300000000
  %1749 = fmul fast float %1748, %1745
  %1750 = fmul fast float %1740, 0xBFE62E4300000000
  %1751 = fmul fast float %1750, %1745
  %1752 = select i1 %1735, float %1747, float 1.270000e+02
  %1753 = select i1 %1736, float %1749, float 1.270000e+02
  %1754 = select i1 %1737, float %1751, float 1.270000e+02
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = and i32 %1756, 10240
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %1803, label %1759

; <label>:1759                                    ; preds = %1731
  %1760 = add i32 %48, 476
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = add i32 %1762, 0
  %1764 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1763, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1765 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1764, %dx.types.Handle %104, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1766 = extractvalue %dx.types.ResRet.f32 %1765, 1
  %1767 = extractvalue %dx.types.ResRet.f32 %1765, 3
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = and i32 %1769, 1048576
  %1771 = icmp ne i32 %1770, 0
  %1772 = and i32 %1769, 8192
  %1773 = icmp eq i32 %1772, 0
  br i1 %1773, label %1789, label %1774

; <label>:1774                                    ; preds = %1759
  %1775 = extractvalue %dx.types.ResRet.f32 %1765, 2
  %1776 = select i1 %1771, float %1775, float %1766
  %1777 = extractvalue %dx.types.ResRet.f32 %1765, 0
  %1778 = select i1 %1771, float %1777, float %1766
  %1779 = add i32 %48, 112
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = lshr i32 %1781, 16
  %1783 = and i32 %1782, 255
  %1784 = uitofp i32 %1783 to float
  %1785 = fmul fast float %1784, 0x3F80101020000000
  %1786 = fmul fast float %1785, %1778
  %1787 = fmul fast float %1785, %1766
  %1788 = fmul fast float %1785, %1776
  br label %1789

; <label>:1789                                    ; preds = %1774, %1759
  %1790 = phi float [ %1786, %1774 ], [ 0.000000e+00, %1759 ]
  %1791 = phi float [ %1787, %1774 ], [ 0.000000e+00, %1759 ]
  %1792 = phi float [ %1788, %1774 ], [ 0.000000e+00, %1759 ]
  %1793 = and i32 %1769, 2048
  %1794 = icmp eq i32 %1793, 0
  br i1 %1794, label %1803, label %1795

; <label>:1795                                    ; preds = %1789
  %1796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1650, i32 undef)  ; BufferLoad(srv,index,wot)
  %1797 = extractvalue %dx.types.ResRet.i32 %1796, 0
  %1798 = shl i32 %1797, 4
  %1799 = and i32 %1798, 32752
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = fmul fast float %1800, %1767
  %1802 = call float @dx.op.binary.f32(i32 35, float %1801, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1803

; <label>:1803                                    ; preds = %1795, %1789, %1731
  %1804 = phi float [ %1790, %1795 ], [ %1790, %1789 ], [ 0.000000e+00, %1731 ]
  %1805 = phi float [ %1791, %1795 ], [ %1791, %1789 ], [ 0.000000e+00, %1731 ]
  %1806 = phi float [ %1792, %1795 ], [ %1792, %1789 ], [ 0.000000e+00, %1731 ]
  %1807 = phi float [ %1802, %1795 ], [ 0x3F70101020000000, %1789 ], [ 0x3F70101020000000, %1731 ]
  %1808 = add i32 %48, 112
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = and i32 %1810, 255
  %1812 = uitofp i32 %1811 to float
  %1813 = lshr i32 %1810, 8
  %1814 = and i32 %1813, 255
  %1815 = uitofp i32 %1814 to float
  %1816 = call float @dx.op.dot3.f32(i32 55, float %1566, float %1567, float %1568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1817 = fmul fast float %1815, %1816
  %1818 = fadd fast float %1817, %1812
  %1819 = fmul fast float %1818, 0x3F70101020000000
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  br i1 %1165, label %1821, label %1856

; <label>:1821                                    ; preds = %1803
  %1822 = fmul fast float %1807, 2.000000e+00
  %1823 = fcmp fast olt float %1752, 1.270000e+02
  %1824 = fcmp fast olt float %1753, 1.270000e+02
  %1825 = fcmp fast olt float %1754, 1.270000e+02
  %1826 = fmul fast float %1752, 0xBFF7154760000000
  %1827 = fmul fast float %1826, %1822
  %1828 = fmul fast float %1753, 0xBFF7154760000000
  %1829 = fmul fast float %1828, %1822
  %1830 = fmul fast float %1754, 0xBFF7154760000000
  %1831 = fmul fast float %1830, %1822
  %1832 = call float @dx.op.unary.f32(i32 21, float %1827)  ; Exp(value)
  %1833 = call float @dx.op.unary.f32(i32 21, float %1829)  ; Exp(value)
  %1834 = call float @dx.op.unary.f32(i32 21, float %1831)  ; Exp(value)
  %1835 = call float @dx.op.unary.f32(i32 7, float %1832)  ; Saturate(value)
  %1836 = call float @dx.op.unary.f32(i32 7, float %1833)  ; Saturate(value)
  %1837 = call float @dx.op.unary.f32(i32 7, float %1834)  ; Saturate(value)
  %1838 = fadd fast float %1835, -1.000000e+00
  %1839 = select i1 %1823, float %1838, float -1.000000e+00
  %1840 = fadd fast float %1836, -1.000000e+00
  %1841 = select i1 %1824, float %1840, float -1.000000e+00
  %1842 = fadd fast float %1837, -1.000000e+00
  %1843 = select i1 %1825, float %1842, float -1.000000e+00
  %1844 = fmul fast float %1839, %1346
  %1845 = fmul fast float %1841, %1346
  %1846 = fmul fast float %1843, %1346
  %1847 = fadd fast float %1844, 1.000000e+00
  %1848 = fadd fast float %1845, 1.000000e+00
  %1849 = fadd fast float %1846, 1.000000e+00
  %1850 = fmul fast float %1847, %1146
  %1851 = fmul fast float %1848, %1147
  %1852 = fmul fast float %1849, %1148
  %1853 = fmul fast float %1847, %1149
  %1854 = fmul fast float %1848, %1150
  %1855 = fmul fast float %1849, %1151
  br label %1856

; <label>:1856                                    ; preds = %1821, %1803
  %1857 = phi float [ %1850, %1821 ], [ %1146, %1803 ]
  %1858 = phi float [ %1851, %1821 ], [ %1147, %1803 ]
  %1859 = phi float [ %1852, %1821 ], [ %1148, %1803 ]
  %1860 = phi float [ %1853, %1821 ], [ %1149, %1803 ]
  %1861 = phi float [ %1854, %1821 ], [ %1150, %1803 ]
  %1862 = phi float [ %1855, %1821 ], [ %1151, %1803 ]
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = and i32 %1864, 3
  %1866 = icmp eq i32 %1865, 3
  br i1 %1866, label %1945, label %1867

; <label>:1867                                    ; preds = %1856
  %1868 = and i32 %1864, 16
  %1869 = icmp ne i32 %1868, 0
  %1870 = select i1 %1869, float %1346, float 0.000000e+00
  %1871 = icmp eq i32 %1865, 0
  br i1 %1871, label %1872, label %1900

; <label>:1872                                    ; preds = %1867
  %1873 = and i32 %1864, 64
  %1874 = icmp ne i32 %1873, 0
  %1875 = select i1 %1874, float %1346, float 0.000000e+00
  %1876 = fsub fast float %1566, %1857
  %1877 = fsub fast float %1567, %1858
  %1878 = fsub fast float %1568, %1859
  %1879 = fmul fast float %1870, %1876
  %1880 = fmul fast float %1870, %1877
  %1881 = fmul fast float %1870, %1878
  %1882 = fadd fast float %1879, %1857
  %1883 = fadd fast float %1880, %1858
  %1884 = fadd fast float %1881, %1859
  %1885 = fsub fast float %1552, %1158
  %1886 = fmul fast float %1870, %1885
  %1887 = fadd fast float %1886, %1158
  %1888 = fsub fast float %1694, %1860
  %1889 = fsub fast float %1695, %1861
  %1890 = fsub fast float %1696, %1862
  %1891 = fmul fast float %1875, %1888
  %1892 = fmul fast float %1875, %1889
  %1893 = fmul fast float %1875, %1890
  %1894 = fadd fast float %1891, %1860
  %1895 = fadd fast float %1892, %1861
  %1896 = fadd fast float %1893, %1862
  %1897 = fsub fast float %1820, %1163
  %1898 = fmul fast float %1870, %1897
  %1899 = fadd fast float %1898, %1163
  br label %1945

; <label>:1900                                    ; preds = %1867
  %1901 = icmp eq i32 %1865, 1
  br i1 %1901, label %1902, label %1915

; <label>:1902                                    ; preds = %1900
  %1903 = fadd fast float %1566, -1.000000e+00
  %1904 = fadd fast float %1567, -1.000000e+00
  %1905 = fadd fast float %1568, -1.000000e+00
  %1906 = fmul fast float %1870, %1903
  %1907 = fmul fast float %1870, %1904
  %1908 = fmul fast float %1870, %1905
  %1909 = fadd fast float %1906, 1.000000e+00
  %1910 = fadd fast float %1907, 1.000000e+00
  %1911 = fadd fast float %1908, 1.000000e+00
  %1912 = fmul fast float %1909, %1857
  %1913 = fmul fast float %1910, %1858
  %1914 = fmul fast float %1911, %1859
  br label %1945

; <label>:1915                                    ; preds = %1900
  %1916 = icmp eq i32 %1865, 2
  br i1 %1916, label %1917, label %1945

; <label>:1917                                    ; preds = %1915
  %1918 = call float @dx.op.unary.f32(i32 24, float %1566)  ; Sqrt(value)
  %1919 = call float @dx.op.unary.f32(i32 24, float %1567)  ; Sqrt(value)
  %1920 = call float @dx.op.unary.f32(i32 24, float %1568)  ; Sqrt(value)
  %1921 = fadd fast float %1918, -5.000000e-01
  %1922 = fadd fast float %1919, -5.000000e-01
  %1923 = fadd fast float %1920, -5.000000e-01
  %1924 = fmul fast float %1921, %1870
  %1925 = fmul fast float %1922, %1870
  %1926 = fmul fast float %1923, %1870
  %1927 = fadd fast float %1924, 5.000000e-01
  %1928 = fadd fast float %1925, 5.000000e-01
  %1929 = fadd fast float %1926, 5.000000e-01
  %1930 = fmul fast float %1927, 2.000000e+00
  %1931 = fsub fast float 1.000000e+00, %1930
  %1932 = fmul fast float %1931, %1857
  %1933 = fadd fast float %1932, %1930
  %1934 = fmul fast float %1933, %1857
  %1935 = fmul fast float %1928, 2.000000e+00
  %1936 = fsub fast float 1.000000e+00, %1935
  %1937 = fmul fast float %1936, %1858
  %1938 = fadd fast float %1937, %1935
  %1939 = fmul fast float %1938, %1858
  %1940 = fmul fast float %1929, 2.000000e+00
  %1941 = fsub fast float 1.000000e+00, %1940
  %1942 = fmul fast float %1941, %1859
  %1943 = fadd fast float %1942, %1940
  %1944 = fmul fast float %1943, %1859
  br label %1945

; <label>:1945                                    ; preds = %1917, %1915, %1902, %1872, %1856
  %1946 = phi float [ %1857, %1856 ], [ %1934, %1917 ], [ %1857, %1915 ], [ %1912, %1902 ], [ %1882, %1872 ]
  %1947 = phi float [ %1858, %1856 ], [ %1939, %1917 ], [ %1858, %1915 ], [ %1913, %1902 ], [ %1883, %1872 ]
  %1948 = phi float [ %1859, %1856 ], [ %1944, %1917 ], [ %1859, %1915 ], [ %1914, %1902 ], [ %1884, %1872 ]
  %1949 = phi float [ %1860, %1856 ], [ %1860, %1917 ], [ %1860, %1915 ], [ %1860, %1902 ], [ %1894, %1872 ]
  %1950 = phi float [ %1861, %1856 ], [ %1861, %1917 ], [ %1861, %1915 ], [ %1861, %1902 ], [ %1895, %1872 ]
  %1951 = phi float [ %1862, %1856 ], [ %1862, %1917 ], [ %1862, %1915 ], [ %1862, %1902 ], [ %1896, %1872 ]
  %1952 = phi float [ %1158, %1856 ], [ %1158, %1917 ], [ %1158, %1915 ], [ %1158, %1902 ], [ %1887, %1872 ]
  %1953 = phi float [ %1163, %1856 ], [ %1163, %1917 ], [ %1163, %1915 ], [ %1163, %1902 ], [ %1899, %1872 ]
  %1954 = and i32 %1864, 12
  %1955 = icmp eq i32 %1954, 12
  br i1 %1955, label %2086, label %1956

; <label>:1956                                    ; preds = %1945
  %1957 = and i32 %1864, 2097184
  %1958 = icmp eq i32 %1957, 2097184
  %1959 = select i1 %1958, float %1346, float 0.000000e+00
  %1960 = and i32 %1864, 4194336
  %1961 = icmp eq i32 %1960, 4194336
  %1962 = select i1 %1961, float %1346, float 0.000000e+00
  %1963 = and i32 %1864, 8388640
  %1964 = icmp eq i32 %1963, 8388640
  %1965 = select i1 %1964, float %1346, float 0.000000e+00
  %1966 = and i32 %1864, 1024
  %1967 = icmp ne i32 %1966, 0
  %1968 = select i1 %1967, float %1346, float 0.000000e+00
  %1969 = and i32 %1864, 2048
  %1970 = icmp ne i32 %1969, 0
  %1971 = select i1 %1970, float %1346, float 0.000000e+00
  %1972 = and i32 %1864, 8192
  %1973 = icmp ne i32 %1972, 0
  %1974 = select i1 %1973, float %1346, float 0.000000e+00
  %1975 = icmp eq i32 %1954, 0
  br i1 %1975, label %1976, label %2010

; <label>:1976                                    ; preds = %1956
  %1977 = fsub fast float %1647, %1144
  %1978 = fsub fast float %1648, %1145
  %1979 = fmul fast float %1959, %1977
  %1980 = fmul fast float %1959, %1978
  %1981 = fadd fast float %1979, %1144
  %1982 = fadd fast float %1980, %1145
  %1983 = fsub fast float %1649, %1161
  %1984 = fmul fast float %1962, %1983
  %1985 = fadd fast float %1984, %1161
  %1986 = fsub fast float %1646, %1160
  %1987 = fmul fast float %1965, %1986
  %1988 = fadd fast float %1987, %1160
  %1989 = fsub fast float %1752, %1152
  %1990 = fsub fast float %1753, %1153
  %1991 = fsub fast float %1754, %1154
  %1992 = fmul fast float %1968, %1989
  %1993 = fmul fast float %1968, %1990
  %1994 = fmul fast float %1968, %1991
  %1995 = fadd fast float %1992, %1152
  %1996 = fadd fast float %1993, %1153
  %1997 = fadd fast float %1994, %1154
  %1998 = fsub fast float %1807, %1162
  %1999 = fmul fast float %1971, %1998
  %2000 = fadd fast float %1999, %1162
  %2001 = fsub fast float %1804, %1155
  %2002 = fsub fast float %1805, %1156
  %2003 = fsub fast float %1806, %1157
  %2004 = fmul fast float %1974, %2001
  %2005 = fmul fast float %1974, %2002
  %2006 = fmul fast float %1974, %2003
  %2007 = fadd fast float %2004, %1155
  %2008 = fadd fast float %2005, %1156
  %2009 = fadd fast float %2006, %1157
  br label %2086

; <label>:2010                                    ; preds = %1956
  %2011 = icmp eq i32 %1954, 4
  br i1 %2011, label %2012, label %2058

; <label>:2012                                    ; preds = %2010
  %2013 = fmul fast float %1959, %1647
  %2014 = fmul fast float %1959, %1648
  %2015 = fadd fast float %2013, %1144
  %2016 = fadd fast float %2014, %1145
  %2017 = call float @dx.op.binary.f32(i32 36, float %1161, float %1649)  ; FMin(a,b)
  %2018 = fsub fast float %2017, %1161
  %2019 = fmul fast float %2018, %1962
  %2020 = fadd fast float %2019, %1161
  %2021 = fadd fast float %1646, %1160
  %2022 = fmul fast float %2021, 0x3FF337FAE0000000
  %2023 = fmul fast float %1160, %1160
  %2024 = fmul fast float %1646, %1646
  %2025 = fadd fast float %2024, %2023
  %2026 = fmul fast float %2025, 0x3FE5152B00000000
  %2027 = fmul fast float %1160, 0xBFCC1F85E0000000
  %2028 = fmul fast float %2027, %1646
  %2029 = fadd fast float %2028, 0xBFE1363700000000
  %2030 = fadd fast float %2029, %2022
  %2031 = fsub fast float %2030, %2026
  %2032 = fmul fast float %2021, 0x3FBA6F0D00000000
  %2033 = fmul fast float %2025, 0x3FD0432880000000
  %2034 = fmul fast float %1160, 0xBFEF110800000000
  %2035 = fmul fast float %2034, %1646
  %2036 = fadd fast float %2035, 1.000000e+00
  %2037 = fsub fast float %2036, %2032
  %2038 = fadd fast float %2037, %2033
  %2039 = fdiv fast float %2031, %2038
  %2040 = call float @dx.op.unary.f32(i32 7, float %2039)  ; Saturate(value)
  %2041 = fsub fast float %2040, %1160
  %2042 = fmul fast float %2041, %1965
  %2043 = fadd fast float %2042, %1160
  %2044 = fmul fast float %1968, %1752
  %2045 = fmul fast float %1968, %1753
  %2046 = fmul fast float %1968, %1754
  %2047 = fadd fast float %2044, %1152
  %2048 = fadd fast float %2045, %1153
  %2049 = fadd fast float %2046, %1154
  %2050 = fmul fast float %1971, %1807
  %2051 = fadd fast float %2050, %1162
  %2052 = fmul fast float %1974, %1804
  %2053 = fmul fast float %1974, %1805
  %2054 = fmul fast float %1974, %1806
  %2055 = fadd fast float %2052, %1155
  %2056 = fadd fast float %2053, %1156
  %2057 = fadd fast float %2054, %1157
  br label %2086

; <label>:2058                                    ; preds = %2010
  %2059 = icmp eq i32 %1954, 8
  br i1 %2059, label %2060, label %2086

; <label>:2060                                    ; preds = %2058
  %2061 = fmul fast float %1959, %1647
  %2062 = fmul fast float %1959, %1648
  %2063 = fadd fast float %2061, %1144
  %2064 = fadd fast float %2062, %1145
  %2065 = call float @dx.op.binary.f32(i32 36, float %1161, float %1649)  ; FMin(a,b)
  %2066 = fsub fast float %2065, %1161
  %2067 = fmul fast float %2066, %1962
  %2068 = fadd fast float %2067, %1161
  %2069 = fsub fast float %1646, %1160
  %2070 = fmul fast float %1965, %2069
  %2071 = fadd fast float %2070, %1160
  %2072 = fmul fast float %1968, %1752
  %2073 = fmul fast float %1968, %1753
  %2074 = fmul fast float %1968, %1754
  %2075 = fadd fast float %2072, %1152
  %2076 = fadd fast float %2073, %1153
  %2077 = fadd fast float %2074, %1154
  %2078 = fmul fast float %1971, %1807
  %2079 = fadd fast float %2078, %1162
  %2080 = fmul fast float %1974, %1804
  %2081 = fmul fast float %1974, %1805
  %2082 = fmul fast float %1974, %1806
  %2083 = fadd fast float %2080, %1155
  %2084 = fadd fast float %2081, %1156
  %2085 = fadd fast float %2082, %1157
  br label %2086

; <label>:2086                                    ; preds = %2060, %2058, %2012, %1976, %1945, %1345, %1164, %1143
  %2087 = phi float [ %1144, %1945 ], [ %1144, %1345 ], [ %1144, %1143 ], [ %2063, %2060 ], [ %1144, %2058 ], [ %2015, %2012 ], [ %1981, %1976 ], [ %1144, %1164 ]
  %2088 = phi float [ %1145, %1945 ], [ %1145, %1345 ], [ %1145, %1143 ], [ %2064, %2060 ], [ %1145, %2058 ], [ %2016, %2012 ], [ %1982, %1976 ], [ %1145, %1164 ]
  %2089 = phi float [ %1946, %1945 ], [ %1146, %1345 ], [ %1146, %1143 ], [ %1946, %2060 ], [ %1946, %2058 ], [ %1946, %2012 ], [ %1946, %1976 ], [ %1146, %1164 ]
  %2090 = phi float [ %1947, %1945 ], [ %1147, %1345 ], [ %1147, %1143 ], [ %1947, %2060 ], [ %1947, %2058 ], [ %1947, %2012 ], [ %1947, %1976 ], [ %1147, %1164 ]
  %2091 = phi float [ %1948, %1945 ], [ %1148, %1345 ], [ %1148, %1143 ], [ %1948, %2060 ], [ %1948, %2058 ], [ %1948, %2012 ], [ %1948, %1976 ], [ %1148, %1164 ]
  %2092 = phi float [ %1949, %1945 ], [ %1149, %1345 ], [ %1149, %1143 ], [ %1949, %2060 ], [ %1949, %2058 ], [ %1949, %2012 ], [ %1949, %1976 ], [ %1149, %1164 ]
  %2093 = phi float [ %1950, %1945 ], [ %1150, %1345 ], [ %1150, %1143 ], [ %1950, %2060 ], [ %1950, %2058 ], [ %1950, %2012 ], [ %1950, %1976 ], [ %1150, %1164 ]
  %2094 = phi float [ %1951, %1945 ], [ %1151, %1345 ], [ %1151, %1143 ], [ %1951, %2060 ], [ %1951, %2058 ], [ %1951, %2012 ], [ %1951, %1976 ], [ %1151, %1164 ]
  %2095 = phi float [ %1152, %1945 ], [ %1152, %1345 ], [ %1152, %1143 ], [ %2075, %2060 ], [ %1152, %2058 ], [ %2047, %2012 ], [ %1995, %1976 ], [ %1152, %1164 ]
  %2096 = phi float [ %1153, %1945 ], [ %1153, %1345 ], [ %1153, %1143 ], [ %2076, %2060 ], [ %1153, %2058 ], [ %2048, %2012 ], [ %1996, %1976 ], [ %1153, %1164 ]
  %2097 = phi float [ %1154, %1945 ], [ %1154, %1345 ], [ %1154, %1143 ], [ %2077, %2060 ], [ %1154, %2058 ], [ %2049, %2012 ], [ %1997, %1976 ], [ %1154, %1164 ]
  %2098 = phi float [ %1155, %1945 ], [ %1155, %1345 ], [ %1155, %1143 ], [ %2083, %2060 ], [ %1155, %2058 ], [ %2055, %2012 ], [ %2007, %1976 ], [ %1155, %1164 ]
  %2099 = phi float [ %1156, %1945 ], [ %1156, %1345 ], [ %1156, %1143 ], [ %2084, %2060 ], [ %1156, %2058 ], [ %2056, %2012 ], [ %2008, %1976 ], [ %1156, %1164 ]
  %2100 = phi float [ %1157, %1945 ], [ %1157, %1345 ], [ %1157, %1143 ], [ %2085, %2060 ], [ %1157, %2058 ], [ %2057, %2012 ], [ %2009, %1976 ], [ %1157, %1164 ]
  %2101 = phi float [ %1952, %1945 ], [ %1158, %1345 ], [ %1158, %1143 ], [ %1952, %2060 ], [ %1952, %2058 ], [ %1952, %2012 ], [ %1952, %1976 ], [ %1158, %1164 ]
  %2102 = phi float [ %1160, %1945 ], [ %1160, %1345 ], [ %1160, %1143 ], [ %2071, %2060 ], [ %1160, %2058 ], [ %2043, %2012 ], [ %1988, %1976 ], [ %1160, %1164 ]
  %2103 = phi float [ %1161, %1945 ], [ %1161, %1345 ], [ %1161, %1143 ], [ %2068, %2060 ], [ %1161, %2058 ], [ %2020, %2012 ], [ %1985, %1976 ], [ %1161, %1164 ]
  %2104 = phi float [ %1162, %1945 ], [ %1162, %1345 ], [ %1162, %1143 ], [ %2079, %2060 ], [ %1162, %2058 ], [ %2051, %2012 ], [ %2000, %1976 ], [ %1162, %1164 ]
  %2105 = phi float [ %1953, %1945 ], [ %1163, %1345 ], [ %1163, %1143 ], [ %1953, %2060 ], [ %1953, %2058 ], [ %1953, %2012 ], [ %1953, %1976 ], [ %1163, %1164 ]
  br i1 %433, label %3028, label %2106

; <label>:2106                                    ; preds = %2086
  %2107 = icmp ult i32 %489, 3
  %2108 = add i32 %48, 56
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = add i32 %48, 60
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = or i32 %2113, %2110
  %2115 = icmp eq i32 %2114, 0
  br i1 %2115, label %3028, label %2116

; <label>:2116                                    ; preds = %2106
  %2117 = and i32 %2110, 262144
  %2118 = icmp ne i32 %2117, 0
  %2119 = select i1 %2118, float %53, float 1.000000e+00
  %2120 = select i1 %2118, float %54, float 0.000000e+00
  %2121 = select i1 %2118, float %55, float 0.000000e+00
  %2122 = select i1 %2118, float %56, float 1.000000e+00
  %2123 = select i1 %2118, float %57, float %85
  %2124 = select i1 %2118, float %58, float %86
  %2125 = add i32 %48, 316
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = lshr i32 %2127, 16
  %2129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2128)  ; LegacyF16ToF32(value)
  %2130 = fmul fast float %2129, 0x3F50624DE0000000
  %2131 = add i32 %48, 120
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = lshr i32 %2133, 16
  %2135 = and i32 %2134, 255
  %2136 = lshr i32 %2133, 24
  %2137 = add i32 %48, 324
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = and i32 %2139, 65535
  %2141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2140)  ; LegacyF16ToF32(value)
  %2142 = lshr i32 %2139, 16
  %2143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2142)  ; LegacyF16ToF32(value)
  %2144 = add i32 %48, 64
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = lshr i32 %2146, 22
  %2148 = shl nuw nsw i32 %2147, 5
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = shl i32 %2146, 4
  %2151 = and i32 %2150, 32752
  %2152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2151)  ; LegacyF16ToF32(value)
  %2153 = lshr i32 %2146, 7
  %2154 = and i32 %2153, 32752
  %2155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2154)  ; LegacyF16ToF32(value)
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 3
  %2158 = fmul fast float %2157, 1.000000e+03
  %2159 = fmul fast float %383, %2158
  %2160 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2161 = fadd fast float %2160, %373
  %2162 = fmul fast float %384, %2158
  %2163 = call float @dx.op.unary.f32(i32 22, float %2162)  ; Frc(value)
  %2164 = fadd fast float %2163, %375
  %2165 = fmul fast float %2130, %2158
  %2166 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2167 = fmul fast float %2166, 0x401921FB60000000
  %2168 = fadd fast float %2167, %2149
  %2169 = call float @dx.op.unary.f32(i32 13, float %2168)  ; Sin(value)
  %2170 = call float @dx.op.unary.f32(i32 12, float %2168)  ; Cos(value)
  %2171 = fsub fast float -0.000000e+00, %2169
  %2172 = fadd fast float %2123, -5.000000e-01
  %2173 = fadd fast float %2124, -5.000000e-01
  %2174 = fmul fast float %2141, %2172
  %2175 = fmul fast float %2143, %2173
  %2176 = fadd fast float %2174, 5.000000e-01
  %2177 = fadd fast float %2175, 5.000000e-01
  %2178 = fmul fast float %2152, %2176
  %2179 = fmul fast float %2155, %2177
  %2180 = fmul fast float %2170, %2178
  %2181 = call float @dx.op.tertiary.f32(i32 46, float %2171, float %2179, float %2180)  ; FMad(a,b,c)
  %2182 = fmul fast float %2169, %2178
  %2183 = call float @dx.op.tertiary.f32(i32 46, float %2170, float %2179, float %2182)  ; FMad(a,b,c)
  %2184 = fadd fast float %2161, %2181
  %2185 = fadd fast float %2164, %2183
  %2186 = icmp ugt i32 %2135, 1
  %2187 = icmp ugt i32 %2133, 33554431
  %2188 = or i1 %2187, %2186
  br i1 %2188, label %2189, label %2214

; <label>:2189                                    ; preds = %2116
  %2190 = add i32 %48, 260
  %2191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2190, i32 undef)  ; BufferLoad(srv,index,wot)
  %2192 = extractvalue %dx.types.ResRet.i32 %2191, 0
  %2193 = lshr i32 %2192, 16
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = fmul fast float %2157, %2194
  %2196 = call float @dx.op.unary.f32(i32 22, float %2195)  ; Frc(value)
  %2197 = mul nuw nsw i32 %2135, %2136
  %2198 = uitofp i32 %2197 to float
  %2199 = fmul fast float %2196, %2198
  %2200 = call float @dx.op.unary.f32(i32 27, float %2199)  ; Round_ni(value)
  %2201 = fptoui float %2200 to i32
  %2202 = urem i32 %2201, %2135
  %2203 = udiv i32 %2201, %2136
  %2204 = call float @dx.op.unary.f32(i32 22, float %2184)  ; Frc(value)
  %2205 = call float @dx.op.unary.f32(i32 22, float %2185)  ; Frc(value)
  %2206 = uitofp i32 %2202 to float
  %2207 = uitofp i32 %2203 to float
  %2208 = fadd fast float %2204, %2206
  %2209 = fadd fast float %2205, %2207
  %2210 = uitofp i32 %2135 to float
  %2211 = uitofp i32 %2136 to float
  %2212 = fdiv fast float %2208, %2210
  %2213 = fdiv fast float %2209, %2211
  br label %2214

; <label>:2214                                    ; preds = %2189, %2116
  %2215 = phi float [ %2212, %2189 ], [ %2184, %2116 ]
  %2216 = phi float [ %2213, %2189 ], [ %2185, %2116 ]
  %2217 = and i32 %2110, 256
  %2218 = icmp eq i32 %2217, 0
  br i1 %2218, label %2265, label %2219

; <label>:2219                                    ; preds = %2214
  %2220 = add i32 %48, 432
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = add i32 %2222, 0
  %2224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2223, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2225 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2224, %dx.types.Handle %104, float %2215, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2226 = extractvalue %dx.types.ResRet.f32 %2225, 0
  %2227 = add i32 %48, 132
  %2228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2227, i32 undef)  ; BufferLoad(srv,index,wot)
  %2229 = extractvalue %dx.types.ResRet.i32 %2228, 0
  %2230 = shl i32 %2229, 4
  %2231 = and i32 %2230, 32752
  %2232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2231)  ; LegacyF16ToF32(value)
  %2233 = lshr i32 %2229, 7
  %2234 = and i32 %2233, 32752
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = fsub fast float 1.000000e+00, %485
  %2237 = call float @dx.op.binary.f32(i32 35, float %2236, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2238 = bitcast float %485 to i32
  %2239 = sitofp i32 %2238 to float
  %2240 = fadd fast float %2239, 0xC1CFBF8940000000
  %2241 = fmul fast float %2235, %2240
  %2242 = fadd fast float %2241, 0x41CFBF8940000000
  %2243 = fptosi float %2242 to i32
  %2244 = bitcast i32 %2243 to float
  %2245 = bitcast float %2237 to i32
  %2246 = sitofp i32 %2245 to float
  %2247 = fadd fast float %2246, 0xC1CFBF8940000000
  %2248 = fmul fast float %2247, %2235
  %2249 = fadd fast float %2248, 0x41CFBF8940000000
  %2250 = fptosi float %2249 to i32
  %2251 = bitcast i32 %2250 to float
  %2252 = fmul fast float %2244, %2232
  %2253 = fmul fast float %2251, %2232
  %2254 = fsub fast float %2237, %2252
  %2255 = fadd fast float %2253, %2237
  %2256 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2257 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2258 = fsub fast float %2226, %2256
  %2259 = fsub fast float %2257, %2256
  %2260 = bitcast float %2259 to i32
  %2261 = sub nsw i32 2129859010, %2260
  %2262 = bitcast i32 %2261 to float
  %2263 = fmul fast float %2262, %2258
  %2264 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  br label %2265

; <label>:2265                                    ; preds = %2219, %2214
  %2266 = phi float [ %2264, %2219 ], [ %485, %2214 ]
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = and i32 %2268, 128
  %2270 = icmp eq i32 %2269, 0
  br i1 %2270, label %2287, label %2271

; <label>:2271                                    ; preds = %2265
  %2272 = add i32 %48, 416
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = add i32 %2274, 0
  %2276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2276, %dx.types.Handle %104, float %2215, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2278 = extractvalue %dx.types.ResRet.f32 %2277, 0
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 524288
  %2282 = icmp ne i32 %2281, 0
  %2283 = fcmp fast ogt float %2278, 0x3FE0101020000000
  %2284 = select i1 %2283, float 1.000000e+00, float 0.000000e+00
  %2285 = select i1 %2282, float %2284, float %2278
  %2286 = fmul fast float %2285, %2266
  br label %2287

; <label>:2287                                    ; preds = %2271, %2265
  %2288 = phi float [ %2286, %2271 ], [ %2266, %2265 ]
  %2289 = fcmp fast ult float %2288, 0x3F70101020000000
  br i1 %2289, label %3028, label %2290

; <label>:2290                                    ; preds = %2287
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = and i32 %2292, 16
  %2294 = icmp eq i32 %2293, 0
  br i1 %2294, label %2493, label %2295

; <label>:2295                                    ; preds = %2290
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = add i32 %48, 368
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = add i32 %2300, 0
  %2302 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2301, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2302, %dx.types.Handle %103, float %2215, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2304 = extractvalue %dx.types.ResRet.f32 %2303, 0
  %2305 = extractvalue %dx.types.ResRet.f32 %2303, 1
  %2306 = extractvalue %dx.types.ResRet.f32 %2303, 2
  %2307 = extractvalue %dx.types.ResRet.f32 %2303, 3
  %2308 = and i32 %2297, 255
  %2309 = uitofp i32 %2308 to float
  %2310 = lshr i32 %2297, 8
  %2311 = and i32 %2310, 255
  %2312 = uitofp i32 %2311 to float
  %2313 = fmul fast float %2307, %2309
  %2314 = fadd fast float %2313, %2312
  %2315 = fmul fast float %2314, 0x3F70101000000000
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 512
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2328, label %2320

; <label>:2320                                    ; preds = %2295
  %2321 = add i32 %48, 448
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = add i32 %2323, 0
  %2325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2325, %dx.types.Handle %104, float %2215, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  br label %2328

; <label>:2328                                    ; preds = %2320, %2295
  %2329 = phi float [ %2327, %2320 ], [ 1.000000e+00, %2295 ]
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 33554432
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2440, label %2334

; <label>:2334                                    ; preds = %2328
  %2335 = add i32 %48, 256
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 65535
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = lshr i32 %2337, 16
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = add i32 %48, 260
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 65535
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = lshr i32 %2348, 24
  %2350 = uitofp i32 %2349 to float
  %2351 = fmul fast float %2350, 0x3F70101020000000
  %2352 = and i32 %2348, 255
  %2353 = uitofp i32 %2352 to float
  %2354 = fmul fast float %2353, 0x3F70101020000000
  %2355 = lshr i32 %2348, 8
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2357, 0x3F70101020000000
  %2359 = lshr i32 %2348, 16
  %2360 = and i32 %2359, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = add i32 %48, 252
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 24
  %2367 = uitofp i32 %2366 to float
  %2368 = fmul fast float %2367, 0x3F70101020000000
  %2369 = and i32 %2365, 255
  %2370 = uitofp i32 %2369 to float
  %2371 = fmul fast float %2370, 0x3F70101020000000
  %2372 = lshr i32 %2365, 8
  %2373 = and i32 %2372, 255
  %2374 = uitofp i32 %2373 to float
  %2375 = fmul fast float %2374, 0x3F70101020000000
  %2376 = lshr i32 %2365, 16
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2378, 0x3F70101020000000
  %2380 = bitcast float %2304 to i32
  %2381 = ashr i32 %2380, 1
  %2382 = sub nsw i32 1597463174, %2381
  %2383 = bitcast i32 %2382 to float
  %2384 = fmul fast float %2304, 5.000000e-01
  %2385 = fmul fast float %2383, %2383
  %2386 = fmul fast float %2385, %2384
  %2387 = fsub fast float 1.500000e+00, %2386
  %2388 = fmul fast float %2383, %2304
  %2389 = fmul fast float %2388, %2387
  %2390 = bitcast float %2305 to i32
  %2391 = ashr i32 %2390, 1
  %2392 = sub nsw i32 1597463174, %2391
  %2393 = bitcast i32 %2392 to float
  %2394 = fmul fast float %2305, 5.000000e-01
  %2395 = fmul fast float %2393, %2393
  %2396 = fmul fast float %2395, %2394
  %2397 = fsub fast float 1.500000e+00, %2396
  %2398 = fmul fast float %2393, %2305
  %2399 = fmul fast float %2398, %2397
  %2400 = bitcast float %2306 to i32
  %2401 = ashr i32 %2400, 1
  %2402 = sub nsw i32 1597463174, %2401
  %2403 = bitcast i32 %2402 to float
  %2404 = fmul fast float %2306, 5.000000e-01
  %2405 = fmul fast float %2403, %2403
  %2406 = fmul fast float %2405, %2404
  %2407 = fsub fast float 1.500000e+00, %2406
  %2408 = fmul fast float %2403, %2306
  %2409 = fmul fast float %2408, %2407
  %2410 = fsub fast float %2389, %2371
  %2411 = fsub fast float %2399, %2375
  %2412 = fsub fast float %2409, %2379
  %2413 = fmul fast float %2410, %2339
  %2414 = fmul fast float %2411, %2341
  %2415 = fmul fast float %2412, %2346
  %2416 = fadd fast float %2413, %2354
  %2417 = fadd fast float %2414, %2358
  %2418 = fadd fast float %2415, %2362
  %2419 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2420 = call float @dx.op.unary.f32(i32 7, float %2417)  ; Saturate(value)
  %2421 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  %2422 = fmul fast float %2419, %2419
  %2423 = fmul fast float %2420, %2420
  %2424 = fmul fast float %2421, %2421
  %2425 = fsub fast float %2422, %2304
  %2426 = fsub fast float %2423, %2305
  %2427 = fsub fast float %2424, %2306
  %2428 = fmul fast float %2425, %2329
  %2429 = fmul fast float %2426, %2329
  %2430 = fmul fast float %2427, %2329
  %2431 = fadd fast float %2428, %2304
  %2432 = fadd fast float %2429, %2305
  %2433 = fadd fast float %2430, %2306
  %2434 = fadd fast float %2351, %2315
  %2435 = fsub fast float %2434, %2368
  %2436 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2437 = fsub fast float %2436, %2315
  %2438 = fmul fast float %2437, %2329
  %2439 = fadd fast float %2438, %2315
  br label %2493

; <label>:2440                                    ; preds = %2328
  %2441 = and i32 %2331, 134217728
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2477, label %2443

; <label>:2443                                    ; preds = %2440
  %2444 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %2445 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %2446 = call float @dx.op.unary.f32(i32 24, float %368)  ; Sqrt(value)
  %2447 = fadd fast float %2444, -5.000000e-01
  %2448 = fadd fast float %2445, -5.000000e-01
  %2449 = fadd fast float %2446, -5.000000e-01
  %2450 = fmul fast float %2447, %2329
  %2451 = fmul fast float %2448, %2329
  %2452 = fmul fast float %2449, %2329
  %2453 = fadd fast float %2450, 5.000000e-01
  %2454 = fadd fast float %2451, 5.000000e-01
  %2455 = fadd fast float %2452, 5.000000e-01
  %2456 = call float @dx.op.unary.f32(i32 24, float %2304)  ; Sqrt(value)
  %2457 = call float @dx.op.unary.f32(i32 24, float %2305)  ; Sqrt(value)
  %2458 = call float @dx.op.unary.f32(i32 24, float %2306)  ; Sqrt(value)
  %2459 = fmul fast float %2453, 2.000000e+00
  %2460 = fsub fast float 1.000000e+00, %2459
  %2461 = fmul fast float %2460, %2456
  %2462 = fadd fast float %2461, %2459
  %2463 = fmul fast float %2462, %2456
  %2464 = fmul fast float %2454, 2.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2464
  %2466 = fmul fast float %2465, %2457
  %2467 = fadd fast float %2466, %2464
  %2468 = fmul fast float %2467, %2457
  %2469 = fmul fast float %2455, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2458
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2458
  %2474 = fmul fast float %2463, %2463
  %2475 = fmul fast float %2468, %2468
  %2476 = fmul fast float %2473, %2473
  br label %2493

; <label>:2477                                    ; preds = %2440
  %2478 = fmul fast float %360, %360
  %2479 = fmul fast float %364, %364
  %2480 = fmul fast float %368, %368
  %2481 = fadd fast float %2478, -1.000000e+00
  %2482 = fadd fast float %2479, -1.000000e+00
  %2483 = fadd fast float %2480, -1.000000e+00
  %2484 = fmul fast float %2329, %2481
  %2485 = fmul fast float %2329, %2482
  %2486 = fmul fast float %2329, %2483
  %2487 = fadd fast float %2484, 1.000000e+00
  %2488 = fadd fast float %2485, 1.000000e+00
  %2489 = fadd fast float %2486, 1.000000e+00
  %2490 = fmul fast float %2487, %2304
  %2491 = fmul fast float %2488, %2305
  %2492 = fmul fast float %2489, %2306
  br label %2493

; <label>:2493                                    ; preds = %2477, %2443, %2334, %2290
  %2494 = phi float [ %2439, %2334 ], [ %2315, %2443 ], [ %2315, %2477 ], [ 0x3FA23C0BE0000000, %2290 ]
  %2495 = phi float [ %2431, %2334 ], [ %2474, %2443 ], [ %2490, %2477 ], [ 1.000000e+00, %2290 ]
  %2496 = phi float [ %2432, %2334 ], [ %2475, %2443 ], [ %2491, %2477 ], [ 1.000000e+00, %2290 ]
  %2497 = phi float [ %2433, %2334 ], [ %2476, %2443 ], [ %2492, %2477 ], [ 1.000000e+00, %2290 ]
  %2498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.i32 %2498, 1
  %2500 = and i32 %2499, 1
  %2501 = icmp ne i32 %2500, 0
  %2502 = add i32 %48, 356
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = and i32 %2504, 32
  %2506 = icmp ne i32 %2505, 0
  %2507 = and i1 %2501, %2506
  %2508 = select i1 %2507, float 1.000000e+00, float %2495
  %2509 = select i1 %2507, float 0x3FD3333340000000, float %2496
  %2510 = select i1 %2507, float 0x3FD3333340000000, float %2497
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 32
  %2514 = icmp eq i32 %2513, 0
  br i1 %2514, label %2587, label %2515

; <label>:2515                                    ; preds = %2493
  %2516 = add i32 %48, 124
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %48, 384
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = add i32 %2521, 0
  %2523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2523, %dx.types.Handle %103, float %2215, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 0
  %2526 = extractvalue %dx.types.ResRet.f32 %2524, 1
  %2527 = extractvalue %dx.types.ResRet.f32 %2524, 2
  %2528 = extractvalue %dx.types.ResRet.f32 %2524, 3
  %2529 = and i32 %2518, 255
  %2530 = uitofp i32 %2529 to float
  %2531 = lshr i32 %2518, 8
  %2532 = and i32 %2531, 255
  %2533 = uitofp i32 %2532 to float
  %2534 = lshr i32 %2518, 16
  %2535 = and i32 %2534, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = fmul fast float %2536, 0x3F70101000000000
  %2538 = fmul fast float %2525, %2530
  %2539 = fadd fast float %2538, %2533
  %2540 = fmul fast float %2539, 0x3F70101000000000
  %2541 = fadd fast float %2526, -5.000000e-01
  %2542 = fadd fast float %2528, -5.000000e-01
  %2543 = fmul fast float %2541, %2537
  %2544 = fmul fast float %2542, %2537
  %2545 = fadd fast float %2543, 5.000000e-01
  %2546 = fadd fast float %2544, 5.000000e-01
  %2547 = fmul fast float %2545, 2.000000e+00
  %2548 = fadd fast float %2547, -1.000000e+00
  %2549 = fmul fast float %2546, 2.000000e+00
  %2550 = fadd fast float %2549, -1.000000e+00
  %2551 = fadd fast float %2548, %2550
  %2552 = fmul fast float %2551, 5.000000e-01
  %2553 = fsub fast float %2548, %2550
  %2554 = fmul fast float %2553, 5.000000e-01
  %2555 = call float @dx.op.unary.f32(i32 6, float %2552)  ; FAbs(value)
  %2556 = fsub fast float 1.000000e+00, %2555
  %2557 = call float @dx.op.unary.f32(i32 6, float %2554)  ; FAbs(value)
  %2558 = fsub fast float %2556, %2557
  %2559 = call float @dx.op.dot3.f32(i32 55, float %2552, float %2554, float %2558, float %2552, float %2554, float %2558)  ; Dot3(ax,ay,az,bx,by,bz)
  %2560 = call float @dx.op.unary.f32(i32 25, float %2559)  ; Rsqrt(value)
  %2561 = fmul fast float %2552, %2560
  %2562 = fmul fast float %2554, %2560
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = and i32 %2564, 67108864
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %2583, label %2567

; <label>:2567                                    ; preds = %2515
  %2568 = add i32 %48, 312
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = and i32 %2570, 65535
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 65535
  %2576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2575)  ; LegacyF16ToF32(value)
  %2577 = lshr i32 %2570, 16
  %2578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2577)  ; LegacyF16ToF32(value)
  %2579 = fsub fast float %2540, %2578
  %2580 = fmul fast float %2579, %2572
  %2581 = fadd fast float %2580, %2576
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  br label %2583

; <label>:2583                                    ; preds = %2567, %2515
  %2584 = phi float [ %2582, %2567 ], [ %2540, %2515 ]
  %2585 = call float @dx.op.dot2.f32(i32 54, float %2561, float %2562, float %2119, float %2120)  ; Dot2(ax,ay,bx,by)
  %2586 = call float @dx.op.dot2.f32(i32 54, float %2561, float %2562, float %2121, float %2122)  ; Dot2(ax,ay,bx,by)
  br label %2587

; <label>:2587                                    ; preds = %2583, %2493
  %2588 = phi float [ %2584, %2583 ], [ 0x3FD6666660000000, %2493 ]
  %2589 = phi float [ %2585, %2583 ], [ 0.000000e+00, %2493 ]
  %2590 = phi float [ %2586, %2583 ], [ 0.000000e+00, %2493 ]
  %2591 = phi float [ %2527, %2583 ], [ 1.000000e+00, %2493 ]
  %2592 = add i32 %48, 192
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = lshr i32 %2594, 22
  %2596 = shl nuw nsw i32 %2595, 5
  %2597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2596)  ; LegacyF16ToF32(value)
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = and i32 %2599, 64
  %2601 = icmp eq i32 %2600, 0
  br i1 %2601, label %2635, label %2602

; <label>:2602                                    ; preds = %2587
  %2603 = add i32 %48, 400
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = add i32 %2605, 0
  %2607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 131072
  %2611 = icmp eq i32 %2610, 0
  %2612 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2607, %dx.types.Handle %103, float %2215, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2613 = extractvalue %dx.types.ResRet.f32 %2612, 0
  %2614 = extractvalue %dx.types.ResRet.f32 %2612, 1
  %2615 = extractvalue %dx.types.ResRet.f32 %2612, 2
  %2616 = fmul fast float %2613, %348
  %2617 = fmul fast float %2614, %351
  %2618 = fmul fast float %2615, %354
  br i1 %2611, label %2625, label %2619

; <label>:2619                                    ; preds = %2602
  %2620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2621 = extractvalue %dx.types.CBufRet.f32 %2620, 0
  %2622 = fmul fast float %2621, %2616
  %2623 = fmul fast float %2621, %2617
  %2624 = fmul fast float %2621, %2618
  br label %2625

; <label>:2625                                    ; preds = %2619, %2602
  %2626 = phi float [ %2622, %2619 ], [ %2616, %2602 ]
  %2627 = phi float [ %2623, %2619 ], [ %2617, %2602 ]
  %2628 = phi float [ %2624, %2619 ], [ %2618, %2602 ]
  %2629 = fmul fast float %2626, %2597
  %2630 = select i1 %247, float %2629, float %2626
  %2631 = call float @dx.op.dot3.f32(i32 55, float %2630, float %2627, float %2628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2632 = select i1 %247, float 0.000000e+00, float %2626
  %2633 = select i1 %247, float %2631, float %2627
  %2634 = select i1 %247, float 0.000000e+00, float %2628
  br label %2635

; <label>:2635                                    ; preds = %2625, %2587
  %2636 = phi float [ %2632, %2625 ], [ 0.000000e+00, %2587 ]
  %2637 = phi float [ %2633, %2625 ], [ 0.000000e+00, %2587 ]
  %2638 = phi float [ %2634, %2625 ], [ 0.000000e+00, %2587 ]
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 1024
  %2642 = icmp eq i32 %2641, 0
  br i1 %2642, label %2673, label %2643

; <label>:2643                                    ; preds = %2635
  %2644 = add i32 %48, 184
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 255
  %2648 = uitofp i32 %2647 to float
  %2649 = fmul fast float %2648, 0x3F70101020000000
  %2650 = lshr i32 %2646, 8
  %2651 = and i32 %2650, 255
  %2652 = uitofp i32 %2651 to float
  %2653 = fmul fast float %2652, 0x3F70101020000000
  %2654 = lshr i32 %2646, 16
  %2655 = and i32 %2654, 255
  %2656 = uitofp i32 %2655 to float
  %2657 = fmul fast float %2656, 0x3F70101020000000
  %2658 = fmul fast float %2649, %2649
  %2659 = fmul fast float %2653, %2653
  %2660 = fmul fast float %2657, %2657
  %2661 = add i32 %48, 464
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = add i32 %2663, 0
  %2665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2665, %dx.types.Handle %104, float %2215, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2667 = extractvalue %dx.types.ResRet.f32 %2666, 0
  %2668 = extractvalue %dx.types.ResRet.f32 %2666, 1
  %2669 = extractvalue %dx.types.ResRet.f32 %2666, 2
  %2670 = fmul fast float %2658, %2667
  %2671 = fmul fast float %2659, %2668
  %2672 = fmul fast float %2660, %2669
  br label %2673

; <label>:2673                                    ; preds = %2643, %2635
  %2674 = phi float [ %2670, %2643 ], [ 0.000000e+00, %2635 ]
  %2675 = phi float [ %2671, %2643 ], [ 0.000000e+00, %2635 ]
  %2676 = phi float [ %2672, %2643 ], [ 0.000000e+00, %2635 ]
  %2677 = fcmp fast ogt float %2674, 0.000000e+00
  %2678 = fcmp fast ogt float %2675, 0.000000e+00
  %2679 = fcmp fast ogt float %2676, 0.000000e+00
  %2680 = call float @dx.op.unary.f32(i32 23, float %2674)  ; Log(value)
  %2681 = call float @dx.op.unary.f32(i32 23, float %2675)  ; Log(value)
  %2682 = call float @dx.op.unary.f32(i32 23, float %2676)  ; Log(value)
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = lshr i32 %2684, 7
  %2686 = and i32 %2685, 32752
  %2687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2686)  ; LegacyF16ToF32(value)
  %2688 = fmul fast float %2680, 0xBFE62E4300000000
  %2689 = fmul fast float %2688, %2687
  %2690 = fmul fast float %2681, 0xBFE62E4300000000
  %2691 = fmul fast float %2690, %2687
  %2692 = fmul fast float %2682, 0xBFE62E4300000000
  %2693 = fmul fast float %2692, %2687
  %2694 = select i1 %2677, float %2689, float 1.270000e+02
  %2695 = select i1 %2678, float %2691, float 1.270000e+02
  %2696 = select i1 %2679, float %2693, float 1.270000e+02
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = and i32 %2698, 10240
  %2700 = icmp eq i32 %2699, 0
  br i1 %2700, label %2745, label %2701

; <label>:2701                                    ; preds = %2673
  %2702 = add i32 %48, 480
  %2703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2702, i32 undef)  ; BufferLoad(srv,index,wot)
  %2704 = extractvalue %dx.types.ResRet.i32 %2703, 0
  %2705 = add i32 %2704, 0
  %2706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2705, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2707 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2706, %dx.types.Handle %104, float %2215, float %2216, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2708 = extractvalue %dx.types.ResRet.f32 %2707, 1
  %2709 = extractvalue %dx.types.ResRet.f32 %2707, 3
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = and i32 %2711, 1048576
  %2713 = icmp ne i32 %2712, 0
  %2714 = and i32 %2711, 8192
  %2715 = icmp eq i32 %2714, 0
  br i1 %2715, label %2731, label %2716

; <label>:2716                                    ; preds = %2701
  %2717 = extractvalue %dx.types.ResRet.f32 %2707, 2
  %2718 = select i1 %2713, float %2717, float %2708
  %2719 = extractvalue %dx.types.ResRet.f32 %2707, 0
  %2720 = select i1 %2713, float %2719, float %2708
  %2721 = add i32 %48, 128
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = lshr i32 %2723, 16
  %2725 = and i32 %2724, 255
  %2726 = uitofp i32 %2725 to float
  %2727 = fmul fast float %2726, 0x3F80101020000000
  %2728 = fmul fast float %2727, %2720
  %2729 = fmul fast float %2727, %2708
  %2730 = fmul fast float %2727, %2718
  br label %2731

; <label>:2731                                    ; preds = %2716, %2701
  %2732 = phi float [ %2728, %2716 ], [ 0.000000e+00, %2701 ]
  %2733 = phi float [ %2729, %2716 ], [ 0.000000e+00, %2701 ]
  %2734 = phi float [ %2730, %2716 ], [ 0.000000e+00, %2701 ]
  %2735 = and i32 %2711, 2048
  %2736 = icmp eq i32 %2735, 0
  br i1 %2736, label %2745, label %2737

; <label>:2737                                    ; preds = %2731
  %2738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2739 = extractvalue %dx.types.ResRet.i32 %2738, 0
  %2740 = shl i32 %2739, 4
  %2741 = and i32 %2740, 32752
  %2742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2741)  ; LegacyF16ToF32(value)
  %2743 = fmul fast float %2742, %2709
  %2744 = call float @dx.op.binary.f32(i32 35, float %2743, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2745

; <label>:2745                                    ; preds = %2737, %2731, %2673
  %2746 = phi float [ %2732, %2737 ], [ %2732, %2731 ], [ 0.000000e+00, %2673 ]
  %2747 = phi float [ %2733, %2737 ], [ %2733, %2731 ], [ 0.000000e+00, %2673 ]
  %2748 = phi float [ %2734, %2737 ], [ %2734, %2731 ], [ 0.000000e+00, %2673 ]
  %2749 = phi float [ %2744, %2737 ], [ 0x3F70101020000000, %2731 ], [ 0x3F70101020000000, %2673 ]
  %2750 = add i32 %48, 128
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = and i32 %2752, 255
  %2754 = uitofp i32 %2753 to float
  %2755 = lshr i32 %2752, 8
  %2756 = and i32 %2755, 255
  %2757 = uitofp i32 %2756 to float
  %2758 = call float @dx.op.dot3.f32(i32 55, float %2508, float %2509, float %2510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2759 = fmul fast float %2757, %2758
  %2760 = fadd fast float %2759, %2754
  %2761 = fmul fast float %2760, 0x3F70101020000000
  %2762 = call float @dx.op.unary.f32(i32 7, float %2761)  ; Saturate(value)
  br i1 %2107, label %2763, label %2798

; <label>:2763                                    ; preds = %2745
  %2764 = fmul fast float %2749, 2.000000e+00
  %2765 = fcmp fast olt float %2694, 1.270000e+02
  %2766 = fcmp fast olt float %2695, 1.270000e+02
  %2767 = fcmp fast olt float %2696, 1.270000e+02
  %2768 = fmul fast float %2694, 0xBFF7154760000000
  %2769 = fmul fast float %2768, %2764
  %2770 = fmul fast float %2695, 0xBFF7154760000000
  %2771 = fmul fast float %2770, %2764
  %2772 = fmul fast float %2696, 0xBFF7154760000000
  %2773 = fmul fast float %2772, %2764
  %2774 = call float @dx.op.unary.f32(i32 21, float %2769)  ; Exp(value)
  %2775 = call float @dx.op.unary.f32(i32 21, float %2771)  ; Exp(value)
  %2776 = call float @dx.op.unary.f32(i32 21, float %2773)  ; Exp(value)
  %2777 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2778 = call float @dx.op.unary.f32(i32 7, float %2775)  ; Saturate(value)
  %2779 = call float @dx.op.unary.f32(i32 7, float %2776)  ; Saturate(value)
  %2780 = fadd fast float %2777, -1.000000e+00
  %2781 = select i1 %2765, float %2780, float -1.000000e+00
  %2782 = fadd fast float %2778, -1.000000e+00
  %2783 = select i1 %2766, float %2782, float -1.000000e+00
  %2784 = fadd fast float %2779, -1.000000e+00
  %2785 = select i1 %2767, float %2784, float -1.000000e+00
  %2786 = fmul fast float %2781, %2288
  %2787 = fmul fast float %2783, %2288
  %2788 = fmul fast float %2785, %2288
  %2789 = fadd fast float %2786, 1.000000e+00
  %2790 = fadd fast float %2787, 1.000000e+00
  %2791 = fadd fast float %2788, 1.000000e+00
  %2792 = fmul fast float %2789, %2089
  %2793 = fmul fast float %2790, %2090
  %2794 = fmul fast float %2791, %2091
  %2795 = fmul fast float %2789, %2092
  %2796 = fmul fast float %2790, %2093
  %2797 = fmul fast float %2791, %2094
  br label %2798

; <label>:2798                                    ; preds = %2763, %2745
  %2799 = phi float [ %2792, %2763 ], [ %2089, %2745 ]
  %2800 = phi float [ %2793, %2763 ], [ %2090, %2745 ]
  %2801 = phi float [ %2794, %2763 ], [ %2091, %2745 ]
  %2802 = phi float [ %2795, %2763 ], [ %2092, %2745 ]
  %2803 = phi float [ %2796, %2763 ], [ %2093, %2745 ]
  %2804 = phi float [ %2797, %2763 ], [ %2094, %2745 ]
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2108, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = and i32 %2806, 3
  %2808 = icmp eq i32 %2807, 3
  br i1 %2808, label %2887, label %2809

; <label>:2809                                    ; preds = %2798
  %2810 = and i32 %2806, 16
  %2811 = icmp ne i32 %2810, 0
  %2812 = select i1 %2811, float %2288, float 0.000000e+00
  %2813 = icmp eq i32 %2807, 0
  br i1 %2813, label %2814, label %2842

; <label>:2814                                    ; preds = %2809
  %2815 = and i32 %2806, 64
  %2816 = icmp ne i32 %2815, 0
  %2817 = select i1 %2816, float %2288, float 0.000000e+00
  %2818 = fsub fast float %2508, %2799
  %2819 = fsub fast float %2509, %2800
  %2820 = fsub fast float %2510, %2801
  %2821 = fmul fast float %2812, %2818
  %2822 = fmul fast float %2812, %2819
  %2823 = fmul fast float %2812, %2820
  %2824 = fadd fast float %2821, %2799
  %2825 = fadd fast float %2822, %2800
  %2826 = fadd fast float %2823, %2801
  %2827 = fsub fast float %2494, %2101
  %2828 = fmul fast float %2812, %2827
  %2829 = fadd fast float %2828, %2101
  %2830 = fsub fast float %2636, %2802
  %2831 = fsub fast float %2637, %2803
  %2832 = fsub fast float %2638, %2804
  %2833 = fmul fast float %2817, %2830
  %2834 = fmul fast float %2817, %2831
  %2835 = fmul fast float %2817, %2832
  %2836 = fadd fast float %2833, %2802
  %2837 = fadd fast float %2834, %2803
  %2838 = fadd fast float %2835, %2804
  %2839 = fsub fast float %2762, %2105
  %2840 = fmul fast float %2812, %2839
  %2841 = fadd fast float %2840, %2105
  br label %2887

; <label>:2842                                    ; preds = %2809
  %2843 = icmp eq i32 %2807, 1
  br i1 %2843, label %2844, label %2857

; <label>:2844                                    ; preds = %2842
  %2845 = fadd fast float %2508, -1.000000e+00
  %2846 = fadd fast float %2509, -1.000000e+00
  %2847 = fadd fast float %2510, -1.000000e+00
  %2848 = fmul fast float %2812, %2845
  %2849 = fmul fast float %2812, %2846
  %2850 = fmul fast float %2812, %2847
  %2851 = fadd fast float %2848, 1.000000e+00
  %2852 = fadd fast float %2849, 1.000000e+00
  %2853 = fadd fast float %2850, 1.000000e+00
  %2854 = fmul fast float %2851, %2799
  %2855 = fmul fast float %2852, %2800
  %2856 = fmul fast float %2853, %2801
  br label %2887

; <label>:2857                                    ; preds = %2842
  %2858 = icmp eq i32 %2807, 2
  br i1 %2858, label %2859, label %2887

; <label>:2859                                    ; preds = %2857
  %2860 = call float @dx.op.unary.f32(i32 24, float %2508)  ; Sqrt(value)
  %2861 = call float @dx.op.unary.f32(i32 24, float %2509)  ; Sqrt(value)
  %2862 = call float @dx.op.unary.f32(i32 24, float %2510)  ; Sqrt(value)
  %2863 = fadd fast float %2860, -5.000000e-01
  %2864 = fadd fast float %2861, -5.000000e-01
  %2865 = fadd fast float %2862, -5.000000e-01
  %2866 = fmul fast float %2863, %2812
  %2867 = fmul fast float %2864, %2812
  %2868 = fmul fast float %2865, %2812
  %2869 = fadd fast float %2866, 5.000000e-01
  %2870 = fadd fast float %2867, 5.000000e-01
  %2871 = fadd fast float %2868, 5.000000e-01
  %2872 = fmul fast float %2869, 2.000000e+00
  %2873 = fsub fast float 1.000000e+00, %2872
  %2874 = fmul fast float %2873, %2799
  %2875 = fadd fast float %2874, %2872
  %2876 = fmul fast float %2875, %2799
  %2877 = fmul fast float %2870, 2.000000e+00
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = fmul fast float %2878, %2800
  %2880 = fadd fast float %2879, %2877
  %2881 = fmul fast float %2880, %2800
  %2882 = fmul fast float %2871, 2.000000e+00
  %2883 = fsub fast float 1.000000e+00, %2882
  %2884 = fmul fast float %2883, %2801
  %2885 = fadd fast float %2884, %2882
  %2886 = fmul fast float %2885, %2801
  br label %2887

; <label>:2887                                    ; preds = %2859, %2857, %2844, %2814, %2798
  %2888 = phi float [ %2799, %2798 ], [ %2876, %2859 ], [ %2799, %2857 ], [ %2854, %2844 ], [ %2824, %2814 ]
  %2889 = phi float [ %2800, %2798 ], [ %2881, %2859 ], [ %2800, %2857 ], [ %2855, %2844 ], [ %2825, %2814 ]
  %2890 = phi float [ %2801, %2798 ], [ %2886, %2859 ], [ %2801, %2857 ], [ %2856, %2844 ], [ %2826, %2814 ]
  %2891 = phi float [ %2802, %2798 ], [ %2802, %2859 ], [ %2802, %2857 ], [ %2802, %2844 ], [ %2836, %2814 ]
  %2892 = phi float [ %2803, %2798 ], [ %2803, %2859 ], [ %2803, %2857 ], [ %2803, %2844 ], [ %2837, %2814 ]
  %2893 = phi float [ %2804, %2798 ], [ %2804, %2859 ], [ %2804, %2857 ], [ %2804, %2844 ], [ %2838, %2814 ]
  %2894 = phi float [ %2101, %2798 ], [ %2101, %2859 ], [ %2101, %2857 ], [ %2101, %2844 ], [ %2829, %2814 ]
  %2895 = phi float [ %2105, %2798 ], [ %2105, %2859 ], [ %2105, %2857 ], [ %2105, %2844 ], [ %2841, %2814 ]
  %2896 = and i32 %2806, 12
  %2897 = icmp eq i32 %2896, 12
  br i1 %2897, label %3028, label %2898

; <label>:2898                                    ; preds = %2887
  %2899 = and i32 %2806, 2097184
  %2900 = icmp eq i32 %2899, 2097184
  %2901 = select i1 %2900, float %2288, float 0.000000e+00
  %2902 = and i32 %2806, 4194336
  %2903 = icmp eq i32 %2902, 4194336
  %2904 = select i1 %2903, float %2288, float 0.000000e+00
  %2905 = and i32 %2806, 8388640
  %2906 = icmp eq i32 %2905, 8388640
  %2907 = select i1 %2906, float %2288, float 0.000000e+00
  %2908 = and i32 %2806, 1024
  %2909 = icmp ne i32 %2908, 0
  %2910 = select i1 %2909, float %2288, float 0.000000e+00
  %2911 = and i32 %2806, 2048
  %2912 = icmp ne i32 %2911, 0
  %2913 = select i1 %2912, float %2288, float 0.000000e+00
  %2914 = and i32 %2806, 8192
  %2915 = icmp ne i32 %2914, 0
  %2916 = select i1 %2915, float %2288, float 0.000000e+00
  %2917 = icmp eq i32 %2896, 0
  br i1 %2917, label %2918, label %2952

; <label>:2918                                    ; preds = %2898
  %2919 = fsub fast float %2589, %2087
  %2920 = fsub fast float %2590, %2088
  %2921 = fmul fast float %2901, %2919
  %2922 = fmul fast float %2901, %2920
  %2923 = fadd fast float %2921, %2087
  %2924 = fadd fast float %2922, %2088
  %2925 = fsub fast float %2591, %2103
  %2926 = fmul fast float %2904, %2925
  %2927 = fadd fast float %2926, %2103
  %2928 = fsub fast float %2588, %2102
  %2929 = fmul fast float %2907, %2928
  %2930 = fadd fast float %2929, %2102
  %2931 = fsub fast float %2694, %2095
  %2932 = fsub fast float %2695, %2096
  %2933 = fsub fast float %2696, %2097
  %2934 = fmul fast float %2910, %2931
  %2935 = fmul fast float %2910, %2932
  %2936 = fmul fast float %2910, %2933
  %2937 = fadd fast float %2934, %2095
  %2938 = fadd fast float %2935, %2096
  %2939 = fadd fast float %2936, %2097
  %2940 = fsub fast float %2749, %2104
  %2941 = fmul fast float %2913, %2940
  %2942 = fadd fast float %2941, %2104
  %2943 = fsub fast float %2746, %2098
  %2944 = fsub fast float %2747, %2099
  %2945 = fsub fast float %2748, %2100
  %2946 = fmul fast float %2916, %2943
  %2947 = fmul fast float %2916, %2944
  %2948 = fmul fast float %2916, %2945
  %2949 = fadd fast float %2946, %2098
  %2950 = fadd fast float %2947, %2099
  %2951 = fadd fast float %2948, %2100
  br label %3028

; <label>:2952                                    ; preds = %2898
  %2953 = icmp eq i32 %2896, 4
  br i1 %2953, label %2954, label %3000

; <label>:2954                                    ; preds = %2952
  %2955 = fmul fast float %2901, %2589
  %2956 = fmul fast float %2901, %2590
  %2957 = fadd fast float %2955, %2087
  %2958 = fadd fast float %2956, %2088
  %2959 = call float @dx.op.binary.f32(i32 36, float %2103, float %2591)  ; FMin(a,b)
  %2960 = fsub fast float %2959, %2103
  %2961 = fmul fast float %2960, %2904
  %2962 = fadd fast float %2961, %2103
  %2963 = fadd fast float %2588, %2102
  %2964 = fmul fast float %2963, 0x3FF337FAE0000000
  %2965 = fmul fast float %2102, %2102
  %2966 = fmul fast float %2588, %2588
  %2967 = fadd fast float %2966, %2965
  %2968 = fmul fast float %2967, 0x3FE5152B00000000
  %2969 = fmul fast float %2102, 0xBFCC1F85E0000000
  %2970 = fmul fast float %2969, %2588
  %2971 = fadd fast float %2970, 0xBFE1363700000000
  %2972 = fadd fast float %2971, %2964
  %2973 = fsub fast float %2972, %2968
  %2974 = fmul fast float %2963, 0x3FBA6F0D00000000
  %2975 = fmul fast float %2967, 0x3FD0432880000000
  %2976 = fmul fast float %2102, 0xBFEF110800000000
  %2977 = fmul fast float %2976, %2588
  %2978 = fadd fast float %2977, 1.000000e+00
  %2979 = fsub fast float %2978, %2974
  %2980 = fadd fast float %2979, %2975
  %2981 = fdiv fast float %2973, %2980
  %2982 = call float @dx.op.unary.f32(i32 7, float %2981)  ; Saturate(value)
  %2983 = fsub fast float %2982, %2102
  %2984 = fmul fast float %2983, %2907
  %2985 = fadd fast float %2984, %2102
  %2986 = fmul fast float %2910, %2694
  %2987 = fmul fast float %2910, %2695
  %2988 = fmul fast float %2910, %2696
  %2989 = fadd fast float %2986, %2095
  %2990 = fadd fast float %2987, %2096
  %2991 = fadd fast float %2988, %2097
  %2992 = fmul fast float %2913, %2749
  %2993 = fadd fast float %2992, %2104
  %2994 = fmul fast float %2916, %2746
  %2995 = fmul fast float %2916, %2747
  %2996 = fmul fast float %2916, %2748
  %2997 = fadd fast float %2994, %2098
  %2998 = fadd fast float %2995, %2099
  %2999 = fadd fast float %2996, %2100
  br label %3028

; <label>:3000                                    ; preds = %2952
  %3001 = icmp eq i32 %2896, 8
  br i1 %3001, label %3002, label %3028

; <label>:3002                                    ; preds = %3000
  %3003 = fmul fast float %2901, %2589
  %3004 = fmul fast float %2901, %2590
  %3005 = fadd fast float %3003, %2087
  %3006 = fadd fast float %3004, %2088
  %3007 = call float @dx.op.binary.f32(i32 36, float %2103, float %2591)  ; FMin(a,b)
  %3008 = fsub fast float %3007, %2103
  %3009 = fmul fast float %3008, %2904
  %3010 = fadd fast float %3009, %2103
  %3011 = fsub fast float %2588, %2102
  %3012 = fmul fast float %2907, %3011
  %3013 = fadd fast float %3012, %2102
  %3014 = fmul fast float %2910, %2694
  %3015 = fmul fast float %2910, %2695
  %3016 = fmul fast float %2910, %2696
  %3017 = fadd fast float %3014, %2095
  %3018 = fadd fast float %3015, %2096
  %3019 = fadd fast float %3016, %2097
  %3020 = fmul fast float %2913, %2749
  %3021 = fadd fast float %3020, %2104
  %3022 = fmul fast float %2916, %2746
  %3023 = fmul fast float %2916, %2747
  %3024 = fmul fast float %2916, %2748
  %3025 = fadd fast float %3022, %2098
  %3026 = fadd fast float %3023, %2099
  %3027 = fadd fast float %3024, %2100
  br label %3028

; <label>:3028                                    ; preds = %3002, %3000, %2954, %2918, %2887, %2287, %2106, %2086
  %3029 = phi float [ %2087, %2887 ], [ %2087, %2287 ], [ %2087, %2086 ], [ %3005, %3002 ], [ %2087, %3000 ], [ %2957, %2954 ], [ %2923, %2918 ], [ %2087, %2106 ]
  %3030 = phi float [ %2088, %2887 ], [ %2088, %2287 ], [ %2088, %2086 ], [ %3006, %3002 ], [ %2088, %3000 ], [ %2958, %2954 ], [ %2924, %2918 ], [ %2088, %2106 ]
  %3031 = phi float [ %2888, %2887 ], [ %2089, %2287 ], [ %2089, %2086 ], [ %2888, %3002 ], [ %2888, %3000 ], [ %2888, %2954 ], [ %2888, %2918 ], [ %2089, %2106 ]
  %3032 = phi float [ %2889, %2887 ], [ %2090, %2287 ], [ %2090, %2086 ], [ %2889, %3002 ], [ %2889, %3000 ], [ %2889, %2954 ], [ %2889, %2918 ], [ %2090, %2106 ]
  %3033 = phi float [ %2890, %2887 ], [ %2091, %2287 ], [ %2091, %2086 ], [ %2890, %3002 ], [ %2890, %3000 ], [ %2890, %2954 ], [ %2890, %2918 ], [ %2091, %2106 ]
  %3034 = phi float [ %2891, %2887 ], [ %2092, %2287 ], [ %2092, %2086 ], [ %2891, %3002 ], [ %2891, %3000 ], [ %2891, %2954 ], [ %2891, %2918 ], [ %2092, %2106 ]
  %3035 = phi float [ %2892, %2887 ], [ %2093, %2287 ], [ %2093, %2086 ], [ %2892, %3002 ], [ %2892, %3000 ], [ %2892, %2954 ], [ %2892, %2918 ], [ %2093, %2106 ]
  %3036 = phi float [ %2893, %2887 ], [ %2094, %2287 ], [ %2094, %2086 ], [ %2893, %3002 ], [ %2893, %3000 ], [ %2893, %2954 ], [ %2893, %2918 ], [ %2094, %2106 ]
  %3037 = phi float [ %2095, %2887 ], [ %2095, %2287 ], [ %2095, %2086 ], [ %3017, %3002 ], [ %2095, %3000 ], [ %2989, %2954 ], [ %2937, %2918 ], [ %2095, %2106 ]
  %3038 = phi float [ %2096, %2887 ], [ %2096, %2287 ], [ %2096, %2086 ], [ %3018, %3002 ], [ %2096, %3000 ], [ %2990, %2954 ], [ %2938, %2918 ], [ %2096, %2106 ]
  %3039 = phi float [ %2097, %2887 ], [ %2097, %2287 ], [ %2097, %2086 ], [ %3019, %3002 ], [ %2097, %3000 ], [ %2991, %2954 ], [ %2939, %2918 ], [ %2097, %2106 ]
  %3040 = phi float [ %2098, %2887 ], [ %2098, %2287 ], [ %2098, %2086 ], [ %3025, %3002 ], [ %2098, %3000 ], [ %2997, %2954 ], [ %2949, %2918 ], [ %2098, %2106 ]
  %3041 = phi float [ %2099, %2887 ], [ %2099, %2287 ], [ %2099, %2086 ], [ %3026, %3002 ], [ %2099, %3000 ], [ %2998, %2954 ], [ %2950, %2918 ], [ %2099, %2106 ]
  %3042 = phi float [ %2100, %2887 ], [ %2100, %2287 ], [ %2100, %2086 ], [ %3027, %3002 ], [ %2100, %3000 ], [ %2999, %2954 ], [ %2951, %2918 ], [ %2100, %2106 ]
  %3043 = phi float [ %2894, %2887 ], [ %2101, %2287 ], [ %2101, %2086 ], [ %2894, %3002 ], [ %2894, %3000 ], [ %2894, %2954 ], [ %2894, %2918 ], [ %2101, %2106 ]
  %3044 = phi float [ %2102, %2887 ], [ %2102, %2287 ], [ %2102, %2086 ], [ %3013, %3002 ], [ %2102, %3000 ], [ %2985, %2954 ], [ %2930, %2918 ], [ %2102, %2106 ]
  %3045 = phi float [ %2103, %2887 ], [ %2103, %2287 ], [ %2103, %2086 ], [ %3010, %3002 ], [ %2103, %3000 ], [ %2962, %2954 ], [ %2927, %2918 ], [ %2103, %2106 ]
  %3046 = phi float [ %2104, %2887 ], [ %2104, %2287 ], [ %2104, %2086 ], [ %3021, %3002 ], [ %2104, %3000 ], [ %2993, %2954 ], [ %2942, %2918 ], [ %2104, %2106 ]
  %3047 = phi float [ %2895, %2887 ], [ %2105, %2287 ], [ %2105, %2086 ], [ %2895, %3002 ], [ %2895, %3000 ], [ %2895, %2954 ], [ %2895, %2918 ], [ %2105, %2106 ]
  br i1 %435, label %3970, label %3048

; <label>:3048                                    ; preds = %3028
  %3049 = icmp ult i32 %489, 4
  %3050 = add i32 %48, 72
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = add i32 %48, 76
  %3054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.i32 %3054, 0
  %3056 = or i32 %3055, %3052
  %3057 = icmp eq i32 %3056, 0
  br i1 %3057, label %3970, label %3058

; <label>:3058                                    ; preds = %3048
  %3059 = and i32 %3052, 262144
  %3060 = icmp ne i32 %3059, 0
  %3061 = select i1 %3060, float %53, float 1.000000e+00
  %3062 = select i1 %3060, float %54, float 0.000000e+00
  %3063 = select i1 %3060, float %55, float 0.000000e+00
  %3064 = select i1 %3060, float %56, float 1.000000e+00
  %3065 = select i1 %3060, float %57, float %85
  %3066 = select i1 %3060, float %58, float %86
  %3067 = add i32 %48, 332
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = lshr i32 %3069, 16
  %3071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3070)  ; LegacyF16ToF32(value)
  %3072 = fmul fast float %3071, 0x3F50624DE0000000
  %3073 = add i32 %48, 136
  %3074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = lshr i32 %3075, 16
  %3077 = and i32 %3076, 255
  %3078 = lshr i32 %3075, 24
  %3079 = add i32 %48, 340
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = and i32 %3081, 65535
  %3083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3082)  ; LegacyF16ToF32(value)
  %3084 = lshr i32 %3081, 16
  %3085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3084)  ; LegacyF16ToF32(value)
  %3086 = add i32 %48, 80
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3086, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = lshr i32 %3088, 22
  %3090 = shl nuw nsw i32 %3089, 5
  %3091 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3090)  ; LegacyF16ToF32(value)
  %3092 = shl i32 %3088, 4
  %3093 = and i32 %3092, 32752
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = lshr i32 %3088, 7
  %3096 = and i32 %3095, 32752
  %3097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3096)  ; LegacyF16ToF32(value)
  %3098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3099 = extractvalue %dx.types.CBufRet.f32 %3098, 3
  %3100 = fmul fast float %3099, 1.000000e+03
  %3101 = fmul fast float %425, %3100
  %3102 = call float @dx.op.unary.f32(i32 22, float %3101)  ; Frc(value)
  %3103 = fadd fast float %3102, %415
  %3104 = fmul fast float %426, %3100
  %3105 = call float @dx.op.unary.f32(i32 22, float %3104)  ; Frc(value)
  %3106 = fadd fast float %3105, %417
  %3107 = fmul fast float %3072, %3100
  %3108 = call float @dx.op.unary.f32(i32 22, float %3107)  ; Frc(value)
  %3109 = fmul fast float %3108, 0x401921FB60000000
  %3110 = fadd fast float %3109, %3091
  %3111 = call float @dx.op.unary.f32(i32 13, float %3110)  ; Sin(value)
  %3112 = call float @dx.op.unary.f32(i32 12, float %3110)  ; Cos(value)
  %3113 = fsub fast float -0.000000e+00, %3111
  %3114 = fadd fast float %3065, -5.000000e-01
  %3115 = fadd fast float %3066, -5.000000e-01
  %3116 = fmul fast float %3083, %3114
  %3117 = fmul fast float %3085, %3115
  %3118 = fadd fast float %3116, 5.000000e-01
  %3119 = fadd fast float %3117, 5.000000e-01
  %3120 = fmul fast float %3094, %3118
  %3121 = fmul fast float %3097, %3119
  %3122 = fmul fast float %3112, %3120
  %3123 = call float @dx.op.tertiary.f32(i32 46, float %3113, float %3121, float %3122)  ; FMad(a,b,c)
  %3124 = fmul fast float %3111, %3120
  %3125 = call float @dx.op.tertiary.f32(i32 46, float %3112, float %3121, float %3124)  ; FMad(a,b,c)
  %3126 = fadd fast float %3103, %3123
  %3127 = fadd fast float %3106, %3125
  %3128 = icmp ugt i32 %3077, 1
  %3129 = icmp ugt i32 %3075, 33554431
  %3130 = or i1 %3129, %3128
  br i1 %3130, label %3131, label %3156

; <label>:3131                                    ; preds = %3058
  %3132 = add i32 %48, 276
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = lshr i32 %3134, 16
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = fmul fast float %3099, %3136
  %3138 = call float @dx.op.unary.f32(i32 22, float %3137)  ; Frc(value)
  %3139 = mul nuw nsw i32 %3077, %3078
  %3140 = uitofp i32 %3139 to float
  %3141 = fmul fast float %3138, %3140
  %3142 = call float @dx.op.unary.f32(i32 27, float %3141)  ; Round_ni(value)
  %3143 = fptoui float %3142 to i32
  %3144 = urem i32 %3143, %3077
  %3145 = udiv i32 %3143, %3078
  %3146 = call float @dx.op.unary.f32(i32 22, float %3126)  ; Frc(value)
  %3147 = call float @dx.op.unary.f32(i32 22, float %3127)  ; Frc(value)
  %3148 = uitofp i32 %3144 to float
  %3149 = uitofp i32 %3145 to float
  %3150 = fadd fast float %3146, %3148
  %3151 = fadd fast float %3147, %3149
  %3152 = uitofp i32 %3077 to float
  %3153 = uitofp i32 %3078 to float
  %3154 = fdiv fast float %3150, %3152
  %3155 = fdiv fast float %3151, %3153
  br label %3156

; <label>:3156                                    ; preds = %3131, %3058
  %3157 = phi float [ %3154, %3131 ], [ %3126, %3058 ]
  %3158 = phi float [ %3155, %3131 ], [ %3127, %3058 ]
  %3159 = and i32 %3052, 256
  %3160 = icmp eq i32 %3159, 0
  br i1 %3160, label %3207, label %3161

; <label>:3161                                    ; preds = %3156
  %3162 = add i32 %48, 436
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = add i32 %3164, 0
  %3166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3166, %dx.types.Handle %104, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = add i32 %48, 148
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = shl i32 %3171, 4
  %3173 = and i32 %3172, 32752
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = lshr i32 %3171, 7
  %3176 = and i32 %3175, 32752
  %3177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3176)  ; LegacyF16ToF32(value)
  %3178 = fsub fast float 1.000000e+00, %484
  %3179 = call float @dx.op.binary.f32(i32 35, float %3178, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3180 = bitcast float %484 to i32
  %3181 = sitofp i32 %3180 to float
  %3182 = fadd fast float %3181, 0xC1CFBF8940000000
  %3183 = fmul fast float %3177, %3182
  %3184 = fadd fast float %3183, 0x41CFBF8940000000
  %3185 = fptosi float %3184 to i32
  %3186 = bitcast i32 %3185 to float
  %3187 = bitcast float %3179 to i32
  %3188 = sitofp i32 %3187 to float
  %3189 = fadd fast float %3188, 0xC1CFBF8940000000
  %3190 = fmul fast float %3189, %3177
  %3191 = fadd fast float %3190, 0x41CFBF8940000000
  %3192 = fptosi float %3191 to i32
  %3193 = bitcast i32 %3192 to float
  %3194 = fmul fast float %3186, %3174
  %3195 = fmul fast float %3193, %3174
  %3196 = fsub fast float %3179, %3194
  %3197 = fadd fast float %3195, %3179
  %3198 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  %3199 = call float @dx.op.unary.f32(i32 7, float %3197)  ; Saturate(value)
  %3200 = fsub fast float %3168, %3198
  %3201 = fsub fast float %3199, %3198
  %3202 = bitcast float %3201 to i32
  %3203 = sub nsw i32 2129859010, %3202
  %3204 = bitcast i32 %3203 to float
  %3205 = fmul fast float %3204, %3200
  %3206 = call float @dx.op.unary.f32(i32 7, float %3205)  ; Saturate(value)
  br label %3207

; <label>:3207                                    ; preds = %3161, %3156
  %3208 = phi float [ %3206, %3161 ], [ %484, %3156 ]
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = and i32 %3210, 128
  %3212 = icmp eq i32 %3211, 0
  br i1 %3212, label %3229, label %3213

; <label>:3213                                    ; preds = %3207
  %3214 = add i32 %48, 420
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = add i32 %3216, 0
  %3218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3218, %dx.types.Handle %104, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3220 = extractvalue %dx.types.ResRet.f32 %3219, 0
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = and i32 %3222, 524288
  %3224 = icmp ne i32 %3223, 0
  %3225 = fcmp fast ogt float %3220, 0x3FE0101020000000
  %3226 = select i1 %3225, float 1.000000e+00, float 0.000000e+00
  %3227 = select i1 %3224, float %3226, float %3220
  %3228 = fmul fast float %3227, %3208
  br label %3229

; <label>:3229                                    ; preds = %3213, %3207
  %3230 = phi float [ %3228, %3213 ], [ %3208, %3207 ]
  %3231 = fcmp fast ult float %3230, 0x3F70101020000000
  br i1 %3231, label %3970, label %3232

; <label>:3232                                    ; preds = %3229
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = and i32 %3234, 16
  %3236 = icmp eq i32 %3235, 0
  br i1 %3236, label %3435, label %3237

; <label>:3237                                    ; preds = %3232
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3073, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = add i32 %48, 372
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = add i32 %3242, 0
  %3244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3244, %dx.types.Handle %103, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3246 = extractvalue %dx.types.ResRet.f32 %3245, 0
  %3247 = extractvalue %dx.types.ResRet.f32 %3245, 1
  %3248 = extractvalue %dx.types.ResRet.f32 %3245, 2
  %3249 = extractvalue %dx.types.ResRet.f32 %3245, 3
  %3250 = and i32 %3239, 255
  %3251 = uitofp i32 %3250 to float
  %3252 = lshr i32 %3239, 8
  %3253 = and i32 %3252, 255
  %3254 = uitofp i32 %3253 to float
  %3255 = fmul fast float %3249, %3251
  %3256 = fadd fast float %3255, %3254
  %3257 = fmul fast float %3256, 0x3F70101000000000
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = and i32 %3259, 512
  %3261 = icmp eq i32 %3260, 0
  br i1 %3261, label %3270, label %3262

; <label>:3262                                    ; preds = %3237
  %3263 = add i32 %48, 452
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = add i32 %3265, 0
  %3267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3267, %dx.types.Handle %104, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  br label %3270

; <label>:3270                                    ; preds = %3262, %3237
  %3271 = phi float [ %3269, %3262 ], [ 1.000000e+00, %3237 ]
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = and i32 %3273, 33554432
  %3275 = icmp eq i32 %3274, 0
  br i1 %3275, label %3382, label %3276

; <label>:3276                                    ; preds = %3270
  %3277 = add i32 %48, 272
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3277, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 65535
  %3281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3280)  ; LegacyF16ToF32(value)
  %3282 = lshr i32 %3279, 16
  %3283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3282)  ; LegacyF16ToF32(value)
  %3284 = add i32 %48, 276
  %3285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3284, i32 undef)  ; BufferLoad(srv,index,wot)
  %3286 = extractvalue %dx.types.ResRet.i32 %3285, 0
  %3287 = and i32 %3286, 65535
  %3288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3287)  ; LegacyF16ToF32(value)
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = lshr i32 %3290, 24
  %3292 = uitofp i32 %3291 to float
  %3293 = fmul fast float %3292, 0x3F70101020000000
  %3294 = and i32 %3290, 255
  %3295 = uitofp i32 %3294 to float
  %3296 = fmul fast float %3295, 0x3F70101020000000
  %3297 = lshr i32 %3290, 8
  %3298 = and i32 %3297, 255
  %3299 = uitofp i32 %3298 to float
  %3300 = fmul fast float %3299, 0x3F70101020000000
  %3301 = lshr i32 %3290, 16
  %3302 = and i32 %3301, 255
  %3303 = uitofp i32 %3302 to float
  %3304 = fmul fast float %3303, 0x3F70101020000000
  %3305 = add i32 %48, 268
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = lshr i32 %3307, 24
  %3309 = uitofp i32 %3308 to float
  %3310 = fmul fast float %3309, 0x3F70101020000000
  %3311 = and i32 %3307, 255
  %3312 = uitofp i32 %3311 to float
  %3313 = fmul fast float %3312, 0x3F70101020000000
  %3314 = lshr i32 %3307, 8
  %3315 = and i32 %3314, 255
  %3316 = uitofp i32 %3315 to float
  %3317 = fmul fast float %3316, 0x3F70101020000000
  %3318 = lshr i32 %3307, 16
  %3319 = and i32 %3318, 255
  %3320 = uitofp i32 %3319 to float
  %3321 = fmul fast float %3320, 0x3F70101020000000
  %3322 = bitcast float %3246 to i32
  %3323 = ashr i32 %3322, 1
  %3324 = sub nsw i32 1597463174, %3323
  %3325 = bitcast i32 %3324 to float
  %3326 = fmul fast float %3246, 5.000000e-01
  %3327 = fmul fast float %3325, %3325
  %3328 = fmul fast float %3327, %3326
  %3329 = fsub fast float 1.500000e+00, %3328
  %3330 = fmul fast float %3325, %3246
  %3331 = fmul fast float %3330, %3329
  %3332 = bitcast float %3247 to i32
  %3333 = ashr i32 %3332, 1
  %3334 = sub nsw i32 1597463174, %3333
  %3335 = bitcast i32 %3334 to float
  %3336 = fmul fast float %3247, 5.000000e-01
  %3337 = fmul fast float %3335, %3335
  %3338 = fmul fast float %3337, %3336
  %3339 = fsub fast float 1.500000e+00, %3338
  %3340 = fmul fast float %3335, %3247
  %3341 = fmul fast float %3340, %3339
  %3342 = bitcast float %3248 to i32
  %3343 = ashr i32 %3342, 1
  %3344 = sub nsw i32 1597463174, %3343
  %3345 = bitcast i32 %3344 to float
  %3346 = fmul fast float %3248, 5.000000e-01
  %3347 = fmul fast float %3345, %3345
  %3348 = fmul fast float %3347, %3346
  %3349 = fsub fast float 1.500000e+00, %3348
  %3350 = fmul fast float %3345, %3248
  %3351 = fmul fast float %3350, %3349
  %3352 = fsub fast float %3331, %3313
  %3353 = fsub fast float %3341, %3317
  %3354 = fsub fast float %3351, %3321
  %3355 = fmul fast float %3352, %3281
  %3356 = fmul fast float %3353, %3283
  %3357 = fmul fast float %3354, %3288
  %3358 = fadd fast float %3355, %3296
  %3359 = fadd fast float %3356, %3300
  %3360 = fadd fast float %3357, %3304
  %3361 = call float @dx.op.unary.f32(i32 7, float %3358)  ; Saturate(value)
  %3362 = call float @dx.op.unary.f32(i32 7, float %3359)  ; Saturate(value)
  %3363 = call float @dx.op.unary.f32(i32 7, float %3360)  ; Saturate(value)
  %3364 = fmul fast float %3361, %3361
  %3365 = fmul fast float %3362, %3362
  %3366 = fmul fast float %3363, %3363
  %3367 = fsub fast float %3364, %3246
  %3368 = fsub fast float %3365, %3247
  %3369 = fsub fast float %3366, %3248
  %3370 = fmul fast float %3367, %3271
  %3371 = fmul fast float %3368, %3271
  %3372 = fmul fast float %3369, %3271
  %3373 = fadd fast float %3370, %3246
  %3374 = fadd fast float %3371, %3247
  %3375 = fadd fast float %3372, %3248
  %3376 = fadd fast float %3293, %3257
  %3377 = fsub fast float %3376, %3310
  %3378 = call float @dx.op.unary.f32(i32 7, float %3377)  ; Saturate(value)
  %3379 = fsub fast float %3378, %3257
  %3380 = fmul fast float %3379, %3271
  %3381 = fadd fast float %3380, %3257
  br label %3435

; <label>:3382                                    ; preds = %3270
  %3383 = and i32 %3273, 134217728
  %3384 = icmp eq i32 %3383, 0
  br i1 %3384, label %3419, label %3385

; <label>:3385                                    ; preds = %3382
  %3386 = call float @dx.op.unary.f32(i32 24, float %402)  ; Sqrt(value)
  %3387 = call float @dx.op.unary.f32(i32 24, float %406)  ; Sqrt(value)
  %3388 = call float @dx.op.unary.f32(i32 24, float %410)  ; Sqrt(value)
  %3389 = fadd fast float %3386, -5.000000e-01
  %3390 = fadd fast float %3387, -5.000000e-01
  %3391 = fadd fast float %3388, -5.000000e-01
  %3392 = fmul fast float %3389, %3271
  %3393 = fmul fast float %3390, %3271
  %3394 = fmul fast float %3391, %3271
  %3395 = fadd fast float %3392, 5.000000e-01
  %3396 = fadd fast float %3393, 5.000000e-01
  %3397 = fadd fast float %3394, 5.000000e-01
  %3398 = call float @dx.op.unary.f32(i32 24, float %3246)  ; Sqrt(value)
  %3399 = call float @dx.op.unary.f32(i32 24, float %3247)  ; Sqrt(value)
  %3400 = call float @dx.op.unary.f32(i32 24, float %3248)  ; Sqrt(value)
  %3401 = fmul fast float %3395, 2.000000e+00
  %3402 = fsub fast float 1.000000e+00, %3401
  %3403 = fmul fast float %3402, %3398
  %3404 = fadd fast float %3403, %3401
  %3405 = fmul fast float %3404, %3398
  %3406 = fmul fast float %3396, 2.000000e+00
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = fmul fast float %3407, %3399
  %3409 = fadd fast float %3408, %3406
  %3410 = fmul fast float %3409, %3399
  %3411 = fmul fast float %3397, 2.000000e+00
  %3412 = fsub fast float 1.000000e+00, %3411
  %3413 = fmul fast float %3412, %3400
  %3414 = fadd fast float %3413, %3411
  %3415 = fmul fast float %3414, %3400
  %3416 = fmul fast float %3405, %3405
  %3417 = fmul fast float %3410, %3410
  %3418 = fmul fast float %3415, %3415
  br label %3435

; <label>:3419                                    ; preds = %3382
  %3420 = fmul fast float %402, %402
  %3421 = fmul fast float %406, %406
  %3422 = fmul fast float %410, %410
  %3423 = fadd fast float %3420, -1.000000e+00
  %3424 = fadd fast float %3421, -1.000000e+00
  %3425 = fadd fast float %3422, -1.000000e+00
  %3426 = fmul fast float %3271, %3423
  %3427 = fmul fast float %3271, %3424
  %3428 = fmul fast float %3271, %3425
  %3429 = fadd fast float %3426, 1.000000e+00
  %3430 = fadd fast float %3427, 1.000000e+00
  %3431 = fadd fast float %3428, 1.000000e+00
  %3432 = fmul fast float %3429, %3246
  %3433 = fmul fast float %3430, %3247
  %3434 = fmul fast float %3431, %3248
  br label %3435

; <label>:3435                                    ; preds = %3419, %3385, %3276, %3232
  %3436 = phi float [ %3381, %3276 ], [ %3257, %3385 ], [ %3257, %3419 ], [ 0x3FA23C0BE0000000, %3232 ]
  %3437 = phi float [ %3373, %3276 ], [ %3416, %3385 ], [ %3432, %3419 ], [ 1.000000e+00, %3232 ]
  %3438 = phi float [ %3374, %3276 ], [ %3417, %3385 ], [ %3433, %3419 ], [ 1.000000e+00, %3232 ]
  %3439 = phi float [ %3375, %3276 ], [ %3418, %3385 ], [ %3434, %3419 ], [ 1.000000e+00, %3232 ]
  %3440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3441 = extractvalue %dx.types.CBufRet.i32 %3440, 1
  %3442 = and i32 %3441, 1
  %3443 = icmp ne i32 %3442, 0
  %3444 = add i32 %48, 356
  %3445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3446 = extractvalue %dx.types.ResRet.i32 %3445, 0
  %3447 = and i32 %3446, 32
  %3448 = icmp ne i32 %3447, 0
  %3449 = and i1 %3443, %3448
  %3450 = select i1 %3449, float 1.000000e+00, float %3437
  %3451 = select i1 %3449, float 0x3FD3333340000000, float %3438
  %3452 = select i1 %3449, float 0x3FD3333340000000, float %3439
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = and i32 %3454, 32
  %3456 = icmp eq i32 %3455, 0
  br i1 %3456, label %3529, label %3457

; <label>:3457                                    ; preds = %3435
  %3458 = add i32 %48, 140
  %3459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3458, i32 undef)  ; BufferLoad(srv,index,wot)
  %3460 = extractvalue %dx.types.ResRet.i32 %3459, 0
  %3461 = add i32 %48, 388
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = add i32 %3463, 0
  %3465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3465, %dx.types.Handle %103, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3467 = extractvalue %dx.types.ResRet.f32 %3466, 0
  %3468 = extractvalue %dx.types.ResRet.f32 %3466, 1
  %3469 = extractvalue %dx.types.ResRet.f32 %3466, 2
  %3470 = extractvalue %dx.types.ResRet.f32 %3466, 3
  %3471 = and i32 %3460, 255
  %3472 = uitofp i32 %3471 to float
  %3473 = lshr i32 %3460, 8
  %3474 = and i32 %3473, 255
  %3475 = uitofp i32 %3474 to float
  %3476 = lshr i32 %3460, 16
  %3477 = and i32 %3476, 255
  %3478 = uitofp i32 %3477 to float
  %3479 = fmul fast float %3478, 0x3F70101000000000
  %3480 = fmul fast float %3467, %3472
  %3481 = fadd fast float %3480, %3475
  %3482 = fmul fast float %3481, 0x3F70101000000000
  %3483 = fadd fast float %3468, -5.000000e-01
  %3484 = fadd fast float %3470, -5.000000e-01
  %3485 = fmul fast float %3483, %3479
  %3486 = fmul fast float %3484, %3479
  %3487 = fadd fast float %3485, 5.000000e-01
  %3488 = fadd fast float %3486, 5.000000e-01
  %3489 = fmul fast float %3487, 2.000000e+00
  %3490 = fadd fast float %3489, -1.000000e+00
  %3491 = fmul fast float %3488, 2.000000e+00
  %3492 = fadd fast float %3491, -1.000000e+00
  %3493 = fadd fast float %3490, %3492
  %3494 = fmul fast float %3493, 5.000000e-01
  %3495 = fsub fast float %3490, %3492
  %3496 = fmul fast float %3495, 5.000000e-01
  %3497 = call float @dx.op.unary.f32(i32 6, float %3494)  ; FAbs(value)
  %3498 = fsub fast float 1.000000e+00, %3497
  %3499 = call float @dx.op.unary.f32(i32 6, float %3496)  ; FAbs(value)
  %3500 = fsub fast float %3498, %3499
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3496, float %3500, float %3494, float %3496, float %3500)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = call float @dx.op.unary.f32(i32 25, float %3501)  ; Rsqrt(value)
  %3503 = fmul fast float %3494, %3502
  %3504 = fmul fast float %3496, %3502
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = and i32 %3506, 67108864
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3525, label %3509

; <label>:3509                                    ; preds = %3457
  %3510 = add i32 %48, 328
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = and i32 %3512, 65535
  %3514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3513)  ; LegacyF16ToF32(value)
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = and i32 %3516, 65535
  %3518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3517)  ; LegacyF16ToF32(value)
  %3519 = lshr i32 %3512, 16
  %3520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3519)  ; LegacyF16ToF32(value)
  %3521 = fsub fast float %3482, %3520
  %3522 = fmul fast float %3521, %3514
  %3523 = fadd fast float %3522, %3518
  %3524 = call float @dx.op.unary.f32(i32 7, float %3523)  ; Saturate(value)
  br label %3525

; <label>:3525                                    ; preds = %3509, %3457
  %3526 = phi float [ %3524, %3509 ], [ %3482, %3457 ]
  %3527 = call float @dx.op.dot2.f32(i32 54, float %3503, float %3504, float %3061, float %3062)  ; Dot2(ax,ay,bx,by)
  %3528 = call float @dx.op.dot2.f32(i32 54, float %3503, float %3504, float %3063, float %3064)  ; Dot2(ax,ay,bx,by)
  br label %3529

; <label>:3529                                    ; preds = %3525, %3435
  %3530 = phi float [ %3526, %3525 ], [ 0x3FD6666660000000, %3435 ]
  %3531 = phi float [ %3527, %3525 ], [ 0.000000e+00, %3435 ]
  %3532 = phi float [ %3528, %3525 ], [ 0.000000e+00, %3435 ]
  %3533 = phi float [ %3469, %3525 ], [ 1.000000e+00, %3435 ]
  %3534 = add i32 %48, 208
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = lshr i32 %3536, 22
  %3538 = shl nuw nsw i32 %3537, 5
  %3539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3538)  ; LegacyF16ToF32(value)
  %3540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3541 = extractvalue %dx.types.ResRet.i32 %3540, 0
  %3542 = and i32 %3541, 64
  %3543 = icmp eq i32 %3542, 0
  br i1 %3543, label %3577, label %3544

; <label>:3544                                    ; preds = %3529
  %3545 = add i32 %48, 404
  %3546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.i32 %3546, 0
  %3548 = add i32 %3547, 0
  %3549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 131072
  %3553 = icmp eq i32 %3552, 0
  %3554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3549, %dx.types.Handle %103, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3555 = extractvalue %dx.types.ResRet.f32 %3554, 0
  %3556 = extractvalue %dx.types.ResRet.f32 %3554, 1
  %3557 = extractvalue %dx.types.ResRet.f32 %3554, 2
  %3558 = fmul fast float %3555, %390
  %3559 = fmul fast float %3556, %393
  %3560 = fmul fast float %3557, %396
  br i1 %3553, label %3567, label %3561

; <label>:3561                                    ; preds = %3544
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = fmul fast float %3563, %3558
  %3565 = fmul fast float %3563, %3559
  %3566 = fmul fast float %3563, %3560
  br label %3567

; <label>:3567                                    ; preds = %3561, %3544
  %3568 = phi float [ %3564, %3561 ], [ %3558, %3544 ]
  %3569 = phi float [ %3565, %3561 ], [ %3559, %3544 ]
  %3570 = phi float [ %3566, %3561 ], [ %3560, %3544 ]
  %3571 = fmul fast float %3568, %3539
  %3572 = select i1 %247, float %3571, float %3568
  %3573 = call float @dx.op.dot3.f32(i32 55, float %3572, float %3569, float %3570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3574 = select i1 %247, float 0.000000e+00, float %3568
  %3575 = select i1 %247, float %3573, float %3569
  %3576 = select i1 %247, float 0.000000e+00, float %3570
  br label %3577

; <label>:3577                                    ; preds = %3567, %3529
  %3578 = phi float [ %3574, %3567 ], [ 0.000000e+00, %3529 ]
  %3579 = phi float [ %3575, %3567 ], [ 0.000000e+00, %3529 ]
  %3580 = phi float [ %3576, %3567 ], [ 0.000000e+00, %3529 ]
  %3581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.i32 %3581, 0
  %3583 = and i32 %3582, 1024
  %3584 = icmp eq i32 %3583, 0
  br i1 %3584, label %3615, label %3585

; <label>:3585                                    ; preds = %3577
  %3586 = add i32 %48, 200
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 255
  %3590 = uitofp i32 %3589 to float
  %3591 = fmul fast float %3590, 0x3F70101020000000
  %3592 = lshr i32 %3588, 8
  %3593 = and i32 %3592, 255
  %3594 = uitofp i32 %3593 to float
  %3595 = fmul fast float %3594, 0x3F70101020000000
  %3596 = lshr i32 %3588, 16
  %3597 = and i32 %3596, 255
  %3598 = uitofp i32 %3597 to float
  %3599 = fmul fast float %3598, 0x3F70101020000000
  %3600 = fmul fast float %3591, %3591
  %3601 = fmul fast float %3595, %3595
  %3602 = fmul fast float %3599, %3599
  %3603 = add i32 %48, 468
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = add i32 %3605, 0
  %3607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3606, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3608 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3607, %dx.types.Handle %104, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = fmul fast float %3600, %3609
  %3613 = fmul fast float %3601, %3610
  %3614 = fmul fast float %3602, %3611
  br label %3615

; <label>:3615                                    ; preds = %3585, %3577
  %3616 = phi float [ %3612, %3585 ], [ 0.000000e+00, %3577 ]
  %3617 = phi float [ %3613, %3585 ], [ 0.000000e+00, %3577 ]
  %3618 = phi float [ %3614, %3585 ], [ 0.000000e+00, %3577 ]
  %3619 = fcmp fast ogt float %3616, 0.000000e+00
  %3620 = fcmp fast ogt float %3617, 0.000000e+00
  %3621 = fcmp fast ogt float %3618, 0.000000e+00
  %3622 = call float @dx.op.unary.f32(i32 23, float %3616)  ; Log(value)
  %3623 = call float @dx.op.unary.f32(i32 23, float %3617)  ; Log(value)
  %3624 = call float @dx.op.unary.f32(i32 23, float %3618)  ; Log(value)
  %3625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.i32 %3625, 0
  %3627 = lshr i32 %3626, 7
  %3628 = and i32 %3627, 32752
  %3629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3628)  ; LegacyF16ToF32(value)
  %3630 = fmul fast float %3622, 0xBFE62E4300000000
  %3631 = fmul fast float %3630, %3629
  %3632 = fmul fast float %3623, 0xBFE62E4300000000
  %3633 = fmul fast float %3632, %3629
  %3634 = fmul fast float %3624, 0xBFE62E4300000000
  %3635 = fmul fast float %3634, %3629
  %3636 = select i1 %3619, float %3631, float 1.270000e+02
  %3637 = select i1 %3620, float %3633, float 1.270000e+02
  %3638 = select i1 %3621, float %3635, float 1.270000e+02
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = and i32 %3640, 10240
  %3642 = icmp eq i32 %3641, 0
  br i1 %3642, label %3687, label %3643

; <label>:3643                                    ; preds = %3615
  %3644 = add i32 %48, 484
  %3645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3644, i32 undef)  ; BufferLoad(srv,index,wot)
  %3646 = extractvalue %dx.types.ResRet.i32 %3645, 0
  %3647 = add i32 %3646, 0
  %3648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3647, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3649 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3648, %dx.types.Handle %104, float %3157, float %3158, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3653 = extractvalue %dx.types.ResRet.i32 %3652, 0
  %3654 = and i32 %3653, 1048576
  %3655 = icmp ne i32 %3654, 0
  %3656 = and i32 %3653, 8192
  %3657 = icmp eq i32 %3656, 0
  br i1 %3657, label %3673, label %3658

; <label>:3658                                    ; preds = %3643
  %3659 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3660 = select i1 %3655, float %3659, float %3650
  %3661 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3662 = select i1 %3655, float %3661, float %3650
  %3663 = add i32 %48, 144
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3663, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = lshr i32 %3665, 16
  %3667 = and i32 %3666, 255
  %3668 = uitofp i32 %3667 to float
  %3669 = fmul fast float %3668, 0x3F80101020000000
  %3670 = fmul fast float %3669, %3662
  %3671 = fmul fast float %3669, %3650
  %3672 = fmul fast float %3669, %3660
  br label %3673

; <label>:3673                                    ; preds = %3658, %3643
  %3674 = phi float [ %3670, %3658 ], [ 0.000000e+00, %3643 ]
  %3675 = phi float [ %3671, %3658 ], [ 0.000000e+00, %3643 ]
  %3676 = phi float [ %3672, %3658 ], [ 0.000000e+00, %3643 ]
  %3677 = and i32 %3653, 2048
  %3678 = icmp eq i32 %3677, 0
  br i1 %3678, label %3687, label %3679

; <label>:3679                                    ; preds = %3673
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = shl i32 %3681, 4
  %3683 = and i32 %3682, 32752
  %3684 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3683)  ; LegacyF16ToF32(value)
  %3685 = fmul fast float %3684, %3651
  %3686 = call float @dx.op.binary.f32(i32 35, float %3685, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3687

; <label>:3687                                    ; preds = %3679, %3673, %3615
  %3688 = phi float [ %3674, %3679 ], [ %3674, %3673 ], [ 0.000000e+00, %3615 ]
  %3689 = phi float [ %3675, %3679 ], [ %3675, %3673 ], [ 0.000000e+00, %3615 ]
  %3690 = phi float [ %3676, %3679 ], [ %3676, %3673 ], [ 0.000000e+00, %3615 ]
  %3691 = phi float [ %3686, %3679 ], [ 0x3F70101020000000, %3673 ], [ 0x3F70101020000000, %3615 ]
  %3692 = add i32 %48, 144
  %3693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3694 = extractvalue %dx.types.ResRet.i32 %3693, 0
  %3695 = and i32 %3694, 255
  %3696 = uitofp i32 %3695 to float
  %3697 = lshr i32 %3694, 8
  %3698 = and i32 %3697, 255
  %3699 = uitofp i32 %3698 to float
  %3700 = call float @dx.op.dot3.f32(i32 55, float %3450, float %3451, float %3452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3701 = fmul fast float %3699, %3700
  %3702 = fadd fast float %3701, %3696
  %3703 = fmul fast float %3702, 0x3F70101020000000
  %3704 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  br i1 %3049, label %3705, label %3740

; <label>:3705                                    ; preds = %3687
  %3706 = fmul fast float %3691, 2.000000e+00
  %3707 = fcmp fast olt float %3636, 1.270000e+02
  %3708 = fcmp fast olt float %3637, 1.270000e+02
  %3709 = fcmp fast olt float %3638, 1.270000e+02
  %3710 = fmul fast float %3636, 0xBFF7154760000000
  %3711 = fmul fast float %3710, %3706
  %3712 = fmul fast float %3637, 0xBFF7154760000000
  %3713 = fmul fast float %3712, %3706
  %3714 = fmul fast float %3638, 0xBFF7154760000000
  %3715 = fmul fast float %3714, %3706
  %3716 = call float @dx.op.unary.f32(i32 21, float %3711)  ; Exp(value)
  %3717 = call float @dx.op.unary.f32(i32 21, float %3713)  ; Exp(value)
  %3718 = call float @dx.op.unary.f32(i32 21, float %3715)  ; Exp(value)
  %3719 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = fadd fast float %3719, -1.000000e+00
  %3723 = select i1 %3707, float %3722, float -1.000000e+00
  %3724 = fadd fast float %3720, -1.000000e+00
  %3725 = select i1 %3708, float %3724, float -1.000000e+00
  %3726 = fadd fast float %3721, -1.000000e+00
  %3727 = select i1 %3709, float %3726, float -1.000000e+00
  %3728 = fmul fast float %3723, %3230
  %3729 = fmul fast float %3725, %3230
  %3730 = fmul fast float %3727, %3230
  %3731 = fadd fast float %3728, 1.000000e+00
  %3732 = fadd fast float %3729, 1.000000e+00
  %3733 = fadd fast float %3730, 1.000000e+00
  %3734 = fmul fast float %3731, %3031
  %3735 = fmul fast float %3732, %3032
  %3736 = fmul fast float %3733, %3033
  %3737 = fmul fast float %3731, %3034
  %3738 = fmul fast float %3732, %3035
  %3739 = fmul fast float %3733, %3036
  br label %3740

; <label>:3740                                    ; preds = %3705, %3687
  %3741 = phi float [ %3734, %3705 ], [ %3031, %3687 ]
  %3742 = phi float [ %3735, %3705 ], [ %3032, %3687 ]
  %3743 = phi float [ %3736, %3705 ], [ %3033, %3687 ]
  %3744 = phi float [ %3737, %3705 ], [ %3034, %3687 ]
  %3745 = phi float [ %3738, %3705 ], [ %3035, %3687 ]
  %3746 = phi float [ %3739, %3705 ], [ %3036, %3687 ]
  %3747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3050, i32 undef)  ; BufferLoad(srv,index,wot)
  %3748 = extractvalue %dx.types.ResRet.i32 %3747, 0
  %3749 = and i32 %3748, 3
  %3750 = icmp eq i32 %3749, 3
  br i1 %3750, label %3829, label %3751

; <label>:3751                                    ; preds = %3740
  %3752 = and i32 %3748, 16
  %3753 = icmp ne i32 %3752, 0
  %3754 = select i1 %3753, float %3230, float 0.000000e+00
  %3755 = icmp eq i32 %3749, 0
  br i1 %3755, label %3756, label %3784

; <label>:3756                                    ; preds = %3751
  %3757 = and i32 %3748, 64
  %3758 = icmp ne i32 %3757, 0
  %3759 = select i1 %3758, float %3230, float 0.000000e+00
  %3760 = fsub fast float %3450, %3741
  %3761 = fsub fast float %3451, %3742
  %3762 = fsub fast float %3452, %3743
  %3763 = fmul fast float %3754, %3760
  %3764 = fmul fast float %3754, %3761
  %3765 = fmul fast float %3754, %3762
  %3766 = fadd fast float %3763, %3741
  %3767 = fadd fast float %3764, %3742
  %3768 = fadd fast float %3765, %3743
  %3769 = fsub fast float %3436, %3043
  %3770 = fmul fast float %3754, %3769
  %3771 = fadd fast float %3770, %3043
  %3772 = fsub fast float %3578, %3744
  %3773 = fsub fast float %3579, %3745
  %3774 = fsub fast float %3580, %3746
  %3775 = fmul fast float %3759, %3772
  %3776 = fmul fast float %3759, %3773
  %3777 = fmul fast float %3759, %3774
  %3778 = fadd fast float %3775, %3744
  %3779 = fadd fast float %3776, %3745
  %3780 = fadd fast float %3777, %3746
  %3781 = fsub fast float %3704, %3047
  %3782 = fmul fast float %3754, %3781
  %3783 = fadd fast float %3782, %3047
  br label %3829

; <label>:3784                                    ; preds = %3751
  %3785 = icmp eq i32 %3749, 1
  br i1 %3785, label %3786, label %3799

; <label>:3786                                    ; preds = %3784
  %3787 = fadd fast float %3450, -1.000000e+00
  %3788 = fadd fast float %3451, -1.000000e+00
  %3789 = fadd fast float %3452, -1.000000e+00
  %3790 = fmul fast float %3754, %3787
  %3791 = fmul fast float %3754, %3788
  %3792 = fmul fast float %3754, %3789
  %3793 = fadd fast float %3790, 1.000000e+00
  %3794 = fadd fast float %3791, 1.000000e+00
  %3795 = fadd fast float %3792, 1.000000e+00
  %3796 = fmul fast float %3793, %3741
  %3797 = fmul fast float %3794, %3742
  %3798 = fmul fast float %3795, %3743
  br label %3829

; <label>:3799                                    ; preds = %3784
  %3800 = icmp eq i32 %3749, 2
  br i1 %3800, label %3801, label %3829

; <label>:3801                                    ; preds = %3799
  %3802 = call float @dx.op.unary.f32(i32 24, float %3450)  ; Sqrt(value)
  %3803 = call float @dx.op.unary.f32(i32 24, float %3451)  ; Sqrt(value)
  %3804 = call float @dx.op.unary.f32(i32 24, float %3452)  ; Sqrt(value)
  %3805 = fadd fast float %3802, -5.000000e-01
  %3806 = fadd fast float %3803, -5.000000e-01
  %3807 = fadd fast float %3804, -5.000000e-01
  %3808 = fmul fast float %3805, %3754
  %3809 = fmul fast float %3806, %3754
  %3810 = fmul fast float %3807, %3754
  %3811 = fadd fast float %3808, 5.000000e-01
  %3812 = fadd fast float %3809, 5.000000e-01
  %3813 = fadd fast float %3810, 5.000000e-01
  %3814 = fmul fast float %3811, 2.000000e+00
  %3815 = fsub fast float 1.000000e+00, %3814
  %3816 = fmul fast float %3815, %3741
  %3817 = fadd fast float %3816, %3814
  %3818 = fmul fast float %3817, %3741
  %3819 = fmul fast float %3812, 2.000000e+00
  %3820 = fsub fast float 1.000000e+00, %3819
  %3821 = fmul fast float %3820, %3742
  %3822 = fadd fast float %3821, %3819
  %3823 = fmul fast float %3822, %3742
  %3824 = fmul fast float %3813, 2.000000e+00
  %3825 = fsub fast float 1.000000e+00, %3824
  %3826 = fmul fast float %3825, %3743
  %3827 = fadd fast float %3826, %3824
  %3828 = fmul fast float %3827, %3743
  br label %3829

; <label>:3829                                    ; preds = %3801, %3799, %3786, %3756, %3740
  %3830 = phi float [ %3741, %3740 ], [ %3818, %3801 ], [ %3741, %3799 ], [ %3796, %3786 ], [ %3766, %3756 ]
  %3831 = phi float [ %3742, %3740 ], [ %3823, %3801 ], [ %3742, %3799 ], [ %3797, %3786 ], [ %3767, %3756 ]
  %3832 = phi float [ %3743, %3740 ], [ %3828, %3801 ], [ %3743, %3799 ], [ %3798, %3786 ], [ %3768, %3756 ]
  %3833 = phi float [ %3744, %3740 ], [ %3744, %3801 ], [ %3744, %3799 ], [ %3744, %3786 ], [ %3778, %3756 ]
  %3834 = phi float [ %3745, %3740 ], [ %3745, %3801 ], [ %3745, %3799 ], [ %3745, %3786 ], [ %3779, %3756 ]
  %3835 = phi float [ %3746, %3740 ], [ %3746, %3801 ], [ %3746, %3799 ], [ %3746, %3786 ], [ %3780, %3756 ]
  %3836 = phi float [ %3043, %3740 ], [ %3043, %3801 ], [ %3043, %3799 ], [ %3043, %3786 ], [ %3771, %3756 ]
  %3837 = phi float [ %3047, %3740 ], [ %3047, %3801 ], [ %3047, %3799 ], [ %3047, %3786 ], [ %3783, %3756 ]
  %3838 = and i32 %3748, 12
  %3839 = icmp eq i32 %3838, 12
  br i1 %3839, label %3970, label %3840

; <label>:3840                                    ; preds = %3829
  %3841 = and i32 %3748, 2097184
  %3842 = icmp eq i32 %3841, 2097184
  %3843 = select i1 %3842, float %3230, float 0.000000e+00
  %3844 = and i32 %3748, 4194336
  %3845 = icmp eq i32 %3844, 4194336
  %3846 = select i1 %3845, float %3230, float 0.000000e+00
  %3847 = and i32 %3748, 8388640
  %3848 = icmp eq i32 %3847, 8388640
  %3849 = select i1 %3848, float %3230, float 0.000000e+00
  %3850 = and i32 %3748, 1024
  %3851 = icmp ne i32 %3850, 0
  %3852 = select i1 %3851, float %3230, float 0.000000e+00
  %3853 = and i32 %3748, 2048
  %3854 = icmp ne i32 %3853, 0
  %3855 = select i1 %3854, float %3230, float 0.000000e+00
  %3856 = and i32 %3748, 8192
  %3857 = icmp ne i32 %3856, 0
  %3858 = select i1 %3857, float %3230, float 0.000000e+00
  %3859 = icmp eq i32 %3838, 0
  br i1 %3859, label %3860, label %3894

; <label>:3860                                    ; preds = %3840
  %3861 = fsub fast float %3531, %3029
  %3862 = fsub fast float %3532, %3030
  %3863 = fmul fast float %3843, %3861
  %3864 = fmul fast float %3843, %3862
  %3865 = fadd fast float %3863, %3029
  %3866 = fadd fast float %3864, %3030
  %3867 = fsub fast float %3533, %3045
  %3868 = fmul fast float %3846, %3867
  %3869 = fadd fast float %3868, %3045
  %3870 = fsub fast float %3530, %3044
  %3871 = fmul fast float %3849, %3870
  %3872 = fadd fast float %3871, %3044
  %3873 = fsub fast float %3636, %3037
  %3874 = fsub fast float %3637, %3038
  %3875 = fsub fast float %3638, %3039
  %3876 = fmul fast float %3852, %3873
  %3877 = fmul fast float %3852, %3874
  %3878 = fmul fast float %3852, %3875
  %3879 = fadd fast float %3876, %3037
  %3880 = fadd fast float %3877, %3038
  %3881 = fadd fast float %3878, %3039
  %3882 = fsub fast float %3691, %3046
  %3883 = fmul fast float %3855, %3882
  %3884 = fadd fast float %3883, %3046
  %3885 = fsub fast float %3688, %3040
  %3886 = fsub fast float %3689, %3041
  %3887 = fsub fast float %3690, %3042
  %3888 = fmul fast float %3858, %3885
  %3889 = fmul fast float %3858, %3886
  %3890 = fmul fast float %3858, %3887
  %3891 = fadd fast float %3888, %3040
  %3892 = fadd fast float %3889, %3041
  %3893 = fadd fast float %3890, %3042
  br label %3970

; <label>:3894                                    ; preds = %3840
  %3895 = icmp eq i32 %3838, 4
  br i1 %3895, label %3896, label %3942

; <label>:3896                                    ; preds = %3894
  %3897 = fmul fast float %3843, %3531
  %3898 = fmul fast float %3843, %3532
  %3899 = fadd fast float %3897, %3029
  %3900 = fadd fast float %3898, %3030
  %3901 = call float @dx.op.binary.f32(i32 36, float %3045, float %3533)  ; FMin(a,b)
  %3902 = fsub fast float %3901, %3045
  %3903 = fmul fast float %3902, %3846
  %3904 = fadd fast float %3903, %3045
  %3905 = fadd fast float %3530, %3044
  %3906 = fmul fast float %3905, 0x3FF337FAE0000000
  %3907 = fmul fast float %3044, %3044
  %3908 = fmul fast float %3530, %3530
  %3909 = fadd fast float %3908, %3907
  %3910 = fmul fast float %3909, 0x3FE5152B00000000
  %3911 = fmul fast float %3044, 0xBFCC1F85E0000000
  %3912 = fmul fast float %3911, %3530
  %3913 = fadd fast float %3912, 0xBFE1363700000000
  %3914 = fadd fast float %3913, %3906
  %3915 = fsub fast float %3914, %3910
  %3916 = fmul fast float %3905, 0x3FBA6F0D00000000
  %3917 = fmul fast float %3909, 0x3FD0432880000000
  %3918 = fmul fast float %3044, 0xBFEF110800000000
  %3919 = fmul fast float %3918, %3530
  %3920 = fadd fast float %3919, 1.000000e+00
  %3921 = fsub fast float %3920, %3916
  %3922 = fadd fast float %3921, %3917
  %3923 = fdiv fast float %3915, %3922
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = fsub fast float %3924, %3044
  %3926 = fmul fast float %3925, %3849
  %3927 = fadd fast float %3926, %3044
  %3928 = fmul fast float %3852, %3636
  %3929 = fmul fast float %3852, %3637
  %3930 = fmul fast float %3852, %3638
  %3931 = fadd fast float %3928, %3037
  %3932 = fadd fast float %3929, %3038
  %3933 = fadd fast float %3930, %3039
  %3934 = fmul fast float %3855, %3691
  %3935 = fadd fast float %3934, %3046
  %3936 = fmul fast float %3858, %3688
  %3937 = fmul fast float %3858, %3689
  %3938 = fmul fast float %3858, %3690
  %3939 = fadd fast float %3936, %3040
  %3940 = fadd fast float %3937, %3041
  %3941 = fadd fast float %3938, %3042
  br label %3970

; <label>:3942                                    ; preds = %3894
  %3943 = icmp eq i32 %3838, 8
  br i1 %3943, label %3944, label %3970

; <label>:3944                                    ; preds = %3942
  %3945 = fmul fast float %3843, %3531
  %3946 = fmul fast float %3843, %3532
  %3947 = fadd fast float %3945, %3029
  %3948 = fadd fast float %3946, %3030
  %3949 = call float @dx.op.binary.f32(i32 36, float %3045, float %3533)  ; FMin(a,b)
  %3950 = fsub fast float %3949, %3045
  %3951 = fmul fast float %3950, %3846
  %3952 = fadd fast float %3951, %3045
  %3953 = fsub fast float %3530, %3044
  %3954 = fmul fast float %3849, %3953
  %3955 = fadd fast float %3954, %3044
  %3956 = fmul fast float %3852, %3636
  %3957 = fmul fast float %3852, %3637
  %3958 = fmul fast float %3852, %3638
  %3959 = fadd fast float %3956, %3037
  %3960 = fadd fast float %3957, %3038
  %3961 = fadd fast float %3958, %3039
  %3962 = fmul fast float %3855, %3691
  %3963 = fadd fast float %3962, %3046
  %3964 = fmul fast float %3858, %3688
  %3965 = fmul fast float %3858, %3689
  %3966 = fmul fast float %3858, %3690
  %3967 = fadd fast float %3964, %3040
  %3968 = fadd fast float %3965, %3041
  %3969 = fadd fast float %3966, %3042
  br label %3970

; <label>:3970                                    ; preds = %3944, %3942, %3896, %3860, %3829, %3229, %3048, %3028
  %3971 = phi float [ %3029, %3829 ], [ %3029, %3229 ], [ %3029, %3028 ], [ %3029, %3048 ], [ %3865, %3860 ], [ %3899, %3896 ], [ %3029, %3942 ], [ %3947, %3944 ]
  %3972 = phi float [ %3030, %3829 ], [ %3030, %3229 ], [ %3030, %3028 ], [ %3030, %3048 ], [ %3866, %3860 ], [ %3900, %3896 ], [ %3030, %3942 ], [ %3948, %3944 ]
  %3973 = phi float [ %3830, %3829 ], [ %3031, %3229 ], [ %3031, %3028 ], [ %3031, %3048 ], [ %3830, %3860 ], [ %3830, %3896 ], [ %3830, %3942 ], [ %3830, %3944 ]
  %3974 = phi float [ %3831, %3829 ], [ %3032, %3229 ], [ %3032, %3028 ], [ %3032, %3048 ], [ %3831, %3860 ], [ %3831, %3896 ], [ %3831, %3942 ], [ %3831, %3944 ]
  %3975 = phi float [ %3832, %3829 ], [ %3033, %3229 ], [ %3033, %3028 ], [ %3033, %3048 ], [ %3832, %3860 ], [ %3832, %3896 ], [ %3832, %3942 ], [ %3832, %3944 ]
  %3976 = phi float [ %3833, %3829 ], [ %3034, %3229 ], [ %3034, %3028 ], [ %3034, %3048 ], [ %3833, %3860 ], [ %3833, %3896 ], [ %3833, %3942 ], [ %3833, %3944 ]
  %3977 = phi float [ %3834, %3829 ], [ %3035, %3229 ], [ %3035, %3028 ], [ %3035, %3048 ], [ %3834, %3860 ], [ %3834, %3896 ], [ %3834, %3942 ], [ %3834, %3944 ]
  %3978 = phi float [ %3835, %3829 ], [ %3036, %3229 ], [ %3036, %3028 ], [ %3036, %3048 ], [ %3835, %3860 ], [ %3835, %3896 ], [ %3835, %3942 ], [ %3835, %3944 ]
  %3979 = phi float [ %3037, %3829 ], [ %3037, %3229 ], [ %3037, %3028 ], [ %3037, %3048 ], [ %3879, %3860 ], [ %3931, %3896 ], [ %3037, %3942 ], [ %3959, %3944 ]
  %3980 = phi float [ %3038, %3829 ], [ %3038, %3229 ], [ %3038, %3028 ], [ %3038, %3048 ], [ %3880, %3860 ], [ %3932, %3896 ], [ %3038, %3942 ], [ %3960, %3944 ]
  %3981 = phi float [ %3039, %3829 ], [ %3039, %3229 ], [ %3039, %3028 ], [ %3039, %3048 ], [ %3881, %3860 ], [ %3933, %3896 ], [ %3039, %3942 ], [ %3961, %3944 ]
  %3982 = phi float [ %3040, %3829 ], [ %3040, %3229 ], [ %3040, %3028 ], [ %3040, %3048 ], [ %3891, %3860 ], [ %3939, %3896 ], [ %3040, %3942 ], [ %3967, %3944 ]
  %3983 = phi float [ %3041, %3829 ], [ %3041, %3229 ], [ %3041, %3028 ], [ %3041, %3048 ], [ %3892, %3860 ], [ %3940, %3896 ], [ %3041, %3942 ], [ %3968, %3944 ]
  %3984 = phi float [ %3042, %3829 ], [ %3042, %3229 ], [ %3042, %3028 ], [ %3042, %3048 ], [ %3893, %3860 ], [ %3941, %3896 ], [ %3042, %3942 ], [ %3969, %3944 ]
  %3985 = phi float [ %3836, %3829 ], [ %3043, %3229 ], [ %3043, %3028 ], [ %3043, %3048 ], [ %3836, %3860 ], [ %3836, %3896 ], [ %3836, %3942 ], [ %3836, %3944 ]
  %3986 = phi float [ %3044, %3829 ], [ %3044, %3229 ], [ %3044, %3028 ], [ %3044, %3048 ], [ %3872, %3860 ], [ %3927, %3896 ], [ %3044, %3942 ], [ %3955, %3944 ]
  %3987 = phi float [ %3045, %3829 ], [ %3045, %3229 ], [ %3045, %3028 ], [ %3045, %3048 ], [ %3869, %3860 ], [ %3904, %3896 ], [ %3045, %3942 ], [ %3952, %3944 ]
  %3988 = phi float [ %3046, %3829 ], [ %3046, %3229 ], [ %3046, %3028 ], [ %3046, %3048 ], [ %3884, %3860 ], [ %3935, %3896 ], [ %3046, %3942 ], [ %3963, %3944 ]
  %3989 = phi float [ %3837, %3829 ], [ %3047, %3229 ], [ %3047, %3028 ], [ %3047, %3048 ], [ %3837, %3860 ], [ %3837, %3896 ], [ %3837, %3942 ], [ %3837, %3944 ]
  %3990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3991 = extractvalue %dx.types.CBufRet.f32 %3990, 0
  %3992 = call float @dx.op.dot2.f32(i32 54, float %3971, float %3972, float %3971, float %3972)  ; Dot2(ax,ay,bx,by)
  %3993 = fmul fast float %3992, 0x3FE3333340000000
  %3994 = fsub fast float 1.000000e+00, %3993
  %3995 = call float @dx.op.dot3.f32(i32 55, float %3971, float %3972, float %3994, float %3971, float %3972, float %3994)  ; Dot3(ax,ay,az,bx,by,bz)
  %3996 = call float @dx.op.unary.f32(i32 25, float %3995)  ; Rsqrt(value)
  %3997 = fmul fast float %3996, %3971
  %3998 = fmul fast float %3996, %3972
  %3999 = fmul fast float %3994, %3996
  %4000 = fmul fast float %3999, %114
  %4001 = fmul fast float %3999, %115
  %4002 = fmul fast float %3999, %116
  %4003 = fmul fast float %3997, %78
  %4004 = fmul fast float %3997, %79
  %4005 = fmul fast float %3997, %80
  %4006 = fadd fast float %4000, %4003
  %4007 = fadd fast float %4001, %4004
  %4008 = fadd fast float %4002, %4005
  %4009 = fmul fast float %126, %3998
  %4010 = fmul fast float %127, %3998
  %4011 = fmul fast float %128, %3998
  %4012 = fadd fast float %4006, %4009
  %4013 = fadd fast float %4007, %4010
  %4014 = fadd fast float %4008, %4011
  %4015 = call float @dx.op.dot3.f32(i32 55, float %4012, float %4013, float %4014, float %4012, float %4013, float %4014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = call float @dx.op.unary.f32(i32 25, float %4015)  ; Rsqrt(value)
  %4017 = fmul fast float %4012, %4016
  %4018 = fmul fast float %4013, %4016
  %4019 = fmul fast float %4014, %4016
  %4020 = icmp eq i32 %49, 65535
  br i1 %4020, label %4619, label %4021

; <label>:4021                                    ; preds = %3970
  %4022 = call float @dx.op.unary.f32(i32 83, float %50)  ; DerivCoarseX(value)
  %4023 = call float @dx.op.unary.f32(i32 83, float %51)  ; DerivCoarseX(value)
  %4024 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4025 = call float @dx.op.unary.f32(i32 84, float %50)  ; DerivCoarseY(value)
  %4026 = call float @dx.op.unary.f32(i32 84, float %51)  ; DerivCoarseY(value)
  %4027 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4028 = fadd fast float %4022, %50
  %4029 = fadd fast float %4023, %51
  %4030 = fadd fast float %4024, %52
  %4031 = fadd fast float %4025, %50
  %4032 = fadd fast float %4026, %51
  %4033 = fadd fast float %4027, %52
  %4034 = mul i32 %49, 48
  %4035 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4034, i32 undef)  ; BufferLoad(srv,index,wot)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = add i32 %4034, 16
  %4040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = extractvalue %dx.types.ResRet.f32 %4040, 1
  %4043 = extractvalue %dx.types.ResRet.f32 %4040, 2
  %4044 = add i32 %4034, 32
  %4045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4044, i32 undef)  ; BufferLoad(srv,index,wot)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = extractvalue %dx.types.ResRet.f32 %4045, 3
  %4050 = bitcast float %4049 to i32
  %4051 = fmul fast float %4036, %50
  %4052 = fmul fast float %4037, %51
  %4053 = fmul fast float %4038, %52
  %4054 = fsub fast float %4051, %4041
  %4055 = fsub fast float %4052, %4042
  %4056 = fsub fast float %4053, %4043
  %4057 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4060 = fmul fast float %4057, %4046
  %4061 = fmul fast float %4058, %4047
  %4062 = fmul fast float %4059, %4048
  %4063 = fadd fast float %4046, -1.000000e+00
  %4064 = fadd fast float %4047, -1.000000e+00
  %4065 = fadd fast float %4048, -1.000000e+00
  %4066 = call float @dx.op.unary.f32(i32 27, float %4060)  ; Round_ni(value)
  %4067 = call float @dx.op.unary.f32(i32 27, float %4061)  ; Round_ni(value)
  %4068 = call float @dx.op.unary.f32(i32 27, float %4062)  ; Round_ni(value)
  %4069 = call float @dx.op.binary.f32(i32 36, float %4066, float %4063)  ; FMin(a,b)
  %4070 = call float @dx.op.binary.f32(i32 36, float %4067, float %4064)  ; FMin(a,b)
  %4071 = call float @dx.op.binary.f32(i32 36, float %4068, float %4065)  ; FMin(a,b)
  %4072 = fmul fast float %4071, %4047
  %4073 = fadd fast float %4072, %4070
  %4074 = fmul fast float %4073, %4046
  %4075 = fadd fast float %4074, %4069
  %4076 = fptosi float %4075 to i32
  %4077 = add nsw i32 %4076, %4050
  %4078 = shl nsw i32 %4077, 2
  %4079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4078, i32 undef)  ; BufferLoad(srv,index,wot)
  %4080 = extractvalue %dx.types.ResRet.i32 %4079, 0
  %4081 = lshr i32 %4080, 16
  %4082 = icmp eq i32 %4081, 0
  br i1 %4082, label %4582, label %4083

; <label>:4083                                    ; preds = %4021
  br label %4084

; <label>:4084                                    ; preds = %4211, %4083
  %4085 = phi i32 [ %4113, %4211 ], [ %4081, %4083 ]
  %4086 = phi float [ %4212, %4211 ], [ 0.000000e+00, %4083 ]
  %4087 = phi float [ %4213, %4211 ], [ %3991, %4083 ]
  %4088 = phi float [ %4214, %4211 ], [ %3989, %4083 ]
  %4089 = phi float [ %4215, %4211 ], [ %3979, %4083 ]
  %4090 = phi float [ %4216, %4211 ], [ %3980, %4083 ]
  %4091 = phi float [ %4217, %4211 ], [ %3981, %4083 ]
  %4092 = phi float [ %4218, %4211 ], [ 0.000000e+00, %4083 ]
  %4093 = phi float [ %4219, %4211 ], [ 0.000000e+00, %4083 ]
  %4094 = phi float [ %4220, %4211 ], [ %3982, %4083 ]
  %4095 = phi float [ %4221, %4211 ], [ %3983, %4083 ]
  %4096 = phi float [ %4222, %4211 ], [ %3984, %4083 ]
  %4097 = phi float [ %4223, %4211 ], [ %3976, %4083 ]
  %4098 = phi float [ %4224, %4211 ], [ %3977, %4083 ]
  %4099 = phi float [ %4225, %4211 ], [ %3978, %4083 ]
  %4100 = phi float [ %4226, %4211 ], [ %4017, %4083 ]
  %4101 = phi float [ %4227, %4211 ], [ %4018, %4083 ]
  %4102 = phi float [ %4228, %4211 ], [ %4019, %4083 ]
  %4103 = phi float [ %4229, %4211 ], [ %3987, %4083 ]
  %4104 = phi float [ %4230, %4211 ], [ %3986, %4083 ]
  %4105 = phi float [ %4231, %4211 ], [ 0.000000e+00, %4083 ]
  %4106 = phi float [ %4232, %4211 ], [ %3985, %4083 ]
  %4107 = phi float [ %4233, %4211 ], [ %3973, %4083 ]
  %4108 = phi float [ %4234, %4211 ], [ %3974, %4083 ]
  %4109 = phi float [ %4235, %4211 ], [ %3975, %4083 ]
  %4110 = shl nuw nsw i32 %4085, 2
  %4111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4110, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.i32 %4111, 0
  %4113 = lshr i32 %4112, 16
  %4114 = shl i32 %4112, 8
  %4115 = and i32 %4114, 16776960
  %4116 = or i32 %4115, 48
  %4117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = extractvalue %dx.types.ResRet.f32 %4117, 1
  %4120 = extractvalue %dx.types.ResRet.f32 %4117, 2
  %4121 = or i32 %4115, 64
  %4122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.i32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.i32 %4122, 1
  %4125 = or i32 %4115, 80
  %4126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 2
  %4128 = extractvalue %dx.types.ResRet.f32 %4126, 3
  %4129 = or i32 %4115, 96
  %4130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = extractvalue %dx.types.ResRet.f32 %4130, 3
  %4135 = or i32 %4115, 112
  %4136 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4135, i32 undef)  ; BufferLoad(srv,index,wot)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 2
  %4138 = or i32 %4115, 128
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4144 = or i32 %4115, 144
  %4145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4144, i32 undef)  ; BufferLoad(srv,index,wot)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = extractvalue %dx.types.ResRet.f32 %4145, 3
  %4150 = or i32 %4115, 160
  %4151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4150, i32 undef)  ; BufferLoad(srv,index,wot)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = extractvalue %dx.types.ResRet.f32 %4151, 1
  %4154 = extractvalue %dx.types.ResRet.f32 %4151, 2
  %4155 = extractvalue %dx.types.ResRet.f32 %4151, 3
  %4156 = or i32 %4115, 192
  %4157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4156, i32 undef)  ; BufferLoad(srv,index,wot)
  %4158 = extractvalue %dx.types.ResRet.i32 %4157, 0
  %4159 = or i32 %4115, 208
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = or i32 %4115, 248
  %4163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4162, i32 undef)  ; BufferLoad(srv,index,wot)
  %4164 = extractvalue %dx.types.ResRet.f32 %4163, 0
  %4165 = extractvalue %dx.types.ResRet.f32 %4163, 1
  %4166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4115, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.ResRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.ResRet.f32 %4166, 2
  %4170 = extractvalue %dx.types.ResRet.f32 %4166, 3
  %4171 = call float @dx.op.dot4.f32(i32 56, float %4167, float %4168, float %4169, float %4170, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4172 = or i32 %4115, 16
  %4173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = extractvalue %dx.types.ResRet.f32 %4173, 3
  %4178 = call float @dx.op.dot4.f32(i32 56, float %4174, float %4175, float %4176, float %4177, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4179 = or i32 %4115, 32
  %4180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.ResRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.ResRet.f32 %4180, 2
  %4184 = extractvalue %dx.types.ResRet.f32 %4180, 3
  %4185 = call float @dx.op.dot4.f32(i32 56, float %4181, float %4182, float %4183, float %4184, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4186 = call float @dx.op.unary.f32(i32 27, float %4171)  ; Round_ni(value)
  %4187 = call float @dx.op.unary.f32(i32 6, float %4186)  ; FAbs(value)
  %4188 = call float @dx.op.unary.f32(i32 27, float %4178)  ; Round_ni(value)
  %4189 = call float @dx.op.unary.f32(i32 6, float %4188)  ; FAbs(value)
  %4190 = call float @dx.op.unary.f32(i32 6, float %4185)  ; FAbs(value)
  %4191 = call float @dx.op.unary.f32(i32 27, float %4190)  ; Round_ni(value)
  %4192 = fadd fast float %4189, %4187
  %4193 = fadd fast float %4192, %4191
  %4194 = fcmp fast oeq float %4193, 0.000000e+00
  %4195 = call float @dx.op.dot4.f32(i32 56, float %4167, float %4168, float %4169, float %4170, float %4028, float %4029, float %4030, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4196 = call float @dx.op.dot4.f32(i32 56, float %4174, float %4175, float %4176, float %4177, float %4028, float %4029, float %4030, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4197 = call float @dx.op.dot4.f32(i32 56, float %4167, float %4168, float %4169, float %4170, float %4031, float %4032, float %4033, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4198 = call float @dx.op.dot4.f32(i32 56, float %4174, float %4175, float %4176, float %4177, float %4031, float %4032, float %4033, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4199 = fsub fast float %4195, %4171
  %4200 = fsub fast float %4197, %4171
  %4201 = fsub fast float %4196, %4178
  %4202 = fsub fast float %4198, %4178
  %4203 = call float @dx.op.dot3.f32(i32 55, float %4118, float %4119, float %4120, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 2
  %4206 = fadd fast float %4205, %4203
  %4207 = call float @dx.op.unary.f32(i32 7, float %4206)  ; Saturate(value)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4204, 0
  %4209 = fcmp fast ogt float %4207, %4208
  %4210 = and i1 %4194, %4209
  br i1 %4210, label %4237, label %4211

; <label>:4211                                    ; preds = %4568, %4320, %4237, %4084
  %4212 = phi float [ %4086, %4237 ], [ %4323, %4320 ], [ %4323, %4568 ], [ %4086, %4084 ]
  %4213 = phi float [ %4087, %4237 ], [ %4087, %4320 ], [ %4544, %4568 ], [ %4087, %4084 ]
  %4214 = phi float [ %4088, %4237 ], [ %4088, %4320 ], [ %4542, %4568 ], [ %4088, %4084 ]
  %4215 = phi float [ %4089, %4237 ], [ %4089, %4320 ], [ %4520, %4568 ], [ %4089, %4084 ]
  %4216 = phi float [ %4090, %4237 ], [ %4090, %4320 ], [ %4521, %4568 ], [ %4090, %4084 ]
  %4217 = phi float [ %4091, %4237 ], [ %4091, %4320 ], [ %4522, %4568 ], [ %4091, %4084 ]
  %4218 = phi float [ %4092, %4237 ], [ %4092, %4320 ], [ %4447, %4568 ], [ %4092, %4084 ]
  %4219 = phi float [ %4093, %4237 ], [ %4093, %4320 ], [ %4445, %4568 ], [ %4093, %4084 ]
  %4220 = phi float [ %4094, %4237 ], [ %4094, %4320 ], [ %4490, %4568 ], [ %4094, %4084 ]
  %4221 = phi float [ %4095, %4237 ], [ %4095, %4320 ], [ %4491, %4568 ], [ %4095, %4084 ]
  %4222 = phi float [ %4096, %4237 ], [ %4096, %4320 ], [ %4492, %4568 ], [ %4096, %4084 ]
  %4223 = phi float [ %4097, %4237 ], [ %4097, %4320 ], [ %4578, %4568 ], [ %4097, %4084 ]
  %4224 = phi float [ %4098, %4237 ], [ %4098, %4320 ], [ %4579, %4568 ], [ %4098, %4084 ]
  %4225 = phi float [ %4099, %4237 ], [ %4099, %4320 ], [ %4580, %4568 ], [ %4099, %4084 ]
  %4226 = phi float [ %4100, %4237 ], [ %4100, %4320 ], [ %4426, %4568 ], [ %4100, %4084 ]
  %4227 = phi float [ %4101, %4237 ], [ %4101, %4320 ], [ %4427, %4568 ], [ %4101, %4084 ]
  %4228 = phi float [ %4102, %4237 ], [ %4102, %4320 ], [ %4428, %4568 ], [ %4102, %4084 ]
  %4229 = phi float [ %4103, %4237 ], [ %4103, %4320 ], [ %4500, %4568 ], [ %4103, %4084 ]
  %4230 = phi float [ %4104, %4237 ], [ %4104, %4320 ], [ %4497, %4568 ], [ %4104, %4084 ]
  %4231 = phi float [ %4105, %4237 ], [ %4105, %4320 ], [ %4494, %4568 ], [ %4105, %4084 ]
  %4232 = phi float [ %4106, %4237 ], [ %4106, %4320 ], [ %4443, %4568 ], [ %4106, %4084 ]
  %4233 = phi float [ %4107, %4237 ], [ %4107, %4320 ], [ %4438, %4568 ], [ %4107, %4084 ]
  %4234 = phi float [ %4108, %4237 ], [ %4108, %4320 ], [ %4439, %4568 ], [ %4108, %4084 ]
  %4235 = phi float [ %4109, %4237 ], [ %4109, %4320 ], [ %4440, %4568 ], [ %4109, %4084 ]
  %4236 = icmp eq i32 %4113, 0
  br i1 %4236, label %4581, label %4084

; <label>:4237                                    ; preds = %4084
  %4238 = extractvalue %dx.types.ResRet.f32 %4117, 3
  %4239 = extractvalue %dx.types.ResRet.f32 %4136, 3
  %4240 = extractvalue %dx.types.ResRet.f32 %4136, 1
  %4241 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4242 = extractvalue %dx.types.ResRet.f32 %4126, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4244 = extractvalue %dx.types.ResRet.i32 %4122, 3
  %4245 = extractvalue %dx.types.ResRet.i32 %4122, 2
  %4246 = bitcast float %4238 to i32
  %4247 = add i32 %4244, 0
  %4248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4247, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4250 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4248, %dx.types.Handle %4249, float %4171, float %4178, float undef, float undef, i32 0, i32 0, i32 undef, float %4199, float %4201, float undef, float %4200, float %4202, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = fmul fast float %4251, %4243
  %4253 = fadd fast float %4252, %4242
  %4254 = call float @dx.op.unary.f32(i32 7, float %4253)  ; Saturate(value)
  %4255 = fmul fast float %4171, %4131
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4178, float %4255)  ; FMad(a,b,c)
  %4257 = fadd fast float %4256, %4241
  %4258 = fmul fast float %4171, %4133
  %4259 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4178, float %4258)  ; FMad(a,b,c)
  %4260 = fadd fast float %4259, %4240
  %4261 = fmul fast float %4199, %4131
  %4262 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4201, float %4261)  ; FMad(a,b,c)
  %4263 = fmul fast float %4199, %4133
  %4264 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4201, float %4263)  ; FMad(a,b,c)
  %4265 = fmul fast float %4200, %4131
  %4266 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4202, float %4265)  ; FMad(a,b,c)
  %4267 = fmul fast float %4200, %4133
  %4268 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4202, float %4267)  ; FMad(a,b,c)
  %4269 = add i32 %4245, 0
  %4270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4269, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4271 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4270, %dx.types.Handle %4249, float %4257, float %4260, float undef, float undef, i32 0, i32 0, i32 undef, float %4262, float %4264, float undef, float %4266, float %4268, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = and i32 %4246, 1024
  %4274 = icmp ne i32 %4273, 0
  %4275 = fcmp fast ogt float %4272, 0x3FE0101020000000
  %4276 = uitofp i1 %4275 to float
  %4277 = select i1 %4274, float %4276, float %4272
  %4278 = and i32 %4246, 8192
  %4279 = icmp ne i32 %4278, 0
  %4280 = select i1 %4279, float %4239, float 1.000000e+00
  %4281 = fmul fast float %4171, 2.000000e+00
  %4282 = fadd fast float %4281, -1.000000e+00
  %4283 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4284 = fmul fast float %4283, %4164
  %4285 = fsub fast float %4284, %4164
  %4286 = call float @dx.op.unary.f32(i32 7, float %4285)  ; Saturate(value)
  %4287 = fmul fast float %4178, 2.000000e+00
  %4288 = fadd fast float %4287, -1.000000e+00
  %4289 = call float @dx.op.unary.f32(i32 6, float %4288)  ; FAbs(value)
  %4290 = fmul fast float %4289, %4165
  %4291 = fsub fast float %4290, %4165
  %4292 = call float @dx.op.unary.f32(i32 7, float %4291)  ; Saturate(value)
  %4293 = fmul fast float %4190, %4127
  %4294 = fsub fast float %4293, %4127
  %4295 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4296 = fmul fast float %4254, %4280
  %4297 = fmul fast float %4296, %4251
  %4298 = fmul fast float %4297, %4286
  %4299 = fmul fast float %4298, %4277
  %4300 = fmul fast float %4299, %4292
  %4301 = fmul fast float %4300, %4295
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4305 = fsub fast float %4207, %4304
  %4306 = fmul fast float %4305, %4303
  %4307 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4308 = fmul fast float %4301, %4128
  %4309 = fadd fast float %4301, %4128
  %4310 = fmul fast float %4309, %4137
  %4311 = fsub fast float %4310, %4137
  %4312 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4313 = and i32 %4246, 128
  %4314 = icmp ne i32 %4313, 0
  %4315 = select i1 %4314, float %4312, float %4308
  %4316 = fmul fast float %4315, %4307
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 0
  %4319 = fcmp fast ugt float %4316, %4318
  br i1 %4319, label %4320, label %4211

; <label>:4320                                    ; preds = %4237
  %4321 = select i1 %4279, float %4316, float 0.000000e+00
  %4322 = fadd fast float %4321, %4086
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  br i1 %4279, label %4211, label %4324

; <label>:4324                                    ; preds = %4320
  %4325 = and i32 %4246, 4
  %4326 = and i32 %4246, 8
  %4327 = add i32 %4123, 0
  %4328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4329 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4330 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4328, %dx.types.Handle %4329, float %4257, float %4260, float undef, float undef, i32 0, i32 0, i32 undef, float %4262, float %4264, float undef, float %4266, float %4268, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4331 = extractvalue %dx.types.ResRet.f32 %4330, 0
  %4332 = extractvalue %dx.types.ResRet.f32 %4330, 1
  %4333 = extractvalue %dx.types.ResRet.f32 %4330, 2
  %4334 = extractvalue %dx.types.ResRet.f32 %4330, 3
  %4335 = bitcast float %4149 to i32
  %4336 = and i32 %4335, 255
  %4337 = uitofp i32 %4336 to float
  %4338 = lshr i32 %4335, 8
  %4339 = and i32 %4338, 255
  %4340 = uitofp i32 %4339 to float
  %4341 = fmul fast float %4334, %4337
  %4342 = fadd fast float %4341, %4340
  %4343 = fmul fast float %4342, 0x3F70101000000000
  %4344 = add i32 %4124, 0
  %4345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4344, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4346 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4345, %dx.types.Handle %4329, float %4257, float %4260, float undef, float undef, i32 0, i32 0, i32 undef, float %4262, float %4264, float undef, float %4266, float %4268, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = extractvalue %dx.types.ResRet.f32 %4346, 1
  %4349 = extractvalue %dx.types.ResRet.f32 %4346, 2
  %4350 = extractvalue %dx.types.ResRet.f32 %4346, 3
  %4351 = bitcast float %4143 to i32
  %4352 = and i32 %4351, 255
  %4353 = uitofp i32 %4352 to float
  %4354 = lshr i32 %4351, 8
  %4355 = and i32 %4354, 255
  %4356 = uitofp i32 %4355 to float
  %4357 = lshr i32 %4351, 16
  %4358 = and i32 %4357, 255
  %4359 = uitofp i32 %4358 to float
  %4360 = fmul fast float %4359, 0x3F70101000000000
  %4361 = fmul fast float %4347, %4353
  %4362 = fadd fast float %4361, %4356
  %4363 = fmul fast float %4362, 0x3F70101000000000
  %4364 = fadd fast float %4348, -5.000000e-01
  %4365 = fadd fast float %4350, -5.000000e-01
  %4366 = fmul fast float %4364, %4360
  %4367 = fmul fast float %4365, %4360
  %4368 = fadd fast float %4366, 5.000000e-01
  %4369 = fadd fast float %4367, 5.000000e-01
  %4370 = fmul fast float %4331, %4152
  %4371 = fmul fast float %4332, %4153
  %4372 = fmul fast float %4333, %4154
  %4373 = fmul fast float %4368, 2.000000e+00
  %4374 = fadd fast float %4373, -1.000000e+00
  %4375 = fmul fast float %4369, 2.000000e+00
  %4376 = fadd fast float %4375, -1.000000e+00
  %4377 = fadd fast float %4374, %4376
  %4378 = fmul fast float %4377, 5.000000e-01
  %4379 = fsub fast float %4374, %4376
  %4380 = fmul fast float %4379, 5.000000e-01
  %4381 = call float @dx.op.unary.f32(i32 6, float %4378)  ; FAbs(value)
  %4382 = fsub fast float 1.000000e+00, %4381
  %4383 = call float @dx.op.unary.f32(i32 6, float %4380)  ; FAbs(value)
  %4384 = fsub fast float %4382, %4383
  %4385 = call float @dx.op.dot3.f32(i32 55, float %4378, float %4380, float %4384, float %4378, float %4380, float %4384)  ; Dot3(ax,ay,az,bx,by,bz)
  %4386 = call float @dx.op.unary.f32(i32 25, float %4385)  ; Rsqrt(value)
  %4387 = fmul fast float %4378, %4386
  %4388 = fmul fast float %4380, %4386
  %4389 = fmul fast float %4386, %4384
  %4390 = fmul fast float %4389, %4118
  %4391 = fmul fast float %4389, %4119
  %4392 = fmul fast float %4389, %4120
  %4393 = fmul fast float %4387, %4140
  %4394 = fmul fast float %4387, %4141
  %4395 = fmul fast float %4387, %4142
  %4396 = fadd fast float %4393, %4390
  %4397 = fadd fast float %4394, %4391
  %4398 = fadd fast float %4395, %4392
  %4399 = fmul fast float %4388, %4146
  %4400 = fmul fast float %4388, %4147
  %4401 = fmul fast float %4388, %4148
  %4402 = fadd fast float %4396, %4399
  %4403 = fadd fast float %4397, %4400
  %4404 = fadd fast float %4398, %4401
  %4405 = call float @dx.op.dot3.f32(i32 55, float %4402, float %4403, float %4404, float %4402, float %4403, float %4404)  ; Dot3(ax,ay,az,bx,by,bz)
  %4406 = call float @dx.op.unary.f32(i32 25, float %4405)  ; Rsqrt(value)
  %4407 = fmul fast float %4402, %4406
  %4408 = fmul fast float %4403, %4406
  %4409 = fmul fast float %4404, %4406
  %4410 = icmp ne i32 %4326, 0
  %4411 = select i1 %4410, float 1.000000e+00, float 0.000000e+00
  %4412 = fmul fast float %4316, %4411
  %4413 = and i32 %4246, 1
  %4414 = icmp eq i32 %4413, 0
  br i1 %4414, label %4415, label %4419

; <label>:4415                                    ; preds = %4324
  %4416 = fsub fast float %4407, %4100
  %4417 = fsub fast float %4408, %4101
  %4418 = fsub fast float %4409, %4102
  br label %4419

; <label>:4419                                    ; preds = %4415, %4324
  %4420 = phi float [ %4416, %4415 ], [ %4407, %4324 ]
  %4421 = phi float [ %4417, %4415 ], [ %4408, %4324 ]
  %4422 = phi float [ %4418, %4415 ], [ %4409, %4324 ]
  %4423 = fmul float %4422, %4412
  %4424 = fmul float %4421, %4412
  %4425 = fmul float %4420, %4412
  %4426 = fadd fast float %4425, %4100
  %4427 = fadd fast float %4424, %4101
  %4428 = fadd fast float %4423, %4102
  %4429 = icmp ne i32 %4325, 0
  %4430 = select i1 %4429, float 1.000000e+00, float 0.000000e+00
  %4431 = fmul fast float %4316, %4430
  %4432 = fsub fast float %4370, %4107
  %4433 = fsub fast float %4371, %4108
  %4434 = fsub fast float %4372, %4109
  %4435 = fmul fast float %4432, %4431
  %4436 = fmul fast float %4433, %4431
  %4437 = fmul fast float %4434, %4431
  %4438 = fadd fast float %4435, %4107
  %4439 = fadd fast float %4436, %4108
  %4440 = fadd fast float %4437, %4109
  %4441 = fsub fast float %4343, %4106
  %4442 = fmul fast float %4441, %4431
  %4443 = fadd fast float %4442, %4106
  %4444 = fmul fast float %4431, %4093
  %4445 = fsub fast float %4093, %4444
  %4446 = fmul fast float %4431, %4092
  %4447 = fsub fast float %4092, %4446
  %4448 = bitcast float %4161 to i32
  %4449 = lshr i32 %4448, 16
  %4450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4449)  ; LegacyF16ToF32(value)
  %4451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.i32 %4451, 0
  %4453 = and i32 %4452, 1
  %4454 = icmp eq i32 %4453, 0
  br i1 %4454, label %4455, label %4480

; <label>:4455                                    ; preds = %4419
  %4456 = fadd fast float %4343, 0xBFB99999A0000000
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = fmul fast float %4457, 0x3FF1C71C80000000
  %4459 = fsub fast float 1.000000e+00, %4458
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fmul fast float %4460, %4370
  %4462 = fmul fast float %4460, %4371
  %4463 = fmul fast float %4460, %4372
  %4464 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4465 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4466 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4467 = call float @dx.op.binary.f32(i32 35, float %4465, float %4466)  ; FMax(a,b)
  %4468 = call float @dx.op.binary.f32(i32 35, float %4464, float %4467)  ; FMax(a,b)
  %4469 = fcmp fast ogt float %4468, 0.000000e+00
  %4470 = bitcast float %4468 to i32
  %4471 = sub nsw i32 2129859010, %4470
  %4472 = bitcast i32 %4471 to float
  %4473 = select i1 %4469, float %4472, float 0.000000e+00
  %4474 = fmul fast float %4464, %4450
  %4475 = fmul fast float %4465, %4450
  %4476 = fmul fast float %4466, %4450
  %4477 = fmul fast float %4474, %4473
  %4478 = fmul fast float %4475, %4473
  %4479 = fmul fast float %4476, %4473
  br label %4480

; <label>:4480                                    ; preds = %4455, %4419
  %4481 = phi float [ %4450, %4419 ], [ %4477, %4455 ]
  %4482 = phi float [ %4450, %4419 ], [ %4478, %4455 ]
  %4483 = phi float [ %4450, %4419 ], [ %4479, %4455 ]
  %4484 = fsub fast float %4481, %4094
  %4485 = fsub fast float %4482, %4095
  %4486 = fsub fast float %4483, %4096
  %4487 = fmul fast float %4484, %4431
  %4488 = fmul fast float %4485, %4431
  %4489 = fmul fast float %4486, %4431
  %4490 = fadd fast float %4487, %4094
  %4491 = fadd fast float %4488, %4095
  %4492 = fadd fast float %4489, %4096
  %4493 = fadd fast float %4316, %4105
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fsub fast float %4363, %4104
  %4496 = fmul fast float %4495, %4412
  %4497 = fadd fast float %4496, %4104
  %4498 = fsub fast float %4349, %4103
  %4499 = fmul fast float %4498, %4412
  %4500 = fadd fast float %4499, %4103
  br i1 %4414, label %4509, label %4501

; <label>:4501                                    ; preds = %4480
  %4502 = and i32 %4246, 32768
  %4503 = icmp eq i32 %4502, 0
  br i1 %4503, label %4519, label %4504

; <label>:4504                                    ; preds = %4501
  %4505 = fmul fast float %4412, 1.270000e+02
  %4506 = fadd fast float %4505, %4089
  %4507 = fadd fast float %4505, %4090
  %4508 = fadd fast float %4505, %4091
  br label %4519

; <label>:4509                                    ; preds = %4480
  %4510 = fsub fast float 1.270000e+02, %4089
  %4511 = fsub fast float 1.270000e+02, %4090
  %4512 = fsub fast float 1.270000e+02, %4091
  %4513 = fmul fast float %4412, %4510
  %4514 = fmul fast float %4412, %4511
  %4515 = fmul fast float %4412, %4512
  %4516 = fadd fast float %4513, %4089
  %4517 = fadd fast float %4514, %4090
  %4518 = fadd fast float %4515, %4091
  br label %4519

; <label>:4519                                    ; preds = %4509, %4504, %4501
  %4520 = phi float [ %4506, %4504 ], [ %4089, %4501 ], [ %4516, %4509 ]
  %4521 = phi float [ %4507, %4504 ], [ %4090, %4501 ], [ %4517, %4509 ]
  %4522 = phi float [ %4508, %4504 ], [ %4091, %4501 ], [ %4518, %4509 ]
  %4523 = call float @dx.op.dot3.f32(i32 55, float %4370, float %4371, float %4372, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4525 = extractvalue %dx.types.CBufRet.f32 %4524, 0
  %4526 = extractvalue %dx.types.CBufRet.f32 %4524, 1
  %4527 = fmul fast float %4526, %4523
  %4528 = fadd fast float %4527, %4525
  %4529 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4530 = bitcast float %4155 to i32
  %4531 = and i32 %4530, 65535
  %4532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4531)  ; LegacyF16ToF32(value)
  %4533 = lshr i32 %4530, 16
  %4534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4533)  ; LegacyF16ToF32(value)
  %4535 = fcmp fast oge float %4532, 0.000000e+00
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4538 = select i1 %4535, float %4532, float %4537
  %4539 = fadd fast float %4538, %4534
  %4540 = fsub fast float %4529, %4088
  %4541 = fmul fast float %4540, %4316
  %4542 = fadd fast float %4541, %4088
  %4543 = fmul fast float %4539, %4316
  %4544 = call float @dx.op.binary.f32(i32 35, float %4087, float %4543)  ; FMax(a,b)
  %4545 = and i32 %4246, 16
  %4546 = icmp eq i32 %4545, 0
  br i1 %4546, label %4568, label %4547

; <label>:4547                                    ; preds = %4519
  %4548 = add i32 %4158, 0
  %4549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4548, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4550 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4549, %dx.types.Handle %4329, float %4257, float %4260, float undef, float undef, i32 0, i32 0, i32 undef, float %4262, float %4264, float undef, float %4266, float %4268, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 0
  %4552 = extractvalue %dx.types.ResRet.f32 %4550, 1
  %4553 = extractvalue %dx.types.ResRet.f32 %4550, 2
  %4554 = and i32 %4448, 65535
  %4555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4554)  ; LegacyF16ToF32(value)
  %4556 = fmul fast float %4551, %4152
  %4557 = fmul fast float %4552, %4153
  %4558 = fmul fast float %4553, %4154
  %4559 = and i32 %4246, 16384
  %4560 = icmp ne i32 %4559, 0
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = select i1 %4560, float %4562, float 1.000000e+00
  %4564 = fmul fast float %4563, %4555
  %4565 = fmul fast float %4556, %4564
  %4566 = fmul fast float %4557, %4564
  %4567 = fmul fast float %4558, %4564
  br label %4568

; <label>:4568                                    ; preds = %4547, %4519
  %4569 = phi float [ %4565, %4547 ], [ 0.000000e+00, %4519 ]
  %4570 = phi float [ %4566, %4547 ], [ 0.000000e+00, %4519 ]
  %4571 = phi float [ %4567, %4547 ], [ 0.000000e+00, %4519 ]
  %4572 = fsub fast float %4569, %4097
  %4573 = fsub fast float %4570, %4098
  %4574 = fsub fast float %4571, %4099
  %4575 = fmul fast float %4572, %4316
  %4576 = fmul fast float %4573, %4316
  %4577 = fmul fast float %4574, %4316
  %4578 = fadd fast float %4575, %4097
  %4579 = fadd fast float %4576, %4098
  %4580 = fadd fast float %4577, %4099
  br label %4211

; <label>:4581                                    ; preds = %4211
  br label %4582

; <label>:4582                                    ; preds = %4581, %4021
  %4583 = phi float [ 0.000000e+00, %4021 ], [ %4212, %4581 ]
  %4584 = phi float [ %3991, %4021 ], [ %4213, %4581 ]
  %4585 = phi float [ %3989, %4021 ], [ %4214, %4581 ]
  %4586 = phi float [ %3979, %4021 ], [ %4215, %4581 ]
  %4587 = phi float [ %3980, %4021 ], [ %4216, %4581 ]
  %4588 = phi float [ %3981, %4021 ], [ %4217, %4581 ]
  %4589 = phi float [ 0.000000e+00, %4021 ], [ %4218, %4581 ]
  %4590 = phi float [ 0.000000e+00, %4021 ], [ %4219, %4581 ]
  %4591 = phi float [ %3982, %4021 ], [ %4220, %4581 ]
  %4592 = phi float [ %3983, %4021 ], [ %4221, %4581 ]
  %4593 = phi float [ %3984, %4021 ], [ %4222, %4581 ]
  %4594 = phi float [ %3976, %4021 ], [ %4223, %4581 ]
  %4595 = phi float [ %3977, %4021 ], [ %4224, %4581 ]
  %4596 = phi float [ %3978, %4021 ], [ %4225, %4581 ]
  %4597 = phi float [ %4017, %4021 ], [ %4226, %4581 ]
  %4598 = phi float [ %4018, %4021 ], [ %4227, %4581 ]
  %4599 = phi float [ %4019, %4021 ], [ %4228, %4581 ]
  %4600 = phi float [ %3987, %4021 ], [ %4229, %4581 ]
  %4601 = phi float [ %3986, %4021 ], [ %4230, %4581 ]
  %4602 = phi float [ 0.000000e+00, %4021 ], [ %4231, %4581 ]
  %4603 = phi float [ %3985, %4021 ], [ %4232, %4581 ]
  %4604 = phi float [ %3973, %4021 ], [ %4233, %4581 ]
  %4605 = phi float [ %3974, %4021 ], [ %4234, %4581 ]
  %4606 = phi float [ %3975, %4021 ], [ %4235, %4581 ]
  %4607 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %4597, float %4598, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %4608 = call float @dx.op.unary.f32(i32 25, float %4607)  ; Rsqrt(value)
  %4609 = fmul fast float %4608, %4597
  %4610 = fmul fast float %4608, %4598
  %4611 = fmul fast float %4608, %4599
  %4612 = fadd fast float %4602, %1159
  %4613 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4614 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4615 = call float @dx.op.unary.f32(i32 25, float %4614)  ; Rsqrt(value)
  %4616 = fmul fast float %4615, %4609
  %4617 = fmul fast float %4615, %4610
  %4618 = fmul fast float %4615, %4611
  br label %4619

; <label>:4619                                    ; preds = %4582, %3970
  %4620 = phi float [ %4616, %4582 ], [ %4017, %3970 ]
  %4621 = phi float [ %4617, %4582 ], [ %4018, %3970 ]
  %4622 = phi float [ %4618, %4582 ], [ %4019, %3970 ]
  %4623 = phi float [ %4604, %4582 ], [ %3973, %3970 ]
  %4624 = phi float [ %4605, %4582 ], [ %3974, %3970 ]
  %4625 = phi float [ %4606, %4582 ], [ %3975, %3970 ]
  %4626 = phi float [ %4594, %4582 ], [ %3976, %3970 ]
  %4627 = phi float [ %4595, %4582 ], [ %3977, %3970 ]
  %4628 = phi float [ %4596, %4582 ], [ %3978, %3970 ]
  %4629 = phi float [ %4586, %4582 ], [ %3979, %3970 ]
  %4630 = phi float [ %4587, %4582 ], [ %3980, %3970 ]
  %4631 = phi float [ %4588, %4582 ], [ %3981, %3970 ]
  %4632 = phi float [ %4591, %4582 ], [ %3982, %3970 ]
  %4633 = phi float [ %4592, %4582 ], [ %3983, %3970 ]
  %4634 = phi float [ %4593, %4582 ], [ %3984, %3970 ]
  %4635 = phi float [ %4603, %4582 ], [ %3985, %3970 ]
  %4636 = phi float [ %4613, %4582 ], [ %1159, %3970 ]
  %4637 = phi float [ %4601, %4582 ], [ %3986, %3970 ]
  %4638 = phi float [ %4600, %4582 ], [ %3987, %3970 ]
  %4639 = phi float [ %4590, %4582 ], [ 0.000000e+00, %3970 ]
  %4640 = phi float [ %4589, %4582 ], [ 0.000000e+00, %3970 ]
  %4641 = phi float [ %4583, %4582 ], [ 0.000000e+00, %3970 ]
  %4642 = phi float [ %4584, %4582 ], [ %3991, %3970 ]
  %4643 = phi float [ %4585, %4582 ], [ %3989, %3970 ]
  %4644 = fadd fast float %4635, 0xBFB99999A0000000
  %4645 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4646 = fmul fast float %4645, 0x3FF1C71C80000000
  %4647 = call float @dx.op.binary.f32(i32 36, float %4635, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4648 = fsub fast float 1.000000e+00, %4646
  %4649 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4650 = fmul fast float %4649, %4623
  %4651 = fmul fast float %4649, %4624
  %4652 = fmul fast float %4649, %4625
  %4653 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4651)  ; Saturate(value)
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = fmul fast float %4646, %4623
  %4657 = fmul fast float %4646, %4624
  %4658 = fmul fast float %4646, %4625
  %4659 = fadd fast float %4656, %4647
  %4660 = fadd fast float %4657, %4647
  %4661 = fadd fast float %4658, %4647
  %4662 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4667 = extractvalue %dx.types.ResRet.i32 %4666, 0
  %4668 = and i32 %4667, 1
  %4669 = icmp eq i32 %4668, 0
  br i1 %4669, label %4684, label %4670

; <label>:4670                                    ; preds = %4619
  %4671 = call float @dx.op.binary.f32(i32 35, float %4654, float %4655)  ; FMax(a,b)
  %4672 = call float @dx.op.binary.f32(i32 35, float %4653, float %4671)  ; FMax(a,b)
  %4673 = fcmp fast ogt float %4672, 0.000000e+00
  %4674 = bitcast float %4672 to i32
  %4675 = sub nsw i32 2129859010, %4674
  %4676 = bitcast i32 %4675 to float
  %4677 = select i1 %4673, float %4676, float 0.000000e+00
  %4678 = fmul fast float %4653, %4632
  %4679 = fmul fast float %4654, %4633
  %4680 = fmul fast float %4655, %4634
  %4681 = fmul fast float %4678, %4677
  %4682 = fmul fast float %4679, %4677
  %4683 = fmul fast float %4680, %4677
  br label %4684

; <label>:4684                                    ; preds = %4670, %4619
  %4685 = phi float [ %4681, %4670 ], [ %4632, %4619 ]
  %4686 = phi float [ %4682, %4670 ], [ %4633, %4619 ]
  %4687 = phi float [ %4683, %4670 ], [ %4634, %4619 ]
  %4688 = call float @dx.op.binary.f32(i32 36, float %4629, float 1.270000e+02)  ; FMin(a,b)
  %4689 = call float @dx.op.binary.f32(i32 36, float %4630, float 1.270000e+02)  ; FMin(a,b)
  %4690 = call float @dx.op.binary.f32(i32 36, float %4631, float 1.270000e+02)  ; FMin(a,b)
  %4691 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.i32 %4691, 3
  %4693 = and i32 %4692, 8
  %4694 = icmp ne i32 %4693, 0
  %4695 = call float @dx.op.binary.f32(i32 35, float %4653, float %4623)  ; FMax(a,b)
  %4696 = call float @dx.op.binary.f32(i32 35, float %4654, float %4623)  ; FMax(a,b)
  %4697 = call float @dx.op.binary.f32(i32 35, float %4655, float %4623)  ; FMax(a,b)
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4654, float %4655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = select i1 %247, float %4623, float %4653
  %4700 = select i1 %247, float %4698, float %4654
  %4701 = select i1 %247, float 1.000000e+00, float %4655
  %4702 = select i1 %4694, float %4695, float %4699
  %4703 = select i1 %4694, float %4696, float %4700
  %4704 = select i1 %4694, float %4697, float %4701
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4685, float %4686, float %4687, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = select i1 %247, float %4705, float %4685
  %4707 = select i1 %247, float %4705, float %4686
  %4708 = select i1 %247, float %4705, float %4687
  %4709 = and i32 %223, 3
  %4710 = select i1 %217, i32 %4709, i32 0
  %4711 = icmp eq i32 %4710, 1
  br i1 %4711, label %4712, label %4788

; <label>:4712                                    ; preds = %4684
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 0
  %4715 = extractvalue %dx.types.CBufRet.f32 %4713, 1
  %4716 = fadd fast float %4714, %186
  %4717 = fadd fast float %4715, %187
  %4718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4719 = extractvalue %dx.types.CBufRet.f32 %4718, 0
  %4720 = extractvalue %dx.types.CBufRet.f32 %4718, 1
  %4721 = fsub fast float %4716, %4719
  %4722 = fsub fast float %4717, %4720
  %4723 = fmul fast float %4721, %4721
  %4724 = fmul fast float %4722, %4722
  %4725 = fadd fast float %4723, %4724
  %4726 = call float @dx.op.unary.f32(i32 24, float %4725)  ; Sqrt(value)
  %4727 = extractvalue %dx.types.CBufRet.f32 %4718, 2
  %4728 = fcmp fast olt float %4726, %4727
  br i1 %4728, label %4729, label %4782

; <label>:4729                                    ; preds = %4712
  %4730 = extractvalue %dx.types.CBufRet.f32 %4713, 2
  %4731 = fadd fast float %4730, %188
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 0
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4738 = extractvalue %dx.types.CBufRet.f32 %4732, 1
  %4739 = extractvalue %dx.types.CBufRet.f32 %4734, 1
  %4740 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %4741 = extractvalue %dx.types.CBufRet.f32 %4732, 3
  %4742 = extractvalue %dx.types.CBufRet.f32 %4734, 3
  %4743 = extractvalue %dx.types.CBufRet.f32 %4736, 3
  %4744 = fadd fast float %4741, %4716
  %4745 = fadd fast float %4742, %4717
  %4746 = fadd fast float %4731, %4743
  %4747 = fmul fast float %4744, %4733
  %4748 = call float @dx.op.tertiary.f32(i32 46, float %4745, float %4735, float %4747)  ; FMad(a,b,c)
  %4749 = call float @dx.op.tertiary.f32(i32 46, float %4746, float %4737, float %4748)  ; FMad(a,b,c)
  %4750 = fmul fast float %4744, %4738
  %4751 = call float @dx.op.tertiary.f32(i32 46, float %4745, float %4739, float %4750)  ; FMad(a,b,c)
  %4752 = call float @dx.op.tertiary.f32(i32 46, float %4746, float %4740, float %4751)  ; FMad(a,b,c)
  %4753 = fsub fast float %4749, %4741
  %4754 = fsub fast float %4752, %4742
  %4755 = fsub fast float %4753, %4719
  %4756 = fadd fast float %4755, %4727
  %4757 = fsub fast float %4754, %4720
  %4758 = fadd fast float %4757, %4727
  %4759 = extractvalue %dx.types.CBufRet.f32 %4718, 3
  %4760 = fmul fast float %4756, %4759
  %4761 = fmul fast float %4758, %4759
  %4762 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4763 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4764 = fsub fast float 1.000000e+00, %4762
  %4765 = fsub fast float 1.000000e+00, %4763
  %4766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %4764, float %4765, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4767 = extractvalue %dx.types.ResRet.f32 %4766, 0
  %4768 = fcmp fast ugt float %4767, 0.000000e+00
  br i1 %4768, label %4769, label %4782

; <label>:4769                                    ; preds = %4729
  %4770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4771 = extractvalue %dx.types.CBufRet.f32 %4770, 2
  %4772 = fmul fast float %4771, %4767
  %4773 = extractvalue %dx.types.CBufRet.f32 %4770, 3
  %4774 = fadd fast float %4773, %4772
  %4775 = extractvalue %dx.types.CBufRet.f32 %4736, 2
  %4776 = fadd fast float %4774, %4743
  %4777 = fmul fast float %4749, %4737
  %4778 = call float @dx.op.tertiary.f32(i32 46, float %4752, float %4740, float %4777)  ; FMad(a,b,c)
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4776, float %4775, float %4778)  ; FMad(a,b,c)
  %4780 = fsub fast float %4779, %4743
  %4781 = fsub fast float %4780, %4730
  br label %4782

; <label>:4782                                    ; preds = %4769, %4729, %4712
  %4783 = phi i1 [ true, %4769 ], [ false, %4729 ], [ false, %4712 ]
  %4784 = phi float [ %4781, %4769 ], [ -1.310720e+05, %4729 ], [ -1.310720e+05, %4712 ]
  %4785 = fsub fast float %4784, %188
  %4786 = call float @dx.op.unary.f32(i32 7, float %4785)  ; Saturate(value)
  %4787 = select i1 %4783, float %4786, float 1.000000e+00
  br label %4788

; <label>:4788                                    ; preds = %4782, %4684
  %4789 = phi float [ %4787, %4782 ], [ 0.000000e+00, %4684 ]
  %4790 = icmp eq i32 %4710, 3
  %4791 = select i1 %4790, float 1.000000e+00, float %4789
  %4792 = call float @dx.op.binary.f32(i32 35, float %4641, float %4791)  ; FMax(a,b)
  %4793 = fcmp fast olt float %4791, 1.000000e+00
  %4794 = fcmp uge float %63, 0.000000e+00
  %4795 = and i1 %4794, %4793
  br i1 %4795, label %4796, label %4806

; <label>:4796                                    ; preds = %4788
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %40, float %63, float %64, float %65, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = fadd fast float %4798, %4792
  %4802 = fcmp ule float %62, 0.000000e+00
  %4803 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4804 = select i1 %4802, float %4803, float 1.000000e+00
  %4805 = fmul fast float %4804, %4800
  br label %4806

; <label>:4806                                    ; preds = %4796, %4788
  %4807 = phi float [ %4801, %4796 ], [ %4792, %4788 ]
  %4808 = phi float [ %4799, %4796 ], [ 0.000000e+00, %4788 ]
  %4809 = phi float [ %4805, %4796 ], [ 0.000000e+00, %4788 ]
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4812 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4813 = fcmp fast une float %4811, 0.000000e+00
  %4814 = fcmp fast une float %4812, 0.000000e+00
  %4815 = or i1 %4813, %4814
  br i1 %4815, label %4816, label %5391

; <label>:4816                                    ; preds = %4806
  br i1 %4813, label %4817, label %5090

; <label>:4817                                    ; preds = %4816
  %4818 = call float @dx.op.unary.f32(i32 23, float %4638)  ; Log(value)
  %4819 = fmul fast float %4818, 4.000000e+00
  %4820 = call float @dx.op.unary.f32(i32 21, float %4819)  ; Exp(value)
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = fmul fast float %4822, %50
  %4824 = fmul fast float %4822, %51
  %4825 = fmul fast float %4822, %52
  %4826 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %4827 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %4828 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4829 = call float @dx.op.unary.f32(i32 23, float %4826)  ; Log(value)
  %4830 = call float @dx.op.unary.f32(i32 23, float %4827)  ; Log(value)
  %4831 = call float @dx.op.unary.f32(i32 23, float %4828)  ; Log(value)
  %4832 = fmul fast float %4829, 4.000000e+00
  %4833 = fmul fast float %4830, 4.000000e+00
  %4834 = fmul fast float %4831, 4.000000e+00
  %4835 = call float @dx.op.unary.f32(i32 21, float %4832)  ; Exp(value)
  %4836 = call float @dx.op.unary.f32(i32 21, float %4833)  ; Exp(value)
  %4837 = call float @dx.op.unary.f32(i32 21, float %4834)  ; Exp(value)
  %4838 = fadd fast float %4836, %4835
  %4839 = fadd fast float %4838, %4837
  %4840 = fdiv fast float 1.000000e+00, %4839
  %4841 = fmul fast float %4840, %4835
  %4842 = fcmp fast ogt float %59, 0.000000e+00
  %4843 = fcmp fast ogt float %60, 0.000000e+00
  %4844 = fcmp fast ogt float %61, 0.000000e+00
  %4845 = fcmp fast olt float %59, 0.000000e+00
  %4846 = fcmp fast olt float %60, 0.000000e+00
  %4847 = fcmp fast olt float %61, 0.000000e+00
  %4848 = zext i1 %4842 to i32
  %4849 = zext i1 %4843 to i32
  %4850 = zext i1 %4844 to i32
  %4851 = zext i1 %4845 to i32
  %4852 = zext i1 %4846 to i32
  %4853 = zext i1 %4847 to i32
  %4854 = sub nsw i32 %4848, %4851
  %4855 = sub nsw i32 %4849, %4852
  %4856 = sub nsw i32 %4850, %4853
  %4857 = call float @dx.op.unary.f32(i32 83, float %4823)  ; DerivCoarseX(value)
  %4858 = call float @dx.op.unary.f32(i32 83, float %4824)  ; DerivCoarseX(value)
  %4859 = call float @dx.op.unary.f32(i32 83, float %4825)  ; DerivCoarseX(value)
  %4860 = call float @dx.op.unary.f32(i32 84, float %4823)  ; DerivCoarseY(value)
  %4861 = call float @dx.op.unary.f32(i32 84, float %4824)  ; DerivCoarseY(value)
  %4862 = call float @dx.op.unary.f32(i32 84, float %4825)  ; DerivCoarseY(value)
  %4863 = fcmp fast ole float %258, %4841
  %4864 = fmul fast float %4840, %4838
  %4865 = fcmp fast ole float %258, %4864
  %4866 = select i1 %4865, float %4825, float %4823
  %4867 = select i1 %4865, float %4823, float %4824
  %4868 = select i1 %4863, float %4824, float %4866
  %4869 = select i1 %4863, float %4825, float %4867
  %4870 = select i1 %4865, float %4859, float %4857
  %4871 = select i1 %4865, float %4857, float %4858
  %4872 = select i1 %4863, float %4858, float %4870
  %4873 = select i1 %4863, float %4859, float %4871
  %4874 = select i1 %4865, float %4862, float %4860
  %4875 = select i1 %4865, float %4860, float %4861
  %4876 = select i1 %4863, float %4861, float %4874
  %4877 = select i1 %4863, float %4862, float %4875
  %4878 = call float @dx.op.unary.f32(i32 27, float %4868)  ; Round_ni(value)
  %4879 = call float @dx.op.unary.f32(i32 27, float %4869)  ; Round_ni(value)
  %4880 = fptosi float %4878 to i32
  %4881 = fptosi float %4879 to i32
  %4882 = xor i32 %4881, %4880
  %4883 = sitofp i32 %4882 to float
  %4884 = fptosi float %4883 to i32
  %4885 = sitofp i32 %4884 to float
  %4886 = fmul fast float %4885, 0x3FE3C6EF40000000
  %4887 = frem fast float %4878, 2.560000e+02
  %4888 = frem fast float %4879, 2.560000e+02
  %4889 = fptoui float %4887 to i32
  %4890 = fptoui float %4888 to i32
  %4891 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4889, i32 %4890, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4892 = extractvalue %dx.types.ResRet.f32 %4891, 0
  %4893 = extractvalue %dx.types.ResRet.f32 %4891, 1
  %4894 = extractvalue %dx.types.ResRet.f32 %4891, 2
  %4895 = fadd fast float %4892, %4886
  %4896 = fadd fast float %4893, %4886
  %4897 = fadd fast float %4894, %4886
  %4898 = call float @dx.op.unary.f32(i32 22, float %4895)  ; Frc(value)
  %4899 = call float @dx.op.unary.f32(i32 22, float %4896)  ; Frc(value)
  %4900 = call float @dx.op.unary.f32(i32 22, float %4897)  ; Frc(value)
  %4901 = fmul fast float %4900, 0x401921FB60000000
  %4902 = call float @dx.op.unary.f32(i32 13, float %4901)  ; Sin(value)
  %4903 = call float @dx.op.unary.f32(i32 12, float %4901)  ; Cos(value)
  %4904 = fsub fast float -0.000000e+00, %4903
  %4905 = fmul fast float %4903, %4868
  %4906 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4869, float %4905)  ; FMad(a,b,c)
  %4907 = fmul fast float %4902, %4868
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4904, float %4869, float %4907)  ; FMad(a,b,c)
  %4909 = fadd fast float %4906, %4898
  %4910 = fadd fast float %4908, %4899
  %4911 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4912 = bitcast float %4911 to i32
  %4913 = icmp eq i32 %4912, 0
  br i1 %4913, label %4952, label %4914

; <label>:4914                                    ; preds = %4817
  %4915 = add i32 %4912, 0
  %4916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4915, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4917 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4916, %dx.types.Handle %104, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4918 = extractvalue %dx.types.ResRet.f32 %4917, 0
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4922 = fsub fast float 1.000000e+00, %4811
  %4923 = call float @dx.op.binary.f32(i32 35, float %4922, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4924 = bitcast float %4811 to i32
  %4925 = sitofp i32 %4924 to float
  %4926 = fadd fast float %4925, 0xC1CFBF8940000000
  %4927 = fmul fast float %4921, %4926
  %4928 = fadd fast float %4927, 0x41CFBF8940000000
  %4929 = fptosi float %4928 to i32
  %4930 = bitcast i32 %4929 to float
  %4931 = bitcast float %4923 to i32
  %4932 = sitofp i32 %4931 to float
  %4933 = fadd fast float %4932, 0xC1CFBF8940000000
  %4934 = fmul fast float %4933, %4921
  %4935 = fadd fast float %4934, 0x41CFBF8940000000
  %4936 = fptosi float %4935 to i32
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4930, %4920
  %4939 = fmul fast float %4937, %4920
  %4940 = fsub fast float %4923, %4938
  %4941 = fadd fast float %4939, %4923
  %4942 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4943 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4944 = fsub fast float %4918, %4942
  %4945 = fsub fast float %4943, %4942
  %4946 = bitcast float %4945 to i32
  %4947 = sub nsw i32 2129859010, %4946
  %4948 = bitcast i32 %4947 to float
  %4949 = fmul fast float %4948, %4944
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = fcmp fast olt float %4950, 0x3F70101020000000
  br i1 %4951, label %5090, label %4952

; <label>:4952                                    ; preds = %4914, %4817
  %4953 = phi float [ %4950, %4914 ], [ %4811, %4817 ]
  %4954 = fmul fast float %4953, %4820
  %4955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.i32 %4955, 1
  %4957 = extractvalue %dx.types.CBufRet.i32 %4955, 0
  %4958 = add i32 %4957, 0
  %4959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4960 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4959, %dx.types.Handle %103, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4961 = extractvalue %dx.types.ResRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.ResRet.f32 %4960, 1
  %4963 = extractvalue %dx.types.ResRet.f32 %4960, 2
  %4964 = extractvalue %dx.types.ResRet.f32 %4960, 3
  %4965 = and i32 %4956, 255
  %4966 = uitofp i32 %4965 to float
  %4967 = lshr i32 %4956, 8
  %4968 = and i32 %4967, 255
  %4969 = uitofp i32 %4968 to float
  %4970 = fmul fast float %4964, %4966
  %4971 = fadd fast float %4970, %4969
  %4972 = fmul fast float %4971, 0x3F70101000000000
  %4973 = fadd fast float %4972, 0xBFB99999A0000000
  %4974 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4975 = fmul fast float %4974, 0x3FF1C71C80000000
  %4976 = call float @dx.op.binary.f32(i32 36, float %4972, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4977 = fsub fast float 1.000000e+00, %4975
  %4978 = call float @dx.op.unary.f32(i32 7, float %4977)  ; Saturate(value)
  %4979 = fmul fast float %4978, %4961
  %4980 = fmul fast float %4978, %4962
  %4981 = fmul fast float %4978, %4963
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = fmul fast float %4975, %4961
  %4986 = fmul fast float %4975, %4962
  %4987 = fmul fast float %4975, %4963
  %4988 = fadd fast float %4985, %4976
  %4989 = fadd fast float %4986, %4976
  %4990 = fadd fast float %4987, %4976
  %4991 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4992 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4993 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4994 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.i32 %4994, 3
  %4996 = extractvalue %dx.types.CBufRet.i32 %4994, 2
  %4997 = add i32 %4996, 0
  %4998 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4997, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4999 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4998, %dx.types.Handle %103, float %4909, float %4910, float undef, float undef, i32 0, i32 0, i32 undef, float %4872, float %4873, float undef, float %4876, float %4877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5000 = extractvalue %dx.types.ResRet.f32 %4999, 0
  %5001 = extractvalue %dx.types.ResRet.f32 %4999, 1
  %5002 = extractvalue %dx.types.ResRet.f32 %4999, 2
  %5003 = extractvalue %dx.types.ResRet.f32 %4999, 3
  %5004 = and i32 %4995, 255
  %5005 = uitofp i32 %5004 to float
  %5006 = lshr i32 %4995, 8
  %5007 = and i32 %5006, 255
  %5008 = uitofp i32 %5007 to float
  %5009 = lshr i32 %4995, 16
  %5010 = and i32 %5009, 255
  %5011 = uitofp i32 %5010 to float
  %5012 = fmul fast float %5011, 0x3F70101000000000
  %5013 = fmul fast float %5000, %5005
  %5014 = fadd fast float %5013, %5008
  %5015 = fmul fast float %5014, 0x3F70101000000000
  %5016 = fadd fast float %5001, -5.000000e-01
  %5017 = fadd fast float %5003, -5.000000e-01
  %5018 = fmul fast float %5016, %5012
  %5019 = fmul fast float %5017, %5012
  %5020 = fadd fast float %5018, 5.000000e-01
  %5021 = fadd fast float %5019, 5.000000e-01
  %5022 = fmul fast float %5020, 2.000000e+00
  %5023 = fadd fast float %5022, -1.000000e+00
  %5024 = fmul fast float %5021, 2.000000e+00
  %5025 = fadd fast float %5024, -1.000000e+00
  %5026 = fadd fast float %5023, %5025
  %5027 = fmul fast float %5026, 5.000000e-01
  %5028 = fsub fast float %5023, %5025
  %5029 = fmul fast float %5028, 5.000000e-01
  %5030 = call float @dx.op.unary.f32(i32 6, float %5027)  ; FAbs(value)
  %5031 = fsub fast float 1.000000e+00, %5030
  %5032 = call float @dx.op.unary.f32(i32 6, float %5029)  ; FAbs(value)
  %5033 = fsub fast float %5031, %5032
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5027, float %5029, float %5033, float %5027, float %5029, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.unary.f32(i32 25, float %5034)  ; Rsqrt(value)
  %5036 = fmul fast float %5027, %5035
  %5037 = fmul fast float %5029, %5035
  %5038 = select i1 %4865, i32 %4855, i32 %4856
  %5039 = select i1 %4863, i32 %4854, i32 %5038
  %5040 = sitofp i32 %5039 to float
  %5041 = fmul fast float %5033, %5040
  %5042 = fmul fast float %5041, %5035
  %5043 = select i1 %4865, float %5042, float %5037
  %5044 = select i1 %4865, float %5037, float %5042
  %5045 = select i1 %4863, float %5042, float %5036
  %5046 = select i1 %4863, float %5037, float %5043
  %5047 = select i1 %4863, float %5036, float %5044
  %5048 = fsub fast float %4982, %4702
  %5049 = fsub fast float %4983, %4703
  %5050 = fsub fast float %4984, %4704
  %5051 = fmul fast float %5048, %4954
  %5052 = fmul fast float %5049, %4954
  %5053 = fmul fast float %5050, %4954
  %5054 = fadd fast float %5051, %4702
  %5055 = fadd fast float %5052, %4703
  %5056 = fadd fast float %5053, %4704
  %5057 = fsub fast float %4991, %4662
  %5058 = fsub fast float %4992, %4663
  %5059 = fsub fast float %4993, %4664
  %5060 = fmul fast float %5057, %4954
  %5061 = fmul fast float %5058, %4954
  %5062 = fmul fast float %5059, %4954
  %5063 = fadd fast float %5060, %4662
  %5064 = fadd fast float %5061, %4663
  %5065 = fadd fast float %5062, %4664
  %5066 = fadd fast float %5045, %4620
  %5067 = fadd fast float %5046, %4621
  %5068 = fadd fast float %5047, %4622
  %5069 = call float @dx.op.dot3.f32(i32 55, float %5066, float %5067, float %5068, float %5066, float %5067, float %5068)  ; Dot3(ax,ay,az,bx,by,bz)
  %5070 = call float @dx.op.unary.f32(i32 25, float %5069)  ; Rsqrt(value)
  %5071 = fmul fast float %5066, %5070
  %5072 = fmul fast float %5067, %5070
  %5073 = fmul fast float %5068, %5070
  %5074 = fsub fast float %5071, %4620
  %5075 = fsub fast float %5072, %4621
  %5076 = fsub fast float %5073, %4622
  %5077 = fmul fast float %5074, %4954
  %5078 = fmul fast float %5075, %4954
  %5079 = fmul fast float %5076, %4954
  %5080 = fadd fast float %5077, %4620
  %5081 = fadd fast float %5078, %4621
  %5082 = fadd fast float %5079, %4622
  %5083 = call float @dx.op.binary.f32(i32 36, float %4638, float %5002)  ; FMin(a,b)
  %5084 = fsub fast float %5083, %4638
  %5085 = fmul fast float %5084, %4954
  %5086 = fadd fast float %5085, %4638
  %5087 = fsub fast float %5015, %4665
  %5088 = fmul fast float %5087, %4954
  %5089 = fadd fast float %5088, %4665
  br label %5090

; <label>:5090                                    ; preds = %4952, %4914, %4816
  %5091 = phi float [ %5054, %4952 ], [ %4702, %4914 ], [ %4702, %4816 ]
  %5092 = phi float [ %5055, %4952 ], [ %4703, %4914 ], [ %4703, %4816 ]
  %5093 = phi float [ %5056, %4952 ], [ %4704, %4914 ], [ %4704, %4816 ]
  %5094 = phi float [ %5080, %4952 ], [ %4620, %4914 ], [ %4620, %4816 ]
  %5095 = phi float [ %5081, %4952 ], [ %4621, %4914 ], [ %4621, %4816 ]
  %5096 = phi float [ %5082, %4952 ], [ %4622, %4914 ], [ %4622, %4816 ]
  %5097 = phi float [ %5063, %4952 ], [ %4662, %4914 ], [ %4662, %4816 ]
  %5098 = phi float [ %5064, %4952 ], [ %4663, %4914 ], [ %4663, %4816 ]
  %5099 = phi float [ %5065, %4952 ], [ %4664, %4914 ], [ %4664, %4816 ]
  %5100 = phi float [ %5089, %4952 ], [ %4665, %4914 ], [ %4665, %4816 ]
  %5101 = phi float [ %5086, %4952 ], [ %4638, %4914 ], [ %4638, %4816 ]
  br i1 %4814, label %5102, label %5391

; <label>:5102                                    ; preds = %5090
  %5103 = call float @dx.op.unary.f32(i32 23, float %5101)  ; Log(value)
  %5104 = fmul fast float %5103, 4.000000e+00
  %5105 = call float @dx.op.unary.f32(i32 21, float %5104)  ; Exp(value)
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 0
  %5108 = fmul fast float %5107, %50
  %5109 = fmul fast float %5107, %51
  %5110 = fmul fast float %5107, %52
  %5111 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %5112 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %5113 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5114 = call float @dx.op.unary.f32(i32 23, float %5111)  ; Log(value)
  %5115 = call float @dx.op.unary.f32(i32 23, float %5112)  ; Log(value)
  %5116 = call float @dx.op.unary.f32(i32 23, float %5113)  ; Log(value)
  %5117 = fmul fast float %5114, 4.000000e+00
  %5118 = fmul fast float %5115, 4.000000e+00
  %5119 = fmul fast float %5116, 4.000000e+00
  %5120 = call float @dx.op.unary.f32(i32 21, float %5117)  ; Exp(value)
  %5121 = call float @dx.op.unary.f32(i32 21, float %5118)  ; Exp(value)
  %5122 = call float @dx.op.unary.f32(i32 21, float %5119)  ; Exp(value)
  %5123 = fadd fast float %5121, %5120
  %5124 = fadd fast float %5123, %5122
  %5125 = fdiv fast float 1.000000e+00, %5124
  %5126 = fmul fast float %5125, %5120
  %5127 = fcmp fast ogt float %59, 0.000000e+00
  %5128 = fcmp fast ogt float %60, 0.000000e+00
  %5129 = fcmp fast ogt float %61, 0.000000e+00
  %5130 = fcmp fast olt float %59, 0.000000e+00
  %5131 = fcmp fast olt float %60, 0.000000e+00
  %5132 = fcmp fast olt float %61, 0.000000e+00
  %5133 = zext i1 %5127 to i32
  %5134 = zext i1 %5128 to i32
  %5135 = zext i1 %5129 to i32
  %5136 = zext i1 %5130 to i32
  %5137 = zext i1 %5131 to i32
  %5138 = zext i1 %5132 to i32
  %5139 = sub nsw i32 %5133, %5136
  %5140 = sub nsw i32 %5134, %5137
  %5141 = sub nsw i32 %5135, %5138
  %5142 = call float @dx.op.unary.f32(i32 83, float %5108)  ; DerivCoarseX(value)
  %5143 = call float @dx.op.unary.f32(i32 83, float %5109)  ; DerivCoarseX(value)
  %5144 = call float @dx.op.unary.f32(i32 83, float %5110)  ; DerivCoarseX(value)
  %5145 = call float @dx.op.unary.f32(i32 84, float %5108)  ; DerivCoarseY(value)
  %5146 = call float @dx.op.unary.f32(i32 84, float %5109)  ; DerivCoarseY(value)
  %5147 = call float @dx.op.unary.f32(i32 84, float %5110)  ; DerivCoarseY(value)
  %5148 = fcmp fast ole float %258, %5126
  %5149 = fmul fast float %5125, %5123
  %5150 = fcmp fast ole float %258, %5149
  %5151 = select i1 %5150, float %5110, float %5108
  %5152 = select i1 %5150, float %5108, float %5109
  %5153 = select i1 %5148, float %5109, float %5151
  %5154 = select i1 %5148, float %5110, float %5152
  %5155 = select i1 %5150, float %5144, float %5142
  %5156 = select i1 %5150, float %5142, float %5143
  %5157 = select i1 %5148, float %5143, float %5155
  %5158 = select i1 %5148, float %5144, float %5156
  %5159 = select i1 %5150, float %5147, float %5145
  %5160 = select i1 %5150, float %5145, float %5146
  %5161 = select i1 %5148, float %5146, float %5159
  %5162 = select i1 %5148, float %5147, float %5160
  %5163 = call float @dx.op.unary.f32(i32 27, float %5153)  ; Round_ni(value)
  %5164 = call float @dx.op.unary.f32(i32 27, float %5154)  ; Round_ni(value)
  %5165 = fptosi float %5163 to i32
  %5166 = fptosi float %5164 to i32
  %5167 = xor i32 %5166, %5165
  %5168 = sitofp i32 %5167 to float
  %5169 = fptosi float %5168 to i32
  %5170 = sitofp i32 %5169 to float
  %5171 = fmul fast float %5170, 0x3FE3C6EF40000000
  %5172 = frem fast float %5163, 2.560000e+02
  %5173 = frem fast float %5164, 2.560000e+02
  %5174 = fptoui float %5172 to i32
  %5175 = fptoui float %5173 to i32
  %5176 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5174, i32 %5175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5177 = extractvalue %dx.types.ResRet.f32 %5176, 0
  %5178 = extractvalue %dx.types.ResRet.f32 %5176, 1
  %5179 = extractvalue %dx.types.ResRet.f32 %5176, 2
  %5180 = fadd fast float %5177, %5171
  %5181 = fadd fast float %5178, %5171
  %5182 = fadd fast float %5179, %5171
  %5183 = call float @dx.op.unary.f32(i32 22, float %5180)  ; Frc(value)
  %5184 = call float @dx.op.unary.f32(i32 22, float %5181)  ; Frc(value)
  %5185 = call float @dx.op.unary.f32(i32 22, float %5182)  ; Frc(value)
  %5186 = fmul fast float %5185, 0x401921FB60000000
  %5187 = call float @dx.op.unary.f32(i32 13, float %5186)  ; Sin(value)
  %5188 = call float @dx.op.unary.f32(i32 12, float %5186)  ; Cos(value)
  %5189 = fsub fast float -0.000000e+00, %5188
  %5190 = fmul fast float %5188, %5153
  %5191 = call float @dx.op.tertiary.f32(i32 46, float %5187, float %5154, float %5190)  ; FMad(a,b,c)
  %5192 = fmul fast float %5187, %5153
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5189, float %5154, float %5192)  ; FMad(a,b,c)
  %5194 = fadd fast float %5191, %5183
  %5195 = fadd fast float %5193, %5184
  %5196 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5197 = bitcast float %5196 to i32
  %5198 = icmp eq i32 %5197, 0
  br i1 %5198, label %5237, label %5199

; <label>:5199                                    ; preds = %5102
  %5200 = add i32 %5197, 0
  %5201 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5200, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5201, %dx.types.Handle %104, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5157, float %5158, float undef, float %5161, float %5162, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5207 = fsub fast float 1.000000e+00, %4812
  %5208 = call float @dx.op.binary.f32(i32 35, float %5207, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5209 = bitcast float %4812 to i32
  %5210 = sitofp i32 %5209 to float
  %5211 = fadd fast float %5210, 0xC1CFBF8940000000
  %5212 = fmul fast float %5206, %5211
  %5213 = fadd fast float %5212, 0x41CFBF8940000000
  %5214 = fptosi float %5213 to i32
  %5215 = bitcast i32 %5214 to float
  %5216 = bitcast float %5208 to i32
  %5217 = sitofp i32 %5216 to float
  %5218 = fadd fast float %5217, 0xC1CFBF8940000000
  %5219 = fmul fast float %5218, %5206
  %5220 = fadd fast float %5219, 0x41CFBF8940000000
  %5221 = fptosi float %5220 to i32
  %5222 = bitcast i32 %5221 to float
  %5223 = fmul fast float %5215, %5205
  %5224 = fmul fast float %5222, %5205
  %5225 = fsub fast float %5208, %5223
  %5226 = fadd fast float %5224, %5208
  %5227 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5228 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5229 = fsub fast float %5203, %5227
  %5230 = fsub fast float %5228, %5227
  %5231 = bitcast float %5230 to i32
  %5232 = sub nsw i32 2129859010, %5231
  %5233 = bitcast i32 %5232 to float
  %5234 = fmul fast float %5233, %5229
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fcmp fast olt float %5235, 0x3F70101020000000
  br i1 %5236, label %5391, label %5237

; <label>:5237                                    ; preds = %5199, %5102
  %5238 = phi float [ %5235, %5199 ], [ %4812, %5102 ]
  %5239 = fmul fast float %5238, %5105
  %5240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5241 = extractvalue %dx.types.CBufRet.i32 %5240, 1
  %5242 = extractvalue %dx.types.CBufRet.i32 %5240, 0
  %5243 = add i32 %5242, 0
  %5244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5245 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5244, %dx.types.Handle %103, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5157, float %5158, float undef, float %5161, float %5162, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.ResRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.ResRet.f32 %5245, 2
  %5249 = extractvalue %dx.types.ResRet.f32 %5245, 3
  %5250 = and i32 %5241, 255
  %5251 = uitofp i32 %5250 to float
  %5252 = lshr i32 %5241, 8
  %5253 = and i32 %5252, 255
  %5254 = uitofp i32 %5253 to float
  %5255 = fmul fast float %5249, %5251
  %5256 = fadd fast float %5255, %5254
  %5257 = fmul fast float %5256, 0x3F70101000000000
  %5258 = fadd fast float %5257, 0xBFB99999A0000000
  %5259 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5260 = fmul fast float %5259, 0x3FF1C71C80000000
  %5261 = call float @dx.op.binary.f32(i32 36, float %5257, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5262 = fsub fast float 1.000000e+00, %5260
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fmul fast float %5263, %5246
  %5265 = fmul fast float %5263, %5247
  %5266 = fmul fast float %5263, %5248
  %5267 = call float @dx.op.unary.f32(i32 7, float %5264)  ; Saturate(value)
  %5268 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5269 = call float @dx.op.unary.f32(i32 7, float %5266)  ; Saturate(value)
  %5270 = fmul fast float %5260, %5246
  %5271 = fmul fast float %5260, %5247
  %5272 = fmul fast float %5260, %5248
  %5273 = fadd fast float %5270, %5261
  %5274 = fadd fast float %5271, %5261
  %5275 = fadd fast float %5272, %5261
  %5276 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5277 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5278 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.i32 %5279, 3
  %5281 = extractvalue %dx.types.CBufRet.i32 %5279, 2
  %5282 = add i32 %5281, 0
  %5283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5282, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5284 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5283, %dx.types.Handle %103, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5157, float %5158, float undef, float %5161, float %5162, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = extractvalue %dx.types.ResRet.f32 %5284, 2
  %5288 = extractvalue %dx.types.ResRet.f32 %5284, 3
  %5289 = and i32 %5280, 255
  %5290 = uitofp i32 %5289 to float
  %5291 = lshr i32 %5280, 8
  %5292 = and i32 %5291, 255
  %5293 = uitofp i32 %5292 to float
  %5294 = lshr i32 %5280, 16
  %5295 = and i32 %5294, 255
  %5296 = uitofp i32 %5295 to float
  %5297 = fmul fast float %5296, 0x3F70101000000000
  %5298 = fmul fast float %5285, %5290
  %5299 = fadd fast float %5298, %5293
  %5300 = fmul fast float %5299, 0x3F70101000000000
  %5301 = fadd fast float %5286, -5.000000e-01
  %5302 = fadd fast float %5288, -5.000000e-01
  %5303 = fmul fast float %5301, %5297
  %5304 = fmul fast float %5302, %5297
  %5305 = fadd fast float %5303, 5.000000e-01
  %5306 = fadd fast float %5304, 5.000000e-01
  %5307 = fmul fast float %5305, 2.000000e+00
  %5308 = fadd fast float %5307, -1.000000e+00
  %5309 = fmul fast float %5306, 2.000000e+00
  %5310 = fadd fast float %5309, -1.000000e+00
  %5311 = fadd fast float %5308, %5310
  %5312 = fmul fast float %5311, 5.000000e-01
  %5313 = fsub fast float %5308, %5310
  %5314 = fmul fast float %5313, 5.000000e-01
  %5315 = call float @dx.op.unary.f32(i32 6, float %5312)  ; FAbs(value)
  %5316 = fsub fast float 1.000000e+00, %5315
  %5317 = call float @dx.op.unary.f32(i32 6, float %5314)  ; FAbs(value)
  %5318 = fsub fast float %5316, %5317
  %5319 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5314, float %5318, float %5312, float %5314, float %5318)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 25, float %5319)  ; Rsqrt(value)
  %5321 = fmul fast float %5312, %5320
  %5322 = fmul fast float %5314, %5320
  %5323 = select i1 %5150, i32 %5140, i32 %5141
  %5324 = select i1 %5148, i32 %5139, i32 %5323
  %5325 = sitofp i32 %5324 to float
  %5326 = fmul fast float %5318, %5325
  %5327 = fmul fast float %5326, %5320
  %5328 = select i1 %5150, float %5327, float %5322
  %5329 = select i1 %5150, float %5322, float %5327
  %5330 = select i1 %5148, float %5327, float %5321
  %5331 = select i1 %5148, float %5322, float %5328
  %5332 = select i1 %5148, float %5321, float %5329
  %5333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5334 = extractvalue %dx.types.CBufRet.f32 %5333, 0
  %5335 = fptoui float %5334 to i32
  %5336 = add i32 %5335, 0
  %5337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5338 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5337, %dx.types.Handle %103, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5157, float %5158, float undef, float %5161, float %5162, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5339 = extractvalue %dx.types.ResRet.f32 %5338, 0
  %5340 = fsub fast float %5267, %5091
  %5341 = fsub fast float %5268, %5092
  %5342 = fsub fast float %5269, %5093
  %5343 = fmul fast float %5340, %5239
  %5344 = fmul fast float %5341, %5239
  %5345 = fmul fast float %5342, %5239
  %5346 = fadd fast float %5343, %5091
  %5347 = fadd fast float %5344, %5092
  %5348 = fadd fast float %5345, %5093
  %5349 = fsub fast float %5276, %5097
  %5350 = fsub fast float %5277, %5098
  %5351 = fsub fast float %5278, %5099
  %5352 = fmul fast float %5349, %5239
  %5353 = fmul fast float %5350, %5239
  %5354 = fmul fast float %5351, %5239
  %5355 = fadd fast float %5352, %5097
  %5356 = fadd fast float %5353, %5098
  %5357 = fadd fast float %5354, %5099
  %5358 = fadd fast float %5330, %5094
  %5359 = fadd fast float %5331, %5095
  %5360 = fadd fast float %5332, %5096
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5358, float %5359, float %5360, float %5358, float %5359, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call float @dx.op.unary.f32(i32 25, float %5361)  ; Rsqrt(value)
  %5363 = fmul fast float %5362, %5358
  %5364 = fmul fast float %5362, %5359
  %5365 = fmul fast float %5362, %5360
  %5366 = fsub fast float %5363, %5094
  %5367 = fsub fast float %5364, %5095
  %5368 = fsub fast float %5365, %5096
  %5369 = fmul fast float %5366, %5239
  %5370 = fmul fast float %5367, %5239
  %5371 = fmul fast float %5368, %5239
  %5372 = fadd fast float %5369, %5094
  %5373 = fadd fast float %5370, %5095
  %5374 = fadd fast float %5371, %5096
  %5375 = call float @dx.op.binary.f32(i32 36, float %5101, float %5287)  ; FMin(a,b)
  %5376 = fsub fast float %5375, %5101
  %5377 = fmul fast float %5376, %5239
  %5378 = fadd fast float %5377, %5101
  %5379 = fsub fast float %5300, %5100
  %5380 = fmul fast float %5379, %5239
  %5381 = fadd fast float %5380, %5100
  %5382 = fsub fast float %5339, %4706
  %5383 = fsub fast float %5339, %4707
  %5384 = fsub fast float %5339, %4708
  %5385 = fmul fast float %5382, %5239
  %5386 = fmul fast float %5383, %5239
  %5387 = fmul fast float %5384, %5239
  %5388 = fadd fast float %5385, %4706
  %5389 = fadd fast float %5386, %4707
  %5390 = fadd fast float %5387, %4708
  br label %5391

; <label>:5391                                    ; preds = %5237, %5199, %5090, %4806
  %5392 = phi float [ %5346, %5237 ], [ %5091, %5199 ], [ %5091, %5090 ], [ %4702, %4806 ]
  %5393 = phi float [ %5347, %5237 ], [ %5092, %5199 ], [ %5092, %5090 ], [ %4703, %4806 ]
  %5394 = phi float [ %5348, %5237 ], [ %5093, %5199 ], [ %5093, %5090 ], [ %4704, %4806 ]
  %5395 = phi float [ %5372, %5237 ], [ %5094, %5199 ], [ %5094, %5090 ], [ %4620, %4806 ]
  %5396 = phi float [ %5373, %5237 ], [ %5095, %5199 ], [ %5095, %5090 ], [ %4621, %4806 ]
  %5397 = phi float [ %5374, %5237 ], [ %5096, %5199 ], [ %5096, %5090 ], [ %4622, %4806 ]
  %5398 = phi float [ %5388, %5237 ], [ %4706, %5199 ], [ %4706, %5090 ], [ %4706, %4806 ]
  %5399 = phi float [ %5389, %5237 ], [ %4707, %5199 ], [ %4707, %5090 ], [ %4707, %4806 ]
  %5400 = phi float [ %5390, %5237 ], [ %4708, %5199 ], [ %4708, %5090 ], [ %4708, %4806 ]
  %5401 = phi float [ %5355, %5237 ], [ %5097, %5199 ], [ %5097, %5090 ], [ %4662, %4806 ]
  %5402 = phi float [ %5356, %5237 ], [ %5098, %5199 ], [ %5098, %5090 ], [ %4663, %4806 ]
  %5403 = phi float [ %5357, %5237 ], [ %5099, %5199 ], [ %5099, %5090 ], [ %4664, %4806 ]
  %5404 = phi float [ %5381, %5237 ], [ %5100, %5199 ], [ %5100, %5090 ], [ %4665, %4806 ]
  %5405 = phi float [ %5378, %5237 ], [ %5101, %5199 ], [ %5101, %5090 ], [ %4638, %4806 ]
  %5406 = fcmp fast une float %4810, 0.000000e+00
  %5407 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %186, float %187, float %188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = call float @dx.op.unary.f32(i32 25, float %5407)  ; Rsqrt(value)
  br i1 %5406, label %5416, label %5409

; <label>:5409                                    ; preds = %5391
  %5410 = fmul fast float %5408, %186
  %5411 = fmul fast float %5408, %187
  %5412 = fmul fast float %5408, %188
  %5413 = fsub fast float -0.000000e+00, %5410
  %5414 = fsub fast float -0.000000e+00, %5411
  %5415 = fsub fast float -0.000000e+00, %5412
  br label %5583

; <label>:5416                                    ; preds = %5391
  %5417 = fmul fast float %186, %5408
  %5418 = fsub fast float -0.000000e+00, %5417
  %5419 = fmul fast float %187, %5408
  %5420 = fsub fast float -0.000000e+00, %5419
  %5421 = fmul fast float %188, %5408
  %5422 = fsub fast float -0.000000e+00, %5421
  %5423 = call float @dx.op.dot3.f32(i32 55, float %5418, float %5420, float %5422, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5424 = fmul fast float %4810, 2.500000e+00
  %5425 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5426 = fmul fast float %4810, 0x4013FFFFE0000000
  %5427 = fadd fast float %5426, 0xBFFFFFFFE0000000
  %5428 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5429 = fmul fast float %4810, 0x4004000020000000
  %5430 = fadd fast float %5429, 0xBFF8000040000000
  %5431 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5432 = fmul fast float %4644, 1.000000e+01
  %5433 = call float @dx.op.unary.f32(i32 7, float %5432)  ; Saturate(value)
  %5434 = fmul fast float %5433, 2.000000e+00
  %5435 = fsub fast float 3.000000e+00, %5434
  %5436 = fmul fast float %5433, %5433
  %5437 = fmul fast float %5436, %5435
  %5438 = fsub fast float 1.000000e+00, %5437
  %5439 = fsub fast float 0x3FE3333340000000, %5404
  %5440 = fmul fast float %5439, 0x400AAAAAA0000000
  %5441 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5442 = fmul fast float %5438, %5441
  %5443 = fmul fast float %5392, 0x3FEA2B8620000000
  %5444 = fmul fast float %5393, 0x3FEA2B8620000000
  %5445 = fmul fast float %5394, 0x3FEA2B8620000000
  %5446 = fadd fast float %5443, 0x3FC81DFBA0000000
  %5447 = fmul fast float %5446, %5392
  %5448 = fadd fast float %5447, 0x3F910E6020000000
  %5449 = fadd fast float %5444, 0x3FC81DFBA0000000
  %5450 = fmul fast float %5449, %5393
  %5451 = fadd fast float %5450, 0x3F910E6020000000
  %5452 = fadd fast float %5445, 0x3FC81DFBA0000000
  %5453 = fmul fast float %5452, %5394
  %5454 = fadd fast float %5453, 0x3F910E6020000000
  %5455 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  %5458 = fsub fast float %5455, %5392
  %5459 = fsub fast float %5456, %5393
  %5460 = fsub fast float %5457, %5394
  %5461 = fmul fast float %5458, %5425
  %5462 = fmul fast float %5461, %5442
  %5463 = fmul fast float %5459, %5425
  %5464 = fmul fast float %5463, %5442
  %5465 = fmul fast float %5460, %5425
  %5466 = fmul fast float %5465, %5442
  %5467 = fadd fast float %5462, %5392
  %5468 = fadd fast float %5464, %5393
  %5469 = fadd fast float %5466, %5394
  %5470 = fmul fast float %5405, %5405
  %5471 = fmul fast float %5470, %5470
  %5472 = fadd fast float %5428, 1.000000e+00
  %5473 = fsub fast float %5472, %5442
  %5474 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5475 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5477 = fsub fast float 1.000000e+00, %5471
  %5478 = call float @dx.op.binary.f32(i32 36, float %5474, float %5477)  ; FMin(a,b)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5480 = call float @dx.op.binary.f32(i32 35, float %5478, float %5479)  ; FMax(a,b)
  %5481 = fadd fast float %5476, 0xBFE4CCCCC0000000
  %5482 = fmul fast float %5481, 0x4006DB6DA0000000
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  %5484 = fmul fast float %5483, 2.000000e+00
  %5485 = fsub fast float 3.000000e+00, %5484
  %5486 = bitcast float %5401 to i32
  %5487 = ashr i32 %5486, 1
  %5488 = add nsw i32 %5487, 532487669
  %5489 = bitcast i32 %5488 to float
  %5490 = fsub fast float 1.000000e+00, %5489
  %5491 = bitcast float %5490 to i32
  %5492 = sub nsw i32 2129859010, %5491
  %5493 = bitcast i32 %5492 to float
  %5494 = fmul fast float %5493, 2.000000e+00
  %5495 = bitcast float %5402 to i32
  %5496 = ashr i32 %5495, 1
  %5497 = add nsw i32 %5496, 532487669
  %5498 = bitcast i32 %5497 to float
  %5499 = fsub fast float 1.000000e+00, %5498
  %5500 = bitcast float %5499 to i32
  %5501 = sub nsw i32 2129859010, %5500
  %5502 = bitcast i32 %5501 to float
  %5503 = fmul fast float %5502, 2.000000e+00
  %5504 = bitcast float %5403 to i32
  %5505 = ashr i32 %5504, 1
  %5506 = add nsw i32 %5505, 532487669
  %5507 = bitcast i32 %5506 to float
  %5508 = fsub fast float 1.000000e+00, %5507
  %5509 = bitcast float %5508 to i32
  %5510 = sub nsw i32 2129859010, %5509
  %5511 = bitcast i32 %5510 to float
  %5512 = fmul fast float %5511, 2.000000e+00
  %5513 = fsub fast float 0x4002A9FBE0000000, %5494
  %5514 = fadd fast float %5494, 0x3FD54FDF00000000
  %5515 = bitcast float %5514 to i32
  %5516 = sub nsw i32 2129859010, %5515
  %5517 = bitcast i32 %5516 to float
  %5518 = fmul fast float %5517, %5513
  %5519 = fmul fast float %5518, %5518
  %5520 = fsub fast float 0x4002A9FBE0000000, %5503
  %5521 = fadd fast float %5503, 0x3FD54FDF00000000
  %5522 = bitcast float %5521 to i32
  %5523 = sub nsw i32 2129859010, %5522
  %5524 = bitcast i32 %5523 to float
  %5525 = fmul fast float %5524, %5520
  %5526 = fmul fast float %5525, %5525
  %5527 = fsub fast float 0x4002A9FBE0000000, %5512
  %5528 = fadd fast float %5512, 0x3FD54FDF00000000
  %5529 = bitcast float %5528 to i32
  %5530 = sub nsw i32 2129859010, %5529
  %5531 = bitcast i32 %5530 to float
  %5532 = fmul fast float %5531, %5527
  %5533 = fmul fast float %5532, %5532
  %5534 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5519)  ; FMax(a,b)
  %5535 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5526)  ; FMax(a,b)
  %5536 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5533)  ; FMax(a,b)
  %5537 = fsub fast float 1.000000e+00, %5423
  %5538 = fadd fast float %5537, %5438
  %5539 = call float @dx.op.unary.f32(i32 7, float %5538)  ; Saturate(value)
  %5540 = fsub fast float 1.000000e+00, %4791
  %5541 = fmul fast float %5480, %5540
  %5542 = fmul fast float %5483, %5483
  %5543 = fmul fast float %5542, %5541
  %5544 = fmul fast float %5543, %5485
  %5545 = fmul fast float %5540, 0xBFE99999A0000000
  %5546 = fmul fast float %5545, %5425
  %5547 = fmul fast float %5546, %5442
  %5548 = fadd fast float %5547, 1.000000e+00
  %5549 = fadd fast float %5404, -1.000000e+00
  %5550 = fmul fast float %5548, %5549
  %5551 = fadd fast float %5550, 1.000000e+00
  %5552 = fsub fast float %5534, %5401
  %5553 = fsub fast float %5535, %5402
  %5554 = fsub fast float %5536, %5403
  %5555 = fmul fast float %5544, %5552
  %5556 = fmul fast float %5544, %5553
  %5557 = fmul fast float %5544, %5554
  %5558 = fadd fast float %5555, %5401
  %5559 = fadd fast float %5556, %5402
  %5560 = fadd fast float %5557, %5403
  %5561 = fsub fast float %114, %5395
  %5562 = fsub fast float %115, %5396
  %5563 = fsub fast float %116, %5397
  %5564 = fmul fast float %5544, %5561
  %5565 = fmul fast float %5544, %5562
  %5566 = fmul fast float %5544, %5563
  %5567 = fadd fast float %5564, %5395
  %5568 = fadd fast float %5565, %5396
  %5569 = fadd fast float %5566, %5397
  %5570 = fmul fast float %5544, %5539
  %5571 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  %5572 = fsub fast float 1.000000e+00, %5571
  %5573 = fmul fast float %5570, %5572
  %5574 = fadd fast float %5573, %5571
  %5575 = fsub fast float 1.000000e+00, %5405
  %5576 = fmul fast float %5544, %5575
  %5577 = fadd fast float %5576, %5405
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5567, float %5568, float %5569, float %5567, float %5568, float %5569)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = call float @dx.op.unary.f32(i32 25, float %5578)  ; Rsqrt(value)
  %5580 = fmul fast float %5567, %5579
  %5581 = fmul fast float %5568, %5579
  %5582 = fmul fast float %5569, %5579
  br label %5583

; <label>:5583                                    ; preds = %5416, %5409
  %5584 = phi float [ %5415, %5409 ], [ %5422, %5416 ]
  %5585 = phi float [ %5414, %5409 ], [ %5420, %5416 ]
  %5586 = phi float [ %5413, %5409 ], [ %5418, %5416 ]
  %5587 = phi float [ %5412, %5409 ], [ %5421, %5416 ]
  %5588 = phi float [ %5411, %5409 ], [ %5419, %5416 ]
  %5589 = phi float [ %5410, %5409 ], [ %5417, %5416 ]
  %5590 = phi float [ %5392, %5409 ], [ %5467, %5416 ]
  %5591 = phi float [ %5393, %5409 ], [ %5468, %5416 ]
  %5592 = phi float [ %5394, %5409 ], [ %5469, %5416 ]
  %5593 = phi float [ %5395, %5409 ], [ %5580, %5416 ]
  %5594 = phi float [ %5396, %5409 ], [ %5581, %5416 ]
  %5595 = phi float [ %5397, %5409 ], [ %5582, %5416 ]
  %5596 = phi float [ %5401, %5409 ], [ %5558, %5416 ]
  %5597 = phi float [ %5402, %5409 ], [ %5559, %5416 ]
  %5598 = phi float [ %5403, %5409 ], [ %5560, %5416 ]
  %5599 = phi float [ %5404, %5409 ], [ %5574, %5416 ]
  %5600 = phi float [ %5405, %5409 ], [ %5577, %5416 ]
  %5601 = select i1 %247, float 0.000000e+00, float %5598
  %5602 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5594, float %5595, float %5586, float %5585, float %5584)  ; Dot3(ax,ay,az,bx,by,bz)
  %5603 = call float @dx.op.unary.f32(i32 7, float %5602)  ; Saturate(value)
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5588, float %5587, float %5593, float %5594, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = fmul fast float %5604, 2.000000e+00
  %5606 = fmul fast float %5605, %5593
  %5607 = fmul fast float %5605, %5594
  %5608 = fmul fast float %5605, %5595
  %5609 = fsub fast float %5589, %5606
  %5610 = fsub fast float %5588, %5607
  %5611 = fsub fast float %5587, %5608
  %5612 = call float @dx.op.binary.f32(i32 36, float %5600, float 1.000000e+00)  ; FMin(a,b)
  %5613 = fsub fast float 1.000000e+00, %5612
  %5614 = bitcast float %5613 to i32
  %5615 = ashr i32 %5614, 1
  %5616 = add nsw i32 %5615, 532487669
  %5617 = bitcast i32 %5616 to float
  %5618 = fsub fast float 1.000000e+00, %5599
  %5619 = call float @dx.op.binary.f32(i32 35, float %5618, float 0x3F847AE140000000)  ; FMax(a,b)
  %5620 = fmul fast float %5619, %5619
  %5621 = fmul fast float %5620, %5620
  %5622 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5617, float %5621, float %5622, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5624 = extractvalue %dx.types.ResRet.f32 %5623, 0
  %5625 = fsub fast float 1.000000e+00, %5600
  %5626 = bitcast float %5625 to i32
  %5627 = sub nsw i32 2129859010, %5626
  %5628 = call float @dx.op.dot3.f32(i32 55, float %74, float %70, float %66, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = fmul fast float %5628, 0x3FD20DD760000000
  %5630 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5631 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = fcmp fast oeq float %5631, 0.000000e+00
  %5633 = fcmp fast oeq float %5630, 0.000000e+00
  %5634 = or i1 %5633, %5632
  br i1 %5634, label %5664, label %5635

; <label>:5635                                    ; preds = %5583
  %5636 = fsub fast float -0.000000e+00, %77
  %5637 = fsub fast float -0.000000e+00, %75
  %5638 = call float @dx.op.unary.f32(i32 24, float %5631)  ; Sqrt(value)
  %5639 = fdiv fast float %5638, %5630
  %5640 = fcmp fast ogt float %5639, 0x3FFB6F8900000000
  %5641 = select i1 %5640, float 0x3FFB6F8900000000, float %5639
  %5642 = fmul fast float %5641, 0x3FE8A23460000000
  %5643 = call float @dx.op.unary.f32(i32 7, float %5642)  ; Saturate(value)
  %5644 = call float @dx.op.binary.f32(i32 35, float %5641, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5645 = fmul fast float %5643, %5630
  %5646 = fmul fast float %5644, 0x3FF279A740000000
  %5647 = fadd fast float %5646, -1.000000e+00
  %5648 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %76, float %5636, float %5637, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = call float @dx.op.unary.f32(i32 25, float %5648)  ; Rsqrt(value)
  %5650 = fmul fast float %5649, %5636
  %5651 = fmul fast float %5649, %5637
  %5652 = fmul fast float %5649, %76
  %5653 = fmul fast float %5647, %5647
  %5654 = fsub fast float 1.000000e+00, %5653
  %5655 = fmul fast float %5644, 0x40005F8BE0000000
  %5656 = fsub fast float 0x400C5BF8A0000000, %5655
  %5657 = fdiv fast float %5645, %5656
  %5658 = fmul fast float %5657, 0x3FEE31C3C0000000
  %5659 = fmul fast float %5658, %5654
  %5660 = fmul fast float %5644, 0x3FDACB7480000000
  %5661 = fadd fast float %5660, 0xBFD7347680000000
  %5662 = fmul fast float %5661, %5657
  %5663 = fmul fast float %5662, %5654
  br label %5664

; <label>:5664                                    ; preds = %5635, %5583
  %5665 = phi float [ %5650, %5635 ], [ 0.000000e+00, %5583 ]
  %5666 = phi float [ %5651, %5635 ], [ 0.000000e+00, %5583 ]
  %5667 = phi float [ %5652, %5635 ], [ 0.000000e+00, %5583 ]
  %5668 = phi float [ %5659, %5635 ], [ 0.000000e+00, %5583 ]
  %5669 = phi float [ %5663, %5635 ], [ 0.000000e+00, %5583 ]
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5665, float %5666, float %5667, float %5593, float %5594, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = fmul fast float %5670, 0x3FDF454380000000
  %5672 = fmul fast float %5670, %5670
  %5673 = fmul fast float %5672, 0x3FEE471020000000
  %5674 = fadd fast float %5673, 0xBFD42F6020000000
  %5675 = fmul fast float %5630, 0x3FD20DD760000000
  %5676 = fmul fast float %5674, %5669
  %5677 = fadd fast float %5676, %5675
  %5678 = fmul fast float %5671, %5668
  %5679 = fadd fast float %5677, %5678
  %5680 = fsub fast float %5677, %5678
  %5681 = call float @dx.op.dot3.f32(i32 55, float %5665, float %5666, float %5667, float %5609, float %5610, float %5611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = fmul fast float %5681, 0x3FDF454380000000
  %5683 = fmul fast float %5681, %5681
  %5684 = fmul fast float %5683, 0x3FEE471020000000
  %5685 = fadd fast float %5684, 0xBFD42F6020000000
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5630, float %5668, float %5669, float 0x3FD20DD760000000, float %5682, float %5685)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5688 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = fcmp fast oeq float %5688, 0.000000e+00
  %5690 = fcmp fast oeq float %5687, 0.000000e+00
  %5691 = or i1 %5690, %5689
  br i1 %5691, label %5721, label %5692

; <label>:5692                                    ; preds = %5664
  %5693 = fsub fast float -0.000000e+00, %73
  %5694 = fsub fast float -0.000000e+00, %71
  %5695 = call float @dx.op.unary.f32(i32 24, float %5688)  ; Sqrt(value)
  %5696 = fdiv fast float %5695, %5687
  %5697 = fcmp fast ogt float %5696, 0x3FFB6F8900000000
  %5698 = select i1 %5697, float 0x3FFB6F8900000000, float %5696
  %5699 = fmul fast float %5698, 0x3FE8A23460000000
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = call float @dx.op.binary.f32(i32 35, float %5698, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5702 = fmul fast float %5700, %5687
  %5703 = fmul fast float %5701, 0x3FF279A740000000
  %5704 = fadd fast float %5703, -1.000000e+00
  %5705 = call float @dx.op.dot3.f32(i32 55, float %5693, float %5694, float %72, float %5693, float %5694, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = call float @dx.op.unary.f32(i32 25, float %5705)  ; Rsqrt(value)
  %5707 = fmul fast float %5706, %5693
  %5708 = fmul fast float %5706, %5694
  %5709 = fmul fast float %5706, %72
  %5710 = fmul fast float %5704, %5704
  %5711 = fsub fast float 1.000000e+00, %5710
  %5712 = fmul fast float %5701, 0x40005F8BE0000000
  %5713 = fsub fast float 0x400C5BF8A0000000, %5712
  %5714 = fdiv fast float %5702, %5713
  %5715 = fmul fast float %5714, 0x3FEE31C3C0000000
  %5716 = fmul fast float %5715, %5711
  %5717 = fmul fast float %5701, 0x3FDACB7480000000
  %5718 = fadd fast float %5717, 0xBFD7347680000000
  %5719 = fmul fast float %5718, %5714
  %5720 = fmul fast float %5719, %5711
  br label %5721

; <label>:5721                                    ; preds = %5692, %5664
  %5722 = phi float [ %5707, %5692 ], [ 0.000000e+00, %5664 ]
  %5723 = phi float [ %5708, %5692 ], [ 0.000000e+00, %5664 ]
  %5724 = phi float [ %5709, %5692 ], [ 0.000000e+00, %5664 ]
  %5725 = phi float [ %5716, %5692 ], [ 0.000000e+00, %5664 ]
  %5726 = phi float [ %5720, %5692 ], [ 0.000000e+00, %5664 ]
  %5727 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5723, float %5724, float %5593, float %5594, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %5728 = fmul fast float %5727, 0x3FDF454380000000
  %5729 = fmul fast float %5727, %5727
  %5730 = fmul fast float %5729, 0x3FEE471020000000
  %5731 = fadd fast float %5730, 0xBFD42F6020000000
  %5732 = fmul fast float %5687, 0x3FD20DD760000000
  %5733 = fmul fast float %5731, %5726
  %5734 = fadd fast float %5733, %5732
  %5735 = fmul fast float %5728, %5725
  %5736 = fadd fast float %5734, %5735
  %5737 = fsub fast float %5734, %5735
  %5738 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5723, float %5724, float %5609, float %5610, float %5611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5739 = fmul fast float %5738, 0x3FDF454380000000
  %5740 = fmul fast float %5738, %5738
  %5741 = fmul fast float %5740, 0x3FEE471020000000
  %5742 = fadd fast float %5741, 0xBFD42F6020000000
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5687, float %5725, float %5726, float 0x3FD20DD760000000, float %5739, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5745 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = fcmp fast oeq float %5745, 0.000000e+00
  %5747 = fcmp fast oeq float %5744, 0.000000e+00
  %5748 = or i1 %5747, %5746
  br i1 %5748, label %5778, label %5749

; <label>:5749                                    ; preds = %5721
  %5750 = fsub fast float -0.000000e+00, %69
  %5751 = fsub fast float -0.000000e+00, %67
  %5752 = call float @dx.op.unary.f32(i32 24, float %5745)  ; Sqrt(value)
  %5753 = fdiv fast float %5752, %5744
  %5754 = fcmp fast ogt float %5753, 0x3FFB6F8900000000
  %5755 = select i1 %5754, float 0x3FFB6F8900000000, float %5753
  %5756 = fmul fast float %5755, 0x3FE8A23460000000
  %5757 = call float @dx.op.unary.f32(i32 7, float %5756)  ; Saturate(value)
  %5758 = call float @dx.op.binary.f32(i32 35, float %5755, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5759 = fmul fast float %5757, %5744
  %5760 = fmul fast float %5758, 0x3FF279A740000000
  %5761 = fadd fast float %5760, -1.000000e+00
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5750, float %5751, float %68, float %5750, float %5751, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.unary.f32(i32 25, float %5762)  ; Rsqrt(value)
  %5764 = fmul fast float %5763, %5750
  %5765 = fmul fast float %5763, %5751
  %5766 = fmul fast float %5763, %68
  %5767 = fmul fast float %5761, %5761
  %5768 = fsub fast float 1.000000e+00, %5767
  %5769 = fmul fast float %5758, 0x40005F8BE0000000
  %5770 = fsub fast float 0x400C5BF8A0000000, %5769
  %5771 = fdiv fast float %5759, %5770
  %5772 = fmul fast float %5771, 0x3FEE31C3C0000000
  %5773 = fmul fast float %5772, %5768
  %5774 = fmul fast float %5758, 0x3FDACB7480000000
  %5775 = fadd fast float %5774, 0xBFD7347680000000
  %5776 = fmul fast float %5775, %5771
  %5777 = fmul fast float %5776, %5768
  br label %5778

; <label>:5778                                    ; preds = %5749, %5721
  %5779 = phi float [ %5764, %5749 ], [ 0.000000e+00, %5721 ]
  %5780 = phi float [ %5765, %5749 ], [ 0.000000e+00, %5721 ]
  %5781 = phi float [ %5766, %5749 ], [ 0.000000e+00, %5721 ]
  %5782 = phi float [ %5773, %5749 ], [ 0.000000e+00, %5721 ]
  %5783 = phi float [ %5777, %5749 ], [ 0.000000e+00, %5721 ]
  %5784 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5780, float %5781, float %5593, float %5594, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %5785 = fmul fast float %5784, 0x3FDF454380000000
  %5786 = fmul fast float %5784, %5784
  %5787 = fmul fast float %5786, 0x3FEE471020000000
  %5788 = fadd fast float %5787, 0xBFD42F6020000000
  %5789 = fmul fast float %5744, 0x3FD20DD760000000
  %5790 = fmul fast float %5788, %5783
  %5791 = fadd fast float %5790, %5789
  %5792 = fmul fast float %5785, %5782
  %5793 = fadd fast float %5791, %5792
  %5794 = fsub fast float %5791, %5792
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5780, float %5781, float %5609, float %5610, float %5611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = fmul fast float %5795, 0x3FDF454380000000
  %5797 = fmul fast float %5795, %5795
  %5798 = fmul fast float %5797, 0x3FEE471020000000
  %5799 = fadd fast float %5798, 0xBFD42F6020000000
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5744, float %5782, float %5783, float 0x3FD20DD760000000, float %5796, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = call float @dx.op.binary.f32(i32 35, float %5679, float 0.000000e+00)  ; FMax(a,b)
  %5802 = call float @dx.op.binary.f32(i32 35, float %5736, float 0.000000e+00)  ; FMax(a,b)
  %5803 = call float @dx.op.binary.f32(i32 35, float %5793, float 0.000000e+00)  ; FMax(a,b)
  %5804 = call float @dx.op.binary.f32(i32 35, float %5680, float 0.000000e+00)  ; FMax(a,b)
  %5805 = call float @dx.op.binary.f32(i32 35, float %5737, float 0.000000e+00)  ; FMax(a,b)
  %5806 = call float @dx.op.binary.f32(i32 35, float %5794, float 0.000000e+00)  ; FMax(a,b)
  %5807 = call float @dx.op.binary.f32(i32 35, float %5686, float 0.000000e+00)  ; FMax(a,b)
  %5808 = call float @dx.op.binary.f32(i32 35, float %5743, float 0.000000e+00)  ; FMax(a,b)
  %5809 = call float @dx.op.binary.f32(i32 35, float %5800, float 0.000000e+00)  ; FMax(a,b)
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 0
  %5812 = call float @dx.op.binary.f32(i32 36, float %5590, float %5811)  ; FMin(a,b)
  %5813 = fmul fast float %5812, %5613
  %5814 = fsub fast float 1.000000e+00, %5813
  %5815 = bitcast float %5814 to i32
  %5816 = sub nsw i32 2129859010, %5815
  %5817 = bitcast i32 %5816 to float
  %5818 = call float @dx.op.binary.f32(i32 36, float %5591, float %5811)  ; FMin(a,b)
  %5819 = fmul fast float %5818, %5613
  %5820 = fsub fast float 1.000000e+00, %5819
  %5821 = bitcast float %5820 to i32
  %5822 = sub nsw i32 2129859010, %5821
  %5823 = bitcast i32 %5822 to float
  %5824 = call float @dx.op.binary.f32(i32 36, float %5592, float %5811)  ; FMin(a,b)
  %5825 = fmul fast float %5824, %5613
  %5826 = fsub fast float 1.000000e+00, %5825
  %5827 = bitcast float %5826 to i32
  %5828 = sub nsw i32 2129859010, %5827
  %5829 = bitcast i32 %5828 to float
  %5830 = fmul fast float %5801, %5612
  %5831 = fmul fast float %5830, %5817
  %5832 = fmul fast float %5802, %5612
  %5833 = fmul fast float %5832, %5823
  %5834 = fmul fast float %5803, %5612
  %5835 = fmul fast float %5834, %5829
  %5836 = call float @dx.op.binary.f32(i32 36, float %5596, float %5811)  ; FMin(a,b)
  %5837 = fmul fast float %5836, %5613
  %5838 = fsub fast float 1.000000e+00, %5837
  %5839 = bitcast float %5838 to i32
  %5840 = sub nsw i32 2129859010, %5839
  %5841 = bitcast i32 %5840 to float
  %5842 = call float @dx.op.binary.f32(i32 36, float %5597, float %5811)  ; FMin(a,b)
  %5843 = fmul fast float %5842, %5613
  %5844 = fsub fast float 1.000000e+00, %5843
  %5845 = bitcast float %5844 to i32
  %5846 = sub nsw i32 2129859010, %5845
  %5847 = bitcast i32 %5846 to float
  %5848 = call float @dx.op.binary.f32(i32 36, float %5601, float %5811)  ; FMin(a,b)
  %5849 = fmul fast float %5848, %5613
  %5850 = fsub fast float 1.000000e+00, %5849
  %5851 = bitcast float %5850 to i32
  %5852 = sub nsw i32 2129859010, %5851
  %5853 = bitcast i32 %5852 to float
  %5854 = fmul fast float %5807, %5612
  %5855 = fmul fast float %5854, %5841
  %5856 = fmul fast float %5808, %5612
  %5857 = fmul fast float %5856, %5847
  %5858 = fmul fast float %5809, %5612
  %5859 = fmul fast float %5858, %5853
  %5860 = call float @dx.op.dot3.f32(i32 55, float %5831, float %5833, float %5835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5861 = select i1 %247, float 0.000000e+00, float %5831
  %5862 = select i1 %247, float %5860, float %5833
  %5863 = select i1 %247, float 0.000000e+00, float %5835
  %5864 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5865 = select i1 %247, float 0.000000e+00, float %5804
  %5866 = select i1 %247, float %5864, float %5805
  %5867 = select i1 %247, float 0.000000e+00, float %5806
  %5868 = call float @dx.op.dot3.f32(i32 55, float %5855, float %5857, float %5859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5869 = select i1 %247, float 0.000000e+00, float %5855
  %5870 = select i1 %247, float %5868, float %5857
  %5871 = select i1 %247, float 0.000000e+00, float %5859
  %5872 = fmul fast float %3988, %3988
  %5873 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5874 = fmul fast float %5603, 9.843750e-01
  %5875 = fmul fast float %5599, 9.843750e-01
  %5876 = fadd fast float %5874, 7.812500e-03
  %5877 = fadd fast float %5875, 7.812500e-03
  %5878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %5876, float %5877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5879 = extractvalue %dx.types.ResRet.f32 %5878, 0
  %5880 = extractvalue %dx.types.ResRet.f32 %5878, 1
  %5881 = extractvalue %dx.types.ResRet.f32 %5878, 2
  %5882 = extractvalue %dx.types.ResRet.f32 %5878, 3
  %5883 = fsub fast float 1.000000e+00, %5873
  %5884 = fsub fast float %5881, %5879
  %5885 = fsub fast float %5882, %5880
  %5886 = fmul fast float %5884, %5883
  %5887 = fmul fast float %5885, %5883
  %5888 = fadd fast float %5886, %5879
  %5889 = fadd fast float %5887, %5880
  %5890 = fmul fast float %5888, %5596
  %5891 = fmul fast float %5888, %5597
  %5892 = fmul fast float %5888, %5601
  %5893 = fadd fast float %5890, %5889
  %5894 = fadd fast float %5891, %5889
  %5895 = fadd fast float %5892, %5889
  %5896 = fcmp fast ogt float %4639, 0.000000e+00
  br i1 %5896, label %5897, label %5923

; <label>:5897                                    ; preds = %5778
  %5898 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4639, float %5603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5899 = extractvalue %dx.types.ResRet.f32 %5898, 0
  %5900 = extractvalue %dx.types.ResRet.f32 %5898, 1
  %5901 = extractvalue %dx.types.ResRet.f32 %5898, 2
  %5902 = fadd fast float %5899, -5.000000e-01
  %5903 = fadd fast float %5900, -5.000000e-01
  %5904 = fadd fast float %5901, -5.000000e-01
  %5905 = fsub fast float 1.000000e+00, %5596
  %5906 = fsub fast float 1.000000e+00, %5597
  %5907 = fsub fast float 1.000000e+00, %5601
  %5908 = fmul fast float %5596, 4.000000e+00
  %5909 = fmul fast float %5908, %5905
  %5910 = fmul fast float %5909, %5902
  %5911 = fmul fast float %5597, 4.000000e+00
  %5912 = fmul fast float %5911, %5906
  %5913 = fmul fast float %5912, %5903
  %5914 = fmul fast float %5601, 4.000000e+00
  %5915 = fmul fast float %5914, %5907
  %5916 = fmul fast float %5915, %5904
  %5917 = fadd fast float %5910, %5893
  %5918 = fadd fast float %5913, %5894
  %5919 = fadd fast float %5916, %5895
  %5920 = call float @dx.op.unary.f32(i32 7, float %5917)  ; Saturate(value)
  %5921 = call float @dx.op.unary.f32(i32 7, float %5918)  ; Saturate(value)
  %5922 = call float @dx.op.unary.f32(i32 7, float %5919)  ; Saturate(value)
  br label %5923

; <label>:5923                                    ; preds = %5897, %5778
  %5924 = phi float [ %5920, %5897 ], [ %5893, %5778 ]
  %5925 = phi float [ %5921, %5897 ], [ %5894, %5778 ]
  %5926 = phi float [ %5922, %5897 ], [ %5895, %5778 ]
  %5927 = call float @dx.op.binary.f32(i32 35, float %5925, float %5926)  ; FMax(a,b)
  %5928 = call float @dx.op.binary.f32(i32 35, float %5924, float %5927)  ; FMax(a,b)
  %5929 = fsub fast float 1.000000e+00, %5928
  %5930 = fmul fast float %5928, %5599
  %5931 = fadd fast float %5930, %5599
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 2
  %5934 = extractvalue %dx.types.CBufRet.f32 %5932, 3
  %5935 = fmul fast float %5931, %5933
  %5936 = fadd fast float %5935, %5934
  %5937 = call float @dx.op.unary.f32(i32 7, float %5936)  ; Saturate(value)
  %5938 = fsub fast float 1.000000e+00, %5624
  %5939 = fadd fast float %5938, %5937
  %5940 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5941 = fcmp fast olt float %5940, 1.000000e+00
  br i1 %5941, label %5942, label %6390

; <label>:5942                                    ; preds = %5923
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 2
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 3
  %5946 = fmul fast float %5944, %107
  %5947 = fmul fast float %5945, %108
  %5948 = fptoui float %5946 to i32
  %5949 = fptoui float %5947 to i32
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.CBufRet.f32 %5950, 2
  %5953 = extractvalue %dx.types.CBufRet.f32 %5950, 3
  %5954 = fadd fast float %94, -4.000000e+00
  %5955 = call float @dx.op.binary.f32(i32 35, float %5954, float 0.000000e+00)  ; FMax(a,b)
  %5956 = fadd fast float %5955, %5951
  %5957 = fmul fast float %5956, %5952
  %5958 = call float @dx.op.unary.f32(i32 23, float %5957)  ; Log(value)
  %5959 = fmul fast float %5958, %5953
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 2
  %5962 = fmul fast float %5959, %5961
  %5963 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5965 = extractvalue %dx.types.CBufRet.i32 %5964, 1
  %5966 = add i32 %5965, -1
  %5967 = uitofp i32 %5965 to float
  %5968 = fmul fast float %5967, %5963
  %5969 = fptoui float %5968 to i32
  %5970 = call i32 @dx.op.binary.i32(i32 40, i32 %5969, i32 %5966)  ; UMin(a,b)
  %5971 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5972 = extractvalue %dx.types.CBufRet.i32 %5971, 2
  %5973 = extractvalue %dx.types.CBufRet.i32 %5971, 3
  %5974 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5949, i32 %5972, i32 %5948)  ; UMad(a,b,c)
  %5975 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5970, i32 %5973, i32 %5974)  ; UMad(a,b,c)
  %5976 = call float @dx.op.binary.f32(i32 35, float %94, float 0.000000e+00)  ; FMax(a,b)
  %5977 = fptoui float %5976 to i32
  %5978 = lshr i32 %5977, 5
  %5979 = call i32 @dx.op.binary.i32(i32 40, i32 %5978, i32 8191)  ; UMin(a,b)
  br i1 false, label %5980, label %5987

; <label>:5980                                    ; preds = %5942
  %5981 = fadd fast float 0.000000e+00, %5611
  %5982 = call float @dx.op.dot3.f32(i32 55, float %5609, float %5610, float %5981, float %5609, float %5610, float %5981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = call float @dx.op.unary.f32(i32 25, float %5982)  ; Rsqrt(value)
  %5984 = fmul fast float %5983, %5609
  %5985 = fmul fast float %5983, %5610
  %5986 = fmul fast float %5981, %5983
  br label %5987

; <label>:5987                                    ; preds = %5980, %5942
  %5988 = phi float [ %5984, %5980 ], [ %5609, %5942 ]
  %5989 = phi float [ %5985, %5980 ], [ %5610, %5942 ]
  %5990 = phi float [ %5986, %5980 ], [ %5611, %5942 ]
  %5991 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5992 = extractvalue %dx.types.CBufRet.i32 %5991, 2
  %5993 = add nsw i32 %5992, -1
  %5994 = call i32 @dx.op.binary.i32(i32 37, i32 %5993, i32 0)  ; IMax(a,b)
  %5995 = shl i32 %5979, 2
  %5996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5995, i32 undef)  ; BufferLoad(srv,index,wot)
  %5997 = extractvalue %dx.types.ResRet.i32 %5996, 0
  %5998 = lshr i32 %5997, 16
  %5999 = and i32 %5997, 65535
  %6000 = lshr i32 %5997, 21
  %6001 = lshr i32 %5999, 5
  %6002 = call i32 @dx.op.binary.i32(i32 40, i32 %6001, i32 %5994)  ; UMin(a,b)
  %6003 = icmp ugt i32 %6000, %6002
  br i1 %6003, label %6366, label %6004

; <label>:6004                                    ; preds = %5987
  br label %6005

; <label>:6005                                    ; preds = %6358, %6004
  %6006 = phi float [ %6359, %6358 ], [ 0.000000e+00, %6004 ]
  %6007 = phi float [ %6360, %6358 ], [ 0.000000e+00, %6004 ]
  %6008 = phi float [ %6361, %6358 ], [ 0.000000e+00, %6004 ]
  %6009 = phi float [ %6362, %6358 ], [ 1.000000e+00, %6004 ]
  %6010 = phi i32 [ %6363, %6358 ], [ %6000, %6004 ]
  %6011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.i32 %6011, 2
  %6013 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5975, i32 %6012, i32 %6010)  ; UMad(a,b,c)
  %6014 = shl i32 %6013, 2
  %6015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6014, i32 undef)  ; BufferLoad(srv,index,wot)
  %6016 = extractvalue %dx.types.ResRet.i32 %6015, 0
  %6017 = shl i32 %6010, 5
  %6018 = sub nsw i32 %5998, %6017
  %6019 = call i32 @dx.op.binary.i32(i32 37, i32 %6018, i32 0)  ; IMax(a,b)
  %6020 = call i32 @dx.op.binary.i32(i32 38, i32 %6019, i32 31)  ; IMin(a,b)
  %6021 = sub nsw i32 1, %5998
  %6022 = add nsw i32 %6021, %5999
  %6023 = call i32 @dx.op.binary.i32(i32 37, i32 %6022, i32 0)  ; IMax(a,b)
  %6024 = call i32 @dx.op.binary.i32(i32 38, i32 %6023, i32 32)  ; IMin(a,b)
  %6025 = and i32 %6024, 31
  %6026 = shl i32 -1, %6025
  %6027 = xor i32 %6026, -1
  %6028 = and i32 %6020, 31
  %6029 = shl i32 %6027, %6028
  %6030 = icmp eq i32 %6024, 32
  %6031 = select i1 %6030, i32 -1, i32 %6029
  %6032 = and i32 %6031, %6016
  %6033 = icmp eq i32 %6032, 0
  br i1 %6033, label %6358, label %6034

; <label>:6034                                    ; preds = %6005
  br label %6035

; <label>:6035                                    ; preds = %6141, %6034
  %6036 = phi float [ %6142, %6141 ], [ %6006, %6034 ]
  %6037 = phi float [ %6143, %6141 ], [ %6007, %6034 ]
  %6038 = phi float [ %6144, %6141 ], [ %6008, %6034 ]
  %6039 = phi float [ %6145, %6141 ], [ %6009, %6034 ]
  %6040 = phi i32 [ %6045, %6141 ], [ %6032, %6034 ]
  %6041 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6040)  ; FirstbitLo(value)
  %6042 = add i32 %6041, %6017
  %6043 = and i32 %6041, 31
  %6044 = shl i32 1, %6043
  %6045 = xor i32 %6044, %6040
  %6046 = mul i32 %6042, 72
  %6047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6046, i32 undef)  ; BufferLoad(srv,index,wot)
  %6048 = extractvalue %dx.types.ResRet.f32 %6047, 0
  %6049 = extractvalue %dx.types.ResRet.f32 %6047, 1
  %6050 = extractvalue %dx.types.ResRet.f32 %6047, 2
  %6051 = add i32 %6046, 12
  %6052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6051, i32 undef)  ; BufferLoad(srv,index,wot)
  %6053 = extractvalue %dx.types.ResRet.i32 %6052, 0
  %6054 = add i32 %6046, 16
  %6055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6054, i32 undef)  ; BufferLoad(srv,index,wot)
  %6056 = extractvalue %dx.types.ResRet.f32 %6055, 0
  %6057 = extractvalue %dx.types.ResRet.f32 %6055, 1
  %6058 = extractvalue %dx.types.ResRet.f32 %6055, 2
  %6059 = add i32 %6046, 28
  %6060 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6059, i32 undef)  ; BufferLoad(srv,index,wot)
  %6061 = extractvalue %dx.types.ResRet.f32 %6060, 0
  %6062 = add i32 %6046, 32
  %6063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6062, i32 undef)  ; BufferLoad(srv,index,wot)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.ResRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.ResRet.f32 %6063, 2
  %6067 = extractvalue %dx.types.ResRet.f32 %6063, 3
  %6068 = add i32 %6046, 48
  %6069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6068, i32 undef)  ; BufferLoad(srv,index,wot)
  %6070 = extractvalue %dx.types.ResRet.f32 %6069, 0
  %6071 = extractvalue %dx.types.ResRet.f32 %6069, 1
  %6072 = add i32 %6046, 56
  %6073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6072, i32 undef)  ; BufferLoad(srv,index,wot)
  %6074 = extractvalue %dx.types.ResRet.f32 %6073, 0
  %6075 = extractvalue %dx.types.ResRet.f32 %6073, 1
  %6076 = add i32 %6046, 64
  %6077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6076, i32 undef)  ; BufferLoad(srv,index,wot)
  %6078 = extractvalue %dx.types.ResRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.ResRet.f32 %6077, 1
  %6080 = mul i32 %6042, 60
  %6081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6080, i32 undef)  ; BufferLoad(srv,index,wot)
  %6082 = extractvalue %dx.types.ResRet.f32 %6081, 0
  %6083 = extractvalue %dx.types.ResRet.f32 %6081, 1
  %6084 = extractvalue %dx.types.ResRet.f32 %6081, 2
  %6085 = add i32 %6080, 12
  %6086 = add i32 %6080, 48
  %6087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6086, i32 undef)  ; BufferLoad(srv,index,wot)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.ResRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.ResRet.f32 %6087, 2
  %6091 = and i32 %6053, 32767
  %6092 = bitcast float %6048 to i32
  %6093 = icmp eq i32 %6092, -1
  %6094 = bitcast float %6049 to i32
  %6095 = and i32 %6053, 32768
  %6096 = icmp ne i32 %6095, 0
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.CBufRet.f32 %6097, 2
  %6101 = fsub fast float %6082, %6098
  %6102 = fsub fast float %6083, %6099
  %6103 = fsub fast float %6084, %6100
  %6104 = fsub fast float %186, %6101
  %6105 = fsub fast float %187, %6102
  %6106 = fsub fast float %188, %6103
  %6107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6085, i32 undef)  ; BufferLoad(srv,index,wot)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.ResRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.ResRet.f32 %6107, 2
  %6111 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %6108, float %6109, float %6110)  ; Dot3(ax,ay,az,bx,by,bz)
  %6112 = add i32 %6080, 24
  %6113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6112, i32 undef)  ; BufferLoad(srv,index,wot)
  %6114 = extractvalue %dx.types.ResRet.f32 %6113, 0
  %6115 = extractvalue %dx.types.ResRet.f32 %6113, 1
  %6116 = extractvalue %dx.types.ResRet.f32 %6113, 2
  %6117 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %6114, float %6115, float %6116)  ; Dot3(ax,ay,az,bx,by,bz)
  %6118 = add i32 %6080, 36
  %6119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6118, i32 undef)  ; BufferLoad(srv,index,wot)
  %6120 = extractvalue %dx.types.ResRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.ResRet.f32 %6119, 1
  %6122 = extractvalue %dx.types.ResRet.f32 %6119, 2
  %6123 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %6120, float %6121, float %6122)  ; Dot3(ax,ay,az,bx,by,bz)
  %6124 = call float @dx.op.unary.f32(i32 6, float %6111)  ; FAbs(value)
  %6125 = call float @dx.op.unary.f32(i32 6, float %6117)  ; FAbs(value)
  %6126 = call float @dx.op.unary.f32(i32 6, float %6123)  ; FAbs(value)
  %6127 = fsub fast float %6088, %6124
  %6128 = fsub fast float %6089, %6125
  %6129 = fsub fast float %6090, %6126
  %6130 = fmul fast float %6127, %6056
  %6131 = fmul fast float %6128, %6057
  %6132 = fmul fast float %6129, %6058
  %6133 = call float @dx.op.binary.f32(i32 36, float %6131, float %6132)  ; FMin(a,b)
  %6134 = call float @dx.op.binary.f32(i32 36, float %6130, float %6133)  ; FMin(a,b)
  %6135 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6136 = call float @dx.op.binary.f32(i32 36, float %6039, float %6135)  ; FMin(a,b)
  %6137 = uitofp i1 %6096 to float
  %6138 = fsub fast float 1.000000e+00, %6137
  %6139 = fmul fast float %6136, %6138
  %6140 = fcmp fast ogt float %6139, 0.000000e+00
  br i1 %6140, label %6147, label %6141

; <label>:6141                                    ; preds = %6289, %6035
  %6142 = phi float [ %6353, %6289 ], [ %6036, %6035 ]
  %6143 = phi float [ %6354, %6289 ], [ %6037, %6035 ]
  %6144 = phi float [ %6355, %6289 ], [ %6038, %6035 ]
  %6145 = phi float [ %6356, %6289 ], [ %6039, %6035 ]
  %6146 = icmp eq i32 %6040, %6044
  br i1 %6146, label %6357, label %6035

; <label>:6147                                    ; preds = %6035
  br i1 %6093, label %6205, label %6148

; <label>:6148                                    ; preds = %6147
  %6149 = fsub fast float -0.000000e+00, %6108
  %6150 = fsub fast float -0.000000e+00, %6109
  %6151 = fsub fast float -0.000000e+00, %6110
  %6152 = call float @dx.op.dot3.f32(i32 55, float %5988, float %5989, float %5990, float %6149, float %6150, float %6151)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = fsub fast float -0.000000e+00, %6152
  %6154 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %6149, float %6150, float %6151)  ; Dot3(ax,ay,az,bx,by,bz)
  %6155 = fadd fast float %6154, %6071
  %6156 = fadd fast float %6070, %6154
  %6157 = fsub fast float -0.000000e+00, %6156
  %6158 = fcmp ogt float %6152, -0.000000e+00
  %6159 = select i1 %6158, float %6157, float %6155
  %6160 = call float @dx.op.unary.f32(i32 6, float %6153)  ; FAbs(value)
  %6161 = fdiv fast float 1.000000e+00, %6160
  %6162 = fmul fast float %6159, %6161
  %6163 = call float @dx.op.binary.f32(i32 35, float %6162, float 0.000000e+00)  ; FMax(a,b)
  %6164 = fsub fast float -0.000000e+00, %6114
  %6165 = fsub fast float -0.000000e+00, %6115
  %6166 = fsub fast float -0.000000e+00, %6116
  %6167 = call float @dx.op.dot3.f32(i32 55, float %5988, float %5989, float %5990, float %6164, float %6165, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = fsub fast float -0.000000e+00, %6167
  %6169 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %6164, float %6165, float %6166)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = fadd fast float %6169, %6075
  %6171 = fadd fast float %6074, %6169
  %6172 = fsub fast float -0.000000e+00, %6171
  %6173 = fcmp ogt float %6167, -0.000000e+00
  %6174 = select i1 %6173, float %6172, float %6170
  %6175 = call float @dx.op.unary.f32(i32 6, float %6168)  ; FAbs(value)
  %6176 = fdiv fast float 1.000000e+00, %6175
  %6177 = fmul fast float %6174, %6176
  %6178 = call float @dx.op.binary.f32(i32 35, float %6177, float 0.000000e+00)  ; FMax(a,b)
  %6179 = fsub fast float -0.000000e+00, %6120
  %6180 = fsub fast float -0.000000e+00, %6121
  %6181 = fsub fast float -0.000000e+00, %6122
  %6182 = call float @dx.op.dot3.f32(i32 55, float %5988, float %5989, float %5990, float %6179, float %6180, float %6181)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = fsub fast float -0.000000e+00, %6182
  %6184 = call float @dx.op.dot3.f32(i32 55, float %6104, float %6105, float %6106, float %6179, float %6180, float %6181)  ; Dot3(ax,ay,az,bx,by,bz)
  %6185 = fadd fast float %6184, %6079
  %6186 = fadd fast float %6078, %6184
  %6187 = fsub fast float -0.000000e+00, %6186
  %6188 = fcmp ogt float %6182, -0.000000e+00
  %6189 = select i1 %6188, float %6187, float %6185
  %6190 = call float @dx.op.unary.f32(i32 6, float %6183)  ; FAbs(value)
  %6191 = fdiv fast float 1.000000e+00, %6190
  %6192 = fmul fast float %6189, %6191
  %6193 = call float @dx.op.binary.f32(i32 35, float %6192, float 0.000000e+00)  ; FMax(a,b)
  %6194 = call float @dx.op.binary.f32(i32 36, float %6178, float %6193)  ; FMin(a,b)
  %6195 = call float @dx.op.binary.f32(i32 36, float %6163, float %6194)  ; FMin(a,b)
  %6196 = fmul fast float %6195, %5988
  %6197 = fmul fast float %6195, %5989
  %6198 = fmul fast float %6195, %5990
  %6199 = fadd fast float %6196, %186
  %6200 = fadd fast float %6197, %187
  %6201 = fadd fast float %6198, %188
  %6202 = fsub fast float %6199, %6048
  %6203 = fsub fast float %6200, %6049
  %6204 = fsub fast float %6201, %6050
  br label %6212

; <label>:6205                                    ; preds = %6147
  %6206 = fmul fast float %5988, 8.096000e+03
  %6207 = fmul fast float %5989, 8.096000e+03
  %6208 = fmul fast float %5990, 8.096000e+03
  %6209 = fadd fast float %6206, %186
  %6210 = fadd fast float %6207, %187
  %6211 = fadd fast float %6208, %188
  br label %6212

; <label>:6212                                    ; preds = %6205, %6148
  %6213 = phi float [ %5988, %6205 ], [ %6202, %6148 ]
  %6214 = phi float [ %5989, %6205 ], [ %6203, %6148 ]
  %6215 = phi float [ %5990, %6205 ], [ %6204, %6148 ]
  %6216 = phi float [ %6209, %6205 ], [ %6199, %6148 ]
  %6217 = phi float [ %6210, %6205 ], [ %6200, %6148 ]
  %6218 = phi float [ %6211, %6205 ], [ %6201, %6148 ]
  %6219 = fcmp fast olt float %6067, 1.000000e+00
  br i1 %6219, label %6220, label %6251, !dx.controlflow.hints !90

; <label>:6220                                    ; preds = %6212
  %6221 = fmul fast float %6215, %6065
  %6222 = fmul fast float %6214, %6066
  %6223 = fsub fast float %6221, %6222
  %6224 = fmul fast float %6213, %6066
  %6225 = fmul fast float %6215, %6064
  %6226 = fsub fast float %6224, %6225
  %6227 = fmul fast float %6214, %6064
  %6228 = fmul fast float %6213, %6065
  %6229 = fsub fast float %6227, %6228
  %6230 = fmul fast float %6223, 2.000000e+00
  %6231 = fmul fast float %6226, 2.000000e+00
  %6232 = fmul fast float %6229, 2.000000e+00
  %6233 = fmul fast float %6230, %6067
  %6234 = fmul fast float %6231, %6067
  %6235 = fmul fast float %6232, %6067
  %6236 = fmul fast float %6232, %6065
  %6237 = fmul fast float %6231, %6066
  %6238 = fmul fast float %6230, %6066
  %6239 = fmul fast float %6232, %6064
  %6240 = fmul fast float %6231, %6064
  %6241 = fmul fast float %6230, %6065
  %6242 = fadd fast float %6236, %6213
  %6243 = fadd fast float %6242, %6233
  %6244 = fsub fast float %6243, %6237
  %6245 = fsub fast float %6214, %6239
  %6246 = fadd fast float %6245, %6234
  %6247 = fadd fast float %6246, %6238
  %6248 = fadd fast float %6235, %6215
  %6249 = fsub fast float %6248, %6241
  %6250 = fadd fast float %6249, %6240
  br label %6251

; <label>:6251                                    ; preds = %6220, %6212
  %6252 = phi float [ %6244, %6220 ], [ %6213, %6212 ]
  %6253 = phi float [ %6247, %6220 ], [ %6214, %6212 ]
  %6254 = phi float [ %6250, %6220 ], [ %6215, %6212 ]
  br i1 %6093, label %6286, label %6255

; <label>:6255                                    ; preds = %6251
  %6256 = fmul fast float %5599, 0x400187C840000000
  %6257 = fadd fast float %6256, 0xC00EFC2120000000
  %6258 = fmul fast float %6257, %5599
  %6259 = fadd fast float %6258, 0x3FE5D16340000000
  %6260 = fmul fast float %6259, %5599
  %6261 = fadd fast float %6260, 1.000000e+00
  %6262 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6263 = fsub fast float %6216, %186
  %6264 = fsub fast float %6217, %187
  %6265 = fsub fast float %6218, %188
  %6266 = fsub fast float %6216, %6048
  %6267 = fsub fast float %6217, %6049
  %6268 = fsub fast float %6218, %6050
  %6269 = call float @dx.op.dot3.f32(i32 55, float %6263, float %6264, float %6265, float %6263, float %6264, float %6265)  ; Dot3(ax,ay,az,bx,by,bz)
  %6270 = call float @dx.op.dot3.f32(i32 55, float %6266, float %6267, float %6268, float %6266, float %6267, float %6268)  ; Dot3(ax,ay,az,bx,by,bz)
  %6271 = fadd fast float %6270, 0x3EE4F8B580000000
  %6272 = fdiv fast float %6269, %6271
  %6273 = bitcast float %6272 to i32
  %6274 = ashr i32 %6273, 1
  %6275 = add nsw i32 %6274, 532487669
  %6276 = bitcast i32 %6275 to float
  %6277 = fmul fast float %6276, %6262
  %6278 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6279 = fmul fast float %6278, 0x4009981AE0000000
  %6280 = fsub fast float 0x40111BBD80000000, %6279
  %6281 = fmul fast float %6280, %6278
  %6282 = fadd fast float %6281, 0xC0009F6020000000
  %6283 = fmul fast float %6282, %6278
  %6284 = fadd fast float %6283, 1.000000e+00
  %6285 = call float @dx.op.unary.f32(i32 7, float %6284)  ; Saturate(value)
  br label %6289

; <label>:6286                                    ; preds = %6251
  %6287 = icmp ne i32 %6094, -1
  %6288 = zext i1 %6287 to i32
  br label %6289

; <label>:6289                                    ; preds = %6286, %6255
  %6290 = phi float [ %5599, %6286 ], [ %6285, %6255 ]
  %6291 = phi i32 [ %6288, %6286 ], [ 0, %6255 ]
  %6292 = fmul float %6290, 5.000000e+00
  %6293 = fsub float 5.000000e+00, %6292
  %6294 = icmp ne i32 %6291, 0
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 3
  %6297 = fadd fast float %6296, %6293
  %6298 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6297)  ; FMax(a,b)
  %6299 = call float @dx.op.unary.f32(i32 6, float %6252)  ; FAbs(value)
  %6300 = call float @dx.op.unary.f32(i32 6, float %6253)  ; FAbs(value)
  %6301 = fadd fast float %6300, %6299
  %6302 = call float @dx.op.unary.f32(i32 6, float %6254)  ; FAbs(value)
  %6303 = fadd fast float %6301, %6302
  %6304 = fcmp fast oeq float %6303, 0.000000e+00
  %6305 = fdiv fast float 1.000000e+00, %6303
  %6306 = select i1 %6304, float 1.000000e+00, float %6305
  %6307 = fmul fast float %6306, %6252
  %6308 = fmul fast float %6306, %6253
  %6309 = call float @dx.op.unary.f32(i32 6, float %6308)  ; FAbs(value)
  %6310 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6311 = fsub fast float 1.000000e+00, %6309
  %6312 = fsub fast float 1.000000e+00, %6310
  %6313 = fcmp fast oge float %6307, 0.000000e+00
  %6314 = fcmp fast oge float %6308, 0.000000e+00
  %6315 = select i1 %6313, float 1.000000e+00, float -1.000000e+00
  %6316 = select i1 %6314, float 1.000000e+00, float -1.000000e+00
  %6317 = fcmp fast ole float %6254, 0.000000e+00
  %6318 = fmul fast float %6315, %6311
  %6319 = fmul fast float %6316, %6312
  %6320 = select i1 %6317, float %6318, float %6307
  %6321 = select i1 %6317, float %6319, float %6308
  %6322 = fmul fast float %6320, 5.000000e-01
  %6323 = fmul fast float %6321, 5.000000e-01
  %6324 = fadd fast float %6322, 5.000000e-01
  %6325 = fadd fast float %6323, 5.000000e-01
  %6326 = uitofp i32 %6091 to float
  %6327 = call float @dx.op.binary.f32(i32 36, float %6298, float 3.000000e+00)  ; FMin(a,b)
  %6328 = fadd fast float %6327, 2.000000e+00
  %6329 = call float @dx.op.unary.f32(i32 21, float %6328)  ; Exp(value)
  %6330 = extractvalue %dx.types.CBufRet.f32 %6295, 1
  %6331 = fmul fast float %6330, %6329
  %6332 = fmul fast float %6331, 2.000000e+00
  %6333 = fsub fast float 1.000000e+00, %6332
  %6334 = fmul fast float %6324, %6333
  %6335 = fmul fast float %6325, %6333
  %6336 = fadd fast float %6334, %6331
  %6337 = fadd fast float %6335, %6331
  %6338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %6336, float %6337, float %6326, float undef, i32 0, i32 0, i32 undef, float %6298)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6339 = extractvalue %dx.types.ResRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.ResRet.f32 %6338, 1
  %6341 = extractvalue %dx.types.ResRet.f32 %6338, 2
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 3
  %6344 = fmul fast float %6343, %6061
  %6345 = call float @dx.op.binary.f32(i32 36, float %5629, float %6344)  ; FMin(a,b)
  %6346 = select i1 %6294, float %6345, float %6344
  %6347 = fmul fast float %6339, %6139
  %6348 = fmul fast float %6347, %6346
  %6349 = fmul fast float %6340, %6139
  %6350 = fmul fast float %6349, %6346
  %6351 = fmul fast float %6341, %6139
  %6352 = fmul fast float %6351, %6346
  %6353 = fadd fast float %6348, %6036
  %6354 = fadd fast float %6350, %6037
  %6355 = fadd fast float %6352, %6038
  %6356 = fsub fast float %6039, %6139
  br label %6141

; <label>:6357                                    ; preds = %6141
  br label %6358

; <label>:6358                                    ; preds = %6357, %6005
  %6359 = phi float [ %6006, %6005 ], [ %6142, %6357 ]
  %6360 = phi float [ %6007, %6005 ], [ %6143, %6357 ]
  %6361 = phi float [ %6008, %6005 ], [ %6144, %6357 ]
  %6362 = phi float [ %6009, %6005 ], [ %6145, %6357 ]
  %6363 = add i32 %6010, 1
  %6364 = icmp ugt i32 %6363, %6002
  br i1 %6364, label %6365, label %6005, !llvm.loop !91

; <label>:6365                                    ; preds = %6358
  br label %6366

; <label>:6366                                    ; preds = %6365, %5987
  %6367 = phi float [ 0.000000e+00, %5987 ], [ %6359, %6365 ]
  %6368 = phi float [ 0.000000e+00, %5987 ], [ %6360, %6365 ]
  %6369 = phi float [ 0.000000e+00, %5987 ], [ %6361, %6365 ]
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6367, float %6368, float %6369, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = select i1 %247, float 0.000000e+00, float %6367
  %6372 = select i1 %247, float %6370, float %6368
  %6373 = select i1 %247, float 0.000000e+00, float %6369
  %6374 = fcmp fast olt float %5940, 0.000000e+00
  %6375 = call float @dx.op.unary.f32(i32 6, float %5940)  ; FAbs(value)
  %6376 = fmul fast float %6375, %5869
  %6377 = fmul fast float %6375, %5870
  %6378 = fmul fast float %6375, %5871
  %6379 = select i1 %6374, float %5869, float %6376
  %6380 = select i1 %6374, float %5870, float %6377
  %6381 = select i1 %6374, float %5871, float %6378
  %6382 = fsub fast float 1.000000e+00, %6375
  %6383 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6384 = fmul fast float %6383, %6371
  %6385 = fmul fast float %6383, %6372
  %6386 = fmul fast float %6383, %6373
  %6387 = fadd fast float %6379, %6384
  %6388 = fadd fast float %6380, %6385
  %6389 = fadd fast float %6381, %6386
  br label %6390

; <label>:6390                                    ; preds = %6366, %5923
  %6391 = phi float [ %5869, %5923 ], [ %6387, %6366 ]
  %6392 = phi float [ %5870, %5923 ], [ %6388, %6366 ]
  %6393 = phi float [ %5871, %5923 ], [ %6389, %6366 ]
  %6394 = call float @dx.op.dot3.f32(i32 55, float %5590, float %5591, float %5592, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6395 = fcmp fast ogt float %6394, 0x3E7FF19E20000000
  %6396 = fdiv fast float 1.000000e+00, %6394
  %6397 = select i1 %6395, float %6396, float 0.000000e+00
  %6398 = fmul fast float %6397, %5590
  %6399 = fmul fast float %6397, %5591
  %6400 = fmul fast float %6397, %5592
  %6401 = fadd fast float %6398, -1.000000e+00
  %6402 = fadd fast float %6399, -1.000000e+00
  %6403 = fadd fast float %6400, -1.000000e+00
  %6404 = fmul fast float %6401, 5.000000e-01
  %6405 = fmul fast float %6402, 5.000000e-01
  %6406 = fmul fast float %6403, 5.000000e-01
  %6407 = fadd fast float %6404, 1.000000e+00
  %6408 = fadd fast float %6405, 1.000000e+00
  %6409 = fadd fast float %6406, 1.000000e+00
  %6410 = call float @dx.op.binary.f32(i32 35, float %5603, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6411 = fdiv fast float %3988, %6410
  %6412 = fcmp fast olt float %4688, 1.270000e+02
  %6413 = fcmp fast olt float %4689, 1.270000e+02
  %6414 = fcmp fast olt float %4690, 1.270000e+02
  %6415 = fmul fast float %4688, 0xBFF7154760000000
  %6416 = fmul fast float %6415, %6411
  %6417 = fmul fast float %4689, 0xBFF7154760000000
  %6418 = fmul fast float %6417, %6411
  %6419 = fmul fast float %4690, 0xBFF7154760000000
  %6420 = fmul fast float %6419, %6411
  %6421 = call float @dx.op.unary.f32(i32 21, float %6416)  ; Exp(value)
  %6422 = call float @dx.op.unary.f32(i32 21, float %6418)  ; Exp(value)
  %6423 = call float @dx.op.unary.f32(i32 21, float %6420)  ; Exp(value)
  %6424 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  %6425 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6426 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  %6427 = select i1 %6412, float %6424, float 0.000000e+00
  %6428 = select i1 %6413, float %6425, float 0.000000e+00
  %6429 = select i1 %6414, float %6426, float 0.000000e+00
  %6430 = fmul fast float %6427, %5929
  %6431 = fmul fast float %6428, %5929
  %6432 = fmul fast float %6429, %5929
  %6433 = fadd fast float %6430, -1.000000e+00
  %6434 = fadd fast float %6431, -1.000000e+00
  %6435 = fadd fast float %6432, -1.000000e+00
  %6436 = fmul fast float %6433, %4636
  %6437 = fmul fast float %6434, %4636
  %6438 = fmul fast float %6435, %4636
  %6439 = fmul fast float %6391, %5924
  %6440 = fmul fast float %6392, %5925
  %6441 = fmul fast float %6393, %5926
  %6442 = fsub fast float 1.000000e+00, %5603
  %6443 = bitcast float %6442 to i32
  %6444 = sitofp i32 %6443 to float
  %6445 = fmul fast float %6444, 5.000000e+00
  %6446 = fadd fast float %6445, 0xC1EFBF8940000000
  %6447 = fptosi float %6446 to i32
  %6448 = bitcast i32 %6447 to float
  %6449 = fmul fast float %6448, %4640
  %6450 = fmul fast float %5861, %6449
  %6451 = fmul fast float %6450, %5929
  %6452 = fmul fast float %6451, %6407
  %6453 = fmul fast float %5862, %6449
  %6454 = fmul fast float %6453, %5929
  %6455 = fmul fast float %6454, %6408
  %6456 = fmul fast float %5863, %6449
  %6457 = fmul fast float %6456, %5929
  %6458 = fmul fast float %6457, %6409
  %6459 = fadd fast float %6439, %4626
  %6460 = fadd fast float %6459, %6452
  %6461 = fmul fast float %6460, %4636
  %6462 = fadd fast float %6440, %4627
  %6463 = fadd fast float %6462, %6455
  %6464 = fmul fast float %6463, %4636
  %6465 = fadd fast float %6441, %4628
  %6466 = fadd fast float %6465, %6458
  %6467 = fmul fast float %6466, %4636
  %6468 = fmul fast float %5597, 0x4012D0A400000000
  %6469 = fadd fast float %6438, 1.000000e+00
  %6470 = fadd fast float %6437, 1.000000e+00
  %6471 = fadd fast float %6436, 1.000000e+00
  %6472 = fmul fast float %5929, %5863
  %6473 = fmul fast float %5929, %5862
  %6474 = fmul fast float %5929, %5861
  %6475 = fmul fast float %5618, %4636
  %6476 = fsub fast float 1.000000e+00, %6475
  %6477 = call float @dx.op.unary.f32(i32 7, float %6476)  ; Saturate(value)
  %6478 = fsub fast float 1.000000e+00, %6477
  %6479 = fadd fast float %6468, 0x3FDB6377A0000000
  %6480 = fmul fast float %6478, %6479
  %6481 = call float @dx.op.dot3.f32(i32 55, float %5398, float %5399, float %5400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6482 = fadd fast float %6480, %6481
  %6483 = call float @dx.op.unary.f32(i32 7, float %6482)  ; Saturate(value)
  %6484 = call float @dx.op.binary.f32(i32 35, float %6483, float 0x3F847AE140000000)  ; FMax(a,b)
  %6485 = fmul fast float %6484, %6484
  %6486 = fmul fast float %6485, %6485
  %6487 = fmul fast float %6486, 0xC00A935000000000
  %6488 = call float @dx.op.unary.f32(i32 21, float %6487)  ; Exp(value)
  %6489 = fsub fast float 1.000000e+00, %6488
  %6490 = fmul fast float %6471, %5865
  %6491 = fmul fast float %6490, %6489
  %6492 = fmul fast float %6470, %5866
  %6493 = fmul fast float %6492, %6489
  %6494 = fmul fast float %6469, %5867
  %6495 = fmul fast float %6494, %6489
  %6496 = fadd fast float %6491, %6474
  %6497 = fmul fast float %6496, %4636
  %6498 = fadd fast float %6493, %6473
  %6499 = fmul fast float %6498, %4636
  %6500 = fadd fast float %6495, %6472
  %6501 = fmul fast float %6500, %4636
  %6502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6503 = extractvalue %dx.types.CBufRet.f32 %6502, 3
  %6504 = fcmp fast oeq float %6503, 0.000000e+00
  br i1 %6504, label %8270, label %6505

; <label>:6505                                    ; preds = %6390
  %6506 = extractvalue %dx.types.CBufRet.f32 %6502, 0
  %6507 = extractvalue %dx.types.CBufRet.f32 %6502, 1
  %6508 = extractvalue %dx.types.CBufRet.f32 %6502, 2
  %6509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6510 = extractvalue %dx.types.CBufRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.CBufRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.CBufRet.f32 %6509, 2
  %6513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6514 = extractvalue %dx.types.CBufRet.f32 %6513, 0
  %6515 = extractvalue %dx.types.CBufRet.f32 %6513, 1
  %6516 = call float @dx.op.dot3.f32(i32 55, float %6510, float %6511, float %6512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6517 = select i1 %247, float %6514, float %6510
  %6518 = select i1 %247, float %6516, float %6511
  %6519 = select i1 %247, float %6515, float %6512
  %6520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6521 = extractvalue %dx.types.CBufRet.f32 %6520, 2
  %6522 = fmul fast float %6521, %114
  %6523 = fmul fast float %6521, %115
  %6524 = fmul fast float %6521, %116
  %6525 = fadd fast float %6522, %186
  %6526 = fadd fast float %6523, %187
  %6527 = fadd fast float %6524, %188
  %6528 = fcmp fast olt float %6503, 0.000000e+00
  br i1 %6528, label %7786, label %6529

; <label>:6529                                    ; preds = %6505
  %6530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6531 = extractvalue %dx.types.CBufRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.CBufRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.CBufRet.f32 %6530, 2
  %6534 = extractvalue %dx.types.CBufRet.f32 %6530, 3
  %6535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6536 = extractvalue %dx.types.CBufRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.CBufRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.CBufRet.f32 %6535, 2
  %6539 = extractvalue %dx.types.CBufRet.f32 %6535, 3
  %6540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.f32 %6540, 0
  %6542 = extractvalue %dx.types.CBufRet.f32 %6540, 1
  %6543 = extractvalue %dx.types.CBufRet.f32 %6540, 2
  %6544 = extractvalue %dx.types.CBufRet.f32 %6540, 3
  %6545 = fmul fast float %6531, %6525
  %6546 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6532, float %6545)  ; FMad(a,b,c)
  %6547 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %6533, float %6546)  ; FMad(a,b,c)
  %6548 = fadd fast float %6547, %6534
  %6549 = fmul fast float %6536, %6525
  %6550 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6537, float %6549)  ; FMad(a,b,c)
  %6551 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %6538, float %6550)  ; FMad(a,b,c)
  %6552 = fadd fast float %6551, %6539
  %6553 = fmul fast float %6541, %6525
  %6554 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6542, float %6553)  ; FMad(a,b,c)
  %6555 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %6543, float %6554)  ; FMad(a,b,c)
  %6556 = fadd fast float %6555, %6544
  %6557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6558 = extractvalue %dx.types.CBufRet.f32 %6557, 0
  %6559 = fcmp fast une float %6558, 0.000000e+00
  %6560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6560, 0
  %6562 = extractvalue %dx.types.CBufRet.f32 %6560, 1
  %6563 = extractvalue %dx.types.CBufRet.f32 %6560, 3
  %6564 = fmul fast float %6563, %6548
  %6565 = fmul fast float %6563, %6552
  %6566 = fadd fast float %6564, %6561
  %6567 = fadd fast float %6565, %6562
  %6568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6569 = extractvalue %dx.types.CBufRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.CBufRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.CBufRet.f32 %6568, 3
  %6572 = fmul fast float %6571, %6548
  %6573 = fmul fast float %6571, %6552
  %6574 = fadd fast float %6572, %6569
  %6575 = fadd fast float %6573, %6570
  %6576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6577 = extractvalue %dx.types.CBufRet.f32 %6576, 1
  %6578 = fsub fast float %6577, %6556
  %6579 = extractvalue %dx.types.CBufRet.f32 %6576, 2
  %6580 = fmul fast float %6578, %6579
  %6581 = fsub fast float 1.000000e+00, %6580
  %6582 = call float @dx.op.unary.f32(i32 7, float %6581)  ; Saturate(value)
  br i1 %6559, label %6643, label %6583

; <label>:6583                                    ; preds = %6529
  %6584 = extractvalue %dx.types.CBufRet.f32 %6568, 2
  %6585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6586 = extractvalue %dx.types.CBufRet.f32 %6585, 2
  %6587 = fadd fast float %6586, %6584
  %6588 = fcmp fast ogt float %6587, 0.000000e+00
  br i1 %6588, label %6589, label %6613

; <label>:6589                                    ; preds = %6583
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 0
  %6592 = extractvalue %dx.types.CBufRet.f32 %6590, 1
  %6593 = fsub fast float %6574, %6591
  %6594 = fsub fast float %6575, %6592
  %6595 = fcmp fast olt float %6593, 0.000000e+00
  %6596 = fcmp fast olt float %6594, 0.000000e+00
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.CBufRet.f32 %6597, 1
  %6600 = extractvalue %dx.types.CBufRet.f32 %6597, 2
  %6601 = extractvalue %dx.types.CBufRet.f32 %6597, 3
  %6602 = select i1 %6595, float %6598, float %6600
  %6603 = select i1 %6596, float %6599, float %6601
  %6604 = fmul fast float %6602, %6593
  %6605 = fmul fast float %6603, %6594
  %6606 = call float @dx.op.unary.f32(i32 6, float %6604)  ; FAbs(value)
  %6607 = call float @dx.op.unary.f32(i32 6, float %6605)  ; FAbs(value)
  %6608 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6609 = call float @dx.op.binary.f32(i32 35, float %6606, float %6607)  ; FMax(a,b)
  %6610 = fsub fast float %6608, %6609
  %6611 = call float @dx.op.unary.f32(i32 7, float %6610)  ; Saturate(value)
  %6612 = fmul fast float %6611, %6582
  br label %6613

; <label>:6613                                    ; preds = %6589, %6583
  %6614 = phi float [ %6612, %6589 ], [ 0.000000e+00, %6583 ]
  %6615 = extractvalue %dx.types.CBufRet.f32 %6560, 2
  %6616 = extractvalue %dx.types.CBufRet.f32 %6585, 1
  %6617 = fadd fast float %6616, %6615
  %6618 = fcmp fast ogt float %6617, 0.000000e+00
  br i1 %6618, label %6619, label %6643

; <label>:6619                                    ; preds = %6613
  %6620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6621 = extractvalue %dx.types.CBufRet.f32 %6620, 0
  %6622 = extractvalue %dx.types.CBufRet.f32 %6620, 1
  %6623 = fsub fast float %6566, %6621
  %6624 = fsub fast float %6567, %6622
  %6625 = fcmp fast olt float %6623, 0.000000e+00
  %6626 = fcmp fast olt float %6624, 0.000000e+00
  %6627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6627, 0
  %6629 = extractvalue %dx.types.CBufRet.f32 %6627, 1
  %6630 = extractvalue %dx.types.CBufRet.f32 %6627, 2
  %6631 = extractvalue %dx.types.CBufRet.f32 %6627, 3
  %6632 = select i1 %6625, float %6628, float %6630
  %6633 = select i1 %6626, float %6629, float %6631
  %6634 = fmul fast float %6632, %6623
  %6635 = fmul fast float %6633, %6624
  %6636 = call float @dx.op.unary.f32(i32 6, float %6634)  ; FAbs(value)
  %6637 = call float @dx.op.unary.f32(i32 6, float %6635)  ; FAbs(value)
  %6638 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6639 = call float @dx.op.binary.f32(i32 35, float %6636, float %6637)  ; FMax(a,b)
  %6640 = fsub fast float %6638, %6639
  %6641 = call float @dx.op.unary.f32(i32 7, float %6640)  ; Saturate(value)
  %6642 = fmul fast float %6641, %6582
  br label %6643

; <label>:6643                                    ; preds = %6619, %6613, %6529
  %6644 = phi float [ 0.000000e+00, %6529 ], [ %6642, %6619 ], [ 0.000000e+00, %6613 ]
  %6645 = phi float [ 0.000000e+00, %6529 ], [ %6614, %6619 ], [ %6614, %6613 ]
  %6646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6647 = extractvalue %dx.types.CBufRet.f32 %6646, 1
  %6648 = call float @dx.op.unary.f32(i32 7, float %6647)  ; Saturate(value)
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 0
  %6651 = extractvalue %dx.types.CBufRet.f32 %6649, 1
  %6652 = fsub fast float %6548, %6650
  %6653 = fsub fast float %6552, %6651
  %6654 = fcmp fast olt float %6652, 0.000000e+00
  %6655 = fcmp fast olt float %6653, 0.000000e+00
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.CBufRet.f32 %6656, 1
  %6659 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6660 = extractvalue %dx.types.CBufRet.f32 %6656, 3
  %6661 = select i1 %6654, float %6657, float %6659
  %6662 = select i1 %6655, float %6658, float %6660
  %6663 = fmul fast float %6661, %6652
  %6664 = fmul fast float %6662, %6653
  %6665 = call float @dx.op.unary.f32(i32 6, float %6663)  ; FAbs(value)
  %6666 = call float @dx.op.unary.f32(i32 6, float %6664)  ; FAbs(value)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6520, 0
  %6668 = call float @dx.op.binary.f32(i32 35, float %6665, float %6666)  ; FMax(a,b)
  %6669 = fsub fast float %6667, %6668
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = call float @dx.op.binary.f32(i32 36, float %6670, float %6648)  ; FMin(a,b)
  %6672 = fmul fast float %6671, %6582
  %6673 = fsub fast float %6644, %6672
  %6674 = fsub fast float %6645, %6644
  %6675 = fsub fast float %6674, %6672
  %6676 = call float @dx.op.binary.f32(i32 35, float %6644, float %6645)  ; FMax(a,b)
  %6677 = call float @dx.op.binary.f32(i32 35, float %6672, float %6676)  ; FMax(a,b)
  %6678 = fcmp fast olt float %6677, 1.000000e+00
  br i1 %6678, label %6679, label %7077, !dx.controlflow.hints !93

; <label>:6679                                    ; preds = %6643
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6682 = fcmp fast une float %6681, 0.000000e+00
  br i1 %6682, label %6683, label %7077, !dx.controlflow.hints !94

; <label>:6683                                    ; preds = %6679
  %6684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6684, 0
  %6686 = extractvalue %dx.types.CBufRet.f32 %6684, 1
  %6687 = extractvalue %dx.types.CBufRet.f32 %6684, 2
  %6688 = extractvalue %dx.types.CBufRet.f32 %6684, 3
  %6689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6689, 0
  %6691 = extractvalue %dx.types.CBufRet.f32 %6689, 1
  %6692 = extractvalue %dx.types.CBufRet.f32 %6689, 2
  %6693 = extractvalue %dx.types.CBufRet.f32 %6689, 3
  %6694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6695 = extractvalue %dx.types.CBufRet.f32 %6694, 0
  %6696 = extractvalue %dx.types.CBufRet.f32 %6694, 1
  %6697 = extractvalue %dx.types.CBufRet.f32 %6694, 2
  %6698 = extractvalue %dx.types.CBufRet.f32 %6694, 3
  %6699 = fmul fast float %6685, %6525
  %6700 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6686, float %6699)  ; FMad(a,b,c)
  %6701 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %6687, float %6700)  ; FMad(a,b,c)
  %6702 = fadd fast float %6701, %6688
  %6703 = fmul fast float %6690, %6525
  %6704 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6691, float %6703)  ; FMad(a,b,c)
  %6705 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %6692, float %6704)  ; FMad(a,b,c)
  %6706 = fadd fast float %6705, %6693
  %6707 = fmul fast float %6695, %6525
  %6708 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %6696, float %6707)  ; FMad(a,b,c)
  %6709 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %6697, float %6708)  ; FMad(a,b,c)
  %6710 = fadd fast float %6709, %6698
  %6711 = fcmp fast oge float %6702, 1.000000e+00
  %6712 = fcmp fast oge float %6706, 1.000000e+00
  %6713 = or i1 %6711, %6712
  %6714 = fcmp fast olt float %6702, 0.000000e+00
  %6715 = fcmp fast olt float %6706, 0.000000e+00
  %6716 = or i1 %6714, %6715
  %6717 = or i1 %6713, %6716
  br i1 %6717, label %7077, label %6718, !dx.controlflow.hints !95

; <label>:6718                                    ; preds = %6683
  %6719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6720 = extractvalue %dx.types.CBufRet.f32 %6719, 0
  %6721 = extractvalue %dx.types.CBufRet.f32 %6719, 1
  %6722 = extractvalue %dx.types.CBufRet.f32 %6719, 2
  %6723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6724 = extractvalue %dx.types.CBufRet.i32 %6723, 2
  %6725 = uitofp i32 %6724 to float
  %6726 = extractvalue %dx.types.CBufRet.i32 %6723, 3
  %6727 = uitofp i32 %6726 to float
  %6728 = extractvalue %dx.types.CBufRet.f32 %6719, 3
  %6729 = fmul fast float %6728, 2.000000e+00
  %6730 = fsub fast float %6702, %6720
  %6731 = fsub fast float %6706, %6721
  %6732 = fmul fast float %6729, %6730
  %6733 = fmul fast float %6729, %6731
  %6734 = fdiv fast float 1.000000e+00, %6508
  %6735 = fmul fast float %6733, %6734
  %6736 = call float @dx.op.unary.f32(i32 6, float %6735)  ; FAbs(value)
  %6737 = fmul fast float %6722, %6527
  %6738 = fmul fast float %6737, %6729
  %6739 = call float @dx.op.unary.f32(i32 6, float %6738)  ; FAbs(value)
  %6740 = call float @dx.op.unary.f32(i32 6, float %6732)  ; FAbs(value)
  %6741 = call float @dx.op.binary.f32(i32 35, float %6739, float %6736)  ; FMax(a,b)
  %6742 = call float @dx.op.binary.f32(i32 35, float %6740, float %6741)  ; FMax(a,b)
  %6743 = fmul fast float %6742, 2.000000e+00
  %6744 = call float @dx.op.unary.f32(i32 23, float %6743)  ; Log(value)
  %6745 = call float @dx.op.binary.f32(i32 35, float %6744, float %6725)  ; FMax(a,b)
  %6746 = call float @dx.op.unary.f32(i32 22, float %6745)  ; Frc(value)
  %6747 = fadd fast float %6746, 0xBFEA666660000000
  %6748 = fmul fast float %6747, 8.000000e+00
  %6749 = call float @dx.op.unary.f32(i32 7, float %6748)  ; Saturate(value)
  %6750 = call float @dx.op.unary.f32(i32 27, float %6745)  ; Round_ni(value)
  %6751 = fadd fast float %6750, %6749
  %6752 = call float @dx.op.binary.f32(i32 36, float %6751, float %6727)  ; FMin(a,b)
  %6753 = call float @dx.op.unary.f32(i32 27, float %6752)  ; Round_ni(value)
  %6754 = fsub fast float -0.000000e+00, %6753
  %6755 = call float @dx.op.unary.f32(i32 21, float %6754)  ; Exp(value)
  %6756 = fmul fast float %6755, %6729
  %6757 = fmul fast float %6756, %6702
  %6758 = fmul fast float %6756, %6706
  %6759 = fmul fast float %6757, 2.500000e-01
  %6760 = fmul fast float %6758, 2.500000e-01
  %6761 = fadd fast float %6759, 5.000000e-01
  %6762 = fadd fast float %6760, 5.000000e-01
  %6763 = fsub fast float %6727, %6725
  %6764 = fptoui float %6763 to i32
  %6765 = add i32 %6764, 320
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6765)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = fcmp fast une float %6752, %6727
  %6770 = fsub fast float %6702, %6767
  %6771 = fsub fast float %6706, %6768
  %6772 = call float @dx.op.unary.f32(i32 6, float %6770)  ; FAbs(value)
  %6773 = call float @dx.op.unary.f32(i32 6, float %6771)  ; FAbs(value)
  %6774 = fmul fast float %6772, %6756
  %6775 = fmul fast float %6773, %6756
  %6776 = fcmp fast olt float %6774, 1.000000e+00
  %6777 = fcmp fast olt float %6775, 1.000000e+00
  %6778 = and i1 %6776, %6777
  %6779 = or i1 %6769, %6778
  br i1 %6779, label %6780, label %7077, !dx.controlflow.hints !96

; <label>:6780                                    ; preds = %6718
  %6781 = fmul fast float %6758, 5.000000e-01
  %6782 = fmul fast float %6757, 5.000000e-01
  %6783 = fadd fast float %6781, 5.000000e-01
  %6784 = fadd fast float %6782, 5.000000e-01
  %6785 = sitofp i32 %6724 to float
  %6786 = fsub fast float %6752, %6785
  %6787 = call float @dx.op.unary.f32(i32 27, float %6786)  ; Round_ni(value)
  %6788 = call float @dx.op.unary.f32(i32 22, float %6752)  ; Frc(value)
  %6789 = call float @dx.op.unary.f32(i32 22, float %6784)  ; Frc(value)
  %6790 = call float @dx.op.unary.f32(i32 22, float %6783)  ; Frc(value)
  %6791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6789, float %6790, float %6787, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 0
  %6793 = extractvalue %dx.types.ResRet.f32 %6791, 1
  %6794 = extractvalue %dx.types.ResRet.f32 %6791, 2
  %6795 = extractvalue %dx.types.ResRet.f32 %6791, 3
  %6796 = fcmp fast ogt float %6788, 0.000000e+00
  br i1 %6796, label %6797, label %6818, !dx.controlflow.hints !97

; <label>:6797                                    ; preds = %6780
  %6798 = fadd fast float %6787, 1.000000e+00
  %6799 = call float @dx.op.unary.f32(i32 22, float %6761)  ; Frc(value)
  %6800 = call float @dx.op.unary.f32(i32 22, float %6762)  ; Frc(value)
  %6801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6799, float %6800, float %6798, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6802 = extractvalue %dx.types.ResRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.ResRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.ResRet.f32 %6801, 2
  %6805 = extractvalue %dx.types.ResRet.f32 %6801, 3
  %6806 = fsub fast float %6802, %6792
  %6807 = fsub fast float %6803, %6793
  %6808 = fsub fast float %6804, %6794
  %6809 = fsub fast float %6805, %6795
  %6810 = fmul fast float %6806, %6788
  %6811 = fmul fast float %6807, %6788
  %6812 = fmul fast float %6808, %6788
  %6813 = fmul fast float %6809, %6788
  %6814 = fadd fast float %6810, %6792
  %6815 = fadd fast float %6811, %6793
  %6816 = fadd fast float %6812, %6794
  %6817 = fadd fast float %6813, %6795
  br label %6818

; <label>:6818                                    ; preds = %6797, %6780
  %6819 = phi float [ %6814, %6797 ], [ %6792, %6780 ]
  %6820 = phi float [ %6815, %6797 ], [ %6793, %6780 ]
  %6821 = phi float [ %6816, %6797 ], [ %6794, %6780 ]
  %6822 = phi float [ %6817, %6797 ], [ %6795, %6780 ]
  %6823 = fadd fast float %6819, -5.000000e-01
  %6824 = fadd fast float %6821, -5.000000e-01
  %6825 = fmul fast float %6823, 0xBFD5555560000000
  %6826 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6824, float %6825)  ; FMad(a,b,c)
  %6827 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6820, float 0.000000e+00)  ; FMad(a,b,c)
  %6828 = fadd fast float %6827, %6822
  %6829 = fmul fast float %6823, -7.500000e-01
  %6830 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6824, float %6829)  ; FMad(a,b,c)
  %6831 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6820, float 0.000000e+00)  ; FMad(a,b,c)
  %6832 = fadd fast float %6831, %6822
  %6833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6834 = extractvalue %dx.types.CBufRet.f32 %6833, 0
  %6835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6836 = extractvalue %dx.types.CBufRet.f32 %6835, 0
  %6837 = extractvalue %dx.types.CBufRet.f32 %6835, 1
  %6838 = extractvalue %dx.types.CBufRet.f32 %6835, 2
  %6839 = extractvalue %dx.types.CBufRet.f32 %6835, 3
  %6840 = fsub fast float %6836, %6826
  %6841 = fsub fast float %6837, %6828
  %6842 = fsub fast float %6838, %6830
  %6843 = fsub fast float %6839, %6832
  %6844 = fmul fast float %6840, %6834
  %6845 = fmul fast float %6841, %6834
  %6846 = fmul fast float %6842, %6834
  %6847 = fmul fast float %6843, %6834
  %6848 = fadd fast float %6844, %6826
  %6849 = fadd fast float %6845, %6828
  %6850 = fadd fast float %6846, %6830
  %6851 = fadd fast float %6847, %6832
  %6852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6853 = extractvalue %dx.types.ResRet.i32 %6852, 0
  %6854 = and i32 %6853, 536870911
  %6855 = uitofp i32 %6854 to float
  %6856 = fmul fast float %6855, %6702
  %6857 = fmul fast float %6855, %6706
  %6858 = fptoui float %6856 to i32
  %6859 = fptoui float %6857 to i32
  %6860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6861 = extractvalue %dx.types.ResRet.i32 %6860, 0
  %6862 = and i32 %6861, 31
  %6863 = lshr i32 %6858, %6862
  %6864 = lshr i32 %6859, %6862
  %6865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6866 = extractvalue %dx.types.ResRet.i32 %6865, 0
  %6867 = and i32 %6866, 31
  %6868 = shl i32 1, %6867
  %6869 = call i32 @dx.op.binary.i32(i32 40, i32 %6868, i32 4)  ; UMin(a,b)
  %6870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6871 = extractvalue %dx.types.ResRet.i32 %6870, 0
  %6872 = extractvalue %dx.types.ResRet.i32 %6870, 1
  %6873 = icmp eq i32 %6869, 0
  br i1 %6873, label %6915, label %6874

; <label>:6874                                    ; preds = %6818
  br label %6875

; <label>:6875                                    ; preds = %6903, %6874
  %6876 = phi i32 [ %6906, %6903 ], [ 0, %6874 ]
  %6877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6878 = extractvalue %dx.types.ResRet.i32 %6877, 0
  %6879 = lshr i32 %6878, 16
  %6880 = and i32 %6879, 31
  %6881 = shl i32 %6864, %6880
  %6882 = add i32 %6881, %6863
  %6883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6884 = extractvalue %dx.types.ResRet.i32 %6883, 0
  %6885 = and i32 %6884, 31
  %6886 = shl i32 %6882, %6885
  %6887 = add i32 %6886, %6876
  %6888 = shl i32 %6887, 2
  %6889 = add i32 %6888, 32
  %6890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6889, i32 undef)  ; BufferLoad(srv,index,wot)
  %6891 = extractvalue %dx.types.ResRet.i32 %6890, 0
  %6892 = icmp slt i32 %6891, 0
  %6893 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6876
  %6894 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6876
  %6895 = bitcast float* %6893 to i32*
  %6896 = bitcast float* %6894 to i32*
  br i1 %6892, label %6897, label %6903

; <label>:6897                                    ; preds = %6875
  %6898 = and i32 %6891, 1073741823
  %6899 = add nuw nsw i32 %6898, 20
  %6900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6899, i32 undef)  ; BufferLoad(srv,index,wot)
  %6901 = extractvalue %dx.types.ResRet.i32 %6900, 0
  %6902 = extractvalue %dx.types.ResRet.i32 %6900, 1
  br label %6903

; <label>:6903                                    ; preds = %6897, %6875
  %6904 = phi i32 [ %6901, %6897 ], [ %6871, %6875 ]
  %6905 = phi i32 [ %6902, %6897 ], [ %6872, %6875 ]
  store i32 %6904, i32* %6895, align 4
  store i32 %6905, i32* %6896, align 4
  %6906 = add nuw i32 %6876, 1
  %6907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.i32 %6907, 2
  %6909 = icmp eq i32 %6908, 0
  %6910 = icmp ugt i32 %6891, -1073741825
  %6911 = and i1 %6910, %6909
  %6912 = icmp ult i32 %6906, %6869
  %6913 = and i1 %6911, %6912
  br i1 %6913, label %6875, label %6914

; <label>:6914                                    ; preds = %6903
  br label %6915

; <label>:6915                                    ; preds = %6914, %6818
  %6916 = phi i32 [ 0, %6818 ], [ %6906, %6914 ]
  %6917 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6918 = fptoui float %6917 to i32
  %6919 = icmp eq i32 %6918, 0
  br i1 %6919, label %6971, label %6920

; <label>:6920                                    ; preds = %6915
  br label %6921

; <label>:6921                                    ; preds = %6966, %6920
  %6922 = phi i32 [ %6967, %6966 ], [ %6916, %6920 ]
  %6923 = phi i32 [ %6968, %6966 ], [ 0, %6920 ]
  %6924 = lshr i32 %6923, 2
  %6925 = and i32 %6923, 3
  %6926 = add nuw nsw i32 %6924, 83
  %6927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6926)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.i32 %6927, 0
  %6929 = extractvalue %dx.types.CBufRet.i32 %6927, 1
  %6930 = extractvalue %dx.types.CBufRet.i32 %6927, 2
  %6931 = extractvalue %dx.types.CBufRet.i32 %6927, 3
  %6932 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6928, i32* %6932, align 4
  %6933 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6929, i32* %6933, align 4
  %6934 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6930, i32* %6934, align 4
  %6935 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6931, i32* %6935, align 4
  %6936 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6925
  %6937 = load i32, i32* %6936, align 4, !tbaa !98, !noalias !102
  %6938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6939 = extractvalue %dx.types.ResRet.i32 %6938, 0
  %6940 = lshr i32 %6939, 16
  %6941 = and i32 %6940, 31
  %6942 = shl i32 %6864, %6941
  %6943 = add i32 %6942, %6863
  %6944 = shl i32 %6943, 2
  %6945 = add i32 %6944, %6937
  %6946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6945, i32 undef)  ; BufferLoad(srv,index,wot)
  %6947 = extractvalue %dx.types.ResRet.i32 %6946, 0
  %6948 = icmp eq i32 %6947, 0
  br i1 %6948, label %6966, label %6949

; <label>:6949                                    ; preds = %6921
  %6950 = icmp slt i32 %6947, 0
  %6951 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6922
  %6952 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6922
  %6953 = bitcast float* %6951 to i32*
  %6954 = bitcast float* %6952 to i32*
  br i1 %6950, label %6955, label %6962

; <label>:6955                                    ; preds = %6949
  %6956 = and i32 %6947, 1073741823
  %6957 = add i32 %6937, 20
  %6958 = add i32 %6957, %6956
  %6959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6958, i32 undef)  ; BufferLoad(srv,index,wot)
  %6960 = extractvalue %dx.types.ResRet.i32 %6959, 0
  %6961 = extractvalue %dx.types.ResRet.i32 %6959, 1
  br label %6962

; <label>:6962                                    ; preds = %6955, %6949
  %6963 = phi i32 [ %6960, %6955 ], [ %6871, %6949 ]
  %6964 = phi i32 [ %6961, %6955 ], [ %6872, %6949 ]
  store i32 %6963, i32* %6953, align 4
  store i32 %6964, i32* %6954, align 4
  %6965 = add i32 %6922, 1
  br label %6966

; <label>:6966                                    ; preds = %6962, %6921
  %6967 = phi i32 [ %6922, %6921 ], [ %6965, %6962 ]
  %6968 = add nuw i32 %6923, 1
  %6969 = icmp eq i32 %6968, %6918
  br i1 %6969, label %6970, label %6921

; <label>:6970                                    ; preds = %6966
  br label %6971

; <label>:6971                                    ; preds = %6970, %6915
  %6972 = phi i32 [ %6916, %6915 ], [ %6967, %6970 ]
  %6973 = icmp eq i32 %6972, 1
  %6974 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  %6975 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  br i1 %6973, label %6976, label %6979

; <label>:6976                                    ; preds = %6971
  %6977 = load float, float* %6974, align 4
  %6978 = load float, float* %6975, align 4
  br label %7006

; <label>:6979                                    ; preds = %6971
  %6980 = load float, float* %6974, align 4
  %6981 = load float, float* %6975, align 4
  %6982 = fdiv fast float 1.000000e+00, %6981
  %6983 = fsub fast float %6980, %6982
  %6984 = icmp ugt i32 %6972, 1
  br i1 %6984, label %6985, label %7001

; <label>:6985                                    ; preds = %6979
  br label %6986

; <label>:6986                                    ; preds = %6986, %6985
  %6987 = phi float [ %6996, %6986 ], [ %6983, %6985 ]
  %6988 = phi float [ %6997, %6986 ], [ %6980, %6985 ]
  %6989 = phi i32 [ %6998, %6986 ], [ 1, %6985 ]
  %6990 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6989
  %6991 = load float, float* %6990, align 4
  %6992 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6989
  %6993 = load float, float* %6992, align 4
  %6994 = fdiv fast float 1.000000e+00, %6993
  %6995 = fsub fast float %6991, %6994
  %6996 = call float @dx.op.binary.f32(i32 36, float %6987, float %6995)  ; FMin(a,b)
  %6997 = call float @dx.op.binary.f32(i32 35, float %6988, float %6991)  ; FMax(a,b)
  %6998 = add nuw i32 %6989, 1
  %6999 = icmp eq i32 %6998, %6972
  br i1 %6999, label %7000, label %6986

; <label>:7000                                    ; preds = %6986
  br label %7001

; <label>:7001                                    ; preds = %7000, %6979
  %7002 = phi float [ %6983, %6979 ], [ %6996, %7000 ]
  %7003 = phi float [ %6980, %6979 ], [ %6997, %7000 ]
  %7004 = fsub fast float %7003, %7002
  %7005 = fdiv fast float 1.000000e+00, %7004
  br label %7006

; <label>:7006                                    ; preds = %7001, %6976
  %7007 = phi float [ %6977, %6976 ], [ %7003, %7001 ]
  %7008 = phi float [ %6978, %6976 ], [ %7005, %7001 ]
  %7009 = fadd fast float %6710, %7007
  %7010 = fmul fast float %7009, %7008
  %7011 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7012 = fmul fast float %7011, 2.000000e+00
  %7013 = fsub fast float 1.000000e+00, %7012
  %7014 = fmul fast float %6848, %6848
  %7015 = fsub fast float %6849, %7014
  %7016 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7015)  ; FMax(a,b)
  %7017 = fdiv fast float 1.000000e+00, %7016
  %7018 = fmul fast float %6849, %6848
  %7019 = fsub fast float %6850, %7018
  %7020 = fsub fast float %7013, %6848
  %7021 = fmul fast float %7013, %7013
  %7022 = fsub fast float %7021, %6849
  %7023 = fmul fast float %7017, %7019
  %7024 = fmul fast float %7023, %7020
  %7025 = fsub fast float %7022, %7024
  %7026 = fmul fast float %6849, %6849
  %7027 = fsub fast float %6851, %7026
  %7028 = fmul fast float %7019, %7019
  %7029 = fmul fast float %7028, %7017
  %7030 = fsub fast float %7027, %7029
  %7031 = fdiv fast float %7025, %7030
  %7032 = fmul fast float %7031, %7019
  %7033 = fsub fast float %7020, %7032
  %7034 = fmul fast float %7033, %7017
  %7035 = fmul fast float %7034, %6848
  %7036 = fsub fast float 1.000000e+00, %7035
  %7037 = fmul fast float %7031, %6849
  %7038 = fsub fast float %7036, %7037
  %7039 = fmul fast float %7034, %7034
  %7040 = fmul fast float %7031, 4.000000e+00
  %7041 = fmul fast float %7040, %7038
  %7042 = fsub fast float %7039, %7041
  %7043 = call float @dx.op.unary.f32(i32 24, float %7042)  ; Sqrt(value)
  %7044 = fcmp fast oge float %7034, 0.000000e+00
  %7045 = fsub fast float -0.000000e+00, %7043
  %7046 = select i1 %7044, float %7045, float %7043
  %7047 = fsub fast float %7046, %7034
  %7048 = fdiv fast float %7047, %7031
  %7049 = fdiv fast float %7038, %7047
  %7050 = fmul fast float %7048, 5.000000e-01
  %7051 = fmul fast float %7049, 2.000000e+00
  %7052 = select i1 %7044, float %7050, float %7051
  %7053 = select i1 %7044, float %7051, float %7050
  %7054 = call float @dx.op.binary.f32(i32 35, float %7052, float %7053)  ; FMax(a,b)
  %7055 = call float @dx.op.binary.f32(i32 36, float %7052, float %7053)  ; FMin(a,b)
  %7056 = fcmp fast ogt float %7013, %7054
  %7057 = fsub fast float %7013, %7055
  %7058 = fsub fast float %7013, %7054
  %7059 = fsub fast float %7054, %7055
  %7060 = select i1 %7056, float %7058, float %7059
  %7061 = fmul float %7057, %7060
  %7062 = select i1 %7056, float %7055, float %7013
  %7063 = fcmp fast ogt float %7013, %7055
  %7064 = fmul fast float %7062, %7054
  %7065 = fadd fast float %7062, %7054
  %7066 = fmul fast float %7065, %6848
  %7067 = fadd fast float %7064, %6849
  %7068 = fsub fast float %7067, %7066
  %7069 = fdiv fast float %7068, %7061
  %7070 = select i1 %7063, float %7069, float 0.000000e+00
  %7071 = fsub fast float 1.000000e+00, %7070
  %7072 = select i1 %7056, float %7071, float %7070
  %7073 = call float @dx.op.unary.f32(i32 7, float %7072)  ; Saturate(value)
  %7074 = extractvalue %dx.types.CBufRet.f32 %6833, 3
  %7075 = fmul fast float %7074, %7073
  %7076 = fsub fast float 1.000000e+00, %7075
  br label %7077

; <label>:7077                                    ; preds = %7006, %6718, %6683, %6679, %6643
  %7078 = phi float [ 1.000000e+00, %6643 ], [ %7076, %7006 ], [ 1.000000e+00, %6683 ], [ 1.000000e+00, %6718 ], [ 1.000000e+00, %6679 ]
  %7079 = fcmp fast ogt float %6675, 0.000000e+00
  br i1 %7079, label %7080, label %7244, !dx.controlflow.hints !111

; <label>:7080                                    ; preds = %7077
  %7081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7082 = extractvalue %dx.types.CBufRet.f32 %7081, 2
  %7083 = fadd fast float %7082, %6556
  %7084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7085 = extractvalue %dx.types.CBufRet.f32 %7084, 2
  %7086 = extractvalue %dx.types.CBufRet.f32 %7084, 3
  %7087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7088 = extractvalue %dx.types.CBufRet.f32 %7087, 2
  %7089 = call float @dx.op.binary.f32(i32 35, float %7083, float 0.000000e+00)  ; FMax(a,b)
  %7090 = fadd fast float %7089, 0x3F10000000000000
  %7091 = fcmp fast oeq float %7088, 0.000000e+00
  br i1 %7091, label %7092, label %7159

; <label>:7092                                    ; preds = %7080
  %7093 = extractvalue %dx.types.CBufRet.f32 %7084, 1
  %7094 = extractvalue %dx.types.CBufRet.f32 %7084, 0
  %7095 = fmul fast float %7094, %6574
  %7096 = fmul fast float %7093, %6575
  %7097 = fadd fast float %7095, 5.000000e-01
  %7098 = call float @dx.op.unary.f32(i32 27, float %7097)  ; Round_ni(value)
  %7099 = fadd fast float %7096, 5.000000e-01
  %7100 = call float @dx.op.unary.f32(i32 27, float %7099)  ; Round_ni(value)
  %7101 = fsub fast float %7097, %7098
  %7102 = fsub fast float %7099, %7100
  %7103 = fadd fast float %7098, -5.000000e-01
  %7104 = fadd fast float %7100, -5.000000e-01
  %7105 = fmul fast float %7101, 2.000000e+00
  %7106 = fsub fast float 3.000000e+00, %7105
  %7107 = fadd fast float %7105, 1.000000e+00
  %7108 = fsub fast float 2.000000e+00, %7101
  %7109 = bitcast float %7106 to i32
  %7110 = sub nsw i32 2129859010, %7109
  %7111 = bitcast i32 %7110 to float
  %7112 = fmul fast float %7111, %7108
  %7113 = fadd fast float %7112, -1.000000e+00
  %7114 = bitcast float %7107 to i32
  %7115 = sub nsw i32 2129859010, %7114
  %7116 = bitcast i32 %7115 to float
  %7117 = fmul fast float %7116, %7101
  %7118 = fadd fast float %7117, 1.000000e+00
  %7119 = fmul fast float %7102, 2.000000e+00
  %7120 = fsub fast float 3.000000e+00, %7119
  %7121 = fadd fast float %7119, 1.000000e+00
  %7122 = fsub fast float 2.000000e+00, %7102
  %7123 = bitcast float %7120 to i32
  %7124 = sub nsw i32 2129859010, %7123
  %7125 = bitcast i32 %7124 to float
  %7126 = fmul fast float %7125, %7122
  %7127 = fadd fast float %7126, -1.000000e+00
  %7128 = bitcast float %7121 to i32
  %7129 = sub nsw i32 2129859010, %7128
  %7130 = bitcast i32 %7129 to float
  %7131 = fmul fast float %7130, %7102
  %7132 = fadd fast float %7131, 1.000000e+00
  %7133 = fadd fast float %7113, %7103
  %7134 = fmul fast float %7133, %7085
  %7135 = fadd fast float %7127, %7104
  %7136 = fmul fast float %7135, %7086
  %7137 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7134, float %7136, float undef, float undef, i32 0, i32 0, i32 undef, float %7090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7138 = extractvalue %dx.types.ResRet.f32 %7137, 0
  %7139 = fmul fast float %7138, %7106
  %7140 = fadd fast float %7118, %7103
  %7141 = fmul fast float %7140, %7085
  %7142 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7141, float %7136, float undef, float undef, i32 0, i32 0, i32 undef, float %7090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7143 = extractvalue %dx.types.ResRet.f32 %7142, 0
  %7144 = fmul fast float %7143, %7107
  %7145 = fadd fast float %7132, %7104
  %7146 = fmul fast float %7145, %7086
  %7147 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7134, float %7146, float undef, float undef, i32 0, i32 0, i32 undef, float %7090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7148 = extractvalue %dx.types.ResRet.f32 %7147, 0
  %7149 = fmul fast float %7148, %7106
  %7150 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7141, float %7146, float undef, float undef, i32 0, i32 0, i32 undef, float %7090)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7151 = extractvalue %dx.types.ResRet.f32 %7150, 0
  %7152 = fmul fast float %7151, %7107
  %7153 = fadd fast float %7152, %7149
  %7154 = fmul fast float %7153, %7121
  %7155 = fadd fast float %7144, %7139
  %7156 = fmul fast float %7155, %7120
  %7157 = fadd fast float %7156, %7154
  %7158 = fmul fast float %7157, 6.250000e-02
  br label %7244

; <label>:7159                                    ; preds = %7080
  %7160 = fmul fast float %258, 0x401921FB60000000
  %7161 = call float @dx.op.unary.f32(i32 13, float %7160)  ; Sin(value)
  %7162 = call float @dx.op.unary.f32(i32 12, float %7160)  ; Cos(value)
  %7163 = fsub fast float -0.000000e+00, %7161
  br label %7164

; <label>:7164                                    ; preds = %7213, %7159
  %7165 = phi float [ 0.000000e+00, %7159 ], [ %7208, %7213 ]
  %7166 = phi float [ 0.000000e+00, %7159 ], [ %7210, %7213 ]
  %7167 = phi i32 [ 0, %7159 ], [ %7214, %7213 ]
  %7168 = mul i32 %7167, 2
  %7169 = add i32 0, %7168
  %7170 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7169
  %7171 = load float, float* %7170, align 4
  %7172 = mul i32 %7167, 2
  %7173 = add i32 1, %7172
  %7174 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7173
  %7175 = load float, float* %7174, align 4
  %7176 = fmul fast float %7171, %7162
  %7177 = call float @dx.op.tertiary.f32(i32 46, float %7175, float %7163, float %7176)  ; FMad(a,b,c)
  %7178 = fmul fast float %7171, %7161
  %7179 = call float @dx.op.tertiary.f32(i32 46, float %7175, float %7162, float %7178)  ; FMad(a,b,c)
  %7180 = fmul fast float %7177, %7088
  %7181 = fmul fast float %7179, %7088
  %7182 = fadd fast float %7180, %6574
  %7183 = fadd fast float %7181, %6575
  %7184 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %7182, float %7183, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7185 = extractvalue %dx.types.ResRet.f32 %7184, 0
  %7186 = extractvalue %dx.types.ResRet.f32 %7184, 1
  %7187 = extractvalue %dx.types.ResRet.f32 %7184, 2
  %7188 = extractvalue %dx.types.ResRet.f32 %7184, 3
  %7189 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7185, float* %7189, align 4
  %7190 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7186, float* %7190, align 4
  %7191 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7187, float* %7191, align 4
  %7192 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7188, float* %7192, align 4
  %7193 = fsub fast float %7185, %7090
  %7194 = fcmp fast olt float %7193, 0.000000e+00
  %7195 = select i1 %7194, float 0.000000e+00, float 1.000000e+00
  %7196 = fadd fast float %7195, %7165
  %7197 = fmul fast float %7195, %7193
  %7198 = fadd fast float %7197, %7166
  br label %7199

; <label>:7199                                    ; preds = %7199, %7164
  %7200 = phi i32 [ 1, %7164 ], [ %7211, %7199 ]
  %7201 = phi float [ %7198, %7164 ], [ %7210, %7199 ]
  %7202 = phi float [ %7196, %7164 ], [ %7208, %7199 ]
  %7203 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7200
  %7204 = load float, float* %7203, align 4, !tbaa !112, !noalias !102
  %7205 = fsub fast float %7204, %7090
  %7206 = fcmp fast olt float %7205, 0.000000e+00
  %7207 = select i1 %7206, float 0.000000e+00, float 1.000000e+00
  %7208 = fadd fast float %7207, %7202
  %7209 = fmul fast float %7207, %7205
  %7210 = fadd fast float %7209, %7201
  %7211 = add nuw nsw i32 %7200, 1
  %7212 = icmp eq i32 %7211, 4
  br i1 %7212, label %7213, label %7199, !llvm.loop !114

; <label>:7213                                    ; preds = %7199
  %7214 = add nuw nsw i32 %7167, 1
  %7215 = icmp eq i32 %7214, 8
  br i1 %7215, label %7216, label %7164, !llvm.loop !115

; <label>:7216                                    ; preds = %7213
  %7217 = fdiv fast float 1.000000e+00, %7208
  %7218 = fmul fast float %7217, %7210
  %7219 = fdiv fast float 1.000000e+00, %7090
  %7220 = fmul fast float %7218, %7219
  %7221 = call float @dx.op.unary.f32(i32 7, float %7220)  ; Saturate(value)
  %7222 = call float @dx.op.binary.f32(i32 35, float %7221, float 0.000000e+00)  ; FMax(a,b)
  %7223 = fmul fast float %7208, 3.125000e-02
  %7224 = call float @dx.op.unary.f32(i32 7, float %7223)  ; Saturate(value)
  %7225 = fmul fast float %7224, 2.000000e+00
  %7226 = fadd fast float %7225, -1.000000e+00
  %7227 = fcmp fast ogt float %7226, 0.000000e+00
  %7228 = fcmp fast olt float %7226, 0.000000e+00
  %7229 = zext i1 %7227 to i32
  %7230 = zext i1 %7228 to i32
  %7231 = sub nsw i32 %7229, %7230
  %7232 = sitofp i32 %7231 to float
  %7233 = fmul fast float %7232, %7226
  %7234 = fsub fast float 1.000000e+00, %7233
  %7235 = fmul fast float %7234, %7234
  %7236 = fmul fast float %7235, %7234
  %7237 = fsub fast float %7234, %7236
  %7238 = fmul fast float %7237, %7222
  %7239 = fsub fast float 1.000000e+00, %7236
  %7240 = fsub fast float %7239, %7238
  %7241 = fmul fast float %7232, 5.000000e-01
  %7242 = fmul fast float %7241, %7240
  %7243 = fsub fast float 5.000000e-01, %7242
  br label %7244

; <label>:7244                                    ; preds = %7216, %7092, %7077
  %7245 = phi float [ 1.000000e+00, %7077 ], [ %7158, %7092 ], [ %7243, %7216 ]
  %7246 = fcmp fast ogt float %6673, 0.000000e+00
  br i1 %7246, label %7247, label %7411, !dx.controlflow.hints !116

; <label>:7247                                    ; preds = %7244
  %7248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7249 = extractvalue %dx.types.CBufRet.f32 %7248, 1
  %7250 = fadd fast float %7249, %6556
  %7251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.f32 %7251, 2
  %7253 = extractvalue %dx.types.CBufRet.f32 %7251, 3
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 1
  %7256 = call float @dx.op.binary.f32(i32 35, float %7250, float 0.000000e+00)  ; FMax(a,b)
  %7257 = fadd fast float %7256, 0x3F10000000000000
  %7258 = fcmp fast oeq float %7255, 0.000000e+00
  br i1 %7258, label %7259, label %7326

; <label>:7259                                    ; preds = %7247
  %7260 = extractvalue %dx.types.CBufRet.f32 %7251, 1
  %7261 = extractvalue %dx.types.CBufRet.f32 %7251, 0
  %7262 = fmul fast float %7261, %6566
  %7263 = fmul fast float %7260, %6567
  %7264 = fadd fast float %7262, 5.000000e-01
  %7265 = call float @dx.op.unary.f32(i32 27, float %7264)  ; Round_ni(value)
  %7266 = fadd fast float %7263, 5.000000e-01
  %7267 = call float @dx.op.unary.f32(i32 27, float %7266)  ; Round_ni(value)
  %7268 = fsub fast float %7264, %7265
  %7269 = fsub fast float %7266, %7267
  %7270 = fadd fast float %7265, -5.000000e-01
  %7271 = fadd fast float %7267, -5.000000e-01
  %7272 = fmul fast float %7268, 2.000000e+00
  %7273 = fsub fast float 3.000000e+00, %7272
  %7274 = fadd fast float %7272, 1.000000e+00
  %7275 = fsub fast float 2.000000e+00, %7268
  %7276 = bitcast float %7273 to i32
  %7277 = sub nsw i32 2129859010, %7276
  %7278 = bitcast i32 %7277 to float
  %7279 = fmul fast float %7278, %7275
  %7280 = fadd fast float %7279, -1.000000e+00
  %7281 = bitcast float %7274 to i32
  %7282 = sub nsw i32 2129859010, %7281
  %7283 = bitcast i32 %7282 to float
  %7284 = fmul fast float %7283, %7268
  %7285 = fadd fast float %7284, 1.000000e+00
  %7286 = fmul fast float %7269, 2.000000e+00
  %7287 = fsub fast float 3.000000e+00, %7286
  %7288 = fadd fast float %7286, 1.000000e+00
  %7289 = fsub fast float 2.000000e+00, %7269
  %7290 = bitcast float %7287 to i32
  %7291 = sub nsw i32 2129859010, %7290
  %7292 = bitcast i32 %7291 to float
  %7293 = fmul fast float %7292, %7289
  %7294 = fadd fast float %7293, -1.000000e+00
  %7295 = bitcast float %7288 to i32
  %7296 = sub nsw i32 2129859010, %7295
  %7297 = bitcast i32 %7296 to float
  %7298 = fmul fast float %7297, %7269
  %7299 = fadd fast float %7298, 1.000000e+00
  %7300 = fadd fast float %7280, %7270
  %7301 = fmul fast float %7300, %7252
  %7302 = fadd fast float %7294, %7271
  %7303 = fmul fast float %7302, %7253
  %7304 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7301, float %7303, float undef, float undef, i32 0, i32 0, i32 undef, float %7257)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7305 = extractvalue %dx.types.ResRet.f32 %7304, 0
  %7306 = fmul fast float %7305, %7273
  %7307 = fadd fast float %7285, %7270
  %7308 = fmul fast float %7307, %7252
  %7309 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7308, float %7303, float undef, float undef, i32 0, i32 0, i32 undef, float %7257)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7310 = extractvalue %dx.types.ResRet.f32 %7309, 0
  %7311 = fmul fast float %7310, %7274
  %7312 = fadd fast float %7299, %7271
  %7313 = fmul fast float %7312, %7253
  %7314 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7301, float %7313, float undef, float undef, i32 0, i32 0, i32 undef, float %7257)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7315 = extractvalue %dx.types.ResRet.f32 %7314, 0
  %7316 = fmul fast float %7315, %7273
  %7317 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7308, float %7313, float undef, float undef, i32 0, i32 0, i32 undef, float %7257)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7318 = extractvalue %dx.types.ResRet.f32 %7317, 0
  %7319 = fmul fast float %7318, %7274
  %7320 = fadd fast float %7319, %7316
  %7321 = fmul fast float %7320, %7288
  %7322 = fadd fast float %7311, %7306
  %7323 = fmul fast float %7322, %7287
  %7324 = fadd fast float %7323, %7321
  %7325 = fmul fast float %7324, 6.250000e-02
  br label %7411

; <label>:7326                                    ; preds = %7247
  %7327 = fmul fast float %258, 0x401921FB60000000
  %7328 = call float @dx.op.unary.f32(i32 13, float %7327)  ; Sin(value)
  %7329 = call float @dx.op.unary.f32(i32 12, float %7327)  ; Cos(value)
  %7330 = fsub fast float -0.000000e+00, %7328
  br label %7331

; <label>:7331                                    ; preds = %7380, %7326
  %7332 = phi float [ 0.000000e+00, %7326 ], [ %7375, %7380 ]
  %7333 = phi float [ 0.000000e+00, %7326 ], [ %7377, %7380 ]
  %7334 = phi i32 [ 0, %7326 ], [ %7381, %7380 ]
  %7335 = mul i32 %7334, 2
  %7336 = add i32 0, %7335
  %7337 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7336
  %7338 = load float, float* %7337, align 4
  %7339 = mul i32 %7334, 2
  %7340 = add i32 1, %7339
  %7341 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7340
  %7342 = load float, float* %7341, align 4
  %7343 = fmul fast float %7338, %7329
  %7344 = call float @dx.op.tertiary.f32(i32 46, float %7342, float %7330, float %7343)  ; FMad(a,b,c)
  %7345 = fmul fast float %7338, %7328
  %7346 = call float @dx.op.tertiary.f32(i32 46, float %7342, float %7329, float %7345)  ; FMad(a,b,c)
  %7347 = fmul fast float %7344, %7255
  %7348 = fmul fast float %7346, %7255
  %7349 = fadd fast float %7347, %6566
  %7350 = fadd fast float %7348, %6567
  %7351 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7349, float %7350, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7352 = extractvalue %dx.types.ResRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.ResRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.ResRet.f32 %7351, 2
  %7355 = extractvalue %dx.types.ResRet.f32 %7351, 3
  %7356 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7352, float* %7356, align 4
  %7357 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7353, float* %7357, align 4
  %7358 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7354, float* %7358, align 4
  %7359 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7355, float* %7359, align 4
  %7360 = fsub fast float %7352, %7257
  %7361 = fcmp fast olt float %7360, 0.000000e+00
  %7362 = select i1 %7361, float 0.000000e+00, float 1.000000e+00
  %7363 = fadd fast float %7362, %7332
  %7364 = fmul fast float %7362, %7360
  %7365 = fadd fast float %7364, %7333
  br label %7366

; <label>:7366                                    ; preds = %7366, %7331
  %7367 = phi i32 [ 1, %7331 ], [ %7378, %7366 ]
  %7368 = phi float [ %7365, %7331 ], [ %7377, %7366 ]
  %7369 = phi float [ %7363, %7331 ], [ %7375, %7366 ]
  %7370 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7367
  %7371 = load float, float* %7370, align 4, !tbaa !112, !noalias !102
  %7372 = fsub fast float %7371, %7257
  %7373 = fcmp fast olt float %7372, 0.000000e+00
  %7374 = select i1 %7373, float 0.000000e+00, float 1.000000e+00
  %7375 = fadd fast float %7374, %7369
  %7376 = fmul fast float %7374, %7372
  %7377 = fadd fast float %7376, %7368
  %7378 = add nuw nsw i32 %7367, 1
  %7379 = icmp eq i32 %7378, 4
  br i1 %7379, label %7380, label %7366, !llvm.loop !114

; <label>:7380                                    ; preds = %7366
  %7381 = add nuw nsw i32 %7334, 1
  %7382 = icmp eq i32 %7381, 8
  br i1 %7382, label %7383, label %7331, !llvm.loop !115

; <label>:7383                                    ; preds = %7380
  %7384 = fdiv fast float 1.000000e+00, %7375
  %7385 = fmul fast float %7384, %7377
  %7386 = fdiv fast float 1.000000e+00, %7257
  %7387 = fmul fast float %7385, %7386
  %7388 = call float @dx.op.unary.f32(i32 7, float %7387)  ; Saturate(value)
  %7389 = call float @dx.op.binary.f32(i32 35, float %7388, float 0.000000e+00)  ; FMax(a,b)
  %7390 = fmul fast float %7375, 3.125000e-02
  %7391 = call float @dx.op.unary.f32(i32 7, float %7390)  ; Saturate(value)
  %7392 = fmul fast float %7391, 2.000000e+00
  %7393 = fadd fast float %7392, -1.000000e+00
  %7394 = fcmp fast ogt float %7393, 0.000000e+00
  %7395 = fcmp fast olt float %7393, 0.000000e+00
  %7396 = zext i1 %7394 to i32
  %7397 = zext i1 %7395 to i32
  %7398 = sub nsw i32 %7396, %7397
  %7399 = sitofp i32 %7398 to float
  %7400 = fmul fast float %7399, %7393
  %7401 = fsub fast float 1.000000e+00, %7400
  %7402 = fmul fast float %7401, %7401
  %7403 = fmul fast float %7402, %7401
  %7404 = fsub fast float %7401, %7403
  %7405 = fmul fast float %7404, %7389
  %7406 = fsub fast float 1.000000e+00, %7403
  %7407 = fsub fast float %7406, %7405
  %7408 = fmul fast float %7399, 5.000000e-01
  %7409 = fmul fast float %7408, %7407
  %7410 = fsub fast float 5.000000e-01, %7409
  br label %7411

; <label>:7411                                    ; preds = %7383, %7259, %7244
  %7412 = phi float [ 1.000000e+00, %7244 ], [ %7325, %7259 ], [ %7410, %7383 ]
  %7413 = fcmp fast ogt float %6672, 0.000000e+00
  br i1 %7413, label %7414, label %7732, !dx.controlflow.hints !117

; <label>:7414                                    ; preds = %7411
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 0
  %7417 = fadd fast float %7416, %6556
  %7418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7419 = extractvalue %dx.types.CBufRet.f32 %7418, 2
  %7420 = extractvalue %dx.types.CBufRet.f32 %7418, 3
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 0
  %7423 = call float @dx.op.binary.f32(i32 35, float %7417, float 0.000000e+00)  ; FMax(a,b)
  %7424 = fadd fast float %7423, 0x3F10000000000000
  %7425 = fcmp fast oeq float %7422, 0.000000e+00
  br i1 %6559, label %7426, label %7579, !dx.controlflow.hints !118

; <label>:7426                                    ; preds = %7414
  br i1 %7425, label %7427, label %7494

; <label>:7427                                    ; preds = %7426
  %7428 = extractvalue %dx.types.CBufRet.f32 %7418, 1
  %7429 = extractvalue %dx.types.CBufRet.f32 %7418, 0
  %7430 = fmul fast float %7429, %6548
  %7431 = fmul fast float %7428, %6552
  %7432 = fadd fast float %7430, 5.000000e-01
  %7433 = call float @dx.op.unary.f32(i32 27, float %7432)  ; Round_ni(value)
  %7434 = fadd fast float %7431, 5.000000e-01
  %7435 = call float @dx.op.unary.f32(i32 27, float %7434)  ; Round_ni(value)
  %7436 = fsub fast float %7432, %7433
  %7437 = fsub fast float %7434, %7435
  %7438 = fadd fast float %7433, -5.000000e-01
  %7439 = fadd fast float %7435, -5.000000e-01
  %7440 = fmul fast float %7436, 2.000000e+00
  %7441 = fsub fast float 3.000000e+00, %7440
  %7442 = fadd fast float %7440, 1.000000e+00
  %7443 = fsub fast float 2.000000e+00, %7436
  %7444 = bitcast float %7441 to i32
  %7445 = sub nsw i32 2129859010, %7444
  %7446 = bitcast i32 %7445 to float
  %7447 = fmul fast float %7446, %7443
  %7448 = fadd fast float %7447, -1.000000e+00
  %7449 = bitcast float %7442 to i32
  %7450 = sub nsw i32 2129859010, %7449
  %7451 = bitcast i32 %7450 to float
  %7452 = fmul fast float %7451, %7436
  %7453 = fadd fast float %7452, 1.000000e+00
  %7454 = fmul fast float %7437, 2.000000e+00
  %7455 = fsub fast float 3.000000e+00, %7454
  %7456 = fadd fast float %7454, 1.000000e+00
  %7457 = fsub fast float 2.000000e+00, %7437
  %7458 = bitcast float %7455 to i32
  %7459 = sub nsw i32 2129859010, %7458
  %7460 = bitcast i32 %7459 to float
  %7461 = fmul fast float %7460, %7457
  %7462 = fadd fast float %7461, -1.000000e+00
  %7463 = bitcast float %7456 to i32
  %7464 = sub nsw i32 2129859010, %7463
  %7465 = bitcast i32 %7464 to float
  %7466 = fmul fast float %7465, %7437
  %7467 = fadd fast float %7466, 1.000000e+00
  %7468 = fadd fast float %7448, %7438
  %7469 = fmul fast float %7468, %7419
  %7470 = fadd fast float %7462, %7439
  %7471 = fmul fast float %7470, %7420
  %7472 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7469, float %7471, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7473 = extractvalue %dx.types.ResRet.f32 %7472, 0
  %7474 = fmul fast float %7473, %7441
  %7475 = fadd fast float %7453, %7438
  %7476 = fmul fast float %7475, %7419
  %7477 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7476, float %7471, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7478 = extractvalue %dx.types.ResRet.f32 %7477, 0
  %7479 = fmul fast float %7478, %7442
  %7480 = fadd fast float %7467, %7439
  %7481 = fmul fast float %7480, %7420
  %7482 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7469, float %7481, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7483 = extractvalue %dx.types.ResRet.f32 %7482, 0
  %7484 = fmul fast float %7483, %7441
  %7485 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7476, float %7481, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7486 = extractvalue %dx.types.ResRet.f32 %7485, 0
  %7487 = fmul fast float %7486, %7442
  %7488 = fadd fast float %7487, %7484
  %7489 = fmul fast float %7488, %7456
  %7490 = fadd fast float %7479, %7474
  %7491 = fmul fast float %7490, %7455
  %7492 = fadd fast float %7491, %7489
  %7493 = fmul fast float %7492, 6.250000e-02
  br label %7732

; <label>:7494                                    ; preds = %7426
  %7495 = fmul fast float %258, 0x401921FB60000000
  %7496 = call float @dx.op.unary.f32(i32 13, float %7495)  ; Sin(value)
  %7497 = call float @dx.op.unary.f32(i32 12, float %7495)  ; Cos(value)
  %7498 = fsub fast float -0.000000e+00, %7496
  br label %7499

; <label>:7499                                    ; preds = %7548, %7494
  %7500 = phi float [ 0.000000e+00, %7494 ], [ %7543, %7548 ]
  %7501 = phi float [ 0.000000e+00, %7494 ], [ %7545, %7548 ]
  %7502 = phi i32 [ 0, %7494 ], [ %7549, %7548 ]
  %7503 = mul i32 %7502, 2
  %7504 = add i32 0, %7503
  %7505 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7504
  %7506 = load float, float* %7505, align 4
  %7507 = mul i32 %7502, 2
  %7508 = add i32 1, %7507
  %7509 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7508
  %7510 = load float, float* %7509, align 4
  %7511 = fmul fast float %7506, %7497
  %7512 = call float @dx.op.tertiary.f32(i32 46, float %7510, float %7498, float %7511)  ; FMad(a,b,c)
  %7513 = fmul fast float %7506, %7496
  %7514 = call float @dx.op.tertiary.f32(i32 46, float %7510, float %7497, float %7513)  ; FMad(a,b,c)
  %7515 = fmul fast float %7512, %7422
  %7516 = fmul fast float %7514, %7422
  %7517 = fadd fast float %7515, %6548
  %7518 = fadd fast float %7516, %6552
  %7519 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %43, float %7517, float %7518, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7520 = extractvalue %dx.types.ResRet.f32 %7519, 0
  %7521 = extractvalue %dx.types.ResRet.f32 %7519, 1
  %7522 = extractvalue %dx.types.ResRet.f32 %7519, 2
  %7523 = extractvalue %dx.types.ResRet.f32 %7519, 3
  %7524 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %7520, float* %7524, align 4
  %7525 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %7521, float* %7525, align 4
  %7526 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %7522, float* %7526, align 4
  %7527 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %7523, float* %7527, align 4
  %7528 = fsub fast float %7520, %7424
  %7529 = fcmp fast olt float %7528, 0.000000e+00
  %7530 = select i1 %7529, float 0.000000e+00, float 1.000000e+00
  %7531 = fadd fast float %7530, %7500
  %7532 = fmul fast float %7530, %7528
  %7533 = fadd fast float %7532, %7501
  br label %7534

; <label>:7534                                    ; preds = %7534, %7499
  %7535 = phi i32 [ 1, %7499 ], [ %7546, %7534 ]
  %7536 = phi float [ %7533, %7499 ], [ %7545, %7534 ]
  %7537 = phi float [ %7531, %7499 ], [ %7543, %7534 ]
  %7538 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %7535
  %7539 = load float, float* %7538, align 4, !tbaa !112, !noalias !102
  %7540 = fsub fast float %7539, %7424
  %7541 = fcmp fast olt float %7540, 0.000000e+00
  %7542 = select i1 %7541, float 0.000000e+00, float 1.000000e+00
  %7543 = fadd fast float %7542, %7537
  %7544 = fmul fast float %7542, %7540
  %7545 = fadd fast float %7544, %7536
  %7546 = add nuw nsw i32 %7535, 1
  %7547 = icmp eq i32 %7546, 4
  br i1 %7547, label %7548, label %7534, !llvm.loop !114

; <label>:7548                                    ; preds = %7534
  %7549 = add nuw nsw i32 %7502, 1
  %7550 = icmp eq i32 %7549, 8
  br i1 %7550, label %7551, label %7499, !llvm.loop !115

; <label>:7551                                    ; preds = %7548
  %7552 = fdiv fast float 1.000000e+00, %7543
  %7553 = fmul fast float %7552, %7545
  %7554 = fdiv fast float 1.000000e+00, %7424
  %7555 = fmul fast float %7553, %7554
  %7556 = call float @dx.op.unary.f32(i32 7, float %7555)  ; Saturate(value)
  %7557 = call float @dx.op.binary.f32(i32 35, float %7556, float 0.000000e+00)  ; FMax(a,b)
  %7558 = fmul fast float %7543, 3.125000e-02
  %7559 = call float @dx.op.unary.f32(i32 7, float %7558)  ; Saturate(value)
  %7560 = fmul fast float %7559, 2.000000e+00
  %7561 = fadd fast float %7560, -1.000000e+00
  %7562 = fcmp fast ogt float %7561, 0.000000e+00
  %7563 = fcmp fast olt float %7561, 0.000000e+00
  %7564 = zext i1 %7562 to i32
  %7565 = zext i1 %7563 to i32
  %7566 = sub nsw i32 %7564, %7565
  %7567 = sitofp i32 %7566 to float
  %7568 = fmul fast float %7567, %7561
  %7569 = fsub fast float 1.000000e+00, %7568
  %7570 = fmul fast float %7569, %7569
  %7571 = fmul fast float %7570, %7569
  %7572 = fsub fast float %7569, %7571
  %7573 = fmul fast float %7572, %7557
  %7574 = fsub fast float 1.000000e+00, %7571
  %7575 = fsub fast float %7574, %7573
  %7576 = fmul fast float %7567, 5.000000e-01
  %7577 = fmul fast float %7576, %7575
  %7578 = fsub fast float 5.000000e-01, %7577
  br label %7732

; <label>:7579                                    ; preds = %7414
  br i1 %7425, label %7580, label %7647

; <label>:7580                                    ; preds = %7579
  %7581 = extractvalue %dx.types.CBufRet.f32 %7418, 1
  %7582 = extractvalue %dx.types.CBufRet.f32 %7418, 0
  %7583 = fmul fast float %7582, %6548
  %7584 = fmul fast float %7581, %6552
  %7585 = fadd fast float %7583, 5.000000e-01
  %7586 = call float @dx.op.unary.f32(i32 27, float %7585)  ; Round_ni(value)
  %7587 = fadd fast float %7584, 5.000000e-01
  %7588 = call float @dx.op.unary.f32(i32 27, float %7587)  ; Round_ni(value)
  %7589 = fsub fast float %7585, %7586
  %7590 = fsub fast float %7587, %7588
  %7591 = fadd fast float %7586, -5.000000e-01
  %7592 = fadd fast float %7588, -5.000000e-01
  %7593 = fmul fast float %7589, 2.000000e+00
  %7594 = fsub fast float 3.000000e+00, %7593
  %7595 = fadd fast float %7593, 1.000000e+00
  %7596 = fsub fast float 2.000000e+00, %7589
  %7597 = bitcast float %7594 to i32
  %7598 = sub nsw i32 2129859010, %7597
  %7599 = bitcast i32 %7598 to float
  %7600 = fmul fast float %7599, %7596
  %7601 = fadd fast float %7600, -1.000000e+00
  %7602 = bitcast float %7595 to i32
  %7603 = sub nsw i32 2129859010, %7602
  %7604 = bitcast i32 %7603 to float
  %7605 = fmul fast float %7604, %7589
  %7606 = fadd fast float %7605, 1.000000e+00
  %7607 = fmul fast float %7590, 2.000000e+00
  %7608 = fsub fast float 3.000000e+00, %7607
  %7609 = fadd fast float %7607, 1.000000e+00
  %7610 = fsub fast float 2.000000e+00, %7590
  %7611 = bitcast float %7608 to i32
  %7612 = sub nsw i32 2129859010, %7611
  %7613 = bitcast i32 %7612 to float
  %7614 = fmul fast float %7613, %7610
  %7615 = fadd fast float %7614, -1.000000e+00
  %7616 = bitcast float %7609 to i32
  %7617 = sub nsw i32 2129859010, %7616
  %7618 = bitcast i32 %7617 to float
  %7619 = fmul fast float %7618, %7590
  %7620 = fadd fast float %7619, 1.000000e+00
  %7621 = fadd fast float %7601, %7591
  %7622 = fmul fast float %7621, %7419
  %7623 = fadd fast float %7615, %7592
  %7624 = fmul fast float %7623, %7420
  %7625 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7622, float %7624, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = fmul fast float %7626, %7594
  %7628 = fadd fast float %7606, %7591
  %7629 = fmul fast float %7628, %7419
  %7630 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7629, float %7624, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7631 = extractvalue %dx.types.ResRet.f32 %7630, 0
  %7632 = fmul fast float %7631, %7595
  %7633 = fadd fast float %7620, %7592
  %7634 = fmul fast float %7633, %7420
  %7635 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7622, float %7634, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7636 = extractvalue %dx.types.ResRet.f32 %7635, 0
  %7637 = fmul fast float %7636, %7594
  %7638 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7629, float %7634, float undef, float undef, i32 0, i32 0, i32 undef, float %7424)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7639 = extractvalue %dx.types.ResRet.f32 %7638, 0
  %7640 = fmul fast float %7639, %7595
  %7641 = fadd fast float %7640, %7637
  %7642 = fmul fast float %7641, %7609
  %7643 = fadd fast float %7632, %7627
  %7644 = fmul fast float %7643, %7608
  %7645 = fadd fast float %7644, %7642
  %7646 = fmul fast float %7645, 6.250000e-02
  br label %7732

; <label>:7647                                    ; preds = %7579
  %7648 = fmul fast float %258, 0x401921FB60000000
  %7649 = call float @dx.op.unary.f32(i32 13, float %7648)  ; Sin(value)
  %7650 = call float @dx.op.unary.f32(i32 12, float %7648)  ; Cos(value)
  %7651 = fsub fast float -0.000000e+00, %7649
  br label %7652

; <label>:7652                                    ; preds = %7701, %7647
  %7653 = phi float [ 0.000000e+00, %7647 ], [ %7696, %7701 ]
  %7654 = phi float [ 0.000000e+00, %7647 ], [ %7698, %7701 ]
  %7655 = phi i32 [ 0, %7647 ], [ %7702, %7701 ]
  %7656 = mul i32 %7655, 2
  %7657 = add i32 0, %7656
  %7658 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7657
  %7659 = load float, float* %7658, align 4
  %7660 = mul i32 %7655, 2
  %7661 = add i32 1, %7660
  %7662 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7661
  %7663 = load float, float* %7662, align 4
  %7664 = fmul fast float %7659, %7650
  %7665 = call float @dx.op.tertiary.f32(i32 46, float %7663, float %7651, float %7664)  ; FMad(a,b,c)
  %7666 = fmul fast float %7659, %7649
  %7667 = call float @dx.op.tertiary.f32(i32 46, float %7663, float %7650, float %7666)  ; FMad(a,b,c)
  %7668 = fmul fast float %7665, %7422
  %7669 = fmul fast float %7667, %7422
  %7670 = fadd fast float %7668, %6548
  %7671 = fadd fast float %7669, %6552
  %7672 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7670, float %7671, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7673 = extractvalue %dx.types.ResRet.f32 %7672, 0
  %7674 = extractvalue %dx.types.ResRet.f32 %7672, 1
  %7675 = extractvalue %dx.types.ResRet.f32 %7672, 2
  %7676 = extractvalue %dx.types.ResRet.f32 %7672, 3
  %7677 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %7673, float* %7677, align 4
  %7678 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %7674, float* %7678, align 4
  %7679 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %7675, float* %7679, align 4
  %7680 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %7676, float* %7680, align 4
  %7681 = fsub fast float %7673, %7424
  %7682 = fcmp fast olt float %7681, 0.000000e+00
  %7683 = select i1 %7682, float 0.000000e+00, float 1.000000e+00
  %7684 = fadd fast float %7683, %7653
  %7685 = fmul fast float %7683, %7681
  %7686 = fadd fast float %7685, %7654
  br label %7687

; <label>:7687                                    ; preds = %7687, %7652
  %7688 = phi i32 [ 1, %7652 ], [ %7699, %7687 ]
  %7689 = phi float [ %7686, %7652 ], [ %7698, %7687 ]
  %7690 = phi float [ %7684, %7652 ], [ %7696, %7687 ]
  %7691 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %7688
  %7692 = load float, float* %7691, align 4, !tbaa !112, !noalias !102
  %7693 = fsub fast float %7692, %7424
  %7694 = fcmp fast olt float %7693, 0.000000e+00
  %7695 = select i1 %7694, float 0.000000e+00, float 1.000000e+00
  %7696 = fadd fast float %7695, %7690
  %7697 = fmul fast float %7695, %7693
  %7698 = fadd fast float %7697, %7689
  %7699 = add nuw nsw i32 %7688, 1
  %7700 = icmp eq i32 %7699, 4
  br i1 %7700, label %7701, label %7687, !llvm.loop !114

; <label>:7701                                    ; preds = %7687
  %7702 = add nuw nsw i32 %7655, 1
  %7703 = icmp eq i32 %7702, 8
  br i1 %7703, label %7704, label %7652, !llvm.loop !115

; <label>:7704                                    ; preds = %7701
  %7705 = fdiv fast float 1.000000e+00, %7696
  %7706 = fmul fast float %7705, %7698
  %7707 = fdiv fast float 1.000000e+00, %7424
  %7708 = fmul fast float %7706, %7707
  %7709 = call float @dx.op.unary.f32(i32 7, float %7708)  ; Saturate(value)
  %7710 = call float @dx.op.binary.f32(i32 35, float %7709, float 0.000000e+00)  ; FMax(a,b)
  %7711 = fmul fast float %7696, 3.125000e-02
  %7712 = call float @dx.op.unary.f32(i32 7, float %7711)  ; Saturate(value)
  %7713 = fmul fast float %7712, 2.000000e+00
  %7714 = fadd fast float %7713, -1.000000e+00
  %7715 = fcmp fast ogt float %7714, 0.000000e+00
  %7716 = fcmp fast olt float %7714, 0.000000e+00
  %7717 = zext i1 %7715 to i32
  %7718 = zext i1 %7716 to i32
  %7719 = sub nsw i32 %7717, %7718
  %7720 = sitofp i32 %7719 to float
  %7721 = fmul fast float %7720, %7714
  %7722 = fsub fast float 1.000000e+00, %7721
  %7723 = fmul fast float %7722, %7722
  %7724 = fmul fast float %7723, %7722
  %7725 = fsub fast float %7722, %7724
  %7726 = fmul fast float %7725, %7710
  %7727 = fsub fast float 1.000000e+00, %7724
  %7728 = fsub fast float %7727, %7726
  %7729 = fmul fast float %7720, 5.000000e-01
  %7730 = fmul fast float %7729, %7728
  %7731 = fsub fast float 5.000000e-01, %7730
  br label %7732

; <label>:7732                                    ; preds = %7704, %7580, %7551, %7427, %7411
  %7733 = phi float [ 1.000000e+00, %7411 ], [ %7493, %7427 ], [ %7578, %7551 ], [ %7646, %7580 ], [ %7731, %7704 ]
  %7734 = fsub fast float %7245, %7078
  %7735 = fmul fast float %7734, %6645
  %7736 = fadd fast float %7735, %7078
  %7737 = fsub fast float %7412, %7736
  %7738 = fmul fast float %7737, %6644
  %7739 = fadd fast float %7738, %7736
  %7740 = fsub fast float %7733, %7739
  %7741 = fmul fast float %7740, %6672
  %7742 = fadd fast float %7741, %7739
  %7743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7744 = extractvalue %dx.types.CBufRet.f32 %7743, 2
  %7745 = fcmp fast ogt float %7744, 0.000000e+00
  br i1 %7745, label %7746, label %7786, !dx.controlflow.hints !119

; <label>:7746                                    ; preds = %7732
  %7747 = fcmp fast ugt float %7744, 0.000000e+00
  br i1 %7747, label %7748, label %7783

; <label>:7748                                    ; preds = %7746
  %7749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7750 = extractvalue %dx.types.CBufRet.f32 %7749, 0
  %7751 = extractvalue %dx.types.CBufRet.f32 %7749, 1
  %7752 = extractvalue %dx.types.CBufRet.f32 %7749, 2
  %7753 = extractvalue %dx.types.CBufRet.f32 %7749, 3
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 0
  %7756 = extractvalue %dx.types.CBufRet.f32 %7754, 1
  %7757 = extractvalue %dx.types.CBufRet.f32 %7754, 2
  %7758 = extractvalue %dx.types.CBufRet.f32 %7754, 3
  %7759 = extractvalue %dx.types.CBufRet.f32 %7743, 0
  %7760 = extractvalue %dx.types.CBufRet.f32 %7743, 1
  %7761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7762 = extractvalue %dx.types.CBufRet.f32 %7761, 0
  %7763 = extractvalue %dx.types.CBufRet.f32 %7761, 1
  %7764 = extractvalue %dx.types.CBufRet.f32 %7761, 2
  %7765 = fadd fast float %7762, %6525
  %7766 = fadd fast float %7763, %6526
  %7767 = fadd fast float %7764, %6527
  %7768 = fmul fast float %7765, %7750
  %7769 = call float @dx.op.tertiary.f32(i32 46, float %7751, float %7766, float %7768)  ; FMad(a,b,c)
  %7770 = call float @dx.op.tertiary.f32(i32 46, float %7752, float %7767, float %7769)  ; FMad(a,b,c)
  %7771 = fadd fast float %7770, %7753
  %7772 = fmul fast float %7765, %7755
  %7773 = call float @dx.op.tertiary.f32(i32 46, float %7756, float %7766, float %7772)  ; FMad(a,b,c)
  %7774 = call float @dx.op.tertiary.f32(i32 46, float %7757, float %7767, float %7773)  ; FMad(a,b,c)
  %7775 = fadd fast float %7774, %7758
  %7776 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7771, float %7775, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = fmul fast float %7777, %7760
  %7779 = fadd fast float %7778, %7759
  %7780 = call float @dx.op.unary.f32(i32 7, float %7779)  ; Saturate(value)
  %7781 = fmul fast float %7780, %7744
  %7782 = fsub fast float 1.000000e+00, %7781
  br label %7783

; <label>:7783                                    ; preds = %7748, %7746
  %7784 = phi float [ %7782, %7748 ], [ 1.000000e+00, %7746 ]
  %7785 = fmul fast float %7784, %7742
  br label %7786

; <label>:7786                                    ; preds = %7783, %7732, %6505
  %7787 = phi float [ 1.000000e+00, %6505 ], [ %7785, %7783 ], [ %7742, %7732 ]
  %7788 = call float @dx.op.binary.f32(i32 36, float %7787, float %7787)  ; FMin(a,b)
  %7789 = call float @dx.op.binary.f32(i32 36, float %7787, float %7788)  ; FMin(a,b)
  %7790 = fcmp fast ogt float %7789, 0.000000e+00
  br i1 %7790, label %7791, label %7957, !dx.controlflow.hints !120

; <label>:7791                                    ; preds = %7786
  %7792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7793 = extractvalue %dx.types.CBufRet.f32 %7792, 0
  %7794 = extractvalue %dx.types.CBufRet.f32 %7792, 1
  %7795 = extractvalue %dx.types.CBufRet.f32 %7792, 2
  %7796 = extractvalue %dx.types.CBufRet.f32 %7792, 3
  %7797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7798 = extractvalue %dx.types.CBufRet.f32 %7797, 0
  %7799 = extractvalue %dx.types.CBufRet.f32 %7797, 1
  %7800 = extractvalue %dx.types.CBufRet.f32 %7797, 2
  %7801 = extractvalue %dx.types.CBufRet.f32 %7797, 3
  %7802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7803 = extractvalue %dx.types.CBufRet.f32 %7802, 0
  %7804 = extractvalue %dx.types.CBufRet.f32 %7802, 1
  %7805 = extractvalue %dx.types.CBufRet.f32 %7802, 2
  %7806 = extractvalue %dx.types.CBufRet.f32 %7802, 3
  %7807 = fmul fast float %7793, %6525
  %7808 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %7794, float %7807)  ; FMad(a,b,c)
  %7809 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %7795, float %7808)  ; FMad(a,b,c)
  %7810 = fadd fast float %7809, %7796
  %7811 = fmul fast float %7798, %6525
  %7812 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %7799, float %7811)  ; FMad(a,b,c)
  %7813 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %7800, float %7812)  ; FMad(a,b,c)
  %7814 = fadd fast float %7813, %7801
  %7815 = fmul fast float %7803, %6525
  %7816 = call float @dx.op.tertiary.f32(i32 46, float %6526, float %7804, float %7815)  ; FMad(a,b,c)
  %7817 = call float @dx.op.tertiary.f32(i32 46, float %6527, float %7805, float %7816)  ; FMad(a,b,c)
  %7818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7819 = extractvalue %dx.types.CBufRet.f32 %7818, 0
  %7820 = extractvalue %dx.types.CBufRet.f32 %7818, 1
  %7821 = extractvalue %dx.types.CBufRet.f32 %7818, 3
  %7822 = fmul fast float %7821, %7810
  %7823 = fmul fast float %7821, %7814
  %7824 = fadd fast float %7822, %7819
  %7825 = fadd fast float %7823, %7820
  %7826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7827 = extractvalue %dx.types.CBufRet.f32 %7826, 0
  %7828 = extractvalue %dx.types.CBufRet.f32 %7826, 1
  %7829 = fsub fast float %7824, %7827
  %7830 = fsub fast float %7825, %7828
  %7831 = fcmp fast olt float %7829, 0.000000e+00
  %7832 = fcmp fast olt float %7830, 0.000000e+00
  %7833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7834 = extractvalue %dx.types.CBufRet.f32 %7833, 0
  %7835 = extractvalue %dx.types.CBufRet.f32 %7833, 1
  %7836 = extractvalue %dx.types.CBufRet.f32 %7833, 2
  %7837 = extractvalue %dx.types.CBufRet.f32 %7833, 3
  %7838 = select i1 %7831, float %7834, float %7836
  %7839 = select i1 %7832, float %7835, float %7837
  %7840 = fmul fast float %7838, %7829
  %7841 = fmul fast float %7839, %7830
  %7842 = call float @dx.op.unary.f32(i32 6, float %7840)  ; FAbs(value)
  %7843 = call float @dx.op.unary.f32(i32 6, float %7841)  ; FAbs(value)
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 0
  %7846 = call float @dx.op.binary.f32(i32 35, float %7842, float %7843)  ; FMax(a,b)
  %7847 = fsub fast float %7845, %7846
  %7848 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  %7849 = fcmp fast ogt float %7848, 0.000000e+00
  br i1 %7849, label %7850, label %7891, !dx.controlflow.hints !121

; <label>:7850                                    ; preds = %7791
  %7851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7824, float %7825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7852 = extractvalue %dx.types.ResRet.f32 %7851, 1
  %7853 = fcmp fast ogt float %7852, 0.000000e+00
  br i1 %7853, label %7854, label %7886

; <label>:7854                                    ; preds = %7850
  %7855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7824, float %7825, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7856 = extractvalue %dx.types.ResRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.ResRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.ResRet.f32 %7855, 2
  %7859 = extractvalue %dx.types.ResRet.f32 %7855, 3
  %7860 = fsub fast float 1.000000e+00, %7806
  %7861 = fsub fast float %7860, %7817
  %7862 = fmul fast float %7861, 0x400921FB60000000
  %7863 = fadd fast float %7862, 0x3FF921FB60000000
  %7864 = call float @dx.op.unary.f32(i32 13, float %7863)  ; Sin(value)
  %7865 = fadd fast float %7864, -1.000000e+00
  %7866 = fmul fast float %7865, 0x3FD45F3060000000
  %7867 = fmul fast float %7861, 0x401921FB60000000
  %7868 = fadd fast float %7867, 0x400921FB60000000
  %7869 = call float @dx.op.unary.f32(i32 13, float %7868)  ; Sin(value)
  %7870 = fadd fast float %7869, 0x3E7777A5C0000000
  %7871 = fmul fast float %7870, 0x3FC45F3060000000
  %7872 = fmul fast float %7861, 0x4022D97C80000000
  %7873 = fadd fast float %7872, 0x4012D97C80000000
  %7874 = call float @dx.op.unary.f32(i32 13, float %7873)  ; Sin(value)
  %7875 = fadd fast float %7874, 1.000000e+00
  %7876 = fmul fast float %7875, 0x3FBB2995E0000000
  %7877 = fmul fast float %7861, 0x402921FB60000000
  %7878 = fadd fast float %7877, 0x401921FB60000000
  %7879 = call float @dx.op.unary.f32(i32 13, float %7878)  ; Sin(value)
  %7880 = fadd fast float %7879, 0xBE8777A5C0000000
  %7881 = fmul fast float %7880, 0x3FB45F3060000000
  %7882 = call float @dx.op.dot4.f32(i32 56, float %7856, float %7857, float %7858, float %7859, float %7866, float %7871, float %7876, float %7881)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7883 = fmul fast float %7882, 0xBFF7154760000000
  %7884 = call float @dx.op.unary.f32(i32 21, float %7883)  ; Exp(value)
  %7885 = call float @dx.op.unary.f32(i32 7, float %7884)  ; Saturate(value)
  br label %7886

; <label>:7886                                    ; preds = %7854, %7850
  %7887 = phi float [ %7885, %7854 ], [ 1.000000e+00, %7850 ]
  %7888 = fadd fast float %7887, -1.000000e+00
  %7889 = fmul fast float %7888, %7848
  %7890 = fadd fast float %7889, 1.000000e+00
  br label %7891

; <label>:7891                                    ; preds = %7886, %7791
  %7892 = phi float [ %7890, %7886 ], [ 1.000000e+00, %7791 ]
  %7893 = fmul fast float %7892, %7787
  %7894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7895 = extractvalue %dx.types.CBufRet.f32 %7894, 0
  %7896 = extractvalue %dx.types.CBufRet.f32 %7894, 1
  %7897 = extractvalue %dx.types.CBufRet.f32 %7894, 2
  %7898 = fadd fast float %7895, %186
  %7899 = fadd fast float %7896, %187
  %7900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.f32 %7900, 1
  %7902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7903 = extractvalue %dx.types.CBufRet.f32 %7902, 0
  %7904 = extractvalue %dx.types.CBufRet.f32 %7902, 1
  %7905 = extractvalue %dx.types.CBufRet.f32 %7902, 2
  %7906 = fsub fast float -0.000000e+00, %7898
  %7907 = fsub fast float -0.000000e+00, %7899
  %7908 = fsub fast float -0.000000e+00, %188
  %7909 = fsub fast float %7908, %7897
  %7910 = fadd fast float %7909, %7901
  %7911 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7906, float %7907, float %7910)  ; Dot3(ax,ay,az,bx,by,bz)
  %7912 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7903, float %7904, float %7905)  ; Dot3(ax,ay,az,bx,by,bz)
  %7913 = fdiv fast float 1.000000e+00, %7912
  %7914 = fmul fast float %7913, %7911
  %7915 = fmul fast float %7903, %7914
  %7916 = fmul fast float %7904, %7914
  %7917 = fadd fast float %7915, %7898
  %7918 = fadd fast float %7916, %7899
  %7919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7920 = extractvalue %dx.types.CBufRet.f32 %7919, 0
  %7921 = extractvalue %dx.types.CBufRet.f32 %7919, 1
  %7922 = fsub fast float %7917, %7920
  %7923 = fsub fast float %7918, %7921
  %7924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7925 = extractvalue %dx.types.CBufRet.f32 %7924, 2
  %7926 = extractvalue %dx.types.CBufRet.f32 %7924, 3
  %7927 = fmul fast float %7922, %7925
  %7928 = fmul fast float %7923, %7926
  %7929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7930 = extractvalue %dx.types.CBufRet.i32 %7929, 3
  %7931 = icmp eq i32 %7930, 0
  br i1 %7931, label %7937, label %7932

; <label>:7932                                    ; preds = %7891
  %7933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7927, float %7928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7934 = extractvalue %dx.types.ResRet.f32 %7933, 0
  %7935 = extractvalue %dx.types.ResRet.f32 %7933, 1
  %7936 = extractvalue %dx.types.ResRet.f32 %7933, 2
  br label %7942

; <label>:7937                                    ; preds = %7891
  %7938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7927, float %7928, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7939 = extractvalue %dx.types.ResRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.ResRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.ResRet.f32 %7938, 2
  br label %7942

; <label>:7942                                    ; preds = %7937, %7932
  %7943 = phi float [ %7934, %7932 ], [ %7939, %7937 ]
  %7944 = phi float [ %7935, %7932 ], [ %7940, %7937 ]
  %7945 = phi float [ %7936, %7932 ], [ %7941, %7937 ]
  %7946 = extractvalue %dx.types.CBufRet.f32 %7900, 2
  %7947 = fmul fast float %7946, %7943
  %7948 = extractvalue %dx.types.CBufRet.f32 %7900, 0
  %7949 = fsub fast float %7914, %7948
  %7950 = fsub fast float %7949, %7947
  %7951 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7950)  ; FMax(a,b)
  %7952 = fmul fast float %7951, %7944
  %7953 = call float @dx.op.binary.f32(i32 36, float %7945, float %7952)  ; FMin(a,b)
  %7954 = fmul fast float %7953, 0xBFF7154760000000
  %7955 = call float @dx.op.unary.f32(i32 21, float %7954)  ; Exp(value)
  %7956 = fmul fast float %7893, %7955
  br label %7957

; <label>:7957                                    ; preds = %7942, %7786
  %7958 = phi float [ %7956, %7942 ], [ %7787, %7786 ]
  %7959 = call float @dx.op.binary.f32(i32 36, float %7958, float %7958)  ; FMin(a,b)
  %7960 = call float @dx.op.binary.f32(i32 36, float %7958, float %7959)  ; FMin(a,b)
  %7961 = fcmp fast ogt float %7960, 0.000000e+00
  br i1 %7961, label %7962, label %8270, !dx.controlflow.hints !122

; <label>:7962                                    ; preds = %7957
  %7963 = bitcast i32 %5627 to float
  %7964 = fmul fast float %7958, %6517
  %7965 = fmul fast float %7958, %6518
  %7966 = fmul fast float %7958, %6519
  %7967 = fsub fast float %6506, %5589
  %7968 = fsub fast float %6507, %5588
  %7969 = fsub fast float %6508, %5587
  %7970 = call float @dx.op.dot3.f32(i32 55, float %7967, float %7968, float %7969, float %7967, float %7968, float %7969)  ; Dot3(ax,ay,az,bx,by,bz)
  %7971 = call float @dx.op.unary.f32(i32 25, float %7970)  ; Rsqrt(value)
  %7972 = fmul fast float %7971, %7967
  %7973 = fmul fast float %7971, %7968
  %7974 = fmul fast float %7971, %7969
  %7975 = call float @dx.op.dot3.f32(i32 55, float %6506, float %6507, float %6508, float %5593, float %5594, float %5595)  ; Dot3(ax,ay,az,bx,by,bz)
  %7976 = call float @dx.op.dot3.f32(i32 55, float %5586, float %5585, float %5584, float %7972, float %7973, float %7974)  ; Dot3(ax,ay,az,bx,by,bz)
  %7977 = call float @dx.op.unary.f32(i32 7, float %7975)  ; Saturate(value)
  %7978 = fmul fast float %7977, %7977
  %7979 = fmul fast float %7978, %7963
  %7980 = call float @dx.op.unary.f32(i32 7, float %7979)  ; Saturate(value)
  %7981 = fmul fast float %7980, %7977
  %7982 = call float @dx.op.dot3.f32(i32 55, float %5593, float %5594, float %5595, float %7972, float %7973, float %7974)  ; Dot3(ax,ay,az,bx,by,bz)
  %7983 = fmul fast float %7982, %7982
  %7984 = call float @dx.op.unary.f32(i32 6, float %7975)  ; FAbs(value)
  %7985 = fsub fast float 1.000000e+00, %5621
  %7986 = fmul fast float %5603, %5603
  %7987 = fmul fast float %7986, %7985
  %7988 = fadd fast float %7987, %5621
  %7989 = bitcast float %7988 to i32
  %7990 = ashr i32 %7989, 1
  %7991 = add nsw i32 %7990, 532487669
  %7992 = bitcast i32 %7991 to float
  %7993 = fadd fast float %7992, %5603
  %7994 = fmul fast float %5621, %7983
  %7995 = fsub fast float 1.000000e+00, %7983
  %7996 = fadd fast float %7995, %7994
  %7997 = fmul fast float %7984, %7984
  %7998 = fmul fast float %7997, %7985
  %7999 = fadd fast float %7998, %5621
  %8000 = bitcast float %7999 to i32
  %8001 = ashr i32 %8000, 1
  %8002 = add nsw i32 %8001, 532487669
  %8003 = bitcast i32 %8002 to float
  %8004 = fadd fast float %8003, %7984
  %8005 = fmul fast float %7996, %7996
  %8006 = fmul fast float %8005, %7993
  %8007 = fmul fast float %8006, %8004
  %8008 = fdiv fast float 0x3FF0A00000000000, %8007
  %8009 = fmul fast float %8008, %5621
  %8010 = fmul fast float %5873, 0x3FF9999980000000
  %8011 = fsub fast float 5.000000e+00, %8010
  %8012 = call float @dx.op.unary.f32(i32 6, float %7976)  ; FAbs(value)
  %8013 = fsub fast float 1.000000e+00, %8012
  %8014 = fmul fast float %5873, 0x41D9660740000000
  %8015 = fadd fast float %8014, 0xC1EFBF8940000000
  %8016 = bitcast float %8013 to i32
  %8017 = sitofp i32 %8016 to float
  %8018 = fmul fast float %8017, %8011
  %8019 = fadd fast float %8015, %8018
  %8020 = fptosi float %8019 to i32
  %8021 = bitcast i32 %8020 to float
  %8022 = fsub fast float 1.000000e+00, %5596
  %8023 = fsub fast float 1.000000e+00, %5597
  %8024 = fsub fast float 1.000000e+00, %5601
  %8025 = fmul fast float %8021, %8022
  %8026 = fmul fast float %8021, %8023
  %8027 = fmul fast float %8021, %8024
  %8028 = fadd fast float %8025, %5596
  %8029 = fadd fast float %8026, %5597
  %8030 = fadd fast float %8027, %5601
  br i1 %5896, label %8031, label %8054

; <label>:8031                                    ; preds = %7962
  %8032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4639, float %8012, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8033 = extractvalue %dx.types.ResRet.f32 %8032, 0
  %8034 = extractvalue %dx.types.ResRet.f32 %8032, 1
  %8035 = extractvalue %dx.types.ResRet.f32 %8032, 2
  %8036 = fadd fast float %8033, -5.000000e-01
  %8037 = fadd fast float %8034, -5.000000e-01
  %8038 = fadd fast float %8035, -5.000000e-01
  %8039 = fmul fast float %5596, 4.000000e+00
  %8040 = fmul fast float %8039, %8022
  %8041 = fmul fast float %8040, %8036
  %8042 = fmul fast float %5597, 4.000000e+00
  %8043 = fmul fast float %8042, %8023
  %8044 = fmul fast float %8043, %8037
  %8045 = fmul fast float %5601, 4.000000e+00
  %8046 = fmul fast float %8045, %8024
  %8047 = fmul fast float %8046, %8038
  %8048 = fadd fast float %8041, %8028
  %8049 = fadd fast float %8044, %8029
  %8050 = fadd fast float %8047, %8030
  %8051 = call float @dx.op.unary.f32(i32 7, float %8048)  ; Saturate(value)
  %8052 = call float @dx.op.unary.f32(i32 7, float %8049)  ; Saturate(value)
  %8053 = call float @dx.op.unary.f32(i32 7, float %8050)  ; Saturate(value)
  br label %8054

; <label>:8054                                    ; preds = %8031, %7962
  %8055 = phi float [ %8051, %8031 ], [ %8028, %7962 ]
  %8056 = phi float [ %8052, %8031 ], [ %8029, %7962 ]
  %8057 = phi float [ %8053, %8031 ], [ %8030, %7962 ]
  %8058 = fmul fast float %7975, 9.843750e-01
  %8059 = fadd fast float %8058, 7.812500e-03
  %8060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %8059, float %5877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8061 = extractvalue %dx.types.ResRet.f32 %8060, 0
  %8062 = extractvalue %dx.types.ResRet.f32 %8060, 1
  %8063 = extractvalue %dx.types.ResRet.f32 %8060, 2
  %8064 = extractvalue %dx.types.ResRet.f32 %8060, 3
  %8065 = fsub fast float %8063, %8061
  %8066 = fsub fast float %8064, %8062
  %8067 = fmul fast float %8065, %5883
  %8068 = fmul fast float %8066, %5883
  %8069 = fadd fast float %8067, %8061
  %8070 = fadd fast float %8068, %8062
  %8071 = fmul fast float %8069, %5596
  %8072 = fmul fast float %8069, %5597
  %8073 = fmul fast float %8069, %5601
  %8074 = fadd fast float %8071, %8070
  %8075 = fadd fast float %8072, %8070
  %8076 = fadd fast float %8073, %8070
  br i1 %5896, label %8077, label %8100

; <label>:8077                                    ; preds = %8054
  %8078 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4639, float %7975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8079 = extractvalue %dx.types.ResRet.f32 %8078, 0
  %8080 = extractvalue %dx.types.ResRet.f32 %8078, 1
  %8081 = extractvalue %dx.types.ResRet.f32 %8078, 2
  %8082 = fadd fast float %8079, -5.000000e-01
  %8083 = fadd fast float %8080, -5.000000e-01
  %8084 = fadd fast float %8081, -5.000000e-01
  %8085 = fmul fast float %5596, 4.000000e+00
  %8086 = fmul fast float %8085, %8022
  %8087 = fmul fast float %8086, %8082
  %8088 = fmul fast float %5597, 4.000000e+00
  %8089 = fmul fast float %8088, %8023
  %8090 = fmul fast float %8089, %8083
  %8091 = fmul fast float %5601, 4.000000e+00
  %8092 = fmul fast float %8091, %8024
  %8093 = fmul fast float %8092, %8084
  %8094 = fadd fast float %8087, %8074
  %8095 = fadd fast float %8090, %8075
  %8096 = fadd fast float %8093, %8076
  %8097 = call float @dx.op.unary.f32(i32 7, float %8094)  ; Saturate(value)
  %8098 = call float @dx.op.unary.f32(i32 7, float %8095)  ; Saturate(value)
  %8099 = call float @dx.op.unary.f32(i32 7, float %8096)  ; Saturate(value)
  br label %8100

; <label>:8100                                    ; preds = %8077, %8054
  %8101 = phi float [ %8097, %8077 ], [ %8074, %8054 ]
  %8102 = phi float [ %8098, %8077 ], [ %8075, %8054 ]
  %8103 = phi float [ %8099, %8077 ], [ %8076, %8054 ]
  %8104 = call float @dx.op.binary.f32(i32 35, float %8102, float %8103)  ; FMax(a,b)
  %8105 = call float @dx.op.binary.f32(i32 35, float %8101, float %8104)  ; FMax(a,b)
  %8106 = fsub fast float 1.000000e+00, %8105
  %8107 = call float @dx.op.binary.f32(i32 35, float %7984, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8108 = fdiv fast float %3988, %8107
  %8109 = fmul fast float %6415, %8108
  %8110 = fmul fast float %6417, %8108
  %8111 = fmul fast float %6419, %8108
  %8112 = call float @dx.op.unary.f32(i32 21, float %8109)  ; Exp(value)
  %8113 = call float @dx.op.unary.f32(i32 21, float %8110)  ; Exp(value)
  %8114 = call float @dx.op.unary.f32(i32 21, float %8111)  ; Exp(value)
  %8115 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  %8116 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8117 = call float @dx.op.unary.f32(i32 7, float %8114)  ; Saturate(value)
  %8118 = select i1 %6412, float %8115, float 0.000000e+00
  %8119 = select i1 %6413, float %8116, float 0.000000e+00
  %8120 = select i1 %6414, float %8117, float 0.000000e+00
  %8121 = fsub fast float -0.000000e+00, %5593
  %8122 = fsub fast float -0.000000e+00, %5594
  %8123 = fsub fast float -0.000000e+00, %5595
  %8124 = call float @dx.op.dot3.f32(i32 55, float %6506, float %6507, float %6508, float %8121, float %8122, float %8123)  ; Dot3(ax,ay,az,bx,by,bz)
  %8125 = call float @dx.op.unary.f32(i32 7, float %8124)  ; Saturate(value)
  %8126 = fmul fast float %8125, 9.843750e-01
  %8127 = fadd fast float %8126, 7.812500e-03
  %8128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %8127, float %5877, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8129 = extractvalue %dx.types.ResRet.f32 %8128, 0
  %8130 = extractvalue %dx.types.ResRet.f32 %8128, 1
  %8131 = extractvalue %dx.types.ResRet.f32 %8128, 2
  %8132 = extractvalue %dx.types.ResRet.f32 %8128, 3
  %8133 = fsub fast float %8131, %8129
  %8134 = fsub fast float %8132, %8130
  %8135 = fmul fast float %8133, %5883
  %8136 = fmul fast float %8134, %5883
  %8137 = fadd fast float %8135, %8129
  %8138 = fadd fast float %8136, %8130
  %8139 = fmul fast float %8137, %5596
  %8140 = fmul fast float %8137, %5597
  %8141 = fmul fast float %8137, %5601
  %8142 = fadd fast float %8139, %8138
  %8143 = fadd fast float %8140, %8138
  %8144 = fadd fast float %8141, %8138
  br i1 %5896, label %8145, label %8168

; <label>:8145                                    ; preds = %8100
  %8146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4639, float %8125, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8147 = extractvalue %dx.types.ResRet.f32 %8146, 0
  %8148 = extractvalue %dx.types.ResRet.f32 %8146, 1
  %8149 = extractvalue %dx.types.ResRet.f32 %8146, 2
  %8150 = fadd fast float %8147, -5.000000e-01
  %8151 = fadd fast float %8148, -5.000000e-01
  %8152 = fadd fast float %8149, -5.000000e-01
  %8153 = fmul fast float %5596, 4.000000e+00
  %8154 = fmul fast float %8153, %8022
  %8155 = fmul fast float %8154, %8150
  %8156 = fmul fast float %5597, 4.000000e+00
  %8157 = fmul fast float %8156, %8023
  %8158 = fmul fast float %8157, %8151
  %8159 = fmul fast float %5601, 4.000000e+00
  %8160 = fmul fast float %8159, %8024
  %8161 = fmul fast float %8160, %8152
  %8162 = fadd fast float %8155, %8142
  %8163 = fadd fast float %8158, %8143
  %8164 = fadd fast float %8161, %8144
  %8165 = call float @dx.op.unary.f32(i32 7, float %8162)  ; Saturate(value)
  %8166 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8167 = call float @dx.op.unary.f32(i32 7, float %8164)  ; Saturate(value)
  br label %8168

; <label>:8168                                    ; preds = %8145, %8100
  %8169 = phi float [ %8165, %8145 ], [ %8142, %8100 ]
  %8170 = phi float [ %8166, %8145 ], [ %8143, %8100 ]
  %8171 = phi float [ %8167, %8145 ], [ %8144, %8100 ]
  %8172 = call float @dx.op.binary.f32(i32 35, float %8170, float %8171)  ; FMax(a,b)
  %8173 = call float @dx.op.binary.f32(i32 35, float %8169, float %8172)  ; FMax(a,b)
  %8174 = fsub fast float 1.000000e+00, %8173
  %8175 = fmul fast float %5618, %6479
  %8176 = fadd fast float %6481, %8175
  %8177 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8178 = fsub fast float %6506, %5609
  %8179 = fsub fast float %6507, %5610
  %8180 = fsub fast float %6508, %5611
  %8181 = call float @dx.op.dot3.f32(i32 55, float %8178, float %8179, float %8180, float %8178, float %8179, float %8180)  ; Dot3(ax,ay,az,bx,by,bz)
  %8182 = call float @dx.op.unary.f32(i32 25, float %8181)  ; Rsqrt(value)
  %8183 = fmul fast float %8182, %8178
  %8184 = fmul fast float %8182, %8179
  %8185 = fmul fast float %8182, %8180
  %8186 = call float @dx.op.dot3.f32(i32 55, float %8121, float %8122, float %8123, float %8183, float %8184, float %8185)  ; Dot3(ax,ay,az,bx,by,bz)
  %8187 = fmul fast float %8186, %8186
  %8188 = call float @dx.op.unary.f32(i32 6, float %8125)  ; FAbs(value)
  %8189 = call float @dx.op.binary.f32(i32 35, float %8177, float 0x3F847AE140000000)  ; FMax(a,b)
  %8190 = fmul fast float %8189, %8189
  %8191 = fmul fast float %8190, %8190
  %8192 = fsub fast float 1.000000e+00, %8191
  %8193 = fmul fast float %7986, %8192
  %8194 = fadd fast float %8193, %8191
  %8195 = bitcast float %8194 to i32
  %8196 = ashr i32 %8195, 1
  %8197 = add nsw i32 %8196, 532487669
  %8198 = bitcast i32 %8197 to float
  %8199 = fadd fast float %8198, %5603
  %8200 = fmul fast float %8191, %8187
  %8201 = fsub fast float 1.000000e+00, %8187
  %8202 = fadd fast float %8201, %8200
  %8203 = fmul fast float %8188, %8188
  %8204 = fmul fast float %8203, %8192
  %8205 = fadd fast float %8204, %8191
  %8206 = bitcast float %8205 to i32
  %8207 = ashr i32 %8206, 1
  %8208 = add nsw i32 %8207, 532487669
  %8209 = bitcast i32 %8208 to float
  %8210 = fadd fast float %8209, %8188
  %8211 = fmul fast float %8202, %8202
  %8212 = fmul fast float %8211, %8199
  %8213 = fmul fast float %8212, %8210
  %8214 = fdiv fast float 0x3FF0A00000000000, %8213
  %8215 = fmul fast float %8214, %8191
  %8216 = fmul fast float %8125, %8118
  %8217 = fmul fast float %8125, %8119
  %8218 = fmul fast float %8125, %8120
  %8219 = fmul fast float %8216, %8174
  %8220 = fmul fast float %8219, %8215
  %8221 = fmul fast float %8217, %8174
  %8222 = fmul fast float %8221, %8215
  %8223 = fmul fast float %8218, %8174
  %8224 = fmul fast float %8223, %8215
  %8225 = fmul fast float %8055, %8009
  %8226 = fmul fast float %8056, %8009
  %8227 = fmul fast float %8057, %8009
  %8228 = fsub fast float 1.000000e+00, %7976
  %8229 = bitcast float %8228 to i32
  %8230 = sitofp i32 %8229 to float
  %8231 = fmul fast float %8230, 5.000000e+00
  %8232 = fadd fast float %8231, 0xC1EFBF8940000000
  %8233 = fptosi float %8232 to i32
  %8234 = bitcast i32 %8233 to float
  %8235 = fmul fast float %8234, %4640
  %8236 = fmul fast float %8106, %8235
  %8237 = fmul fast float %8236, %6407
  %8238 = fmul fast float %8236, %6408
  %8239 = fmul fast float %8236, %6409
  %8240 = fadd fast float %8237, %8225
  %8241 = fadd fast float %8238, %8226
  %8242 = fadd fast float %8239, %8227
  %8243 = fmul fast float %8240, %7981
  %8244 = fmul fast float %8241, %7981
  %8245 = fmul fast float %8242, %7981
  %8246 = fmul fast float %7981, %7964
  %8247 = fmul fast float %8246, %8106
  %8248 = fmul fast float %7981, %7965
  %8249 = fmul fast float %8248, %8106
  %8250 = fmul fast float %7981, %7966
  %8251 = fmul fast float %8250, %8106
  %8252 = fadd fast float %8243, %8220
  %8253 = fadd fast float %8244, %8222
  %8254 = fadd fast float %8245, %8224
  %8255 = fmul fast float %8252, %7964
  %8256 = fmul fast float %8253, %7965
  %8257 = fmul fast float %8254, %7966
  %8258 = fadd fast float %8247, %6496
  %8259 = fmul fast float %8258, %4636
  %8260 = fadd fast float %8249, %6498
  %8261 = fmul fast float %8260, %4636
  %8262 = fadd fast float %8251, %6500
  %8263 = fmul fast float %8262, %4636
  %8264 = fadd fast float %8255, %6460
  %8265 = fmul fast float %8264, %4636
  %8266 = fadd fast float %8256, %6463
  %8267 = fmul fast float %8266, %4636
  %8268 = fadd fast float %8257, %6466
  %8269 = fmul fast float %8268, %4636
  br label %8270

; <label>:8270                                    ; preds = %8168, %7957, %6390
  %8271 = phi float [ %6461, %6390 ], [ %6461, %7957 ], [ %8265, %8168 ]
  %8272 = phi float [ %6464, %6390 ], [ %6464, %7957 ], [ %8267, %8168 ]
  %8273 = phi float [ %6467, %6390 ], [ %6467, %7957 ], [ %8269, %8168 ]
  %8274 = phi float [ %6497, %6390 ], [ %6497, %7957 ], [ %8259, %8168 ]
  %8275 = phi float [ %6499, %6390 ], [ %6499, %7957 ], [ %8261, %8168 ]
  %8276 = phi float [ %6501, %6390 ], [ %6501, %7957 ], [ %8263, %8168 ]
  %8277 = fmul fast float %4636, %6436
  %8278 = fsub fast float -0.000000e+00, %8277
  %8279 = fmul fast float %4636, %6437
  %8280 = fsub fast float -0.000000e+00, %8279
  %8281 = fmul fast float %4636, %6438
  %8282 = fsub fast float -0.000000e+00, %8281
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 0
  %8285 = fmul fast float %8284, %6442
  %8286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8287 = extractvalue %dx.types.CBufRet.f32 %8286, 3
  %8288 = fsub fast float 1.000000e+00, %4643
  %8289 = call float @dx.op.unary.f32(i32 7, float %8288)  ; Saturate(value)
  %8290 = fadd fast float %8276, %4642
  %8291 = fmul fast float %8290, %4643
  %8292 = fmul fast float %8289, %8287
  %8293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8293, 3
  %8295 = fmul fast float %8274, %5590
  %8296 = fmul fast float %8275, %5591
  %8297 = fmul fast float %8276, %5592
  %8298 = fcmp fast ogt float %94, %208
  %8299 = and i1 %8298, %4711
  %8300 = or i1 %4790, %8299
  %8301 = icmp eq i32 %4710, 2
  %8302 = fcmp fast ole float %94, %208
  %8303 = and i1 %8302, %8301
  %8304 = or i1 %8303, %8300
  br i1 %8299, label %8305, label %8562

; <label>:8305                                    ; preds = %8270
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 2
  %8308 = extractvalue %dx.types.CBufRet.f32 %8306, 3
  %8309 = fmul fast float %8307, %107
  %8310 = fmul fast float %8308, %108
  %8311 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8312 = call float @dx.op.unary.f32(i32 7, float %8310)  ; Saturate(value)
  %8313 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8311, float %8312, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8314 = extractvalue %dx.types.ResRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.ResRet.f32 %8313, 1
  %8316 = extractvalue %dx.types.ResRet.f32 %8313, 2
  %8317 = extractvalue %dx.types.ResRet.f32 %8313, 3
  %8318 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8311, float %8312, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8319 = extractvalue %dx.types.ResRet.f32 %8318, 0
  %8320 = extractvalue %dx.types.ResRet.f32 %8318, 1
  %8321 = extractvalue %dx.types.ResRet.f32 %8318, 2
  %8322 = extractvalue %dx.types.ResRet.f32 %8318, 3
  %8323 = call float @dx.op.binary.f32(i32 35, float %8315, float %8316)  ; FMax(a,b)
  %8324 = call float @dx.op.binary.f32(i32 35, float %8314, float %8323)  ; FMax(a,b)
  %8325 = call float @dx.op.binary.f32(i32 35, float %8324, float %8317)  ; FMax(a,b)
  %8326 = call float @dx.op.binary.f32(i32 36, float %8320, float %8321)  ; FMin(a,b)
  %8327 = call float @dx.op.binary.f32(i32 36, float %8319, float %8326)  ; FMin(a,b)
  %8328 = call float @dx.op.binary.f32(i32 36, float %8327, float %8322)  ; FMin(a,b)
  %8329 = fmul fast float %8325, 2.550000e+02
  %8330 = fadd fast float %8329, 0x3F70101020000000
  %8331 = fptoui float %8330 to i32
  %8332 = fmul fast float %8328, 2.550000e+02
  %8333 = fadd fast float %8332, 0x3F70101020000000
  %8334 = fptoui float %8333 to i32
  %8335 = icmp ult i32 %8331, %8334
  br i1 %8335, label %8336, label %8504

; <label>:8336                                    ; preds = %8305
  %8337 = fcmp fast ogt float %93, 9.843750e-01
  %8338 = fadd fast float %94, -4.000000e+00
  %8339 = select i1 %8337, float -4.000000e+00, float %8338
  %8340 = call float @dx.op.binary.f32(i32 35, float %8339, float 0.000000e+00)  ; FMax(a,b)
  %8341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8342 = extractvalue %dx.types.CBufRet.f32 %8341, 0
  %8343 = fadd fast float %8342, %8340
  %8344 = extractvalue %dx.types.CBufRet.f32 %8341, 2
  %8345 = fmul fast float %8343, %8344
  %8346 = call float @dx.op.unary.f32(i32 23, float %8345)  ; Log(value)
  %8347 = extractvalue %dx.types.CBufRet.f32 %8341, 3
  %8348 = fmul fast float %8347, %8346
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 2
  %8351 = fmul fast float %8348, %8350
  %8352 = call float @dx.op.unary.f32(i32 7, float %8351)  ; Saturate(value)
  %8353 = uitofp i32 %8331 to float
  %8354 = uitofp i32 %8334 to float
  %8355 = fadd fast float %8353, 5.000000e-01
  %8356 = fadd fast float %8354, 5.000000e-01
  %8357 = fmul fast float %8350, %8355
  %8358 = fmul fast float %8350, %8356
  %8359 = fadd fast float %8357, 0x3F0FFB4800000000
  %8360 = fadd fast float %8358, 0xBF0FFB4800000000
  %8361 = call float @dx.op.binary.f32(i32 35, float %8352, float %8359)  ; FMax(a,b)
  %8362 = call float @dx.op.binary.f32(i32 36, float %8361, float %8360)  ; FMin(a,b)
  %8363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8364 = extractvalue %dx.types.CBufRet.f32 %8363, 1
  %8365 = extractvalue %dx.types.CBufRet.f32 %8363, 2
  %8366 = extractvalue %dx.types.CBufRet.f32 %8363, 0
  %8367 = fmul fast float %8364, %8362
  %8368 = fadd fast float %8366, %8367
  %8369 = fadd fast float %8366, %8365
  %8370 = fsub fast float %8364, %8365
  %8371 = fadd fast float %8370, %8366
  %8372 = call float @dx.op.binary.f32(i32 35, float %8368, float %8369)  ; FMax(a,b)
  %8373 = call float @dx.op.binary.f32(i32 36, float %8372, float %8371)  ; FMin(a,b)
  %8374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8311, float %8312, float %8373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8375 = extractvalue %dx.types.ResRet.f32 %8374, 0
  %8376 = extractvalue %dx.types.ResRet.f32 %8374, 1
  %8377 = extractvalue %dx.types.ResRet.f32 %8374, 2
  %8378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8379 = extractvalue %dx.types.CBufRet.i32 %8378, 0
  %8380 = extractvalue %dx.types.CBufRet.i32 %8378, 1
  %8381 = uitofp i32 %8379 to float
  %8382 = uitofp i32 %8380 to float
  %8383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.CBufRet.f32 %8383, 1
  %8386 = fmul fast float %8381, %8311
  %8387 = fmul fast float %8382, %8312
  %8388 = fadd fast float %8386, -5.000000e-01
  %8389 = fadd fast float %8387, -5.000000e-01
  %8390 = call float @dx.op.unary.f32(i32 22, float %8388)  ; Frc(value)
  %8391 = call float @dx.op.unary.f32(i32 22, float %8389)  ; Frc(value)
  %8392 = fmul fast float %8390, %8390
  %8393 = fmul fast float %8392, %8390
  %8394 = fsub fast float 3.000000e+00, %8390
  %8395 = fmul fast float %8392, %8394
  %8396 = fmul fast float %8390, 3.000000e+00
  %8397 = fmul fast float %8393, 3.000000e+00
  %8398 = fmul fast float %8392, 6.000000e+00
  %8399 = fsub fast float %8397, %8398
  %8400 = fadd fast float %8399, 4.000000e+00
  %8401 = fmul fast float %8400, 0x3FC5555560000000
  %8402 = fmul fast float %8393, -3.000000e+00
  %8403 = fadd fast float %8392, %8390
  %8404 = fmul fast float %8403, 3.000000e+00
  %8405 = fadd fast float %8402, 1.000000e+00
  %8406 = fadd fast float %8405, %8404
  %8407 = fmul fast float %8393, 0x3FC5555560000000
  %8408 = fmul fast float %8391, %8391
  %8409 = fmul fast float %8408, %8391
  %8410 = fsub fast float 3.000000e+00, %8391
  %8411 = fmul fast float %8408, %8410
  %8412 = fmul fast float %8391, 3.000000e+00
  %8413 = fmul fast float %8409, 3.000000e+00
  %8414 = fmul fast float %8408, 6.000000e+00
  %8415 = fsub fast float %8413, %8414
  %8416 = fadd fast float %8415, 4.000000e+00
  %8417 = fmul fast float %8416, 0x3FC5555560000000
  %8418 = fmul fast float %8409, -3.000000e+00
  %8419 = fadd fast float %8408, %8391
  %8420 = fmul fast float %8419, 3.000000e+00
  %8421 = fadd fast float %8418, 1.000000e+00
  %8422 = fadd fast float %8421, %8420
  %8423 = fmul fast float %8409, 0x3FC5555560000000
  %8424 = fadd fast float %8390, 1.000000e+00
  %8425 = fsub fast float 1.000000e+00, %8396
  %8426 = fadd fast float %8425, %8395
  %8427 = fadd fast float %8426, %8400
  %8428 = fmul fast float %8427, 0x3FC5555560000000
  %8429 = fdiv fast float %8401, %8428
  %8430 = fsub fast float %8424, %8429
  %8431 = fsub fast float 1.000000e+00, %8390
  %8432 = fadd fast float %8406, %8393
  %8433 = fmul fast float %8432, 0x3FC5555560000000
  %8434 = fdiv fast float %8407, %8433
  %8435 = fadd fast float %8431, %8434
  %8436 = fadd fast float %8391, 1.000000e+00
  %8437 = fsub fast float 1.000000e+00, %8412
  %8438 = fadd fast float %8437, %8411
  %8439 = fadd fast float %8438, %8416
  %8440 = fmul fast float %8439, 0x3FC5555560000000
  %8441 = fdiv fast float %8417, %8440
  %8442 = fsub fast float %8436, %8441
  %8443 = fsub fast float 1.000000e+00, %8391
  %8444 = fadd fast float %8422, %8409
  %8445 = fmul fast float %8444, 0x3FC5555560000000
  %8446 = fdiv fast float %8423, %8445
  %8447 = fadd fast float %8446, %8443
  %8448 = fmul fast float %8430, %8384
  %8449 = fsub fast float %8311, %8448
  %8450 = fmul fast float %8435, %8384
  %8451 = fadd fast float %8450, %8311
  %8452 = fmul fast float %8447, %8385
  %8453 = fadd fast float %8452, %8312
  %8454 = fmul fast float %8442, %8385
  %8455 = fsub fast float %8312, %8454
  %8456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8449, float %8455, float %8373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8457 = extractvalue %dx.types.ResRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.ResRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.ResRet.f32 %8456, 2
  %8460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8451, float %8455, float %8373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8461 = extractvalue %dx.types.ResRet.f32 %8460, 0
  %8462 = extractvalue %dx.types.ResRet.f32 %8460, 1
  %8463 = extractvalue %dx.types.ResRet.f32 %8460, 2
  %8464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8449, float %8453, float %8373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8465 = extractvalue %dx.types.ResRet.f32 %8464, 0
  %8466 = extractvalue %dx.types.ResRet.f32 %8464, 1
  %8467 = extractvalue %dx.types.ResRet.f32 %8464, 2
  %8468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8451, float %8453, float %8373, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8469 = extractvalue %dx.types.ResRet.f32 %8468, 0
  %8470 = extractvalue %dx.types.ResRet.f32 %8468, 1
  %8471 = extractvalue %dx.types.ResRet.f32 %8468, 2
  %8472 = fsub fast float %8465, %8457
  %8473 = fsub fast float %8466, %8458
  %8474 = fsub fast float %8467, %8459
  %8475 = fmul fast float %8472, %8445
  %8476 = fmul fast float %8473, %8445
  %8477 = fmul fast float %8474, %8445
  %8478 = fadd fast float %8475, %8457
  %8479 = fadd fast float %8476, %8458
  %8480 = fadd fast float %8477, %8459
  %8481 = fsub fast float %8469, %8461
  %8482 = fsub fast float %8470, %8462
  %8483 = fsub fast float %8471, %8463
  %8484 = fmul fast float %8481, %8445
  %8485 = fmul fast float %8482, %8445
  %8486 = fmul fast float %8483, %8445
  %8487 = fsub fast float %8461, %8478
  %8488 = fadd fast float %8487, %8484
  %8489 = fsub fast float %8462, %8479
  %8490 = fadd fast float %8489, %8485
  %8491 = fsub fast float %8463, %8480
  %8492 = fadd fast float %8491, %8486
  %8493 = fmul fast float %8488, %8433
  %8494 = fmul fast float %8490, %8433
  %8495 = fmul fast float %8492, %8433
  %8496 = fadd fast float %8493, %8478
  %8497 = fadd fast float %8494, %8479
  %8498 = fadd fast float %8495, %8480
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 1
  %8501 = fmul fast float %8496, %8500
  %8502 = fmul fast float %8497, %8500
  %8503 = fmul fast float %8498, %8500
  br label %8504

; <label>:8504                                    ; preds = %8336, %8305
  %8505 = phi float [ %8375, %8336 ], [ 1.000000e+00, %8305 ]
  %8506 = phi float [ %8376, %8336 ], [ 1.000000e+00, %8305 ]
  %8507 = phi float [ %8377, %8336 ], [ 1.000000e+00, %8305 ]
  %8508 = phi float [ %8501, %8336 ], [ 0.000000e+00, %8305 ]
  %8509 = phi float [ %8502, %8336 ], [ 0.000000e+00, %8305 ]
  %8510 = phi float [ %8503, %8336 ], [ 0.000000e+00, %8305 ]
  %8511 = fmul fast float %8508, %8278
  %8512 = fmul fast float %8509, %8280
  %8513 = fmul fast float %8510, %8282
  %8514 = call float @dx.op.dot3.f32(i32 55, float %8505, float %8506, float %8507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8515 = call float @dx.op.dot3.f32(i32 55, float %8511, float %8512, float %8513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8516 = select i1 %247, float %8514, float %8505
  %8517 = select i1 %247, float %8514, float %8506
  %8518 = select i1 %247, float 1.000000e+00, float %8507
  %8519 = select i1 %247, float %8515, float %8511
  %8520 = select i1 %247, float 0.000000e+00, float %8512
  %8521 = select i1 %247, float 0.000000e+00, float %8513
  %8522 = fmul fast float %8516, %8295
  %8523 = fmul fast float %8517, %8296
  %8524 = fmul fast float %8518, %8297
  %8525 = fadd fast float %8522, %8519
  %8526 = fadd fast float %8523, %8520
  %8527 = fadd fast float %8521, %8524
  %8528 = fmul fast float %8516, %8271
  %8529 = fmul fast float %8517, %8272
  %8530 = fmul fast float %8518, %8273
  %8531 = fmul fast float %135, %8307
  %8532 = fmul fast float %137, %8308
  %8533 = fsub fast float 1.000000e+00, %8531
  %8534 = fsub fast float 1.000000e+00, %8532
  %8535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8536 = extractvalue %dx.types.CBufRet.f32 %8535, 0
  %8537 = extractvalue %dx.types.CBufRet.f32 %8535, 1
  %8538 = extractvalue %dx.types.CBufRet.f32 %8535, 2
  %8539 = fmul fast float %8533, %8536
  %8540 = fmul fast float %8533, %8537
  %8541 = fmul fast float %8533, %8538
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 0
  %8544 = extractvalue %dx.types.CBufRet.f32 %8542, 1
  %8545 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8546 = fmul fast float %8534, %8543
  %8547 = fmul fast float %8534, %8544
  %8548 = fmul fast float %8534, %8545
  %8549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8550 = extractvalue %dx.types.CBufRet.f32 %8549, 0
  %8551 = extractvalue %dx.types.CBufRet.f32 %8549, 1
  %8552 = extractvalue %dx.types.CBufRet.f32 %8549, 2
  %8553 = fadd fast float %8546, %8550
  %8554 = fadd fast float %8553, %8539
  %8555 = fadd fast float %8547, %8551
  %8556 = fadd fast float %8555, %8540
  %8557 = fadd fast float %8548, %8552
  %8558 = fadd fast float %8557, %8541
  %8559 = fmul fast float %8554, %208
  %8560 = fmul fast float %8556, %208
  %8561 = fmul fast float %8558, %208
  br label %8562

; <label>:8562                                    ; preds = %8504, %8270
  %8563 = phi float [ %8559, %8504 ], [ %186, %8270 ]
  %8564 = phi float [ %8560, %8504 ], [ %187, %8270 ]
  %8565 = phi float [ %8561, %8504 ], [ %188, %8270 ]
  %8566 = phi float [ %208, %8504 ], [ %94, %8270 ]
  %8567 = phi float [ %8525, %8504 ], [ %8295, %8270 ]
  %8568 = phi float [ %8526, %8504 ], [ %8296, %8270 ]
  %8569 = phi float [ %8527, %8504 ], [ %8297, %8270 ]
  %8570 = phi float [ %8528, %8504 ], [ %8271, %8270 ]
  %8571 = phi float [ %8529, %8504 ], [ %8272, %8270 ]
  %8572 = phi float [ %8530, %8504 ], [ %8273, %8270 ]
  %8573 = phi float [ %8505, %8504 ], [ 1.000000e+00, %8270 ]
  br i1 %8304, label %9728, label %8574

; <label>:8574                                    ; preds = %8562
  %8575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8576 = extractvalue %dx.types.CBufRet.f32 %8575, 0
  %8577 = extractvalue %dx.types.CBufRet.f32 %8575, 1
  %8578 = extractvalue %dx.types.CBufRet.f32 %8575, 2
  %8579 = extractvalue %dx.types.CBufRet.f32 %8575, 3
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8582 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8583 = extractvalue %dx.types.CBufRet.f32 %8580, 2
  %8584 = extractvalue %dx.types.CBufRet.f32 %8580, 3
  %8585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8586 = extractvalue %dx.types.CBufRet.f32 %8585, 0
  %8587 = extractvalue %dx.types.CBufRet.f32 %8585, 1
  %8588 = extractvalue %dx.types.CBufRet.f32 %8585, 2
  %8589 = extractvalue %dx.types.CBufRet.f32 %8585, 3
  %8590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8591 = extractvalue %dx.types.CBufRet.f32 %8590, 0
  %8592 = extractvalue %dx.types.CBufRet.f32 %8590, 1
  %8593 = extractvalue %dx.types.CBufRet.f32 %8590, 2
  %8594 = extractvalue %dx.types.CBufRet.f32 %8590, 3
  %8595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8596 = extractvalue %dx.types.CBufRet.f32 %8595, 3
  %8597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8598 = extractvalue %dx.types.CBufRet.f32 %8597, 3
  %8599 = extractvalue %dx.types.CBufRet.f32 %8597, 0
  %8600 = extractvalue %dx.types.CBufRet.f32 %8597, 1
  %8601 = extractvalue %dx.types.CBufRet.f32 %8597, 2
  %8602 = fcmp fast olt float %8601, -5.000000e-01
  %8603 = call float @dx.op.dot3.f32(i32 55, float %8563, float %8564, float %8565, float %8563, float %8564, float %8565)  ; Dot3(ax,ay,az,bx,by,bz)
  %8604 = call float @dx.op.unary.f32(i32 25, float %8603)  ; Rsqrt(value)
  %8605 = fmul fast float %8604, %8603
  %8606 = fmul fast float %8604, %8563
  %8607 = fmul fast float %8604, %8564
  %8608 = fmul fast float %8604, %8565
  %8609 = fadd fast float %8605, %8579
  %8610 = call float @dx.op.dot3.f32(i32 55, float %8606, float %8607, float %8608, float %8576, float %8577, float %8578)  ; Dot3(ax,ay,az,bx,by,bz)
  %8611 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8612 = extractvalue %dx.types.CBufRet.i32 %8611, 1
  %8613 = and i32 %8612, 1
  %8614 = icmp ne i32 %8613, 0
  %8615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8615, 2
  %8617 = fcmp fast ogt float %8616, 0.000000e+00
  %8618 = and i1 %8614, %8617
  br i1 %8618, label %8619, label %9025, !dx.controlflow.hints !123

; <label>:8619                                    ; preds = %8574
  %8620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8621 = extractvalue %dx.types.CBufRet.f32 %8620, 3
  %8622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8623 = extractvalue %dx.types.CBufRet.f32 %8622, 2
  %8624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8625 = extractvalue %dx.types.CBufRet.f32 %8624, 2
  %8626 = fsub fast float %8623, %8625
  %8627 = and i32 %8612, 2
  %8628 = extractvalue %dx.types.CBufRet.i32 %8611, 0
  %8629 = call i32 @dx.op.binary.i32(i32 40, i32 %8628, i32 3)  ; UMin(a,b)
  %8630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8631 = extractvalue %dx.types.CBufRet.f32 %8630, 0
  %8632 = extractvalue %dx.types.CBufRet.f32 %8630, 1
  %8633 = extractvalue %dx.types.CBufRet.f32 %8624, 0
  %8634 = extractvalue %dx.types.CBufRet.f32 %8624, 1
  %8635 = fsub fast float %8631, %8633
  %8636 = fsub fast float %8632, %8634
  %8637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8637, 0
  %8639 = fcmp fast ogt float %8638, 0.000000e+00
  %8640 = fsub fast float -0.000000e+00, %8635
  %8641 = fsub fast float -0.000000e+00, %8636
  %8642 = call float @dx.op.dot2.f32(i32 54, float %8606, float %8607, float %8606, float %8607)  ; Dot2(ax,ay,bx,by)
  %8643 = call float @dx.op.dot2.f32(i32 54, float %8606, float %8607, float %8640, float %8641)  ; Dot2(ax,ay,bx,by)
  %8644 = fmul fast float %8643, 2.000000e+00
  %8645 = call float @dx.op.dot2.f32(i32 54, float %8640, float %8641, float %8640, float %8641)  ; Dot2(ax,ay,bx,by)
  %8646 = fmul fast float %8638, %8638
  %8647 = fsub fast float %8645, %8646
  %8648 = fmul fast float %8644, %8644
  %8649 = fmul fast float %8642, 4.000000e+00
  %8650 = fmul fast float %8649, %8647
  %8651 = fsub fast float %8648, %8650
  %8652 = fcmp fast ogt float %8651, 0.000000e+00
  br i1 %8652, label %8653, label %8668

; <label>:8653                                    ; preds = %8619
  %8654 = fcmp fast ogt float %8644, 0.000000e+00
  %8655 = call float @dx.op.unary.f32(i32 24, float %8651)  ; Sqrt(value)
  %8656 = fsub fast float -0.000000e+00, %8655
  %8657 = select i1 %8654, float %8655, float %8656
  %8658 = fadd fast float %8657, %8644
  %8659 = fmul float %8658, -5.000000e-01
  %8660 = fdiv fast float %8659, %8642
  %8661 = call float @dx.op.binary.f32(i32 35, float %8660, float 0.000000e+00)  ; FMax(a,b)
  %8662 = call float @dx.op.binary.f32(i32 36, float %8605, float %8661)  ; FMin(a,b)
  %8663 = fdiv fast float %8647, %8659
  %8664 = call float @dx.op.binary.f32(i32 35, float %8663, float 0.000000e+00)  ; FMax(a,b)
  %8665 = call float @dx.op.binary.f32(i32 36, float %8605, float %8664)  ; FMin(a,b)
  %8666 = call float @dx.op.binary.f32(i32 36, float %8662, float %8665)  ; FMin(a,b)
  %8667 = call float @dx.op.binary.f32(i32 35, float %8662, float %8665)  ; FMax(a,b)
  br label %8668

; <label>:8668                                    ; preds = %8653, %8619
  %8669 = phi float [ %8667, %8653 ], [ -1.000000e+00, %8619 ]
  %8670 = phi float [ %8666, %8653 ], [ -1.000000e+00, %8619 ]
  %8671 = phi i1 [ true, %8653 ], [ false, %8619 ]
  %8672 = and i1 %8639, %8671
  br i1 %8672, label %8673, label %8675

; <label>:8673                                    ; preds = %8668
  %8674 = fcmp fast oeq float %8670, %8669
  br i1 %8674, label %8978, label %8676

; <label>:8675                                    ; preds = %8668
  br i1 %8639, label %8978, label %8676

; <label>:8676                                    ; preds = %8675, %8673
  %8677 = phi float [ %8605, %8675 ], [ %8669, %8673 ]
  %8678 = phi float [ 0.000000e+00, %8675 ], [ %8670, %8673 ]
  %8679 = icmp ne i32 %8627, 0
  %8680 = fmul fast float %8677, %8608
  %8681 = fadd fast float %8680, %8621
  %8682 = fmul fast float %8681, %8677
  %8683 = select i1 %8679, float 0.000000e+00, float %8682
  %8684 = fcmp fast oeq float %8608, 0.000000e+00
  %8685 = fdiv fast float %8626, %8608
  %8686 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8685)  ; FMax(a,b)
  %8687 = select i1 %8684, float %8677, float %8686
  %8688 = call float @dx.op.binary.f32(i32 36, float %8677, float %8687)  ; FMin(a,b)
  %8689 = fcmp fast ogt float %8608, 0.000000e+00
  %8690 = fcmp fast olt float %8626, 0.000000e+00
  br i1 %8689, label %8691, label %8748

; <label>:8691                                    ; preds = %8676
  %8692 = icmp eq i32 %8627, 0
  br i1 %8690, label %8693, label %8737

; <label>:8693                                    ; preds = %8691
  %8694 = select i1 %8692, float %8677, float 0.000000e+00
  %8695 = fsub fast float -0.000000e+00, %8694
  %8696 = call float @dx.op.unary.f32(i32 6, float %8695)  ; FAbs(value)
  %8697 = fmul fast float %8694, %8608
  %8698 = fadd fast float %8697, %8621
  %8699 = fmul fast float %8696, %8698
  %8700 = fsub fast float %8683, %8699
  %8701 = fsub fast float %8677, %8696
  %8702 = select i1 %8692, float %8701, float 0.000000e+00
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.CBufRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.CBufRet.f32 %8703, 2
  %8707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8708 = extractvalue %dx.types.CBufRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.CBufRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.CBufRet.f32 %8707, 2
  %8711 = extractvalue %dx.types.CBufRet.f32 %8707, 3
  %8712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8713 = extractvalue %dx.types.CBufRet.f32 %8712, 3
  %8714 = call float @dx.op.binary.f32(i32 36, float %8700, float %8713)  ; FMin(a,b)
  %8715 = fmul fast float %8711, %8702
  %8716 = call float @dx.op.unary.f32(i32 7, float %8715)  ; Saturate(value)
  %8717 = fsub fast float %8708, %8704
  %8718 = fsub fast float %8709, %8705
  %8719 = fsub fast float %8710, %8706
  %8720 = fmul fast float %8716, %8717
  %8721 = fmul fast float %8716, %8718
  %8722 = fmul fast float %8716, %8719
  %8723 = fadd fast float %8720, %8704
  %8724 = fadd fast float %8721, %8705
  %8725 = fadd fast float %8722, %8706
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8729 = fadd fast float %8728, %8727
  %8730 = call float @dx.op.unary.f32(i32 7, float %8729)  ; Saturate(value)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %8732 = extractvalue %dx.types.CBufRet.f32 %8726, 3
  %8733 = fadd fast float %8732, %8731
  %8734 = call float @dx.op.unary.f32(i32 7, float %8733)  ; Saturate(value)
  %8735 = fmul fast float %8730, %8714
  %8736 = fmul fast float %8735, %8734
  br label %8978

; <label>:8737                                    ; preds = %8691
  br i1 %8692, label %8738, label %8759

; <label>:8738                                    ; preds = %8737
  %8739 = call float @dx.op.binary.f32(i32 36, float %8688, float %8678)  ; FMin(a,b)
  %8740 = fsub fast float %8688, %8739
  %8741 = fsub fast float %8740, %8677
  %8742 = call float @dx.op.unary.f32(i32 6, float %8741)  ; FAbs(value)
  %8743 = fadd fast float %8740, %8677
  %8744 = fmul fast float %8743, %8608
  %8745 = fadd fast float %8744, %8621
  %8746 = fmul fast float %8745, %8742
  %8747 = fsub fast float %8683, %8746
  br label %8759

; <label>:8748                                    ; preds = %8676
  br i1 %8690, label %8749, label %8759

; <label>:8749                                    ; preds = %8748
  %8750 = call float @dx.op.binary.f32(i32 35, float %8678, float %8688)  ; FMax(a,b)
  %8751 = icmp eq i32 %8627, 0
  %8752 = select i1 %8751, float %8688, float 0.000000e+00
  %8753 = fsub fast float -0.000000e+00, %8752
  %8754 = call float @dx.op.unary.f32(i32 6, float %8753)  ; FAbs(value)
  %8755 = fmul fast float %8752, %8608
  %8756 = fadd fast float %8755, %8621
  %8757 = fmul fast float %8754, %8756
  %8758 = fsub fast float %8683, %8757
  br label %8759

; <label>:8759                                    ; preds = %8749, %8748, %8738, %8737
  %8760 = phi float [ %8678, %8737 ], [ %8678, %8738 ], [ %8750, %8749 ], [ %8678, %8748 ]
  %8761 = phi float [ 0.000000e+00, %8737 ], [ %8742, %8738 ], [ %8754, %8749 ], [ 0.000000e+00, %8748 ]
  %8762 = phi float [ %8683, %8737 ], [ %8747, %8738 ], [ %8758, %8749 ], [ %8683, %8748 ]
  %8763 = phi float [ %8688, %8737 ], [ %8688, %8738 ], [ %8677, %8749 ], [ %8677, %8748 ]
  %8764 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8764, align 4, !tbaa !112, !noalias !124
  %8765 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8765, align 4, !tbaa !112, !noalias !124
  %8766 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8766, align 4, !tbaa !112, !noalias !124
  %8767 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %8767, align 4, !tbaa !112, !noalias !124
  %8768 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %8768, align 4, !tbaa !112, !noalias !124
  %8769 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %8769, align 4, !tbaa !112, !noalias !124
  %8770 = icmp sgt i32 %8629, 0
  br i1 %8770, label %8771, label %8832

; <label>:8771                                    ; preds = %8759
  br label %8772

; <label>:8772                                    ; preds = %8821, %8771
  %8773 = phi i32 [ %8822, %8821 ], [ 0, %8771 ]
  %8774 = phi i32 [ %8823, %8821 ], [ 0, %8771 ]
  %8775 = add nuw i32 %8774, 171
  %8776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8775)  ; CBufferLoadLegacy(handle,regIndex)
  %8777 = extractvalue %dx.types.CBufRet.f32 %8776, 0
  %8778 = extractvalue %dx.types.CBufRet.f32 %8776, 1
  %8779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8780 = extractvalue %dx.types.CBufRet.f32 %8779, 0
  %8781 = extractvalue %dx.types.CBufRet.f32 %8779, 1
  %8782 = fsub fast float %8777, %8780
  %8783 = fsub fast float %8778, %8781
  %8784 = extractvalue %dx.types.CBufRet.f32 %8776, 2
  %8785 = fsub fast float -0.000000e+00, %8782
  %8786 = fsub fast float -0.000000e+00, %8783
  %8787 = call float @dx.op.dot2.f32(i32 54, float %8606, float %8607, float %8785, float %8786)  ; Dot2(ax,ay,bx,by)
  %8788 = fmul fast float %8787, 2.000000e+00
  %8789 = call float @dx.op.dot2.f32(i32 54, float %8785, float %8786, float %8785, float %8786)  ; Dot2(ax,ay,bx,by)
  %8790 = fmul fast float %8784, %8784
  %8791 = fsub fast float %8789, %8790
  %8792 = fmul fast float %8788, %8788
  %8793 = fmul fast float %8649, %8791
  %8794 = fsub fast float %8792, %8793
  %8795 = fcmp fast ogt float %8794, 0.000000e+00
  br i1 %8795, label %8796, label %8811

; <label>:8796                                    ; preds = %8772
  %8797 = fcmp fast ogt float %8788, 0.000000e+00
  %8798 = call float @dx.op.unary.f32(i32 24, float %8794)  ; Sqrt(value)
  %8799 = fsub fast float -0.000000e+00, %8798
  %8800 = select i1 %8797, float %8798, float %8799
  %8801 = fadd fast float %8800, %8788
  %8802 = fmul float %8801, -5.000000e-01
  %8803 = fdiv fast float %8802, %8642
  %8804 = call float @dx.op.binary.f32(i32 35, float %8803, float 0.000000e+00)  ; FMax(a,b)
  %8805 = call float @dx.op.binary.f32(i32 36, float %8677, float %8804)  ; FMin(a,b)
  %8806 = fdiv fast float %8791, %8802
  %8807 = call float @dx.op.binary.f32(i32 35, float %8806, float 0.000000e+00)  ; FMax(a,b)
  %8808 = call float @dx.op.binary.f32(i32 36, float %8677, float %8807)  ; FMin(a,b)
  %8809 = call float @dx.op.binary.f32(i32 36, float %8805, float %8808)  ; FMin(a,b)
  %8810 = call float @dx.op.binary.f32(i32 35, float %8805, float %8808)  ; FMax(a,b)
  br label %8811

; <label>:8811                                    ; preds = %8796, %8772
  %8812 = phi float [ %8810, %8796 ], [ -1.000000e+00, %8772 ]
  %8813 = phi float [ %8809, %8796 ], [ -1.000000e+00, %8772 ]
  %8814 = phi i1 [ true, %8796 ], [ false, %8772 ]
  br i1 %8814, label %8815, label %8821

; <label>:8815                                    ; preds = %8811
  %8816 = call float @dx.op.binary.f32(i32 35, float %8760, float %8813)  ; FMax(a,b)
  %8817 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8774
  store float %8816, float* %8817, align 4, !tbaa !112, !noalias !124
  %8818 = call float @dx.op.binary.f32(i32 35, float %8760, float %8812)  ; FMax(a,b)
  %8819 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8774
  store float %8818, float* %8819, align 4, !tbaa !112, !noalias !124
  %8820 = add nsw i32 %8773, 1
  br label %8821

; <label>:8821                                    ; preds = %8815, %8811
  %8822 = phi i32 [ %8820, %8815 ], [ %8773, %8811 ]
  %8823 = add nuw nsw i32 %8774, 1
  %8824 = icmp eq i32 %8823, %8629
  br i1 %8824, label %8825, label %8772

; <label>:8825                                    ; preds = %8821
  %8826 = load float, float* %8766, align 4, !tbaa !112, !alias.scope !140, !noalias !143
  %8827 = load float, float* %8765, align 4, !tbaa !112, !alias.scope !146, !noalias !147
  %8828 = load float, float* %8764, align 4, !tbaa !112, !alias.scope !148, !noalias !149
  %8829 = load float, float* %8769, align 4, !tbaa !112, !alias.scope !150, !noalias !153
  %8830 = load float, float* %8768, align 4, !tbaa !112, !alias.scope !156, !noalias !157
  %8831 = load float, float* %8767, align 4, !tbaa !112, !alias.scope !158, !noalias !159
  br label %8832

; <label>:8832                                    ; preds = %8825, %8759
  %8833 = phi float [ -1.000000e+00, %8759 ], [ %8831, %8825 ]
  %8834 = phi float [ -1.000000e+00, %8759 ], [ %8830, %8825 ]
  %8835 = phi float [ -1.000000e+00, %8759 ], [ %8829, %8825 ]
  %8836 = phi float [ -1.000000e+00, %8759 ], [ %8828, %8825 ]
  %8837 = phi float [ -1.000000e+00, %8759 ], [ %8827, %8825 ]
  %8838 = phi float [ -1.000000e+00, %8759 ], [ %8826, %8825 ]
  %8839 = phi i32 [ 0, %8759 ], [ %8822, %8825 ]
  %8840 = call float @dx.op.binary.f32(i32 36, float %8837, float %8838)  ; FMin(a,b)
  %8841 = call float @dx.op.binary.f32(i32 36, float %8836, float %8840)  ; FMin(a,b)
  %8842 = call float @dx.op.binary.f32(i32 35, float %8836, float %8837)  ; FMax(a,b)
  %8843 = call float @dx.op.binary.f32(i32 36, float %8842, float %8838)  ; FMin(a,b)
  %8844 = call float @dx.op.binary.f32(i32 36, float %8836, float %8837)  ; FMin(a,b)
  %8845 = call float @dx.op.binary.f32(i32 35, float %8844, float %8843)  ; FMax(a,b)
  %8846 = call float @dx.op.binary.f32(i32 35, float %8837, float %8838)  ; FMax(a,b)
  %8847 = call float @dx.op.binary.f32(i32 35, float %8836, float %8846)  ; FMax(a,b)
  store float %8841, float* %8764, align 4, !tbaa !112, !alias.scope !148, !noalias !149
  store float %8845, float* %8765, align 4, !tbaa !112, !alias.scope !146, !noalias !147
  store float %8847, float* %8766, align 4, !tbaa !112, !alias.scope !140, !noalias !143
  %8848 = call float @dx.op.binary.f32(i32 36, float %8834, float %8835)  ; FMin(a,b)
  %8849 = call float @dx.op.binary.f32(i32 36, float %8833, float %8848)  ; FMin(a,b)
  %8850 = call float @dx.op.binary.f32(i32 35, float %8833, float %8834)  ; FMax(a,b)
  %8851 = call float @dx.op.binary.f32(i32 36, float %8850, float %8835)  ; FMin(a,b)
  %8852 = call float @dx.op.binary.f32(i32 36, float %8833, float %8834)  ; FMin(a,b)
  %8853 = call float @dx.op.binary.f32(i32 35, float %8852, float %8851)  ; FMax(a,b)
  %8854 = call float @dx.op.binary.f32(i32 35, float %8834, float %8835)  ; FMax(a,b)
  %8855 = call float @dx.op.binary.f32(i32 35, float %8833, float %8854)  ; FMax(a,b)
  store float %8849, float* %8767, align 4, !tbaa !112, !alias.scope !158, !noalias !159
  store float %8853, float* %8768, align 4, !tbaa !112, !alias.scope !156, !noalias !157
  store float %8855, float* %8769, align 4, !tbaa !112, !alias.scope !150, !noalias !153
  %8856 = sub nsw i32 3, %8839
  %8857 = icmp sgt i32 %8856, 2
  br i1 %8857, label %8858, label %8896

; <label>:8858                                    ; preds = %8832
  %8859 = icmp eq i32 %8627, 0
  %8860 = fsub fast float %8677, %8761
  %8861 = select i1 %8859, float %8860, float %8761
  %8862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8863 = extractvalue %dx.types.CBufRet.f32 %8862, 0
  %8864 = extractvalue %dx.types.CBufRet.f32 %8862, 1
  %8865 = extractvalue %dx.types.CBufRet.f32 %8862, 2
  %8866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8867 = extractvalue %dx.types.CBufRet.f32 %8866, 0
  %8868 = extractvalue %dx.types.CBufRet.f32 %8866, 1
  %8869 = extractvalue %dx.types.CBufRet.f32 %8866, 2
  %8870 = extractvalue %dx.types.CBufRet.f32 %8866, 3
  %8871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8872 = extractvalue %dx.types.CBufRet.f32 %8871, 3
  %8873 = call float @dx.op.binary.f32(i32 36, float %8762, float %8872)  ; FMin(a,b)
  %8874 = fmul fast float %8870, %8861
  %8875 = call float @dx.op.unary.f32(i32 7, float %8874)  ; Saturate(value)
  %8876 = fsub fast float %8867, %8863
  %8877 = fsub fast float %8868, %8864
  %8878 = fsub fast float %8869, %8865
  %8879 = fmul fast float %8875, %8876
  %8880 = fmul fast float %8875, %8877
  %8881 = fmul fast float %8875, %8878
  %8882 = fadd fast float %8879, %8863
  %8883 = fadd fast float %8880, %8864
  %8884 = fadd fast float %8881, %8865
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 0
  %8887 = extractvalue %dx.types.CBufRet.f32 %8885, 1
  %8888 = fadd fast float %8887, %8886
  %8889 = call float @dx.op.unary.f32(i32 7, float %8888)  ; Saturate(value)
  %8890 = extractvalue %dx.types.CBufRet.f32 %8885, 2
  %8891 = extractvalue %dx.types.CBufRet.f32 %8885, 3
  %8892 = fadd fast float %8891, %8890
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  %8894 = fmul fast float %8889, %8873
  %8895 = fmul fast float %8894, %8893
  br label %8978

; <label>:8896                                    ; preds = %8832
  %8897 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8856
  %8898 = load float, float* %8897, align 4, !tbaa !112, !noalias !124
  %8899 = fcmp fast olt float %8898, %8763
  %8900 = icmp sgt i32 %8839, 0
  %8901 = and i1 %8900, %8899
  br i1 %8901, label %8902, label %8939

; <label>:8902                                    ; preds = %8896
  br label %8903

; <label>:8903                                    ; preds = %8932, %8902
  %8904 = phi float [ %8933, %8932 ], [ %8761, %8902 ]
  %8905 = phi float [ %8934, %8932 ], [ %8762, %8902 ]
  %8906 = phi float [ %8914, %8932 ], [ %8898, %8902 ]
  %8907 = phi i32 [ %8911, %8932 ], [ %8856, %8902 ]
  %8908 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8907
  %8909 = load float, float* %8908, align 4, !tbaa !112, !noalias !124
  %8910 = icmp slt i32 %8907, 2
  %8911 = add nsw i32 %8907, 1
  %8912 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8911
  %8913 = load float, float* %8912, align 4, !tbaa !112, !noalias !124
  %8914 = select i1 %8910, float %8913, float %8677
  %8915 = call float @dx.op.binary.f32(i32 36, float %8914, float %8909)  ; FMin(a,b)
  %8916 = call float @dx.op.binary.f32(i32 36, float %8763, float %8915)  ; FMin(a,b)
  %8917 = icmp eq i32 %8627, 0
  %8918 = fadd fast float %8916, %8906
  %8919 = fmul fast float %8918, %8608
  %8920 = fadd fast float %8919, %8621
  br i1 %8917, label %8926, label %8921

; <label>:8921                                    ; preds = %8903
  %8922 = fsub fast float %8916, %8906
  %8923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8922)  ; FMax(a,b)
  %8924 = fmul fast float %8923, %8920
  %8925 = fadd fast float %8924, %8905
  br label %8932

; <label>:8926                                    ; preds = %8903
  %8927 = fsub fast float %8906, %8916
  %8928 = call float @dx.op.unary.f32(i32 6, float %8927)  ; FAbs(value)
  %8929 = fadd fast float %8928, %8904
  %8930 = fmul fast float %8928, %8920
  %8931 = fsub fast float %8905, %8930
  br label %8932

; <label>:8932                                    ; preds = %8926, %8921
  %8933 = phi float [ %8923, %8921 ], [ %8929, %8926 ]
  %8934 = phi float [ %8925, %8921 ], [ %8931, %8926 ]
  %8935 = fcmp fast olt float %8914, %8763
  %8936 = icmp slt i32 %8911, 3
  %8937 = and i1 %8936, %8935
  br i1 %8937, label %8903, label %8938

; <label>:8938                                    ; preds = %8932
  br label %8939

; <label>:8939                                    ; preds = %8938, %8896
  %8940 = phi float [ %8761, %8896 ], [ %8933, %8938 ]
  %8941 = phi float [ %8762, %8896 ], [ %8934, %8938 ]
  %8942 = fsub fast float %8677, %8940
  %8943 = select i1 %8679, float %8940, float %8942
  %8944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8945 = extractvalue %dx.types.CBufRet.f32 %8944, 0
  %8946 = extractvalue %dx.types.CBufRet.f32 %8944, 1
  %8947 = extractvalue %dx.types.CBufRet.f32 %8944, 2
  %8948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8949 = extractvalue %dx.types.CBufRet.f32 %8948, 0
  %8950 = extractvalue %dx.types.CBufRet.f32 %8948, 1
  %8951 = extractvalue %dx.types.CBufRet.f32 %8948, 2
  %8952 = extractvalue %dx.types.CBufRet.f32 %8948, 3
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 3
  %8955 = call float @dx.op.binary.f32(i32 36, float %8941, float %8954)  ; FMin(a,b)
  %8956 = fmul fast float %8952, %8943
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = fsub fast float %8949, %8945
  %8959 = fsub fast float %8950, %8946
  %8960 = fsub fast float %8951, %8947
  %8961 = fmul fast float %8957, %8958
  %8962 = fmul fast float %8957, %8959
  %8963 = fmul fast float %8957, %8960
  %8964 = fadd fast float %8961, %8945
  %8965 = fadd fast float %8962, %8946
  %8966 = fadd fast float %8963, %8947
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 0
  %8969 = extractvalue %dx.types.CBufRet.f32 %8967, 1
  %8970 = fadd fast float %8969, %8968
  %8971 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8967, 2
  %8973 = extractvalue %dx.types.CBufRet.f32 %8967, 3
  %8974 = fadd fast float %8973, %8972
  %8975 = call float @dx.op.unary.f32(i32 7, float %8974)  ; Saturate(value)
  %8976 = fmul fast float %8971, %8955
  %8977 = fmul fast float %8976, %8975
  br label %8978

; <label>:8978                                    ; preds = %8939, %8858, %8693, %8675, %8673
  %8979 = phi float [ %8702, %8693 ], [ %8861, %8858 ], [ %8943, %8939 ], [ 0.000000e+00, %8673 ], [ 0.000000e+00, %8675 ]
  %8980 = phi float [ %8736, %8693 ], [ %8895, %8858 ], [ %8977, %8939 ], [ 0.000000e+00, %8673 ], [ 0.000000e+00, %8675 ]
  %8981 = phi float [ %8723, %8693 ], [ %8882, %8858 ], [ %8964, %8939 ], [ 0.000000e+00, %8673 ], [ 0.000000e+00, %8675 ]
  %8982 = phi float [ %8724, %8693 ], [ %8883, %8858 ], [ %8965, %8939 ], [ 0.000000e+00, %8673 ], [ 0.000000e+00, %8675 ]
  %8983 = phi float [ %8725, %8693 ], [ %8884, %8858 ], [ %8966, %8939 ], [ 0.000000e+00, %8673 ], [ 0.000000e+00, %8675 ]
  %8984 = fmul fast float %8616, %8980
  %8985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.f32 %8985, 2
  %8987 = fsub fast float %8623, %8986
  %8988 = fcmp fast olt float %8984, -2.000000e+01
  %8989 = call float @dx.op.unary.f32(i32 21, float %8984)  ; Exp(value)
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 2
  %8992 = extractvalue %dx.types.CBufRet.f32 %8990, 3
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 2
  %8995 = fmul fast float %8992, %8987
  %8996 = call float @dx.op.unary.f32(i32 7, float %8995)  ; Saturate(value)
  %8997 = fsub fast float 1.000000e+00, %8996
  %8998 = fmul fast float %8608, 5.000000e-01
  %8999 = fadd fast float %8998, 5.000000e-01
  %9000 = call float @dx.op.unary.f32(i32 7, float %8999)  ; Saturate(value)
  %9001 = fsub fast float 1.000000e+00, %9000
  %9002 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8997)  ; FMax(a,b)
  %9003 = fdiv fast float %9001, %9002
  %9004 = fsub fast float %8987, %8565
  %9005 = call float @dx.op.unary.f32(i32 6, float %9004)  ; FAbs(value)
  %9006 = fmul fast float %9005, %8991
  %9007 = call float @dx.op.unary.f32(i32 7, float %9003)  ; Saturate(value)
  %9008 = fsub fast float 1.000000e+00, %9006
  %9009 = fmul fast float %9008, %9007
  %9010 = fadd fast float %9009, %9006
  %9011 = fmul fast float %8994, %8987
  %9012 = call float @dx.op.unary.f32(i32 7, float %9011)  ; Saturate(value)
  %9013 = fsub fast float 1.000000e+00, %9010
  %9014 = fmul fast float %9013, %9012
  %9015 = fadd fast float %9014, %9010
  %9016 = call float @dx.op.unary.f32(i32 7, float %9015)  ; Saturate(value)
  %9017 = fadd fast float %8989, -1.000000e+00
  %9018 = select i1 %8988, float -1.000000e+00, float %9017
  %9019 = fmul fast float %9016, %9018
  %9020 = fadd fast float %9019, 1.000000e+00
  %9021 = fsub fast float -0.000000e+00, %9019
  %9022 = fmul fast float %8981, %9021
  %9023 = fmul fast float %8982, %9021
  %9024 = fmul fast float %8983, %9021
  br label %9025

; <label>:9025                                    ; preds = %8978, %8574
  %9026 = phi float [ %8979, %8978 ], [ 0.000000e+00, %8574 ]
  %9027 = phi float [ %9020, %8978 ], [ 1.000000e+00, %8574 ]
  %9028 = phi float [ %9022, %8978 ], [ 0.000000e+00, %8574 ]
  %9029 = phi float [ %9023, %8978 ], [ 0.000000e+00, %8574 ]
  %9030 = phi float [ %9024, %8978 ], [ 0.000000e+00, %8574 ]
  %9031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9032 = extractvalue %dx.types.CBufRet.f32 %9031, 1
  %9033 = fsub fast float 1.000000e+00, %9027
  %9034 = fmul fast float %9033, %8609
  %9035 = fmul fast float %9034, %9032
  %9036 = fsub fast float %8609, %9035
  br i1 %8602, label %9037, label %9066, !dx.controlflow.hints !160

; <label>:9037                                    ; preds = %9025
  %9038 = fmul fast float %8610, %8599
  %9039 = fadd fast float %9038, %8600
  %9040 = call float @dx.op.unary.f32(i32 7, float %9039)  ; Saturate(value)
  %9041 = fmul fast float %8581, %9036
  %9042 = fsub fast float -0.000000e+00, %9041
  %9043 = fmul fast float %8582, %9036
  %9044 = fsub fast float -0.000000e+00, %9043
  %9045 = call float @dx.op.unary.f32(i32 21, float %9042)  ; Exp(value)
  %9046 = call float @dx.op.unary.f32(i32 21, float %9044)  ; Exp(value)
  %9047 = call float @dx.op.binary.f32(i32 35, float %8589, float %9045)  ; FMax(a,b)
  %9048 = call float @dx.op.binary.f32(i32 35, float %8589, float %9046)  ; FMax(a,b)
  %9049 = fsub fast float %9048, %9047
  %9050 = fmul fast float %9049, %9040
  %9051 = fadd fast float %9050, %9047
  %9052 = call float @dx.op.unary.f32(i32 7, float %9051)  ; Saturate(value)
  %9053 = fsub fast float %8586, %8591
  %9054 = fsub fast float %8587, %8592
  %9055 = fsub fast float %8588, %8593
  %9056 = fmul fast float %9040, %9053
  %9057 = fmul fast float %9040, %9054
  %9058 = fmul fast float %9040, %9055
  %9059 = fadd fast float %9056, %8591
  %9060 = fadd fast float %9057, %8592
  %9061 = fadd fast float %9058, %8593
  %9062 = fsub fast float 1.000000e+00, %9052
  %9063 = fmul fast float %9062, %9059
  %9064 = fmul fast float %9062, %9060
  %9065 = fmul fast float %9062, %9061
  br label %9125

; <label>:9066                                    ; preds = %9025
  %9067 = fmul fast float %9036, %8598
  %9068 = call float @dx.op.unary.f32(i32 7, float %9067)  ; Saturate(value)
  %9069 = fsub fast float 2.000000e+00, %9068
  %9070 = fmul fast float %9068, 9.921875e-01
  %9071 = fmul fast float %9070, %9069
  %9072 = fadd fast float %9071, 3.906250e-03
  %9073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %9072, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9074 = extractvalue %dx.types.ResRet.f32 %9073, 0
  %9075 = fsub fast float %9068, %9074
  %9076 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9075)  ; FMax(a,b)
  %9077 = fmul fast float %8584, %8565
  %9078 = call float @dx.op.unary.f32(i32 6, float %9077)  ; FAbs(value)
  %9079 = fcmp fast ogt float %9078, 0x3EB0C6F7A0000000
  br i1 %9079, label %9080, label %9086, !dx.controlflow.hints !161

; <label>:9080                                    ; preds = %9066
  %9081 = fmul fast float %9077, 0xBFF7154760000000
  %9082 = call float @dx.op.unary.f32(i32 21, float %9081)  ; Exp(value)
  %9083 = fsub fast float 1.000000e+00, %9082
  %9084 = fdiv fast float %9083, %9077
  %9085 = fmul fast float %9084, %8594
  br label %9086

; <label>:9086                                    ; preds = %9080, %9066
  %9087 = phi float [ %9085, %9080 ], [ %8594, %9066 ]
  %9088 = fadd fast float %9087, %8596
  %9089 = fmul fast float %9088, %9076
  %9090 = fmul fast float %8581, %9089
  %9091 = fsub fast float -0.000000e+00, %9090
  %9092 = fmul fast float %8582, %9089
  %9093 = fsub fast float -0.000000e+00, %9092
  %9094 = fmul fast float %8583, %9089
  %9095 = fsub fast float -0.000000e+00, %9094
  %9096 = call float @dx.op.unary.f32(i32 21, float %9091)  ; Exp(value)
  %9097 = call float @dx.op.unary.f32(i32 21, float %9093)  ; Exp(value)
  %9098 = call float @dx.op.unary.f32(i32 21, float %9095)  ; Exp(value)
  %9099 = fmul fast float %8610, %8610
  %9100 = fadd fast float %9099, 1.000000e+00
  %9101 = fmul fast float %9100, 0x3FAE8EC8A0000000
  %9102 = fmul fast float %9101, %8591
  %9103 = fmul fast float %9101, %8592
  %9104 = fmul fast float %9101, %8593
  %9105 = fmul fast float %8610, %8589
  %9106 = fsub fast float 1.000000e+00, %9105
  %9107 = fmul fast float %8589, %8589
  %9108 = fsub fast float 1.000000e+00, %9107
  %9109 = fmul fast float %9108, 0x3FB45F3060000000
  %9110 = fmul fast float %9106, %9106
  %9111 = fdiv fast float 1.000000e+00, %9110
  %9112 = fmul fast float %9109, %9111
  %9113 = fmul fast float %9112, %8586
  %9114 = fmul fast float %9112, %8587
  %9115 = fmul fast float %9112, %8588
  %9116 = fadd fast float %9113, %9102
  %9117 = fadd fast float %9114, %9103
  %9118 = fadd fast float %9115, %9104
  %9119 = fsub fast float 1.000000e+00, %9096
  %9120 = fsub fast float 1.000000e+00, %9097
  %9121 = fsub fast float 1.000000e+00, %9098
  %9122 = fmul fast float %9116, %9119
  %9123 = fmul fast float %9117, %9120
  %9124 = fmul fast float %9118, %9121
  br label %9125

; <label>:9125                                    ; preds = %9086, %9037
  %9126 = phi float [ %9063, %9037 ], [ %9122, %9086 ]
  %9127 = phi float [ %9064, %9037 ], [ %9123, %9086 ]
  %9128 = phi float [ %9065, %9037 ], [ %9124, %9086 ]
  %9129 = phi float [ %9052, %9037 ], [ %9096, %9086 ]
  %9130 = phi float [ %9052, %9037 ], [ %9097, %9086 ]
  %9131 = phi float [ %9052, %9037 ], [ %9098, %9086 ]
  br i1 %8618, label %9132, label %9330, !dx.controlflow.hints !162

; <label>:9132                                    ; preds = %9125
  %9133 = extractvalue %dx.types.CBufRet.f32 %9031, 0
  %9134 = fmul fast float %9133, %9033
  %9135 = fsub fast float %9028, %9126
  %9136 = fsub fast float %9029, %9127
  %9137 = fsub fast float %9030, %9128
  %9138 = fmul fast float %9134, %9135
  %9139 = fmul fast float %9134, %9136
  %9140 = fmul fast float %9134, %9137
  %9141 = fadd fast float %9138, %9126
  %9142 = fadd fast float %9139, %9127
  %9143 = fadd fast float %9140, %9128
  %9144 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9129)  ; FMax(a,b)
  %9145 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9130)  ; FMax(a,b)
  %9146 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9131)  ; FMax(a,b)
  %9147 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9027)  ; FMax(a,b)
  %9148 = call float @dx.op.binary.f32(i32 35, float %9026, float %9036)  ; FMax(a,b)
  %9149 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9148)  ; FMax(a,b)
  %9150 = fdiv fast float %9026, %9149
  %9151 = call float @dx.op.unary.f32(i32 7, float %9150)  ; Saturate(value)
  %9152 = fdiv fast float %9036, %9149
  %9153 = call float @dx.op.unary.f32(i32 7, float %9152)  ; Saturate(value)
  %9154 = fcmp fast une float %9147, 1.000000e+00
  br i1 %9154, label %9155, label %9168, !dx.controlflow.hints !163

; <label>:9155                                    ; preds = %9132
  %9156 = call float @dx.op.unary.f32(i32 23, float %9147)  ; Log(value)
  %9157 = fmul fast float %9156, 0x3FE62E4300000000
  %9158 = fmul fast float %9028, %9157
  %9159 = fsub fast float -0.000000e+00, %9158
  %9160 = fmul fast float %9029, %9157
  %9161 = fsub fast float -0.000000e+00, %9160
  %9162 = fmul fast float %9030, %9157
  %9163 = fsub fast float -0.000000e+00, %9162
  %9164 = fsub fast float 1.000000e+00, %9147
  %9165 = fdiv fast float %9159, %9164
  %9166 = fdiv fast float %9161, %9164
  %9167 = fdiv fast float %9163, %9164
  br label %9168

; <label>:9168                                    ; preds = %9155, %9132
  %9169 = phi float [ %9165, %9155 ], [ %9028, %9132 ]
  %9170 = phi float [ %9166, %9155 ], [ %9029, %9132 ]
  %9171 = phi float [ %9167, %9155 ], [ %9030, %9132 ]
  %9172 = phi float [ %9157, %9155 ], [ 0.000000e+00, %9132 ]
  %9173 = fcmp fast une float %9144, 1.000000e+00
  br i1 %9173, label %9174, label %9181, !dx.controlflow.hints !164

; <label>:9174                                    ; preds = %9168
  %9175 = call float @dx.op.unary.f32(i32 23, float %9144)  ; Log(value)
  %9176 = fmul fast float %9175, 0x3FE62E4300000000
  %9177 = fmul fast float %9141, %9176
  %9178 = fsub fast float -0.000000e+00, %9177
  %9179 = fsub fast float 1.000000e+00, %9144
  %9180 = fdiv fast float %9178, %9179
  br label %9181

; <label>:9181                                    ; preds = %9174, %9168
  %9182 = phi float [ %9180, %9174 ], [ %9141, %9168 ]
  %9183 = phi float [ %9176, %9174 ], [ 0.000000e+00, %9168 ]
  %9184 = fcmp fast une float %9145, 1.000000e+00
  br i1 %9184, label %9185, label %9192, !dx.controlflow.hints !164

; <label>:9185                                    ; preds = %9181
  %9186 = call float @dx.op.unary.f32(i32 23, float %9145)  ; Log(value)
  %9187 = fmul fast float %9186, 0x3FE62E4300000000
  %9188 = fmul fast float %9142, %9187
  %9189 = fsub fast float -0.000000e+00, %9188
  %9190 = fsub fast float 1.000000e+00, %9145
  %9191 = fdiv fast float %9189, %9190
  br label %9192

; <label>:9192                                    ; preds = %9185, %9181
  %9193 = phi float [ %9191, %9185 ], [ %9142, %9181 ]
  %9194 = phi float [ %9187, %9185 ], [ 0.000000e+00, %9181 ]
  %9195 = fcmp fast une float %9146, 1.000000e+00
  br i1 %9195, label %9196, label %9203, !dx.controlflow.hints !164

; <label>:9196                                    ; preds = %9192
  %9197 = call float @dx.op.unary.f32(i32 23, float %9146)  ; Log(value)
  %9198 = fmul fast float %9197, 0x3FE62E4300000000
  %9199 = fmul fast float %9143, %9198
  %9200 = fsub fast float -0.000000e+00, %9199
  %9201 = fsub fast float 1.000000e+00, %9146
  %9202 = fdiv fast float %9200, %9201
  br label %9203

; <label>:9203                                    ; preds = %9196, %9192
  %9204 = phi float [ %9202, %9196 ], [ %9143, %9192 ]
  %9205 = phi float [ %9198, %9196 ], [ 0.000000e+00, %9192 ]
  %9206 = fmul fast float %9169, %9153
  %9207 = fmul fast float %9170, %9153
  %9208 = fmul fast float %9171, %9153
  %9209 = fmul fast float %9172, %9153
  %9210 = fmul fast float %9182, %9151
  %9211 = fmul fast float %9193, %9151
  %9212 = fmul fast float %9204, %9151
  %9213 = fmul fast float %9183, %9151
  %9214 = fmul fast float %9194, %9151
  %9215 = fmul fast float %9205, %9151
  %9216 = fadd fast float %9210, %9206
  %9217 = fadd fast float %9211, %9207
  %9218 = fadd fast float %9212, %9208
  %9219 = fadd fast float %9213, %9209
  %9220 = fadd fast float %9214, %9209
  %9221 = fadd fast float %9215, %9209
  %9222 = fcmp fast une float %9219, 0.000000e+00
  br i1 %9222, label %9223, label %9230, !dx.controlflow.hints !165

; <label>:9223                                    ; preds = %9203
  %9224 = fmul fast float %9219, 0x3FF7154760000000
  %9225 = call float @dx.op.unary.f32(i32 21, float %9224)  ; Exp(value)
  %9226 = fsub fast float 1.000000e+00, %9225
  %9227 = fmul fast float %9216, %9226
  %9228 = fsub fast float -0.000000e+00, %9227
  %9229 = fdiv fast float %9228, %9219
  br label %9230

; <label>:9230                                    ; preds = %9223, %9203
  %9231 = phi float [ %9225, %9223 ], [ 1.000000e+00, %9203 ]
  %9232 = phi float [ %9229, %9223 ], [ %9216, %9203 ]
  %9233 = fcmp fast une float %9220, 0.000000e+00
  br i1 %9233, label %9234, label %9241, !dx.controlflow.hints !165

; <label>:9234                                    ; preds = %9230
  %9235 = fmul fast float %9220, 0x3FF7154760000000
  %9236 = call float @dx.op.unary.f32(i32 21, float %9235)  ; Exp(value)
  %9237 = fsub fast float 1.000000e+00, %9236
  %9238 = fmul fast float %9217, %9237
  %9239 = fsub fast float -0.000000e+00, %9238
  %9240 = fdiv fast float %9239, %9220
  br label %9241

; <label>:9241                                    ; preds = %9234, %9230
  %9242 = phi float [ %9236, %9234 ], [ 1.000000e+00, %9230 ]
  %9243 = phi float [ %9240, %9234 ], [ %9217, %9230 ]
  %9244 = fcmp fast une float %9221, 0.000000e+00
  br i1 %9244, label %9245, label %9252, !dx.controlflow.hints !165

; <label>:9245                                    ; preds = %9241
  %9246 = fmul fast float %9221, 0x3FF7154760000000
  %9247 = call float @dx.op.unary.f32(i32 21, float %9246)  ; Exp(value)
  %9248 = fsub fast float 1.000000e+00, %9247
  %9249 = fmul fast float %9218, %9248
  %9250 = fsub fast float -0.000000e+00, %9249
  %9251 = fdiv fast float %9250, %9221
  br label %9252

; <label>:9252                                    ; preds = %9245, %9241
  %9253 = phi float [ %9247, %9245 ], [ 1.000000e+00, %9241 ]
  %9254 = phi float [ %9251, %9245 ], [ %9218, %9241 ]
  %9255 = fcmp fast ogt float %9151, %9153
  br i1 %9255, label %9256, label %9276

; <label>:9256                                    ; preds = %9252
  %9257 = fsub fast float 1.000000e+00, %9153
  %9258 = fmul fast float %9169, %9257
  %9259 = fmul fast float %9170, %9257
  %9260 = fmul fast float %9171, %9257
  %9261 = fmul fast float %9172, %9257
  %9262 = fcmp fast une float %9261, 0.000000e+00
  br i1 %9262, label %9263, label %9314, !dx.controlflow.hints !166

; <label>:9263                                    ; preds = %9256
  %9264 = fmul fast float %9261, 0x3FF7154760000000
  %9265 = call float @dx.op.unary.f32(i32 21, float %9264)  ; Exp(value)
  %9266 = fsub fast float 1.000000e+00, %9265
  %9267 = fmul fast float %9258, %9266
  %9268 = fsub fast float -0.000000e+00, %9267
  %9269 = fmul fast float %9259, %9266
  %9270 = fsub fast float -0.000000e+00, %9269
  %9271 = fmul fast float %9260, %9266
  %9272 = fsub fast float -0.000000e+00, %9271
  %9273 = fdiv fast float %9268, %9261
  %9274 = fdiv fast float %9270, %9261
  %9275 = fdiv fast float %9272, %9261
  br label %9314

; <label>:9276                                    ; preds = %9252
  %9277 = fsub fast float 1.000000e+00, %9151
  %9278 = fmul fast float %9182, %9277
  %9279 = fmul fast float %9193, %9277
  %9280 = fmul fast float %9204, %9277
  %9281 = fmul fast float %9183, %9277
  %9282 = fmul fast float %9194, %9277
  %9283 = fmul fast float %9205, %9277
  %9284 = fcmp fast une float %9281, 0.000000e+00
  br i1 %9284, label %9285, label %9292, !dx.controlflow.hints !165

; <label>:9285                                    ; preds = %9276
  %9286 = fmul fast float %9281, 0x3FF7154760000000
  %9287 = call float @dx.op.unary.f32(i32 21, float %9286)  ; Exp(value)
  %9288 = fsub fast float 1.000000e+00, %9287
  %9289 = fmul fast float %9278, %9288
  %9290 = fsub fast float -0.000000e+00, %9289
  %9291 = fdiv fast float %9290, %9281
  br label %9292

; <label>:9292                                    ; preds = %9285, %9276
  %9293 = phi float [ %9291, %9285 ], [ %9278, %9276 ]
  %9294 = phi float [ %9287, %9285 ], [ 1.000000e+00, %9276 ]
  %9295 = fcmp fast une float %9282, 0.000000e+00
  br i1 %9295, label %9296, label %9303, !dx.controlflow.hints !165

; <label>:9296                                    ; preds = %9292
  %9297 = fmul fast float %9282, 0x3FF7154760000000
  %9298 = call float @dx.op.unary.f32(i32 21, float %9297)  ; Exp(value)
  %9299 = fsub fast float 1.000000e+00, %9298
  %9300 = fmul fast float %9279, %9299
  %9301 = fsub fast float -0.000000e+00, %9300
  %9302 = fdiv fast float %9301, %9282
  br label %9303

; <label>:9303                                    ; preds = %9296, %9292
  %9304 = phi float [ %9302, %9296 ], [ %9279, %9292 ]
  %9305 = phi float [ %9298, %9296 ], [ 1.000000e+00, %9292 ]
  %9306 = fcmp fast une float %9283, 0.000000e+00
  br i1 %9306, label %9307, label %9314, !dx.controlflow.hints !165

; <label>:9307                                    ; preds = %9303
  %9308 = fmul fast float %9283, 0x3FF7154760000000
  %9309 = call float @dx.op.unary.f32(i32 21, float %9308)  ; Exp(value)
  %9310 = fsub fast float 1.000000e+00, %9309
  %9311 = fmul fast float %9280, %9310
  %9312 = fsub fast float -0.000000e+00, %9311
  %9313 = fdiv fast float %9312, %9283
  br label %9314

; <label>:9314                                    ; preds = %9307, %9303, %9263, %9256
  %9315 = phi float [ %9313, %9307 ], [ %9275, %9263 ], [ %9260, %9256 ], [ %9280, %9303 ]
  %9316 = phi float [ %9304, %9307 ], [ %9274, %9263 ], [ %9259, %9256 ], [ %9304, %9303 ]
  %9317 = phi float [ %9293, %9307 ], [ %9273, %9263 ], [ %9258, %9256 ], [ %9293, %9303 ]
  %9318 = phi float [ %9309, %9307 ], [ %9265, %9263 ], [ 1.000000e+00, %9256 ], [ 1.000000e+00, %9303 ]
  %9319 = phi float [ %9305, %9307 ], [ %9265, %9263 ], [ 1.000000e+00, %9256 ], [ %9305, %9303 ]
  %9320 = phi float [ %9294, %9307 ], [ %9265, %9263 ], [ 1.000000e+00, %9256 ], [ %9294, %9303 ]
  %9321 = fmul fast float %9320, %9232
  %9322 = fmul fast float %9319, %9243
  %9323 = fmul fast float %9318, %9254
  %9324 = fadd fast float %9321, %9317
  %9325 = fadd fast float %9322, %9316
  %9326 = fadd fast float %9323, %9315
  %9327 = fmul fast float %9320, %9231
  %9328 = fmul fast float %9319, %9242
  %9329 = fmul fast float %9318, %9253
  br label %9330

; <label>:9330                                    ; preds = %9314, %9125
  %9331 = phi float [ %9329, %9314 ], [ %9131, %9125 ]
  %9332 = phi float [ %9328, %9314 ], [ %9130, %9125 ]
  %9333 = phi float [ %9327, %9314 ], [ %9129, %9125 ]
  %9334 = phi float [ %9326, %9314 ], [ %9128, %9125 ]
  %9335 = phi float [ %9325, %9314 ], [ %9127, %9125 ]
  %9336 = phi float [ %9324, %9314 ], [ %9126, %9125 ]
  %9337 = fmul fast float %9336, %8278
  %9338 = fmul fast float %9335, %8280
  %9339 = fmul fast float %9334, %8282
  %9340 = fmul fast float %9333, %8573
  %9341 = call float @dx.op.dot3.f32(i32 55, float %9333, float %9332, float %9331, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9342 = call float @dx.op.dot3.f32(i32 55, float %9337, float %9338, float %9339, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9343 = select i1 %247, float %9341, float %9333
  %9344 = select i1 %247, float %9341, float %9332
  %9345 = select i1 %247, float 1.000000e+00, float %9331
  %9346 = select i1 %247, float %9342, float %9337
  %9347 = select i1 %247, float 0.000000e+00, float %9338
  %9348 = select i1 %247, float 0.000000e+00, float %9339
  %9349 = fmul fast float %9343, %8567
  %9350 = fmul fast float %9344, %8568
  %9351 = fmul fast float %9345, %8569
  %9352 = fadd fast float %9349, %9346
  %9353 = fadd fast float %9350, %9347
  %9354 = fadd fast float %9348, %9351
  %9355 = fmul fast float %9343, %8570
  %9356 = fmul fast float %9344, %8571
  %9357 = fmul fast float %9345, %8572
  %9358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9359 = extractvalue %dx.types.CBufRet.i32 %9358, 0
  %9360 = icmp eq i32 %9359, 0
  br i1 %9360, label %9728, label %9361, !dx.controlflow.hints !167

; <label>:9361                                    ; preds = %9330
  %9362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9363 = extractvalue %dx.types.CBufRet.f32 %9362, 2
  %9364 = extractvalue %dx.types.CBufRet.f32 %9362, 3
  %9365 = fmul fast float %9363, %107
  %9366 = fmul fast float %9364, %108
  %9367 = fmul fast float %9365, 2.000000e+00
  %9368 = fmul fast float %9366, 2.000000e+00
  %9369 = fsub fast float 1.000000e+00, %9367
  %9370 = fsub fast float 1.000000e+00, %9368
  %9371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9372 = extractvalue %dx.types.CBufRet.f32 %9371, 0
  %9373 = extractvalue %dx.types.CBufRet.f32 %9371, 1
  %9374 = extractvalue %dx.types.CBufRet.f32 %9371, 2
  %9375 = fmul fast float %9369, %9372
  %9376 = fmul fast float %9369, %9373
  %9377 = fmul fast float %9369, %9374
  %9378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.f32 %9378, 0
  %9380 = extractvalue %dx.types.CBufRet.f32 %9378, 1
  %9381 = extractvalue %dx.types.CBufRet.f32 %9378, 2
  %9382 = fmul fast float %9370, %9379
  %9383 = fmul fast float %9370, %9380
  %9384 = fmul fast float %9370, %9381
  %9385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9386 = extractvalue %dx.types.CBufRet.f32 %9385, 0
  %9387 = extractvalue %dx.types.CBufRet.f32 %9385, 1
  %9388 = extractvalue %dx.types.CBufRet.f32 %9385, 2
  %9389 = fadd fast float %9382, %9386
  %9390 = fadd fast float %9389, %9375
  %9391 = fadd fast float %9383, %9387
  %9392 = fadd fast float %9391, %9376
  %9393 = fadd fast float %9384, %9388
  %9394 = fadd fast float %9393, %9377
  %9395 = fmul fast float %9390, %8566
  %9396 = fmul fast float %9392, %8566
  %9397 = fmul fast float %9394, %8566
  %9398 = fmul fast float %9395, %9395
  %9399 = fmul fast float %9396, %9396
  %9400 = fadd fast float %9398, %9399
  %9401 = fmul fast float %9397, %9397
  %9402 = fadd fast float %9400, %9401
  %9403 = call float @dx.op.unary.f32(i32 24, float %9402)  ; Sqrt(value)
  %9404 = extractvalue %dx.types.CBufRet.f32 %8293, 0
  %9405 = fsub fast float %9403, %9404
  %9406 = extractvalue %dx.types.CBufRet.f32 %8293, 2
  %9407 = fmul fast float %9405, %9406
  %9408 = call float @dx.op.unary.f32(i32 7, float %9407)  ; Saturate(value)
  %9409 = fadd fast float %9408, -5.000000e-01
  %9410 = fmul fast float %9409, 2.000000e+00
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 2
  %9413 = call float @dx.op.binary.f32(i32 36, float %9412, float %9410)  ; FMin(a,b)
  %9414 = fsub fast float -0.000000e+00, %9412
  %9415 = fcmp fast ogt float %9413, %9414
  br i1 %9415, label %9416, label %9728, !dx.controlflow.hints !168

; <label>:9416                                    ; preds = %9361
  %9417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9418 = extractvalue %dx.types.CBufRet.f32 %9417, 3
  %9419 = fcmp fast ogt float %9418, 0.000000e+00
  br i1 %9419, label %9420, label %9495, !dx.controlflow.hints !169

; <label>:9420                                    ; preds = %9416
  %9421 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9422 = extractvalue %dx.types.Dimensions %9421, 0
  %9423 = sitofp i32 %9422 to float
  %9424 = extractvalue %dx.types.Dimensions %9421, 1
  %9425 = sitofp i32 %9424 to float
  %9426 = fmul fast float %9365, %9423
  %9427 = fmul fast float %9366, %9425
  %9428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9429 = extractvalue %dx.types.CBufRet.f32 %9428, 1
  %9430 = fsub fast float -0.000000e+00, %9429
  %9431 = fptoui float %9430 to i32
  %9432 = fptoui float %9426 to i32
  %9433 = fptoui float %9427 to i32
  %9434 = and i32 %9431, 31
  %9435 = lshr i32 %9432, %9434
  %9436 = lshr i32 %9433, %9434
  %9437 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9431, i32 %9435, i32 %9436, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9438 = extractvalue %dx.types.ResRet.f32 %9437, 0
  %9439 = fcmp fast olt float %9438, -1.000000e+00
  %9440 = fcmp fast ogt float %9438, -1.000000e+00
  %9441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9442 = extractvalue %dx.types.CBufRet.f32 %9441, 1
  %9443 = select i1 %9440, float %9442, float 1.000000e+00
  %9444 = fadd fast float %9438, 1.000000e+00
  %9445 = fmul fast float %9443, %9444
  %9446 = call float @dx.op.unary.f32(i32 6, float %9445)  ; FAbs(value)
  %9447 = extractvalue %dx.types.CBufRet.f32 %9441, 3
  %9448 = fcmp fast oge float %9446, %9447
  %9449 = select i1 %9448, float 0x4197782600000000, float %9446
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 0
  %9452 = extractvalue %dx.types.CBufRet.f32 %9450, 1
  %9453 = extractvalue %dx.types.CBufRet.f32 %9450, 2
  %9454 = select i1 %9439, float %9451, float %9372
  %9455 = select i1 %9439, float %9452, float %9373
  %9456 = select i1 %9439, float %9453, float %9374
  %9457 = fmul fast float %9454, %9369
  %9458 = fmul fast float %9455, %9369
  %9459 = fmul fast float %9456, %9369
  %9460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9461 = extractvalue %dx.types.CBufRet.f32 %9460, 0
  %9462 = extractvalue %dx.types.CBufRet.f32 %9460, 1
  %9463 = extractvalue %dx.types.CBufRet.f32 %9460, 2
  %9464 = select i1 %9439, float %9461, float %9379
  %9465 = select i1 %9439, float %9462, float %9380
  %9466 = select i1 %9439, float %9463, float %9381
  %9467 = fmul fast float %9464, %9370
  %9468 = fmul fast float %9465, %9370
  %9469 = fmul fast float %9466, %9370
  %9470 = fadd fast float %9467, %9457
  %9471 = fadd fast float %9468, %9458
  %9472 = fadd fast float %9469, %9459
  %9473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9474 = extractvalue %dx.types.CBufRet.f32 %9473, 0
  %9475 = extractvalue %dx.types.CBufRet.f32 %9473, 1
  %9476 = extractvalue %dx.types.CBufRet.f32 %9473, 2
  %9477 = select i1 %9439, float %9474, float %9386
  %9478 = select i1 %9439, float %9475, float %9387
  %9479 = select i1 %9439, float %9476, float %9388
  %9480 = fadd fast float %9470, %9477
  %9481 = fadd fast float %9471, %9478
  %9482 = fadd fast float %9472, %9479
  %9483 = fmul fast float %9480, %9449
  %9484 = fmul fast float %9481, %9449
  %9485 = fmul fast float %9482, %9449
  %9486 = fmul fast float %9483, %9483
  %9487 = fmul fast float %9484, %9484
  %9488 = fadd fast float %9486, %9487
  %9489 = fmul fast float %9485, %9485
  %9490 = fadd fast float %9488, %9489
  %9491 = call float @dx.op.unary.f32(i32 24, float %9490)  ; Sqrt(value)
  %9492 = fsub fast float %9491, %9404
  %9493 = fmul fast float %9492, %9406
  %9494 = call float @dx.op.unary.f32(i32 7, float %9493)  ; Saturate(value)
  br label %9495

; <label>:9495                                    ; preds = %9420, %9416
  %9496 = phi float [ %9494, %9420 ], [ 1.000000e+00, %9416 ]
  %9497 = fmul fast float %9413, 5.000000e-01
  %9498 = fadd fast float %9497, 5.000000e-01
  %9499 = call float @dx.op.unary.f32(i32 22, float %9498)  ; Frc(value)
  %9500 = call float @dx.op.unary.f32(i32 27, float %9499)  ; Round_ni(value)
  %9501 = call float @dx.op.unary.f32(i32 22, float %9499)  ; Frc(value)
  %9502 = fmul fast float %9501, 2.000000e+00
  %9503 = fadd fast float %9502, -1.000000e+00
  %9504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9365, float %9366, float %9500, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9505 = extractvalue %dx.types.ResRet.f32 %9504, 0
  %9506 = extractvalue %dx.types.ResRet.f32 %9504, 1
  %9507 = extractvalue %dx.types.ResRet.f32 %9504, 2
  %9508 = extractvalue %dx.types.ResRet.f32 %9504, 3
  %9509 = fadd fast float %9505, -5.000000e-01
  %9510 = fadd fast float %9507, -5.000000e-01
  %9511 = fmul fast float %9509, 0xBFD5555560000000
  %9512 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9510, float %9511)  ; FMad(a,b,c)
  %9513 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9506, float 0.000000e+00)  ; FMad(a,b,c)
  %9514 = fadd fast float %9513, %9508
  %9515 = fmul fast float %9509, -7.500000e-01
  %9516 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9510, float %9515)  ; FMad(a,b,c)
  %9517 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9506, float 0.000000e+00)  ; FMad(a,b,c)
  %9518 = fadd fast float %9517, %9508
  %9519 = call float @dx.op.binary.f32(i32 35, float %9512, float -1.000000e+00)  ; FMax(a,b)
  %9520 = call float @dx.op.binary.f32(i32 35, float %9514, float -1.000000e+00)  ; FMax(a,b)
  %9521 = call float @dx.op.binary.f32(i32 35, float %9516, float -1.000000e+00)  ; FMax(a,b)
  %9522 = call float @dx.op.binary.f32(i32 35, float %9518, float -1.000000e+00)  ; FMax(a,b)
  %9523 = call float @dx.op.binary.f32(i32 36, float %9519, float 1.000000e+00)  ; FMin(a,b)
  %9524 = call float @dx.op.binary.f32(i32 36, float %9520, float 1.000000e+00)  ; FMin(a,b)
  %9525 = call float @dx.op.binary.f32(i32 36, float %9521, float 1.000000e+00)  ; FMin(a,b)
  %9526 = call float @dx.op.binary.f32(i32 36, float %9522, float 1.000000e+00)  ; FMin(a,b)
  %9527 = fcmp fast olt float %9523, 0x3FEFFF8020000000
  br i1 %9527, label %9528, label %9643, !dx.controlflow.hints !170

; <label>:9528                                    ; preds = %9495
  %9529 = extractvalue %dx.types.CBufRet.f32 %9411, 3
  %9530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9531 = extractvalue %dx.types.CBufRet.f32 %9530, 0
  %9532 = extractvalue %dx.types.CBufRet.f32 %9530, 1
  %9533 = extractvalue %dx.types.CBufRet.f32 %9530, 2
  %9534 = extractvalue %dx.types.CBufRet.f32 %9530, 3
  %9535 = fsub fast float %9531, %9523
  %9536 = fsub fast float %9532, %9524
  %9537 = fsub fast float %9533, %9525
  %9538 = fsub fast float %9534, %9526
  %9539 = fmul fast float %9535, %9529
  %9540 = fmul fast float %9536, %9529
  %9541 = fmul fast float %9537, %9529
  %9542 = fmul fast float %9538, %9529
  %9543 = fadd fast float %9539, %9523
  %9544 = fadd fast float %9540, %9524
  %9545 = fsub fast float -0.000000e+00, %9544
  %9546 = fadd fast float %9541, %9525
  %9547 = fadd fast float %9542, %9526
  %9548 = fmul fast float %9543, %9543
  %9549 = fsub fast float %9544, %9548
  %9550 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9549)  ; FMax(a,b)
  %9551 = fdiv fast float 1.000000e+00, %9550
  %9552 = fmul fast float %9544, %9543
  %9553 = fsub fast float %9546, %9552
  %9554 = fsub fast float %9503, %9543
  %9555 = fmul fast float %9503, %9503
  %9556 = fsub fast float %9555, %9544
  %9557 = fmul fast float %9554, %9551
  %9558 = fmul fast float %9557, %9553
  %9559 = fsub fast float %9556, %9558
  %9560 = fmul fast float %9544, %9544
  %9561 = fsub fast float %9547, %9560
  %9562 = fmul fast float %9553, %9553
  %9563 = fmul fast float %9562, %9551
  %9564 = fsub fast float %9561, %9563
  %9565 = fdiv fast float %9559, %9564
  %9566 = fmul fast float %9553, %9565
  %9567 = fsub fast float %9554, %9566
  %9568 = fmul fast float %9567, %9551
  %9569 = fmul fast float %9568, %9543
  %9570 = fsub fast float 1.000000e+00, %9569
  %9571 = fmul fast float %9544, %9565
  %9572 = fsub fast float %9570, %9571
  %9573 = fmul fast float %9568, %9568
  %9574 = fmul fast float %9565, 4.000000e+00
  %9575 = fmul fast float %9574, %9572
  %9576 = fsub fast float %9573, %9575
  %9577 = call float @dx.op.unary.f32(i32 24, float %9576)  ; Sqrt(value)
  %9578 = fcmp fast oge float %9568, 0.000000e+00
  %9579 = fsub fast float -0.000000e+00, %9577
  %9580 = select i1 %9578, float %9579, float %9577
  %9581 = fsub fast float %9580, %9568
  %9582 = fdiv fast float %9581, %9565
  %9583 = fdiv fast float %9572, %9581
  %9584 = fmul fast float %9582, 5.000000e-01
  %9585 = fmul fast float %9583, 2.000000e+00
  %9586 = select i1 %9578, float %9584, float %9585
  %9587 = select i1 %9578, float %9585, float %9584
  %9588 = call float @dx.op.binary.f32(i32 35, float %9586, float %9587)  ; FMax(a,b)
  %9589 = call float @dx.op.binary.f32(i32 36, float %9586, float %9587)  ; FMin(a,b)
  %9590 = fcmp fast ogt float %9503, %9589
  br i1 %9590, label %9591, label %9601

; <label>:9591                                    ; preds = %9528
  %9592 = fsub fast float %9503, %9589
  %9593 = fsub fast float %9588, %9589
  %9594 = fmul fast float %9592, %9593
  %9595 = fmul fast float %9588, %9503
  %9596 = fadd fast float %9588, %9503
  %9597 = fmul fast float %9596, %9543
  %9598 = fadd fast float %9595, %9544
  %9599 = fsub fast float %9598, %9597
  %9600 = fdiv fast float %9599, %9594
  br label %9601

; <label>:9601                                    ; preds = %9591, %9528
  %9602 = phi float [ %9600, %9591 ], [ 0.000000e+00, %9528 ]
  %9603 = fcmp fast ogt float %9503, %9588
  %9604 = fsub fast float %9503, %9588
  br i1 %9603, label %9605, label %9615

; <label>:9605                                    ; preds = %9601
  %9606 = fsub fast float %9588, %9589
  %9607 = fmul fast float %9606, %9604
  %9608 = fmul fast float %9589, %9503
  %9609 = fadd fast float %9589, %9503
  %9610 = fmul fast float %9609, %9543
  %9611 = fsub fast float %9545, %9608
  %9612 = fadd fast float %9611, %9610
  %9613 = fdiv fast float %9612, %9607
  %9614 = fadd fast float %9613, %9602
  br label %9615

; <label>:9615                                    ; preds = %9605, %9601
  %9616 = phi float [ %9614, %9605 ], [ %9602, %9601 ]
  %9617 = fsub fast float %9503, %9589
  %9618 = fmul fast float %9617, %9604
  %9619 = fmul fast float %9589, %9588
  %9620 = fadd fast float %9589, %9588
  %9621 = fmul fast float %9620, %9543
  %9622 = fadd fast float %9619, %9544
  %9623 = fsub fast float %9622, %9621
  %9624 = fdiv fast float %9623, %9618
  %9625 = call float @dx.op.unary.f32(i32 7, float %9616)  ; Saturate(value)
  %9626 = fcmp fast oeq float %8294, 0.000000e+00
  %9627 = extractvalue %dx.types.CBufRet.f32 %9411, 0
  %9628 = fcmp fast oeq float %9627, 0.000000e+00
  %9629 = or i1 %9626, %9628
  %9630 = fmul fast float %9627, 2.000000e+00
  %9631 = fadd fast float %9412, %9413
  %9632 = fdiv fast float %9631, %9630
  %9633 = call float @dx.op.unary.f32(i32 7, float %9632)  ; Saturate(value)
  %9634 = fmul fast float %9633, 2.000000e+00
  %9635 = fsub fast float 3.000000e+00, %9634
  %9636 = fmul fast float %9633, %9633
  %9637 = fmul fast float %9636, %9635
  %9638 = select i1 %9629, float 1.000000e+00, float %9637
  %9639 = fmul fast float %9624, %8294
  %9640 = fadd fast float %9625, %9639
  %9641 = call float @dx.op.unary.f32(i32 7, float %9640)  ; Saturate(value)
  %9642 = fmul fast float %9638, %9641
  br label %9643

; <label>:9643                                    ; preds = %9615, %9495
  %9644 = phi float [ %9642, %9615 ], [ 0.000000e+00, %9495 ]
  %9645 = fsub fast float 1.000000e+00, %9644
  %9646 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9365, float %9366, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9647 = extractvalue %dx.types.ResRet.f32 %9646, 0
  %9648 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9649 = extractvalue %dx.types.CBufRet.i32 %9648, 2
  %9650 = icmp eq i32 %9649, 0
  br i1 %9650, label %9656, label %9651

; <label>:9651                                    ; preds = %9643
  %9652 = call float @dx.op.unary.f32(i32 7, float %9644)  ; Saturate(value)
  %9653 = fadd fast float %9647, -1.000000e+00
  %9654 = fmul fast float %9652, %9653
  %9655 = fadd fast float %9654, 1.000000e+00
  br label %9656

; <label>:9656                                    ; preds = %9651, %9643
  %9657 = phi float [ %9655, %9651 ], [ %9645, %9643 ]
  br i1 %9419, label %9658, label %9676

; <label>:9658                                    ; preds = %9656
  %9659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9660 = extractvalue %dx.types.CBufRet.f32 %9659, 1
  %9661 = fsub fast float %9496, %9660
  %9662 = call float @dx.op.unary.f32(i32 7, float %9661)  ; Saturate(value)
  %9663 = fsub fast float %9496, %9418
  %9664 = call float @dx.op.unary.f32(i32 7, float %9663)  ; Saturate(value)
  %9665 = fsub fast float %9662, %9664
  %9666 = fsub fast float %9498, %9664
  %9667 = fdiv fast float %9666, %9665
  %9668 = call float @dx.op.unary.f32(i32 7, float %9667)  ; Saturate(value)
  %9669 = fmul fast float %9668, 2.000000e+00
  %9670 = fsub fast float 3.000000e+00, %9669
  %9671 = fsub fast float %9647, %9657
  %9672 = fmul fast float %9668, %9668
  %9673 = fmul fast float %9672, %9671
  %9674 = fmul fast float %9673, %9670
  %9675 = fadd fast float %9674, %9657
  br label %9676

; <label>:9676                                    ; preds = %9658, %9656
  %9677 = phi float [ %9675, %9658 ], [ %9657, %9656 ]
  %9678 = call float @dx.op.binary.f32(i32 35, float %9647, float %9677)  ; FMax(a,b)
  %9679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9680 = extractvalue %dx.types.CBufRet.i32 %9679, 2
  %9681 = and i32 %9680, 1
  %9682 = icmp eq i32 %9681, 0
  %9683 = fcmp fast une float %9678, 1.000000e+00
  %9684 = and i1 %9683, %9682
  br i1 %9684, label %9685, label %9704

; <label>:9685                                    ; preds = %9676
  %9686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9365, float %9366, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9687 = extractvalue %dx.types.ResRet.f32 %9686, 0
  %9688 = extractvalue %dx.types.ResRet.f32 %9686, 1
  %9689 = extractvalue %dx.types.ResRet.f32 %9686, 2
  %9690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9691 = extractvalue %dx.types.CBufRet.f32 %9690, 1
  %9692 = fmul fast float %9691, %9687
  %9693 = fmul fast float %9691, %9688
  %9694 = fmul fast float %9691, %9689
  %9695 = fcmp fast ogt float %9647, 0x3FEFFF2E40000000
  %9696 = fsub fast float 1.000000e+00, %9678
  %9697 = fsub fast float 1.000000e+00, %9647
  %9698 = fdiv fast float %9696, %9697
  %9699 = call float @dx.op.unary.f32(i32 7, float %9698)  ; Saturate(value)
  %9700 = select i1 %9695, float 0.000000e+00, float %9699
  %9701 = fmul fast float %9692, %9700
  %9702 = fmul fast float %9693, %9700
  %9703 = fmul fast float %9694, %9700
  br label %9704

; <label>:9704                                    ; preds = %9685, %9676
  %9705 = phi float [ 0.000000e+00, %9676 ], [ %9701, %9685 ]
  %9706 = phi float [ 0.000000e+00, %9676 ], [ %9702, %9685 ]
  %9707 = phi float [ 0.000000e+00, %9676 ], [ %9703, %9685 ]
  %9708 = fmul fast float %9705, %8278
  %9709 = fmul fast float %9706, %8280
  %9710 = fmul fast float %9707, %8282
  %9711 = fmul fast float %9678, %9340
  %9712 = call float @dx.op.dot3.f32(i32 55, float %9678, float %9678, float %9678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9713 = call float @dx.op.dot3.f32(i32 55, float %9708, float %9709, float %9710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9714 = select i1 %247, float %9712, float %9678
  %9715 = select i1 %247, float 1.000000e+00, float %9678
  %9716 = select i1 %247, float %9713, float %9708
  %9717 = select i1 %247, float 0.000000e+00, float %9709
  %9718 = select i1 %247, float 0.000000e+00, float %9710
  %9719 = fmul fast float %9714, %9352
  %9720 = fmul fast float %9714, %9353
  %9721 = fmul fast float %9715, %9354
  %9722 = fadd fast float %9719, %9716
  %9723 = fadd fast float %9720, %9717
  %9724 = fadd fast float %9718, %9721
  %9725 = fmul fast float %9714, %9355
  %9726 = fmul fast float %9714, %9356
  %9727 = fmul fast float %9715, %9357
  br label %9728

; <label>:9728                                    ; preds = %9704, %9361, %9330, %8562
  %9729 = phi float [ %8567, %8562 ], [ %9352, %9330 ], [ %9722, %9704 ], [ %9352, %9361 ]
  %9730 = phi float [ %8568, %8562 ], [ %9353, %9330 ], [ %9723, %9704 ], [ %9353, %9361 ]
  %9731 = phi float [ %8569, %8562 ], [ %9354, %9330 ], [ %9724, %9704 ], [ %9354, %9361 ]
  %9732 = phi float [ %8570, %8562 ], [ %9355, %9330 ], [ %9725, %9704 ], [ %9355, %9361 ]
  %9733 = phi float [ %8571, %8562 ], [ %9356, %9330 ], [ %9726, %9704 ], [ %9356, %9361 ]
  %9734 = phi float [ %8572, %8562 ], [ %9357, %9330 ], [ %9727, %9704 ], [ %9357, %9361 ]
  %9735 = phi float [ %8573, %8562 ], [ %9340, %9330 ], [ %9711, %9704 ], [ %9340, %9361 ]
  %9736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9737 = extractvalue %dx.types.CBufRet.f32 %9736, 2
  %9738 = extractvalue %dx.types.CBufRet.f32 %9736, 3
  %9739 = fmul fast float %9737, %107
  %9740 = fmul fast float %9738, %108
  %9741 = call float @dx.op.unary.f32(i32 7, float %9739)  ; Saturate(value)
  %9742 = call float @dx.op.unary.f32(i32 7, float %9740)  ; Saturate(value)
  %9743 = select i1 %8304, i32 2, i32 0
  %9744 = or i32 %9743, 1
  %9745 = uitofp i32 %9744 to float
  %9746 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9741, float %9742, float %9745, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9747 = extractvalue %dx.types.ResRet.f32 %9746, 0
  %9748 = extractvalue %dx.types.ResRet.f32 %9746, 1
  %9749 = extractvalue %dx.types.ResRet.f32 %9746, 2
  %9750 = extractvalue %dx.types.ResRet.f32 %9746, 3
  %9751 = add nuw nsw i32 %9743, 2
  %9752 = uitofp i32 %9751 to float
  %9753 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9741, float %9742, float %9752, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9754 = extractvalue %dx.types.ResRet.f32 %9753, 0
  %9755 = extractvalue %dx.types.ResRet.f32 %9753, 1
  %9756 = extractvalue %dx.types.ResRet.f32 %9753, 2
  %9757 = extractvalue %dx.types.ResRet.f32 %9753, 3
  %9758 = call float @dx.op.binary.f32(i32 35, float %9748, float %9749)  ; FMax(a,b)
  %9759 = call float @dx.op.binary.f32(i32 35, float %9747, float %9758)  ; FMax(a,b)
  %9760 = call float @dx.op.binary.f32(i32 35, float %9759, float %9750)  ; FMax(a,b)
  %9761 = call float @dx.op.binary.f32(i32 36, float %9755, float %9756)  ; FMin(a,b)
  %9762 = call float @dx.op.binary.f32(i32 36, float %9754, float %9761)  ; FMin(a,b)
  %9763 = call float @dx.op.binary.f32(i32 36, float %9762, float %9757)  ; FMin(a,b)
  %9764 = fmul fast float %9760, 2.550000e+02
  %9765 = fadd fast float %9764, 0x3F70101020000000
  %9766 = fptoui float %9765 to i32
  %9767 = fmul fast float %9763, 2.550000e+02
  %9768 = fadd fast float %9767, 0x3F70101020000000
  %9769 = fptoui float %9768 to i32
  %9770 = icmp ult i32 %9766, %9769
  br i1 %9770, label %9771, label %9940

; <label>:9771                                    ; preds = %9728
  %9772 = fcmp fast ogt float %93, 9.843750e-01
  %9773 = fadd fast float %8566, -4.000000e+00
  %9774 = select i1 %9772, float -4.000000e+00, float %9773
  %9775 = call float @dx.op.binary.f32(i32 35, float %9774, float 0.000000e+00)  ; FMax(a,b)
  %9776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9777 = extractvalue %dx.types.CBufRet.f32 %9776, 0
  %9778 = fadd fast float %9777, %9775
  %9779 = extractvalue %dx.types.CBufRet.f32 %9776, 2
  %9780 = fmul fast float %9778, %9779
  %9781 = call float @dx.op.unary.f32(i32 23, float %9780)  ; Log(value)
  %9782 = extractvalue %dx.types.CBufRet.f32 %9776, 3
  %9783 = fmul fast float %9782, %9781
  %9784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9785 = extractvalue %dx.types.CBufRet.f32 %9784, 2
  %9786 = fmul fast float %9783, %9785
  %9787 = call float @dx.op.unary.f32(i32 7, float %9786)  ; Saturate(value)
  %9788 = uitofp i32 %9766 to float
  %9789 = uitofp i32 %9769 to float
  %9790 = fadd fast float %9788, 5.000000e-01
  %9791 = fadd fast float %9789, 5.000000e-01
  %9792 = fmul fast float %9785, %9790
  %9793 = fmul fast float %9785, %9791
  %9794 = fadd fast float %9792, 0x3F0FFB4800000000
  %9795 = fadd fast float %9793, 0xBF0FFB4800000000
  %9796 = call float @dx.op.binary.f32(i32 35, float %9787, float %9794)  ; FMax(a,b)
  %9797 = call float @dx.op.binary.f32(i32 36, float %9796, float %9795)  ; FMin(a,b)
  %9798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9799 = extractvalue %dx.types.CBufRet.f32 %9798, 1
  %9800 = extractvalue %dx.types.CBufRet.f32 %9798, 2
  %9801 = extractvalue %dx.types.CBufRet.f32 %9798, 0
  %9802 = select i1 %8304, float %9801, float 0.000000e+00
  %9803 = fmul fast float %9799, %9797
  %9804 = fadd fast float %9802, %9803
  %9805 = fadd fast float %9802, %9800
  %9806 = fsub fast float %9799, %9800
  %9807 = fadd fast float %9806, %9802
  %9808 = call float @dx.op.binary.f32(i32 35, float %9804, float %9805)  ; FMax(a,b)
  %9809 = call float @dx.op.binary.f32(i32 36, float %9808, float %9807)  ; FMin(a,b)
  %9810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9741, float %9742, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9811 = extractvalue %dx.types.ResRet.f32 %9810, 0
  %9812 = extractvalue %dx.types.ResRet.f32 %9810, 1
  %9813 = extractvalue %dx.types.ResRet.f32 %9810, 2
  %9814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9815 = extractvalue %dx.types.CBufRet.i32 %9814, 0
  %9816 = extractvalue %dx.types.CBufRet.i32 %9814, 1
  %9817 = uitofp i32 %9815 to float
  %9818 = uitofp i32 %9816 to float
  %9819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9820 = extractvalue %dx.types.CBufRet.f32 %9819, 0
  %9821 = extractvalue %dx.types.CBufRet.f32 %9819, 1
  %9822 = fmul fast float %9817, %9741
  %9823 = fmul fast float %9818, %9742
  %9824 = fadd fast float %9822, -5.000000e-01
  %9825 = fadd fast float %9823, -5.000000e-01
  %9826 = call float @dx.op.unary.f32(i32 22, float %9824)  ; Frc(value)
  %9827 = call float @dx.op.unary.f32(i32 22, float %9825)  ; Frc(value)
  %9828 = fmul fast float %9826, %9826
  %9829 = fmul fast float %9828, %9826
  %9830 = fsub fast float 3.000000e+00, %9826
  %9831 = fmul fast float %9828, %9830
  %9832 = fmul fast float %9826, 3.000000e+00
  %9833 = fmul fast float %9829, 3.000000e+00
  %9834 = fmul fast float %9828, 6.000000e+00
  %9835 = fsub fast float %9833, %9834
  %9836 = fadd fast float %9835, 4.000000e+00
  %9837 = fmul fast float %9836, 0x3FC5555560000000
  %9838 = fmul fast float %9829, -3.000000e+00
  %9839 = fadd fast float %9828, %9826
  %9840 = fmul fast float %9839, 3.000000e+00
  %9841 = fadd fast float %9838, 1.000000e+00
  %9842 = fadd fast float %9841, %9840
  %9843 = fmul fast float %9829, 0x3FC5555560000000
  %9844 = fmul fast float %9827, %9827
  %9845 = fmul fast float %9844, %9827
  %9846 = fsub fast float 3.000000e+00, %9827
  %9847 = fmul fast float %9844, %9846
  %9848 = fmul fast float %9827, 3.000000e+00
  %9849 = fmul fast float %9845, 3.000000e+00
  %9850 = fmul fast float %9844, 6.000000e+00
  %9851 = fsub fast float %9849, %9850
  %9852 = fadd fast float %9851, 4.000000e+00
  %9853 = fmul fast float %9852, 0x3FC5555560000000
  %9854 = fmul fast float %9845, -3.000000e+00
  %9855 = fadd fast float %9844, %9827
  %9856 = fmul fast float %9855, 3.000000e+00
  %9857 = fadd fast float %9854, 1.000000e+00
  %9858 = fadd fast float %9857, %9856
  %9859 = fmul fast float %9845, 0x3FC5555560000000
  %9860 = fadd fast float %9826, 1.000000e+00
  %9861 = fsub fast float 1.000000e+00, %9832
  %9862 = fadd fast float %9861, %9831
  %9863 = fadd fast float %9862, %9836
  %9864 = fmul fast float %9863, 0x3FC5555560000000
  %9865 = fdiv fast float %9837, %9864
  %9866 = fsub fast float %9860, %9865
  %9867 = fsub fast float 1.000000e+00, %9826
  %9868 = fadd fast float %9842, %9829
  %9869 = fmul fast float %9868, 0x3FC5555560000000
  %9870 = fdiv fast float %9843, %9869
  %9871 = fadd fast float %9867, %9870
  %9872 = fadd fast float %9827, 1.000000e+00
  %9873 = fsub fast float 1.000000e+00, %9848
  %9874 = fadd fast float %9873, %9847
  %9875 = fadd fast float %9874, %9852
  %9876 = fmul fast float %9875, 0x3FC5555560000000
  %9877 = fdiv fast float %9853, %9876
  %9878 = fsub fast float %9872, %9877
  %9879 = fsub fast float 1.000000e+00, %9827
  %9880 = fadd fast float %9858, %9845
  %9881 = fmul fast float %9880, 0x3FC5555560000000
  %9882 = fdiv fast float %9859, %9881
  %9883 = fadd fast float %9882, %9879
  %9884 = fmul fast float %9866, %9820
  %9885 = fsub fast float %9741, %9884
  %9886 = fmul fast float %9871, %9820
  %9887 = fadd fast float %9886, %9741
  %9888 = fmul fast float %9883, %9821
  %9889 = fadd fast float %9888, %9742
  %9890 = fmul fast float %9878, %9821
  %9891 = fsub fast float %9742, %9890
  %9892 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9885, float %9891, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9893 = extractvalue %dx.types.ResRet.f32 %9892, 0
  %9894 = extractvalue %dx.types.ResRet.f32 %9892, 1
  %9895 = extractvalue %dx.types.ResRet.f32 %9892, 2
  %9896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9887, float %9891, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9897 = extractvalue %dx.types.ResRet.f32 %9896, 0
  %9898 = extractvalue %dx.types.ResRet.f32 %9896, 1
  %9899 = extractvalue %dx.types.ResRet.f32 %9896, 2
  %9900 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9885, float %9889, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9901 = extractvalue %dx.types.ResRet.f32 %9900, 0
  %9902 = extractvalue %dx.types.ResRet.f32 %9900, 1
  %9903 = extractvalue %dx.types.ResRet.f32 %9900, 2
  %9904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9887, float %9889, float %9809, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9905 = extractvalue %dx.types.ResRet.f32 %9904, 0
  %9906 = extractvalue %dx.types.ResRet.f32 %9904, 1
  %9907 = extractvalue %dx.types.ResRet.f32 %9904, 2
  %9908 = fsub fast float %9901, %9893
  %9909 = fsub fast float %9902, %9894
  %9910 = fsub fast float %9903, %9895
  %9911 = fmul fast float %9908, %9881
  %9912 = fmul fast float %9909, %9881
  %9913 = fmul fast float %9910, %9881
  %9914 = fadd fast float %9911, %9893
  %9915 = fadd fast float %9912, %9894
  %9916 = fadd fast float %9913, %9895
  %9917 = fsub fast float %9905, %9897
  %9918 = fsub fast float %9906, %9898
  %9919 = fsub fast float %9907, %9899
  %9920 = fmul fast float %9917, %9881
  %9921 = fmul fast float %9918, %9881
  %9922 = fmul fast float %9919, %9881
  %9923 = fsub fast float %9897, %9914
  %9924 = fadd fast float %9923, %9920
  %9925 = fsub fast float %9898, %9915
  %9926 = fadd fast float %9925, %9921
  %9927 = fsub fast float %9899, %9916
  %9928 = fadd fast float %9927, %9922
  %9929 = fmul fast float %9924, %9869
  %9930 = fmul fast float %9926, %9869
  %9931 = fmul fast float %9928, %9869
  %9932 = fadd fast float %9929, %9914
  %9933 = fadd fast float %9930, %9915
  %9934 = fadd fast float %9931, %9916
  %9935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9936 = extractvalue %dx.types.CBufRet.f32 %9935, 1
  %9937 = fmul fast float %9932, %9936
  %9938 = fmul fast float %9933, %9936
  %9939 = fmul fast float %9934, %9936
  br label %9940

; <label>:9940                                    ; preds = %9771, %9728
  %9941 = phi float [ %9811, %9771 ], [ 1.000000e+00, %9728 ]
  %9942 = phi float [ %9812, %9771 ], [ 1.000000e+00, %9728 ]
  %9943 = phi float [ %9813, %9771 ], [ 1.000000e+00, %9728 ]
  %9944 = phi float [ %9937, %9771 ], [ 0.000000e+00, %9728 ]
  %9945 = phi float [ %9938, %9771 ], [ 0.000000e+00, %9728 ]
  %9946 = phi float [ %9939, %9771 ], [ 0.000000e+00, %9728 ]
  %9947 = fmul fast float %9944, %8278
  %9948 = fmul fast float %9945, %8280
  %9949 = fmul fast float %9946, %8282
  %9950 = fmul fast float %9941, %9735
  %9951 = call float @dx.op.dot3.f32(i32 55, float %9941, float %9942, float %9943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9952 = call float @dx.op.dot3.f32(i32 55, float %9947, float %9948, float %9949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9953 = select i1 %247, float %9951, float %9941
  %9954 = select i1 %247, float %9951, float %9942
  %9955 = select i1 %247, float 1.000000e+00, float %9943
  %9956 = select i1 %247, float %9952, float %9947
  %9957 = select i1 %247, float 0.000000e+00, float %9948
  %9958 = select i1 %247, float 0.000000e+00, float %9949
  %9959 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9960 = extractvalue %dx.types.CBufRet.i32 %9959, 3
  %9961 = and i32 %9960, 3
  %9962 = icmp ne i32 %9961, 0
  %9963 = and i32 %9960, 4
  %9964 = icmp ne i32 %9963, 0
  %9965 = and i1 %9962, %9964
  %9966 = and i1 %247, %9965
  br i1 %9966, label %9967, label %9973

; <label>:9967                                    ; preds = %9940
  %9968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9969 = extractvalue %dx.types.CBufRet.f32 %9968, 1
  %9970 = fadd fast float %9950, -1.000000e+00
  %9971 = fmul fast float %9969, %9970
  %9972 = fadd fast float %9971, 1.000000e+00
  br label %9973

; <label>:9973                                    ; preds = %9967, %9940
  %9974 = phi float [ %9972, %9967 ], [ %9950, %9940 ]
  %9975 = fadd fast float %9732, %9729
  %9976 = fmul fast float %9953, %9975
  %9977 = fadd fast float %9976, %9956
  %9978 = fadd fast float %9733, %9730
  %9979 = fmul fast float %9954, %9978
  %9980 = fadd fast float %9979, %9957
  %9981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9982 = extractvalue %dx.types.CBufRet.f32 %9981, 0
  br i1 %247, label %9983, label %9998

; <label>:9983                                    ; preds = %9973
  %9984 = fadd fast float %9977, %9980
  %9985 = fmul fast float %9982, %9984
  %9986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9987 = extractvalue %dx.types.CBufRet.f32 %9986, 3
  %9988 = extractvalue %dx.types.CBufRet.f32 %8286, 1
  %9989 = fsub fast float %8291, %8285
  %9990 = fadd fast float %9989, %8292
  %9991 = fsub fast float %9990, %9988
  %9992 = extractvalue %dx.types.CBufRet.f32 %8286, 2
  %9993 = fmul fast float %9991, %9992
  %9994 = call float @dx.op.unary.f32(i32 7, float %9993)  ; Saturate(value)
  %9995 = fsub fast float %9994, %9987
  %9996 = fmul fast float %9995, %9974
  %9997 = fadd fast float %9996, %9987
  br label %10024

; <label>:9998                                    ; preds = %9973
  %9999 = fadd fast float %9734, %9731
  %10000 = fmul fast float %9955, %9999
  %10001 = fadd fast float %10000, %9958
  %10002 = fmul fast float %9982, %9977
  %10003 = fmul fast float %9982, %9980
  %10004 = fmul fast float %9982, %10001
  %10005 = call float @dx.op.binary.f32(i32 35, float %10003, float %10004)  ; FMax(a,b)
  %10006 = call float @dx.op.binary.f32(i32 35, float %10002, float %10005)  ; FMax(a,b)
  %10007 = call float @dx.op.binary.f32(i32 35, float %8280, float %8282)  ; FMax(a,b)
  %10008 = call float @dx.op.binary.f32(i32 35, float %8278, float %10007)  ; FMax(a,b)
  %10009 = call float @dx.op.binary.f32(i32 35, float %10006, float %10008)  ; FMax(a,b)
  %10010 = fcmp fast ugt float %10009, 0x3F10000000000000
  br i1 %10010, label %10012, label %10011

; <label>:10011                                   ; preds = %9998
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10012

; <label>:10012                                   ; preds = %10011, %9998
  %10013 = add i32 %48, 356
  %10014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %10013, i32 undef)  ; BufferLoad(srv,index,wot)
  %10015 = extractvalue %dx.types.ResRet.i32 %10014, 0
  %10016 = and i32 %10015, 32
  %10017 = icmp eq i32 %10016, 0
  br i1 %10017, label %10024, label %10018

; <label>:10018                                   ; preds = %10012
  %10019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10020 = extractvalue %dx.types.CBufRet.f32 %10019, 0
  %10021 = fmul fast float %10020, 0x3FE99999A0000000
  %10022 = fadd fast float %10020, %10002
  %10023 = fadd fast float %10021, %10004
  br label %10024

; <label>:10024                                   ; preds = %10018, %10012, %9983
  %10025 = phi float [ 1.000000e+00, %9983 ], [ %8280, %10018 ], [ %8280, %10012 ]
  %10026 = phi float [ 1.000000e+00, %9983 ], [ %8282, %10018 ], [ %8282, %10012 ]
  %10027 = phi float [ %9985, %9983 ], [ %10022, %10018 ], [ %10002, %10012 ]
  %10028 = phi float [ %9997, %9983 ], [ %10003, %10018 ], [ %10003, %10012 ]
  %10029 = phi float [ 1.000000e+00, %9983 ], [ %10023, %10018 ], [ %10004, %10012 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10030 = call float @dx.op.binary.f32(i32 36, float %10027, float 3.225500e+04)  ; FMin(a,b)
  %10031 = call float @dx.op.binary.f32(i32 36, float %10028, float 3.225500e+04)  ; FMin(a,b)
  %10032 = call float @dx.op.binary.f32(i32 36, float %10029, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10030)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10031)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10032)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10033 = call float @dx.op.binary.f32(i32 36, float %8278, float 3.225500e+04)  ; FMin(a,b)
  %10034 = call float @dx.op.binary.f32(i32 36, float %10025, float 3.225500e+04)  ; FMin(a,b)
  %10035 = call float @dx.op.binary.f32(i32 36, float %10026, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10033)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10034)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10035)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!60}
!dx.entryPoints = !{!61}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !49, !52}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
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
!49 = !{!50, !51}
!50 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!51 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!52 = !{!53, !54, !55, !56, !57, !58, !59}
!53 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!54 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!55 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!56 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!57 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!58 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!59 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!60 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
!61 = !{void ()* @ps_main, !"ps_main", !62, !4, !89}
!62 = !{!63, !85, null}
!63 = !{!64, !67, !68, !70, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !83, !84}
!64 = !{i32 0, !"SV_Position", i8 9, i8 3, !65, i8 4, i32 1, i8 4, i32 0, i8 0, !66}
!65 = !{i32 0}
!66 = !{i32 3, i32 15}
!67 = !{i32 1, !"COLOR", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 1, i8 0, !66}
!68 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 2, i8 0, !69}
!69 = !{i32 3, i32 3}
!70 = !{i32 3, !"NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 3, i8 0, !71}
!71 = !{i32 3, i32 7}
!72 = !{i32 4, !"TANGENT", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 4, i8 0, !66}
!73 = !{i32 5, !"SH_RED", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 5, i8 0, !66}
!74 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 6, i8 0, !66}
!75 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 7, i8 0, !66}
!76 = !{i32 8, !"WGV_TEXCOORD", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 8, i8 0, !71}
!77 = !{i32 9, !"WGV_NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 9, i8 0, !66}
!78 = !{i32 10, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !65, i8 2, i32 1, i8 2, i32 10, i8 0, !69}
!79 = !{i32 11, !"SCEONDARY_NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 11, i8 0, !66}
!80 = !{i32 12, !"OBJECT_POSITION", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 12, i8 0, !71}
!81 = !{i32 13, !"DECAL_VOLUME_GRID_INDEX", i8 5, i8 0, !65, i8 1, i32 1, i8 1, i32 13, i8 0, !82}
!82 = !{i32 3, i32 1}
!83 = !{i32 14, !"PACKED_TRI_DATA", i8 5, i8 0, !65, i8 1, i32 1, i8 4, i32 14, i8 0, !82}
!84 = !{i32 15, !"SV_SampleIndex", i8 5, i8 12, !65, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!85 = !{!86, !87}
!86 = !{i32 0, !"SV_Target", i8 9, i8 16, !65, i8 0, i32 1, i8 4, i32 0, i8 0, !66}
!87 = !{i32 1, !"SV_Target", i8 9, i8 16, !88, i8 0, i32 1, i8 4, i32 1, i8 0, !66}
!88 = !{i32 1}
!89 = !{i32 0, i64 16}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !92}
!92 = !{!"llvm.loop.unroll.disable"}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = !{!99, !99, i64 0}
!99 = !{!"int", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C/C++ TBAA"}
!102 = !{!103, !105, !107, !109}
!103 = distinct !{!103, !104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!104 = distinct !{!104, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!105 = distinct !{!105, !106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!106 = distinct !{!106, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!107 = distinct !{!107, !108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!108 = distinct !{!108, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!109 = distinct !{!109, !110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!110 = distinct !{!110, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}
!112 = !{!113, !113, i64 0}
!113 = !{!"float", !100, i64 0}
!114 = distinct !{!114, !92}
!115 = distinct !{!115, !92}
!116 = distinct !{!116, !"dx.controlflow.hints", i32 1}
!117 = distinct !{!117, !"dx.controlflow.hints", i32 1}
!118 = distinct !{!118, !"dx.controlflow.hints", i32 1}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = !{!125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!125 = distinct !{!125, !126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!126 = distinct !{!126, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!127 = distinct !{!127, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!128 = distinct !{!128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!129 = distinct !{!129, !128, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!130 = distinct !{!130, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!131 = distinct !{!131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!132 = distinct !{!132, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!133 = distinct !{!133, !131, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!134 = distinct !{!134, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!135 = distinct !{!135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!136 = distinct !{!136, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!137 = distinct !{!137, !135, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!138 = distinct !{!138, !139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!139 = distinct !{!139, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"\01?sort@@YAXAIAM00@Z: %c"}
!142 = distinct !{!142, !"\01?sort@@YAXAIAM00@Z"}
!143 = !{!144, !145, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!144 = distinct !{!144, !142, !"\01?sort@@YAXAIAM00@Z: %a"}
!145 = distinct !{!145, !142, !"\01?sort@@YAXAIAM00@Z: %b"}
!146 = !{!145}
!147 = !{!144, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!148 = !{!144}
!149 = !{!145, !141, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!150 = !{!151}
!151 = distinct !{!151, !152, !"\01?sort@@YAXAIAM00@Z: %c"}
!152 = distinct !{!152, !"\01?sort@@YAXAIAM00@Z"}
!153 = !{!154, !155, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!154 = distinct !{!154, !152, !"\01?sort@@YAXAIAM00@Z: %a"}
!155 = distinct !{!155, !152, !"\01?sort@@YAXAIAM00@Z: %b"}
!156 = !{!155}
!157 = !{!154, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!158 = !{!154}
!159 = !{!155, !151, !125, !127, !129, !130, !132, !133, !134, !136, !137, !138}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 2}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}

