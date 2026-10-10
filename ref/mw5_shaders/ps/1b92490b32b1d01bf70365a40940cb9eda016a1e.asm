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
; shader hash: 927a77d99329f4d7bec7f9bfa389c437
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
  %204 = add i32 %49, 360
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = extractvalue %dx.types.ResRet.i32 %205, 1
  %208 = extractvalue %dx.types.ResRet.i32 %205, 2
  %209 = extractvalue %dx.types.ResRet.i32 %205, 3
  %210 = bitcast i32 %206 to float
  %211 = bitcast i32 %207 to float
  %212 = bitcast i32 %208 to float
  %213 = bitcast i32 %209 to float
  %214 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %215 = call float @dx.op.unary.f32(i32 25, float %214)  ; Rsqrt(value)
  %216 = fmul fast float %215, %116
  %217 = fmul fast float %215, %117
  %218 = fmul fast float %215, %118
  %219 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %220 = call float @dx.op.unary.f32(i32 25, float %219)  ; Rsqrt(value)
  %221 = fmul fast float %220, %188
  %222 = fmul fast float %220, %189
  %223 = fmul fast float %220, %190
  %224 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %216, float %217, float %218)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = fmul fast float %224, %224
  %226 = fmul fast float %225, %212
  %227 = fadd fast float %226, %213
  %228 = call float @dx.op.unary.f32(i32 7, float %227)  ; Saturate(value)
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %231 = fmul fast float %230, %219
  %232 = fsub fast float %210, %231
  %233 = fmul fast float %232, %211
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %235 = fmul fast float %234, %228
  %236 = fmul fast float %109, 5.000000e-01
  %237 = fmul fast float %110, 5.000000e-01
  %238 = fptosi float %236 to i32
  %239 = fptosi float %237 to i32
  %240 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %238, i32 %239, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = lshr i32 %241, 18
  %243 = uitofp i32 %242 to float
  %244 = fmul fast float %243, 0x3F4C00EBA0000000
  %245 = call float @dx.op.unary.f32(i32 21, float %244)  ; Exp(value)
  %246 = fadd fast float %245, -1.000000e+00
  %247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %248 = extractvalue %dx.types.Dimensions %247, 0
  %249 = sitofp i32 %248 to float
  %250 = extractvalue %dx.types.Dimensions %247, 1
  %251 = sitofp i32 %250 to float
  %252 = fcmp fast oge float %236, %249
  %253 = fcmp fast oge float %237, %251
  %254 = or i1 %252, %253
  %255 = select i1 %254, float 0x4197782600000000, float %246
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %259 = fmul fast float %257, %109
  %260 = fmul fast float %258, %110
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 114688
  %264 = icmp ne i32 %263, 0
  %265 = select i1 %264, float %259, float 0.000000e+00
  %266 = select i1 %264, float %260, float 0.000000e+00
  %267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %265, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = fmul fast float %268, 2.550000e+02
  %270 = fptoui float %269 to i32
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.i32 %272, 3
  %274 = and i32 %273, 3
  %275 = icmp ne i32 %274, 0
  %276 = and i32 %273, 4
  %277 = icmp ne i32 %276, 0
  %278 = and i1 %275, %277
  br i1 %278, label %279, label %290

; <label>:279                                     ; preds = %0
  %280 = extractvalue %dx.types.CBufRet.f32 %271, 3
  %281 = fmul fast float %280, %110
  %282 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %283 = fmul fast float %282, %109
  %284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %283, float %281, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = fsub fast float 1.000000e+00, %285
  %287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %288 = extractvalue %dx.types.CBufRet.f32 %287, 0
  %289 = fcmp fast olt float %286, %288
  br label %293

; <label>:290                                     ; preds = %0
  %291 = icmp eq i32 %276, 0
  %292 = and i1 %275, %291
  br label %293

; <label>:293                                     ; preds = %290, %279
  %294 = phi i1 [ %289, %279 ], [ %292, %290 ]
  %295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %296 = extractvalue %dx.types.CBufRet.f32 %295, 2
  %297 = fmul fast float %296, 0x3FE3C6EF40000000
  %298 = frem fast float %109, 2.560000e+02
  %299 = frem fast float %110, 2.560000e+02
  %300 = fptoui float %298 to i32
  %301 = fptoui float %299 to i32
  %302 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %300, i32 %301, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = fadd fast float %303, %297
  %305 = call float @dx.op.unary.f32(i32 22, float %304)  ; Frc(value)
  %306 = add i32 %49, 156
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %318 = add i32 %49, 216
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %332 = add i32 %49, 36
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 65535
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %334, 16
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %49, 288
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = fmul fast float %343, 0x3F50624DE0000000
  %347 = fmul fast float %345, 0x3F50624DE0000000
  %348 = add i32 %49, 172
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %360 = add i32 %49, 232
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %374 = add i32 %49, 52
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 65535
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = lshr i32 %376, 16
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = add i32 %49, 304
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = fmul fast float %385, 0x3F50624DE0000000
  %389 = fmul fast float %387, 0x3F50624DE0000000
  %390 = add i32 %49, 188
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %402 = add i32 %49, 248
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %416 = add i32 %49, 68
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 65535
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = lshr i32 %418, 16
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = add i32 %49, 320
  %424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %423, i32 undef)  ; BufferLoad(srv,index,wot)
  %425 = extractvalue %dx.types.ResRet.i32 %424, 0
  %426 = and i32 %425, 65535
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %425, 16
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = fmul fast float %427, 0x3F50624DE0000000
  %431 = fmul fast float %429, 0x3F50624DE0000000
  %432 = add i32 %49, 204
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %444 = add i32 %49, 264
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %458 = add i32 %49, 84
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = add i32 %49, 336
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = and i32 %467, 65535
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %467, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = fmul fast float %469, 0x3F50624DE0000000
  %473 = fmul fast float %471, 0x3F50624DE0000000
  %474 = add i32 %49, 348
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = and i32 %476, 32
  %478 = icmp eq i32 %477, 0
  %479 = and i32 %476, 64
  %480 = icmp eq i32 %479, 0
  %481 = and i32 %476, 128
  %482 = icmp eq i32 %481, 0
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 2
  %486 = icmp eq i32 %485, 0
  br i1 %486, label %502, label %487

; <label>:487                                     ; preds = %293
  %488 = add i32 %49, 540
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = add i32 %490, 0
  %492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %492, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = fmul fast float %497, %89
  %499 = fmul fast float %494, %90
  %500 = fmul fast float %495, %91
  %501 = fmul fast float %496, %92
  br label %502

; <label>:502                                     ; preds = %487, %293
  %503 = phi float [ %92, %293 ], [ %501, %487 ]
  %504 = phi float [ %91, %293 ], [ %500, %487 ]
  %505 = phi float [ %90, %293 ], [ %499, %487 ]
  %506 = phi float [ %89, %293 ], [ %498, %487 ]
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = and i32 %508, 2
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %530, label %511

; <label>:511                                     ; preds = %502
  %512 = add i32 %49, 44
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 1
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, float %505, float 1.000000e+00
  %518 = add i32 %49, 60
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = and i32 %520, 1
  %522 = icmp ne i32 %521, 0
  %523 = select i1 %522, float %504, float 1.000000e+00
  %524 = add i32 %49, 76
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %537 = add i32 %49, 24
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %49, 28
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = or i32 %542, %539
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %1132, label %545

; <label>:545                                     ; preds = %530
  %546 = and i32 %539, 262144
  %547 = icmp ne i32 %546, 0
  %548 = select i1 %547, float %55, float 1.000000e+00
  %549 = select i1 %547, float %56, float 0.000000e+00
  %550 = select i1 %547, float %57, float 0.000000e+00
  %551 = select i1 %547, float %58, float 1.000000e+00
  %552 = select i1 %547, float %59, float %87
  %553 = select i1 %547, float %60, float %88
  %554 = add i32 %49, 284
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = lshr i32 %556, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = fmul fast float %558, 0x3F50624DE0000000
  %560 = add i32 %49, 88
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = lshr i32 %562, 16
  %564 = and i32 %563, 255
  %565 = lshr i32 %562, 24
  %566 = add i32 %49, 292
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 65535
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = lshr i32 %568, 16
  %572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %571)  ; LegacyF16ToF32(value)
  %573 = add i32 %49, 32
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %619 = add i32 %49, 228
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %649 = add i32 %49, 488
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add i32 %651, 0
  %653 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %652, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %653, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %655 = extractvalue %dx.types.ResRet.f32 %654, 0
  %656 = add i32 %49, 100
  %657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %656, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = and i32 %697, 128
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %716, label %700

; <label>:700                                     ; preds = %694
  %701 = add i32 %49, 472
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = add i32 %703, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %704, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %705, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %707 = extractvalue %dx.types.ResRet.f32 %706, 0
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 16
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %920, label %722

; <label>:722                                     ; preds = %716
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %49, 424
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %729, %dx.types.Handle %105, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 512
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %755, label %747

; <label>:747                                     ; preds = %722
  %748 = add i32 %49, 508
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = add i32 %750, 0
  %752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %752, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  br label %755

; <label>:755                                     ; preds = %747, %722
  %756 = phi float [ %754, %747 ], [ 1.000000e+00, %722 ]
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 33554432
  %760 = icmp eq i32 %759, 0
  br i1 %760, label %867, label %761

; <label>:761                                     ; preds = %755
  %762 = add i32 %49, 224
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 65535
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = lshr i32 %764, 16
  %768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %767)  ; LegacyF16ToF32(value)
  %769 = add i32 %49, 228
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %790 = add i32 %49, 220
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %926 = extractvalue %dx.types.CBufRet.i32 %925, 1
  %927 = and i32 %926, 1
  %928 = icmp ne i32 %927, 0
  %929 = add i32 %49, 356
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = and i32 %931, 32
  %933 = icmp ne i32 %932, 0
  %934 = and i1 %928, %933
  %935 = select i1 %934, float 1.000000e+00, float %922
  %936 = select i1 %934, float 0x3FD3333340000000, float %923
  %937 = select i1 %934, float 0x3FD3333340000000, float %924
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 32
  %941 = icmp eq i32 %940, 0
  br i1 %941, label %1014, label %942

; <label>:942                                     ; preds = %920
  %943 = add i32 %49, 92
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = add i32 %49, 440
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = add i32 %948, 0
  %950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %950, %dx.types.Handle %105, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = and i32 %991, 67108864
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1010, label %994

; <label>:994                                     ; preds = %942
  %995 = add i32 %49, 280
  %996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.i32 %996, 0
  %998 = and i32 %997, 65535
  %999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %998)  ; LegacyF16ToF32(value)
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1019 = add i32 %49, 160
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = lshr i32 %1021, 22
  %1023 = shl nuw nsw i32 %1022, 5
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = and i32 %1026, 64
  %1028 = icmp eq i32 %1027, 0
  br i1 %1028, label %1062, label %1029

; <label>:1029                                    ; preds = %1014
  %1030 = add i32 %49, 456
  %1031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1030, i32 undef)  ; BufferLoad(srv,index,wot)
  %1032 = extractvalue %dx.types.ResRet.i32 %1031, 0
  %1033 = add i32 %1032, 0
  %1034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1036 = extractvalue %dx.types.ResRet.i32 %1035, 0
  %1037 = and i32 %1036, 131072
  %1038 = icmp eq i32 %1037, 0
  %1039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1034, %dx.types.Handle %105, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = fmul fast float %1040, %311
  %1044 = fmul fast float %1041, %314
  %1045 = fmul fast float %1042, %317
  br i1 %1038, label %1052, label %1046

; <label>:1046                                    ; preds = %1029
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %1067, 10240
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1114, label %1070

; <label>:1070                                    ; preds = %1062
  %1071 = add i32 %49, 524
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %106, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 1048576
  %1082 = icmp ne i32 %1081, 0
  %1083 = and i32 %1080, 8192
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1100, label %1085

; <label>:1085                                    ; preds = %1070
  %1086 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1087 = select i1 %1082, float %1086, float %1077
  %1088 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1089 = select i1 %1082, float %1088, float %1077
  %1090 = add i32 %49, 96
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = lshr i32 %1092, 16
  %1094 = and i32 %1093, 255
  %1095 = uitofp i32 %1094 to float
  %1096 = fmul fast float %1095, 0x3F80101020000000
  %1097 = fmul fast float %1096, %1089
  %1098 = fmul fast float %1096, %1077
  %1099 = fmul fast float %1096, %1087
  br label %1100

; <label>:1100                                    ; preds = %1085, %1070
  %1101 = phi float [ %1097, %1085 ], [ 0.000000e+00, %1070 ]
  %1102 = phi float [ %1098, %1085 ], [ 0.000000e+00, %1070 ]
  %1103 = phi float [ %1099, %1085 ], [ 0.000000e+00, %1070 ]
  %1104 = and i32 %1080, 2048
  %1105 = icmp eq i32 %1104, 0
  br i1 %1105, label %1114, label %1106

; <label>:1106                                    ; preds = %1100
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = shl i32 %1108, 4
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = fmul fast float %1111, %1078
  %1113 = call float @dx.op.binary.f32(i32 35, float %1112, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1114

; <label>:1114                                    ; preds = %1106, %1100, %1062
  %1115 = phi float [ %1101, %1106 ], [ %1101, %1100 ], [ 0.000000e+00, %1062 ]
  %1116 = phi float [ %1102, %1106 ], [ %1102, %1100 ], [ 0.000000e+00, %1062 ]
  %1117 = phi float [ %1103, %1106 ], [ %1103, %1100 ], [ 0.000000e+00, %1062 ]
  %1118 = phi float [ %1113, %1106 ], [ 0x3F70101020000000, %1100 ], [ 0x3F70101020000000, %1062 ]
  %1119 = add i32 %49, 96
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = lshr i32 %1121, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = call float @dx.op.dot3.f32(i32 55, float %935, float %936, float %937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1128 = fmul fast float %1126, %1127
  %1129 = fadd fast float %1128, %1123
  %1130 = fmul fast float %1129, 0x3F70101020000000
  %1131 = call float @dx.op.unary.f32(i32 7, float %1130)  ; Saturate(value)
  br label %1132

; <label>:1132                                    ; preds = %1114, %530
  %1133 = phi float [ 0.000000e+00, %530 ], [ %1016, %1114 ]
  %1134 = phi float [ 0.000000e+00, %530 ], [ %1017, %1114 ]
  %1135 = phi float [ 0.000000e+00, %530 ], [ %935, %1114 ]
  %1136 = phi float [ 0.000000e+00, %530 ], [ %936, %1114 ]
  %1137 = phi float [ 0.000000e+00, %530 ], [ %937, %1114 ]
  %1138 = phi float [ 0.000000e+00, %530 ], [ %1063, %1114 ]
  %1139 = phi float [ 0.000000e+00, %530 ], [ %1064, %1114 ]
  %1140 = phi float [ 0.000000e+00, %530 ], [ %1065, %1114 ]
  %1141 = phi float [ 0.000000e+00, %530 ], [ %1115, %1114 ]
  %1142 = phi float [ 0.000000e+00, %530 ], [ %1116, %1114 ]
  %1143 = phi float [ 0.000000e+00, %530 ], [ %1117, %1114 ]
  %1144 = phi float [ 0.000000e+00, %530 ], [ %921, %1114 ]
  %1145 = phi float [ 0.000000e+00, %530 ], [ %717, %1114 ]
  %1146 = phi float [ 0.000000e+00, %530 ], [ %1015, %1114 ]
  %1147 = phi float [ 0.000000e+00, %530 ], [ %1018, %1114 ]
  %1148 = phi float [ 0.000000e+00, %530 ], [ %1118, %1114 ]
  %1149 = phi float [ 0.000000e+00, %530 ], [ %1131, %1114 ]
  br i1 %478, label %1963, label %1150

; <label>:1150                                    ; preds = %1132
  %1151 = icmp ult i32 %536, 2
  %1152 = add i32 %49, 40
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = add i32 %49, 44
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = or i32 %1157, %1154
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1963, label %1160

; <label>:1160                                    ; preds = %1150
  %1161 = and i32 %1154, 262144
  %1162 = icmp ne i32 %1161, 0
  %1163 = select i1 %1162, float %55, float 1.000000e+00
  %1164 = select i1 %1162, float %56, float 0.000000e+00
  %1165 = select i1 %1162, float %57, float 0.000000e+00
  %1166 = select i1 %1162, float %58, float 1.000000e+00
  %1167 = select i1 %1162, float %59, float %87
  %1168 = select i1 %1162, float %60, float %88
  %1169 = add i32 %49, 300
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = lshr i32 %1171, 16
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = fmul fast float %1173, 0x3F50624DE0000000
  %1175 = add i32 %49, 104
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 16
  %1179 = and i32 %1178, 255
  %1180 = lshr i32 %1177, 24
  %1181 = add i32 %49, 308
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 65535
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1183, 16
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = add i32 %49, 48
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = lshr i32 %1190, 22
  %1192 = shl nuw nsw i32 %1191, 5
  %1193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1192)  ; LegacyF16ToF32(value)
  %1194 = shl i32 %1190, 4
  %1195 = and i32 %1194, 32752
  %1196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1195)  ; LegacyF16ToF32(value)
  %1197 = lshr i32 %1190, 7
  %1198 = and i32 %1197, 32752
  %1199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1198)  ; LegacyF16ToF32(value)
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1201 = extractvalue %dx.types.CBufRet.f32 %1200, 3
  %1202 = fmul fast float %1201, 1.000000e+03
  %1203 = fmul fast float %388, %1202
  %1204 = call float @dx.op.unary.f32(i32 22, float %1203)  ; Frc(value)
  %1205 = fadd fast float %1204, %378
  %1206 = fmul fast float %389, %1202
  %1207 = call float @dx.op.unary.f32(i32 22, float %1206)  ; Frc(value)
  %1208 = fadd fast float %1207, %380
  %1209 = fmul fast float %1174, %1202
  %1210 = call float @dx.op.unary.f32(i32 22, float %1209)  ; Frc(value)
  %1211 = fmul fast float %1210, 0x401921FB60000000
  %1212 = fadd fast float %1211, %1193
  %1213 = call float @dx.op.unary.f32(i32 13, float %1212)  ; Sin(value)
  %1214 = call float @dx.op.unary.f32(i32 12, float %1212)  ; Cos(value)
  %1215 = fsub fast float -0.000000e+00, %1213
  %1216 = fadd fast float %1167, -5.000000e-01
  %1217 = fadd fast float %1168, -5.000000e-01
  %1218 = fmul fast float %1185, %1216
  %1219 = fmul fast float %1187, %1217
  %1220 = fadd fast float %1218, 5.000000e-01
  %1221 = fadd fast float %1219, 5.000000e-01
  %1222 = fmul fast float %1196, %1220
  %1223 = fmul fast float %1199, %1221
  %1224 = fmul fast float %1214, %1222
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %1223, float %1224)  ; FMad(a,b,c)
  %1226 = fmul fast float %1213, %1222
  %1227 = call float @dx.op.tertiary.f32(i32 46, float %1214, float %1223, float %1226)  ; FMad(a,b,c)
  %1228 = fadd fast float %1205, %1225
  %1229 = fadd fast float %1208, %1227
  %1230 = icmp ugt i32 %1179, 1
  %1231 = icmp ugt i32 %1177, 33554431
  %1232 = or i1 %1231, %1230
  br i1 %1232, label %1233, label %1258

; <label>:1233                                    ; preds = %1160
  %1234 = add i32 %49, 244
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = lshr i32 %1236, 16
  %1238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1237)  ; LegacyF16ToF32(value)
  %1239 = fmul fast float %1201, %1238
  %1240 = call float @dx.op.unary.f32(i32 22, float %1239)  ; Frc(value)
  %1241 = mul nuw nsw i32 %1179, %1180
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1240, %1242
  %1244 = call float @dx.op.unary.f32(i32 27, float %1243)  ; Round_ni(value)
  %1245 = fptoui float %1244 to i32
  %1246 = urem i32 %1245, %1179
  %1247 = udiv i32 %1245, %1180
  %1248 = call float @dx.op.unary.f32(i32 22, float %1228)  ; Frc(value)
  %1249 = call float @dx.op.unary.f32(i32 22, float %1229)  ; Frc(value)
  %1250 = uitofp i32 %1246 to float
  %1251 = uitofp i32 %1247 to float
  %1252 = fadd fast float %1248, %1250
  %1253 = fadd fast float %1249, %1251
  %1254 = uitofp i32 %1179 to float
  %1255 = uitofp i32 %1180 to float
  %1256 = fdiv fast float %1252, %1254
  %1257 = fdiv fast float %1253, %1255
  br label %1258

; <label>:1258                                    ; preds = %1233, %1160
  %1259 = phi float [ %1256, %1233 ], [ %1228, %1160 ]
  %1260 = phi float [ %1257, %1233 ], [ %1229, %1160 ]
  %1261 = and i32 %1154, 256
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1309, label %1263

; <label>:1263                                    ; preds = %1258
  %1264 = add i32 %49, 492
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %106, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = add i32 %49, 116
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = shl i32 %1273, 4
  %1275 = and i32 %1274, 32752
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = lshr i32 %1273, 7
  %1278 = and i32 %1277, 32752
  %1279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1278)  ; LegacyF16ToF32(value)
  %1280 = fsub fast float 1.000000e+00, %533
  %1281 = call float @dx.op.binary.f32(i32 35, float %1280, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1282 = bitcast float %533 to i32
  %1283 = sitofp i32 %1282 to float
  %1284 = fadd fast float %1283, 0xC1CFBF8940000000
  %1285 = fmul fast float %1279, %1284
  %1286 = fadd fast float %1285, 0x41CFBF8940000000
  %1287 = fptosi float %1286 to i32
  %1288 = bitcast i32 %1287 to float
  %1289 = bitcast float %1281 to i32
  %1290 = sitofp i32 %1289 to float
  %1291 = fadd fast float %1290, 0xC1CFBF8940000000
  %1292 = fmul fast float %1291, %1279
  %1293 = fadd fast float %1292, 0x41CFBF8940000000
  %1294 = fptosi float %1293 to i32
  %1295 = bitcast i32 %1294 to float
  %1296 = fmul fast float %1288, %1276
  %1297 = fmul fast float %1295, %1276
  %1298 = fsub fast float %1281, %1296
  %1299 = fadd fast float %1297, %1281
  %1300 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1301 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1302 = fsub fast float %1270, %1300
  %1303 = fsub fast float %1301, %1300
  %1304 = bitcast float %1303 to i32
  %1305 = sub nsw i32 2129859010, %1304
  %1306 = bitcast i32 %1305 to float
  %1307 = fmul fast float %1306, %1302
  %1308 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  br label %1309

; <label>:1309                                    ; preds = %1263, %1258
  %1310 = phi float [ %1308, %1263 ], [ %533, %1258 ]
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 128
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1331, label %1315

; <label>:1315                                    ; preds = %1309
  %1316 = add i32 %49, 476
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = add i32 %1318, 0
  %1320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1320, %dx.types.Handle %106, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1324 = extractvalue %dx.types.ResRet.i32 %1323, 0
  %1325 = and i32 %1324, 524288
  %1326 = icmp ne i32 %1325, 0
  %1327 = fcmp fast ogt float %1322, 0x3FE0101020000000
  %1328 = select i1 %1327, float 1.000000e+00, float 0.000000e+00
  %1329 = select i1 %1326, float %1328, float %1322
  %1330 = fmul fast float %1329, %1310
  br label %1331

; <label>:1331                                    ; preds = %1315, %1309
  %1332 = phi float [ %1330, %1315 ], [ %1310, %1309 ]
  %1333 = fcmp fast ult float %1332, 0x3F70101020000000
  br i1 %1333, label %1963, label %1334

; <label>:1334                                    ; preds = %1331
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = and i32 %1336, 16
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1537, label %1339

; <label>:1339                                    ; preds = %1334
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %49, 428
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1346, %dx.types.Handle %105, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1348 = extractvalue %dx.types.ResRet.f32 %1347, 0
  %1349 = extractvalue %dx.types.ResRet.f32 %1347, 1
  %1350 = extractvalue %dx.types.ResRet.f32 %1347, 2
  %1351 = extractvalue %dx.types.ResRet.f32 %1347, 3
  %1352 = and i32 %1341, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = lshr i32 %1341, 8
  %1355 = and i32 %1354, 255
  %1356 = uitofp i32 %1355 to float
  %1357 = fmul fast float %1351, %1353
  %1358 = fadd fast float %1357, %1356
  %1359 = fmul fast float %1358, 0x3F70101000000000
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 512
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1372, label %1364

; <label>:1364                                    ; preds = %1339
  %1365 = add i32 %49, 512
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %1367, 0
  %1369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1369, %dx.types.Handle %106, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  br label %1372

; <label>:1372                                    ; preds = %1364, %1339
  %1373 = phi float [ %1371, %1364 ], [ 1.000000e+00, %1339 ]
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 33554432
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1484, label %1378

; <label>:1378                                    ; preds = %1372
  %1379 = add i32 %49, 240
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 65535
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = lshr i32 %1381, 16
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = add i32 %49, 244
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = and i32 %1388, 65535
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = lshr i32 %1392, 24
  %1394 = uitofp i32 %1393 to float
  %1395 = fmul fast float %1394, 0x3F70101020000000
  %1396 = and i32 %1392, 255
  %1397 = uitofp i32 %1396 to float
  %1398 = fmul fast float %1397, 0x3F70101020000000
  %1399 = lshr i32 %1392, 8
  %1400 = and i32 %1399, 255
  %1401 = uitofp i32 %1400 to float
  %1402 = fmul fast float %1401, 0x3F70101020000000
  %1403 = lshr i32 %1392, 16
  %1404 = and i32 %1403, 255
  %1405 = uitofp i32 %1404 to float
  %1406 = fmul fast float %1405, 0x3F70101020000000
  %1407 = add i32 %49, 236
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
  %1409 = extractvalue %dx.types.ResRet.i32 %1408, 0
  %1410 = lshr i32 %1409, 24
  %1411 = uitofp i32 %1410 to float
  %1412 = fmul fast float %1411, 0x3F70101020000000
  %1413 = and i32 %1409, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = fmul fast float %1414, 0x3F70101020000000
  %1416 = lshr i32 %1409, 8
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101020000000
  %1420 = lshr i32 %1409, 16
  %1421 = and i32 %1420, 255
  %1422 = uitofp i32 %1421 to float
  %1423 = fmul fast float %1422, 0x3F70101020000000
  %1424 = bitcast float %1348 to i32
  %1425 = ashr i32 %1424, 1
  %1426 = sub nsw i32 1597463174, %1425
  %1427 = bitcast i32 %1426 to float
  %1428 = fmul fast float %1348, 5.000000e-01
  %1429 = fmul fast float %1427, %1427
  %1430 = fmul fast float %1429, %1428
  %1431 = fsub fast float 1.500000e+00, %1430
  %1432 = fmul fast float %1427, %1348
  %1433 = fmul fast float %1432, %1431
  %1434 = bitcast float %1349 to i32
  %1435 = ashr i32 %1434, 1
  %1436 = sub nsw i32 1597463174, %1435
  %1437 = bitcast i32 %1436 to float
  %1438 = fmul fast float %1349, 5.000000e-01
  %1439 = fmul fast float %1437, %1437
  %1440 = fmul fast float %1439, %1438
  %1441 = fsub fast float 1.500000e+00, %1440
  %1442 = fmul fast float %1437, %1349
  %1443 = fmul fast float %1442, %1441
  %1444 = bitcast float %1350 to i32
  %1445 = ashr i32 %1444, 1
  %1446 = sub nsw i32 1597463174, %1445
  %1447 = bitcast i32 %1446 to float
  %1448 = fmul fast float %1350, 5.000000e-01
  %1449 = fmul fast float %1447, %1447
  %1450 = fmul fast float %1449, %1448
  %1451 = fsub fast float 1.500000e+00, %1450
  %1452 = fmul fast float %1447, %1350
  %1453 = fmul fast float %1452, %1451
  %1454 = fsub fast float %1433, %1415
  %1455 = fsub fast float %1443, %1419
  %1456 = fsub fast float %1453, %1423
  %1457 = fmul fast float %1454, %1383
  %1458 = fmul fast float %1455, %1385
  %1459 = fmul fast float %1456, %1390
  %1460 = fadd fast float %1457, %1398
  %1461 = fadd fast float %1458, %1402
  %1462 = fadd fast float %1459, %1406
  %1463 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1464 = call float @dx.op.unary.f32(i32 7, float %1461)  ; Saturate(value)
  %1465 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  %1466 = fmul fast float %1463, %1463
  %1467 = fmul fast float %1464, %1464
  %1468 = fmul fast float %1465, %1465
  %1469 = fsub fast float %1466, %1348
  %1470 = fsub fast float %1467, %1349
  %1471 = fsub fast float %1468, %1350
  %1472 = fmul fast float %1469, %1373
  %1473 = fmul fast float %1470, %1373
  %1474 = fmul fast float %1471, %1373
  %1475 = fadd fast float %1472, %1348
  %1476 = fadd fast float %1473, %1349
  %1477 = fadd fast float %1474, %1350
  %1478 = fadd fast float %1395, %1359
  %1479 = fsub fast float %1478, %1412
  %1480 = call float @dx.op.unary.f32(i32 7, float %1479)  ; Saturate(value)
  %1481 = fsub fast float %1480, %1359
  %1482 = fmul fast float %1481, %1373
  %1483 = fadd fast float %1482, %1359
  br label %1537

; <label>:1484                                    ; preds = %1372
  %1485 = and i32 %1375, 134217728
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1521, label %1487

; <label>:1487                                    ; preds = %1484
  %1488 = call float @dx.op.unary.f32(i32 24, float %365)  ; Sqrt(value)
  %1489 = call float @dx.op.unary.f32(i32 24, float %369)  ; Sqrt(value)
  %1490 = call float @dx.op.unary.f32(i32 24, float %373)  ; Sqrt(value)
  %1491 = fadd fast float %1488, -5.000000e-01
  %1492 = fadd fast float %1489, -5.000000e-01
  %1493 = fadd fast float %1490, -5.000000e-01
  %1494 = fmul fast float %1491, %1373
  %1495 = fmul fast float %1492, %1373
  %1496 = fmul fast float %1493, %1373
  %1497 = fadd fast float %1494, 5.000000e-01
  %1498 = fadd fast float %1495, 5.000000e-01
  %1499 = fadd fast float %1496, 5.000000e-01
  %1500 = call float @dx.op.unary.f32(i32 24, float %1348)  ; Sqrt(value)
  %1501 = call float @dx.op.unary.f32(i32 24, float %1349)  ; Sqrt(value)
  %1502 = call float @dx.op.unary.f32(i32 24, float %1350)  ; Sqrt(value)
  %1503 = fmul fast float %1497, 2.000000e+00
  %1504 = fsub fast float 1.000000e+00, %1503
  %1505 = fmul fast float %1504, %1500
  %1506 = fadd fast float %1505, %1503
  %1507 = fmul fast float %1506, %1500
  %1508 = fmul fast float %1498, 2.000000e+00
  %1509 = fsub fast float 1.000000e+00, %1508
  %1510 = fmul fast float %1509, %1501
  %1511 = fadd fast float %1510, %1508
  %1512 = fmul fast float %1511, %1501
  %1513 = fmul fast float %1499, 2.000000e+00
  %1514 = fsub fast float 1.000000e+00, %1513
  %1515 = fmul fast float %1514, %1502
  %1516 = fadd fast float %1515, %1513
  %1517 = fmul fast float %1516, %1502
  %1518 = fmul fast float %1507, %1507
  %1519 = fmul fast float %1512, %1512
  %1520 = fmul fast float %1517, %1517
  br label %1537

; <label>:1521                                    ; preds = %1484
  %1522 = fmul fast float %365, %365
  %1523 = fmul fast float %369, %369
  %1524 = fmul fast float %373, %373
  %1525 = fadd fast float %1522, -1.000000e+00
  %1526 = fadd fast float %1523, -1.000000e+00
  %1527 = fadd fast float %1524, -1.000000e+00
  %1528 = fmul fast float %1373, %1525
  %1529 = fmul fast float %1373, %1526
  %1530 = fmul fast float %1373, %1527
  %1531 = fadd fast float %1528, 1.000000e+00
  %1532 = fadd fast float %1529, 1.000000e+00
  %1533 = fadd fast float %1530, 1.000000e+00
  %1534 = fmul fast float %1531, %1348
  %1535 = fmul fast float %1532, %1349
  %1536 = fmul fast float %1533, %1350
  br label %1537

; <label>:1537                                    ; preds = %1521, %1487, %1378, %1334
  %1538 = phi float [ %1483, %1378 ], [ %1359, %1487 ], [ %1359, %1521 ], [ 0x3FA23C0BE0000000, %1334 ]
  %1539 = phi float [ %1475, %1378 ], [ %1518, %1487 ], [ %1534, %1521 ], [ 1.000000e+00, %1334 ]
  %1540 = phi float [ %1476, %1378 ], [ %1519, %1487 ], [ %1535, %1521 ], [ 1.000000e+00, %1334 ]
  %1541 = phi float [ %1477, %1378 ], [ %1520, %1487 ], [ %1536, %1521 ], [ 1.000000e+00, %1334 ]
  %1542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.i32 %1542, 1
  %1544 = and i32 %1543, 1
  %1545 = icmp ne i32 %1544, 0
  %1546 = add i32 %49, 356
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 32
  %1550 = icmp ne i32 %1549, 0
  %1551 = and i1 %1545, %1550
  %1552 = select i1 %1551, float 1.000000e+00, float %1539
  %1553 = select i1 %1551, float 0x3FD3333340000000, float %1540
  %1554 = select i1 %1551, float 0x3FD3333340000000, float %1541
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 32
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1631, label %1559

; <label>:1559                                    ; preds = %1537
  %1560 = add i32 %49, 108
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %49, 444
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %1565, 0
  %1567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1567, %dx.types.Handle %105, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1569 = extractvalue %dx.types.ResRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.ResRet.f32 %1568, 1
  %1571 = extractvalue %dx.types.ResRet.f32 %1568, 2
  %1572 = extractvalue %dx.types.ResRet.f32 %1568, 3
  %1573 = and i32 %1562, 255
  %1574 = uitofp i32 %1573 to float
  %1575 = lshr i32 %1562, 8
  %1576 = and i32 %1575, 255
  %1577 = uitofp i32 %1576 to float
  %1578 = lshr i32 %1562, 16
  %1579 = and i32 %1578, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = fmul fast float %1580, 0x3F70101000000000
  %1582 = fmul fast float %1569, %1574
  %1583 = fadd fast float %1582, %1577
  %1584 = fmul fast float %1583, 0x3F70101000000000
  %1585 = fadd fast float %1570, -5.000000e-01
  %1586 = fadd fast float %1572, -5.000000e-01
  %1587 = fmul fast float %1585, %1581
  %1588 = fmul fast float %1586, %1581
  %1589 = fadd fast float %1587, 5.000000e-01
  %1590 = fadd fast float %1588, 5.000000e-01
  %1591 = fmul fast float %1589, 2.000000e+00
  %1592 = fadd fast float %1591, -1.000000e+00
  %1593 = fmul fast float %1590, 2.000000e+00
  %1594 = fadd fast float %1593, -1.000000e+00
  %1595 = fadd fast float %1592, %1594
  %1596 = fmul fast float %1595, 5.000000e-01
  %1597 = fsub fast float %1592, %1594
  %1598 = fmul fast float %1597, 5.000000e-01
  %1599 = call float @dx.op.unary.f32(i32 6, float %1596)  ; FAbs(value)
  %1600 = fsub fast float 1.000000e+00, %1599
  %1601 = call float @dx.op.unary.f32(i32 6, float %1598)  ; FAbs(value)
  %1602 = fsub fast float %1600, %1601
  %1603 = call float @dx.op.dot3.f32(i32 55, float %1596, float %1598, float %1602, float %1596, float %1598, float %1602)  ; Dot3(ax,ay,az,bx,by,bz)
  %1604 = call float @dx.op.unary.f32(i32 25, float %1603)  ; Rsqrt(value)
  %1605 = fmul fast float %1596, %1604
  %1606 = fmul fast float %1598, %1604
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 67108864
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1627, label %1611

; <label>:1611                                    ; preds = %1559
  %1612 = add i32 %49, 296
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 65535
  %1616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1615)  ; LegacyF16ToF32(value)
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 65535
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = lshr i32 %1614, 16
  %1622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1621)  ; LegacyF16ToF32(value)
  %1623 = fsub fast float %1584, %1622
  %1624 = fmul fast float %1623, %1616
  %1625 = fadd fast float %1624, %1620
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  br label %1627

; <label>:1627                                    ; preds = %1611, %1559
  %1628 = phi float [ %1626, %1611 ], [ %1584, %1559 ]
  %1629 = call float @dx.op.dot2.f32(i32 54, float %1605, float %1606, float %1163, float %1164)  ; Dot2(ax,ay,bx,by)
  %1630 = call float @dx.op.dot2.f32(i32 54, float %1605, float %1606, float %1165, float %1166)  ; Dot2(ax,ay,bx,by)
  br label %1631

; <label>:1631                                    ; preds = %1627, %1537
  %1632 = phi float [ %1628, %1627 ], [ 0x3FD6666660000000, %1537 ]
  %1633 = phi float [ %1629, %1627 ], [ 0.000000e+00, %1537 ]
  %1634 = phi float [ %1630, %1627 ], [ 0.000000e+00, %1537 ]
  %1635 = phi float [ %1571, %1627 ], [ 1.000000e+00, %1537 ]
  %1636 = add i32 %49, 176
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = lshr i32 %1638, 22
  %1640 = shl nuw nsw i32 %1639, 5
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 64
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1679, label %1646

; <label>:1646                                    ; preds = %1631
  %1647 = add i32 %49, 460
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = add i32 %1649, 0
  %1651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 131072
  %1655 = icmp eq i32 %1654, 0
  %1656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1651, %dx.types.Handle %105, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.ResRet.f32 %1656, 1
  %1659 = extractvalue %dx.types.ResRet.f32 %1656, 2
  %1660 = fmul fast float %1657, %353
  %1661 = fmul fast float %1658, %356
  %1662 = fmul fast float %1659, %359
  br i1 %1655, label %1669, label %1663

; <label>:1663                                    ; preds = %1646
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.f32 %1664, 0
  %1666 = fmul fast float %1665, %1660
  %1667 = fmul fast float %1665, %1661
  %1668 = fmul fast float %1665, %1662
  br label %1669

; <label>:1669                                    ; preds = %1663, %1646
  %1670 = phi float [ %1666, %1663 ], [ %1660, %1646 ]
  %1671 = phi float [ %1667, %1663 ], [ %1661, %1646 ]
  %1672 = phi float [ %1668, %1663 ], [ %1662, %1646 ]
  %1673 = fmul fast float %1670, %1641
  %1674 = select i1 %294, float %1673, float %1670
  %1675 = call float @dx.op.dot3.f32(i32 55, float %1674, float %1671, float %1672, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1676 = select i1 %294, float 0.000000e+00, float %1670
  %1677 = select i1 %294, float %1675, float %1671
  %1678 = select i1 %294, float 0.000000e+00, float %1672
  br label %1679

; <label>:1679                                    ; preds = %1669, %1631
  %1680 = phi float [ %1676, %1669 ], [ 0.000000e+00, %1631 ]
  %1681 = phi float [ %1677, %1669 ], [ 0.000000e+00, %1631 ]
  %1682 = phi float [ %1678, %1669 ], [ 0.000000e+00, %1631 ]
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = and i32 %1684, 10240
  %1686 = icmp eq i32 %1685, 0
  br i1 %1686, label %1731, label %1687

; <label>:1687                                    ; preds = %1679
  %1688 = add i32 %49, 528
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = add i32 %1690, 0
  %1692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1692, %dx.types.Handle %106, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 3
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = and i32 %1697, 1048576
  %1699 = icmp ne i32 %1698, 0
  %1700 = and i32 %1697, 8192
  %1701 = icmp eq i32 %1700, 0
  br i1 %1701, label %1717, label %1702

; <label>:1702                                    ; preds = %1687
  %1703 = extractvalue %dx.types.ResRet.f32 %1693, 2
  %1704 = select i1 %1699, float %1703, float %1694
  %1705 = extractvalue %dx.types.ResRet.f32 %1693, 0
  %1706 = select i1 %1699, float %1705, float %1694
  %1707 = add i32 %49, 112
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = lshr i32 %1709, 16
  %1711 = and i32 %1710, 255
  %1712 = uitofp i32 %1711 to float
  %1713 = fmul fast float %1712, 0x3F80101020000000
  %1714 = fmul fast float %1713, %1706
  %1715 = fmul fast float %1713, %1694
  %1716 = fmul fast float %1713, %1704
  br label %1717

; <label>:1717                                    ; preds = %1702, %1687
  %1718 = phi float [ %1714, %1702 ], [ 0.000000e+00, %1687 ]
  %1719 = phi float [ %1715, %1702 ], [ 0.000000e+00, %1687 ]
  %1720 = phi float [ %1716, %1702 ], [ 0.000000e+00, %1687 ]
  %1721 = and i32 %1697, 2048
  %1722 = icmp eq i32 %1721, 0
  br i1 %1722, label %1731, label %1723

; <label>:1723                                    ; preds = %1717
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.i32 %1724, 0
  %1726 = shl i32 %1725, 4
  %1727 = and i32 %1726, 32752
  %1728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1727)  ; LegacyF16ToF32(value)
  %1729 = fmul fast float %1728, %1695
  %1730 = call float @dx.op.binary.f32(i32 35, float %1729, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1731

; <label>:1731                                    ; preds = %1723, %1717, %1679
  %1732 = phi float [ %1718, %1723 ], [ %1718, %1717 ], [ 0.000000e+00, %1679 ]
  %1733 = phi float [ %1719, %1723 ], [ %1719, %1717 ], [ 0.000000e+00, %1679 ]
  %1734 = phi float [ %1720, %1723 ], [ %1720, %1717 ], [ 0.000000e+00, %1679 ]
  %1735 = phi float [ %1730, %1723 ], [ 0x3F70101020000000, %1717 ], [ 0x3F70101020000000, %1679 ]
  %1736 = add i32 %49, 112
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = and i32 %1738, 255
  %1740 = uitofp i32 %1739 to float
  %1741 = lshr i32 %1738, 8
  %1742 = and i32 %1741, 255
  %1743 = uitofp i32 %1742 to float
  %1744 = call float @dx.op.dot3.f32(i32 55, float %1552, float %1553, float %1554, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = fmul fast float %1743, %1744
  %1746 = fadd fast float %1745, %1740
  %1747 = fmul fast float %1746, 0x3F70101020000000
  %1748 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  br i1 %1151, label %1749, label %1757

; <label>:1749                                    ; preds = %1731
  %1750 = fsub fast float 1.000000e+00, %1332
  %1751 = fmul fast float %1750, %1135
  %1752 = fmul fast float %1750, %1136
  %1753 = fmul fast float %1750, %1137
  %1754 = fmul fast float %1750, %1138
  %1755 = fmul fast float %1750, %1139
  %1756 = fmul fast float %1750, %1140
  br label %1757

; <label>:1757                                    ; preds = %1749, %1731
  %1758 = phi float [ %1751, %1749 ], [ %1135, %1731 ]
  %1759 = phi float [ %1752, %1749 ], [ %1136, %1731 ]
  %1760 = phi float [ %1753, %1749 ], [ %1137, %1731 ]
  %1761 = phi float [ %1754, %1749 ], [ %1138, %1731 ]
  %1762 = phi float [ %1755, %1749 ], [ %1139, %1731 ]
  %1763 = phi float [ %1756, %1749 ], [ %1140, %1731 ]
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = and i32 %1765, 3
  %1767 = icmp eq i32 %1766, 3
  br i1 %1767, label %1846, label %1768

; <label>:1768                                    ; preds = %1757
  %1769 = and i32 %1765, 16
  %1770 = icmp ne i32 %1769, 0
  %1771 = select i1 %1770, float %1332, float 0.000000e+00
  %1772 = icmp eq i32 %1766, 0
  br i1 %1772, label %1773, label %1801

; <label>:1773                                    ; preds = %1768
  %1774 = and i32 %1765, 64
  %1775 = icmp ne i32 %1774, 0
  %1776 = select i1 %1775, float %1332, float 0.000000e+00
  %1777 = fsub fast float %1552, %1758
  %1778 = fsub fast float %1553, %1759
  %1779 = fsub fast float %1554, %1760
  %1780 = fmul fast float %1771, %1777
  %1781 = fmul fast float %1771, %1778
  %1782 = fmul fast float %1771, %1779
  %1783 = fadd fast float %1780, %1758
  %1784 = fadd fast float %1781, %1759
  %1785 = fadd fast float %1782, %1760
  %1786 = fsub fast float %1538, %1144
  %1787 = fmul fast float %1771, %1786
  %1788 = fadd fast float %1787, %1144
  %1789 = fsub fast float %1680, %1761
  %1790 = fsub fast float %1681, %1762
  %1791 = fsub fast float %1682, %1763
  %1792 = fmul fast float %1776, %1789
  %1793 = fmul fast float %1776, %1790
  %1794 = fmul fast float %1776, %1791
  %1795 = fadd fast float %1792, %1761
  %1796 = fadd fast float %1793, %1762
  %1797 = fadd fast float %1794, %1763
  %1798 = fsub fast float %1748, %1149
  %1799 = fmul fast float %1771, %1798
  %1800 = fadd fast float %1799, %1149
  br label %1846

; <label>:1801                                    ; preds = %1768
  %1802 = icmp eq i32 %1766, 1
  br i1 %1802, label %1803, label %1816

; <label>:1803                                    ; preds = %1801
  %1804 = fadd fast float %1552, -1.000000e+00
  %1805 = fadd fast float %1553, -1.000000e+00
  %1806 = fadd fast float %1554, -1.000000e+00
  %1807 = fmul fast float %1771, %1804
  %1808 = fmul fast float %1771, %1805
  %1809 = fmul fast float %1771, %1806
  %1810 = fadd fast float %1807, 1.000000e+00
  %1811 = fadd fast float %1808, 1.000000e+00
  %1812 = fadd fast float %1809, 1.000000e+00
  %1813 = fmul fast float %1810, %1758
  %1814 = fmul fast float %1811, %1759
  %1815 = fmul fast float %1812, %1760
  br label %1846

; <label>:1816                                    ; preds = %1801
  %1817 = icmp eq i32 %1766, 2
  br i1 %1817, label %1818, label %1846

; <label>:1818                                    ; preds = %1816
  %1819 = call float @dx.op.unary.f32(i32 24, float %1552)  ; Sqrt(value)
  %1820 = call float @dx.op.unary.f32(i32 24, float %1553)  ; Sqrt(value)
  %1821 = call float @dx.op.unary.f32(i32 24, float %1554)  ; Sqrt(value)
  %1822 = fadd fast float %1819, -5.000000e-01
  %1823 = fadd fast float %1820, -5.000000e-01
  %1824 = fadd fast float %1821, -5.000000e-01
  %1825 = fmul fast float %1822, %1771
  %1826 = fmul fast float %1823, %1771
  %1827 = fmul fast float %1824, %1771
  %1828 = fadd fast float %1825, 5.000000e-01
  %1829 = fadd fast float %1826, 5.000000e-01
  %1830 = fadd fast float %1827, 5.000000e-01
  %1831 = fmul fast float %1828, 2.000000e+00
  %1832 = fsub fast float 1.000000e+00, %1831
  %1833 = fmul fast float %1832, %1758
  %1834 = fadd fast float %1833, %1831
  %1835 = fmul fast float %1834, %1758
  %1836 = fmul fast float %1829, 2.000000e+00
  %1837 = fsub fast float 1.000000e+00, %1836
  %1838 = fmul fast float %1837, %1759
  %1839 = fadd fast float %1838, %1836
  %1840 = fmul fast float %1839, %1759
  %1841 = fmul fast float %1830, 2.000000e+00
  %1842 = fsub fast float 1.000000e+00, %1841
  %1843 = fmul fast float %1842, %1760
  %1844 = fadd fast float %1843, %1841
  %1845 = fmul fast float %1844, %1760
  br label %1846

; <label>:1846                                    ; preds = %1818, %1816, %1803, %1773, %1757
  %1847 = phi float [ %1758, %1757 ], [ %1835, %1818 ], [ %1758, %1816 ], [ %1813, %1803 ], [ %1783, %1773 ]
  %1848 = phi float [ %1759, %1757 ], [ %1840, %1818 ], [ %1759, %1816 ], [ %1814, %1803 ], [ %1784, %1773 ]
  %1849 = phi float [ %1760, %1757 ], [ %1845, %1818 ], [ %1760, %1816 ], [ %1815, %1803 ], [ %1785, %1773 ]
  %1850 = phi float [ %1761, %1757 ], [ %1761, %1818 ], [ %1761, %1816 ], [ %1761, %1803 ], [ %1795, %1773 ]
  %1851 = phi float [ %1762, %1757 ], [ %1762, %1818 ], [ %1762, %1816 ], [ %1762, %1803 ], [ %1796, %1773 ]
  %1852 = phi float [ %1763, %1757 ], [ %1763, %1818 ], [ %1763, %1816 ], [ %1763, %1803 ], [ %1797, %1773 ]
  %1853 = phi float [ %1144, %1757 ], [ %1144, %1818 ], [ %1144, %1816 ], [ %1144, %1803 ], [ %1788, %1773 ]
  %1854 = phi float [ %1149, %1757 ], [ %1149, %1818 ], [ %1149, %1816 ], [ %1149, %1803 ], [ %1800, %1773 ]
  %1855 = and i32 %1765, 12
  %1856 = icmp eq i32 %1855, 12
  br i1 %1856, label %1963, label %1857

; <label>:1857                                    ; preds = %1846
  %1858 = and i32 %1765, 2097184
  %1859 = icmp eq i32 %1858, 2097184
  %1860 = select i1 %1859, float %1332, float 0.000000e+00
  %1861 = and i32 %1765, 4194336
  %1862 = icmp eq i32 %1861, 4194336
  %1863 = select i1 %1862, float %1332, float 0.000000e+00
  %1864 = and i32 %1765, 8388640
  %1865 = icmp eq i32 %1864, 8388640
  %1866 = select i1 %1865, float %1332, float 0.000000e+00
  %1867 = and i32 %1765, 2048
  %1868 = icmp ne i32 %1867, 0
  %1869 = select i1 %1868, float %1332, float 0.000000e+00
  %1870 = and i32 %1765, 8192
  %1871 = icmp ne i32 %1870, 0
  %1872 = select i1 %1871, float %1332, float 0.000000e+00
  %1873 = icmp eq i32 %1855, 0
  br i1 %1873, label %1874, label %1899

; <label>:1874                                    ; preds = %1857
  %1875 = fsub fast float %1633, %1133
  %1876 = fsub fast float %1634, %1134
  %1877 = fmul fast float %1860, %1875
  %1878 = fmul fast float %1860, %1876
  %1879 = fadd fast float %1877, %1133
  %1880 = fadd fast float %1878, %1134
  %1881 = fsub fast float %1635, %1147
  %1882 = fmul fast float %1863, %1881
  %1883 = fadd fast float %1882, %1147
  %1884 = fsub fast float %1632, %1146
  %1885 = fmul fast float %1866, %1884
  %1886 = fadd fast float %1885, %1146
  %1887 = fsub fast float %1735, %1148
  %1888 = fmul fast float %1869, %1887
  %1889 = fadd fast float %1888, %1148
  %1890 = fsub fast float %1732, %1141
  %1891 = fsub fast float %1733, %1142
  %1892 = fsub fast float %1734, %1143
  %1893 = fmul fast float %1872, %1890
  %1894 = fmul fast float %1872, %1891
  %1895 = fmul fast float %1872, %1892
  %1896 = fadd fast float %1893, %1141
  %1897 = fadd fast float %1894, %1142
  %1898 = fadd fast float %1895, %1143
  br label %1963

; <label>:1899                                    ; preds = %1857
  %1900 = icmp eq i32 %1855, 4
  br i1 %1900, label %1901, label %1941

; <label>:1901                                    ; preds = %1899
  %1902 = fmul fast float %1860, %1633
  %1903 = fmul fast float %1860, %1634
  %1904 = fadd fast float %1902, %1133
  %1905 = fadd fast float %1903, %1134
  %1906 = call float @dx.op.binary.f32(i32 36, float %1147, float %1635)  ; FMin(a,b)
  %1907 = fsub fast float %1906, %1147
  %1908 = fmul fast float %1907, %1863
  %1909 = fadd fast float %1908, %1147
  %1910 = fadd fast float %1632, %1146
  %1911 = fmul fast float %1910, 0x3FF337FAE0000000
  %1912 = fmul fast float %1146, %1146
  %1913 = fmul fast float %1632, %1632
  %1914 = fadd fast float %1913, %1912
  %1915 = fmul fast float %1914, 0x3FE5152B00000000
  %1916 = fmul fast float %1146, 0xBFCC1F85E0000000
  %1917 = fmul fast float %1916, %1632
  %1918 = fadd fast float %1917, 0xBFE1363700000000
  %1919 = fadd fast float %1918, %1911
  %1920 = fsub fast float %1919, %1915
  %1921 = fmul fast float %1910, 0x3FBA6F0D00000000
  %1922 = fmul fast float %1914, 0x3FD0432880000000
  %1923 = fmul fast float %1146, 0xBFEF110800000000
  %1924 = fmul fast float %1923, %1632
  %1925 = fadd fast float %1924, 1.000000e+00
  %1926 = fsub fast float %1925, %1921
  %1927 = fadd fast float %1926, %1922
  %1928 = fdiv fast float %1920, %1927
  %1929 = call float @dx.op.unary.f32(i32 7, float %1928)  ; Saturate(value)
  %1930 = fsub fast float %1929, %1146
  %1931 = fmul fast float %1930, %1866
  %1932 = fadd fast float %1931, %1146
  %1933 = fmul fast float %1869, %1735
  %1934 = fadd fast float %1933, %1148
  %1935 = fmul fast float %1872, %1732
  %1936 = fmul fast float %1872, %1733
  %1937 = fmul fast float %1872, %1734
  %1938 = fadd fast float %1935, %1141
  %1939 = fadd fast float %1936, %1142
  %1940 = fadd fast float %1937, %1143
  br label %1963

; <label>:1941                                    ; preds = %1899
  %1942 = icmp eq i32 %1855, 8
  br i1 %1942, label %1943, label %1963

; <label>:1943                                    ; preds = %1941
  %1944 = fmul fast float %1860, %1633
  %1945 = fmul fast float %1860, %1634
  %1946 = fadd fast float %1944, %1133
  %1947 = fadd fast float %1945, %1134
  %1948 = call float @dx.op.binary.f32(i32 36, float %1147, float %1635)  ; FMin(a,b)
  %1949 = fsub fast float %1948, %1147
  %1950 = fmul fast float %1949, %1863
  %1951 = fadd fast float %1950, %1147
  %1952 = fsub fast float %1632, %1146
  %1953 = fmul fast float %1866, %1952
  %1954 = fadd fast float %1953, %1146
  %1955 = fmul fast float %1869, %1735
  %1956 = fadd fast float %1955, %1148
  %1957 = fmul fast float %1872, %1732
  %1958 = fmul fast float %1872, %1733
  %1959 = fmul fast float %1872, %1734
  %1960 = fadd fast float %1957, %1141
  %1961 = fadd fast float %1958, %1142
  %1962 = fadd fast float %1959, %1143
  br label %1963

; <label>:1963                                    ; preds = %1943, %1941, %1901, %1874, %1846, %1331, %1150, %1132
  %1964 = phi float [ %1133, %1846 ], [ %1133, %1331 ], [ %1133, %1132 ], [ %1946, %1943 ], [ %1133, %1941 ], [ %1904, %1901 ], [ %1879, %1874 ], [ %1133, %1150 ]
  %1965 = phi float [ %1134, %1846 ], [ %1134, %1331 ], [ %1134, %1132 ], [ %1947, %1943 ], [ %1134, %1941 ], [ %1905, %1901 ], [ %1880, %1874 ], [ %1134, %1150 ]
  %1966 = phi float [ %1847, %1846 ], [ %1135, %1331 ], [ %1135, %1132 ], [ %1847, %1943 ], [ %1847, %1941 ], [ %1847, %1901 ], [ %1847, %1874 ], [ %1135, %1150 ]
  %1967 = phi float [ %1848, %1846 ], [ %1136, %1331 ], [ %1136, %1132 ], [ %1848, %1943 ], [ %1848, %1941 ], [ %1848, %1901 ], [ %1848, %1874 ], [ %1136, %1150 ]
  %1968 = phi float [ %1849, %1846 ], [ %1137, %1331 ], [ %1137, %1132 ], [ %1849, %1943 ], [ %1849, %1941 ], [ %1849, %1901 ], [ %1849, %1874 ], [ %1137, %1150 ]
  %1969 = phi float [ %1850, %1846 ], [ %1138, %1331 ], [ %1138, %1132 ], [ %1850, %1943 ], [ %1850, %1941 ], [ %1850, %1901 ], [ %1850, %1874 ], [ %1138, %1150 ]
  %1970 = phi float [ %1851, %1846 ], [ %1139, %1331 ], [ %1139, %1132 ], [ %1851, %1943 ], [ %1851, %1941 ], [ %1851, %1901 ], [ %1851, %1874 ], [ %1139, %1150 ]
  %1971 = phi float [ %1852, %1846 ], [ %1140, %1331 ], [ %1140, %1132 ], [ %1852, %1943 ], [ %1852, %1941 ], [ %1852, %1901 ], [ %1852, %1874 ], [ %1140, %1150 ]
  %1972 = phi float [ %1141, %1846 ], [ %1141, %1331 ], [ %1141, %1132 ], [ %1960, %1943 ], [ %1141, %1941 ], [ %1938, %1901 ], [ %1896, %1874 ], [ %1141, %1150 ]
  %1973 = phi float [ %1142, %1846 ], [ %1142, %1331 ], [ %1142, %1132 ], [ %1961, %1943 ], [ %1142, %1941 ], [ %1939, %1901 ], [ %1897, %1874 ], [ %1142, %1150 ]
  %1974 = phi float [ %1143, %1846 ], [ %1143, %1331 ], [ %1143, %1132 ], [ %1962, %1943 ], [ %1143, %1941 ], [ %1940, %1901 ], [ %1898, %1874 ], [ %1143, %1150 ]
  %1975 = phi float [ %1853, %1846 ], [ %1144, %1331 ], [ %1144, %1132 ], [ %1853, %1943 ], [ %1853, %1941 ], [ %1853, %1901 ], [ %1853, %1874 ], [ %1144, %1150 ]
  %1976 = phi float [ %1146, %1846 ], [ %1146, %1331 ], [ %1146, %1132 ], [ %1954, %1943 ], [ %1146, %1941 ], [ %1932, %1901 ], [ %1886, %1874 ], [ %1146, %1150 ]
  %1977 = phi float [ %1147, %1846 ], [ %1147, %1331 ], [ %1147, %1132 ], [ %1951, %1943 ], [ %1147, %1941 ], [ %1909, %1901 ], [ %1883, %1874 ], [ %1147, %1150 ]
  %1978 = phi float [ %1148, %1846 ], [ %1148, %1331 ], [ %1148, %1132 ], [ %1956, %1943 ], [ %1148, %1941 ], [ %1934, %1901 ], [ %1889, %1874 ], [ %1148, %1150 ]
  %1979 = phi float [ %1854, %1846 ], [ %1149, %1331 ], [ %1149, %1132 ], [ %1854, %1943 ], [ %1854, %1941 ], [ %1854, %1901 ], [ %1854, %1874 ], [ %1149, %1150 ]
  br i1 %480, label %2793, label %1980

; <label>:1980                                    ; preds = %1963
  %1981 = icmp ult i32 %536, 3
  %1982 = add i32 %49, 56
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = add i32 %49, 60
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = or i32 %1987, %1984
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %2793, label %1990

; <label>:1990                                    ; preds = %1980
  %1991 = and i32 %1984, 262144
  %1992 = icmp ne i32 %1991, 0
  %1993 = select i1 %1992, float %55, float 1.000000e+00
  %1994 = select i1 %1992, float %56, float 0.000000e+00
  %1995 = select i1 %1992, float %57, float 0.000000e+00
  %1996 = select i1 %1992, float %58, float 1.000000e+00
  %1997 = select i1 %1992, float %59, float %87
  %1998 = select i1 %1992, float %60, float %88
  %1999 = add i32 %49, 316
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = lshr i32 %2001, 16
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = fmul fast float %2003, 0x3F50624DE0000000
  %2005 = add i32 %49, 120
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = lshr i32 %2007, 16
  %2009 = and i32 %2008, 255
  %2010 = lshr i32 %2007, 24
  %2011 = add i32 %49, 324
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 65535
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = lshr i32 %2013, 16
  %2017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2016)  ; LegacyF16ToF32(value)
  %2018 = add i32 %49, 64
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.i32 %2019, 0
  %2021 = lshr i32 %2020, 22
  %2022 = shl nuw nsw i32 %2021, 5
  %2023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2022)  ; LegacyF16ToF32(value)
  %2024 = shl i32 %2020, 4
  %2025 = and i32 %2024, 32752
  %2026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2025)  ; LegacyF16ToF32(value)
  %2027 = lshr i32 %2020, 7
  %2028 = and i32 %2027, 32752
  %2029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2028)  ; LegacyF16ToF32(value)
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2031 = extractvalue %dx.types.CBufRet.f32 %2030, 3
  %2032 = fmul fast float %2031, 1.000000e+03
  %2033 = fmul fast float %430, %2032
  %2034 = call float @dx.op.unary.f32(i32 22, float %2033)  ; Frc(value)
  %2035 = fadd fast float %2034, %420
  %2036 = fmul fast float %431, %2032
  %2037 = call float @dx.op.unary.f32(i32 22, float %2036)  ; Frc(value)
  %2038 = fadd fast float %2037, %422
  %2039 = fmul fast float %2004, %2032
  %2040 = call float @dx.op.unary.f32(i32 22, float %2039)  ; Frc(value)
  %2041 = fmul fast float %2040, 0x401921FB60000000
  %2042 = fadd fast float %2041, %2023
  %2043 = call float @dx.op.unary.f32(i32 13, float %2042)  ; Sin(value)
  %2044 = call float @dx.op.unary.f32(i32 12, float %2042)  ; Cos(value)
  %2045 = fsub fast float -0.000000e+00, %2043
  %2046 = fadd fast float %1997, -5.000000e-01
  %2047 = fadd fast float %1998, -5.000000e-01
  %2048 = fmul fast float %2015, %2046
  %2049 = fmul fast float %2017, %2047
  %2050 = fadd fast float %2048, 5.000000e-01
  %2051 = fadd fast float %2049, 5.000000e-01
  %2052 = fmul fast float %2026, %2050
  %2053 = fmul fast float %2029, %2051
  %2054 = fmul fast float %2044, %2052
  %2055 = call float @dx.op.tertiary.f32(i32 46, float %2045, float %2053, float %2054)  ; FMad(a,b,c)
  %2056 = fmul fast float %2043, %2052
  %2057 = call float @dx.op.tertiary.f32(i32 46, float %2044, float %2053, float %2056)  ; FMad(a,b,c)
  %2058 = fadd fast float %2035, %2055
  %2059 = fadd fast float %2038, %2057
  %2060 = icmp ugt i32 %2009, 1
  %2061 = icmp ugt i32 %2007, 33554431
  %2062 = or i1 %2061, %2060
  br i1 %2062, label %2063, label %2088

; <label>:2063                                    ; preds = %1990
  %2064 = add i32 %49, 260
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = lshr i32 %2066, 16
  %2068 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2067)  ; LegacyF16ToF32(value)
  %2069 = fmul fast float %2031, %2068
  %2070 = call float @dx.op.unary.f32(i32 22, float %2069)  ; Frc(value)
  %2071 = mul nuw nsw i32 %2009, %2010
  %2072 = uitofp i32 %2071 to float
  %2073 = fmul fast float %2070, %2072
  %2074 = call float @dx.op.unary.f32(i32 27, float %2073)  ; Round_ni(value)
  %2075 = fptoui float %2074 to i32
  %2076 = urem i32 %2075, %2009
  %2077 = udiv i32 %2075, %2010
  %2078 = call float @dx.op.unary.f32(i32 22, float %2058)  ; Frc(value)
  %2079 = call float @dx.op.unary.f32(i32 22, float %2059)  ; Frc(value)
  %2080 = uitofp i32 %2076 to float
  %2081 = uitofp i32 %2077 to float
  %2082 = fadd fast float %2078, %2080
  %2083 = fadd fast float %2079, %2081
  %2084 = uitofp i32 %2009 to float
  %2085 = uitofp i32 %2010 to float
  %2086 = fdiv fast float %2082, %2084
  %2087 = fdiv fast float %2083, %2085
  br label %2088

; <label>:2088                                    ; preds = %2063, %1990
  %2089 = phi float [ %2086, %2063 ], [ %2058, %1990 ]
  %2090 = phi float [ %2087, %2063 ], [ %2059, %1990 ]
  %2091 = and i32 %1984, 256
  %2092 = icmp eq i32 %2091, 0
  br i1 %2092, label %2139, label %2093

; <label>:2093                                    ; preds = %2088
  %2094 = add i32 %49, 496
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = add i32 %2096, 0
  %2098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2098, %dx.types.Handle %106, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = add i32 %49, 132
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = shl i32 %2103, 4
  %2105 = and i32 %2104, 32752
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = lshr i32 %2103, 7
  %2108 = and i32 %2107, 32752
  %2109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2108)  ; LegacyF16ToF32(value)
  %2110 = fsub fast float 1.000000e+00, %532
  %2111 = call float @dx.op.binary.f32(i32 35, float %2110, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2112 = bitcast float %532 to i32
  %2113 = sitofp i32 %2112 to float
  %2114 = fadd fast float %2113, 0xC1CFBF8940000000
  %2115 = fmul fast float %2109, %2114
  %2116 = fadd fast float %2115, 0x41CFBF8940000000
  %2117 = fptosi float %2116 to i32
  %2118 = bitcast i32 %2117 to float
  %2119 = bitcast float %2111 to i32
  %2120 = sitofp i32 %2119 to float
  %2121 = fadd fast float %2120, 0xC1CFBF8940000000
  %2122 = fmul fast float %2121, %2109
  %2123 = fadd fast float %2122, 0x41CFBF8940000000
  %2124 = fptosi float %2123 to i32
  %2125 = bitcast i32 %2124 to float
  %2126 = fmul fast float %2118, %2106
  %2127 = fmul fast float %2125, %2106
  %2128 = fsub fast float %2111, %2126
  %2129 = fadd fast float %2127, %2111
  %2130 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2131 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2132 = fsub fast float %2100, %2130
  %2133 = fsub fast float %2131, %2130
  %2134 = bitcast float %2133 to i32
  %2135 = sub nsw i32 2129859010, %2134
  %2136 = bitcast i32 %2135 to float
  %2137 = fmul fast float %2136, %2132
  %2138 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  br label %2139

; <label>:2139                                    ; preds = %2093, %2088
  %2140 = phi float [ %2138, %2093 ], [ %532, %2088 ]
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 128
  %2144 = icmp eq i32 %2143, 0
  br i1 %2144, label %2161, label %2145

; <label>:2145                                    ; preds = %2139
  %2146 = add i32 %49, 480
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = add i32 %2148, 0
  %2150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2150, %dx.types.Handle %106, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2152 = extractvalue %dx.types.ResRet.f32 %2151, 0
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 524288
  %2156 = icmp ne i32 %2155, 0
  %2157 = fcmp fast ogt float %2152, 0x3FE0101020000000
  %2158 = select i1 %2157, float 1.000000e+00, float 0.000000e+00
  %2159 = select i1 %2156, float %2158, float %2152
  %2160 = fmul fast float %2159, %2140
  br label %2161

; <label>:2161                                    ; preds = %2145, %2139
  %2162 = phi float [ %2160, %2145 ], [ %2140, %2139 ]
  %2163 = fcmp fast ult float %2162, 0x3F70101020000000
  br i1 %2163, label %2793, label %2164

; <label>:2164                                    ; preds = %2161
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = and i32 %2166, 16
  %2168 = icmp eq i32 %2167, 0
  br i1 %2168, label %2367, label %2169

; <label>:2169                                    ; preds = %2164
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = add i32 %49, 432
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = add i32 %2174, 0
  %2176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2176, %dx.types.Handle %105, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2178 = extractvalue %dx.types.ResRet.f32 %2177, 0
  %2179 = extractvalue %dx.types.ResRet.f32 %2177, 1
  %2180 = extractvalue %dx.types.ResRet.f32 %2177, 2
  %2181 = extractvalue %dx.types.ResRet.f32 %2177, 3
  %2182 = and i32 %2171, 255
  %2183 = uitofp i32 %2182 to float
  %2184 = lshr i32 %2171, 8
  %2185 = and i32 %2184, 255
  %2186 = uitofp i32 %2185 to float
  %2187 = fmul fast float %2181, %2183
  %2188 = fadd fast float %2187, %2186
  %2189 = fmul fast float %2188, 0x3F70101000000000
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = and i32 %2191, 512
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2202, label %2194

; <label>:2194                                    ; preds = %2169
  %2195 = add i32 %49, 516
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = add i32 %2197, 0
  %2199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2199, %dx.types.Handle %106, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  br label %2202

; <label>:2202                                    ; preds = %2194, %2169
  %2203 = phi float [ %2201, %2194 ], [ 1.000000e+00, %2169 ]
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 33554432
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2314, label %2208

; <label>:2208                                    ; preds = %2202
  %2209 = add i32 %49, 256
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 65535
  %2213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2212)  ; LegacyF16ToF32(value)
  %2214 = lshr i32 %2211, 16
  %2215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2214)  ; LegacyF16ToF32(value)
  %2216 = add i32 %49, 260
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 65535
  %2220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2219)  ; LegacyF16ToF32(value)
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = lshr i32 %2222, 24
  %2224 = uitofp i32 %2223 to float
  %2225 = fmul fast float %2224, 0x3F70101020000000
  %2226 = and i32 %2222, 255
  %2227 = uitofp i32 %2226 to float
  %2228 = fmul fast float %2227, 0x3F70101020000000
  %2229 = lshr i32 %2222, 8
  %2230 = and i32 %2229, 255
  %2231 = uitofp i32 %2230 to float
  %2232 = fmul fast float %2231, 0x3F70101020000000
  %2233 = lshr i32 %2222, 16
  %2234 = and i32 %2233, 255
  %2235 = uitofp i32 %2234 to float
  %2236 = fmul fast float %2235, 0x3F70101020000000
  %2237 = add i32 %49, 252
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = lshr i32 %2239, 24
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = and i32 %2239, 255
  %2244 = uitofp i32 %2243 to float
  %2245 = fmul fast float %2244, 0x3F70101020000000
  %2246 = lshr i32 %2239, 8
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = lshr i32 %2239, 16
  %2251 = and i32 %2250, 255
  %2252 = uitofp i32 %2251 to float
  %2253 = fmul fast float %2252, 0x3F70101020000000
  %2254 = bitcast float %2178 to i32
  %2255 = ashr i32 %2254, 1
  %2256 = sub nsw i32 1597463174, %2255
  %2257 = bitcast i32 %2256 to float
  %2258 = fmul fast float %2178, 5.000000e-01
  %2259 = fmul fast float %2257, %2257
  %2260 = fmul fast float %2259, %2258
  %2261 = fsub fast float 1.500000e+00, %2260
  %2262 = fmul fast float %2257, %2178
  %2263 = fmul fast float %2262, %2261
  %2264 = bitcast float %2179 to i32
  %2265 = ashr i32 %2264, 1
  %2266 = sub nsw i32 1597463174, %2265
  %2267 = bitcast i32 %2266 to float
  %2268 = fmul fast float %2179, 5.000000e-01
  %2269 = fmul fast float %2267, %2267
  %2270 = fmul fast float %2269, %2268
  %2271 = fsub fast float 1.500000e+00, %2270
  %2272 = fmul fast float %2267, %2179
  %2273 = fmul fast float %2272, %2271
  %2274 = bitcast float %2180 to i32
  %2275 = ashr i32 %2274, 1
  %2276 = sub nsw i32 1597463174, %2275
  %2277 = bitcast i32 %2276 to float
  %2278 = fmul fast float %2180, 5.000000e-01
  %2279 = fmul fast float %2277, %2277
  %2280 = fmul fast float %2279, %2278
  %2281 = fsub fast float 1.500000e+00, %2280
  %2282 = fmul fast float %2277, %2180
  %2283 = fmul fast float %2282, %2281
  %2284 = fsub fast float %2263, %2245
  %2285 = fsub fast float %2273, %2249
  %2286 = fsub fast float %2283, %2253
  %2287 = fmul fast float %2284, %2213
  %2288 = fmul fast float %2285, %2215
  %2289 = fmul fast float %2286, %2220
  %2290 = fadd fast float %2287, %2228
  %2291 = fadd fast float %2288, %2232
  %2292 = fadd fast float %2289, %2236
  %2293 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2294 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2295 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2296 = fmul fast float %2293, %2293
  %2297 = fmul fast float %2294, %2294
  %2298 = fmul fast float %2295, %2295
  %2299 = fsub fast float %2296, %2178
  %2300 = fsub fast float %2297, %2179
  %2301 = fsub fast float %2298, %2180
  %2302 = fmul fast float %2299, %2203
  %2303 = fmul fast float %2300, %2203
  %2304 = fmul fast float %2301, %2203
  %2305 = fadd fast float %2302, %2178
  %2306 = fadd fast float %2303, %2179
  %2307 = fadd fast float %2304, %2180
  %2308 = fadd fast float %2225, %2189
  %2309 = fsub fast float %2308, %2242
  %2310 = call float @dx.op.unary.f32(i32 7, float %2309)  ; Saturate(value)
  %2311 = fsub fast float %2310, %2189
  %2312 = fmul fast float %2311, %2203
  %2313 = fadd fast float %2312, %2189
  br label %2367

; <label>:2314                                    ; preds = %2202
  %2315 = and i32 %2205, 134217728
  %2316 = icmp eq i32 %2315, 0
  br i1 %2316, label %2351, label %2317

; <label>:2317                                    ; preds = %2314
  %2318 = call float @dx.op.unary.f32(i32 24, float %407)  ; Sqrt(value)
  %2319 = call float @dx.op.unary.f32(i32 24, float %411)  ; Sqrt(value)
  %2320 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %2321 = fadd fast float %2318, -5.000000e-01
  %2322 = fadd fast float %2319, -5.000000e-01
  %2323 = fadd fast float %2320, -5.000000e-01
  %2324 = fmul fast float %2321, %2203
  %2325 = fmul fast float %2322, %2203
  %2326 = fmul fast float %2323, %2203
  %2327 = fadd fast float %2324, 5.000000e-01
  %2328 = fadd fast float %2325, 5.000000e-01
  %2329 = fadd fast float %2326, 5.000000e-01
  %2330 = call float @dx.op.unary.f32(i32 24, float %2178)  ; Sqrt(value)
  %2331 = call float @dx.op.unary.f32(i32 24, float %2179)  ; Sqrt(value)
  %2332 = call float @dx.op.unary.f32(i32 24, float %2180)  ; Sqrt(value)
  %2333 = fmul fast float %2327, 2.000000e+00
  %2334 = fsub fast float 1.000000e+00, %2333
  %2335 = fmul fast float %2334, %2330
  %2336 = fadd fast float %2335, %2333
  %2337 = fmul fast float %2336, %2330
  %2338 = fmul fast float %2328, 2.000000e+00
  %2339 = fsub fast float 1.000000e+00, %2338
  %2340 = fmul fast float %2339, %2331
  %2341 = fadd fast float %2340, %2338
  %2342 = fmul fast float %2341, %2331
  %2343 = fmul fast float %2329, 2.000000e+00
  %2344 = fsub fast float 1.000000e+00, %2343
  %2345 = fmul fast float %2344, %2332
  %2346 = fadd fast float %2345, %2343
  %2347 = fmul fast float %2346, %2332
  %2348 = fmul fast float %2337, %2337
  %2349 = fmul fast float %2342, %2342
  %2350 = fmul fast float %2347, %2347
  br label %2367

; <label>:2351                                    ; preds = %2314
  %2352 = fmul fast float %407, %407
  %2353 = fmul fast float %411, %411
  %2354 = fmul fast float %415, %415
  %2355 = fadd fast float %2352, -1.000000e+00
  %2356 = fadd fast float %2353, -1.000000e+00
  %2357 = fadd fast float %2354, -1.000000e+00
  %2358 = fmul fast float %2203, %2355
  %2359 = fmul fast float %2203, %2356
  %2360 = fmul fast float %2203, %2357
  %2361 = fadd fast float %2358, 1.000000e+00
  %2362 = fadd fast float %2359, 1.000000e+00
  %2363 = fadd fast float %2360, 1.000000e+00
  %2364 = fmul fast float %2361, %2178
  %2365 = fmul fast float %2362, %2179
  %2366 = fmul fast float %2363, %2180
  br label %2367

; <label>:2367                                    ; preds = %2351, %2317, %2208, %2164
  %2368 = phi float [ %2313, %2208 ], [ %2189, %2317 ], [ %2189, %2351 ], [ 0x3FA23C0BE0000000, %2164 ]
  %2369 = phi float [ %2305, %2208 ], [ %2348, %2317 ], [ %2364, %2351 ], [ 1.000000e+00, %2164 ]
  %2370 = phi float [ %2306, %2208 ], [ %2349, %2317 ], [ %2365, %2351 ], [ 1.000000e+00, %2164 ]
  %2371 = phi float [ %2307, %2208 ], [ %2350, %2317 ], [ %2366, %2351 ], [ 1.000000e+00, %2164 ]
  %2372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.i32 %2372, 1
  %2374 = and i32 %2373, 1
  %2375 = icmp ne i32 %2374, 0
  %2376 = add i32 %49, 356
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 32
  %2380 = icmp ne i32 %2379, 0
  %2381 = and i1 %2375, %2380
  %2382 = select i1 %2381, float 1.000000e+00, float %2369
  %2383 = select i1 %2381, float 0x3FD3333340000000, float %2370
  %2384 = select i1 %2381, float 0x3FD3333340000000, float %2371
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 32
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2461, label %2389

; <label>:2389                                    ; preds = %2367
  %2390 = add i32 %49, 124
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = add i32 %49, 448
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = add i32 %2395, 0
  %2397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2398 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2397, %dx.types.Handle %105, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2399 = extractvalue %dx.types.ResRet.f32 %2398, 0
  %2400 = extractvalue %dx.types.ResRet.f32 %2398, 1
  %2401 = extractvalue %dx.types.ResRet.f32 %2398, 2
  %2402 = extractvalue %dx.types.ResRet.f32 %2398, 3
  %2403 = and i32 %2392, 255
  %2404 = uitofp i32 %2403 to float
  %2405 = lshr i32 %2392, 8
  %2406 = and i32 %2405, 255
  %2407 = uitofp i32 %2406 to float
  %2408 = lshr i32 %2392, 16
  %2409 = and i32 %2408, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = fmul fast float %2410, 0x3F70101000000000
  %2412 = fmul fast float %2399, %2404
  %2413 = fadd fast float %2412, %2407
  %2414 = fmul fast float %2413, 0x3F70101000000000
  %2415 = fadd fast float %2400, -5.000000e-01
  %2416 = fadd fast float %2402, -5.000000e-01
  %2417 = fmul fast float %2415, %2411
  %2418 = fmul fast float %2416, %2411
  %2419 = fadd fast float %2417, 5.000000e-01
  %2420 = fadd fast float %2418, 5.000000e-01
  %2421 = fmul fast float %2419, 2.000000e+00
  %2422 = fadd fast float %2421, -1.000000e+00
  %2423 = fmul fast float %2420, 2.000000e+00
  %2424 = fadd fast float %2423, -1.000000e+00
  %2425 = fadd fast float %2422, %2424
  %2426 = fmul fast float %2425, 5.000000e-01
  %2427 = fsub fast float %2422, %2424
  %2428 = fmul fast float %2427, 5.000000e-01
  %2429 = call float @dx.op.unary.f32(i32 6, float %2426)  ; FAbs(value)
  %2430 = fsub fast float 1.000000e+00, %2429
  %2431 = call float @dx.op.unary.f32(i32 6, float %2428)  ; FAbs(value)
  %2432 = fsub fast float %2430, %2431
  %2433 = call float @dx.op.dot3.f32(i32 55, float %2426, float %2428, float %2432, float %2426, float %2428, float %2432)  ; Dot3(ax,ay,az,bx,by,bz)
  %2434 = call float @dx.op.unary.f32(i32 25, float %2433)  ; Rsqrt(value)
  %2435 = fmul fast float %2426, %2434
  %2436 = fmul fast float %2428, %2434
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 67108864
  %2440 = icmp eq i32 %2439, 0
  br i1 %2440, label %2457, label %2441

; <label>:2441                                    ; preds = %2389
  %2442 = add i32 %49, 312
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = and i32 %2444, 65535
  %2446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2445)  ; LegacyF16ToF32(value)
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 65535
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = lshr i32 %2444, 16
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = fsub fast float %2414, %2452
  %2454 = fmul fast float %2453, %2446
  %2455 = fadd fast float %2454, %2450
  %2456 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  br label %2457

; <label>:2457                                    ; preds = %2441, %2389
  %2458 = phi float [ %2456, %2441 ], [ %2414, %2389 ]
  %2459 = call float @dx.op.dot2.f32(i32 54, float %2435, float %2436, float %1993, float %1994)  ; Dot2(ax,ay,bx,by)
  %2460 = call float @dx.op.dot2.f32(i32 54, float %2435, float %2436, float %1995, float %1996)  ; Dot2(ax,ay,bx,by)
  br label %2461

; <label>:2461                                    ; preds = %2457, %2367
  %2462 = phi float [ %2458, %2457 ], [ 0x3FD6666660000000, %2367 ]
  %2463 = phi float [ %2459, %2457 ], [ 0.000000e+00, %2367 ]
  %2464 = phi float [ %2460, %2457 ], [ 0.000000e+00, %2367 ]
  %2465 = phi float [ %2401, %2457 ], [ 1.000000e+00, %2367 ]
  %2466 = add i32 %49, 192
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = lshr i32 %2468, 22
  %2470 = shl nuw nsw i32 %2469, 5
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 64
  %2475 = icmp eq i32 %2474, 0
  br i1 %2475, label %2509, label %2476

; <label>:2476                                    ; preds = %2461
  %2477 = add i32 %49, 464
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = add i32 %2479, 0
  %2481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 131072
  %2485 = icmp eq i32 %2484, 0
  %2486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2481, %dx.types.Handle %105, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = fmul fast float %2487, %395
  %2491 = fmul fast float %2488, %398
  %2492 = fmul fast float %2489, %401
  br i1 %2485, label %2499, label %2493

; <label>:2493                                    ; preds = %2476
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 0
  %2496 = fmul fast float %2495, %2490
  %2497 = fmul fast float %2495, %2491
  %2498 = fmul fast float %2495, %2492
  br label %2499

; <label>:2499                                    ; preds = %2493, %2476
  %2500 = phi float [ %2496, %2493 ], [ %2490, %2476 ]
  %2501 = phi float [ %2497, %2493 ], [ %2491, %2476 ]
  %2502 = phi float [ %2498, %2493 ], [ %2492, %2476 ]
  %2503 = fmul fast float %2500, %2471
  %2504 = select i1 %294, float %2503, float %2500
  %2505 = call float @dx.op.dot3.f32(i32 55, float %2504, float %2501, float %2502, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2506 = select i1 %294, float 0.000000e+00, float %2500
  %2507 = select i1 %294, float %2505, float %2501
  %2508 = select i1 %294, float 0.000000e+00, float %2502
  br label %2509

; <label>:2509                                    ; preds = %2499, %2461
  %2510 = phi float [ %2506, %2499 ], [ 0.000000e+00, %2461 ]
  %2511 = phi float [ %2507, %2499 ], [ 0.000000e+00, %2461 ]
  %2512 = phi float [ %2508, %2499 ], [ 0.000000e+00, %2461 ]
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 10240
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2561, label %2517

; <label>:2517                                    ; preds = %2509
  %2518 = add i32 %49, 532
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %2520, 0
  %2522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2522, %dx.types.Handle %106, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 1
  %2525 = extractvalue %dx.types.ResRet.f32 %2523, 3
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 1048576
  %2529 = icmp ne i32 %2528, 0
  %2530 = and i32 %2527, 8192
  %2531 = icmp eq i32 %2530, 0
  br i1 %2531, label %2547, label %2532

; <label>:2532                                    ; preds = %2517
  %2533 = extractvalue %dx.types.ResRet.f32 %2523, 2
  %2534 = select i1 %2529, float %2533, float %2524
  %2535 = extractvalue %dx.types.ResRet.f32 %2523, 0
  %2536 = select i1 %2529, float %2535, float %2524
  %2537 = add i32 %49, 128
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
  %2539 = extractvalue %dx.types.ResRet.i32 %2538, 0
  %2540 = lshr i32 %2539, 16
  %2541 = and i32 %2540, 255
  %2542 = uitofp i32 %2541 to float
  %2543 = fmul fast float %2542, 0x3F80101020000000
  %2544 = fmul fast float %2543, %2536
  %2545 = fmul fast float %2543, %2524
  %2546 = fmul fast float %2543, %2534
  br label %2547

; <label>:2547                                    ; preds = %2532, %2517
  %2548 = phi float [ %2544, %2532 ], [ 0.000000e+00, %2517 ]
  %2549 = phi float [ %2545, %2532 ], [ 0.000000e+00, %2517 ]
  %2550 = phi float [ %2546, %2532 ], [ 0.000000e+00, %2517 ]
  %2551 = and i32 %2527, 2048
  %2552 = icmp eq i32 %2551, 0
  br i1 %2552, label %2561, label %2553

; <label>:2553                                    ; preds = %2547
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = shl i32 %2555, 4
  %2557 = and i32 %2556, 32752
  %2558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2557)  ; LegacyF16ToF32(value)
  %2559 = fmul fast float %2558, %2525
  %2560 = call float @dx.op.binary.f32(i32 35, float %2559, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2561

; <label>:2561                                    ; preds = %2553, %2547, %2509
  %2562 = phi float [ %2548, %2553 ], [ %2548, %2547 ], [ 0.000000e+00, %2509 ]
  %2563 = phi float [ %2549, %2553 ], [ %2549, %2547 ], [ 0.000000e+00, %2509 ]
  %2564 = phi float [ %2550, %2553 ], [ %2550, %2547 ], [ 0.000000e+00, %2509 ]
  %2565 = phi float [ %2560, %2553 ], [ 0x3F70101020000000, %2547 ], [ 0x3F70101020000000, %2509 ]
  %2566 = add i32 %49, 128
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 255
  %2570 = uitofp i32 %2569 to float
  %2571 = lshr i32 %2568, 8
  %2572 = and i32 %2571, 255
  %2573 = uitofp i32 %2572 to float
  %2574 = call float @dx.op.dot3.f32(i32 55, float %2382, float %2383, float %2384, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2575 = fmul fast float %2573, %2574
  %2576 = fadd fast float %2575, %2570
  %2577 = fmul fast float %2576, 0x3F70101020000000
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  br i1 %1981, label %2579, label %2587

; <label>:2579                                    ; preds = %2561
  %2580 = fsub fast float 1.000000e+00, %2162
  %2581 = fmul fast float %2580, %1966
  %2582 = fmul fast float %2580, %1967
  %2583 = fmul fast float %2580, %1968
  %2584 = fmul fast float %2580, %1969
  %2585 = fmul fast float %2580, %1970
  %2586 = fmul fast float %2580, %1971
  br label %2587

; <label>:2587                                    ; preds = %2579, %2561
  %2588 = phi float [ %2581, %2579 ], [ %1966, %2561 ]
  %2589 = phi float [ %2582, %2579 ], [ %1967, %2561 ]
  %2590 = phi float [ %2583, %2579 ], [ %1968, %2561 ]
  %2591 = phi float [ %2584, %2579 ], [ %1969, %2561 ]
  %2592 = phi float [ %2585, %2579 ], [ %1970, %2561 ]
  %2593 = phi float [ %2586, %2579 ], [ %1971, %2561 ]
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = and i32 %2595, 3
  %2597 = icmp eq i32 %2596, 3
  br i1 %2597, label %2676, label %2598

; <label>:2598                                    ; preds = %2587
  %2599 = and i32 %2595, 16
  %2600 = icmp ne i32 %2599, 0
  %2601 = select i1 %2600, float %2162, float 0.000000e+00
  %2602 = icmp eq i32 %2596, 0
  br i1 %2602, label %2603, label %2631

; <label>:2603                                    ; preds = %2598
  %2604 = and i32 %2595, 64
  %2605 = icmp ne i32 %2604, 0
  %2606 = select i1 %2605, float %2162, float 0.000000e+00
  %2607 = fsub fast float %2382, %2588
  %2608 = fsub fast float %2383, %2589
  %2609 = fsub fast float %2384, %2590
  %2610 = fmul fast float %2601, %2607
  %2611 = fmul fast float %2601, %2608
  %2612 = fmul fast float %2601, %2609
  %2613 = fadd fast float %2610, %2588
  %2614 = fadd fast float %2611, %2589
  %2615 = fadd fast float %2612, %2590
  %2616 = fsub fast float %2368, %1975
  %2617 = fmul fast float %2601, %2616
  %2618 = fadd fast float %2617, %1975
  %2619 = fsub fast float %2510, %2591
  %2620 = fsub fast float %2511, %2592
  %2621 = fsub fast float %2512, %2593
  %2622 = fmul fast float %2606, %2619
  %2623 = fmul fast float %2606, %2620
  %2624 = fmul fast float %2606, %2621
  %2625 = fadd fast float %2622, %2591
  %2626 = fadd fast float %2623, %2592
  %2627 = fadd fast float %2624, %2593
  %2628 = fsub fast float %2578, %1979
  %2629 = fmul fast float %2601, %2628
  %2630 = fadd fast float %2629, %1979
  br label %2676

; <label>:2631                                    ; preds = %2598
  %2632 = icmp eq i32 %2596, 1
  br i1 %2632, label %2633, label %2646

; <label>:2633                                    ; preds = %2631
  %2634 = fadd fast float %2382, -1.000000e+00
  %2635 = fadd fast float %2383, -1.000000e+00
  %2636 = fadd fast float %2384, -1.000000e+00
  %2637 = fmul fast float %2601, %2634
  %2638 = fmul fast float %2601, %2635
  %2639 = fmul fast float %2601, %2636
  %2640 = fadd fast float %2637, 1.000000e+00
  %2641 = fadd fast float %2638, 1.000000e+00
  %2642 = fadd fast float %2639, 1.000000e+00
  %2643 = fmul fast float %2640, %2588
  %2644 = fmul fast float %2641, %2589
  %2645 = fmul fast float %2642, %2590
  br label %2676

; <label>:2646                                    ; preds = %2631
  %2647 = icmp eq i32 %2596, 2
  br i1 %2647, label %2648, label %2676

; <label>:2648                                    ; preds = %2646
  %2649 = call float @dx.op.unary.f32(i32 24, float %2382)  ; Sqrt(value)
  %2650 = call float @dx.op.unary.f32(i32 24, float %2383)  ; Sqrt(value)
  %2651 = call float @dx.op.unary.f32(i32 24, float %2384)  ; Sqrt(value)
  %2652 = fadd fast float %2649, -5.000000e-01
  %2653 = fadd fast float %2650, -5.000000e-01
  %2654 = fadd fast float %2651, -5.000000e-01
  %2655 = fmul fast float %2652, %2601
  %2656 = fmul fast float %2653, %2601
  %2657 = fmul fast float %2654, %2601
  %2658 = fadd fast float %2655, 5.000000e-01
  %2659 = fadd fast float %2656, 5.000000e-01
  %2660 = fadd fast float %2657, 5.000000e-01
  %2661 = fmul fast float %2658, 2.000000e+00
  %2662 = fsub fast float 1.000000e+00, %2661
  %2663 = fmul fast float %2662, %2588
  %2664 = fadd fast float %2663, %2661
  %2665 = fmul fast float %2664, %2588
  %2666 = fmul fast float %2659, 2.000000e+00
  %2667 = fsub fast float 1.000000e+00, %2666
  %2668 = fmul fast float %2667, %2589
  %2669 = fadd fast float %2668, %2666
  %2670 = fmul fast float %2669, %2589
  %2671 = fmul fast float %2660, 2.000000e+00
  %2672 = fsub fast float 1.000000e+00, %2671
  %2673 = fmul fast float %2672, %2590
  %2674 = fadd fast float %2673, %2671
  %2675 = fmul fast float %2674, %2590
  br label %2676

; <label>:2676                                    ; preds = %2648, %2646, %2633, %2603, %2587
  %2677 = phi float [ %2588, %2587 ], [ %2665, %2648 ], [ %2588, %2646 ], [ %2643, %2633 ], [ %2613, %2603 ]
  %2678 = phi float [ %2589, %2587 ], [ %2670, %2648 ], [ %2589, %2646 ], [ %2644, %2633 ], [ %2614, %2603 ]
  %2679 = phi float [ %2590, %2587 ], [ %2675, %2648 ], [ %2590, %2646 ], [ %2645, %2633 ], [ %2615, %2603 ]
  %2680 = phi float [ %2591, %2587 ], [ %2591, %2648 ], [ %2591, %2646 ], [ %2591, %2633 ], [ %2625, %2603 ]
  %2681 = phi float [ %2592, %2587 ], [ %2592, %2648 ], [ %2592, %2646 ], [ %2592, %2633 ], [ %2626, %2603 ]
  %2682 = phi float [ %2593, %2587 ], [ %2593, %2648 ], [ %2593, %2646 ], [ %2593, %2633 ], [ %2627, %2603 ]
  %2683 = phi float [ %1975, %2587 ], [ %1975, %2648 ], [ %1975, %2646 ], [ %1975, %2633 ], [ %2618, %2603 ]
  %2684 = phi float [ %1979, %2587 ], [ %1979, %2648 ], [ %1979, %2646 ], [ %1979, %2633 ], [ %2630, %2603 ]
  %2685 = and i32 %2595, 12
  %2686 = icmp eq i32 %2685, 12
  br i1 %2686, label %2793, label %2687

; <label>:2687                                    ; preds = %2676
  %2688 = and i32 %2595, 2097184
  %2689 = icmp eq i32 %2688, 2097184
  %2690 = select i1 %2689, float %2162, float 0.000000e+00
  %2691 = and i32 %2595, 4194336
  %2692 = icmp eq i32 %2691, 4194336
  %2693 = select i1 %2692, float %2162, float 0.000000e+00
  %2694 = and i32 %2595, 8388640
  %2695 = icmp eq i32 %2694, 8388640
  %2696 = select i1 %2695, float %2162, float 0.000000e+00
  %2697 = and i32 %2595, 2048
  %2698 = icmp ne i32 %2697, 0
  %2699 = select i1 %2698, float %2162, float 0.000000e+00
  %2700 = and i32 %2595, 8192
  %2701 = icmp ne i32 %2700, 0
  %2702 = select i1 %2701, float %2162, float 0.000000e+00
  %2703 = icmp eq i32 %2685, 0
  br i1 %2703, label %2704, label %2729

; <label>:2704                                    ; preds = %2687
  %2705 = fsub fast float %2463, %1964
  %2706 = fsub fast float %2464, %1965
  %2707 = fmul fast float %2690, %2705
  %2708 = fmul fast float %2690, %2706
  %2709 = fadd fast float %2707, %1964
  %2710 = fadd fast float %2708, %1965
  %2711 = fsub fast float %2465, %1977
  %2712 = fmul fast float %2693, %2711
  %2713 = fadd fast float %2712, %1977
  %2714 = fsub fast float %2462, %1976
  %2715 = fmul fast float %2696, %2714
  %2716 = fadd fast float %2715, %1976
  %2717 = fsub fast float %2565, %1978
  %2718 = fmul fast float %2699, %2717
  %2719 = fadd fast float %2718, %1978
  %2720 = fsub fast float %2562, %1972
  %2721 = fsub fast float %2563, %1973
  %2722 = fsub fast float %2564, %1974
  %2723 = fmul fast float %2702, %2720
  %2724 = fmul fast float %2702, %2721
  %2725 = fmul fast float %2702, %2722
  %2726 = fadd fast float %2723, %1972
  %2727 = fadd fast float %2724, %1973
  %2728 = fadd fast float %2725, %1974
  br label %2793

; <label>:2729                                    ; preds = %2687
  %2730 = icmp eq i32 %2685, 4
  br i1 %2730, label %2731, label %2771

; <label>:2731                                    ; preds = %2729
  %2732 = fmul fast float %2690, %2463
  %2733 = fmul fast float %2690, %2464
  %2734 = fadd fast float %2732, %1964
  %2735 = fadd fast float %2733, %1965
  %2736 = call float @dx.op.binary.f32(i32 36, float %1977, float %2465)  ; FMin(a,b)
  %2737 = fsub fast float %2736, %1977
  %2738 = fmul fast float %2737, %2693
  %2739 = fadd fast float %2738, %1977
  %2740 = fadd fast float %2462, %1976
  %2741 = fmul fast float %2740, 0x3FF337FAE0000000
  %2742 = fmul fast float %1976, %1976
  %2743 = fmul fast float %2462, %2462
  %2744 = fadd fast float %2743, %2742
  %2745 = fmul fast float %2744, 0x3FE5152B00000000
  %2746 = fmul fast float %1976, 0xBFCC1F85E0000000
  %2747 = fmul fast float %2746, %2462
  %2748 = fadd fast float %2747, 0xBFE1363700000000
  %2749 = fadd fast float %2748, %2741
  %2750 = fsub fast float %2749, %2745
  %2751 = fmul fast float %2740, 0x3FBA6F0D00000000
  %2752 = fmul fast float %2744, 0x3FD0432880000000
  %2753 = fmul fast float %1976, 0xBFEF110800000000
  %2754 = fmul fast float %2753, %2462
  %2755 = fadd fast float %2754, 1.000000e+00
  %2756 = fsub fast float %2755, %2751
  %2757 = fadd fast float %2756, %2752
  %2758 = fdiv fast float %2750, %2757
  %2759 = call float @dx.op.unary.f32(i32 7, float %2758)  ; Saturate(value)
  %2760 = fsub fast float %2759, %1976
  %2761 = fmul fast float %2760, %2696
  %2762 = fadd fast float %2761, %1976
  %2763 = fmul fast float %2699, %2565
  %2764 = fadd fast float %2763, %1978
  %2765 = fmul fast float %2702, %2562
  %2766 = fmul fast float %2702, %2563
  %2767 = fmul fast float %2702, %2564
  %2768 = fadd fast float %2765, %1972
  %2769 = fadd fast float %2766, %1973
  %2770 = fadd fast float %2767, %1974
  br label %2793

; <label>:2771                                    ; preds = %2729
  %2772 = icmp eq i32 %2685, 8
  br i1 %2772, label %2773, label %2793

; <label>:2773                                    ; preds = %2771
  %2774 = fmul fast float %2690, %2463
  %2775 = fmul fast float %2690, %2464
  %2776 = fadd fast float %2774, %1964
  %2777 = fadd fast float %2775, %1965
  %2778 = call float @dx.op.binary.f32(i32 36, float %1977, float %2465)  ; FMin(a,b)
  %2779 = fsub fast float %2778, %1977
  %2780 = fmul fast float %2779, %2693
  %2781 = fadd fast float %2780, %1977
  %2782 = fsub fast float %2462, %1976
  %2783 = fmul fast float %2696, %2782
  %2784 = fadd fast float %2783, %1976
  %2785 = fmul fast float %2699, %2565
  %2786 = fadd fast float %2785, %1978
  %2787 = fmul fast float %2702, %2562
  %2788 = fmul fast float %2702, %2563
  %2789 = fmul fast float %2702, %2564
  %2790 = fadd fast float %2787, %1972
  %2791 = fadd fast float %2788, %1973
  %2792 = fadd fast float %2789, %1974
  br label %2793

; <label>:2793                                    ; preds = %2773, %2771, %2731, %2704, %2676, %2161, %1980, %1963
  %2794 = phi float [ %1964, %2676 ], [ %1964, %2161 ], [ %1964, %1963 ], [ %2776, %2773 ], [ %1964, %2771 ], [ %2734, %2731 ], [ %2709, %2704 ], [ %1964, %1980 ]
  %2795 = phi float [ %1965, %2676 ], [ %1965, %2161 ], [ %1965, %1963 ], [ %2777, %2773 ], [ %1965, %2771 ], [ %2735, %2731 ], [ %2710, %2704 ], [ %1965, %1980 ]
  %2796 = phi float [ %2677, %2676 ], [ %1966, %2161 ], [ %1966, %1963 ], [ %2677, %2773 ], [ %2677, %2771 ], [ %2677, %2731 ], [ %2677, %2704 ], [ %1966, %1980 ]
  %2797 = phi float [ %2678, %2676 ], [ %1967, %2161 ], [ %1967, %1963 ], [ %2678, %2773 ], [ %2678, %2771 ], [ %2678, %2731 ], [ %2678, %2704 ], [ %1967, %1980 ]
  %2798 = phi float [ %2679, %2676 ], [ %1968, %2161 ], [ %1968, %1963 ], [ %2679, %2773 ], [ %2679, %2771 ], [ %2679, %2731 ], [ %2679, %2704 ], [ %1968, %1980 ]
  %2799 = phi float [ %2680, %2676 ], [ %1969, %2161 ], [ %1969, %1963 ], [ %2680, %2773 ], [ %2680, %2771 ], [ %2680, %2731 ], [ %2680, %2704 ], [ %1969, %1980 ]
  %2800 = phi float [ %2681, %2676 ], [ %1970, %2161 ], [ %1970, %1963 ], [ %2681, %2773 ], [ %2681, %2771 ], [ %2681, %2731 ], [ %2681, %2704 ], [ %1970, %1980 ]
  %2801 = phi float [ %2682, %2676 ], [ %1971, %2161 ], [ %1971, %1963 ], [ %2682, %2773 ], [ %2682, %2771 ], [ %2682, %2731 ], [ %2682, %2704 ], [ %1971, %1980 ]
  %2802 = phi float [ %1972, %2676 ], [ %1972, %2161 ], [ %1972, %1963 ], [ %2790, %2773 ], [ %1972, %2771 ], [ %2768, %2731 ], [ %2726, %2704 ], [ %1972, %1980 ]
  %2803 = phi float [ %1973, %2676 ], [ %1973, %2161 ], [ %1973, %1963 ], [ %2791, %2773 ], [ %1973, %2771 ], [ %2769, %2731 ], [ %2727, %2704 ], [ %1973, %1980 ]
  %2804 = phi float [ %1974, %2676 ], [ %1974, %2161 ], [ %1974, %1963 ], [ %2792, %2773 ], [ %1974, %2771 ], [ %2770, %2731 ], [ %2728, %2704 ], [ %1974, %1980 ]
  %2805 = phi float [ %2683, %2676 ], [ %1975, %2161 ], [ %1975, %1963 ], [ %2683, %2773 ], [ %2683, %2771 ], [ %2683, %2731 ], [ %2683, %2704 ], [ %1975, %1980 ]
  %2806 = phi float [ %1976, %2676 ], [ %1976, %2161 ], [ %1976, %1963 ], [ %2784, %2773 ], [ %1976, %2771 ], [ %2762, %2731 ], [ %2716, %2704 ], [ %1976, %1980 ]
  %2807 = phi float [ %1977, %2676 ], [ %1977, %2161 ], [ %1977, %1963 ], [ %2781, %2773 ], [ %1977, %2771 ], [ %2739, %2731 ], [ %2713, %2704 ], [ %1977, %1980 ]
  %2808 = phi float [ %1978, %2676 ], [ %1978, %2161 ], [ %1978, %1963 ], [ %2786, %2773 ], [ %1978, %2771 ], [ %2764, %2731 ], [ %2719, %2704 ], [ %1978, %1980 ]
  %2809 = phi float [ %2684, %2676 ], [ %1979, %2161 ], [ %1979, %1963 ], [ %2684, %2773 ], [ %2684, %2771 ], [ %2684, %2731 ], [ %2684, %2704 ], [ %1979, %1980 ]
  br i1 %482, label %3623, label %2810

; <label>:2810                                    ; preds = %2793
  %2811 = icmp ult i32 %536, 4
  %2812 = add i32 %49, 72
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = add i32 %49, 76
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = or i32 %2817, %2814
  %2819 = icmp eq i32 %2818, 0
  br i1 %2819, label %3623, label %2820

; <label>:2820                                    ; preds = %2810
  %2821 = and i32 %2814, 262144
  %2822 = icmp ne i32 %2821, 0
  %2823 = select i1 %2822, float %55, float 1.000000e+00
  %2824 = select i1 %2822, float %56, float 0.000000e+00
  %2825 = select i1 %2822, float %57, float 0.000000e+00
  %2826 = select i1 %2822, float %58, float 1.000000e+00
  %2827 = select i1 %2822, float %59, float %87
  %2828 = select i1 %2822, float %60, float %88
  %2829 = add i32 %49, 332
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = lshr i32 %2831, 16
  %2833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2832)  ; LegacyF16ToF32(value)
  %2834 = fmul fast float %2833, 0x3F50624DE0000000
  %2835 = add i32 %49, 136
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = lshr i32 %2837, 16
  %2839 = and i32 %2838, 255
  %2840 = lshr i32 %2837, 24
  %2841 = add i32 %49, 340
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = and i32 %2843, 65535
  %2845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2844)  ; LegacyF16ToF32(value)
  %2846 = lshr i32 %2843, 16
  %2847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2846)  ; LegacyF16ToF32(value)
  %2848 = add i32 %49, 80
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = lshr i32 %2850, 22
  %2852 = shl nuw nsw i32 %2851, 5
  %2853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2852)  ; LegacyF16ToF32(value)
  %2854 = shl i32 %2850, 4
  %2855 = and i32 %2854, 32752
  %2856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2855)  ; LegacyF16ToF32(value)
  %2857 = lshr i32 %2850, 7
  %2858 = and i32 %2857, 32752
  %2859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2858)  ; LegacyF16ToF32(value)
  %2860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2861 = extractvalue %dx.types.CBufRet.f32 %2860, 3
  %2862 = fmul fast float %2861, 1.000000e+03
  %2863 = fmul fast float %472, %2862
  %2864 = call float @dx.op.unary.f32(i32 22, float %2863)  ; Frc(value)
  %2865 = fadd fast float %2864, %462
  %2866 = fmul fast float %473, %2862
  %2867 = call float @dx.op.unary.f32(i32 22, float %2866)  ; Frc(value)
  %2868 = fadd fast float %2867, %464
  %2869 = fmul fast float %2834, %2862
  %2870 = call float @dx.op.unary.f32(i32 22, float %2869)  ; Frc(value)
  %2871 = fmul fast float %2870, 0x401921FB60000000
  %2872 = fadd fast float %2871, %2853
  %2873 = call float @dx.op.unary.f32(i32 13, float %2872)  ; Sin(value)
  %2874 = call float @dx.op.unary.f32(i32 12, float %2872)  ; Cos(value)
  %2875 = fsub fast float -0.000000e+00, %2873
  %2876 = fadd fast float %2827, -5.000000e-01
  %2877 = fadd fast float %2828, -5.000000e-01
  %2878 = fmul fast float %2845, %2876
  %2879 = fmul fast float %2847, %2877
  %2880 = fadd fast float %2878, 5.000000e-01
  %2881 = fadd fast float %2879, 5.000000e-01
  %2882 = fmul fast float %2856, %2880
  %2883 = fmul fast float %2859, %2881
  %2884 = fmul fast float %2874, %2882
  %2885 = call float @dx.op.tertiary.f32(i32 46, float %2875, float %2883, float %2884)  ; FMad(a,b,c)
  %2886 = fmul fast float %2873, %2882
  %2887 = call float @dx.op.tertiary.f32(i32 46, float %2874, float %2883, float %2886)  ; FMad(a,b,c)
  %2888 = fadd fast float %2865, %2885
  %2889 = fadd fast float %2868, %2887
  %2890 = icmp ugt i32 %2839, 1
  %2891 = icmp ugt i32 %2837, 33554431
  %2892 = or i1 %2891, %2890
  br i1 %2892, label %2893, label %2918

; <label>:2893                                    ; preds = %2820
  %2894 = add i32 %49, 276
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = lshr i32 %2896, 16
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = fmul fast float %2861, %2898
  %2900 = call float @dx.op.unary.f32(i32 22, float %2899)  ; Frc(value)
  %2901 = mul nuw nsw i32 %2839, %2840
  %2902 = uitofp i32 %2901 to float
  %2903 = fmul fast float %2900, %2902
  %2904 = call float @dx.op.unary.f32(i32 27, float %2903)  ; Round_ni(value)
  %2905 = fptoui float %2904 to i32
  %2906 = urem i32 %2905, %2839
  %2907 = udiv i32 %2905, %2840
  %2908 = call float @dx.op.unary.f32(i32 22, float %2888)  ; Frc(value)
  %2909 = call float @dx.op.unary.f32(i32 22, float %2889)  ; Frc(value)
  %2910 = uitofp i32 %2906 to float
  %2911 = uitofp i32 %2907 to float
  %2912 = fadd fast float %2908, %2910
  %2913 = fadd fast float %2909, %2911
  %2914 = uitofp i32 %2839 to float
  %2915 = uitofp i32 %2840 to float
  %2916 = fdiv fast float %2912, %2914
  %2917 = fdiv fast float %2913, %2915
  br label %2918

; <label>:2918                                    ; preds = %2893, %2820
  %2919 = phi float [ %2916, %2893 ], [ %2888, %2820 ]
  %2920 = phi float [ %2917, %2893 ], [ %2889, %2820 ]
  %2921 = and i32 %2814, 256
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %2969, label %2923

; <label>:2923                                    ; preds = %2918
  %2924 = add i32 %49, 500
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %2926, 0
  %2928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2928, %dx.types.Handle %106, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2930 = extractvalue %dx.types.ResRet.f32 %2929, 0
  %2931 = add i32 %49, 148
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = shl i32 %2933, 4
  %2935 = and i32 %2934, 32752
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = lshr i32 %2933, 7
  %2938 = and i32 %2937, 32752
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = fsub fast float 1.000000e+00, %531
  %2941 = call float @dx.op.binary.f32(i32 35, float %2940, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2942 = bitcast float %531 to i32
  %2943 = sitofp i32 %2942 to float
  %2944 = fadd fast float %2943, 0xC1CFBF8940000000
  %2945 = fmul fast float %2939, %2944
  %2946 = fadd fast float %2945, 0x41CFBF8940000000
  %2947 = fptosi float %2946 to i32
  %2948 = bitcast i32 %2947 to float
  %2949 = bitcast float %2941 to i32
  %2950 = sitofp i32 %2949 to float
  %2951 = fadd fast float %2950, 0xC1CFBF8940000000
  %2952 = fmul fast float %2951, %2939
  %2953 = fadd fast float %2952, 0x41CFBF8940000000
  %2954 = fptosi float %2953 to i32
  %2955 = bitcast i32 %2954 to float
  %2956 = fmul fast float %2948, %2936
  %2957 = fmul fast float %2955, %2936
  %2958 = fsub fast float %2941, %2956
  %2959 = fadd fast float %2957, %2941
  %2960 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2961 = call float @dx.op.unary.f32(i32 7, float %2959)  ; Saturate(value)
  %2962 = fsub fast float %2930, %2960
  %2963 = fsub fast float %2961, %2960
  %2964 = bitcast float %2963 to i32
  %2965 = sub nsw i32 2129859010, %2964
  %2966 = bitcast i32 %2965 to float
  %2967 = fmul fast float %2966, %2962
  %2968 = call float @dx.op.unary.f32(i32 7, float %2967)  ; Saturate(value)
  br label %2969

; <label>:2969                                    ; preds = %2923, %2918
  %2970 = phi float [ %2968, %2923 ], [ %531, %2918 ]
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = and i32 %2972, 128
  %2974 = icmp eq i32 %2973, 0
  br i1 %2974, label %2991, label %2975

; <label>:2975                                    ; preds = %2969
  %2976 = add i32 %49, 484
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = add i32 %2978, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2980, %dx.types.Handle %106, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %2984, 524288
  %2986 = icmp ne i32 %2985, 0
  %2987 = fcmp fast ogt float %2982, 0x3FE0101020000000
  %2988 = select i1 %2987, float 1.000000e+00, float 0.000000e+00
  %2989 = select i1 %2986, float %2988, float %2982
  %2990 = fmul fast float %2989, %2970
  br label %2991

; <label>:2991                                    ; preds = %2975, %2969
  %2992 = phi float [ %2990, %2975 ], [ %2970, %2969 ]
  %2993 = fcmp fast ult float %2992, 0x3F70101020000000
  br i1 %2993, label %3623, label %2994

; <label>:2994                                    ; preds = %2991
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = and i32 %2996, 16
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3197, label %2999

; <label>:2999                                    ; preds = %2994
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = add i32 %49, 436
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = add i32 %3004, 0
  %3006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3006, %dx.types.Handle %105, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3008 = extractvalue %dx.types.ResRet.f32 %3007, 0
  %3009 = extractvalue %dx.types.ResRet.f32 %3007, 1
  %3010 = extractvalue %dx.types.ResRet.f32 %3007, 2
  %3011 = extractvalue %dx.types.ResRet.f32 %3007, 3
  %3012 = and i32 %3001, 255
  %3013 = uitofp i32 %3012 to float
  %3014 = lshr i32 %3001, 8
  %3015 = and i32 %3014, 255
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3011, %3013
  %3018 = fadd fast float %3017, %3016
  %3019 = fmul fast float %3018, 0x3F70101000000000
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = and i32 %3021, 512
  %3023 = icmp eq i32 %3022, 0
  br i1 %3023, label %3032, label %3024

; <label>:3024                                    ; preds = %2999
  %3025 = add i32 %49, 520
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3027, 0
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3029, %dx.types.Handle %106, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  br label %3032

; <label>:3032                                    ; preds = %3024, %2999
  %3033 = phi float [ %3031, %3024 ], [ 1.000000e+00, %2999 ]
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 33554432
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3144, label %3038

; <label>:3038                                    ; preds = %3032
  %3039 = add i32 %49, 272
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = and i32 %3041, 65535
  %3043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3042)  ; LegacyF16ToF32(value)
  %3044 = lshr i32 %3041, 16
  %3045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3044)  ; LegacyF16ToF32(value)
  %3046 = add i32 %49, 276
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 65535
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = lshr i32 %3052, 24
  %3054 = uitofp i32 %3053 to float
  %3055 = fmul fast float %3054, 0x3F70101020000000
  %3056 = and i32 %3052, 255
  %3057 = uitofp i32 %3056 to float
  %3058 = fmul fast float %3057, 0x3F70101020000000
  %3059 = lshr i32 %3052, 8
  %3060 = and i32 %3059, 255
  %3061 = uitofp i32 %3060 to float
  %3062 = fmul fast float %3061, 0x3F70101020000000
  %3063 = lshr i32 %3052, 16
  %3064 = and i32 %3063, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = fmul fast float %3065, 0x3F70101020000000
  %3067 = add i32 %49, 268
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = lshr i32 %3069, 24
  %3071 = uitofp i32 %3070 to float
  %3072 = fmul fast float %3071, 0x3F70101020000000
  %3073 = and i32 %3069, 255
  %3074 = uitofp i32 %3073 to float
  %3075 = fmul fast float %3074, 0x3F70101020000000
  %3076 = lshr i32 %3069, 8
  %3077 = and i32 %3076, 255
  %3078 = uitofp i32 %3077 to float
  %3079 = fmul fast float %3078, 0x3F70101020000000
  %3080 = lshr i32 %3069, 16
  %3081 = and i32 %3080, 255
  %3082 = uitofp i32 %3081 to float
  %3083 = fmul fast float %3082, 0x3F70101020000000
  %3084 = bitcast float %3008 to i32
  %3085 = ashr i32 %3084, 1
  %3086 = sub nsw i32 1597463174, %3085
  %3087 = bitcast i32 %3086 to float
  %3088 = fmul fast float %3008, 5.000000e-01
  %3089 = fmul fast float %3087, %3087
  %3090 = fmul fast float %3089, %3088
  %3091 = fsub fast float 1.500000e+00, %3090
  %3092 = fmul fast float %3087, %3008
  %3093 = fmul fast float %3092, %3091
  %3094 = bitcast float %3009 to i32
  %3095 = ashr i32 %3094, 1
  %3096 = sub nsw i32 1597463174, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3009, 5.000000e-01
  %3099 = fmul fast float %3097, %3097
  %3100 = fmul fast float %3099, %3098
  %3101 = fsub fast float 1.500000e+00, %3100
  %3102 = fmul fast float %3097, %3009
  %3103 = fmul fast float %3102, %3101
  %3104 = bitcast float %3010 to i32
  %3105 = ashr i32 %3104, 1
  %3106 = sub nsw i32 1597463174, %3105
  %3107 = bitcast i32 %3106 to float
  %3108 = fmul fast float %3010, 5.000000e-01
  %3109 = fmul fast float %3107, %3107
  %3110 = fmul fast float %3109, %3108
  %3111 = fsub fast float 1.500000e+00, %3110
  %3112 = fmul fast float %3107, %3010
  %3113 = fmul fast float %3112, %3111
  %3114 = fsub fast float %3093, %3075
  %3115 = fsub fast float %3103, %3079
  %3116 = fsub fast float %3113, %3083
  %3117 = fmul fast float %3114, %3043
  %3118 = fmul fast float %3115, %3045
  %3119 = fmul fast float %3116, %3050
  %3120 = fadd fast float %3117, %3058
  %3121 = fadd fast float %3118, %3062
  %3122 = fadd fast float %3119, %3066
  %3123 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3124 = call float @dx.op.unary.f32(i32 7, float %3121)  ; Saturate(value)
  %3125 = call float @dx.op.unary.f32(i32 7, float %3122)  ; Saturate(value)
  %3126 = fmul fast float %3123, %3123
  %3127 = fmul fast float %3124, %3124
  %3128 = fmul fast float %3125, %3125
  %3129 = fsub fast float %3126, %3008
  %3130 = fsub fast float %3127, %3009
  %3131 = fsub fast float %3128, %3010
  %3132 = fmul fast float %3129, %3033
  %3133 = fmul fast float %3130, %3033
  %3134 = fmul fast float %3131, %3033
  %3135 = fadd fast float %3132, %3008
  %3136 = fadd fast float %3133, %3009
  %3137 = fadd fast float %3134, %3010
  %3138 = fadd fast float %3055, %3019
  %3139 = fsub fast float %3138, %3072
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  %3141 = fsub fast float %3140, %3019
  %3142 = fmul fast float %3141, %3033
  %3143 = fadd fast float %3142, %3019
  br label %3197

; <label>:3144                                    ; preds = %3032
  %3145 = and i32 %3035, 134217728
  %3146 = icmp eq i32 %3145, 0
  br i1 %3146, label %3181, label %3147

; <label>:3147                                    ; preds = %3144
  %3148 = call float @dx.op.unary.f32(i32 24, float %449)  ; Sqrt(value)
  %3149 = call float @dx.op.unary.f32(i32 24, float %453)  ; Sqrt(value)
  %3150 = call float @dx.op.unary.f32(i32 24, float %457)  ; Sqrt(value)
  %3151 = fadd fast float %3148, -5.000000e-01
  %3152 = fadd fast float %3149, -5.000000e-01
  %3153 = fadd fast float %3150, -5.000000e-01
  %3154 = fmul fast float %3151, %3033
  %3155 = fmul fast float %3152, %3033
  %3156 = fmul fast float %3153, %3033
  %3157 = fadd fast float %3154, 5.000000e-01
  %3158 = fadd fast float %3155, 5.000000e-01
  %3159 = fadd fast float %3156, 5.000000e-01
  %3160 = call float @dx.op.unary.f32(i32 24, float %3008)  ; Sqrt(value)
  %3161 = call float @dx.op.unary.f32(i32 24, float %3009)  ; Sqrt(value)
  %3162 = call float @dx.op.unary.f32(i32 24, float %3010)  ; Sqrt(value)
  %3163 = fmul fast float %3157, 2.000000e+00
  %3164 = fsub fast float 1.000000e+00, %3163
  %3165 = fmul fast float %3164, %3160
  %3166 = fadd fast float %3165, %3163
  %3167 = fmul fast float %3166, %3160
  %3168 = fmul fast float %3158, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3161
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3161
  %3173 = fmul fast float %3159, 2.000000e+00
  %3174 = fsub fast float 1.000000e+00, %3173
  %3175 = fmul fast float %3174, %3162
  %3176 = fadd fast float %3175, %3173
  %3177 = fmul fast float %3176, %3162
  %3178 = fmul fast float %3167, %3167
  %3179 = fmul fast float %3172, %3172
  %3180 = fmul fast float %3177, %3177
  br label %3197

; <label>:3181                                    ; preds = %3144
  %3182 = fmul fast float %449, %449
  %3183 = fmul fast float %453, %453
  %3184 = fmul fast float %457, %457
  %3185 = fadd fast float %3182, -1.000000e+00
  %3186 = fadd fast float %3183, -1.000000e+00
  %3187 = fadd fast float %3184, -1.000000e+00
  %3188 = fmul fast float %3033, %3185
  %3189 = fmul fast float %3033, %3186
  %3190 = fmul fast float %3033, %3187
  %3191 = fadd fast float %3188, 1.000000e+00
  %3192 = fadd fast float %3189, 1.000000e+00
  %3193 = fadd fast float %3190, 1.000000e+00
  %3194 = fmul fast float %3191, %3008
  %3195 = fmul fast float %3192, %3009
  %3196 = fmul fast float %3193, %3010
  br label %3197

; <label>:3197                                    ; preds = %3181, %3147, %3038, %2994
  %3198 = phi float [ %3143, %3038 ], [ %3019, %3147 ], [ %3019, %3181 ], [ 0x3FA23C0BE0000000, %2994 ]
  %3199 = phi float [ %3135, %3038 ], [ %3178, %3147 ], [ %3194, %3181 ], [ 1.000000e+00, %2994 ]
  %3200 = phi float [ %3136, %3038 ], [ %3179, %3147 ], [ %3195, %3181 ], [ 1.000000e+00, %2994 ]
  %3201 = phi float [ %3137, %3038 ], [ %3180, %3147 ], [ %3196, %3181 ], [ 1.000000e+00, %2994 ]
  %3202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.i32 %3202, 1
  %3204 = and i32 %3203, 1
  %3205 = icmp ne i32 %3204, 0
  %3206 = add i32 %49, 356
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 32
  %3210 = icmp ne i32 %3209, 0
  %3211 = and i1 %3205, %3210
  %3212 = select i1 %3211, float 1.000000e+00, float %3199
  %3213 = select i1 %3211, float 0x3FD3333340000000, float %3200
  %3214 = select i1 %3211, float 0x3FD3333340000000, float %3201
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 32
  %3218 = icmp eq i32 %3217, 0
  br i1 %3218, label %3291, label %3219

; <label>:3219                                    ; preds = %3197
  %3220 = add i32 %49, 140
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = add i32 %49, 452
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = add i32 %3225, 0
  %3227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3227, %dx.types.Handle %105, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3229 = extractvalue %dx.types.ResRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.ResRet.f32 %3228, 1
  %3231 = extractvalue %dx.types.ResRet.f32 %3228, 2
  %3232 = extractvalue %dx.types.ResRet.f32 %3228, 3
  %3233 = and i32 %3222, 255
  %3234 = uitofp i32 %3233 to float
  %3235 = lshr i32 %3222, 8
  %3236 = and i32 %3235, 255
  %3237 = uitofp i32 %3236 to float
  %3238 = lshr i32 %3222, 16
  %3239 = and i32 %3238, 255
  %3240 = uitofp i32 %3239 to float
  %3241 = fmul fast float %3240, 0x3F70101000000000
  %3242 = fmul fast float %3229, %3234
  %3243 = fadd fast float %3242, %3237
  %3244 = fmul fast float %3243, 0x3F70101000000000
  %3245 = fadd fast float %3230, -5.000000e-01
  %3246 = fadd fast float %3232, -5.000000e-01
  %3247 = fmul fast float %3245, %3241
  %3248 = fmul fast float %3246, %3241
  %3249 = fadd fast float %3247, 5.000000e-01
  %3250 = fadd fast float %3248, 5.000000e-01
  %3251 = fmul fast float %3249, 2.000000e+00
  %3252 = fadd fast float %3251, -1.000000e+00
  %3253 = fmul fast float %3250, 2.000000e+00
  %3254 = fadd fast float %3253, -1.000000e+00
  %3255 = fadd fast float %3252, %3254
  %3256 = fmul fast float %3255, 5.000000e-01
  %3257 = fsub fast float %3252, %3254
  %3258 = fmul fast float %3257, 5.000000e-01
  %3259 = call float @dx.op.unary.f32(i32 6, float %3256)  ; FAbs(value)
  %3260 = fsub fast float 1.000000e+00, %3259
  %3261 = call float @dx.op.unary.f32(i32 6, float %3258)  ; FAbs(value)
  %3262 = fsub fast float %3260, %3261
  %3263 = call float @dx.op.dot3.f32(i32 55, float %3256, float %3258, float %3262, float %3256, float %3258, float %3262)  ; Dot3(ax,ay,az,bx,by,bz)
  %3264 = call float @dx.op.unary.f32(i32 25, float %3263)  ; Rsqrt(value)
  %3265 = fmul fast float %3256, %3264
  %3266 = fmul fast float %3258, %3264
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = and i32 %3268, 67108864
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %3287, label %3271

; <label>:3271                                    ; preds = %3219
  %3272 = add i32 %49, 328
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, 65535
  %3276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3275)  ; LegacyF16ToF32(value)
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3278 = extractvalue %dx.types.ResRet.i32 %3277, 0
  %3279 = and i32 %3278, 65535
  %3280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3279)  ; LegacyF16ToF32(value)
  %3281 = lshr i32 %3274, 16
  %3282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3281)  ; LegacyF16ToF32(value)
  %3283 = fsub fast float %3244, %3282
  %3284 = fmul fast float %3283, %3276
  %3285 = fadd fast float %3284, %3280
  %3286 = call float @dx.op.unary.f32(i32 7, float %3285)  ; Saturate(value)
  br label %3287

; <label>:3287                                    ; preds = %3271, %3219
  %3288 = phi float [ %3286, %3271 ], [ %3244, %3219 ]
  %3289 = call float @dx.op.dot2.f32(i32 54, float %3265, float %3266, float %2823, float %2824)  ; Dot2(ax,ay,bx,by)
  %3290 = call float @dx.op.dot2.f32(i32 54, float %3265, float %3266, float %2825, float %2826)  ; Dot2(ax,ay,bx,by)
  br label %3291

; <label>:3291                                    ; preds = %3287, %3197
  %3292 = phi float [ %3288, %3287 ], [ 0x3FD6666660000000, %3197 ]
  %3293 = phi float [ %3289, %3287 ], [ 0.000000e+00, %3197 ]
  %3294 = phi float [ %3290, %3287 ], [ 0.000000e+00, %3197 ]
  %3295 = phi float [ %3231, %3287 ], [ 1.000000e+00, %3197 ]
  %3296 = add i32 %49, 208
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = lshr i32 %3298, 22
  %3300 = shl nuw nsw i32 %3299, 5
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 64
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3339, label %3306

; <label>:3306                                    ; preds = %3291
  %3307 = add i32 %49, 468
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = and i32 %3313, 131072
  %3315 = icmp eq i32 %3314, 0
  %3316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3311, %dx.types.Handle %105, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = fmul fast float %3317, %437
  %3321 = fmul fast float %3318, %440
  %3322 = fmul fast float %3319, %443
  br i1 %3315, label %3329, label %3323

; <label>:3323                                    ; preds = %3306
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3325 = extractvalue %dx.types.CBufRet.f32 %3324, 0
  %3326 = fmul fast float %3325, %3320
  %3327 = fmul fast float %3325, %3321
  %3328 = fmul fast float %3325, %3322
  br label %3329

; <label>:3329                                    ; preds = %3323, %3306
  %3330 = phi float [ %3326, %3323 ], [ %3320, %3306 ]
  %3331 = phi float [ %3327, %3323 ], [ %3321, %3306 ]
  %3332 = phi float [ %3328, %3323 ], [ %3322, %3306 ]
  %3333 = fmul fast float %3330, %3301
  %3334 = select i1 %294, float %3333, float %3330
  %3335 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3331, float %3332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3336 = select i1 %294, float 0.000000e+00, float %3330
  %3337 = select i1 %294, float %3335, float %3331
  %3338 = select i1 %294, float 0.000000e+00, float %3332
  br label %3339

; <label>:3339                                    ; preds = %3329, %3291
  %3340 = phi float [ %3336, %3329 ], [ 0.000000e+00, %3291 ]
  %3341 = phi float [ %3337, %3329 ], [ 0.000000e+00, %3291 ]
  %3342 = phi float [ %3338, %3329 ], [ 0.000000e+00, %3291 ]
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 10240
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3391, label %3347

; <label>:3347                                    ; preds = %3339
  %3348 = add i32 %49, 536
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = add i32 %3350, 0
  %3352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3352, %dx.types.Handle %106, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 3
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 1048576
  %3359 = icmp ne i32 %3358, 0
  %3360 = and i32 %3357, 8192
  %3361 = icmp eq i32 %3360, 0
  br i1 %3361, label %3377, label %3362

; <label>:3362                                    ; preds = %3347
  %3363 = extractvalue %dx.types.ResRet.f32 %3353, 2
  %3364 = select i1 %3359, float %3363, float %3354
  %3365 = extractvalue %dx.types.ResRet.f32 %3353, 0
  %3366 = select i1 %3359, float %3365, float %3354
  %3367 = add i32 %49, 144
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = lshr i32 %3369, 16
  %3371 = and i32 %3370, 255
  %3372 = uitofp i32 %3371 to float
  %3373 = fmul fast float %3372, 0x3F80101020000000
  %3374 = fmul fast float %3373, %3366
  %3375 = fmul fast float %3373, %3354
  %3376 = fmul fast float %3373, %3364
  br label %3377

; <label>:3377                                    ; preds = %3362, %3347
  %3378 = phi float [ %3374, %3362 ], [ 0.000000e+00, %3347 ]
  %3379 = phi float [ %3375, %3362 ], [ 0.000000e+00, %3347 ]
  %3380 = phi float [ %3376, %3362 ], [ 0.000000e+00, %3347 ]
  %3381 = and i32 %3357, 2048
  %3382 = icmp eq i32 %3381, 0
  br i1 %3382, label %3391, label %3383

; <label>:3383                                    ; preds = %3377
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = shl i32 %3385, 4
  %3387 = and i32 %3386, 32752
  %3388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3387)  ; LegacyF16ToF32(value)
  %3389 = fmul fast float %3388, %3355
  %3390 = call float @dx.op.binary.f32(i32 35, float %3389, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3391

; <label>:3391                                    ; preds = %3383, %3377, %3339
  %3392 = phi float [ %3378, %3383 ], [ %3378, %3377 ], [ 0.000000e+00, %3339 ]
  %3393 = phi float [ %3379, %3383 ], [ %3379, %3377 ], [ 0.000000e+00, %3339 ]
  %3394 = phi float [ %3380, %3383 ], [ %3380, %3377 ], [ 0.000000e+00, %3339 ]
  %3395 = phi float [ %3390, %3383 ], [ 0x3F70101020000000, %3377 ], [ 0x3F70101020000000, %3339 ]
  %3396 = add i32 %49, 144
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = and i32 %3398, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = lshr i32 %3398, 8
  %3402 = and i32 %3401, 255
  %3403 = uitofp i32 %3402 to float
  %3404 = call float @dx.op.dot3.f32(i32 55, float %3212, float %3213, float %3214, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3405 = fmul fast float %3403, %3404
  %3406 = fadd fast float %3405, %3400
  %3407 = fmul fast float %3406, 0x3F70101020000000
  %3408 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  br i1 %2811, label %3409, label %3417

; <label>:3409                                    ; preds = %3391
  %3410 = fsub fast float 1.000000e+00, %2992
  %3411 = fmul fast float %3410, %2796
  %3412 = fmul fast float %3410, %2797
  %3413 = fmul fast float %3410, %2798
  %3414 = fmul fast float %3410, %2799
  %3415 = fmul fast float %3410, %2800
  %3416 = fmul fast float %3410, %2801
  br label %3417

; <label>:3417                                    ; preds = %3409, %3391
  %3418 = phi float [ %3411, %3409 ], [ %2796, %3391 ]
  %3419 = phi float [ %3412, %3409 ], [ %2797, %3391 ]
  %3420 = phi float [ %3413, %3409 ], [ %2798, %3391 ]
  %3421 = phi float [ %3414, %3409 ], [ %2799, %3391 ]
  %3422 = phi float [ %3415, %3409 ], [ %2800, %3391 ]
  %3423 = phi float [ %3416, %3409 ], [ %2801, %3391 ]
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3425 = extractvalue %dx.types.ResRet.i32 %3424, 0
  %3426 = and i32 %3425, 3
  %3427 = icmp eq i32 %3426, 3
  br i1 %3427, label %3506, label %3428

; <label>:3428                                    ; preds = %3417
  %3429 = and i32 %3425, 16
  %3430 = icmp ne i32 %3429, 0
  %3431 = select i1 %3430, float %2992, float 0.000000e+00
  %3432 = icmp eq i32 %3426, 0
  br i1 %3432, label %3433, label %3461

; <label>:3433                                    ; preds = %3428
  %3434 = and i32 %3425, 64
  %3435 = icmp ne i32 %3434, 0
  %3436 = select i1 %3435, float %2992, float 0.000000e+00
  %3437 = fsub fast float %3212, %3418
  %3438 = fsub fast float %3213, %3419
  %3439 = fsub fast float %3214, %3420
  %3440 = fmul fast float %3431, %3437
  %3441 = fmul fast float %3431, %3438
  %3442 = fmul fast float %3431, %3439
  %3443 = fadd fast float %3440, %3418
  %3444 = fadd fast float %3441, %3419
  %3445 = fadd fast float %3442, %3420
  %3446 = fsub fast float %3198, %2805
  %3447 = fmul fast float %3431, %3446
  %3448 = fadd fast float %3447, %2805
  %3449 = fsub fast float %3340, %3421
  %3450 = fsub fast float %3341, %3422
  %3451 = fsub fast float %3342, %3423
  %3452 = fmul fast float %3436, %3449
  %3453 = fmul fast float %3436, %3450
  %3454 = fmul fast float %3436, %3451
  %3455 = fadd fast float %3452, %3421
  %3456 = fadd fast float %3453, %3422
  %3457 = fadd fast float %3454, %3423
  %3458 = fsub fast float %3408, %2809
  %3459 = fmul fast float %3431, %3458
  %3460 = fadd fast float %3459, %2809
  br label %3506

; <label>:3461                                    ; preds = %3428
  %3462 = icmp eq i32 %3426, 1
  br i1 %3462, label %3463, label %3476

; <label>:3463                                    ; preds = %3461
  %3464 = fadd fast float %3212, -1.000000e+00
  %3465 = fadd fast float %3213, -1.000000e+00
  %3466 = fadd fast float %3214, -1.000000e+00
  %3467 = fmul fast float %3431, %3464
  %3468 = fmul fast float %3431, %3465
  %3469 = fmul fast float %3431, %3466
  %3470 = fadd fast float %3467, 1.000000e+00
  %3471 = fadd fast float %3468, 1.000000e+00
  %3472 = fadd fast float %3469, 1.000000e+00
  %3473 = fmul fast float %3470, %3418
  %3474 = fmul fast float %3471, %3419
  %3475 = fmul fast float %3472, %3420
  br label %3506

; <label>:3476                                    ; preds = %3461
  %3477 = icmp eq i32 %3426, 2
  br i1 %3477, label %3478, label %3506

; <label>:3478                                    ; preds = %3476
  %3479 = call float @dx.op.unary.f32(i32 24, float %3212)  ; Sqrt(value)
  %3480 = call float @dx.op.unary.f32(i32 24, float %3213)  ; Sqrt(value)
  %3481 = call float @dx.op.unary.f32(i32 24, float %3214)  ; Sqrt(value)
  %3482 = fadd fast float %3479, -5.000000e-01
  %3483 = fadd fast float %3480, -5.000000e-01
  %3484 = fadd fast float %3481, -5.000000e-01
  %3485 = fmul fast float %3482, %3431
  %3486 = fmul fast float %3483, %3431
  %3487 = fmul fast float %3484, %3431
  %3488 = fadd fast float %3485, 5.000000e-01
  %3489 = fadd fast float %3486, 5.000000e-01
  %3490 = fadd fast float %3487, 5.000000e-01
  %3491 = fmul fast float %3488, 2.000000e+00
  %3492 = fsub fast float 1.000000e+00, %3491
  %3493 = fmul fast float %3492, %3418
  %3494 = fadd fast float %3493, %3491
  %3495 = fmul fast float %3494, %3418
  %3496 = fmul fast float %3489, 2.000000e+00
  %3497 = fsub fast float 1.000000e+00, %3496
  %3498 = fmul fast float %3497, %3419
  %3499 = fadd fast float %3498, %3496
  %3500 = fmul fast float %3499, %3419
  %3501 = fmul fast float %3490, 2.000000e+00
  %3502 = fsub fast float 1.000000e+00, %3501
  %3503 = fmul fast float %3502, %3420
  %3504 = fadd fast float %3503, %3501
  %3505 = fmul fast float %3504, %3420
  br label %3506

; <label>:3506                                    ; preds = %3478, %3476, %3463, %3433, %3417
  %3507 = phi float [ %3418, %3417 ], [ %3495, %3478 ], [ %3418, %3476 ], [ %3473, %3463 ], [ %3443, %3433 ]
  %3508 = phi float [ %3419, %3417 ], [ %3500, %3478 ], [ %3419, %3476 ], [ %3474, %3463 ], [ %3444, %3433 ]
  %3509 = phi float [ %3420, %3417 ], [ %3505, %3478 ], [ %3420, %3476 ], [ %3475, %3463 ], [ %3445, %3433 ]
  %3510 = phi float [ %3421, %3417 ], [ %3421, %3478 ], [ %3421, %3476 ], [ %3421, %3463 ], [ %3455, %3433 ]
  %3511 = phi float [ %3422, %3417 ], [ %3422, %3478 ], [ %3422, %3476 ], [ %3422, %3463 ], [ %3456, %3433 ]
  %3512 = phi float [ %3423, %3417 ], [ %3423, %3478 ], [ %3423, %3476 ], [ %3423, %3463 ], [ %3457, %3433 ]
  %3513 = phi float [ %2805, %3417 ], [ %2805, %3478 ], [ %2805, %3476 ], [ %2805, %3463 ], [ %3448, %3433 ]
  %3514 = phi float [ %2809, %3417 ], [ %2809, %3478 ], [ %2809, %3476 ], [ %2809, %3463 ], [ %3460, %3433 ]
  %3515 = and i32 %3425, 12
  %3516 = icmp eq i32 %3515, 12
  br i1 %3516, label %3623, label %3517

; <label>:3517                                    ; preds = %3506
  %3518 = and i32 %3425, 2097184
  %3519 = icmp eq i32 %3518, 2097184
  %3520 = select i1 %3519, float %2992, float 0.000000e+00
  %3521 = and i32 %3425, 4194336
  %3522 = icmp eq i32 %3521, 4194336
  %3523 = select i1 %3522, float %2992, float 0.000000e+00
  %3524 = and i32 %3425, 8388640
  %3525 = icmp eq i32 %3524, 8388640
  %3526 = select i1 %3525, float %2992, float 0.000000e+00
  %3527 = and i32 %3425, 2048
  %3528 = icmp ne i32 %3527, 0
  %3529 = select i1 %3528, float %2992, float 0.000000e+00
  %3530 = and i32 %3425, 8192
  %3531 = icmp ne i32 %3530, 0
  %3532 = select i1 %3531, float %2992, float 0.000000e+00
  %3533 = icmp eq i32 %3515, 0
  br i1 %3533, label %3534, label %3559

; <label>:3534                                    ; preds = %3517
  %3535 = fsub fast float %3293, %2794
  %3536 = fsub fast float %3294, %2795
  %3537 = fmul fast float %3520, %3535
  %3538 = fmul fast float %3520, %3536
  %3539 = fadd fast float %3537, %2794
  %3540 = fadd fast float %3538, %2795
  %3541 = fsub fast float %3295, %2807
  %3542 = fmul fast float %3523, %3541
  %3543 = fadd fast float %3542, %2807
  %3544 = fsub fast float %3292, %2806
  %3545 = fmul fast float %3526, %3544
  %3546 = fadd fast float %3545, %2806
  %3547 = fsub fast float %3395, %2808
  %3548 = fmul fast float %3529, %3547
  %3549 = fadd fast float %3548, %2808
  %3550 = fsub fast float %3392, %2802
  %3551 = fsub fast float %3393, %2803
  %3552 = fsub fast float %3394, %2804
  %3553 = fmul fast float %3532, %3550
  %3554 = fmul fast float %3532, %3551
  %3555 = fmul fast float %3532, %3552
  %3556 = fadd fast float %3553, %2802
  %3557 = fadd fast float %3554, %2803
  %3558 = fadd fast float %3555, %2804
  br label %3623

; <label>:3559                                    ; preds = %3517
  %3560 = icmp eq i32 %3515, 4
  br i1 %3560, label %3561, label %3601

; <label>:3561                                    ; preds = %3559
  %3562 = fmul fast float %3520, %3293
  %3563 = fmul fast float %3520, %3294
  %3564 = fadd fast float %3562, %2794
  %3565 = fadd fast float %3563, %2795
  %3566 = call float @dx.op.binary.f32(i32 36, float %2807, float %3295)  ; FMin(a,b)
  %3567 = fsub fast float %3566, %2807
  %3568 = fmul fast float %3567, %3523
  %3569 = fadd fast float %3568, %2807
  %3570 = fadd fast float %3292, %2806
  %3571 = fmul fast float %3570, 0x3FF337FAE0000000
  %3572 = fmul fast float %2806, %2806
  %3573 = fmul fast float %3292, %3292
  %3574 = fadd fast float %3573, %3572
  %3575 = fmul fast float %3574, 0x3FE5152B00000000
  %3576 = fmul fast float %2806, 0xBFCC1F85E0000000
  %3577 = fmul fast float %3576, %3292
  %3578 = fadd fast float %3577, 0xBFE1363700000000
  %3579 = fadd fast float %3578, %3571
  %3580 = fsub fast float %3579, %3575
  %3581 = fmul fast float %3570, 0x3FBA6F0D00000000
  %3582 = fmul fast float %3574, 0x3FD0432880000000
  %3583 = fmul fast float %2806, 0xBFEF110800000000
  %3584 = fmul fast float %3583, %3292
  %3585 = fadd fast float %3584, 1.000000e+00
  %3586 = fsub fast float %3585, %3581
  %3587 = fadd fast float %3586, %3582
  %3588 = fdiv fast float %3580, %3587
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3590 = fsub fast float %3589, %2806
  %3591 = fmul fast float %3590, %3526
  %3592 = fadd fast float %3591, %2806
  %3593 = fmul fast float %3529, %3395
  %3594 = fadd fast float %3593, %2808
  %3595 = fmul fast float %3532, %3392
  %3596 = fmul fast float %3532, %3393
  %3597 = fmul fast float %3532, %3394
  %3598 = fadd fast float %3595, %2802
  %3599 = fadd fast float %3596, %2803
  %3600 = fadd fast float %3597, %2804
  br label %3623

; <label>:3601                                    ; preds = %3559
  %3602 = icmp eq i32 %3515, 8
  br i1 %3602, label %3603, label %3623

; <label>:3603                                    ; preds = %3601
  %3604 = fmul fast float %3520, %3293
  %3605 = fmul fast float %3520, %3294
  %3606 = fadd fast float %3604, %2794
  %3607 = fadd fast float %3605, %2795
  %3608 = call float @dx.op.binary.f32(i32 36, float %2807, float %3295)  ; FMin(a,b)
  %3609 = fsub fast float %3608, %2807
  %3610 = fmul fast float %3609, %3523
  %3611 = fadd fast float %3610, %2807
  %3612 = fsub fast float %3292, %2806
  %3613 = fmul fast float %3526, %3612
  %3614 = fadd fast float %3613, %2806
  %3615 = fmul fast float %3529, %3395
  %3616 = fadd fast float %3615, %2808
  %3617 = fmul fast float %3532, %3392
  %3618 = fmul fast float %3532, %3393
  %3619 = fmul fast float %3532, %3394
  %3620 = fadd fast float %3617, %2802
  %3621 = fadd fast float %3618, %2803
  %3622 = fadd fast float %3619, %2804
  br label %3623

; <label>:3623                                    ; preds = %3603, %3601, %3561, %3534, %3506, %2991, %2810, %2793
  %3624 = phi float [ %2794, %3506 ], [ %2794, %2991 ], [ %2794, %2793 ], [ %2794, %2810 ], [ %3539, %3534 ], [ %3564, %3561 ], [ %2794, %3601 ], [ %3606, %3603 ]
  %3625 = phi float [ %2795, %3506 ], [ %2795, %2991 ], [ %2795, %2793 ], [ %2795, %2810 ], [ %3540, %3534 ], [ %3565, %3561 ], [ %2795, %3601 ], [ %3607, %3603 ]
  %3626 = phi float [ %3507, %3506 ], [ %2796, %2991 ], [ %2796, %2793 ], [ %2796, %2810 ], [ %3507, %3534 ], [ %3507, %3561 ], [ %3507, %3601 ], [ %3507, %3603 ]
  %3627 = phi float [ %3508, %3506 ], [ %2797, %2991 ], [ %2797, %2793 ], [ %2797, %2810 ], [ %3508, %3534 ], [ %3508, %3561 ], [ %3508, %3601 ], [ %3508, %3603 ]
  %3628 = phi float [ %3509, %3506 ], [ %2798, %2991 ], [ %2798, %2793 ], [ %2798, %2810 ], [ %3509, %3534 ], [ %3509, %3561 ], [ %3509, %3601 ], [ %3509, %3603 ]
  %3629 = phi float [ %3510, %3506 ], [ %2799, %2991 ], [ %2799, %2793 ], [ %2799, %2810 ], [ %3510, %3534 ], [ %3510, %3561 ], [ %3510, %3601 ], [ %3510, %3603 ]
  %3630 = phi float [ %3511, %3506 ], [ %2800, %2991 ], [ %2800, %2793 ], [ %2800, %2810 ], [ %3511, %3534 ], [ %3511, %3561 ], [ %3511, %3601 ], [ %3511, %3603 ]
  %3631 = phi float [ %3512, %3506 ], [ %2801, %2991 ], [ %2801, %2793 ], [ %2801, %2810 ], [ %3512, %3534 ], [ %3512, %3561 ], [ %3512, %3601 ], [ %3512, %3603 ]
  %3632 = phi float [ %2802, %3506 ], [ %2802, %2991 ], [ %2802, %2793 ], [ %2802, %2810 ], [ %3556, %3534 ], [ %3598, %3561 ], [ %2802, %3601 ], [ %3620, %3603 ]
  %3633 = phi float [ %2803, %3506 ], [ %2803, %2991 ], [ %2803, %2793 ], [ %2803, %2810 ], [ %3557, %3534 ], [ %3599, %3561 ], [ %2803, %3601 ], [ %3621, %3603 ]
  %3634 = phi float [ %2804, %3506 ], [ %2804, %2991 ], [ %2804, %2793 ], [ %2804, %2810 ], [ %3558, %3534 ], [ %3600, %3561 ], [ %2804, %3601 ], [ %3622, %3603 ]
  %3635 = phi float [ %3513, %3506 ], [ %2805, %2991 ], [ %2805, %2793 ], [ %2805, %2810 ], [ %3513, %3534 ], [ %3513, %3561 ], [ %3513, %3601 ], [ %3513, %3603 ]
  %3636 = phi float [ %2806, %3506 ], [ %2806, %2991 ], [ %2806, %2793 ], [ %2806, %2810 ], [ %3546, %3534 ], [ %3592, %3561 ], [ %2806, %3601 ], [ %3614, %3603 ]
  %3637 = phi float [ %2807, %3506 ], [ %2807, %2991 ], [ %2807, %2793 ], [ %2807, %2810 ], [ %3543, %3534 ], [ %3569, %3561 ], [ %2807, %3601 ], [ %3611, %3603 ]
  %3638 = phi float [ %2808, %3506 ], [ %2808, %2991 ], [ %2808, %2793 ], [ %2808, %2810 ], [ %3549, %3534 ], [ %3594, %3561 ], [ %2808, %3601 ], [ %3616, %3603 ]
  %3639 = phi float [ %3514, %3506 ], [ %2809, %2991 ], [ %2809, %2793 ], [ %2809, %2810 ], [ %3514, %3534 ], [ %3514, %3561 ], [ %3514, %3601 ], [ %3514, %3603 ]
  %3640 = add i32 %49, 408
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.i32 %3641, 1
  %3644 = bitcast i32 %3642 to float
  %3645 = bitcast i32 %3643 to float
  %3646 = fcmp fast oge float %3644, 0.000000e+00
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = select i1 %3646, float %3644, float %3648
  %3650 = fadd fast float %3649, %202
  %3651 = fmul fast float %3645, %203
  %3652 = add i32 %49, 504
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = add i32 %3654, 0
  %3656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3656, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = fmul fast float %3651, %3658
  %3660 = fadd fast float %3650, %3659
  %3661 = and i32 %194, 65535
  %3662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3661)  ; LegacyF16ToF32(value)
  %3663 = lshr i32 %194, 16
  %3664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3663)  ; LegacyF16ToF32(value)
  %3665 = and i32 %195, 65535
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = fmul fast float %3662, %3626
  %3668 = fmul fast float %3664, %3627
  %3669 = fmul fast float %3666, %3628
  %3670 = shl i32 %196, 4
  %3671 = and i32 %3670, 32752
  %3672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3671)  ; LegacyF16ToF32(value)
  %3673 = lshr i32 %196, 7
  %3674 = and i32 %3673, 32752
  %3675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3674)  ; LegacyF16ToF32(value)
  %3676 = lshr i32 %196, 22
  %3677 = shl nuw nsw i32 %3676, 5
  %3678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3677)  ; LegacyF16ToF32(value)
  %3679 = and i32 %197, 65535
  %3680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3679)  ; LegacyF16ToF32(value)
  %3681 = fmul fast float %3672, %3629
  %3682 = fmul fast float %3681, %3680
  %3683 = fmul fast float %3675, %3630
  %3684 = fmul fast float %3683, %3680
  %3685 = fmul fast float %3678, %3631
  %3686 = fmul fast float %3685, %3680
  %3687 = call float @dx.op.dot2.f32(i32 54, float %3624, float %3625, float %3624, float %3625)  ; Dot2(ax,ay,bx,by)
  %3688 = fmul fast float %3687, 0x3FE3333340000000
  %3689 = fsub fast float 1.000000e+00, %3688
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3624, float %3625, float %3689, float %3624, float %3625, float %3689)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = call float @dx.op.unary.f32(i32 25, float %3690)  ; Rsqrt(value)
  %3692 = fmul fast float %3691, %3624
  %3693 = fmul fast float %3691, %3625
  %3694 = fmul fast float %3689, %3691
  %3695 = fmul fast float %3694, %116
  %3696 = fmul fast float %3694, %117
  %3697 = fmul fast float %3694, %118
  %3698 = fmul fast float %3692, %80
  %3699 = fmul fast float %3692, %81
  %3700 = fmul fast float %3692, %82
  %3701 = fadd fast float %3695, %3698
  %3702 = fadd fast float %3696, %3699
  %3703 = fadd fast float %3697, %3700
  %3704 = fmul fast float %128, %3693
  %3705 = fmul fast float %129, %3693
  %3706 = fmul fast float %130, %3693
  %3707 = fadd fast float %3701, %3704
  %3708 = fadd fast float %3702, %3705
  %3709 = fadd fast float %3703, %3706
  %3710 = call float @dx.op.dot3.f32(i32 55, float %3707, float %3708, float %3709, float %3707, float %3708, float %3709)  ; Dot3(ax,ay,az,bx,by,bz)
  %3711 = call float @dx.op.unary.f32(i32 25, float %3710)  ; Rsqrt(value)
  %3712 = fmul fast float %3707, %3711
  %3713 = fmul fast float %3708, %3711
  %3714 = fmul fast float %3709, %3711
  %3715 = icmp eq i32 %51, 65535
  br i1 %3715, label %4283, label %3716

; <label>:3716                                    ; preds = %3623
  %3717 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %3718 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %3719 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3720 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %3721 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %3722 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3723 = fadd fast float %3717, %52
  %3724 = fadd fast float %3718, %53
  %3725 = fadd fast float %3719, %54
  %3726 = fadd fast float %3720, %52
  %3727 = fadd fast float %3721, %53
  %3728 = fadd fast float %3722, %54
  %3729 = mul i32 %51, 48
  %3730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = extractvalue %dx.types.ResRet.f32 %3730, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3730, 2
  %3734 = add i32 %3729, 16
  %3735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3736 = extractvalue %dx.types.ResRet.f32 %3735, 0
  %3737 = extractvalue %dx.types.ResRet.f32 %3735, 1
  %3738 = extractvalue %dx.types.ResRet.f32 %3735, 2
  %3739 = add i32 %3729, 32
  %3740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = extractvalue %dx.types.ResRet.f32 %3740, 1
  %3743 = extractvalue %dx.types.ResRet.f32 %3740, 2
  %3744 = extractvalue %dx.types.ResRet.f32 %3740, 3
  %3745 = bitcast float %3744 to i32
  %3746 = fmul fast float %3731, %52
  %3747 = fmul fast float %3732, %53
  %3748 = fmul fast float %3733, %54
  %3749 = fsub fast float %3746, %3736
  %3750 = fsub fast float %3747, %3737
  %3751 = fsub fast float %3748, %3738
  %3752 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3753 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3754 = call float @dx.op.unary.f32(i32 7, float %3751)  ; Saturate(value)
  %3755 = fmul fast float %3752, %3741
  %3756 = fmul fast float %3753, %3742
  %3757 = fmul fast float %3754, %3743
  %3758 = fadd fast float %3741, -1.000000e+00
  %3759 = fadd fast float %3742, -1.000000e+00
  %3760 = fadd fast float %3743, -1.000000e+00
  %3761 = call float @dx.op.unary.f32(i32 27, float %3755)  ; Round_ni(value)
  %3762 = call float @dx.op.unary.f32(i32 27, float %3756)  ; Round_ni(value)
  %3763 = call float @dx.op.unary.f32(i32 27, float %3757)  ; Round_ni(value)
  %3764 = call float @dx.op.binary.f32(i32 36, float %3761, float %3758)  ; FMin(a,b)
  %3765 = call float @dx.op.binary.f32(i32 36, float %3762, float %3759)  ; FMin(a,b)
  %3766 = call float @dx.op.binary.f32(i32 36, float %3763, float %3760)  ; FMin(a,b)
  %3767 = fmul fast float %3766, %3742
  %3768 = fadd fast float %3767, %3765
  %3769 = fmul fast float %3768, %3741
  %3770 = fadd fast float %3769, %3764
  %3771 = fptosi float %3770 to i32
  %3772 = add nsw i32 %3771, %3745
  %3773 = shl nsw i32 %3772, 2
  %3774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3773, i32 undef)  ; BufferLoad(srv,index,wot)
  %3775 = extractvalue %dx.types.ResRet.i32 %3774, 0
  %3776 = lshr i32 %3775, 16
  %3777 = icmp eq i32 %3776, 0
  br i1 %3777, label %4249, label %3778

; <label>:3778                                    ; preds = %3716
  br label %3779

; <label>:3779                                    ; preds = %3903, %3778
  %3780 = phi i32 [ %3805, %3903 ], [ %3776, %3778 ]
  %3781 = phi float [ %3904, %3903 ], [ 0.000000e+00, %3778 ]
  %3782 = phi float [ %3905, %3903 ], [ %3660, %3778 ]
  %3783 = phi float [ %3906, %3903 ], [ %3639, %3778 ]
  %3784 = phi float [ %3907, %3903 ], [ 0.000000e+00, %3778 ]
  %3785 = phi float [ %3908, %3903 ], [ 0.000000e+00, %3778 ]
  %3786 = phi float [ %3909, %3903 ], [ %3632, %3778 ]
  %3787 = phi float [ %3910, %3903 ], [ %3633, %3778 ]
  %3788 = phi float [ %3911, %3903 ], [ %3634, %3778 ]
  %3789 = phi float [ %3912, %3903 ], [ %3682, %3778 ]
  %3790 = phi float [ %3913, %3903 ], [ %3684, %3778 ]
  %3791 = phi float [ %3914, %3903 ], [ %3686, %3778 ]
  %3792 = phi float [ %3915, %3903 ], [ %3712, %3778 ]
  %3793 = phi float [ %3916, %3903 ], [ %3713, %3778 ]
  %3794 = phi float [ %3917, %3903 ], [ %3714, %3778 ]
  %3795 = phi float [ %3918, %3903 ], [ %3637, %3778 ]
  %3796 = phi float [ %3919, %3903 ], [ %3636, %3778 ]
  %3797 = phi float [ %3920, %3903 ], [ 0.000000e+00, %3778 ]
  %3798 = phi float [ %3921, %3903 ], [ %3635, %3778 ]
  %3799 = phi float [ %3922, %3903 ], [ %3667, %3778 ]
  %3800 = phi float [ %3923, %3903 ], [ %3668, %3778 ]
  %3801 = phi float [ %3924, %3903 ], [ %3669, %3778 ]
  %3802 = shl nuw nsw i32 %3780, 2
  %3803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3802, i32 undef)  ; BufferLoad(srv,index,wot)
  %3804 = extractvalue %dx.types.ResRet.i32 %3803, 0
  %3805 = lshr i32 %3804, 16
  %3806 = shl i32 %3804, 8
  %3807 = and i32 %3806, 16776960
  %3808 = or i32 %3807, 48
  %3809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3808, i32 undef)  ; BufferLoad(srv,index,wot)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = or i32 %3807, 64
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.i32 %3814, 1
  %3817 = or i32 %3807, 80
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3821 = or i32 %3807, 96
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3826 = extractvalue %dx.types.ResRet.f32 %3822, 3
  %3827 = or i32 %3807, 112
  %3828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3829 = extractvalue %dx.types.ResRet.f32 %3828, 2
  %3830 = or i32 %3807, 128
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = or i32 %3807, 144
  %3837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = or i32 %3807, 160
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = extractvalue %dx.types.ResRet.f32 %3843, 2
  %3847 = extractvalue %dx.types.ResRet.f32 %3843, 3
  %3848 = or i32 %3807, 192
  %3849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.i32 %3849, 0
  %3851 = or i32 %3807, 208
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = or i32 %3807, 248
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3864 = or i32 %3807, 16
  %3865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.ResRet.f32 %3865, 2
  %3869 = extractvalue %dx.types.ResRet.f32 %3865, 3
  %3870 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3871 = or i32 %3807, 32
  %3872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3871, i32 undef)  ; BufferLoad(srv,index,wot)
  %3873 = extractvalue %dx.types.ResRet.f32 %3872, 0
  %3874 = extractvalue %dx.types.ResRet.f32 %3872, 1
  %3875 = extractvalue %dx.types.ResRet.f32 %3872, 2
  %3876 = extractvalue %dx.types.ResRet.f32 %3872, 3
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3873, float %3874, float %3875, float %3876, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = call float @dx.op.unary.f32(i32 27, float %3863)  ; Round_ni(value)
  %3879 = call float @dx.op.unary.f32(i32 6, float %3878)  ; FAbs(value)
  %3880 = call float @dx.op.unary.f32(i32 27, float %3870)  ; Round_ni(value)
  %3881 = call float @dx.op.unary.f32(i32 6, float %3880)  ; FAbs(value)
  %3882 = call float @dx.op.unary.f32(i32 6, float %3877)  ; FAbs(value)
  %3883 = call float @dx.op.unary.f32(i32 27, float %3882)  ; Round_ni(value)
  %3884 = fadd fast float %3881, %3879
  %3885 = fadd fast float %3884, %3883
  %3886 = fcmp fast oeq float %3885, 0.000000e+00
  %3887 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %3723, float %3724, float %3725, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3888 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %3723, float %3724, float %3725, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3889 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %3726, float %3727, float %3728, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3890 = call float @dx.op.dot4.f32(i32 56, float %3866, float %3867, float %3868, float %3869, float %3726, float %3727, float %3728, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3891 = fsub fast float %3887, %3863
  %3892 = fsub fast float %3889, %3863
  %3893 = fsub fast float %3888, %3870
  %3894 = fsub fast float %3890, %3870
  %3895 = call float @dx.op.dot3.f32(i32 55, float %3810, float %3811, float %3812, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 2
  %3898 = fadd fast float %3897, %3895
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3901 = fcmp fast ogt float %3899, %3900
  %3902 = and i1 %3886, %3901
  br i1 %3902, label %3926, label %3903

; <label>:3903                                    ; preds = %4235, %4009, %3926, %3779
  %3904 = phi float [ %3781, %3926 ], [ %4012, %4009 ], [ %4012, %4235 ], [ %3781, %3779 ]
  %3905 = phi float [ %3782, %3926 ], [ %3782, %4009 ], [ %4211, %4235 ], [ %3782, %3779 ]
  %3906 = phi float [ %3783, %3926 ], [ %3783, %4009 ], [ %4209, %4235 ], [ %3783, %3779 ]
  %3907 = phi float [ %3784, %3926 ], [ %3784, %4009 ], [ %4136, %4235 ], [ %3784, %3779 ]
  %3908 = phi float [ %3785, %3926 ], [ %3785, %4009 ], [ %4134, %4235 ], [ %3785, %3779 ]
  %3909 = phi float [ %3786, %3926 ], [ %3786, %4009 ], [ %4179, %4235 ], [ %3786, %3779 ]
  %3910 = phi float [ %3787, %3926 ], [ %3787, %4009 ], [ %4180, %4235 ], [ %3787, %3779 ]
  %3911 = phi float [ %3788, %3926 ], [ %3788, %4009 ], [ %4181, %4235 ], [ %3788, %3779 ]
  %3912 = phi float [ %3789, %3926 ], [ %3789, %4009 ], [ %4245, %4235 ], [ %3789, %3779 ]
  %3913 = phi float [ %3790, %3926 ], [ %3790, %4009 ], [ %4246, %4235 ], [ %3790, %3779 ]
  %3914 = phi float [ %3791, %3926 ], [ %3791, %4009 ], [ %4247, %4235 ], [ %3791, %3779 ]
  %3915 = phi float [ %3792, %3926 ], [ %3792, %4009 ], [ %4115, %4235 ], [ %3792, %3779 ]
  %3916 = phi float [ %3793, %3926 ], [ %3793, %4009 ], [ %4116, %4235 ], [ %3793, %3779 ]
  %3917 = phi float [ %3794, %3926 ], [ %3794, %4009 ], [ %4117, %4235 ], [ %3794, %3779 ]
  %3918 = phi float [ %3795, %3926 ], [ %3795, %4009 ], [ %4189, %4235 ], [ %3795, %3779 ]
  %3919 = phi float [ %3796, %3926 ], [ %3796, %4009 ], [ %4186, %4235 ], [ %3796, %3779 ]
  %3920 = phi float [ %3797, %3926 ], [ %3797, %4009 ], [ %4183, %4235 ], [ %3797, %3779 ]
  %3921 = phi float [ %3798, %3926 ], [ %3798, %4009 ], [ %4132, %4235 ], [ %3798, %3779 ]
  %3922 = phi float [ %3799, %3926 ], [ %3799, %4009 ], [ %4127, %4235 ], [ %3799, %3779 ]
  %3923 = phi float [ %3800, %3926 ], [ %3800, %4009 ], [ %4128, %4235 ], [ %3800, %3779 ]
  %3924 = phi float [ %3801, %3926 ], [ %3801, %4009 ], [ %4129, %4235 ], [ %3801, %3779 ]
  %3925 = icmp eq i32 %3805, 0
  br i1 %3925, label %4248, label %3779

; <label>:3926                                    ; preds = %3779
  %3927 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3928 = extractvalue %dx.types.ResRet.f32 %3828, 3
  %3929 = extractvalue %dx.types.ResRet.f32 %3828, 1
  %3930 = extractvalue %dx.types.ResRet.f32 %3828, 0
  %3931 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3932 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3933 = extractvalue %dx.types.ResRet.i32 %3814, 3
  %3934 = extractvalue %dx.types.ResRet.i32 %3814, 2
  %3935 = bitcast float %3927 to i32
  %3936 = add i32 %3933, 0
  %3937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3936, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3939 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3937, %dx.types.Handle %3938, float %3863, float %3870, float undef, float undef, i32 0, i32 0, i32 undef, float %3891, float %3893, float undef, float %3892, float %3894, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = fmul fast float %3940, %3932
  %3942 = fadd fast float %3941, %3931
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = fmul fast float %3863, %3823
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3870, float %3944)  ; FMad(a,b,c)
  %3946 = fadd fast float %3945, %3930
  %3947 = fmul fast float %3863, %3825
  %3948 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3870, float %3947)  ; FMad(a,b,c)
  %3949 = fadd fast float %3948, %3929
  %3950 = fmul fast float %3891, %3823
  %3951 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3893, float %3950)  ; FMad(a,b,c)
  %3952 = fmul fast float %3891, %3825
  %3953 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3893, float %3952)  ; FMad(a,b,c)
  %3954 = fmul fast float %3892, %3823
  %3955 = call float @dx.op.tertiary.f32(i32 46, float %3824, float %3894, float %3954)  ; FMad(a,b,c)
  %3956 = fmul fast float %3892, %3825
  %3957 = call float @dx.op.tertiary.f32(i32 46, float %3826, float %3894, float %3956)  ; FMad(a,b,c)
  %3958 = add i32 %3934, 0
  %3959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3958, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3960 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3959, %dx.types.Handle %3938, float %3946, float %3949, float undef, float undef, i32 0, i32 0, i32 undef, float %3951, float %3953, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3961 = extractvalue %dx.types.ResRet.f32 %3960, 0
  %3962 = and i32 %3935, 1024
  %3963 = icmp ne i32 %3962, 0
  %3964 = fcmp fast ogt float %3961, 0x3FE0101020000000
  %3965 = uitofp i1 %3964 to float
  %3966 = select i1 %3963, float %3965, float %3961
  %3967 = and i32 %3935, 8192
  %3968 = icmp ne i32 %3967, 0
  %3969 = select i1 %3968, float %3928, float 1.000000e+00
  %3970 = fmul fast float %3863, 2.000000e+00
  %3971 = fadd fast float %3970, -1.000000e+00
  %3972 = call float @dx.op.unary.f32(i32 6, float %3971)  ; FAbs(value)
  %3973 = fmul fast float %3972, %3856
  %3974 = fsub fast float %3973, %3856
  %3975 = call float @dx.op.unary.f32(i32 7, float %3974)  ; Saturate(value)
  %3976 = fmul fast float %3870, 2.000000e+00
  %3977 = fadd fast float %3976, -1.000000e+00
  %3978 = call float @dx.op.unary.f32(i32 6, float %3977)  ; FAbs(value)
  %3979 = fmul fast float %3978, %3857
  %3980 = fsub fast float %3979, %3857
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3982 = fmul fast float %3882, %3819
  %3983 = fsub fast float %3982, %3819
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = fmul fast float %3943, %3969
  %3986 = fmul fast float %3985, %3940
  %3987 = fmul fast float %3986, %3975
  %3988 = fmul fast float %3987, %3966
  %3989 = fmul fast float %3988, %3981
  %3990 = fmul fast float %3989, %3984
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3993 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3994 = fsub fast float %3899, %3993
  %3995 = fmul fast float %3994, %3992
  %3996 = call float @dx.op.unary.f32(i32 7, float %3995)  ; Saturate(value)
  %3997 = fmul fast float %3990, %3820
  %3998 = fadd fast float %3990, %3820
  %3999 = fmul fast float %3998, %3829
  %4000 = fsub fast float %3999, %3829
  %4001 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4002 = and i32 %3935, 128
  %4003 = icmp ne i32 %4002, 0
  %4004 = select i1 %4003, float %4001, float %3997
  %4005 = fmul fast float %4004, %3996
  %4006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4007 = extractvalue %dx.types.CBufRet.f32 %4006, 0
  %4008 = fcmp fast ugt float %4005, %4007
  br i1 %4008, label %4009, label %3903

; <label>:4009                                    ; preds = %3926
  %4010 = select i1 %3968, float %4005, float 0.000000e+00
  %4011 = fadd fast float %4010, %3781
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  br i1 %3968, label %3903, label %4013

; <label>:4013                                    ; preds = %4009
  %4014 = and i32 %3935, 4
  %4015 = and i32 %3935, 8
  %4016 = add i32 %3815, 0
  %4017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4016, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4017, %dx.types.Handle %4018, float %3946, float %3949, float undef, float undef, i32 0, i32 0, i32 undef, float %3951, float %3953, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = extractvalue %dx.types.ResRet.f32 %4019, 1
  %4022 = extractvalue %dx.types.ResRet.f32 %4019, 2
  %4023 = extractvalue %dx.types.ResRet.f32 %4019, 3
  %4024 = bitcast float %3841 to i32
  %4025 = and i32 %4024, 255
  %4026 = uitofp i32 %4025 to float
  %4027 = lshr i32 %4024, 8
  %4028 = and i32 %4027, 255
  %4029 = uitofp i32 %4028 to float
  %4030 = fmul fast float %4023, %4026
  %4031 = fadd fast float %4030, %4029
  %4032 = fmul fast float %4031, 0x3F70101000000000
  %4033 = add i32 %3816, 0
  %4034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4033, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4035 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4034, %dx.types.Handle %4018, float %3946, float %3949, float undef, float undef, i32 0, i32 0, i32 undef, float %3951, float %3953, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = extractvalue %dx.types.ResRet.f32 %4035, 3
  %4040 = bitcast float %3835 to i32
  %4041 = and i32 %4040, 255
  %4042 = uitofp i32 %4041 to float
  %4043 = lshr i32 %4040, 8
  %4044 = and i32 %4043, 255
  %4045 = uitofp i32 %4044 to float
  %4046 = lshr i32 %4040, 16
  %4047 = and i32 %4046, 255
  %4048 = uitofp i32 %4047 to float
  %4049 = fmul fast float %4048, 0x3F70101000000000
  %4050 = fmul fast float %4036, %4042
  %4051 = fadd fast float %4050, %4045
  %4052 = fmul fast float %4051, 0x3F70101000000000
  %4053 = fadd fast float %4037, -5.000000e-01
  %4054 = fadd fast float %4039, -5.000000e-01
  %4055 = fmul fast float %4053, %4049
  %4056 = fmul fast float %4054, %4049
  %4057 = fadd fast float %4055, 5.000000e-01
  %4058 = fadd fast float %4056, 5.000000e-01
  %4059 = fmul fast float %4020, %3844
  %4060 = fmul fast float %4021, %3845
  %4061 = fmul fast float %4022, %3846
  %4062 = fmul fast float %4057, 2.000000e+00
  %4063 = fadd fast float %4062, -1.000000e+00
  %4064 = fmul fast float %4058, 2.000000e+00
  %4065 = fadd fast float %4064, -1.000000e+00
  %4066 = fadd fast float %4063, %4065
  %4067 = fmul fast float %4066, 5.000000e-01
  %4068 = fsub fast float %4063, %4065
  %4069 = fmul fast float %4068, 5.000000e-01
  %4070 = call float @dx.op.unary.f32(i32 6, float %4067)  ; FAbs(value)
  %4071 = fsub fast float 1.000000e+00, %4070
  %4072 = call float @dx.op.unary.f32(i32 6, float %4069)  ; FAbs(value)
  %4073 = fsub fast float %4071, %4072
  %4074 = call float @dx.op.dot3.f32(i32 55, float %4067, float %4069, float %4073, float %4067, float %4069, float %4073)  ; Dot3(ax,ay,az,bx,by,bz)
  %4075 = call float @dx.op.unary.f32(i32 25, float %4074)  ; Rsqrt(value)
  %4076 = fmul fast float %4067, %4075
  %4077 = fmul fast float %4069, %4075
  %4078 = fmul fast float %4075, %4073
  %4079 = fmul fast float %4078, %3810
  %4080 = fmul fast float %4078, %3811
  %4081 = fmul fast float %4078, %3812
  %4082 = fmul fast float %4076, %3832
  %4083 = fmul fast float %4076, %3833
  %4084 = fmul fast float %4076, %3834
  %4085 = fadd fast float %4082, %4079
  %4086 = fadd fast float %4083, %4080
  %4087 = fadd fast float %4084, %4081
  %4088 = fmul fast float %4077, %3838
  %4089 = fmul fast float %4077, %3839
  %4090 = fmul fast float %4077, %3840
  %4091 = fadd fast float %4085, %4088
  %4092 = fadd fast float %4086, %4089
  %4093 = fadd fast float %4087, %4090
  %4094 = call float @dx.op.dot3.f32(i32 55, float %4091, float %4092, float %4093, float %4091, float %4092, float %4093)  ; Dot3(ax,ay,az,bx,by,bz)
  %4095 = call float @dx.op.unary.f32(i32 25, float %4094)  ; Rsqrt(value)
  %4096 = fmul fast float %4091, %4095
  %4097 = fmul fast float %4092, %4095
  %4098 = fmul fast float %4093, %4095
  %4099 = icmp ne i32 %4015, 0
  %4100 = select i1 %4099, float 1.000000e+00, float 0.000000e+00
  %4101 = fmul fast float %4005, %4100
  %4102 = and i32 %3935, 1
  %4103 = icmp eq i32 %4102, 0
  br i1 %4103, label %4104, label %4108

; <label>:4104                                    ; preds = %4013
  %4105 = fsub fast float %4096, %3792
  %4106 = fsub fast float %4097, %3793
  %4107 = fsub fast float %4098, %3794
  br label %4108

; <label>:4108                                    ; preds = %4104, %4013
  %4109 = phi float [ %4105, %4104 ], [ %4096, %4013 ]
  %4110 = phi float [ %4106, %4104 ], [ %4097, %4013 ]
  %4111 = phi float [ %4107, %4104 ], [ %4098, %4013 ]
  %4112 = fmul float %4111, %4101
  %4113 = fmul float %4110, %4101
  %4114 = fmul float %4109, %4101
  %4115 = fadd fast float %4114, %3792
  %4116 = fadd fast float %4113, %3793
  %4117 = fadd fast float %4112, %3794
  %4118 = icmp ne i32 %4014, 0
  %4119 = select i1 %4118, float 1.000000e+00, float 0.000000e+00
  %4120 = fmul fast float %4005, %4119
  %4121 = fsub fast float %4059, %3799
  %4122 = fsub fast float %4060, %3800
  %4123 = fsub fast float %4061, %3801
  %4124 = fmul fast float %4121, %4120
  %4125 = fmul fast float %4122, %4120
  %4126 = fmul fast float %4123, %4120
  %4127 = fadd fast float %4124, %3799
  %4128 = fadd fast float %4125, %3800
  %4129 = fadd fast float %4126, %3801
  %4130 = fsub fast float %4032, %3798
  %4131 = fmul fast float %4130, %4120
  %4132 = fadd fast float %4131, %3798
  %4133 = fmul fast float %4120, %3785
  %4134 = fsub fast float %3785, %4133
  %4135 = fmul fast float %4120, %3784
  %4136 = fsub fast float %3784, %4135
  %4137 = bitcast float %3853 to i32
  %4138 = lshr i32 %4137, 16
  %4139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4138)  ; LegacyF16ToF32(value)
  %4140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4141 = extractvalue %dx.types.ResRet.i32 %4140, 0
  %4142 = and i32 %4141, 1
  %4143 = icmp eq i32 %4142, 0
  br i1 %4143, label %4144, label %4169

; <label>:4144                                    ; preds = %4108
  %4145 = fadd fast float %4032, 0xBFB99999A0000000
  %4146 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4147 = fmul fast float %4146, 0x3FF1C71C80000000
  %4148 = fsub fast float 1.000000e+00, %4147
  %4149 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4150 = fmul fast float %4149, %4059
  %4151 = fmul fast float %4149, %4060
  %4152 = fmul fast float %4149, %4061
  %4153 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4155 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4156 = call float @dx.op.binary.f32(i32 35, float %4154, float %4155)  ; FMax(a,b)
  %4157 = call float @dx.op.binary.f32(i32 35, float %4153, float %4156)  ; FMax(a,b)
  %4158 = fcmp fast ogt float %4157, 0.000000e+00
  %4159 = bitcast float %4157 to i32
  %4160 = sub nsw i32 2129859010, %4159
  %4161 = bitcast i32 %4160 to float
  %4162 = select i1 %4158, float %4161, float 0.000000e+00
  %4163 = fmul fast float %4153, %4139
  %4164 = fmul fast float %4154, %4139
  %4165 = fmul fast float %4155, %4139
  %4166 = fmul fast float %4163, %4162
  %4167 = fmul fast float %4164, %4162
  %4168 = fmul fast float %4165, %4162
  br label %4169

; <label>:4169                                    ; preds = %4144, %4108
  %4170 = phi float [ %4139, %4108 ], [ %4166, %4144 ]
  %4171 = phi float [ %4139, %4108 ], [ %4167, %4144 ]
  %4172 = phi float [ %4139, %4108 ], [ %4168, %4144 ]
  %4173 = fsub fast float %4170, %3786
  %4174 = fsub fast float %4171, %3787
  %4175 = fsub fast float %4172, %3788
  %4176 = fmul fast float %4173, %4120
  %4177 = fmul fast float %4174, %4120
  %4178 = fmul fast float %4175, %4120
  %4179 = fadd fast float %4176, %3786
  %4180 = fadd fast float %4177, %3787
  %4181 = fadd fast float %4178, %3788
  %4182 = fadd fast float %4005, %3797
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = fsub fast float %4052, %3796
  %4185 = fmul fast float %4184, %4101
  %4186 = fadd fast float %4185, %3796
  %4187 = fsub fast float %4038, %3795
  %4188 = fmul fast float %4187, %4101
  %4189 = fadd fast float %4188, %3795
  %4190 = call float @dx.op.dot3.f32(i32 55, float %4059, float %4060, float %4061, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4194 = fmul fast float %4193, %4190
  %4195 = fadd fast float %4194, %4192
  %4196 = call float @dx.op.unary.f32(i32 7, float %4195)  ; Saturate(value)
  %4197 = bitcast float %3847 to i32
  %4198 = and i32 %4197, 65535
  %4199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4198)  ; LegacyF16ToF32(value)
  %4200 = lshr i32 %4197, 16
  %4201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4200)  ; LegacyF16ToF32(value)
  %4202 = fcmp fast oge float %4199, 0.000000e+00
  %4203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.f32 %4203, 0
  %4205 = select i1 %4202, float %4199, float %4204
  %4206 = fadd fast float %4205, %4201
  %4207 = fsub fast float %4196, %3783
  %4208 = fmul fast float %4207, %4005
  %4209 = fadd fast float %4208, %3783
  %4210 = fmul fast float %4206, %4005
  %4211 = call float @dx.op.binary.f32(i32 35, float %3782, float %4210)  ; FMax(a,b)
  %4212 = and i32 %3935, 16
  %4213 = icmp eq i32 %4212, 0
  br i1 %4213, label %4235, label %4214

; <label>:4214                                    ; preds = %4169
  %4215 = add i32 %3850, 0
  %4216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4215, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4217 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4216, %dx.types.Handle %4018, float %3946, float %3949, float undef, float undef, i32 0, i32 0, i32 undef, float %3951, float %3953, float undef, float %3955, float %3957, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = and i32 %4137, 65535
  %4222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4221)  ; LegacyF16ToF32(value)
  %4223 = fmul fast float %4218, %3844
  %4224 = fmul fast float %4219, %3845
  %4225 = fmul fast float %4220, %3846
  %4226 = and i32 %3935, 16384
  %4227 = icmp ne i32 %4226, 0
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 0
  %4230 = select i1 %4227, float %4229, float 1.000000e+00
  %4231 = fmul fast float %4230, %4222
  %4232 = fmul fast float %4223, %4231
  %4233 = fmul fast float %4224, %4231
  %4234 = fmul fast float %4225, %4231
  br label %4235

; <label>:4235                                    ; preds = %4214, %4169
  %4236 = phi float [ %4232, %4214 ], [ 0.000000e+00, %4169 ]
  %4237 = phi float [ %4233, %4214 ], [ 0.000000e+00, %4169 ]
  %4238 = phi float [ %4234, %4214 ], [ 0.000000e+00, %4169 ]
  %4239 = fsub fast float %4236, %3789
  %4240 = fsub fast float %4237, %3790
  %4241 = fsub fast float %4238, %3791
  %4242 = fmul fast float %4239, %4005
  %4243 = fmul fast float %4240, %4005
  %4244 = fmul fast float %4241, %4005
  %4245 = fadd fast float %4242, %3789
  %4246 = fadd fast float %4243, %3790
  %4247 = fadd fast float %4244, %3791
  br label %3903

; <label>:4248                                    ; preds = %3903
  br label %4249

; <label>:4249                                    ; preds = %4248, %3716
  %4250 = phi float [ 0.000000e+00, %3716 ], [ %3904, %4248 ]
  %4251 = phi float [ %3660, %3716 ], [ %3905, %4248 ]
  %4252 = phi float [ %3639, %3716 ], [ %3906, %4248 ]
  %4253 = phi float [ 0.000000e+00, %3716 ], [ %3907, %4248 ]
  %4254 = phi float [ 0.000000e+00, %3716 ], [ %3908, %4248 ]
  %4255 = phi float [ %3632, %3716 ], [ %3909, %4248 ]
  %4256 = phi float [ %3633, %3716 ], [ %3910, %4248 ]
  %4257 = phi float [ %3634, %3716 ], [ %3911, %4248 ]
  %4258 = phi float [ %3682, %3716 ], [ %3912, %4248 ]
  %4259 = phi float [ %3684, %3716 ], [ %3913, %4248 ]
  %4260 = phi float [ %3686, %3716 ], [ %3914, %4248 ]
  %4261 = phi float [ %3712, %3716 ], [ %3915, %4248 ]
  %4262 = phi float [ %3713, %3716 ], [ %3916, %4248 ]
  %4263 = phi float [ %3714, %3716 ], [ %3917, %4248 ]
  %4264 = phi float [ %3637, %3716 ], [ %3918, %4248 ]
  %4265 = phi float [ %3636, %3716 ], [ %3919, %4248 ]
  %4266 = phi float [ 0.000000e+00, %3716 ], [ %3920, %4248 ]
  %4267 = phi float [ %3635, %3716 ], [ %3921, %4248 ]
  %4268 = phi float [ %3667, %3716 ], [ %3922, %4248 ]
  %4269 = phi float [ %3668, %3716 ], [ %3923, %4248 ]
  %4270 = phi float [ %3669, %3716 ], [ %3924, %4248 ]
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4261, float %4262, float %4263, float %4261, float %4262, float %4263)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = call float @dx.op.unary.f32(i32 25, float %4271)  ; Rsqrt(value)
  %4273 = fmul fast float %4272, %4261
  %4274 = fmul fast float %4272, %4262
  %4275 = fmul fast float %4272, %4263
  %4276 = fadd fast float %4266, %1145
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = call float @dx.op.dot3.f32(i32 55, float %4273, float %4274, float %4275, float %4273, float %4274, float %4275)  ; Dot3(ax,ay,az,bx,by,bz)
  %4279 = call float @dx.op.unary.f32(i32 25, float %4278)  ; Rsqrt(value)
  %4280 = fmul fast float %4279, %4273
  %4281 = fmul fast float %4279, %4274
  %4282 = fmul fast float %4279, %4275
  br label %4283

; <label>:4283                                    ; preds = %4249, %3623
  %4284 = phi float [ %4268, %4249 ], [ %3667, %3623 ]
  %4285 = phi float [ %4269, %4249 ], [ %3668, %3623 ]
  %4286 = phi float [ %4270, %4249 ], [ %3669, %3623 ]
  %4287 = phi float [ %4258, %4249 ], [ %3682, %3623 ]
  %4288 = phi float [ %4259, %4249 ], [ %3684, %3623 ]
  %4289 = phi float [ %4260, %4249 ], [ %3686, %3623 ]
  %4290 = phi float [ %4255, %4249 ], [ %3632, %3623 ]
  %4291 = phi float [ %4256, %4249 ], [ %3633, %3623 ]
  %4292 = phi float [ %4257, %4249 ], [ %3634, %3623 ]
  %4293 = phi float [ %4280, %4249 ], [ %3712, %3623 ]
  %4294 = phi float [ %4281, %4249 ], [ %3713, %3623 ]
  %4295 = phi float [ %4282, %4249 ], [ %3714, %3623 ]
  %4296 = phi float [ %4267, %4249 ], [ %3635, %3623 ]
  %4297 = phi float [ %4277, %4249 ], [ %1145, %3623 ]
  %4298 = phi float [ %4265, %4249 ], [ %3636, %3623 ]
  %4299 = phi float [ %4264, %4249 ], [ %3637, %3623 ]
  %4300 = phi float [ %4254, %4249 ], [ 0.000000e+00, %3623 ]
  %4301 = phi float [ %4253, %4249 ], [ 0.000000e+00, %3623 ]
  %4302 = phi float [ %4250, %4249 ], [ 0.000000e+00, %3623 ]
  %4303 = phi float [ %4251, %4249 ], [ %3660, %3623 ]
  %4304 = phi float [ %4252, %4249 ], [ %3639, %3623 ]
  %4305 = add i32 %49, 392
  %4306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %4307 = extractvalue %dx.types.ResRet.i32 %4306, 0
  %4308 = extractvalue %dx.types.ResRet.i32 %4306, 1
  %4309 = extractvalue %dx.types.ResRet.i32 %4306, 2
  %4310 = extractvalue %dx.types.ResRet.i32 %4306, 3
  %4311 = bitcast i32 %4307 to float
  %4312 = bitcast i32 %4308 to float
  %4313 = bitcast i32 %4309 to float
  %4314 = bitcast i32 %4310 to float
  %4315 = fsub fast float %4284, %4311
  %4316 = fsub fast float %4285, %4312
  %4317 = fsub fast float %4286, %4313
  %4318 = fmul fast float %4315, %235
  %4319 = fmul fast float %4316, %235
  %4320 = fmul fast float %4317, %235
  %4321 = fadd fast float %4318, %4311
  %4322 = fadd fast float %4319, %4312
  %4323 = fadd fast float %4320, %4313
  %4324 = fsub fast float %4297, %4314
  %4325 = fmul fast float %4324, %235
  %4326 = fadd fast float %4325, %4314
  %4327 = fadd fast float %4296, 0xBFB99999A0000000
  %4328 = call float @dx.op.unary.f32(i32 7, float %4327)  ; Saturate(value)
  %4329 = fmul fast float %4328, 0x3FF1C71C80000000
  %4330 = call float @dx.op.binary.f32(i32 36, float %4296, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4331 = fsub fast float 1.000000e+00, %4329
  %4332 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4333 = fmul fast float %4321, %4332
  %4334 = fmul fast float %4322, %4332
  %4335 = fmul fast float %4323, %4332
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4338 = call float @dx.op.unary.f32(i32 7, float %4335)  ; Saturate(value)
  %4339 = fmul fast float %4321, %4329
  %4340 = fmul fast float %4322, %4329
  %4341 = fmul fast float %4323, %4329
  %4342 = fadd fast float %4339, %4330
  %4343 = fadd fast float %4340, %4330
  %4344 = fadd fast float %4341, %4330
  %4345 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4346 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4347 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4348 = call float @dx.op.unary.f32(i32 7, float %4298)  ; Saturate(value)
  %4349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.i32 %4349, 0
  %4351 = and i32 %4350, 1
  %4352 = icmp eq i32 %4351, 0
  br i1 %4352, label %4367, label %4353

; <label>:4353                                    ; preds = %4283
  %4354 = call float @dx.op.binary.f32(i32 35, float %4337, float %4338)  ; FMax(a,b)
  %4355 = call float @dx.op.binary.f32(i32 35, float %4336, float %4354)  ; FMax(a,b)
  %4356 = fcmp fast ogt float %4355, 0.000000e+00
  %4357 = bitcast float %4355 to i32
  %4358 = sub nsw i32 2129859010, %4357
  %4359 = bitcast i32 %4358 to float
  %4360 = select i1 %4356, float %4359, float 0.000000e+00
  %4361 = fmul fast float %4336, %4290
  %4362 = fmul fast float %4337, %4291
  %4363 = fmul fast float %4338, %4292
  %4364 = fmul fast float %4361, %4360
  %4365 = fmul fast float %4362, %4360
  %4366 = fmul fast float %4363, %4360
  br label %4367

; <label>:4367                                    ; preds = %4353, %4283
  %4368 = phi float [ %4364, %4353 ], [ %4290, %4283 ]
  %4369 = phi float [ %4365, %4353 ], [ %4291, %4283 ]
  %4370 = phi float [ %4366, %4353 ], [ %4292, %4283 ]
  %4371 = fadd fast float %4336, 0xBFD51EB860000000
  %4372 = fadd fast float %4337, 0xBFD51EB860000000
  %4373 = fadd fast float %4338, 0xBFD51EB860000000
  %4374 = fmul fast float %4371, %4371
  %4375 = fmul fast float %4372, %4372
  %4376 = fmul fast float %4373, %4373
  %4377 = fmul fast float %4374, %4374
  %4378 = fmul fast float %4377, 1.000000e+02
  %4379 = fmul fast float %4375, %4375
  %4380 = fmul fast float %4379, 1.000000e+02
  %4381 = fmul fast float %4376, %4376
  %4382 = fmul fast float %4381, 1.000000e+02
  %4383 = fadd fast float %4378, 3.500000e+00
  %4384 = fadd fast float %4380, 3.500000e+00
  %4385 = fadd fast float %4382, 3.500000e+00
  %4386 = call float @dx.op.binary.f32(i32 35, float %4368, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4387 = call float @dx.op.binary.f32(i32 35, float %4369, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4388 = call float @dx.op.binary.f32(i32 35, float %4370, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4389 = fdiv fast float %4383, %4386
  %4390 = fdiv fast float %4384, %4387
  %4391 = fdiv fast float %4385, %4388
  %4392 = fmul fast float %3638, 0xBFF7154760000000
  %4393 = fmul fast float %4392, %4389
  %4394 = call float @dx.op.unary.f32(i32 21, float %4393)  ; Exp(value)
  %4395 = fmul fast float %4394, 2.500000e-01
  %4396 = fmul fast float %3638, 0xBFDEC709E0000000
  %4397 = fmul fast float %4396, %4389
  %4398 = call float @dx.op.unary.f32(i32 21, float %4397)  ; Exp(value)
  %4399 = fmul fast float %4398, 7.500000e-01
  %4400 = fmul fast float %4392, %4390
  %4401 = call float @dx.op.unary.f32(i32 21, float %4400)  ; Exp(value)
  %4402 = fmul fast float %4401, 2.500000e-01
  %4403 = fmul fast float %4396, %4390
  %4404 = call float @dx.op.unary.f32(i32 21, float %4403)  ; Exp(value)
  %4405 = fmul fast float %4404, 7.500000e-01
  %4406 = fmul fast float %4392, %4391
  %4407 = call float @dx.op.unary.f32(i32 21, float %4406)  ; Exp(value)
  %4408 = fmul fast float %4407, 2.500000e-01
  %4409 = fmul fast float %4396, %4391
  %4410 = call float @dx.op.unary.f32(i32 21, float %4409)  ; Exp(value)
  %4411 = fmul fast float %4410, 7.500000e-01
  %4412 = fadd fast float %4395, %4399
  %4413 = fadd fast float %4402, %4405
  %4414 = fadd fast float %4408, %4411
  %4415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.i32 %4415, 3
  %4417 = and i32 %4416, 8
  %4418 = icmp ne i32 %4417, 0
  %4419 = call float @dx.op.binary.f32(i32 35, float %4336, float %4321)  ; FMax(a,b)
  %4420 = call float @dx.op.binary.f32(i32 35, float %4337, float %4321)  ; FMax(a,b)
  %4421 = call float @dx.op.binary.f32(i32 35, float %4338, float %4321)  ; FMax(a,b)
  %4422 = call float @dx.op.dot3.f32(i32 55, float %4336, float %4337, float %4338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4423 = select i1 %294, float %4321, float %4336
  %4424 = select i1 %294, float %4422, float %4337
  %4425 = select i1 %294, float 1.000000e+00, float %4338
  %4426 = select i1 %4418, float %4419, float %4423
  %4427 = select i1 %4418, float %4420, float %4424
  %4428 = select i1 %4418, float %4421, float %4425
  %4429 = and i32 %270, 3
  %4430 = select i1 %264, i32 %4429, i32 0
  %4431 = icmp eq i32 %4430, 1
  br i1 %4431, label %4432, label %4508

; <label>:4432                                    ; preds = %4367
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 0
  %4435 = extractvalue %dx.types.CBufRet.f32 %4433, 1
  %4436 = fadd fast float %4434, %188
  %4437 = fadd fast float %4435, %189
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4441 = fsub fast float %4436, %4439
  %4442 = fsub fast float %4437, %4440
  %4443 = fmul fast float %4441, %4441
  %4444 = fmul fast float %4442, %4442
  %4445 = fadd fast float %4443, %4444
  %4446 = call float @dx.op.unary.f32(i32 24, float %4445)  ; Sqrt(value)
  %4447 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4448 = fcmp fast olt float %4446, %4447
  br i1 %4448, label %4449, label %4502

; <label>:4449                                    ; preds = %4432
  %4450 = extractvalue %dx.types.CBufRet.f32 %4433, 2
  %4451 = fadd fast float %4450, %190
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 0
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 0
  %4458 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4459 = extractvalue %dx.types.CBufRet.f32 %4454, 1
  %4460 = extractvalue %dx.types.CBufRet.f32 %4456, 1
  %4461 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4462 = extractvalue %dx.types.CBufRet.f32 %4454, 3
  %4463 = extractvalue %dx.types.CBufRet.f32 %4456, 3
  %4464 = fadd fast float %4461, %4436
  %4465 = fadd fast float %4462, %4437
  %4466 = fadd fast float %4451, %4463
  %4467 = fmul fast float %4464, %4453
  %4468 = call float @dx.op.tertiary.f32(i32 46, float %4465, float %4455, float %4467)  ; FMad(a,b,c)
  %4469 = call float @dx.op.tertiary.f32(i32 46, float %4466, float %4457, float %4468)  ; FMad(a,b,c)
  %4470 = fmul fast float %4464, %4458
  %4471 = call float @dx.op.tertiary.f32(i32 46, float %4465, float %4459, float %4470)  ; FMad(a,b,c)
  %4472 = call float @dx.op.tertiary.f32(i32 46, float %4466, float %4460, float %4471)  ; FMad(a,b,c)
  %4473 = fsub fast float %4469, %4461
  %4474 = fsub fast float %4472, %4462
  %4475 = fsub fast float %4473, %4439
  %4476 = fadd fast float %4475, %4447
  %4477 = fsub fast float %4474, %4440
  %4478 = fadd fast float %4477, %4447
  %4479 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4480 = fmul fast float %4476, %4479
  %4481 = fmul fast float %4478, %4479
  %4482 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4483 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4484 = fsub fast float 1.000000e+00, %4482
  %4485 = fsub fast float 1.000000e+00, %4483
  %4486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4484, float %4485, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4487 = extractvalue %dx.types.ResRet.f32 %4486, 0
  %4488 = fcmp fast ugt float %4487, 0.000000e+00
  br i1 %4488, label %4489, label %4502

; <label>:4489                                    ; preds = %4449
  %4490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4491 = extractvalue %dx.types.CBufRet.f32 %4490, 2
  %4492 = fmul fast float %4491, %4487
  %4493 = extractvalue %dx.types.CBufRet.f32 %4490, 3
  %4494 = fadd fast float %4493, %4492
  %4495 = extractvalue %dx.types.CBufRet.f32 %4456, 2
  %4496 = fadd fast float %4494, %4463
  %4497 = fmul fast float %4469, %4457
  %4498 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4460, float %4497)  ; FMad(a,b,c)
  %4499 = call float @dx.op.tertiary.f32(i32 46, float %4496, float %4495, float %4498)  ; FMad(a,b,c)
  %4500 = fsub fast float %4499, %4463
  %4501 = fsub fast float %4500, %4450
  br label %4502

; <label>:4502                                    ; preds = %4489, %4449, %4432
  %4503 = phi i1 [ true, %4489 ], [ false, %4449 ], [ false, %4432 ]
  %4504 = phi float [ %4501, %4489 ], [ -1.310720e+05, %4449 ], [ -1.310720e+05, %4432 ]
  %4505 = fsub fast float %4504, %190
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = select i1 %4503, float %4506, float 1.000000e+00
  br label %4508

; <label>:4508                                    ; preds = %4502, %4367
  %4509 = phi float [ %4507, %4502 ], [ 0.000000e+00, %4367 ]
  %4510 = icmp eq i32 %4430, 3
  %4511 = select i1 %4510, float 1.000000e+00, float %4509
  %4512 = call float @dx.op.binary.f32(i32 35, float %4302, float %4511)  ; FMax(a,b)
  %4513 = fcmp fast olt float %4511, 1.000000e+00
  %4514 = fcmp uge float %65, 0.000000e+00
  %4515 = and i1 %4514, %4513
  br i1 %4515, label %4516, label %4526

; <label>:4516                                    ; preds = %4508
  %4517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %41, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.ResRet.f32 %4517, 1
  %4520 = extractvalue %dx.types.ResRet.f32 %4517, 2
  %4521 = fadd fast float %4518, %4512
  %4522 = fcmp ule float %64, 0.000000e+00
  %4523 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4524 = select i1 %4522, float %4523, float 1.000000e+00
  %4525 = fmul fast float %4524, %4520
  br label %4526

; <label>:4526                                    ; preds = %4516, %4508
  %4527 = phi float [ %4521, %4516 ], [ %4512, %4508 ]
  %4528 = phi float [ %4519, %4516 ], [ 0.000000e+00, %4508 ]
  %4529 = phi float [ %4525, %4516 ], [ 0.000000e+00, %4508 ]
  %4530 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4531 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4532 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4533 = fcmp fast une float %4531, 0.000000e+00
  %4534 = fcmp fast une float %4532, 0.000000e+00
  %4535 = or i1 %4533, %4534
  br i1 %4535, label %4536, label %5095

; <label>:4536                                    ; preds = %4526
  br i1 %4533, label %4537, label %4810

; <label>:4537                                    ; preds = %4536
  %4538 = call float @dx.op.unary.f32(i32 23, float %4299)  ; Log(value)
  %4539 = fmul fast float %4538, 4.000000e+00
  %4540 = call float @dx.op.unary.f32(i32 21, float %4539)  ; Exp(value)
  %4541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4542 = extractvalue %dx.types.CBufRet.f32 %4541, 0
  %4543 = fmul fast float %4542, %52
  %4544 = fmul fast float %4542, %53
  %4545 = fmul fast float %4542, %54
  %4546 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4547 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4548 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4549 = call float @dx.op.unary.f32(i32 23, float %4546)  ; Log(value)
  %4550 = call float @dx.op.unary.f32(i32 23, float %4547)  ; Log(value)
  %4551 = call float @dx.op.unary.f32(i32 23, float %4548)  ; Log(value)
  %4552 = fmul fast float %4549, 4.000000e+00
  %4553 = fmul fast float %4550, 4.000000e+00
  %4554 = fmul fast float %4551, 4.000000e+00
  %4555 = call float @dx.op.unary.f32(i32 21, float %4552)  ; Exp(value)
  %4556 = call float @dx.op.unary.f32(i32 21, float %4553)  ; Exp(value)
  %4557 = call float @dx.op.unary.f32(i32 21, float %4554)  ; Exp(value)
  %4558 = fadd fast float %4556, %4555
  %4559 = fadd fast float %4558, %4557
  %4560 = fdiv fast float 1.000000e+00, %4559
  %4561 = fmul fast float %4560, %4555
  %4562 = fcmp fast ogt float %61, 0.000000e+00
  %4563 = fcmp fast ogt float %62, 0.000000e+00
  %4564 = fcmp fast ogt float %63, 0.000000e+00
  %4565 = fcmp fast olt float %61, 0.000000e+00
  %4566 = fcmp fast olt float %62, 0.000000e+00
  %4567 = fcmp fast olt float %63, 0.000000e+00
  %4568 = zext i1 %4562 to i32
  %4569 = zext i1 %4563 to i32
  %4570 = zext i1 %4564 to i32
  %4571 = zext i1 %4565 to i32
  %4572 = zext i1 %4566 to i32
  %4573 = zext i1 %4567 to i32
  %4574 = sub nsw i32 %4568, %4571
  %4575 = sub nsw i32 %4569, %4572
  %4576 = sub nsw i32 %4570, %4573
  %4577 = call float @dx.op.unary.f32(i32 83, float %4543)  ; DerivCoarseX(value)
  %4578 = call float @dx.op.unary.f32(i32 83, float %4544)  ; DerivCoarseX(value)
  %4579 = call float @dx.op.unary.f32(i32 83, float %4545)  ; DerivCoarseX(value)
  %4580 = call float @dx.op.unary.f32(i32 84, float %4543)  ; DerivCoarseY(value)
  %4581 = call float @dx.op.unary.f32(i32 84, float %4544)  ; DerivCoarseY(value)
  %4582 = call float @dx.op.unary.f32(i32 84, float %4545)  ; DerivCoarseY(value)
  %4583 = fcmp fast ole float %305, %4561
  %4584 = fmul fast float %4560, %4558
  %4585 = fcmp fast ole float %305, %4584
  %4586 = select i1 %4585, float %4545, float %4543
  %4587 = select i1 %4585, float %4543, float %4544
  %4588 = select i1 %4583, float %4544, float %4586
  %4589 = select i1 %4583, float %4545, float %4587
  %4590 = select i1 %4585, float %4579, float %4577
  %4591 = select i1 %4585, float %4577, float %4578
  %4592 = select i1 %4583, float %4578, float %4590
  %4593 = select i1 %4583, float %4579, float %4591
  %4594 = select i1 %4585, float %4582, float %4580
  %4595 = select i1 %4585, float %4580, float %4581
  %4596 = select i1 %4583, float %4581, float %4594
  %4597 = select i1 %4583, float %4582, float %4595
  %4598 = call float @dx.op.unary.f32(i32 27, float %4588)  ; Round_ni(value)
  %4599 = call float @dx.op.unary.f32(i32 27, float %4589)  ; Round_ni(value)
  %4600 = fptosi float %4598 to i32
  %4601 = fptosi float %4599 to i32
  %4602 = xor i32 %4601, %4600
  %4603 = sitofp i32 %4602 to float
  %4604 = fptosi float %4603 to i32
  %4605 = sitofp i32 %4604 to float
  %4606 = fmul fast float %4605, 0x3FE3C6EF40000000
  %4607 = frem fast float %4598, 2.560000e+02
  %4608 = frem fast float %4599, 2.560000e+02
  %4609 = fptoui float %4607 to i32
  %4610 = fptoui float %4608 to i32
  %4611 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4609, i32 %4610, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = fadd fast float %4612, %4606
  %4616 = fadd fast float %4613, %4606
  %4617 = fadd fast float %4614, %4606
  %4618 = call float @dx.op.unary.f32(i32 22, float %4615)  ; Frc(value)
  %4619 = call float @dx.op.unary.f32(i32 22, float %4616)  ; Frc(value)
  %4620 = call float @dx.op.unary.f32(i32 22, float %4617)  ; Frc(value)
  %4621 = fmul fast float %4620, 0x401921FB60000000
  %4622 = call float @dx.op.unary.f32(i32 13, float %4621)  ; Sin(value)
  %4623 = call float @dx.op.unary.f32(i32 12, float %4621)  ; Cos(value)
  %4624 = fsub fast float -0.000000e+00, %4623
  %4625 = fmul fast float %4623, %4588
  %4626 = call float @dx.op.tertiary.f32(i32 46, float %4622, float %4589, float %4625)  ; FMad(a,b,c)
  %4627 = fmul fast float %4622, %4588
  %4628 = call float @dx.op.tertiary.f32(i32 46, float %4624, float %4589, float %4627)  ; FMad(a,b,c)
  %4629 = fadd fast float %4626, %4618
  %4630 = fadd fast float %4628, %4619
  %4631 = extractvalue %dx.types.CBufRet.f32 %4541, 3
  %4632 = bitcast float %4631 to i32
  %4633 = icmp eq i32 %4632, 0
  br i1 %4633, label %4672, label %4634

; <label>:4634                                    ; preds = %4537
  %4635 = add i32 %4632, 0
  %4636 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4635, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4637 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4636, %dx.types.Handle %106, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float %4592, float %4593, float undef, float %4596, float %4597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 1
  %4641 = extractvalue %dx.types.CBufRet.f32 %4639, 2
  %4642 = fsub fast float 1.000000e+00, %4531
  %4643 = call float @dx.op.binary.f32(i32 35, float %4642, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4644 = bitcast float %4531 to i32
  %4645 = sitofp i32 %4644 to float
  %4646 = fadd fast float %4645, 0xC1CFBF8940000000
  %4647 = fmul fast float %4641, %4646
  %4648 = fadd fast float %4647, 0x41CFBF8940000000
  %4649 = fptosi float %4648 to i32
  %4650 = bitcast i32 %4649 to float
  %4651 = bitcast float %4643 to i32
  %4652 = sitofp i32 %4651 to float
  %4653 = fadd fast float %4652, 0xC1CFBF8940000000
  %4654 = fmul fast float %4653, %4641
  %4655 = fadd fast float %4654, 0x41CFBF8940000000
  %4656 = fptosi float %4655 to i32
  %4657 = bitcast i32 %4656 to float
  %4658 = fmul fast float %4650, %4640
  %4659 = fmul fast float %4657, %4640
  %4660 = fsub fast float %4643, %4658
  %4661 = fadd fast float %4659, %4643
  %4662 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4664 = fsub fast float %4638, %4662
  %4665 = fsub fast float %4663, %4662
  %4666 = bitcast float %4665 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = bitcast i32 %4667 to float
  %4669 = fmul fast float %4668, %4664
  %4670 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4671 = fcmp fast olt float %4670, 0x3F70101020000000
  br i1 %4671, label %4810, label %4672

; <label>:4672                                    ; preds = %4634, %4537
  %4673 = phi float [ %4670, %4634 ], [ %4531, %4537 ]
  %4674 = fmul fast float %4673, %4540
  %4675 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.i32 %4675, 1
  %4677 = extractvalue %dx.types.CBufRet.i32 %4675, 0
  %4678 = add i32 %4677, 0
  %4679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4678, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4679, %dx.types.Handle %105, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float %4592, float %4593, float undef, float %4596, float %4597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4684 = extractvalue %dx.types.ResRet.f32 %4680, 3
  %4685 = and i32 %4676, 255
  %4686 = uitofp i32 %4685 to float
  %4687 = lshr i32 %4676, 8
  %4688 = and i32 %4687, 255
  %4689 = uitofp i32 %4688 to float
  %4690 = fmul fast float %4684, %4686
  %4691 = fadd fast float %4690, %4689
  %4692 = fmul fast float %4691, 0x3F70101000000000
  %4693 = fadd fast float %4692, 0xBFB99999A0000000
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4694, 0x3FF1C71C80000000
  %4696 = call float @dx.op.binary.f32(i32 36, float %4692, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4697 = fsub fast float 1.000000e+00, %4695
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fmul fast float %4698, %4681
  %4700 = fmul fast float %4698, %4682
  %4701 = fmul fast float %4698, %4683
  %4702 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4703 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4704 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4705 = fmul fast float %4695, %4681
  %4706 = fmul fast float %4695, %4682
  %4707 = fmul fast float %4695, %4683
  %4708 = fadd fast float %4705, %4696
  %4709 = fadd fast float %4706, %4696
  %4710 = fadd fast float %4707, %4696
  %4711 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4709)  ; Saturate(value)
  %4713 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.i32 %4714, 3
  %4716 = extractvalue %dx.types.CBufRet.i32 %4714, 2
  %4717 = add i32 %4716, 0
  %4718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4717, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4719 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4718, %dx.types.Handle %105, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float %4592, float %4593, float undef, float %4596, float %4597, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4720 = extractvalue %dx.types.ResRet.f32 %4719, 0
  %4721 = extractvalue %dx.types.ResRet.f32 %4719, 1
  %4722 = extractvalue %dx.types.ResRet.f32 %4719, 2
  %4723 = extractvalue %dx.types.ResRet.f32 %4719, 3
  %4724 = and i32 %4715, 255
  %4725 = uitofp i32 %4724 to float
  %4726 = lshr i32 %4715, 8
  %4727 = and i32 %4726, 255
  %4728 = uitofp i32 %4727 to float
  %4729 = lshr i32 %4715, 16
  %4730 = and i32 %4729, 255
  %4731 = uitofp i32 %4730 to float
  %4732 = fmul fast float %4731, 0x3F70101000000000
  %4733 = fmul fast float %4720, %4725
  %4734 = fadd fast float %4733, %4728
  %4735 = fmul fast float %4734, 0x3F70101000000000
  %4736 = fadd fast float %4721, -5.000000e-01
  %4737 = fadd fast float %4723, -5.000000e-01
  %4738 = fmul fast float %4736, %4732
  %4739 = fmul fast float %4737, %4732
  %4740 = fadd fast float %4738, 5.000000e-01
  %4741 = fadd fast float %4739, 5.000000e-01
  %4742 = fmul fast float %4740, 2.000000e+00
  %4743 = fadd fast float %4742, -1.000000e+00
  %4744 = fmul fast float %4741, 2.000000e+00
  %4745 = fadd fast float %4744, -1.000000e+00
  %4746 = fadd fast float %4743, %4745
  %4747 = fmul fast float %4746, 5.000000e-01
  %4748 = fsub fast float %4743, %4745
  %4749 = fmul fast float %4748, 5.000000e-01
  %4750 = call float @dx.op.unary.f32(i32 6, float %4747)  ; FAbs(value)
  %4751 = fsub fast float 1.000000e+00, %4750
  %4752 = call float @dx.op.unary.f32(i32 6, float %4749)  ; FAbs(value)
  %4753 = fsub fast float %4751, %4752
  %4754 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4749, float %4753, float %4747, float %4749, float %4753)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = call float @dx.op.unary.f32(i32 25, float %4754)  ; Rsqrt(value)
  %4756 = fmul fast float %4747, %4755
  %4757 = fmul fast float %4749, %4755
  %4758 = select i1 %4585, i32 %4575, i32 %4576
  %4759 = select i1 %4583, i32 %4574, i32 %4758
  %4760 = sitofp i32 %4759 to float
  %4761 = fmul fast float %4753, %4760
  %4762 = fmul fast float %4761, %4755
  %4763 = select i1 %4585, float %4762, float %4757
  %4764 = select i1 %4585, float %4757, float %4762
  %4765 = select i1 %4583, float %4762, float %4756
  %4766 = select i1 %4583, float %4757, float %4763
  %4767 = select i1 %4583, float %4756, float %4764
  %4768 = fsub fast float %4702, %4426
  %4769 = fsub fast float %4703, %4427
  %4770 = fsub fast float %4704, %4428
  %4771 = fmul fast float %4768, %4674
  %4772 = fmul fast float %4769, %4674
  %4773 = fmul fast float %4770, %4674
  %4774 = fadd fast float %4771, %4426
  %4775 = fadd fast float %4772, %4427
  %4776 = fadd fast float %4773, %4428
  %4777 = fsub fast float %4711, %4345
  %4778 = fsub fast float %4712, %4346
  %4779 = fsub fast float %4713, %4347
  %4780 = fmul fast float %4777, %4674
  %4781 = fmul fast float %4778, %4674
  %4782 = fmul fast float %4779, %4674
  %4783 = fadd fast float %4780, %4345
  %4784 = fadd fast float %4781, %4346
  %4785 = fadd fast float %4782, %4347
  %4786 = fadd fast float %4765, %4293
  %4787 = fadd fast float %4766, %4294
  %4788 = fadd fast float %4767, %4295
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4786, float %4787, float %4788, float %4786, float %4787, float %4788)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = call float @dx.op.unary.f32(i32 25, float %4789)  ; Rsqrt(value)
  %4791 = fmul fast float %4786, %4790
  %4792 = fmul fast float %4787, %4790
  %4793 = fmul fast float %4788, %4790
  %4794 = fsub fast float %4791, %4293
  %4795 = fsub fast float %4792, %4294
  %4796 = fsub fast float %4793, %4295
  %4797 = fmul fast float %4794, %4674
  %4798 = fmul fast float %4795, %4674
  %4799 = fmul fast float %4796, %4674
  %4800 = fadd fast float %4797, %4293
  %4801 = fadd fast float %4798, %4294
  %4802 = fadd fast float %4799, %4295
  %4803 = call float @dx.op.binary.f32(i32 36, float %4299, float %4722)  ; FMin(a,b)
  %4804 = fsub fast float %4803, %4299
  %4805 = fmul fast float %4804, %4674
  %4806 = fadd fast float %4805, %4299
  %4807 = fsub fast float %4735, %4348
  %4808 = fmul fast float %4807, %4674
  %4809 = fadd fast float %4808, %4348
  br label %4810

; <label>:4810                                    ; preds = %4672, %4634, %4536
  %4811 = phi float [ %4774, %4672 ], [ %4426, %4634 ], [ %4426, %4536 ]
  %4812 = phi float [ %4775, %4672 ], [ %4427, %4634 ], [ %4427, %4536 ]
  %4813 = phi float [ %4776, %4672 ], [ %4428, %4634 ], [ %4428, %4536 ]
  %4814 = phi float [ %4783, %4672 ], [ %4345, %4634 ], [ %4345, %4536 ]
  %4815 = phi float [ %4784, %4672 ], [ %4346, %4634 ], [ %4346, %4536 ]
  %4816 = phi float [ %4785, %4672 ], [ %4347, %4634 ], [ %4347, %4536 ]
  %4817 = phi float [ %4800, %4672 ], [ %4293, %4634 ], [ %4293, %4536 ]
  %4818 = phi float [ %4801, %4672 ], [ %4294, %4634 ], [ %4294, %4536 ]
  %4819 = phi float [ %4802, %4672 ], [ %4295, %4634 ], [ %4295, %4536 ]
  %4820 = phi float [ %4809, %4672 ], [ %4348, %4634 ], [ %4348, %4536 ]
  %4821 = phi float [ %4806, %4672 ], [ %4299, %4634 ], [ %4299, %4536 ]
  br i1 %4534, label %4822, label %5095

; <label>:4822                                    ; preds = %4810
  %4823 = call float @dx.op.unary.f32(i32 23, float %4821)  ; Log(value)
  %4824 = fmul fast float %4823, 4.000000e+00
  %4825 = call float @dx.op.unary.f32(i32 21, float %4824)  ; Exp(value)
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = fmul fast float %4827, %52
  %4829 = fmul fast float %4827, %53
  %4830 = fmul fast float %4827, %54
  %4831 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4832 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4833 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4834 = call float @dx.op.unary.f32(i32 23, float %4831)  ; Log(value)
  %4835 = call float @dx.op.unary.f32(i32 23, float %4832)  ; Log(value)
  %4836 = call float @dx.op.unary.f32(i32 23, float %4833)  ; Log(value)
  %4837 = fmul fast float %4834, 4.000000e+00
  %4838 = fmul fast float %4835, 4.000000e+00
  %4839 = fmul fast float %4836, 4.000000e+00
  %4840 = call float @dx.op.unary.f32(i32 21, float %4837)  ; Exp(value)
  %4841 = call float @dx.op.unary.f32(i32 21, float %4838)  ; Exp(value)
  %4842 = call float @dx.op.unary.f32(i32 21, float %4839)  ; Exp(value)
  %4843 = fadd fast float %4841, %4840
  %4844 = fadd fast float %4843, %4842
  %4845 = fdiv fast float 1.000000e+00, %4844
  %4846 = fmul fast float %4845, %4840
  %4847 = fcmp fast ogt float %61, 0.000000e+00
  %4848 = fcmp fast ogt float %62, 0.000000e+00
  %4849 = fcmp fast ogt float %63, 0.000000e+00
  %4850 = fcmp fast olt float %61, 0.000000e+00
  %4851 = fcmp fast olt float %62, 0.000000e+00
  %4852 = fcmp fast olt float %63, 0.000000e+00
  %4853 = zext i1 %4847 to i32
  %4854 = zext i1 %4848 to i32
  %4855 = zext i1 %4849 to i32
  %4856 = zext i1 %4850 to i32
  %4857 = zext i1 %4851 to i32
  %4858 = zext i1 %4852 to i32
  %4859 = sub nsw i32 %4853, %4856
  %4860 = sub nsw i32 %4854, %4857
  %4861 = sub nsw i32 %4855, %4858
  %4862 = call float @dx.op.unary.f32(i32 83, float %4828)  ; DerivCoarseX(value)
  %4863 = call float @dx.op.unary.f32(i32 83, float %4829)  ; DerivCoarseX(value)
  %4864 = call float @dx.op.unary.f32(i32 83, float %4830)  ; DerivCoarseX(value)
  %4865 = call float @dx.op.unary.f32(i32 84, float %4828)  ; DerivCoarseY(value)
  %4866 = call float @dx.op.unary.f32(i32 84, float %4829)  ; DerivCoarseY(value)
  %4867 = call float @dx.op.unary.f32(i32 84, float %4830)  ; DerivCoarseY(value)
  %4868 = fcmp fast ole float %305, %4846
  %4869 = fmul fast float %4845, %4843
  %4870 = fcmp fast ole float %305, %4869
  %4871 = select i1 %4870, float %4830, float %4828
  %4872 = select i1 %4870, float %4828, float %4829
  %4873 = select i1 %4868, float %4829, float %4871
  %4874 = select i1 %4868, float %4830, float %4872
  %4875 = select i1 %4870, float %4864, float %4862
  %4876 = select i1 %4870, float %4862, float %4863
  %4877 = select i1 %4868, float %4863, float %4875
  %4878 = select i1 %4868, float %4864, float %4876
  %4879 = select i1 %4870, float %4867, float %4865
  %4880 = select i1 %4870, float %4865, float %4866
  %4881 = select i1 %4868, float %4866, float %4879
  %4882 = select i1 %4868, float %4867, float %4880
  %4883 = call float @dx.op.unary.f32(i32 27, float %4873)  ; Round_ni(value)
  %4884 = call float @dx.op.unary.f32(i32 27, float %4874)  ; Round_ni(value)
  %4885 = fptosi float %4883 to i32
  %4886 = fptosi float %4884 to i32
  %4887 = xor i32 %4886, %4885
  %4888 = sitofp i32 %4887 to float
  %4889 = fptosi float %4888 to i32
  %4890 = sitofp i32 %4889 to float
  %4891 = fmul fast float %4890, 0x3FE3C6EF40000000
  %4892 = frem fast float %4883, 2.560000e+02
  %4893 = frem fast float %4884, 2.560000e+02
  %4894 = fptoui float %4892 to i32
  %4895 = fptoui float %4893 to i32
  %4896 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4894, i32 %4895, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = fadd fast float %4897, %4891
  %4901 = fadd fast float %4898, %4891
  %4902 = fadd fast float %4899, %4891
  %4903 = call float @dx.op.unary.f32(i32 22, float %4900)  ; Frc(value)
  %4904 = call float @dx.op.unary.f32(i32 22, float %4901)  ; Frc(value)
  %4905 = call float @dx.op.unary.f32(i32 22, float %4902)  ; Frc(value)
  %4906 = fmul fast float %4905, 0x401921FB60000000
  %4907 = call float @dx.op.unary.f32(i32 13, float %4906)  ; Sin(value)
  %4908 = call float @dx.op.unary.f32(i32 12, float %4906)  ; Cos(value)
  %4909 = fsub fast float -0.000000e+00, %4908
  %4910 = fmul fast float %4908, %4873
  %4911 = call float @dx.op.tertiary.f32(i32 46, float %4907, float %4874, float %4910)  ; FMad(a,b,c)
  %4912 = fmul fast float %4907, %4873
  %4913 = call float @dx.op.tertiary.f32(i32 46, float %4909, float %4874, float %4912)  ; FMad(a,b,c)
  %4914 = fadd fast float %4911, %4903
  %4915 = fadd fast float %4913, %4904
  %4916 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4917 = bitcast float %4916 to i32
  %4918 = icmp eq i32 %4917, 0
  br i1 %4918, label %4957, label %4919

; <label>:4919                                    ; preds = %4822
  %4920 = add i32 %4917, 0
  %4921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4920, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4922 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4921, %dx.types.Handle %106, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4926 = extractvalue %dx.types.CBufRet.f32 %4924, 2
  %4927 = fsub fast float 1.000000e+00, %4532
  %4928 = call float @dx.op.binary.f32(i32 35, float %4927, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4929 = bitcast float %4532 to i32
  %4930 = sitofp i32 %4929 to float
  %4931 = fadd fast float %4930, 0xC1CFBF8940000000
  %4932 = fmul fast float %4926, %4931
  %4933 = fadd fast float %4932, 0x41CFBF8940000000
  %4934 = fptosi float %4933 to i32
  %4935 = bitcast i32 %4934 to float
  %4936 = bitcast float %4928 to i32
  %4937 = sitofp i32 %4936 to float
  %4938 = fadd fast float %4937, 0xC1CFBF8940000000
  %4939 = fmul fast float %4938, %4926
  %4940 = fadd fast float %4939, 0x41CFBF8940000000
  %4941 = fptosi float %4940 to i32
  %4942 = bitcast i32 %4941 to float
  %4943 = fmul fast float %4935, %4925
  %4944 = fmul fast float %4942, %4925
  %4945 = fsub fast float %4928, %4943
  %4946 = fadd fast float %4944, %4928
  %4947 = call float @dx.op.unary.f32(i32 7, float %4945)  ; Saturate(value)
  %4948 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4949 = fsub fast float %4923, %4947
  %4950 = fsub fast float %4948, %4947
  %4951 = bitcast float %4950 to i32
  %4952 = sub nsw i32 2129859010, %4951
  %4953 = bitcast i32 %4952 to float
  %4954 = fmul fast float %4953, %4949
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fcmp fast olt float %4955, 0x3F70101020000000
  br i1 %4956, label %5095, label %4957

; <label>:4957                                    ; preds = %4919, %4822
  %4958 = phi float [ %4955, %4919 ], [ %4532, %4822 ]
  %4959 = fmul fast float %4958, %4825
  %4960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.i32 %4960, 1
  %4962 = extractvalue %dx.types.CBufRet.i32 %4960, 0
  %4963 = add i32 %4962, 0
  %4964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4963, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4964, %dx.types.Handle %105, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4966 = extractvalue %dx.types.ResRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.ResRet.f32 %4965, 1
  %4968 = extractvalue %dx.types.ResRet.f32 %4965, 2
  %4969 = extractvalue %dx.types.ResRet.f32 %4965, 3
  %4970 = and i32 %4961, 255
  %4971 = uitofp i32 %4970 to float
  %4972 = lshr i32 %4961, 8
  %4973 = and i32 %4972, 255
  %4974 = uitofp i32 %4973 to float
  %4975 = fmul fast float %4969, %4971
  %4976 = fadd fast float %4975, %4974
  %4977 = fmul fast float %4976, 0x3F70101000000000
  %4978 = fadd fast float %4977, 0xBFB99999A0000000
  %4979 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4980 = fmul fast float %4979, 0x3FF1C71C80000000
  %4981 = call float @dx.op.binary.f32(i32 36, float %4977, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4982 = fsub fast float 1.000000e+00, %4980
  %4983 = call float @dx.op.unary.f32(i32 7, float %4982)  ; Saturate(value)
  %4984 = fmul fast float %4983, %4966
  %4985 = fmul fast float %4983, %4967
  %4986 = fmul fast float %4983, %4968
  %4987 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4988 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4989 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4990 = fmul fast float %4980, %4966
  %4991 = fmul fast float %4980, %4967
  %4992 = fmul fast float %4980, %4968
  %4993 = fadd fast float %4990, %4981
  %4994 = fadd fast float %4991, %4981
  %4995 = fadd fast float %4992, %4981
  %4996 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4997 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4998 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4999 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5000 = extractvalue %dx.types.CBufRet.i32 %4999, 3
  %5001 = extractvalue %dx.types.CBufRet.i32 %4999, 2
  %5002 = add i32 %5001, 0
  %5003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5004 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5003, %dx.types.Handle %105, float %4914, float %4915, float undef, float undef, i32 0, i32 0, i32 undef, float %4877, float %4878, float undef, float %4881, float %4882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5005 = extractvalue %dx.types.ResRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.ResRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.ResRet.f32 %5004, 2
  %5008 = extractvalue %dx.types.ResRet.f32 %5004, 3
  %5009 = and i32 %5000, 255
  %5010 = uitofp i32 %5009 to float
  %5011 = lshr i32 %5000, 8
  %5012 = and i32 %5011, 255
  %5013 = uitofp i32 %5012 to float
  %5014 = lshr i32 %5000, 16
  %5015 = and i32 %5014, 255
  %5016 = uitofp i32 %5015 to float
  %5017 = fmul fast float %5016, 0x3F70101000000000
  %5018 = fmul fast float %5005, %5010
  %5019 = fadd fast float %5018, %5013
  %5020 = fmul fast float %5019, 0x3F70101000000000
  %5021 = fadd fast float %5006, -5.000000e-01
  %5022 = fadd fast float %5008, -5.000000e-01
  %5023 = fmul fast float %5021, %5017
  %5024 = fmul fast float %5022, %5017
  %5025 = fadd fast float %5023, 5.000000e-01
  %5026 = fadd fast float %5024, 5.000000e-01
  %5027 = fmul fast float %5025, 2.000000e+00
  %5028 = fadd fast float %5027, -1.000000e+00
  %5029 = fmul fast float %5026, 2.000000e+00
  %5030 = fadd fast float %5029, -1.000000e+00
  %5031 = fadd fast float %5028, %5030
  %5032 = fmul fast float %5031, 5.000000e-01
  %5033 = fsub fast float %5028, %5030
  %5034 = fmul fast float %5033, 5.000000e-01
  %5035 = call float @dx.op.unary.f32(i32 6, float %5032)  ; FAbs(value)
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = call float @dx.op.unary.f32(i32 6, float %5034)  ; FAbs(value)
  %5038 = fsub fast float %5036, %5037
  %5039 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5034, float %5038, float %5032, float %5034, float %5038)  ; Dot3(ax,ay,az,bx,by,bz)
  %5040 = call float @dx.op.unary.f32(i32 25, float %5039)  ; Rsqrt(value)
  %5041 = fmul fast float %5032, %5040
  %5042 = fmul fast float %5034, %5040
  %5043 = select i1 %4870, i32 %4860, i32 %4861
  %5044 = select i1 %4868, i32 %4859, i32 %5043
  %5045 = sitofp i32 %5044 to float
  %5046 = fmul fast float %5038, %5045
  %5047 = fmul fast float %5046, %5040
  %5048 = select i1 %4870, float %5047, float %5042
  %5049 = select i1 %4870, float %5042, float %5047
  %5050 = select i1 %4868, float %5047, float %5041
  %5051 = select i1 %4868, float %5042, float %5048
  %5052 = select i1 %4868, float %5041, float %5049
  %5053 = fsub fast float %4987, %4811
  %5054 = fsub fast float %4988, %4812
  %5055 = fsub fast float %4989, %4813
  %5056 = fmul fast float %5053, %4959
  %5057 = fmul fast float %5054, %4959
  %5058 = fmul fast float %5055, %4959
  %5059 = fadd fast float %5056, %4811
  %5060 = fadd fast float %5057, %4812
  %5061 = fadd fast float %5058, %4813
  %5062 = fsub fast float %4996, %4814
  %5063 = fsub fast float %4997, %4815
  %5064 = fsub fast float %4998, %4816
  %5065 = fmul fast float %5062, %4959
  %5066 = fmul fast float %5063, %4959
  %5067 = fmul fast float %5064, %4959
  %5068 = fadd fast float %5065, %4814
  %5069 = fadd fast float %5066, %4815
  %5070 = fadd fast float %5067, %4816
  %5071 = fadd fast float %5050, %4817
  %5072 = fadd fast float %5051, %4818
  %5073 = fadd fast float %5052, %4819
  %5074 = call float @dx.op.dot3.f32(i32 55, float %5071, float %5072, float %5073, float %5071, float %5072, float %5073)  ; Dot3(ax,ay,az,bx,by,bz)
  %5075 = call float @dx.op.unary.f32(i32 25, float %5074)  ; Rsqrt(value)
  %5076 = fmul fast float %5071, %5075
  %5077 = fmul fast float %5072, %5075
  %5078 = fmul fast float %5073, %5075
  %5079 = fsub fast float %5076, %4817
  %5080 = fsub fast float %5077, %4818
  %5081 = fsub fast float %5078, %4819
  %5082 = fmul fast float %5079, %4959
  %5083 = fmul fast float %5080, %4959
  %5084 = fmul fast float %5081, %4959
  %5085 = fadd fast float %5082, %4817
  %5086 = fadd fast float %5083, %4818
  %5087 = fadd fast float %5084, %4819
  %5088 = call float @dx.op.binary.f32(i32 36, float %4821, float %5007)  ; FMin(a,b)
  %5089 = fsub fast float %5088, %4821
  %5090 = fmul fast float %5089, %4959
  %5091 = fadd fast float %5090, %4821
  %5092 = fsub fast float %5020, %4820
  %5093 = fmul fast float %5092, %4959
  %5094 = fadd fast float %5093, %4820
  br label %5095

; <label>:5095                                    ; preds = %4957, %4919, %4810, %4526
  %5096 = phi float [ %5059, %4957 ], [ %4811, %4919 ], [ %4811, %4810 ], [ %4426, %4526 ]
  %5097 = phi float [ %5060, %4957 ], [ %4812, %4919 ], [ %4812, %4810 ], [ %4427, %4526 ]
  %5098 = phi float [ %5061, %4957 ], [ %4813, %4919 ], [ %4813, %4810 ], [ %4428, %4526 ]
  %5099 = phi float [ %5068, %4957 ], [ %4814, %4919 ], [ %4814, %4810 ], [ %4345, %4526 ]
  %5100 = phi float [ %5069, %4957 ], [ %4815, %4919 ], [ %4815, %4810 ], [ %4346, %4526 ]
  %5101 = phi float [ %5070, %4957 ], [ %4816, %4919 ], [ %4816, %4810 ], [ %4347, %4526 ]
  %5102 = phi float [ %5085, %4957 ], [ %4817, %4919 ], [ %4817, %4810 ], [ %4293, %4526 ]
  %5103 = phi float [ %5086, %4957 ], [ %4818, %4919 ], [ %4818, %4810 ], [ %4294, %4526 ]
  %5104 = phi float [ %5087, %4957 ], [ %4819, %4919 ], [ %4819, %4810 ], [ %4295, %4526 ]
  %5105 = phi float [ %5094, %4957 ], [ %4820, %4919 ], [ %4820, %4810 ], [ %4348, %4526 ]
  %5106 = phi float [ %5091, %4957 ], [ %4821, %4919 ], [ %4821, %4810 ], [ %4299, %4526 ]
  %5107 = fcmp fast une float %4530, 0.000000e+00
  %5108 = fsub fast float -0.000000e+00, %221
  %5109 = fsub fast float -0.000000e+00, %222
  %5110 = fsub fast float -0.000000e+00, %223
  br i1 %5107, label %5111, label %5272

; <label>:5111                                    ; preds = %5095
  %5112 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5113 = fmul fast float %4530, 2.500000e+00
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = fmul fast float %4530, 0x4013FFFFE0000000
  %5116 = fadd fast float %5115, 0xBFFFFFFFE0000000
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = fmul fast float %4530, 0x4004000020000000
  %5119 = fadd fast float %5118, 0xBFF8000040000000
  %5120 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5121 = fmul fast float %4327, 1.000000e+01
  %5122 = call float @dx.op.unary.f32(i32 7, float %5121)  ; Saturate(value)
  %5123 = fmul fast float %5122, 2.000000e+00
  %5124 = fsub fast float 3.000000e+00, %5123
  %5125 = fmul fast float %5122, %5122
  %5126 = fmul fast float %5125, %5124
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fsub fast float 0x3FE3333340000000, %5105
  %5129 = fmul fast float %5128, 0x400AAAAAA0000000
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5127, %5130
  %5132 = fmul fast float %5096, 0x3FEA2B8620000000
  %5133 = fmul fast float %5097, 0x3FEA2B8620000000
  %5134 = fmul fast float %5098, 0x3FEA2B8620000000
  %5135 = fadd fast float %5132, 0x3FC81DFBA0000000
  %5136 = fmul fast float %5135, %5096
  %5137 = fadd fast float %5136, 0x3F910E6020000000
  %5138 = fadd fast float %5133, 0x3FC81DFBA0000000
  %5139 = fmul fast float %5138, %5097
  %5140 = fadd fast float %5139, 0x3F910E6020000000
  %5141 = fadd fast float %5134, 0x3FC81DFBA0000000
  %5142 = fmul fast float %5141, %5098
  %5143 = fadd fast float %5142, 0x3F910E6020000000
  %5144 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5145 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5146 = call float @dx.op.unary.f32(i32 7, float %5143)  ; Saturate(value)
  %5147 = fsub fast float %5144, %5096
  %5148 = fsub fast float %5145, %5097
  %5149 = fsub fast float %5146, %5098
  %5150 = fmul fast float %5147, %5114
  %5151 = fmul fast float %5150, %5131
  %5152 = fmul fast float %5148, %5114
  %5153 = fmul fast float %5152, %5131
  %5154 = fmul fast float %5149, %5114
  %5155 = fmul fast float %5154, %5131
  %5156 = fadd fast float %5151, %5096
  %5157 = fadd fast float %5153, %5097
  %5158 = fadd fast float %5155, %5098
  %5159 = fmul fast float %5106, %5106
  %5160 = fmul fast float %5159, %5159
  %5161 = fadd fast float %5117, 1.000000e+00
  %5162 = fsub fast float %5161, %5131
  %5163 = call float @dx.op.unary.f32(i32 7, float %5162)  ; Saturate(value)
  %5164 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.unary.f32(i32 7, float %5164)  ; Saturate(value)
  %5166 = fsub fast float 1.000000e+00, %5160
  %5167 = call float @dx.op.binary.f32(i32 36, float %5163, float %5166)  ; FMin(a,b)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5169 = call float @dx.op.binary.f32(i32 35, float %5167, float %5168)  ; FMax(a,b)
  %5170 = fadd fast float %5165, 0xBFE4CCCCC0000000
  %5171 = fmul fast float %5170, 0x4006DB6DA0000000
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = fmul fast float %5172, 2.000000e+00
  %5174 = fsub fast float 3.000000e+00, %5173
  %5175 = bitcast float %5099 to i32
  %5176 = ashr i32 %5175, 1
  %5177 = add nsw i32 %5176, 532487669
  %5178 = bitcast i32 %5177 to float
  %5179 = fsub fast float 1.000000e+00, %5178
  %5180 = bitcast float %5179 to i32
  %5181 = sub nsw i32 2129859010, %5180
  %5182 = bitcast i32 %5181 to float
  %5183 = fmul fast float %5182, 2.000000e+00
  %5184 = bitcast float %5100 to i32
  %5185 = ashr i32 %5184, 1
  %5186 = add nsw i32 %5185, 532487669
  %5187 = bitcast i32 %5186 to float
  %5188 = fsub fast float 1.000000e+00, %5187
  %5189 = bitcast float %5188 to i32
  %5190 = sub nsw i32 2129859010, %5189
  %5191 = bitcast i32 %5190 to float
  %5192 = fmul fast float %5191, 2.000000e+00
  %5193 = bitcast float %5101 to i32
  %5194 = ashr i32 %5193, 1
  %5195 = add nsw i32 %5194, 532487669
  %5196 = bitcast i32 %5195 to float
  %5197 = fsub fast float 1.000000e+00, %5196
  %5198 = bitcast float %5197 to i32
  %5199 = sub nsw i32 2129859010, %5198
  %5200 = bitcast i32 %5199 to float
  %5201 = fmul fast float %5200, 2.000000e+00
  %5202 = fsub fast float 0x4002A9FBE0000000, %5183
  %5203 = fadd fast float %5183, 0x3FD54FDF00000000
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = fmul fast float %5206, %5202
  %5208 = fmul fast float %5207, %5207
  %5209 = fsub fast float 0x4002A9FBE0000000, %5192
  %5210 = fadd fast float %5192, 0x3FD54FDF00000000
  %5211 = bitcast float %5210 to i32
  %5212 = sub nsw i32 2129859010, %5211
  %5213 = bitcast i32 %5212 to float
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5214, %5214
  %5216 = fsub fast float 0x4002A9FBE0000000, %5201
  %5217 = fadd fast float %5201, 0x3FD54FDF00000000
  %5218 = bitcast float %5217 to i32
  %5219 = sub nsw i32 2129859010, %5218
  %5220 = bitcast i32 %5219 to float
  %5221 = fmul fast float %5220, %5216
  %5222 = fmul fast float %5221, %5221
  %5223 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5208)  ; FMax(a,b)
  %5224 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5215)  ; FMax(a,b)
  %5225 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5222)  ; FMax(a,b)
  %5226 = fsub fast float 1.000000e+00, %5112
  %5227 = fadd fast float %5226, %5127
  %5228 = call float @dx.op.unary.f32(i32 7, float %5227)  ; Saturate(value)
  %5229 = fsub fast float 1.000000e+00, %4511
  %5230 = fmul fast float %5169, %5229
  %5231 = fmul fast float %5172, %5172
  %5232 = fmul fast float %5231, %5230
  %5233 = fmul fast float %5232, %5174
  %5234 = fmul fast float %5229, 0xBFE99999A0000000
  %5235 = fmul fast float %5234, %5114
  %5236 = fmul fast float %5235, %5131
  %5237 = fadd fast float %5236, 1.000000e+00
  %5238 = fadd fast float %5105, -1.000000e+00
  %5239 = fmul fast float %5237, %5238
  %5240 = fadd fast float %5239, 1.000000e+00
  %5241 = fsub fast float %5223, %5099
  %5242 = fsub fast float %5224, %5100
  %5243 = fsub fast float %5225, %5101
  %5244 = fmul fast float %5233, %5241
  %5245 = fmul fast float %5233, %5242
  %5246 = fmul fast float %5233, %5243
  %5247 = fadd fast float %5244, %5099
  %5248 = fadd fast float %5245, %5100
  %5249 = fadd fast float %5246, %5101
  %5250 = fsub fast float %116, %5102
  %5251 = fsub fast float %117, %5103
  %5252 = fsub fast float %118, %5104
  %5253 = fmul fast float %5233, %5250
  %5254 = fmul fast float %5233, %5251
  %5255 = fmul fast float %5233, %5252
  %5256 = fadd fast float %5253, %5102
  %5257 = fadd fast float %5254, %5103
  %5258 = fadd fast float %5255, %5104
  %5259 = fmul fast float %5233, %5228
  %5260 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5259, %5261
  %5263 = fadd fast float %5262, %5260
  %5264 = fsub fast float 1.000000e+00, %5106
  %5265 = fmul fast float %5233, %5264
  %5266 = fadd fast float %5265, %5106
  %5267 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5258, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5268 = call float @dx.op.unary.f32(i32 25, float %5267)  ; Rsqrt(value)
  %5269 = fmul fast float %5256, %5268
  %5270 = fmul fast float %5257, %5268
  %5271 = fmul fast float %5258, %5268
  br label %5272

; <label>:5272                                    ; preds = %5111, %5095
  %5273 = phi float [ %5156, %5111 ], [ %5096, %5095 ]
  %5274 = phi float [ %5157, %5111 ], [ %5097, %5095 ]
  %5275 = phi float [ %5158, %5111 ], [ %5098, %5095 ]
  %5276 = phi float [ %5247, %5111 ], [ %5099, %5095 ]
  %5277 = phi float [ %5248, %5111 ], [ %5100, %5095 ]
  %5278 = phi float [ %5249, %5111 ], [ %5101, %5095 ]
  %5279 = phi float [ %5269, %5111 ], [ %5102, %5095 ]
  %5280 = phi float [ %5270, %5111 ], [ %5103, %5095 ]
  %5281 = phi float [ %5271, %5111 ], [ %5104, %5095 ]
  %5282 = phi float [ %5263, %5111 ], [ %5105, %5095 ]
  %5283 = phi float [ %5266, %5111 ], [ %5106, %5095 ]
  %5284 = select i1 %294, float 0.000000e+00, float %5278
  %5285 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %5108, float %5109, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5288 = fmul fast float %5287, 2.000000e+00
  %5289 = fmul fast float %5288, %5279
  %5290 = fmul fast float %5288, %5280
  %5291 = fmul fast float %5288, %5281
  %5292 = fsub fast float %221, %5289
  %5293 = fsub fast float %222, %5290
  %5294 = fsub fast float %223, %5291
  %5295 = call float @dx.op.binary.f32(i32 36, float %5283, float 1.000000e+00)  ; FMin(a,b)
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = bitcast float %5296 to i32
  %5298 = ashr i32 %5297, 1
  %5299 = add nsw i32 %5298, 532487669
  %5300 = bitcast i32 %5299 to float
  %5301 = fsub fast float 1.000000e+00, %5282
  %5302 = call float @dx.op.binary.f32(i32 35, float %5301, float 0x3F847AE140000000)  ; FMax(a,b)
  %5303 = fmul fast float %5302, %5302
  %5304 = fmul fast float %5303, %5303
  %5305 = call float @dx.op.unary.f32(i32 7, float %5286)  ; Saturate(value)
  %5306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5300, float %5304, float %5305, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5307 = extractvalue %dx.types.ResRet.f32 %5306, 0
  %5308 = fsub fast float 1.000000e+00, %5283
  %5309 = bitcast float %5308 to i32
  %5310 = sub nsw i32 2129859010, %5309
  %5311 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = fmul fast float %5311, 0x3FD20DD760000000
  %5313 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5314 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = fcmp fast oeq float %5314, 0.000000e+00
  %5316 = fcmp fast oeq float %5313, 0.000000e+00
  %5317 = or i1 %5316, %5315
  br i1 %5317, label %5347, label %5318

; <label>:5318                                    ; preds = %5272
  %5319 = fsub fast float -0.000000e+00, %79
  %5320 = fsub fast float -0.000000e+00, %77
  %5321 = call float @dx.op.unary.f32(i32 24, float %5314)  ; Sqrt(value)
  %5322 = fdiv fast float %5321, %5313
  %5323 = fcmp fast ogt float %5322, 0x3FFB6F8900000000
  %5324 = select i1 %5323, float 0x3FFB6F8900000000, float %5322
  %5325 = fmul fast float %5324, 0x3FE8A23460000000
  %5326 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5327 = call float @dx.op.binary.f32(i32 35, float %5324, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5328 = fmul fast float %5326, %5313
  %5329 = fmul fast float %5327, 0x3FF279A740000000
  %5330 = fadd fast float %5329, -1.000000e+00
  %5331 = call float @dx.op.dot3.f32(i32 55, float %5319, float %5320, float %78, float %5319, float %5320, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5332 = call float @dx.op.unary.f32(i32 25, float %5331)  ; Rsqrt(value)
  %5333 = fmul fast float %5332, %5319
  %5334 = fmul fast float %5332, %5320
  %5335 = fmul fast float %5332, %78
  %5336 = fmul fast float %5330, %5330
  %5337 = fsub fast float 1.000000e+00, %5336
  %5338 = fmul fast float %5327, 0x40005F8BE0000000
  %5339 = fsub fast float 0x400C5BF8A0000000, %5338
  %5340 = fdiv fast float %5328, %5339
  %5341 = fmul fast float %5340, 0x3FEE31C3C0000000
  %5342 = fmul fast float %5341, %5337
  %5343 = fmul fast float %5327, 0x3FDACB7480000000
  %5344 = fadd fast float %5343, 0xBFD7347680000000
  %5345 = fmul fast float %5344, %5340
  %5346 = fmul fast float %5345, %5337
  br label %5347

; <label>:5347                                    ; preds = %5318, %5272
  %5348 = phi float [ %5333, %5318 ], [ 0.000000e+00, %5272 ]
  %5349 = phi float [ %5334, %5318 ], [ 0.000000e+00, %5272 ]
  %5350 = phi float [ %5335, %5318 ], [ 0.000000e+00, %5272 ]
  %5351 = phi float [ %5342, %5318 ], [ 0.000000e+00, %5272 ]
  %5352 = phi float [ %5346, %5318 ], [ 0.000000e+00, %5272 ]
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = fmul fast float %5353, 0x3FDF454380000000
  %5355 = fmul fast float %5353, %5353
  %5356 = fmul fast float %5355, 0x3FEE471020000000
  %5357 = fadd fast float %5356, 0xBFD42F6020000000
  %5358 = fmul fast float %5313, 0x3FD20DD760000000
  %5359 = fmul fast float %5357, %5352
  %5360 = fadd fast float %5359, %5358
  %5361 = fmul fast float %5354, %5351
  %5362 = fadd fast float %5360, %5361
  %5363 = fsub fast float %5360, %5361
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5348, float %5349, float %5350, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = fmul fast float %5364, 0x3FDF454380000000
  %5366 = fmul fast float %5364, %5364
  %5367 = fmul fast float %5366, 0x3FEE471020000000
  %5368 = fadd fast float %5367, 0xBFD42F6020000000
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5313, float %5351, float %5352, float 0x3FD20DD760000000, float %5365, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5371 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fcmp fast oeq float %5371, 0.000000e+00
  %5373 = fcmp fast oeq float %5370, 0.000000e+00
  %5374 = or i1 %5373, %5372
  br i1 %5374, label %5404, label %5375

; <label>:5375                                    ; preds = %5347
  %5376 = fsub fast float -0.000000e+00, %75
  %5377 = fsub fast float -0.000000e+00, %73
  %5378 = call float @dx.op.unary.f32(i32 24, float %5371)  ; Sqrt(value)
  %5379 = fdiv fast float %5378, %5370
  %5380 = fcmp fast ogt float %5379, 0x3FFB6F8900000000
  %5381 = select i1 %5380, float 0x3FFB6F8900000000, float %5379
  %5382 = fmul fast float %5381, 0x3FE8A23460000000
  %5383 = call float @dx.op.unary.f32(i32 7, float %5382)  ; Saturate(value)
  %5384 = call float @dx.op.binary.f32(i32 35, float %5381, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5385 = fmul fast float %5383, %5370
  %5386 = fmul fast float %5384, 0x3FF279A740000000
  %5387 = fadd fast float %5386, -1.000000e+00
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5376, float %5377, float %74, float %5376, float %5377, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = call float @dx.op.unary.f32(i32 25, float %5388)  ; Rsqrt(value)
  %5390 = fmul fast float %5389, %5376
  %5391 = fmul fast float %5389, %5377
  %5392 = fmul fast float %5389, %74
  %5393 = fmul fast float %5387, %5387
  %5394 = fsub fast float 1.000000e+00, %5393
  %5395 = fmul fast float %5384, 0x40005F8BE0000000
  %5396 = fsub fast float 0x400C5BF8A0000000, %5395
  %5397 = fdiv fast float %5385, %5396
  %5398 = fmul fast float %5397, 0x3FEE31C3C0000000
  %5399 = fmul fast float %5398, %5394
  %5400 = fmul fast float %5384, 0x3FDACB7480000000
  %5401 = fadd fast float %5400, 0xBFD7347680000000
  %5402 = fmul fast float %5401, %5397
  %5403 = fmul fast float %5402, %5394
  br label %5404

; <label>:5404                                    ; preds = %5375, %5347
  %5405 = phi float [ %5390, %5375 ], [ 0.000000e+00, %5347 ]
  %5406 = phi float [ %5391, %5375 ], [ 0.000000e+00, %5347 ]
  %5407 = phi float [ %5392, %5375 ], [ 0.000000e+00, %5347 ]
  %5408 = phi float [ %5399, %5375 ], [ 0.000000e+00, %5347 ]
  %5409 = phi float [ %5403, %5375 ], [ 0.000000e+00, %5347 ]
  %5410 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5411 = fmul fast float %5410, 0x3FDF454380000000
  %5412 = fmul fast float %5410, %5410
  %5413 = fmul fast float %5412, 0x3FEE471020000000
  %5414 = fadd fast float %5413, 0xBFD42F6020000000
  %5415 = fmul fast float %5370, 0x3FD20DD760000000
  %5416 = fmul fast float %5414, %5409
  %5417 = fadd fast float %5416, %5415
  %5418 = fmul fast float %5411, %5408
  %5419 = fadd fast float %5417, %5418
  %5420 = fsub fast float %5417, %5418
  %5421 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5406, float %5407, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5422 = fmul fast float %5421, 0x3FDF454380000000
  %5423 = fmul fast float %5421, %5421
  %5424 = fmul fast float %5423, 0x3FEE471020000000
  %5425 = fadd fast float %5424, 0xBFD42F6020000000
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5408, float %5409, float 0x3FD20DD760000000, float %5422, float %5425)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5428 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5429 = fcmp fast oeq float %5428, 0.000000e+00
  %5430 = fcmp fast oeq float %5427, 0.000000e+00
  %5431 = or i1 %5430, %5429
  br i1 %5431, label %5461, label %5432

; <label>:5432                                    ; preds = %5404
  %5433 = fsub fast float -0.000000e+00, %71
  %5434 = fsub fast float -0.000000e+00, %69
  %5435 = call float @dx.op.unary.f32(i32 24, float %5428)  ; Sqrt(value)
  %5436 = fdiv fast float %5435, %5427
  %5437 = fcmp fast ogt float %5436, 0x3FFB6F8900000000
  %5438 = select i1 %5437, float 0x3FFB6F8900000000, float %5436
  %5439 = fmul fast float %5438, 0x3FE8A23460000000
  %5440 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5441 = call float @dx.op.binary.f32(i32 35, float %5438, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5442 = fmul fast float %5440, %5427
  %5443 = fmul fast float %5441, 0x3FF279A740000000
  %5444 = fadd fast float %5443, -1.000000e+00
  %5445 = call float @dx.op.dot3.f32(i32 55, float %5433, float %5434, float %70, float %5433, float %5434, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5446 = call float @dx.op.unary.f32(i32 25, float %5445)  ; Rsqrt(value)
  %5447 = fmul fast float %5446, %5433
  %5448 = fmul fast float %5446, %5434
  %5449 = fmul fast float %5446, %70
  %5450 = fmul fast float %5444, %5444
  %5451 = fsub fast float 1.000000e+00, %5450
  %5452 = fmul fast float %5441, 0x40005F8BE0000000
  %5453 = fsub fast float 0x400C5BF8A0000000, %5452
  %5454 = fdiv fast float %5442, %5453
  %5455 = fmul fast float %5454, 0x3FEE31C3C0000000
  %5456 = fmul fast float %5455, %5451
  %5457 = fmul fast float %5441, 0x3FDACB7480000000
  %5458 = fadd fast float %5457, 0xBFD7347680000000
  %5459 = fmul fast float %5458, %5454
  %5460 = fmul fast float %5459, %5451
  br label %5461

; <label>:5461                                    ; preds = %5432, %5404
  %5462 = phi float [ %5447, %5432 ], [ 0.000000e+00, %5404 ]
  %5463 = phi float [ %5448, %5432 ], [ 0.000000e+00, %5404 ]
  %5464 = phi float [ %5449, %5432 ], [ 0.000000e+00, %5404 ]
  %5465 = phi float [ %5456, %5432 ], [ 0.000000e+00, %5404 ]
  %5466 = phi float [ %5460, %5432 ], [ 0.000000e+00, %5404 ]
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = fmul fast float %5467, 0x3FDF454380000000
  %5469 = fmul fast float %5467, %5467
  %5470 = fmul fast float %5469, 0x3FEE471020000000
  %5471 = fadd fast float %5470, 0xBFD42F6020000000
  %5472 = fmul fast float %5427, 0x3FD20DD760000000
  %5473 = fmul fast float %5471, %5466
  %5474 = fadd fast float %5473, %5472
  %5475 = fmul fast float %5468, %5465
  %5476 = fadd fast float %5474, %5475
  %5477 = fsub fast float %5474, %5475
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5464, float %5292, float %5293, float %5294)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = fmul fast float %5478, 0x3FDF454380000000
  %5480 = fmul fast float %5478, %5478
  %5481 = fmul fast float %5480, 0x3FEE471020000000
  %5482 = fadd fast float %5481, 0xBFD42F6020000000
  %5483 = call float @dx.op.dot3.f32(i32 55, float %5427, float %5465, float %5466, float 0x3FD20DD760000000, float %5479, float %5482)  ; Dot3(ax,ay,az,bx,by,bz)
  %5484 = call float @dx.op.binary.f32(i32 35, float %5362, float 0.000000e+00)  ; FMax(a,b)
  %5485 = call float @dx.op.binary.f32(i32 35, float %5419, float 0.000000e+00)  ; FMax(a,b)
  %5486 = call float @dx.op.binary.f32(i32 35, float %5476, float 0.000000e+00)  ; FMax(a,b)
  %5487 = call float @dx.op.binary.f32(i32 35, float %5363, float 0.000000e+00)  ; FMax(a,b)
  %5488 = call float @dx.op.binary.f32(i32 35, float %5420, float 0.000000e+00)  ; FMax(a,b)
  %5489 = call float @dx.op.binary.f32(i32 35, float %5477, float 0.000000e+00)  ; FMax(a,b)
  %5490 = call float @dx.op.binary.f32(i32 35, float %5369, float 0.000000e+00)  ; FMax(a,b)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5426, float 0.000000e+00)  ; FMax(a,b)
  %5492 = call float @dx.op.binary.f32(i32 35, float %5483, float 0.000000e+00)  ; FMax(a,b)
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = call float @dx.op.binary.f32(i32 36, float %5273, float %5494)  ; FMin(a,b)
  %5496 = fmul fast float %5495, %5296
  %5497 = fsub fast float 1.000000e+00, %5496
  %5498 = bitcast float %5497 to i32
  %5499 = sub nsw i32 2129859010, %5498
  %5500 = bitcast i32 %5499 to float
  %5501 = call float @dx.op.binary.f32(i32 36, float %5274, float %5494)  ; FMin(a,b)
  %5502 = fmul fast float %5501, %5296
  %5503 = fsub fast float 1.000000e+00, %5502
  %5504 = bitcast float %5503 to i32
  %5505 = sub nsw i32 2129859010, %5504
  %5506 = bitcast i32 %5505 to float
  %5507 = call float @dx.op.binary.f32(i32 36, float %5275, float %5494)  ; FMin(a,b)
  %5508 = fmul fast float %5507, %5296
  %5509 = fsub fast float 1.000000e+00, %5508
  %5510 = bitcast float %5509 to i32
  %5511 = sub nsw i32 2129859010, %5510
  %5512 = bitcast i32 %5511 to float
  %5513 = fmul fast float %5484, %5295
  %5514 = fmul fast float %5513, %5500
  %5515 = fmul fast float %5485, %5295
  %5516 = fmul fast float %5515, %5506
  %5517 = fmul fast float %5486, %5295
  %5518 = fmul fast float %5517, %5512
  %5519 = call float @dx.op.binary.f32(i32 36, float %5276, float %5494)  ; FMin(a,b)
  %5520 = fmul fast float %5519, %5296
  %5521 = fsub fast float 1.000000e+00, %5520
  %5522 = bitcast float %5521 to i32
  %5523 = sub nsw i32 2129859010, %5522
  %5524 = bitcast i32 %5523 to float
  %5525 = call float @dx.op.binary.f32(i32 36, float %5277, float %5494)  ; FMin(a,b)
  %5526 = fmul fast float %5525, %5296
  %5527 = fsub fast float 1.000000e+00, %5526
  %5528 = bitcast float %5527 to i32
  %5529 = sub nsw i32 2129859010, %5528
  %5530 = bitcast i32 %5529 to float
  %5531 = call float @dx.op.binary.f32(i32 36, float %5284, float %5494)  ; FMin(a,b)
  %5532 = fmul fast float %5531, %5296
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = bitcast float %5533 to i32
  %5535 = sub nsw i32 2129859010, %5534
  %5536 = bitcast i32 %5535 to float
  %5537 = fmul fast float %5490, %5295
  %5538 = fmul fast float %5537, %5524
  %5539 = fmul fast float %5491, %5295
  %5540 = fmul fast float %5539, %5530
  %5541 = fmul fast float %5492, %5295
  %5542 = fmul fast float %5541, %5536
  %5543 = call float @dx.op.dot3.f32(i32 55, float %5514, float %5516, float %5518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5544 = select i1 %294, float 0.000000e+00, float %5514
  %5545 = select i1 %294, float %5543, float %5516
  %5546 = select i1 %294, float 0.000000e+00, float %5518
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5488, float %5489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = select i1 %294, float 0.000000e+00, float %5487
  %5549 = select i1 %294, float %5547, float %5488
  %5550 = select i1 %294, float 0.000000e+00, float %5489
  %5551 = call float @dx.op.dot3.f32(i32 55, float %5538, float %5540, float %5542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5552 = select i1 %294, float 0.000000e+00, float %5538
  %5553 = select i1 %294, float %5551, float %5540
  %5554 = select i1 %294, float 0.000000e+00, float %5542
  %5555 = fmul fast float %5286, 9.843750e-01
  %5556 = fmul fast float %5282, 9.843750e-01
  %5557 = fadd fast float %5555, 7.812500e-03
  %5558 = fadd fast float %5556, 7.812500e-03
  %5559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %5557, float %5558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5560 = extractvalue %dx.types.ResRet.f32 %5559, 2
  %5561 = extractvalue %dx.types.ResRet.f32 %5559, 3
  %5562 = fmul fast float %5560, %5276
  %5563 = fmul fast float %5560, %5277
  %5564 = fmul fast float %5560, %5284
  %5565 = fadd fast float %5562, %5561
  %5566 = fadd fast float %5563, %5561
  %5567 = fadd fast float %5564, %5561
  %5568 = fcmp fast ogt float %4300, 0.000000e+00
  br i1 %5568, label %5569, label %5595

; <label>:5569                                    ; preds = %5461
  %5570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4300, float %5286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5571 = extractvalue %dx.types.ResRet.f32 %5570, 0
  %5572 = extractvalue %dx.types.ResRet.f32 %5570, 1
  %5573 = extractvalue %dx.types.ResRet.f32 %5570, 2
  %5574 = fadd fast float %5571, -5.000000e-01
  %5575 = fadd fast float %5572, -5.000000e-01
  %5576 = fadd fast float %5573, -5.000000e-01
  %5577 = fsub fast float 1.000000e+00, %5276
  %5578 = fsub fast float 1.000000e+00, %5277
  %5579 = fsub fast float 1.000000e+00, %5284
  %5580 = fmul fast float %5276, 4.000000e+00
  %5581 = fmul fast float %5580, %5577
  %5582 = fmul fast float %5581, %5574
  %5583 = fmul fast float %5277, 4.000000e+00
  %5584 = fmul fast float %5583, %5578
  %5585 = fmul fast float %5584, %5575
  %5586 = fmul fast float %5284, 4.000000e+00
  %5587 = fmul fast float %5586, %5579
  %5588 = fmul fast float %5587, %5576
  %5589 = fadd fast float %5582, %5565
  %5590 = fadd fast float %5585, %5566
  %5591 = fadd fast float %5588, %5567
  %5592 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5593 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5594 = call float @dx.op.unary.f32(i32 7, float %5591)  ; Saturate(value)
  br label %5595

; <label>:5595                                    ; preds = %5569, %5461
  %5596 = phi float [ %5592, %5569 ], [ %5565, %5461 ]
  %5597 = phi float [ %5593, %5569 ], [ %5566, %5461 ]
  %5598 = phi float [ %5594, %5569 ], [ %5567, %5461 ]
  %5599 = call float @dx.op.binary.f32(i32 35, float %5597, float %5598)  ; FMax(a,b)
  %5600 = call float @dx.op.binary.f32(i32 35, float %5596, float %5599)  ; FMax(a,b)
  %5601 = fsub fast float 1.000000e+00, %5600
  %5602 = fmul fast float %5600, %5282
  %5603 = fadd fast float %5602, %5282
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 2
  %5606 = extractvalue %dx.types.CBufRet.f32 %5604, 3
  %5607 = fmul fast float %5603, %5605
  %5608 = fadd fast float %5607, %5606
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fsub fast float 1.000000e+00, %5307
  %5611 = fadd fast float %5610, %5609
  %5612 = call float @dx.op.unary.f32(i32 7, float %5611)  ; Saturate(value)
  %5613 = fcmp fast olt float %5612, 1.000000e+00
  br i1 %5613, label %5614, label %6062

; <label>:5614                                    ; preds = %5595
  %5615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5616 = extractvalue %dx.types.CBufRet.f32 %5615, 2
  %5617 = extractvalue %dx.types.CBufRet.f32 %5615, 3
  %5618 = fmul fast float %5616, %109
  %5619 = fmul fast float %5617, %110
  %5620 = fptoui float %5618 to i32
  %5621 = fptoui float %5619 to i32
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 0
  %5624 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5625 = extractvalue %dx.types.CBufRet.f32 %5622, 3
  %5626 = fadd fast float %96, -4.000000e+00
  %5627 = call float @dx.op.binary.f32(i32 35, float %5626, float 0.000000e+00)  ; FMax(a,b)
  %5628 = fadd fast float %5627, %5623
  %5629 = fmul fast float %5628, %5624
  %5630 = call float @dx.op.unary.f32(i32 23, float %5629)  ; Log(value)
  %5631 = fmul fast float %5630, %5625
  %5632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5633 = extractvalue %dx.types.CBufRet.f32 %5632, 2
  %5634 = fmul fast float %5631, %5633
  %5635 = call float @dx.op.unary.f32(i32 7, float %5634)  ; Saturate(value)
  %5636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.i32 %5636, 1
  %5638 = add i32 %5637, -1
  %5639 = uitofp i32 %5637 to float
  %5640 = fmul fast float %5639, %5635
  %5641 = fptoui float %5640 to i32
  %5642 = call i32 @dx.op.binary.i32(i32 40, i32 %5641, i32 %5638)  ; UMin(a,b)
  %5643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.i32 %5643, 2
  %5645 = extractvalue %dx.types.CBufRet.i32 %5643, 3
  %5646 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5621, i32 %5644, i32 %5620)  ; UMad(a,b,c)
  %5647 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5642, i32 %5645, i32 %5646)  ; UMad(a,b,c)
  %5648 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %5649 = fptoui float %5648 to i32
  %5650 = lshr i32 %5649, 5
  %5651 = call i32 @dx.op.binary.i32(i32 40, i32 %5650, i32 8191)  ; UMin(a,b)
  br i1 false, label %5652, label %5659

; <label>:5652                                    ; preds = %5614
  %5653 = fadd fast float 0.000000e+00, %5294
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5293, float %5653, float %5292, float %5293, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.unary.f32(i32 25, float %5654)  ; Rsqrt(value)
  %5656 = fmul fast float %5655, %5292
  %5657 = fmul fast float %5655, %5293
  %5658 = fmul fast float %5653, %5655
  br label %5659

; <label>:5659                                    ; preds = %5652, %5614
  %5660 = phi float [ %5656, %5652 ], [ %5292, %5614 ]
  %5661 = phi float [ %5657, %5652 ], [ %5293, %5614 ]
  %5662 = phi float [ %5658, %5652 ], [ %5294, %5614 ]
  %5663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5664 = extractvalue %dx.types.CBufRet.i32 %5663, 2
  %5665 = add nsw i32 %5664, -1
  %5666 = call i32 @dx.op.binary.i32(i32 37, i32 %5665, i32 0)  ; IMax(a,b)
  %5667 = shl i32 %5651, 2
  %5668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5667, i32 undef)  ; BufferLoad(srv,index,wot)
  %5669 = extractvalue %dx.types.ResRet.i32 %5668, 0
  %5670 = lshr i32 %5669, 16
  %5671 = and i32 %5669, 65535
  %5672 = lshr i32 %5669, 21
  %5673 = lshr i32 %5671, 5
  %5674 = call i32 @dx.op.binary.i32(i32 40, i32 %5673, i32 %5666)  ; UMin(a,b)
  %5675 = icmp ugt i32 %5672, %5674
  br i1 %5675, label %6038, label %5676

; <label>:5676                                    ; preds = %5659
  br label %5677

; <label>:5677                                    ; preds = %6030, %5676
  %5678 = phi float [ %6031, %6030 ], [ 0.000000e+00, %5676 ]
  %5679 = phi float [ %6032, %6030 ], [ 0.000000e+00, %5676 ]
  %5680 = phi float [ %6033, %6030 ], [ 0.000000e+00, %5676 ]
  %5681 = phi float [ %6034, %6030 ], [ 1.000000e+00, %5676 ]
  %5682 = phi i32 [ %6035, %6030 ], [ %5672, %5676 ]
  %5683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5684 = extractvalue %dx.types.CBufRet.i32 %5683, 2
  %5685 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5647, i32 %5684, i32 %5682)  ; UMad(a,b,c)
  %5686 = shl i32 %5685, 2
  %5687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5686, i32 undef)  ; BufferLoad(srv,index,wot)
  %5688 = extractvalue %dx.types.ResRet.i32 %5687, 0
  %5689 = shl i32 %5682, 5
  %5690 = sub nsw i32 %5670, %5689
  %5691 = call i32 @dx.op.binary.i32(i32 37, i32 %5690, i32 0)  ; IMax(a,b)
  %5692 = call i32 @dx.op.binary.i32(i32 38, i32 %5691, i32 31)  ; IMin(a,b)
  %5693 = sub nsw i32 1, %5670
  %5694 = add nsw i32 %5693, %5671
  %5695 = call i32 @dx.op.binary.i32(i32 37, i32 %5694, i32 0)  ; IMax(a,b)
  %5696 = call i32 @dx.op.binary.i32(i32 38, i32 %5695, i32 32)  ; IMin(a,b)
  %5697 = and i32 %5696, 31
  %5698 = shl i32 -1, %5697
  %5699 = xor i32 %5698, -1
  %5700 = and i32 %5692, 31
  %5701 = shl i32 %5699, %5700
  %5702 = icmp eq i32 %5696, 32
  %5703 = select i1 %5702, i32 -1, i32 %5701
  %5704 = and i32 %5703, %5688
  %5705 = icmp eq i32 %5704, 0
  br i1 %5705, label %6030, label %5706

; <label>:5706                                    ; preds = %5677
  br label %5707

; <label>:5707                                    ; preds = %5813, %5706
  %5708 = phi float [ %5814, %5813 ], [ %5678, %5706 ]
  %5709 = phi float [ %5815, %5813 ], [ %5679, %5706 ]
  %5710 = phi float [ %5816, %5813 ], [ %5680, %5706 ]
  %5711 = phi float [ %5817, %5813 ], [ %5681, %5706 ]
  %5712 = phi i32 [ %5717, %5813 ], [ %5704, %5706 ]
  %5713 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5712)  ; FirstbitLo(value)
  %5714 = add i32 %5713, %5689
  %5715 = and i32 %5713, 31
  %5716 = shl i32 1, %5715
  %5717 = xor i32 %5716, %5712
  %5718 = mul i32 %5714, 72
  %5719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5718, i32 undef)  ; BufferLoad(srv,index,wot)
  %5720 = extractvalue %dx.types.ResRet.f32 %5719, 0
  %5721 = extractvalue %dx.types.ResRet.f32 %5719, 1
  %5722 = extractvalue %dx.types.ResRet.f32 %5719, 2
  %5723 = add i32 %5718, 12
  %5724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5723, i32 undef)  ; BufferLoad(srv,index,wot)
  %5725 = extractvalue %dx.types.ResRet.i32 %5724, 0
  %5726 = add i32 %5718, 16
  %5727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5726, i32 undef)  ; BufferLoad(srv,index,wot)
  %5728 = extractvalue %dx.types.ResRet.f32 %5727, 0
  %5729 = extractvalue %dx.types.ResRet.f32 %5727, 1
  %5730 = extractvalue %dx.types.ResRet.f32 %5727, 2
  %5731 = add i32 %5718, 28
  %5732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5731, i32 undef)  ; BufferLoad(srv,index,wot)
  %5733 = extractvalue %dx.types.ResRet.f32 %5732, 0
  %5734 = add i32 %5718, 32
  %5735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5734, i32 undef)  ; BufferLoad(srv,index,wot)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5739 = extractvalue %dx.types.ResRet.f32 %5735, 3
  %5740 = add i32 %5718, 48
  %5741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5740, i32 undef)  ; BufferLoad(srv,index,wot)
  %5742 = extractvalue %dx.types.ResRet.f32 %5741, 0
  %5743 = extractvalue %dx.types.ResRet.f32 %5741, 1
  %5744 = add i32 %5718, 56
  %5745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5744, i32 undef)  ; BufferLoad(srv,index,wot)
  %5746 = extractvalue %dx.types.ResRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.ResRet.f32 %5745, 1
  %5748 = add i32 %5718, 64
  %5749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5748, i32 undef)  ; BufferLoad(srv,index,wot)
  %5750 = extractvalue %dx.types.ResRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.ResRet.f32 %5749, 1
  %5752 = mul i32 %5714, 60
  %5753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5752, i32 undef)  ; BufferLoad(srv,index,wot)
  %5754 = extractvalue %dx.types.ResRet.f32 %5753, 0
  %5755 = extractvalue %dx.types.ResRet.f32 %5753, 1
  %5756 = extractvalue %dx.types.ResRet.f32 %5753, 2
  %5757 = add i32 %5752, 12
  %5758 = add i32 %5752, 48
  %5759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5758, i32 undef)  ; BufferLoad(srv,index,wot)
  %5760 = extractvalue %dx.types.ResRet.f32 %5759, 0
  %5761 = extractvalue %dx.types.ResRet.f32 %5759, 1
  %5762 = extractvalue %dx.types.ResRet.f32 %5759, 2
  %5763 = and i32 %5725, 32767
  %5764 = bitcast float %5720 to i32
  %5765 = icmp eq i32 %5764, -1
  %5766 = bitcast float %5721 to i32
  %5767 = and i32 %5725, 32768
  %5768 = icmp ne i32 %5767, 0
  %5769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5770 = extractvalue %dx.types.CBufRet.f32 %5769, 0
  %5771 = extractvalue %dx.types.CBufRet.f32 %5769, 1
  %5772 = extractvalue %dx.types.CBufRet.f32 %5769, 2
  %5773 = fsub fast float %5754, %5770
  %5774 = fsub fast float %5755, %5771
  %5775 = fsub fast float %5756, %5772
  %5776 = fsub fast float %188, %5773
  %5777 = fsub fast float %189, %5774
  %5778 = fsub fast float %190, %5775
  %5779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5757, i32 undef)  ; BufferLoad(srv,index,wot)
  %5780 = extractvalue %dx.types.ResRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.ResRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.ResRet.f32 %5779, 2
  %5783 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %5780, float %5781, float %5782)  ; Dot3(ax,ay,az,bx,by,bz)
  %5784 = add i32 %5752, 24
  %5785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5784, i32 undef)  ; BufferLoad(srv,index,wot)
  %5786 = extractvalue %dx.types.ResRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.ResRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.ResRet.f32 %5785, 2
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %5786, float %5787, float %5788)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = add i32 %5752, 36
  %5791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5790, i32 undef)  ; BufferLoad(srv,index,wot)
  %5792 = extractvalue %dx.types.ResRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.ResRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.ResRet.f32 %5791, 2
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %5792, float %5793, float %5794)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = call float @dx.op.unary.f32(i32 6, float %5783)  ; FAbs(value)
  %5797 = call float @dx.op.unary.f32(i32 6, float %5789)  ; FAbs(value)
  %5798 = call float @dx.op.unary.f32(i32 6, float %5795)  ; FAbs(value)
  %5799 = fsub fast float %5760, %5796
  %5800 = fsub fast float %5761, %5797
  %5801 = fsub fast float %5762, %5798
  %5802 = fmul fast float %5799, %5728
  %5803 = fmul fast float %5800, %5729
  %5804 = fmul fast float %5801, %5730
  %5805 = call float @dx.op.binary.f32(i32 36, float %5803, float %5804)  ; FMin(a,b)
  %5806 = call float @dx.op.binary.f32(i32 36, float %5802, float %5805)  ; FMin(a,b)
  %5807 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5808 = call float @dx.op.binary.f32(i32 36, float %5711, float %5807)  ; FMin(a,b)
  %5809 = uitofp i1 %5768 to float
  %5810 = fsub fast float 1.000000e+00, %5809
  %5811 = fmul fast float %5808, %5810
  %5812 = fcmp fast ogt float %5811, 0.000000e+00
  br i1 %5812, label %5819, label %5813

; <label>:5813                                    ; preds = %5961, %5707
  %5814 = phi float [ %6025, %5961 ], [ %5708, %5707 ]
  %5815 = phi float [ %6026, %5961 ], [ %5709, %5707 ]
  %5816 = phi float [ %6027, %5961 ], [ %5710, %5707 ]
  %5817 = phi float [ %6028, %5961 ], [ %5711, %5707 ]
  %5818 = icmp eq i32 %5712, %5716
  br i1 %5818, label %6029, label %5707

; <label>:5819                                    ; preds = %5707
  br i1 %5765, label %5877, label %5820

; <label>:5820                                    ; preds = %5819
  %5821 = fsub fast float -0.000000e+00, %5780
  %5822 = fsub fast float -0.000000e+00, %5781
  %5823 = fsub fast float -0.000000e+00, %5782
  %5824 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %5821, float %5822, float %5823)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = fsub fast float -0.000000e+00, %5824
  %5826 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %5821, float %5822, float %5823)  ; Dot3(ax,ay,az,bx,by,bz)
  %5827 = fadd fast float %5826, %5743
  %5828 = fadd fast float %5742, %5826
  %5829 = fsub fast float -0.000000e+00, %5828
  %5830 = fcmp ogt float %5824, -0.000000e+00
  %5831 = select i1 %5830, float %5829, float %5827
  %5832 = call float @dx.op.unary.f32(i32 6, float %5825)  ; FAbs(value)
  %5833 = fdiv fast float 1.000000e+00, %5832
  %5834 = fmul fast float %5831, %5833
  %5835 = call float @dx.op.binary.f32(i32 35, float %5834, float 0.000000e+00)  ; FMax(a,b)
  %5836 = fsub fast float -0.000000e+00, %5786
  %5837 = fsub fast float -0.000000e+00, %5787
  %5838 = fsub fast float -0.000000e+00, %5788
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %5836, float %5837, float %5838)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = fsub fast float -0.000000e+00, %5839
  %5841 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %5836, float %5837, float %5838)  ; Dot3(ax,ay,az,bx,by,bz)
  %5842 = fadd fast float %5841, %5747
  %5843 = fadd fast float %5746, %5841
  %5844 = fsub fast float -0.000000e+00, %5843
  %5845 = fcmp ogt float %5839, -0.000000e+00
  %5846 = select i1 %5845, float %5844, float %5842
  %5847 = call float @dx.op.unary.f32(i32 6, float %5840)  ; FAbs(value)
  %5848 = fdiv fast float 1.000000e+00, %5847
  %5849 = fmul fast float %5846, %5848
  %5850 = call float @dx.op.binary.f32(i32 35, float %5849, float 0.000000e+00)  ; FMax(a,b)
  %5851 = fsub fast float -0.000000e+00, %5792
  %5852 = fsub fast float -0.000000e+00, %5793
  %5853 = fsub fast float -0.000000e+00, %5794
  %5854 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %5851, float %5852, float %5853)  ; Dot3(ax,ay,az,bx,by,bz)
  %5855 = fsub fast float -0.000000e+00, %5854
  %5856 = call float @dx.op.dot3.f32(i32 55, float %5776, float %5777, float %5778, float %5851, float %5852, float %5853)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = fadd fast float %5856, %5751
  %5858 = fadd fast float %5750, %5856
  %5859 = fsub fast float -0.000000e+00, %5858
  %5860 = fcmp ogt float %5854, -0.000000e+00
  %5861 = select i1 %5860, float %5859, float %5857
  %5862 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %5863 = fdiv fast float 1.000000e+00, %5862
  %5864 = fmul fast float %5861, %5863
  %5865 = call float @dx.op.binary.f32(i32 35, float %5864, float 0.000000e+00)  ; FMax(a,b)
  %5866 = call float @dx.op.binary.f32(i32 36, float %5850, float %5865)  ; FMin(a,b)
  %5867 = call float @dx.op.binary.f32(i32 36, float %5835, float %5866)  ; FMin(a,b)
  %5868 = fmul fast float %5867, %5660
  %5869 = fmul fast float %5867, %5661
  %5870 = fmul fast float %5867, %5662
  %5871 = fadd fast float %5868, %188
  %5872 = fadd fast float %5869, %189
  %5873 = fadd fast float %5870, %190
  %5874 = fsub fast float %5871, %5720
  %5875 = fsub fast float %5872, %5721
  %5876 = fsub fast float %5873, %5722
  br label %5884

; <label>:5877                                    ; preds = %5819
  %5878 = fmul fast float %5660, 8.096000e+03
  %5879 = fmul fast float %5661, 8.096000e+03
  %5880 = fmul fast float %5662, 8.096000e+03
  %5881 = fadd fast float %5878, %188
  %5882 = fadd fast float %5879, %189
  %5883 = fadd fast float %5880, %190
  br label %5884

; <label>:5884                                    ; preds = %5877, %5820
  %5885 = phi float [ %5660, %5877 ], [ %5874, %5820 ]
  %5886 = phi float [ %5661, %5877 ], [ %5875, %5820 ]
  %5887 = phi float [ %5662, %5877 ], [ %5876, %5820 ]
  %5888 = phi float [ %5881, %5877 ], [ %5871, %5820 ]
  %5889 = phi float [ %5882, %5877 ], [ %5872, %5820 ]
  %5890 = phi float [ %5883, %5877 ], [ %5873, %5820 ]
  %5891 = fcmp fast olt float %5739, 1.000000e+00
  br i1 %5891, label %5892, label %5923, !dx.controlflow.hints !92

; <label>:5892                                    ; preds = %5884
  %5893 = fmul fast float %5887, %5737
  %5894 = fmul fast float %5886, %5738
  %5895 = fsub fast float %5893, %5894
  %5896 = fmul fast float %5885, %5738
  %5897 = fmul fast float %5887, %5736
  %5898 = fsub fast float %5896, %5897
  %5899 = fmul fast float %5886, %5736
  %5900 = fmul fast float %5885, %5737
  %5901 = fsub fast float %5899, %5900
  %5902 = fmul fast float %5895, 2.000000e+00
  %5903 = fmul fast float %5898, 2.000000e+00
  %5904 = fmul fast float %5901, 2.000000e+00
  %5905 = fmul fast float %5902, %5739
  %5906 = fmul fast float %5903, %5739
  %5907 = fmul fast float %5904, %5739
  %5908 = fmul fast float %5904, %5737
  %5909 = fmul fast float %5903, %5738
  %5910 = fmul fast float %5902, %5738
  %5911 = fmul fast float %5904, %5736
  %5912 = fmul fast float %5903, %5736
  %5913 = fmul fast float %5902, %5737
  %5914 = fadd fast float %5908, %5885
  %5915 = fadd fast float %5914, %5905
  %5916 = fsub fast float %5915, %5909
  %5917 = fsub fast float %5886, %5911
  %5918 = fadd fast float %5917, %5906
  %5919 = fadd fast float %5918, %5910
  %5920 = fadd fast float %5907, %5887
  %5921 = fsub fast float %5920, %5913
  %5922 = fadd fast float %5921, %5912
  br label %5923

; <label>:5923                                    ; preds = %5892, %5884
  %5924 = phi float [ %5916, %5892 ], [ %5885, %5884 ]
  %5925 = phi float [ %5919, %5892 ], [ %5886, %5884 ]
  %5926 = phi float [ %5922, %5892 ], [ %5887, %5884 ]
  br i1 %5765, label %5958, label %5927

; <label>:5927                                    ; preds = %5923
  %5928 = fmul fast float %5282, 0x400187C840000000
  %5929 = fadd fast float %5928, 0xC00EFC2120000000
  %5930 = fmul fast float %5929, %5282
  %5931 = fadd fast float %5930, 0x3FE5D16340000000
  %5932 = fmul fast float %5931, %5282
  %5933 = fadd fast float %5932, 1.000000e+00
  %5934 = call float @dx.op.unary.f32(i32 7, float %5933)  ; Saturate(value)
  %5935 = fsub fast float %5888, %188
  %5936 = fsub fast float %5889, %189
  %5937 = fsub fast float %5890, %190
  %5938 = fsub fast float %5888, %5720
  %5939 = fsub fast float %5889, %5721
  %5940 = fsub fast float %5890, %5722
  %5941 = call float @dx.op.dot3.f32(i32 55, float %5935, float %5936, float %5937, float %5935, float %5936, float %5937)  ; Dot3(ax,ay,az,bx,by,bz)
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %5938, float %5939, float %5940)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = fadd fast float %5942, 0x3EE4F8B580000000
  %5944 = fdiv fast float %5941, %5943
  %5945 = bitcast float %5944 to i32
  %5946 = ashr i32 %5945, 1
  %5947 = add nsw i32 %5946, 532487669
  %5948 = bitcast i32 %5947 to float
  %5949 = fmul fast float %5948, %5934
  %5950 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5951 = fmul fast float %5950, 0x4009981AE0000000
  %5952 = fsub fast float 0x40111BBD80000000, %5951
  %5953 = fmul fast float %5952, %5950
  %5954 = fadd fast float %5953, 0xC0009F6020000000
  %5955 = fmul fast float %5954, %5950
  %5956 = fadd fast float %5955, 1.000000e+00
  %5957 = call float @dx.op.unary.f32(i32 7, float %5956)  ; Saturate(value)
  br label %5961

; <label>:5958                                    ; preds = %5923
  %5959 = icmp ne i32 %5766, -1
  %5960 = zext i1 %5959 to i32
  br label %5961

; <label>:5961                                    ; preds = %5958, %5927
  %5962 = phi float [ %5282, %5958 ], [ %5957, %5927 ]
  %5963 = phi i32 [ %5960, %5958 ], [ 0, %5927 ]
  %5964 = fmul float %5962, 5.000000e+00
  %5965 = fsub float 5.000000e+00, %5964
  %5966 = icmp ne i32 %5963, 0
  %5967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5968 = extractvalue %dx.types.CBufRet.f32 %5967, 3
  %5969 = fadd fast float %5968, %5965
  %5970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5969)  ; FMax(a,b)
  %5971 = call float @dx.op.unary.f32(i32 6, float %5924)  ; FAbs(value)
  %5972 = call float @dx.op.unary.f32(i32 6, float %5925)  ; FAbs(value)
  %5973 = fadd fast float %5972, %5971
  %5974 = call float @dx.op.unary.f32(i32 6, float %5926)  ; FAbs(value)
  %5975 = fadd fast float %5973, %5974
  %5976 = fcmp fast oeq float %5975, 0.000000e+00
  %5977 = fdiv fast float 1.000000e+00, %5975
  %5978 = select i1 %5976, float 1.000000e+00, float %5977
  %5979 = fmul fast float %5978, %5924
  %5980 = fmul fast float %5978, %5925
  %5981 = call float @dx.op.unary.f32(i32 6, float %5980)  ; FAbs(value)
  %5982 = call float @dx.op.unary.f32(i32 6, float %5979)  ; FAbs(value)
  %5983 = fsub fast float 1.000000e+00, %5981
  %5984 = fsub fast float 1.000000e+00, %5982
  %5985 = fcmp fast oge float %5979, 0.000000e+00
  %5986 = fcmp fast oge float %5980, 0.000000e+00
  %5987 = select i1 %5985, float 1.000000e+00, float -1.000000e+00
  %5988 = select i1 %5986, float 1.000000e+00, float -1.000000e+00
  %5989 = fcmp fast ole float %5926, 0.000000e+00
  %5990 = fmul fast float %5987, %5983
  %5991 = fmul fast float %5988, %5984
  %5992 = select i1 %5989, float %5990, float %5979
  %5993 = select i1 %5989, float %5991, float %5980
  %5994 = fmul fast float %5992, 5.000000e-01
  %5995 = fmul fast float %5993, 5.000000e-01
  %5996 = fadd fast float %5994, 5.000000e-01
  %5997 = fadd fast float %5995, 5.000000e-01
  %5998 = uitofp i32 %5763 to float
  %5999 = call float @dx.op.binary.f32(i32 36, float %5970, float 3.000000e+00)  ; FMin(a,b)
  %6000 = fadd fast float %5999, 2.000000e+00
  %6001 = call float @dx.op.unary.f32(i32 21, float %6000)  ; Exp(value)
  %6002 = extractvalue %dx.types.CBufRet.f32 %5967, 1
  %6003 = fmul fast float %6002, %6001
  %6004 = fmul fast float %6003, 2.000000e+00
  %6005 = fsub fast float 1.000000e+00, %6004
  %6006 = fmul fast float %5996, %6005
  %6007 = fmul fast float %5997, %6005
  %6008 = fadd fast float %6006, %6003
  %6009 = fadd fast float %6007, %6003
  %6010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %6008, float %6009, float %5998, float undef, i32 0, i32 0, i32 undef, float %5970)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6011 = extractvalue %dx.types.ResRet.f32 %6010, 0
  %6012 = extractvalue %dx.types.ResRet.f32 %6010, 1
  %6013 = extractvalue %dx.types.ResRet.f32 %6010, 2
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 3
  %6016 = fmul fast float %6015, %5733
  %6017 = call float @dx.op.binary.f32(i32 36, float %5312, float %6016)  ; FMin(a,b)
  %6018 = select i1 %5966, float %6017, float %6016
  %6019 = fmul fast float %6011, %5811
  %6020 = fmul fast float %6019, %6018
  %6021 = fmul fast float %6012, %5811
  %6022 = fmul fast float %6021, %6018
  %6023 = fmul fast float %6013, %5811
  %6024 = fmul fast float %6023, %6018
  %6025 = fadd fast float %6020, %5708
  %6026 = fadd fast float %6022, %5709
  %6027 = fadd fast float %6024, %5710
  %6028 = fsub fast float %5711, %5811
  br label %5813

; <label>:6029                                    ; preds = %5813
  br label %6030

; <label>:6030                                    ; preds = %6029, %5677
  %6031 = phi float [ %5678, %5677 ], [ %5814, %6029 ]
  %6032 = phi float [ %5679, %5677 ], [ %5815, %6029 ]
  %6033 = phi float [ %5680, %5677 ], [ %5816, %6029 ]
  %6034 = phi float [ %5681, %5677 ], [ %5817, %6029 ]
  %6035 = add i32 %5682, 1
  %6036 = icmp ugt i32 %6035, %5674
  br i1 %6036, label %6037, label %5677, !llvm.loop !93

; <label>:6037                                    ; preds = %6030
  br label %6038

; <label>:6038                                    ; preds = %6037, %5659
  %6039 = phi float [ 0.000000e+00, %5659 ], [ %6031, %6037 ]
  %6040 = phi float [ 0.000000e+00, %5659 ], [ %6032, %6037 ]
  %6041 = phi float [ 0.000000e+00, %5659 ], [ %6033, %6037 ]
  %6042 = call float @dx.op.dot3.f32(i32 55, float %6039, float %6040, float %6041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6043 = select i1 %294, float 0.000000e+00, float %6039
  %6044 = select i1 %294, float %6042, float %6040
  %6045 = select i1 %294, float 0.000000e+00, float %6041
  %6046 = fcmp fast olt float %5612, 0.000000e+00
  %6047 = call float @dx.op.unary.f32(i32 6, float %5612)  ; FAbs(value)
  %6048 = fmul fast float %6047, %5552
  %6049 = fmul fast float %6047, %5553
  %6050 = fmul fast float %6047, %5554
  %6051 = select i1 %6046, float %5552, float %6048
  %6052 = select i1 %6046, float %5553, float %6049
  %6053 = select i1 %6046, float %5554, float %6050
  %6054 = fsub fast float 1.000000e+00, %6047
  %6055 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  %6056 = fmul fast float %6055, %6043
  %6057 = fmul fast float %6055, %6044
  %6058 = fmul fast float %6055, %6045
  %6059 = fadd fast float %6051, %6056
  %6060 = fadd fast float %6052, %6057
  %6061 = fadd fast float %6053, %6058
  br label %6062

; <label>:6062                                    ; preds = %6038, %5595
  %6063 = phi float [ %5552, %5595 ], [ %6059, %6038 ]
  %6064 = phi float [ %5553, %5595 ], [ %6060, %6038 ]
  %6065 = phi float [ %5554, %5595 ], [ %6061, %6038 ]
  %6066 = call float @dx.op.dot3.f32(i32 55, float %5273, float %5274, float %5275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6067 = fcmp fast ogt float %6066, 0x3E7FF19E20000000
  %6068 = fdiv fast float 1.000000e+00, %6066
  %6069 = select i1 %6067, float %6068, float 0.000000e+00
  %6070 = fmul fast float %6069, %5273
  %6071 = fmul fast float %6069, %5274
  %6072 = fmul fast float %6069, %5275
  %6073 = fadd fast float %6070, -1.000000e+00
  %6074 = fadd fast float %6071, -1.000000e+00
  %6075 = fadd fast float %6072, -1.000000e+00
  %6076 = fmul fast float %6073, 5.000000e-01
  %6077 = fmul fast float %6074, 5.000000e-01
  %6078 = fmul fast float %6075, 5.000000e-01
  %6079 = fadd fast float %6076, 1.000000e+00
  %6080 = fadd fast float %6077, 1.000000e+00
  %6081 = fadd fast float %6078, 1.000000e+00
  %6082 = fmul fast float %5601, %4412
  %6083 = fmul fast float %5601, %4413
  %6084 = fmul fast float %5601, %4414
  %6085 = fadd fast float %6082, -1.000000e+00
  %6086 = fadd fast float %6083, -1.000000e+00
  %6087 = fadd fast float %6084, -1.000000e+00
  %6088 = fmul fast float %6085, %4326
  %6089 = fmul fast float %6086, %4326
  %6090 = fmul fast float %6087, %4326
  %6091 = fmul fast float %6063, %5596
  %6092 = fmul fast float %6064, %5597
  %6093 = fmul fast float %6065, %5598
  %6094 = fsub fast float 1.000000e+00, %5286
  %6095 = bitcast float %6094 to i32
  %6096 = sitofp i32 %6095 to float
  %6097 = fmul fast float %6096, 5.000000e+00
  %6098 = fadd fast float %6097, 0xC1EFBF8940000000
  %6099 = fptosi float %6098 to i32
  %6100 = bitcast i32 %6099 to float
  %6101 = fmul fast float %6100, %4301
  %6102 = fmul fast float %5544, %6101
  %6103 = fmul fast float %6102, %5601
  %6104 = fmul fast float %6103, %6079
  %6105 = fmul fast float %5545, %6101
  %6106 = fmul fast float %6105, %5601
  %6107 = fmul fast float %6106, %6080
  %6108 = fmul fast float %5546, %6101
  %6109 = fmul fast float %6108, %5601
  %6110 = fmul fast float %6109, %6081
  %6111 = fadd fast float %6091, %4287
  %6112 = fadd fast float %6111, %6104
  %6113 = fmul fast float %6112, %4326
  %6114 = fadd fast float %6092, %4288
  %6115 = fadd fast float %6114, %6107
  %6116 = fmul fast float %6115, %4326
  %6117 = fadd fast float %6093, %4289
  %6118 = fadd fast float %6117, %6110
  %6119 = fmul fast float %6118, %4326
  %6120 = fadd fast float %6090, 1.000000e+00
  %6121 = fadd fast float %6089, 1.000000e+00
  %6122 = fadd fast float %6088, 1.000000e+00
  %6123 = fmul fast float %5601, %5546
  %6124 = fmul fast float %5601, %5545
  %6125 = fmul fast float %5601, %5544
  %6126 = fmul fast float %6122, %5548
  %6127 = fmul fast float %6121, %5549
  %6128 = fmul fast float %6120, %5550
  %6129 = fadd fast float %6126, %6125
  %6130 = fmul fast float %6129, %4326
  %6131 = fadd fast float %6127, %6124
  %6132 = fmul fast float %6131, %4326
  %6133 = fadd fast float %6128, %6123
  %6134 = fmul fast float %6133, %4326
  %6135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6136 = extractvalue %dx.types.CBufRet.f32 %6135, 3
  %6137 = fcmp fast oeq float %6136, 0.000000e+00
  br i1 %6137, label %7821, label %6138

; <label>:6138                                    ; preds = %6062
  %6139 = extractvalue %dx.types.CBufRet.f32 %6135, 0
  %6140 = extractvalue %dx.types.CBufRet.f32 %6135, 1
  %6141 = extractvalue %dx.types.CBufRet.f32 %6135, 2
  %6142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.f32 %6142, 0
  %6144 = extractvalue %dx.types.CBufRet.f32 %6142, 1
  %6145 = extractvalue %dx.types.CBufRet.f32 %6142, 2
  %6146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6147 = extractvalue %dx.types.CBufRet.f32 %6146, 0
  %6148 = extractvalue %dx.types.CBufRet.f32 %6146, 1
  %6149 = call float @dx.op.dot3.f32(i32 55, float %6143, float %6144, float %6145, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = select i1 %294, float %6147, float %6143
  %6151 = select i1 %294, float %6149, float %6144
  %6152 = select i1 %294, float %6148, float %6145
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 2
  %6155 = fmul fast float %6154, %116
  %6156 = fmul fast float %6154, %117
  %6157 = fmul fast float %6154, %118
  %6158 = fadd fast float %6155, %188
  %6159 = fadd fast float %6156, %189
  %6160 = fadd fast float %6157, %190
  %6161 = fcmp fast olt float %6136, 0.000000e+00
  br i1 %6161, label %7419, label %6162

; <label>:6162                                    ; preds = %6138
  %6163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6164 = extractvalue %dx.types.CBufRet.f32 %6163, 0
  %6165 = extractvalue %dx.types.CBufRet.f32 %6163, 1
  %6166 = extractvalue %dx.types.CBufRet.f32 %6163, 2
  %6167 = extractvalue %dx.types.CBufRet.f32 %6163, 3
  %6168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.f32 %6168, 0
  %6170 = extractvalue %dx.types.CBufRet.f32 %6168, 1
  %6171 = extractvalue %dx.types.CBufRet.f32 %6168, 2
  %6172 = extractvalue %dx.types.CBufRet.f32 %6168, 3
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 0
  %6175 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6176 = extractvalue %dx.types.CBufRet.f32 %6173, 2
  %6177 = extractvalue %dx.types.CBufRet.f32 %6173, 3
  %6178 = fmul fast float %6164, %6158
  %6179 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %6165, float %6178)  ; FMad(a,b,c)
  %6180 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %6166, float %6179)  ; FMad(a,b,c)
  %6181 = fadd fast float %6180, %6167
  %6182 = fmul fast float %6169, %6158
  %6183 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %6170, float %6182)  ; FMad(a,b,c)
  %6184 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %6171, float %6183)  ; FMad(a,b,c)
  %6185 = fadd fast float %6184, %6172
  %6186 = fmul fast float %6174, %6158
  %6187 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %6175, float %6186)  ; FMad(a,b,c)
  %6188 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %6176, float %6187)  ; FMad(a,b,c)
  %6189 = fadd fast float %6188, %6177
  %6190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6191 = extractvalue %dx.types.CBufRet.f32 %6190, 0
  %6192 = fcmp fast une float %6191, 0.000000e+00
  %6193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6194 = extractvalue %dx.types.CBufRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.CBufRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.CBufRet.f32 %6193, 3
  %6197 = fmul fast float %6196, %6181
  %6198 = fmul fast float %6196, %6185
  %6199 = fadd fast float %6197, %6194
  %6200 = fadd fast float %6198, %6195
  %6201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6202 = extractvalue %dx.types.CBufRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.CBufRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.CBufRet.f32 %6201, 3
  %6205 = fmul fast float %6204, %6181
  %6206 = fmul fast float %6204, %6185
  %6207 = fadd fast float %6205, %6202
  %6208 = fadd fast float %6206, %6203
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6211 = fsub fast float %6210, %6189
  %6212 = extractvalue %dx.types.CBufRet.f32 %6209, 2
  %6213 = fmul fast float %6211, %6212
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  br i1 %6192, label %6276, label %6216

; <label>:6216                                    ; preds = %6162
  %6217 = extractvalue %dx.types.CBufRet.f32 %6201, 2
  %6218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6219 = extractvalue %dx.types.CBufRet.f32 %6218, 2
  %6220 = fadd fast float %6219, %6217
  %6221 = fcmp fast ogt float %6220, 0.000000e+00
  br i1 %6221, label %6222, label %6246

; <label>:6222                                    ; preds = %6216
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.CBufRet.f32 %6223, 1
  %6226 = fsub fast float %6207, %6224
  %6227 = fsub fast float %6208, %6225
  %6228 = fcmp fast olt float %6226, 0.000000e+00
  %6229 = fcmp fast olt float %6227, 0.000000e+00
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 0
  %6232 = extractvalue %dx.types.CBufRet.f32 %6230, 1
  %6233 = extractvalue %dx.types.CBufRet.f32 %6230, 2
  %6234 = extractvalue %dx.types.CBufRet.f32 %6230, 3
  %6235 = select i1 %6228, float %6231, float %6233
  %6236 = select i1 %6229, float %6232, float %6234
  %6237 = fmul fast float %6235, %6226
  %6238 = fmul fast float %6236, %6227
  %6239 = call float @dx.op.unary.f32(i32 6, float %6237)  ; FAbs(value)
  %6240 = call float @dx.op.unary.f32(i32 6, float %6238)  ; FAbs(value)
  %6241 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6242 = call float @dx.op.binary.f32(i32 35, float %6239, float %6240)  ; FMax(a,b)
  %6243 = fsub fast float %6241, %6242
  %6244 = call float @dx.op.unary.f32(i32 7, float %6243)  ; Saturate(value)
  %6245 = fmul fast float %6244, %6215
  br label %6246

; <label>:6246                                    ; preds = %6222, %6216
  %6247 = phi float [ %6245, %6222 ], [ 0.000000e+00, %6216 ]
  %6248 = extractvalue %dx.types.CBufRet.f32 %6193, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6218, 1
  %6250 = fadd fast float %6249, %6248
  %6251 = fcmp fast ogt float %6250, 0.000000e+00
  br i1 %6251, label %6252, label %6276

; <label>:6252                                    ; preds = %6246
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = fsub fast float %6199, %6254
  %6257 = fsub fast float %6200, %6255
  %6258 = fcmp fast olt float %6256, 0.000000e+00
  %6259 = fcmp fast olt float %6257, 0.000000e+00
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 0
  %6262 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6263 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6264 = extractvalue %dx.types.CBufRet.f32 %6260, 3
  %6265 = select i1 %6258, float %6261, float %6263
  %6266 = select i1 %6259, float %6262, float %6264
  %6267 = fmul fast float %6265, %6256
  %6268 = fmul fast float %6266, %6257
  %6269 = call float @dx.op.unary.f32(i32 6, float %6267)  ; FAbs(value)
  %6270 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6271 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6272 = call float @dx.op.binary.f32(i32 35, float %6269, float %6270)  ; FMax(a,b)
  %6273 = fsub fast float %6271, %6272
  %6274 = call float @dx.op.unary.f32(i32 7, float %6273)  ; Saturate(value)
  %6275 = fmul fast float %6274, %6215
  br label %6276

; <label>:6276                                    ; preds = %6252, %6246, %6162
  %6277 = phi float [ 0.000000e+00, %6162 ], [ %6275, %6252 ], [ 0.000000e+00, %6246 ]
  %6278 = phi float [ 0.000000e+00, %6162 ], [ %6247, %6252 ], [ %6247, %6246 ]
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6281 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6283 = extractvalue %dx.types.CBufRet.f32 %6282, 0
  %6284 = extractvalue %dx.types.CBufRet.f32 %6282, 1
  %6285 = fsub fast float %6181, %6283
  %6286 = fsub fast float %6185, %6284
  %6287 = fcmp fast olt float %6285, 0.000000e+00
  %6288 = fcmp fast olt float %6286, 0.000000e+00
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6293 = extractvalue %dx.types.CBufRet.f32 %6289, 3
  %6294 = select i1 %6287, float %6290, float %6292
  %6295 = select i1 %6288, float %6291, float %6293
  %6296 = fmul fast float %6294, %6285
  %6297 = fmul fast float %6295, %6286
  %6298 = call float @dx.op.unary.f32(i32 6, float %6296)  ; FAbs(value)
  %6299 = call float @dx.op.unary.f32(i32 6, float %6297)  ; FAbs(value)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6301 = call float @dx.op.binary.f32(i32 35, float %6298, float %6299)  ; FMax(a,b)
  %6302 = fsub fast float %6300, %6301
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = call float @dx.op.binary.f32(i32 36, float %6303, float %6281)  ; FMin(a,b)
  %6305 = fmul fast float %6304, %6215
  %6306 = fsub fast float %6277, %6305
  %6307 = fsub fast float %6278, %6277
  %6308 = fsub fast float %6307, %6305
  %6309 = call float @dx.op.binary.f32(i32 35, float %6277, float %6278)  ; FMax(a,b)
  %6310 = call float @dx.op.binary.f32(i32 35, float %6305, float %6309)  ; FMax(a,b)
  %6311 = fcmp fast olt float %6310, 1.000000e+00
  br i1 %6311, label %6312, label %6710, !dx.controlflow.hints !95

; <label>:6312                                    ; preds = %6276
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6315 = fcmp fast une float %6314, 0.000000e+00
  br i1 %6315, label %6316, label %6710, !dx.controlflow.hints !96

; <label>:6316                                    ; preds = %6312
  %6317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.CBufRet.f32 %6317, 1
  %6320 = extractvalue %dx.types.CBufRet.f32 %6317, 2
  %6321 = extractvalue %dx.types.CBufRet.f32 %6317, 3
  %6322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6323 = extractvalue %dx.types.CBufRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.CBufRet.f32 %6322, 1
  %6325 = extractvalue %dx.types.CBufRet.f32 %6322, 2
  %6326 = extractvalue %dx.types.CBufRet.f32 %6322, 3
  %6327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6328 = extractvalue %dx.types.CBufRet.f32 %6327, 0
  %6329 = extractvalue %dx.types.CBufRet.f32 %6327, 1
  %6330 = extractvalue %dx.types.CBufRet.f32 %6327, 2
  %6331 = extractvalue %dx.types.CBufRet.f32 %6327, 3
  %6332 = fmul fast float %6318, %6158
  %6333 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %6319, float %6332)  ; FMad(a,b,c)
  %6334 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %6320, float %6333)  ; FMad(a,b,c)
  %6335 = fadd fast float %6334, %6321
  %6336 = fmul fast float %6323, %6158
  %6337 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %6324, float %6336)  ; FMad(a,b,c)
  %6338 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %6325, float %6337)  ; FMad(a,b,c)
  %6339 = fadd fast float %6338, %6326
  %6340 = fmul fast float %6328, %6158
  %6341 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %6329, float %6340)  ; FMad(a,b,c)
  %6342 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %6330, float %6341)  ; FMad(a,b,c)
  %6343 = fadd fast float %6342, %6331
  %6344 = fcmp fast oge float %6335, 1.000000e+00
  %6345 = fcmp fast oge float %6339, 1.000000e+00
  %6346 = or i1 %6344, %6345
  %6347 = fcmp fast olt float %6335, 0.000000e+00
  %6348 = fcmp fast olt float %6339, 0.000000e+00
  %6349 = or i1 %6347, %6348
  %6350 = or i1 %6346, %6349
  br i1 %6350, label %6710, label %6351, !dx.controlflow.hints !97

; <label>:6351                                    ; preds = %6316
  %6352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.CBufRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.CBufRet.f32 %6352, 2
  %6356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6357 = extractvalue %dx.types.CBufRet.i32 %6356, 2
  %6358 = uitofp i32 %6357 to float
  %6359 = extractvalue %dx.types.CBufRet.i32 %6356, 3
  %6360 = uitofp i32 %6359 to float
  %6361 = extractvalue %dx.types.CBufRet.f32 %6352, 3
  %6362 = fmul fast float %6361, 2.000000e+00
  %6363 = fsub fast float %6335, %6353
  %6364 = fsub fast float %6339, %6354
  %6365 = fmul fast float %6362, %6363
  %6366 = fmul fast float %6362, %6364
  %6367 = fdiv fast float 1.000000e+00, %6141
  %6368 = fmul fast float %6366, %6367
  %6369 = call float @dx.op.unary.f32(i32 6, float %6368)  ; FAbs(value)
  %6370 = fmul fast float %6355, %6160
  %6371 = fmul fast float %6370, %6362
  %6372 = call float @dx.op.unary.f32(i32 6, float %6371)  ; FAbs(value)
  %6373 = call float @dx.op.unary.f32(i32 6, float %6365)  ; FAbs(value)
  %6374 = call float @dx.op.binary.f32(i32 35, float %6372, float %6369)  ; FMax(a,b)
  %6375 = call float @dx.op.binary.f32(i32 35, float %6373, float %6374)  ; FMax(a,b)
  %6376 = fmul fast float %6375, 2.000000e+00
  %6377 = call float @dx.op.unary.f32(i32 23, float %6376)  ; Log(value)
  %6378 = call float @dx.op.binary.f32(i32 35, float %6377, float %6358)  ; FMax(a,b)
  %6379 = call float @dx.op.unary.f32(i32 22, float %6378)  ; Frc(value)
  %6380 = fadd fast float %6379, 0xBFEA666660000000
  %6381 = fmul fast float %6380, 8.000000e+00
  %6382 = call float @dx.op.unary.f32(i32 7, float %6381)  ; Saturate(value)
  %6383 = call float @dx.op.unary.f32(i32 27, float %6378)  ; Round_ni(value)
  %6384 = fadd fast float %6383, %6382
  %6385 = call float @dx.op.binary.f32(i32 36, float %6384, float %6360)  ; FMin(a,b)
  %6386 = call float @dx.op.unary.f32(i32 27, float %6385)  ; Round_ni(value)
  %6387 = fsub fast float -0.000000e+00, %6386
  %6388 = call float @dx.op.unary.f32(i32 21, float %6387)  ; Exp(value)
  %6389 = fmul fast float %6388, %6362
  %6390 = fmul fast float %6389, %6335
  %6391 = fmul fast float %6389, %6339
  %6392 = fmul fast float %6390, 2.500000e-01
  %6393 = fmul fast float %6391, 2.500000e-01
  %6394 = fadd fast float %6392, 5.000000e-01
  %6395 = fadd fast float %6393, 5.000000e-01
  %6396 = fsub fast float %6360, %6358
  %6397 = fptoui float %6396 to i32
  %6398 = add i32 %6397, 320
  %6399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6398)  ; CBufferLoadLegacy(handle,regIndex)
  %6400 = extractvalue %dx.types.CBufRet.f32 %6399, 0
  %6401 = extractvalue %dx.types.CBufRet.f32 %6399, 1
  %6402 = fcmp fast une float %6385, %6360
  %6403 = fsub fast float %6335, %6400
  %6404 = fsub fast float %6339, %6401
  %6405 = call float @dx.op.unary.f32(i32 6, float %6403)  ; FAbs(value)
  %6406 = call float @dx.op.unary.f32(i32 6, float %6404)  ; FAbs(value)
  %6407 = fmul fast float %6405, %6389
  %6408 = fmul fast float %6406, %6389
  %6409 = fcmp fast olt float %6407, 1.000000e+00
  %6410 = fcmp fast olt float %6408, 1.000000e+00
  %6411 = and i1 %6409, %6410
  %6412 = or i1 %6402, %6411
  br i1 %6412, label %6413, label %6710, !dx.controlflow.hints !98

; <label>:6413                                    ; preds = %6351
  %6414 = fmul fast float %6391, 5.000000e-01
  %6415 = fmul fast float %6390, 5.000000e-01
  %6416 = fadd fast float %6414, 5.000000e-01
  %6417 = fadd fast float %6415, 5.000000e-01
  %6418 = sitofp i32 %6357 to float
  %6419 = fsub fast float %6385, %6418
  %6420 = call float @dx.op.unary.f32(i32 27, float %6419)  ; Round_ni(value)
  %6421 = call float @dx.op.unary.f32(i32 22, float %6385)  ; Frc(value)
  %6422 = call float @dx.op.unary.f32(i32 22, float %6417)  ; Frc(value)
  %6423 = call float @dx.op.unary.f32(i32 22, float %6416)  ; Frc(value)
  %6424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6422, float %6423, float %6420, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.ResRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.ResRet.f32 %6424, 2
  %6428 = extractvalue %dx.types.ResRet.f32 %6424, 3
  %6429 = fcmp fast ogt float %6421, 0.000000e+00
  br i1 %6429, label %6430, label %6451, !dx.controlflow.hints !99

; <label>:6430                                    ; preds = %6413
  %6431 = fadd fast float %6420, 1.000000e+00
  %6432 = call float @dx.op.unary.f32(i32 22, float %6394)  ; Frc(value)
  %6433 = call float @dx.op.unary.f32(i32 22, float %6395)  ; Frc(value)
  %6434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6432, float %6433, float %6431, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6435 = extractvalue %dx.types.ResRet.f32 %6434, 0
  %6436 = extractvalue %dx.types.ResRet.f32 %6434, 1
  %6437 = extractvalue %dx.types.ResRet.f32 %6434, 2
  %6438 = extractvalue %dx.types.ResRet.f32 %6434, 3
  %6439 = fsub fast float %6435, %6425
  %6440 = fsub fast float %6436, %6426
  %6441 = fsub fast float %6437, %6427
  %6442 = fsub fast float %6438, %6428
  %6443 = fmul fast float %6439, %6421
  %6444 = fmul fast float %6440, %6421
  %6445 = fmul fast float %6441, %6421
  %6446 = fmul fast float %6442, %6421
  %6447 = fadd fast float %6443, %6425
  %6448 = fadd fast float %6444, %6426
  %6449 = fadd fast float %6445, %6427
  %6450 = fadd fast float %6446, %6428
  br label %6451

; <label>:6451                                    ; preds = %6430, %6413
  %6452 = phi float [ %6447, %6430 ], [ %6425, %6413 ]
  %6453 = phi float [ %6448, %6430 ], [ %6426, %6413 ]
  %6454 = phi float [ %6449, %6430 ], [ %6427, %6413 ]
  %6455 = phi float [ %6450, %6430 ], [ %6428, %6413 ]
  %6456 = fadd fast float %6452, -5.000000e-01
  %6457 = fadd fast float %6454, -5.000000e-01
  %6458 = fmul fast float %6456, 0xBFD5555560000000
  %6459 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6457, float %6458)  ; FMad(a,b,c)
  %6460 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6453, float 0.000000e+00)  ; FMad(a,b,c)
  %6461 = fadd fast float %6460, %6455
  %6462 = fmul fast float %6456, -7.500000e-01
  %6463 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6457, float %6462)  ; FMad(a,b,c)
  %6464 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6453, float 0.000000e+00)  ; FMad(a,b,c)
  %6465 = fadd fast float %6464, %6455
  %6466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.f32 %6466, 0
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 0
  %6470 = extractvalue %dx.types.CBufRet.f32 %6468, 1
  %6471 = extractvalue %dx.types.CBufRet.f32 %6468, 2
  %6472 = extractvalue %dx.types.CBufRet.f32 %6468, 3
  %6473 = fsub fast float %6469, %6459
  %6474 = fsub fast float %6470, %6461
  %6475 = fsub fast float %6471, %6463
  %6476 = fsub fast float %6472, %6465
  %6477 = fmul fast float %6473, %6467
  %6478 = fmul fast float %6474, %6467
  %6479 = fmul fast float %6475, %6467
  %6480 = fmul fast float %6476, %6467
  %6481 = fadd fast float %6477, %6459
  %6482 = fadd fast float %6478, %6461
  %6483 = fadd fast float %6479, %6463
  %6484 = fadd fast float %6480, %6465
  %6485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6486 = extractvalue %dx.types.ResRet.i32 %6485, 0
  %6487 = and i32 %6486, 536870911
  %6488 = uitofp i32 %6487 to float
  %6489 = fmul fast float %6488, %6335
  %6490 = fmul fast float %6488, %6339
  %6491 = fptoui float %6489 to i32
  %6492 = fptoui float %6490 to i32
  %6493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6494 = extractvalue %dx.types.ResRet.i32 %6493, 0
  %6495 = and i32 %6494, 31
  %6496 = lshr i32 %6491, %6495
  %6497 = lshr i32 %6492, %6495
  %6498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6499 = extractvalue %dx.types.ResRet.i32 %6498, 0
  %6500 = and i32 %6499, 31
  %6501 = shl i32 1, %6500
  %6502 = call i32 @dx.op.binary.i32(i32 40, i32 %6501, i32 4)  ; UMin(a,b)
  %6503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6504 = extractvalue %dx.types.ResRet.i32 %6503, 0
  %6505 = extractvalue %dx.types.ResRet.i32 %6503, 1
  %6506 = icmp eq i32 %6502, 0
  br i1 %6506, label %6548, label %6507

; <label>:6507                                    ; preds = %6451
  br label %6508

; <label>:6508                                    ; preds = %6536, %6507
  %6509 = phi i32 [ %6539, %6536 ], [ 0, %6507 ]
  %6510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6511 = extractvalue %dx.types.ResRet.i32 %6510, 0
  %6512 = lshr i32 %6511, 16
  %6513 = and i32 %6512, 31
  %6514 = shl i32 %6497, %6513
  %6515 = add i32 %6514, %6496
  %6516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6517 = extractvalue %dx.types.ResRet.i32 %6516, 0
  %6518 = and i32 %6517, 31
  %6519 = shl i32 %6515, %6518
  %6520 = add i32 %6519, %6509
  %6521 = shl i32 %6520, 2
  %6522 = add i32 %6521, 32
  %6523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6522, i32 undef)  ; BufferLoad(srv,index,wot)
  %6524 = extractvalue %dx.types.ResRet.i32 %6523, 0
  %6525 = icmp slt i32 %6524, 0
  %6526 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6509
  %6527 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6509
  %6528 = bitcast float* %6526 to i32*
  %6529 = bitcast float* %6527 to i32*
  br i1 %6525, label %6530, label %6536

; <label>:6530                                    ; preds = %6508
  %6531 = and i32 %6524, 1073741823
  %6532 = add nuw nsw i32 %6531, 20
  %6533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6532, i32 undef)  ; BufferLoad(srv,index,wot)
  %6534 = extractvalue %dx.types.ResRet.i32 %6533, 0
  %6535 = extractvalue %dx.types.ResRet.i32 %6533, 1
  br label %6536

; <label>:6536                                    ; preds = %6530, %6508
  %6537 = phi i32 [ %6534, %6530 ], [ %6504, %6508 ]
  %6538 = phi i32 [ %6535, %6530 ], [ %6505, %6508 ]
  store i32 %6537, i32* %6528, align 4
  store i32 %6538, i32* %6529, align 4
  %6539 = add nuw i32 %6509, 1
  %6540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6541 = extractvalue %dx.types.CBufRet.i32 %6540, 2
  %6542 = icmp eq i32 %6541, 0
  %6543 = icmp ugt i32 %6524, -1073741825
  %6544 = and i1 %6543, %6542
  %6545 = icmp ult i32 %6539, %6502
  %6546 = and i1 %6544, %6545
  br i1 %6546, label %6508, label %6547

; <label>:6547                                    ; preds = %6536
  br label %6548

; <label>:6548                                    ; preds = %6547, %6451
  %6549 = phi i32 [ 0, %6451 ], [ %6539, %6547 ]
  %6550 = extractvalue %dx.types.CBufRet.f32 %6313, 2
  %6551 = fptoui float %6550 to i32
  %6552 = icmp eq i32 %6551, 0
  br i1 %6552, label %6604, label %6553

; <label>:6553                                    ; preds = %6548
  br label %6554

; <label>:6554                                    ; preds = %6599, %6553
  %6555 = phi i32 [ %6600, %6599 ], [ %6549, %6553 ]
  %6556 = phi i32 [ %6601, %6599 ], [ 0, %6553 ]
  %6557 = lshr i32 %6556, 2
  %6558 = and i32 %6556, 3
  %6559 = add nuw nsw i32 %6557, 83
  %6560 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6559)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.i32 %6560, 0
  %6562 = extractvalue %dx.types.CBufRet.i32 %6560, 1
  %6563 = extractvalue %dx.types.CBufRet.i32 %6560, 2
  %6564 = extractvalue %dx.types.CBufRet.i32 %6560, 3
  %6565 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6561, i32* %6565, align 4
  %6566 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6562, i32* %6566, align 4
  %6567 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6563, i32* %6567, align 4
  %6568 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6564, i32* %6568, align 4
  %6569 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6558
  %6570 = load i32, i32* %6569, align 4, !tbaa !100, !noalias !104
  %6571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6572 = extractvalue %dx.types.ResRet.i32 %6571, 0
  %6573 = lshr i32 %6572, 16
  %6574 = and i32 %6573, 31
  %6575 = shl i32 %6497, %6574
  %6576 = add i32 %6575, %6496
  %6577 = shl i32 %6576, 2
  %6578 = add i32 %6577, %6570
  %6579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6578, i32 undef)  ; BufferLoad(srv,index,wot)
  %6580 = extractvalue %dx.types.ResRet.i32 %6579, 0
  %6581 = icmp eq i32 %6580, 0
  br i1 %6581, label %6599, label %6582

; <label>:6582                                    ; preds = %6554
  %6583 = icmp slt i32 %6580, 0
  %6584 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6555
  %6585 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6555
  %6586 = bitcast float* %6584 to i32*
  %6587 = bitcast float* %6585 to i32*
  br i1 %6583, label %6588, label %6595

; <label>:6588                                    ; preds = %6582
  %6589 = and i32 %6580, 1073741823
  %6590 = add i32 %6570, 20
  %6591 = add i32 %6590, %6589
  %6592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6591, i32 undef)  ; BufferLoad(srv,index,wot)
  %6593 = extractvalue %dx.types.ResRet.i32 %6592, 0
  %6594 = extractvalue %dx.types.ResRet.i32 %6592, 1
  br label %6595

; <label>:6595                                    ; preds = %6588, %6582
  %6596 = phi i32 [ %6593, %6588 ], [ %6504, %6582 ]
  %6597 = phi i32 [ %6594, %6588 ], [ %6505, %6582 ]
  store i32 %6596, i32* %6586, align 4
  store i32 %6597, i32* %6587, align 4
  %6598 = add i32 %6555, 1
  br label %6599

; <label>:6599                                    ; preds = %6595, %6554
  %6600 = phi i32 [ %6555, %6554 ], [ %6598, %6595 ]
  %6601 = add nuw i32 %6556, 1
  %6602 = icmp eq i32 %6601, %6551
  br i1 %6602, label %6603, label %6554

; <label>:6603                                    ; preds = %6599
  br label %6604

; <label>:6604                                    ; preds = %6603, %6548
  %6605 = phi i32 [ %6549, %6548 ], [ %6600, %6603 ]
  %6606 = icmp eq i32 %6605, 1
  %6607 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %6608 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %6606, label %6609, label %6612

; <label>:6609                                    ; preds = %6604
  %6610 = load float, float* %6607, align 4
  %6611 = load float, float* %6608, align 4
  br label %6639

; <label>:6612                                    ; preds = %6604
  %6613 = load float, float* %6607, align 4
  %6614 = load float, float* %6608, align 4
  %6615 = fdiv fast float 1.000000e+00, %6614
  %6616 = fsub fast float %6613, %6615
  %6617 = icmp ugt i32 %6605, 1
  br i1 %6617, label %6618, label %6634

; <label>:6618                                    ; preds = %6612
  br label %6619

; <label>:6619                                    ; preds = %6619, %6618
  %6620 = phi float [ %6629, %6619 ], [ %6616, %6618 ]
  %6621 = phi float [ %6630, %6619 ], [ %6613, %6618 ]
  %6622 = phi i32 [ %6631, %6619 ], [ 1, %6618 ]
  %6623 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6622
  %6624 = load float, float* %6623, align 4
  %6625 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6622
  %6626 = load float, float* %6625, align 4
  %6627 = fdiv fast float 1.000000e+00, %6626
  %6628 = fsub fast float %6624, %6627
  %6629 = call float @dx.op.binary.f32(i32 36, float %6620, float %6628)  ; FMin(a,b)
  %6630 = call float @dx.op.binary.f32(i32 35, float %6621, float %6624)  ; FMax(a,b)
  %6631 = add nuw i32 %6622, 1
  %6632 = icmp eq i32 %6631, %6605
  br i1 %6632, label %6633, label %6619

; <label>:6633                                    ; preds = %6619
  br label %6634

; <label>:6634                                    ; preds = %6633, %6612
  %6635 = phi float [ %6616, %6612 ], [ %6629, %6633 ]
  %6636 = phi float [ %6613, %6612 ], [ %6630, %6633 ]
  %6637 = fsub fast float %6636, %6635
  %6638 = fdiv fast float 1.000000e+00, %6637
  br label %6639

; <label>:6639                                    ; preds = %6634, %6609
  %6640 = phi float [ %6610, %6609 ], [ %6636, %6634 ]
  %6641 = phi float [ %6611, %6609 ], [ %6638, %6634 ]
  %6642 = fadd fast float %6343, %6640
  %6643 = fmul fast float %6642, %6641
  %6644 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  %6645 = fmul fast float %6644, 2.000000e+00
  %6646 = fsub fast float 1.000000e+00, %6645
  %6647 = fmul fast float %6481, %6481
  %6648 = fsub fast float %6482, %6647
  %6649 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6648)  ; FMax(a,b)
  %6650 = fdiv fast float 1.000000e+00, %6649
  %6651 = fmul fast float %6482, %6481
  %6652 = fsub fast float %6483, %6651
  %6653 = fsub fast float %6646, %6481
  %6654 = fmul fast float %6646, %6646
  %6655 = fsub fast float %6654, %6482
  %6656 = fmul fast float %6650, %6652
  %6657 = fmul fast float %6656, %6653
  %6658 = fsub fast float %6655, %6657
  %6659 = fmul fast float %6482, %6482
  %6660 = fsub fast float %6484, %6659
  %6661 = fmul fast float %6652, %6652
  %6662 = fmul fast float %6661, %6650
  %6663 = fsub fast float %6660, %6662
  %6664 = fdiv fast float %6658, %6663
  %6665 = fmul fast float %6664, %6652
  %6666 = fsub fast float %6653, %6665
  %6667 = fmul fast float %6666, %6650
  %6668 = fmul fast float %6667, %6481
  %6669 = fsub fast float 1.000000e+00, %6668
  %6670 = fmul fast float %6664, %6482
  %6671 = fsub fast float %6669, %6670
  %6672 = fmul fast float %6667, %6667
  %6673 = fmul fast float %6664, 4.000000e+00
  %6674 = fmul fast float %6673, %6671
  %6675 = fsub fast float %6672, %6674
  %6676 = call float @dx.op.unary.f32(i32 24, float %6675)  ; Sqrt(value)
  %6677 = fcmp fast oge float %6667, 0.000000e+00
  %6678 = fsub fast float -0.000000e+00, %6676
  %6679 = select i1 %6677, float %6678, float %6676
  %6680 = fsub fast float %6679, %6667
  %6681 = fdiv fast float %6680, %6664
  %6682 = fdiv fast float %6671, %6680
  %6683 = fmul fast float %6681, 5.000000e-01
  %6684 = fmul fast float %6682, 2.000000e+00
  %6685 = select i1 %6677, float %6683, float %6684
  %6686 = select i1 %6677, float %6684, float %6683
  %6687 = call float @dx.op.binary.f32(i32 35, float %6685, float %6686)  ; FMax(a,b)
  %6688 = call float @dx.op.binary.f32(i32 36, float %6685, float %6686)  ; FMin(a,b)
  %6689 = fcmp fast ogt float %6646, %6687
  %6690 = fsub fast float %6646, %6688
  %6691 = fsub fast float %6646, %6687
  %6692 = fsub fast float %6687, %6688
  %6693 = select i1 %6689, float %6691, float %6692
  %6694 = fmul float %6690, %6693
  %6695 = select i1 %6689, float %6688, float %6646
  %6696 = fcmp fast ogt float %6646, %6688
  %6697 = fmul fast float %6695, %6687
  %6698 = fadd fast float %6695, %6687
  %6699 = fmul fast float %6698, %6481
  %6700 = fadd fast float %6697, %6482
  %6701 = fsub fast float %6700, %6699
  %6702 = fdiv fast float %6701, %6694
  %6703 = select i1 %6696, float %6702, float 0.000000e+00
  %6704 = fsub fast float 1.000000e+00, %6703
  %6705 = select i1 %6689, float %6704, float %6703
  %6706 = call float @dx.op.unary.f32(i32 7, float %6705)  ; Saturate(value)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6466, 3
  %6708 = fmul fast float %6707, %6706
  %6709 = fsub fast float 1.000000e+00, %6708
  br label %6710

; <label>:6710                                    ; preds = %6639, %6351, %6316, %6312, %6276
  %6711 = phi float [ 1.000000e+00, %6276 ], [ %6709, %6639 ], [ 1.000000e+00, %6316 ], [ 1.000000e+00, %6351 ], [ 1.000000e+00, %6312 ]
  %6712 = fcmp fast ogt float %6308, 0.000000e+00
  br i1 %6712, label %6713, label %6877, !dx.controlflow.hints !113

; <label>:6713                                    ; preds = %6710
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 2
  %6716 = fadd fast float %6715, %6189
  %6717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6718 = extractvalue %dx.types.CBufRet.f32 %6717, 2
  %6719 = extractvalue %dx.types.CBufRet.f32 %6717, 3
  %6720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6721 = extractvalue %dx.types.CBufRet.f32 %6720, 2
  %6722 = call float @dx.op.binary.f32(i32 35, float %6716, float 0.000000e+00)  ; FMax(a,b)
  %6723 = fadd fast float %6722, 0x3F10000000000000
  %6724 = fcmp fast oeq float %6721, 0.000000e+00
  br i1 %6724, label %6725, label %6792

; <label>:6725                                    ; preds = %6713
  %6726 = extractvalue %dx.types.CBufRet.f32 %6717, 1
  %6727 = extractvalue %dx.types.CBufRet.f32 %6717, 0
  %6728 = fmul fast float %6727, %6207
  %6729 = fmul fast float %6726, %6208
  %6730 = fadd fast float %6728, 5.000000e-01
  %6731 = call float @dx.op.unary.f32(i32 27, float %6730)  ; Round_ni(value)
  %6732 = fadd fast float %6729, 5.000000e-01
  %6733 = call float @dx.op.unary.f32(i32 27, float %6732)  ; Round_ni(value)
  %6734 = fsub fast float %6730, %6731
  %6735 = fsub fast float %6732, %6733
  %6736 = fadd fast float %6731, -5.000000e-01
  %6737 = fadd fast float %6733, -5.000000e-01
  %6738 = fmul fast float %6734, 2.000000e+00
  %6739 = fsub fast float 3.000000e+00, %6738
  %6740 = fadd fast float %6738, 1.000000e+00
  %6741 = fsub fast float 2.000000e+00, %6734
  %6742 = bitcast float %6739 to i32
  %6743 = sub nsw i32 2129859010, %6742
  %6744 = bitcast i32 %6743 to float
  %6745 = fmul fast float %6744, %6741
  %6746 = fadd fast float %6745, -1.000000e+00
  %6747 = bitcast float %6740 to i32
  %6748 = sub nsw i32 2129859010, %6747
  %6749 = bitcast i32 %6748 to float
  %6750 = fmul fast float %6749, %6734
  %6751 = fadd fast float %6750, 1.000000e+00
  %6752 = fmul fast float %6735, 2.000000e+00
  %6753 = fsub fast float 3.000000e+00, %6752
  %6754 = fadd fast float %6752, 1.000000e+00
  %6755 = fsub fast float 2.000000e+00, %6735
  %6756 = bitcast float %6753 to i32
  %6757 = sub nsw i32 2129859010, %6756
  %6758 = bitcast i32 %6757 to float
  %6759 = fmul fast float %6758, %6755
  %6760 = fadd fast float %6759, -1.000000e+00
  %6761 = bitcast float %6754 to i32
  %6762 = sub nsw i32 2129859010, %6761
  %6763 = bitcast i32 %6762 to float
  %6764 = fmul fast float %6763, %6735
  %6765 = fadd fast float %6764, 1.000000e+00
  %6766 = fadd fast float %6746, %6736
  %6767 = fmul fast float %6766, %6718
  %6768 = fadd fast float %6760, %6737
  %6769 = fmul fast float %6768, %6719
  %6770 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6767, float %6769, float undef, float undef, i32 0, i32 0, i32 undef, float %6723)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6771 = extractvalue %dx.types.ResRet.f32 %6770, 0
  %6772 = fmul fast float %6771, %6739
  %6773 = fadd fast float %6751, %6736
  %6774 = fmul fast float %6773, %6718
  %6775 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6774, float %6769, float undef, float undef, i32 0, i32 0, i32 undef, float %6723)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6776 = extractvalue %dx.types.ResRet.f32 %6775, 0
  %6777 = fmul fast float %6776, %6740
  %6778 = fadd fast float %6765, %6737
  %6779 = fmul fast float %6778, %6719
  %6780 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6767, float %6779, float undef, float undef, i32 0, i32 0, i32 undef, float %6723)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6781 = extractvalue %dx.types.ResRet.f32 %6780, 0
  %6782 = fmul fast float %6781, %6739
  %6783 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6774, float %6779, float undef, float undef, i32 0, i32 0, i32 undef, float %6723)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6784 = extractvalue %dx.types.ResRet.f32 %6783, 0
  %6785 = fmul fast float %6784, %6740
  %6786 = fadd fast float %6785, %6782
  %6787 = fmul fast float %6786, %6754
  %6788 = fadd fast float %6777, %6772
  %6789 = fmul fast float %6788, %6753
  %6790 = fadd fast float %6789, %6787
  %6791 = fmul fast float %6790, 6.250000e-02
  br label %6877

; <label>:6792                                    ; preds = %6713
  %6793 = fmul fast float %305, 0x401921FB60000000
  %6794 = call float @dx.op.unary.f32(i32 13, float %6793)  ; Sin(value)
  %6795 = call float @dx.op.unary.f32(i32 12, float %6793)  ; Cos(value)
  %6796 = fsub fast float -0.000000e+00, %6794
  br label %6797

; <label>:6797                                    ; preds = %6846, %6792
  %6798 = phi float [ 0.000000e+00, %6792 ], [ %6841, %6846 ]
  %6799 = phi float [ 0.000000e+00, %6792 ], [ %6843, %6846 ]
  %6800 = phi i32 [ 0, %6792 ], [ %6847, %6846 ]
  %6801 = mul i32 %6800, 2
  %6802 = add i32 0, %6801
  %6803 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6802
  %6804 = load float, float* %6803, align 4
  %6805 = mul i32 %6800, 2
  %6806 = add i32 1, %6805
  %6807 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6806
  %6808 = load float, float* %6807, align 4
  %6809 = fmul fast float %6804, %6795
  %6810 = call float @dx.op.tertiary.f32(i32 46, float %6808, float %6796, float %6809)  ; FMad(a,b,c)
  %6811 = fmul fast float %6804, %6794
  %6812 = call float @dx.op.tertiary.f32(i32 46, float %6808, float %6795, float %6811)  ; FMad(a,b,c)
  %6813 = fmul fast float %6810, %6721
  %6814 = fmul fast float %6812, %6721
  %6815 = fadd fast float %6813, %6207
  %6816 = fadd fast float %6814, %6208
  %6817 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %6815, float %6816, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6818 = extractvalue %dx.types.ResRet.f32 %6817, 0
  %6819 = extractvalue %dx.types.ResRet.f32 %6817, 1
  %6820 = extractvalue %dx.types.ResRet.f32 %6817, 2
  %6821 = extractvalue %dx.types.ResRet.f32 %6817, 3
  %6822 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %6818, float* %6822, align 4
  %6823 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %6819, float* %6823, align 4
  %6824 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %6820, float* %6824, align 4
  %6825 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %6821, float* %6825, align 4
  %6826 = fsub fast float %6818, %6723
  %6827 = fcmp fast olt float %6826, 0.000000e+00
  %6828 = select i1 %6827, float 0.000000e+00, float 1.000000e+00
  %6829 = fadd fast float %6828, %6798
  %6830 = fmul fast float %6828, %6826
  %6831 = fadd fast float %6830, %6799
  br label %6832

; <label>:6832                                    ; preds = %6832, %6797
  %6833 = phi i32 [ 1, %6797 ], [ %6844, %6832 ]
  %6834 = phi float [ %6831, %6797 ], [ %6843, %6832 ]
  %6835 = phi float [ %6829, %6797 ], [ %6841, %6832 ]
  %6836 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %6833
  %6837 = load float, float* %6836, align 4, !tbaa !114, !noalias !104
  %6838 = fsub fast float %6837, %6723
  %6839 = fcmp fast olt float %6838, 0.000000e+00
  %6840 = select i1 %6839, float 0.000000e+00, float 1.000000e+00
  %6841 = fadd fast float %6840, %6835
  %6842 = fmul fast float %6840, %6838
  %6843 = fadd fast float %6842, %6834
  %6844 = add nuw nsw i32 %6833, 1
  %6845 = icmp eq i32 %6844, 4
  br i1 %6845, label %6846, label %6832, !llvm.loop !116

; <label>:6846                                    ; preds = %6832
  %6847 = add nuw nsw i32 %6800, 1
  %6848 = icmp eq i32 %6847, 8
  br i1 %6848, label %6849, label %6797, !llvm.loop !117

; <label>:6849                                    ; preds = %6846
  %6850 = fdiv fast float 1.000000e+00, %6841
  %6851 = fmul fast float %6850, %6843
  %6852 = fdiv fast float 1.000000e+00, %6723
  %6853 = fmul fast float %6851, %6852
  %6854 = call float @dx.op.unary.f32(i32 7, float %6853)  ; Saturate(value)
  %6855 = call float @dx.op.binary.f32(i32 35, float %6854, float 0.000000e+00)  ; FMax(a,b)
  %6856 = fmul fast float %6841, 3.125000e-02
  %6857 = call float @dx.op.unary.f32(i32 7, float %6856)  ; Saturate(value)
  %6858 = fmul fast float %6857, 2.000000e+00
  %6859 = fadd fast float %6858, -1.000000e+00
  %6860 = fcmp fast ogt float %6859, 0.000000e+00
  %6861 = fcmp fast olt float %6859, 0.000000e+00
  %6862 = zext i1 %6860 to i32
  %6863 = zext i1 %6861 to i32
  %6864 = sub nsw i32 %6862, %6863
  %6865 = sitofp i32 %6864 to float
  %6866 = fmul fast float %6865, %6859
  %6867 = fsub fast float 1.000000e+00, %6866
  %6868 = fmul fast float %6867, %6867
  %6869 = fmul fast float %6868, %6867
  %6870 = fsub fast float %6867, %6869
  %6871 = fmul fast float %6870, %6855
  %6872 = fsub fast float 1.000000e+00, %6869
  %6873 = fsub fast float %6872, %6871
  %6874 = fmul fast float %6865, 5.000000e-01
  %6875 = fmul fast float %6874, %6873
  %6876 = fsub fast float 5.000000e-01, %6875
  br label %6877

; <label>:6877                                    ; preds = %6849, %6725, %6710
  %6878 = phi float [ 1.000000e+00, %6710 ], [ %6791, %6725 ], [ %6876, %6849 ]
  %6879 = fcmp fast ogt float %6306, 0.000000e+00
  br i1 %6879, label %6880, label %7044, !dx.controlflow.hints !118

; <label>:6880                                    ; preds = %6877
  %6881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6882 = extractvalue %dx.types.CBufRet.f32 %6881, 1
  %6883 = fadd fast float %6882, %6189
  %6884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.f32 %6884, 2
  %6886 = extractvalue %dx.types.CBufRet.f32 %6884, 3
  %6887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6888 = extractvalue %dx.types.CBufRet.f32 %6887, 1
  %6889 = call float @dx.op.binary.f32(i32 35, float %6883, float 0.000000e+00)  ; FMax(a,b)
  %6890 = fadd fast float %6889, 0x3F10000000000000
  %6891 = fcmp fast oeq float %6888, 0.000000e+00
  br i1 %6891, label %6892, label %6959

; <label>:6892                                    ; preds = %6880
  %6893 = extractvalue %dx.types.CBufRet.f32 %6884, 1
  %6894 = extractvalue %dx.types.CBufRet.f32 %6884, 0
  %6895 = fmul fast float %6894, %6199
  %6896 = fmul fast float %6893, %6200
  %6897 = fadd fast float %6895, 5.000000e-01
  %6898 = call float @dx.op.unary.f32(i32 27, float %6897)  ; Round_ni(value)
  %6899 = fadd fast float %6896, 5.000000e-01
  %6900 = call float @dx.op.unary.f32(i32 27, float %6899)  ; Round_ni(value)
  %6901 = fsub fast float %6897, %6898
  %6902 = fsub fast float %6899, %6900
  %6903 = fadd fast float %6898, -5.000000e-01
  %6904 = fadd fast float %6900, -5.000000e-01
  %6905 = fmul fast float %6901, 2.000000e+00
  %6906 = fsub fast float 3.000000e+00, %6905
  %6907 = fadd fast float %6905, 1.000000e+00
  %6908 = fsub fast float 2.000000e+00, %6901
  %6909 = bitcast float %6906 to i32
  %6910 = sub nsw i32 2129859010, %6909
  %6911 = bitcast i32 %6910 to float
  %6912 = fmul fast float %6911, %6908
  %6913 = fadd fast float %6912, -1.000000e+00
  %6914 = bitcast float %6907 to i32
  %6915 = sub nsw i32 2129859010, %6914
  %6916 = bitcast i32 %6915 to float
  %6917 = fmul fast float %6916, %6901
  %6918 = fadd fast float %6917, 1.000000e+00
  %6919 = fmul fast float %6902, 2.000000e+00
  %6920 = fsub fast float 3.000000e+00, %6919
  %6921 = fadd fast float %6919, 1.000000e+00
  %6922 = fsub fast float 2.000000e+00, %6902
  %6923 = bitcast float %6920 to i32
  %6924 = sub nsw i32 2129859010, %6923
  %6925 = bitcast i32 %6924 to float
  %6926 = fmul fast float %6925, %6922
  %6927 = fadd fast float %6926, -1.000000e+00
  %6928 = bitcast float %6921 to i32
  %6929 = sub nsw i32 2129859010, %6928
  %6930 = bitcast i32 %6929 to float
  %6931 = fmul fast float %6930, %6902
  %6932 = fadd fast float %6931, 1.000000e+00
  %6933 = fadd fast float %6913, %6903
  %6934 = fmul fast float %6933, %6885
  %6935 = fadd fast float %6927, %6904
  %6936 = fmul fast float %6935, %6886
  %6937 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6934, float %6936, float undef, float undef, i32 0, i32 0, i32 undef, float %6890)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6938 = extractvalue %dx.types.ResRet.f32 %6937, 0
  %6939 = fmul fast float %6938, %6906
  %6940 = fadd fast float %6918, %6903
  %6941 = fmul fast float %6940, %6885
  %6942 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6941, float %6936, float undef, float undef, i32 0, i32 0, i32 undef, float %6890)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6943 = extractvalue %dx.types.ResRet.f32 %6942, 0
  %6944 = fmul fast float %6943, %6907
  %6945 = fadd fast float %6932, %6904
  %6946 = fmul fast float %6945, %6886
  %6947 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6934, float %6946, float undef, float undef, i32 0, i32 0, i32 undef, float %6890)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6948 = extractvalue %dx.types.ResRet.f32 %6947, 0
  %6949 = fmul fast float %6948, %6906
  %6950 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6941, float %6946, float undef, float undef, i32 0, i32 0, i32 undef, float %6890)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6951 = extractvalue %dx.types.ResRet.f32 %6950, 0
  %6952 = fmul fast float %6951, %6907
  %6953 = fadd fast float %6952, %6949
  %6954 = fmul fast float %6953, %6921
  %6955 = fadd fast float %6944, %6939
  %6956 = fmul fast float %6955, %6920
  %6957 = fadd fast float %6956, %6954
  %6958 = fmul fast float %6957, 6.250000e-02
  br label %7044

; <label>:6959                                    ; preds = %6880
  %6960 = fmul fast float %305, 0x401921FB60000000
  %6961 = call float @dx.op.unary.f32(i32 13, float %6960)  ; Sin(value)
  %6962 = call float @dx.op.unary.f32(i32 12, float %6960)  ; Cos(value)
  %6963 = fsub fast float -0.000000e+00, %6961
  br label %6964

; <label>:6964                                    ; preds = %7013, %6959
  %6965 = phi float [ 0.000000e+00, %6959 ], [ %7008, %7013 ]
  %6966 = phi float [ 0.000000e+00, %6959 ], [ %7010, %7013 ]
  %6967 = phi i32 [ 0, %6959 ], [ %7014, %7013 ]
  %6968 = mul i32 %6967, 2
  %6969 = add i32 0, %6968
  %6970 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6969
  %6971 = load float, float* %6970, align 4
  %6972 = mul i32 %6967, 2
  %6973 = add i32 1, %6972
  %6974 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6973
  %6975 = load float, float* %6974, align 4
  %6976 = fmul fast float %6971, %6962
  %6977 = call float @dx.op.tertiary.f32(i32 46, float %6975, float %6963, float %6976)  ; FMad(a,b,c)
  %6978 = fmul fast float %6971, %6961
  %6979 = call float @dx.op.tertiary.f32(i32 46, float %6975, float %6962, float %6978)  ; FMad(a,b,c)
  %6980 = fmul fast float %6977, %6888
  %6981 = fmul fast float %6979, %6888
  %6982 = fadd fast float %6980, %6199
  %6983 = fadd fast float %6981, %6200
  %6984 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %6982, float %6983, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6985 = extractvalue %dx.types.ResRet.f32 %6984, 0
  %6986 = extractvalue %dx.types.ResRet.f32 %6984, 1
  %6987 = extractvalue %dx.types.ResRet.f32 %6984, 2
  %6988 = extractvalue %dx.types.ResRet.f32 %6984, 3
  %6989 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %6985, float* %6989, align 4
  %6990 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %6986, float* %6990, align 4
  %6991 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %6987, float* %6991, align 4
  %6992 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %6988, float* %6992, align 4
  %6993 = fsub fast float %6985, %6890
  %6994 = fcmp fast olt float %6993, 0.000000e+00
  %6995 = select i1 %6994, float 0.000000e+00, float 1.000000e+00
  %6996 = fadd fast float %6995, %6965
  %6997 = fmul fast float %6995, %6993
  %6998 = fadd fast float %6997, %6966
  br label %6999

; <label>:6999                                    ; preds = %6999, %6964
  %7000 = phi i32 [ 1, %6964 ], [ %7011, %6999 ]
  %7001 = phi float [ %6998, %6964 ], [ %7010, %6999 ]
  %7002 = phi float [ %6996, %6964 ], [ %7008, %6999 ]
  %7003 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7000
  %7004 = load float, float* %7003, align 4, !tbaa !114, !noalias !104
  %7005 = fsub fast float %7004, %6890
  %7006 = fcmp fast olt float %7005, 0.000000e+00
  %7007 = select i1 %7006, float 0.000000e+00, float 1.000000e+00
  %7008 = fadd fast float %7007, %7002
  %7009 = fmul fast float %7007, %7005
  %7010 = fadd fast float %7009, %7001
  %7011 = add nuw nsw i32 %7000, 1
  %7012 = icmp eq i32 %7011, 4
  br i1 %7012, label %7013, label %6999, !llvm.loop !116

; <label>:7013                                    ; preds = %6999
  %7014 = add nuw nsw i32 %6967, 1
  %7015 = icmp eq i32 %7014, 8
  br i1 %7015, label %7016, label %6964, !llvm.loop !117

; <label>:7016                                    ; preds = %7013
  %7017 = fdiv fast float 1.000000e+00, %7008
  %7018 = fmul fast float %7017, %7010
  %7019 = fdiv fast float 1.000000e+00, %6890
  %7020 = fmul fast float %7018, %7019
  %7021 = call float @dx.op.unary.f32(i32 7, float %7020)  ; Saturate(value)
  %7022 = call float @dx.op.binary.f32(i32 35, float %7021, float 0.000000e+00)  ; FMax(a,b)
  %7023 = fmul fast float %7008, 3.125000e-02
  %7024 = call float @dx.op.unary.f32(i32 7, float %7023)  ; Saturate(value)
  %7025 = fmul fast float %7024, 2.000000e+00
  %7026 = fadd fast float %7025, -1.000000e+00
  %7027 = fcmp fast ogt float %7026, 0.000000e+00
  %7028 = fcmp fast olt float %7026, 0.000000e+00
  %7029 = zext i1 %7027 to i32
  %7030 = zext i1 %7028 to i32
  %7031 = sub nsw i32 %7029, %7030
  %7032 = sitofp i32 %7031 to float
  %7033 = fmul fast float %7032, %7026
  %7034 = fsub fast float 1.000000e+00, %7033
  %7035 = fmul fast float %7034, %7034
  %7036 = fmul fast float %7035, %7034
  %7037 = fsub fast float %7034, %7036
  %7038 = fmul fast float %7037, %7022
  %7039 = fsub fast float 1.000000e+00, %7036
  %7040 = fsub fast float %7039, %7038
  %7041 = fmul fast float %7032, 5.000000e-01
  %7042 = fmul fast float %7041, %7040
  %7043 = fsub fast float 5.000000e-01, %7042
  br label %7044

; <label>:7044                                    ; preds = %7016, %6892, %6877
  %7045 = phi float [ 1.000000e+00, %6877 ], [ %6958, %6892 ], [ %7043, %7016 ]
  %7046 = fcmp fast ogt float %6305, 0.000000e+00
  br i1 %7046, label %7047, label %7365, !dx.controlflow.hints !119

; <label>:7047                                    ; preds = %7044
  %7048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.f32 %7048, 0
  %7050 = fadd fast float %7049, %6189
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 2
  %7053 = extractvalue %dx.types.CBufRet.f32 %7051, 3
  %7054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7055 = extractvalue %dx.types.CBufRet.f32 %7054, 0
  %7056 = call float @dx.op.binary.f32(i32 35, float %7050, float 0.000000e+00)  ; FMax(a,b)
  %7057 = fadd fast float %7056, 0x3F10000000000000
  %7058 = fcmp fast oeq float %7055, 0.000000e+00
  br i1 %6192, label %7059, label %7212, !dx.controlflow.hints !120

; <label>:7059                                    ; preds = %7047
  br i1 %7058, label %7060, label %7127

; <label>:7060                                    ; preds = %7059
  %7061 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7062 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7063 = fmul fast float %7062, %6181
  %7064 = fmul fast float %7061, %6185
  %7065 = fadd fast float %7063, 5.000000e-01
  %7066 = call float @dx.op.unary.f32(i32 27, float %7065)  ; Round_ni(value)
  %7067 = fadd fast float %7064, 5.000000e-01
  %7068 = call float @dx.op.unary.f32(i32 27, float %7067)  ; Round_ni(value)
  %7069 = fsub fast float %7065, %7066
  %7070 = fsub fast float %7067, %7068
  %7071 = fadd fast float %7066, -5.000000e-01
  %7072 = fadd fast float %7068, -5.000000e-01
  %7073 = fmul fast float %7069, 2.000000e+00
  %7074 = fsub fast float 3.000000e+00, %7073
  %7075 = fadd fast float %7073, 1.000000e+00
  %7076 = fsub fast float 2.000000e+00, %7069
  %7077 = bitcast float %7074 to i32
  %7078 = sub nsw i32 2129859010, %7077
  %7079 = bitcast i32 %7078 to float
  %7080 = fmul fast float %7079, %7076
  %7081 = fadd fast float %7080, -1.000000e+00
  %7082 = bitcast float %7075 to i32
  %7083 = sub nsw i32 2129859010, %7082
  %7084 = bitcast i32 %7083 to float
  %7085 = fmul fast float %7084, %7069
  %7086 = fadd fast float %7085, 1.000000e+00
  %7087 = fmul fast float %7070, 2.000000e+00
  %7088 = fsub fast float 3.000000e+00, %7087
  %7089 = fadd fast float %7087, 1.000000e+00
  %7090 = fsub fast float 2.000000e+00, %7070
  %7091 = bitcast float %7088 to i32
  %7092 = sub nsw i32 2129859010, %7091
  %7093 = bitcast i32 %7092 to float
  %7094 = fmul fast float %7093, %7090
  %7095 = fadd fast float %7094, -1.000000e+00
  %7096 = bitcast float %7089 to i32
  %7097 = sub nsw i32 2129859010, %7096
  %7098 = bitcast i32 %7097 to float
  %7099 = fmul fast float %7098, %7070
  %7100 = fadd fast float %7099, 1.000000e+00
  %7101 = fadd fast float %7081, %7071
  %7102 = fmul fast float %7101, %7052
  %7103 = fadd fast float %7095, %7072
  %7104 = fmul fast float %7103, %7053
  %7105 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7102, float %7104, float undef, float undef, i32 0, i32 0, i32 undef, float %7057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7106 = extractvalue %dx.types.ResRet.f32 %7105, 0
  %7107 = fmul fast float %7106, %7074
  %7108 = fadd fast float %7086, %7071
  %7109 = fmul fast float %7108, %7052
  %7110 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7109, float %7104, float undef, float undef, i32 0, i32 0, i32 undef, float %7057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7111 = extractvalue %dx.types.ResRet.f32 %7110, 0
  %7112 = fmul fast float %7111, %7075
  %7113 = fadd fast float %7100, %7072
  %7114 = fmul fast float %7113, %7053
  %7115 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7102, float %7114, float undef, float undef, i32 0, i32 0, i32 undef, float %7057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 0
  %7117 = fmul fast float %7116, %7074
  %7118 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7109, float %7114, float undef, float undef, i32 0, i32 0, i32 undef, float %7057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7119 = extractvalue %dx.types.ResRet.f32 %7118, 0
  %7120 = fmul fast float %7119, %7075
  %7121 = fadd fast float %7120, %7117
  %7122 = fmul fast float %7121, %7089
  %7123 = fadd fast float %7112, %7107
  %7124 = fmul fast float %7123, %7088
  %7125 = fadd fast float %7124, %7122
  %7126 = fmul fast float %7125, 6.250000e-02
  br label %7365

; <label>:7127                                    ; preds = %7059
  %7128 = fmul fast float %305, 0x401921FB60000000
  %7129 = call float @dx.op.unary.f32(i32 13, float %7128)  ; Sin(value)
  %7130 = call float @dx.op.unary.f32(i32 12, float %7128)  ; Cos(value)
  %7131 = fsub fast float -0.000000e+00, %7129
  br label %7132

; <label>:7132                                    ; preds = %7181, %7127
  %7133 = phi float [ 0.000000e+00, %7127 ], [ %7176, %7181 ]
  %7134 = phi float [ 0.000000e+00, %7127 ], [ %7178, %7181 ]
  %7135 = phi i32 [ 0, %7127 ], [ %7182, %7181 ]
  %7136 = mul i32 %7135, 2
  %7137 = add i32 0, %7136
  %7138 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7137
  %7139 = load float, float* %7138, align 4
  %7140 = mul i32 %7135, 2
  %7141 = add i32 1, %7140
  %7142 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7141
  %7143 = load float, float* %7142, align 4
  %7144 = fmul fast float %7139, %7130
  %7145 = call float @dx.op.tertiary.f32(i32 46, float %7143, float %7131, float %7144)  ; FMad(a,b,c)
  %7146 = fmul fast float %7139, %7129
  %7147 = call float @dx.op.tertiary.f32(i32 46, float %7143, float %7130, float %7146)  ; FMad(a,b,c)
  %7148 = fmul fast float %7145, %7055
  %7149 = fmul fast float %7147, %7055
  %7150 = fadd fast float %7148, %6181
  %7151 = fadd fast float %7149, %6185
  %7152 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %7150, float %7151, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7153 = extractvalue %dx.types.ResRet.f32 %7152, 0
  %7154 = extractvalue %dx.types.ResRet.f32 %7152, 1
  %7155 = extractvalue %dx.types.ResRet.f32 %7152, 2
  %7156 = extractvalue %dx.types.ResRet.f32 %7152, 3
  %7157 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7153, float* %7157, align 4
  %7158 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7154, float* %7158, align 4
  %7159 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7155, float* %7159, align 4
  %7160 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7156, float* %7160, align 4
  %7161 = fsub fast float %7153, %7057
  %7162 = fcmp fast olt float %7161, 0.000000e+00
  %7163 = select i1 %7162, float 0.000000e+00, float 1.000000e+00
  %7164 = fadd fast float %7163, %7133
  %7165 = fmul fast float %7163, %7161
  %7166 = fadd fast float %7165, %7134
  br label %7167

; <label>:7167                                    ; preds = %7167, %7132
  %7168 = phi i32 [ 1, %7132 ], [ %7179, %7167 ]
  %7169 = phi float [ %7166, %7132 ], [ %7178, %7167 ]
  %7170 = phi float [ %7164, %7132 ], [ %7176, %7167 ]
  %7171 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7168
  %7172 = load float, float* %7171, align 4, !tbaa !114, !noalias !104
  %7173 = fsub fast float %7172, %7057
  %7174 = fcmp fast olt float %7173, 0.000000e+00
  %7175 = select i1 %7174, float 0.000000e+00, float 1.000000e+00
  %7176 = fadd fast float %7175, %7170
  %7177 = fmul fast float %7175, %7173
  %7178 = fadd fast float %7177, %7169
  %7179 = add nuw nsw i32 %7168, 1
  %7180 = icmp eq i32 %7179, 4
  br i1 %7180, label %7181, label %7167, !llvm.loop !116

; <label>:7181                                    ; preds = %7167
  %7182 = add nuw nsw i32 %7135, 1
  %7183 = icmp eq i32 %7182, 8
  br i1 %7183, label %7184, label %7132, !llvm.loop !117

; <label>:7184                                    ; preds = %7181
  %7185 = fdiv fast float 1.000000e+00, %7176
  %7186 = fmul fast float %7185, %7178
  %7187 = fdiv fast float 1.000000e+00, %7057
  %7188 = fmul fast float %7186, %7187
  %7189 = call float @dx.op.unary.f32(i32 7, float %7188)  ; Saturate(value)
  %7190 = call float @dx.op.binary.f32(i32 35, float %7189, float 0.000000e+00)  ; FMax(a,b)
  %7191 = fmul fast float %7176, 3.125000e-02
  %7192 = call float @dx.op.unary.f32(i32 7, float %7191)  ; Saturate(value)
  %7193 = fmul fast float %7192, 2.000000e+00
  %7194 = fadd fast float %7193, -1.000000e+00
  %7195 = fcmp fast ogt float %7194, 0.000000e+00
  %7196 = fcmp fast olt float %7194, 0.000000e+00
  %7197 = zext i1 %7195 to i32
  %7198 = zext i1 %7196 to i32
  %7199 = sub nsw i32 %7197, %7198
  %7200 = sitofp i32 %7199 to float
  %7201 = fmul fast float %7200, %7194
  %7202 = fsub fast float 1.000000e+00, %7201
  %7203 = fmul fast float %7202, %7202
  %7204 = fmul fast float %7203, %7202
  %7205 = fsub fast float %7202, %7204
  %7206 = fmul fast float %7205, %7190
  %7207 = fsub fast float 1.000000e+00, %7204
  %7208 = fsub fast float %7207, %7206
  %7209 = fmul fast float %7200, 5.000000e-01
  %7210 = fmul fast float %7209, %7208
  %7211 = fsub fast float 5.000000e-01, %7210
  br label %7365

; <label>:7212                                    ; preds = %7047
  br i1 %7058, label %7213, label %7280

; <label>:7213                                    ; preds = %7212
  %7214 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7215 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7216 = fmul fast float %7215, %6181
  %7217 = fmul fast float %7214, %6185
  %7218 = fadd fast float %7216, 5.000000e-01
  %7219 = call float @dx.op.unary.f32(i32 27, float %7218)  ; Round_ni(value)
  %7220 = fadd fast float %7217, 5.000000e-01
  %7221 = call float @dx.op.unary.f32(i32 27, float %7220)  ; Round_ni(value)
  %7222 = fsub fast float %7218, %7219
  %7223 = fsub fast float %7220, %7221
  %7224 = fadd fast float %7219, -5.000000e-01
  %7225 = fadd fast float %7221, -5.000000e-01
  %7226 = fmul fast float %7222, 2.000000e+00
  %7227 = fsub fast float 3.000000e+00, %7226
  %7228 = fadd fast float %7226, 1.000000e+00
  %7229 = fsub fast float 2.000000e+00, %7222
  %7230 = bitcast float %7227 to i32
  %7231 = sub nsw i32 2129859010, %7230
  %7232 = bitcast i32 %7231 to float
  %7233 = fmul fast float %7232, %7229
  %7234 = fadd fast float %7233, -1.000000e+00
  %7235 = bitcast float %7228 to i32
  %7236 = sub nsw i32 2129859010, %7235
  %7237 = bitcast i32 %7236 to float
  %7238 = fmul fast float %7237, %7222
  %7239 = fadd fast float %7238, 1.000000e+00
  %7240 = fmul fast float %7223, 2.000000e+00
  %7241 = fsub fast float 3.000000e+00, %7240
  %7242 = fadd fast float %7240, 1.000000e+00
  %7243 = fsub fast float 2.000000e+00, %7223
  %7244 = bitcast float %7241 to i32
  %7245 = sub nsw i32 2129859010, %7244
  %7246 = bitcast i32 %7245 to float
  %7247 = fmul fast float %7246, %7243
  %7248 = fadd fast float %7247, -1.000000e+00
  %7249 = bitcast float %7242 to i32
  %7250 = sub nsw i32 2129859010, %7249
  %7251 = bitcast i32 %7250 to float
  %7252 = fmul fast float %7251, %7223
  %7253 = fadd fast float %7252, 1.000000e+00
  %7254 = fadd fast float %7234, %7224
  %7255 = fmul fast float %7254, %7052
  %7256 = fadd fast float %7248, %7225
  %7257 = fmul fast float %7256, %7053
  %7258 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7255, float %7257, float undef, float undef, i32 0, i32 0, i32 undef, float %7057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7259 = extractvalue %dx.types.ResRet.f32 %7258, 0
  %7260 = fmul fast float %7259, %7227
  %7261 = fadd fast float %7239, %7224
  %7262 = fmul fast float %7261, %7052
  %7263 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7262, float %7257, float undef, float undef, i32 0, i32 0, i32 undef, float %7057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7264 = extractvalue %dx.types.ResRet.f32 %7263, 0
  %7265 = fmul fast float %7264, %7228
  %7266 = fadd fast float %7253, %7225
  %7267 = fmul fast float %7266, %7053
  %7268 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7255, float %7267, float undef, float undef, i32 0, i32 0, i32 undef, float %7057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7269 = extractvalue %dx.types.ResRet.f32 %7268, 0
  %7270 = fmul fast float %7269, %7227
  %7271 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7262, float %7267, float undef, float undef, i32 0, i32 0, i32 undef, float %7057)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7272 = extractvalue %dx.types.ResRet.f32 %7271, 0
  %7273 = fmul fast float %7272, %7228
  %7274 = fadd fast float %7273, %7270
  %7275 = fmul fast float %7274, %7242
  %7276 = fadd fast float %7265, %7260
  %7277 = fmul fast float %7276, %7241
  %7278 = fadd fast float %7277, %7275
  %7279 = fmul fast float %7278, 6.250000e-02
  br label %7365

; <label>:7280                                    ; preds = %7212
  %7281 = fmul fast float %305, 0x401921FB60000000
  %7282 = call float @dx.op.unary.f32(i32 13, float %7281)  ; Sin(value)
  %7283 = call float @dx.op.unary.f32(i32 12, float %7281)  ; Cos(value)
  %7284 = fsub fast float -0.000000e+00, %7282
  br label %7285

; <label>:7285                                    ; preds = %7334, %7280
  %7286 = phi float [ 0.000000e+00, %7280 ], [ %7329, %7334 ]
  %7287 = phi float [ 0.000000e+00, %7280 ], [ %7331, %7334 ]
  %7288 = phi i32 [ 0, %7280 ], [ %7335, %7334 ]
  %7289 = mul i32 %7288, 2
  %7290 = add i32 0, %7289
  %7291 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7290
  %7292 = load float, float* %7291, align 4
  %7293 = mul i32 %7288, 2
  %7294 = add i32 1, %7293
  %7295 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7294
  %7296 = load float, float* %7295, align 4
  %7297 = fmul fast float %7292, %7283
  %7298 = call float @dx.op.tertiary.f32(i32 46, float %7296, float %7284, float %7297)  ; FMad(a,b,c)
  %7299 = fmul fast float %7292, %7282
  %7300 = call float @dx.op.tertiary.f32(i32 46, float %7296, float %7283, float %7299)  ; FMad(a,b,c)
  %7301 = fmul fast float %7298, %7055
  %7302 = fmul fast float %7300, %7055
  %7303 = fadd fast float %7301, %6181
  %7304 = fadd fast float %7302, %6185
  %7305 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7303, float %7304, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7306 = extractvalue %dx.types.ResRet.f32 %7305, 0
  %7307 = extractvalue %dx.types.ResRet.f32 %7305, 1
  %7308 = extractvalue %dx.types.ResRet.f32 %7305, 2
  %7309 = extractvalue %dx.types.ResRet.f32 %7305, 3
  %7310 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7306, float* %7310, align 4
  %7311 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7307, float* %7311, align 4
  %7312 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7308, float* %7312, align 4
  %7313 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7309, float* %7313, align 4
  %7314 = fsub fast float %7306, %7057
  %7315 = fcmp fast olt float %7314, 0.000000e+00
  %7316 = select i1 %7315, float 0.000000e+00, float 1.000000e+00
  %7317 = fadd fast float %7316, %7286
  %7318 = fmul fast float %7316, %7314
  %7319 = fadd fast float %7318, %7287
  br label %7320

; <label>:7320                                    ; preds = %7320, %7285
  %7321 = phi i32 [ 1, %7285 ], [ %7332, %7320 ]
  %7322 = phi float [ %7319, %7285 ], [ %7331, %7320 ]
  %7323 = phi float [ %7317, %7285 ], [ %7329, %7320 ]
  %7324 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7321
  %7325 = load float, float* %7324, align 4, !tbaa !114, !noalias !104
  %7326 = fsub fast float %7325, %7057
  %7327 = fcmp fast olt float %7326, 0.000000e+00
  %7328 = select i1 %7327, float 0.000000e+00, float 1.000000e+00
  %7329 = fadd fast float %7328, %7323
  %7330 = fmul fast float %7328, %7326
  %7331 = fadd fast float %7330, %7322
  %7332 = add nuw nsw i32 %7321, 1
  %7333 = icmp eq i32 %7332, 4
  br i1 %7333, label %7334, label %7320, !llvm.loop !116

; <label>:7334                                    ; preds = %7320
  %7335 = add nuw nsw i32 %7288, 1
  %7336 = icmp eq i32 %7335, 8
  br i1 %7336, label %7337, label %7285, !llvm.loop !117

; <label>:7337                                    ; preds = %7334
  %7338 = fdiv fast float 1.000000e+00, %7329
  %7339 = fmul fast float %7338, %7331
  %7340 = fdiv fast float 1.000000e+00, %7057
  %7341 = fmul fast float %7339, %7340
  %7342 = call float @dx.op.unary.f32(i32 7, float %7341)  ; Saturate(value)
  %7343 = call float @dx.op.binary.f32(i32 35, float %7342, float 0.000000e+00)  ; FMax(a,b)
  %7344 = fmul fast float %7329, 3.125000e-02
  %7345 = call float @dx.op.unary.f32(i32 7, float %7344)  ; Saturate(value)
  %7346 = fmul fast float %7345, 2.000000e+00
  %7347 = fadd fast float %7346, -1.000000e+00
  %7348 = fcmp fast ogt float %7347, 0.000000e+00
  %7349 = fcmp fast olt float %7347, 0.000000e+00
  %7350 = zext i1 %7348 to i32
  %7351 = zext i1 %7349 to i32
  %7352 = sub nsw i32 %7350, %7351
  %7353 = sitofp i32 %7352 to float
  %7354 = fmul fast float %7353, %7347
  %7355 = fsub fast float 1.000000e+00, %7354
  %7356 = fmul fast float %7355, %7355
  %7357 = fmul fast float %7356, %7355
  %7358 = fsub fast float %7355, %7357
  %7359 = fmul fast float %7358, %7343
  %7360 = fsub fast float 1.000000e+00, %7357
  %7361 = fsub fast float %7360, %7359
  %7362 = fmul fast float %7353, 5.000000e-01
  %7363 = fmul fast float %7362, %7361
  %7364 = fsub fast float 5.000000e-01, %7363
  br label %7365

; <label>:7365                                    ; preds = %7337, %7213, %7184, %7060, %7044
  %7366 = phi float [ 1.000000e+00, %7044 ], [ %7126, %7060 ], [ %7211, %7184 ], [ %7279, %7213 ], [ %7364, %7337 ]
  %7367 = fsub fast float %6878, %6711
  %7368 = fmul fast float %7367, %6278
  %7369 = fadd fast float %7368, %6711
  %7370 = fsub fast float %7045, %7369
  %7371 = fmul fast float %7370, %6277
  %7372 = fadd fast float %7371, %7369
  %7373 = fsub fast float %7366, %7372
  %7374 = fmul fast float %7373, %6305
  %7375 = fadd fast float %7374, %7372
  %7376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.f32 %7376, 2
  %7378 = fcmp fast ogt float %7377, 0.000000e+00
  br i1 %7378, label %7379, label %7419, !dx.controlflow.hints !121

; <label>:7379                                    ; preds = %7365
  %7380 = fcmp fast ugt float %7377, 0.000000e+00
  br i1 %7380, label %7381, label %7416

; <label>:7381                                    ; preds = %7379
  %7382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.f32 %7382, 0
  %7384 = extractvalue %dx.types.CBufRet.f32 %7382, 1
  %7385 = extractvalue %dx.types.CBufRet.f32 %7382, 2
  %7386 = extractvalue %dx.types.CBufRet.f32 %7382, 3
  %7387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7388 = extractvalue %dx.types.CBufRet.f32 %7387, 0
  %7389 = extractvalue %dx.types.CBufRet.f32 %7387, 1
  %7390 = extractvalue %dx.types.CBufRet.f32 %7387, 2
  %7391 = extractvalue %dx.types.CBufRet.f32 %7387, 3
  %7392 = extractvalue %dx.types.CBufRet.f32 %7376, 0
  %7393 = extractvalue %dx.types.CBufRet.f32 %7376, 1
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 0
  %7396 = extractvalue %dx.types.CBufRet.f32 %7394, 1
  %7397 = extractvalue %dx.types.CBufRet.f32 %7394, 2
  %7398 = fadd fast float %7395, %6158
  %7399 = fadd fast float %7396, %6159
  %7400 = fadd fast float %7397, %6160
  %7401 = fmul fast float %7398, %7383
  %7402 = call float @dx.op.tertiary.f32(i32 46, float %7384, float %7399, float %7401)  ; FMad(a,b,c)
  %7403 = call float @dx.op.tertiary.f32(i32 46, float %7385, float %7400, float %7402)  ; FMad(a,b,c)
  %7404 = fadd fast float %7403, %7386
  %7405 = fmul fast float %7398, %7388
  %7406 = call float @dx.op.tertiary.f32(i32 46, float %7389, float %7399, float %7405)  ; FMad(a,b,c)
  %7407 = call float @dx.op.tertiary.f32(i32 46, float %7390, float %7400, float %7406)  ; FMad(a,b,c)
  %7408 = fadd fast float %7407, %7391
  %7409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7404, float %7408, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7410 = extractvalue %dx.types.ResRet.f32 %7409, 0
  %7411 = fmul fast float %7410, %7393
  %7412 = fadd fast float %7411, %7392
  %7413 = call float @dx.op.unary.f32(i32 7, float %7412)  ; Saturate(value)
  %7414 = fmul fast float %7413, %7377
  %7415 = fsub fast float 1.000000e+00, %7414
  br label %7416

; <label>:7416                                    ; preds = %7381, %7379
  %7417 = phi float [ %7415, %7381 ], [ 1.000000e+00, %7379 ]
  %7418 = fmul fast float %7417, %7375
  br label %7419

; <label>:7419                                    ; preds = %7416, %7365, %6138
  %7420 = phi float [ 1.000000e+00, %6138 ], [ %7418, %7416 ], [ %7375, %7365 ]
  %7421 = call float @dx.op.binary.f32(i32 36, float %7420, float %7420)  ; FMin(a,b)
  %7422 = call float @dx.op.binary.f32(i32 36, float %7420, float %7421)  ; FMin(a,b)
  %7423 = fcmp fast ogt float %7422, 0.000000e+00
  br i1 %7423, label %7424, label %7590, !dx.controlflow.hints !122

; <label>:7424                                    ; preds = %7419
  %7425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7426 = extractvalue %dx.types.CBufRet.f32 %7425, 0
  %7427 = extractvalue %dx.types.CBufRet.f32 %7425, 1
  %7428 = extractvalue %dx.types.CBufRet.f32 %7425, 2
  %7429 = extractvalue %dx.types.CBufRet.f32 %7425, 3
  %7430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.CBufRet.f32 %7430, 1
  %7433 = extractvalue %dx.types.CBufRet.f32 %7430, 2
  %7434 = extractvalue %dx.types.CBufRet.f32 %7430, 3
  %7435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7436 = extractvalue %dx.types.CBufRet.f32 %7435, 0
  %7437 = extractvalue %dx.types.CBufRet.f32 %7435, 1
  %7438 = extractvalue %dx.types.CBufRet.f32 %7435, 2
  %7439 = extractvalue %dx.types.CBufRet.f32 %7435, 3
  %7440 = fmul fast float %7426, %6158
  %7441 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %7427, float %7440)  ; FMad(a,b,c)
  %7442 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %7428, float %7441)  ; FMad(a,b,c)
  %7443 = fadd fast float %7442, %7429
  %7444 = fmul fast float %7431, %6158
  %7445 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %7432, float %7444)  ; FMad(a,b,c)
  %7446 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %7433, float %7445)  ; FMad(a,b,c)
  %7447 = fadd fast float %7446, %7434
  %7448 = fmul fast float %7436, %6158
  %7449 = call float @dx.op.tertiary.f32(i32 46, float %6159, float %7437, float %7448)  ; FMad(a,b,c)
  %7450 = call float @dx.op.tertiary.f32(i32 46, float %6160, float %7438, float %7449)  ; FMad(a,b,c)
  %7451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7452 = extractvalue %dx.types.CBufRet.f32 %7451, 0
  %7453 = extractvalue %dx.types.CBufRet.f32 %7451, 1
  %7454 = extractvalue %dx.types.CBufRet.f32 %7451, 3
  %7455 = fmul fast float %7454, %7443
  %7456 = fmul fast float %7454, %7447
  %7457 = fadd fast float %7455, %7452
  %7458 = fadd fast float %7456, %7453
  %7459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7460 = extractvalue %dx.types.CBufRet.f32 %7459, 0
  %7461 = extractvalue %dx.types.CBufRet.f32 %7459, 1
  %7462 = fsub fast float %7457, %7460
  %7463 = fsub fast float %7458, %7461
  %7464 = fcmp fast olt float %7462, 0.000000e+00
  %7465 = fcmp fast olt float %7463, 0.000000e+00
  %7466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7467 = extractvalue %dx.types.CBufRet.f32 %7466, 0
  %7468 = extractvalue %dx.types.CBufRet.f32 %7466, 1
  %7469 = extractvalue %dx.types.CBufRet.f32 %7466, 2
  %7470 = extractvalue %dx.types.CBufRet.f32 %7466, 3
  %7471 = select i1 %7464, float %7467, float %7469
  %7472 = select i1 %7465, float %7468, float %7470
  %7473 = fmul fast float %7471, %7462
  %7474 = fmul fast float %7472, %7463
  %7475 = call float @dx.op.unary.f32(i32 6, float %7473)  ; FAbs(value)
  %7476 = call float @dx.op.unary.f32(i32 6, float %7474)  ; FAbs(value)
  %7477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7478 = extractvalue %dx.types.CBufRet.f32 %7477, 0
  %7479 = call float @dx.op.binary.f32(i32 35, float %7475, float %7476)  ; FMax(a,b)
  %7480 = fsub fast float %7478, %7479
  %7481 = call float @dx.op.unary.f32(i32 7, float %7480)  ; Saturate(value)
  %7482 = fcmp fast ogt float %7481, 0.000000e+00
  br i1 %7482, label %7483, label %7524, !dx.controlflow.hints !123

; <label>:7483                                    ; preds = %7424
  %7484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7457, float %7458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7485 = extractvalue %dx.types.ResRet.f32 %7484, 1
  %7486 = fcmp fast ogt float %7485, 0.000000e+00
  br i1 %7486, label %7487, label %7519

; <label>:7487                                    ; preds = %7483
  %7488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7457, float %7458, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = extractvalue %dx.types.ResRet.f32 %7488, 1
  %7491 = extractvalue %dx.types.ResRet.f32 %7488, 2
  %7492 = extractvalue %dx.types.ResRet.f32 %7488, 3
  %7493 = fsub fast float 1.000000e+00, %7439
  %7494 = fsub fast float %7493, %7450
  %7495 = fmul fast float %7494, 0x400921FB60000000
  %7496 = fadd fast float %7495, 0x3FF921FB60000000
  %7497 = call float @dx.op.unary.f32(i32 13, float %7496)  ; Sin(value)
  %7498 = fadd fast float %7497, -1.000000e+00
  %7499 = fmul fast float %7498, 0x3FD45F3060000000
  %7500 = fmul fast float %7494, 0x401921FB60000000
  %7501 = fadd fast float %7500, 0x400921FB60000000
  %7502 = call float @dx.op.unary.f32(i32 13, float %7501)  ; Sin(value)
  %7503 = fadd fast float %7502, 0x3E7777A5C0000000
  %7504 = fmul fast float %7503, 0x3FC45F3060000000
  %7505 = fmul fast float %7494, 0x4022D97C80000000
  %7506 = fadd fast float %7505, 0x4012D97C80000000
  %7507 = call float @dx.op.unary.f32(i32 13, float %7506)  ; Sin(value)
  %7508 = fadd fast float %7507, 1.000000e+00
  %7509 = fmul fast float %7508, 0x3FBB2995E0000000
  %7510 = fmul fast float %7494, 0x402921FB60000000
  %7511 = fadd fast float %7510, 0x401921FB60000000
  %7512 = call float @dx.op.unary.f32(i32 13, float %7511)  ; Sin(value)
  %7513 = fadd fast float %7512, 0xBE8777A5C0000000
  %7514 = fmul fast float %7513, 0x3FB45F3060000000
  %7515 = call float @dx.op.dot4.f32(i32 56, float %7489, float %7490, float %7491, float %7492, float %7499, float %7504, float %7509, float %7514)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7516 = fmul fast float %7515, 0xBFF7154760000000
  %7517 = call float @dx.op.unary.f32(i32 21, float %7516)  ; Exp(value)
  %7518 = call float @dx.op.unary.f32(i32 7, float %7517)  ; Saturate(value)
  br label %7519

; <label>:7519                                    ; preds = %7487, %7483
  %7520 = phi float [ %7518, %7487 ], [ 1.000000e+00, %7483 ]
  %7521 = fadd fast float %7520, -1.000000e+00
  %7522 = fmul fast float %7521, %7481
  %7523 = fadd fast float %7522, 1.000000e+00
  br label %7524

; <label>:7524                                    ; preds = %7519, %7424
  %7525 = phi float [ %7523, %7519 ], [ 1.000000e+00, %7424 ]
  %7526 = fmul fast float %7525, %7420
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7531 = fadd fast float %7528, %188
  %7532 = fadd fast float %7529, %189
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 1
  %7535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7536 = extractvalue %dx.types.CBufRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.CBufRet.f32 %7535, 1
  %7538 = extractvalue %dx.types.CBufRet.f32 %7535, 2
  %7539 = fsub fast float -0.000000e+00, %7531
  %7540 = fsub fast float -0.000000e+00, %7532
  %7541 = fsub fast float -0.000000e+00, %190
  %7542 = fsub fast float %7541, %7530
  %7543 = fadd fast float %7542, %7534
  %7544 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7539, float %7540, float %7543)  ; Dot3(ax,ay,az,bx,by,bz)
  %7545 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7536, float %7537, float %7538)  ; Dot3(ax,ay,az,bx,by,bz)
  %7546 = fdiv fast float 1.000000e+00, %7545
  %7547 = fmul fast float %7546, %7544
  %7548 = fmul fast float %7536, %7547
  %7549 = fmul fast float %7537, %7547
  %7550 = fadd fast float %7548, %7531
  %7551 = fadd fast float %7549, %7532
  %7552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7553 = extractvalue %dx.types.CBufRet.f32 %7552, 0
  %7554 = extractvalue %dx.types.CBufRet.f32 %7552, 1
  %7555 = fsub fast float %7550, %7553
  %7556 = fsub fast float %7551, %7554
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 2
  %7559 = extractvalue %dx.types.CBufRet.f32 %7557, 3
  %7560 = fmul fast float %7555, %7558
  %7561 = fmul fast float %7556, %7559
  %7562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7563 = extractvalue %dx.types.CBufRet.i32 %7562, 3
  %7564 = icmp eq i32 %7563, 0
  br i1 %7564, label %7570, label %7565

; <label>:7565                                    ; preds = %7524
  %7566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7560, float %7561, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7567 = extractvalue %dx.types.ResRet.f32 %7566, 0
  %7568 = extractvalue %dx.types.ResRet.f32 %7566, 1
  %7569 = extractvalue %dx.types.ResRet.f32 %7566, 2
  br label %7575

; <label>:7570                                    ; preds = %7524
  %7571 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7560, float %7561, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7572 = extractvalue %dx.types.ResRet.f32 %7571, 0
  %7573 = extractvalue %dx.types.ResRet.f32 %7571, 1
  %7574 = extractvalue %dx.types.ResRet.f32 %7571, 2
  br label %7575

; <label>:7575                                    ; preds = %7570, %7565
  %7576 = phi float [ %7567, %7565 ], [ %7572, %7570 ]
  %7577 = phi float [ %7568, %7565 ], [ %7573, %7570 ]
  %7578 = phi float [ %7569, %7565 ], [ %7574, %7570 ]
  %7579 = extractvalue %dx.types.CBufRet.f32 %7533, 2
  %7580 = fmul fast float %7579, %7576
  %7581 = extractvalue %dx.types.CBufRet.f32 %7533, 0
  %7582 = fsub fast float %7547, %7581
  %7583 = fsub fast float %7582, %7580
  %7584 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7583)  ; FMax(a,b)
  %7585 = fmul fast float %7584, %7577
  %7586 = call float @dx.op.binary.f32(i32 36, float %7578, float %7585)  ; FMin(a,b)
  %7587 = fmul fast float %7586, 0xBFF7154760000000
  %7588 = call float @dx.op.unary.f32(i32 21, float %7587)  ; Exp(value)
  %7589 = fmul fast float %7526, %7588
  br label %7590

; <label>:7590                                    ; preds = %7575, %7419
  %7591 = phi float [ %7589, %7575 ], [ %7420, %7419 ]
  %7592 = call float @dx.op.binary.f32(i32 36, float %7591, float %7591)  ; FMin(a,b)
  %7593 = call float @dx.op.binary.f32(i32 36, float %7591, float %7592)  ; FMin(a,b)
  %7594 = fcmp fast ogt float %7593, 0.000000e+00
  br i1 %7594, label %7595, label %7821, !dx.controlflow.hints !124

; <label>:7595                                    ; preds = %7590
  %7596 = bitcast i32 %5310 to float
  %7597 = fmul fast float %7591, %6150
  %7598 = fmul fast float %7591, %6151
  %7599 = fmul fast float %7591, %6152
  %7600 = fsub fast float %6139, %221
  %7601 = fsub fast float %6140, %222
  %7602 = fsub fast float %6141, %223
  %7603 = call float @dx.op.dot3.f32(i32 55, float %7600, float %7601, float %7602, float %7600, float %7601, float %7602)  ; Dot3(ax,ay,az,bx,by,bz)
  %7604 = call float @dx.op.unary.f32(i32 25, float %7603)  ; Rsqrt(value)
  %7605 = fmul fast float %7604, %7600
  %7606 = fmul fast float %7604, %7601
  %7607 = fmul fast float %7604, %7602
  %7608 = call float @dx.op.dot3.f32(i32 55, float %6139, float %6140, float %6141, float %5279, float %5280, float %5281)  ; Dot3(ax,ay,az,bx,by,bz)
  %7609 = call float @dx.op.dot3.f32(i32 55, float %5108, float %5109, float %5110, float %7605, float %7606, float %7607)  ; Dot3(ax,ay,az,bx,by,bz)
  %7610 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  %7611 = fmul fast float %7610, %7610
  %7612 = fmul fast float %7611, %7596
  %7613 = call float @dx.op.unary.f32(i32 7, float %7612)  ; Saturate(value)
  %7614 = fmul fast float %7613, %7610
  %7615 = call float @dx.op.dot3.f32(i32 55, float %5279, float %5280, float %5281, float %7605, float %7606, float %7607)  ; Dot3(ax,ay,az,bx,by,bz)
  %7616 = fmul fast float %7615, %7615
  %7617 = call float @dx.op.unary.f32(i32 6, float %7608)  ; FAbs(value)
  %7618 = fsub fast float 1.000000e+00, %5304
  %7619 = fmul fast float %5286, %5286
  %7620 = fmul fast float %7619, %7618
  %7621 = fadd fast float %7620, %5304
  %7622 = bitcast float %7621 to i32
  %7623 = ashr i32 %7622, 1
  %7624 = add nsw i32 %7623, 532487669
  %7625 = bitcast i32 %7624 to float
  %7626 = fadd fast float %7625, %5286
  %7627 = fmul fast float %5304, %7616
  %7628 = fsub fast float 1.000000e+00, %7616
  %7629 = fadd fast float %7628, %7627
  %7630 = fmul fast float %7617, %7617
  %7631 = fmul fast float %7630, %7618
  %7632 = fadd fast float %7631, %5304
  %7633 = bitcast float %7632 to i32
  %7634 = ashr i32 %7633, 1
  %7635 = add nsw i32 %7634, 532487669
  %7636 = bitcast i32 %7635 to float
  %7637 = fadd fast float %7636, %7617
  %7638 = fmul fast float %7629, %7629
  %7639 = fmul fast float %7638, %7626
  %7640 = fmul fast float %7639, %7637
  %7641 = fdiv fast float 0x3FF0A00000000000, %7640
  %7642 = fmul fast float %7641, %5304
  %7643 = call float @dx.op.unary.f32(i32 6, float %7609)  ; FAbs(value)
  %7644 = fsub fast float 1.000000e+00, %7643
  %7645 = bitcast float %7644 to i32
  %7646 = sitofp i32 %7645 to float
  %7647 = fmul fast float %7646, 5.000000e+00
  %7648 = fadd fast float %7647, 0xC1EFBF8940000000
  %7649 = fptosi float %7648 to i32
  %7650 = bitcast i32 %7649 to float
  %7651 = fsub fast float 1.000000e+00, %5276
  %7652 = fsub fast float 1.000000e+00, %5277
  %7653 = fsub fast float 1.000000e+00, %5284
  %7654 = fmul fast float %7650, %7651
  %7655 = fmul fast float %7650, %7652
  %7656 = fmul fast float %7650, %7653
  %7657 = fadd fast float %7654, %5276
  %7658 = fadd fast float %7655, %5277
  %7659 = fadd fast float %7656, %5284
  br i1 %5568, label %7660, label %7683

; <label>:7660                                    ; preds = %7595
  %7661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4300, float %7643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7662 = extractvalue %dx.types.ResRet.f32 %7661, 0
  %7663 = extractvalue %dx.types.ResRet.f32 %7661, 1
  %7664 = extractvalue %dx.types.ResRet.f32 %7661, 2
  %7665 = fadd fast float %7662, -5.000000e-01
  %7666 = fadd fast float %7663, -5.000000e-01
  %7667 = fadd fast float %7664, -5.000000e-01
  %7668 = fmul fast float %5276, 4.000000e+00
  %7669 = fmul fast float %7668, %7651
  %7670 = fmul fast float %7669, %7665
  %7671 = fmul fast float %5277, 4.000000e+00
  %7672 = fmul fast float %7671, %7652
  %7673 = fmul fast float %7672, %7666
  %7674 = fmul fast float %5284, 4.000000e+00
  %7675 = fmul fast float %7674, %7653
  %7676 = fmul fast float %7675, %7667
  %7677 = fadd fast float %7670, %7657
  %7678 = fadd fast float %7673, %7658
  %7679 = fadd fast float %7676, %7659
  %7680 = call float @dx.op.unary.f32(i32 7, float %7677)  ; Saturate(value)
  %7681 = call float @dx.op.unary.f32(i32 7, float %7678)  ; Saturate(value)
  %7682 = call float @dx.op.unary.f32(i32 7, float %7679)  ; Saturate(value)
  br label %7683

; <label>:7683                                    ; preds = %7660, %7595
  %7684 = phi float [ %7680, %7660 ], [ %7657, %7595 ]
  %7685 = phi float [ %7681, %7660 ], [ %7658, %7595 ]
  %7686 = phi float [ %7682, %7660 ], [ %7659, %7595 ]
  %7687 = fmul fast float %7608, 9.843750e-01
  %7688 = fadd fast float %7687, 7.812500e-03
  %7689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %7688, float %5558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7690 = extractvalue %dx.types.ResRet.f32 %7689, 2
  %7691 = extractvalue %dx.types.ResRet.f32 %7689, 3
  %7692 = fmul fast float %7690, %5276
  %7693 = fmul fast float %7690, %5277
  %7694 = fmul fast float %7690, %5284
  %7695 = fadd fast float %7692, %7691
  %7696 = fadd fast float %7693, %7691
  %7697 = fadd fast float %7694, %7691
  br i1 %5568, label %7698, label %7721

; <label>:7698                                    ; preds = %7683
  %7699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4300, float %7608, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7700 = extractvalue %dx.types.ResRet.f32 %7699, 0
  %7701 = extractvalue %dx.types.ResRet.f32 %7699, 1
  %7702 = extractvalue %dx.types.ResRet.f32 %7699, 2
  %7703 = fadd fast float %7700, -5.000000e-01
  %7704 = fadd fast float %7701, -5.000000e-01
  %7705 = fadd fast float %7702, -5.000000e-01
  %7706 = fmul fast float %5276, 4.000000e+00
  %7707 = fmul fast float %7706, %7651
  %7708 = fmul fast float %7707, %7703
  %7709 = fmul fast float %5277, 4.000000e+00
  %7710 = fmul fast float %7709, %7652
  %7711 = fmul fast float %7710, %7704
  %7712 = fmul fast float %5284, 4.000000e+00
  %7713 = fmul fast float %7712, %7653
  %7714 = fmul fast float %7713, %7705
  %7715 = fadd fast float %7708, %7695
  %7716 = fadd fast float %7711, %7696
  %7717 = fadd fast float %7714, %7697
  %7718 = call float @dx.op.unary.f32(i32 7, float %7715)  ; Saturate(value)
  %7719 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7720 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  br label %7721

; <label>:7721                                    ; preds = %7698, %7683
  %7722 = phi float [ %7718, %7698 ], [ %7695, %7683 ]
  %7723 = phi float [ %7719, %7698 ], [ %7696, %7683 ]
  %7724 = phi float [ %7720, %7698 ], [ %7697, %7683 ]
  %7725 = call float @dx.op.binary.f32(i32 35, float %7723, float %7724)  ; FMax(a,b)
  %7726 = call float @dx.op.binary.f32(i32 35, float %7722, float %7725)  ; FMax(a,b)
  %7727 = fsub fast float 1.000000e+00, %7726
  %7728 = fsub fast float -0.000000e+00, %5279
  %7729 = fsub fast float -0.000000e+00, %5280
  %7730 = fsub fast float -0.000000e+00, %5281
  %7731 = call float @dx.op.dot3.f32(i32 55, float %6139, float %6140, float %6141, float %7728, float %7729, float %7730)  ; Dot3(ax,ay,az,bx,by,bz)
  %7732 = call float @dx.op.unary.f32(i32 7, float %7731)  ; Saturate(value)
  %7733 = fmul fast float %7732, 9.843750e-01
  %7734 = fadd fast float %7733, 7.812500e-03
  %7735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %7734, float %5558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7736 = extractvalue %dx.types.ResRet.f32 %7735, 2
  %7737 = extractvalue %dx.types.ResRet.f32 %7735, 3
  %7738 = fmul fast float %7736, %5276
  %7739 = fmul fast float %7736, %5277
  %7740 = fmul fast float %7736, %5284
  %7741 = fadd fast float %7738, %7737
  %7742 = fadd fast float %7739, %7737
  %7743 = fadd fast float %7740, %7737
  br i1 %5568, label %7744, label %7767

; <label>:7744                                    ; preds = %7721
  %7745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4300, float %7732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7746 = extractvalue %dx.types.ResRet.f32 %7745, 0
  %7747 = extractvalue %dx.types.ResRet.f32 %7745, 1
  %7748 = extractvalue %dx.types.ResRet.f32 %7745, 2
  %7749 = fadd fast float %7746, -5.000000e-01
  %7750 = fadd fast float %7747, -5.000000e-01
  %7751 = fadd fast float %7748, -5.000000e-01
  %7752 = fmul fast float %5276, 4.000000e+00
  %7753 = fmul fast float %7752, %7651
  %7754 = fmul fast float %7753, %7749
  %7755 = fmul fast float %5277, 4.000000e+00
  %7756 = fmul fast float %7755, %7652
  %7757 = fmul fast float %7756, %7750
  %7758 = fmul fast float %5284, 4.000000e+00
  %7759 = fmul fast float %7758, %7653
  %7760 = fmul fast float %7759, %7751
  %7761 = fadd fast float %7754, %7741
  %7762 = fadd fast float %7757, %7742
  %7763 = fadd fast float %7760, %7743
  %7764 = call float @dx.op.unary.f32(i32 7, float %7761)  ; Saturate(value)
  %7765 = call float @dx.op.unary.f32(i32 7, float %7762)  ; Saturate(value)
  %7766 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  br label %7767

; <label>:7767                                    ; preds = %7744, %7721
  %7768 = phi float [ %7764, %7744 ], [ %7741, %7721 ]
  %7769 = phi float [ %7765, %7744 ], [ %7742, %7721 ]
  %7770 = phi float [ %7766, %7744 ], [ %7743, %7721 ]
  %7771 = call float @dx.op.binary.f32(i32 35, float %7769, float %7770)  ; FMax(a,b)
  %7772 = call float @dx.op.binary.f32(i32 35, float %7768, float %7771)  ; FMax(a,b)
  %7773 = fsub fast float 1.000000e+00, %7772
  %7774 = fmul fast float %7773, %7732
  %7775 = fmul fast float %7774, %4412
  %7776 = fmul fast float %7774, %4413
  %7777 = fmul fast float %7774, %4414
  %7778 = fmul fast float %7684, %7642
  %7779 = fmul fast float %7685, %7642
  %7780 = fmul fast float %7686, %7642
  %7781 = fsub fast float 1.000000e+00, %7609
  %7782 = bitcast float %7781 to i32
  %7783 = sitofp i32 %7782 to float
  %7784 = fmul fast float %7783, 5.000000e+00
  %7785 = fadd fast float %7784, 0xC1EFBF8940000000
  %7786 = fptosi float %7785 to i32
  %7787 = bitcast i32 %7786 to float
  %7788 = fmul fast float %7787, %4301
  %7789 = fmul fast float %7727, %7788
  %7790 = fmul fast float %7789, %6079
  %7791 = fmul fast float %7789, %6080
  %7792 = fmul fast float %7789, %6081
  %7793 = fmul fast float %7727, %7614
  %7794 = fadd fast float %7790, %7778
  %7795 = fadd fast float %7791, %7779
  %7796 = fadd fast float %7792, %7780
  %7797 = fadd fast float %7775, %7793
  %7798 = fadd fast float %7776, %7793
  %7799 = fadd fast float %7777, %7793
  %7800 = fmul fast float %7797, %7597
  %7801 = fmul fast float %7798, %7598
  %7802 = fmul fast float %7799, %7599
  %7803 = fmul fast float %7614, %7597
  %7804 = fmul fast float %7803, %7794
  %7805 = fmul fast float %7614, %7598
  %7806 = fmul fast float %7805, %7795
  %7807 = fmul fast float %7614, %7599
  %7808 = fmul fast float %7807, %7796
  %7809 = fadd fast float %7800, %6129
  %7810 = fmul fast float %7809, %4326
  %7811 = fadd fast float %7801, %6131
  %7812 = fmul fast float %7811, %4326
  %7813 = fadd fast float %7802, %6133
  %7814 = fmul fast float %7813, %4326
  %7815 = fadd fast float %7804, %6112
  %7816 = fmul fast float %7815, %4326
  %7817 = fadd fast float %7806, %6115
  %7818 = fmul fast float %7817, %4326
  %7819 = fadd fast float %7808, %6118
  %7820 = fmul fast float %7819, %4326
  br label %7821

; <label>:7821                                    ; preds = %7767, %7590, %6062
  %7822 = phi float [ %6113, %6062 ], [ %6113, %7590 ], [ %7816, %7767 ]
  %7823 = phi float [ %6116, %6062 ], [ %6116, %7590 ], [ %7818, %7767 ]
  %7824 = phi float [ %6119, %6062 ], [ %6119, %7590 ], [ %7820, %7767 ]
  %7825 = phi float [ %6130, %6062 ], [ %6130, %7590 ], [ %7810, %7767 ]
  %7826 = phi float [ %6132, %6062 ], [ %6132, %7590 ], [ %7812, %7767 ]
  %7827 = phi float [ %6134, %6062 ], [ %6134, %7590 ], [ %7814, %7767 ]
  %7828 = fmul fast float %4326, %6088
  %7829 = fsub fast float -0.000000e+00, %7828
  %7830 = fmul fast float %4326, %6089
  %7831 = fsub fast float -0.000000e+00, %7830
  %7832 = fmul fast float %4326, %6090
  %7833 = fsub fast float -0.000000e+00, %7832
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 0
  %7836 = fmul fast float %7835, %6094
  %7837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7837, 3
  %7839 = fsub fast float 1.000000e+00, %4304
  %7840 = call float @dx.op.unary.f32(i32 7, float %7839)  ; Saturate(value)
  %7841 = fadd fast float %7827, %4303
  %7842 = fmul fast float %7841, %4304
  %7843 = fmul fast float %7840, %7838
  %7844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4305, i32 undef)  ; BufferLoad(srv,index,wot)
  %7845 = extractvalue %dx.types.ResRet.i32 %7844, 3
  %7846 = bitcast i32 %7845 to float
  %7847 = fsub fast float %7829, %7846
  %7848 = fsub fast float %7831, %7846
  %7849 = fsub fast float %7833, %7846
  %7850 = fmul fast float %7847, %235
  %7851 = fmul fast float %7848, %235
  %7852 = fmul fast float %7849, %235
  %7853 = fadd fast float %7850, %7846
  %7854 = fadd fast float %7851, %7846
  %7855 = fadd fast float %7852, %7846
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 3
  %7858 = fmul fast float %7825, %5273
  %7859 = fmul fast float %7826, %5274
  %7860 = fmul fast float %7827, %5275
  %7861 = fcmp fast ogt float %96, %255
  %7862 = and i1 %7861, %4431
  %7863 = or i1 %4510, %7862
  %7864 = icmp eq i32 %4430, 2
  %7865 = fcmp fast ole float %96, %255
  %7866 = and i1 %7865, %7864
  %7867 = or i1 %7866, %7863
  br i1 %7862, label %7868, label %8125

; <label>:7868                                    ; preds = %7821
  %7869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7870 = extractvalue %dx.types.CBufRet.f32 %7869, 2
  %7871 = extractvalue %dx.types.CBufRet.f32 %7869, 3
  %7872 = fmul fast float %7870, %109
  %7873 = fmul fast float %7871, %110
  %7874 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  %7875 = call float @dx.op.unary.f32(i32 7, float %7873)  ; Saturate(value)
  %7876 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7874, float %7875, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7877 = extractvalue %dx.types.ResRet.f32 %7876, 0
  %7878 = extractvalue %dx.types.ResRet.f32 %7876, 1
  %7879 = extractvalue %dx.types.ResRet.f32 %7876, 2
  %7880 = extractvalue %dx.types.ResRet.f32 %7876, 3
  %7881 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7874, float %7875, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7882 = extractvalue %dx.types.ResRet.f32 %7881, 0
  %7883 = extractvalue %dx.types.ResRet.f32 %7881, 1
  %7884 = extractvalue %dx.types.ResRet.f32 %7881, 2
  %7885 = extractvalue %dx.types.ResRet.f32 %7881, 3
  %7886 = call float @dx.op.binary.f32(i32 35, float %7878, float %7879)  ; FMax(a,b)
  %7887 = call float @dx.op.binary.f32(i32 35, float %7877, float %7886)  ; FMax(a,b)
  %7888 = call float @dx.op.binary.f32(i32 35, float %7887, float %7880)  ; FMax(a,b)
  %7889 = call float @dx.op.binary.f32(i32 36, float %7883, float %7884)  ; FMin(a,b)
  %7890 = call float @dx.op.binary.f32(i32 36, float %7882, float %7889)  ; FMin(a,b)
  %7891 = call float @dx.op.binary.f32(i32 36, float %7890, float %7885)  ; FMin(a,b)
  %7892 = fmul fast float %7888, 2.550000e+02
  %7893 = fadd fast float %7892, 0x3F70101020000000
  %7894 = fptoui float %7893 to i32
  %7895 = fmul fast float %7891, 2.550000e+02
  %7896 = fadd fast float %7895, 0x3F70101020000000
  %7897 = fptoui float %7896 to i32
  %7898 = icmp ult i32 %7894, %7897
  br i1 %7898, label %7899, label %8067

; <label>:7899                                    ; preds = %7868
  %7900 = fcmp fast ogt float %95, 9.843750e-01
  %7901 = fadd fast float %96, -4.000000e+00
  %7902 = select i1 %7900, float -4.000000e+00, float %7901
  %7903 = call float @dx.op.binary.f32(i32 35, float %7902, float 0.000000e+00)  ; FMax(a,b)
  %7904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7905 = extractvalue %dx.types.CBufRet.f32 %7904, 0
  %7906 = fadd fast float %7905, %7903
  %7907 = extractvalue %dx.types.CBufRet.f32 %7904, 2
  %7908 = fmul fast float %7906, %7907
  %7909 = call float @dx.op.unary.f32(i32 23, float %7908)  ; Log(value)
  %7910 = extractvalue %dx.types.CBufRet.f32 %7904, 3
  %7911 = fmul fast float %7910, %7909
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7914 = fmul fast float %7911, %7913
  %7915 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  %7916 = uitofp i32 %7894 to float
  %7917 = uitofp i32 %7897 to float
  %7918 = fadd fast float %7916, 5.000000e-01
  %7919 = fadd fast float %7917, 5.000000e-01
  %7920 = fmul fast float %7913, %7918
  %7921 = fmul fast float %7913, %7919
  %7922 = fadd fast float %7920, 0x3F0FFB4800000000
  %7923 = fadd fast float %7921, 0xBF0FFB4800000000
  %7924 = call float @dx.op.binary.f32(i32 35, float %7915, float %7922)  ; FMax(a,b)
  %7925 = call float @dx.op.binary.f32(i32 36, float %7924, float %7923)  ; FMin(a,b)
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 1
  %7928 = extractvalue %dx.types.CBufRet.f32 %7926, 2
  %7929 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7930 = fmul fast float %7927, %7925
  %7931 = fadd fast float %7929, %7930
  %7932 = fadd fast float %7929, %7928
  %7933 = fsub fast float %7927, %7928
  %7934 = fadd fast float %7933, %7929
  %7935 = call float @dx.op.binary.f32(i32 35, float %7931, float %7932)  ; FMax(a,b)
  %7936 = call float @dx.op.binary.f32(i32 36, float %7935, float %7934)  ; FMin(a,b)
  %7937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %7874, float %7875, float %7936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7938 = extractvalue %dx.types.ResRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.ResRet.f32 %7937, 1
  %7940 = extractvalue %dx.types.ResRet.f32 %7937, 2
  %7941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7942 = extractvalue %dx.types.CBufRet.i32 %7941, 0
  %7943 = extractvalue %dx.types.CBufRet.i32 %7941, 1
  %7944 = uitofp i32 %7942 to float
  %7945 = uitofp i32 %7943 to float
  %7946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7947 = extractvalue %dx.types.CBufRet.f32 %7946, 0
  %7948 = extractvalue %dx.types.CBufRet.f32 %7946, 1
  %7949 = fmul fast float %7944, %7874
  %7950 = fmul fast float %7945, %7875
  %7951 = fadd fast float %7949, -5.000000e-01
  %7952 = fadd fast float %7950, -5.000000e-01
  %7953 = call float @dx.op.unary.f32(i32 22, float %7951)  ; Frc(value)
  %7954 = call float @dx.op.unary.f32(i32 22, float %7952)  ; Frc(value)
  %7955 = fmul fast float %7953, %7953
  %7956 = fmul fast float %7955, %7953
  %7957 = fsub fast float 3.000000e+00, %7953
  %7958 = fmul fast float %7955, %7957
  %7959 = fmul fast float %7953, 3.000000e+00
  %7960 = fmul fast float %7956, 3.000000e+00
  %7961 = fmul fast float %7955, 6.000000e+00
  %7962 = fsub fast float %7960, %7961
  %7963 = fadd fast float %7962, 4.000000e+00
  %7964 = fmul fast float %7963, 0x3FC5555560000000
  %7965 = fmul fast float %7956, -3.000000e+00
  %7966 = fadd fast float %7955, %7953
  %7967 = fmul fast float %7966, 3.000000e+00
  %7968 = fadd fast float %7965, 1.000000e+00
  %7969 = fadd fast float %7968, %7967
  %7970 = fmul fast float %7956, 0x3FC5555560000000
  %7971 = fmul fast float %7954, %7954
  %7972 = fmul fast float %7971, %7954
  %7973 = fsub fast float 3.000000e+00, %7954
  %7974 = fmul fast float %7971, %7973
  %7975 = fmul fast float %7954, 3.000000e+00
  %7976 = fmul fast float %7972, 3.000000e+00
  %7977 = fmul fast float %7971, 6.000000e+00
  %7978 = fsub fast float %7976, %7977
  %7979 = fadd fast float %7978, 4.000000e+00
  %7980 = fmul fast float %7979, 0x3FC5555560000000
  %7981 = fmul fast float %7972, -3.000000e+00
  %7982 = fadd fast float %7971, %7954
  %7983 = fmul fast float %7982, 3.000000e+00
  %7984 = fadd fast float %7981, 1.000000e+00
  %7985 = fadd fast float %7984, %7983
  %7986 = fmul fast float %7972, 0x3FC5555560000000
  %7987 = fadd fast float %7953, 1.000000e+00
  %7988 = fsub fast float 1.000000e+00, %7959
  %7989 = fadd fast float %7988, %7958
  %7990 = fadd fast float %7989, %7963
  %7991 = fmul fast float %7990, 0x3FC5555560000000
  %7992 = fdiv fast float %7964, %7991
  %7993 = fsub fast float %7987, %7992
  %7994 = fsub fast float 1.000000e+00, %7953
  %7995 = fadd fast float %7969, %7956
  %7996 = fmul fast float %7995, 0x3FC5555560000000
  %7997 = fdiv fast float %7970, %7996
  %7998 = fadd fast float %7994, %7997
  %7999 = fadd fast float %7954, 1.000000e+00
  %8000 = fsub fast float 1.000000e+00, %7975
  %8001 = fadd fast float %8000, %7974
  %8002 = fadd fast float %8001, %7979
  %8003 = fmul fast float %8002, 0x3FC5555560000000
  %8004 = fdiv fast float %7980, %8003
  %8005 = fsub fast float %7999, %8004
  %8006 = fsub fast float 1.000000e+00, %7954
  %8007 = fadd fast float %7985, %7972
  %8008 = fmul fast float %8007, 0x3FC5555560000000
  %8009 = fdiv fast float %7986, %8008
  %8010 = fadd fast float %8009, %8006
  %8011 = fmul fast float %7993, %7947
  %8012 = fsub fast float %7874, %8011
  %8013 = fmul fast float %7998, %7947
  %8014 = fadd fast float %8013, %7874
  %8015 = fmul fast float %8010, %7948
  %8016 = fadd fast float %8015, %7875
  %8017 = fmul fast float %8005, %7948
  %8018 = fsub fast float %7875, %8017
  %8019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8012, float %8018, float %7936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8020 = extractvalue %dx.types.ResRet.f32 %8019, 0
  %8021 = extractvalue %dx.types.ResRet.f32 %8019, 1
  %8022 = extractvalue %dx.types.ResRet.f32 %8019, 2
  %8023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8014, float %8018, float %7936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8024 = extractvalue %dx.types.ResRet.f32 %8023, 0
  %8025 = extractvalue %dx.types.ResRet.f32 %8023, 1
  %8026 = extractvalue %dx.types.ResRet.f32 %8023, 2
  %8027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8012, float %8016, float %7936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8028 = extractvalue %dx.types.ResRet.f32 %8027, 0
  %8029 = extractvalue %dx.types.ResRet.f32 %8027, 1
  %8030 = extractvalue %dx.types.ResRet.f32 %8027, 2
  %8031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8014, float %8016, float %7936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8032 = extractvalue %dx.types.ResRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.ResRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.ResRet.f32 %8031, 2
  %8035 = fsub fast float %8028, %8020
  %8036 = fsub fast float %8029, %8021
  %8037 = fsub fast float %8030, %8022
  %8038 = fmul fast float %8035, %8008
  %8039 = fmul fast float %8036, %8008
  %8040 = fmul fast float %8037, %8008
  %8041 = fadd fast float %8038, %8020
  %8042 = fadd fast float %8039, %8021
  %8043 = fadd fast float %8040, %8022
  %8044 = fsub fast float %8032, %8024
  %8045 = fsub fast float %8033, %8025
  %8046 = fsub fast float %8034, %8026
  %8047 = fmul fast float %8044, %8008
  %8048 = fmul fast float %8045, %8008
  %8049 = fmul fast float %8046, %8008
  %8050 = fsub fast float %8024, %8041
  %8051 = fadd fast float %8050, %8047
  %8052 = fsub fast float %8025, %8042
  %8053 = fadd fast float %8052, %8048
  %8054 = fsub fast float %8026, %8043
  %8055 = fadd fast float %8054, %8049
  %8056 = fmul fast float %8051, %7996
  %8057 = fmul fast float %8053, %7996
  %8058 = fmul fast float %8055, %7996
  %8059 = fadd fast float %8056, %8041
  %8060 = fadd fast float %8057, %8042
  %8061 = fadd fast float %8058, %8043
  %8062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8063 = extractvalue %dx.types.CBufRet.f32 %8062, 1
  %8064 = fmul fast float %8059, %8063
  %8065 = fmul fast float %8060, %8063
  %8066 = fmul fast float %8061, %8063
  br label %8067

; <label>:8067                                    ; preds = %7899, %7868
  %8068 = phi float [ %7938, %7899 ], [ 1.000000e+00, %7868 ]
  %8069 = phi float [ %7939, %7899 ], [ 1.000000e+00, %7868 ]
  %8070 = phi float [ %7940, %7899 ], [ 1.000000e+00, %7868 ]
  %8071 = phi float [ %8064, %7899 ], [ 0.000000e+00, %7868 ]
  %8072 = phi float [ %8065, %7899 ], [ 0.000000e+00, %7868 ]
  %8073 = phi float [ %8066, %7899 ], [ 0.000000e+00, %7868 ]
  %8074 = fmul fast float %8071, %7853
  %8075 = fmul fast float %8072, %7854
  %8076 = fmul fast float %8073, %7855
  %8077 = call float @dx.op.dot3.f32(i32 55, float %8068, float %8069, float %8070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8078 = call float @dx.op.dot3.f32(i32 55, float %8074, float %8075, float %8076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8079 = select i1 %294, float %8077, float %8068
  %8080 = select i1 %294, float %8077, float %8069
  %8081 = select i1 %294, float 1.000000e+00, float %8070
  %8082 = select i1 %294, float %8078, float %8074
  %8083 = select i1 %294, float 0.000000e+00, float %8075
  %8084 = select i1 %294, float 0.000000e+00, float %8076
  %8085 = fmul fast float %8079, %7858
  %8086 = fmul fast float %8080, %7859
  %8087 = fmul fast float %8081, %7860
  %8088 = fadd fast float %8085, %8082
  %8089 = fadd fast float %8086, %8083
  %8090 = fadd fast float %8084, %8087
  %8091 = fmul fast float %8079, %7822
  %8092 = fmul fast float %8080, %7823
  %8093 = fmul fast float %8081, %7824
  %8094 = fmul fast float %137, %7870
  %8095 = fmul fast float %139, %7871
  %8096 = fsub fast float 1.000000e+00, %8094
  %8097 = fsub fast float 1.000000e+00, %8095
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8102 = fmul fast float %8096, %8099
  %8103 = fmul fast float %8096, %8100
  %8104 = fmul fast float %8096, %8101
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8109 = fmul fast float %8097, %8106
  %8110 = fmul fast float %8097, %8107
  %8111 = fmul fast float %8097, %8108
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 0
  %8114 = extractvalue %dx.types.CBufRet.f32 %8112, 1
  %8115 = extractvalue %dx.types.CBufRet.f32 %8112, 2
  %8116 = fadd fast float %8109, %8113
  %8117 = fadd fast float %8116, %8102
  %8118 = fadd fast float %8110, %8114
  %8119 = fadd fast float %8118, %8103
  %8120 = fadd fast float %8111, %8115
  %8121 = fadd fast float %8120, %8104
  %8122 = fmul fast float %8117, %255
  %8123 = fmul fast float %8119, %255
  %8124 = fmul fast float %8121, %255
  br label %8125

; <label>:8125                                    ; preds = %8067, %7821
  %8126 = phi float [ %8122, %8067 ], [ %188, %7821 ]
  %8127 = phi float [ %8123, %8067 ], [ %189, %7821 ]
  %8128 = phi float [ %8124, %8067 ], [ %190, %7821 ]
  %8129 = phi float [ %255, %8067 ], [ %96, %7821 ]
  %8130 = phi float [ %8088, %8067 ], [ %7858, %7821 ]
  %8131 = phi float [ %8089, %8067 ], [ %7859, %7821 ]
  %8132 = phi float [ %8090, %8067 ], [ %7860, %7821 ]
  %8133 = phi float [ %8091, %8067 ], [ %7822, %7821 ]
  %8134 = phi float [ %8092, %8067 ], [ %7823, %7821 ]
  %8135 = phi float [ %8093, %8067 ], [ %7824, %7821 ]
  %8136 = phi float [ %8068, %8067 ], [ 1.000000e+00, %7821 ]
  br i1 %7867, label %9291, label %8137

; <label>:8137                                    ; preds = %8125
  %8138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8139 = extractvalue %dx.types.CBufRet.f32 %8138, 0
  %8140 = extractvalue %dx.types.CBufRet.f32 %8138, 1
  %8141 = extractvalue %dx.types.CBufRet.f32 %8138, 2
  %8142 = extractvalue %dx.types.CBufRet.f32 %8138, 3
  %8143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8144 = extractvalue %dx.types.CBufRet.f32 %8143, 0
  %8145 = extractvalue %dx.types.CBufRet.f32 %8143, 1
  %8146 = extractvalue %dx.types.CBufRet.f32 %8143, 2
  %8147 = extractvalue %dx.types.CBufRet.f32 %8143, 3
  %8148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.f32 %8148, 0
  %8150 = extractvalue %dx.types.CBufRet.f32 %8148, 1
  %8151 = extractvalue %dx.types.CBufRet.f32 %8148, 2
  %8152 = extractvalue %dx.types.CBufRet.f32 %8148, 3
  %8153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8154 = extractvalue %dx.types.CBufRet.f32 %8153, 0
  %8155 = extractvalue %dx.types.CBufRet.f32 %8153, 1
  %8156 = extractvalue %dx.types.CBufRet.f32 %8153, 2
  %8157 = extractvalue %dx.types.CBufRet.f32 %8153, 3
  %8158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8159 = extractvalue %dx.types.CBufRet.f32 %8158, 3
  %8160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.f32 %8160, 3
  %8162 = extractvalue %dx.types.CBufRet.f32 %8160, 0
  %8163 = extractvalue %dx.types.CBufRet.f32 %8160, 1
  %8164 = extractvalue %dx.types.CBufRet.f32 %8160, 2
  %8165 = fcmp fast olt float %8164, -5.000000e-01
  %8166 = call float @dx.op.dot3.f32(i32 55, float %8126, float %8127, float %8128, float %8126, float %8127, float %8128)  ; Dot3(ax,ay,az,bx,by,bz)
  %8167 = call float @dx.op.unary.f32(i32 25, float %8166)  ; Rsqrt(value)
  %8168 = fmul fast float %8167, %8166
  %8169 = fmul fast float %8167, %8126
  %8170 = fmul fast float %8167, %8127
  %8171 = fmul fast float %8167, %8128
  %8172 = fadd fast float %8168, %8142
  %8173 = call float @dx.op.dot3.f32(i32 55, float %8169, float %8170, float %8171, float %8139, float %8140, float %8141)  ; Dot3(ax,ay,az,bx,by,bz)
  %8174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.i32 %8174, 1
  %8176 = and i32 %8175, 1
  %8177 = icmp ne i32 %8176, 0
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 2
  %8180 = fcmp fast ogt float %8179, 0.000000e+00
  %8181 = and i1 %8177, %8180
  br i1 %8181, label %8182, label %8588, !dx.controlflow.hints !125

; <label>:8182                                    ; preds = %8137
  %8183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8184 = extractvalue %dx.types.CBufRet.f32 %8183, 3
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 2
  %8187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.f32 %8187, 2
  %8189 = fsub fast float %8186, %8188
  %8190 = and i32 %8175, 2
  %8191 = extractvalue %dx.types.CBufRet.i32 %8174, 0
  %8192 = call i32 @dx.op.binary.i32(i32 40, i32 %8191, i32 3)  ; UMin(a,b)
  %8193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8194 = extractvalue %dx.types.CBufRet.f32 %8193, 0
  %8195 = extractvalue %dx.types.CBufRet.f32 %8193, 1
  %8196 = extractvalue %dx.types.CBufRet.f32 %8187, 0
  %8197 = extractvalue %dx.types.CBufRet.f32 %8187, 1
  %8198 = fsub fast float %8194, %8196
  %8199 = fsub fast float %8195, %8197
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 0
  %8202 = fcmp fast ogt float %8201, 0.000000e+00
  %8203 = fsub fast float -0.000000e+00, %8198
  %8204 = fsub fast float -0.000000e+00, %8199
  %8205 = call float @dx.op.dot2.f32(i32 54, float %8169, float %8170, float %8169, float %8170)  ; Dot2(ax,ay,bx,by)
  %8206 = call float @dx.op.dot2.f32(i32 54, float %8169, float %8170, float %8203, float %8204)  ; Dot2(ax,ay,bx,by)
  %8207 = fmul fast float %8206, 2.000000e+00
  %8208 = call float @dx.op.dot2.f32(i32 54, float %8203, float %8204, float %8203, float %8204)  ; Dot2(ax,ay,bx,by)
  %8209 = fmul fast float %8201, %8201
  %8210 = fsub fast float %8208, %8209
  %8211 = fmul fast float %8207, %8207
  %8212 = fmul fast float %8205, 4.000000e+00
  %8213 = fmul fast float %8212, %8210
  %8214 = fsub fast float %8211, %8213
  %8215 = fcmp fast ogt float %8214, 0.000000e+00
  br i1 %8215, label %8216, label %8231

; <label>:8216                                    ; preds = %8182
  %8217 = fcmp fast ogt float %8207, 0.000000e+00
  %8218 = call float @dx.op.unary.f32(i32 24, float %8214)  ; Sqrt(value)
  %8219 = fsub fast float -0.000000e+00, %8218
  %8220 = select i1 %8217, float %8218, float %8219
  %8221 = fadd fast float %8220, %8207
  %8222 = fmul float %8221, -5.000000e-01
  %8223 = fdiv fast float %8222, %8205
  %8224 = call float @dx.op.binary.f32(i32 35, float %8223, float 0.000000e+00)  ; FMax(a,b)
  %8225 = call float @dx.op.binary.f32(i32 36, float %8168, float %8224)  ; FMin(a,b)
  %8226 = fdiv fast float %8210, %8222
  %8227 = call float @dx.op.binary.f32(i32 35, float %8226, float 0.000000e+00)  ; FMax(a,b)
  %8228 = call float @dx.op.binary.f32(i32 36, float %8168, float %8227)  ; FMin(a,b)
  %8229 = call float @dx.op.binary.f32(i32 36, float %8225, float %8228)  ; FMin(a,b)
  %8230 = call float @dx.op.binary.f32(i32 35, float %8225, float %8228)  ; FMax(a,b)
  br label %8231

; <label>:8231                                    ; preds = %8216, %8182
  %8232 = phi float [ %8230, %8216 ], [ -1.000000e+00, %8182 ]
  %8233 = phi float [ %8229, %8216 ], [ -1.000000e+00, %8182 ]
  %8234 = phi i1 [ true, %8216 ], [ false, %8182 ]
  %8235 = and i1 %8202, %8234
  br i1 %8235, label %8236, label %8238

; <label>:8236                                    ; preds = %8231
  %8237 = fcmp fast oeq float %8233, %8232
  br i1 %8237, label %8541, label %8239

; <label>:8238                                    ; preds = %8231
  br i1 %8202, label %8541, label %8239

; <label>:8239                                    ; preds = %8238, %8236
  %8240 = phi float [ %8168, %8238 ], [ %8232, %8236 ]
  %8241 = phi float [ 0.000000e+00, %8238 ], [ %8233, %8236 ]
  %8242 = icmp ne i32 %8190, 0
  %8243 = fmul fast float %8240, %8171
  %8244 = fadd fast float %8243, %8184
  %8245 = fmul fast float %8244, %8240
  %8246 = select i1 %8242, float 0.000000e+00, float %8245
  %8247 = fcmp fast oeq float %8171, 0.000000e+00
  %8248 = fdiv fast float %8189, %8171
  %8249 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8248)  ; FMax(a,b)
  %8250 = select i1 %8247, float %8240, float %8249
  %8251 = call float @dx.op.binary.f32(i32 36, float %8240, float %8250)  ; FMin(a,b)
  %8252 = fcmp fast ogt float %8171, 0.000000e+00
  %8253 = fcmp fast olt float %8189, 0.000000e+00
  br i1 %8252, label %8254, label %8311

; <label>:8254                                    ; preds = %8239
  %8255 = icmp eq i32 %8190, 0
  br i1 %8253, label %8256, label %8300

; <label>:8256                                    ; preds = %8254
  %8257 = select i1 %8255, float %8240, float 0.000000e+00
  %8258 = fsub fast float -0.000000e+00, %8257
  %8259 = call float @dx.op.unary.f32(i32 6, float %8258)  ; FAbs(value)
  %8260 = fmul fast float %8257, %8171
  %8261 = fadd fast float %8260, %8184
  %8262 = fmul fast float %8259, %8261
  %8263 = fsub fast float %8246, %8262
  %8264 = fsub fast float %8240, %8259
  %8265 = select i1 %8255, float %8264, float 0.000000e+00
  %8266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.f32 %8266, 0
  %8268 = extractvalue %dx.types.CBufRet.f32 %8266, 1
  %8269 = extractvalue %dx.types.CBufRet.f32 %8266, 2
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 0
  %8272 = extractvalue %dx.types.CBufRet.f32 %8270, 1
  %8273 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8274 = extractvalue %dx.types.CBufRet.f32 %8270, 3
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 3
  %8277 = call float @dx.op.binary.f32(i32 36, float %8263, float %8276)  ; FMin(a,b)
  %8278 = fmul fast float %8274, %8265
  %8279 = call float @dx.op.unary.f32(i32 7, float %8278)  ; Saturate(value)
  %8280 = fsub fast float %8271, %8267
  %8281 = fsub fast float %8272, %8268
  %8282 = fsub fast float %8273, %8269
  %8283 = fmul fast float %8279, %8280
  %8284 = fmul fast float %8279, %8281
  %8285 = fmul fast float %8279, %8282
  %8286 = fadd fast float %8283, %8267
  %8287 = fadd fast float %8284, %8268
  %8288 = fadd fast float %8285, %8269
  %8289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8290 = extractvalue %dx.types.CBufRet.f32 %8289, 0
  %8291 = extractvalue %dx.types.CBufRet.f32 %8289, 1
  %8292 = fadd fast float %8291, %8290
  %8293 = call float @dx.op.unary.f32(i32 7, float %8292)  ; Saturate(value)
  %8294 = extractvalue %dx.types.CBufRet.f32 %8289, 2
  %8295 = extractvalue %dx.types.CBufRet.f32 %8289, 3
  %8296 = fadd fast float %8295, %8294
  %8297 = call float @dx.op.unary.f32(i32 7, float %8296)  ; Saturate(value)
  %8298 = fmul fast float %8293, %8277
  %8299 = fmul fast float %8298, %8297
  br label %8541

; <label>:8300                                    ; preds = %8254
  br i1 %8255, label %8301, label %8322

; <label>:8301                                    ; preds = %8300
  %8302 = call float @dx.op.binary.f32(i32 36, float %8251, float %8241)  ; FMin(a,b)
  %8303 = fsub fast float %8251, %8302
  %8304 = fsub fast float %8303, %8240
  %8305 = call float @dx.op.unary.f32(i32 6, float %8304)  ; FAbs(value)
  %8306 = fadd fast float %8303, %8240
  %8307 = fmul fast float %8306, %8171
  %8308 = fadd fast float %8307, %8184
  %8309 = fmul fast float %8308, %8305
  %8310 = fsub fast float %8246, %8309
  br label %8322

; <label>:8311                                    ; preds = %8239
  br i1 %8253, label %8312, label %8322

; <label>:8312                                    ; preds = %8311
  %8313 = call float @dx.op.binary.f32(i32 35, float %8241, float %8251)  ; FMax(a,b)
  %8314 = icmp eq i32 %8190, 0
  %8315 = select i1 %8314, float %8251, float 0.000000e+00
  %8316 = fsub fast float -0.000000e+00, %8315
  %8317 = call float @dx.op.unary.f32(i32 6, float %8316)  ; FAbs(value)
  %8318 = fmul fast float %8315, %8171
  %8319 = fadd fast float %8318, %8184
  %8320 = fmul fast float %8317, %8319
  %8321 = fsub fast float %8246, %8320
  br label %8322

; <label>:8322                                    ; preds = %8312, %8311, %8301, %8300
  %8323 = phi float [ %8241, %8300 ], [ %8241, %8301 ], [ %8313, %8312 ], [ %8241, %8311 ]
  %8324 = phi float [ 0.000000e+00, %8300 ], [ %8305, %8301 ], [ %8317, %8312 ], [ 0.000000e+00, %8311 ]
  %8325 = phi float [ %8246, %8300 ], [ %8310, %8301 ], [ %8321, %8312 ], [ %8246, %8311 ]
  %8326 = phi float [ %8251, %8300 ], [ %8251, %8301 ], [ %8240, %8312 ], [ %8240, %8311 ]
  %8327 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8327, align 4, !tbaa !114, !noalias !126
  %8328 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8328, align 4, !tbaa !114, !noalias !126
  %8329 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8329, align 4, !tbaa !114, !noalias !126
  %8330 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8330, align 4, !tbaa !114, !noalias !126
  %8331 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8331, align 4, !tbaa !114, !noalias !126
  %8332 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8332, align 4, !tbaa !114, !noalias !126
  %8333 = icmp sgt i32 %8192, 0
  br i1 %8333, label %8334, label %8395

; <label>:8334                                    ; preds = %8322
  br label %8335

; <label>:8335                                    ; preds = %8384, %8334
  %8336 = phi i32 [ %8385, %8384 ], [ 0, %8334 ]
  %8337 = phi i32 [ %8386, %8384 ], [ 0, %8334 ]
  %8338 = add nuw i32 %8337, 171
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8338)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 0
  %8341 = extractvalue %dx.types.CBufRet.f32 %8339, 1
  %8342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8343 = extractvalue %dx.types.CBufRet.f32 %8342, 0
  %8344 = extractvalue %dx.types.CBufRet.f32 %8342, 1
  %8345 = fsub fast float %8340, %8343
  %8346 = fsub fast float %8341, %8344
  %8347 = extractvalue %dx.types.CBufRet.f32 %8339, 2
  %8348 = fsub fast float -0.000000e+00, %8345
  %8349 = fsub fast float -0.000000e+00, %8346
  %8350 = call float @dx.op.dot2.f32(i32 54, float %8169, float %8170, float %8348, float %8349)  ; Dot2(ax,ay,bx,by)
  %8351 = fmul fast float %8350, 2.000000e+00
  %8352 = call float @dx.op.dot2.f32(i32 54, float %8348, float %8349, float %8348, float %8349)  ; Dot2(ax,ay,bx,by)
  %8353 = fmul fast float %8347, %8347
  %8354 = fsub fast float %8352, %8353
  %8355 = fmul fast float %8351, %8351
  %8356 = fmul fast float %8212, %8354
  %8357 = fsub fast float %8355, %8356
  %8358 = fcmp fast ogt float %8357, 0.000000e+00
  br i1 %8358, label %8359, label %8374

; <label>:8359                                    ; preds = %8335
  %8360 = fcmp fast ogt float %8351, 0.000000e+00
  %8361 = call float @dx.op.unary.f32(i32 24, float %8357)  ; Sqrt(value)
  %8362 = fsub fast float -0.000000e+00, %8361
  %8363 = select i1 %8360, float %8361, float %8362
  %8364 = fadd fast float %8363, %8351
  %8365 = fmul float %8364, -5.000000e-01
  %8366 = fdiv fast float %8365, %8205
  %8367 = call float @dx.op.binary.f32(i32 35, float %8366, float 0.000000e+00)  ; FMax(a,b)
  %8368 = call float @dx.op.binary.f32(i32 36, float %8240, float %8367)  ; FMin(a,b)
  %8369 = fdiv fast float %8354, %8365
  %8370 = call float @dx.op.binary.f32(i32 35, float %8369, float 0.000000e+00)  ; FMax(a,b)
  %8371 = call float @dx.op.binary.f32(i32 36, float %8240, float %8370)  ; FMin(a,b)
  %8372 = call float @dx.op.binary.f32(i32 36, float %8368, float %8371)  ; FMin(a,b)
  %8373 = call float @dx.op.binary.f32(i32 35, float %8368, float %8371)  ; FMax(a,b)
  br label %8374

; <label>:8374                                    ; preds = %8359, %8335
  %8375 = phi float [ %8373, %8359 ], [ -1.000000e+00, %8335 ]
  %8376 = phi float [ %8372, %8359 ], [ -1.000000e+00, %8335 ]
  %8377 = phi i1 [ true, %8359 ], [ false, %8335 ]
  br i1 %8377, label %8378, label %8384

; <label>:8378                                    ; preds = %8374
  %8379 = call float @dx.op.binary.f32(i32 35, float %8323, float %8376)  ; FMax(a,b)
  %8380 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8337
  store float %8379, float* %8380, align 4, !tbaa !114, !noalias !126
  %8381 = call float @dx.op.binary.f32(i32 35, float %8323, float %8375)  ; FMax(a,b)
  %8382 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8337
  store float %8381, float* %8382, align 4, !tbaa !114, !noalias !126
  %8383 = add nsw i32 %8336, 1
  br label %8384

; <label>:8384                                    ; preds = %8378, %8374
  %8385 = phi i32 [ %8383, %8378 ], [ %8336, %8374 ]
  %8386 = add nuw nsw i32 %8337, 1
  %8387 = icmp eq i32 %8386, %8192
  br i1 %8387, label %8388, label %8335

; <label>:8388                                    ; preds = %8384
  %8389 = load float, float* %8329, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8390 = load float, float* %8328, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %8391 = load float, float* %8327, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %8392 = load float, float* %8332, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8393 = load float, float* %8331, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %8394 = load float, float* %8330, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %8395

; <label>:8395                                    ; preds = %8388, %8322
  %8396 = phi float [ -1.000000e+00, %8322 ], [ %8394, %8388 ]
  %8397 = phi float [ -1.000000e+00, %8322 ], [ %8393, %8388 ]
  %8398 = phi float [ -1.000000e+00, %8322 ], [ %8392, %8388 ]
  %8399 = phi float [ -1.000000e+00, %8322 ], [ %8391, %8388 ]
  %8400 = phi float [ -1.000000e+00, %8322 ], [ %8390, %8388 ]
  %8401 = phi float [ -1.000000e+00, %8322 ], [ %8389, %8388 ]
  %8402 = phi i32 [ 0, %8322 ], [ %8385, %8388 ]
  %8403 = call float @dx.op.binary.f32(i32 36, float %8400, float %8401)  ; FMin(a,b)
  %8404 = call float @dx.op.binary.f32(i32 36, float %8399, float %8403)  ; FMin(a,b)
  %8405 = call float @dx.op.binary.f32(i32 35, float %8399, float %8400)  ; FMax(a,b)
  %8406 = call float @dx.op.binary.f32(i32 36, float %8405, float %8401)  ; FMin(a,b)
  %8407 = call float @dx.op.binary.f32(i32 36, float %8399, float %8400)  ; FMin(a,b)
  %8408 = call float @dx.op.binary.f32(i32 35, float %8407, float %8406)  ; FMax(a,b)
  %8409 = call float @dx.op.binary.f32(i32 35, float %8400, float %8401)  ; FMax(a,b)
  %8410 = call float @dx.op.binary.f32(i32 35, float %8399, float %8409)  ; FMax(a,b)
  store float %8404, float* %8327, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %8408, float* %8328, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %8410, float* %8329, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8411 = call float @dx.op.binary.f32(i32 36, float %8397, float %8398)  ; FMin(a,b)
  %8412 = call float @dx.op.binary.f32(i32 36, float %8396, float %8411)  ; FMin(a,b)
  %8413 = call float @dx.op.binary.f32(i32 35, float %8396, float %8397)  ; FMax(a,b)
  %8414 = call float @dx.op.binary.f32(i32 36, float %8413, float %8398)  ; FMin(a,b)
  %8415 = call float @dx.op.binary.f32(i32 36, float %8396, float %8397)  ; FMin(a,b)
  %8416 = call float @dx.op.binary.f32(i32 35, float %8415, float %8414)  ; FMax(a,b)
  %8417 = call float @dx.op.binary.f32(i32 35, float %8397, float %8398)  ; FMax(a,b)
  %8418 = call float @dx.op.binary.f32(i32 35, float %8396, float %8417)  ; FMax(a,b)
  store float %8412, float* %8330, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %8416, float* %8331, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %8418, float* %8332, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8419 = sub nsw i32 3, %8402
  %8420 = icmp sgt i32 %8419, 2
  br i1 %8420, label %8421, label %8459

; <label>:8421                                    ; preds = %8395
  %8422 = icmp eq i32 %8190, 0
  %8423 = fsub fast float %8240, %8324
  %8424 = select i1 %8422, float %8423, float %8324
  %8425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8426 = extractvalue %dx.types.CBufRet.f32 %8425, 0
  %8427 = extractvalue %dx.types.CBufRet.f32 %8425, 1
  %8428 = extractvalue %dx.types.CBufRet.f32 %8425, 2
  %8429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8430 = extractvalue %dx.types.CBufRet.f32 %8429, 0
  %8431 = extractvalue %dx.types.CBufRet.f32 %8429, 1
  %8432 = extractvalue %dx.types.CBufRet.f32 %8429, 2
  %8433 = extractvalue %dx.types.CBufRet.f32 %8429, 3
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 3
  %8436 = call float @dx.op.binary.f32(i32 36, float %8325, float %8435)  ; FMin(a,b)
  %8437 = fmul fast float %8433, %8424
  %8438 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  %8439 = fsub fast float %8430, %8426
  %8440 = fsub fast float %8431, %8427
  %8441 = fsub fast float %8432, %8428
  %8442 = fmul fast float %8438, %8439
  %8443 = fmul fast float %8438, %8440
  %8444 = fmul fast float %8438, %8441
  %8445 = fadd fast float %8442, %8426
  %8446 = fadd fast float %8443, %8427
  %8447 = fadd fast float %8444, %8428
  %8448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8448, 0
  %8450 = extractvalue %dx.types.CBufRet.f32 %8448, 1
  %8451 = fadd fast float %8450, %8449
  %8452 = call float @dx.op.unary.f32(i32 7, float %8451)  ; Saturate(value)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8448, 2
  %8454 = extractvalue %dx.types.CBufRet.f32 %8448, 3
  %8455 = fadd fast float %8454, %8453
  %8456 = call float @dx.op.unary.f32(i32 7, float %8455)  ; Saturate(value)
  %8457 = fmul fast float %8452, %8436
  %8458 = fmul fast float %8457, %8456
  br label %8541

; <label>:8459                                    ; preds = %8395
  %8460 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8419
  %8461 = load float, float* %8460, align 4, !tbaa !114, !noalias !126
  %8462 = fcmp fast olt float %8461, %8326
  %8463 = icmp sgt i32 %8402, 0
  %8464 = and i1 %8463, %8462
  br i1 %8464, label %8465, label %8502

; <label>:8465                                    ; preds = %8459
  br label %8466

; <label>:8466                                    ; preds = %8495, %8465
  %8467 = phi float [ %8496, %8495 ], [ %8324, %8465 ]
  %8468 = phi float [ %8497, %8495 ], [ %8325, %8465 ]
  %8469 = phi float [ %8477, %8495 ], [ %8461, %8465 ]
  %8470 = phi i32 [ %8474, %8495 ], [ %8419, %8465 ]
  %8471 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8470
  %8472 = load float, float* %8471, align 4, !tbaa !114, !noalias !126
  %8473 = icmp slt i32 %8470, 2
  %8474 = add nsw i32 %8470, 1
  %8475 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8474
  %8476 = load float, float* %8475, align 4, !tbaa !114, !noalias !126
  %8477 = select i1 %8473, float %8476, float %8240
  %8478 = call float @dx.op.binary.f32(i32 36, float %8477, float %8472)  ; FMin(a,b)
  %8479 = call float @dx.op.binary.f32(i32 36, float %8326, float %8478)  ; FMin(a,b)
  %8480 = icmp eq i32 %8190, 0
  %8481 = fadd fast float %8479, %8469
  %8482 = fmul fast float %8481, %8171
  %8483 = fadd fast float %8482, %8184
  br i1 %8480, label %8489, label %8484

; <label>:8484                                    ; preds = %8466
  %8485 = fsub fast float %8479, %8469
  %8486 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8485)  ; FMax(a,b)
  %8487 = fmul fast float %8486, %8483
  %8488 = fadd fast float %8487, %8468
  br label %8495

; <label>:8489                                    ; preds = %8466
  %8490 = fsub fast float %8469, %8479
  %8491 = call float @dx.op.unary.f32(i32 6, float %8490)  ; FAbs(value)
  %8492 = fadd fast float %8491, %8467
  %8493 = fmul fast float %8491, %8483
  %8494 = fsub fast float %8468, %8493
  br label %8495

; <label>:8495                                    ; preds = %8489, %8484
  %8496 = phi float [ %8486, %8484 ], [ %8492, %8489 ]
  %8497 = phi float [ %8488, %8484 ], [ %8494, %8489 ]
  %8498 = fcmp fast olt float %8477, %8326
  %8499 = icmp slt i32 %8474, 3
  %8500 = and i1 %8499, %8498
  br i1 %8500, label %8466, label %8501

; <label>:8501                                    ; preds = %8495
  br label %8502

; <label>:8502                                    ; preds = %8501, %8459
  %8503 = phi float [ %8324, %8459 ], [ %8496, %8501 ]
  %8504 = phi float [ %8325, %8459 ], [ %8497, %8501 ]
  %8505 = fsub fast float %8240, %8503
  %8506 = select i1 %8242, float %8503, float %8505
  %8507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8508 = extractvalue %dx.types.CBufRet.f32 %8507, 0
  %8509 = extractvalue %dx.types.CBufRet.f32 %8507, 1
  %8510 = extractvalue %dx.types.CBufRet.f32 %8507, 2
  %8511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8512 = extractvalue %dx.types.CBufRet.f32 %8511, 0
  %8513 = extractvalue %dx.types.CBufRet.f32 %8511, 1
  %8514 = extractvalue %dx.types.CBufRet.f32 %8511, 2
  %8515 = extractvalue %dx.types.CBufRet.f32 %8511, 3
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8518 = call float @dx.op.binary.f32(i32 36, float %8504, float %8517)  ; FMin(a,b)
  %8519 = fmul fast float %8515, %8506
  %8520 = call float @dx.op.unary.f32(i32 7, float %8519)  ; Saturate(value)
  %8521 = fsub fast float %8512, %8508
  %8522 = fsub fast float %8513, %8509
  %8523 = fsub fast float %8514, %8510
  %8524 = fmul fast float %8520, %8521
  %8525 = fmul fast float %8520, %8522
  %8526 = fmul fast float %8520, %8523
  %8527 = fadd fast float %8524, %8508
  %8528 = fadd fast float %8525, %8509
  %8529 = fadd fast float %8526, %8510
  %8530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8530, 0
  %8532 = extractvalue %dx.types.CBufRet.f32 %8530, 1
  %8533 = fadd fast float %8532, %8531
  %8534 = call float @dx.op.unary.f32(i32 7, float %8533)  ; Saturate(value)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8530, 2
  %8536 = extractvalue %dx.types.CBufRet.f32 %8530, 3
  %8537 = fadd fast float %8536, %8535
  %8538 = call float @dx.op.unary.f32(i32 7, float %8537)  ; Saturate(value)
  %8539 = fmul fast float %8534, %8518
  %8540 = fmul fast float %8539, %8538
  br label %8541

; <label>:8541                                    ; preds = %8502, %8421, %8256, %8238, %8236
  %8542 = phi float [ %8265, %8256 ], [ %8424, %8421 ], [ %8506, %8502 ], [ 0.000000e+00, %8236 ], [ 0.000000e+00, %8238 ]
  %8543 = phi float [ %8299, %8256 ], [ %8458, %8421 ], [ %8540, %8502 ], [ 0.000000e+00, %8236 ], [ 0.000000e+00, %8238 ]
  %8544 = phi float [ %8286, %8256 ], [ %8445, %8421 ], [ %8527, %8502 ], [ 0.000000e+00, %8236 ], [ 0.000000e+00, %8238 ]
  %8545 = phi float [ %8287, %8256 ], [ %8446, %8421 ], [ %8528, %8502 ], [ 0.000000e+00, %8236 ], [ 0.000000e+00, %8238 ]
  %8546 = phi float [ %8288, %8256 ], [ %8447, %8421 ], [ %8529, %8502 ], [ 0.000000e+00, %8236 ], [ 0.000000e+00, %8238 ]
  %8547 = fmul fast float %8179, %8543
  %8548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.f32 %8548, 2
  %8550 = fsub fast float %8186, %8549
  %8551 = fcmp fast olt float %8547, -2.000000e+01
  %8552 = call float @dx.op.unary.f32(i32 21, float %8547)  ; Exp(value)
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 2
  %8555 = extractvalue %dx.types.CBufRet.f32 %8553, 3
  %8556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8557 = extractvalue %dx.types.CBufRet.f32 %8556, 2
  %8558 = fmul fast float %8555, %8550
  %8559 = call float @dx.op.unary.f32(i32 7, float %8558)  ; Saturate(value)
  %8560 = fsub fast float 1.000000e+00, %8559
  %8561 = fmul fast float %8171, 5.000000e-01
  %8562 = fadd fast float %8561, 5.000000e-01
  %8563 = call float @dx.op.unary.f32(i32 7, float %8562)  ; Saturate(value)
  %8564 = fsub fast float 1.000000e+00, %8563
  %8565 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8560)  ; FMax(a,b)
  %8566 = fdiv fast float %8564, %8565
  %8567 = fsub fast float %8550, %8128
  %8568 = call float @dx.op.unary.f32(i32 6, float %8567)  ; FAbs(value)
  %8569 = fmul fast float %8568, %8554
  %8570 = call float @dx.op.unary.f32(i32 7, float %8566)  ; Saturate(value)
  %8571 = fsub fast float 1.000000e+00, %8569
  %8572 = fmul fast float %8571, %8570
  %8573 = fadd fast float %8572, %8569
  %8574 = fmul fast float %8557, %8550
  %8575 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8576 = fsub fast float 1.000000e+00, %8573
  %8577 = fmul fast float %8576, %8575
  %8578 = fadd fast float %8577, %8573
  %8579 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8580 = fadd fast float %8552, -1.000000e+00
  %8581 = select i1 %8551, float -1.000000e+00, float %8580
  %8582 = fmul fast float %8579, %8581
  %8583 = fadd fast float %8582, 1.000000e+00
  %8584 = fsub fast float -0.000000e+00, %8582
  %8585 = fmul fast float %8544, %8584
  %8586 = fmul fast float %8545, %8584
  %8587 = fmul fast float %8546, %8584
  br label %8588

; <label>:8588                                    ; preds = %8541, %8137
  %8589 = phi float [ %8542, %8541 ], [ 0.000000e+00, %8137 ]
  %8590 = phi float [ %8583, %8541 ], [ 1.000000e+00, %8137 ]
  %8591 = phi float [ %8585, %8541 ], [ 0.000000e+00, %8137 ]
  %8592 = phi float [ %8586, %8541 ], [ 0.000000e+00, %8137 ]
  %8593 = phi float [ %8587, %8541 ], [ 0.000000e+00, %8137 ]
  %8594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8595 = extractvalue %dx.types.CBufRet.f32 %8594, 1
  %8596 = fsub fast float 1.000000e+00, %8590
  %8597 = fmul fast float %8596, %8172
  %8598 = fmul fast float %8597, %8595
  %8599 = fsub fast float %8172, %8598
  br i1 %8165, label %8600, label %8629, !dx.controlflow.hints !162

; <label>:8600                                    ; preds = %8588
  %8601 = fmul fast float %8173, %8162
  %8602 = fadd fast float %8601, %8163
  %8603 = call float @dx.op.unary.f32(i32 7, float %8602)  ; Saturate(value)
  %8604 = fmul fast float %8144, %8599
  %8605 = fsub fast float -0.000000e+00, %8604
  %8606 = fmul fast float %8145, %8599
  %8607 = fsub fast float -0.000000e+00, %8606
  %8608 = call float @dx.op.unary.f32(i32 21, float %8605)  ; Exp(value)
  %8609 = call float @dx.op.unary.f32(i32 21, float %8607)  ; Exp(value)
  %8610 = call float @dx.op.binary.f32(i32 35, float %8152, float %8608)  ; FMax(a,b)
  %8611 = call float @dx.op.binary.f32(i32 35, float %8152, float %8609)  ; FMax(a,b)
  %8612 = fsub fast float %8611, %8610
  %8613 = fmul fast float %8612, %8603
  %8614 = fadd fast float %8613, %8610
  %8615 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8616 = fsub fast float %8149, %8154
  %8617 = fsub fast float %8150, %8155
  %8618 = fsub fast float %8151, %8156
  %8619 = fmul fast float %8603, %8616
  %8620 = fmul fast float %8603, %8617
  %8621 = fmul fast float %8603, %8618
  %8622 = fadd fast float %8619, %8154
  %8623 = fadd fast float %8620, %8155
  %8624 = fadd fast float %8621, %8156
  %8625 = fsub fast float 1.000000e+00, %8615
  %8626 = fmul fast float %8625, %8622
  %8627 = fmul fast float %8625, %8623
  %8628 = fmul fast float %8625, %8624
  br label %8688

; <label>:8629                                    ; preds = %8588
  %8630 = fmul fast float %8599, %8161
  %8631 = call float @dx.op.unary.f32(i32 7, float %8630)  ; Saturate(value)
  %8632 = fsub fast float 2.000000e+00, %8631
  %8633 = fmul fast float %8631, 9.921875e-01
  %8634 = fmul fast float %8633, %8632
  %8635 = fadd fast float %8634, 3.906250e-03
  %8636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8635, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8637 = extractvalue %dx.types.ResRet.f32 %8636, 0
  %8638 = fsub fast float %8631, %8637
  %8639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8638)  ; FMax(a,b)
  %8640 = fmul fast float %8147, %8128
  %8641 = call float @dx.op.unary.f32(i32 6, float %8640)  ; FAbs(value)
  %8642 = fcmp fast ogt float %8641, 0x3EB0C6F7A0000000
  br i1 %8642, label %8643, label %8649, !dx.controlflow.hints !163

; <label>:8643                                    ; preds = %8629
  %8644 = fmul fast float %8640, 0xBFF7154760000000
  %8645 = call float @dx.op.unary.f32(i32 21, float %8644)  ; Exp(value)
  %8646 = fsub fast float 1.000000e+00, %8645
  %8647 = fdiv fast float %8646, %8640
  %8648 = fmul fast float %8647, %8157
  br label %8649

; <label>:8649                                    ; preds = %8643, %8629
  %8650 = phi float [ %8648, %8643 ], [ %8157, %8629 ]
  %8651 = fadd fast float %8650, %8159
  %8652 = fmul fast float %8651, %8639
  %8653 = fmul fast float %8144, %8652
  %8654 = fsub fast float -0.000000e+00, %8653
  %8655 = fmul fast float %8145, %8652
  %8656 = fsub fast float -0.000000e+00, %8655
  %8657 = fmul fast float %8146, %8652
  %8658 = fsub fast float -0.000000e+00, %8657
  %8659 = call float @dx.op.unary.f32(i32 21, float %8654)  ; Exp(value)
  %8660 = call float @dx.op.unary.f32(i32 21, float %8656)  ; Exp(value)
  %8661 = call float @dx.op.unary.f32(i32 21, float %8658)  ; Exp(value)
  %8662 = fmul fast float %8173, %8173
  %8663 = fadd fast float %8662, 1.000000e+00
  %8664 = fmul fast float %8663, 0x3FAE8EC8A0000000
  %8665 = fmul fast float %8664, %8154
  %8666 = fmul fast float %8664, %8155
  %8667 = fmul fast float %8664, %8156
  %8668 = fmul fast float %8173, %8152
  %8669 = fsub fast float 1.000000e+00, %8668
  %8670 = fmul fast float %8152, %8152
  %8671 = fsub fast float 1.000000e+00, %8670
  %8672 = fmul fast float %8671, 0x3FB45F3060000000
  %8673 = fmul fast float %8669, %8669
  %8674 = fdiv fast float 1.000000e+00, %8673
  %8675 = fmul fast float %8672, %8674
  %8676 = fmul fast float %8675, %8149
  %8677 = fmul fast float %8675, %8150
  %8678 = fmul fast float %8675, %8151
  %8679 = fadd fast float %8676, %8665
  %8680 = fadd fast float %8677, %8666
  %8681 = fadd fast float %8678, %8667
  %8682 = fsub fast float 1.000000e+00, %8659
  %8683 = fsub fast float 1.000000e+00, %8660
  %8684 = fsub fast float 1.000000e+00, %8661
  %8685 = fmul fast float %8679, %8682
  %8686 = fmul fast float %8680, %8683
  %8687 = fmul fast float %8681, %8684
  br label %8688

; <label>:8688                                    ; preds = %8649, %8600
  %8689 = phi float [ %8626, %8600 ], [ %8685, %8649 ]
  %8690 = phi float [ %8627, %8600 ], [ %8686, %8649 ]
  %8691 = phi float [ %8628, %8600 ], [ %8687, %8649 ]
  %8692 = phi float [ %8615, %8600 ], [ %8659, %8649 ]
  %8693 = phi float [ %8615, %8600 ], [ %8660, %8649 ]
  %8694 = phi float [ %8615, %8600 ], [ %8661, %8649 ]
  br i1 %8181, label %8695, label %8893, !dx.controlflow.hints !164

; <label>:8695                                    ; preds = %8688
  %8696 = extractvalue %dx.types.CBufRet.f32 %8594, 0
  %8697 = fmul fast float %8696, %8596
  %8698 = fsub fast float %8591, %8689
  %8699 = fsub fast float %8592, %8690
  %8700 = fsub fast float %8593, %8691
  %8701 = fmul fast float %8697, %8698
  %8702 = fmul fast float %8697, %8699
  %8703 = fmul fast float %8697, %8700
  %8704 = fadd fast float %8701, %8689
  %8705 = fadd fast float %8702, %8690
  %8706 = fadd fast float %8703, %8691
  %8707 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8692)  ; FMax(a,b)
  %8708 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8693)  ; FMax(a,b)
  %8709 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8694)  ; FMax(a,b)
  %8710 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8590)  ; FMax(a,b)
  %8711 = call float @dx.op.binary.f32(i32 35, float %8589, float %8599)  ; FMax(a,b)
  %8712 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8711)  ; FMax(a,b)
  %8713 = fdiv fast float %8589, %8712
  %8714 = call float @dx.op.unary.f32(i32 7, float %8713)  ; Saturate(value)
  %8715 = fdiv fast float %8599, %8712
  %8716 = call float @dx.op.unary.f32(i32 7, float %8715)  ; Saturate(value)
  %8717 = fcmp fast une float %8710, 1.000000e+00
  br i1 %8717, label %8718, label %8731, !dx.controlflow.hints !165

; <label>:8718                                    ; preds = %8695
  %8719 = call float @dx.op.unary.f32(i32 23, float %8710)  ; Log(value)
  %8720 = fmul fast float %8719, 0x3FE62E4300000000
  %8721 = fmul fast float %8591, %8720
  %8722 = fsub fast float -0.000000e+00, %8721
  %8723 = fmul fast float %8592, %8720
  %8724 = fsub fast float -0.000000e+00, %8723
  %8725 = fmul fast float %8593, %8720
  %8726 = fsub fast float -0.000000e+00, %8725
  %8727 = fsub fast float 1.000000e+00, %8710
  %8728 = fdiv fast float %8722, %8727
  %8729 = fdiv fast float %8724, %8727
  %8730 = fdiv fast float %8726, %8727
  br label %8731

; <label>:8731                                    ; preds = %8718, %8695
  %8732 = phi float [ %8728, %8718 ], [ %8591, %8695 ]
  %8733 = phi float [ %8729, %8718 ], [ %8592, %8695 ]
  %8734 = phi float [ %8730, %8718 ], [ %8593, %8695 ]
  %8735 = phi float [ %8720, %8718 ], [ 0.000000e+00, %8695 ]
  %8736 = fcmp fast une float %8707, 1.000000e+00
  br i1 %8736, label %8737, label %8744, !dx.controlflow.hints !166

; <label>:8737                                    ; preds = %8731
  %8738 = call float @dx.op.unary.f32(i32 23, float %8707)  ; Log(value)
  %8739 = fmul fast float %8738, 0x3FE62E4300000000
  %8740 = fmul fast float %8704, %8739
  %8741 = fsub fast float -0.000000e+00, %8740
  %8742 = fsub fast float 1.000000e+00, %8707
  %8743 = fdiv fast float %8741, %8742
  br label %8744

; <label>:8744                                    ; preds = %8737, %8731
  %8745 = phi float [ %8743, %8737 ], [ %8704, %8731 ]
  %8746 = phi float [ %8739, %8737 ], [ 0.000000e+00, %8731 ]
  %8747 = fcmp fast une float %8708, 1.000000e+00
  br i1 %8747, label %8748, label %8755, !dx.controlflow.hints !166

; <label>:8748                                    ; preds = %8744
  %8749 = call float @dx.op.unary.f32(i32 23, float %8708)  ; Log(value)
  %8750 = fmul fast float %8749, 0x3FE62E4300000000
  %8751 = fmul fast float %8705, %8750
  %8752 = fsub fast float -0.000000e+00, %8751
  %8753 = fsub fast float 1.000000e+00, %8708
  %8754 = fdiv fast float %8752, %8753
  br label %8755

; <label>:8755                                    ; preds = %8748, %8744
  %8756 = phi float [ %8754, %8748 ], [ %8705, %8744 ]
  %8757 = phi float [ %8750, %8748 ], [ 0.000000e+00, %8744 ]
  %8758 = fcmp fast une float %8709, 1.000000e+00
  br i1 %8758, label %8759, label %8766, !dx.controlflow.hints !166

; <label>:8759                                    ; preds = %8755
  %8760 = call float @dx.op.unary.f32(i32 23, float %8709)  ; Log(value)
  %8761 = fmul fast float %8760, 0x3FE62E4300000000
  %8762 = fmul fast float %8706, %8761
  %8763 = fsub fast float -0.000000e+00, %8762
  %8764 = fsub fast float 1.000000e+00, %8709
  %8765 = fdiv fast float %8763, %8764
  br label %8766

; <label>:8766                                    ; preds = %8759, %8755
  %8767 = phi float [ %8765, %8759 ], [ %8706, %8755 ]
  %8768 = phi float [ %8761, %8759 ], [ 0.000000e+00, %8755 ]
  %8769 = fmul fast float %8732, %8716
  %8770 = fmul fast float %8733, %8716
  %8771 = fmul fast float %8734, %8716
  %8772 = fmul fast float %8735, %8716
  %8773 = fmul fast float %8745, %8714
  %8774 = fmul fast float %8756, %8714
  %8775 = fmul fast float %8767, %8714
  %8776 = fmul fast float %8746, %8714
  %8777 = fmul fast float %8757, %8714
  %8778 = fmul fast float %8768, %8714
  %8779 = fadd fast float %8773, %8769
  %8780 = fadd fast float %8774, %8770
  %8781 = fadd fast float %8775, %8771
  %8782 = fadd fast float %8776, %8772
  %8783 = fadd fast float %8777, %8772
  %8784 = fadd fast float %8778, %8772
  %8785 = fcmp fast une float %8782, 0.000000e+00
  br i1 %8785, label %8786, label %8793, !dx.controlflow.hints !167

; <label>:8786                                    ; preds = %8766
  %8787 = fmul fast float %8782, 0x3FF7154760000000
  %8788 = call float @dx.op.unary.f32(i32 21, float %8787)  ; Exp(value)
  %8789 = fsub fast float 1.000000e+00, %8788
  %8790 = fmul fast float %8779, %8789
  %8791 = fsub fast float -0.000000e+00, %8790
  %8792 = fdiv fast float %8791, %8782
  br label %8793

; <label>:8793                                    ; preds = %8786, %8766
  %8794 = phi float [ %8788, %8786 ], [ 1.000000e+00, %8766 ]
  %8795 = phi float [ %8792, %8786 ], [ %8779, %8766 ]
  %8796 = fcmp fast une float %8783, 0.000000e+00
  br i1 %8796, label %8797, label %8804, !dx.controlflow.hints !167

; <label>:8797                                    ; preds = %8793
  %8798 = fmul fast float %8783, 0x3FF7154760000000
  %8799 = call float @dx.op.unary.f32(i32 21, float %8798)  ; Exp(value)
  %8800 = fsub fast float 1.000000e+00, %8799
  %8801 = fmul fast float %8780, %8800
  %8802 = fsub fast float -0.000000e+00, %8801
  %8803 = fdiv fast float %8802, %8783
  br label %8804

; <label>:8804                                    ; preds = %8797, %8793
  %8805 = phi float [ %8799, %8797 ], [ 1.000000e+00, %8793 ]
  %8806 = phi float [ %8803, %8797 ], [ %8780, %8793 ]
  %8807 = fcmp fast une float %8784, 0.000000e+00
  br i1 %8807, label %8808, label %8815, !dx.controlflow.hints !167

; <label>:8808                                    ; preds = %8804
  %8809 = fmul fast float %8784, 0x3FF7154760000000
  %8810 = call float @dx.op.unary.f32(i32 21, float %8809)  ; Exp(value)
  %8811 = fsub fast float 1.000000e+00, %8810
  %8812 = fmul fast float %8781, %8811
  %8813 = fsub fast float -0.000000e+00, %8812
  %8814 = fdiv fast float %8813, %8784
  br label %8815

; <label>:8815                                    ; preds = %8808, %8804
  %8816 = phi float [ %8810, %8808 ], [ 1.000000e+00, %8804 ]
  %8817 = phi float [ %8814, %8808 ], [ %8781, %8804 ]
  %8818 = fcmp fast ogt float %8714, %8716
  br i1 %8818, label %8819, label %8839

; <label>:8819                                    ; preds = %8815
  %8820 = fsub fast float 1.000000e+00, %8716
  %8821 = fmul fast float %8732, %8820
  %8822 = fmul fast float %8733, %8820
  %8823 = fmul fast float %8734, %8820
  %8824 = fmul fast float %8735, %8820
  %8825 = fcmp fast une float %8824, 0.000000e+00
  br i1 %8825, label %8826, label %8877, !dx.controlflow.hints !168

; <label>:8826                                    ; preds = %8819
  %8827 = fmul fast float %8824, 0x3FF7154760000000
  %8828 = call float @dx.op.unary.f32(i32 21, float %8827)  ; Exp(value)
  %8829 = fsub fast float 1.000000e+00, %8828
  %8830 = fmul fast float %8821, %8829
  %8831 = fsub fast float -0.000000e+00, %8830
  %8832 = fmul fast float %8822, %8829
  %8833 = fsub fast float -0.000000e+00, %8832
  %8834 = fmul fast float %8823, %8829
  %8835 = fsub fast float -0.000000e+00, %8834
  %8836 = fdiv fast float %8831, %8824
  %8837 = fdiv fast float %8833, %8824
  %8838 = fdiv fast float %8835, %8824
  br label %8877

; <label>:8839                                    ; preds = %8815
  %8840 = fsub fast float 1.000000e+00, %8714
  %8841 = fmul fast float %8745, %8840
  %8842 = fmul fast float %8756, %8840
  %8843 = fmul fast float %8767, %8840
  %8844 = fmul fast float %8746, %8840
  %8845 = fmul fast float %8757, %8840
  %8846 = fmul fast float %8768, %8840
  %8847 = fcmp fast une float %8844, 0.000000e+00
  br i1 %8847, label %8848, label %8855, !dx.controlflow.hints !167

; <label>:8848                                    ; preds = %8839
  %8849 = fmul fast float %8844, 0x3FF7154760000000
  %8850 = call float @dx.op.unary.f32(i32 21, float %8849)  ; Exp(value)
  %8851 = fsub fast float 1.000000e+00, %8850
  %8852 = fmul fast float %8841, %8851
  %8853 = fsub fast float -0.000000e+00, %8852
  %8854 = fdiv fast float %8853, %8844
  br label %8855

; <label>:8855                                    ; preds = %8848, %8839
  %8856 = phi float [ %8854, %8848 ], [ %8841, %8839 ]
  %8857 = phi float [ %8850, %8848 ], [ 1.000000e+00, %8839 ]
  %8858 = fcmp fast une float %8845, 0.000000e+00
  br i1 %8858, label %8859, label %8866, !dx.controlflow.hints !167

; <label>:8859                                    ; preds = %8855
  %8860 = fmul fast float %8845, 0x3FF7154760000000
  %8861 = call float @dx.op.unary.f32(i32 21, float %8860)  ; Exp(value)
  %8862 = fsub fast float 1.000000e+00, %8861
  %8863 = fmul fast float %8842, %8862
  %8864 = fsub fast float -0.000000e+00, %8863
  %8865 = fdiv fast float %8864, %8845
  br label %8866

; <label>:8866                                    ; preds = %8859, %8855
  %8867 = phi float [ %8865, %8859 ], [ %8842, %8855 ]
  %8868 = phi float [ %8861, %8859 ], [ 1.000000e+00, %8855 ]
  %8869 = fcmp fast une float %8846, 0.000000e+00
  br i1 %8869, label %8870, label %8877, !dx.controlflow.hints !167

; <label>:8870                                    ; preds = %8866
  %8871 = fmul fast float %8846, 0x3FF7154760000000
  %8872 = call float @dx.op.unary.f32(i32 21, float %8871)  ; Exp(value)
  %8873 = fsub fast float 1.000000e+00, %8872
  %8874 = fmul fast float %8843, %8873
  %8875 = fsub fast float -0.000000e+00, %8874
  %8876 = fdiv fast float %8875, %8846
  br label %8877

; <label>:8877                                    ; preds = %8870, %8866, %8826, %8819
  %8878 = phi float [ %8876, %8870 ], [ %8838, %8826 ], [ %8823, %8819 ], [ %8843, %8866 ]
  %8879 = phi float [ %8867, %8870 ], [ %8837, %8826 ], [ %8822, %8819 ], [ %8867, %8866 ]
  %8880 = phi float [ %8856, %8870 ], [ %8836, %8826 ], [ %8821, %8819 ], [ %8856, %8866 ]
  %8881 = phi float [ %8872, %8870 ], [ %8828, %8826 ], [ 1.000000e+00, %8819 ], [ 1.000000e+00, %8866 ]
  %8882 = phi float [ %8868, %8870 ], [ %8828, %8826 ], [ 1.000000e+00, %8819 ], [ %8868, %8866 ]
  %8883 = phi float [ %8857, %8870 ], [ %8828, %8826 ], [ 1.000000e+00, %8819 ], [ %8857, %8866 ]
  %8884 = fmul fast float %8883, %8795
  %8885 = fmul fast float %8882, %8806
  %8886 = fmul fast float %8881, %8817
  %8887 = fadd fast float %8884, %8880
  %8888 = fadd fast float %8885, %8879
  %8889 = fadd fast float %8886, %8878
  %8890 = fmul fast float %8883, %8794
  %8891 = fmul fast float %8882, %8805
  %8892 = fmul fast float %8881, %8816
  br label %8893

; <label>:8893                                    ; preds = %8877, %8688
  %8894 = phi float [ %8892, %8877 ], [ %8694, %8688 ]
  %8895 = phi float [ %8891, %8877 ], [ %8693, %8688 ]
  %8896 = phi float [ %8890, %8877 ], [ %8692, %8688 ]
  %8897 = phi float [ %8889, %8877 ], [ %8691, %8688 ]
  %8898 = phi float [ %8888, %8877 ], [ %8690, %8688 ]
  %8899 = phi float [ %8887, %8877 ], [ %8689, %8688 ]
  %8900 = fmul fast float %8899, %7853
  %8901 = fmul fast float %8898, %7854
  %8902 = fmul fast float %8897, %7855
  %8903 = fmul fast float %8896, %8136
  %8904 = call float @dx.op.dot3.f32(i32 55, float %8896, float %8895, float %8894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8905 = call float @dx.op.dot3.f32(i32 55, float %8900, float %8901, float %8902, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8906 = select i1 %294, float %8904, float %8896
  %8907 = select i1 %294, float %8904, float %8895
  %8908 = select i1 %294, float 1.000000e+00, float %8894
  %8909 = select i1 %294, float %8905, float %8900
  %8910 = select i1 %294, float 0.000000e+00, float %8901
  %8911 = select i1 %294, float 0.000000e+00, float %8902
  %8912 = fmul fast float %8906, %8130
  %8913 = fmul fast float %8907, %8131
  %8914 = fmul fast float %8908, %8132
  %8915 = fadd fast float %8912, %8909
  %8916 = fadd fast float %8913, %8910
  %8917 = fadd fast float %8911, %8914
  %8918 = fmul fast float %8906, %8133
  %8919 = fmul fast float %8907, %8134
  %8920 = fmul fast float %8908, %8135
  %8921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8922 = extractvalue %dx.types.CBufRet.i32 %8921, 0
  %8923 = icmp eq i32 %8922, 0
  br i1 %8923, label %9291, label %8924, !dx.controlflow.hints !169

; <label>:8924                                    ; preds = %8893
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 2
  %8927 = extractvalue %dx.types.CBufRet.f32 %8925, 3
  %8928 = fmul fast float %8926, %109
  %8929 = fmul fast float %8927, %110
  %8930 = fmul fast float %8928, 2.000000e+00
  %8931 = fmul fast float %8929, 2.000000e+00
  %8932 = fsub fast float 1.000000e+00, %8930
  %8933 = fsub fast float 1.000000e+00, %8931
  %8934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8935 = extractvalue %dx.types.CBufRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.CBufRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.CBufRet.f32 %8934, 2
  %8938 = fmul fast float %8932, %8935
  %8939 = fmul fast float %8932, %8936
  %8940 = fmul fast float %8932, %8937
  %8941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8942 = extractvalue %dx.types.CBufRet.f32 %8941, 0
  %8943 = extractvalue %dx.types.CBufRet.f32 %8941, 1
  %8944 = extractvalue %dx.types.CBufRet.f32 %8941, 2
  %8945 = fmul fast float %8933, %8942
  %8946 = fmul fast float %8933, %8943
  %8947 = fmul fast float %8933, %8944
  %8948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8949 = extractvalue %dx.types.CBufRet.f32 %8948, 0
  %8950 = extractvalue %dx.types.CBufRet.f32 %8948, 1
  %8951 = extractvalue %dx.types.CBufRet.f32 %8948, 2
  %8952 = fadd fast float %8945, %8949
  %8953 = fadd fast float %8952, %8938
  %8954 = fadd fast float %8946, %8950
  %8955 = fadd fast float %8954, %8939
  %8956 = fadd fast float %8947, %8951
  %8957 = fadd fast float %8956, %8940
  %8958 = fmul fast float %8953, %8129
  %8959 = fmul fast float %8955, %8129
  %8960 = fmul fast float %8957, %8129
  %8961 = fmul fast float %8958, %8958
  %8962 = fmul fast float %8959, %8959
  %8963 = fadd fast float %8961, %8962
  %8964 = fmul fast float %8960, %8960
  %8965 = fadd fast float %8963, %8964
  %8966 = call float @dx.op.unary.f32(i32 24, float %8965)  ; Sqrt(value)
  %8967 = extractvalue %dx.types.CBufRet.f32 %7856, 0
  %8968 = fsub fast float %8966, %8967
  %8969 = extractvalue %dx.types.CBufRet.f32 %7856, 2
  %8970 = fmul fast float %8968, %8969
  %8971 = call float @dx.op.unary.f32(i32 7, float %8970)  ; Saturate(value)
  %8972 = fadd fast float %8971, -5.000000e-01
  %8973 = fmul fast float %8972, 2.000000e+00
  %8974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8974, 2
  %8976 = call float @dx.op.binary.f32(i32 36, float %8975, float %8973)  ; FMin(a,b)
  %8977 = fsub fast float -0.000000e+00, %8975
  %8978 = fcmp fast ogt float %8976, %8977
  br i1 %8978, label %8979, label %9291, !dx.controlflow.hints !170

; <label>:8979                                    ; preds = %8924
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 3
  %8982 = fcmp fast ogt float %8981, 0.000000e+00
  br i1 %8982, label %8983, label %9058, !dx.controlflow.hints !171

; <label>:8983                                    ; preds = %8979
  %8984 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %8985 = extractvalue %dx.types.Dimensions %8984, 0
  %8986 = sitofp i32 %8985 to float
  %8987 = extractvalue %dx.types.Dimensions %8984, 1
  %8988 = sitofp i32 %8987 to float
  %8989 = fmul fast float %8928, %8986
  %8990 = fmul fast float %8929, %8988
  %8991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8992 = extractvalue %dx.types.CBufRet.f32 %8991, 1
  %8993 = fsub fast float -0.000000e+00, %8992
  %8994 = fptoui float %8993 to i32
  %8995 = fptoui float %8989 to i32
  %8996 = fptoui float %8990 to i32
  %8997 = and i32 %8994, 31
  %8998 = lshr i32 %8995, %8997
  %8999 = lshr i32 %8996, %8997
  %9000 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %8994, i32 %8998, i32 %8999, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9001 = extractvalue %dx.types.ResRet.f32 %9000, 0
  %9002 = fcmp fast olt float %9001, -1.000000e+00
  %9003 = fcmp fast ogt float %9001, -1.000000e+00
  %9004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9005 = extractvalue %dx.types.CBufRet.f32 %9004, 1
  %9006 = select i1 %9003, float %9005, float 1.000000e+00
  %9007 = fadd fast float %9001, 1.000000e+00
  %9008 = fmul fast float %9006, %9007
  %9009 = call float @dx.op.unary.f32(i32 6, float %9008)  ; FAbs(value)
  %9010 = extractvalue %dx.types.CBufRet.f32 %9004, 3
  %9011 = fcmp fast oge float %9009, %9010
  %9012 = select i1 %9011, float 0x4197782600000000, float %9009
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 0
  %9015 = extractvalue %dx.types.CBufRet.f32 %9013, 1
  %9016 = extractvalue %dx.types.CBufRet.f32 %9013, 2
  %9017 = select i1 %9002, float %9014, float %8935
  %9018 = select i1 %9002, float %9015, float %8936
  %9019 = select i1 %9002, float %9016, float %8937
  %9020 = fmul fast float %9017, %8932
  %9021 = fmul fast float %9018, %8932
  %9022 = fmul fast float %9019, %8932
  %9023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9024 = extractvalue %dx.types.CBufRet.f32 %9023, 0
  %9025 = extractvalue %dx.types.CBufRet.f32 %9023, 1
  %9026 = extractvalue %dx.types.CBufRet.f32 %9023, 2
  %9027 = select i1 %9002, float %9024, float %8942
  %9028 = select i1 %9002, float %9025, float %8943
  %9029 = select i1 %9002, float %9026, float %8944
  %9030 = fmul fast float %9027, %8933
  %9031 = fmul fast float %9028, %8933
  %9032 = fmul fast float %9029, %8933
  %9033 = fadd fast float %9030, %9020
  %9034 = fadd fast float %9031, %9021
  %9035 = fadd fast float %9032, %9022
  %9036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9036, 0
  %9038 = extractvalue %dx.types.CBufRet.f32 %9036, 1
  %9039 = extractvalue %dx.types.CBufRet.f32 %9036, 2
  %9040 = select i1 %9002, float %9037, float %8949
  %9041 = select i1 %9002, float %9038, float %8950
  %9042 = select i1 %9002, float %9039, float %8951
  %9043 = fadd fast float %9033, %9040
  %9044 = fadd fast float %9034, %9041
  %9045 = fadd fast float %9035, %9042
  %9046 = fmul fast float %9043, %9012
  %9047 = fmul fast float %9044, %9012
  %9048 = fmul fast float %9045, %9012
  %9049 = fmul fast float %9046, %9046
  %9050 = fmul fast float %9047, %9047
  %9051 = fadd fast float %9049, %9050
  %9052 = fmul fast float %9048, %9048
  %9053 = fadd fast float %9051, %9052
  %9054 = call float @dx.op.unary.f32(i32 24, float %9053)  ; Sqrt(value)
  %9055 = fsub fast float %9054, %8967
  %9056 = fmul fast float %9055, %8969
  %9057 = call float @dx.op.unary.f32(i32 7, float %9056)  ; Saturate(value)
  br label %9058

; <label>:9058                                    ; preds = %8983, %8979
  %9059 = phi float [ %9057, %8983 ], [ 1.000000e+00, %8979 ]
  %9060 = fmul fast float %8976, 5.000000e-01
  %9061 = fadd fast float %9060, 5.000000e-01
  %9062 = call float @dx.op.unary.f32(i32 22, float %9061)  ; Frc(value)
  %9063 = call float @dx.op.unary.f32(i32 27, float %9062)  ; Round_ni(value)
  %9064 = call float @dx.op.unary.f32(i32 22, float %9062)  ; Frc(value)
  %9065 = fmul fast float %9064, 2.000000e+00
  %9066 = fadd fast float %9065, -1.000000e+00
  %9067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %8928, float %8929, float %9063, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9068 = extractvalue %dx.types.ResRet.f32 %9067, 0
  %9069 = extractvalue %dx.types.ResRet.f32 %9067, 1
  %9070 = extractvalue %dx.types.ResRet.f32 %9067, 2
  %9071 = extractvalue %dx.types.ResRet.f32 %9067, 3
  %9072 = fadd fast float %9068, -5.000000e-01
  %9073 = fadd fast float %9070, -5.000000e-01
  %9074 = fmul fast float %9072, 0xBFD5555560000000
  %9075 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9073, float %9074)  ; FMad(a,b,c)
  %9076 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9069, float 0.000000e+00)  ; FMad(a,b,c)
  %9077 = fadd fast float %9076, %9071
  %9078 = fmul fast float %9072, -7.500000e-01
  %9079 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9073, float %9078)  ; FMad(a,b,c)
  %9080 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9069, float 0.000000e+00)  ; FMad(a,b,c)
  %9081 = fadd fast float %9080, %9071
  %9082 = call float @dx.op.binary.f32(i32 35, float %9075, float -1.000000e+00)  ; FMax(a,b)
  %9083 = call float @dx.op.binary.f32(i32 35, float %9077, float -1.000000e+00)  ; FMax(a,b)
  %9084 = call float @dx.op.binary.f32(i32 35, float %9079, float -1.000000e+00)  ; FMax(a,b)
  %9085 = call float @dx.op.binary.f32(i32 35, float %9081, float -1.000000e+00)  ; FMax(a,b)
  %9086 = call float @dx.op.binary.f32(i32 36, float %9082, float 1.000000e+00)  ; FMin(a,b)
  %9087 = call float @dx.op.binary.f32(i32 36, float %9083, float 1.000000e+00)  ; FMin(a,b)
  %9088 = call float @dx.op.binary.f32(i32 36, float %9084, float 1.000000e+00)  ; FMin(a,b)
  %9089 = call float @dx.op.binary.f32(i32 36, float %9085, float 1.000000e+00)  ; FMin(a,b)
  %9090 = fcmp fast olt float %9086, 0x3FEFFF8020000000
  br i1 %9090, label %9091, label %9206, !dx.controlflow.hints !172

; <label>:9091                                    ; preds = %9058
  %9092 = extractvalue %dx.types.CBufRet.f32 %8974, 3
  %9093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9094 = extractvalue %dx.types.CBufRet.f32 %9093, 0
  %9095 = extractvalue %dx.types.CBufRet.f32 %9093, 1
  %9096 = extractvalue %dx.types.CBufRet.f32 %9093, 2
  %9097 = extractvalue %dx.types.CBufRet.f32 %9093, 3
  %9098 = fsub fast float %9094, %9086
  %9099 = fsub fast float %9095, %9087
  %9100 = fsub fast float %9096, %9088
  %9101 = fsub fast float %9097, %9089
  %9102 = fmul fast float %9098, %9092
  %9103 = fmul fast float %9099, %9092
  %9104 = fmul fast float %9100, %9092
  %9105 = fmul fast float %9101, %9092
  %9106 = fadd fast float %9102, %9086
  %9107 = fadd fast float %9103, %9087
  %9108 = fsub fast float -0.000000e+00, %9107
  %9109 = fadd fast float %9104, %9088
  %9110 = fadd fast float %9105, %9089
  %9111 = fmul fast float %9106, %9106
  %9112 = fsub fast float %9107, %9111
  %9113 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9112)  ; FMax(a,b)
  %9114 = fdiv fast float 1.000000e+00, %9113
  %9115 = fmul fast float %9107, %9106
  %9116 = fsub fast float %9109, %9115
  %9117 = fsub fast float %9066, %9106
  %9118 = fmul fast float %9066, %9066
  %9119 = fsub fast float %9118, %9107
  %9120 = fmul fast float %9117, %9114
  %9121 = fmul fast float %9120, %9116
  %9122 = fsub fast float %9119, %9121
  %9123 = fmul fast float %9107, %9107
  %9124 = fsub fast float %9110, %9123
  %9125 = fmul fast float %9116, %9116
  %9126 = fmul fast float %9125, %9114
  %9127 = fsub fast float %9124, %9126
  %9128 = fdiv fast float %9122, %9127
  %9129 = fmul fast float %9116, %9128
  %9130 = fsub fast float %9117, %9129
  %9131 = fmul fast float %9130, %9114
  %9132 = fmul fast float %9131, %9106
  %9133 = fsub fast float 1.000000e+00, %9132
  %9134 = fmul fast float %9107, %9128
  %9135 = fsub fast float %9133, %9134
  %9136 = fmul fast float %9131, %9131
  %9137 = fmul fast float %9128, 4.000000e+00
  %9138 = fmul fast float %9137, %9135
  %9139 = fsub fast float %9136, %9138
  %9140 = call float @dx.op.unary.f32(i32 24, float %9139)  ; Sqrt(value)
  %9141 = fcmp fast oge float %9131, 0.000000e+00
  %9142 = fsub fast float -0.000000e+00, %9140
  %9143 = select i1 %9141, float %9142, float %9140
  %9144 = fsub fast float %9143, %9131
  %9145 = fdiv fast float %9144, %9128
  %9146 = fdiv fast float %9135, %9144
  %9147 = fmul fast float %9145, 5.000000e-01
  %9148 = fmul fast float %9146, 2.000000e+00
  %9149 = select i1 %9141, float %9147, float %9148
  %9150 = select i1 %9141, float %9148, float %9147
  %9151 = call float @dx.op.binary.f32(i32 35, float %9149, float %9150)  ; FMax(a,b)
  %9152 = call float @dx.op.binary.f32(i32 36, float %9149, float %9150)  ; FMin(a,b)
  %9153 = fcmp fast ogt float %9066, %9152
  br i1 %9153, label %9154, label %9164

; <label>:9154                                    ; preds = %9091
  %9155 = fsub fast float %9066, %9152
  %9156 = fsub fast float %9151, %9152
  %9157 = fmul fast float %9155, %9156
  %9158 = fmul fast float %9151, %9066
  %9159 = fadd fast float %9151, %9066
  %9160 = fmul fast float %9159, %9106
  %9161 = fadd fast float %9158, %9107
  %9162 = fsub fast float %9161, %9160
  %9163 = fdiv fast float %9162, %9157
  br label %9164

; <label>:9164                                    ; preds = %9154, %9091
  %9165 = phi float [ %9163, %9154 ], [ 0.000000e+00, %9091 ]
  %9166 = fcmp fast ogt float %9066, %9151
  %9167 = fsub fast float %9066, %9151
  br i1 %9166, label %9168, label %9178

; <label>:9168                                    ; preds = %9164
  %9169 = fsub fast float %9151, %9152
  %9170 = fmul fast float %9169, %9167
  %9171 = fmul fast float %9152, %9066
  %9172 = fadd fast float %9152, %9066
  %9173 = fmul fast float %9172, %9106
  %9174 = fsub fast float %9108, %9171
  %9175 = fadd fast float %9174, %9173
  %9176 = fdiv fast float %9175, %9170
  %9177 = fadd fast float %9176, %9165
  br label %9178

; <label>:9178                                    ; preds = %9168, %9164
  %9179 = phi float [ %9177, %9168 ], [ %9165, %9164 ]
  %9180 = fsub fast float %9066, %9152
  %9181 = fmul fast float %9180, %9167
  %9182 = fmul fast float %9152, %9151
  %9183 = fadd fast float %9152, %9151
  %9184 = fmul fast float %9183, %9106
  %9185 = fadd fast float %9182, %9107
  %9186 = fsub fast float %9185, %9184
  %9187 = fdiv fast float %9186, %9181
  %9188 = call float @dx.op.unary.f32(i32 7, float %9179)  ; Saturate(value)
  %9189 = fcmp fast oeq float %7857, 0.000000e+00
  %9190 = extractvalue %dx.types.CBufRet.f32 %8974, 0
  %9191 = fcmp fast oeq float %9190, 0.000000e+00
  %9192 = or i1 %9189, %9191
  %9193 = fmul fast float %9190, 2.000000e+00
  %9194 = fadd fast float %8975, %8976
  %9195 = fdiv fast float %9194, %9193
  %9196 = call float @dx.op.unary.f32(i32 7, float %9195)  ; Saturate(value)
  %9197 = fmul fast float %9196, 2.000000e+00
  %9198 = fsub fast float 3.000000e+00, %9197
  %9199 = fmul fast float %9196, %9196
  %9200 = fmul fast float %9199, %9198
  %9201 = select i1 %9192, float 1.000000e+00, float %9200
  %9202 = fmul fast float %9187, %7857
  %9203 = fadd fast float %9188, %9202
  %9204 = call float @dx.op.unary.f32(i32 7, float %9203)  ; Saturate(value)
  %9205 = fmul fast float %9201, %9204
  br label %9206

; <label>:9206                                    ; preds = %9178, %9058
  %9207 = phi float [ %9205, %9178 ], [ 0.000000e+00, %9058 ]
  %9208 = fsub fast float 1.000000e+00, %9207
  %9209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %8928, float %8929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9210 = extractvalue %dx.types.ResRet.f32 %9209, 0
  %9211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9212 = extractvalue %dx.types.CBufRet.i32 %9211, 2
  %9213 = icmp eq i32 %9212, 0
  br i1 %9213, label %9219, label %9214

; <label>:9214                                    ; preds = %9206
  %9215 = call float @dx.op.unary.f32(i32 7, float %9207)  ; Saturate(value)
  %9216 = fadd fast float %9210, -1.000000e+00
  %9217 = fmul fast float %9215, %9216
  %9218 = fadd fast float %9217, 1.000000e+00
  br label %9219

; <label>:9219                                    ; preds = %9214, %9206
  %9220 = phi float [ %9218, %9214 ], [ %9208, %9206 ]
  br i1 %8982, label %9221, label %9239

; <label>:9221                                    ; preds = %9219
  %9222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9223 = extractvalue %dx.types.CBufRet.f32 %9222, 1
  %9224 = fsub fast float %9059, %9223
  %9225 = call float @dx.op.unary.f32(i32 7, float %9224)  ; Saturate(value)
  %9226 = fsub fast float %9059, %8981
  %9227 = call float @dx.op.unary.f32(i32 7, float %9226)  ; Saturate(value)
  %9228 = fsub fast float %9225, %9227
  %9229 = fsub fast float %9061, %9227
  %9230 = fdiv fast float %9229, %9228
  %9231 = call float @dx.op.unary.f32(i32 7, float %9230)  ; Saturate(value)
  %9232 = fmul fast float %9231, 2.000000e+00
  %9233 = fsub fast float 3.000000e+00, %9232
  %9234 = fsub fast float %9210, %9220
  %9235 = fmul fast float %9231, %9231
  %9236 = fmul fast float %9235, %9234
  %9237 = fmul fast float %9236, %9233
  %9238 = fadd fast float %9237, %9220
  br label %9239

; <label>:9239                                    ; preds = %9221, %9219
  %9240 = phi float [ %9238, %9221 ], [ %9220, %9219 ]
  %9241 = call float @dx.op.binary.f32(i32 35, float %9210, float %9240)  ; FMax(a,b)
  %9242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9243 = extractvalue %dx.types.CBufRet.i32 %9242, 2
  %9244 = and i32 %9243, 1
  %9245 = icmp eq i32 %9244, 0
  %9246 = fcmp fast une float %9241, 1.000000e+00
  %9247 = and i1 %9246, %9245
  br i1 %9247, label %9248, label %9267

; <label>:9248                                    ; preds = %9239
  %9249 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %8928, float %8929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9250 = extractvalue %dx.types.ResRet.f32 %9249, 0
  %9251 = extractvalue %dx.types.ResRet.f32 %9249, 1
  %9252 = extractvalue %dx.types.ResRet.f32 %9249, 2
  %9253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9254 = extractvalue %dx.types.CBufRet.f32 %9253, 1
  %9255 = fmul fast float %9254, %9250
  %9256 = fmul fast float %9254, %9251
  %9257 = fmul fast float %9254, %9252
  %9258 = fcmp fast ogt float %9210, 0x3FEFFF2E40000000
  %9259 = fsub fast float 1.000000e+00, %9241
  %9260 = fsub fast float 1.000000e+00, %9210
  %9261 = fdiv fast float %9259, %9260
  %9262 = call float @dx.op.unary.f32(i32 7, float %9261)  ; Saturate(value)
  %9263 = select i1 %9258, float 0.000000e+00, float %9262
  %9264 = fmul fast float %9255, %9263
  %9265 = fmul fast float %9256, %9263
  %9266 = fmul fast float %9257, %9263
  br label %9267

; <label>:9267                                    ; preds = %9248, %9239
  %9268 = phi float [ 0.000000e+00, %9239 ], [ %9264, %9248 ]
  %9269 = phi float [ 0.000000e+00, %9239 ], [ %9265, %9248 ]
  %9270 = phi float [ 0.000000e+00, %9239 ], [ %9266, %9248 ]
  %9271 = fmul fast float %9268, %7853
  %9272 = fmul fast float %9269, %7854
  %9273 = fmul fast float %9270, %7855
  %9274 = fmul fast float %9241, %8903
  %9275 = call float @dx.op.dot3.f32(i32 55, float %9241, float %9241, float %9241, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9276 = call float @dx.op.dot3.f32(i32 55, float %9271, float %9272, float %9273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9277 = select i1 %294, float %9275, float %9241
  %9278 = select i1 %294, float 1.000000e+00, float %9241
  %9279 = select i1 %294, float %9276, float %9271
  %9280 = select i1 %294, float 0.000000e+00, float %9272
  %9281 = select i1 %294, float 0.000000e+00, float %9273
  %9282 = fmul fast float %9277, %8915
  %9283 = fmul fast float %9277, %8916
  %9284 = fmul fast float %9278, %8917
  %9285 = fadd fast float %9282, %9279
  %9286 = fadd fast float %9283, %9280
  %9287 = fadd fast float %9281, %9284
  %9288 = fmul fast float %9277, %8918
  %9289 = fmul fast float %9277, %8919
  %9290 = fmul fast float %9278, %8920
  br label %9291

; <label>:9291                                    ; preds = %9267, %8924, %8893, %8125
  %9292 = phi float [ %8130, %8125 ], [ %8915, %8893 ], [ %9285, %9267 ], [ %8915, %8924 ]
  %9293 = phi float [ %8131, %8125 ], [ %8916, %8893 ], [ %9286, %9267 ], [ %8916, %8924 ]
  %9294 = phi float [ %8132, %8125 ], [ %8917, %8893 ], [ %9287, %9267 ], [ %8917, %8924 ]
  %9295 = phi float [ %8133, %8125 ], [ %8918, %8893 ], [ %9288, %9267 ], [ %8918, %8924 ]
  %9296 = phi float [ %8134, %8125 ], [ %8919, %8893 ], [ %9289, %9267 ], [ %8919, %8924 ]
  %9297 = phi float [ %8135, %8125 ], [ %8920, %8893 ], [ %9290, %9267 ], [ %8920, %8924 ]
  %9298 = phi float [ %8136, %8125 ], [ %8903, %8893 ], [ %9274, %9267 ], [ %8903, %8924 ]
  %9299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9300 = extractvalue %dx.types.CBufRet.f32 %9299, 2
  %9301 = extractvalue %dx.types.CBufRet.f32 %9299, 3
  %9302 = fmul fast float %9300, %109
  %9303 = fmul fast float %9301, %110
  %9304 = call float @dx.op.unary.f32(i32 7, float %9302)  ; Saturate(value)
  %9305 = call float @dx.op.unary.f32(i32 7, float %9303)  ; Saturate(value)
  %9306 = select i1 %7867, i32 2, i32 0
  %9307 = or i32 %9306, 1
  %9308 = uitofp i32 %9307 to float
  %9309 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9304, float %9305, float %9308, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9310 = extractvalue %dx.types.ResRet.f32 %9309, 0
  %9311 = extractvalue %dx.types.ResRet.f32 %9309, 1
  %9312 = extractvalue %dx.types.ResRet.f32 %9309, 2
  %9313 = extractvalue %dx.types.ResRet.f32 %9309, 3
  %9314 = add nuw nsw i32 %9306, 2
  %9315 = uitofp i32 %9314 to float
  %9316 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9304, float %9305, float %9315, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9317 = extractvalue %dx.types.ResRet.f32 %9316, 0
  %9318 = extractvalue %dx.types.ResRet.f32 %9316, 1
  %9319 = extractvalue %dx.types.ResRet.f32 %9316, 2
  %9320 = extractvalue %dx.types.ResRet.f32 %9316, 3
  %9321 = call float @dx.op.binary.f32(i32 35, float %9311, float %9312)  ; FMax(a,b)
  %9322 = call float @dx.op.binary.f32(i32 35, float %9310, float %9321)  ; FMax(a,b)
  %9323 = call float @dx.op.binary.f32(i32 35, float %9322, float %9313)  ; FMax(a,b)
  %9324 = call float @dx.op.binary.f32(i32 36, float %9318, float %9319)  ; FMin(a,b)
  %9325 = call float @dx.op.binary.f32(i32 36, float %9317, float %9324)  ; FMin(a,b)
  %9326 = call float @dx.op.binary.f32(i32 36, float %9325, float %9320)  ; FMin(a,b)
  %9327 = fmul fast float %9323, 2.550000e+02
  %9328 = fadd fast float %9327, 0x3F70101020000000
  %9329 = fptoui float %9328 to i32
  %9330 = fmul fast float %9326, 2.550000e+02
  %9331 = fadd fast float %9330, 0x3F70101020000000
  %9332 = fptoui float %9331 to i32
  %9333 = icmp ult i32 %9329, %9332
  br i1 %9333, label %9334, label %9503

; <label>:9334                                    ; preds = %9291
  %9335 = fcmp fast ogt float %95, 9.843750e-01
  %9336 = fadd fast float %8129, -4.000000e+00
  %9337 = select i1 %9335, float -4.000000e+00, float %9336
  %9338 = call float @dx.op.binary.f32(i32 35, float %9337, float 0.000000e+00)  ; FMax(a,b)
  %9339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9340 = extractvalue %dx.types.CBufRet.f32 %9339, 0
  %9341 = fadd fast float %9340, %9338
  %9342 = extractvalue %dx.types.CBufRet.f32 %9339, 2
  %9343 = fmul fast float %9341, %9342
  %9344 = call float @dx.op.unary.f32(i32 23, float %9343)  ; Log(value)
  %9345 = extractvalue %dx.types.CBufRet.f32 %9339, 3
  %9346 = fmul fast float %9345, %9344
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 2
  %9349 = fmul fast float %9346, %9348
  %9350 = call float @dx.op.unary.f32(i32 7, float %9349)  ; Saturate(value)
  %9351 = uitofp i32 %9329 to float
  %9352 = uitofp i32 %9332 to float
  %9353 = fadd fast float %9351, 5.000000e-01
  %9354 = fadd fast float %9352, 5.000000e-01
  %9355 = fmul fast float %9348, %9353
  %9356 = fmul fast float %9348, %9354
  %9357 = fadd fast float %9355, 0x3F0FFB4800000000
  %9358 = fadd fast float %9356, 0xBF0FFB4800000000
  %9359 = call float @dx.op.binary.f32(i32 35, float %9350, float %9357)  ; FMax(a,b)
  %9360 = call float @dx.op.binary.f32(i32 36, float %9359, float %9358)  ; FMin(a,b)
  %9361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9362 = extractvalue %dx.types.CBufRet.f32 %9361, 1
  %9363 = extractvalue %dx.types.CBufRet.f32 %9361, 2
  %9364 = extractvalue %dx.types.CBufRet.f32 %9361, 0
  %9365 = select i1 %7867, float %9364, float 0.000000e+00
  %9366 = fmul fast float %9362, %9360
  %9367 = fadd fast float %9365, %9366
  %9368 = fadd fast float %9365, %9363
  %9369 = fsub fast float %9362, %9363
  %9370 = fadd fast float %9369, %9365
  %9371 = call float @dx.op.binary.f32(i32 35, float %9367, float %9368)  ; FMax(a,b)
  %9372 = call float @dx.op.binary.f32(i32 36, float %9371, float %9370)  ; FMin(a,b)
  %9373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9304, float %9305, float %9372, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9374 = extractvalue %dx.types.ResRet.f32 %9373, 0
  %9375 = extractvalue %dx.types.ResRet.f32 %9373, 1
  %9376 = extractvalue %dx.types.ResRet.f32 %9373, 2
  %9377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9378 = extractvalue %dx.types.CBufRet.i32 %9377, 0
  %9379 = extractvalue %dx.types.CBufRet.i32 %9377, 1
  %9380 = uitofp i32 %9378 to float
  %9381 = uitofp i32 %9379 to float
  %9382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9383 = extractvalue %dx.types.CBufRet.f32 %9382, 0
  %9384 = extractvalue %dx.types.CBufRet.f32 %9382, 1
  %9385 = fmul fast float %9380, %9304
  %9386 = fmul fast float %9381, %9305
  %9387 = fadd fast float %9385, -5.000000e-01
  %9388 = fadd fast float %9386, -5.000000e-01
  %9389 = call float @dx.op.unary.f32(i32 22, float %9387)  ; Frc(value)
  %9390 = call float @dx.op.unary.f32(i32 22, float %9388)  ; Frc(value)
  %9391 = fmul fast float %9389, %9389
  %9392 = fmul fast float %9391, %9389
  %9393 = fsub fast float 3.000000e+00, %9389
  %9394 = fmul fast float %9391, %9393
  %9395 = fmul fast float %9389, 3.000000e+00
  %9396 = fmul fast float %9392, 3.000000e+00
  %9397 = fmul fast float %9391, 6.000000e+00
  %9398 = fsub fast float %9396, %9397
  %9399 = fadd fast float %9398, 4.000000e+00
  %9400 = fmul fast float %9399, 0x3FC5555560000000
  %9401 = fmul fast float %9392, -3.000000e+00
  %9402 = fadd fast float %9391, %9389
  %9403 = fmul fast float %9402, 3.000000e+00
  %9404 = fadd fast float %9401, 1.000000e+00
  %9405 = fadd fast float %9404, %9403
  %9406 = fmul fast float %9392, 0x3FC5555560000000
  %9407 = fmul fast float %9390, %9390
  %9408 = fmul fast float %9407, %9390
  %9409 = fsub fast float 3.000000e+00, %9390
  %9410 = fmul fast float %9407, %9409
  %9411 = fmul fast float %9390, 3.000000e+00
  %9412 = fmul fast float %9408, 3.000000e+00
  %9413 = fmul fast float %9407, 6.000000e+00
  %9414 = fsub fast float %9412, %9413
  %9415 = fadd fast float %9414, 4.000000e+00
  %9416 = fmul fast float %9415, 0x3FC5555560000000
  %9417 = fmul fast float %9408, -3.000000e+00
  %9418 = fadd fast float %9407, %9390
  %9419 = fmul fast float %9418, 3.000000e+00
  %9420 = fadd fast float %9417, 1.000000e+00
  %9421 = fadd fast float %9420, %9419
  %9422 = fmul fast float %9408, 0x3FC5555560000000
  %9423 = fadd fast float %9389, 1.000000e+00
  %9424 = fsub fast float 1.000000e+00, %9395
  %9425 = fadd fast float %9424, %9394
  %9426 = fadd fast float %9425, %9399
  %9427 = fmul fast float %9426, 0x3FC5555560000000
  %9428 = fdiv fast float %9400, %9427
  %9429 = fsub fast float %9423, %9428
  %9430 = fsub fast float 1.000000e+00, %9389
  %9431 = fadd fast float %9405, %9392
  %9432 = fmul fast float %9431, 0x3FC5555560000000
  %9433 = fdiv fast float %9406, %9432
  %9434 = fadd fast float %9430, %9433
  %9435 = fadd fast float %9390, 1.000000e+00
  %9436 = fsub fast float 1.000000e+00, %9411
  %9437 = fadd fast float %9436, %9410
  %9438 = fadd fast float %9437, %9415
  %9439 = fmul fast float %9438, 0x3FC5555560000000
  %9440 = fdiv fast float %9416, %9439
  %9441 = fsub fast float %9435, %9440
  %9442 = fsub fast float 1.000000e+00, %9390
  %9443 = fadd fast float %9421, %9408
  %9444 = fmul fast float %9443, 0x3FC5555560000000
  %9445 = fdiv fast float %9422, %9444
  %9446 = fadd fast float %9445, %9442
  %9447 = fmul fast float %9429, %9383
  %9448 = fsub fast float %9304, %9447
  %9449 = fmul fast float %9434, %9383
  %9450 = fadd fast float %9449, %9304
  %9451 = fmul fast float %9446, %9384
  %9452 = fadd fast float %9451, %9305
  %9453 = fmul fast float %9441, %9384
  %9454 = fsub fast float %9305, %9453
  %9455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9448, float %9454, float %9372, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9456 = extractvalue %dx.types.ResRet.f32 %9455, 0
  %9457 = extractvalue %dx.types.ResRet.f32 %9455, 1
  %9458 = extractvalue %dx.types.ResRet.f32 %9455, 2
  %9459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9450, float %9454, float %9372, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9460 = extractvalue %dx.types.ResRet.f32 %9459, 0
  %9461 = extractvalue %dx.types.ResRet.f32 %9459, 1
  %9462 = extractvalue %dx.types.ResRet.f32 %9459, 2
  %9463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9448, float %9452, float %9372, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9464 = extractvalue %dx.types.ResRet.f32 %9463, 0
  %9465 = extractvalue %dx.types.ResRet.f32 %9463, 1
  %9466 = extractvalue %dx.types.ResRet.f32 %9463, 2
  %9467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9450, float %9452, float %9372, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9468 = extractvalue %dx.types.ResRet.f32 %9467, 0
  %9469 = extractvalue %dx.types.ResRet.f32 %9467, 1
  %9470 = extractvalue %dx.types.ResRet.f32 %9467, 2
  %9471 = fsub fast float %9464, %9456
  %9472 = fsub fast float %9465, %9457
  %9473 = fsub fast float %9466, %9458
  %9474 = fmul fast float %9471, %9444
  %9475 = fmul fast float %9472, %9444
  %9476 = fmul fast float %9473, %9444
  %9477 = fadd fast float %9474, %9456
  %9478 = fadd fast float %9475, %9457
  %9479 = fadd fast float %9476, %9458
  %9480 = fsub fast float %9468, %9460
  %9481 = fsub fast float %9469, %9461
  %9482 = fsub fast float %9470, %9462
  %9483 = fmul fast float %9480, %9444
  %9484 = fmul fast float %9481, %9444
  %9485 = fmul fast float %9482, %9444
  %9486 = fsub fast float %9460, %9477
  %9487 = fadd fast float %9486, %9483
  %9488 = fsub fast float %9461, %9478
  %9489 = fadd fast float %9488, %9484
  %9490 = fsub fast float %9462, %9479
  %9491 = fadd fast float %9490, %9485
  %9492 = fmul fast float %9487, %9432
  %9493 = fmul fast float %9489, %9432
  %9494 = fmul fast float %9491, %9432
  %9495 = fadd fast float %9492, %9477
  %9496 = fadd fast float %9493, %9478
  %9497 = fadd fast float %9494, %9479
  %9498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9499 = extractvalue %dx.types.CBufRet.f32 %9498, 1
  %9500 = fmul fast float %9495, %9499
  %9501 = fmul fast float %9496, %9499
  %9502 = fmul fast float %9497, %9499
  br label %9503

; <label>:9503                                    ; preds = %9334, %9291
  %9504 = phi float [ %9374, %9334 ], [ 1.000000e+00, %9291 ]
  %9505 = phi float [ %9375, %9334 ], [ 1.000000e+00, %9291 ]
  %9506 = phi float [ %9376, %9334 ], [ 1.000000e+00, %9291 ]
  %9507 = phi float [ %9500, %9334 ], [ 0.000000e+00, %9291 ]
  %9508 = phi float [ %9501, %9334 ], [ 0.000000e+00, %9291 ]
  %9509 = phi float [ %9502, %9334 ], [ 0.000000e+00, %9291 ]
  %9510 = fmul fast float %9507, %7853
  %9511 = fmul fast float %9508, %7854
  %9512 = fmul fast float %9509, %7855
  %9513 = fmul fast float %9504, %9298
  %9514 = call float @dx.op.dot3.f32(i32 55, float %9504, float %9505, float %9506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9515 = call float @dx.op.dot3.f32(i32 55, float %9510, float %9511, float %9512, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9516 = select i1 %294, float %9514, float %9504
  %9517 = select i1 %294, float %9514, float %9505
  %9518 = select i1 %294, float 1.000000e+00, float %9506
  %9519 = select i1 %294, float %9515, float %9510
  %9520 = select i1 %294, float 0.000000e+00, float %9511
  %9521 = select i1 %294, float 0.000000e+00, float %9512
  %9522 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.i32 %9522, 3
  %9524 = and i32 %9523, 3
  %9525 = icmp ne i32 %9524, 0
  %9526 = and i32 %9523, 4
  %9527 = icmp ne i32 %9526, 0
  %9528 = and i1 %9525, %9527
  %9529 = and i1 %294, %9528
  br i1 %9529, label %9530, label %9536

; <label>:9530                                    ; preds = %9503
  %9531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9532 = extractvalue %dx.types.CBufRet.f32 %9531, 1
  %9533 = fadd fast float %9513, -1.000000e+00
  %9534 = fmul fast float %9532, %9533
  %9535 = fadd fast float %9534, 1.000000e+00
  br label %9536

; <label>:9536                                    ; preds = %9530, %9503
  %9537 = phi float [ %9535, %9530 ], [ %9513, %9503 ]
  %9538 = fadd fast float %9295, %9292
  %9539 = fmul fast float %9516, %9538
  %9540 = fadd fast float %9539, %9519
  %9541 = fadd fast float %9296, %9293
  %9542 = fmul fast float %9517, %9541
  %9543 = fadd fast float %9542, %9520
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 0
  br i1 %294, label %9546, label %9561

; <label>:9546                                    ; preds = %9536
  %9547 = fadd fast float %9540, %9543
  %9548 = fmul fast float %9545, %9547
  %9549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9550 = extractvalue %dx.types.CBufRet.f32 %9549, 3
  %9551 = extractvalue %dx.types.CBufRet.f32 %7837, 1
  %9552 = fsub fast float %7842, %7836
  %9553 = fadd fast float %9552, %7843
  %9554 = fsub fast float %9553, %9551
  %9555 = extractvalue %dx.types.CBufRet.f32 %7837, 2
  %9556 = fmul fast float %9554, %9555
  %9557 = call float @dx.op.unary.f32(i32 7, float %9556)  ; Saturate(value)
  %9558 = fsub fast float %9557, %9550
  %9559 = fmul fast float %9558, %9537
  %9560 = fadd fast float %9559, %9550
  br label %9587

; <label>:9561                                    ; preds = %9536
  %9562 = fadd fast float %9297, %9294
  %9563 = fmul fast float %9518, %9562
  %9564 = fadd fast float %9563, %9521
  %9565 = fmul fast float %9545, %9540
  %9566 = fmul fast float %9545, %9543
  %9567 = fmul fast float %9545, %9564
  %9568 = call float @dx.op.binary.f32(i32 35, float %9566, float %9567)  ; FMax(a,b)
  %9569 = call float @dx.op.binary.f32(i32 35, float %9565, float %9568)  ; FMax(a,b)
  %9570 = call float @dx.op.binary.f32(i32 35, float %7854, float %7855)  ; FMax(a,b)
  %9571 = call float @dx.op.binary.f32(i32 35, float %7853, float %9570)  ; FMax(a,b)
  %9572 = call float @dx.op.binary.f32(i32 35, float %9569, float %9571)  ; FMax(a,b)
  %9573 = fcmp fast ugt float %9572, 0x3F10000000000000
  br i1 %9573, label %9575, label %9574

; <label>:9574                                    ; preds = %9561
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9575

; <label>:9575                                    ; preds = %9574, %9561
  %9576 = add i32 %49, 356
  %9577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9576, i32 undef)  ; BufferLoad(srv,index,wot)
  %9578 = extractvalue %dx.types.ResRet.i32 %9577, 0
  %9579 = and i32 %9578, 32
  %9580 = icmp eq i32 %9579, 0
  br i1 %9580, label %9587, label %9581

; <label>:9581                                    ; preds = %9575
  %9582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9583 = extractvalue %dx.types.CBufRet.f32 %9582, 0
  %9584 = fmul fast float %9583, 0x3FE99999A0000000
  %9585 = fadd fast float %9583, %9565
  %9586 = fadd fast float %9584, %9567
  br label %9587

; <label>:9587                                    ; preds = %9581, %9575, %9546
  %9588 = phi float [ 1.000000e+00, %9546 ], [ %7854, %9581 ], [ %7854, %9575 ]
  %9589 = phi float [ 1.000000e+00, %9546 ], [ %7855, %9581 ], [ %7855, %9575 ]
  %9590 = phi float [ %9548, %9546 ], [ %9585, %9581 ], [ %9565, %9575 ]
  %9591 = phi float [ %9560, %9546 ], [ %9566, %9581 ], [ %9566, %9575 ]
  %9592 = phi float [ 1.000000e+00, %9546 ], [ %9586, %9581 ], [ %9567, %9575 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9593 = call float @dx.op.binary.f32(i32 36, float %9590, float 3.225500e+04)  ; FMin(a,b)
  %9594 = call float @dx.op.binary.f32(i32 36, float %9591, float 3.225500e+04)  ; FMin(a,b)
  %9595 = call float @dx.op.binary.f32(i32 36, float %9592, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9593)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9594)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9595)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9596 = call float @dx.op.binary.f32(i32 36, float %7853, float 3.225500e+04)  ; FMin(a,b)
  %9597 = call float @dx.op.binary.f32(i32 36, float %9588, float 3.225500e+04)  ; FMin(a,b)
  %9598 = call float @dx.op.binary.f32(i32 36, float %9589, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9596)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9597)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9598)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!61 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 0, i32 0, i32 119, i32 0, i32 0, i32 0]}
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

