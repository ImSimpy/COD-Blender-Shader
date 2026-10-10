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
; shader hash: df72061028150ea87341da5f9376494e
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
  %456 = add i32 %49, 492
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
  br i1 %512, label %1100, label %513

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
  %1036 = and i32 %1035, 10240
  %1037 = icmp eq i32 %1036, 0
  br i1 %1037, label %1082, label %1038

; <label>:1038                                    ; preds = %1030
  %1039 = add i32 %49, 476
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = add i32 %1041, 0
  %1043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1043, %dx.types.Handle %106, float %612, float %613, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 3
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = and i32 %1048, 1048576
  %1050 = icmp ne i32 %1049, 0
  %1051 = and i32 %1048, 8192
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1068, label %1053

; <label>:1053                                    ; preds = %1038
  %1054 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1055 = select i1 %1050, float %1054, float %1045
  %1056 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1057 = select i1 %1050, float %1056, float %1045
  %1058 = add i32 %49, 96
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = lshr i32 %1060, 16
  %1062 = and i32 %1061, 255
  %1063 = uitofp i32 %1062 to float
  %1064 = fmul fast float %1063, 0x3F80101020000000
  %1065 = fmul fast float %1064, %1057
  %1066 = fmul fast float %1064, %1045
  %1067 = fmul fast float %1064, %1055
  br label %1068

; <label>:1068                                    ; preds = %1053, %1038
  %1069 = phi float [ %1065, %1053 ], [ 0.000000e+00, %1038 ]
  %1070 = phi float [ %1066, %1053 ], [ 0.000000e+00, %1038 ]
  %1071 = phi float [ %1067, %1053 ], [ 0.000000e+00, %1038 ]
  %1072 = and i32 %1048, 2048
  %1073 = icmp eq i32 %1072, 0
  br i1 %1073, label %1082, label %1074

; <label>:1074                                    ; preds = %1068
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = shl i32 %1076, 4
  %1078 = and i32 %1077, 32752
  %1079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1078)  ; LegacyF16ToF32(value)
  %1080 = fmul fast float %1079, %1046
  %1081 = call float @dx.op.binary.f32(i32 35, float %1080, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1082

; <label>:1082                                    ; preds = %1074, %1068, %1030
  %1083 = phi float [ %1069, %1074 ], [ %1069, %1068 ], [ 0.000000e+00, %1030 ]
  %1084 = phi float [ %1070, %1074 ], [ %1070, %1068 ], [ 0.000000e+00, %1030 ]
  %1085 = phi float [ %1071, %1074 ], [ %1071, %1068 ], [ 0.000000e+00, %1030 ]
  %1086 = phi float [ %1081, %1074 ], [ 0x3F70101020000000, %1068 ], [ 0x3F70101020000000, %1030 ]
  %1087 = add i32 %49, 96
  %1088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.i32 %1088, 0
  %1090 = and i32 %1089, 255
  %1091 = uitofp i32 %1090 to float
  %1092 = lshr i32 %1089, 8
  %1093 = and i32 %1092, 255
  %1094 = uitofp i32 %1093 to float
  %1095 = call float @dx.op.dot3.f32(i32 55, float %903, float %904, float %905, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = fmul fast float %1094, %1095
  %1097 = fadd fast float %1096, %1091
  %1098 = fmul fast float %1097, 0x3F70101020000000
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  br label %1100

; <label>:1100                                    ; preds = %1082, %498
  %1101 = phi float [ 0.000000e+00, %498 ], [ %984, %1082 ]
  %1102 = phi float [ 0.000000e+00, %498 ], [ %985, %1082 ]
  %1103 = phi float [ 0.000000e+00, %498 ], [ %903, %1082 ]
  %1104 = phi float [ 0.000000e+00, %498 ], [ %904, %1082 ]
  %1105 = phi float [ 0.000000e+00, %498 ], [ %905, %1082 ]
  %1106 = phi float [ 0.000000e+00, %498 ], [ %1031, %1082 ]
  %1107 = phi float [ 0.000000e+00, %498 ], [ %1032, %1082 ]
  %1108 = phi float [ 0.000000e+00, %498 ], [ %1033, %1082 ]
  %1109 = phi float [ 0.000000e+00, %498 ], [ %1083, %1082 ]
  %1110 = phi float [ 0.000000e+00, %498 ], [ %1084, %1082 ]
  %1111 = phi float [ 0.000000e+00, %498 ], [ %1085, %1082 ]
  %1112 = phi float [ 0.000000e+00, %498 ], [ %889, %1082 ]
  %1113 = phi float [ 0.000000e+00, %498 ], [ %685, %1082 ]
  %1114 = phi float [ 0.000000e+00, %498 ], [ %983, %1082 ]
  %1115 = phi float [ 0.000000e+00, %498 ], [ %986, %1082 ]
  %1116 = phi float [ 0.000000e+00, %498 ], [ %1086, %1082 ]
  %1117 = phi float [ 0.000000e+00, %498 ], [ %1099, %1082 ]
  br i1 %446, label %1931, label %1118

; <label>:1118                                    ; preds = %1100
  %1119 = icmp ult i32 %504, 2
  %1120 = add i32 %49, 40
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %49, 44
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1123, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = or i32 %1125, %1122
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1931, label %1128

; <label>:1128                                    ; preds = %1118
  %1129 = and i32 %1122, 262144
  %1130 = icmp ne i32 %1129, 0
  %1131 = select i1 %1130, float %55, float 1.000000e+00
  %1132 = select i1 %1130, float %56, float 0.000000e+00
  %1133 = select i1 %1130, float %57, float 0.000000e+00
  %1134 = select i1 %1130, float %58, float 1.000000e+00
  %1135 = select i1 %1130, float %59, float %87
  %1136 = select i1 %1130, float %60, float %88
  %1137 = add i32 %49, 300
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = lshr i32 %1139, 16
  %1141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1140)  ; LegacyF16ToF32(value)
  %1142 = fmul fast float %1141, 0x3F50624DE0000000
  %1143 = add i32 %49, 104
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = lshr i32 %1145, 16
  %1147 = and i32 %1146, 255
  %1148 = lshr i32 %1145, 24
  %1149 = add i32 %49, 308
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1149, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = and i32 %1151, 65535
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = lshr i32 %1151, 16
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = add i32 %49, 48
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1156, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = lshr i32 %1158, 22
  %1160 = shl nuw nsw i32 %1159, 5
  %1161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1160)  ; LegacyF16ToF32(value)
  %1162 = shl i32 %1158, 4
  %1163 = and i32 %1162, 32752
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = lshr i32 %1158, 7
  %1166 = and i32 %1165, 32752
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1169 = extractvalue %dx.types.CBufRet.f32 %1168, 3
  %1170 = fmul fast float %1169, 1.000000e+03
  %1171 = fmul fast float %356, %1170
  %1172 = call float @dx.op.unary.f32(i32 22, float %1171)  ; Frc(value)
  %1173 = fadd fast float %1172, %346
  %1174 = fmul fast float %357, %1170
  %1175 = call float @dx.op.unary.f32(i32 22, float %1174)  ; Frc(value)
  %1176 = fadd fast float %1175, %348
  %1177 = fmul fast float %1142, %1170
  %1178 = call float @dx.op.unary.f32(i32 22, float %1177)  ; Frc(value)
  %1179 = fmul fast float %1178, 0x401921FB60000000
  %1180 = fadd fast float %1179, %1161
  %1181 = call float @dx.op.unary.f32(i32 13, float %1180)  ; Sin(value)
  %1182 = call float @dx.op.unary.f32(i32 12, float %1180)  ; Cos(value)
  %1183 = fsub fast float -0.000000e+00, %1181
  %1184 = fadd fast float %1135, -5.000000e-01
  %1185 = fadd fast float %1136, -5.000000e-01
  %1186 = fmul fast float %1153, %1184
  %1187 = fmul fast float %1155, %1185
  %1188 = fadd fast float %1186, 5.000000e-01
  %1189 = fadd fast float %1187, 5.000000e-01
  %1190 = fmul fast float %1164, %1188
  %1191 = fmul fast float %1167, %1189
  %1192 = fmul fast float %1182, %1190
  %1193 = call float @dx.op.tertiary.f32(i32 46, float %1183, float %1191, float %1192)  ; FMad(a,b,c)
  %1194 = fmul fast float %1181, %1190
  %1195 = call float @dx.op.tertiary.f32(i32 46, float %1182, float %1191, float %1194)  ; FMad(a,b,c)
  %1196 = fadd fast float %1173, %1193
  %1197 = fadd fast float %1176, %1195
  %1198 = icmp ugt i32 %1147, 1
  %1199 = icmp ugt i32 %1145, 33554431
  %1200 = or i1 %1199, %1198
  br i1 %1200, label %1201, label %1226

; <label>:1201                                    ; preds = %1128
  %1202 = add i32 %49, 244
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = lshr i32 %1204, 16
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = fmul fast float %1169, %1206
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = mul nuw nsw i32 %1147, %1148
  %1210 = uitofp i32 %1209 to float
  %1211 = fmul fast float %1208, %1210
  %1212 = call float @dx.op.unary.f32(i32 27, float %1211)  ; Round_ni(value)
  %1213 = fptoui float %1212 to i32
  %1214 = urem i32 %1213, %1147
  %1215 = udiv i32 %1213, %1148
  %1216 = call float @dx.op.unary.f32(i32 22, float %1196)  ; Frc(value)
  %1217 = call float @dx.op.unary.f32(i32 22, float %1197)  ; Frc(value)
  %1218 = uitofp i32 %1214 to float
  %1219 = uitofp i32 %1215 to float
  %1220 = fadd fast float %1216, %1218
  %1221 = fadd fast float %1217, %1219
  %1222 = uitofp i32 %1147 to float
  %1223 = uitofp i32 %1148 to float
  %1224 = fdiv fast float %1220, %1222
  %1225 = fdiv fast float %1221, %1223
  br label %1226

; <label>:1226                                    ; preds = %1201, %1128
  %1227 = phi float [ %1224, %1201 ], [ %1196, %1128 ]
  %1228 = phi float [ %1225, %1201 ], [ %1197, %1128 ]
  %1229 = and i32 %1122, 256
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1277, label %1231

; <label>:1231                                    ; preds = %1226
  %1232 = add i32 %49, 444
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = add i32 %1234, 0
  %1236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1236, %dx.types.Handle %106, float %1227, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  %1239 = add i32 %49, 116
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = shl i32 %1241, 4
  %1243 = and i32 %1242, 32752
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = lshr i32 %1241, 7
  %1246 = and i32 %1245, 32752
  %1247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1246)  ; LegacyF16ToF32(value)
  %1248 = fsub fast float 1.000000e+00, %501
  %1249 = call float @dx.op.binary.f32(i32 35, float %1248, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1250 = bitcast float %501 to i32
  %1251 = sitofp i32 %1250 to float
  %1252 = fadd fast float %1251, 0xC1CFBF8940000000
  %1253 = fmul fast float %1247, %1252
  %1254 = fadd fast float %1253, 0x41CFBF8940000000
  %1255 = fptosi float %1254 to i32
  %1256 = bitcast i32 %1255 to float
  %1257 = bitcast float %1249 to i32
  %1258 = sitofp i32 %1257 to float
  %1259 = fadd fast float %1258, 0xC1CFBF8940000000
  %1260 = fmul fast float %1259, %1247
  %1261 = fadd fast float %1260, 0x41CFBF8940000000
  %1262 = fptosi float %1261 to i32
  %1263 = bitcast i32 %1262 to float
  %1264 = fmul fast float %1256, %1244
  %1265 = fmul fast float %1263, %1244
  %1266 = fsub fast float %1249, %1264
  %1267 = fadd fast float %1265, %1249
  %1268 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1269 = call float @dx.op.unary.f32(i32 7, float %1267)  ; Saturate(value)
  %1270 = fsub fast float %1238, %1268
  %1271 = fsub fast float %1269, %1268
  %1272 = bitcast float %1271 to i32
  %1273 = sub nsw i32 2129859010, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1274, %1270
  %1276 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  br label %1277

; <label>:1277                                    ; preds = %1231, %1226
  %1278 = phi float [ %1276, %1231 ], [ %501, %1226 ]
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 128
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1299, label %1283

; <label>:1283                                    ; preds = %1277
  %1284 = add i32 %49, 428
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = add i32 %1286, 0
  %1288 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1287, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1289 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1288, %dx.types.Handle %106, float %1227, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = and i32 %1292, 524288
  %1294 = icmp ne i32 %1293, 0
  %1295 = fcmp fast ogt float %1290, 0x3FE0101020000000
  %1296 = select i1 %1295, float 1.000000e+00, float 0.000000e+00
  %1297 = select i1 %1294, float %1296, float %1290
  %1298 = fmul fast float %1297, %1278
  br label %1299

; <label>:1299                                    ; preds = %1283, %1277
  %1300 = phi float [ %1298, %1283 ], [ %1278, %1277 ]
  %1301 = fcmp fast ult float %1300, 0x3F70101020000000
  br i1 %1301, label %1931, label %1302

; <label>:1302                                    ; preds = %1299
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 16
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1505, label %1307

; <label>:1307                                    ; preds = %1302
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1143, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = add i32 %49, 380
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = add i32 %1312, 0
  %1314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1314, %dx.types.Handle %105, float %1227, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.ResRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.ResRet.f32 %1315, 2
  %1319 = extractvalue %dx.types.ResRet.f32 %1315, 3
  %1320 = and i32 %1309, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = lshr i32 %1309, 8
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1319, %1321
  %1326 = fadd fast float %1325, %1324
  %1327 = fmul fast float %1326, 0x3F70101000000000
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = and i32 %1329, 512
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1340, label %1332

; <label>:1332                                    ; preds = %1307
  %1333 = add i32 %49, 464
  %1334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.i32 %1334, 0
  %1336 = add i32 %1335, 0
  %1337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1337, %dx.types.Handle %106, float %1227, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1339 = extractvalue %dx.types.ResRet.f32 %1338, 0
  br label %1340

; <label>:1340                                    ; preds = %1332, %1307
  %1341 = phi float [ %1339, %1332 ], [ 1.000000e+00, %1307 ]
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 33554432
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1452, label %1346

; <label>:1346                                    ; preds = %1340
  %1347 = add i32 %49, 240
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = and i32 %1349, 65535
  %1351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1350)  ; LegacyF16ToF32(value)
  %1352 = lshr i32 %1349, 16
  %1353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1352)  ; LegacyF16ToF32(value)
  %1354 = add i32 %49, 244
  %1355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1354, i32 undef)  ; BufferLoad(srv,index,wot)
  %1356 = extractvalue %dx.types.ResRet.i32 %1355, 0
  %1357 = and i32 %1356, 65535
  %1358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1357)  ; LegacyF16ToF32(value)
  %1359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.i32 %1359, 0
  %1361 = lshr i32 %1360, 24
  %1362 = uitofp i32 %1361 to float
  %1363 = fmul fast float %1362, 0x3F70101020000000
  %1364 = and i32 %1360, 255
  %1365 = uitofp i32 %1364 to float
  %1366 = fmul fast float %1365, 0x3F70101020000000
  %1367 = lshr i32 %1360, 8
  %1368 = and i32 %1367, 255
  %1369 = uitofp i32 %1368 to float
  %1370 = fmul fast float %1369, 0x3F70101020000000
  %1371 = lshr i32 %1360, 16
  %1372 = and i32 %1371, 255
  %1373 = uitofp i32 %1372 to float
  %1374 = fmul fast float %1373, 0x3F70101020000000
  %1375 = add i32 %49, 236
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = lshr i32 %1377, 24
  %1379 = uitofp i32 %1378 to float
  %1380 = fmul fast float %1379, 0x3F70101020000000
  %1381 = and i32 %1377, 255
  %1382 = uitofp i32 %1381 to float
  %1383 = fmul fast float %1382, 0x3F70101020000000
  %1384 = lshr i32 %1377, 8
  %1385 = and i32 %1384, 255
  %1386 = uitofp i32 %1385 to float
  %1387 = fmul fast float %1386, 0x3F70101020000000
  %1388 = lshr i32 %1377, 16
  %1389 = and i32 %1388, 255
  %1390 = uitofp i32 %1389 to float
  %1391 = fmul fast float %1390, 0x3F70101020000000
  %1392 = bitcast float %1316 to i32
  %1393 = ashr i32 %1392, 1
  %1394 = sub nsw i32 1597463174, %1393
  %1395 = bitcast i32 %1394 to float
  %1396 = fmul fast float %1316, 5.000000e-01
  %1397 = fmul fast float %1395, %1395
  %1398 = fmul fast float %1397, %1396
  %1399 = fsub fast float 1.500000e+00, %1398
  %1400 = fmul fast float %1395, %1316
  %1401 = fmul fast float %1400, %1399
  %1402 = bitcast float %1317 to i32
  %1403 = ashr i32 %1402, 1
  %1404 = sub nsw i32 1597463174, %1403
  %1405 = bitcast i32 %1404 to float
  %1406 = fmul fast float %1317, 5.000000e-01
  %1407 = fmul fast float %1405, %1405
  %1408 = fmul fast float %1407, %1406
  %1409 = fsub fast float 1.500000e+00, %1408
  %1410 = fmul fast float %1405, %1317
  %1411 = fmul fast float %1410, %1409
  %1412 = bitcast float %1318 to i32
  %1413 = ashr i32 %1412, 1
  %1414 = sub nsw i32 1597463174, %1413
  %1415 = bitcast i32 %1414 to float
  %1416 = fmul fast float %1318, 5.000000e-01
  %1417 = fmul fast float %1415, %1415
  %1418 = fmul fast float %1417, %1416
  %1419 = fsub fast float 1.500000e+00, %1418
  %1420 = fmul fast float %1415, %1318
  %1421 = fmul fast float %1420, %1419
  %1422 = fsub fast float %1401, %1383
  %1423 = fsub fast float %1411, %1387
  %1424 = fsub fast float %1421, %1391
  %1425 = fmul fast float %1422, %1351
  %1426 = fmul fast float %1423, %1353
  %1427 = fmul fast float %1424, %1358
  %1428 = fadd fast float %1425, %1366
  %1429 = fadd fast float %1426, %1370
  %1430 = fadd fast float %1427, %1374
  %1431 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1432 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1433 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1434 = fmul fast float %1431, %1431
  %1435 = fmul fast float %1432, %1432
  %1436 = fmul fast float %1433, %1433
  %1437 = fsub fast float %1434, %1316
  %1438 = fsub fast float %1435, %1317
  %1439 = fsub fast float %1436, %1318
  %1440 = fmul fast float %1437, %1341
  %1441 = fmul fast float %1438, %1341
  %1442 = fmul fast float %1439, %1341
  %1443 = fadd fast float %1440, %1316
  %1444 = fadd fast float %1441, %1317
  %1445 = fadd fast float %1442, %1318
  %1446 = fadd fast float %1363, %1327
  %1447 = fsub fast float %1446, %1380
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  %1449 = fsub fast float %1448, %1327
  %1450 = fmul fast float %1449, %1341
  %1451 = fadd fast float %1450, %1327
  br label %1505

; <label>:1452                                    ; preds = %1340
  %1453 = and i32 %1343, 134217728
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1489, label %1455

; <label>:1455                                    ; preds = %1452
  %1456 = call float @dx.op.unary.f32(i32 24, float %333)  ; Sqrt(value)
  %1457 = call float @dx.op.unary.f32(i32 24, float %337)  ; Sqrt(value)
  %1458 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %1459 = fadd fast float %1456, -5.000000e-01
  %1460 = fadd fast float %1457, -5.000000e-01
  %1461 = fadd fast float %1458, -5.000000e-01
  %1462 = fmul fast float %1459, %1341
  %1463 = fmul fast float %1460, %1341
  %1464 = fmul fast float %1461, %1341
  %1465 = fadd fast float %1462, 5.000000e-01
  %1466 = fadd fast float %1463, 5.000000e-01
  %1467 = fadd fast float %1464, 5.000000e-01
  %1468 = call float @dx.op.unary.f32(i32 24, float %1316)  ; Sqrt(value)
  %1469 = call float @dx.op.unary.f32(i32 24, float %1317)  ; Sqrt(value)
  %1470 = call float @dx.op.unary.f32(i32 24, float %1318)  ; Sqrt(value)
  %1471 = fmul fast float %1465, 2.000000e+00
  %1472 = fsub fast float 1.000000e+00, %1471
  %1473 = fmul fast float %1472, %1468
  %1474 = fadd fast float %1473, %1471
  %1475 = fmul fast float %1474, %1468
  %1476 = fmul fast float %1466, 2.000000e+00
  %1477 = fsub fast float 1.000000e+00, %1476
  %1478 = fmul fast float %1477, %1469
  %1479 = fadd fast float %1478, %1476
  %1480 = fmul fast float %1479, %1469
  %1481 = fmul fast float %1467, 2.000000e+00
  %1482 = fsub fast float 1.000000e+00, %1481
  %1483 = fmul fast float %1482, %1470
  %1484 = fadd fast float %1483, %1481
  %1485 = fmul fast float %1484, %1470
  %1486 = fmul fast float %1475, %1475
  %1487 = fmul fast float %1480, %1480
  %1488 = fmul fast float %1485, %1485
  br label %1505

; <label>:1489                                    ; preds = %1452
  %1490 = fmul fast float %333, %333
  %1491 = fmul fast float %337, %337
  %1492 = fmul fast float %341, %341
  %1493 = fadd fast float %1490, -1.000000e+00
  %1494 = fadd fast float %1491, -1.000000e+00
  %1495 = fadd fast float %1492, -1.000000e+00
  %1496 = fmul fast float %1341, %1493
  %1497 = fmul fast float %1341, %1494
  %1498 = fmul fast float %1341, %1495
  %1499 = fadd fast float %1496, 1.000000e+00
  %1500 = fadd fast float %1497, 1.000000e+00
  %1501 = fadd fast float %1498, 1.000000e+00
  %1502 = fmul fast float %1499, %1316
  %1503 = fmul fast float %1500, %1317
  %1504 = fmul fast float %1501, %1318
  br label %1505

; <label>:1505                                    ; preds = %1489, %1455, %1346, %1302
  %1506 = phi float [ %1451, %1346 ], [ %1327, %1455 ], [ %1327, %1489 ], [ 0x3FA23C0BE0000000, %1302 ]
  %1507 = phi float [ %1443, %1346 ], [ %1486, %1455 ], [ %1502, %1489 ], [ 1.000000e+00, %1302 ]
  %1508 = phi float [ %1444, %1346 ], [ %1487, %1455 ], [ %1503, %1489 ], [ 1.000000e+00, %1302 ]
  %1509 = phi float [ %1445, %1346 ], [ %1488, %1455 ], [ %1504, %1489 ], [ 1.000000e+00, %1302 ]
  %1510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.i32 %1510, 1
  %1512 = and i32 %1511, 1
  %1513 = icmp ne i32 %1512, 0
  %1514 = add i32 %49, 356
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 32
  %1518 = icmp ne i32 %1517, 0
  %1519 = and i1 %1513, %1518
  %1520 = select i1 %1519, float 1.000000e+00, float %1507
  %1521 = select i1 %1519, float 0x3FD3333340000000, float %1508
  %1522 = select i1 %1519, float 0x3FD3333340000000, float %1509
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 32
  %1526 = icmp eq i32 %1525, 0
  br i1 %1526, label %1599, label %1527

; <label>:1527                                    ; preds = %1505
  %1528 = add i32 %49, 108
  %1529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1528, i32 undef)  ; BufferLoad(srv,index,wot)
  %1530 = extractvalue %dx.types.ResRet.i32 %1529, 0
  %1531 = add i32 %49, 396
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = add i32 %1533, 0
  %1535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1535, %dx.types.Handle %105, float %1227, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1537 = extractvalue %dx.types.ResRet.f32 %1536, 0
  %1538 = extractvalue %dx.types.ResRet.f32 %1536, 1
  %1539 = extractvalue %dx.types.ResRet.f32 %1536, 2
  %1540 = extractvalue %dx.types.ResRet.f32 %1536, 3
  %1541 = and i32 %1530, 255
  %1542 = uitofp i32 %1541 to float
  %1543 = lshr i32 %1530, 8
  %1544 = and i32 %1543, 255
  %1545 = uitofp i32 %1544 to float
  %1546 = lshr i32 %1530, 16
  %1547 = and i32 %1546, 255
  %1548 = uitofp i32 %1547 to float
  %1549 = fmul fast float %1548, 0x3F70101000000000
  %1550 = fmul fast float %1537, %1542
  %1551 = fadd fast float %1550, %1545
  %1552 = fmul fast float %1551, 0x3F70101000000000
  %1553 = fadd fast float %1538, -5.000000e-01
  %1554 = fadd fast float %1540, -5.000000e-01
  %1555 = fmul fast float %1553, %1549
  %1556 = fmul fast float %1554, %1549
  %1557 = fadd fast float %1555, 5.000000e-01
  %1558 = fadd fast float %1556, 5.000000e-01
  %1559 = fmul fast float %1557, 2.000000e+00
  %1560 = fadd fast float %1559, -1.000000e+00
  %1561 = fmul fast float %1558, 2.000000e+00
  %1562 = fadd fast float %1561, -1.000000e+00
  %1563 = fadd fast float %1560, %1562
  %1564 = fmul fast float %1563, 5.000000e-01
  %1565 = fsub fast float %1560, %1562
  %1566 = fmul fast float %1565, 5.000000e-01
  %1567 = call float @dx.op.unary.f32(i32 6, float %1564)  ; FAbs(value)
  %1568 = fsub fast float 1.000000e+00, %1567
  %1569 = call float @dx.op.unary.f32(i32 6, float %1566)  ; FAbs(value)
  %1570 = fsub fast float %1568, %1569
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1564, float %1566, float %1570, float %1564, float %1566, float %1570)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = call float @dx.op.unary.f32(i32 25, float %1571)  ; Rsqrt(value)
  %1573 = fmul fast float %1564, %1572
  %1574 = fmul fast float %1566, %1572
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 67108864
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1595, label %1579

; <label>:1579                                    ; preds = %1527
  %1580 = add i32 %49, 296
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 65535
  %1584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1583)  ; LegacyF16ToF32(value)
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = and i32 %1586, 65535
  %1588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1587)  ; LegacyF16ToF32(value)
  %1589 = lshr i32 %1582, 16
  %1590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1589)  ; LegacyF16ToF32(value)
  %1591 = fsub fast float %1552, %1590
  %1592 = fmul fast float %1591, %1584
  %1593 = fadd fast float %1592, %1588
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  br label %1595

; <label>:1595                                    ; preds = %1579, %1527
  %1596 = phi float [ %1594, %1579 ], [ %1552, %1527 ]
  %1597 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1131, float %1132)  ; Dot2(ax,ay,bx,by)
  %1598 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1133, float %1134)  ; Dot2(ax,ay,bx,by)
  br label %1599

; <label>:1599                                    ; preds = %1595, %1505
  %1600 = phi float [ %1596, %1595 ], [ 0x3FD6666660000000, %1505 ]
  %1601 = phi float [ %1597, %1595 ], [ 0.000000e+00, %1505 ]
  %1602 = phi float [ %1598, %1595 ], [ 0.000000e+00, %1505 ]
  %1603 = phi float [ %1539, %1595 ], [ 1.000000e+00, %1505 ]
  %1604 = add i32 %49, 176
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = lshr i32 %1606, 22
  %1608 = shl nuw nsw i32 %1607, 5
  %1609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1608)  ; LegacyF16ToF32(value)
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 64
  %1613 = icmp eq i32 %1612, 0
  br i1 %1613, label %1647, label %1614

; <label>:1614                                    ; preds = %1599
  %1615 = add i32 %49, 412
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = add i32 %1617, 0
  %1619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = and i32 %1621, 131072
  %1623 = icmp eq i32 %1622, 0
  %1624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1619, %dx.types.Handle %105, float %1227, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.ResRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.ResRet.f32 %1624, 2
  %1628 = fmul fast float %1625, %321
  %1629 = fmul fast float %1626, %324
  %1630 = fmul fast float %1627, %327
  br i1 %1623, label %1637, label %1631

; <label>:1631                                    ; preds = %1614
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = fmul fast float %1633, %1628
  %1635 = fmul fast float %1633, %1629
  %1636 = fmul fast float %1633, %1630
  br label %1637

; <label>:1637                                    ; preds = %1631, %1614
  %1638 = phi float [ %1634, %1631 ], [ %1628, %1614 ]
  %1639 = phi float [ %1635, %1631 ], [ %1629, %1614 ]
  %1640 = phi float [ %1636, %1631 ], [ %1630, %1614 ]
  %1641 = fmul fast float %1638, %1609
  %1642 = select i1 %262, float %1641, float %1638
  %1643 = call float @dx.op.dot3.f32(i32 55, float %1642, float %1639, float %1640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1644 = select i1 %262, float 0.000000e+00, float %1638
  %1645 = select i1 %262, float %1643, float %1639
  %1646 = select i1 %262, float 0.000000e+00, float %1640
  br label %1647

; <label>:1647                                    ; preds = %1637, %1599
  %1648 = phi float [ %1644, %1637 ], [ 0.000000e+00, %1599 ]
  %1649 = phi float [ %1645, %1637 ], [ 0.000000e+00, %1599 ]
  %1650 = phi float [ %1646, %1637 ], [ 0.000000e+00, %1599 ]
  %1651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1652 = extractvalue %dx.types.ResRet.i32 %1651, 0
  %1653 = and i32 %1652, 10240
  %1654 = icmp eq i32 %1653, 0
  br i1 %1654, label %1699, label %1655

; <label>:1655                                    ; preds = %1647
  %1656 = add i32 %49, 480
  %1657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1656, i32 undef)  ; BufferLoad(srv,index,wot)
  %1658 = extractvalue %dx.types.ResRet.i32 %1657, 0
  %1659 = add i32 %1658, 0
  %1660 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1659, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1660, %dx.types.Handle %106, float %1227, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1662 = extractvalue %dx.types.ResRet.f32 %1661, 1
  %1663 = extractvalue %dx.types.ResRet.f32 %1661, 3
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = and i32 %1665, 1048576
  %1667 = icmp ne i32 %1666, 0
  %1668 = and i32 %1665, 8192
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1685, label %1670

; <label>:1670                                    ; preds = %1655
  %1671 = extractvalue %dx.types.ResRet.f32 %1661, 2
  %1672 = select i1 %1667, float %1671, float %1662
  %1673 = extractvalue %dx.types.ResRet.f32 %1661, 0
  %1674 = select i1 %1667, float %1673, float %1662
  %1675 = add i32 %49, 112
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = lshr i32 %1677, 16
  %1679 = and i32 %1678, 255
  %1680 = uitofp i32 %1679 to float
  %1681 = fmul fast float %1680, 0x3F80101020000000
  %1682 = fmul fast float %1681, %1674
  %1683 = fmul fast float %1681, %1662
  %1684 = fmul fast float %1681, %1672
  br label %1685

; <label>:1685                                    ; preds = %1670, %1655
  %1686 = phi float [ %1682, %1670 ], [ 0.000000e+00, %1655 ]
  %1687 = phi float [ %1683, %1670 ], [ 0.000000e+00, %1655 ]
  %1688 = phi float [ %1684, %1670 ], [ 0.000000e+00, %1655 ]
  %1689 = and i32 %1665, 2048
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1699, label %1691

; <label>:1691                                    ; preds = %1685
  %1692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1693 = extractvalue %dx.types.ResRet.i32 %1692, 0
  %1694 = shl i32 %1693, 4
  %1695 = and i32 %1694, 32752
  %1696 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1695)  ; LegacyF16ToF32(value)
  %1697 = fmul fast float %1696, %1663
  %1698 = call float @dx.op.binary.f32(i32 35, float %1697, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1699

; <label>:1699                                    ; preds = %1691, %1685, %1647
  %1700 = phi float [ %1686, %1691 ], [ %1686, %1685 ], [ 0.000000e+00, %1647 ]
  %1701 = phi float [ %1687, %1691 ], [ %1687, %1685 ], [ 0.000000e+00, %1647 ]
  %1702 = phi float [ %1688, %1691 ], [ %1688, %1685 ], [ 0.000000e+00, %1647 ]
  %1703 = phi float [ %1698, %1691 ], [ 0x3F70101020000000, %1685 ], [ 0x3F70101020000000, %1647 ]
  %1704 = add i32 %49, 112
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1704, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = and i32 %1706, 255
  %1708 = uitofp i32 %1707 to float
  %1709 = lshr i32 %1706, 8
  %1710 = and i32 %1709, 255
  %1711 = uitofp i32 %1710 to float
  %1712 = call float @dx.op.dot3.f32(i32 55, float %1520, float %1521, float %1522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1713 = fmul fast float %1711, %1712
  %1714 = fadd fast float %1713, %1708
  %1715 = fmul fast float %1714, 0x3F70101020000000
  %1716 = call float @dx.op.unary.f32(i32 7, float %1715)  ; Saturate(value)
  br i1 %1119, label %1717, label %1725

; <label>:1717                                    ; preds = %1699
  %1718 = fsub fast float 1.000000e+00, %1300
  %1719 = fmul fast float %1718, %1103
  %1720 = fmul fast float %1718, %1104
  %1721 = fmul fast float %1718, %1105
  %1722 = fmul fast float %1718, %1106
  %1723 = fmul fast float %1718, %1107
  %1724 = fmul fast float %1718, %1108
  br label %1725

; <label>:1725                                    ; preds = %1717, %1699
  %1726 = phi float [ %1719, %1717 ], [ %1103, %1699 ]
  %1727 = phi float [ %1720, %1717 ], [ %1104, %1699 ]
  %1728 = phi float [ %1721, %1717 ], [ %1105, %1699 ]
  %1729 = phi float [ %1722, %1717 ], [ %1106, %1699 ]
  %1730 = phi float [ %1723, %1717 ], [ %1107, %1699 ]
  %1731 = phi float [ %1724, %1717 ], [ %1108, %1699 ]
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = and i32 %1733, 3
  %1735 = icmp eq i32 %1734, 3
  br i1 %1735, label %1814, label %1736

; <label>:1736                                    ; preds = %1725
  %1737 = and i32 %1733, 16
  %1738 = icmp ne i32 %1737, 0
  %1739 = select i1 %1738, float %1300, float 0.000000e+00
  %1740 = icmp eq i32 %1734, 0
  br i1 %1740, label %1741, label %1769

; <label>:1741                                    ; preds = %1736
  %1742 = and i32 %1733, 64
  %1743 = icmp ne i32 %1742, 0
  %1744 = select i1 %1743, float %1300, float 0.000000e+00
  %1745 = fsub fast float %1520, %1726
  %1746 = fsub fast float %1521, %1727
  %1747 = fsub fast float %1522, %1728
  %1748 = fmul fast float %1739, %1745
  %1749 = fmul fast float %1739, %1746
  %1750 = fmul fast float %1739, %1747
  %1751 = fadd fast float %1748, %1726
  %1752 = fadd fast float %1749, %1727
  %1753 = fadd fast float %1750, %1728
  %1754 = fsub fast float %1506, %1112
  %1755 = fmul fast float %1739, %1754
  %1756 = fadd fast float %1755, %1112
  %1757 = fsub fast float %1648, %1729
  %1758 = fsub fast float %1649, %1730
  %1759 = fsub fast float %1650, %1731
  %1760 = fmul fast float %1744, %1757
  %1761 = fmul fast float %1744, %1758
  %1762 = fmul fast float %1744, %1759
  %1763 = fadd fast float %1760, %1729
  %1764 = fadd fast float %1761, %1730
  %1765 = fadd fast float %1762, %1731
  %1766 = fsub fast float %1716, %1117
  %1767 = fmul fast float %1739, %1766
  %1768 = fadd fast float %1767, %1117
  br label %1814

; <label>:1769                                    ; preds = %1736
  %1770 = icmp eq i32 %1734, 1
  br i1 %1770, label %1771, label %1784

; <label>:1771                                    ; preds = %1769
  %1772 = fadd fast float %1520, -1.000000e+00
  %1773 = fadd fast float %1521, -1.000000e+00
  %1774 = fadd fast float %1522, -1.000000e+00
  %1775 = fmul fast float %1739, %1772
  %1776 = fmul fast float %1739, %1773
  %1777 = fmul fast float %1739, %1774
  %1778 = fadd fast float %1775, 1.000000e+00
  %1779 = fadd fast float %1776, 1.000000e+00
  %1780 = fadd fast float %1777, 1.000000e+00
  %1781 = fmul fast float %1778, %1726
  %1782 = fmul fast float %1779, %1727
  %1783 = fmul fast float %1780, %1728
  br label %1814

; <label>:1784                                    ; preds = %1769
  %1785 = icmp eq i32 %1734, 2
  br i1 %1785, label %1786, label %1814

; <label>:1786                                    ; preds = %1784
  %1787 = call float @dx.op.unary.f32(i32 24, float %1520)  ; Sqrt(value)
  %1788 = call float @dx.op.unary.f32(i32 24, float %1521)  ; Sqrt(value)
  %1789 = call float @dx.op.unary.f32(i32 24, float %1522)  ; Sqrt(value)
  %1790 = fadd fast float %1787, -5.000000e-01
  %1791 = fadd fast float %1788, -5.000000e-01
  %1792 = fadd fast float %1789, -5.000000e-01
  %1793 = fmul fast float %1790, %1739
  %1794 = fmul fast float %1791, %1739
  %1795 = fmul fast float %1792, %1739
  %1796 = fadd fast float %1793, 5.000000e-01
  %1797 = fadd fast float %1794, 5.000000e-01
  %1798 = fadd fast float %1795, 5.000000e-01
  %1799 = fmul fast float %1796, 2.000000e+00
  %1800 = fsub fast float 1.000000e+00, %1799
  %1801 = fmul fast float %1800, %1726
  %1802 = fadd fast float %1801, %1799
  %1803 = fmul fast float %1802, %1726
  %1804 = fmul fast float %1797, 2.000000e+00
  %1805 = fsub fast float 1.000000e+00, %1804
  %1806 = fmul fast float %1805, %1727
  %1807 = fadd fast float %1806, %1804
  %1808 = fmul fast float %1807, %1727
  %1809 = fmul fast float %1798, 2.000000e+00
  %1810 = fsub fast float 1.000000e+00, %1809
  %1811 = fmul fast float %1810, %1728
  %1812 = fadd fast float %1811, %1809
  %1813 = fmul fast float %1812, %1728
  br label %1814

; <label>:1814                                    ; preds = %1786, %1784, %1771, %1741, %1725
  %1815 = phi float [ %1726, %1725 ], [ %1803, %1786 ], [ %1726, %1784 ], [ %1781, %1771 ], [ %1751, %1741 ]
  %1816 = phi float [ %1727, %1725 ], [ %1808, %1786 ], [ %1727, %1784 ], [ %1782, %1771 ], [ %1752, %1741 ]
  %1817 = phi float [ %1728, %1725 ], [ %1813, %1786 ], [ %1728, %1784 ], [ %1783, %1771 ], [ %1753, %1741 ]
  %1818 = phi float [ %1729, %1725 ], [ %1729, %1786 ], [ %1729, %1784 ], [ %1729, %1771 ], [ %1763, %1741 ]
  %1819 = phi float [ %1730, %1725 ], [ %1730, %1786 ], [ %1730, %1784 ], [ %1730, %1771 ], [ %1764, %1741 ]
  %1820 = phi float [ %1731, %1725 ], [ %1731, %1786 ], [ %1731, %1784 ], [ %1731, %1771 ], [ %1765, %1741 ]
  %1821 = phi float [ %1112, %1725 ], [ %1112, %1786 ], [ %1112, %1784 ], [ %1112, %1771 ], [ %1756, %1741 ]
  %1822 = phi float [ %1117, %1725 ], [ %1117, %1786 ], [ %1117, %1784 ], [ %1117, %1771 ], [ %1768, %1741 ]
  %1823 = and i32 %1733, 12
  %1824 = icmp eq i32 %1823, 12
  br i1 %1824, label %1931, label %1825

; <label>:1825                                    ; preds = %1814
  %1826 = and i32 %1733, 2097184
  %1827 = icmp eq i32 %1826, 2097184
  %1828 = select i1 %1827, float %1300, float 0.000000e+00
  %1829 = and i32 %1733, 4194336
  %1830 = icmp eq i32 %1829, 4194336
  %1831 = select i1 %1830, float %1300, float 0.000000e+00
  %1832 = and i32 %1733, 8388640
  %1833 = icmp eq i32 %1832, 8388640
  %1834 = select i1 %1833, float %1300, float 0.000000e+00
  %1835 = and i32 %1733, 2048
  %1836 = icmp ne i32 %1835, 0
  %1837 = select i1 %1836, float %1300, float 0.000000e+00
  %1838 = and i32 %1733, 8192
  %1839 = icmp ne i32 %1838, 0
  %1840 = select i1 %1839, float %1300, float 0.000000e+00
  %1841 = icmp eq i32 %1823, 0
  br i1 %1841, label %1842, label %1867

; <label>:1842                                    ; preds = %1825
  %1843 = fsub fast float %1601, %1101
  %1844 = fsub fast float %1602, %1102
  %1845 = fmul fast float %1828, %1843
  %1846 = fmul fast float %1828, %1844
  %1847 = fadd fast float %1845, %1101
  %1848 = fadd fast float %1846, %1102
  %1849 = fsub fast float %1603, %1115
  %1850 = fmul fast float %1831, %1849
  %1851 = fadd fast float %1850, %1115
  %1852 = fsub fast float %1600, %1114
  %1853 = fmul fast float %1834, %1852
  %1854 = fadd fast float %1853, %1114
  %1855 = fsub fast float %1703, %1116
  %1856 = fmul fast float %1837, %1855
  %1857 = fadd fast float %1856, %1116
  %1858 = fsub fast float %1700, %1109
  %1859 = fsub fast float %1701, %1110
  %1860 = fsub fast float %1702, %1111
  %1861 = fmul fast float %1840, %1858
  %1862 = fmul fast float %1840, %1859
  %1863 = fmul fast float %1840, %1860
  %1864 = fadd fast float %1861, %1109
  %1865 = fadd fast float %1862, %1110
  %1866 = fadd fast float %1863, %1111
  br label %1931

; <label>:1867                                    ; preds = %1825
  %1868 = icmp eq i32 %1823, 4
  br i1 %1868, label %1869, label %1909

; <label>:1869                                    ; preds = %1867
  %1870 = fmul fast float %1828, %1601
  %1871 = fmul fast float %1828, %1602
  %1872 = fadd fast float %1870, %1101
  %1873 = fadd fast float %1871, %1102
  %1874 = call float @dx.op.binary.f32(i32 36, float %1115, float %1603)  ; FMin(a,b)
  %1875 = fsub fast float %1874, %1115
  %1876 = fmul fast float %1875, %1831
  %1877 = fadd fast float %1876, %1115
  %1878 = fadd fast float %1600, %1114
  %1879 = fmul fast float %1878, 0x3FF337FAE0000000
  %1880 = fmul fast float %1114, %1114
  %1881 = fmul fast float %1600, %1600
  %1882 = fadd fast float %1881, %1880
  %1883 = fmul fast float %1882, 0x3FE5152B00000000
  %1884 = fmul fast float %1114, 0xBFCC1F85E0000000
  %1885 = fmul fast float %1884, %1600
  %1886 = fadd fast float %1885, 0xBFE1363700000000
  %1887 = fadd fast float %1886, %1879
  %1888 = fsub fast float %1887, %1883
  %1889 = fmul fast float %1878, 0x3FBA6F0D00000000
  %1890 = fmul fast float %1882, 0x3FD0432880000000
  %1891 = fmul fast float %1114, 0xBFEF110800000000
  %1892 = fmul fast float %1891, %1600
  %1893 = fadd fast float %1892, 1.000000e+00
  %1894 = fsub fast float %1893, %1889
  %1895 = fadd fast float %1894, %1890
  %1896 = fdiv fast float %1888, %1895
  %1897 = call float @dx.op.unary.f32(i32 7, float %1896)  ; Saturate(value)
  %1898 = fsub fast float %1897, %1114
  %1899 = fmul fast float %1898, %1834
  %1900 = fadd fast float %1899, %1114
  %1901 = fmul fast float %1837, %1703
  %1902 = fadd fast float %1901, %1116
  %1903 = fmul fast float %1840, %1700
  %1904 = fmul fast float %1840, %1701
  %1905 = fmul fast float %1840, %1702
  %1906 = fadd fast float %1903, %1109
  %1907 = fadd fast float %1904, %1110
  %1908 = fadd fast float %1905, %1111
  br label %1931

; <label>:1909                                    ; preds = %1867
  %1910 = icmp eq i32 %1823, 8
  br i1 %1910, label %1911, label %1931

; <label>:1911                                    ; preds = %1909
  %1912 = fmul fast float %1828, %1601
  %1913 = fmul fast float %1828, %1602
  %1914 = fadd fast float %1912, %1101
  %1915 = fadd fast float %1913, %1102
  %1916 = call float @dx.op.binary.f32(i32 36, float %1115, float %1603)  ; FMin(a,b)
  %1917 = fsub fast float %1916, %1115
  %1918 = fmul fast float %1917, %1831
  %1919 = fadd fast float %1918, %1115
  %1920 = fsub fast float %1600, %1114
  %1921 = fmul fast float %1834, %1920
  %1922 = fadd fast float %1921, %1114
  %1923 = fmul fast float %1837, %1703
  %1924 = fadd fast float %1923, %1116
  %1925 = fmul fast float %1840, %1700
  %1926 = fmul fast float %1840, %1701
  %1927 = fmul fast float %1840, %1702
  %1928 = fadd fast float %1925, %1109
  %1929 = fadd fast float %1926, %1110
  %1930 = fadd fast float %1927, %1111
  br label %1931

; <label>:1931                                    ; preds = %1911, %1909, %1869, %1842, %1814, %1299, %1118, %1100
  %1932 = phi float [ %1101, %1814 ], [ %1101, %1299 ], [ %1101, %1100 ], [ %1914, %1911 ], [ %1101, %1909 ], [ %1872, %1869 ], [ %1847, %1842 ], [ %1101, %1118 ]
  %1933 = phi float [ %1102, %1814 ], [ %1102, %1299 ], [ %1102, %1100 ], [ %1915, %1911 ], [ %1102, %1909 ], [ %1873, %1869 ], [ %1848, %1842 ], [ %1102, %1118 ]
  %1934 = phi float [ %1815, %1814 ], [ %1103, %1299 ], [ %1103, %1100 ], [ %1815, %1911 ], [ %1815, %1909 ], [ %1815, %1869 ], [ %1815, %1842 ], [ %1103, %1118 ]
  %1935 = phi float [ %1816, %1814 ], [ %1104, %1299 ], [ %1104, %1100 ], [ %1816, %1911 ], [ %1816, %1909 ], [ %1816, %1869 ], [ %1816, %1842 ], [ %1104, %1118 ]
  %1936 = phi float [ %1817, %1814 ], [ %1105, %1299 ], [ %1105, %1100 ], [ %1817, %1911 ], [ %1817, %1909 ], [ %1817, %1869 ], [ %1817, %1842 ], [ %1105, %1118 ]
  %1937 = phi float [ %1818, %1814 ], [ %1106, %1299 ], [ %1106, %1100 ], [ %1818, %1911 ], [ %1818, %1909 ], [ %1818, %1869 ], [ %1818, %1842 ], [ %1106, %1118 ]
  %1938 = phi float [ %1819, %1814 ], [ %1107, %1299 ], [ %1107, %1100 ], [ %1819, %1911 ], [ %1819, %1909 ], [ %1819, %1869 ], [ %1819, %1842 ], [ %1107, %1118 ]
  %1939 = phi float [ %1820, %1814 ], [ %1108, %1299 ], [ %1108, %1100 ], [ %1820, %1911 ], [ %1820, %1909 ], [ %1820, %1869 ], [ %1820, %1842 ], [ %1108, %1118 ]
  %1940 = phi float [ %1109, %1814 ], [ %1109, %1299 ], [ %1109, %1100 ], [ %1928, %1911 ], [ %1109, %1909 ], [ %1906, %1869 ], [ %1864, %1842 ], [ %1109, %1118 ]
  %1941 = phi float [ %1110, %1814 ], [ %1110, %1299 ], [ %1110, %1100 ], [ %1929, %1911 ], [ %1110, %1909 ], [ %1907, %1869 ], [ %1865, %1842 ], [ %1110, %1118 ]
  %1942 = phi float [ %1111, %1814 ], [ %1111, %1299 ], [ %1111, %1100 ], [ %1930, %1911 ], [ %1111, %1909 ], [ %1908, %1869 ], [ %1866, %1842 ], [ %1111, %1118 ]
  %1943 = phi float [ %1821, %1814 ], [ %1112, %1299 ], [ %1112, %1100 ], [ %1821, %1911 ], [ %1821, %1909 ], [ %1821, %1869 ], [ %1821, %1842 ], [ %1112, %1118 ]
  %1944 = phi float [ %1114, %1814 ], [ %1114, %1299 ], [ %1114, %1100 ], [ %1922, %1911 ], [ %1114, %1909 ], [ %1900, %1869 ], [ %1854, %1842 ], [ %1114, %1118 ]
  %1945 = phi float [ %1115, %1814 ], [ %1115, %1299 ], [ %1115, %1100 ], [ %1919, %1911 ], [ %1115, %1909 ], [ %1877, %1869 ], [ %1851, %1842 ], [ %1115, %1118 ]
  %1946 = phi float [ %1116, %1814 ], [ %1116, %1299 ], [ %1116, %1100 ], [ %1924, %1911 ], [ %1116, %1909 ], [ %1902, %1869 ], [ %1857, %1842 ], [ %1116, %1118 ]
  %1947 = phi float [ %1822, %1814 ], [ %1117, %1299 ], [ %1117, %1100 ], [ %1822, %1911 ], [ %1822, %1909 ], [ %1822, %1869 ], [ %1822, %1842 ], [ %1117, %1118 ]
  br i1 %448, label %2761, label %1948

; <label>:1948                                    ; preds = %1931
  %1949 = icmp ult i32 %504, 3
  %1950 = add i32 %49, 56
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = add i32 %49, 60
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = or i32 %1955, %1952
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2761, label %1958

; <label>:1958                                    ; preds = %1948
  %1959 = and i32 %1952, 262144
  %1960 = icmp ne i32 %1959, 0
  %1961 = select i1 %1960, float %55, float 1.000000e+00
  %1962 = select i1 %1960, float %56, float 0.000000e+00
  %1963 = select i1 %1960, float %57, float 0.000000e+00
  %1964 = select i1 %1960, float %58, float 1.000000e+00
  %1965 = select i1 %1960, float %59, float %87
  %1966 = select i1 %1960, float %60, float %88
  %1967 = add i32 %49, 316
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = lshr i32 %1969, 16
  %1971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1970)  ; LegacyF16ToF32(value)
  %1972 = fmul fast float %1971, 0x3F50624DE0000000
  %1973 = add i32 %49, 120
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = lshr i32 %1975, 16
  %1977 = and i32 %1976, 255
  %1978 = lshr i32 %1975, 24
  %1979 = add i32 %49, 324
  %1980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.i32 %1980, 0
  %1982 = and i32 %1981, 65535
  %1983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1982)  ; LegacyF16ToF32(value)
  %1984 = lshr i32 %1981, 16
  %1985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1984)  ; LegacyF16ToF32(value)
  %1986 = add i32 %49, 64
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = lshr i32 %1988, 22
  %1990 = shl nuw nsw i32 %1989, 5
  %1991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1990)  ; LegacyF16ToF32(value)
  %1992 = shl i32 %1988, 4
  %1993 = and i32 %1992, 32752
  %1994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1993)  ; LegacyF16ToF32(value)
  %1995 = lshr i32 %1988, 7
  %1996 = and i32 %1995, 32752
  %1997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1996)  ; LegacyF16ToF32(value)
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2000 = fmul fast float %1999, 1.000000e+03
  %2001 = fmul fast float %398, %2000
  %2002 = call float @dx.op.unary.f32(i32 22, float %2001)  ; Frc(value)
  %2003 = fadd fast float %2002, %388
  %2004 = fmul fast float %399, %2000
  %2005 = call float @dx.op.unary.f32(i32 22, float %2004)  ; Frc(value)
  %2006 = fadd fast float %2005, %390
  %2007 = fmul fast float %1972, %2000
  %2008 = call float @dx.op.unary.f32(i32 22, float %2007)  ; Frc(value)
  %2009 = fmul fast float %2008, 0x401921FB60000000
  %2010 = fadd fast float %2009, %1991
  %2011 = call float @dx.op.unary.f32(i32 13, float %2010)  ; Sin(value)
  %2012 = call float @dx.op.unary.f32(i32 12, float %2010)  ; Cos(value)
  %2013 = fsub fast float -0.000000e+00, %2011
  %2014 = fadd fast float %1965, -5.000000e-01
  %2015 = fadd fast float %1966, -5.000000e-01
  %2016 = fmul fast float %1983, %2014
  %2017 = fmul fast float %1985, %2015
  %2018 = fadd fast float %2016, 5.000000e-01
  %2019 = fadd fast float %2017, 5.000000e-01
  %2020 = fmul fast float %1994, %2018
  %2021 = fmul fast float %1997, %2019
  %2022 = fmul fast float %2012, %2020
  %2023 = call float @dx.op.tertiary.f32(i32 46, float %2013, float %2021, float %2022)  ; FMad(a,b,c)
  %2024 = fmul fast float %2011, %2020
  %2025 = call float @dx.op.tertiary.f32(i32 46, float %2012, float %2021, float %2024)  ; FMad(a,b,c)
  %2026 = fadd fast float %2003, %2023
  %2027 = fadd fast float %2006, %2025
  %2028 = icmp ugt i32 %1977, 1
  %2029 = icmp ugt i32 %1975, 33554431
  %2030 = or i1 %2029, %2028
  br i1 %2030, label %2031, label %2056

; <label>:2031                                    ; preds = %1958
  %2032 = add i32 %49, 260
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = lshr i32 %2034, 16
  %2036 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2035)  ; LegacyF16ToF32(value)
  %2037 = fmul fast float %1999, %2036
  %2038 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2039 = mul nuw nsw i32 %1977, %1978
  %2040 = uitofp i32 %2039 to float
  %2041 = fmul fast float %2038, %2040
  %2042 = call float @dx.op.unary.f32(i32 27, float %2041)  ; Round_ni(value)
  %2043 = fptoui float %2042 to i32
  %2044 = urem i32 %2043, %1977
  %2045 = udiv i32 %2043, %1978
  %2046 = call float @dx.op.unary.f32(i32 22, float %2026)  ; Frc(value)
  %2047 = call float @dx.op.unary.f32(i32 22, float %2027)  ; Frc(value)
  %2048 = uitofp i32 %2044 to float
  %2049 = uitofp i32 %2045 to float
  %2050 = fadd fast float %2046, %2048
  %2051 = fadd fast float %2047, %2049
  %2052 = uitofp i32 %1977 to float
  %2053 = uitofp i32 %1978 to float
  %2054 = fdiv fast float %2050, %2052
  %2055 = fdiv fast float %2051, %2053
  br label %2056

; <label>:2056                                    ; preds = %2031, %1958
  %2057 = phi float [ %2054, %2031 ], [ %2026, %1958 ]
  %2058 = phi float [ %2055, %2031 ], [ %2027, %1958 ]
  %2059 = and i32 %1952, 256
  %2060 = icmp eq i32 %2059, 0
  br i1 %2060, label %2107, label %2061

; <label>:2061                                    ; preds = %2056
  %2062 = add i32 %49, 448
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = add i32 %2064, 0
  %2066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2067 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2066, %dx.types.Handle %106, float %2057, float %2058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2068 = extractvalue %dx.types.ResRet.f32 %2067, 0
  %2069 = add i32 %49, 132
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = shl i32 %2071, 4
  %2073 = and i32 %2072, 32752
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = lshr i32 %2071, 7
  %2076 = and i32 %2075, 32752
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = fsub fast float 1.000000e+00, %500
  %2079 = call float @dx.op.binary.f32(i32 35, float %2078, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2080 = bitcast float %500 to i32
  %2081 = sitofp i32 %2080 to float
  %2082 = fadd fast float %2081, 0xC1CFBF8940000000
  %2083 = fmul fast float %2077, %2082
  %2084 = fadd fast float %2083, 0x41CFBF8940000000
  %2085 = fptosi float %2084 to i32
  %2086 = bitcast i32 %2085 to float
  %2087 = bitcast float %2079 to i32
  %2088 = sitofp i32 %2087 to float
  %2089 = fadd fast float %2088, 0xC1CFBF8940000000
  %2090 = fmul fast float %2089, %2077
  %2091 = fadd fast float %2090, 0x41CFBF8940000000
  %2092 = fptosi float %2091 to i32
  %2093 = bitcast i32 %2092 to float
  %2094 = fmul fast float %2086, %2074
  %2095 = fmul fast float %2093, %2074
  %2096 = fsub fast float %2079, %2094
  %2097 = fadd fast float %2095, %2079
  %2098 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2099 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2100 = fsub fast float %2068, %2098
  %2101 = fsub fast float %2099, %2098
  %2102 = bitcast float %2101 to i32
  %2103 = sub nsw i32 2129859010, %2102
  %2104 = bitcast i32 %2103 to float
  %2105 = fmul fast float %2104, %2100
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  br label %2107

; <label>:2107                                    ; preds = %2061, %2056
  %2108 = phi float [ %2106, %2061 ], [ %500, %2056 ]
  %2109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2110 = extractvalue %dx.types.ResRet.i32 %2109, 0
  %2111 = and i32 %2110, 128
  %2112 = icmp eq i32 %2111, 0
  br i1 %2112, label %2129, label %2113

; <label>:2113                                    ; preds = %2107
  %2114 = add i32 %49, 432
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = add i32 %2116, 0
  %2118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2118, %dx.types.Handle %106, float %2057, float %2058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2120 = extractvalue %dx.types.ResRet.f32 %2119, 0
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = and i32 %2122, 524288
  %2124 = icmp ne i32 %2123, 0
  %2125 = fcmp fast ogt float %2120, 0x3FE0101020000000
  %2126 = select i1 %2125, float 1.000000e+00, float 0.000000e+00
  %2127 = select i1 %2124, float %2126, float %2120
  %2128 = fmul fast float %2127, %2108
  br label %2129

; <label>:2129                                    ; preds = %2113, %2107
  %2130 = phi float [ %2128, %2113 ], [ %2108, %2107 ]
  %2131 = fcmp fast ult float %2130, 0x3F70101020000000
  br i1 %2131, label %2761, label %2132

; <label>:2132                                    ; preds = %2129
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = and i32 %2134, 16
  %2136 = icmp eq i32 %2135, 0
  br i1 %2136, label %2335, label %2137

; <label>:2137                                    ; preds = %2132
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = add i32 %49, 384
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = add i32 %2142, 0
  %2144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2144, %dx.types.Handle %105, float %2057, float %2058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.ResRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.ResRet.f32 %2145, 2
  %2149 = extractvalue %dx.types.ResRet.f32 %2145, 3
  %2150 = and i32 %2139, 255
  %2151 = uitofp i32 %2150 to float
  %2152 = lshr i32 %2139, 8
  %2153 = and i32 %2152, 255
  %2154 = uitofp i32 %2153 to float
  %2155 = fmul fast float %2149, %2151
  %2156 = fadd fast float %2155, %2154
  %2157 = fmul fast float %2156, 0x3F70101000000000
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = and i32 %2159, 512
  %2161 = icmp eq i32 %2160, 0
  br i1 %2161, label %2170, label %2162

; <label>:2162                                    ; preds = %2137
  %2163 = add i32 %49, 468
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = add i32 %2165, 0
  %2167 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2166, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2167, %dx.types.Handle %106, float %2057, float %2058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  br label %2170

; <label>:2170                                    ; preds = %2162, %2137
  %2171 = phi float [ %2169, %2162 ], [ 1.000000e+00, %2137 ]
  %2172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2173 = extractvalue %dx.types.ResRet.i32 %2172, 0
  %2174 = and i32 %2173, 33554432
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2282, label %2176

; <label>:2176                                    ; preds = %2170
  %2177 = add i32 %49, 256
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 65535
  %2181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2180)  ; LegacyF16ToF32(value)
  %2182 = lshr i32 %2179, 16
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = add i32 %49, 260
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2184, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = and i32 %2186, 65535
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = lshr i32 %2190, 24
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2192, 0x3F70101020000000
  %2194 = and i32 %2190, 255
  %2195 = uitofp i32 %2194 to float
  %2196 = fmul fast float %2195, 0x3F70101020000000
  %2197 = lshr i32 %2190, 8
  %2198 = and i32 %2197, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2199, 0x3F70101020000000
  %2201 = lshr i32 %2190, 16
  %2202 = and i32 %2201, 255
  %2203 = uitofp i32 %2202 to float
  %2204 = fmul fast float %2203, 0x3F70101020000000
  %2205 = add i32 %49, 252
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2205, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = lshr i32 %2207, 24
  %2209 = uitofp i32 %2208 to float
  %2210 = fmul fast float %2209, 0x3F70101020000000
  %2211 = and i32 %2207, 255
  %2212 = uitofp i32 %2211 to float
  %2213 = fmul fast float %2212, 0x3F70101020000000
  %2214 = lshr i32 %2207, 8
  %2215 = and i32 %2214, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = fmul fast float %2216, 0x3F70101020000000
  %2218 = lshr i32 %2207, 16
  %2219 = and i32 %2218, 255
  %2220 = uitofp i32 %2219 to float
  %2221 = fmul fast float %2220, 0x3F70101020000000
  %2222 = bitcast float %2146 to i32
  %2223 = ashr i32 %2222, 1
  %2224 = sub nsw i32 1597463174, %2223
  %2225 = bitcast i32 %2224 to float
  %2226 = fmul fast float %2146, 5.000000e-01
  %2227 = fmul fast float %2225, %2225
  %2228 = fmul fast float %2227, %2226
  %2229 = fsub fast float 1.500000e+00, %2228
  %2230 = fmul fast float %2225, %2146
  %2231 = fmul fast float %2230, %2229
  %2232 = bitcast float %2147 to i32
  %2233 = ashr i32 %2232, 1
  %2234 = sub nsw i32 1597463174, %2233
  %2235 = bitcast i32 %2234 to float
  %2236 = fmul fast float %2147, 5.000000e-01
  %2237 = fmul fast float %2235, %2235
  %2238 = fmul fast float %2237, %2236
  %2239 = fsub fast float 1.500000e+00, %2238
  %2240 = fmul fast float %2235, %2147
  %2241 = fmul fast float %2240, %2239
  %2242 = bitcast float %2148 to i32
  %2243 = ashr i32 %2242, 1
  %2244 = sub nsw i32 1597463174, %2243
  %2245 = bitcast i32 %2244 to float
  %2246 = fmul fast float %2148, 5.000000e-01
  %2247 = fmul fast float %2245, %2245
  %2248 = fmul fast float %2247, %2246
  %2249 = fsub fast float 1.500000e+00, %2248
  %2250 = fmul fast float %2245, %2148
  %2251 = fmul fast float %2250, %2249
  %2252 = fsub fast float %2231, %2213
  %2253 = fsub fast float %2241, %2217
  %2254 = fsub fast float %2251, %2221
  %2255 = fmul fast float %2252, %2181
  %2256 = fmul fast float %2253, %2183
  %2257 = fmul fast float %2254, %2188
  %2258 = fadd fast float %2255, %2196
  %2259 = fadd fast float %2256, %2200
  %2260 = fadd fast float %2257, %2204
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2264 = fmul fast float %2261, %2261
  %2265 = fmul fast float %2262, %2262
  %2266 = fmul fast float %2263, %2263
  %2267 = fsub fast float %2264, %2146
  %2268 = fsub fast float %2265, %2147
  %2269 = fsub fast float %2266, %2148
  %2270 = fmul fast float %2267, %2171
  %2271 = fmul fast float %2268, %2171
  %2272 = fmul fast float %2269, %2171
  %2273 = fadd fast float %2270, %2146
  %2274 = fadd fast float %2271, %2147
  %2275 = fadd fast float %2272, %2148
  %2276 = fadd fast float %2193, %2157
  %2277 = fsub fast float %2276, %2210
  %2278 = call float @dx.op.unary.f32(i32 7, float %2277)  ; Saturate(value)
  %2279 = fsub fast float %2278, %2157
  %2280 = fmul fast float %2279, %2171
  %2281 = fadd fast float %2280, %2157
  br label %2335

; <label>:2282                                    ; preds = %2170
  %2283 = and i32 %2173, 134217728
  %2284 = icmp eq i32 %2283, 0
  br i1 %2284, label %2319, label %2285

; <label>:2285                                    ; preds = %2282
  %2286 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %2287 = call float @dx.op.unary.f32(i32 24, float %379)  ; Sqrt(value)
  %2288 = call float @dx.op.unary.f32(i32 24, float %383)  ; Sqrt(value)
  %2289 = fadd fast float %2286, -5.000000e-01
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fadd fast float %2288, -5.000000e-01
  %2292 = fmul fast float %2289, %2171
  %2293 = fmul fast float %2290, %2171
  %2294 = fmul fast float %2291, %2171
  %2295 = fadd fast float %2292, 5.000000e-01
  %2296 = fadd fast float %2293, 5.000000e-01
  %2297 = fadd fast float %2294, 5.000000e-01
  %2298 = call float @dx.op.unary.f32(i32 24, float %2146)  ; Sqrt(value)
  %2299 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %2300 = call float @dx.op.unary.f32(i32 24, float %2148)  ; Sqrt(value)
  %2301 = fmul fast float %2295, 2.000000e+00
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = fmul fast float %2302, %2298
  %2304 = fadd fast float %2303, %2301
  %2305 = fmul fast float %2304, %2298
  %2306 = fmul fast float %2296, 2.000000e+00
  %2307 = fsub fast float 1.000000e+00, %2306
  %2308 = fmul fast float %2307, %2299
  %2309 = fadd fast float %2308, %2306
  %2310 = fmul fast float %2309, %2299
  %2311 = fmul fast float %2297, 2.000000e+00
  %2312 = fsub fast float 1.000000e+00, %2311
  %2313 = fmul fast float %2312, %2300
  %2314 = fadd fast float %2313, %2311
  %2315 = fmul fast float %2314, %2300
  %2316 = fmul fast float %2305, %2305
  %2317 = fmul fast float %2310, %2310
  %2318 = fmul fast float %2315, %2315
  br label %2335

; <label>:2319                                    ; preds = %2282
  %2320 = fmul fast float %375, %375
  %2321 = fmul fast float %379, %379
  %2322 = fmul fast float %383, %383
  %2323 = fadd fast float %2320, -1.000000e+00
  %2324 = fadd fast float %2321, -1.000000e+00
  %2325 = fadd fast float %2322, -1.000000e+00
  %2326 = fmul fast float %2171, %2323
  %2327 = fmul fast float %2171, %2324
  %2328 = fmul fast float %2171, %2325
  %2329 = fadd fast float %2326, 1.000000e+00
  %2330 = fadd fast float %2327, 1.000000e+00
  %2331 = fadd fast float %2328, 1.000000e+00
  %2332 = fmul fast float %2329, %2146
  %2333 = fmul fast float %2330, %2147
  %2334 = fmul fast float %2331, %2148
  br label %2335

; <label>:2335                                    ; preds = %2319, %2285, %2176, %2132
  %2336 = phi float [ %2281, %2176 ], [ %2157, %2285 ], [ %2157, %2319 ], [ 0x3FA23C0BE0000000, %2132 ]
  %2337 = phi float [ %2273, %2176 ], [ %2316, %2285 ], [ %2332, %2319 ], [ 1.000000e+00, %2132 ]
  %2338 = phi float [ %2274, %2176 ], [ %2317, %2285 ], [ %2333, %2319 ], [ 1.000000e+00, %2132 ]
  %2339 = phi float [ %2275, %2176 ], [ %2318, %2285 ], [ %2334, %2319 ], [ 1.000000e+00, %2132 ]
  %2340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.i32 %2340, 1
  %2342 = and i32 %2341, 1
  %2343 = icmp ne i32 %2342, 0
  %2344 = add i32 %49, 356
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 32
  %2348 = icmp ne i32 %2347, 0
  %2349 = and i1 %2343, %2348
  %2350 = select i1 %2349, float 1.000000e+00, float %2337
  %2351 = select i1 %2349, float 0x3FD3333340000000, float %2338
  %2352 = select i1 %2349, float 0x3FD3333340000000, float %2339
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 32
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2429, label %2357

; <label>:2357                                    ; preds = %2335
  %2358 = add i32 %49, 124
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %49, 400
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = add i32 %2363, 0
  %2365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2364, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2365, %dx.types.Handle %105, float %2057, float %2058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = extractvalue %dx.types.ResRet.f32 %2366, 3
  %2371 = and i32 %2360, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = lshr i32 %2360, 8
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = lshr i32 %2360, 16
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = fmul fast float %2378, 0x3F70101000000000
  %2380 = fmul fast float %2367, %2372
  %2381 = fadd fast float %2380, %2375
  %2382 = fmul fast float %2381, 0x3F70101000000000
  %2383 = fadd fast float %2368, -5.000000e-01
  %2384 = fadd fast float %2370, -5.000000e-01
  %2385 = fmul fast float %2383, %2379
  %2386 = fmul fast float %2384, %2379
  %2387 = fadd fast float %2385, 5.000000e-01
  %2388 = fadd fast float %2386, 5.000000e-01
  %2389 = fmul fast float %2387, 2.000000e+00
  %2390 = fadd fast float %2389, -1.000000e+00
  %2391 = fmul fast float %2388, 2.000000e+00
  %2392 = fadd fast float %2391, -1.000000e+00
  %2393 = fadd fast float %2390, %2392
  %2394 = fmul fast float %2393, 5.000000e-01
  %2395 = fsub fast float %2390, %2392
  %2396 = fmul fast float %2395, 5.000000e-01
  %2397 = call float @dx.op.unary.f32(i32 6, float %2394)  ; FAbs(value)
  %2398 = fsub fast float 1.000000e+00, %2397
  %2399 = call float @dx.op.unary.f32(i32 6, float %2396)  ; FAbs(value)
  %2400 = fsub fast float %2398, %2399
  %2401 = call float @dx.op.dot3.f32(i32 55, float %2394, float %2396, float %2400, float %2394, float %2396, float %2400)  ; Dot3(ax,ay,az,bx,by,bz)
  %2402 = call float @dx.op.unary.f32(i32 25, float %2401)  ; Rsqrt(value)
  %2403 = fmul fast float %2394, %2402
  %2404 = fmul fast float %2396, %2402
  %2405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2406 = extractvalue %dx.types.ResRet.i32 %2405, 0
  %2407 = and i32 %2406, 67108864
  %2408 = icmp eq i32 %2407, 0
  br i1 %2408, label %2425, label %2409

; <label>:2409                                    ; preds = %2357
  %2410 = add i32 %49, 312
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 65535
  %2414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2413)  ; LegacyF16ToF32(value)
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 65535
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = lshr i32 %2412, 16
  %2420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2419)  ; LegacyF16ToF32(value)
  %2421 = fsub fast float %2382, %2420
  %2422 = fmul fast float %2421, %2414
  %2423 = fadd fast float %2422, %2418
  %2424 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  br label %2425

; <label>:2425                                    ; preds = %2409, %2357
  %2426 = phi float [ %2424, %2409 ], [ %2382, %2357 ]
  %2427 = call float @dx.op.dot2.f32(i32 54, float %2403, float %2404, float %1961, float %1962)  ; Dot2(ax,ay,bx,by)
  %2428 = call float @dx.op.dot2.f32(i32 54, float %2403, float %2404, float %1963, float %1964)  ; Dot2(ax,ay,bx,by)
  br label %2429

; <label>:2429                                    ; preds = %2425, %2335
  %2430 = phi float [ %2426, %2425 ], [ 0x3FD6666660000000, %2335 ]
  %2431 = phi float [ %2427, %2425 ], [ 0.000000e+00, %2335 ]
  %2432 = phi float [ %2428, %2425 ], [ 0.000000e+00, %2335 ]
  %2433 = phi float [ %2369, %2425 ], [ 1.000000e+00, %2335 ]
  %2434 = add i32 %49, 192
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = lshr i32 %2436, 22
  %2438 = shl nuw nsw i32 %2437, 5
  %2439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2438)  ; LegacyF16ToF32(value)
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 64
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2477, label %2444

; <label>:2444                                    ; preds = %2429
  %2445 = add i32 %49, 416
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = add i32 %2447, 0
  %2449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2448, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 131072
  %2453 = icmp eq i32 %2452, 0
  %2454 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2449, %dx.types.Handle %105, float %2057, float %2058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2455 = extractvalue %dx.types.ResRet.f32 %2454, 0
  %2456 = extractvalue %dx.types.ResRet.f32 %2454, 1
  %2457 = extractvalue %dx.types.ResRet.f32 %2454, 2
  %2458 = fmul fast float %2455, %363
  %2459 = fmul fast float %2456, %366
  %2460 = fmul fast float %2457, %369
  br i1 %2453, label %2467, label %2461

; <label>:2461                                    ; preds = %2444
  %2462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2463 = extractvalue %dx.types.CBufRet.f32 %2462, 0
  %2464 = fmul fast float %2463, %2458
  %2465 = fmul fast float %2463, %2459
  %2466 = fmul fast float %2463, %2460
  br label %2467

; <label>:2467                                    ; preds = %2461, %2444
  %2468 = phi float [ %2464, %2461 ], [ %2458, %2444 ]
  %2469 = phi float [ %2465, %2461 ], [ %2459, %2444 ]
  %2470 = phi float [ %2466, %2461 ], [ %2460, %2444 ]
  %2471 = fmul fast float %2468, %2439
  %2472 = select i1 %262, float %2471, float %2468
  %2473 = call float @dx.op.dot3.f32(i32 55, float %2472, float %2469, float %2470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2474 = select i1 %262, float 0.000000e+00, float %2468
  %2475 = select i1 %262, float %2473, float %2469
  %2476 = select i1 %262, float 0.000000e+00, float %2470
  br label %2477

; <label>:2477                                    ; preds = %2467, %2429
  %2478 = phi float [ %2474, %2467 ], [ 0.000000e+00, %2429 ]
  %2479 = phi float [ %2475, %2467 ], [ 0.000000e+00, %2429 ]
  %2480 = phi float [ %2476, %2467 ], [ 0.000000e+00, %2429 ]
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 10240
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2529, label %2485

; <label>:2485                                    ; preds = %2477
  %2486 = add i32 %49, 484
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = add i32 %2488, 0
  %2490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2490, %dx.types.Handle %106, float %2057, float %2058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2492 = extractvalue %dx.types.ResRet.f32 %2491, 1
  %2493 = extractvalue %dx.types.ResRet.f32 %2491, 3
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = and i32 %2495, 1048576
  %2497 = icmp ne i32 %2496, 0
  %2498 = and i32 %2495, 8192
  %2499 = icmp eq i32 %2498, 0
  br i1 %2499, label %2515, label %2500

; <label>:2500                                    ; preds = %2485
  %2501 = extractvalue %dx.types.ResRet.f32 %2491, 2
  %2502 = select i1 %2497, float %2501, float %2492
  %2503 = extractvalue %dx.types.ResRet.f32 %2491, 0
  %2504 = select i1 %2497, float %2503, float %2492
  %2505 = add i32 %49, 128
  %2506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2505, i32 undef)  ; BufferLoad(srv,index,wot)
  %2507 = extractvalue %dx.types.ResRet.i32 %2506, 0
  %2508 = lshr i32 %2507, 16
  %2509 = and i32 %2508, 255
  %2510 = uitofp i32 %2509 to float
  %2511 = fmul fast float %2510, 0x3F80101020000000
  %2512 = fmul fast float %2511, %2504
  %2513 = fmul fast float %2511, %2492
  %2514 = fmul fast float %2511, %2502
  br label %2515

; <label>:2515                                    ; preds = %2500, %2485
  %2516 = phi float [ %2512, %2500 ], [ 0.000000e+00, %2485 ]
  %2517 = phi float [ %2513, %2500 ], [ 0.000000e+00, %2485 ]
  %2518 = phi float [ %2514, %2500 ], [ 0.000000e+00, %2485 ]
  %2519 = and i32 %2495, 2048
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2529, label %2521

; <label>:2521                                    ; preds = %2515
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = shl i32 %2523, 4
  %2525 = and i32 %2524, 32752
  %2526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2525)  ; LegacyF16ToF32(value)
  %2527 = fmul fast float %2526, %2493
  %2528 = call float @dx.op.binary.f32(i32 35, float %2527, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2529

; <label>:2529                                    ; preds = %2521, %2515, %2477
  %2530 = phi float [ %2516, %2521 ], [ %2516, %2515 ], [ 0.000000e+00, %2477 ]
  %2531 = phi float [ %2517, %2521 ], [ %2517, %2515 ], [ 0.000000e+00, %2477 ]
  %2532 = phi float [ %2518, %2521 ], [ %2518, %2515 ], [ 0.000000e+00, %2477 ]
  %2533 = phi float [ %2528, %2521 ], [ 0x3F70101020000000, %2515 ], [ 0x3F70101020000000, %2477 ]
  %2534 = add i32 %49, 128
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 255
  %2538 = uitofp i32 %2537 to float
  %2539 = lshr i32 %2536, 8
  %2540 = and i32 %2539, 255
  %2541 = uitofp i32 %2540 to float
  %2542 = call float @dx.op.dot3.f32(i32 55, float %2350, float %2351, float %2352, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2543 = fmul fast float %2541, %2542
  %2544 = fadd fast float %2543, %2538
  %2545 = fmul fast float %2544, 0x3F70101020000000
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  br i1 %1949, label %2547, label %2555

; <label>:2547                                    ; preds = %2529
  %2548 = fsub fast float 1.000000e+00, %2130
  %2549 = fmul fast float %2548, %1934
  %2550 = fmul fast float %2548, %1935
  %2551 = fmul fast float %2548, %1936
  %2552 = fmul fast float %2548, %1937
  %2553 = fmul fast float %2548, %1938
  %2554 = fmul fast float %2548, %1939
  br label %2555

; <label>:2555                                    ; preds = %2547, %2529
  %2556 = phi float [ %2549, %2547 ], [ %1934, %2529 ]
  %2557 = phi float [ %2550, %2547 ], [ %1935, %2529 ]
  %2558 = phi float [ %2551, %2547 ], [ %1936, %2529 ]
  %2559 = phi float [ %2552, %2547 ], [ %1937, %2529 ]
  %2560 = phi float [ %2553, %2547 ], [ %1938, %2529 ]
  %2561 = phi float [ %2554, %2547 ], [ %1939, %2529 ]
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 3
  %2565 = icmp eq i32 %2564, 3
  br i1 %2565, label %2644, label %2566

; <label>:2566                                    ; preds = %2555
  %2567 = and i32 %2563, 16
  %2568 = icmp ne i32 %2567, 0
  %2569 = select i1 %2568, float %2130, float 0.000000e+00
  %2570 = icmp eq i32 %2564, 0
  br i1 %2570, label %2571, label %2599

; <label>:2571                                    ; preds = %2566
  %2572 = and i32 %2563, 64
  %2573 = icmp ne i32 %2572, 0
  %2574 = select i1 %2573, float %2130, float 0.000000e+00
  %2575 = fsub fast float %2350, %2556
  %2576 = fsub fast float %2351, %2557
  %2577 = fsub fast float %2352, %2558
  %2578 = fmul fast float %2569, %2575
  %2579 = fmul fast float %2569, %2576
  %2580 = fmul fast float %2569, %2577
  %2581 = fadd fast float %2578, %2556
  %2582 = fadd fast float %2579, %2557
  %2583 = fadd fast float %2580, %2558
  %2584 = fsub fast float %2336, %1943
  %2585 = fmul fast float %2569, %2584
  %2586 = fadd fast float %2585, %1943
  %2587 = fsub fast float %2478, %2559
  %2588 = fsub fast float %2479, %2560
  %2589 = fsub fast float %2480, %2561
  %2590 = fmul fast float %2574, %2587
  %2591 = fmul fast float %2574, %2588
  %2592 = fmul fast float %2574, %2589
  %2593 = fadd fast float %2590, %2559
  %2594 = fadd fast float %2591, %2560
  %2595 = fadd fast float %2592, %2561
  %2596 = fsub fast float %2546, %1947
  %2597 = fmul fast float %2569, %2596
  %2598 = fadd fast float %2597, %1947
  br label %2644

; <label>:2599                                    ; preds = %2566
  %2600 = icmp eq i32 %2564, 1
  br i1 %2600, label %2601, label %2614

; <label>:2601                                    ; preds = %2599
  %2602 = fadd fast float %2350, -1.000000e+00
  %2603 = fadd fast float %2351, -1.000000e+00
  %2604 = fadd fast float %2352, -1.000000e+00
  %2605 = fmul fast float %2569, %2602
  %2606 = fmul fast float %2569, %2603
  %2607 = fmul fast float %2569, %2604
  %2608 = fadd fast float %2605, 1.000000e+00
  %2609 = fadd fast float %2606, 1.000000e+00
  %2610 = fadd fast float %2607, 1.000000e+00
  %2611 = fmul fast float %2608, %2556
  %2612 = fmul fast float %2609, %2557
  %2613 = fmul fast float %2610, %2558
  br label %2644

; <label>:2614                                    ; preds = %2599
  %2615 = icmp eq i32 %2564, 2
  br i1 %2615, label %2616, label %2644

; <label>:2616                                    ; preds = %2614
  %2617 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2618 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2619 = call float @dx.op.unary.f32(i32 24, float %2352)  ; Sqrt(value)
  %2620 = fadd fast float %2617, -5.000000e-01
  %2621 = fadd fast float %2618, -5.000000e-01
  %2622 = fadd fast float %2619, -5.000000e-01
  %2623 = fmul fast float %2620, %2569
  %2624 = fmul fast float %2621, %2569
  %2625 = fmul fast float %2622, %2569
  %2626 = fadd fast float %2623, 5.000000e-01
  %2627 = fadd fast float %2624, 5.000000e-01
  %2628 = fadd fast float %2625, 5.000000e-01
  %2629 = fmul fast float %2626, 2.000000e+00
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = fmul fast float %2630, %2556
  %2632 = fadd fast float %2631, %2629
  %2633 = fmul fast float %2632, %2556
  %2634 = fmul fast float %2627, 2.000000e+00
  %2635 = fsub fast float 1.000000e+00, %2634
  %2636 = fmul fast float %2635, %2557
  %2637 = fadd fast float %2636, %2634
  %2638 = fmul fast float %2637, %2557
  %2639 = fmul fast float %2628, 2.000000e+00
  %2640 = fsub fast float 1.000000e+00, %2639
  %2641 = fmul fast float %2640, %2558
  %2642 = fadd fast float %2641, %2639
  %2643 = fmul fast float %2642, %2558
  br label %2644

; <label>:2644                                    ; preds = %2616, %2614, %2601, %2571, %2555
  %2645 = phi float [ %2556, %2555 ], [ %2633, %2616 ], [ %2556, %2614 ], [ %2611, %2601 ], [ %2581, %2571 ]
  %2646 = phi float [ %2557, %2555 ], [ %2638, %2616 ], [ %2557, %2614 ], [ %2612, %2601 ], [ %2582, %2571 ]
  %2647 = phi float [ %2558, %2555 ], [ %2643, %2616 ], [ %2558, %2614 ], [ %2613, %2601 ], [ %2583, %2571 ]
  %2648 = phi float [ %2559, %2555 ], [ %2559, %2616 ], [ %2559, %2614 ], [ %2559, %2601 ], [ %2593, %2571 ]
  %2649 = phi float [ %2560, %2555 ], [ %2560, %2616 ], [ %2560, %2614 ], [ %2560, %2601 ], [ %2594, %2571 ]
  %2650 = phi float [ %2561, %2555 ], [ %2561, %2616 ], [ %2561, %2614 ], [ %2561, %2601 ], [ %2595, %2571 ]
  %2651 = phi float [ %1943, %2555 ], [ %1943, %2616 ], [ %1943, %2614 ], [ %1943, %2601 ], [ %2586, %2571 ]
  %2652 = phi float [ %1947, %2555 ], [ %1947, %2616 ], [ %1947, %2614 ], [ %1947, %2601 ], [ %2598, %2571 ]
  %2653 = and i32 %2563, 12
  %2654 = icmp eq i32 %2653, 12
  br i1 %2654, label %2761, label %2655

; <label>:2655                                    ; preds = %2644
  %2656 = and i32 %2563, 2097184
  %2657 = icmp eq i32 %2656, 2097184
  %2658 = select i1 %2657, float %2130, float 0.000000e+00
  %2659 = and i32 %2563, 4194336
  %2660 = icmp eq i32 %2659, 4194336
  %2661 = select i1 %2660, float %2130, float 0.000000e+00
  %2662 = and i32 %2563, 8388640
  %2663 = icmp eq i32 %2662, 8388640
  %2664 = select i1 %2663, float %2130, float 0.000000e+00
  %2665 = and i32 %2563, 2048
  %2666 = icmp ne i32 %2665, 0
  %2667 = select i1 %2666, float %2130, float 0.000000e+00
  %2668 = and i32 %2563, 8192
  %2669 = icmp ne i32 %2668, 0
  %2670 = select i1 %2669, float %2130, float 0.000000e+00
  %2671 = icmp eq i32 %2653, 0
  br i1 %2671, label %2672, label %2697

; <label>:2672                                    ; preds = %2655
  %2673 = fsub fast float %2431, %1932
  %2674 = fsub fast float %2432, %1933
  %2675 = fmul fast float %2658, %2673
  %2676 = fmul fast float %2658, %2674
  %2677 = fadd fast float %2675, %1932
  %2678 = fadd fast float %2676, %1933
  %2679 = fsub fast float %2433, %1945
  %2680 = fmul fast float %2661, %2679
  %2681 = fadd fast float %2680, %1945
  %2682 = fsub fast float %2430, %1944
  %2683 = fmul fast float %2664, %2682
  %2684 = fadd fast float %2683, %1944
  %2685 = fsub fast float %2533, %1946
  %2686 = fmul fast float %2667, %2685
  %2687 = fadd fast float %2686, %1946
  %2688 = fsub fast float %2530, %1940
  %2689 = fsub fast float %2531, %1941
  %2690 = fsub fast float %2532, %1942
  %2691 = fmul fast float %2670, %2688
  %2692 = fmul fast float %2670, %2689
  %2693 = fmul fast float %2670, %2690
  %2694 = fadd fast float %2691, %1940
  %2695 = fadd fast float %2692, %1941
  %2696 = fadd fast float %2693, %1942
  br label %2761

; <label>:2697                                    ; preds = %2655
  %2698 = icmp eq i32 %2653, 4
  br i1 %2698, label %2699, label %2739

; <label>:2699                                    ; preds = %2697
  %2700 = fmul fast float %2658, %2431
  %2701 = fmul fast float %2658, %2432
  %2702 = fadd fast float %2700, %1932
  %2703 = fadd fast float %2701, %1933
  %2704 = call float @dx.op.binary.f32(i32 36, float %1945, float %2433)  ; FMin(a,b)
  %2705 = fsub fast float %2704, %1945
  %2706 = fmul fast float %2705, %2661
  %2707 = fadd fast float %2706, %1945
  %2708 = fadd fast float %2430, %1944
  %2709 = fmul fast float %2708, 0x3FF337FAE0000000
  %2710 = fmul fast float %1944, %1944
  %2711 = fmul fast float %2430, %2430
  %2712 = fadd fast float %2711, %2710
  %2713 = fmul fast float %2712, 0x3FE5152B00000000
  %2714 = fmul fast float %1944, 0xBFCC1F85E0000000
  %2715 = fmul fast float %2714, %2430
  %2716 = fadd fast float %2715, 0xBFE1363700000000
  %2717 = fadd fast float %2716, %2709
  %2718 = fsub fast float %2717, %2713
  %2719 = fmul fast float %2708, 0x3FBA6F0D00000000
  %2720 = fmul fast float %2712, 0x3FD0432880000000
  %2721 = fmul fast float %1944, 0xBFEF110800000000
  %2722 = fmul fast float %2721, %2430
  %2723 = fadd fast float %2722, 1.000000e+00
  %2724 = fsub fast float %2723, %2719
  %2725 = fadd fast float %2724, %2720
  %2726 = fdiv fast float %2718, %2725
  %2727 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2728 = fsub fast float %2727, %1944
  %2729 = fmul fast float %2728, %2664
  %2730 = fadd fast float %2729, %1944
  %2731 = fmul fast float %2667, %2533
  %2732 = fadd fast float %2731, %1946
  %2733 = fmul fast float %2670, %2530
  %2734 = fmul fast float %2670, %2531
  %2735 = fmul fast float %2670, %2532
  %2736 = fadd fast float %2733, %1940
  %2737 = fadd fast float %2734, %1941
  %2738 = fadd fast float %2735, %1942
  br label %2761

; <label>:2739                                    ; preds = %2697
  %2740 = icmp eq i32 %2653, 8
  br i1 %2740, label %2741, label %2761

; <label>:2741                                    ; preds = %2739
  %2742 = fmul fast float %2658, %2431
  %2743 = fmul fast float %2658, %2432
  %2744 = fadd fast float %2742, %1932
  %2745 = fadd fast float %2743, %1933
  %2746 = call float @dx.op.binary.f32(i32 36, float %1945, float %2433)  ; FMin(a,b)
  %2747 = fsub fast float %2746, %1945
  %2748 = fmul fast float %2747, %2661
  %2749 = fadd fast float %2748, %1945
  %2750 = fsub fast float %2430, %1944
  %2751 = fmul fast float %2664, %2750
  %2752 = fadd fast float %2751, %1944
  %2753 = fmul fast float %2667, %2533
  %2754 = fadd fast float %2753, %1946
  %2755 = fmul fast float %2670, %2530
  %2756 = fmul fast float %2670, %2531
  %2757 = fmul fast float %2670, %2532
  %2758 = fadd fast float %2755, %1940
  %2759 = fadd fast float %2756, %1941
  %2760 = fadd fast float %2757, %1942
  br label %2761

; <label>:2761                                    ; preds = %2741, %2739, %2699, %2672, %2644, %2129, %1948, %1931
  %2762 = phi float [ %1932, %2644 ], [ %1932, %2129 ], [ %1932, %1931 ], [ %2744, %2741 ], [ %1932, %2739 ], [ %2702, %2699 ], [ %2677, %2672 ], [ %1932, %1948 ]
  %2763 = phi float [ %1933, %2644 ], [ %1933, %2129 ], [ %1933, %1931 ], [ %2745, %2741 ], [ %1933, %2739 ], [ %2703, %2699 ], [ %2678, %2672 ], [ %1933, %1948 ]
  %2764 = phi float [ %2645, %2644 ], [ %1934, %2129 ], [ %1934, %1931 ], [ %2645, %2741 ], [ %2645, %2739 ], [ %2645, %2699 ], [ %2645, %2672 ], [ %1934, %1948 ]
  %2765 = phi float [ %2646, %2644 ], [ %1935, %2129 ], [ %1935, %1931 ], [ %2646, %2741 ], [ %2646, %2739 ], [ %2646, %2699 ], [ %2646, %2672 ], [ %1935, %1948 ]
  %2766 = phi float [ %2647, %2644 ], [ %1936, %2129 ], [ %1936, %1931 ], [ %2647, %2741 ], [ %2647, %2739 ], [ %2647, %2699 ], [ %2647, %2672 ], [ %1936, %1948 ]
  %2767 = phi float [ %2648, %2644 ], [ %1937, %2129 ], [ %1937, %1931 ], [ %2648, %2741 ], [ %2648, %2739 ], [ %2648, %2699 ], [ %2648, %2672 ], [ %1937, %1948 ]
  %2768 = phi float [ %2649, %2644 ], [ %1938, %2129 ], [ %1938, %1931 ], [ %2649, %2741 ], [ %2649, %2739 ], [ %2649, %2699 ], [ %2649, %2672 ], [ %1938, %1948 ]
  %2769 = phi float [ %2650, %2644 ], [ %1939, %2129 ], [ %1939, %1931 ], [ %2650, %2741 ], [ %2650, %2739 ], [ %2650, %2699 ], [ %2650, %2672 ], [ %1939, %1948 ]
  %2770 = phi float [ %1940, %2644 ], [ %1940, %2129 ], [ %1940, %1931 ], [ %2758, %2741 ], [ %1940, %2739 ], [ %2736, %2699 ], [ %2694, %2672 ], [ %1940, %1948 ]
  %2771 = phi float [ %1941, %2644 ], [ %1941, %2129 ], [ %1941, %1931 ], [ %2759, %2741 ], [ %1941, %2739 ], [ %2737, %2699 ], [ %2695, %2672 ], [ %1941, %1948 ]
  %2772 = phi float [ %1942, %2644 ], [ %1942, %2129 ], [ %1942, %1931 ], [ %2760, %2741 ], [ %1942, %2739 ], [ %2738, %2699 ], [ %2696, %2672 ], [ %1942, %1948 ]
  %2773 = phi float [ %2651, %2644 ], [ %1943, %2129 ], [ %1943, %1931 ], [ %2651, %2741 ], [ %2651, %2739 ], [ %2651, %2699 ], [ %2651, %2672 ], [ %1943, %1948 ]
  %2774 = phi float [ %1944, %2644 ], [ %1944, %2129 ], [ %1944, %1931 ], [ %2752, %2741 ], [ %1944, %2739 ], [ %2730, %2699 ], [ %2684, %2672 ], [ %1944, %1948 ]
  %2775 = phi float [ %1945, %2644 ], [ %1945, %2129 ], [ %1945, %1931 ], [ %2749, %2741 ], [ %1945, %2739 ], [ %2707, %2699 ], [ %2681, %2672 ], [ %1945, %1948 ]
  %2776 = phi float [ %1946, %2644 ], [ %1946, %2129 ], [ %1946, %1931 ], [ %2754, %2741 ], [ %1946, %2739 ], [ %2732, %2699 ], [ %2687, %2672 ], [ %1946, %1948 ]
  %2777 = phi float [ %2652, %2644 ], [ %1947, %2129 ], [ %1947, %1931 ], [ %2652, %2741 ], [ %2652, %2739 ], [ %2652, %2699 ], [ %2652, %2672 ], [ %1947, %1948 ]
  br i1 %450, label %3591, label %2778

; <label>:2778                                    ; preds = %2761
  %2779 = icmp ult i32 %504, 4
  %2780 = add i32 %49, 72
  %2781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2782 = extractvalue %dx.types.ResRet.i32 %2781, 0
  %2783 = add i32 %49, 76
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = or i32 %2785, %2782
  %2787 = icmp eq i32 %2786, 0
  br i1 %2787, label %3591, label %2788

; <label>:2788                                    ; preds = %2778
  %2789 = and i32 %2782, 262144
  %2790 = icmp ne i32 %2789, 0
  %2791 = select i1 %2790, float %55, float 1.000000e+00
  %2792 = select i1 %2790, float %56, float 0.000000e+00
  %2793 = select i1 %2790, float %57, float 0.000000e+00
  %2794 = select i1 %2790, float %58, float 1.000000e+00
  %2795 = select i1 %2790, float %59, float %87
  %2796 = select i1 %2790, float %60, float %88
  %2797 = add i32 %49, 332
  %2798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.i32 %2798, 0
  %2800 = lshr i32 %2799, 16
  %2801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2800)  ; LegacyF16ToF32(value)
  %2802 = fmul fast float %2801, 0x3F50624DE0000000
  %2803 = add i32 %49, 136
  %2804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2805 = extractvalue %dx.types.ResRet.i32 %2804, 0
  %2806 = lshr i32 %2805, 16
  %2807 = and i32 %2806, 255
  %2808 = lshr i32 %2805, 24
  %2809 = add i32 %49, 340
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %2811, 65535
  %2813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2812)  ; LegacyF16ToF32(value)
  %2814 = lshr i32 %2811, 16
  %2815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2814)  ; LegacyF16ToF32(value)
  %2816 = add i32 %49, 80
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = lshr i32 %2818, 22
  %2820 = shl nuw nsw i32 %2819, 5
  %2821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2820)  ; LegacyF16ToF32(value)
  %2822 = shl i32 %2818, 4
  %2823 = and i32 %2822, 32752
  %2824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2823)  ; LegacyF16ToF32(value)
  %2825 = lshr i32 %2818, 7
  %2826 = and i32 %2825, 32752
  %2827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2826)  ; LegacyF16ToF32(value)
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 3
  %2830 = fmul fast float %2829, 1.000000e+03
  %2831 = fmul fast float %440, %2830
  %2832 = call float @dx.op.unary.f32(i32 22, float %2831)  ; Frc(value)
  %2833 = fadd fast float %2832, %430
  %2834 = fmul fast float %441, %2830
  %2835 = call float @dx.op.unary.f32(i32 22, float %2834)  ; Frc(value)
  %2836 = fadd fast float %2835, %432
  %2837 = fmul fast float %2802, %2830
  %2838 = call float @dx.op.unary.f32(i32 22, float %2837)  ; Frc(value)
  %2839 = fmul fast float %2838, 0x401921FB60000000
  %2840 = fadd fast float %2839, %2821
  %2841 = call float @dx.op.unary.f32(i32 13, float %2840)  ; Sin(value)
  %2842 = call float @dx.op.unary.f32(i32 12, float %2840)  ; Cos(value)
  %2843 = fsub fast float -0.000000e+00, %2841
  %2844 = fadd fast float %2795, -5.000000e-01
  %2845 = fadd fast float %2796, -5.000000e-01
  %2846 = fmul fast float %2813, %2844
  %2847 = fmul fast float %2815, %2845
  %2848 = fadd fast float %2846, 5.000000e-01
  %2849 = fadd fast float %2847, 5.000000e-01
  %2850 = fmul fast float %2824, %2848
  %2851 = fmul fast float %2827, %2849
  %2852 = fmul fast float %2842, %2850
  %2853 = call float @dx.op.tertiary.f32(i32 46, float %2843, float %2851, float %2852)  ; FMad(a,b,c)
  %2854 = fmul fast float %2841, %2850
  %2855 = call float @dx.op.tertiary.f32(i32 46, float %2842, float %2851, float %2854)  ; FMad(a,b,c)
  %2856 = fadd fast float %2833, %2853
  %2857 = fadd fast float %2836, %2855
  %2858 = icmp ugt i32 %2807, 1
  %2859 = icmp ugt i32 %2805, 33554431
  %2860 = or i1 %2859, %2858
  br i1 %2860, label %2861, label %2886

; <label>:2861                                    ; preds = %2788
  %2862 = add i32 %49, 276
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = lshr i32 %2864, 16
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = fmul fast float %2829, %2866
  %2868 = call float @dx.op.unary.f32(i32 22, float %2867)  ; Frc(value)
  %2869 = mul nuw nsw i32 %2807, %2808
  %2870 = uitofp i32 %2869 to float
  %2871 = fmul fast float %2868, %2870
  %2872 = call float @dx.op.unary.f32(i32 27, float %2871)  ; Round_ni(value)
  %2873 = fptoui float %2872 to i32
  %2874 = urem i32 %2873, %2807
  %2875 = udiv i32 %2873, %2808
  %2876 = call float @dx.op.unary.f32(i32 22, float %2856)  ; Frc(value)
  %2877 = call float @dx.op.unary.f32(i32 22, float %2857)  ; Frc(value)
  %2878 = uitofp i32 %2874 to float
  %2879 = uitofp i32 %2875 to float
  %2880 = fadd fast float %2876, %2878
  %2881 = fadd fast float %2877, %2879
  %2882 = uitofp i32 %2807 to float
  %2883 = uitofp i32 %2808 to float
  %2884 = fdiv fast float %2880, %2882
  %2885 = fdiv fast float %2881, %2883
  br label %2886

; <label>:2886                                    ; preds = %2861, %2788
  %2887 = phi float [ %2884, %2861 ], [ %2856, %2788 ]
  %2888 = phi float [ %2885, %2861 ], [ %2857, %2788 ]
  %2889 = and i32 %2782, 256
  %2890 = icmp eq i32 %2889, 0
  br i1 %2890, label %2937, label %2891

; <label>:2891                                    ; preds = %2886
  %2892 = add i32 %49, 452
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = add i32 %2894, 0
  %2896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2895, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2897 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2896, %dx.types.Handle %106, float %2887, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2898 = extractvalue %dx.types.ResRet.f32 %2897, 0
  %2899 = add i32 %49, 148
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = shl i32 %2901, 4
  %2903 = and i32 %2902, 32752
  %2904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2903)  ; LegacyF16ToF32(value)
  %2905 = lshr i32 %2901, 7
  %2906 = and i32 %2905, 32752
  %2907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2906)  ; LegacyF16ToF32(value)
  %2908 = fsub fast float 1.000000e+00, %499
  %2909 = call float @dx.op.binary.f32(i32 35, float %2908, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2910 = bitcast float %499 to i32
  %2911 = sitofp i32 %2910 to float
  %2912 = fadd fast float %2911, 0xC1CFBF8940000000
  %2913 = fmul fast float %2907, %2912
  %2914 = fadd fast float %2913, 0x41CFBF8940000000
  %2915 = fptosi float %2914 to i32
  %2916 = bitcast i32 %2915 to float
  %2917 = bitcast float %2909 to i32
  %2918 = sitofp i32 %2917 to float
  %2919 = fadd fast float %2918, 0xC1CFBF8940000000
  %2920 = fmul fast float %2919, %2907
  %2921 = fadd fast float %2920, 0x41CFBF8940000000
  %2922 = fptosi float %2921 to i32
  %2923 = bitcast i32 %2922 to float
  %2924 = fmul fast float %2916, %2904
  %2925 = fmul fast float %2923, %2904
  %2926 = fsub fast float %2909, %2924
  %2927 = fadd fast float %2925, %2909
  %2928 = call float @dx.op.unary.f32(i32 7, float %2926)  ; Saturate(value)
  %2929 = call float @dx.op.unary.f32(i32 7, float %2927)  ; Saturate(value)
  %2930 = fsub fast float %2898, %2928
  %2931 = fsub fast float %2929, %2928
  %2932 = bitcast float %2931 to i32
  %2933 = sub nsw i32 2129859010, %2932
  %2934 = bitcast i32 %2933 to float
  %2935 = fmul fast float %2934, %2930
  %2936 = call float @dx.op.unary.f32(i32 7, float %2935)  ; Saturate(value)
  br label %2937

; <label>:2937                                    ; preds = %2891, %2886
  %2938 = phi float [ %2936, %2891 ], [ %499, %2886 ]
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, 128
  %2942 = icmp eq i32 %2941, 0
  br i1 %2942, label %2959, label %2943

; <label>:2943                                    ; preds = %2937
  %2944 = add i32 %49, 436
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = add i32 %2946, 0
  %2948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2948, %dx.types.Handle %106, float %2887, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 0
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 524288
  %2954 = icmp ne i32 %2953, 0
  %2955 = fcmp fast ogt float %2950, 0x3FE0101020000000
  %2956 = select i1 %2955, float 1.000000e+00, float 0.000000e+00
  %2957 = select i1 %2954, float %2956, float %2950
  %2958 = fmul fast float %2957, %2938
  br label %2959

; <label>:2959                                    ; preds = %2943, %2937
  %2960 = phi float [ %2958, %2943 ], [ %2938, %2937 ]
  %2961 = fcmp fast ult float %2960, 0x3F70101020000000
  br i1 %2961, label %3591, label %2962

; <label>:2962                                    ; preds = %2959
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = and i32 %2964, 16
  %2966 = icmp eq i32 %2965, 0
  br i1 %2966, label %3165, label %2967

; <label>:2967                                    ; preds = %2962
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2803, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = add i32 %49, 388
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = add i32 %2972, 0
  %2974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2975 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2974, %dx.types.Handle %105, float %2887, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2976 = extractvalue %dx.types.ResRet.f32 %2975, 0
  %2977 = extractvalue %dx.types.ResRet.f32 %2975, 1
  %2978 = extractvalue %dx.types.ResRet.f32 %2975, 2
  %2979 = extractvalue %dx.types.ResRet.f32 %2975, 3
  %2980 = and i32 %2969, 255
  %2981 = uitofp i32 %2980 to float
  %2982 = lshr i32 %2969, 8
  %2983 = and i32 %2982, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2979, %2981
  %2986 = fadd fast float %2985, %2984
  %2987 = fmul fast float %2986, 0x3F70101000000000
  %2988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %2989 = extractvalue %dx.types.ResRet.i32 %2988, 0
  %2990 = and i32 %2989, 512
  %2991 = icmp eq i32 %2990, 0
  br i1 %2991, label %3000, label %2992

; <label>:2992                                    ; preds = %2967
  %2993 = add i32 %49, 472
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = add i32 %2995, 0
  %2997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2998 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2997, %dx.types.Handle %106, float %2887, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  br label %3000

; <label>:3000                                    ; preds = %2992, %2967
  %3001 = phi float [ %2999, %2992 ], [ 1.000000e+00, %2967 ]
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 33554432
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3112, label %3006

; <label>:3006                                    ; preds = %3000
  %3007 = add i32 %49, 272
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = and i32 %3009, 65535
  %3011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3010)  ; LegacyF16ToF32(value)
  %3012 = lshr i32 %3009, 16
  %3013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3012)  ; LegacyF16ToF32(value)
  %3014 = add i32 %49, 276
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3014, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 65535
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %3020 = extractvalue %dx.types.ResRet.i32 %3019, 0
  %3021 = lshr i32 %3020, 24
  %3022 = uitofp i32 %3021 to float
  %3023 = fmul fast float %3022, 0x3F70101020000000
  %3024 = and i32 %3020, 255
  %3025 = uitofp i32 %3024 to float
  %3026 = fmul fast float %3025, 0x3F70101020000000
  %3027 = lshr i32 %3020, 8
  %3028 = and i32 %3027, 255
  %3029 = uitofp i32 %3028 to float
  %3030 = fmul fast float %3029, 0x3F70101020000000
  %3031 = lshr i32 %3020, 16
  %3032 = and i32 %3031, 255
  %3033 = uitofp i32 %3032 to float
  %3034 = fmul fast float %3033, 0x3F70101020000000
  %3035 = add i32 %49, 268
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = lshr i32 %3037, 24
  %3039 = uitofp i32 %3038 to float
  %3040 = fmul fast float %3039, 0x3F70101020000000
  %3041 = and i32 %3037, 255
  %3042 = uitofp i32 %3041 to float
  %3043 = fmul fast float %3042, 0x3F70101020000000
  %3044 = lshr i32 %3037, 8
  %3045 = and i32 %3044, 255
  %3046 = uitofp i32 %3045 to float
  %3047 = fmul fast float %3046, 0x3F70101020000000
  %3048 = lshr i32 %3037, 16
  %3049 = and i32 %3048, 255
  %3050 = uitofp i32 %3049 to float
  %3051 = fmul fast float %3050, 0x3F70101020000000
  %3052 = bitcast float %2976 to i32
  %3053 = ashr i32 %3052, 1
  %3054 = sub nsw i32 1597463174, %3053
  %3055 = bitcast i32 %3054 to float
  %3056 = fmul fast float %2976, 5.000000e-01
  %3057 = fmul fast float %3055, %3055
  %3058 = fmul fast float %3057, %3056
  %3059 = fsub fast float 1.500000e+00, %3058
  %3060 = fmul fast float %3055, %2976
  %3061 = fmul fast float %3060, %3059
  %3062 = bitcast float %2977 to i32
  %3063 = ashr i32 %3062, 1
  %3064 = sub nsw i32 1597463174, %3063
  %3065 = bitcast i32 %3064 to float
  %3066 = fmul fast float %2977, 5.000000e-01
  %3067 = fmul fast float %3065, %3065
  %3068 = fmul fast float %3067, %3066
  %3069 = fsub fast float 1.500000e+00, %3068
  %3070 = fmul fast float %3065, %2977
  %3071 = fmul fast float %3070, %3069
  %3072 = bitcast float %2978 to i32
  %3073 = ashr i32 %3072, 1
  %3074 = sub nsw i32 1597463174, %3073
  %3075 = bitcast i32 %3074 to float
  %3076 = fmul fast float %2978, 5.000000e-01
  %3077 = fmul fast float %3075, %3075
  %3078 = fmul fast float %3077, %3076
  %3079 = fsub fast float 1.500000e+00, %3078
  %3080 = fmul fast float %3075, %2978
  %3081 = fmul fast float %3080, %3079
  %3082 = fsub fast float %3061, %3043
  %3083 = fsub fast float %3071, %3047
  %3084 = fsub fast float %3081, %3051
  %3085 = fmul fast float %3082, %3011
  %3086 = fmul fast float %3083, %3013
  %3087 = fmul fast float %3084, %3018
  %3088 = fadd fast float %3085, %3026
  %3089 = fadd fast float %3086, %3030
  %3090 = fadd fast float %3087, %3034
  %3091 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  %3092 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3093 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3094 = fmul fast float %3091, %3091
  %3095 = fmul fast float %3092, %3092
  %3096 = fmul fast float %3093, %3093
  %3097 = fsub fast float %3094, %2976
  %3098 = fsub fast float %3095, %2977
  %3099 = fsub fast float %3096, %2978
  %3100 = fmul fast float %3097, %3001
  %3101 = fmul fast float %3098, %3001
  %3102 = fmul fast float %3099, %3001
  %3103 = fadd fast float %3100, %2976
  %3104 = fadd fast float %3101, %2977
  %3105 = fadd fast float %3102, %2978
  %3106 = fadd fast float %3023, %2987
  %3107 = fsub fast float %3106, %3040
  %3108 = call float @dx.op.unary.f32(i32 7, float %3107)  ; Saturate(value)
  %3109 = fsub fast float %3108, %2987
  %3110 = fmul fast float %3109, %3001
  %3111 = fadd fast float %3110, %2987
  br label %3165

; <label>:3112                                    ; preds = %3000
  %3113 = and i32 %3003, 134217728
  %3114 = icmp eq i32 %3113, 0
  br i1 %3114, label %3149, label %3115

; <label>:3115                                    ; preds = %3112
  %3116 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %3117 = call float @dx.op.unary.f32(i32 24, float %421)  ; Sqrt(value)
  %3118 = call float @dx.op.unary.f32(i32 24, float %425)  ; Sqrt(value)
  %3119 = fadd fast float %3116, -5.000000e-01
  %3120 = fadd fast float %3117, -5.000000e-01
  %3121 = fadd fast float %3118, -5.000000e-01
  %3122 = fmul fast float %3119, %3001
  %3123 = fmul fast float %3120, %3001
  %3124 = fmul fast float %3121, %3001
  %3125 = fadd fast float %3122, 5.000000e-01
  %3126 = fadd fast float %3123, 5.000000e-01
  %3127 = fadd fast float %3124, 5.000000e-01
  %3128 = call float @dx.op.unary.f32(i32 24, float %2976)  ; Sqrt(value)
  %3129 = call float @dx.op.unary.f32(i32 24, float %2977)  ; Sqrt(value)
  %3130 = call float @dx.op.unary.f32(i32 24, float %2978)  ; Sqrt(value)
  %3131 = fmul fast float %3125, 2.000000e+00
  %3132 = fsub fast float 1.000000e+00, %3131
  %3133 = fmul fast float %3132, %3128
  %3134 = fadd fast float %3133, %3131
  %3135 = fmul fast float %3134, %3128
  %3136 = fmul fast float %3126, 2.000000e+00
  %3137 = fsub fast float 1.000000e+00, %3136
  %3138 = fmul fast float %3137, %3129
  %3139 = fadd fast float %3138, %3136
  %3140 = fmul fast float %3139, %3129
  %3141 = fmul fast float %3127, 2.000000e+00
  %3142 = fsub fast float 1.000000e+00, %3141
  %3143 = fmul fast float %3142, %3130
  %3144 = fadd fast float %3143, %3141
  %3145 = fmul fast float %3144, %3130
  %3146 = fmul fast float %3135, %3135
  %3147 = fmul fast float %3140, %3140
  %3148 = fmul fast float %3145, %3145
  br label %3165

; <label>:3149                                    ; preds = %3112
  %3150 = fmul fast float %417, %417
  %3151 = fmul fast float %421, %421
  %3152 = fmul fast float %425, %425
  %3153 = fadd fast float %3150, -1.000000e+00
  %3154 = fadd fast float %3151, -1.000000e+00
  %3155 = fadd fast float %3152, -1.000000e+00
  %3156 = fmul fast float %3001, %3153
  %3157 = fmul fast float %3001, %3154
  %3158 = fmul fast float %3001, %3155
  %3159 = fadd fast float %3156, 1.000000e+00
  %3160 = fadd fast float %3157, 1.000000e+00
  %3161 = fadd fast float %3158, 1.000000e+00
  %3162 = fmul fast float %3159, %2976
  %3163 = fmul fast float %3160, %2977
  %3164 = fmul fast float %3161, %2978
  br label %3165

; <label>:3165                                    ; preds = %3149, %3115, %3006, %2962
  %3166 = phi float [ %3111, %3006 ], [ %2987, %3115 ], [ %2987, %3149 ], [ 0x3FA23C0BE0000000, %2962 ]
  %3167 = phi float [ %3103, %3006 ], [ %3146, %3115 ], [ %3162, %3149 ], [ 1.000000e+00, %2962 ]
  %3168 = phi float [ %3104, %3006 ], [ %3147, %3115 ], [ %3163, %3149 ], [ 1.000000e+00, %2962 ]
  %3169 = phi float [ %3105, %3006 ], [ %3148, %3115 ], [ %3164, %3149 ], [ 1.000000e+00, %2962 ]
  %3170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.i32 %3170, 1
  %3172 = and i32 %3171, 1
  %3173 = icmp ne i32 %3172, 0
  %3174 = add i32 %49, 356
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 32
  %3178 = icmp ne i32 %3177, 0
  %3179 = and i1 %3173, %3178
  %3180 = select i1 %3179, float 1.000000e+00, float %3167
  %3181 = select i1 %3179, float 0x3FD3333340000000, float %3168
  %3182 = select i1 %3179, float 0x3FD3333340000000, float %3169
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = and i32 %3184, 32
  %3186 = icmp eq i32 %3185, 0
  br i1 %3186, label %3259, label %3187

; <label>:3187                                    ; preds = %3165
  %3188 = add i32 %49, 140
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3188, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = add i32 %49, 404
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = add i32 %3193, 0
  %3195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3195, %dx.types.Handle %105, float %2887, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3197 = extractvalue %dx.types.ResRet.f32 %3196, 0
  %3198 = extractvalue %dx.types.ResRet.f32 %3196, 1
  %3199 = extractvalue %dx.types.ResRet.f32 %3196, 2
  %3200 = extractvalue %dx.types.ResRet.f32 %3196, 3
  %3201 = and i32 %3190, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = lshr i32 %3190, 8
  %3204 = and i32 %3203, 255
  %3205 = uitofp i32 %3204 to float
  %3206 = lshr i32 %3190, 16
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101000000000
  %3210 = fmul fast float %3197, %3202
  %3211 = fadd fast float %3210, %3205
  %3212 = fmul fast float %3211, 0x3F70101000000000
  %3213 = fadd fast float %3198, -5.000000e-01
  %3214 = fadd fast float %3200, -5.000000e-01
  %3215 = fmul fast float %3213, %3209
  %3216 = fmul fast float %3214, %3209
  %3217 = fadd fast float %3215, 5.000000e-01
  %3218 = fadd fast float %3216, 5.000000e-01
  %3219 = fmul fast float %3217, 2.000000e+00
  %3220 = fadd fast float %3219, -1.000000e+00
  %3221 = fmul fast float %3218, 2.000000e+00
  %3222 = fadd fast float %3221, -1.000000e+00
  %3223 = fadd fast float %3220, %3222
  %3224 = fmul fast float %3223, 5.000000e-01
  %3225 = fsub fast float %3220, %3222
  %3226 = fmul fast float %3225, 5.000000e-01
  %3227 = call float @dx.op.unary.f32(i32 6, float %3224)  ; FAbs(value)
  %3228 = fsub fast float 1.000000e+00, %3227
  %3229 = call float @dx.op.unary.f32(i32 6, float %3226)  ; FAbs(value)
  %3230 = fsub fast float %3228, %3229
  %3231 = call float @dx.op.dot3.f32(i32 55, float %3224, float %3226, float %3230, float %3224, float %3226, float %3230)  ; Dot3(ax,ay,az,bx,by,bz)
  %3232 = call float @dx.op.unary.f32(i32 25, float %3231)  ; Rsqrt(value)
  %3233 = fmul fast float %3224, %3232
  %3234 = fmul fast float %3226, %3232
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 67108864
  %3238 = icmp eq i32 %3237, 0
  br i1 %3238, label %3255, label %3239

; <label>:3239                                    ; preds = %3187
  %3240 = add i32 %49, 328
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3240, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, 65535
  %3244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3243)  ; LegacyF16ToF32(value)
  %3245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %3246 = extractvalue %dx.types.ResRet.i32 %3245, 0
  %3247 = and i32 %3246, 65535
  %3248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3247)  ; LegacyF16ToF32(value)
  %3249 = lshr i32 %3242, 16
  %3250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3249)  ; LegacyF16ToF32(value)
  %3251 = fsub fast float %3212, %3250
  %3252 = fmul fast float %3251, %3244
  %3253 = fadd fast float %3252, %3248
  %3254 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  br label %3255

; <label>:3255                                    ; preds = %3239, %3187
  %3256 = phi float [ %3254, %3239 ], [ %3212, %3187 ]
  %3257 = call float @dx.op.dot2.f32(i32 54, float %3233, float %3234, float %2791, float %2792)  ; Dot2(ax,ay,bx,by)
  %3258 = call float @dx.op.dot2.f32(i32 54, float %3233, float %3234, float %2793, float %2794)  ; Dot2(ax,ay,bx,by)
  br label %3259

; <label>:3259                                    ; preds = %3255, %3165
  %3260 = phi float [ %3256, %3255 ], [ 0x3FD6666660000000, %3165 ]
  %3261 = phi float [ %3257, %3255 ], [ 0.000000e+00, %3165 ]
  %3262 = phi float [ %3258, %3255 ], [ 0.000000e+00, %3165 ]
  %3263 = phi float [ %3199, %3255 ], [ 1.000000e+00, %3165 ]
  %3264 = add i32 %49, 208
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = lshr i32 %3266, 22
  %3268 = shl nuw nsw i32 %3267, 5
  %3269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3268)  ; LegacyF16ToF32(value)
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = and i32 %3271, 64
  %3273 = icmp eq i32 %3272, 0
  br i1 %3273, label %3307, label %3274

; <label>:3274                                    ; preds = %3259
  %3275 = add i32 %49, 420
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = add i32 %3277, 0
  %3279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3278, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = and i32 %3281, 131072
  %3283 = icmp eq i32 %3282, 0
  %3284 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3279, %dx.types.Handle %105, float %2887, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.ResRet.f32 %3284, 2
  %3288 = fmul fast float %3285, %405
  %3289 = fmul fast float %3286, %408
  %3290 = fmul fast float %3287, %411
  br i1 %3283, label %3297, label %3291

; <label>:3291                                    ; preds = %3274
  %3292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3293 = extractvalue %dx.types.CBufRet.f32 %3292, 0
  %3294 = fmul fast float %3293, %3288
  %3295 = fmul fast float %3293, %3289
  %3296 = fmul fast float %3293, %3290
  br label %3297

; <label>:3297                                    ; preds = %3291, %3274
  %3298 = phi float [ %3294, %3291 ], [ %3288, %3274 ]
  %3299 = phi float [ %3295, %3291 ], [ %3289, %3274 ]
  %3300 = phi float [ %3296, %3291 ], [ %3290, %3274 ]
  %3301 = fmul fast float %3298, %3269
  %3302 = select i1 %262, float %3301, float %3298
  %3303 = call float @dx.op.dot3.f32(i32 55, float %3302, float %3299, float %3300, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3304 = select i1 %262, float 0.000000e+00, float %3298
  %3305 = select i1 %262, float %3303, float %3299
  %3306 = select i1 %262, float 0.000000e+00, float %3300
  br label %3307

; <label>:3307                                    ; preds = %3297, %3259
  %3308 = phi float [ %3304, %3297 ], [ 0.000000e+00, %3259 ]
  %3309 = phi float [ %3305, %3297 ], [ 0.000000e+00, %3259 ]
  %3310 = phi float [ %3306, %3297 ], [ 0.000000e+00, %3259 ]
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = and i32 %3312, 10240
  %3314 = icmp eq i32 %3313, 0
  br i1 %3314, label %3359, label %3315

; <label>:3315                                    ; preds = %3307
  %3316 = add i32 %49, 488
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = add i32 %3318, 0
  %3320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3320, %dx.types.Handle %106, float %2887, float %2888, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 3
  %3324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3325 = extractvalue %dx.types.ResRet.i32 %3324, 0
  %3326 = and i32 %3325, 1048576
  %3327 = icmp ne i32 %3326, 0
  %3328 = and i32 %3325, 8192
  %3329 = icmp eq i32 %3328, 0
  br i1 %3329, label %3345, label %3330

; <label>:3330                                    ; preds = %3315
  %3331 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3332 = select i1 %3327, float %3331, float %3322
  %3333 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3334 = select i1 %3327, float %3333, float %3322
  %3335 = add i32 %49, 144
  %3336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3335, i32 undef)  ; BufferLoad(srv,index,wot)
  %3337 = extractvalue %dx.types.ResRet.i32 %3336, 0
  %3338 = lshr i32 %3337, 16
  %3339 = and i32 %3338, 255
  %3340 = uitofp i32 %3339 to float
  %3341 = fmul fast float %3340, 0x3F80101020000000
  %3342 = fmul fast float %3341, %3334
  %3343 = fmul fast float %3341, %3322
  %3344 = fmul fast float %3341, %3332
  br label %3345

; <label>:3345                                    ; preds = %3330, %3315
  %3346 = phi float [ %3342, %3330 ], [ 0.000000e+00, %3315 ]
  %3347 = phi float [ %3343, %3330 ], [ 0.000000e+00, %3315 ]
  %3348 = phi float [ %3344, %3330 ], [ 0.000000e+00, %3315 ]
  %3349 = and i32 %3325, 2048
  %3350 = icmp eq i32 %3349, 0
  br i1 %3350, label %3359, label %3351

; <label>:3351                                    ; preds = %3345
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = shl i32 %3353, 4
  %3355 = and i32 %3354, 32752
  %3356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3355)  ; LegacyF16ToF32(value)
  %3357 = fmul fast float %3356, %3323
  %3358 = call float @dx.op.binary.f32(i32 35, float %3357, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3359

; <label>:3359                                    ; preds = %3351, %3345, %3307
  %3360 = phi float [ %3346, %3351 ], [ %3346, %3345 ], [ 0.000000e+00, %3307 ]
  %3361 = phi float [ %3347, %3351 ], [ %3347, %3345 ], [ 0.000000e+00, %3307 ]
  %3362 = phi float [ %3348, %3351 ], [ %3348, %3345 ], [ 0.000000e+00, %3307 ]
  %3363 = phi float [ %3358, %3351 ], [ 0x3F70101020000000, %3345 ], [ 0x3F70101020000000, %3307 ]
  %3364 = add i32 %49, 144
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = lshr i32 %3366, 8
  %3370 = and i32 %3369, 255
  %3371 = uitofp i32 %3370 to float
  %3372 = call float @dx.op.dot3.f32(i32 55, float %3180, float %3181, float %3182, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3373 = fmul fast float %3371, %3372
  %3374 = fadd fast float %3373, %3368
  %3375 = fmul fast float %3374, 0x3F70101020000000
  %3376 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  br i1 %2779, label %3377, label %3385

; <label>:3377                                    ; preds = %3359
  %3378 = fsub fast float 1.000000e+00, %2960
  %3379 = fmul fast float %3378, %2764
  %3380 = fmul fast float %3378, %2765
  %3381 = fmul fast float %3378, %2766
  %3382 = fmul fast float %3378, %2767
  %3383 = fmul fast float %3378, %2768
  %3384 = fmul fast float %3378, %2769
  br label %3385

; <label>:3385                                    ; preds = %3377, %3359
  %3386 = phi float [ %3379, %3377 ], [ %2764, %3359 ]
  %3387 = phi float [ %3380, %3377 ], [ %2765, %3359 ]
  %3388 = phi float [ %3381, %3377 ], [ %2766, %3359 ]
  %3389 = phi float [ %3382, %3377 ], [ %2767, %3359 ]
  %3390 = phi float [ %3383, %3377 ], [ %2768, %3359 ]
  %3391 = phi float [ %3384, %3377 ], [ %2769, %3359 ]
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = and i32 %3393, 3
  %3395 = icmp eq i32 %3394, 3
  br i1 %3395, label %3474, label %3396

; <label>:3396                                    ; preds = %3385
  %3397 = and i32 %3393, 16
  %3398 = icmp ne i32 %3397, 0
  %3399 = select i1 %3398, float %2960, float 0.000000e+00
  %3400 = icmp eq i32 %3394, 0
  br i1 %3400, label %3401, label %3429

; <label>:3401                                    ; preds = %3396
  %3402 = and i32 %3393, 64
  %3403 = icmp ne i32 %3402, 0
  %3404 = select i1 %3403, float %2960, float 0.000000e+00
  %3405 = fsub fast float %3180, %3386
  %3406 = fsub fast float %3181, %3387
  %3407 = fsub fast float %3182, %3388
  %3408 = fmul fast float %3399, %3405
  %3409 = fmul fast float %3399, %3406
  %3410 = fmul fast float %3399, %3407
  %3411 = fadd fast float %3408, %3386
  %3412 = fadd fast float %3409, %3387
  %3413 = fadd fast float %3410, %3388
  %3414 = fsub fast float %3166, %2773
  %3415 = fmul fast float %3399, %3414
  %3416 = fadd fast float %3415, %2773
  %3417 = fsub fast float %3308, %3389
  %3418 = fsub fast float %3309, %3390
  %3419 = fsub fast float %3310, %3391
  %3420 = fmul fast float %3404, %3417
  %3421 = fmul fast float %3404, %3418
  %3422 = fmul fast float %3404, %3419
  %3423 = fadd fast float %3420, %3389
  %3424 = fadd fast float %3421, %3390
  %3425 = fadd fast float %3422, %3391
  %3426 = fsub fast float %3376, %2777
  %3427 = fmul fast float %3399, %3426
  %3428 = fadd fast float %3427, %2777
  br label %3474

; <label>:3429                                    ; preds = %3396
  %3430 = icmp eq i32 %3394, 1
  br i1 %3430, label %3431, label %3444

; <label>:3431                                    ; preds = %3429
  %3432 = fadd fast float %3180, -1.000000e+00
  %3433 = fadd fast float %3181, -1.000000e+00
  %3434 = fadd fast float %3182, -1.000000e+00
  %3435 = fmul fast float %3399, %3432
  %3436 = fmul fast float %3399, %3433
  %3437 = fmul fast float %3399, %3434
  %3438 = fadd fast float %3435, 1.000000e+00
  %3439 = fadd fast float %3436, 1.000000e+00
  %3440 = fadd fast float %3437, 1.000000e+00
  %3441 = fmul fast float %3438, %3386
  %3442 = fmul fast float %3439, %3387
  %3443 = fmul fast float %3440, %3388
  br label %3474

; <label>:3444                                    ; preds = %3429
  %3445 = icmp eq i32 %3394, 2
  br i1 %3445, label %3446, label %3474

; <label>:3446                                    ; preds = %3444
  %3447 = call float @dx.op.unary.f32(i32 24, float %3180)  ; Sqrt(value)
  %3448 = call float @dx.op.unary.f32(i32 24, float %3181)  ; Sqrt(value)
  %3449 = call float @dx.op.unary.f32(i32 24, float %3182)  ; Sqrt(value)
  %3450 = fadd fast float %3447, -5.000000e-01
  %3451 = fadd fast float %3448, -5.000000e-01
  %3452 = fadd fast float %3449, -5.000000e-01
  %3453 = fmul fast float %3450, %3399
  %3454 = fmul fast float %3451, %3399
  %3455 = fmul fast float %3452, %3399
  %3456 = fadd fast float %3453, 5.000000e-01
  %3457 = fadd fast float %3454, 5.000000e-01
  %3458 = fadd fast float %3455, 5.000000e-01
  %3459 = fmul fast float %3456, 2.000000e+00
  %3460 = fsub fast float 1.000000e+00, %3459
  %3461 = fmul fast float %3460, %3386
  %3462 = fadd fast float %3461, %3459
  %3463 = fmul fast float %3462, %3386
  %3464 = fmul fast float %3457, 2.000000e+00
  %3465 = fsub fast float 1.000000e+00, %3464
  %3466 = fmul fast float %3465, %3387
  %3467 = fadd fast float %3466, %3464
  %3468 = fmul fast float %3467, %3387
  %3469 = fmul fast float %3458, 2.000000e+00
  %3470 = fsub fast float 1.000000e+00, %3469
  %3471 = fmul fast float %3470, %3388
  %3472 = fadd fast float %3471, %3469
  %3473 = fmul fast float %3472, %3388
  br label %3474

; <label>:3474                                    ; preds = %3446, %3444, %3431, %3401, %3385
  %3475 = phi float [ %3386, %3385 ], [ %3463, %3446 ], [ %3386, %3444 ], [ %3441, %3431 ], [ %3411, %3401 ]
  %3476 = phi float [ %3387, %3385 ], [ %3468, %3446 ], [ %3387, %3444 ], [ %3442, %3431 ], [ %3412, %3401 ]
  %3477 = phi float [ %3388, %3385 ], [ %3473, %3446 ], [ %3388, %3444 ], [ %3443, %3431 ], [ %3413, %3401 ]
  %3478 = phi float [ %3389, %3385 ], [ %3389, %3446 ], [ %3389, %3444 ], [ %3389, %3431 ], [ %3423, %3401 ]
  %3479 = phi float [ %3390, %3385 ], [ %3390, %3446 ], [ %3390, %3444 ], [ %3390, %3431 ], [ %3424, %3401 ]
  %3480 = phi float [ %3391, %3385 ], [ %3391, %3446 ], [ %3391, %3444 ], [ %3391, %3431 ], [ %3425, %3401 ]
  %3481 = phi float [ %2773, %3385 ], [ %2773, %3446 ], [ %2773, %3444 ], [ %2773, %3431 ], [ %3416, %3401 ]
  %3482 = phi float [ %2777, %3385 ], [ %2777, %3446 ], [ %2777, %3444 ], [ %2777, %3431 ], [ %3428, %3401 ]
  %3483 = and i32 %3393, 12
  %3484 = icmp eq i32 %3483, 12
  br i1 %3484, label %3591, label %3485

; <label>:3485                                    ; preds = %3474
  %3486 = and i32 %3393, 2097184
  %3487 = icmp eq i32 %3486, 2097184
  %3488 = select i1 %3487, float %2960, float 0.000000e+00
  %3489 = and i32 %3393, 4194336
  %3490 = icmp eq i32 %3489, 4194336
  %3491 = select i1 %3490, float %2960, float 0.000000e+00
  %3492 = and i32 %3393, 8388640
  %3493 = icmp eq i32 %3492, 8388640
  %3494 = select i1 %3493, float %2960, float 0.000000e+00
  %3495 = and i32 %3393, 2048
  %3496 = icmp ne i32 %3495, 0
  %3497 = select i1 %3496, float %2960, float 0.000000e+00
  %3498 = and i32 %3393, 8192
  %3499 = icmp ne i32 %3498, 0
  %3500 = select i1 %3499, float %2960, float 0.000000e+00
  %3501 = icmp eq i32 %3483, 0
  br i1 %3501, label %3502, label %3527

; <label>:3502                                    ; preds = %3485
  %3503 = fsub fast float %3261, %2762
  %3504 = fsub fast float %3262, %2763
  %3505 = fmul fast float %3488, %3503
  %3506 = fmul fast float %3488, %3504
  %3507 = fadd fast float %3505, %2762
  %3508 = fadd fast float %3506, %2763
  %3509 = fsub fast float %3263, %2775
  %3510 = fmul fast float %3491, %3509
  %3511 = fadd fast float %3510, %2775
  %3512 = fsub fast float %3260, %2774
  %3513 = fmul fast float %3494, %3512
  %3514 = fadd fast float %3513, %2774
  %3515 = fsub fast float %3363, %2776
  %3516 = fmul fast float %3497, %3515
  %3517 = fadd fast float %3516, %2776
  %3518 = fsub fast float %3360, %2770
  %3519 = fsub fast float %3361, %2771
  %3520 = fsub fast float %3362, %2772
  %3521 = fmul fast float %3500, %3518
  %3522 = fmul fast float %3500, %3519
  %3523 = fmul fast float %3500, %3520
  %3524 = fadd fast float %3521, %2770
  %3525 = fadd fast float %3522, %2771
  %3526 = fadd fast float %3523, %2772
  br label %3591

; <label>:3527                                    ; preds = %3485
  %3528 = icmp eq i32 %3483, 4
  br i1 %3528, label %3529, label %3569

; <label>:3529                                    ; preds = %3527
  %3530 = fmul fast float %3488, %3261
  %3531 = fmul fast float %3488, %3262
  %3532 = fadd fast float %3530, %2762
  %3533 = fadd fast float %3531, %2763
  %3534 = call float @dx.op.binary.f32(i32 36, float %2775, float %3263)  ; FMin(a,b)
  %3535 = fsub fast float %3534, %2775
  %3536 = fmul fast float %3535, %3491
  %3537 = fadd fast float %3536, %2775
  %3538 = fadd fast float %3260, %2774
  %3539 = fmul fast float %3538, 0x3FF337FAE0000000
  %3540 = fmul fast float %2774, %2774
  %3541 = fmul fast float %3260, %3260
  %3542 = fadd fast float %3541, %3540
  %3543 = fmul fast float %3542, 0x3FE5152B00000000
  %3544 = fmul fast float %2774, 0xBFCC1F85E0000000
  %3545 = fmul fast float %3544, %3260
  %3546 = fadd fast float %3545, 0xBFE1363700000000
  %3547 = fadd fast float %3546, %3539
  %3548 = fsub fast float %3547, %3543
  %3549 = fmul fast float %3538, 0x3FBA6F0D00000000
  %3550 = fmul fast float %3542, 0x3FD0432880000000
  %3551 = fmul fast float %2774, 0xBFEF110800000000
  %3552 = fmul fast float %3551, %3260
  %3553 = fadd fast float %3552, 1.000000e+00
  %3554 = fsub fast float %3553, %3549
  %3555 = fadd fast float %3554, %3550
  %3556 = fdiv fast float %3548, %3555
  %3557 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3558 = fsub fast float %3557, %2774
  %3559 = fmul fast float %3558, %3494
  %3560 = fadd fast float %3559, %2774
  %3561 = fmul fast float %3497, %3363
  %3562 = fadd fast float %3561, %2776
  %3563 = fmul fast float %3500, %3360
  %3564 = fmul fast float %3500, %3361
  %3565 = fmul fast float %3500, %3362
  %3566 = fadd fast float %3563, %2770
  %3567 = fadd fast float %3564, %2771
  %3568 = fadd fast float %3565, %2772
  br label %3591

; <label>:3569                                    ; preds = %3527
  %3570 = icmp eq i32 %3483, 8
  br i1 %3570, label %3571, label %3591

; <label>:3571                                    ; preds = %3569
  %3572 = fmul fast float %3488, %3261
  %3573 = fmul fast float %3488, %3262
  %3574 = fadd fast float %3572, %2762
  %3575 = fadd fast float %3573, %2763
  %3576 = call float @dx.op.binary.f32(i32 36, float %2775, float %3263)  ; FMin(a,b)
  %3577 = fsub fast float %3576, %2775
  %3578 = fmul fast float %3577, %3491
  %3579 = fadd fast float %3578, %2775
  %3580 = fsub fast float %3260, %2774
  %3581 = fmul fast float %3494, %3580
  %3582 = fadd fast float %3581, %2774
  %3583 = fmul fast float %3497, %3363
  %3584 = fadd fast float %3583, %2776
  %3585 = fmul fast float %3500, %3360
  %3586 = fmul fast float %3500, %3361
  %3587 = fmul fast float %3500, %3362
  %3588 = fadd fast float %3585, %2770
  %3589 = fadd fast float %3586, %2771
  %3590 = fadd fast float %3587, %2772
  br label %3591

; <label>:3591                                    ; preds = %3571, %3569, %3529, %3502, %3474, %2959, %2778, %2761
  %3592 = phi float [ %2762, %3474 ], [ %2762, %2959 ], [ %2762, %2761 ], [ %2762, %2778 ], [ %3507, %3502 ], [ %3532, %3529 ], [ %2762, %3569 ], [ %3574, %3571 ]
  %3593 = phi float [ %2763, %3474 ], [ %2763, %2959 ], [ %2763, %2761 ], [ %2763, %2778 ], [ %3508, %3502 ], [ %3533, %3529 ], [ %2763, %3569 ], [ %3575, %3571 ]
  %3594 = phi float [ %3475, %3474 ], [ %2764, %2959 ], [ %2764, %2761 ], [ %2764, %2778 ], [ %3475, %3502 ], [ %3475, %3529 ], [ %3475, %3569 ], [ %3475, %3571 ]
  %3595 = phi float [ %3476, %3474 ], [ %2765, %2959 ], [ %2765, %2761 ], [ %2765, %2778 ], [ %3476, %3502 ], [ %3476, %3529 ], [ %3476, %3569 ], [ %3476, %3571 ]
  %3596 = phi float [ %3477, %3474 ], [ %2766, %2959 ], [ %2766, %2761 ], [ %2766, %2778 ], [ %3477, %3502 ], [ %3477, %3529 ], [ %3477, %3569 ], [ %3477, %3571 ]
  %3597 = phi float [ %3478, %3474 ], [ %2767, %2959 ], [ %2767, %2761 ], [ %2767, %2778 ], [ %3478, %3502 ], [ %3478, %3529 ], [ %3478, %3569 ], [ %3478, %3571 ]
  %3598 = phi float [ %3479, %3474 ], [ %2768, %2959 ], [ %2768, %2761 ], [ %2768, %2778 ], [ %3479, %3502 ], [ %3479, %3529 ], [ %3479, %3569 ], [ %3479, %3571 ]
  %3599 = phi float [ %3480, %3474 ], [ %2769, %2959 ], [ %2769, %2761 ], [ %2769, %2778 ], [ %3480, %3502 ], [ %3480, %3529 ], [ %3480, %3569 ], [ %3480, %3571 ]
  %3600 = phi float [ %2770, %3474 ], [ %2770, %2959 ], [ %2770, %2761 ], [ %2770, %2778 ], [ %3524, %3502 ], [ %3566, %3529 ], [ %2770, %3569 ], [ %3588, %3571 ]
  %3601 = phi float [ %2771, %3474 ], [ %2771, %2959 ], [ %2771, %2761 ], [ %2771, %2778 ], [ %3525, %3502 ], [ %3567, %3529 ], [ %2771, %3569 ], [ %3589, %3571 ]
  %3602 = phi float [ %2772, %3474 ], [ %2772, %2959 ], [ %2772, %2761 ], [ %2772, %2778 ], [ %3526, %3502 ], [ %3568, %3529 ], [ %2772, %3569 ], [ %3590, %3571 ]
  %3603 = phi float [ %3481, %3474 ], [ %2773, %2959 ], [ %2773, %2761 ], [ %2773, %2778 ], [ %3481, %3502 ], [ %3481, %3529 ], [ %3481, %3569 ], [ %3481, %3571 ]
  %3604 = phi float [ %2774, %3474 ], [ %2774, %2959 ], [ %2774, %2761 ], [ %2774, %2778 ], [ %3514, %3502 ], [ %3560, %3529 ], [ %2774, %3569 ], [ %3582, %3571 ]
  %3605 = phi float [ %2775, %3474 ], [ %2775, %2959 ], [ %2775, %2761 ], [ %2775, %2778 ], [ %3511, %3502 ], [ %3537, %3529 ], [ %2775, %3569 ], [ %3579, %3571 ]
  %3606 = phi float [ %2776, %3474 ], [ %2776, %2959 ], [ %2776, %2761 ], [ %2776, %2778 ], [ %3517, %3502 ], [ %3562, %3529 ], [ %2776, %3569 ], [ %3584, %3571 ]
  %3607 = phi float [ %3482, %3474 ], [ %2777, %2959 ], [ %2777, %2761 ], [ %2777, %2778 ], [ %3482, %3502 ], [ %3482, %3529 ], [ %3482, %3569 ], [ %3482, %3571 ]
  %3608 = add i32 %49, 360
  %3609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.i32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.i32 %3609, 1
  %3612 = bitcast i32 %3610 to float
  %3613 = bitcast i32 %3611 to float
  %3614 = fcmp fast oge float %3612, 0.000000e+00
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = select i1 %3614, float %3612, float %3616
  %3618 = fadd fast float %3617, %202
  %3619 = fmul fast float %3613, %203
  %3620 = add i32 %49, 456
  %3621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.i32 %3621, 0
  %3623 = add i32 %3622, 0
  %3624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3624, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = fmul fast float %3619, %3626
  %3628 = fadd fast float %3618, %3627
  %3629 = and i32 %194, 65535
  %3630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3629)  ; LegacyF16ToF32(value)
  %3631 = lshr i32 %194, 16
  %3632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3631)  ; LegacyF16ToF32(value)
  %3633 = and i32 %195, 65535
  %3634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3633)  ; LegacyF16ToF32(value)
  %3635 = fmul fast float %3630, %3594
  %3636 = fmul fast float %3632, %3595
  %3637 = fmul fast float %3634, %3596
  %3638 = shl i32 %196, 4
  %3639 = and i32 %3638, 32752
  %3640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3639)  ; LegacyF16ToF32(value)
  %3641 = lshr i32 %196, 7
  %3642 = and i32 %3641, 32752
  %3643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3642)  ; LegacyF16ToF32(value)
  %3644 = lshr i32 %196, 22
  %3645 = shl nuw nsw i32 %3644, 5
  %3646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3645)  ; LegacyF16ToF32(value)
  %3647 = and i32 %197, 65535
  %3648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3647)  ; LegacyF16ToF32(value)
  %3649 = fmul fast float %3640, %3597
  %3650 = fmul fast float %3649, %3648
  %3651 = fmul fast float %3643, %3598
  %3652 = fmul fast float %3651, %3648
  %3653 = fmul fast float %3646, %3599
  %3654 = fmul fast float %3653, %3648
  %3655 = call float @dx.op.dot2.f32(i32 54, float %3592, float %3593, float %3592, float %3593)  ; Dot2(ax,ay,bx,by)
  %3656 = fmul fast float %3655, 0x3FE3333340000000
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = call float @dx.op.dot3.f32(i32 55, float %3592, float %3593, float %3657, float %3592, float %3593, float %3657)  ; Dot3(ax,ay,az,bx,by,bz)
  %3659 = call float @dx.op.unary.f32(i32 25, float %3658)  ; Rsqrt(value)
  %3660 = fmul fast float %3659, %3592
  %3661 = fmul fast float %3659, %3593
  %3662 = fmul fast float %3657, %3659
  %3663 = fmul fast float %3662, %116
  %3664 = fmul fast float %3662, %117
  %3665 = fmul fast float %3662, %118
  %3666 = fmul fast float %3660, %80
  %3667 = fmul fast float %3660, %81
  %3668 = fmul fast float %3660, %82
  %3669 = fadd fast float %3663, %3666
  %3670 = fadd fast float %3664, %3667
  %3671 = fadd fast float %3665, %3668
  %3672 = fmul fast float %128, %3661
  %3673 = fmul fast float %129, %3661
  %3674 = fmul fast float %130, %3661
  %3675 = fadd fast float %3669, %3672
  %3676 = fadd fast float %3670, %3673
  %3677 = fadd fast float %3671, %3674
  %3678 = call float @dx.op.dot3.f32(i32 55, float %3675, float %3676, float %3677, float %3675, float %3676, float %3677)  ; Dot3(ax,ay,az,bx,by,bz)
  %3679 = call float @dx.op.unary.f32(i32 25, float %3678)  ; Rsqrt(value)
  %3680 = fmul fast float %3675, %3679
  %3681 = fmul fast float %3676, %3679
  %3682 = fmul fast float %3677, %3679
  %3683 = icmp eq i32 %51, 65535
  br i1 %3683, label %4251, label %3684

; <label>:3684                                    ; preds = %3591
  %3685 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %3686 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %3687 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3688 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %3689 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %3690 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3691 = fadd fast float %3685, %52
  %3692 = fadd fast float %3686, %53
  %3693 = fadd fast float %3687, %54
  %3694 = fadd fast float %3688, %52
  %3695 = fadd fast float %3689, %53
  %3696 = fadd fast float %3690, %54
  %3697 = mul i32 %51, 48
  %3698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3700 = extractvalue %dx.types.ResRet.f32 %3698, 1
  %3701 = extractvalue %dx.types.ResRet.f32 %3698, 2
  %3702 = add i32 %3697, 16
  %3703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.f32 %3703, 0
  %3705 = extractvalue %dx.types.ResRet.f32 %3703, 1
  %3706 = extractvalue %dx.types.ResRet.f32 %3703, 2
  %3707 = add i32 %3697, 32
  %3708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3713 = bitcast float %3712 to i32
  %3714 = fmul fast float %3699, %52
  %3715 = fmul fast float %3700, %53
  %3716 = fmul fast float %3701, %54
  %3717 = fsub fast float %3714, %3704
  %3718 = fsub fast float %3715, %3705
  %3719 = fsub fast float %3716, %3706
  %3720 = call float @dx.op.unary.f32(i32 7, float %3717)  ; Saturate(value)
  %3721 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3722 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3723 = fmul fast float %3720, %3709
  %3724 = fmul fast float %3721, %3710
  %3725 = fmul fast float %3722, %3711
  %3726 = fadd fast float %3709, -1.000000e+00
  %3727 = fadd fast float %3710, -1.000000e+00
  %3728 = fadd fast float %3711, -1.000000e+00
  %3729 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3730 = call float @dx.op.unary.f32(i32 27, float %3724)  ; Round_ni(value)
  %3731 = call float @dx.op.unary.f32(i32 27, float %3725)  ; Round_ni(value)
  %3732 = call float @dx.op.binary.f32(i32 36, float %3729, float %3726)  ; FMin(a,b)
  %3733 = call float @dx.op.binary.f32(i32 36, float %3730, float %3727)  ; FMin(a,b)
  %3734 = call float @dx.op.binary.f32(i32 36, float %3731, float %3728)  ; FMin(a,b)
  %3735 = fmul fast float %3734, %3710
  %3736 = fadd fast float %3735, %3733
  %3737 = fmul fast float %3736, %3709
  %3738 = fadd fast float %3737, %3732
  %3739 = fptosi float %3738 to i32
  %3740 = add nsw i32 %3739, %3713
  %3741 = shl nsw i32 %3740, 2
  %3742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.i32 %3742, 0
  %3744 = lshr i32 %3743, 16
  %3745 = icmp eq i32 %3744, 0
  br i1 %3745, label %4217, label %3746

; <label>:3746                                    ; preds = %3684
  br label %3747

; <label>:3747                                    ; preds = %3871, %3746
  %3748 = phi i32 [ %3773, %3871 ], [ %3744, %3746 ]
  %3749 = phi float [ %3872, %3871 ], [ 0.000000e+00, %3746 ]
  %3750 = phi float [ %3873, %3871 ], [ %3628, %3746 ]
  %3751 = phi float [ %3874, %3871 ], [ %3607, %3746 ]
  %3752 = phi float [ %3875, %3871 ], [ 0.000000e+00, %3746 ]
  %3753 = phi float [ %3876, %3871 ], [ 0.000000e+00, %3746 ]
  %3754 = phi float [ %3877, %3871 ], [ %3600, %3746 ]
  %3755 = phi float [ %3878, %3871 ], [ %3601, %3746 ]
  %3756 = phi float [ %3879, %3871 ], [ %3602, %3746 ]
  %3757 = phi float [ %3880, %3871 ], [ %3650, %3746 ]
  %3758 = phi float [ %3881, %3871 ], [ %3652, %3746 ]
  %3759 = phi float [ %3882, %3871 ], [ %3654, %3746 ]
  %3760 = phi float [ %3883, %3871 ], [ %3680, %3746 ]
  %3761 = phi float [ %3884, %3871 ], [ %3681, %3746 ]
  %3762 = phi float [ %3885, %3871 ], [ %3682, %3746 ]
  %3763 = phi float [ %3886, %3871 ], [ %3605, %3746 ]
  %3764 = phi float [ %3887, %3871 ], [ %3604, %3746 ]
  %3765 = phi float [ %3888, %3871 ], [ 0.000000e+00, %3746 ]
  %3766 = phi float [ %3889, %3871 ], [ %3603, %3746 ]
  %3767 = phi float [ %3890, %3871 ], [ %3635, %3746 ]
  %3768 = phi float [ %3891, %3871 ], [ %3636, %3746 ]
  %3769 = phi float [ %3892, %3871 ], [ %3637, %3746 ]
  %3770 = shl nuw nsw i32 %3748, 2
  %3771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.i32 %3771, 0
  %3773 = lshr i32 %3772, 16
  %3774 = shl i32 %3772, 8
  %3775 = and i32 %3774, 16776960
  %3776 = or i32 %3775, 48
  %3777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.f32 %3777, 0
  %3779 = extractvalue %dx.types.ResRet.f32 %3777, 1
  %3780 = extractvalue %dx.types.ResRet.f32 %3777, 2
  %3781 = or i32 %3775, 64
  %3782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.i32 %3782, 0
  %3784 = extractvalue %dx.types.ResRet.i32 %3782, 1
  %3785 = or i32 %3775, 80
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 2
  %3788 = extractvalue %dx.types.ResRet.f32 %3786, 3
  %3789 = or i32 %3775, 96
  %3790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = extractvalue %dx.types.ResRet.f32 %3790, 3
  %3795 = or i32 %3775, 112
  %3796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.f32 %3796, 2
  %3798 = or i32 %3775, 128
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3804 = or i32 %3775, 144
  %3805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = extractvalue %dx.types.ResRet.f32 %3805, 3
  %3810 = or i32 %3775, 160
  %3811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = extractvalue %dx.types.ResRet.f32 %3811, 3
  %3816 = or i32 %3775, 192
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = or i32 %3775, 208
  %3820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3819, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.f32 %3820, 0
  %3822 = or i32 %3775, 248
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3775, i32 undef)  ; BufferLoad(srv,index,wot)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = call float @dx.op.dot4.f32(i32 56, float %3827, float %3828, float %3829, float %3830, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3832 = or i32 %3775, 16
  %3833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = extractvalue %dx.types.ResRet.f32 %3833, 3
  %3838 = call float @dx.op.dot4.f32(i32 56, float %3834, float %3835, float %3836, float %3837, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3839 = or i32 %3775, 32
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.f32 %3840, 1
  %3843 = extractvalue %dx.types.ResRet.f32 %3840, 2
  %3844 = extractvalue %dx.types.ResRet.f32 %3840, 3
  %3845 = call float @dx.op.dot4.f32(i32 56, float %3841, float %3842, float %3843, float %3844, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3846 = call float @dx.op.unary.f32(i32 27, float %3831)  ; Round_ni(value)
  %3847 = call float @dx.op.unary.f32(i32 6, float %3846)  ; FAbs(value)
  %3848 = call float @dx.op.unary.f32(i32 27, float %3838)  ; Round_ni(value)
  %3849 = call float @dx.op.unary.f32(i32 6, float %3848)  ; FAbs(value)
  %3850 = call float @dx.op.unary.f32(i32 6, float %3845)  ; FAbs(value)
  %3851 = call float @dx.op.unary.f32(i32 27, float %3850)  ; Round_ni(value)
  %3852 = fadd fast float %3849, %3847
  %3853 = fadd fast float %3852, %3851
  %3854 = fcmp fast oeq float %3853, 0.000000e+00
  %3855 = call float @dx.op.dot4.f32(i32 56, float %3827, float %3828, float %3829, float %3830, float %3691, float %3692, float %3693, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3856 = call float @dx.op.dot4.f32(i32 56, float %3834, float %3835, float %3836, float %3837, float %3691, float %3692, float %3693, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3857 = call float @dx.op.dot4.f32(i32 56, float %3827, float %3828, float %3829, float %3830, float %3694, float %3695, float %3696, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3858 = call float @dx.op.dot4.f32(i32 56, float %3834, float %3835, float %3836, float %3837, float %3694, float %3695, float %3696, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3859 = fsub fast float %3855, %3831
  %3860 = fsub fast float %3857, %3831
  %3861 = fsub fast float %3856, %3838
  %3862 = fsub fast float %3858, %3838
  %3863 = call float @dx.op.dot3.f32(i32 55, float %3778, float %3779, float %3780, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3865 = extractvalue %dx.types.CBufRet.f32 %3864, 2
  %3866 = fadd fast float %3865, %3863
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = extractvalue %dx.types.CBufRet.f32 %3864, 0
  %3869 = fcmp fast ogt float %3867, %3868
  %3870 = and i1 %3854, %3869
  br i1 %3870, label %3894, label %3871

; <label>:3871                                    ; preds = %4203, %3977, %3894, %3747
  %3872 = phi float [ %3749, %3894 ], [ %3980, %3977 ], [ %3980, %4203 ], [ %3749, %3747 ]
  %3873 = phi float [ %3750, %3894 ], [ %3750, %3977 ], [ %4179, %4203 ], [ %3750, %3747 ]
  %3874 = phi float [ %3751, %3894 ], [ %3751, %3977 ], [ %4177, %4203 ], [ %3751, %3747 ]
  %3875 = phi float [ %3752, %3894 ], [ %3752, %3977 ], [ %4104, %4203 ], [ %3752, %3747 ]
  %3876 = phi float [ %3753, %3894 ], [ %3753, %3977 ], [ %4102, %4203 ], [ %3753, %3747 ]
  %3877 = phi float [ %3754, %3894 ], [ %3754, %3977 ], [ %4147, %4203 ], [ %3754, %3747 ]
  %3878 = phi float [ %3755, %3894 ], [ %3755, %3977 ], [ %4148, %4203 ], [ %3755, %3747 ]
  %3879 = phi float [ %3756, %3894 ], [ %3756, %3977 ], [ %4149, %4203 ], [ %3756, %3747 ]
  %3880 = phi float [ %3757, %3894 ], [ %3757, %3977 ], [ %4213, %4203 ], [ %3757, %3747 ]
  %3881 = phi float [ %3758, %3894 ], [ %3758, %3977 ], [ %4214, %4203 ], [ %3758, %3747 ]
  %3882 = phi float [ %3759, %3894 ], [ %3759, %3977 ], [ %4215, %4203 ], [ %3759, %3747 ]
  %3883 = phi float [ %3760, %3894 ], [ %3760, %3977 ], [ %4083, %4203 ], [ %3760, %3747 ]
  %3884 = phi float [ %3761, %3894 ], [ %3761, %3977 ], [ %4084, %4203 ], [ %3761, %3747 ]
  %3885 = phi float [ %3762, %3894 ], [ %3762, %3977 ], [ %4085, %4203 ], [ %3762, %3747 ]
  %3886 = phi float [ %3763, %3894 ], [ %3763, %3977 ], [ %4157, %4203 ], [ %3763, %3747 ]
  %3887 = phi float [ %3764, %3894 ], [ %3764, %3977 ], [ %4154, %4203 ], [ %3764, %3747 ]
  %3888 = phi float [ %3765, %3894 ], [ %3765, %3977 ], [ %4151, %4203 ], [ %3765, %3747 ]
  %3889 = phi float [ %3766, %3894 ], [ %3766, %3977 ], [ %4100, %4203 ], [ %3766, %3747 ]
  %3890 = phi float [ %3767, %3894 ], [ %3767, %3977 ], [ %4095, %4203 ], [ %3767, %3747 ]
  %3891 = phi float [ %3768, %3894 ], [ %3768, %3977 ], [ %4096, %4203 ], [ %3768, %3747 ]
  %3892 = phi float [ %3769, %3894 ], [ %3769, %3977 ], [ %4097, %4203 ], [ %3769, %3747 ]
  %3893 = icmp eq i32 %3773, 0
  br i1 %3893, label %4216, label %3747

; <label>:3894                                    ; preds = %3747
  %3895 = extractvalue %dx.types.ResRet.f32 %3777, 3
  %3896 = extractvalue %dx.types.ResRet.f32 %3796, 3
  %3897 = extractvalue %dx.types.ResRet.f32 %3796, 1
  %3898 = extractvalue %dx.types.ResRet.f32 %3796, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3786, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3901 = extractvalue %dx.types.ResRet.i32 %3782, 3
  %3902 = extractvalue %dx.types.ResRet.i32 %3782, 2
  %3903 = bitcast float %3895 to i32
  %3904 = add i32 %3901, 0
  %3905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3904, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3907 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3905, %dx.types.Handle %3906, float %3831, float %3838, float undef, float undef, i32 0, i32 0, i32 undef, float %3859, float %3861, float undef, float %3860, float %3862, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = fmul fast float %3908, %3900
  %3910 = fadd fast float %3909, %3899
  %3911 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3912 = fmul fast float %3831, %3791
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3792, float %3838, float %3912)  ; FMad(a,b,c)
  %3914 = fadd fast float %3913, %3898
  %3915 = fmul fast float %3831, %3793
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3838, float %3915)  ; FMad(a,b,c)
  %3917 = fadd fast float %3916, %3897
  %3918 = fmul fast float %3859, %3791
  %3919 = call float @dx.op.tertiary.f32(i32 46, float %3792, float %3861, float %3918)  ; FMad(a,b,c)
  %3920 = fmul fast float %3859, %3793
  %3921 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3861, float %3920)  ; FMad(a,b,c)
  %3922 = fmul fast float %3860, %3791
  %3923 = call float @dx.op.tertiary.f32(i32 46, float %3792, float %3862, float %3922)  ; FMad(a,b,c)
  %3924 = fmul fast float %3860, %3793
  %3925 = call float @dx.op.tertiary.f32(i32 46, float %3794, float %3862, float %3924)  ; FMad(a,b,c)
  %3926 = add i32 %3902, 0
  %3927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3926, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3928 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3927, %dx.types.Handle %3906, float %3914, float %3917, float undef, float undef, i32 0, i32 0, i32 undef, float %3919, float %3921, float undef, float %3923, float %3925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = and i32 %3903, 1024
  %3931 = icmp ne i32 %3930, 0
  %3932 = fcmp fast ogt float %3929, 0x3FE0101020000000
  %3933 = uitofp i1 %3932 to float
  %3934 = select i1 %3931, float %3933, float %3929
  %3935 = and i32 %3903, 8192
  %3936 = icmp ne i32 %3935, 0
  %3937 = select i1 %3936, float %3896, float 1.000000e+00
  %3938 = fmul fast float %3831, 2.000000e+00
  %3939 = fadd fast float %3938, -1.000000e+00
  %3940 = call float @dx.op.unary.f32(i32 6, float %3939)  ; FAbs(value)
  %3941 = fmul fast float %3940, %3824
  %3942 = fsub fast float %3941, %3824
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = fmul fast float %3838, 2.000000e+00
  %3945 = fadd fast float %3944, -1.000000e+00
  %3946 = call float @dx.op.unary.f32(i32 6, float %3945)  ; FAbs(value)
  %3947 = fmul fast float %3946, %3825
  %3948 = fsub fast float %3947, %3825
  %3949 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3950 = fmul fast float %3850, %3787
  %3951 = fsub fast float %3950, %3787
  %3952 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3953 = fmul fast float %3911, %3937
  %3954 = fmul fast float %3953, %3908
  %3955 = fmul fast float %3954, %3943
  %3956 = fmul fast float %3955, %3934
  %3957 = fmul fast float %3956, %3949
  %3958 = fmul fast float %3957, %3952
  %3959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3960 = extractvalue %dx.types.CBufRet.f32 %3959, 1
  %3961 = extractvalue %dx.types.CBufRet.f32 %3959, 0
  %3962 = fsub fast float %3867, %3961
  %3963 = fmul fast float %3962, %3960
  %3964 = call float @dx.op.unary.f32(i32 7, float %3963)  ; Saturate(value)
  %3965 = fmul fast float %3958, %3788
  %3966 = fadd fast float %3958, %3788
  %3967 = fmul fast float %3966, %3797
  %3968 = fsub fast float %3967, %3797
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3970 = and i32 %3903, 128
  %3971 = icmp ne i32 %3970, 0
  %3972 = select i1 %3971, float %3969, float %3965
  %3973 = fmul fast float %3972, %3964
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 0
  %3976 = fcmp fast ugt float %3973, %3975
  br i1 %3976, label %3977, label %3871

; <label>:3977                                    ; preds = %3894
  %3978 = select i1 %3936, float %3973, float 0.000000e+00
  %3979 = fadd fast float %3978, %3749
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  br i1 %3936, label %3871, label %3981

; <label>:3981                                    ; preds = %3977
  %3982 = and i32 %3903, 4
  %3983 = and i32 %3903, 8
  %3984 = add i32 %3783, 0
  %3985 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3984, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3987 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3985, %dx.types.Handle %3986, float %3914, float %3917, float undef, float undef, i32 0, i32 0, i32 undef, float %3919, float %3921, float undef, float %3923, float %3925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = extractvalue %dx.types.ResRet.f32 %3987, 3
  %3992 = bitcast float %3809 to i32
  %3993 = and i32 %3992, 255
  %3994 = uitofp i32 %3993 to float
  %3995 = lshr i32 %3992, 8
  %3996 = and i32 %3995, 255
  %3997 = uitofp i32 %3996 to float
  %3998 = fmul fast float %3991, %3994
  %3999 = fadd fast float %3998, %3997
  %4000 = fmul fast float %3999, 0x3F70101000000000
  %4001 = add i32 %3784, 0
  %4002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4001, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4003 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4002, %dx.types.Handle %3986, float %3914, float %3917, float undef, float undef, i32 0, i32 0, i32 undef, float %3919, float %3921, float undef, float %3923, float %3925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4004 = extractvalue %dx.types.ResRet.f32 %4003, 0
  %4005 = extractvalue %dx.types.ResRet.f32 %4003, 1
  %4006 = extractvalue %dx.types.ResRet.f32 %4003, 2
  %4007 = extractvalue %dx.types.ResRet.f32 %4003, 3
  %4008 = bitcast float %3803 to i32
  %4009 = and i32 %4008, 255
  %4010 = uitofp i32 %4009 to float
  %4011 = lshr i32 %4008, 8
  %4012 = and i32 %4011, 255
  %4013 = uitofp i32 %4012 to float
  %4014 = lshr i32 %4008, 16
  %4015 = and i32 %4014, 255
  %4016 = uitofp i32 %4015 to float
  %4017 = fmul fast float %4016, 0x3F70101000000000
  %4018 = fmul fast float %4004, %4010
  %4019 = fadd fast float %4018, %4013
  %4020 = fmul fast float %4019, 0x3F70101000000000
  %4021 = fadd fast float %4005, -5.000000e-01
  %4022 = fadd fast float %4007, -5.000000e-01
  %4023 = fmul fast float %4021, %4017
  %4024 = fmul fast float %4022, %4017
  %4025 = fadd fast float %4023, 5.000000e-01
  %4026 = fadd fast float %4024, 5.000000e-01
  %4027 = fmul fast float %3988, %3812
  %4028 = fmul fast float %3989, %3813
  %4029 = fmul fast float %3990, %3814
  %4030 = fmul fast float %4025, 2.000000e+00
  %4031 = fadd fast float %4030, -1.000000e+00
  %4032 = fmul fast float %4026, 2.000000e+00
  %4033 = fadd fast float %4032, -1.000000e+00
  %4034 = fadd fast float %4031, %4033
  %4035 = fmul fast float %4034, 5.000000e-01
  %4036 = fsub fast float %4031, %4033
  %4037 = fmul fast float %4036, 5.000000e-01
  %4038 = call float @dx.op.unary.f32(i32 6, float %4035)  ; FAbs(value)
  %4039 = fsub fast float 1.000000e+00, %4038
  %4040 = call float @dx.op.unary.f32(i32 6, float %4037)  ; FAbs(value)
  %4041 = fsub fast float %4039, %4040
  %4042 = call float @dx.op.dot3.f32(i32 55, float %4035, float %4037, float %4041, float %4035, float %4037, float %4041)  ; Dot3(ax,ay,az,bx,by,bz)
  %4043 = call float @dx.op.unary.f32(i32 25, float %4042)  ; Rsqrt(value)
  %4044 = fmul fast float %4035, %4043
  %4045 = fmul fast float %4037, %4043
  %4046 = fmul fast float %4043, %4041
  %4047 = fmul fast float %4046, %3778
  %4048 = fmul fast float %4046, %3779
  %4049 = fmul fast float %4046, %3780
  %4050 = fmul fast float %4044, %3800
  %4051 = fmul fast float %4044, %3801
  %4052 = fmul fast float %4044, %3802
  %4053 = fadd fast float %4050, %4047
  %4054 = fadd fast float %4051, %4048
  %4055 = fadd fast float %4052, %4049
  %4056 = fmul fast float %4045, %3806
  %4057 = fmul fast float %4045, %3807
  %4058 = fmul fast float %4045, %3808
  %4059 = fadd fast float %4053, %4056
  %4060 = fadd fast float %4054, %4057
  %4061 = fadd fast float %4055, %4058
  %4062 = call float @dx.op.dot3.f32(i32 55, float %4059, float %4060, float %4061, float %4059, float %4060, float %4061)  ; Dot3(ax,ay,az,bx,by,bz)
  %4063 = call float @dx.op.unary.f32(i32 25, float %4062)  ; Rsqrt(value)
  %4064 = fmul fast float %4059, %4063
  %4065 = fmul fast float %4060, %4063
  %4066 = fmul fast float %4061, %4063
  %4067 = icmp ne i32 %3983, 0
  %4068 = select i1 %4067, float 1.000000e+00, float 0.000000e+00
  %4069 = fmul fast float %3973, %4068
  %4070 = and i32 %3903, 1
  %4071 = icmp eq i32 %4070, 0
  br i1 %4071, label %4072, label %4076

; <label>:4072                                    ; preds = %3981
  %4073 = fsub fast float %4064, %3760
  %4074 = fsub fast float %4065, %3761
  %4075 = fsub fast float %4066, %3762
  br label %4076

; <label>:4076                                    ; preds = %4072, %3981
  %4077 = phi float [ %4073, %4072 ], [ %4064, %3981 ]
  %4078 = phi float [ %4074, %4072 ], [ %4065, %3981 ]
  %4079 = phi float [ %4075, %4072 ], [ %4066, %3981 ]
  %4080 = fmul float %4079, %4069
  %4081 = fmul float %4078, %4069
  %4082 = fmul float %4077, %4069
  %4083 = fadd fast float %4082, %3760
  %4084 = fadd fast float %4081, %3761
  %4085 = fadd fast float %4080, %3762
  %4086 = icmp ne i32 %3982, 0
  %4087 = select i1 %4086, float 1.000000e+00, float 0.000000e+00
  %4088 = fmul fast float %3973, %4087
  %4089 = fsub fast float %4027, %3767
  %4090 = fsub fast float %4028, %3768
  %4091 = fsub fast float %4029, %3769
  %4092 = fmul fast float %4089, %4088
  %4093 = fmul fast float %4090, %4088
  %4094 = fmul fast float %4091, %4088
  %4095 = fadd fast float %4092, %3767
  %4096 = fadd fast float %4093, %3768
  %4097 = fadd fast float %4094, %3769
  %4098 = fsub fast float %4000, %3766
  %4099 = fmul fast float %4098, %4088
  %4100 = fadd fast float %4099, %3766
  %4101 = fmul fast float %4088, %3753
  %4102 = fsub fast float %3753, %4101
  %4103 = fmul fast float %4088, %3752
  %4104 = fsub fast float %3752, %4103
  %4105 = bitcast float %3821 to i32
  %4106 = lshr i32 %4105, 16
  %4107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4106)  ; LegacyF16ToF32(value)
  %4108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4109 = extractvalue %dx.types.ResRet.i32 %4108, 0
  %4110 = and i32 %4109, 1
  %4111 = icmp eq i32 %4110, 0
  br i1 %4111, label %4112, label %4137

; <label>:4112                                    ; preds = %4076
  %4113 = fadd fast float %4000, 0xBFB99999A0000000
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = fmul fast float %4114, 0x3FF1C71C80000000
  %4116 = fsub fast float 1.000000e+00, %4115
  %4117 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4118 = fmul fast float %4117, %4027
  %4119 = fmul fast float %4117, %4028
  %4120 = fmul fast float %4117, %4029
  %4121 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4122 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4123 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4124 = call float @dx.op.binary.f32(i32 35, float %4122, float %4123)  ; FMax(a,b)
  %4125 = call float @dx.op.binary.f32(i32 35, float %4121, float %4124)  ; FMax(a,b)
  %4126 = fcmp fast ogt float %4125, 0.000000e+00
  %4127 = bitcast float %4125 to i32
  %4128 = sub nsw i32 2129859010, %4127
  %4129 = bitcast i32 %4128 to float
  %4130 = select i1 %4126, float %4129, float 0.000000e+00
  %4131 = fmul fast float %4121, %4107
  %4132 = fmul fast float %4122, %4107
  %4133 = fmul fast float %4123, %4107
  %4134 = fmul fast float %4131, %4130
  %4135 = fmul fast float %4132, %4130
  %4136 = fmul fast float %4133, %4130
  br label %4137

; <label>:4137                                    ; preds = %4112, %4076
  %4138 = phi float [ %4107, %4076 ], [ %4134, %4112 ]
  %4139 = phi float [ %4107, %4076 ], [ %4135, %4112 ]
  %4140 = phi float [ %4107, %4076 ], [ %4136, %4112 ]
  %4141 = fsub fast float %4138, %3754
  %4142 = fsub fast float %4139, %3755
  %4143 = fsub fast float %4140, %3756
  %4144 = fmul fast float %4141, %4088
  %4145 = fmul fast float %4142, %4088
  %4146 = fmul fast float %4143, %4088
  %4147 = fadd fast float %4144, %3754
  %4148 = fadd fast float %4145, %3755
  %4149 = fadd fast float %4146, %3756
  %4150 = fadd fast float %3973, %3765
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = fsub fast float %4020, %3764
  %4153 = fmul fast float %4152, %4069
  %4154 = fadd fast float %4153, %3764
  %4155 = fsub fast float %4006, %3763
  %4156 = fmul fast float %4155, %4069
  %4157 = fadd fast float %4156, %3763
  %4158 = call float @dx.op.dot3.f32(i32 55, float %4027, float %4028, float %4029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = extractvalue %dx.types.CBufRet.f32 %4159, 1
  %4162 = fmul fast float %4161, %4158
  %4163 = fadd fast float %4162, %4160
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4165 = bitcast float %3815 to i32
  %4166 = and i32 %4165, 65535
  %4167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4166)  ; LegacyF16ToF32(value)
  %4168 = lshr i32 %4165, 16
  %4169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4168)  ; LegacyF16ToF32(value)
  %4170 = fcmp fast oge float %4167, 0.000000e+00
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = select i1 %4170, float %4167, float %4172
  %4174 = fadd fast float %4173, %4169
  %4175 = fsub fast float %4164, %3751
  %4176 = fmul fast float %4175, %3973
  %4177 = fadd fast float %4176, %3751
  %4178 = fmul fast float %4174, %3973
  %4179 = call float @dx.op.binary.f32(i32 35, float %3750, float %4178)  ; FMax(a,b)
  %4180 = and i32 %3903, 16
  %4181 = icmp eq i32 %4180, 0
  br i1 %4181, label %4203, label %4182

; <label>:4182                                    ; preds = %4137
  %4183 = add i32 %3818, 0
  %4184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4183, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4185 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4184, %dx.types.Handle %3986, float %3914, float %3917, float undef, float undef, i32 0, i32 0, i32 undef, float %3919, float %3921, float undef, float %3923, float %3925, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4188 = extractvalue %dx.types.ResRet.f32 %4185, 2
  %4189 = and i32 %4105, 65535
  %4190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4189)  ; LegacyF16ToF32(value)
  %4191 = fmul fast float %4186, %3812
  %4192 = fmul fast float %4187, %3813
  %4193 = fmul fast float %4188, %3814
  %4194 = and i32 %3903, 16384
  %4195 = icmp ne i32 %4194, 0
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = select i1 %4195, float %4197, float 1.000000e+00
  %4199 = fmul fast float %4198, %4190
  %4200 = fmul fast float %4191, %4199
  %4201 = fmul fast float %4192, %4199
  %4202 = fmul fast float %4193, %4199
  br label %4203

; <label>:4203                                    ; preds = %4182, %4137
  %4204 = phi float [ %4200, %4182 ], [ 0.000000e+00, %4137 ]
  %4205 = phi float [ %4201, %4182 ], [ 0.000000e+00, %4137 ]
  %4206 = phi float [ %4202, %4182 ], [ 0.000000e+00, %4137 ]
  %4207 = fsub fast float %4204, %3757
  %4208 = fsub fast float %4205, %3758
  %4209 = fsub fast float %4206, %3759
  %4210 = fmul fast float %4207, %3973
  %4211 = fmul fast float %4208, %3973
  %4212 = fmul fast float %4209, %3973
  %4213 = fadd fast float %4210, %3757
  %4214 = fadd fast float %4211, %3758
  %4215 = fadd fast float %4212, %3759
  br label %3871

; <label>:4216                                    ; preds = %3871
  br label %4217

; <label>:4217                                    ; preds = %4216, %3684
  %4218 = phi float [ 0.000000e+00, %3684 ], [ %3872, %4216 ]
  %4219 = phi float [ %3628, %3684 ], [ %3873, %4216 ]
  %4220 = phi float [ %3607, %3684 ], [ %3874, %4216 ]
  %4221 = phi float [ 0.000000e+00, %3684 ], [ %3875, %4216 ]
  %4222 = phi float [ 0.000000e+00, %3684 ], [ %3876, %4216 ]
  %4223 = phi float [ %3600, %3684 ], [ %3877, %4216 ]
  %4224 = phi float [ %3601, %3684 ], [ %3878, %4216 ]
  %4225 = phi float [ %3602, %3684 ], [ %3879, %4216 ]
  %4226 = phi float [ %3650, %3684 ], [ %3880, %4216 ]
  %4227 = phi float [ %3652, %3684 ], [ %3881, %4216 ]
  %4228 = phi float [ %3654, %3684 ], [ %3882, %4216 ]
  %4229 = phi float [ %3680, %3684 ], [ %3883, %4216 ]
  %4230 = phi float [ %3681, %3684 ], [ %3884, %4216 ]
  %4231 = phi float [ %3682, %3684 ], [ %3885, %4216 ]
  %4232 = phi float [ %3605, %3684 ], [ %3886, %4216 ]
  %4233 = phi float [ %3604, %3684 ], [ %3887, %4216 ]
  %4234 = phi float [ 0.000000e+00, %3684 ], [ %3888, %4216 ]
  %4235 = phi float [ %3603, %3684 ], [ %3889, %4216 ]
  %4236 = phi float [ %3635, %3684 ], [ %3890, %4216 ]
  %4237 = phi float [ %3636, %3684 ], [ %3891, %4216 ]
  %4238 = phi float [ %3637, %3684 ], [ %3892, %4216 ]
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4229, float %4230, float %4231, float %4229, float %4230, float %4231)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = call float @dx.op.unary.f32(i32 25, float %4239)  ; Rsqrt(value)
  %4241 = fmul fast float %4240, %4229
  %4242 = fmul fast float %4240, %4230
  %4243 = fmul fast float %4240, %4231
  %4244 = fadd fast float %4234, %1113
  %4245 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4246 = call float @dx.op.dot3.f32(i32 55, float %4241, float %4242, float %4243, float %4241, float %4242, float %4243)  ; Dot3(ax,ay,az,bx,by,bz)
  %4247 = call float @dx.op.unary.f32(i32 25, float %4246)  ; Rsqrt(value)
  %4248 = fmul fast float %4247, %4241
  %4249 = fmul fast float %4247, %4242
  %4250 = fmul fast float %4247, %4243
  br label %4251

; <label>:4251                                    ; preds = %4217, %3591
  %4252 = phi float [ %4248, %4217 ], [ %3680, %3591 ]
  %4253 = phi float [ %4249, %4217 ], [ %3681, %3591 ]
  %4254 = phi float [ %4250, %4217 ], [ %3682, %3591 ]
  %4255 = phi float [ %4236, %4217 ], [ %3635, %3591 ]
  %4256 = phi float [ %4237, %4217 ], [ %3636, %3591 ]
  %4257 = phi float [ %4238, %4217 ], [ %3637, %3591 ]
  %4258 = phi float [ %4223, %4217 ], [ %3600, %3591 ]
  %4259 = phi float [ %4224, %4217 ], [ %3601, %3591 ]
  %4260 = phi float [ %4225, %4217 ], [ %3602, %3591 ]
  %4261 = phi float [ %4226, %4217 ], [ %3650, %3591 ]
  %4262 = phi float [ %4227, %4217 ], [ %3652, %3591 ]
  %4263 = phi float [ %4228, %4217 ], [ %3654, %3591 ]
  %4264 = phi float [ %4235, %4217 ], [ %3603, %3591 ]
  %4265 = phi float [ %4245, %4217 ], [ %1113, %3591 ]
  %4266 = phi float [ %4233, %4217 ], [ %3604, %3591 ]
  %4267 = phi float [ %4232, %4217 ], [ %3605, %3591 ]
  %4268 = phi float [ %4222, %4217 ], [ 0.000000e+00, %3591 ]
  %4269 = phi float [ %4221, %4217 ], [ 0.000000e+00, %3591 ]
  %4270 = phi float [ %4218, %4217 ], [ 0.000000e+00, %3591 ]
  %4271 = phi float [ %4219, %4217 ], [ %3628, %3591 ]
  %4272 = phi float [ %4220, %4217 ], [ %3607, %3591 ]
  %4273 = fadd fast float %4264, 0xBFB99999A0000000
  %4274 = call float @dx.op.unary.f32(i32 7, float %4273)  ; Saturate(value)
  %4275 = fmul fast float %4274, 0x3FF1C71C80000000
  %4276 = call float @dx.op.binary.f32(i32 36, float %4264, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4277 = fsub fast float 1.000000e+00, %4275
  %4278 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4279 = fmul fast float %4278, %4255
  %4280 = fmul fast float %4278, %4256
  %4281 = fmul fast float %4278, %4257
  %4282 = call float @dx.op.unary.f32(i32 7, float %4279)  ; Saturate(value)
  %4283 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4284 = call float @dx.op.unary.f32(i32 7, float %4281)  ; Saturate(value)
  %4285 = fmul fast float %4275, %4255
  %4286 = fmul fast float %4275, %4256
  %4287 = fmul fast float %4275, %4257
  %4288 = fadd fast float %4285, %4276
  %4289 = fadd fast float %4286, %4276
  %4290 = fadd fast float %4287, %4276
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4293 = call float @dx.op.unary.f32(i32 7, float %4290)  ; Saturate(value)
  %4294 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %4296 = extractvalue %dx.types.ResRet.i32 %4295, 0
  %4297 = and i32 %4296, 1
  %4298 = icmp eq i32 %4297, 0
  br i1 %4298, label %4313, label %4299

; <label>:4299                                    ; preds = %4251
  %4300 = call float @dx.op.binary.f32(i32 35, float %4283, float %4284)  ; FMax(a,b)
  %4301 = call float @dx.op.binary.f32(i32 35, float %4282, float %4300)  ; FMax(a,b)
  %4302 = fcmp fast ogt float %4301, 0.000000e+00
  %4303 = bitcast float %4301 to i32
  %4304 = sub nsw i32 2129859010, %4303
  %4305 = bitcast i32 %4304 to float
  %4306 = select i1 %4302, float %4305, float 0.000000e+00
  %4307 = fmul fast float %4282, %4258
  %4308 = fmul fast float %4283, %4259
  %4309 = fmul fast float %4284, %4260
  %4310 = fmul fast float %4307, %4306
  %4311 = fmul fast float %4308, %4306
  %4312 = fmul fast float %4309, %4306
  br label %4313

; <label>:4313                                    ; preds = %4299, %4251
  %4314 = phi float [ %4310, %4299 ], [ %4258, %4251 ]
  %4315 = phi float [ %4311, %4299 ], [ %4259, %4251 ]
  %4316 = phi float [ %4312, %4299 ], [ %4260, %4251 ]
  %4317 = fadd fast float %4282, 0xBFD51EB860000000
  %4318 = fadd fast float %4283, 0xBFD51EB860000000
  %4319 = fadd fast float %4284, 0xBFD51EB860000000
  %4320 = fmul fast float %4317, %4317
  %4321 = fmul fast float %4318, %4318
  %4322 = fmul fast float %4319, %4319
  %4323 = fmul fast float %4320, %4320
  %4324 = fmul fast float %4323, 1.000000e+02
  %4325 = fmul fast float %4321, %4321
  %4326 = fmul fast float %4325, 1.000000e+02
  %4327 = fmul fast float %4322, %4322
  %4328 = fmul fast float %4327, 1.000000e+02
  %4329 = fadd fast float %4324, 3.500000e+00
  %4330 = fadd fast float %4326, 3.500000e+00
  %4331 = fadd fast float %4328, 3.500000e+00
  %4332 = call float @dx.op.binary.f32(i32 35, float %4314, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4333 = call float @dx.op.binary.f32(i32 35, float %4315, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4334 = call float @dx.op.binary.f32(i32 35, float %4316, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4335 = fdiv fast float %4329, %4332
  %4336 = fdiv fast float %4330, %4333
  %4337 = fdiv fast float %4331, %4334
  %4338 = fmul fast float %3606, 0xBFF7154760000000
  %4339 = fmul fast float %4338, %4335
  %4340 = call float @dx.op.unary.f32(i32 21, float %4339)  ; Exp(value)
  %4341 = fmul fast float %4340, 2.500000e-01
  %4342 = fmul fast float %3606, 0xBFDEC709E0000000
  %4343 = fmul fast float %4342, %4335
  %4344 = call float @dx.op.unary.f32(i32 21, float %4343)  ; Exp(value)
  %4345 = fmul fast float %4344, 7.500000e-01
  %4346 = fmul fast float %4338, %4336
  %4347 = call float @dx.op.unary.f32(i32 21, float %4346)  ; Exp(value)
  %4348 = fmul fast float %4347, 2.500000e-01
  %4349 = fmul fast float %4342, %4336
  %4350 = call float @dx.op.unary.f32(i32 21, float %4349)  ; Exp(value)
  %4351 = fmul fast float %4350, 7.500000e-01
  %4352 = fmul fast float %4338, %4337
  %4353 = call float @dx.op.unary.f32(i32 21, float %4352)  ; Exp(value)
  %4354 = fmul fast float %4353, 2.500000e-01
  %4355 = fmul fast float %4342, %4337
  %4356 = call float @dx.op.unary.f32(i32 21, float %4355)  ; Exp(value)
  %4357 = fmul fast float %4356, 7.500000e-01
  %4358 = fadd fast float %4341, %4345
  %4359 = fadd fast float %4348, %4351
  %4360 = fadd fast float %4354, %4357
  %4361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.i32 %4361, 3
  %4363 = and i32 %4362, 8
  %4364 = icmp ne i32 %4363, 0
  %4365 = call float @dx.op.binary.f32(i32 35, float %4282, float %4255)  ; FMax(a,b)
  %4366 = call float @dx.op.binary.f32(i32 35, float %4283, float %4255)  ; FMax(a,b)
  %4367 = call float @dx.op.binary.f32(i32 35, float %4284, float %4255)  ; FMax(a,b)
  %4368 = call float @dx.op.dot3.f32(i32 55, float %4282, float %4283, float %4284, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4369 = select i1 %262, float %4255, float %4282
  %4370 = select i1 %262, float %4368, float %4283
  %4371 = select i1 %262, float 1.000000e+00, float %4284
  %4372 = select i1 %4364, float %4365, float %4369
  %4373 = select i1 %4364, float %4366, float %4370
  %4374 = select i1 %4364, float %4367, float %4371
  %4375 = and i32 %238, 3
  %4376 = select i1 %232, i32 %4375, i32 0
  %4377 = icmp eq i32 %4376, 1
  br i1 %4377, label %4378, label %4454

; <label>:4378                                    ; preds = %4313
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.CBufRet.f32 %4379, 1
  %4382 = fadd fast float %4380, %188
  %4383 = fadd fast float %4381, %189
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 0
  %4386 = extractvalue %dx.types.CBufRet.f32 %4384, 1
  %4387 = fsub fast float %4382, %4385
  %4388 = fsub fast float %4383, %4386
  %4389 = fmul fast float %4387, %4387
  %4390 = fmul fast float %4388, %4388
  %4391 = fadd fast float %4389, %4390
  %4392 = call float @dx.op.unary.f32(i32 24, float %4391)  ; Sqrt(value)
  %4393 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4394 = fcmp fast olt float %4392, %4393
  br i1 %4394, label %4395, label %4448

; <label>:4395                                    ; preds = %4378
  %4396 = extractvalue %dx.types.CBufRet.f32 %4379, 2
  %4397 = fadd fast float %4396, %190
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 0
  %4400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.f32 %4400, 0
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4400, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4407 = extractvalue %dx.types.CBufRet.f32 %4398, 3
  %4408 = extractvalue %dx.types.CBufRet.f32 %4400, 3
  %4409 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4410 = fadd fast float %4407, %4382
  %4411 = fadd fast float %4408, %4383
  %4412 = fadd fast float %4397, %4409
  %4413 = fmul fast float %4410, %4399
  %4414 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4401, float %4413)  ; FMad(a,b,c)
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4412, float %4403, float %4414)  ; FMad(a,b,c)
  %4416 = fmul fast float %4410, %4404
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4411, float %4405, float %4416)  ; FMad(a,b,c)
  %4418 = call float @dx.op.tertiary.f32(i32 46, float %4412, float %4406, float %4417)  ; FMad(a,b,c)
  %4419 = fsub fast float %4415, %4407
  %4420 = fsub fast float %4418, %4408
  %4421 = fsub fast float %4419, %4385
  %4422 = fadd fast float %4421, %4393
  %4423 = fsub fast float %4420, %4386
  %4424 = fadd fast float %4423, %4393
  %4425 = extractvalue %dx.types.CBufRet.f32 %4384, 3
  %4426 = fmul fast float %4422, %4425
  %4427 = fmul fast float %4424, %4425
  %4428 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4430 = fsub fast float 1.000000e+00, %4428
  %4431 = fsub fast float 1.000000e+00, %4429
  %4432 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4430, float %4431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = fcmp fast ugt float %4433, 0.000000e+00
  br i1 %4434, label %4435, label %4448

; <label>:4435                                    ; preds = %4395
  %4436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4437 = extractvalue %dx.types.CBufRet.f32 %4436, 2
  %4438 = fmul fast float %4437, %4433
  %4439 = extractvalue %dx.types.CBufRet.f32 %4436, 3
  %4440 = fadd fast float %4439, %4438
  %4441 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4442 = fadd fast float %4440, %4409
  %4443 = fmul fast float %4415, %4403
  %4444 = call float @dx.op.tertiary.f32(i32 46, float %4418, float %4406, float %4443)  ; FMad(a,b,c)
  %4445 = call float @dx.op.tertiary.f32(i32 46, float %4442, float %4441, float %4444)  ; FMad(a,b,c)
  %4446 = fsub fast float %4445, %4409
  %4447 = fsub fast float %4446, %4396
  br label %4448

; <label>:4448                                    ; preds = %4435, %4395, %4378
  %4449 = phi i1 [ true, %4435 ], [ false, %4395 ], [ false, %4378 ]
  %4450 = phi float [ %4447, %4435 ], [ -1.310720e+05, %4395 ], [ -1.310720e+05, %4378 ]
  %4451 = fsub fast float %4450, %190
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = select i1 %4449, float %4452, float 1.000000e+00
  br label %4454

; <label>:4454                                    ; preds = %4448, %4313
  %4455 = phi float [ %4453, %4448 ], [ 0.000000e+00, %4313 ]
  %4456 = icmp eq i32 %4376, 3
  %4457 = select i1 %4456, float 1.000000e+00, float %4455
  %4458 = call float @dx.op.binary.f32(i32 35, float %4270, float %4457)  ; FMax(a,b)
  %4459 = fcmp fast olt float %4457, 1.000000e+00
  %4460 = fcmp uge float %65, 0.000000e+00
  %4461 = and i1 %4460, %4459
  br i1 %4461, label %4462, label %4472

; <label>:4462                                    ; preds = %4454
  %4463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %41, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4464 = extractvalue %dx.types.ResRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.ResRet.f32 %4463, 1
  %4466 = extractvalue %dx.types.ResRet.f32 %4463, 2
  %4467 = fadd fast float %4464, %4458
  %4468 = fcmp ule float %64, 0.000000e+00
  %4469 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4470 = select i1 %4468, float %4469, float 1.000000e+00
  %4471 = fmul fast float %4470, %4466
  br label %4472

; <label>:4472                                    ; preds = %4462, %4454
  %4473 = phi float [ %4467, %4462 ], [ %4458, %4454 ]
  %4474 = phi float [ %4465, %4462 ], [ 0.000000e+00, %4454 ]
  %4475 = phi float [ %4471, %4462 ], [ 0.000000e+00, %4454 ]
  %4476 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4477 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4478 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4479 = fcmp fast une float %4477, 0.000000e+00
  %4480 = fcmp fast une float %4478, 0.000000e+00
  %4481 = or i1 %4479, %4480
  br i1 %4481, label %4482, label %5041

; <label>:4482                                    ; preds = %4472
  br i1 %4479, label %4483, label %4756

; <label>:4483                                    ; preds = %4482
  %4484 = call float @dx.op.unary.f32(i32 23, float %4267)  ; Log(value)
  %4485 = fmul fast float %4484, 4.000000e+00
  %4486 = call float @dx.op.unary.f32(i32 21, float %4485)  ; Exp(value)
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = fmul fast float %4488, %52
  %4490 = fmul fast float %4488, %53
  %4491 = fmul fast float %4488, %54
  %4492 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4493 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4494 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4495 = call float @dx.op.unary.f32(i32 23, float %4492)  ; Log(value)
  %4496 = call float @dx.op.unary.f32(i32 23, float %4493)  ; Log(value)
  %4497 = call float @dx.op.unary.f32(i32 23, float %4494)  ; Log(value)
  %4498 = fmul fast float %4495, 4.000000e+00
  %4499 = fmul fast float %4496, 4.000000e+00
  %4500 = fmul fast float %4497, 4.000000e+00
  %4501 = call float @dx.op.unary.f32(i32 21, float %4498)  ; Exp(value)
  %4502 = call float @dx.op.unary.f32(i32 21, float %4499)  ; Exp(value)
  %4503 = call float @dx.op.unary.f32(i32 21, float %4500)  ; Exp(value)
  %4504 = fadd fast float %4502, %4501
  %4505 = fadd fast float %4504, %4503
  %4506 = fdiv fast float 1.000000e+00, %4505
  %4507 = fmul fast float %4506, %4501
  %4508 = fcmp fast ogt float %61, 0.000000e+00
  %4509 = fcmp fast ogt float %62, 0.000000e+00
  %4510 = fcmp fast ogt float %63, 0.000000e+00
  %4511 = fcmp fast olt float %61, 0.000000e+00
  %4512 = fcmp fast olt float %62, 0.000000e+00
  %4513 = fcmp fast olt float %63, 0.000000e+00
  %4514 = zext i1 %4508 to i32
  %4515 = zext i1 %4509 to i32
  %4516 = zext i1 %4510 to i32
  %4517 = zext i1 %4511 to i32
  %4518 = zext i1 %4512 to i32
  %4519 = zext i1 %4513 to i32
  %4520 = sub nsw i32 %4514, %4517
  %4521 = sub nsw i32 %4515, %4518
  %4522 = sub nsw i32 %4516, %4519
  %4523 = call float @dx.op.unary.f32(i32 83, float %4489)  ; DerivCoarseX(value)
  %4524 = call float @dx.op.unary.f32(i32 83, float %4490)  ; DerivCoarseX(value)
  %4525 = call float @dx.op.unary.f32(i32 83, float %4491)  ; DerivCoarseX(value)
  %4526 = call float @dx.op.unary.f32(i32 84, float %4489)  ; DerivCoarseY(value)
  %4527 = call float @dx.op.unary.f32(i32 84, float %4490)  ; DerivCoarseY(value)
  %4528 = call float @dx.op.unary.f32(i32 84, float %4491)  ; DerivCoarseY(value)
  %4529 = fcmp fast ole float %273, %4507
  %4530 = fmul fast float %4506, %4504
  %4531 = fcmp fast ole float %273, %4530
  %4532 = select i1 %4531, float %4491, float %4489
  %4533 = select i1 %4531, float %4489, float %4490
  %4534 = select i1 %4529, float %4490, float %4532
  %4535 = select i1 %4529, float %4491, float %4533
  %4536 = select i1 %4531, float %4525, float %4523
  %4537 = select i1 %4531, float %4523, float %4524
  %4538 = select i1 %4529, float %4524, float %4536
  %4539 = select i1 %4529, float %4525, float %4537
  %4540 = select i1 %4531, float %4528, float %4526
  %4541 = select i1 %4531, float %4526, float %4527
  %4542 = select i1 %4529, float %4527, float %4540
  %4543 = select i1 %4529, float %4528, float %4541
  %4544 = call float @dx.op.unary.f32(i32 27, float %4534)  ; Round_ni(value)
  %4545 = call float @dx.op.unary.f32(i32 27, float %4535)  ; Round_ni(value)
  %4546 = fptosi float %4544 to i32
  %4547 = fptosi float %4545 to i32
  %4548 = xor i32 %4547, %4546
  %4549 = sitofp i32 %4548 to float
  %4550 = fptosi float %4549 to i32
  %4551 = sitofp i32 %4550 to float
  %4552 = fmul fast float %4551, 0x3FE3C6EF40000000
  %4553 = frem fast float %4544, 2.560000e+02
  %4554 = frem fast float %4545, 2.560000e+02
  %4555 = fptoui float %4553 to i32
  %4556 = fptoui float %4554 to i32
  %4557 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4555, i32 %4556, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = extractvalue %dx.types.ResRet.f32 %4557, 1
  %4560 = extractvalue %dx.types.ResRet.f32 %4557, 2
  %4561 = fadd fast float %4558, %4552
  %4562 = fadd fast float %4559, %4552
  %4563 = fadd fast float %4560, %4552
  %4564 = call float @dx.op.unary.f32(i32 22, float %4561)  ; Frc(value)
  %4565 = call float @dx.op.unary.f32(i32 22, float %4562)  ; Frc(value)
  %4566 = call float @dx.op.unary.f32(i32 22, float %4563)  ; Frc(value)
  %4567 = fmul fast float %4566, 0x401921FB60000000
  %4568 = call float @dx.op.unary.f32(i32 13, float %4567)  ; Sin(value)
  %4569 = call float @dx.op.unary.f32(i32 12, float %4567)  ; Cos(value)
  %4570 = fsub fast float -0.000000e+00, %4569
  %4571 = fmul fast float %4569, %4534
  %4572 = call float @dx.op.tertiary.f32(i32 46, float %4568, float %4535, float %4571)  ; FMad(a,b,c)
  %4573 = fmul fast float %4568, %4534
  %4574 = call float @dx.op.tertiary.f32(i32 46, float %4570, float %4535, float %4573)  ; FMad(a,b,c)
  %4575 = fadd fast float %4572, %4564
  %4576 = fadd fast float %4574, %4565
  %4577 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4578 = bitcast float %4577 to i32
  %4579 = icmp eq i32 %4578, 0
  br i1 %4579, label %4618, label %4580

; <label>:4580                                    ; preds = %4483
  %4581 = add i32 %4578, 0
  %4582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4583 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4582, %dx.types.Handle %106, float %4575, float %4576, float undef, float undef, i32 0, i32 0, i32 undef, float %4538, float %4539, float undef, float %4542, float %4543, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4587 = extractvalue %dx.types.CBufRet.f32 %4585, 2
  %4588 = fsub fast float 1.000000e+00, %4477
  %4589 = call float @dx.op.binary.f32(i32 35, float %4588, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4590 = bitcast float %4477 to i32
  %4591 = sitofp i32 %4590 to float
  %4592 = fadd fast float %4591, 0xC1CFBF8940000000
  %4593 = fmul fast float %4587, %4592
  %4594 = fadd fast float %4593, 0x41CFBF8940000000
  %4595 = fptosi float %4594 to i32
  %4596 = bitcast i32 %4595 to float
  %4597 = bitcast float %4589 to i32
  %4598 = sitofp i32 %4597 to float
  %4599 = fadd fast float %4598, 0xC1CFBF8940000000
  %4600 = fmul fast float %4599, %4587
  %4601 = fadd fast float %4600, 0x41CFBF8940000000
  %4602 = fptosi float %4601 to i32
  %4603 = bitcast i32 %4602 to float
  %4604 = fmul fast float %4596, %4586
  %4605 = fmul fast float %4603, %4586
  %4606 = fsub fast float %4589, %4604
  %4607 = fadd fast float %4605, %4589
  %4608 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4609 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4610 = fsub fast float %4584, %4608
  %4611 = fsub fast float %4609, %4608
  %4612 = bitcast float %4611 to i32
  %4613 = sub nsw i32 2129859010, %4612
  %4614 = bitcast i32 %4613 to float
  %4615 = fmul fast float %4614, %4610
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = fcmp fast olt float %4616, 0x3F70101020000000
  br i1 %4617, label %4756, label %4618

; <label>:4618                                    ; preds = %4580, %4483
  %4619 = phi float [ %4616, %4580 ], [ %4477, %4483 ]
  %4620 = fmul fast float %4619, %4486
  %4621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4622 = extractvalue %dx.types.CBufRet.i32 %4621, 1
  %4623 = extractvalue %dx.types.CBufRet.i32 %4621, 0
  %4624 = add i32 %4623, 0
  %4625 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4624, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4626 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4625, %dx.types.Handle %105, float %4575, float %4576, float undef, float undef, i32 0, i32 0, i32 undef, float %4538, float %4539, float undef, float %4542, float %4543, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4627 = extractvalue %dx.types.ResRet.f32 %4626, 0
  %4628 = extractvalue %dx.types.ResRet.f32 %4626, 1
  %4629 = extractvalue %dx.types.ResRet.f32 %4626, 2
  %4630 = extractvalue %dx.types.ResRet.f32 %4626, 3
  %4631 = and i32 %4622, 255
  %4632 = uitofp i32 %4631 to float
  %4633 = lshr i32 %4622, 8
  %4634 = and i32 %4633, 255
  %4635 = uitofp i32 %4634 to float
  %4636 = fmul fast float %4630, %4632
  %4637 = fadd fast float %4636, %4635
  %4638 = fmul fast float %4637, 0x3F70101000000000
  %4639 = fadd fast float %4638, 0xBFB99999A0000000
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fmul fast float %4640, 0x3FF1C71C80000000
  %4642 = call float @dx.op.binary.f32(i32 36, float %4638, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4643 = fsub fast float 1.000000e+00, %4641
  %4644 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4645 = fmul fast float %4644, %4627
  %4646 = fmul fast float %4644, %4628
  %4647 = fmul fast float %4644, %4629
  %4648 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4651 = fmul fast float %4641, %4627
  %4652 = fmul fast float %4641, %4628
  %4653 = fmul fast float %4641, %4629
  %4654 = fadd fast float %4651, %4642
  %4655 = fadd fast float %4652, %4642
  %4656 = fadd fast float %4653, %4642
  %4657 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4658 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4659 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4660 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.i32 %4660, 3
  %4662 = extractvalue %dx.types.CBufRet.i32 %4660, 2
  %4663 = add i32 %4662, 0
  %4664 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4663, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4665 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4664, %dx.types.Handle %105, float %4575, float %4576, float undef, float undef, i32 0, i32 0, i32 undef, float %4538, float %4539, float undef, float %4542, float %4543, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4665, 2
  %4669 = extractvalue %dx.types.ResRet.f32 %4665, 3
  %4670 = and i32 %4661, 255
  %4671 = uitofp i32 %4670 to float
  %4672 = lshr i32 %4661, 8
  %4673 = and i32 %4672, 255
  %4674 = uitofp i32 %4673 to float
  %4675 = lshr i32 %4661, 16
  %4676 = and i32 %4675, 255
  %4677 = uitofp i32 %4676 to float
  %4678 = fmul fast float %4677, 0x3F70101000000000
  %4679 = fmul fast float %4666, %4671
  %4680 = fadd fast float %4679, %4674
  %4681 = fmul fast float %4680, 0x3F70101000000000
  %4682 = fadd fast float %4667, -5.000000e-01
  %4683 = fadd fast float %4669, -5.000000e-01
  %4684 = fmul fast float %4682, %4678
  %4685 = fmul fast float %4683, %4678
  %4686 = fadd fast float %4684, 5.000000e-01
  %4687 = fadd fast float %4685, 5.000000e-01
  %4688 = fmul fast float %4686, 2.000000e+00
  %4689 = fadd fast float %4688, -1.000000e+00
  %4690 = fmul fast float %4687, 2.000000e+00
  %4691 = fadd fast float %4690, -1.000000e+00
  %4692 = fadd fast float %4689, %4691
  %4693 = fmul fast float %4692, 5.000000e-01
  %4694 = fsub fast float %4689, %4691
  %4695 = fmul fast float %4694, 5.000000e-01
  %4696 = call float @dx.op.unary.f32(i32 6, float %4693)  ; FAbs(value)
  %4697 = fsub fast float 1.000000e+00, %4696
  %4698 = call float @dx.op.unary.f32(i32 6, float %4695)  ; FAbs(value)
  %4699 = fsub fast float %4697, %4698
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4693, float %4695, float %4699, float %4693, float %4695, float %4699)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 25, float %4700)  ; Rsqrt(value)
  %4702 = fmul fast float %4693, %4701
  %4703 = fmul fast float %4695, %4701
  %4704 = select i1 %4531, i32 %4521, i32 %4522
  %4705 = select i1 %4529, i32 %4520, i32 %4704
  %4706 = sitofp i32 %4705 to float
  %4707 = fmul fast float %4699, %4706
  %4708 = fmul fast float %4707, %4701
  %4709 = select i1 %4531, float %4708, float %4703
  %4710 = select i1 %4531, float %4703, float %4708
  %4711 = select i1 %4529, float %4708, float %4702
  %4712 = select i1 %4529, float %4703, float %4709
  %4713 = select i1 %4529, float %4702, float %4710
  %4714 = fsub fast float %4648, %4372
  %4715 = fsub fast float %4649, %4373
  %4716 = fsub fast float %4650, %4374
  %4717 = fmul fast float %4714, %4620
  %4718 = fmul fast float %4715, %4620
  %4719 = fmul fast float %4716, %4620
  %4720 = fadd fast float %4717, %4372
  %4721 = fadd fast float %4718, %4373
  %4722 = fadd fast float %4719, %4374
  %4723 = fsub fast float %4657, %4291
  %4724 = fsub fast float %4658, %4292
  %4725 = fsub fast float %4659, %4293
  %4726 = fmul fast float %4723, %4620
  %4727 = fmul fast float %4724, %4620
  %4728 = fmul fast float %4725, %4620
  %4729 = fadd fast float %4726, %4291
  %4730 = fadd fast float %4727, %4292
  %4731 = fadd fast float %4728, %4293
  %4732 = fadd fast float %4711, %4252
  %4733 = fadd fast float %4712, %4253
  %4734 = fadd fast float %4713, %4254
  %4735 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4733, float %4734, float %4732, float %4733, float %4734)  ; Dot3(ax,ay,az,bx,by,bz)
  %4736 = call float @dx.op.unary.f32(i32 25, float %4735)  ; Rsqrt(value)
  %4737 = fmul fast float %4732, %4736
  %4738 = fmul fast float %4733, %4736
  %4739 = fmul fast float %4734, %4736
  %4740 = fsub fast float %4737, %4252
  %4741 = fsub fast float %4738, %4253
  %4742 = fsub fast float %4739, %4254
  %4743 = fmul fast float %4740, %4620
  %4744 = fmul fast float %4741, %4620
  %4745 = fmul fast float %4742, %4620
  %4746 = fadd fast float %4743, %4252
  %4747 = fadd fast float %4744, %4253
  %4748 = fadd fast float %4745, %4254
  %4749 = call float @dx.op.binary.f32(i32 36, float %4267, float %4668)  ; FMin(a,b)
  %4750 = fsub fast float %4749, %4267
  %4751 = fmul fast float %4750, %4620
  %4752 = fadd fast float %4751, %4267
  %4753 = fsub fast float %4681, %4294
  %4754 = fmul fast float %4753, %4620
  %4755 = fadd fast float %4754, %4294
  br label %4756

; <label>:4756                                    ; preds = %4618, %4580, %4482
  %4757 = phi float [ %4720, %4618 ], [ %4372, %4580 ], [ %4372, %4482 ]
  %4758 = phi float [ %4721, %4618 ], [ %4373, %4580 ], [ %4373, %4482 ]
  %4759 = phi float [ %4722, %4618 ], [ %4374, %4580 ], [ %4374, %4482 ]
  %4760 = phi float [ %4746, %4618 ], [ %4252, %4580 ], [ %4252, %4482 ]
  %4761 = phi float [ %4747, %4618 ], [ %4253, %4580 ], [ %4253, %4482 ]
  %4762 = phi float [ %4748, %4618 ], [ %4254, %4580 ], [ %4254, %4482 ]
  %4763 = phi float [ %4729, %4618 ], [ %4291, %4580 ], [ %4291, %4482 ]
  %4764 = phi float [ %4730, %4618 ], [ %4292, %4580 ], [ %4292, %4482 ]
  %4765 = phi float [ %4731, %4618 ], [ %4293, %4580 ], [ %4293, %4482 ]
  %4766 = phi float [ %4755, %4618 ], [ %4294, %4580 ], [ %4294, %4482 ]
  %4767 = phi float [ %4752, %4618 ], [ %4267, %4580 ], [ %4267, %4482 ]
  br i1 %4480, label %4768, label %5041

; <label>:4768                                    ; preds = %4756
  %4769 = call float @dx.op.unary.f32(i32 23, float %4767)  ; Log(value)
  %4770 = fmul fast float %4769, 4.000000e+00
  %4771 = call float @dx.op.unary.f32(i32 21, float %4770)  ; Exp(value)
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 0
  %4774 = fmul fast float %4773, %52
  %4775 = fmul fast float %4773, %53
  %4776 = fmul fast float %4773, %54
  %4777 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4778 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4779 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4780 = call float @dx.op.unary.f32(i32 23, float %4777)  ; Log(value)
  %4781 = call float @dx.op.unary.f32(i32 23, float %4778)  ; Log(value)
  %4782 = call float @dx.op.unary.f32(i32 23, float %4779)  ; Log(value)
  %4783 = fmul fast float %4780, 4.000000e+00
  %4784 = fmul fast float %4781, 4.000000e+00
  %4785 = fmul fast float %4782, 4.000000e+00
  %4786 = call float @dx.op.unary.f32(i32 21, float %4783)  ; Exp(value)
  %4787 = call float @dx.op.unary.f32(i32 21, float %4784)  ; Exp(value)
  %4788 = call float @dx.op.unary.f32(i32 21, float %4785)  ; Exp(value)
  %4789 = fadd fast float %4787, %4786
  %4790 = fadd fast float %4789, %4788
  %4791 = fdiv fast float 1.000000e+00, %4790
  %4792 = fmul fast float %4791, %4786
  %4793 = fcmp fast ogt float %61, 0.000000e+00
  %4794 = fcmp fast ogt float %62, 0.000000e+00
  %4795 = fcmp fast ogt float %63, 0.000000e+00
  %4796 = fcmp fast olt float %61, 0.000000e+00
  %4797 = fcmp fast olt float %62, 0.000000e+00
  %4798 = fcmp fast olt float %63, 0.000000e+00
  %4799 = zext i1 %4793 to i32
  %4800 = zext i1 %4794 to i32
  %4801 = zext i1 %4795 to i32
  %4802 = zext i1 %4796 to i32
  %4803 = zext i1 %4797 to i32
  %4804 = zext i1 %4798 to i32
  %4805 = sub nsw i32 %4799, %4802
  %4806 = sub nsw i32 %4800, %4803
  %4807 = sub nsw i32 %4801, %4804
  %4808 = call float @dx.op.unary.f32(i32 83, float %4774)  ; DerivCoarseX(value)
  %4809 = call float @dx.op.unary.f32(i32 83, float %4775)  ; DerivCoarseX(value)
  %4810 = call float @dx.op.unary.f32(i32 83, float %4776)  ; DerivCoarseX(value)
  %4811 = call float @dx.op.unary.f32(i32 84, float %4774)  ; DerivCoarseY(value)
  %4812 = call float @dx.op.unary.f32(i32 84, float %4775)  ; DerivCoarseY(value)
  %4813 = call float @dx.op.unary.f32(i32 84, float %4776)  ; DerivCoarseY(value)
  %4814 = fcmp fast ole float %273, %4792
  %4815 = fmul fast float %4791, %4789
  %4816 = fcmp fast ole float %273, %4815
  %4817 = select i1 %4816, float %4776, float %4774
  %4818 = select i1 %4816, float %4774, float %4775
  %4819 = select i1 %4814, float %4775, float %4817
  %4820 = select i1 %4814, float %4776, float %4818
  %4821 = select i1 %4816, float %4810, float %4808
  %4822 = select i1 %4816, float %4808, float %4809
  %4823 = select i1 %4814, float %4809, float %4821
  %4824 = select i1 %4814, float %4810, float %4822
  %4825 = select i1 %4816, float %4813, float %4811
  %4826 = select i1 %4816, float %4811, float %4812
  %4827 = select i1 %4814, float %4812, float %4825
  %4828 = select i1 %4814, float %4813, float %4826
  %4829 = call float @dx.op.unary.f32(i32 27, float %4819)  ; Round_ni(value)
  %4830 = call float @dx.op.unary.f32(i32 27, float %4820)  ; Round_ni(value)
  %4831 = fptosi float %4829 to i32
  %4832 = fptosi float %4830 to i32
  %4833 = xor i32 %4832, %4831
  %4834 = sitofp i32 %4833 to float
  %4835 = fptosi float %4834 to i32
  %4836 = sitofp i32 %4835 to float
  %4837 = fmul fast float %4836, 0x3FE3C6EF40000000
  %4838 = frem fast float %4829, 2.560000e+02
  %4839 = frem fast float %4830, 2.560000e+02
  %4840 = fptoui float %4838 to i32
  %4841 = fptoui float %4839 to i32
  %4842 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4840, i32 %4841, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4843 = extractvalue %dx.types.ResRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.ResRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.ResRet.f32 %4842, 2
  %4846 = fadd fast float %4843, %4837
  %4847 = fadd fast float %4844, %4837
  %4848 = fadd fast float %4845, %4837
  %4849 = call float @dx.op.unary.f32(i32 22, float %4846)  ; Frc(value)
  %4850 = call float @dx.op.unary.f32(i32 22, float %4847)  ; Frc(value)
  %4851 = call float @dx.op.unary.f32(i32 22, float %4848)  ; Frc(value)
  %4852 = fmul fast float %4851, 0x401921FB60000000
  %4853 = call float @dx.op.unary.f32(i32 13, float %4852)  ; Sin(value)
  %4854 = call float @dx.op.unary.f32(i32 12, float %4852)  ; Cos(value)
  %4855 = fsub fast float -0.000000e+00, %4854
  %4856 = fmul fast float %4854, %4819
  %4857 = call float @dx.op.tertiary.f32(i32 46, float %4853, float %4820, float %4856)  ; FMad(a,b,c)
  %4858 = fmul fast float %4853, %4819
  %4859 = call float @dx.op.tertiary.f32(i32 46, float %4855, float %4820, float %4858)  ; FMad(a,b,c)
  %4860 = fadd fast float %4857, %4849
  %4861 = fadd fast float %4859, %4850
  %4862 = extractvalue %dx.types.CBufRet.f32 %4772, 3
  %4863 = bitcast float %4862 to i32
  %4864 = icmp eq i32 %4863, 0
  br i1 %4864, label %4903, label %4865

; <label>:4865                                    ; preds = %4768
  %4866 = add i32 %4863, 0
  %4867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4866, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4868 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4867, %dx.types.Handle %106, float %4860, float %4861, float undef, float undef, i32 0, i32 0, i32 undef, float %4823, float %4824, float undef, float %4827, float %4828, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4869 = extractvalue %dx.types.ResRet.f32 %4868, 0
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4872 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4873 = fsub fast float 1.000000e+00, %4478
  %4874 = call float @dx.op.binary.f32(i32 35, float %4873, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4875 = bitcast float %4478 to i32
  %4876 = sitofp i32 %4875 to float
  %4877 = fadd fast float %4876, 0xC1CFBF8940000000
  %4878 = fmul fast float %4872, %4877
  %4879 = fadd fast float %4878, 0x41CFBF8940000000
  %4880 = fptosi float %4879 to i32
  %4881 = bitcast i32 %4880 to float
  %4882 = bitcast float %4874 to i32
  %4883 = sitofp i32 %4882 to float
  %4884 = fadd fast float %4883, 0xC1CFBF8940000000
  %4885 = fmul fast float %4884, %4872
  %4886 = fadd fast float %4885, 0x41CFBF8940000000
  %4887 = fptosi float %4886 to i32
  %4888 = bitcast i32 %4887 to float
  %4889 = fmul fast float %4881, %4871
  %4890 = fmul fast float %4888, %4871
  %4891 = fsub fast float %4874, %4889
  %4892 = fadd fast float %4890, %4874
  %4893 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4894 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4895 = fsub fast float %4869, %4893
  %4896 = fsub fast float %4894, %4893
  %4897 = bitcast float %4896 to i32
  %4898 = sub nsw i32 2129859010, %4897
  %4899 = bitcast i32 %4898 to float
  %4900 = fmul fast float %4899, %4895
  %4901 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4902 = fcmp fast olt float %4901, 0x3F70101020000000
  br i1 %4902, label %5041, label %4903

; <label>:4903                                    ; preds = %4865, %4768
  %4904 = phi float [ %4901, %4865 ], [ %4478, %4768 ]
  %4905 = fmul fast float %4904, %4771
  %4906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.i32 %4906, 1
  %4908 = extractvalue %dx.types.CBufRet.i32 %4906, 0
  %4909 = add i32 %4908, 0
  %4910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4911 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4910, %dx.types.Handle %105, float %4860, float %4861, float undef, float undef, i32 0, i32 0, i32 undef, float %4823, float %4824, float undef, float %4827, float %4828, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4912 = extractvalue %dx.types.ResRet.f32 %4911, 0
  %4913 = extractvalue %dx.types.ResRet.f32 %4911, 1
  %4914 = extractvalue %dx.types.ResRet.f32 %4911, 2
  %4915 = extractvalue %dx.types.ResRet.f32 %4911, 3
  %4916 = and i32 %4907, 255
  %4917 = uitofp i32 %4916 to float
  %4918 = lshr i32 %4907, 8
  %4919 = and i32 %4918, 255
  %4920 = uitofp i32 %4919 to float
  %4921 = fmul fast float %4915, %4917
  %4922 = fadd fast float %4921, %4920
  %4923 = fmul fast float %4922, 0x3F70101000000000
  %4924 = fadd fast float %4923, 0xBFB99999A0000000
  %4925 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4926 = fmul fast float %4925, 0x3FF1C71C80000000
  %4927 = call float @dx.op.binary.f32(i32 36, float %4923, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4928 = fsub fast float 1.000000e+00, %4926
  %4929 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4930 = fmul fast float %4929, %4912
  %4931 = fmul fast float %4929, %4913
  %4932 = fmul fast float %4929, %4914
  %4933 = call float @dx.op.unary.f32(i32 7, float %4930)  ; Saturate(value)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4935 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4936 = fmul fast float %4926, %4912
  %4937 = fmul fast float %4926, %4913
  %4938 = fmul fast float %4926, %4914
  %4939 = fadd fast float %4936, %4927
  %4940 = fadd fast float %4937, %4927
  %4941 = fadd fast float %4938, %4927
  %4942 = call float @dx.op.unary.f32(i32 7, float %4939)  ; Saturate(value)
  %4943 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4945 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4946 = extractvalue %dx.types.CBufRet.i32 %4945, 3
  %4947 = extractvalue %dx.types.CBufRet.i32 %4945, 2
  %4948 = add i32 %4947, 0
  %4949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4950 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4949, %dx.types.Handle %105, float %4860, float %4861, float undef, float undef, i32 0, i32 0, i32 undef, float %4823, float %4824, float undef, float %4827, float %4828, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4951 = extractvalue %dx.types.ResRet.f32 %4950, 0
  %4952 = extractvalue %dx.types.ResRet.f32 %4950, 1
  %4953 = extractvalue %dx.types.ResRet.f32 %4950, 2
  %4954 = extractvalue %dx.types.ResRet.f32 %4950, 3
  %4955 = and i32 %4946, 255
  %4956 = uitofp i32 %4955 to float
  %4957 = lshr i32 %4946, 8
  %4958 = and i32 %4957, 255
  %4959 = uitofp i32 %4958 to float
  %4960 = lshr i32 %4946, 16
  %4961 = and i32 %4960, 255
  %4962 = uitofp i32 %4961 to float
  %4963 = fmul fast float %4962, 0x3F70101000000000
  %4964 = fmul fast float %4951, %4956
  %4965 = fadd fast float %4964, %4959
  %4966 = fmul fast float %4965, 0x3F70101000000000
  %4967 = fadd fast float %4952, -5.000000e-01
  %4968 = fadd fast float %4954, -5.000000e-01
  %4969 = fmul fast float %4967, %4963
  %4970 = fmul fast float %4968, %4963
  %4971 = fadd fast float %4969, 5.000000e-01
  %4972 = fadd fast float %4970, 5.000000e-01
  %4973 = fmul fast float %4971, 2.000000e+00
  %4974 = fadd fast float %4973, -1.000000e+00
  %4975 = fmul fast float %4972, 2.000000e+00
  %4976 = fadd fast float %4975, -1.000000e+00
  %4977 = fadd fast float %4974, %4976
  %4978 = fmul fast float %4977, 5.000000e-01
  %4979 = fsub fast float %4974, %4976
  %4980 = fmul fast float %4979, 5.000000e-01
  %4981 = call float @dx.op.unary.f32(i32 6, float %4978)  ; FAbs(value)
  %4982 = fsub fast float 1.000000e+00, %4981
  %4983 = call float @dx.op.unary.f32(i32 6, float %4980)  ; FAbs(value)
  %4984 = fsub fast float %4982, %4983
  %4985 = call float @dx.op.dot3.f32(i32 55, float %4978, float %4980, float %4984, float %4978, float %4980, float %4984)  ; Dot3(ax,ay,az,bx,by,bz)
  %4986 = call float @dx.op.unary.f32(i32 25, float %4985)  ; Rsqrt(value)
  %4987 = fmul fast float %4978, %4986
  %4988 = fmul fast float %4980, %4986
  %4989 = select i1 %4816, i32 %4806, i32 %4807
  %4990 = select i1 %4814, i32 %4805, i32 %4989
  %4991 = sitofp i32 %4990 to float
  %4992 = fmul fast float %4984, %4991
  %4993 = fmul fast float %4992, %4986
  %4994 = select i1 %4816, float %4993, float %4988
  %4995 = select i1 %4816, float %4988, float %4993
  %4996 = select i1 %4814, float %4993, float %4987
  %4997 = select i1 %4814, float %4988, float %4994
  %4998 = select i1 %4814, float %4987, float %4995
  %4999 = fsub fast float %4933, %4757
  %5000 = fsub fast float %4934, %4758
  %5001 = fsub fast float %4935, %4759
  %5002 = fmul fast float %4999, %4905
  %5003 = fmul fast float %5000, %4905
  %5004 = fmul fast float %5001, %4905
  %5005 = fadd fast float %5002, %4757
  %5006 = fadd fast float %5003, %4758
  %5007 = fadd fast float %5004, %4759
  %5008 = fsub fast float %4942, %4763
  %5009 = fsub fast float %4943, %4764
  %5010 = fsub fast float %4944, %4765
  %5011 = fmul fast float %5008, %4905
  %5012 = fmul fast float %5009, %4905
  %5013 = fmul fast float %5010, %4905
  %5014 = fadd fast float %5011, %4763
  %5015 = fadd fast float %5012, %4764
  %5016 = fadd fast float %5013, %4765
  %5017 = fadd fast float %4996, %4760
  %5018 = fadd fast float %4997, %4761
  %5019 = fadd fast float %4998, %4762
  %5020 = call float @dx.op.dot3.f32(i32 55, float %5017, float %5018, float %5019, float %5017, float %5018, float %5019)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = call float @dx.op.unary.f32(i32 25, float %5020)  ; Rsqrt(value)
  %5022 = fmul fast float %5017, %5021
  %5023 = fmul fast float %5018, %5021
  %5024 = fmul fast float %5019, %5021
  %5025 = fsub fast float %5022, %4760
  %5026 = fsub fast float %5023, %4761
  %5027 = fsub fast float %5024, %4762
  %5028 = fmul fast float %5025, %4905
  %5029 = fmul fast float %5026, %4905
  %5030 = fmul fast float %5027, %4905
  %5031 = fadd fast float %5028, %4760
  %5032 = fadd fast float %5029, %4761
  %5033 = fadd fast float %5030, %4762
  %5034 = call float @dx.op.binary.f32(i32 36, float %4767, float %4953)  ; FMin(a,b)
  %5035 = fsub fast float %5034, %4767
  %5036 = fmul fast float %5035, %4905
  %5037 = fadd fast float %5036, %4767
  %5038 = fsub fast float %4966, %4766
  %5039 = fmul fast float %5038, %4905
  %5040 = fadd fast float %5039, %4766
  br label %5041

; <label>:5041                                    ; preds = %4903, %4865, %4756, %4472
  %5042 = phi float [ %5005, %4903 ], [ %4757, %4865 ], [ %4757, %4756 ], [ %4372, %4472 ]
  %5043 = phi float [ %5006, %4903 ], [ %4758, %4865 ], [ %4758, %4756 ], [ %4373, %4472 ]
  %5044 = phi float [ %5007, %4903 ], [ %4759, %4865 ], [ %4759, %4756 ], [ %4374, %4472 ]
  %5045 = phi float [ %5031, %4903 ], [ %4760, %4865 ], [ %4760, %4756 ], [ %4252, %4472 ]
  %5046 = phi float [ %5032, %4903 ], [ %4761, %4865 ], [ %4761, %4756 ], [ %4253, %4472 ]
  %5047 = phi float [ %5033, %4903 ], [ %4762, %4865 ], [ %4762, %4756 ], [ %4254, %4472 ]
  %5048 = phi float [ %5014, %4903 ], [ %4763, %4865 ], [ %4763, %4756 ], [ %4291, %4472 ]
  %5049 = phi float [ %5015, %4903 ], [ %4764, %4865 ], [ %4764, %4756 ], [ %4292, %4472 ]
  %5050 = phi float [ %5016, %4903 ], [ %4765, %4865 ], [ %4765, %4756 ], [ %4293, %4472 ]
  %5051 = phi float [ %5040, %4903 ], [ %4766, %4865 ], [ %4766, %4756 ], [ %4294, %4472 ]
  %5052 = phi float [ %5037, %4903 ], [ %4767, %4865 ], [ %4767, %4756 ], [ %4267, %4472 ]
  %5053 = fcmp fast une float %4476, 0.000000e+00
  %5054 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 25, float %5054)  ; Rsqrt(value)
  br i1 %5053, label %5063, label %5056

; <label>:5056                                    ; preds = %5041
  %5057 = fmul fast float %5055, %188
  %5058 = fmul fast float %5055, %189
  %5059 = fmul fast float %5055, %190
  %5060 = fsub fast float -0.000000e+00, %5057
  %5061 = fsub fast float -0.000000e+00, %5058
  %5062 = fsub fast float -0.000000e+00, %5059
  br label %5230

; <label>:5063                                    ; preds = %5041
  %5064 = fmul fast float %188, %5055
  %5065 = fsub fast float -0.000000e+00, %5064
  %5066 = fmul fast float %189, %5055
  %5067 = fsub fast float -0.000000e+00, %5066
  %5068 = fmul fast float %190, %5055
  %5069 = fsub fast float -0.000000e+00, %5068
  %5070 = call float @dx.op.dot3.f32(i32 55, float %5065, float %5067, float %5069, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5071 = fmul fast float %4476, 2.500000e+00
  %5072 = call float @dx.op.unary.f32(i32 7, float %5071)  ; Saturate(value)
  %5073 = fmul fast float %4476, 0x4013FFFFE0000000
  %5074 = fadd fast float %5073, 0xBFFFFFFFE0000000
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %4476, 0x4004000020000000
  %5077 = fadd fast float %5076, 0xBFF8000040000000
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %4273, 1.000000e+01
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5080, 2.000000e+00
  %5082 = fsub fast float 3.000000e+00, %5081
  %5083 = fmul fast float %5080, %5080
  %5084 = fmul fast float %5083, %5082
  %5085 = fsub fast float 1.000000e+00, %5084
  %5086 = fsub fast float 0x3FE3333340000000, %5051
  %5087 = fmul fast float %5086, 0x400AAAAAA0000000
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fmul fast float %5085, %5088
  %5090 = fmul fast float %5042, 0x3FEA2B8620000000
  %5091 = fmul fast float %5043, 0x3FEA2B8620000000
  %5092 = fmul fast float %5044, 0x3FEA2B8620000000
  %5093 = fadd fast float %5090, 0x3FC81DFBA0000000
  %5094 = fmul fast float %5093, %5042
  %5095 = fadd fast float %5094, 0x3F910E6020000000
  %5096 = fadd fast float %5091, 0x3FC81DFBA0000000
  %5097 = fmul fast float %5096, %5043
  %5098 = fadd fast float %5097, 0x3F910E6020000000
  %5099 = fadd fast float %5092, 0x3FC81DFBA0000000
  %5100 = fmul fast float %5099, %5044
  %5101 = fadd fast float %5100, 0x3F910E6020000000
  %5102 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5103 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5101)  ; Saturate(value)
  %5105 = fsub fast float %5102, %5042
  %5106 = fsub fast float %5103, %5043
  %5107 = fsub fast float %5104, %5044
  %5108 = fmul fast float %5105, %5072
  %5109 = fmul fast float %5108, %5089
  %5110 = fmul fast float %5106, %5072
  %5111 = fmul fast float %5110, %5089
  %5112 = fmul fast float %5107, %5072
  %5113 = fmul fast float %5112, %5089
  %5114 = fadd fast float %5109, %5042
  %5115 = fadd fast float %5111, %5043
  %5116 = fadd fast float %5113, %5044
  %5117 = fmul fast float %5052, %5052
  %5118 = fmul fast float %5117, %5117
  %5119 = fadd fast float %5075, 1.000000e+00
  %5120 = fsub fast float %5119, %5089
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = call float @dx.op.unary.f32(i32 7, float %5122)  ; Saturate(value)
  %5124 = fsub fast float 1.000000e+00, %5118
  %5125 = call float @dx.op.binary.f32(i32 36, float %5121, float %5124)  ; FMin(a,b)
  %5126 = call float @dx.op.unary.f32(i32 7, float %5078)  ; Saturate(value)
  %5127 = call float @dx.op.binary.f32(i32 35, float %5125, float %5126)  ; FMax(a,b)
  %5128 = fadd fast float %5123, 0xBFE4CCCCC0000000
  %5129 = fmul fast float %5128, 0x4006DB6DA0000000
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5130, 2.000000e+00
  %5132 = fsub fast float 3.000000e+00, %5131
  %5133 = bitcast float %5048 to i32
  %5134 = ashr i32 %5133, 1
  %5135 = add nsw i32 %5134, 532487669
  %5136 = bitcast i32 %5135 to float
  %5137 = fsub fast float 1.000000e+00, %5136
  %5138 = bitcast float %5137 to i32
  %5139 = sub nsw i32 2129859010, %5138
  %5140 = bitcast i32 %5139 to float
  %5141 = fmul fast float %5140, 2.000000e+00
  %5142 = bitcast float %5049 to i32
  %5143 = ashr i32 %5142, 1
  %5144 = add nsw i32 %5143, 532487669
  %5145 = bitcast i32 %5144 to float
  %5146 = fsub fast float 1.000000e+00, %5145
  %5147 = bitcast float %5146 to i32
  %5148 = sub nsw i32 2129859010, %5147
  %5149 = bitcast i32 %5148 to float
  %5150 = fmul fast float %5149, 2.000000e+00
  %5151 = bitcast float %5050 to i32
  %5152 = ashr i32 %5151, 1
  %5153 = add nsw i32 %5152, 532487669
  %5154 = bitcast i32 %5153 to float
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = bitcast float %5155 to i32
  %5157 = sub nsw i32 2129859010, %5156
  %5158 = bitcast i32 %5157 to float
  %5159 = fmul fast float %5158, 2.000000e+00
  %5160 = fsub fast float 0x4002A9FBE0000000, %5141
  %5161 = fadd fast float %5141, 0x3FD54FDF00000000
  %5162 = bitcast float %5161 to i32
  %5163 = sub nsw i32 2129859010, %5162
  %5164 = bitcast i32 %5163 to float
  %5165 = fmul fast float %5164, %5160
  %5166 = fmul fast float %5165, %5165
  %5167 = fsub fast float 0x4002A9FBE0000000, %5150
  %5168 = fadd fast float %5150, 0x3FD54FDF00000000
  %5169 = bitcast float %5168 to i32
  %5170 = sub nsw i32 2129859010, %5169
  %5171 = bitcast i32 %5170 to float
  %5172 = fmul fast float %5171, %5167
  %5173 = fmul fast float %5172, %5172
  %5174 = fsub fast float 0x4002A9FBE0000000, %5159
  %5175 = fadd fast float %5159, 0x3FD54FDF00000000
  %5176 = bitcast float %5175 to i32
  %5177 = sub nsw i32 2129859010, %5176
  %5178 = bitcast i32 %5177 to float
  %5179 = fmul fast float %5178, %5174
  %5180 = fmul fast float %5179, %5179
  %5181 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5166)  ; FMax(a,b)
  %5182 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5173)  ; FMax(a,b)
  %5183 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5180)  ; FMax(a,b)
  %5184 = fsub fast float 1.000000e+00, %5070
  %5185 = fadd fast float %5184, %5085
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = fsub fast float 1.000000e+00, %4457
  %5188 = fmul fast float %5127, %5187
  %5189 = fmul fast float %5130, %5130
  %5190 = fmul fast float %5189, %5188
  %5191 = fmul fast float %5190, %5132
  %5192 = fmul fast float %5187, 0xBFE99999A0000000
  %5193 = fmul fast float %5192, %5072
  %5194 = fmul fast float %5193, %5089
  %5195 = fadd fast float %5194, 1.000000e+00
  %5196 = fadd fast float %5051, -1.000000e+00
  %5197 = fmul fast float %5195, %5196
  %5198 = fadd fast float %5197, 1.000000e+00
  %5199 = fsub fast float %5181, %5048
  %5200 = fsub fast float %5182, %5049
  %5201 = fsub fast float %5183, %5050
  %5202 = fmul fast float %5191, %5199
  %5203 = fmul fast float %5191, %5200
  %5204 = fmul fast float %5191, %5201
  %5205 = fadd fast float %5202, %5048
  %5206 = fadd fast float %5203, %5049
  %5207 = fadd fast float %5204, %5050
  %5208 = fsub fast float %116, %5045
  %5209 = fsub fast float %117, %5046
  %5210 = fsub fast float %118, %5047
  %5211 = fmul fast float %5191, %5208
  %5212 = fmul fast float %5191, %5209
  %5213 = fmul fast float %5191, %5210
  %5214 = fadd fast float %5211, %5045
  %5215 = fadd fast float %5212, %5046
  %5216 = fadd fast float %5213, %5047
  %5217 = fmul fast float %5191, %5186
  %5218 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5219 = fsub fast float 1.000000e+00, %5218
  %5220 = fmul fast float %5217, %5219
  %5221 = fadd fast float %5220, %5218
  %5222 = fsub fast float 1.000000e+00, %5052
  %5223 = fmul fast float %5191, %5222
  %5224 = fadd fast float %5223, %5052
  %5225 = call float @dx.op.dot3.f32(i32 55, float %5214, float %5215, float %5216, float %5214, float %5215, float %5216)  ; Dot3(ax,ay,az,bx,by,bz)
  %5226 = call float @dx.op.unary.f32(i32 25, float %5225)  ; Rsqrt(value)
  %5227 = fmul fast float %5214, %5226
  %5228 = fmul fast float %5215, %5226
  %5229 = fmul fast float %5216, %5226
  br label %5230

; <label>:5230                                    ; preds = %5063, %5056
  %5231 = phi float [ %5062, %5056 ], [ %5069, %5063 ]
  %5232 = phi float [ %5061, %5056 ], [ %5067, %5063 ]
  %5233 = phi float [ %5060, %5056 ], [ %5065, %5063 ]
  %5234 = phi float [ %5059, %5056 ], [ %5068, %5063 ]
  %5235 = phi float [ %5058, %5056 ], [ %5066, %5063 ]
  %5236 = phi float [ %5057, %5056 ], [ %5064, %5063 ]
  %5237 = phi float [ %5042, %5056 ], [ %5114, %5063 ]
  %5238 = phi float [ %5043, %5056 ], [ %5115, %5063 ]
  %5239 = phi float [ %5044, %5056 ], [ %5116, %5063 ]
  %5240 = phi float [ %5045, %5056 ], [ %5227, %5063 ]
  %5241 = phi float [ %5046, %5056 ], [ %5228, %5063 ]
  %5242 = phi float [ %5047, %5056 ], [ %5229, %5063 ]
  %5243 = phi float [ %5048, %5056 ], [ %5205, %5063 ]
  %5244 = phi float [ %5049, %5056 ], [ %5206, %5063 ]
  %5245 = phi float [ %5050, %5056 ], [ %5207, %5063 ]
  %5246 = phi float [ %5051, %5056 ], [ %5221, %5063 ]
  %5247 = phi float [ %5052, %5056 ], [ %5224, %5063 ]
  %5248 = select i1 %262, float 0.000000e+00, float %5245
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5240, float %5241, float %5242, float %5233, float %5232, float %5231)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5251 = call float @dx.op.dot3.f32(i32 55, float %5236, float %5235, float %5234, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = fmul fast float %5251, 2.000000e+00
  %5253 = fmul fast float %5252, %5240
  %5254 = fmul fast float %5252, %5241
  %5255 = fmul fast float %5252, %5242
  %5256 = fsub fast float %5236, %5253
  %5257 = fsub fast float %5235, %5254
  %5258 = fsub fast float %5234, %5255
  %5259 = call float @dx.op.binary.f32(i32 36, float %5247, float 1.000000e+00)  ; FMin(a,b)
  %5260 = fsub fast float 1.000000e+00, %5259
  %5261 = bitcast float %5260 to i32
  %5262 = ashr i32 %5261, 1
  %5263 = add nsw i32 %5262, 532487669
  %5264 = bitcast i32 %5263 to float
  %5265 = fsub fast float 1.000000e+00, %5246
  %5266 = call float @dx.op.binary.f32(i32 35, float %5265, float 0x3F847AE140000000)  ; FMax(a,b)
  %5267 = fmul fast float %5266, %5266
  %5268 = fmul fast float %5267, %5267
  %5269 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  %5270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5264, float %5268, float %5269, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5271 = extractvalue %dx.types.ResRet.f32 %5270, 0
  %5272 = fsub fast float 1.000000e+00, %5247
  %5273 = bitcast float %5272 to i32
  %5274 = sub nsw i32 2129859010, %5273
  %5275 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5276 = fmul fast float %5275, 0x3FD20DD760000000
  %5277 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5278 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5279 = fcmp fast oeq float %5278, 0.000000e+00
  %5280 = fcmp fast oeq float %5277, 0.000000e+00
  %5281 = or i1 %5280, %5279
  br i1 %5281, label %5311, label %5282

; <label>:5282                                    ; preds = %5230
  %5283 = fsub fast float -0.000000e+00, %79
  %5284 = fsub fast float -0.000000e+00, %77
  %5285 = call float @dx.op.unary.f32(i32 24, float %5278)  ; Sqrt(value)
  %5286 = fdiv fast float %5285, %5277
  %5287 = fcmp fast ogt float %5286, 0x3FFB6F8900000000
  %5288 = select i1 %5287, float 0x3FFB6F8900000000, float %5286
  %5289 = fmul fast float %5288, 0x3FE8A23460000000
  %5290 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5291 = call float @dx.op.binary.f32(i32 35, float %5288, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5292 = fmul fast float %5290, %5277
  %5293 = fmul fast float %5291, 0x3FF279A740000000
  %5294 = fadd fast float %5293, -1.000000e+00
  %5295 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %78, float %5283, float %5284, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = call float @dx.op.unary.f32(i32 25, float %5295)  ; Rsqrt(value)
  %5297 = fmul fast float %5296, %5283
  %5298 = fmul fast float %5296, %5284
  %5299 = fmul fast float %5296, %78
  %5300 = fmul fast float %5294, %5294
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = fmul fast float %5291, 0x40005F8BE0000000
  %5303 = fsub fast float 0x400C5BF8A0000000, %5302
  %5304 = fdiv fast float %5292, %5303
  %5305 = fmul fast float %5304, 0x3FEE31C3C0000000
  %5306 = fmul fast float %5305, %5301
  %5307 = fmul fast float %5291, 0x3FDACB7480000000
  %5308 = fadd fast float %5307, 0xBFD7347680000000
  %5309 = fmul fast float %5308, %5304
  %5310 = fmul fast float %5309, %5301
  br label %5311

; <label>:5311                                    ; preds = %5282, %5230
  %5312 = phi float [ %5297, %5282 ], [ 0.000000e+00, %5230 ]
  %5313 = phi float [ %5298, %5282 ], [ 0.000000e+00, %5230 ]
  %5314 = phi float [ %5299, %5282 ], [ 0.000000e+00, %5230 ]
  %5315 = phi float [ %5306, %5282 ], [ 0.000000e+00, %5230 ]
  %5316 = phi float [ %5310, %5282 ], [ 0.000000e+00, %5230 ]
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = fmul fast float %5317, 0x3FDF454380000000
  %5319 = fmul fast float %5317, %5317
  %5320 = fmul fast float %5319, 0x3FEE471020000000
  %5321 = fadd fast float %5320, 0xBFD42F6020000000
  %5322 = fmul fast float %5277, 0x3FD20DD760000000
  %5323 = fmul fast float %5321, %5316
  %5324 = fadd fast float %5323, %5322
  %5325 = fmul fast float %5318, %5315
  %5326 = fadd fast float %5324, %5325
  %5327 = fsub fast float %5324, %5325
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = fmul fast float %5328, 0x3FDF454380000000
  %5330 = fmul fast float %5328, %5328
  %5331 = fmul fast float %5330, 0x3FEE471020000000
  %5332 = fadd fast float %5331, 0xBFD42F6020000000
  %5333 = call float @dx.op.dot3.f32(i32 55, float %5277, float %5315, float %5316, float 0x3FD20DD760000000, float %5329, float %5332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5334 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5335 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = fcmp fast oeq float %5335, 0.000000e+00
  %5337 = fcmp fast oeq float %5334, 0.000000e+00
  %5338 = or i1 %5337, %5336
  br i1 %5338, label %5368, label %5339

; <label>:5339                                    ; preds = %5311
  %5340 = fsub fast float -0.000000e+00, %75
  %5341 = fsub fast float -0.000000e+00, %73
  %5342 = call float @dx.op.unary.f32(i32 24, float %5335)  ; Sqrt(value)
  %5343 = fdiv fast float %5342, %5334
  %5344 = fcmp fast ogt float %5343, 0x3FFB6F8900000000
  %5345 = select i1 %5344, float 0x3FFB6F8900000000, float %5343
  %5346 = fmul fast float %5345, 0x3FE8A23460000000
  %5347 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5348 = call float @dx.op.binary.f32(i32 35, float %5345, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5349 = fmul fast float %5347, %5334
  %5350 = fmul fast float %5348, 0x3FF279A740000000
  %5351 = fadd fast float %5350, -1.000000e+00
  %5352 = call float @dx.op.dot3.f32(i32 55, float %5340, float %5341, float %74, float %5340, float %5341, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5353 = call float @dx.op.unary.f32(i32 25, float %5352)  ; Rsqrt(value)
  %5354 = fmul fast float %5353, %5340
  %5355 = fmul fast float %5353, %5341
  %5356 = fmul fast float %5353, %74
  %5357 = fmul fast float %5351, %5351
  %5358 = fsub fast float 1.000000e+00, %5357
  %5359 = fmul fast float %5348, 0x40005F8BE0000000
  %5360 = fsub fast float 0x400C5BF8A0000000, %5359
  %5361 = fdiv fast float %5349, %5360
  %5362 = fmul fast float %5361, 0x3FEE31C3C0000000
  %5363 = fmul fast float %5362, %5358
  %5364 = fmul fast float %5348, 0x3FDACB7480000000
  %5365 = fadd fast float %5364, 0xBFD7347680000000
  %5366 = fmul fast float %5365, %5361
  %5367 = fmul fast float %5366, %5358
  br label %5368

; <label>:5368                                    ; preds = %5339, %5311
  %5369 = phi float [ %5354, %5339 ], [ 0.000000e+00, %5311 ]
  %5370 = phi float [ %5355, %5339 ], [ 0.000000e+00, %5311 ]
  %5371 = phi float [ %5356, %5339 ], [ 0.000000e+00, %5311 ]
  %5372 = phi float [ %5363, %5339 ], [ 0.000000e+00, %5311 ]
  %5373 = phi float [ %5367, %5339 ], [ 0.000000e+00, %5311 ]
  %5374 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %5371, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5375 = fmul fast float %5374, 0x3FDF454380000000
  %5376 = fmul fast float %5374, %5374
  %5377 = fmul fast float %5376, 0x3FEE471020000000
  %5378 = fadd fast float %5377, 0xBFD42F6020000000
  %5379 = fmul fast float %5334, 0x3FD20DD760000000
  %5380 = fmul fast float %5378, %5373
  %5381 = fadd fast float %5380, %5379
  %5382 = fmul fast float %5375, %5372
  %5383 = fadd fast float %5381, %5382
  %5384 = fsub fast float %5381, %5382
  %5385 = call float @dx.op.dot3.f32(i32 55, float %5369, float %5370, float %5371, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5386 = fmul fast float %5385, 0x3FDF454380000000
  %5387 = fmul fast float %5385, %5385
  %5388 = fmul fast float %5387, 0x3FEE471020000000
  %5389 = fadd fast float %5388, 0xBFD42F6020000000
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5372, float %5373, float 0x3FD20DD760000000, float %5386, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5392 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5393 = fcmp fast oeq float %5392, 0.000000e+00
  %5394 = fcmp fast oeq float %5391, 0.000000e+00
  %5395 = or i1 %5394, %5393
  br i1 %5395, label %5425, label %5396

; <label>:5396                                    ; preds = %5368
  %5397 = fsub fast float -0.000000e+00, %71
  %5398 = fsub fast float -0.000000e+00, %69
  %5399 = call float @dx.op.unary.f32(i32 24, float %5392)  ; Sqrt(value)
  %5400 = fdiv fast float %5399, %5391
  %5401 = fcmp fast ogt float %5400, 0x3FFB6F8900000000
  %5402 = select i1 %5401, float 0x3FFB6F8900000000, float %5400
  %5403 = fmul fast float %5402, 0x3FE8A23460000000
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = call float @dx.op.binary.f32(i32 35, float %5402, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5406 = fmul fast float %5404, %5391
  %5407 = fmul fast float %5405, 0x3FF279A740000000
  %5408 = fadd fast float %5407, -1.000000e+00
  %5409 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %70, float %5397, float %5398, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5410 = call float @dx.op.unary.f32(i32 25, float %5409)  ; Rsqrt(value)
  %5411 = fmul fast float %5410, %5397
  %5412 = fmul fast float %5410, %5398
  %5413 = fmul fast float %5410, %70
  %5414 = fmul fast float %5408, %5408
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = fmul fast float %5405, 0x40005F8BE0000000
  %5417 = fsub fast float 0x400C5BF8A0000000, %5416
  %5418 = fdiv fast float %5406, %5417
  %5419 = fmul fast float %5418, 0x3FEE31C3C0000000
  %5420 = fmul fast float %5419, %5415
  %5421 = fmul fast float %5405, 0x3FDACB7480000000
  %5422 = fadd fast float %5421, 0xBFD7347680000000
  %5423 = fmul fast float %5422, %5418
  %5424 = fmul fast float %5423, %5415
  br label %5425

; <label>:5425                                    ; preds = %5396, %5368
  %5426 = phi float [ %5411, %5396 ], [ 0.000000e+00, %5368 ]
  %5427 = phi float [ %5412, %5396 ], [ 0.000000e+00, %5368 ]
  %5428 = phi float [ %5413, %5396 ], [ 0.000000e+00, %5368 ]
  %5429 = phi float [ %5420, %5396 ], [ 0.000000e+00, %5368 ]
  %5430 = phi float [ %5424, %5396 ], [ 0.000000e+00, %5368 ]
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = fmul fast float %5431, 0x3FDF454380000000
  %5433 = fmul fast float %5431, %5431
  %5434 = fmul fast float %5433, 0x3FEE471020000000
  %5435 = fadd fast float %5434, 0xBFD42F6020000000
  %5436 = fmul fast float %5391, 0x3FD20DD760000000
  %5437 = fmul fast float %5435, %5430
  %5438 = fadd fast float %5437, %5436
  %5439 = fmul fast float %5432, %5429
  %5440 = fadd fast float %5438, %5439
  %5441 = fsub fast float %5438, %5439
  %5442 = call float @dx.op.dot3.f32(i32 55, float %5426, float %5427, float %5428, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = fmul fast float %5442, 0x3FDF454380000000
  %5444 = fmul fast float %5442, %5442
  %5445 = fmul fast float %5444, 0x3FEE471020000000
  %5446 = fadd fast float %5445, 0xBFD42F6020000000
  %5447 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5429, float %5430, float 0x3FD20DD760000000, float %5443, float %5446)  ; Dot3(ax,ay,az,bx,by,bz)
  %5448 = call float @dx.op.binary.f32(i32 35, float %5326, float 0.000000e+00)  ; FMax(a,b)
  %5449 = call float @dx.op.binary.f32(i32 35, float %5383, float 0.000000e+00)  ; FMax(a,b)
  %5450 = call float @dx.op.binary.f32(i32 35, float %5440, float 0.000000e+00)  ; FMax(a,b)
  %5451 = call float @dx.op.binary.f32(i32 35, float %5327, float 0.000000e+00)  ; FMax(a,b)
  %5452 = call float @dx.op.binary.f32(i32 35, float %5384, float 0.000000e+00)  ; FMax(a,b)
  %5453 = call float @dx.op.binary.f32(i32 35, float %5441, float 0.000000e+00)  ; FMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 35, float %5333, float 0.000000e+00)  ; FMax(a,b)
  %5455 = call float @dx.op.binary.f32(i32 35, float %5390, float 0.000000e+00)  ; FMax(a,b)
  %5456 = call float @dx.op.binary.f32(i32 35, float %5447, float 0.000000e+00)  ; FMax(a,b)
  %5457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.f32 %5457, 0
  %5459 = call float @dx.op.binary.f32(i32 36, float %5237, float %5458)  ; FMin(a,b)
  %5460 = fmul fast float %5459, %5260
  %5461 = fsub fast float 1.000000e+00, %5460
  %5462 = bitcast float %5461 to i32
  %5463 = sub nsw i32 2129859010, %5462
  %5464 = bitcast i32 %5463 to float
  %5465 = call float @dx.op.binary.f32(i32 36, float %5238, float %5458)  ; FMin(a,b)
  %5466 = fmul fast float %5465, %5260
  %5467 = fsub fast float 1.000000e+00, %5466
  %5468 = bitcast float %5467 to i32
  %5469 = sub nsw i32 2129859010, %5468
  %5470 = bitcast i32 %5469 to float
  %5471 = call float @dx.op.binary.f32(i32 36, float %5239, float %5458)  ; FMin(a,b)
  %5472 = fmul fast float %5471, %5260
  %5473 = fsub fast float 1.000000e+00, %5472
  %5474 = bitcast float %5473 to i32
  %5475 = sub nsw i32 2129859010, %5474
  %5476 = bitcast i32 %5475 to float
  %5477 = fmul fast float %5448, %5259
  %5478 = fmul fast float %5477, %5464
  %5479 = fmul fast float %5449, %5259
  %5480 = fmul fast float %5479, %5470
  %5481 = fmul fast float %5450, %5259
  %5482 = fmul fast float %5481, %5476
  %5483 = call float @dx.op.binary.f32(i32 36, float %5243, float %5458)  ; FMin(a,b)
  %5484 = fmul fast float %5483, %5260
  %5485 = fsub fast float 1.000000e+00, %5484
  %5486 = bitcast float %5485 to i32
  %5487 = sub nsw i32 2129859010, %5486
  %5488 = bitcast i32 %5487 to float
  %5489 = call float @dx.op.binary.f32(i32 36, float %5244, float %5458)  ; FMin(a,b)
  %5490 = fmul fast float %5489, %5260
  %5491 = fsub fast float 1.000000e+00, %5490
  %5492 = bitcast float %5491 to i32
  %5493 = sub nsw i32 2129859010, %5492
  %5494 = bitcast i32 %5493 to float
  %5495 = call float @dx.op.binary.f32(i32 36, float %5248, float %5458)  ; FMin(a,b)
  %5496 = fmul fast float %5495, %5260
  %5497 = fsub fast float 1.000000e+00, %5496
  %5498 = bitcast float %5497 to i32
  %5499 = sub nsw i32 2129859010, %5498
  %5500 = bitcast i32 %5499 to float
  %5501 = fmul fast float %5454, %5259
  %5502 = fmul fast float %5501, %5488
  %5503 = fmul fast float %5455, %5259
  %5504 = fmul fast float %5503, %5494
  %5505 = fmul fast float %5456, %5259
  %5506 = fmul fast float %5505, %5500
  %5507 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5480, float %5482, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5508 = select i1 %262, float 0.000000e+00, float %5478
  %5509 = select i1 %262, float %5507, float %5480
  %5510 = select i1 %262, float 0.000000e+00, float %5482
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5451, float %5452, float %5453, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = select i1 %262, float 0.000000e+00, float %5451
  %5513 = select i1 %262, float %5511, float %5452
  %5514 = select i1 %262, float 0.000000e+00, float %5453
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5502, float %5504, float %5506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = select i1 %262, float 0.000000e+00, float %5502
  %5517 = select i1 %262, float %5515, float %5504
  %5518 = select i1 %262, float 0.000000e+00, float %5506
  %5519 = fmul fast float %5250, 9.843750e-01
  %5520 = fmul fast float %5246, 9.843750e-01
  %5521 = fadd fast float %5519, 7.812500e-03
  %5522 = fadd fast float %5520, 7.812500e-03
  %5523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %5521, float %5522, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5524 = extractvalue %dx.types.ResRet.f32 %5523, 2
  %5525 = extractvalue %dx.types.ResRet.f32 %5523, 3
  %5526 = fmul fast float %5524, %5243
  %5527 = fmul fast float %5524, %5244
  %5528 = fmul fast float %5524, %5248
  %5529 = fadd fast float %5526, %5525
  %5530 = fadd fast float %5527, %5525
  %5531 = fadd fast float %5528, %5525
  %5532 = fcmp fast ogt float %4268, 0.000000e+00
  br i1 %5532, label %5533, label %5559

; <label>:5533                                    ; preds = %5425
  %5534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4268, float %5250, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5535 = extractvalue %dx.types.ResRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.ResRet.f32 %5534, 1
  %5537 = extractvalue %dx.types.ResRet.f32 %5534, 2
  %5538 = fadd fast float %5535, -5.000000e-01
  %5539 = fadd fast float %5536, -5.000000e-01
  %5540 = fadd fast float %5537, -5.000000e-01
  %5541 = fsub fast float 1.000000e+00, %5243
  %5542 = fsub fast float 1.000000e+00, %5244
  %5543 = fsub fast float 1.000000e+00, %5248
  %5544 = fmul fast float %5243, 4.000000e+00
  %5545 = fmul fast float %5544, %5541
  %5546 = fmul fast float %5545, %5538
  %5547 = fmul fast float %5244, 4.000000e+00
  %5548 = fmul fast float %5547, %5542
  %5549 = fmul fast float %5548, %5539
  %5550 = fmul fast float %5248, 4.000000e+00
  %5551 = fmul fast float %5550, %5543
  %5552 = fmul fast float %5551, %5540
  %5553 = fadd fast float %5546, %5529
  %5554 = fadd fast float %5549, %5530
  %5555 = fadd fast float %5552, %5531
  %5556 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5557 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5558 = call float @dx.op.unary.f32(i32 7, float %5555)  ; Saturate(value)
  br label %5559

; <label>:5559                                    ; preds = %5533, %5425
  %5560 = phi float [ %5556, %5533 ], [ %5529, %5425 ]
  %5561 = phi float [ %5557, %5533 ], [ %5530, %5425 ]
  %5562 = phi float [ %5558, %5533 ], [ %5531, %5425 ]
  %5563 = call float @dx.op.binary.f32(i32 35, float %5561, float %5562)  ; FMax(a,b)
  %5564 = call float @dx.op.binary.f32(i32 35, float %5560, float %5563)  ; FMax(a,b)
  %5565 = fsub fast float 1.000000e+00, %5564
  %5566 = fmul fast float %5564, %5246
  %5567 = fadd fast float %5566, %5246
  %5568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5569 = extractvalue %dx.types.CBufRet.f32 %5568, 2
  %5570 = extractvalue %dx.types.CBufRet.f32 %5568, 3
  %5571 = fmul fast float %5567, %5569
  %5572 = fadd fast float %5571, %5570
  %5573 = call float @dx.op.unary.f32(i32 7, float %5572)  ; Saturate(value)
  %5574 = fsub fast float 1.000000e+00, %5271
  %5575 = fadd fast float %5574, %5573
  %5576 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5577 = fcmp fast olt float %5576, 1.000000e+00
  br i1 %5577, label %5578, label %6026

; <label>:5578                                    ; preds = %5559
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 2
  %5581 = extractvalue %dx.types.CBufRet.f32 %5579, 3
  %5582 = fmul fast float %5580, %109
  %5583 = fmul fast float %5581, %110
  %5584 = fptoui float %5582 to i32
  %5585 = fptoui float %5583 to i32
  %5586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5587 = extractvalue %dx.types.CBufRet.f32 %5586, 0
  %5588 = extractvalue %dx.types.CBufRet.f32 %5586, 2
  %5589 = extractvalue %dx.types.CBufRet.f32 %5586, 3
  %5590 = fadd fast float %96, -4.000000e+00
  %5591 = call float @dx.op.binary.f32(i32 35, float %5590, float 0.000000e+00)  ; FMax(a,b)
  %5592 = fadd fast float %5591, %5587
  %5593 = fmul fast float %5592, %5588
  %5594 = call float @dx.op.unary.f32(i32 23, float %5593)  ; Log(value)
  %5595 = fmul fast float %5594, %5589
  %5596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5597 = extractvalue %dx.types.CBufRet.f32 %5596, 2
  %5598 = fmul fast float %5595, %5597
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.i32 %5600, 1
  %5602 = add i32 %5601, -1
  %5603 = uitofp i32 %5601 to float
  %5604 = fmul fast float %5603, %5599
  %5605 = fptoui float %5604 to i32
  %5606 = call i32 @dx.op.binary.i32(i32 40, i32 %5605, i32 %5602)  ; UMin(a,b)
  %5607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.i32 %5607, 2
  %5609 = extractvalue %dx.types.CBufRet.i32 %5607, 3
  %5610 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5585, i32 %5608, i32 %5584)  ; UMad(a,b,c)
  %5611 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5606, i32 %5609, i32 %5610)  ; UMad(a,b,c)
  %5612 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %5613 = fptoui float %5612 to i32
  %5614 = lshr i32 %5613, 5
  %5615 = call i32 @dx.op.binary.i32(i32 40, i32 %5614, i32 8191)  ; UMin(a,b)
  br i1 false, label %5616, label %5623

; <label>:5616                                    ; preds = %5578
  %5617 = fadd fast float 0.000000e+00, %5258
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5617, float %5256, float %5257, float %5617)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = call float @dx.op.unary.f32(i32 25, float %5618)  ; Rsqrt(value)
  %5620 = fmul fast float %5619, %5256
  %5621 = fmul fast float %5619, %5257
  %5622 = fmul fast float %5617, %5619
  br label %5623

; <label>:5623                                    ; preds = %5616, %5578
  %5624 = phi float [ %5620, %5616 ], [ %5256, %5578 ]
  %5625 = phi float [ %5621, %5616 ], [ %5257, %5578 ]
  %5626 = phi float [ %5622, %5616 ], [ %5258, %5578 ]
  %5627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5628 = extractvalue %dx.types.CBufRet.i32 %5627, 2
  %5629 = add nsw i32 %5628, -1
  %5630 = call i32 @dx.op.binary.i32(i32 37, i32 %5629, i32 0)  ; IMax(a,b)
  %5631 = shl i32 %5615, 2
  %5632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5631, i32 undef)  ; BufferLoad(srv,index,wot)
  %5633 = extractvalue %dx.types.ResRet.i32 %5632, 0
  %5634 = lshr i32 %5633, 16
  %5635 = and i32 %5633, 65535
  %5636 = lshr i32 %5633, 21
  %5637 = lshr i32 %5635, 5
  %5638 = call i32 @dx.op.binary.i32(i32 40, i32 %5637, i32 %5630)  ; UMin(a,b)
  %5639 = icmp ugt i32 %5636, %5638
  br i1 %5639, label %6002, label %5640

; <label>:5640                                    ; preds = %5623
  br label %5641

; <label>:5641                                    ; preds = %5994, %5640
  %5642 = phi float [ %5995, %5994 ], [ 0.000000e+00, %5640 ]
  %5643 = phi float [ %5996, %5994 ], [ 0.000000e+00, %5640 ]
  %5644 = phi float [ %5997, %5994 ], [ 0.000000e+00, %5640 ]
  %5645 = phi float [ %5998, %5994 ], [ 1.000000e+00, %5640 ]
  %5646 = phi i32 [ %5999, %5994 ], [ %5636, %5640 ]
  %5647 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5648 = extractvalue %dx.types.CBufRet.i32 %5647, 2
  %5649 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5611, i32 %5648, i32 %5646)  ; UMad(a,b,c)
  %5650 = shl i32 %5649, 2
  %5651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5650, i32 undef)  ; BufferLoad(srv,index,wot)
  %5652 = extractvalue %dx.types.ResRet.i32 %5651, 0
  %5653 = shl i32 %5646, 5
  %5654 = sub nsw i32 %5634, %5653
  %5655 = call i32 @dx.op.binary.i32(i32 37, i32 %5654, i32 0)  ; IMax(a,b)
  %5656 = call i32 @dx.op.binary.i32(i32 38, i32 %5655, i32 31)  ; IMin(a,b)
  %5657 = sub nsw i32 1, %5634
  %5658 = add nsw i32 %5657, %5635
  %5659 = call i32 @dx.op.binary.i32(i32 37, i32 %5658, i32 0)  ; IMax(a,b)
  %5660 = call i32 @dx.op.binary.i32(i32 38, i32 %5659, i32 32)  ; IMin(a,b)
  %5661 = and i32 %5660, 31
  %5662 = shl i32 -1, %5661
  %5663 = xor i32 %5662, -1
  %5664 = and i32 %5656, 31
  %5665 = shl i32 %5663, %5664
  %5666 = icmp eq i32 %5660, 32
  %5667 = select i1 %5666, i32 -1, i32 %5665
  %5668 = and i32 %5667, %5652
  %5669 = icmp eq i32 %5668, 0
  br i1 %5669, label %5994, label %5670

; <label>:5670                                    ; preds = %5641
  br label %5671

; <label>:5671                                    ; preds = %5777, %5670
  %5672 = phi float [ %5778, %5777 ], [ %5642, %5670 ]
  %5673 = phi float [ %5779, %5777 ], [ %5643, %5670 ]
  %5674 = phi float [ %5780, %5777 ], [ %5644, %5670 ]
  %5675 = phi float [ %5781, %5777 ], [ %5645, %5670 ]
  %5676 = phi i32 [ %5681, %5777 ], [ %5668, %5670 ]
  %5677 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5676)  ; FirstbitLo(value)
  %5678 = add i32 %5677, %5653
  %5679 = and i32 %5677, 31
  %5680 = shl i32 1, %5679
  %5681 = xor i32 %5680, %5676
  %5682 = mul i32 %5678, 72
  %5683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5682, i32 undef)  ; BufferLoad(srv,index,wot)
  %5684 = extractvalue %dx.types.ResRet.f32 %5683, 0
  %5685 = extractvalue %dx.types.ResRet.f32 %5683, 1
  %5686 = extractvalue %dx.types.ResRet.f32 %5683, 2
  %5687 = add i32 %5682, 12
  %5688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5687, i32 undef)  ; BufferLoad(srv,index,wot)
  %5689 = extractvalue %dx.types.ResRet.i32 %5688, 0
  %5690 = add i32 %5682, 16
  %5691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5690, i32 undef)  ; BufferLoad(srv,index,wot)
  %5692 = extractvalue %dx.types.ResRet.f32 %5691, 0
  %5693 = extractvalue %dx.types.ResRet.f32 %5691, 1
  %5694 = extractvalue %dx.types.ResRet.f32 %5691, 2
  %5695 = add i32 %5682, 28
  %5696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5695, i32 undef)  ; BufferLoad(srv,index,wot)
  %5697 = extractvalue %dx.types.ResRet.f32 %5696, 0
  %5698 = add i32 %5682, 32
  %5699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5698, i32 undef)  ; BufferLoad(srv,index,wot)
  %5700 = extractvalue %dx.types.ResRet.f32 %5699, 0
  %5701 = extractvalue %dx.types.ResRet.f32 %5699, 1
  %5702 = extractvalue %dx.types.ResRet.f32 %5699, 2
  %5703 = extractvalue %dx.types.ResRet.f32 %5699, 3
  %5704 = add i32 %5682, 48
  %5705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5704, i32 undef)  ; BufferLoad(srv,index,wot)
  %5706 = extractvalue %dx.types.ResRet.f32 %5705, 0
  %5707 = extractvalue %dx.types.ResRet.f32 %5705, 1
  %5708 = add i32 %5682, 56
  %5709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5708, i32 undef)  ; BufferLoad(srv,index,wot)
  %5710 = extractvalue %dx.types.ResRet.f32 %5709, 0
  %5711 = extractvalue %dx.types.ResRet.f32 %5709, 1
  %5712 = add i32 %5682, 64
  %5713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5712, i32 undef)  ; BufferLoad(srv,index,wot)
  %5714 = extractvalue %dx.types.ResRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.ResRet.f32 %5713, 1
  %5716 = mul i32 %5678, 60
  %5717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5716, i32 undef)  ; BufferLoad(srv,index,wot)
  %5718 = extractvalue %dx.types.ResRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.ResRet.f32 %5717, 1
  %5720 = extractvalue %dx.types.ResRet.f32 %5717, 2
  %5721 = add i32 %5716, 12
  %5722 = add i32 %5716, 48
  %5723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5722, i32 undef)  ; BufferLoad(srv,index,wot)
  %5724 = extractvalue %dx.types.ResRet.f32 %5723, 0
  %5725 = extractvalue %dx.types.ResRet.f32 %5723, 1
  %5726 = extractvalue %dx.types.ResRet.f32 %5723, 2
  %5727 = and i32 %5689, 32767
  %5728 = bitcast float %5684 to i32
  %5729 = icmp eq i32 %5728, -1
  %5730 = bitcast float %5685 to i32
  %5731 = and i32 %5689, 32768
  %5732 = icmp ne i32 %5731, 0
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = extractvalue %dx.types.CBufRet.f32 %5733, 1
  %5736 = extractvalue %dx.types.CBufRet.f32 %5733, 2
  %5737 = fsub fast float %5718, %5734
  %5738 = fsub fast float %5719, %5735
  %5739 = fsub fast float %5720, %5736
  %5740 = fsub fast float %188, %5737
  %5741 = fsub fast float %189, %5738
  %5742 = fsub fast float %190, %5739
  %5743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5721, i32 undef)  ; BufferLoad(srv,index,wot)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5744, float %5745, float %5746)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = add i32 %5716, 24
  %5749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5748, i32 undef)  ; BufferLoad(srv,index,wot)
  %5750 = extractvalue %dx.types.ResRet.f32 %5749, 0
  %5751 = extractvalue %dx.types.ResRet.f32 %5749, 1
  %5752 = extractvalue %dx.types.ResRet.f32 %5749, 2
  %5753 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5750, float %5751, float %5752)  ; Dot3(ax,ay,az,bx,by,bz)
  %5754 = add i32 %5716, 36
  %5755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5754, i32 undef)  ; BufferLoad(srv,index,wot)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.ResRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.ResRet.f32 %5755, 2
  %5759 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %5760 = call float @dx.op.unary.f32(i32 6, float %5747)  ; FAbs(value)
  %5761 = call float @dx.op.unary.f32(i32 6, float %5753)  ; FAbs(value)
  %5762 = call float @dx.op.unary.f32(i32 6, float %5759)  ; FAbs(value)
  %5763 = fsub fast float %5724, %5760
  %5764 = fsub fast float %5725, %5761
  %5765 = fsub fast float %5726, %5762
  %5766 = fmul fast float %5763, %5692
  %5767 = fmul fast float %5764, %5693
  %5768 = fmul fast float %5765, %5694
  %5769 = call float @dx.op.binary.f32(i32 36, float %5767, float %5768)  ; FMin(a,b)
  %5770 = call float @dx.op.binary.f32(i32 36, float %5766, float %5769)  ; FMin(a,b)
  %5771 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5772 = call float @dx.op.binary.f32(i32 36, float %5675, float %5771)  ; FMin(a,b)
  %5773 = uitofp i1 %5732 to float
  %5774 = fsub fast float 1.000000e+00, %5773
  %5775 = fmul fast float %5772, %5774
  %5776 = fcmp fast ogt float %5775, 0.000000e+00
  br i1 %5776, label %5783, label %5777

; <label>:5777                                    ; preds = %5925, %5671
  %5778 = phi float [ %5989, %5925 ], [ %5672, %5671 ]
  %5779 = phi float [ %5990, %5925 ], [ %5673, %5671 ]
  %5780 = phi float [ %5991, %5925 ], [ %5674, %5671 ]
  %5781 = phi float [ %5992, %5925 ], [ %5675, %5671 ]
  %5782 = icmp eq i32 %5676, %5680
  br i1 %5782, label %5993, label %5671

; <label>:5783                                    ; preds = %5671
  br i1 %5729, label %5841, label %5784

; <label>:5784                                    ; preds = %5783
  %5785 = fsub fast float -0.000000e+00, %5744
  %5786 = fsub fast float -0.000000e+00, %5745
  %5787 = fsub fast float -0.000000e+00, %5746
  %5788 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5785, float %5786, float %5787)  ; Dot3(ax,ay,az,bx,by,bz)
  %5789 = fsub fast float -0.000000e+00, %5788
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5785, float %5786, float %5787)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = fadd fast float %5790, %5707
  %5792 = fadd fast float %5706, %5790
  %5793 = fsub fast float -0.000000e+00, %5792
  %5794 = fcmp ogt float %5788, -0.000000e+00
  %5795 = select i1 %5794, float %5793, float %5791
  %5796 = call float @dx.op.unary.f32(i32 6, float %5789)  ; FAbs(value)
  %5797 = fdiv fast float 1.000000e+00, %5796
  %5798 = fmul fast float %5795, %5797
  %5799 = call float @dx.op.binary.f32(i32 35, float %5798, float 0.000000e+00)  ; FMax(a,b)
  %5800 = fsub fast float -0.000000e+00, %5750
  %5801 = fsub fast float -0.000000e+00, %5751
  %5802 = fsub fast float -0.000000e+00, %5752
  %5803 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5800, float %5801, float %5802)  ; Dot3(ax,ay,az,bx,by,bz)
  %5804 = fsub fast float -0.000000e+00, %5803
  %5805 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5800, float %5801, float %5802)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = fadd fast float %5805, %5711
  %5807 = fadd fast float %5710, %5805
  %5808 = fsub fast float -0.000000e+00, %5807
  %5809 = fcmp ogt float %5803, -0.000000e+00
  %5810 = select i1 %5809, float %5808, float %5806
  %5811 = call float @dx.op.unary.f32(i32 6, float %5804)  ; FAbs(value)
  %5812 = fdiv fast float 1.000000e+00, %5811
  %5813 = fmul fast float %5810, %5812
  %5814 = call float @dx.op.binary.f32(i32 35, float %5813, float 0.000000e+00)  ; FMax(a,b)
  %5815 = fsub fast float -0.000000e+00, %5756
  %5816 = fsub fast float -0.000000e+00, %5757
  %5817 = fsub fast float -0.000000e+00, %5758
  %5818 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %5815, float %5816, float %5817)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = fsub fast float -0.000000e+00, %5818
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5815, float %5816, float %5817)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = fadd fast float %5820, %5715
  %5822 = fadd fast float %5714, %5820
  %5823 = fsub fast float -0.000000e+00, %5822
  %5824 = fcmp ogt float %5818, -0.000000e+00
  %5825 = select i1 %5824, float %5823, float %5821
  %5826 = call float @dx.op.unary.f32(i32 6, float %5819)  ; FAbs(value)
  %5827 = fdiv fast float 1.000000e+00, %5826
  %5828 = fmul fast float %5825, %5827
  %5829 = call float @dx.op.binary.f32(i32 35, float %5828, float 0.000000e+00)  ; FMax(a,b)
  %5830 = call float @dx.op.binary.f32(i32 36, float %5814, float %5829)  ; FMin(a,b)
  %5831 = call float @dx.op.binary.f32(i32 36, float %5799, float %5830)  ; FMin(a,b)
  %5832 = fmul fast float %5831, %5624
  %5833 = fmul fast float %5831, %5625
  %5834 = fmul fast float %5831, %5626
  %5835 = fadd fast float %5832, %188
  %5836 = fadd fast float %5833, %189
  %5837 = fadd fast float %5834, %190
  %5838 = fsub fast float %5835, %5684
  %5839 = fsub fast float %5836, %5685
  %5840 = fsub fast float %5837, %5686
  br label %5848

; <label>:5841                                    ; preds = %5783
  %5842 = fmul fast float %5624, 8.096000e+03
  %5843 = fmul fast float %5625, 8.096000e+03
  %5844 = fmul fast float %5626, 8.096000e+03
  %5845 = fadd fast float %5842, %188
  %5846 = fadd fast float %5843, %189
  %5847 = fadd fast float %5844, %190
  br label %5848

; <label>:5848                                    ; preds = %5841, %5784
  %5849 = phi float [ %5624, %5841 ], [ %5838, %5784 ]
  %5850 = phi float [ %5625, %5841 ], [ %5839, %5784 ]
  %5851 = phi float [ %5626, %5841 ], [ %5840, %5784 ]
  %5852 = phi float [ %5845, %5841 ], [ %5835, %5784 ]
  %5853 = phi float [ %5846, %5841 ], [ %5836, %5784 ]
  %5854 = phi float [ %5847, %5841 ], [ %5837, %5784 ]
  %5855 = fcmp fast olt float %5703, 1.000000e+00
  br i1 %5855, label %5856, label %5887, !dx.controlflow.hints !92

; <label>:5856                                    ; preds = %5848
  %5857 = fmul fast float %5851, %5701
  %5858 = fmul fast float %5850, %5702
  %5859 = fsub fast float %5857, %5858
  %5860 = fmul fast float %5849, %5702
  %5861 = fmul fast float %5851, %5700
  %5862 = fsub fast float %5860, %5861
  %5863 = fmul fast float %5850, %5700
  %5864 = fmul fast float %5849, %5701
  %5865 = fsub fast float %5863, %5864
  %5866 = fmul fast float %5859, 2.000000e+00
  %5867 = fmul fast float %5862, 2.000000e+00
  %5868 = fmul fast float %5865, 2.000000e+00
  %5869 = fmul fast float %5866, %5703
  %5870 = fmul fast float %5867, %5703
  %5871 = fmul fast float %5868, %5703
  %5872 = fmul fast float %5868, %5701
  %5873 = fmul fast float %5867, %5702
  %5874 = fmul fast float %5866, %5702
  %5875 = fmul fast float %5868, %5700
  %5876 = fmul fast float %5867, %5700
  %5877 = fmul fast float %5866, %5701
  %5878 = fadd fast float %5872, %5849
  %5879 = fadd fast float %5878, %5869
  %5880 = fsub fast float %5879, %5873
  %5881 = fsub fast float %5850, %5875
  %5882 = fadd fast float %5881, %5870
  %5883 = fadd fast float %5882, %5874
  %5884 = fadd fast float %5871, %5851
  %5885 = fsub fast float %5884, %5877
  %5886 = fadd fast float %5885, %5876
  br label %5887

; <label>:5887                                    ; preds = %5856, %5848
  %5888 = phi float [ %5880, %5856 ], [ %5849, %5848 ]
  %5889 = phi float [ %5883, %5856 ], [ %5850, %5848 ]
  %5890 = phi float [ %5886, %5856 ], [ %5851, %5848 ]
  br i1 %5729, label %5922, label %5891

; <label>:5891                                    ; preds = %5887
  %5892 = fmul fast float %5246, 0x400187C840000000
  %5893 = fadd fast float %5892, 0xC00EFC2120000000
  %5894 = fmul fast float %5893, %5246
  %5895 = fadd fast float %5894, 0x3FE5D16340000000
  %5896 = fmul fast float %5895, %5246
  %5897 = fadd fast float %5896, 1.000000e+00
  %5898 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5899 = fsub fast float %5852, %188
  %5900 = fsub fast float %5853, %189
  %5901 = fsub fast float %5854, %190
  %5902 = fsub fast float %5852, %5684
  %5903 = fsub fast float %5853, %5685
  %5904 = fsub fast float %5854, %5686
  %5905 = call float @dx.op.dot3.f32(i32 55, float %5899, float %5900, float %5901, float %5899, float %5900, float %5901)  ; Dot3(ax,ay,az,bx,by,bz)
  %5906 = call float @dx.op.dot3.f32(i32 55, float %5902, float %5903, float %5904, float %5902, float %5903, float %5904)  ; Dot3(ax,ay,az,bx,by,bz)
  %5907 = fadd fast float %5906, 0x3EE4F8B580000000
  %5908 = fdiv fast float %5905, %5907
  %5909 = bitcast float %5908 to i32
  %5910 = ashr i32 %5909, 1
  %5911 = add nsw i32 %5910, 532487669
  %5912 = bitcast i32 %5911 to float
  %5913 = fmul fast float %5912, %5898
  %5914 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5915 = fmul fast float %5914, 0x4009981AE0000000
  %5916 = fsub fast float 0x40111BBD80000000, %5915
  %5917 = fmul fast float %5916, %5914
  %5918 = fadd fast float %5917, 0xC0009F6020000000
  %5919 = fmul fast float %5918, %5914
  %5920 = fadd fast float %5919, 1.000000e+00
  %5921 = call float @dx.op.unary.f32(i32 7, float %5920)  ; Saturate(value)
  br label %5925

; <label>:5922                                    ; preds = %5887
  %5923 = icmp ne i32 %5730, -1
  %5924 = zext i1 %5923 to i32
  br label %5925

; <label>:5925                                    ; preds = %5922, %5891
  %5926 = phi float [ %5246, %5922 ], [ %5921, %5891 ]
  %5927 = phi i32 [ %5924, %5922 ], [ 0, %5891 ]
  %5928 = fmul float %5926, 5.000000e+00
  %5929 = fsub float 5.000000e+00, %5928
  %5930 = icmp ne i32 %5927, 0
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 3
  %5933 = fadd fast float %5932, %5929
  %5934 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5933)  ; FMax(a,b)
  %5935 = call float @dx.op.unary.f32(i32 6, float %5888)  ; FAbs(value)
  %5936 = call float @dx.op.unary.f32(i32 6, float %5889)  ; FAbs(value)
  %5937 = fadd fast float %5936, %5935
  %5938 = call float @dx.op.unary.f32(i32 6, float %5890)  ; FAbs(value)
  %5939 = fadd fast float %5937, %5938
  %5940 = fcmp fast oeq float %5939, 0.000000e+00
  %5941 = fdiv fast float 1.000000e+00, %5939
  %5942 = select i1 %5940, float 1.000000e+00, float %5941
  %5943 = fmul fast float %5942, %5888
  %5944 = fmul fast float %5942, %5889
  %5945 = call float @dx.op.unary.f32(i32 6, float %5944)  ; FAbs(value)
  %5946 = call float @dx.op.unary.f32(i32 6, float %5943)  ; FAbs(value)
  %5947 = fsub fast float 1.000000e+00, %5945
  %5948 = fsub fast float 1.000000e+00, %5946
  %5949 = fcmp fast oge float %5943, 0.000000e+00
  %5950 = fcmp fast oge float %5944, 0.000000e+00
  %5951 = select i1 %5949, float 1.000000e+00, float -1.000000e+00
  %5952 = select i1 %5950, float 1.000000e+00, float -1.000000e+00
  %5953 = fcmp fast ole float %5890, 0.000000e+00
  %5954 = fmul fast float %5951, %5947
  %5955 = fmul fast float %5952, %5948
  %5956 = select i1 %5953, float %5954, float %5943
  %5957 = select i1 %5953, float %5955, float %5944
  %5958 = fmul fast float %5956, 5.000000e-01
  %5959 = fmul fast float %5957, 5.000000e-01
  %5960 = fadd fast float %5958, 5.000000e-01
  %5961 = fadd fast float %5959, 5.000000e-01
  %5962 = uitofp i32 %5727 to float
  %5963 = call float @dx.op.binary.f32(i32 36, float %5934, float 3.000000e+00)  ; FMin(a,b)
  %5964 = fadd fast float %5963, 2.000000e+00
  %5965 = call float @dx.op.unary.f32(i32 21, float %5964)  ; Exp(value)
  %5966 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5967 = fmul fast float %5966, %5965
  %5968 = fmul fast float %5967, 2.000000e+00
  %5969 = fsub fast float 1.000000e+00, %5968
  %5970 = fmul fast float %5960, %5969
  %5971 = fmul fast float %5961, %5969
  %5972 = fadd fast float %5970, %5967
  %5973 = fadd fast float %5971, %5967
  %5974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %5972, float %5973, float %5962, float undef, i32 0, i32 0, i32 undef, float %5934)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5975 = extractvalue %dx.types.ResRet.f32 %5974, 0
  %5976 = extractvalue %dx.types.ResRet.f32 %5974, 1
  %5977 = extractvalue %dx.types.ResRet.f32 %5974, 2
  %5978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5979 = extractvalue %dx.types.CBufRet.f32 %5978, 3
  %5980 = fmul fast float %5979, %5697
  %5981 = call float @dx.op.binary.f32(i32 36, float %5276, float %5980)  ; FMin(a,b)
  %5982 = select i1 %5930, float %5981, float %5980
  %5983 = fmul fast float %5975, %5775
  %5984 = fmul fast float %5983, %5982
  %5985 = fmul fast float %5976, %5775
  %5986 = fmul fast float %5985, %5982
  %5987 = fmul fast float %5977, %5775
  %5988 = fmul fast float %5987, %5982
  %5989 = fadd fast float %5984, %5672
  %5990 = fadd fast float %5986, %5673
  %5991 = fadd fast float %5988, %5674
  %5992 = fsub fast float %5675, %5775
  br label %5777

; <label>:5993                                    ; preds = %5777
  br label %5994

; <label>:5994                                    ; preds = %5993, %5641
  %5995 = phi float [ %5642, %5641 ], [ %5778, %5993 ]
  %5996 = phi float [ %5643, %5641 ], [ %5779, %5993 ]
  %5997 = phi float [ %5644, %5641 ], [ %5780, %5993 ]
  %5998 = phi float [ %5645, %5641 ], [ %5781, %5993 ]
  %5999 = add i32 %5646, 1
  %6000 = icmp ugt i32 %5999, %5638
  br i1 %6000, label %6001, label %5641, !llvm.loop !93

; <label>:6001                                    ; preds = %5994
  br label %6002

; <label>:6002                                    ; preds = %6001, %5623
  %6003 = phi float [ 0.000000e+00, %5623 ], [ %5995, %6001 ]
  %6004 = phi float [ 0.000000e+00, %5623 ], [ %5996, %6001 ]
  %6005 = phi float [ 0.000000e+00, %5623 ], [ %5997, %6001 ]
  %6006 = call float @dx.op.dot3.f32(i32 55, float %6003, float %6004, float %6005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6007 = select i1 %262, float 0.000000e+00, float %6003
  %6008 = select i1 %262, float %6006, float %6004
  %6009 = select i1 %262, float 0.000000e+00, float %6005
  %6010 = fcmp fast olt float %5576, 0.000000e+00
  %6011 = call float @dx.op.unary.f32(i32 6, float %5576)  ; FAbs(value)
  %6012 = fmul fast float %6011, %5516
  %6013 = fmul fast float %6011, %5517
  %6014 = fmul fast float %6011, %5518
  %6015 = select i1 %6010, float %5516, float %6012
  %6016 = select i1 %6010, float %5517, float %6013
  %6017 = select i1 %6010, float %5518, float %6014
  %6018 = fsub fast float 1.000000e+00, %6011
  %6019 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  %6020 = fmul fast float %6019, %6007
  %6021 = fmul fast float %6019, %6008
  %6022 = fmul fast float %6019, %6009
  %6023 = fadd fast float %6015, %6020
  %6024 = fadd fast float %6016, %6021
  %6025 = fadd fast float %6017, %6022
  br label %6026

; <label>:6026                                    ; preds = %6002, %5559
  %6027 = phi float [ %5516, %5559 ], [ %6023, %6002 ]
  %6028 = phi float [ %5517, %5559 ], [ %6024, %6002 ]
  %6029 = phi float [ %5518, %5559 ], [ %6025, %6002 ]
  %6030 = call float @dx.op.dot3.f32(i32 55, float %5237, float %5238, float %5239, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6031 = fcmp fast ogt float %6030, 0x3E7FF19E20000000
  %6032 = fdiv fast float 1.000000e+00, %6030
  %6033 = select i1 %6031, float %6032, float 0.000000e+00
  %6034 = fmul fast float %6033, %5237
  %6035 = fmul fast float %6033, %5238
  %6036 = fmul fast float %6033, %5239
  %6037 = fadd fast float %6034, -1.000000e+00
  %6038 = fadd fast float %6035, -1.000000e+00
  %6039 = fadd fast float %6036, -1.000000e+00
  %6040 = fmul fast float %6037, 5.000000e-01
  %6041 = fmul fast float %6038, 5.000000e-01
  %6042 = fmul fast float %6039, 5.000000e-01
  %6043 = fadd fast float %6040, 1.000000e+00
  %6044 = fadd fast float %6041, 1.000000e+00
  %6045 = fadd fast float %6042, 1.000000e+00
  %6046 = fmul fast float %5565, %4358
  %6047 = fmul fast float %5565, %4359
  %6048 = fmul fast float %5565, %4360
  %6049 = fadd fast float %6046, -1.000000e+00
  %6050 = fadd fast float %6047, -1.000000e+00
  %6051 = fadd fast float %6048, -1.000000e+00
  %6052 = fmul fast float %6049, %4265
  %6053 = fmul fast float %6050, %4265
  %6054 = fmul fast float %6051, %4265
  %6055 = fmul fast float %6027, %5560
  %6056 = fmul fast float %6028, %5561
  %6057 = fmul fast float %6029, %5562
  %6058 = fsub fast float 1.000000e+00, %5250
  %6059 = bitcast float %6058 to i32
  %6060 = sitofp i32 %6059 to float
  %6061 = fmul fast float %6060, 5.000000e+00
  %6062 = fadd fast float %6061, 0xC1EFBF8940000000
  %6063 = fptosi float %6062 to i32
  %6064 = bitcast i32 %6063 to float
  %6065 = fmul fast float %6064, %4269
  %6066 = fmul fast float %5508, %6065
  %6067 = fmul fast float %6066, %5565
  %6068 = fmul fast float %6067, %6043
  %6069 = fmul fast float %5509, %6065
  %6070 = fmul fast float %6069, %5565
  %6071 = fmul fast float %6070, %6044
  %6072 = fmul fast float %5510, %6065
  %6073 = fmul fast float %6072, %5565
  %6074 = fmul fast float %6073, %6045
  %6075 = fadd fast float %6055, %4261
  %6076 = fadd fast float %6075, %6068
  %6077 = fmul fast float %6076, %4265
  %6078 = fadd fast float %6056, %4262
  %6079 = fadd fast float %6078, %6071
  %6080 = fmul fast float %6079, %4265
  %6081 = fadd fast float %6057, %4263
  %6082 = fadd fast float %6081, %6074
  %6083 = fmul fast float %6082, %4265
  %6084 = fadd fast float %6054, 1.000000e+00
  %6085 = fadd fast float %6053, 1.000000e+00
  %6086 = fadd fast float %6052, 1.000000e+00
  %6087 = fmul fast float %5565, %5510
  %6088 = fmul fast float %5565, %5509
  %6089 = fmul fast float %5565, %5508
  %6090 = fmul fast float %6086, %5512
  %6091 = fmul fast float %6085, %5513
  %6092 = fmul fast float %6084, %5514
  %6093 = fadd fast float %6090, %6089
  %6094 = fmul fast float %6093, %4265
  %6095 = fadd fast float %6091, %6088
  %6096 = fmul fast float %6095, %4265
  %6097 = fadd fast float %6092, %6087
  %6098 = fmul fast float %6097, %4265
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6101 = fcmp fast oeq float %6100, 0.000000e+00
  br i1 %6101, label %7785, label %6102

; <label>:6102                                    ; preds = %6026
  %6103 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6099, 1
  %6105 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.CBufRet.f32 %6106, 1
  %6109 = extractvalue %dx.types.CBufRet.f32 %6106, 2
  %6110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6111 = extractvalue %dx.types.CBufRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.CBufRet.f32 %6110, 1
  %6113 = call float @dx.op.dot3.f32(i32 55, float %6107, float %6108, float %6109, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6114 = select i1 %262, float %6111, float %6107
  %6115 = select i1 %262, float %6113, float %6108
  %6116 = select i1 %262, float %6112, float %6109
  %6117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6118 = extractvalue %dx.types.CBufRet.f32 %6117, 2
  %6119 = fmul fast float %6118, %116
  %6120 = fmul fast float %6118, %117
  %6121 = fmul fast float %6118, %118
  %6122 = fadd fast float %6119, %188
  %6123 = fadd fast float %6120, %189
  %6124 = fadd fast float %6121, %190
  %6125 = fcmp fast olt float %6100, 0.000000e+00
  br i1 %6125, label %7383, label %6126

; <label>:6126                                    ; preds = %6102
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 0
  %6129 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6130 = extractvalue %dx.types.CBufRet.f32 %6127, 2
  %6131 = extractvalue %dx.types.CBufRet.f32 %6127, 3
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 0
  %6134 = extractvalue %dx.types.CBufRet.f32 %6132, 1
  %6135 = extractvalue %dx.types.CBufRet.f32 %6132, 2
  %6136 = extractvalue %dx.types.CBufRet.f32 %6132, 3
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6141 = extractvalue %dx.types.CBufRet.f32 %6137, 3
  %6142 = fmul fast float %6128, %6122
  %6143 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %6129, float %6142)  ; FMad(a,b,c)
  %6144 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %6130, float %6143)  ; FMad(a,b,c)
  %6145 = fadd fast float %6144, %6131
  %6146 = fmul fast float %6133, %6122
  %6147 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %6134, float %6146)  ; FMad(a,b,c)
  %6148 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %6135, float %6147)  ; FMad(a,b,c)
  %6149 = fadd fast float %6148, %6136
  %6150 = fmul fast float %6138, %6122
  %6151 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %6139, float %6150)  ; FMad(a,b,c)
  %6152 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %6140, float %6151)  ; FMad(a,b,c)
  %6153 = fadd fast float %6152, %6141
  %6154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6154, 0
  %6156 = fcmp fast une float %6155, 0.000000e+00
  %6157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6158 = extractvalue %dx.types.CBufRet.f32 %6157, 0
  %6159 = extractvalue %dx.types.CBufRet.f32 %6157, 1
  %6160 = extractvalue %dx.types.CBufRet.f32 %6157, 3
  %6161 = fmul fast float %6160, %6145
  %6162 = fmul fast float %6160, %6149
  %6163 = fadd fast float %6161, %6158
  %6164 = fadd fast float %6162, %6159
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = extractvalue %dx.types.CBufRet.f32 %6165, 3
  %6169 = fmul fast float %6168, %6145
  %6170 = fmul fast float %6168, %6149
  %6171 = fadd fast float %6169, %6166
  %6172 = fadd fast float %6170, %6167
  %6173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6174 = extractvalue %dx.types.CBufRet.f32 %6173, 1
  %6175 = fsub fast float %6174, %6153
  %6176 = extractvalue %dx.types.CBufRet.f32 %6173, 2
  %6177 = fmul fast float %6175, %6176
  %6178 = fsub fast float 1.000000e+00, %6177
  %6179 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  br i1 %6156, label %6240, label %6180

; <label>:6180                                    ; preds = %6126
  %6181 = extractvalue %dx.types.CBufRet.f32 %6165, 2
  %6182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6183 = extractvalue %dx.types.CBufRet.f32 %6182, 2
  %6184 = fadd fast float %6183, %6181
  %6185 = fcmp fast ogt float %6184, 0.000000e+00
  br i1 %6185, label %6186, label %6210

; <label>:6186                                    ; preds = %6180
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.CBufRet.f32 %6187, 1
  %6190 = fsub fast float %6171, %6188
  %6191 = fsub fast float %6172, %6189
  %6192 = fcmp fast olt float %6190, 0.000000e+00
  %6193 = fcmp fast olt float %6191, 0.000000e+00
  %6194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.CBufRet.f32 %6194, 1
  %6197 = extractvalue %dx.types.CBufRet.f32 %6194, 2
  %6198 = extractvalue %dx.types.CBufRet.f32 %6194, 3
  %6199 = select i1 %6192, float %6195, float %6197
  %6200 = select i1 %6193, float %6196, float %6198
  %6201 = fmul fast float %6199, %6190
  %6202 = fmul fast float %6200, %6191
  %6203 = call float @dx.op.unary.f32(i32 6, float %6201)  ; FAbs(value)
  %6204 = call float @dx.op.unary.f32(i32 6, float %6202)  ; FAbs(value)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6206 = call float @dx.op.binary.f32(i32 35, float %6203, float %6204)  ; FMax(a,b)
  %6207 = fsub fast float %6205, %6206
  %6208 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6209 = fmul fast float %6208, %6179
  br label %6210

; <label>:6210                                    ; preds = %6186, %6180
  %6211 = phi float [ %6209, %6186 ], [ 0.000000e+00, %6180 ]
  %6212 = extractvalue %dx.types.CBufRet.f32 %6157, 2
  %6213 = extractvalue %dx.types.CBufRet.f32 %6182, 1
  %6214 = fadd fast float %6213, %6212
  %6215 = fcmp fast ogt float %6214, 0.000000e+00
  br i1 %6215, label %6216, label %6240

; <label>:6216                                    ; preds = %6210
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 0
  %6219 = extractvalue %dx.types.CBufRet.f32 %6217, 1
  %6220 = fsub fast float %6163, %6218
  %6221 = fsub fast float %6164, %6219
  %6222 = fcmp fast olt float %6220, 0.000000e+00
  %6223 = fcmp fast olt float %6221, 0.000000e+00
  %6224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6225 = extractvalue %dx.types.CBufRet.f32 %6224, 0
  %6226 = extractvalue %dx.types.CBufRet.f32 %6224, 1
  %6227 = extractvalue %dx.types.CBufRet.f32 %6224, 2
  %6228 = extractvalue %dx.types.CBufRet.f32 %6224, 3
  %6229 = select i1 %6222, float %6225, float %6227
  %6230 = select i1 %6223, float %6226, float %6228
  %6231 = fmul fast float %6229, %6220
  %6232 = fmul fast float %6230, %6221
  %6233 = call float @dx.op.unary.f32(i32 6, float %6231)  ; FAbs(value)
  %6234 = call float @dx.op.unary.f32(i32 6, float %6232)  ; FAbs(value)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6236 = call float @dx.op.binary.f32(i32 35, float %6233, float %6234)  ; FMax(a,b)
  %6237 = fsub fast float %6235, %6236
  %6238 = call float @dx.op.unary.f32(i32 7, float %6237)  ; Saturate(value)
  %6239 = fmul fast float %6238, %6179
  br label %6240

; <label>:6240                                    ; preds = %6216, %6210, %6126
  %6241 = phi float [ 0.000000e+00, %6126 ], [ %6239, %6216 ], [ 0.000000e+00, %6210 ]
  %6242 = phi float [ 0.000000e+00, %6126 ], [ %6211, %6216 ], [ %6211, %6210 ]
  %6243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6244 = extractvalue %dx.types.CBufRet.f32 %6243, 1
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = fsub fast float %6145, %6247
  %6250 = fsub fast float %6149, %6248
  %6251 = fcmp fast olt float %6249, 0.000000e+00
  %6252 = fcmp fast olt float %6250, 0.000000e+00
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.CBufRet.f32 %6253, 2
  %6257 = extractvalue %dx.types.CBufRet.f32 %6253, 3
  %6258 = select i1 %6251, float %6254, float %6256
  %6259 = select i1 %6252, float %6255, float %6257
  %6260 = fmul fast float %6258, %6249
  %6261 = fmul fast float %6259, %6250
  %6262 = call float @dx.op.unary.f32(i32 6, float %6260)  ; FAbs(value)
  %6263 = call float @dx.op.unary.f32(i32 6, float %6261)  ; FAbs(value)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6117, 0
  %6265 = call float @dx.op.binary.f32(i32 35, float %6262, float %6263)  ; FMax(a,b)
  %6266 = fsub fast float %6264, %6265
  %6267 = call float @dx.op.unary.f32(i32 7, float %6266)  ; Saturate(value)
  %6268 = call float @dx.op.binary.f32(i32 36, float %6267, float %6245)  ; FMin(a,b)
  %6269 = fmul fast float %6268, %6179
  %6270 = fsub fast float %6241, %6269
  %6271 = fsub fast float %6242, %6241
  %6272 = fsub fast float %6271, %6269
  %6273 = call float @dx.op.binary.f32(i32 35, float %6241, float %6242)  ; FMax(a,b)
  %6274 = call float @dx.op.binary.f32(i32 35, float %6269, float %6273)  ; FMax(a,b)
  %6275 = fcmp fast olt float %6274, 1.000000e+00
  br i1 %6275, label %6276, label %6674, !dx.controlflow.hints !95

; <label>:6276                                    ; preds = %6240
  %6277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6277, 0
  %6279 = fcmp fast une float %6278, 0.000000e+00
  br i1 %6279, label %6280, label %6674, !dx.controlflow.hints !96

; <label>:6280                                    ; preds = %6276
  %6281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6282 = extractvalue %dx.types.CBufRet.f32 %6281, 0
  %6283 = extractvalue %dx.types.CBufRet.f32 %6281, 1
  %6284 = extractvalue %dx.types.CBufRet.f32 %6281, 2
  %6285 = extractvalue %dx.types.CBufRet.f32 %6281, 3
  %6286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6287 = extractvalue %dx.types.CBufRet.f32 %6286, 0
  %6288 = extractvalue %dx.types.CBufRet.f32 %6286, 1
  %6289 = extractvalue %dx.types.CBufRet.f32 %6286, 2
  %6290 = extractvalue %dx.types.CBufRet.f32 %6286, 3
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6295 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6296 = fmul fast float %6282, %6122
  %6297 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %6283, float %6296)  ; FMad(a,b,c)
  %6298 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %6284, float %6297)  ; FMad(a,b,c)
  %6299 = fadd fast float %6298, %6285
  %6300 = fmul fast float %6287, %6122
  %6301 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %6288, float %6300)  ; FMad(a,b,c)
  %6302 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %6289, float %6301)  ; FMad(a,b,c)
  %6303 = fadd fast float %6302, %6290
  %6304 = fmul fast float %6292, %6122
  %6305 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %6293, float %6304)  ; FMad(a,b,c)
  %6306 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %6294, float %6305)  ; FMad(a,b,c)
  %6307 = fadd fast float %6306, %6295
  %6308 = fcmp fast oge float %6299, 1.000000e+00
  %6309 = fcmp fast oge float %6303, 1.000000e+00
  %6310 = or i1 %6308, %6309
  %6311 = fcmp fast olt float %6299, 0.000000e+00
  %6312 = fcmp fast olt float %6303, 0.000000e+00
  %6313 = or i1 %6311, %6312
  %6314 = or i1 %6310, %6313
  br i1 %6314, label %6674, label %6315, !dx.controlflow.hints !97

; <label>:6315                                    ; preds = %6280
  %6316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6317 = extractvalue %dx.types.CBufRet.f32 %6316, 0
  %6318 = extractvalue %dx.types.CBufRet.f32 %6316, 1
  %6319 = extractvalue %dx.types.CBufRet.f32 %6316, 2
  %6320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6321 = extractvalue %dx.types.CBufRet.i32 %6320, 2
  %6322 = uitofp i32 %6321 to float
  %6323 = extractvalue %dx.types.CBufRet.i32 %6320, 3
  %6324 = uitofp i32 %6323 to float
  %6325 = extractvalue %dx.types.CBufRet.f32 %6316, 3
  %6326 = fmul fast float %6325, 2.000000e+00
  %6327 = fsub fast float %6299, %6317
  %6328 = fsub fast float %6303, %6318
  %6329 = fmul fast float %6326, %6327
  %6330 = fmul fast float %6326, %6328
  %6331 = fdiv fast float 1.000000e+00, %6105
  %6332 = fmul fast float %6330, %6331
  %6333 = call float @dx.op.unary.f32(i32 6, float %6332)  ; FAbs(value)
  %6334 = fmul fast float %6319, %6124
  %6335 = fmul fast float %6334, %6326
  %6336 = call float @dx.op.unary.f32(i32 6, float %6335)  ; FAbs(value)
  %6337 = call float @dx.op.unary.f32(i32 6, float %6329)  ; FAbs(value)
  %6338 = call float @dx.op.binary.f32(i32 35, float %6336, float %6333)  ; FMax(a,b)
  %6339 = call float @dx.op.binary.f32(i32 35, float %6337, float %6338)  ; FMax(a,b)
  %6340 = fmul fast float %6339, 2.000000e+00
  %6341 = call float @dx.op.unary.f32(i32 23, float %6340)  ; Log(value)
  %6342 = call float @dx.op.binary.f32(i32 35, float %6341, float %6322)  ; FMax(a,b)
  %6343 = call float @dx.op.unary.f32(i32 22, float %6342)  ; Frc(value)
  %6344 = fadd fast float %6343, 0xBFEA666660000000
  %6345 = fmul fast float %6344, 8.000000e+00
  %6346 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  %6347 = call float @dx.op.unary.f32(i32 27, float %6342)  ; Round_ni(value)
  %6348 = fadd fast float %6347, %6346
  %6349 = call float @dx.op.binary.f32(i32 36, float %6348, float %6324)  ; FMin(a,b)
  %6350 = call float @dx.op.unary.f32(i32 27, float %6349)  ; Round_ni(value)
  %6351 = fsub fast float -0.000000e+00, %6350
  %6352 = call float @dx.op.unary.f32(i32 21, float %6351)  ; Exp(value)
  %6353 = fmul fast float %6352, %6326
  %6354 = fmul fast float %6353, %6299
  %6355 = fmul fast float %6353, %6303
  %6356 = fmul fast float %6354, 2.500000e-01
  %6357 = fmul fast float %6355, 2.500000e-01
  %6358 = fadd fast float %6356, 5.000000e-01
  %6359 = fadd fast float %6357, 5.000000e-01
  %6360 = fsub fast float %6324, %6322
  %6361 = fptoui float %6360 to i32
  %6362 = add i32 %6361, 320
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6362)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6366 = fcmp fast une float %6349, %6324
  %6367 = fsub fast float %6299, %6364
  %6368 = fsub fast float %6303, %6365
  %6369 = call float @dx.op.unary.f32(i32 6, float %6367)  ; FAbs(value)
  %6370 = call float @dx.op.unary.f32(i32 6, float %6368)  ; FAbs(value)
  %6371 = fmul fast float %6369, %6353
  %6372 = fmul fast float %6370, %6353
  %6373 = fcmp fast olt float %6371, 1.000000e+00
  %6374 = fcmp fast olt float %6372, 1.000000e+00
  %6375 = and i1 %6373, %6374
  %6376 = or i1 %6366, %6375
  br i1 %6376, label %6377, label %6674, !dx.controlflow.hints !98

; <label>:6377                                    ; preds = %6315
  %6378 = fmul fast float %6355, 5.000000e-01
  %6379 = fmul fast float %6354, 5.000000e-01
  %6380 = fadd fast float %6378, 5.000000e-01
  %6381 = fadd fast float %6379, 5.000000e-01
  %6382 = sitofp i32 %6321 to float
  %6383 = fsub fast float %6349, %6382
  %6384 = call float @dx.op.unary.f32(i32 27, float %6383)  ; Round_ni(value)
  %6385 = call float @dx.op.unary.f32(i32 22, float %6349)  ; Frc(value)
  %6386 = call float @dx.op.unary.f32(i32 22, float %6381)  ; Frc(value)
  %6387 = call float @dx.op.unary.f32(i32 22, float %6380)  ; Frc(value)
  %6388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6386, float %6387, float %6384, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6389 = extractvalue %dx.types.ResRet.f32 %6388, 0
  %6390 = extractvalue %dx.types.ResRet.f32 %6388, 1
  %6391 = extractvalue %dx.types.ResRet.f32 %6388, 2
  %6392 = extractvalue %dx.types.ResRet.f32 %6388, 3
  %6393 = fcmp fast ogt float %6385, 0.000000e+00
  br i1 %6393, label %6394, label %6415, !dx.controlflow.hints !99

; <label>:6394                                    ; preds = %6377
  %6395 = fadd fast float %6384, 1.000000e+00
  %6396 = call float @dx.op.unary.f32(i32 22, float %6358)  ; Frc(value)
  %6397 = call float @dx.op.unary.f32(i32 22, float %6359)  ; Frc(value)
  %6398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6396, float %6397, float %6395, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.ResRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.ResRet.f32 %6398, 2
  %6402 = extractvalue %dx.types.ResRet.f32 %6398, 3
  %6403 = fsub fast float %6399, %6389
  %6404 = fsub fast float %6400, %6390
  %6405 = fsub fast float %6401, %6391
  %6406 = fsub fast float %6402, %6392
  %6407 = fmul fast float %6403, %6385
  %6408 = fmul fast float %6404, %6385
  %6409 = fmul fast float %6405, %6385
  %6410 = fmul fast float %6406, %6385
  %6411 = fadd fast float %6407, %6389
  %6412 = fadd fast float %6408, %6390
  %6413 = fadd fast float %6409, %6391
  %6414 = fadd fast float %6410, %6392
  br label %6415

; <label>:6415                                    ; preds = %6394, %6377
  %6416 = phi float [ %6411, %6394 ], [ %6389, %6377 ]
  %6417 = phi float [ %6412, %6394 ], [ %6390, %6377 ]
  %6418 = phi float [ %6413, %6394 ], [ %6391, %6377 ]
  %6419 = phi float [ %6414, %6394 ], [ %6392, %6377 ]
  %6420 = fadd fast float %6416, -5.000000e-01
  %6421 = fadd fast float %6418, -5.000000e-01
  %6422 = fmul fast float %6420, 0xBFD5555560000000
  %6423 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6421, float %6422)  ; FMad(a,b,c)
  %6424 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6417, float 0.000000e+00)  ; FMad(a,b,c)
  %6425 = fadd fast float %6424, %6419
  %6426 = fmul fast float %6420, -7.500000e-01
  %6427 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6421, float %6426)  ; FMad(a,b,c)
  %6428 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6417, float 0.000000e+00)  ; FMad(a,b,c)
  %6429 = fadd fast float %6428, %6419
  %6430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.f32 %6430, 0
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.CBufRet.f32 %6432, 1
  %6435 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6436 = extractvalue %dx.types.CBufRet.f32 %6432, 3
  %6437 = fsub fast float %6433, %6423
  %6438 = fsub fast float %6434, %6425
  %6439 = fsub fast float %6435, %6427
  %6440 = fsub fast float %6436, %6429
  %6441 = fmul fast float %6437, %6431
  %6442 = fmul fast float %6438, %6431
  %6443 = fmul fast float %6439, %6431
  %6444 = fmul fast float %6440, %6431
  %6445 = fadd fast float %6441, %6423
  %6446 = fadd fast float %6442, %6425
  %6447 = fadd fast float %6443, %6427
  %6448 = fadd fast float %6444, %6429
  %6449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6450 = extractvalue %dx.types.ResRet.i32 %6449, 0
  %6451 = and i32 %6450, 536870911
  %6452 = uitofp i32 %6451 to float
  %6453 = fmul fast float %6452, %6299
  %6454 = fmul fast float %6452, %6303
  %6455 = fptoui float %6453 to i32
  %6456 = fptoui float %6454 to i32
  %6457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6458 = extractvalue %dx.types.ResRet.i32 %6457, 0
  %6459 = and i32 %6458, 31
  %6460 = lshr i32 %6455, %6459
  %6461 = lshr i32 %6456, %6459
  %6462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6463 = extractvalue %dx.types.ResRet.i32 %6462, 0
  %6464 = and i32 %6463, 31
  %6465 = shl i32 1, %6464
  %6466 = call i32 @dx.op.binary.i32(i32 40, i32 %6465, i32 4)  ; UMin(a,b)
  %6467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6468 = extractvalue %dx.types.ResRet.i32 %6467, 0
  %6469 = extractvalue %dx.types.ResRet.i32 %6467, 1
  %6470 = icmp eq i32 %6466, 0
  br i1 %6470, label %6512, label %6471

; <label>:6471                                    ; preds = %6415
  br label %6472

; <label>:6472                                    ; preds = %6500, %6471
  %6473 = phi i32 [ %6503, %6500 ], [ 0, %6471 ]
  %6474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6475 = extractvalue %dx.types.ResRet.i32 %6474, 0
  %6476 = lshr i32 %6475, 16
  %6477 = and i32 %6476, 31
  %6478 = shl i32 %6461, %6477
  %6479 = add i32 %6478, %6460
  %6480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6481 = extractvalue %dx.types.ResRet.i32 %6480, 0
  %6482 = and i32 %6481, 31
  %6483 = shl i32 %6479, %6482
  %6484 = add i32 %6483, %6473
  %6485 = shl i32 %6484, 2
  %6486 = add i32 %6485, 32
  %6487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6486, i32 undef)  ; BufferLoad(srv,index,wot)
  %6488 = extractvalue %dx.types.ResRet.i32 %6487, 0
  %6489 = icmp slt i32 %6488, 0
  %6490 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6473
  %6491 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6473
  %6492 = bitcast float* %6490 to i32*
  %6493 = bitcast float* %6491 to i32*
  br i1 %6489, label %6494, label %6500

; <label>:6494                                    ; preds = %6472
  %6495 = and i32 %6488, 1073741823
  %6496 = add nuw nsw i32 %6495, 20
  %6497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6496, i32 undef)  ; BufferLoad(srv,index,wot)
  %6498 = extractvalue %dx.types.ResRet.i32 %6497, 0
  %6499 = extractvalue %dx.types.ResRet.i32 %6497, 1
  br label %6500

; <label>:6500                                    ; preds = %6494, %6472
  %6501 = phi i32 [ %6498, %6494 ], [ %6468, %6472 ]
  %6502 = phi i32 [ %6499, %6494 ], [ %6469, %6472 ]
  store i32 %6501, i32* %6492, align 4
  store i32 %6502, i32* %6493, align 4
  %6503 = add nuw i32 %6473, 1
  %6504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6505 = extractvalue %dx.types.CBufRet.i32 %6504, 2
  %6506 = icmp eq i32 %6505, 0
  %6507 = icmp ugt i32 %6488, -1073741825
  %6508 = and i1 %6507, %6506
  %6509 = icmp ult i32 %6503, %6466
  %6510 = and i1 %6508, %6509
  br i1 %6510, label %6472, label %6511

; <label>:6511                                    ; preds = %6500
  br label %6512

; <label>:6512                                    ; preds = %6511, %6415
  %6513 = phi i32 [ 0, %6415 ], [ %6503, %6511 ]
  %6514 = extractvalue %dx.types.CBufRet.f32 %6277, 2
  %6515 = fptoui float %6514 to i32
  %6516 = icmp eq i32 %6515, 0
  br i1 %6516, label %6568, label %6517

; <label>:6517                                    ; preds = %6512
  br label %6518

; <label>:6518                                    ; preds = %6563, %6517
  %6519 = phi i32 [ %6564, %6563 ], [ %6513, %6517 ]
  %6520 = phi i32 [ %6565, %6563 ], [ 0, %6517 ]
  %6521 = lshr i32 %6520, 2
  %6522 = and i32 %6520, 3
  %6523 = add nuw nsw i32 %6521, 83
  %6524 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6523)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.i32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.i32 %6524, 1
  %6527 = extractvalue %dx.types.CBufRet.i32 %6524, 2
  %6528 = extractvalue %dx.types.CBufRet.i32 %6524, 3
  %6529 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6525, i32* %6529, align 4
  %6530 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6526, i32* %6530, align 4
  %6531 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6527, i32* %6531, align 4
  %6532 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6528, i32* %6532, align 4
  %6533 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6522
  %6534 = load i32, i32* %6533, align 4, !tbaa !100, !noalias !104
  %6535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6536 = extractvalue %dx.types.ResRet.i32 %6535, 0
  %6537 = lshr i32 %6536, 16
  %6538 = and i32 %6537, 31
  %6539 = shl i32 %6461, %6538
  %6540 = add i32 %6539, %6460
  %6541 = shl i32 %6540, 2
  %6542 = add i32 %6541, %6534
  %6543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6542, i32 undef)  ; BufferLoad(srv,index,wot)
  %6544 = extractvalue %dx.types.ResRet.i32 %6543, 0
  %6545 = icmp eq i32 %6544, 0
  br i1 %6545, label %6563, label %6546

; <label>:6546                                    ; preds = %6518
  %6547 = icmp slt i32 %6544, 0
  %6548 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6519
  %6549 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6519
  %6550 = bitcast float* %6548 to i32*
  %6551 = bitcast float* %6549 to i32*
  br i1 %6547, label %6552, label %6559

; <label>:6552                                    ; preds = %6546
  %6553 = and i32 %6544, 1073741823
  %6554 = add i32 %6534, 20
  %6555 = add i32 %6554, %6553
  %6556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6555, i32 undef)  ; BufferLoad(srv,index,wot)
  %6557 = extractvalue %dx.types.ResRet.i32 %6556, 0
  %6558 = extractvalue %dx.types.ResRet.i32 %6556, 1
  br label %6559

; <label>:6559                                    ; preds = %6552, %6546
  %6560 = phi i32 [ %6557, %6552 ], [ %6468, %6546 ]
  %6561 = phi i32 [ %6558, %6552 ], [ %6469, %6546 ]
  store i32 %6560, i32* %6550, align 4
  store i32 %6561, i32* %6551, align 4
  %6562 = add i32 %6519, 1
  br label %6563

; <label>:6563                                    ; preds = %6559, %6518
  %6564 = phi i32 [ %6519, %6518 ], [ %6562, %6559 ]
  %6565 = add nuw i32 %6520, 1
  %6566 = icmp eq i32 %6565, %6515
  br i1 %6566, label %6567, label %6518

; <label>:6567                                    ; preds = %6563
  br label %6568

; <label>:6568                                    ; preds = %6567, %6512
  %6569 = phi i32 [ %6513, %6512 ], [ %6564, %6567 ]
  %6570 = icmp eq i32 %6569, 1
  %6571 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %6572 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %6570, label %6573, label %6576

; <label>:6573                                    ; preds = %6568
  %6574 = load float, float* %6571, align 4
  %6575 = load float, float* %6572, align 4
  br label %6603

; <label>:6576                                    ; preds = %6568
  %6577 = load float, float* %6571, align 4
  %6578 = load float, float* %6572, align 4
  %6579 = fdiv fast float 1.000000e+00, %6578
  %6580 = fsub fast float %6577, %6579
  %6581 = icmp ugt i32 %6569, 1
  br i1 %6581, label %6582, label %6598

; <label>:6582                                    ; preds = %6576
  br label %6583

; <label>:6583                                    ; preds = %6583, %6582
  %6584 = phi float [ %6593, %6583 ], [ %6580, %6582 ]
  %6585 = phi float [ %6594, %6583 ], [ %6577, %6582 ]
  %6586 = phi i32 [ %6595, %6583 ], [ 1, %6582 ]
  %6587 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6586
  %6588 = load float, float* %6587, align 4
  %6589 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6586
  %6590 = load float, float* %6589, align 4
  %6591 = fdiv fast float 1.000000e+00, %6590
  %6592 = fsub fast float %6588, %6591
  %6593 = call float @dx.op.binary.f32(i32 36, float %6584, float %6592)  ; FMin(a,b)
  %6594 = call float @dx.op.binary.f32(i32 35, float %6585, float %6588)  ; FMax(a,b)
  %6595 = add nuw i32 %6586, 1
  %6596 = icmp eq i32 %6595, %6569
  br i1 %6596, label %6597, label %6583

; <label>:6597                                    ; preds = %6583
  br label %6598

; <label>:6598                                    ; preds = %6597, %6576
  %6599 = phi float [ %6580, %6576 ], [ %6593, %6597 ]
  %6600 = phi float [ %6577, %6576 ], [ %6594, %6597 ]
  %6601 = fsub fast float %6600, %6599
  %6602 = fdiv fast float 1.000000e+00, %6601
  br label %6603

; <label>:6603                                    ; preds = %6598, %6573
  %6604 = phi float [ %6574, %6573 ], [ %6600, %6598 ]
  %6605 = phi float [ %6575, %6573 ], [ %6602, %6598 ]
  %6606 = fadd fast float %6307, %6604
  %6607 = fmul fast float %6606, %6605
  %6608 = call float @dx.op.unary.f32(i32 7, float %6607)  ; Saturate(value)
  %6609 = fmul fast float %6608, 2.000000e+00
  %6610 = fsub fast float 1.000000e+00, %6609
  %6611 = fmul fast float %6445, %6445
  %6612 = fsub fast float %6446, %6611
  %6613 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6612)  ; FMax(a,b)
  %6614 = fdiv fast float 1.000000e+00, %6613
  %6615 = fmul fast float %6446, %6445
  %6616 = fsub fast float %6447, %6615
  %6617 = fsub fast float %6610, %6445
  %6618 = fmul fast float %6610, %6610
  %6619 = fsub fast float %6618, %6446
  %6620 = fmul fast float %6614, %6616
  %6621 = fmul fast float %6620, %6617
  %6622 = fsub fast float %6619, %6621
  %6623 = fmul fast float %6446, %6446
  %6624 = fsub fast float %6448, %6623
  %6625 = fmul fast float %6616, %6616
  %6626 = fmul fast float %6625, %6614
  %6627 = fsub fast float %6624, %6626
  %6628 = fdiv fast float %6622, %6627
  %6629 = fmul fast float %6628, %6616
  %6630 = fsub fast float %6617, %6629
  %6631 = fmul fast float %6630, %6614
  %6632 = fmul fast float %6631, %6445
  %6633 = fsub fast float 1.000000e+00, %6632
  %6634 = fmul fast float %6628, %6446
  %6635 = fsub fast float %6633, %6634
  %6636 = fmul fast float %6631, %6631
  %6637 = fmul fast float %6628, 4.000000e+00
  %6638 = fmul fast float %6637, %6635
  %6639 = fsub fast float %6636, %6638
  %6640 = call float @dx.op.unary.f32(i32 24, float %6639)  ; Sqrt(value)
  %6641 = fcmp fast oge float %6631, 0.000000e+00
  %6642 = fsub fast float -0.000000e+00, %6640
  %6643 = select i1 %6641, float %6642, float %6640
  %6644 = fsub fast float %6643, %6631
  %6645 = fdiv fast float %6644, %6628
  %6646 = fdiv fast float %6635, %6644
  %6647 = fmul fast float %6645, 5.000000e-01
  %6648 = fmul fast float %6646, 2.000000e+00
  %6649 = select i1 %6641, float %6647, float %6648
  %6650 = select i1 %6641, float %6648, float %6647
  %6651 = call float @dx.op.binary.f32(i32 35, float %6649, float %6650)  ; FMax(a,b)
  %6652 = call float @dx.op.binary.f32(i32 36, float %6649, float %6650)  ; FMin(a,b)
  %6653 = fcmp fast ogt float %6610, %6651
  %6654 = fsub fast float %6610, %6652
  %6655 = fsub fast float %6610, %6651
  %6656 = fsub fast float %6651, %6652
  %6657 = select i1 %6653, float %6655, float %6656
  %6658 = fmul float %6654, %6657
  %6659 = select i1 %6653, float %6652, float %6610
  %6660 = fcmp fast ogt float %6610, %6652
  %6661 = fmul fast float %6659, %6651
  %6662 = fadd fast float %6659, %6651
  %6663 = fmul fast float %6662, %6445
  %6664 = fadd fast float %6661, %6446
  %6665 = fsub fast float %6664, %6663
  %6666 = fdiv fast float %6665, %6658
  %6667 = select i1 %6660, float %6666, float 0.000000e+00
  %6668 = fsub fast float 1.000000e+00, %6667
  %6669 = select i1 %6653, float %6668, float %6667
  %6670 = call float @dx.op.unary.f32(i32 7, float %6669)  ; Saturate(value)
  %6671 = extractvalue %dx.types.CBufRet.f32 %6430, 3
  %6672 = fmul fast float %6671, %6670
  %6673 = fsub fast float 1.000000e+00, %6672
  br label %6674

; <label>:6674                                    ; preds = %6603, %6315, %6280, %6276, %6240
  %6675 = phi float [ 1.000000e+00, %6240 ], [ %6673, %6603 ], [ 1.000000e+00, %6280 ], [ 1.000000e+00, %6315 ], [ 1.000000e+00, %6276 ]
  %6676 = fcmp fast ogt float %6272, 0.000000e+00
  br i1 %6676, label %6677, label %6841, !dx.controlflow.hints !113

; <label>:6677                                    ; preds = %6674
  %6678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6678, 2
  %6680 = fadd fast float %6679, %6153
  %6681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6682 = extractvalue %dx.types.CBufRet.f32 %6681, 2
  %6683 = extractvalue %dx.types.CBufRet.f32 %6681, 3
  %6684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6684, 2
  %6686 = call float @dx.op.binary.f32(i32 35, float %6680, float 0.000000e+00)  ; FMax(a,b)
  %6687 = fadd fast float %6686, 0x3F10000000000000
  %6688 = fcmp fast oeq float %6685, 0.000000e+00
  br i1 %6688, label %6689, label %6756

; <label>:6689                                    ; preds = %6677
  %6690 = extractvalue %dx.types.CBufRet.f32 %6681, 1
  %6691 = extractvalue %dx.types.CBufRet.f32 %6681, 0
  %6692 = fmul fast float %6691, %6171
  %6693 = fmul fast float %6690, %6172
  %6694 = fadd fast float %6692, 5.000000e-01
  %6695 = call float @dx.op.unary.f32(i32 27, float %6694)  ; Round_ni(value)
  %6696 = fadd fast float %6693, 5.000000e-01
  %6697 = call float @dx.op.unary.f32(i32 27, float %6696)  ; Round_ni(value)
  %6698 = fsub fast float %6694, %6695
  %6699 = fsub fast float %6696, %6697
  %6700 = fadd fast float %6695, -5.000000e-01
  %6701 = fadd fast float %6697, -5.000000e-01
  %6702 = fmul fast float %6698, 2.000000e+00
  %6703 = fsub fast float 3.000000e+00, %6702
  %6704 = fadd fast float %6702, 1.000000e+00
  %6705 = fsub fast float 2.000000e+00, %6698
  %6706 = bitcast float %6703 to i32
  %6707 = sub nsw i32 2129859010, %6706
  %6708 = bitcast i32 %6707 to float
  %6709 = fmul fast float %6708, %6705
  %6710 = fadd fast float %6709, -1.000000e+00
  %6711 = bitcast float %6704 to i32
  %6712 = sub nsw i32 2129859010, %6711
  %6713 = bitcast i32 %6712 to float
  %6714 = fmul fast float %6713, %6698
  %6715 = fadd fast float %6714, 1.000000e+00
  %6716 = fmul fast float %6699, 2.000000e+00
  %6717 = fsub fast float 3.000000e+00, %6716
  %6718 = fadd fast float %6716, 1.000000e+00
  %6719 = fsub fast float 2.000000e+00, %6699
  %6720 = bitcast float %6717 to i32
  %6721 = sub nsw i32 2129859010, %6720
  %6722 = bitcast i32 %6721 to float
  %6723 = fmul fast float %6722, %6719
  %6724 = fadd fast float %6723, -1.000000e+00
  %6725 = bitcast float %6718 to i32
  %6726 = sub nsw i32 2129859010, %6725
  %6727 = bitcast i32 %6726 to float
  %6728 = fmul fast float %6727, %6699
  %6729 = fadd fast float %6728, 1.000000e+00
  %6730 = fadd fast float %6710, %6700
  %6731 = fmul fast float %6730, %6682
  %6732 = fadd fast float %6724, %6701
  %6733 = fmul fast float %6732, %6683
  %6734 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6731, float %6733, float undef, float undef, i32 0, i32 0, i32 undef, float %6687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6735 = extractvalue %dx.types.ResRet.f32 %6734, 0
  %6736 = fmul fast float %6735, %6703
  %6737 = fadd fast float %6715, %6700
  %6738 = fmul fast float %6737, %6682
  %6739 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6738, float %6733, float undef, float undef, i32 0, i32 0, i32 undef, float %6687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6740 = extractvalue %dx.types.ResRet.f32 %6739, 0
  %6741 = fmul fast float %6740, %6704
  %6742 = fadd fast float %6729, %6701
  %6743 = fmul fast float %6742, %6683
  %6744 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6731, float %6743, float undef, float undef, i32 0, i32 0, i32 undef, float %6687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6745 = extractvalue %dx.types.ResRet.f32 %6744, 0
  %6746 = fmul fast float %6745, %6703
  %6747 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6738, float %6743, float undef, float undef, i32 0, i32 0, i32 undef, float %6687)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6748 = extractvalue %dx.types.ResRet.f32 %6747, 0
  %6749 = fmul fast float %6748, %6704
  %6750 = fadd fast float %6749, %6746
  %6751 = fmul fast float %6750, %6718
  %6752 = fadd fast float %6741, %6736
  %6753 = fmul fast float %6752, %6717
  %6754 = fadd fast float %6753, %6751
  %6755 = fmul fast float %6754, 6.250000e-02
  br label %6841

; <label>:6756                                    ; preds = %6677
  %6757 = fmul fast float %273, 0x401921FB60000000
  %6758 = call float @dx.op.unary.f32(i32 13, float %6757)  ; Sin(value)
  %6759 = call float @dx.op.unary.f32(i32 12, float %6757)  ; Cos(value)
  %6760 = fsub fast float -0.000000e+00, %6758
  br label %6761

; <label>:6761                                    ; preds = %6810, %6756
  %6762 = phi float [ 0.000000e+00, %6756 ], [ %6805, %6810 ]
  %6763 = phi float [ 0.000000e+00, %6756 ], [ %6807, %6810 ]
  %6764 = phi i32 [ 0, %6756 ], [ %6811, %6810 ]
  %6765 = mul i32 %6764, 2
  %6766 = add i32 0, %6765
  %6767 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6766
  %6768 = load float, float* %6767, align 4
  %6769 = mul i32 %6764, 2
  %6770 = add i32 1, %6769
  %6771 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6770
  %6772 = load float, float* %6771, align 4
  %6773 = fmul fast float %6768, %6759
  %6774 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6760, float %6773)  ; FMad(a,b,c)
  %6775 = fmul fast float %6768, %6758
  %6776 = call float @dx.op.tertiary.f32(i32 46, float %6772, float %6759, float %6775)  ; FMad(a,b,c)
  %6777 = fmul fast float %6774, %6685
  %6778 = fmul fast float %6776, %6685
  %6779 = fadd fast float %6777, %6171
  %6780 = fadd fast float %6778, %6172
  %6781 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %6779, float %6780, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6782 = extractvalue %dx.types.ResRet.f32 %6781, 0
  %6783 = extractvalue %dx.types.ResRet.f32 %6781, 1
  %6784 = extractvalue %dx.types.ResRet.f32 %6781, 2
  %6785 = extractvalue %dx.types.ResRet.f32 %6781, 3
  %6786 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %6782, float* %6786, align 4
  %6787 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %6783, float* %6787, align 4
  %6788 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %6784, float* %6788, align 4
  %6789 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %6785, float* %6789, align 4
  %6790 = fsub fast float %6782, %6687
  %6791 = fcmp fast olt float %6790, 0.000000e+00
  %6792 = select i1 %6791, float 0.000000e+00, float 1.000000e+00
  %6793 = fadd fast float %6792, %6762
  %6794 = fmul fast float %6792, %6790
  %6795 = fadd fast float %6794, %6763
  br label %6796

; <label>:6796                                    ; preds = %6796, %6761
  %6797 = phi i32 [ 1, %6761 ], [ %6808, %6796 ]
  %6798 = phi float [ %6795, %6761 ], [ %6807, %6796 ]
  %6799 = phi float [ %6793, %6761 ], [ %6805, %6796 ]
  %6800 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %6797
  %6801 = load float, float* %6800, align 4, !tbaa !114, !noalias !104
  %6802 = fsub fast float %6801, %6687
  %6803 = fcmp fast olt float %6802, 0.000000e+00
  %6804 = select i1 %6803, float 0.000000e+00, float 1.000000e+00
  %6805 = fadd fast float %6804, %6799
  %6806 = fmul fast float %6804, %6802
  %6807 = fadd fast float %6806, %6798
  %6808 = add nuw nsw i32 %6797, 1
  %6809 = icmp eq i32 %6808, 4
  br i1 %6809, label %6810, label %6796, !llvm.loop !116

; <label>:6810                                    ; preds = %6796
  %6811 = add nuw nsw i32 %6764, 1
  %6812 = icmp eq i32 %6811, 8
  br i1 %6812, label %6813, label %6761, !llvm.loop !117

; <label>:6813                                    ; preds = %6810
  %6814 = fdiv fast float 1.000000e+00, %6805
  %6815 = fmul fast float %6814, %6807
  %6816 = fdiv fast float 1.000000e+00, %6687
  %6817 = fmul fast float %6815, %6816
  %6818 = call float @dx.op.unary.f32(i32 7, float %6817)  ; Saturate(value)
  %6819 = call float @dx.op.binary.f32(i32 35, float %6818, float 0.000000e+00)  ; FMax(a,b)
  %6820 = fmul fast float %6805, 3.125000e-02
  %6821 = call float @dx.op.unary.f32(i32 7, float %6820)  ; Saturate(value)
  %6822 = fmul fast float %6821, 2.000000e+00
  %6823 = fadd fast float %6822, -1.000000e+00
  %6824 = fcmp fast ogt float %6823, 0.000000e+00
  %6825 = fcmp fast olt float %6823, 0.000000e+00
  %6826 = zext i1 %6824 to i32
  %6827 = zext i1 %6825 to i32
  %6828 = sub nsw i32 %6826, %6827
  %6829 = sitofp i32 %6828 to float
  %6830 = fmul fast float %6829, %6823
  %6831 = fsub fast float 1.000000e+00, %6830
  %6832 = fmul fast float %6831, %6831
  %6833 = fmul fast float %6832, %6831
  %6834 = fsub fast float %6831, %6833
  %6835 = fmul fast float %6834, %6819
  %6836 = fsub fast float 1.000000e+00, %6833
  %6837 = fsub fast float %6836, %6835
  %6838 = fmul fast float %6829, 5.000000e-01
  %6839 = fmul fast float %6838, %6837
  %6840 = fsub fast float 5.000000e-01, %6839
  br label %6841

; <label>:6841                                    ; preds = %6813, %6689, %6674
  %6842 = phi float [ 1.000000e+00, %6674 ], [ %6755, %6689 ], [ %6840, %6813 ]
  %6843 = fcmp fast ogt float %6270, 0.000000e+00
  br i1 %6843, label %6844, label %7008, !dx.controlflow.hints !118

; <label>:6844                                    ; preds = %6841
  %6845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6846 = extractvalue %dx.types.CBufRet.f32 %6845, 1
  %6847 = fadd fast float %6846, %6153
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 3
  %6851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6852 = extractvalue %dx.types.CBufRet.f32 %6851, 1
  %6853 = call float @dx.op.binary.f32(i32 35, float %6847, float 0.000000e+00)  ; FMax(a,b)
  %6854 = fadd fast float %6853, 0x3F10000000000000
  %6855 = fcmp fast oeq float %6852, 0.000000e+00
  br i1 %6855, label %6856, label %6923

; <label>:6856                                    ; preds = %6844
  %6857 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6858 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6859 = fmul fast float %6858, %6163
  %6860 = fmul fast float %6857, %6164
  %6861 = fadd fast float %6859, 5.000000e-01
  %6862 = call float @dx.op.unary.f32(i32 27, float %6861)  ; Round_ni(value)
  %6863 = fadd fast float %6860, 5.000000e-01
  %6864 = call float @dx.op.unary.f32(i32 27, float %6863)  ; Round_ni(value)
  %6865 = fsub fast float %6861, %6862
  %6866 = fsub fast float %6863, %6864
  %6867 = fadd fast float %6862, -5.000000e-01
  %6868 = fadd fast float %6864, -5.000000e-01
  %6869 = fmul fast float %6865, 2.000000e+00
  %6870 = fsub fast float 3.000000e+00, %6869
  %6871 = fadd fast float %6869, 1.000000e+00
  %6872 = fsub fast float 2.000000e+00, %6865
  %6873 = bitcast float %6870 to i32
  %6874 = sub nsw i32 2129859010, %6873
  %6875 = bitcast i32 %6874 to float
  %6876 = fmul fast float %6875, %6872
  %6877 = fadd fast float %6876, -1.000000e+00
  %6878 = bitcast float %6871 to i32
  %6879 = sub nsw i32 2129859010, %6878
  %6880 = bitcast i32 %6879 to float
  %6881 = fmul fast float %6880, %6865
  %6882 = fadd fast float %6881, 1.000000e+00
  %6883 = fmul fast float %6866, 2.000000e+00
  %6884 = fsub fast float 3.000000e+00, %6883
  %6885 = fadd fast float %6883, 1.000000e+00
  %6886 = fsub fast float 2.000000e+00, %6866
  %6887 = bitcast float %6884 to i32
  %6888 = sub nsw i32 2129859010, %6887
  %6889 = bitcast i32 %6888 to float
  %6890 = fmul fast float %6889, %6886
  %6891 = fadd fast float %6890, -1.000000e+00
  %6892 = bitcast float %6885 to i32
  %6893 = sub nsw i32 2129859010, %6892
  %6894 = bitcast i32 %6893 to float
  %6895 = fmul fast float %6894, %6866
  %6896 = fadd fast float %6895, 1.000000e+00
  %6897 = fadd fast float %6877, %6867
  %6898 = fmul fast float %6897, %6849
  %6899 = fadd fast float %6891, %6868
  %6900 = fmul fast float %6899, %6850
  %6901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6898, float %6900, float undef, float undef, i32 0, i32 0, i32 undef, float %6854)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6902 = extractvalue %dx.types.ResRet.f32 %6901, 0
  %6903 = fmul fast float %6902, %6870
  %6904 = fadd fast float %6882, %6867
  %6905 = fmul fast float %6904, %6849
  %6906 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6905, float %6900, float undef, float undef, i32 0, i32 0, i32 undef, float %6854)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6907 = extractvalue %dx.types.ResRet.f32 %6906, 0
  %6908 = fmul fast float %6907, %6871
  %6909 = fadd fast float %6896, %6868
  %6910 = fmul fast float %6909, %6850
  %6911 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6898, float %6910, float undef, float undef, i32 0, i32 0, i32 undef, float %6854)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 0
  %6913 = fmul fast float %6912, %6870
  %6914 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6905, float %6910, float undef, float undef, i32 0, i32 0, i32 undef, float %6854)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6915 = extractvalue %dx.types.ResRet.f32 %6914, 0
  %6916 = fmul fast float %6915, %6871
  %6917 = fadd fast float %6916, %6913
  %6918 = fmul fast float %6917, %6885
  %6919 = fadd fast float %6908, %6903
  %6920 = fmul fast float %6919, %6884
  %6921 = fadd fast float %6920, %6918
  %6922 = fmul fast float %6921, 6.250000e-02
  br label %7008

; <label>:6923                                    ; preds = %6844
  %6924 = fmul fast float %273, 0x401921FB60000000
  %6925 = call float @dx.op.unary.f32(i32 13, float %6924)  ; Sin(value)
  %6926 = call float @dx.op.unary.f32(i32 12, float %6924)  ; Cos(value)
  %6927 = fsub fast float -0.000000e+00, %6925
  br label %6928

; <label>:6928                                    ; preds = %6977, %6923
  %6929 = phi float [ 0.000000e+00, %6923 ], [ %6972, %6977 ]
  %6930 = phi float [ 0.000000e+00, %6923 ], [ %6974, %6977 ]
  %6931 = phi i32 [ 0, %6923 ], [ %6978, %6977 ]
  %6932 = mul i32 %6931, 2
  %6933 = add i32 0, %6932
  %6934 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6933
  %6935 = load float, float* %6934, align 4
  %6936 = mul i32 %6931, 2
  %6937 = add i32 1, %6936
  %6938 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6937
  %6939 = load float, float* %6938, align 4
  %6940 = fmul fast float %6935, %6926
  %6941 = call float @dx.op.tertiary.f32(i32 46, float %6939, float %6927, float %6940)  ; FMad(a,b,c)
  %6942 = fmul fast float %6935, %6925
  %6943 = call float @dx.op.tertiary.f32(i32 46, float %6939, float %6926, float %6942)  ; FMad(a,b,c)
  %6944 = fmul fast float %6941, %6852
  %6945 = fmul fast float %6943, %6852
  %6946 = fadd fast float %6944, %6163
  %6947 = fadd fast float %6945, %6164
  %6948 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %6946, float %6947, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6949 = extractvalue %dx.types.ResRet.f32 %6948, 0
  %6950 = extractvalue %dx.types.ResRet.f32 %6948, 1
  %6951 = extractvalue %dx.types.ResRet.f32 %6948, 2
  %6952 = extractvalue %dx.types.ResRet.f32 %6948, 3
  %6953 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %6949, float* %6953, align 4
  %6954 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %6950, float* %6954, align 4
  %6955 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %6951, float* %6955, align 4
  %6956 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %6952, float* %6956, align 4
  %6957 = fsub fast float %6949, %6854
  %6958 = fcmp fast olt float %6957, 0.000000e+00
  %6959 = select i1 %6958, float 0.000000e+00, float 1.000000e+00
  %6960 = fadd fast float %6959, %6929
  %6961 = fmul fast float %6959, %6957
  %6962 = fadd fast float %6961, %6930
  br label %6963

; <label>:6963                                    ; preds = %6963, %6928
  %6964 = phi i32 [ 1, %6928 ], [ %6975, %6963 ]
  %6965 = phi float [ %6962, %6928 ], [ %6974, %6963 ]
  %6966 = phi float [ %6960, %6928 ], [ %6972, %6963 ]
  %6967 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %6964
  %6968 = load float, float* %6967, align 4, !tbaa !114, !noalias !104
  %6969 = fsub fast float %6968, %6854
  %6970 = fcmp fast olt float %6969, 0.000000e+00
  %6971 = select i1 %6970, float 0.000000e+00, float 1.000000e+00
  %6972 = fadd fast float %6971, %6966
  %6973 = fmul fast float %6971, %6969
  %6974 = fadd fast float %6973, %6965
  %6975 = add nuw nsw i32 %6964, 1
  %6976 = icmp eq i32 %6975, 4
  br i1 %6976, label %6977, label %6963, !llvm.loop !116

; <label>:6977                                    ; preds = %6963
  %6978 = add nuw nsw i32 %6931, 1
  %6979 = icmp eq i32 %6978, 8
  br i1 %6979, label %6980, label %6928, !llvm.loop !117

; <label>:6980                                    ; preds = %6977
  %6981 = fdiv fast float 1.000000e+00, %6972
  %6982 = fmul fast float %6981, %6974
  %6983 = fdiv fast float 1.000000e+00, %6854
  %6984 = fmul fast float %6982, %6983
  %6985 = call float @dx.op.unary.f32(i32 7, float %6984)  ; Saturate(value)
  %6986 = call float @dx.op.binary.f32(i32 35, float %6985, float 0.000000e+00)  ; FMax(a,b)
  %6987 = fmul fast float %6972, 3.125000e-02
  %6988 = call float @dx.op.unary.f32(i32 7, float %6987)  ; Saturate(value)
  %6989 = fmul fast float %6988, 2.000000e+00
  %6990 = fadd fast float %6989, -1.000000e+00
  %6991 = fcmp fast ogt float %6990, 0.000000e+00
  %6992 = fcmp fast olt float %6990, 0.000000e+00
  %6993 = zext i1 %6991 to i32
  %6994 = zext i1 %6992 to i32
  %6995 = sub nsw i32 %6993, %6994
  %6996 = sitofp i32 %6995 to float
  %6997 = fmul fast float %6996, %6990
  %6998 = fsub fast float 1.000000e+00, %6997
  %6999 = fmul fast float %6998, %6998
  %7000 = fmul fast float %6999, %6998
  %7001 = fsub fast float %6998, %7000
  %7002 = fmul fast float %7001, %6986
  %7003 = fsub fast float 1.000000e+00, %7000
  %7004 = fsub fast float %7003, %7002
  %7005 = fmul fast float %6996, 5.000000e-01
  %7006 = fmul fast float %7005, %7004
  %7007 = fsub fast float 5.000000e-01, %7006
  br label %7008

; <label>:7008                                    ; preds = %6980, %6856, %6841
  %7009 = phi float [ 1.000000e+00, %6841 ], [ %6922, %6856 ], [ %7007, %6980 ]
  %7010 = fcmp fast ogt float %6269, 0.000000e+00
  br i1 %7010, label %7011, label %7329, !dx.controlflow.hints !119

; <label>:7011                                    ; preds = %7008
  %7012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7013 = extractvalue %dx.types.CBufRet.f32 %7012, 0
  %7014 = fadd fast float %7013, %6153
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %7017 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7019 = extractvalue %dx.types.CBufRet.f32 %7018, 0
  %7020 = call float @dx.op.binary.f32(i32 35, float %7014, float 0.000000e+00)  ; FMax(a,b)
  %7021 = fadd fast float %7020, 0x3F10000000000000
  %7022 = fcmp fast oeq float %7019, 0.000000e+00
  br i1 %6156, label %7023, label %7176, !dx.controlflow.hints !120

; <label>:7023                                    ; preds = %7011
  br i1 %7022, label %7024, label %7091

; <label>:7024                                    ; preds = %7023
  %7025 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7026 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7027 = fmul fast float %7026, %6145
  %7028 = fmul fast float %7025, %6149
  %7029 = fadd fast float %7027, 5.000000e-01
  %7030 = call float @dx.op.unary.f32(i32 27, float %7029)  ; Round_ni(value)
  %7031 = fadd fast float %7028, 5.000000e-01
  %7032 = call float @dx.op.unary.f32(i32 27, float %7031)  ; Round_ni(value)
  %7033 = fsub fast float %7029, %7030
  %7034 = fsub fast float %7031, %7032
  %7035 = fadd fast float %7030, -5.000000e-01
  %7036 = fadd fast float %7032, -5.000000e-01
  %7037 = fmul fast float %7033, 2.000000e+00
  %7038 = fsub fast float 3.000000e+00, %7037
  %7039 = fadd fast float %7037, 1.000000e+00
  %7040 = fsub fast float 2.000000e+00, %7033
  %7041 = bitcast float %7038 to i32
  %7042 = sub nsw i32 2129859010, %7041
  %7043 = bitcast i32 %7042 to float
  %7044 = fmul fast float %7043, %7040
  %7045 = fadd fast float %7044, -1.000000e+00
  %7046 = bitcast float %7039 to i32
  %7047 = sub nsw i32 2129859010, %7046
  %7048 = bitcast i32 %7047 to float
  %7049 = fmul fast float %7048, %7033
  %7050 = fadd fast float %7049, 1.000000e+00
  %7051 = fmul fast float %7034, 2.000000e+00
  %7052 = fsub fast float 3.000000e+00, %7051
  %7053 = fadd fast float %7051, 1.000000e+00
  %7054 = fsub fast float 2.000000e+00, %7034
  %7055 = bitcast float %7052 to i32
  %7056 = sub nsw i32 2129859010, %7055
  %7057 = bitcast i32 %7056 to float
  %7058 = fmul fast float %7057, %7054
  %7059 = fadd fast float %7058, -1.000000e+00
  %7060 = bitcast float %7053 to i32
  %7061 = sub nsw i32 2129859010, %7060
  %7062 = bitcast i32 %7061 to float
  %7063 = fmul fast float %7062, %7034
  %7064 = fadd fast float %7063, 1.000000e+00
  %7065 = fadd fast float %7045, %7035
  %7066 = fmul fast float %7065, %7016
  %7067 = fadd fast float %7059, %7036
  %7068 = fmul fast float %7067, %7017
  %7069 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7066, float %7068, float undef, float undef, i32 0, i32 0, i32 undef, float %7021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = fmul fast float %7070, %7038
  %7072 = fadd fast float %7050, %7035
  %7073 = fmul fast float %7072, %7016
  %7074 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7073, float %7068, float undef, float undef, i32 0, i32 0, i32 undef, float %7021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7075 = extractvalue %dx.types.ResRet.f32 %7074, 0
  %7076 = fmul fast float %7075, %7039
  %7077 = fadd fast float %7064, %7036
  %7078 = fmul fast float %7077, %7017
  %7079 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7066, float %7078, float undef, float undef, i32 0, i32 0, i32 undef, float %7021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7080 = extractvalue %dx.types.ResRet.f32 %7079, 0
  %7081 = fmul fast float %7080, %7038
  %7082 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7073, float %7078, float undef, float undef, i32 0, i32 0, i32 undef, float %7021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = fmul fast float %7083, %7039
  %7085 = fadd fast float %7084, %7081
  %7086 = fmul fast float %7085, %7053
  %7087 = fadd fast float %7076, %7071
  %7088 = fmul fast float %7087, %7052
  %7089 = fadd fast float %7088, %7086
  %7090 = fmul fast float %7089, 6.250000e-02
  br label %7329

; <label>:7091                                    ; preds = %7023
  %7092 = fmul fast float %273, 0x401921FB60000000
  %7093 = call float @dx.op.unary.f32(i32 13, float %7092)  ; Sin(value)
  %7094 = call float @dx.op.unary.f32(i32 12, float %7092)  ; Cos(value)
  %7095 = fsub fast float -0.000000e+00, %7093
  br label %7096

; <label>:7096                                    ; preds = %7145, %7091
  %7097 = phi float [ 0.000000e+00, %7091 ], [ %7140, %7145 ]
  %7098 = phi float [ 0.000000e+00, %7091 ], [ %7142, %7145 ]
  %7099 = phi i32 [ 0, %7091 ], [ %7146, %7145 ]
  %7100 = mul i32 %7099, 2
  %7101 = add i32 0, %7100
  %7102 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7101
  %7103 = load float, float* %7102, align 4
  %7104 = mul i32 %7099, 2
  %7105 = add i32 1, %7104
  %7106 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7105
  %7107 = load float, float* %7106, align 4
  %7108 = fmul fast float %7103, %7094
  %7109 = call float @dx.op.tertiary.f32(i32 46, float %7107, float %7095, float %7108)  ; FMad(a,b,c)
  %7110 = fmul fast float %7103, %7093
  %7111 = call float @dx.op.tertiary.f32(i32 46, float %7107, float %7094, float %7110)  ; FMad(a,b,c)
  %7112 = fmul fast float %7109, %7019
  %7113 = fmul fast float %7111, %7019
  %7114 = fadd fast float %7112, %6145
  %7115 = fadd fast float %7113, %6149
  %7116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %7114, float %7115, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7117 = extractvalue %dx.types.ResRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.ResRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.ResRet.f32 %7116, 2
  %7120 = extractvalue %dx.types.ResRet.f32 %7116, 3
  %7121 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7117, float* %7121, align 4
  %7122 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7118, float* %7122, align 4
  %7123 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7119, float* %7123, align 4
  %7124 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7120, float* %7124, align 4
  %7125 = fsub fast float %7117, %7021
  %7126 = fcmp fast olt float %7125, 0.000000e+00
  %7127 = select i1 %7126, float 0.000000e+00, float 1.000000e+00
  %7128 = fadd fast float %7127, %7097
  %7129 = fmul fast float %7127, %7125
  %7130 = fadd fast float %7129, %7098
  br label %7131

; <label>:7131                                    ; preds = %7131, %7096
  %7132 = phi i32 [ 1, %7096 ], [ %7143, %7131 ]
  %7133 = phi float [ %7130, %7096 ], [ %7142, %7131 ]
  %7134 = phi float [ %7128, %7096 ], [ %7140, %7131 ]
  %7135 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7132
  %7136 = load float, float* %7135, align 4, !tbaa !114, !noalias !104
  %7137 = fsub fast float %7136, %7021
  %7138 = fcmp fast olt float %7137, 0.000000e+00
  %7139 = select i1 %7138, float 0.000000e+00, float 1.000000e+00
  %7140 = fadd fast float %7139, %7134
  %7141 = fmul fast float %7139, %7137
  %7142 = fadd fast float %7141, %7133
  %7143 = add nuw nsw i32 %7132, 1
  %7144 = icmp eq i32 %7143, 4
  br i1 %7144, label %7145, label %7131, !llvm.loop !116

; <label>:7145                                    ; preds = %7131
  %7146 = add nuw nsw i32 %7099, 1
  %7147 = icmp eq i32 %7146, 8
  br i1 %7147, label %7148, label %7096, !llvm.loop !117

; <label>:7148                                    ; preds = %7145
  %7149 = fdiv fast float 1.000000e+00, %7140
  %7150 = fmul fast float %7149, %7142
  %7151 = fdiv fast float 1.000000e+00, %7021
  %7152 = fmul fast float %7150, %7151
  %7153 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  %7154 = call float @dx.op.binary.f32(i32 35, float %7153, float 0.000000e+00)  ; FMax(a,b)
  %7155 = fmul fast float %7140, 3.125000e-02
  %7156 = call float @dx.op.unary.f32(i32 7, float %7155)  ; Saturate(value)
  %7157 = fmul fast float %7156, 2.000000e+00
  %7158 = fadd fast float %7157, -1.000000e+00
  %7159 = fcmp fast ogt float %7158, 0.000000e+00
  %7160 = fcmp fast olt float %7158, 0.000000e+00
  %7161 = zext i1 %7159 to i32
  %7162 = zext i1 %7160 to i32
  %7163 = sub nsw i32 %7161, %7162
  %7164 = sitofp i32 %7163 to float
  %7165 = fmul fast float %7164, %7158
  %7166 = fsub fast float 1.000000e+00, %7165
  %7167 = fmul fast float %7166, %7166
  %7168 = fmul fast float %7167, %7166
  %7169 = fsub fast float %7166, %7168
  %7170 = fmul fast float %7169, %7154
  %7171 = fsub fast float 1.000000e+00, %7168
  %7172 = fsub fast float %7171, %7170
  %7173 = fmul fast float %7164, 5.000000e-01
  %7174 = fmul fast float %7173, %7172
  %7175 = fsub fast float 5.000000e-01, %7174
  br label %7329

; <label>:7176                                    ; preds = %7011
  br i1 %7022, label %7177, label %7244

; <label>:7177                                    ; preds = %7176
  %7178 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7179 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7180 = fmul fast float %7179, %6145
  %7181 = fmul fast float %7178, %6149
  %7182 = fadd fast float %7180, 5.000000e-01
  %7183 = call float @dx.op.unary.f32(i32 27, float %7182)  ; Round_ni(value)
  %7184 = fadd fast float %7181, 5.000000e-01
  %7185 = call float @dx.op.unary.f32(i32 27, float %7184)  ; Round_ni(value)
  %7186 = fsub fast float %7182, %7183
  %7187 = fsub fast float %7184, %7185
  %7188 = fadd fast float %7183, -5.000000e-01
  %7189 = fadd fast float %7185, -5.000000e-01
  %7190 = fmul fast float %7186, 2.000000e+00
  %7191 = fsub fast float 3.000000e+00, %7190
  %7192 = fadd fast float %7190, 1.000000e+00
  %7193 = fsub fast float 2.000000e+00, %7186
  %7194 = bitcast float %7191 to i32
  %7195 = sub nsw i32 2129859010, %7194
  %7196 = bitcast i32 %7195 to float
  %7197 = fmul fast float %7196, %7193
  %7198 = fadd fast float %7197, -1.000000e+00
  %7199 = bitcast float %7192 to i32
  %7200 = sub nsw i32 2129859010, %7199
  %7201 = bitcast i32 %7200 to float
  %7202 = fmul fast float %7201, %7186
  %7203 = fadd fast float %7202, 1.000000e+00
  %7204 = fmul fast float %7187, 2.000000e+00
  %7205 = fsub fast float 3.000000e+00, %7204
  %7206 = fadd fast float %7204, 1.000000e+00
  %7207 = fsub fast float 2.000000e+00, %7187
  %7208 = bitcast float %7205 to i32
  %7209 = sub nsw i32 2129859010, %7208
  %7210 = bitcast i32 %7209 to float
  %7211 = fmul fast float %7210, %7207
  %7212 = fadd fast float %7211, -1.000000e+00
  %7213 = bitcast float %7206 to i32
  %7214 = sub nsw i32 2129859010, %7213
  %7215 = bitcast i32 %7214 to float
  %7216 = fmul fast float %7215, %7187
  %7217 = fadd fast float %7216, 1.000000e+00
  %7218 = fadd fast float %7198, %7188
  %7219 = fmul fast float %7218, %7016
  %7220 = fadd fast float %7212, %7189
  %7221 = fmul fast float %7220, %7017
  %7222 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7219, float %7221, float undef, float undef, i32 0, i32 0, i32 undef, float %7021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7223 = extractvalue %dx.types.ResRet.f32 %7222, 0
  %7224 = fmul fast float %7223, %7191
  %7225 = fadd fast float %7203, %7188
  %7226 = fmul fast float %7225, %7016
  %7227 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7226, float %7221, float undef, float undef, i32 0, i32 0, i32 undef, float %7021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7228 = extractvalue %dx.types.ResRet.f32 %7227, 0
  %7229 = fmul fast float %7228, %7192
  %7230 = fadd fast float %7217, %7189
  %7231 = fmul fast float %7230, %7017
  %7232 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7219, float %7231, float undef, float undef, i32 0, i32 0, i32 undef, float %7021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = fmul fast float %7233, %7191
  %7235 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7226, float %7231, float undef, float undef, i32 0, i32 0, i32 undef, float %7021)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7236 = extractvalue %dx.types.ResRet.f32 %7235, 0
  %7237 = fmul fast float %7236, %7192
  %7238 = fadd fast float %7237, %7234
  %7239 = fmul fast float %7238, %7206
  %7240 = fadd fast float %7229, %7224
  %7241 = fmul fast float %7240, %7205
  %7242 = fadd fast float %7241, %7239
  %7243 = fmul fast float %7242, 6.250000e-02
  br label %7329

; <label>:7244                                    ; preds = %7176
  %7245 = fmul fast float %273, 0x401921FB60000000
  %7246 = call float @dx.op.unary.f32(i32 13, float %7245)  ; Sin(value)
  %7247 = call float @dx.op.unary.f32(i32 12, float %7245)  ; Cos(value)
  %7248 = fsub fast float -0.000000e+00, %7246
  br label %7249

; <label>:7249                                    ; preds = %7298, %7244
  %7250 = phi float [ 0.000000e+00, %7244 ], [ %7293, %7298 ]
  %7251 = phi float [ 0.000000e+00, %7244 ], [ %7295, %7298 ]
  %7252 = phi i32 [ 0, %7244 ], [ %7299, %7298 ]
  %7253 = mul i32 %7252, 2
  %7254 = add i32 0, %7253
  %7255 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7254
  %7256 = load float, float* %7255, align 4
  %7257 = mul i32 %7252, 2
  %7258 = add i32 1, %7257
  %7259 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7258
  %7260 = load float, float* %7259, align 4
  %7261 = fmul fast float %7256, %7247
  %7262 = call float @dx.op.tertiary.f32(i32 46, float %7260, float %7248, float %7261)  ; FMad(a,b,c)
  %7263 = fmul fast float %7256, %7246
  %7264 = call float @dx.op.tertiary.f32(i32 46, float %7260, float %7247, float %7263)  ; FMad(a,b,c)
  %7265 = fmul fast float %7262, %7019
  %7266 = fmul fast float %7264, %7019
  %7267 = fadd fast float %7265, %6145
  %7268 = fadd fast float %7266, %6149
  %7269 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7267, float %7268, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7270 = extractvalue %dx.types.ResRet.f32 %7269, 0
  %7271 = extractvalue %dx.types.ResRet.f32 %7269, 1
  %7272 = extractvalue %dx.types.ResRet.f32 %7269, 2
  %7273 = extractvalue %dx.types.ResRet.f32 %7269, 3
  %7274 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7270, float* %7274, align 4
  %7275 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7271, float* %7275, align 4
  %7276 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7272, float* %7276, align 4
  %7277 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7273, float* %7277, align 4
  %7278 = fsub fast float %7270, %7021
  %7279 = fcmp fast olt float %7278, 0.000000e+00
  %7280 = select i1 %7279, float 0.000000e+00, float 1.000000e+00
  %7281 = fadd fast float %7280, %7250
  %7282 = fmul fast float %7280, %7278
  %7283 = fadd fast float %7282, %7251
  br label %7284

; <label>:7284                                    ; preds = %7284, %7249
  %7285 = phi i32 [ 1, %7249 ], [ %7296, %7284 ]
  %7286 = phi float [ %7283, %7249 ], [ %7295, %7284 ]
  %7287 = phi float [ %7281, %7249 ], [ %7293, %7284 ]
  %7288 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7285
  %7289 = load float, float* %7288, align 4, !tbaa !114, !noalias !104
  %7290 = fsub fast float %7289, %7021
  %7291 = fcmp fast olt float %7290, 0.000000e+00
  %7292 = select i1 %7291, float 0.000000e+00, float 1.000000e+00
  %7293 = fadd fast float %7292, %7287
  %7294 = fmul fast float %7292, %7290
  %7295 = fadd fast float %7294, %7286
  %7296 = add nuw nsw i32 %7285, 1
  %7297 = icmp eq i32 %7296, 4
  br i1 %7297, label %7298, label %7284, !llvm.loop !116

; <label>:7298                                    ; preds = %7284
  %7299 = add nuw nsw i32 %7252, 1
  %7300 = icmp eq i32 %7299, 8
  br i1 %7300, label %7301, label %7249, !llvm.loop !117

; <label>:7301                                    ; preds = %7298
  %7302 = fdiv fast float 1.000000e+00, %7293
  %7303 = fmul fast float %7302, %7295
  %7304 = fdiv fast float 1.000000e+00, %7021
  %7305 = fmul fast float %7303, %7304
  %7306 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7307 = call float @dx.op.binary.f32(i32 35, float %7306, float 0.000000e+00)  ; FMax(a,b)
  %7308 = fmul fast float %7293, 3.125000e-02
  %7309 = call float @dx.op.unary.f32(i32 7, float %7308)  ; Saturate(value)
  %7310 = fmul fast float %7309, 2.000000e+00
  %7311 = fadd fast float %7310, -1.000000e+00
  %7312 = fcmp fast ogt float %7311, 0.000000e+00
  %7313 = fcmp fast olt float %7311, 0.000000e+00
  %7314 = zext i1 %7312 to i32
  %7315 = zext i1 %7313 to i32
  %7316 = sub nsw i32 %7314, %7315
  %7317 = sitofp i32 %7316 to float
  %7318 = fmul fast float %7317, %7311
  %7319 = fsub fast float 1.000000e+00, %7318
  %7320 = fmul fast float %7319, %7319
  %7321 = fmul fast float %7320, %7319
  %7322 = fsub fast float %7319, %7321
  %7323 = fmul fast float %7322, %7307
  %7324 = fsub fast float 1.000000e+00, %7321
  %7325 = fsub fast float %7324, %7323
  %7326 = fmul fast float %7317, 5.000000e-01
  %7327 = fmul fast float %7326, %7325
  %7328 = fsub fast float 5.000000e-01, %7327
  br label %7329

; <label>:7329                                    ; preds = %7301, %7177, %7148, %7024, %7008
  %7330 = phi float [ 1.000000e+00, %7008 ], [ %7090, %7024 ], [ %7175, %7148 ], [ %7243, %7177 ], [ %7328, %7301 ]
  %7331 = fsub fast float %6842, %6675
  %7332 = fmul fast float %7331, %6242
  %7333 = fadd fast float %7332, %6675
  %7334 = fsub fast float %7009, %7333
  %7335 = fmul fast float %7334, %6241
  %7336 = fadd fast float %7335, %7333
  %7337 = fsub fast float %7330, %7336
  %7338 = fmul fast float %7337, %6269
  %7339 = fadd fast float %7338, %7336
  %7340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7341 = extractvalue %dx.types.CBufRet.f32 %7340, 2
  %7342 = fcmp fast ogt float %7341, 0.000000e+00
  br i1 %7342, label %7343, label %7383, !dx.controlflow.hints !121

; <label>:7343                                    ; preds = %7329
  %7344 = fcmp fast ugt float %7341, 0.000000e+00
  br i1 %7344, label %7345, label %7380

; <label>:7345                                    ; preds = %7343
  %7346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.f32 %7346, 0
  %7348 = extractvalue %dx.types.CBufRet.f32 %7346, 1
  %7349 = extractvalue %dx.types.CBufRet.f32 %7346, 2
  %7350 = extractvalue %dx.types.CBufRet.f32 %7346, 3
  %7351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.f32 %7351, 0
  %7353 = extractvalue %dx.types.CBufRet.f32 %7351, 1
  %7354 = extractvalue %dx.types.CBufRet.f32 %7351, 2
  %7355 = extractvalue %dx.types.CBufRet.f32 %7351, 3
  %7356 = extractvalue %dx.types.CBufRet.f32 %7340, 0
  %7357 = extractvalue %dx.types.CBufRet.f32 %7340, 1
  %7358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7358, 0
  %7360 = extractvalue %dx.types.CBufRet.f32 %7358, 1
  %7361 = extractvalue %dx.types.CBufRet.f32 %7358, 2
  %7362 = fadd fast float %7359, %6122
  %7363 = fadd fast float %7360, %6123
  %7364 = fadd fast float %7361, %6124
  %7365 = fmul fast float %7362, %7347
  %7366 = call float @dx.op.tertiary.f32(i32 46, float %7348, float %7363, float %7365)  ; FMad(a,b,c)
  %7367 = call float @dx.op.tertiary.f32(i32 46, float %7349, float %7364, float %7366)  ; FMad(a,b,c)
  %7368 = fadd fast float %7367, %7350
  %7369 = fmul fast float %7362, %7352
  %7370 = call float @dx.op.tertiary.f32(i32 46, float %7353, float %7363, float %7369)  ; FMad(a,b,c)
  %7371 = call float @dx.op.tertiary.f32(i32 46, float %7354, float %7364, float %7370)  ; FMad(a,b,c)
  %7372 = fadd fast float %7371, %7355
  %7373 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7368, float %7372, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7374 = extractvalue %dx.types.ResRet.f32 %7373, 0
  %7375 = fmul fast float %7374, %7357
  %7376 = fadd fast float %7375, %7356
  %7377 = call float @dx.op.unary.f32(i32 7, float %7376)  ; Saturate(value)
  %7378 = fmul fast float %7377, %7341
  %7379 = fsub fast float 1.000000e+00, %7378
  br label %7380

; <label>:7380                                    ; preds = %7345, %7343
  %7381 = phi float [ %7379, %7345 ], [ 1.000000e+00, %7343 ]
  %7382 = fmul fast float %7381, %7339
  br label %7383

; <label>:7383                                    ; preds = %7380, %7329, %6102
  %7384 = phi float [ 1.000000e+00, %6102 ], [ %7382, %7380 ], [ %7339, %7329 ]
  %7385 = call float @dx.op.binary.f32(i32 36, float %7384, float %7384)  ; FMin(a,b)
  %7386 = call float @dx.op.binary.f32(i32 36, float %7384, float %7385)  ; FMin(a,b)
  %7387 = fcmp fast ogt float %7386, 0.000000e+00
  br i1 %7387, label %7388, label %7554, !dx.controlflow.hints !122

; <label>:7388                                    ; preds = %7383
  %7389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7390 = extractvalue %dx.types.CBufRet.f32 %7389, 0
  %7391 = extractvalue %dx.types.CBufRet.f32 %7389, 1
  %7392 = extractvalue %dx.types.CBufRet.f32 %7389, 2
  %7393 = extractvalue %dx.types.CBufRet.f32 %7389, 3
  %7394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7395 = extractvalue %dx.types.CBufRet.f32 %7394, 0
  %7396 = extractvalue %dx.types.CBufRet.f32 %7394, 1
  %7397 = extractvalue %dx.types.CBufRet.f32 %7394, 2
  %7398 = extractvalue %dx.types.CBufRet.f32 %7394, 3
  %7399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7400 = extractvalue %dx.types.CBufRet.f32 %7399, 0
  %7401 = extractvalue %dx.types.CBufRet.f32 %7399, 1
  %7402 = extractvalue %dx.types.CBufRet.f32 %7399, 2
  %7403 = extractvalue %dx.types.CBufRet.f32 %7399, 3
  %7404 = fmul fast float %7390, %6122
  %7405 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %7391, float %7404)  ; FMad(a,b,c)
  %7406 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %7392, float %7405)  ; FMad(a,b,c)
  %7407 = fadd fast float %7406, %7393
  %7408 = fmul fast float %7395, %6122
  %7409 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %7396, float %7408)  ; FMad(a,b,c)
  %7410 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %7397, float %7409)  ; FMad(a,b,c)
  %7411 = fadd fast float %7410, %7398
  %7412 = fmul fast float %7400, %6122
  %7413 = call float @dx.op.tertiary.f32(i32 46, float %6123, float %7401, float %7412)  ; FMad(a,b,c)
  %7414 = call float @dx.op.tertiary.f32(i32 46, float %6124, float %7402, float %7413)  ; FMad(a,b,c)
  %7415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7416 = extractvalue %dx.types.CBufRet.f32 %7415, 0
  %7417 = extractvalue %dx.types.CBufRet.f32 %7415, 1
  %7418 = extractvalue %dx.types.CBufRet.f32 %7415, 3
  %7419 = fmul fast float %7418, %7407
  %7420 = fmul fast float %7418, %7411
  %7421 = fadd fast float %7419, %7416
  %7422 = fadd fast float %7420, %7417
  %7423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7424 = extractvalue %dx.types.CBufRet.f32 %7423, 0
  %7425 = extractvalue %dx.types.CBufRet.f32 %7423, 1
  %7426 = fsub fast float %7421, %7424
  %7427 = fsub fast float %7422, %7425
  %7428 = fcmp fast olt float %7426, 0.000000e+00
  %7429 = fcmp fast olt float %7427, 0.000000e+00
  %7430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.CBufRet.f32 %7430, 1
  %7433 = extractvalue %dx.types.CBufRet.f32 %7430, 2
  %7434 = extractvalue %dx.types.CBufRet.f32 %7430, 3
  %7435 = select i1 %7428, float %7431, float %7433
  %7436 = select i1 %7429, float %7432, float %7434
  %7437 = fmul fast float %7435, %7426
  %7438 = fmul fast float %7436, %7427
  %7439 = call float @dx.op.unary.f32(i32 6, float %7437)  ; FAbs(value)
  %7440 = call float @dx.op.unary.f32(i32 6, float %7438)  ; FAbs(value)
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 0
  %7443 = call float @dx.op.binary.f32(i32 35, float %7439, float %7440)  ; FMax(a,b)
  %7444 = fsub fast float %7442, %7443
  %7445 = call float @dx.op.unary.f32(i32 7, float %7444)  ; Saturate(value)
  %7446 = fcmp fast ogt float %7445, 0.000000e+00
  br i1 %7446, label %7447, label %7488, !dx.controlflow.hints !123

; <label>:7447                                    ; preds = %7388
  %7448 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7421, float %7422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7449 = extractvalue %dx.types.ResRet.f32 %7448, 1
  %7450 = fcmp fast ogt float %7449, 0.000000e+00
  br i1 %7450, label %7451, label %7483

; <label>:7451                                    ; preds = %7447
  %7452 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7421, float %7422, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7453 = extractvalue %dx.types.ResRet.f32 %7452, 0
  %7454 = extractvalue %dx.types.ResRet.f32 %7452, 1
  %7455 = extractvalue %dx.types.ResRet.f32 %7452, 2
  %7456 = extractvalue %dx.types.ResRet.f32 %7452, 3
  %7457 = fsub fast float 1.000000e+00, %7403
  %7458 = fsub fast float %7457, %7414
  %7459 = fmul fast float %7458, 0x400921FB60000000
  %7460 = fadd fast float %7459, 0x3FF921FB60000000
  %7461 = call float @dx.op.unary.f32(i32 13, float %7460)  ; Sin(value)
  %7462 = fadd fast float %7461, -1.000000e+00
  %7463 = fmul fast float %7462, 0x3FD45F3060000000
  %7464 = fmul fast float %7458, 0x401921FB60000000
  %7465 = fadd fast float %7464, 0x400921FB60000000
  %7466 = call float @dx.op.unary.f32(i32 13, float %7465)  ; Sin(value)
  %7467 = fadd fast float %7466, 0x3E7777A5C0000000
  %7468 = fmul fast float %7467, 0x3FC45F3060000000
  %7469 = fmul fast float %7458, 0x4022D97C80000000
  %7470 = fadd fast float %7469, 0x4012D97C80000000
  %7471 = call float @dx.op.unary.f32(i32 13, float %7470)  ; Sin(value)
  %7472 = fadd fast float %7471, 1.000000e+00
  %7473 = fmul fast float %7472, 0x3FBB2995E0000000
  %7474 = fmul fast float %7458, 0x402921FB60000000
  %7475 = fadd fast float %7474, 0x401921FB60000000
  %7476 = call float @dx.op.unary.f32(i32 13, float %7475)  ; Sin(value)
  %7477 = fadd fast float %7476, 0xBE8777A5C0000000
  %7478 = fmul fast float %7477, 0x3FB45F3060000000
  %7479 = call float @dx.op.dot4.f32(i32 56, float %7453, float %7454, float %7455, float %7456, float %7463, float %7468, float %7473, float %7478)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7480 = fmul fast float %7479, 0xBFF7154760000000
  %7481 = call float @dx.op.unary.f32(i32 21, float %7480)  ; Exp(value)
  %7482 = call float @dx.op.unary.f32(i32 7, float %7481)  ; Saturate(value)
  br label %7483

; <label>:7483                                    ; preds = %7451, %7447
  %7484 = phi float [ %7482, %7451 ], [ 1.000000e+00, %7447 ]
  %7485 = fadd fast float %7484, -1.000000e+00
  %7486 = fmul fast float %7485, %7445
  %7487 = fadd fast float %7486, 1.000000e+00
  br label %7488

; <label>:7488                                    ; preds = %7483, %7388
  %7489 = phi float [ %7487, %7483 ], [ 1.000000e+00, %7388 ]
  %7490 = fmul fast float %7489, %7384
  %7491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7492 = extractvalue %dx.types.CBufRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.CBufRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.CBufRet.f32 %7491, 2
  %7495 = fadd fast float %7492, %188
  %7496 = fadd fast float %7493, %189
  %7497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7497, 1
  %7499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7500 = extractvalue %dx.types.CBufRet.f32 %7499, 0
  %7501 = extractvalue %dx.types.CBufRet.f32 %7499, 1
  %7502 = extractvalue %dx.types.CBufRet.f32 %7499, 2
  %7503 = fsub fast float -0.000000e+00, %7495
  %7504 = fsub fast float -0.000000e+00, %7496
  %7505 = fsub fast float -0.000000e+00, %190
  %7506 = fsub fast float %7505, %7494
  %7507 = fadd fast float %7506, %7498
  %7508 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7503, float %7504, float %7507)  ; Dot3(ax,ay,az,bx,by,bz)
  %7509 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7500, float %7501, float %7502)  ; Dot3(ax,ay,az,bx,by,bz)
  %7510 = fdiv fast float 1.000000e+00, %7509
  %7511 = fmul fast float %7510, %7508
  %7512 = fmul fast float %7500, %7511
  %7513 = fmul fast float %7501, %7511
  %7514 = fadd fast float %7512, %7495
  %7515 = fadd fast float %7513, %7496
  %7516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7517 = extractvalue %dx.types.CBufRet.f32 %7516, 0
  %7518 = extractvalue %dx.types.CBufRet.f32 %7516, 1
  %7519 = fsub fast float %7514, %7517
  %7520 = fsub fast float %7515, %7518
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 3
  %7524 = fmul fast float %7519, %7522
  %7525 = fmul fast float %7520, %7523
  %7526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7527 = extractvalue %dx.types.CBufRet.i32 %7526, 3
  %7528 = icmp eq i32 %7527, 0
  br i1 %7528, label %7534, label %7529

; <label>:7529                                    ; preds = %7488
  %7530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7524, float %7525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7531 = extractvalue %dx.types.ResRet.f32 %7530, 0
  %7532 = extractvalue %dx.types.ResRet.f32 %7530, 1
  %7533 = extractvalue %dx.types.ResRet.f32 %7530, 2
  br label %7539

; <label>:7534                                    ; preds = %7488
  %7535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7524, float %7525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7536 = extractvalue %dx.types.ResRet.f32 %7535, 0
  %7537 = extractvalue %dx.types.ResRet.f32 %7535, 1
  %7538 = extractvalue %dx.types.ResRet.f32 %7535, 2
  br label %7539

; <label>:7539                                    ; preds = %7534, %7529
  %7540 = phi float [ %7531, %7529 ], [ %7536, %7534 ]
  %7541 = phi float [ %7532, %7529 ], [ %7537, %7534 ]
  %7542 = phi float [ %7533, %7529 ], [ %7538, %7534 ]
  %7543 = extractvalue %dx.types.CBufRet.f32 %7497, 2
  %7544 = fmul fast float %7543, %7540
  %7545 = extractvalue %dx.types.CBufRet.f32 %7497, 0
  %7546 = fsub fast float %7511, %7545
  %7547 = fsub fast float %7546, %7544
  %7548 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7547)  ; FMax(a,b)
  %7549 = fmul fast float %7548, %7541
  %7550 = call float @dx.op.binary.f32(i32 36, float %7542, float %7549)  ; FMin(a,b)
  %7551 = fmul fast float %7550, 0xBFF7154760000000
  %7552 = call float @dx.op.unary.f32(i32 21, float %7551)  ; Exp(value)
  %7553 = fmul fast float %7490, %7552
  br label %7554

; <label>:7554                                    ; preds = %7539, %7383
  %7555 = phi float [ %7553, %7539 ], [ %7384, %7383 ]
  %7556 = call float @dx.op.binary.f32(i32 36, float %7555, float %7555)  ; FMin(a,b)
  %7557 = call float @dx.op.binary.f32(i32 36, float %7555, float %7556)  ; FMin(a,b)
  %7558 = fcmp fast ogt float %7557, 0.000000e+00
  br i1 %7558, label %7559, label %7785, !dx.controlflow.hints !124

; <label>:7559                                    ; preds = %7554
  %7560 = bitcast i32 %5274 to float
  %7561 = fmul fast float %7555, %6114
  %7562 = fmul fast float %7555, %6115
  %7563 = fmul fast float %7555, %6116
  %7564 = fsub fast float %6103, %5236
  %7565 = fsub fast float %6104, %5235
  %7566 = fsub fast float %6105, %5234
  %7567 = call float @dx.op.dot3.f32(i32 55, float %7564, float %7565, float %7566, float %7564, float %7565, float %7566)  ; Dot3(ax,ay,az,bx,by,bz)
  %7568 = call float @dx.op.unary.f32(i32 25, float %7567)  ; Rsqrt(value)
  %7569 = fmul fast float %7568, %7564
  %7570 = fmul fast float %7568, %7565
  %7571 = fmul fast float %7568, %7566
  %7572 = call float @dx.op.dot3.f32(i32 55, float %6103, float %6104, float %6105, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %7573 = call float @dx.op.dot3.f32(i32 55, float %5233, float %5232, float %5231, float %7569, float %7570, float %7571)  ; Dot3(ax,ay,az,bx,by,bz)
  %7574 = call float @dx.op.unary.f32(i32 7, float %7572)  ; Saturate(value)
  %7575 = fmul fast float %7574, %7574
  %7576 = fmul fast float %7575, %7560
  %7577 = call float @dx.op.unary.f32(i32 7, float %7576)  ; Saturate(value)
  %7578 = fmul fast float %7577, %7574
  %7579 = call float @dx.op.dot3.f32(i32 55, float %5240, float %5241, float %5242, float %7569, float %7570, float %7571)  ; Dot3(ax,ay,az,bx,by,bz)
  %7580 = fmul fast float %7579, %7579
  %7581 = call float @dx.op.unary.f32(i32 6, float %7572)  ; FAbs(value)
  %7582 = fsub fast float 1.000000e+00, %5268
  %7583 = fmul fast float %5250, %5250
  %7584 = fmul fast float %7583, %7582
  %7585 = fadd fast float %7584, %5268
  %7586 = bitcast float %7585 to i32
  %7587 = ashr i32 %7586, 1
  %7588 = add nsw i32 %7587, 532487669
  %7589 = bitcast i32 %7588 to float
  %7590 = fadd fast float %7589, %5250
  %7591 = fmul fast float %5268, %7580
  %7592 = fsub fast float 1.000000e+00, %7580
  %7593 = fadd fast float %7592, %7591
  %7594 = fmul fast float %7581, %7581
  %7595 = fmul fast float %7594, %7582
  %7596 = fadd fast float %7595, %5268
  %7597 = bitcast float %7596 to i32
  %7598 = ashr i32 %7597, 1
  %7599 = add nsw i32 %7598, 532487669
  %7600 = bitcast i32 %7599 to float
  %7601 = fadd fast float %7600, %7581
  %7602 = fmul fast float %7593, %7593
  %7603 = fmul fast float %7602, %7590
  %7604 = fmul fast float %7603, %7601
  %7605 = fdiv fast float 0x3FF0A00000000000, %7604
  %7606 = fmul fast float %7605, %5268
  %7607 = call float @dx.op.unary.f32(i32 6, float %7573)  ; FAbs(value)
  %7608 = fsub fast float 1.000000e+00, %7607
  %7609 = bitcast float %7608 to i32
  %7610 = sitofp i32 %7609 to float
  %7611 = fmul fast float %7610, 5.000000e+00
  %7612 = fadd fast float %7611, 0xC1EFBF8940000000
  %7613 = fptosi float %7612 to i32
  %7614 = bitcast i32 %7613 to float
  %7615 = fsub fast float 1.000000e+00, %5243
  %7616 = fsub fast float 1.000000e+00, %5244
  %7617 = fsub fast float 1.000000e+00, %5248
  %7618 = fmul fast float %7614, %7615
  %7619 = fmul fast float %7614, %7616
  %7620 = fmul fast float %7614, %7617
  %7621 = fadd fast float %7618, %5243
  %7622 = fadd fast float %7619, %5244
  %7623 = fadd fast float %7620, %5248
  br i1 %5532, label %7624, label %7647

; <label>:7624                                    ; preds = %7559
  %7625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4268, float %7607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7626 = extractvalue %dx.types.ResRet.f32 %7625, 0
  %7627 = extractvalue %dx.types.ResRet.f32 %7625, 1
  %7628 = extractvalue %dx.types.ResRet.f32 %7625, 2
  %7629 = fadd fast float %7626, -5.000000e-01
  %7630 = fadd fast float %7627, -5.000000e-01
  %7631 = fadd fast float %7628, -5.000000e-01
  %7632 = fmul fast float %5243, 4.000000e+00
  %7633 = fmul fast float %7632, %7615
  %7634 = fmul fast float %7633, %7629
  %7635 = fmul fast float %5244, 4.000000e+00
  %7636 = fmul fast float %7635, %7616
  %7637 = fmul fast float %7636, %7630
  %7638 = fmul fast float %5248, 4.000000e+00
  %7639 = fmul fast float %7638, %7617
  %7640 = fmul fast float %7639, %7631
  %7641 = fadd fast float %7634, %7621
  %7642 = fadd fast float %7637, %7622
  %7643 = fadd fast float %7640, %7623
  %7644 = call float @dx.op.unary.f32(i32 7, float %7641)  ; Saturate(value)
  %7645 = call float @dx.op.unary.f32(i32 7, float %7642)  ; Saturate(value)
  %7646 = call float @dx.op.unary.f32(i32 7, float %7643)  ; Saturate(value)
  br label %7647

; <label>:7647                                    ; preds = %7624, %7559
  %7648 = phi float [ %7644, %7624 ], [ %7621, %7559 ]
  %7649 = phi float [ %7645, %7624 ], [ %7622, %7559 ]
  %7650 = phi float [ %7646, %7624 ], [ %7623, %7559 ]
  %7651 = fmul fast float %7572, 9.843750e-01
  %7652 = fadd fast float %7651, 7.812500e-03
  %7653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %7652, float %5522, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7654 = extractvalue %dx.types.ResRet.f32 %7653, 2
  %7655 = extractvalue %dx.types.ResRet.f32 %7653, 3
  %7656 = fmul fast float %7654, %5243
  %7657 = fmul fast float %7654, %5244
  %7658 = fmul fast float %7654, %5248
  %7659 = fadd fast float %7656, %7655
  %7660 = fadd fast float %7657, %7655
  %7661 = fadd fast float %7658, %7655
  br i1 %5532, label %7662, label %7685

; <label>:7662                                    ; preds = %7647
  %7663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4268, float %7572, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7664 = extractvalue %dx.types.ResRet.f32 %7663, 0
  %7665 = extractvalue %dx.types.ResRet.f32 %7663, 1
  %7666 = extractvalue %dx.types.ResRet.f32 %7663, 2
  %7667 = fadd fast float %7664, -5.000000e-01
  %7668 = fadd fast float %7665, -5.000000e-01
  %7669 = fadd fast float %7666, -5.000000e-01
  %7670 = fmul fast float %5243, 4.000000e+00
  %7671 = fmul fast float %7670, %7615
  %7672 = fmul fast float %7671, %7667
  %7673 = fmul fast float %5244, 4.000000e+00
  %7674 = fmul fast float %7673, %7616
  %7675 = fmul fast float %7674, %7668
  %7676 = fmul fast float %5248, 4.000000e+00
  %7677 = fmul fast float %7676, %7617
  %7678 = fmul fast float %7677, %7669
  %7679 = fadd fast float %7672, %7659
  %7680 = fadd fast float %7675, %7660
  %7681 = fadd fast float %7678, %7661
  %7682 = call float @dx.op.unary.f32(i32 7, float %7679)  ; Saturate(value)
  %7683 = call float @dx.op.unary.f32(i32 7, float %7680)  ; Saturate(value)
  %7684 = call float @dx.op.unary.f32(i32 7, float %7681)  ; Saturate(value)
  br label %7685

; <label>:7685                                    ; preds = %7662, %7647
  %7686 = phi float [ %7682, %7662 ], [ %7659, %7647 ]
  %7687 = phi float [ %7683, %7662 ], [ %7660, %7647 ]
  %7688 = phi float [ %7684, %7662 ], [ %7661, %7647 ]
  %7689 = call float @dx.op.binary.f32(i32 35, float %7687, float %7688)  ; FMax(a,b)
  %7690 = call float @dx.op.binary.f32(i32 35, float %7686, float %7689)  ; FMax(a,b)
  %7691 = fsub fast float 1.000000e+00, %7690
  %7692 = fsub fast float -0.000000e+00, %5240
  %7693 = fsub fast float -0.000000e+00, %5241
  %7694 = fsub fast float -0.000000e+00, %5242
  %7695 = call float @dx.op.dot3.f32(i32 55, float %6103, float %6104, float %6105, float %7692, float %7693, float %7694)  ; Dot3(ax,ay,az,bx,by,bz)
  %7696 = call float @dx.op.unary.f32(i32 7, float %7695)  ; Saturate(value)
  %7697 = fmul fast float %7696, 9.843750e-01
  %7698 = fadd fast float %7697, 7.812500e-03
  %7699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %7698, float %5522, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7700 = extractvalue %dx.types.ResRet.f32 %7699, 2
  %7701 = extractvalue %dx.types.ResRet.f32 %7699, 3
  %7702 = fmul fast float %7700, %5243
  %7703 = fmul fast float %7700, %5244
  %7704 = fmul fast float %7700, %5248
  %7705 = fadd fast float %7702, %7701
  %7706 = fadd fast float %7703, %7701
  %7707 = fadd fast float %7704, %7701
  br i1 %5532, label %7708, label %7731

; <label>:7708                                    ; preds = %7685
  %7709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4268, float %7696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7710 = extractvalue %dx.types.ResRet.f32 %7709, 0
  %7711 = extractvalue %dx.types.ResRet.f32 %7709, 1
  %7712 = extractvalue %dx.types.ResRet.f32 %7709, 2
  %7713 = fadd fast float %7710, -5.000000e-01
  %7714 = fadd fast float %7711, -5.000000e-01
  %7715 = fadd fast float %7712, -5.000000e-01
  %7716 = fmul fast float %5243, 4.000000e+00
  %7717 = fmul fast float %7716, %7615
  %7718 = fmul fast float %7717, %7713
  %7719 = fmul fast float %5244, 4.000000e+00
  %7720 = fmul fast float %7719, %7616
  %7721 = fmul fast float %7720, %7714
  %7722 = fmul fast float %5248, 4.000000e+00
  %7723 = fmul fast float %7722, %7617
  %7724 = fmul fast float %7723, %7715
  %7725 = fadd fast float %7718, %7705
  %7726 = fadd fast float %7721, %7706
  %7727 = fadd fast float %7724, %7707
  %7728 = call float @dx.op.unary.f32(i32 7, float %7725)  ; Saturate(value)
  %7729 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7730 = call float @dx.op.unary.f32(i32 7, float %7727)  ; Saturate(value)
  br label %7731

; <label>:7731                                    ; preds = %7708, %7685
  %7732 = phi float [ %7728, %7708 ], [ %7705, %7685 ]
  %7733 = phi float [ %7729, %7708 ], [ %7706, %7685 ]
  %7734 = phi float [ %7730, %7708 ], [ %7707, %7685 ]
  %7735 = call float @dx.op.binary.f32(i32 35, float %7733, float %7734)  ; FMax(a,b)
  %7736 = call float @dx.op.binary.f32(i32 35, float %7732, float %7735)  ; FMax(a,b)
  %7737 = fsub fast float 1.000000e+00, %7736
  %7738 = fmul fast float %7737, %7696
  %7739 = fmul fast float %7738, %4358
  %7740 = fmul fast float %7738, %4359
  %7741 = fmul fast float %7738, %4360
  %7742 = fmul fast float %7648, %7606
  %7743 = fmul fast float %7649, %7606
  %7744 = fmul fast float %7650, %7606
  %7745 = fsub fast float 1.000000e+00, %7573
  %7746 = bitcast float %7745 to i32
  %7747 = sitofp i32 %7746 to float
  %7748 = fmul fast float %7747, 5.000000e+00
  %7749 = fadd fast float %7748, 0xC1EFBF8940000000
  %7750 = fptosi float %7749 to i32
  %7751 = bitcast i32 %7750 to float
  %7752 = fmul fast float %7751, %4269
  %7753 = fmul fast float %7691, %7752
  %7754 = fmul fast float %7753, %6043
  %7755 = fmul fast float %7753, %6044
  %7756 = fmul fast float %7753, %6045
  %7757 = fmul fast float %7691, %7578
  %7758 = fadd fast float %7754, %7742
  %7759 = fadd fast float %7755, %7743
  %7760 = fadd fast float %7756, %7744
  %7761 = fadd fast float %7739, %7757
  %7762 = fadd fast float %7740, %7757
  %7763 = fadd fast float %7741, %7757
  %7764 = fmul fast float %7761, %7561
  %7765 = fmul fast float %7762, %7562
  %7766 = fmul fast float %7763, %7563
  %7767 = fmul fast float %7578, %7561
  %7768 = fmul fast float %7767, %7758
  %7769 = fmul fast float %7578, %7562
  %7770 = fmul fast float %7769, %7759
  %7771 = fmul fast float %7578, %7563
  %7772 = fmul fast float %7771, %7760
  %7773 = fadd fast float %7764, %6093
  %7774 = fmul fast float %7773, %4265
  %7775 = fadd fast float %7765, %6095
  %7776 = fmul fast float %7775, %4265
  %7777 = fadd fast float %7766, %6097
  %7778 = fmul fast float %7777, %4265
  %7779 = fadd fast float %7768, %6076
  %7780 = fmul fast float %7779, %4265
  %7781 = fadd fast float %7770, %6079
  %7782 = fmul fast float %7781, %4265
  %7783 = fadd fast float %7772, %6082
  %7784 = fmul fast float %7783, %4265
  br label %7785

; <label>:7785                                    ; preds = %7731, %7554, %6026
  %7786 = phi float [ %6077, %6026 ], [ %6077, %7554 ], [ %7780, %7731 ]
  %7787 = phi float [ %6080, %6026 ], [ %6080, %7554 ], [ %7782, %7731 ]
  %7788 = phi float [ %6083, %6026 ], [ %6083, %7554 ], [ %7784, %7731 ]
  %7789 = phi float [ %6094, %6026 ], [ %6094, %7554 ], [ %7774, %7731 ]
  %7790 = phi float [ %6096, %6026 ], [ %6096, %7554 ], [ %7776, %7731 ]
  %7791 = phi float [ %6098, %6026 ], [ %6098, %7554 ], [ %7778, %7731 ]
  %7792 = fmul fast float %4265, %6052
  %7793 = fsub fast float -0.000000e+00, %7792
  %7794 = fmul fast float %4265, %6053
  %7795 = fsub fast float -0.000000e+00, %7794
  %7796 = fmul fast float %4265, %6054
  %7797 = fsub fast float -0.000000e+00, %7796
  %7798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7799 = extractvalue %dx.types.CBufRet.f32 %7798, 0
  %7800 = fmul fast float %7799, %6058
  %7801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7802 = extractvalue %dx.types.CBufRet.f32 %7801, 3
  %7803 = fsub fast float 1.000000e+00, %4272
  %7804 = call float @dx.op.unary.f32(i32 7, float %7803)  ; Saturate(value)
  %7805 = fadd fast float %7791, %4271
  %7806 = fmul fast float %7805, %4272
  %7807 = fmul fast float %7804, %7802
  %7808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.f32 %7808, 3
  %7810 = fmul fast float %7789, %5237
  %7811 = fmul fast float %7790, %5238
  %7812 = fmul fast float %7791, %5239
  %7813 = fcmp fast ogt float %96, %223
  %7814 = and i1 %7813, %4377
  %7815 = or i1 %4456, %7814
  %7816 = icmp eq i32 %4376, 2
  %7817 = fcmp fast ole float %96, %223
  %7818 = and i1 %7817, %7816
  %7819 = or i1 %7818, %7815
  br i1 %7814, label %7820, label %8077

; <label>:7820                                    ; preds = %7785
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7823 = extractvalue %dx.types.CBufRet.f32 %7821, 3
  %7824 = fmul fast float %7822, %109
  %7825 = fmul fast float %7823, %110
  %7826 = call float @dx.op.unary.f32(i32 7, float %7824)  ; Saturate(value)
  %7827 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7828 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7826, float %7827, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7829 = extractvalue %dx.types.ResRet.f32 %7828, 0
  %7830 = extractvalue %dx.types.ResRet.f32 %7828, 1
  %7831 = extractvalue %dx.types.ResRet.f32 %7828, 2
  %7832 = extractvalue %dx.types.ResRet.f32 %7828, 3
  %7833 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7826, float %7827, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7834 = extractvalue %dx.types.ResRet.f32 %7833, 0
  %7835 = extractvalue %dx.types.ResRet.f32 %7833, 1
  %7836 = extractvalue %dx.types.ResRet.f32 %7833, 2
  %7837 = extractvalue %dx.types.ResRet.f32 %7833, 3
  %7838 = call float @dx.op.binary.f32(i32 35, float %7830, float %7831)  ; FMax(a,b)
  %7839 = call float @dx.op.binary.f32(i32 35, float %7829, float %7838)  ; FMax(a,b)
  %7840 = call float @dx.op.binary.f32(i32 35, float %7839, float %7832)  ; FMax(a,b)
  %7841 = call float @dx.op.binary.f32(i32 36, float %7835, float %7836)  ; FMin(a,b)
  %7842 = call float @dx.op.binary.f32(i32 36, float %7834, float %7841)  ; FMin(a,b)
  %7843 = call float @dx.op.binary.f32(i32 36, float %7842, float %7837)  ; FMin(a,b)
  %7844 = fmul fast float %7840, 2.550000e+02
  %7845 = fadd fast float %7844, 0x3F70101020000000
  %7846 = fptoui float %7845 to i32
  %7847 = fmul fast float %7843, 2.550000e+02
  %7848 = fadd fast float %7847, 0x3F70101020000000
  %7849 = fptoui float %7848 to i32
  %7850 = icmp ult i32 %7846, %7849
  br i1 %7850, label %7851, label %8019

; <label>:7851                                    ; preds = %7820
  %7852 = fcmp fast ogt float %95, 9.843750e-01
  %7853 = fadd fast float %96, -4.000000e+00
  %7854 = select i1 %7852, float -4.000000e+00, float %7853
  %7855 = call float @dx.op.binary.f32(i32 35, float %7854, float 0.000000e+00)  ; FMax(a,b)
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 0
  %7858 = fadd fast float %7857, %7855
  %7859 = extractvalue %dx.types.CBufRet.f32 %7856, 2
  %7860 = fmul fast float %7858, %7859
  %7861 = call float @dx.op.unary.f32(i32 23, float %7860)  ; Log(value)
  %7862 = extractvalue %dx.types.CBufRet.f32 %7856, 3
  %7863 = fmul fast float %7862, %7861
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 2
  %7866 = fmul fast float %7863, %7865
  %7867 = call float @dx.op.unary.f32(i32 7, float %7866)  ; Saturate(value)
  %7868 = uitofp i32 %7846 to float
  %7869 = uitofp i32 %7849 to float
  %7870 = fadd fast float %7868, 5.000000e-01
  %7871 = fadd fast float %7869, 5.000000e-01
  %7872 = fmul fast float %7865, %7870
  %7873 = fmul fast float %7865, %7871
  %7874 = fadd fast float %7872, 0x3F0FFB4800000000
  %7875 = fadd fast float %7873, 0xBF0FFB4800000000
  %7876 = call float @dx.op.binary.f32(i32 35, float %7867, float %7874)  ; FMax(a,b)
  %7877 = call float @dx.op.binary.f32(i32 36, float %7876, float %7875)  ; FMin(a,b)
  %7878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7879 = extractvalue %dx.types.CBufRet.f32 %7878, 1
  %7880 = extractvalue %dx.types.CBufRet.f32 %7878, 2
  %7881 = extractvalue %dx.types.CBufRet.f32 %7878, 0
  %7882 = fmul fast float %7879, %7877
  %7883 = fadd fast float %7881, %7882
  %7884 = fadd fast float %7881, %7880
  %7885 = fsub fast float %7879, %7880
  %7886 = fadd fast float %7885, %7881
  %7887 = call float @dx.op.binary.f32(i32 35, float %7883, float %7884)  ; FMax(a,b)
  %7888 = call float @dx.op.binary.f32(i32 36, float %7887, float %7886)  ; FMin(a,b)
  %7889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %7826, float %7827, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7890 = extractvalue %dx.types.ResRet.f32 %7889, 0
  %7891 = extractvalue %dx.types.ResRet.f32 %7889, 1
  %7892 = extractvalue %dx.types.ResRet.f32 %7889, 2
  %7893 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7894 = extractvalue %dx.types.CBufRet.i32 %7893, 0
  %7895 = extractvalue %dx.types.CBufRet.i32 %7893, 1
  %7896 = uitofp i32 %7894 to float
  %7897 = uitofp i32 %7895 to float
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 0
  %7900 = extractvalue %dx.types.CBufRet.f32 %7898, 1
  %7901 = fmul fast float %7896, %7826
  %7902 = fmul fast float %7897, %7827
  %7903 = fadd fast float %7901, -5.000000e-01
  %7904 = fadd fast float %7902, -5.000000e-01
  %7905 = call float @dx.op.unary.f32(i32 22, float %7903)  ; Frc(value)
  %7906 = call float @dx.op.unary.f32(i32 22, float %7904)  ; Frc(value)
  %7907 = fmul fast float %7905, %7905
  %7908 = fmul fast float %7907, %7905
  %7909 = fsub fast float 3.000000e+00, %7905
  %7910 = fmul fast float %7907, %7909
  %7911 = fmul fast float %7905, 3.000000e+00
  %7912 = fmul fast float %7908, 3.000000e+00
  %7913 = fmul fast float %7907, 6.000000e+00
  %7914 = fsub fast float %7912, %7913
  %7915 = fadd fast float %7914, 4.000000e+00
  %7916 = fmul fast float %7915, 0x3FC5555560000000
  %7917 = fmul fast float %7908, -3.000000e+00
  %7918 = fadd fast float %7907, %7905
  %7919 = fmul fast float %7918, 3.000000e+00
  %7920 = fadd fast float %7917, 1.000000e+00
  %7921 = fadd fast float %7920, %7919
  %7922 = fmul fast float %7908, 0x3FC5555560000000
  %7923 = fmul fast float %7906, %7906
  %7924 = fmul fast float %7923, %7906
  %7925 = fsub fast float 3.000000e+00, %7906
  %7926 = fmul fast float %7923, %7925
  %7927 = fmul fast float %7906, 3.000000e+00
  %7928 = fmul fast float %7924, 3.000000e+00
  %7929 = fmul fast float %7923, 6.000000e+00
  %7930 = fsub fast float %7928, %7929
  %7931 = fadd fast float %7930, 4.000000e+00
  %7932 = fmul fast float %7931, 0x3FC5555560000000
  %7933 = fmul fast float %7924, -3.000000e+00
  %7934 = fadd fast float %7923, %7906
  %7935 = fmul fast float %7934, 3.000000e+00
  %7936 = fadd fast float %7933, 1.000000e+00
  %7937 = fadd fast float %7936, %7935
  %7938 = fmul fast float %7924, 0x3FC5555560000000
  %7939 = fadd fast float %7905, 1.000000e+00
  %7940 = fsub fast float 1.000000e+00, %7911
  %7941 = fadd fast float %7940, %7910
  %7942 = fadd fast float %7941, %7915
  %7943 = fmul fast float %7942, 0x3FC5555560000000
  %7944 = fdiv fast float %7916, %7943
  %7945 = fsub fast float %7939, %7944
  %7946 = fsub fast float 1.000000e+00, %7905
  %7947 = fadd fast float %7921, %7908
  %7948 = fmul fast float %7947, 0x3FC5555560000000
  %7949 = fdiv fast float %7922, %7948
  %7950 = fadd fast float %7946, %7949
  %7951 = fadd fast float %7906, 1.000000e+00
  %7952 = fsub fast float 1.000000e+00, %7927
  %7953 = fadd fast float %7952, %7926
  %7954 = fadd fast float %7953, %7931
  %7955 = fmul fast float %7954, 0x3FC5555560000000
  %7956 = fdiv fast float %7932, %7955
  %7957 = fsub fast float %7951, %7956
  %7958 = fsub fast float 1.000000e+00, %7906
  %7959 = fadd fast float %7937, %7924
  %7960 = fmul fast float %7959, 0x3FC5555560000000
  %7961 = fdiv fast float %7938, %7960
  %7962 = fadd fast float %7961, %7958
  %7963 = fmul fast float %7945, %7899
  %7964 = fsub fast float %7826, %7963
  %7965 = fmul fast float %7950, %7899
  %7966 = fadd fast float %7965, %7826
  %7967 = fmul fast float %7962, %7900
  %7968 = fadd fast float %7967, %7827
  %7969 = fmul fast float %7957, %7900
  %7970 = fsub fast float %7827, %7969
  %7971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7964, float %7970, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7972 = extractvalue %dx.types.ResRet.f32 %7971, 0
  %7973 = extractvalue %dx.types.ResRet.f32 %7971, 1
  %7974 = extractvalue %dx.types.ResRet.f32 %7971, 2
  %7975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7966, float %7970, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7976 = extractvalue %dx.types.ResRet.f32 %7975, 0
  %7977 = extractvalue %dx.types.ResRet.f32 %7975, 1
  %7978 = extractvalue %dx.types.ResRet.f32 %7975, 2
  %7979 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7964, float %7968, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7980 = extractvalue %dx.types.ResRet.f32 %7979, 0
  %7981 = extractvalue %dx.types.ResRet.f32 %7979, 1
  %7982 = extractvalue %dx.types.ResRet.f32 %7979, 2
  %7983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7966, float %7968, float %7888, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7984 = extractvalue %dx.types.ResRet.f32 %7983, 0
  %7985 = extractvalue %dx.types.ResRet.f32 %7983, 1
  %7986 = extractvalue %dx.types.ResRet.f32 %7983, 2
  %7987 = fsub fast float %7980, %7972
  %7988 = fsub fast float %7981, %7973
  %7989 = fsub fast float %7982, %7974
  %7990 = fmul fast float %7987, %7960
  %7991 = fmul fast float %7988, %7960
  %7992 = fmul fast float %7989, %7960
  %7993 = fadd fast float %7990, %7972
  %7994 = fadd fast float %7991, %7973
  %7995 = fadd fast float %7992, %7974
  %7996 = fsub fast float %7984, %7976
  %7997 = fsub fast float %7985, %7977
  %7998 = fsub fast float %7986, %7978
  %7999 = fmul fast float %7996, %7960
  %8000 = fmul fast float %7997, %7960
  %8001 = fmul fast float %7998, %7960
  %8002 = fsub fast float %7976, %7993
  %8003 = fadd fast float %8002, %7999
  %8004 = fsub fast float %7977, %7994
  %8005 = fadd fast float %8004, %8000
  %8006 = fsub fast float %7978, %7995
  %8007 = fadd fast float %8006, %8001
  %8008 = fmul fast float %8003, %7948
  %8009 = fmul fast float %8005, %7948
  %8010 = fmul fast float %8007, %7948
  %8011 = fadd fast float %8008, %7993
  %8012 = fadd fast float %8009, %7994
  %8013 = fadd fast float %8010, %7995
  %8014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8015 = extractvalue %dx.types.CBufRet.f32 %8014, 1
  %8016 = fmul fast float %8011, %8015
  %8017 = fmul fast float %8012, %8015
  %8018 = fmul fast float %8013, %8015
  br label %8019

; <label>:8019                                    ; preds = %7851, %7820
  %8020 = phi float [ %7890, %7851 ], [ 1.000000e+00, %7820 ]
  %8021 = phi float [ %7891, %7851 ], [ 1.000000e+00, %7820 ]
  %8022 = phi float [ %7892, %7851 ], [ 1.000000e+00, %7820 ]
  %8023 = phi float [ %8016, %7851 ], [ 0.000000e+00, %7820 ]
  %8024 = phi float [ %8017, %7851 ], [ 0.000000e+00, %7820 ]
  %8025 = phi float [ %8018, %7851 ], [ 0.000000e+00, %7820 ]
  %8026 = fmul fast float %8023, %7793
  %8027 = fmul fast float %8024, %7795
  %8028 = fmul fast float %8025, %7797
  %8029 = call float @dx.op.dot3.f32(i32 55, float %8020, float %8021, float %8022, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = call float @dx.op.dot3.f32(i32 55, float %8026, float %8027, float %8028, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8031 = select i1 %262, float %8029, float %8020
  %8032 = select i1 %262, float %8029, float %8021
  %8033 = select i1 %262, float 1.000000e+00, float %8022
  %8034 = select i1 %262, float %8030, float %8026
  %8035 = select i1 %262, float 0.000000e+00, float %8027
  %8036 = select i1 %262, float 0.000000e+00, float %8028
  %8037 = fmul fast float %8031, %7810
  %8038 = fmul fast float %8032, %7811
  %8039 = fmul fast float %8033, %7812
  %8040 = fadd fast float %8037, %8034
  %8041 = fadd fast float %8038, %8035
  %8042 = fadd fast float %8036, %8039
  %8043 = fmul fast float %8031, %7786
  %8044 = fmul fast float %8032, %7787
  %8045 = fmul fast float %8033, %7788
  %8046 = fmul fast float %137, %7822
  %8047 = fmul fast float %139, %7823
  %8048 = fsub fast float 1.000000e+00, %8046
  %8049 = fsub fast float 1.000000e+00, %8047
  %8050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8050, 0
  %8052 = extractvalue %dx.types.CBufRet.f32 %8050, 1
  %8053 = extractvalue %dx.types.CBufRet.f32 %8050, 2
  %8054 = fmul fast float %8048, %8051
  %8055 = fmul fast float %8048, %8052
  %8056 = fmul fast float %8048, %8053
  %8057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8058 = extractvalue %dx.types.CBufRet.f32 %8057, 0
  %8059 = extractvalue %dx.types.CBufRet.f32 %8057, 1
  %8060 = extractvalue %dx.types.CBufRet.f32 %8057, 2
  %8061 = fmul fast float %8049, %8058
  %8062 = fmul fast float %8049, %8059
  %8063 = fmul fast float %8049, %8060
  %8064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8065 = extractvalue %dx.types.CBufRet.f32 %8064, 0
  %8066 = extractvalue %dx.types.CBufRet.f32 %8064, 1
  %8067 = extractvalue %dx.types.CBufRet.f32 %8064, 2
  %8068 = fadd fast float %8061, %8065
  %8069 = fadd fast float %8068, %8054
  %8070 = fadd fast float %8062, %8066
  %8071 = fadd fast float %8070, %8055
  %8072 = fadd fast float %8063, %8067
  %8073 = fadd fast float %8072, %8056
  %8074 = fmul fast float %8069, %223
  %8075 = fmul fast float %8071, %223
  %8076 = fmul fast float %8073, %223
  br label %8077

; <label>:8077                                    ; preds = %8019, %7785
  %8078 = phi float [ %8074, %8019 ], [ %188, %7785 ]
  %8079 = phi float [ %8075, %8019 ], [ %189, %7785 ]
  %8080 = phi float [ %8076, %8019 ], [ %190, %7785 ]
  %8081 = phi float [ %223, %8019 ], [ %96, %7785 ]
  %8082 = phi float [ %8040, %8019 ], [ %7810, %7785 ]
  %8083 = phi float [ %8041, %8019 ], [ %7811, %7785 ]
  %8084 = phi float [ %8042, %8019 ], [ %7812, %7785 ]
  %8085 = phi float [ %8043, %8019 ], [ %7786, %7785 ]
  %8086 = phi float [ %8044, %8019 ], [ %7787, %7785 ]
  %8087 = phi float [ %8045, %8019 ], [ %7788, %7785 ]
  %8088 = phi float [ %8020, %8019 ], [ 1.000000e+00, %7785 ]
  br i1 %7819, label %9243, label %8089

; <label>:8089                                    ; preds = %8077
  %8090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8091 = extractvalue %dx.types.CBufRet.f32 %8090, 0
  %8092 = extractvalue %dx.types.CBufRet.f32 %8090, 1
  %8093 = extractvalue %dx.types.CBufRet.f32 %8090, 2
  %8094 = extractvalue %dx.types.CBufRet.f32 %8090, 3
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 0
  %8097 = extractvalue %dx.types.CBufRet.f32 %8095, 1
  %8098 = extractvalue %dx.types.CBufRet.f32 %8095, 2
  %8099 = extractvalue %dx.types.CBufRet.f32 %8095, 3
  %8100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8101 = extractvalue %dx.types.CBufRet.f32 %8100, 0
  %8102 = extractvalue %dx.types.CBufRet.f32 %8100, 1
  %8103 = extractvalue %dx.types.CBufRet.f32 %8100, 2
  %8104 = extractvalue %dx.types.CBufRet.f32 %8100, 3
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8109 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8111 = extractvalue %dx.types.CBufRet.f32 %8110, 3
  %8112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8113 = extractvalue %dx.types.CBufRet.f32 %8112, 3
  %8114 = extractvalue %dx.types.CBufRet.f32 %8112, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8112, 1
  %8116 = extractvalue %dx.types.CBufRet.f32 %8112, 2
  %8117 = fcmp fast olt float %8116, -5.000000e-01
  %8118 = call float @dx.op.dot3.f32(i32 55, float %8078, float %8079, float %8080, float %8078, float %8079, float %8080)  ; Dot3(ax,ay,az,bx,by,bz)
  %8119 = call float @dx.op.unary.f32(i32 25, float %8118)  ; Rsqrt(value)
  %8120 = fmul fast float %8119, %8118
  %8121 = fmul fast float %8119, %8078
  %8122 = fmul fast float %8119, %8079
  %8123 = fmul fast float %8119, %8080
  %8124 = fadd fast float %8120, %8094
  %8125 = call float @dx.op.dot3.f32(i32 55, float %8121, float %8122, float %8123, float %8091, float %8092, float %8093)  ; Dot3(ax,ay,az,bx,by,bz)
  %8126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8127 = extractvalue %dx.types.CBufRet.i32 %8126, 1
  %8128 = and i32 %8127, 1
  %8129 = icmp ne i32 %8128, 0
  %8130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8131 = extractvalue %dx.types.CBufRet.f32 %8130, 2
  %8132 = fcmp fast ogt float %8131, 0.000000e+00
  %8133 = and i1 %8129, %8132
  br i1 %8133, label %8134, label %8540, !dx.controlflow.hints !125

; <label>:8134                                    ; preds = %8089
  %8135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.f32 %8135, 3
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 2
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8141 = fsub fast float %8138, %8140
  %8142 = and i32 %8127, 2
  %8143 = extractvalue %dx.types.CBufRet.i32 %8126, 0
  %8144 = call i32 @dx.op.binary.i32(i32 40, i32 %8143, i32 3)  ; UMin(a,b)
  %8145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8146 = extractvalue %dx.types.CBufRet.f32 %8145, 0
  %8147 = extractvalue %dx.types.CBufRet.f32 %8145, 1
  %8148 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8149 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8150 = fsub fast float %8146, %8148
  %8151 = fsub fast float %8147, %8149
  %8152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.f32 %8152, 0
  %8154 = fcmp fast ogt float %8153, 0.000000e+00
  %8155 = fsub fast float -0.000000e+00, %8150
  %8156 = fsub fast float -0.000000e+00, %8151
  %8157 = call float @dx.op.dot2.f32(i32 54, float %8121, float %8122, float %8121, float %8122)  ; Dot2(ax,ay,bx,by)
  %8158 = call float @dx.op.dot2.f32(i32 54, float %8121, float %8122, float %8155, float %8156)  ; Dot2(ax,ay,bx,by)
  %8159 = fmul fast float %8158, 2.000000e+00
  %8160 = call float @dx.op.dot2.f32(i32 54, float %8155, float %8156, float %8155, float %8156)  ; Dot2(ax,ay,bx,by)
  %8161 = fmul fast float %8153, %8153
  %8162 = fsub fast float %8160, %8161
  %8163 = fmul fast float %8159, %8159
  %8164 = fmul fast float %8157, 4.000000e+00
  %8165 = fmul fast float %8164, %8162
  %8166 = fsub fast float %8163, %8165
  %8167 = fcmp fast ogt float %8166, 0.000000e+00
  br i1 %8167, label %8168, label %8183

; <label>:8168                                    ; preds = %8134
  %8169 = fcmp fast ogt float %8159, 0.000000e+00
  %8170 = call float @dx.op.unary.f32(i32 24, float %8166)  ; Sqrt(value)
  %8171 = fsub fast float -0.000000e+00, %8170
  %8172 = select i1 %8169, float %8170, float %8171
  %8173 = fadd fast float %8172, %8159
  %8174 = fmul float %8173, -5.000000e-01
  %8175 = fdiv fast float %8174, %8157
  %8176 = call float @dx.op.binary.f32(i32 35, float %8175, float 0.000000e+00)  ; FMax(a,b)
  %8177 = call float @dx.op.binary.f32(i32 36, float %8120, float %8176)  ; FMin(a,b)
  %8178 = fdiv fast float %8162, %8174
  %8179 = call float @dx.op.binary.f32(i32 35, float %8178, float 0.000000e+00)  ; FMax(a,b)
  %8180 = call float @dx.op.binary.f32(i32 36, float %8120, float %8179)  ; FMin(a,b)
  %8181 = call float @dx.op.binary.f32(i32 36, float %8177, float %8180)  ; FMin(a,b)
  %8182 = call float @dx.op.binary.f32(i32 35, float %8177, float %8180)  ; FMax(a,b)
  br label %8183

; <label>:8183                                    ; preds = %8168, %8134
  %8184 = phi float [ %8182, %8168 ], [ -1.000000e+00, %8134 ]
  %8185 = phi float [ %8181, %8168 ], [ -1.000000e+00, %8134 ]
  %8186 = phi i1 [ true, %8168 ], [ false, %8134 ]
  %8187 = and i1 %8154, %8186
  br i1 %8187, label %8188, label %8190

; <label>:8188                                    ; preds = %8183
  %8189 = fcmp fast oeq float %8185, %8184
  br i1 %8189, label %8493, label %8191

; <label>:8190                                    ; preds = %8183
  br i1 %8154, label %8493, label %8191

; <label>:8191                                    ; preds = %8190, %8188
  %8192 = phi float [ %8120, %8190 ], [ %8184, %8188 ]
  %8193 = phi float [ 0.000000e+00, %8190 ], [ %8185, %8188 ]
  %8194 = icmp ne i32 %8142, 0
  %8195 = fmul fast float %8192, %8123
  %8196 = fadd fast float %8195, %8136
  %8197 = fmul fast float %8196, %8192
  %8198 = select i1 %8194, float 0.000000e+00, float %8197
  %8199 = fcmp fast oeq float %8123, 0.000000e+00
  %8200 = fdiv fast float %8141, %8123
  %8201 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8200)  ; FMax(a,b)
  %8202 = select i1 %8199, float %8192, float %8201
  %8203 = call float @dx.op.binary.f32(i32 36, float %8192, float %8202)  ; FMin(a,b)
  %8204 = fcmp fast ogt float %8123, 0.000000e+00
  %8205 = fcmp fast olt float %8141, 0.000000e+00
  br i1 %8204, label %8206, label %8263

; <label>:8206                                    ; preds = %8191
  %8207 = icmp eq i32 %8142, 0
  br i1 %8205, label %8208, label %8252

; <label>:8208                                    ; preds = %8206
  %8209 = select i1 %8207, float %8192, float 0.000000e+00
  %8210 = fsub fast float -0.000000e+00, %8209
  %8211 = call float @dx.op.unary.f32(i32 6, float %8210)  ; FAbs(value)
  %8212 = fmul fast float %8209, %8123
  %8213 = fadd fast float %8212, %8136
  %8214 = fmul fast float %8211, %8213
  %8215 = fsub fast float %8198, %8214
  %8216 = fsub fast float %8192, %8211
  %8217 = select i1 %8207, float %8216, float 0.000000e+00
  %8218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8219 = extractvalue %dx.types.CBufRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.CBufRet.f32 %8218, 1
  %8221 = extractvalue %dx.types.CBufRet.f32 %8218, 2
  %8222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8223 = extractvalue %dx.types.CBufRet.f32 %8222, 0
  %8224 = extractvalue %dx.types.CBufRet.f32 %8222, 1
  %8225 = extractvalue %dx.types.CBufRet.f32 %8222, 2
  %8226 = extractvalue %dx.types.CBufRet.f32 %8222, 3
  %8227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8228 = extractvalue %dx.types.CBufRet.f32 %8227, 3
  %8229 = call float @dx.op.binary.f32(i32 36, float %8215, float %8228)  ; FMin(a,b)
  %8230 = fmul fast float %8226, %8217
  %8231 = call float @dx.op.unary.f32(i32 7, float %8230)  ; Saturate(value)
  %8232 = fsub fast float %8223, %8219
  %8233 = fsub fast float %8224, %8220
  %8234 = fsub fast float %8225, %8221
  %8235 = fmul fast float %8231, %8232
  %8236 = fmul fast float %8231, %8233
  %8237 = fmul fast float %8231, %8234
  %8238 = fadd fast float %8235, %8219
  %8239 = fadd fast float %8236, %8220
  %8240 = fadd fast float %8237, %8221
  %8241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8242 = extractvalue %dx.types.CBufRet.f32 %8241, 0
  %8243 = extractvalue %dx.types.CBufRet.f32 %8241, 1
  %8244 = fadd fast float %8243, %8242
  %8245 = call float @dx.op.unary.f32(i32 7, float %8244)  ; Saturate(value)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8241, 2
  %8247 = extractvalue %dx.types.CBufRet.f32 %8241, 3
  %8248 = fadd fast float %8247, %8246
  %8249 = call float @dx.op.unary.f32(i32 7, float %8248)  ; Saturate(value)
  %8250 = fmul fast float %8245, %8229
  %8251 = fmul fast float %8250, %8249
  br label %8493

; <label>:8252                                    ; preds = %8206
  br i1 %8207, label %8253, label %8274

; <label>:8253                                    ; preds = %8252
  %8254 = call float @dx.op.binary.f32(i32 36, float %8203, float %8193)  ; FMin(a,b)
  %8255 = fsub fast float %8203, %8254
  %8256 = fsub fast float %8255, %8192
  %8257 = call float @dx.op.unary.f32(i32 6, float %8256)  ; FAbs(value)
  %8258 = fadd fast float %8255, %8192
  %8259 = fmul fast float %8258, %8123
  %8260 = fadd fast float %8259, %8136
  %8261 = fmul fast float %8260, %8257
  %8262 = fsub fast float %8198, %8261
  br label %8274

; <label>:8263                                    ; preds = %8191
  br i1 %8205, label %8264, label %8274

; <label>:8264                                    ; preds = %8263
  %8265 = call float @dx.op.binary.f32(i32 35, float %8193, float %8203)  ; FMax(a,b)
  %8266 = icmp eq i32 %8142, 0
  %8267 = select i1 %8266, float %8203, float 0.000000e+00
  %8268 = fsub fast float -0.000000e+00, %8267
  %8269 = call float @dx.op.unary.f32(i32 6, float %8268)  ; FAbs(value)
  %8270 = fmul fast float %8267, %8123
  %8271 = fadd fast float %8270, %8136
  %8272 = fmul fast float %8269, %8271
  %8273 = fsub fast float %8198, %8272
  br label %8274

; <label>:8274                                    ; preds = %8264, %8263, %8253, %8252
  %8275 = phi float [ %8193, %8252 ], [ %8193, %8253 ], [ %8265, %8264 ], [ %8193, %8263 ]
  %8276 = phi float [ 0.000000e+00, %8252 ], [ %8257, %8253 ], [ %8269, %8264 ], [ 0.000000e+00, %8263 ]
  %8277 = phi float [ %8198, %8252 ], [ %8262, %8253 ], [ %8273, %8264 ], [ %8198, %8263 ]
  %8278 = phi float [ %8203, %8252 ], [ %8203, %8253 ], [ %8192, %8264 ], [ %8192, %8263 ]
  %8279 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8279, align 4, !tbaa !114, !noalias !126
  %8280 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8280, align 4, !tbaa !114, !noalias !126
  %8281 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8281, align 4, !tbaa !114, !noalias !126
  %8282 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8282, align 4, !tbaa !114, !noalias !126
  %8283 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8283, align 4, !tbaa !114, !noalias !126
  %8284 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8284, align 4, !tbaa !114, !noalias !126
  %8285 = icmp sgt i32 %8144, 0
  br i1 %8285, label %8286, label %8347

; <label>:8286                                    ; preds = %8274
  br label %8287

; <label>:8287                                    ; preds = %8336, %8286
  %8288 = phi i32 [ %8337, %8336 ], [ 0, %8286 ]
  %8289 = phi i32 [ %8338, %8336 ], [ 0, %8286 ]
  %8290 = add nuw i32 %8289, 171
  %8291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8290)  ; CBufferLoadLegacy(handle,regIndex)
  %8292 = extractvalue %dx.types.CBufRet.f32 %8291, 0
  %8293 = extractvalue %dx.types.CBufRet.f32 %8291, 1
  %8294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8295 = extractvalue %dx.types.CBufRet.f32 %8294, 0
  %8296 = extractvalue %dx.types.CBufRet.f32 %8294, 1
  %8297 = fsub fast float %8292, %8295
  %8298 = fsub fast float %8293, %8296
  %8299 = extractvalue %dx.types.CBufRet.f32 %8291, 2
  %8300 = fsub fast float -0.000000e+00, %8297
  %8301 = fsub fast float -0.000000e+00, %8298
  %8302 = call float @dx.op.dot2.f32(i32 54, float %8121, float %8122, float %8300, float %8301)  ; Dot2(ax,ay,bx,by)
  %8303 = fmul fast float %8302, 2.000000e+00
  %8304 = call float @dx.op.dot2.f32(i32 54, float %8300, float %8301, float %8300, float %8301)  ; Dot2(ax,ay,bx,by)
  %8305 = fmul fast float %8299, %8299
  %8306 = fsub fast float %8304, %8305
  %8307 = fmul fast float %8303, %8303
  %8308 = fmul fast float %8164, %8306
  %8309 = fsub fast float %8307, %8308
  %8310 = fcmp fast ogt float %8309, 0.000000e+00
  br i1 %8310, label %8311, label %8326

; <label>:8311                                    ; preds = %8287
  %8312 = fcmp fast ogt float %8303, 0.000000e+00
  %8313 = call float @dx.op.unary.f32(i32 24, float %8309)  ; Sqrt(value)
  %8314 = fsub fast float -0.000000e+00, %8313
  %8315 = select i1 %8312, float %8313, float %8314
  %8316 = fadd fast float %8315, %8303
  %8317 = fmul float %8316, -5.000000e-01
  %8318 = fdiv fast float %8317, %8157
  %8319 = call float @dx.op.binary.f32(i32 35, float %8318, float 0.000000e+00)  ; FMax(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8192, float %8319)  ; FMin(a,b)
  %8321 = fdiv fast float %8306, %8317
  %8322 = call float @dx.op.binary.f32(i32 35, float %8321, float 0.000000e+00)  ; FMax(a,b)
  %8323 = call float @dx.op.binary.f32(i32 36, float %8192, float %8322)  ; FMin(a,b)
  %8324 = call float @dx.op.binary.f32(i32 36, float %8320, float %8323)  ; FMin(a,b)
  %8325 = call float @dx.op.binary.f32(i32 35, float %8320, float %8323)  ; FMax(a,b)
  br label %8326

; <label>:8326                                    ; preds = %8311, %8287
  %8327 = phi float [ %8325, %8311 ], [ -1.000000e+00, %8287 ]
  %8328 = phi float [ %8324, %8311 ], [ -1.000000e+00, %8287 ]
  %8329 = phi i1 [ true, %8311 ], [ false, %8287 ]
  br i1 %8329, label %8330, label %8336

; <label>:8330                                    ; preds = %8326
  %8331 = call float @dx.op.binary.f32(i32 35, float %8275, float %8328)  ; FMax(a,b)
  %8332 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8289
  store float %8331, float* %8332, align 4, !tbaa !114, !noalias !126
  %8333 = call float @dx.op.binary.f32(i32 35, float %8275, float %8327)  ; FMax(a,b)
  %8334 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8289
  store float %8333, float* %8334, align 4, !tbaa !114, !noalias !126
  %8335 = add nsw i32 %8288, 1
  br label %8336

; <label>:8336                                    ; preds = %8330, %8326
  %8337 = phi i32 [ %8335, %8330 ], [ %8288, %8326 ]
  %8338 = add nuw nsw i32 %8289, 1
  %8339 = icmp eq i32 %8338, %8144
  br i1 %8339, label %8340, label %8287

; <label>:8340                                    ; preds = %8336
  %8341 = load float, float* %8281, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8342 = load float, float* %8280, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %8343 = load float, float* %8279, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %8344 = load float, float* %8284, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8345 = load float, float* %8283, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %8346 = load float, float* %8282, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %8347

; <label>:8347                                    ; preds = %8340, %8274
  %8348 = phi float [ -1.000000e+00, %8274 ], [ %8346, %8340 ]
  %8349 = phi float [ -1.000000e+00, %8274 ], [ %8345, %8340 ]
  %8350 = phi float [ -1.000000e+00, %8274 ], [ %8344, %8340 ]
  %8351 = phi float [ -1.000000e+00, %8274 ], [ %8343, %8340 ]
  %8352 = phi float [ -1.000000e+00, %8274 ], [ %8342, %8340 ]
  %8353 = phi float [ -1.000000e+00, %8274 ], [ %8341, %8340 ]
  %8354 = phi i32 [ 0, %8274 ], [ %8337, %8340 ]
  %8355 = call float @dx.op.binary.f32(i32 36, float %8352, float %8353)  ; FMin(a,b)
  %8356 = call float @dx.op.binary.f32(i32 36, float %8351, float %8355)  ; FMin(a,b)
  %8357 = call float @dx.op.binary.f32(i32 35, float %8351, float %8352)  ; FMax(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8357, float %8353)  ; FMin(a,b)
  %8359 = call float @dx.op.binary.f32(i32 36, float %8351, float %8352)  ; FMin(a,b)
  %8360 = call float @dx.op.binary.f32(i32 35, float %8359, float %8358)  ; FMax(a,b)
  %8361 = call float @dx.op.binary.f32(i32 35, float %8352, float %8353)  ; FMax(a,b)
  %8362 = call float @dx.op.binary.f32(i32 35, float %8351, float %8361)  ; FMax(a,b)
  store float %8356, float* %8279, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %8360, float* %8280, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %8362, float* %8281, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8363 = call float @dx.op.binary.f32(i32 36, float %8349, float %8350)  ; FMin(a,b)
  %8364 = call float @dx.op.binary.f32(i32 36, float %8348, float %8363)  ; FMin(a,b)
  %8365 = call float @dx.op.binary.f32(i32 35, float %8348, float %8349)  ; FMax(a,b)
  %8366 = call float @dx.op.binary.f32(i32 36, float %8365, float %8350)  ; FMin(a,b)
  %8367 = call float @dx.op.binary.f32(i32 36, float %8348, float %8349)  ; FMin(a,b)
  %8368 = call float @dx.op.binary.f32(i32 35, float %8367, float %8366)  ; FMax(a,b)
  %8369 = call float @dx.op.binary.f32(i32 35, float %8349, float %8350)  ; FMax(a,b)
  %8370 = call float @dx.op.binary.f32(i32 35, float %8348, float %8369)  ; FMax(a,b)
  store float %8364, float* %8282, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %8368, float* %8283, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %8370, float* %8284, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8371 = sub nsw i32 3, %8354
  %8372 = icmp sgt i32 %8371, 2
  br i1 %8372, label %8373, label %8411

; <label>:8373                                    ; preds = %8347
  %8374 = icmp eq i32 %8142, 0
  %8375 = fsub fast float %8192, %8276
  %8376 = select i1 %8374, float %8375, float %8276
  %8377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8378 = extractvalue %dx.types.CBufRet.f32 %8377, 0
  %8379 = extractvalue %dx.types.CBufRet.f32 %8377, 1
  %8380 = extractvalue %dx.types.CBufRet.f32 %8377, 2
  %8381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8382 = extractvalue %dx.types.CBufRet.f32 %8381, 0
  %8383 = extractvalue %dx.types.CBufRet.f32 %8381, 1
  %8384 = extractvalue %dx.types.CBufRet.f32 %8381, 2
  %8385 = extractvalue %dx.types.CBufRet.f32 %8381, 3
  %8386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8387 = extractvalue %dx.types.CBufRet.f32 %8386, 3
  %8388 = call float @dx.op.binary.f32(i32 36, float %8277, float %8387)  ; FMin(a,b)
  %8389 = fmul fast float %8385, %8376
  %8390 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8391 = fsub fast float %8382, %8378
  %8392 = fsub fast float %8383, %8379
  %8393 = fsub fast float %8384, %8380
  %8394 = fmul fast float %8390, %8391
  %8395 = fmul fast float %8390, %8392
  %8396 = fmul fast float %8390, %8393
  %8397 = fadd fast float %8394, %8378
  %8398 = fadd fast float %8395, %8379
  %8399 = fadd fast float %8396, %8380
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 0
  %8402 = extractvalue %dx.types.CBufRet.f32 %8400, 1
  %8403 = fadd fast float %8402, %8401
  %8404 = call float @dx.op.unary.f32(i32 7, float %8403)  ; Saturate(value)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8400, 2
  %8406 = extractvalue %dx.types.CBufRet.f32 %8400, 3
  %8407 = fadd fast float %8406, %8405
  %8408 = call float @dx.op.unary.f32(i32 7, float %8407)  ; Saturate(value)
  %8409 = fmul fast float %8404, %8388
  %8410 = fmul fast float %8409, %8408
  br label %8493

; <label>:8411                                    ; preds = %8347
  %8412 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8371
  %8413 = load float, float* %8412, align 4, !tbaa !114, !noalias !126
  %8414 = fcmp fast olt float %8413, %8278
  %8415 = icmp sgt i32 %8354, 0
  %8416 = and i1 %8415, %8414
  br i1 %8416, label %8417, label %8454

; <label>:8417                                    ; preds = %8411
  br label %8418

; <label>:8418                                    ; preds = %8447, %8417
  %8419 = phi float [ %8448, %8447 ], [ %8276, %8417 ]
  %8420 = phi float [ %8449, %8447 ], [ %8277, %8417 ]
  %8421 = phi float [ %8429, %8447 ], [ %8413, %8417 ]
  %8422 = phi i32 [ %8426, %8447 ], [ %8371, %8417 ]
  %8423 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8422
  %8424 = load float, float* %8423, align 4, !tbaa !114, !noalias !126
  %8425 = icmp slt i32 %8422, 2
  %8426 = add nsw i32 %8422, 1
  %8427 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8426
  %8428 = load float, float* %8427, align 4, !tbaa !114, !noalias !126
  %8429 = select i1 %8425, float %8428, float %8192
  %8430 = call float @dx.op.binary.f32(i32 36, float %8429, float %8424)  ; FMin(a,b)
  %8431 = call float @dx.op.binary.f32(i32 36, float %8278, float %8430)  ; FMin(a,b)
  %8432 = icmp eq i32 %8142, 0
  %8433 = fadd fast float %8431, %8421
  %8434 = fmul fast float %8433, %8123
  %8435 = fadd fast float %8434, %8136
  br i1 %8432, label %8441, label %8436

; <label>:8436                                    ; preds = %8418
  %8437 = fsub fast float %8431, %8421
  %8438 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8437)  ; FMax(a,b)
  %8439 = fmul fast float %8438, %8435
  %8440 = fadd fast float %8439, %8420
  br label %8447

; <label>:8441                                    ; preds = %8418
  %8442 = fsub fast float %8421, %8431
  %8443 = call float @dx.op.unary.f32(i32 6, float %8442)  ; FAbs(value)
  %8444 = fadd fast float %8443, %8419
  %8445 = fmul fast float %8443, %8435
  %8446 = fsub fast float %8420, %8445
  br label %8447

; <label>:8447                                    ; preds = %8441, %8436
  %8448 = phi float [ %8438, %8436 ], [ %8444, %8441 ]
  %8449 = phi float [ %8440, %8436 ], [ %8446, %8441 ]
  %8450 = fcmp fast olt float %8429, %8278
  %8451 = icmp slt i32 %8426, 3
  %8452 = and i1 %8451, %8450
  br i1 %8452, label %8418, label %8453

; <label>:8453                                    ; preds = %8447
  br label %8454

; <label>:8454                                    ; preds = %8453, %8411
  %8455 = phi float [ %8276, %8411 ], [ %8448, %8453 ]
  %8456 = phi float [ %8277, %8411 ], [ %8449, %8453 ]
  %8457 = fsub fast float %8192, %8455
  %8458 = select i1 %8194, float %8455, float %8457
  %8459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.CBufRet.f32 %8459, 1
  %8462 = extractvalue %dx.types.CBufRet.f32 %8459, 2
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 0
  %8465 = extractvalue %dx.types.CBufRet.f32 %8463, 1
  %8466 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %8467 = extractvalue %dx.types.CBufRet.f32 %8463, 3
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8470 = call float @dx.op.binary.f32(i32 36, float %8456, float %8469)  ; FMin(a,b)
  %8471 = fmul fast float %8467, %8458
  %8472 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8473 = fsub fast float %8464, %8460
  %8474 = fsub fast float %8465, %8461
  %8475 = fsub fast float %8466, %8462
  %8476 = fmul fast float %8472, %8473
  %8477 = fmul fast float %8472, %8474
  %8478 = fmul fast float %8472, %8475
  %8479 = fadd fast float %8476, %8460
  %8480 = fadd fast float %8477, %8461
  %8481 = fadd fast float %8478, %8462
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8485 = fadd fast float %8484, %8483
  %8486 = call float @dx.op.unary.f32(i32 7, float %8485)  ; Saturate(value)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8488 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8489 = fadd fast float %8488, %8487
  %8490 = call float @dx.op.unary.f32(i32 7, float %8489)  ; Saturate(value)
  %8491 = fmul fast float %8486, %8470
  %8492 = fmul fast float %8491, %8490
  br label %8493

; <label>:8493                                    ; preds = %8454, %8373, %8208, %8190, %8188
  %8494 = phi float [ %8217, %8208 ], [ %8376, %8373 ], [ %8458, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8495 = phi float [ %8251, %8208 ], [ %8410, %8373 ], [ %8492, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8496 = phi float [ %8238, %8208 ], [ %8397, %8373 ], [ %8479, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8497 = phi float [ %8239, %8208 ], [ %8398, %8373 ], [ %8480, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8498 = phi float [ %8240, %8208 ], [ %8399, %8373 ], [ %8481, %8454 ], [ 0.000000e+00, %8188 ], [ 0.000000e+00, %8190 ]
  %8499 = fmul fast float %8131, %8495
  %8500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8501 = extractvalue %dx.types.CBufRet.f32 %8500, 2
  %8502 = fsub fast float %8138, %8501
  %8503 = fcmp fast olt float %8499, -2.000000e+01
  %8504 = call float @dx.op.unary.f32(i32 21, float %8499)  ; Exp(value)
  %8505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8506 = extractvalue %dx.types.CBufRet.f32 %8505, 2
  %8507 = extractvalue %dx.types.CBufRet.f32 %8505, 3
  %8508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8508, 2
  %8510 = fmul fast float %8507, %8502
  %8511 = call float @dx.op.unary.f32(i32 7, float %8510)  ; Saturate(value)
  %8512 = fsub fast float 1.000000e+00, %8511
  %8513 = fmul fast float %8123, 5.000000e-01
  %8514 = fadd fast float %8513, 5.000000e-01
  %8515 = call float @dx.op.unary.f32(i32 7, float %8514)  ; Saturate(value)
  %8516 = fsub fast float 1.000000e+00, %8515
  %8517 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8512)  ; FMax(a,b)
  %8518 = fdiv fast float %8516, %8517
  %8519 = fsub fast float %8502, %8080
  %8520 = call float @dx.op.unary.f32(i32 6, float %8519)  ; FAbs(value)
  %8521 = fmul fast float %8520, %8506
  %8522 = call float @dx.op.unary.f32(i32 7, float %8518)  ; Saturate(value)
  %8523 = fsub fast float 1.000000e+00, %8521
  %8524 = fmul fast float %8523, %8522
  %8525 = fadd fast float %8524, %8521
  %8526 = fmul fast float %8509, %8502
  %8527 = call float @dx.op.unary.f32(i32 7, float %8526)  ; Saturate(value)
  %8528 = fsub fast float 1.000000e+00, %8525
  %8529 = fmul fast float %8528, %8527
  %8530 = fadd fast float %8529, %8525
  %8531 = call float @dx.op.unary.f32(i32 7, float %8530)  ; Saturate(value)
  %8532 = fadd fast float %8504, -1.000000e+00
  %8533 = select i1 %8503, float -1.000000e+00, float %8532
  %8534 = fmul fast float %8531, %8533
  %8535 = fadd fast float %8534, 1.000000e+00
  %8536 = fsub fast float -0.000000e+00, %8534
  %8537 = fmul fast float %8496, %8536
  %8538 = fmul fast float %8497, %8536
  %8539 = fmul fast float %8498, %8536
  br label %8540

; <label>:8540                                    ; preds = %8493, %8089
  %8541 = phi float [ %8494, %8493 ], [ 0.000000e+00, %8089 ]
  %8542 = phi float [ %8535, %8493 ], [ 1.000000e+00, %8089 ]
  %8543 = phi float [ %8537, %8493 ], [ 0.000000e+00, %8089 ]
  %8544 = phi float [ %8538, %8493 ], [ 0.000000e+00, %8089 ]
  %8545 = phi float [ %8539, %8493 ], [ 0.000000e+00, %8089 ]
  %8546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8547 = extractvalue %dx.types.CBufRet.f32 %8546, 1
  %8548 = fsub fast float 1.000000e+00, %8542
  %8549 = fmul fast float %8548, %8124
  %8550 = fmul fast float %8549, %8547
  %8551 = fsub fast float %8124, %8550
  br i1 %8117, label %8552, label %8581, !dx.controlflow.hints !162

; <label>:8552                                    ; preds = %8540
  %8553 = fmul fast float %8125, %8114
  %8554 = fadd fast float %8553, %8115
  %8555 = call float @dx.op.unary.f32(i32 7, float %8554)  ; Saturate(value)
  %8556 = fmul fast float %8096, %8551
  %8557 = fsub fast float -0.000000e+00, %8556
  %8558 = fmul fast float %8097, %8551
  %8559 = fsub fast float -0.000000e+00, %8558
  %8560 = call float @dx.op.unary.f32(i32 21, float %8557)  ; Exp(value)
  %8561 = call float @dx.op.unary.f32(i32 21, float %8559)  ; Exp(value)
  %8562 = call float @dx.op.binary.f32(i32 35, float %8104, float %8560)  ; FMax(a,b)
  %8563 = call float @dx.op.binary.f32(i32 35, float %8104, float %8561)  ; FMax(a,b)
  %8564 = fsub fast float %8563, %8562
  %8565 = fmul fast float %8564, %8555
  %8566 = fadd fast float %8565, %8562
  %8567 = call float @dx.op.unary.f32(i32 7, float %8566)  ; Saturate(value)
  %8568 = fsub fast float %8101, %8106
  %8569 = fsub fast float %8102, %8107
  %8570 = fsub fast float %8103, %8108
  %8571 = fmul fast float %8555, %8568
  %8572 = fmul fast float %8555, %8569
  %8573 = fmul fast float %8555, %8570
  %8574 = fadd fast float %8571, %8106
  %8575 = fadd fast float %8572, %8107
  %8576 = fadd fast float %8573, %8108
  %8577 = fsub fast float 1.000000e+00, %8567
  %8578 = fmul fast float %8577, %8574
  %8579 = fmul fast float %8577, %8575
  %8580 = fmul fast float %8577, %8576
  br label %8640

; <label>:8581                                    ; preds = %8540
  %8582 = fmul fast float %8551, %8113
  %8583 = call float @dx.op.unary.f32(i32 7, float %8582)  ; Saturate(value)
  %8584 = fsub fast float 2.000000e+00, %8583
  %8585 = fmul fast float %8583, 9.921875e-01
  %8586 = fmul fast float %8585, %8584
  %8587 = fadd fast float %8586, 3.906250e-03
  %8588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8587, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8589 = extractvalue %dx.types.ResRet.f32 %8588, 0
  %8590 = fsub fast float %8583, %8589
  %8591 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8590)  ; FMax(a,b)
  %8592 = fmul fast float %8099, %8080
  %8593 = call float @dx.op.unary.f32(i32 6, float %8592)  ; FAbs(value)
  %8594 = fcmp fast ogt float %8593, 0x3EB0C6F7A0000000
  br i1 %8594, label %8595, label %8601, !dx.controlflow.hints !163

; <label>:8595                                    ; preds = %8581
  %8596 = fmul fast float %8592, 0xBFF7154760000000
  %8597 = call float @dx.op.unary.f32(i32 21, float %8596)  ; Exp(value)
  %8598 = fsub fast float 1.000000e+00, %8597
  %8599 = fdiv fast float %8598, %8592
  %8600 = fmul fast float %8599, %8109
  br label %8601

; <label>:8601                                    ; preds = %8595, %8581
  %8602 = phi float [ %8600, %8595 ], [ %8109, %8581 ]
  %8603 = fadd fast float %8602, %8111
  %8604 = fmul fast float %8603, %8591
  %8605 = fmul fast float %8096, %8604
  %8606 = fsub fast float -0.000000e+00, %8605
  %8607 = fmul fast float %8097, %8604
  %8608 = fsub fast float -0.000000e+00, %8607
  %8609 = fmul fast float %8098, %8604
  %8610 = fsub fast float -0.000000e+00, %8609
  %8611 = call float @dx.op.unary.f32(i32 21, float %8606)  ; Exp(value)
  %8612 = call float @dx.op.unary.f32(i32 21, float %8608)  ; Exp(value)
  %8613 = call float @dx.op.unary.f32(i32 21, float %8610)  ; Exp(value)
  %8614 = fmul fast float %8125, %8125
  %8615 = fadd fast float %8614, 1.000000e+00
  %8616 = fmul fast float %8615, 0x3FAE8EC8A0000000
  %8617 = fmul fast float %8616, %8106
  %8618 = fmul fast float %8616, %8107
  %8619 = fmul fast float %8616, %8108
  %8620 = fmul fast float %8125, %8104
  %8621 = fsub fast float 1.000000e+00, %8620
  %8622 = fmul fast float %8104, %8104
  %8623 = fsub fast float 1.000000e+00, %8622
  %8624 = fmul fast float %8623, 0x3FB45F3060000000
  %8625 = fmul fast float %8621, %8621
  %8626 = fdiv fast float 1.000000e+00, %8625
  %8627 = fmul fast float %8624, %8626
  %8628 = fmul fast float %8627, %8101
  %8629 = fmul fast float %8627, %8102
  %8630 = fmul fast float %8627, %8103
  %8631 = fadd fast float %8628, %8617
  %8632 = fadd fast float %8629, %8618
  %8633 = fadd fast float %8630, %8619
  %8634 = fsub fast float 1.000000e+00, %8611
  %8635 = fsub fast float 1.000000e+00, %8612
  %8636 = fsub fast float 1.000000e+00, %8613
  %8637 = fmul fast float %8631, %8634
  %8638 = fmul fast float %8632, %8635
  %8639 = fmul fast float %8633, %8636
  br label %8640

; <label>:8640                                    ; preds = %8601, %8552
  %8641 = phi float [ %8578, %8552 ], [ %8637, %8601 ]
  %8642 = phi float [ %8579, %8552 ], [ %8638, %8601 ]
  %8643 = phi float [ %8580, %8552 ], [ %8639, %8601 ]
  %8644 = phi float [ %8567, %8552 ], [ %8611, %8601 ]
  %8645 = phi float [ %8567, %8552 ], [ %8612, %8601 ]
  %8646 = phi float [ %8567, %8552 ], [ %8613, %8601 ]
  br i1 %8133, label %8647, label %8845, !dx.controlflow.hints !164

; <label>:8647                                    ; preds = %8640
  %8648 = extractvalue %dx.types.CBufRet.f32 %8546, 0
  %8649 = fmul fast float %8648, %8548
  %8650 = fsub fast float %8543, %8641
  %8651 = fsub fast float %8544, %8642
  %8652 = fsub fast float %8545, %8643
  %8653 = fmul fast float %8649, %8650
  %8654 = fmul fast float %8649, %8651
  %8655 = fmul fast float %8649, %8652
  %8656 = fadd fast float %8653, %8641
  %8657 = fadd fast float %8654, %8642
  %8658 = fadd fast float %8655, %8643
  %8659 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8644)  ; FMax(a,b)
  %8660 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8645)  ; FMax(a,b)
  %8661 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8646)  ; FMax(a,b)
  %8662 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8542)  ; FMax(a,b)
  %8663 = call float @dx.op.binary.f32(i32 35, float %8541, float %8551)  ; FMax(a,b)
  %8664 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8663)  ; FMax(a,b)
  %8665 = fdiv fast float %8541, %8664
  %8666 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  %8667 = fdiv fast float %8551, %8664
  %8668 = call float @dx.op.unary.f32(i32 7, float %8667)  ; Saturate(value)
  %8669 = fcmp fast une float %8662, 1.000000e+00
  br i1 %8669, label %8670, label %8683, !dx.controlflow.hints !165

; <label>:8670                                    ; preds = %8647
  %8671 = call float @dx.op.unary.f32(i32 23, float %8662)  ; Log(value)
  %8672 = fmul fast float %8671, 0x3FE62E4300000000
  %8673 = fmul fast float %8543, %8672
  %8674 = fsub fast float -0.000000e+00, %8673
  %8675 = fmul fast float %8544, %8672
  %8676 = fsub fast float -0.000000e+00, %8675
  %8677 = fmul fast float %8545, %8672
  %8678 = fsub fast float -0.000000e+00, %8677
  %8679 = fsub fast float 1.000000e+00, %8662
  %8680 = fdiv fast float %8674, %8679
  %8681 = fdiv fast float %8676, %8679
  %8682 = fdiv fast float %8678, %8679
  br label %8683

; <label>:8683                                    ; preds = %8670, %8647
  %8684 = phi float [ %8680, %8670 ], [ %8543, %8647 ]
  %8685 = phi float [ %8681, %8670 ], [ %8544, %8647 ]
  %8686 = phi float [ %8682, %8670 ], [ %8545, %8647 ]
  %8687 = phi float [ %8672, %8670 ], [ 0.000000e+00, %8647 ]
  %8688 = fcmp fast une float %8659, 1.000000e+00
  br i1 %8688, label %8689, label %8696, !dx.controlflow.hints !166

; <label>:8689                                    ; preds = %8683
  %8690 = call float @dx.op.unary.f32(i32 23, float %8659)  ; Log(value)
  %8691 = fmul fast float %8690, 0x3FE62E4300000000
  %8692 = fmul fast float %8656, %8691
  %8693 = fsub fast float -0.000000e+00, %8692
  %8694 = fsub fast float 1.000000e+00, %8659
  %8695 = fdiv fast float %8693, %8694
  br label %8696

; <label>:8696                                    ; preds = %8689, %8683
  %8697 = phi float [ %8695, %8689 ], [ %8656, %8683 ]
  %8698 = phi float [ %8691, %8689 ], [ 0.000000e+00, %8683 ]
  %8699 = fcmp fast une float %8660, 1.000000e+00
  br i1 %8699, label %8700, label %8707, !dx.controlflow.hints !166

; <label>:8700                                    ; preds = %8696
  %8701 = call float @dx.op.unary.f32(i32 23, float %8660)  ; Log(value)
  %8702 = fmul fast float %8701, 0x3FE62E4300000000
  %8703 = fmul fast float %8657, %8702
  %8704 = fsub fast float -0.000000e+00, %8703
  %8705 = fsub fast float 1.000000e+00, %8660
  %8706 = fdiv fast float %8704, %8705
  br label %8707

; <label>:8707                                    ; preds = %8700, %8696
  %8708 = phi float [ %8706, %8700 ], [ %8657, %8696 ]
  %8709 = phi float [ %8702, %8700 ], [ 0.000000e+00, %8696 ]
  %8710 = fcmp fast une float %8661, 1.000000e+00
  br i1 %8710, label %8711, label %8718, !dx.controlflow.hints !166

; <label>:8711                                    ; preds = %8707
  %8712 = call float @dx.op.unary.f32(i32 23, float %8661)  ; Log(value)
  %8713 = fmul fast float %8712, 0x3FE62E4300000000
  %8714 = fmul fast float %8658, %8713
  %8715 = fsub fast float -0.000000e+00, %8714
  %8716 = fsub fast float 1.000000e+00, %8661
  %8717 = fdiv fast float %8715, %8716
  br label %8718

; <label>:8718                                    ; preds = %8711, %8707
  %8719 = phi float [ %8717, %8711 ], [ %8658, %8707 ]
  %8720 = phi float [ %8713, %8711 ], [ 0.000000e+00, %8707 ]
  %8721 = fmul fast float %8684, %8668
  %8722 = fmul fast float %8685, %8668
  %8723 = fmul fast float %8686, %8668
  %8724 = fmul fast float %8687, %8668
  %8725 = fmul fast float %8697, %8666
  %8726 = fmul fast float %8708, %8666
  %8727 = fmul fast float %8719, %8666
  %8728 = fmul fast float %8698, %8666
  %8729 = fmul fast float %8709, %8666
  %8730 = fmul fast float %8720, %8666
  %8731 = fadd fast float %8725, %8721
  %8732 = fadd fast float %8726, %8722
  %8733 = fadd fast float %8727, %8723
  %8734 = fadd fast float %8728, %8724
  %8735 = fadd fast float %8729, %8724
  %8736 = fadd fast float %8730, %8724
  %8737 = fcmp fast une float %8734, 0.000000e+00
  br i1 %8737, label %8738, label %8745, !dx.controlflow.hints !167

; <label>:8738                                    ; preds = %8718
  %8739 = fmul fast float %8734, 0x3FF7154760000000
  %8740 = call float @dx.op.unary.f32(i32 21, float %8739)  ; Exp(value)
  %8741 = fsub fast float 1.000000e+00, %8740
  %8742 = fmul fast float %8731, %8741
  %8743 = fsub fast float -0.000000e+00, %8742
  %8744 = fdiv fast float %8743, %8734
  br label %8745

; <label>:8745                                    ; preds = %8738, %8718
  %8746 = phi float [ %8740, %8738 ], [ 1.000000e+00, %8718 ]
  %8747 = phi float [ %8744, %8738 ], [ %8731, %8718 ]
  %8748 = fcmp fast une float %8735, 0.000000e+00
  br i1 %8748, label %8749, label %8756, !dx.controlflow.hints !167

; <label>:8749                                    ; preds = %8745
  %8750 = fmul fast float %8735, 0x3FF7154760000000
  %8751 = call float @dx.op.unary.f32(i32 21, float %8750)  ; Exp(value)
  %8752 = fsub fast float 1.000000e+00, %8751
  %8753 = fmul fast float %8732, %8752
  %8754 = fsub fast float -0.000000e+00, %8753
  %8755 = fdiv fast float %8754, %8735
  br label %8756

; <label>:8756                                    ; preds = %8749, %8745
  %8757 = phi float [ %8751, %8749 ], [ 1.000000e+00, %8745 ]
  %8758 = phi float [ %8755, %8749 ], [ %8732, %8745 ]
  %8759 = fcmp fast une float %8736, 0.000000e+00
  br i1 %8759, label %8760, label %8767, !dx.controlflow.hints !167

; <label>:8760                                    ; preds = %8756
  %8761 = fmul fast float %8736, 0x3FF7154760000000
  %8762 = call float @dx.op.unary.f32(i32 21, float %8761)  ; Exp(value)
  %8763 = fsub fast float 1.000000e+00, %8762
  %8764 = fmul fast float %8733, %8763
  %8765 = fsub fast float -0.000000e+00, %8764
  %8766 = fdiv fast float %8765, %8736
  br label %8767

; <label>:8767                                    ; preds = %8760, %8756
  %8768 = phi float [ %8762, %8760 ], [ 1.000000e+00, %8756 ]
  %8769 = phi float [ %8766, %8760 ], [ %8733, %8756 ]
  %8770 = fcmp fast ogt float %8666, %8668
  br i1 %8770, label %8771, label %8791

; <label>:8771                                    ; preds = %8767
  %8772 = fsub fast float 1.000000e+00, %8668
  %8773 = fmul fast float %8684, %8772
  %8774 = fmul fast float %8685, %8772
  %8775 = fmul fast float %8686, %8772
  %8776 = fmul fast float %8687, %8772
  %8777 = fcmp fast une float %8776, 0.000000e+00
  br i1 %8777, label %8778, label %8829, !dx.controlflow.hints !168

; <label>:8778                                    ; preds = %8771
  %8779 = fmul fast float %8776, 0x3FF7154760000000
  %8780 = call float @dx.op.unary.f32(i32 21, float %8779)  ; Exp(value)
  %8781 = fsub fast float 1.000000e+00, %8780
  %8782 = fmul fast float %8773, %8781
  %8783 = fsub fast float -0.000000e+00, %8782
  %8784 = fmul fast float %8774, %8781
  %8785 = fsub fast float -0.000000e+00, %8784
  %8786 = fmul fast float %8775, %8781
  %8787 = fsub fast float -0.000000e+00, %8786
  %8788 = fdiv fast float %8783, %8776
  %8789 = fdiv fast float %8785, %8776
  %8790 = fdiv fast float %8787, %8776
  br label %8829

; <label>:8791                                    ; preds = %8767
  %8792 = fsub fast float 1.000000e+00, %8666
  %8793 = fmul fast float %8697, %8792
  %8794 = fmul fast float %8708, %8792
  %8795 = fmul fast float %8719, %8792
  %8796 = fmul fast float %8698, %8792
  %8797 = fmul fast float %8709, %8792
  %8798 = fmul fast float %8720, %8792
  %8799 = fcmp fast une float %8796, 0.000000e+00
  br i1 %8799, label %8800, label %8807, !dx.controlflow.hints !167

; <label>:8800                                    ; preds = %8791
  %8801 = fmul fast float %8796, 0x3FF7154760000000
  %8802 = call float @dx.op.unary.f32(i32 21, float %8801)  ; Exp(value)
  %8803 = fsub fast float 1.000000e+00, %8802
  %8804 = fmul fast float %8793, %8803
  %8805 = fsub fast float -0.000000e+00, %8804
  %8806 = fdiv fast float %8805, %8796
  br label %8807

; <label>:8807                                    ; preds = %8800, %8791
  %8808 = phi float [ %8806, %8800 ], [ %8793, %8791 ]
  %8809 = phi float [ %8802, %8800 ], [ 1.000000e+00, %8791 ]
  %8810 = fcmp fast une float %8797, 0.000000e+00
  br i1 %8810, label %8811, label %8818, !dx.controlflow.hints !167

; <label>:8811                                    ; preds = %8807
  %8812 = fmul fast float %8797, 0x3FF7154760000000
  %8813 = call float @dx.op.unary.f32(i32 21, float %8812)  ; Exp(value)
  %8814 = fsub fast float 1.000000e+00, %8813
  %8815 = fmul fast float %8794, %8814
  %8816 = fsub fast float -0.000000e+00, %8815
  %8817 = fdiv fast float %8816, %8797
  br label %8818

; <label>:8818                                    ; preds = %8811, %8807
  %8819 = phi float [ %8817, %8811 ], [ %8794, %8807 ]
  %8820 = phi float [ %8813, %8811 ], [ 1.000000e+00, %8807 ]
  %8821 = fcmp fast une float %8798, 0.000000e+00
  br i1 %8821, label %8822, label %8829, !dx.controlflow.hints !167

; <label>:8822                                    ; preds = %8818
  %8823 = fmul fast float %8798, 0x3FF7154760000000
  %8824 = call float @dx.op.unary.f32(i32 21, float %8823)  ; Exp(value)
  %8825 = fsub fast float 1.000000e+00, %8824
  %8826 = fmul fast float %8795, %8825
  %8827 = fsub fast float -0.000000e+00, %8826
  %8828 = fdiv fast float %8827, %8798
  br label %8829

; <label>:8829                                    ; preds = %8822, %8818, %8778, %8771
  %8830 = phi float [ %8828, %8822 ], [ %8790, %8778 ], [ %8775, %8771 ], [ %8795, %8818 ]
  %8831 = phi float [ %8819, %8822 ], [ %8789, %8778 ], [ %8774, %8771 ], [ %8819, %8818 ]
  %8832 = phi float [ %8808, %8822 ], [ %8788, %8778 ], [ %8773, %8771 ], [ %8808, %8818 ]
  %8833 = phi float [ %8824, %8822 ], [ %8780, %8778 ], [ 1.000000e+00, %8771 ], [ 1.000000e+00, %8818 ]
  %8834 = phi float [ %8820, %8822 ], [ %8780, %8778 ], [ 1.000000e+00, %8771 ], [ %8820, %8818 ]
  %8835 = phi float [ %8809, %8822 ], [ %8780, %8778 ], [ 1.000000e+00, %8771 ], [ %8809, %8818 ]
  %8836 = fmul fast float %8835, %8747
  %8837 = fmul fast float %8834, %8758
  %8838 = fmul fast float %8833, %8769
  %8839 = fadd fast float %8836, %8832
  %8840 = fadd fast float %8837, %8831
  %8841 = fadd fast float %8838, %8830
  %8842 = fmul fast float %8835, %8746
  %8843 = fmul fast float %8834, %8757
  %8844 = fmul fast float %8833, %8768
  br label %8845

; <label>:8845                                    ; preds = %8829, %8640
  %8846 = phi float [ %8844, %8829 ], [ %8646, %8640 ]
  %8847 = phi float [ %8843, %8829 ], [ %8645, %8640 ]
  %8848 = phi float [ %8842, %8829 ], [ %8644, %8640 ]
  %8849 = phi float [ %8841, %8829 ], [ %8643, %8640 ]
  %8850 = phi float [ %8840, %8829 ], [ %8642, %8640 ]
  %8851 = phi float [ %8839, %8829 ], [ %8641, %8640 ]
  %8852 = fmul fast float %8851, %7793
  %8853 = fmul fast float %8850, %7795
  %8854 = fmul fast float %8849, %7797
  %8855 = fmul fast float %8848, %8088
  %8856 = call float @dx.op.dot3.f32(i32 55, float %8848, float %8847, float %8846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8857 = call float @dx.op.dot3.f32(i32 55, float %8852, float %8853, float %8854, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8858 = select i1 %262, float %8856, float %8848
  %8859 = select i1 %262, float %8856, float %8847
  %8860 = select i1 %262, float 1.000000e+00, float %8846
  %8861 = select i1 %262, float %8857, float %8852
  %8862 = select i1 %262, float 0.000000e+00, float %8853
  %8863 = select i1 %262, float 0.000000e+00, float %8854
  %8864 = fmul fast float %8858, %8082
  %8865 = fmul fast float %8859, %8083
  %8866 = fmul fast float %8860, %8084
  %8867 = fadd fast float %8864, %8861
  %8868 = fadd fast float %8865, %8862
  %8869 = fadd fast float %8863, %8866
  %8870 = fmul fast float %8858, %8085
  %8871 = fmul fast float %8859, %8086
  %8872 = fmul fast float %8860, %8087
  %8873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.i32 %8873, 0
  %8875 = icmp eq i32 %8874, 0
  br i1 %8875, label %9243, label %8876, !dx.controlflow.hints !169

; <label>:8876                                    ; preds = %8845
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 2
  %8879 = extractvalue %dx.types.CBufRet.f32 %8877, 3
  %8880 = fmul fast float %8878, %109
  %8881 = fmul fast float %8879, %110
  %8882 = fmul fast float %8880, 2.000000e+00
  %8883 = fmul fast float %8881, 2.000000e+00
  %8884 = fsub fast float 1.000000e+00, %8882
  %8885 = fsub fast float 1.000000e+00, %8883
  %8886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8887 = extractvalue %dx.types.CBufRet.f32 %8886, 0
  %8888 = extractvalue %dx.types.CBufRet.f32 %8886, 1
  %8889 = extractvalue %dx.types.CBufRet.f32 %8886, 2
  %8890 = fmul fast float %8884, %8887
  %8891 = fmul fast float %8884, %8888
  %8892 = fmul fast float %8884, %8889
  %8893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.f32 %8893, 0
  %8895 = extractvalue %dx.types.CBufRet.f32 %8893, 1
  %8896 = extractvalue %dx.types.CBufRet.f32 %8893, 2
  %8897 = fmul fast float %8885, %8894
  %8898 = fmul fast float %8885, %8895
  %8899 = fmul fast float %8885, %8896
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 0
  %8902 = extractvalue %dx.types.CBufRet.f32 %8900, 1
  %8903 = extractvalue %dx.types.CBufRet.f32 %8900, 2
  %8904 = fadd fast float %8897, %8901
  %8905 = fadd fast float %8904, %8890
  %8906 = fadd fast float %8898, %8902
  %8907 = fadd fast float %8906, %8891
  %8908 = fadd fast float %8899, %8903
  %8909 = fadd fast float %8908, %8892
  %8910 = fmul fast float %8905, %8081
  %8911 = fmul fast float %8907, %8081
  %8912 = fmul fast float %8909, %8081
  %8913 = fmul fast float %8910, %8910
  %8914 = fmul fast float %8911, %8911
  %8915 = fadd fast float %8913, %8914
  %8916 = fmul fast float %8912, %8912
  %8917 = fadd fast float %8915, %8916
  %8918 = call float @dx.op.unary.f32(i32 24, float %8917)  ; Sqrt(value)
  %8919 = extractvalue %dx.types.CBufRet.f32 %7808, 0
  %8920 = fsub fast float %8918, %8919
  %8921 = extractvalue %dx.types.CBufRet.f32 %7808, 2
  %8922 = fmul fast float %8920, %8921
  %8923 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8924 = fadd fast float %8923, -5.000000e-01
  %8925 = fmul fast float %8924, 2.000000e+00
  %8926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8927 = extractvalue %dx.types.CBufRet.f32 %8926, 2
  %8928 = call float @dx.op.binary.f32(i32 36, float %8927, float %8925)  ; FMin(a,b)
  %8929 = fsub fast float -0.000000e+00, %8927
  %8930 = fcmp fast ogt float %8928, %8929
  br i1 %8930, label %8931, label %9243, !dx.controlflow.hints !170

; <label>:8931                                    ; preds = %8876
  %8932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8933 = extractvalue %dx.types.CBufRet.f32 %8932, 3
  %8934 = fcmp fast ogt float %8933, 0.000000e+00
  br i1 %8934, label %8935, label %9010, !dx.controlflow.hints !171

; <label>:8935                                    ; preds = %8931
  %8936 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %8937 = extractvalue %dx.types.Dimensions %8936, 0
  %8938 = sitofp i32 %8937 to float
  %8939 = extractvalue %dx.types.Dimensions %8936, 1
  %8940 = sitofp i32 %8939 to float
  %8941 = fmul fast float %8880, %8938
  %8942 = fmul fast float %8881, %8940
  %8943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8944 = extractvalue %dx.types.CBufRet.f32 %8943, 1
  %8945 = fsub fast float -0.000000e+00, %8944
  %8946 = fptoui float %8945 to i32
  %8947 = fptoui float %8941 to i32
  %8948 = fptoui float %8942 to i32
  %8949 = and i32 %8946, 31
  %8950 = lshr i32 %8947, %8949
  %8951 = lshr i32 %8948, %8949
  %8952 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %8946, i32 %8950, i32 %8951, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8953 = extractvalue %dx.types.ResRet.f32 %8952, 0
  %8954 = fcmp fast olt float %8953, -1.000000e+00
  %8955 = fcmp fast ogt float %8953, -1.000000e+00
  %8956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8957 = extractvalue %dx.types.CBufRet.f32 %8956, 1
  %8958 = select i1 %8955, float %8957, float 1.000000e+00
  %8959 = fadd fast float %8953, 1.000000e+00
  %8960 = fmul fast float %8958, %8959
  %8961 = call float @dx.op.unary.f32(i32 6, float %8960)  ; FAbs(value)
  %8962 = extractvalue %dx.types.CBufRet.f32 %8956, 3
  %8963 = fcmp fast oge float %8961, %8962
  %8964 = select i1 %8963, float 0x4197782600000000, float %8961
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8968 = extractvalue %dx.types.CBufRet.f32 %8965, 2
  %8969 = select i1 %8954, float %8966, float %8887
  %8970 = select i1 %8954, float %8967, float %8888
  %8971 = select i1 %8954, float %8968, float %8889
  %8972 = fmul fast float %8969, %8884
  %8973 = fmul fast float %8970, %8884
  %8974 = fmul fast float %8971, %8884
  %8975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %8976 = extractvalue %dx.types.CBufRet.f32 %8975, 0
  %8977 = extractvalue %dx.types.CBufRet.f32 %8975, 1
  %8978 = extractvalue %dx.types.CBufRet.f32 %8975, 2
  %8979 = select i1 %8954, float %8976, float %8894
  %8980 = select i1 %8954, float %8977, float %8895
  %8981 = select i1 %8954, float %8978, float %8896
  %8982 = fmul fast float %8979, %8885
  %8983 = fmul fast float %8980, %8885
  %8984 = fmul fast float %8981, %8885
  %8985 = fadd fast float %8982, %8972
  %8986 = fadd fast float %8983, %8973
  %8987 = fadd fast float %8984, %8974
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 0
  %8990 = extractvalue %dx.types.CBufRet.f32 %8988, 1
  %8991 = extractvalue %dx.types.CBufRet.f32 %8988, 2
  %8992 = select i1 %8954, float %8989, float %8901
  %8993 = select i1 %8954, float %8990, float %8902
  %8994 = select i1 %8954, float %8991, float %8903
  %8995 = fadd fast float %8985, %8992
  %8996 = fadd fast float %8986, %8993
  %8997 = fadd fast float %8987, %8994
  %8998 = fmul fast float %8995, %8964
  %8999 = fmul fast float %8996, %8964
  %9000 = fmul fast float %8997, %8964
  %9001 = fmul fast float %8998, %8998
  %9002 = fmul fast float %8999, %8999
  %9003 = fadd fast float %9001, %9002
  %9004 = fmul fast float %9000, %9000
  %9005 = fadd fast float %9003, %9004
  %9006 = call float @dx.op.unary.f32(i32 24, float %9005)  ; Sqrt(value)
  %9007 = fsub fast float %9006, %8919
  %9008 = fmul fast float %9007, %8921
  %9009 = call float @dx.op.unary.f32(i32 7, float %9008)  ; Saturate(value)
  br label %9010

; <label>:9010                                    ; preds = %8935, %8931
  %9011 = phi float [ %9009, %8935 ], [ 1.000000e+00, %8931 ]
  %9012 = fmul fast float %8928, 5.000000e-01
  %9013 = fadd fast float %9012, 5.000000e-01
  %9014 = call float @dx.op.unary.f32(i32 22, float %9013)  ; Frc(value)
  %9015 = call float @dx.op.unary.f32(i32 27, float %9014)  ; Round_ni(value)
  %9016 = call float @dx.op.unary.f32(i32 22, float %9014)  ; Frc(value)
  %9017 = fmul fast float %9016, 2.000000e+00
  %9018 = fadd fast float %9017, -1.000000e+00
  %9019 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %8880, float %8881, float %9015, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9020 = extractvalue %dx.types.ResRet.f32 %9019, 0
  %9021 = extractvalue %dx.types.ResRet.f32 %9019, 1
  %9022 = extractvalue %dx.types.ResRet.f32 %9019, 2
  %9023 = extractvalue %dx.types.ResRet.f32 %9019, 3
  %9024 = fadd fast float %9020, -5.000000e-01
  %9025 = fadd fast float %9022, -5.000000e-01
  %9026 = fmul fast float %9024, 0xBFD5555560000000
  %9027 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9025, float %9026)  ; FMad(a,b,c)
  %9028 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9021, float 0.000000e+00)  ; FMad(a,b,c)
  %9029 = fadd fast float %9028, %9023
  %9030 = fmul fast float %9024, -7.500000e-01
  %9031 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9025, float %9030)  ; FMad(a,b,c)
  %9032 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9021, float 0.000000e+00)  ; FMad(a,b,c)
  %9033 = fadd fast float %9032, %9023
  %9034 = call float @dx.op.binary.f32(i32 35, float %9027, float -1.000000e+00)  ; FMax(a,b)
  %9035 = call float @dx.op.binary.f32(i32 35, float %9029, float -1.000000e+00)  ; FMax(a,b)
  %9036 = call float @dx.op.binary.f32(i32 35, float %9031, float -1.000000e+00)  ; FMax(a,b)
  %9037 = call float @dx.op.binary.f32(i32 35, float %9033, float -1.000000e+00)  ; FMax(a,b)
  %9038 = call float @dx.op.binary.f32(i32 36, float %9034, float 1.000000e+00)  ; FMin(a,b)
  %9039 = call float @dx.op.binary.f32(i32 36, float %9035, float 1.000000e+00)  ; FMin(a,b)
  %9040 = call float @dx.op.binary.f32(i32 36, float %9036, float 1.000000e+00)  ; FMin(a,b)
  %9041 = call float @dx.op.binary.f32(i32 36, float %9037, float 1.000000e+00)  ; FMin(a,b)
  %9042 = fcmp fast olt float %9038, 0x3FEFFF8020000000
  br i1 %9042, label %9043, label %9158, !dx.controlflow.hints !172

; <label>:9043                                    ; preds = %9010
  %9044 = extractvalue %dx.types.CBufRet.f32 %8926, 3
  %9045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9046 = extractvalue %dx.types.CBufRet.f32 %9045, 0
  %9047 = extractvalue %dx.types.CBufRet.f32 %9045, 1
  %9048 = extractvalue %dx.types.CBufRet.f32 %9045, 2
  %9049 = extractvalue %dx.types.CBufRet.f32 %9045, 3
  %9050 = fsub fast float %9046, %9038
  %9051 = fsub fast float %9047, %9039
  %9052 = fsub fast float %9048, %9040
  %9053 = fsub fast float %9049, %9041
  %9054 = fmul fast float %9050, %9044
  %9055 = fmul fast float %9051, %9044
  %9056 = fmul fast float %9052, %9044
  %9057 = fmul fast float %9053, %9044
  %9058 = fadd fast float %9054, %9038
  %9059 = fadd fast float %9055, %9039
  %9060 = fsub fast float -0.000000e+00, %9059
  %9061 = fadd fast float %9056, %9040
  %9062 = fadd fast float %9057, %9041
  %9063 = fmul fast float %9058, %9058
  %9064 = fsub fast float %9059, %9063
  %9065 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9064)  ; FMax(a,b)
  %9066 = fdiv fast float 1.000000e+00, %9065
  %9067 = fmul fast float %9059, %9058
  %9068 = fsub fast float %9061, %9067
  %9069 = fsub fast float %9018, %9058
  %9070 = fmul fast float %9018, %9018
  %9071 = fsub fast float %9070, %9059
  %9072 = fmul fast float %9069, %9066
  %9073 = fmul fast float %9072, %9068
  %9074 = fsub fast float %9071, %9073
  %9075 = fmul fast float %9059, %9059
  %9076 = fsub fast float %9062, %9075
  %9077 = fmul fast float %9068, %9068
  %9078 = fmul fast float %9077, %9066
  %9079 = fsub fast float %9076, %9078
  %9080 = fdiv fast float %9074, %9079
  %9081 = fmul fast float %9068, %9080
  %9082 = fsub fast float %9069, %9081
  %9083 = fmul fast float %9082, %9066
  %9084 = fmul fast float %9083, %9058
  %9085 = fsub fast float 1.000000e+00, %9084
  %9086 = fmul fast float %9059, %9080
  %9087 = fsub fast float %9085, %9086
  %9088 = fmul fast float %9083, %9083
  %9089 = fmul fast float %9080, 4.000000e+00
  %9090 = fmul fast float %9089, %9087
  %9091 = fsub fast float %9088, %9090
  %9092 = call float @dx.op.unary.f32(i32 24, float %9091)  ; Sqrt(value)
  %9093 = fcmp fast oge float %9083, 0.000000e+00
  %9094 = fsub fast float -0.000000e+00, %9092
  %9095 = select i1 %9093, float %9094, float %9092
  %9096 = fsub fast float %9095, %9083
  %9097 = fdiv fast float %9096, %9080
  %9098 = fdiv fast float %9087, %9096
  %9099 = fmul fast float %9097, 5.000000e-01
  %9100 = fmul fast float %9098, 2.000000e+00
  %9101 = select i1 %9093, float %9099, float %9100
  %9102 = select i1 %9093, float %9100, float %9099
  %9103 = call float @dx.op.binary.f32(i32 35, float %9101, float %9102)  ; FMax(a,b)
  %9104 = call float @dx.op.binary.f32(i32 36, float %9101, float %9102)  ; FMin(a,b)
  %9105 = fcmp fast ogt float %9018, %9104
  br i1 %9105, label %9106, label %9116

; <label>:9106                                    ; preds = %9043
  %9107 = fsub fast float %9018, %9104
  %9108 = fsub fast float %9103, %9104
  %9109 = fmul fast float %9107, %9108
  %9110 = fmul fast float %9103, %9018
  %9111 = fadd fast float %9103, %9018
  %9112 = fmul fast float %9111, %9058
  %9113 = fadd fast float %9110, %9059
  %9114 = fsub fast float %9113, %9112
  %9115 = fdiv fast float %9114, %9109
  br label %9116

; <label>:9116                                    ; preds = %9106, %9043
  %9117 = phi float [ %9115, %9106 ], [ 0.000000e+00, %9043 ]
  %9118 = fcmp fast ogt float %9018, %9103
  %9119 = fsub fast float %9018, %9103
  br i1 %9118, label %9120, label %9130

; <label>:9120                                    ; preds = %9116
  %9121 = fsub fast float %9103, %9104
  %9122 = fmul fast float %9121, %9119
  %9123 = fmul fast float %9104, %9018
  %9124 = fadd fast float %9104, %9018
  %9125 = fmul fast float %9124, %9058
  %9126 = fsub fast float %9060, %9123
  %9127 = fadd fast float %9126, %9125
  %9128 = fdiv fast float %9127, %9122
  %9129 = fadd fast float %9128, %9117
  br label %9130

; <label>:9130                                    ; preds = %9120, %9116
  %9131 = phi float [ %9129, %9120 ], [ %9117, %9116 ]
  %9132 = fsub fast float %9018, %9104
  %9133 = fmul fast float %9132, %9119
  %9134 = fmul fast float %9104, %9103
  %9135 = fadd fast float %9104, %9103
  %9136 = fmul fast float %9135, %9058
  %9137 = fadd fast float %9134, %9059
  %9138 = fsub fast float %9137, %9136
  %9139 = fdiv fast float %9138, %9133
  %9140 = call float @dx.op.unary.f32(i32 7, float %9131)  ; Saturate(value)
  %9141 = fcmp fast oeq float %7809, 0.000000e+00
  %9142 = extractvalue %dx.types.CBufRet.f32 %8926, 0
  %9143 = fcmp fast oeq float %9142, 0.000000e+00
  %9144 = or i1 %9141, %9143
  %9145 = fmul fast float %9142, 2.000000e+00
  %9146 = fadd fast float %8927, %8928
  %9147 = fdiv fast float %9146, %9145
  %9148 = call float @dx.op.unary.f32(i32 7, float %9147)  ; Saturate(value)
  %9149 = fmul fast float %9148, 2.000000e+00
  %9150 = fsub fast float 3.000000e+00, %9149
  %9151 = fmul fast float %9148, %9148
  %9152 = fmul fast float %9151, %9150
  %9153 = select i1 %9144, float 1.000000e+00, float %9152
  %9154 = fmul fast float %9139, %7809
  %9155 = fadd fast float %9140, %9154
  %9156 = call float @dx.op.unary.f32(i32 7, float %9155)  ; Saturate(value)
  %9157 = fmul fast float %9153, %9156
  br label %9158

; <label>:9158                                    ; preds = %9130, %9010
  %9159 = phi float [ %9157, %9130 ], [ 0.000000e+00, %9010 ]
  %9160 = fsub fast float 1.000000e+00, %9159
  %9161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %8880, float %8881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9162 = extractvalue %dx.types.ResRet.f32 %9161, 0
  %9163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.i32 %9163, 2
  %9165 = icmp eq i32 %9164, 0
  br i1 %9165, label %9171, label %9166

; <label>:9166                                    ; preds = %9158
  %9167 = call float @dx.op.unary.f32(i32 7, float %9159)  ; Saturate(value)
  %9168 = fadd fast float %9162, -1.000000e+00
  %9169 = fmul fast float %9167, %9168
  %9170 = fadd fast float %9169, 1.000000e+00
  br label %9171

; <label>:9171                                    ; preds = %9166, %9158
  %9172 = phi float [ %9170, %9166 ], [ %9160, %9158 ]
  br i1 %8934, label %9173, label %9191

; <label>:9173                                    ; preds = %9171
  %9174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9174, 1
  %9176 = fsub fast float %9011, %9175
  %9177 = call float @dx.op.unary.f32(i32 7, float %9176)  ; Saturate(value)
  %9178 = fsub fast float %9011, %8933
  %9179 = call float @dx.op.unary.f32(i32 7, float %9178)  ; Saturate(value)
  %9180 = fsub fast float %9177, %9179
  %9181 = fsub fast float %9013, %9179
  %9182 = fdiv fast float %9181, %9180
  %9183 = call float @dx.op.unary.f32(i32 7, float %9182)  ; Saturate(value)
  %9184 = fmul fast float %9183, 2.000000e+00
  %9185 = fsub fast float 3.000000e+00, %9184
  %9186 = fsub fast float %9162, %9172
  %9187 = fmul fast float %9183, %9183
  %9188 = fmul fast float %9187, %9186
  %9189 = fmul fast float %9188, %9185
  %9190 = fadd fast float %9189, %9172
  br label %9191

; <label>:9191                                    ; preds = %9173, %9171
  %9192 = phi float [ %9190, %9173 ], [ %9172, %9171 ]
  %9193 = call float @dx.op.binary.f32(i32 35, float %9162, float %9192)  ; FMax(a,b)
  %9194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9195 = extractvalue %dx.types.CBufRet.i32 %9194, 2
  %9196 = and i32 %9195, 1
  %9197 = icmp eq i32 %9196, 0
  %9198 = fcmp fast une float %9193, 1.000000e+00
  %9199 = and i1 %9198, %9197
  br i1 %9199, label %9200, label %9219

; <label>:9200                                    ; preds = %9191
  %9201 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %8880, float %8881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9202 = extractvalue %dx.types.ResRet.f32 %9201, 0
  %9203 = extractvalue %dx.types.ResRet.f32 %9201, 1
  %9204 = extractvalue %dx.types.ResRet.f32 %9201, 2
  %9205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9206 = extractvalue %dx.types.CBufRet.f32 %9205, 1
  %9207 = fmul fast float %9206, %9202
  %9208 = fmul fast float %9206, %9203
  %9209 = fmul fast float %9206, %9204
  %9210 = fcmp fast ogt float %9162, 0x3FEFFF2E40000000
  %9211 = fsub fast float 1.000000e+00, %9193
  %9212 = fsub fast float 1.000000e+00, %9162
  %9213 = fdiv fast float %9211, %9212
  %9214 = call float @dx.op.unary.f32(i32 7, float %9213)  ; Saturate(value)
  %9215 = select i1 %9210, float 0.000000e+00, float %9214
  %9216 = fmul fast float %9207, %9215
  %9217 = fmul fast float %9208, %9215
  %9218 = fmul fast float %9209, %9215
  br label %9219

; <label>:9219                                    ; preds = %9200, %9191
  %9220 = phi float [ 0.000000e+00, %9191 ], [ %9216, %9200 ]
  %9221 = phi float [ 0.000000e+00, %9191 ], [ %9217, %9200 ]
  %9222 = phi float [ 0.000000e+00, %9191 ], [ %9218, %9200 ]
  %9223 = fmul fast float %9220, %7793
  %9224 = fmul fast float %9221, %7795
  %9225 = fmul fast float %9222, %7797
  %9226 = fmul fast float %9193, %8855
  %9227 = call float @dx.op.dot3.f32(i32 55, float %9193, float %9193, float %9193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9228 = call float @dx.op.dot3.f32(i32 55, float %9223, float %9224, float %9225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9229 = select i1 %262, float %9227, float %9193
  %9230 = select i1 %262, float 1.000000e+00, float %9193
  %9231 = select i1 %262, float %9228, float %9223
  %9232 = select i1 %262, float 0.000000e+00, float %9224
  %9233 = select i1 %262, float 0.000000e+00, float %9225
  %9234 = fmul fast float %9229, %8867
  %9235 = fmul fast float %9229, %8868
  %9236 = fmul fast float %9230, %8869
  %9237 = fadd fast float %9234, %9231
  %9238 = fadd fast float %9235, %9232
  %9239 = fadd fast float %9233, %9236
  %9240 = fmul fast float %9229, %8870
  %9241 = fmul fast float %9229, %8871
  %9242 = fmul fast float %9230, %8872
  br label %9243

; <label>:9243                                    ; preds = %9219, %8876, %8845, %8077
  %9244 = phi float [ %8082, %8077 ], [ %8867, %8845 ], [ %9237, %9219 ], [ %8867, %8876 ]
  %9245 = phi float [ %8083, %8077 ], [ %8868, %8845 ], [ %9238, %9219 ], [ %8868, %8876 ]
  %9246 = phi float [ %8084, %8077 ], [ %8869, %8845 ], [ %9239, %9219 ], [ %8869, %8876 ]
  %9247 = phi float [ %8085, %8077 ], [ %8870, %8845 ], [ %9240, %9219 ], [ %8870, %8876 ]
  %9248 = phi float [ %8086, %8077 ], [ %8871, %8845 ], [ %9241, %9219 ], [ %8871, %8876 ]
  %9249 = phi float [ %8087, %8077 ], [ %8872, %8845 ], [ %9242, %9219 ], [ %8872, %8876 ]
  %9250 = phi float [ %8088, %8077 ], [ %8855, %8845 ], [ %9226, %9219 ], [ %8855, %8876 ]
  %9251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9252 = extractvalue %dx.types.CBufRet.f32 %9251, 2
  %9253 = extractvalue %dx.types.CBufRet.f32 %9251, 3
  %9254 = fmul fast float %9252, %109
  %9255 = fmul fast float %9253, %110
  %9256 = call float @dx.op.unary.f32(i32 7, float %9254)  ; Saturate(value)
  %9257 = call float @dx.op.unary.f32(i32 7, float %9255)  ; Saturate(value)
  %9258 = select i1 %7819, i32 2, i32 0
  %9259 = or i32 %9258, 1
  %9260 = uitofp i32 %9259 to float
  %9261 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9256, float %9257, float %9260, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9262 = extractvalue %dx.types.ResRet.f32 %9261, 0
  %9263 = extractvalue %dx.types.ResRet.f32 %9261, 1
  %9264 = extractvalue %dx.types.ResRet.f32 %9261, 2
  %9265 = extractvalue %dx.types.ResRet.f32 %9261, 3
  %9266 = add nuw nsw i32 %9258, 2
  %9267 = uitofp i32 %9266 to float
  %9268 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9256, float %9257, float %9267, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9269 = extractvalue %dx.types.ResRet.f32 %9268, 0
  %9270 = extractvalue %dx.types.ResRet.f32 %9268, 1
  %9271 = extractvalue %dx.types.ResRet.f32 %9268, 2
  %9272 = extractvalue %dx.types.ResRet.f32 %9268, 3
  %9273 = call float @dx.op.binary.f32(i32 35, float %9263, float %9264)  ; FMax(a,b)
  %9274 = call float @dx.op.binary.f32(i32 35, float %9262, float %9273)  ; FMax(a,b)
  %9275 = call float @dx.op.binary.f32(i32 35, float %9274, float %9265)  ; FMax(a,b)
  %9276 = call float @dx.op.binary.f32(i32 36, float %9270, float %9271)  ; FMin(a,b)
  %9277 = call float @dx.op.binary.f32(i32 36, float %9269, float %9276)  ; FMin(a,b)
  %9278 = call float @dx.op.binary.f32(i32 36, float %9277, float %9272)  ; FMin(a,b)
  %9279 = fmul fast float %9275, 2.550000e+02
  %9280 = fadd fast float %9279, 0x3F70101020000000
  %9281 = fptoui float %9280 to i32
  %9282 = fmul fast float %9278, 2.550000e+02
  %9283 = fadd fast float %9282, 0x3F70101020000000
  %9284 = fptoui float %9283 to i32
  %9285 = icmp ult i32 %9281, %9284
  br i1 %9285, label %9286, label %9455

; <label>:9286                                    ; preds = %9243
  %9287 = fcmp fast ogt float %95, 9.843750e-01
  %9288 = fadd fast float %8081, -4.000000e+00
  %9289 = select i1 %9287, float -4.000000e+00, float %9288
  %9290 = call float @dx.op.binary.f32(i32 35, float %9289, float 0.000000e+00)  ; FMax(a,b)
  %9291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9292 = extractvalue %dx.types.CBufRet.f32 %9291, 0
  %9293 = fadd fast float %9292, %9290
  %9294 = extractvalue %dx.types.CBufRet.f32 %9291, 2
  %9295 = fmul fast float %9293, %9294
  %9296 = call float @dx.op.unary.f32(i32 23, float %9295)  ; Log(value)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9291, 3
  %9298 = fmul fast float %9297, %9296
  %9299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9300 = extractvalue %dx.types.CBufRet.f32 %9299, 2
  %9301 = fmul fast float %9298, %9300
  %9302 = call float @dx.op.unary.f32(i32 7, float %9301)  ; Saturate(value)
  %9303 = uitofp i32 %9281 to float
  %9304 = uitofp i32 %9284 to float
  %9305 = fadd fast float %9303, 5.000000e-01
  %9306 = fadd fast float %9304, 5.000000e-01
  %9307 = fmul fast float %9300, %9305
  %9308 = fmul fast float %9300, %9306
  %9309 = fadd fast float %9307, 0x3F0FFB4800000000
  %9310 = fadd fast float %9308, 0xBF0FFB4800000000
  %9311 = call float @dx.op.binary.f32(i32 35, float %9302, float %9309)  ; FMax(a,b)
  %9312 = call float @dx.op.binary.f32(i32 36, float %9311, float %9310)  ; FMin(a,b)
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 1
  %9315 = extractvalue %dx.types.CBufRet.f32 %9313, 2
  %9316 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  %9317 = select i1 %7819, float %9316, float 0.000000e+00
  %9318 = fmul fast float %9314, %9312
  %9319 = fadd fast float %9317, %9318
  %9320 = fadd fast float %9317, %9315
  %9321 = fsub fast float %9314, %9315
  %9322 = fadd fast float %9321, %9317
  %9323 = call float @dx.op.binary.f32(i32 35, float %9319, float %9320)  ; FMax(a,b)
  %9324 = call float @dx.op.binary.f32(i32 36, float %9323, float %9322)  ; FMin(a,b)
  %9325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9256, float %9257, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9326 = extractvalue %dx.types.ResRet.f32 %9325, 0
  %9327 = extractvalue %dx.types.ResRet.f32 %9325, 1
  %9328 = extractvalue %dx.types.ResRet.f32 %9325, 2
  %9329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9330 = extractvalue %dx.types.CBufRet.i32 %9329, 0
  %9331 = extractvalue %dx.types.CBufRet.i32 %9329, 1
  %9332 = uitofp i32 %9330 to float
  %9333 = uitofp i32 %9331 to float
  %9334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9335 = extractvalue %dx.types.CBufRet.f32 %9334, 0
  %9336 = extractvalue %dx.types.CBufRet.f32 %9334, 1
  %9337 = fmul fast float %9332, %9256
  %9338 = fmul fast float %9333, %9257
  %9339 = fadd fast float %9337, -5.000000e-01
  %9340 = fadd fast float %9338, -5.000000e-01
  %9341 = call float @dx.op.unary.f32(i32 22, float %9339)  ; Frc(value)
  %9342 = call float @dx.op.unary.f32(i32 22, float %9340)  ; Frc(value)
  %9343 = fmul fast float %9341, %9341
  %9344 = fmul fast float %9343, %9341
  %9345 = fsub fast float 3.000000e+00, %9341
  %9346 = fmul fast float %9343, %9345
  %9347 = fmul fast float %9341, 3.000000e+00
  %9348 = fmul fast float %9344, 3.000000e+00
  %9349 = fmul fast float %9343, 6.000000e+00
  %9350 = fsub fast float %9348, %9349
  %9351 = fadd fast float %9350, 4.000000e+00
  %9352 = fmul fast float %9351, 0x3FC5555560000000
  %9353 = fmul fast float %9344, -3.000000e+00
  %9354 = fadd fast float %9343, %9341
  %9355 = fmul fast float %9354, 3.000000e+00
  %9356 = fadd fast float %9353, 1.000000e+00
  %9357 = fadd fast float %9356, %9355
  %9358 = fmul fast float %9344, 0x3FC5555560000000
  %9359 = fmul fast float %9342, %9342
  %9360 = fmul fast float %9359, %9342
  %9361 = fsub fast float 3.000000e+00, %9342
  %9362 = fmul fast float %9359, %9361
  %9363 = fmul fast float %9342, 3.000000e+00
  %9364 = fmul fast float %9360, 3.000000e+00
  %9365 = fmul fast float %9359, 6.000000e+00
  %9366 = fsub fast float %9364, %9365
  %9367 = fadd fast float %9366, 4.000000e+00
  %9368 = fmul fast float %9367, 0x3FC5555560000000
  %9369 = fmul fast float %9360, -3.000000e+00
  %9370 = fadd fast float %9359, %9342
  %9371 = fmul fast float %9370, 3.000000e+00
  %9372 = fadd fast float %9369, 1.000000e+00
  %9373 = fadd fast float %9372, %9371
  %9374 = fmul fast float %9360, 0x3FC5555560000000
  %9375 = fadd fast float %9341, 1.000000e+00
  %9376 = fsub fast float 1.000000e+00, %9347
  %9377 = fadd fast float %9376, %9346
  %9378 = fadd fast float %9377, %9351
  %9379 = fmul fast float %9378, 0x3FC5555560000000
  %9380 = fdiv fast float %9352, %9379
  %9381 = fsub fast float %9375, %9380
  %9382 = fsub fast float 1.000000e+00, %9341
  %9383 = fadd fast float %9357, %9344
  %9384 = fmul fast float %9383, 0x3FC5555560000000
  %9385 = fdiv fast float %9358, %9384
  %9386 = fadd fast float %9382, %9385
  %9387 = fadd fast float %9342, 1.000000e+00
  %9388 = fsub fast float 1.000000e+00, %9363
  %9389 = fadd fast float %9388, %9362
  %9390 = fadd fast float %9389, %9367
  %9391 = fmul fast float %9390, 0x3FC5555560000000
  %9392 = fdiv fast float %9368, %9391
  %9393 = fsub fast float %9387, %9392
  %9394 = fsub fast float 1.000000e+00, %9342
  %9395 = fadd fast float %9373, %9360
  %9396 = fmul fast float %9395, 0x3FC5555560000000
  %9397 = fdiv fast float %9374, %9396
  %9398 = fadd fast float %9397, %9394
  %9399 = fmul fast float %9381, %9335
  %9400 = fsub fast float %9256, %9399
  %9401 = fmul fast float %9386, %9335
  %9402 = fadd fast float %9401, %9256
  %9403 = fmul fast float %9398, %9336
  %9404 = fadd fast float %9403, %9257
  %9405 = fmul fast float %9393, %9336
  %9406 = fsub fast float %9257, %9405
  %9407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9400, float %9406, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9408 = extractvalue %dx.types.ResRet.f32 %9407, 0
  %9409 = extractvalue %dx.types.ResRet.f32 %9407, 1
  %9410 = extractvalue %dx.types.ResRet.f32 %9407, 2
  %9411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9402, float %9406, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9412 = extractvalue %dx.types.ResRet.f32 %9411, 0
  %9413 = extractvalue %dx.types.ResRet.f32 %9411, 1
  %9414 = extractvalue %dx.types.ResRet.f32 %9411, 2
  %9415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9400, float %9404, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9416 = extractvalue %dx.types.ResRet.f32 %9415, 0
  %9417 = extractvalue %dx.types.ResRet.f32 %9415, 1
  %9418 = extractvalue %dx.types.ResRet.f32 %9415, 2
  %9419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9402, float %9404, float %9324, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9420 = extractvalue %dx.types.ResRet.f32 %9419, 0
  %9421 = extractvalue %dx.types.ResRet.f32 %9419, 1
  %9422 = extractvalue %dx.types.ResRet.f32 %9419, 2
  %9423 = fsub fast float %9416, %9408
  %9424 = fsub fast float %9417, %9409
  %9425 = fsub fast float %9418, %9410
  %9426 = fmul fast float %9423, %9396
  %9427 = fmul fast float %9424, %9396
  %9428 = fmul fast float %9425, %9396
  %9429 = fadd fast float %9426, %9408
  %9430 = fadd fast float %9427, %9409
  %9431 = fadd fast float %9428, %9410
  %9432 = fsub fast float %9420, %9412
  %9433 = fsub fast float %9421, %9413
  %9434 = fsub fast float %9422, %9414
  %9435 = fmul fast float %9432, %9396
  %9436 = fmul fast float %9433, %9396
  %9437 = fmul fast float %9434, %9396
  %9438 = fsub fast float %9412, %9429
  %9439 = fadd fast float %9438, %9435
  %9440 = fsub fast float %9413, %9430
  %9441 = fadd fast float %9440, %9436
  %9442 = fsub fast float %9414, %9431
  %9443 = fadd fast float %9442, %9437
  %9444 = fmul fast float %9439, %9384
  %9445 = fmul fast float %9441, %9384
  %9446 = fmul fast float %9443, %9384
  %9447 = fadd fast float %9444, %9429
  %9448 = fadd fast float %9445, %9430
  %9449 = fadd fast float %9446, %9431
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 1
  %9452 = fmul fast float %9447, %9451
  %9453 = fmul fast float %9448, %9451
  %9454 = fmul fast float %9449, %9451
  br label %9455

; <label>:9455                                    ; preds = %9286, %9243
  %9456 = phi float [ %9326, %9286 ], [ 1.000000e+00, %9243 ]
  %9457 = phi float [ %9327, %9286 ], [ 1.000000e+00, %9243 ]
  %9458 = phi float [ %9328, %9286 ], [ 1.000000e+00, %9243 ]
  %9459 = phi float [ %9452, %9286 ], [ 0.000000e+00, %9243 ]
  %9460 = phi float [ %9453, %9286 ], [ 0.000000e+00, %9243 ]
  %9461 = phi float [ %9454, %9286 ], [ 0.000000e+00, %9243 ]
  %9462 = fmul fast float %9459, %7793
  %9463 = fmul fast float %9460, %7795
  %9464 = fmul fast float %9461, %7797
  %9465 = fmul fast float %9456, %9250
  %9466 = call float @dx.op.dot3.f32(i32 55, float %9456, float %9457, float %9458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9467 = call float @dx.op.dot3.f32(i32 55, float %9462, float %9463, float %9464, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9468 = select i1 %262, float %9466, float %9456
  %9469 = select i1 %262, float %9466, float %9457
  %9470 = select i1 %262, float 1.000000e+00, float %9458
  %9471 = select i1 %262, float %9467, float %9462
  %9472 = select i1 %262, float 0.000000e+00, float %9463
  %9473 = select i1 %262, float 0.000000e+00, float %9464
  %9474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9475 = extractvalue %dx.types.CBufRet.i32 %9474, 3
  %9476 = and i32 %9475, 3
  %9477 = icmp ne i32 %9476, 0
  %9478 = and i32 %9475, 4
  %9479 = icmp ne i32 %9478, 0
  %9480 = and i1 %9477, %9479
  %9481 = and i1 %262, %9480
  br i1 %9481, label %9482, label %9488

; <label>:9482                                    ; preds = %9455
  %9483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9484 = extractvalue %dx.types.CBufRet.f32 %9483, 1
  %9485 = fadd fast float %9465, -1.000000e+00
  %9486 = fmul fast float %9484, %9485
  %9487 = fadd fast float %9486, 1.000000e+00
  br label %9488

; <label>:9488                                    ; preds = %9482, %9455
  %9489 = phi float [ %9487, %9482 ], [ %9465, %9455 ]
  %9490 = fadd fast float %9247, %9244
  %9491 = fmul fast float %9468, %9490
  %9492 = fadd fast float %9491, %9471
  %9493 = fadd fast float %9248, %9245
  %9494 = fmul fast float %9469, %9493
  %9495 = fadd fast float %9494, %9472
  %9496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9497 = extractvalue %dx.types.CBufRet.f32 %9496, 0
  br i1 %262, label %9498, label %9513

; <label>:9498                                    ; preds = %9488
  %9499 = fadd fast float %9492, %9495
  %9500 = fmul fast float %9497, %9499
  %9501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9502 = extractvalue %dx.types.CBufRet.f32 %9501, 3
  %9503 = extractvalue %dx.types.CBufRet.f32 %7801, 1
  %9504 = fsub fast float %7806, %7800
  %9505 = fadd fast float %9504, %7807
  %9506 = fsub fast float %9505, %9503
  %9507 = extractvalue %dx.types.CBufRet.f32 %7801, 2
  %9508 = fmul fast float %9506, %9507
  %9509 = call float @dx.op.unary.f32(i32 7, float %9508)  ; Saturate(value)
  %9510 = fsub fast float %9509, %9502
  %9511 = fmul fast float %9510, %9489
  %9512 = fadd fast float %9511, %9502
  br label %9539

; <label>:9513                                    ; preds = %9488
  %9514 = fadd fast float %9249, %9246
  %9515 = fmul fast float %9470, %9514
  %9516 = fadd fast float %9515, %9473
  %9517 = fmul fast float %9497, %9492
  %9518 = fmul fast float %9497, %9495
  %9519 = fmul fast float %9497, %9516
  %9520 = call float @dx.op.binary.f32(i32 35, float %9518, float %9519)  ; FMax(a,b)
  %9521 = call float @dx.op.binary.f32(i32 35, float %9517, float %9520)  ; FMax(a,b)
  %9522 = call float @dx.op.binary.f32(i32 35, float %7795, float %7797)  ; FMax(a,b)
  %9523 = call float @dx.op.binary.f32(i32 35, float %7793, float %9522)  ; FMax(a,b)
  %9524 = call float @dx.op.binary.f32(i32 35, float %9521, float %9523)  ; FMax(a,b)
  %9525 = fcmp fast ugt float %9524, 0x3F10000000000000
  br i1 %9525, label %9527, label %9526

; <label>:9526                                    ; preds = %9513
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9527

; <label>:9527                                    ; preds = %9526, %9513
  %9528 = add i32 %49, 356
  %9529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9528, i32 undef)  ; BufferLoad(srv,index,wot)
  %9530 = extractvalue %dx.types.ResRet.i32 %9529, 0
  %9531 = and i32 %9530, 32
  %9532 = icmp eq i32 %9531, 0
  br i1 %9532, label %9539, label %9533

; <label>:9533                                    ; preds = %9527
  %9534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9535 = extractvalue %dx.types.CBufRet.f32 %9534, 0
  %9536 = fmul fast float %9535, 0x3FE99999A0000000
  %9537 = fadd fast float %9535, %9517
  %9538 = fadd fast float %9536, %9519
  br label %9539

; <label>:9539                                    ; preds = %9533, %9527, %9498
  %9540 = phi float [ 1.000000e+00, %9498 ], [ %7795, %9533 ], [ %7795, %9527 ]
  %9541 = phi float [ 1.000000e+00, %9498 ], [ %7797, %9533 ], [ %7797, %9527 ]
  %9542 = phi float [ %9500, %9498 ], [ %9537, %9533 ], [ %9517, %9527 ]
  %9543 = phi float [ %9512, %9498 ], [ %9518, %9533 ], [ %9518, %9527 ]
  %9544 = phi float [ 1.000000e+00, %9498 ], [ %9538, %9533 ], [ %9519, %9527 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9545 = call float @dx.op.binary.f32(i32 36, float %9542, float 3.225500e+04)  ; FMin(a,b)
  %9546 = call float @dx.op.binary.f32(i32 36, float %9543, float 3.225500e+04)  ; FMin(a,b)
  %9547 = call float @dx.op.binary.f32(i32 36, float %9544, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9545)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9546)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9547)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9548 = call float @dx.op.binary.f32(i32 36, float %7793, float 3.225500e+04)  ; FMin(a,b)
  %9549 = call float @dx.op.binary.f32(i32 36, float %9540, float 3.225500e+04)  ; FMin(a,b)
  %9550 = call float @dx.op.binary.f32(i32 36, float %9541, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9548)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9549)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

