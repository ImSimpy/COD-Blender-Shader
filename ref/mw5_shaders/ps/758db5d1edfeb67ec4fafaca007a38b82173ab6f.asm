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
; ENTITY_IDS               0    yz        13     NONE    uint    yz 
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
; shader hash: 234c0d42082e54c818211b12d3f884ce
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
;
;
; ViewId state:
;
; Number of inputs: 60, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 34, 36, 37, 38, 39, 40, 41, 44, 45, 46, 47, 48, 49, 50, 52, 53, 54, 56 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 85, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 56, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = alloca [4 x i32], align 4
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 15, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call i32 @dx.op.loadInput.i32(i32 4, i32 14, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = fcmp fast une float %134, 0.000000e+00
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %139 = fmul fast float %111, 2.000000e+00
  %140 = fmul fast float %139, %137
  %141 = fmul fast float %112, 2.000000e+00
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 1.000000e+00, %140
  %144 = fsub fast float 1.000000e+00, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 2
  %153 = select i1 %135, float %146, float %150
  %154 = select i1 %135, float %147, float %151
  %155 = select i1 %135, float %148, float %152
  %156 = fmul fast float %153, %143
  %157 = fmul fast float %154, %143
  %158 = fmul fast float %155, %143
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
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
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %193 = shl i32 %51, 5
  %194 = add i32 %193, 4194304
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = extractvalue %dx.types.ResRet.i32 %195, 1
  %198 = extractvalue %dx.types.ResRet.i32 %195, 2
  %199 = extractvalue %dx.types.ResRet.i32 %195, 3
  %200 = add i32 %193, 4194320
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = extractvalue %dx.types.ResRet.i32 %201, 1
  %204 = bitcast i32 %202 to float
  %205 = bitcast i32 %203 to float
  %206 = fmul fast float %111, 5.000000e-01
  %207 = fmul fast float %112, 5.000000e-01
  %208 = fptosi float %206 to i32
  %209 = fptosi float %207 to i32
  %210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 18
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F4C00EBA0000000
  %215 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %216 = fadd fast float %215, -1.000000e+00
  %217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %218 = extractvalue %dx.types.Dimensions %217, 0
  %219 = sitofp i32 %218 to float
  %220 = extractvalue %dx.types.Dimensions %217, 1
  %221 = sitofp i32 %220 to float
  %222 = fcmp fast oge float %206, %219
  %223 = fcmp fast oge float %207, %221
  %224 = or i1 %222, %223
  %225 = select i1 %224, float 0x4197782600000000, float %216
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %229 = fmul fast float %227, %111
  %230 = fmul fast float %228, %112
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 114688
  %234 = icmp ne i32 %233, 0
  %235 = select i1 %234, float %229, float 0.000000e+00
  %236 = select i1 %234, float %230, float 0.000000e+00
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %45, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fmul fast float %238, 2.550000e+02
  %240 = fptoui float %239 to i32
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.i32 %242, 3
  %244 = and i32 %243, 3
  %245 = icmp ne i32 %244, 0
  %246 = and i32 %243, 4
  %247 = icmp ne i32 %246, 0
  %248 = and i1 %245, %247
  br i1 %248, label %249, label %260

; <label>:249                                     ; preds = %0
  %250 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %251 = fmul fast float %250, %112
  %252 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %253 = fmul fast float %252, %111
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %44, float %253, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = fsub fast float 1.000000e+00, %255
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = fcmp fast olt float %256, %258
  br label %263

; <label>:260                                     ; preds = %0
  %261 = icmp eq i32 %246, 0
  %262 = and i1 %245, %261
  br label %263

; <label>:263                                     ; preds = %260, %249
  %264 = phi i1 [ %259, %249 ], [ %262, %260 ]
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %267 = fmul fast float %266, 0x3FE3C6EF40000000
  %268 = frem fast float %111, 2.560000e+02
  %269 = frem fast float %112, 2.560000e+02
  %270 = fptoui float %268 to i32
  %271 = fptoui float %269 to i32
  %272 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %270, i32 %271, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fadd fast float %273, %267
  %275 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %276 = add i32 %50, 156
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = shl i32 %278, 4
  %280 = and i32 %279, 32752
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %278, 7
  %283 = and i32 %282, 32752
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %278, 22
  %286 = shl nuw nsw i32 %285, 5
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %50, 216
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = fmul fast float %292, 0x3F70101020000000
  %294 = lshr i32 %290, 8
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %290, 16
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = add i32 %50, 36
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %50, 288
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %313, 0x3F50624DE0000000
  %317 = fmul fast float %315, 0x3F50624DE0000000
  %318 = mul i32 %52, 100
  %319 = add i32 %318, 28
  %320 = add i32 %318, 40
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = add i32 %50, 172
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = shl i32 %325, 4
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %325, 7
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %325, 22
  %333 = shl nuw nsw i32 %332, 5
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %50, 232
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %337, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %337, 16
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = add i32 %50, 52
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %50, 304
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = shl i32 %364, 4
  %366 = and i32 %365, 32752
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = lshr i32 %364, 7
  %369 = and i32 %368, 32752
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %364, 22
  %372 = shl nuw nsw i32 %371, 5
  %373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %372)  ; LegacyF16ToF32(value)
  %374 = and i32 %322, 1
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %375, float %367, float %328
  %377 = select i1 %375, float %370, float %331
  %378 = select i1 %375, float %373, float %334
  %379 = add i32 %318, 44
  %380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.f32 %380, 0
  %382 = fmul fast float %381, %376
  %383 = fmul fast float %381, %377
  %384 = fmul fast float %381, %378
  %385 = add i32 %318, 48
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %397 = and i32 %322, 8
  %398 = icmp ne i32 %397, 0
  %399 = select i1 %398, float %390, float %340
  %400 = select i1 %398, float %393, float %344
  %401 = select i1 %398, float %396, float %348
  %402 = add i32 %318, 52
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = and i32 %404, 65535
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %404, 16
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = and i32 %322, 2
  %410 = icmp ne i32 %409, 0
  %411 = select i1 %410, float %406, float %353
  %412 = select i1 %410, float %408, float %355
  %413 = add i32 %318, 56
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 65535
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = lshr i32 %415, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = and i32 %322, 4
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %417, float %360
  %423 = fmul float %422, 0x3F50624DE0000000
  %424 = select i1 %421, float %419, float %362
  %425 = fmul float %424, 0x3F50624DE0000000
  %426 = add i32 %318, 60
  %427 = add i32 %318, 32
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = add i32 %50, 188
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = shl i32 %432, 4
  %434 = and i32 %433, 32752
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %432, 7
  %437 = and i32 %436, 32752
  %438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %437)  ; LegacyF16ToF32(value)
  %439 = lshr i32 %432, 22
  %440 = shl nuw nsw i32 %439, 5
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = add i32 %50, 248
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = and i32 %444, 255
  %446 = uitofp i32 %445 to float
  %447 = fmul fast float %446, 0x3F70101020000000
  %448 = lshr i32 %444, 8
  %449 = and i32 %448, 255
  %450 = uitofp i32 %449 to float
  %451 = fmul fast float %450, 0x3F70101020000000
  %452 = lshr i32 %444, 16
  %453 = and i32 %452, 255
  %454 = uitofp i32 %453 to float
  %455 = fmul fast float %454, 0x3F70101020000000
  %456 = add i32 %50, 68
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %458, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = add i32 %50, 320
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = shl i32 %471, 4
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %471, 7
  %476 = and i32 %475, 32752
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %471, 22
  %479 = shl nuw nsw i32 %478, 5
  %480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %479)  ; LegacyF16ToF32(value)
  %481 = and i32 %429, 1
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %482, float %474, float %435
  %484 = select i1 %482, float %477, float %438
  %485 = select i1 %482, float %480, float %441
  %486 = add i32 %318, 64
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = fmul fast float %488, %483
  %490 = fmul fast float %488, %484
  %491 = fmul fast float %488, %485
  %492 = add i32 %318, 68
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = shl i32 %494, 4
  %496 = and i32 %495, 32752
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = lshr i32 %494, 7
  %499 = and i32 %498, 32752
  %500 = call float @dx.op.legacyF16ToF32(i32 131, i32 %499)  ; LegacyF16ToF32(value)
  %501 = lshr i32 %494, 22
  %502 = shl nuw nsw i32 %501, 5
  %503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %502)  ; LegacyF16ToF32(value)
  %504 = and i32 %429, 8
  %505 = icmp ne i32 %504, 0
  %506 = select i1 %505, float %497, float %447
  %507 = select i1 %505, float %500, float %451
  %508 = select i1 %505, float %503, float %455
  %509 = add i32 %318, 72
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 65535
  %513 = call float @dx.op.legacyF16ToF32(i32 131, i32 %512)  ; LegacyF16ToF32(value)
  %514 = lshr i32 %511, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = and i32 %429, 2
  %517 = icmp ne i32 %516, 0
  %518 = select i1 %517, float %513, float %460
  %519 = select i1 %517, float %515, float %462
  %520 = add i32 %318, 76
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = and i32 %522, 65535
  %524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %523)  ; LegacyF16ToF32(value)
  %525 = lshr i32 %522, 16
  %526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %525)  ; LegacyF16ToF32(value)
  %527 = and i32 %429, 4
  %528 = icmp ne i32 %527, 0
  %529 = select i1 %528, float %524, float %467
  %530 = fmul float %529, 0x3F50624DE0000000
  %531 = select i1 %528, float %526, float %469
  %532 = fmul float %531, 0x3F50624DE0000000
  %533 = add i32 %318, 80
  %534 = add i32 %318, 36
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = add i32 %50, 204
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = shl i32 %539, 4
  %541 = and i32 %540, 32752
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %539, 7
  %544 = and i32 %543, 32752
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %539, 22
  %547 = shl nuw nsw i32 %546, 5
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = add i32 %50, 264
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 255
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %553, 0x3F70101020000000
  %555 = lshr i32 %551, 8
  %556 = and i32 %555, 255
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %557, 0x3F70101020000000
  %559 = lshr i32 %551, 16
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101020000000
  %563 = add i32 %50, 84
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 65535
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = lshr i32 %565, 16
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = add i32 %50, 336
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 65535
  %574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %573)  ; LegacyF16ToF32(value)
  %575 = lshr i32 %572, 16
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = shl i32 %578, 4
  %580 = and i32 %579, 32752
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %578, 7
  %583 = and i32 %582, 32752
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = lshr i32 %578, 22
  %586 = shl nuw nsw i32 %585, 5
  %587 = call float @dx.op.legacyF16ToF32(i32 131, i32 %586)  ; LegacyF16ToF32(value)
  %588 = and i32 %536, 1
  %589 = icmp ne i32 %588, 0
  %590 = select i1 %589, float %581, float %542
  %591 = select i1 %589, float %584, float %545
  %592 = select i1 %589, float %587, float %548
  %593 = add i32 %318, 84
  %594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.f32 %594, 0
  %596 = fmul fast float %595, %590
  %597 = fmul fast float %595, %591
  %598 = fmul fast float %595, %592
  %599 = add i32 %318, 88
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = shl i32 %601, 4
  %603 = and i32 %602, 32752
  %604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %603)  ; LegacyF16ToF32(value)
  %605 = lshr i32 %601, 7
  %606 = and i32 %605, 32752
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = lshr i32 %601, 22
  %609 = shl nuw nsw i32 %608, 5
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = and i32 %536, 8
  %612 = icmp ne i32 %611, 0
  %613 = select i1 %612, float %604, float %554
  %614 = select i1 %612, float %607, float %558
  %615 = select i1 %612, float %610, float %562
  %616 = add i32 %318, 92
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 65535
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = lshr i32 %618, 16
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = and i32 %536, 2
  %624 = icmp ne i32 %623, 0
  %625 = select i1 %624, float %620, float %567
  %626 = select i1 %624, float %622, float %569
  %627 = add i32 %318, 96
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = and i32 %629, 65535
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %629, 16
  %633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %632)  ; LegacyF16ToF32(value)
  %634 = and i32 %536, 4
  %635 = icmp ne i32 %634, 0
  %636 = select i1 %635, float %631, float %574
  %637 = fmul float %636, 0x3F50624DE0000000
  %638 = select i1 %635, float %633, float %576
  %639 = fmul float %638, 0x3F50624DE0000000
  %640 = add i32 %50, 348
  %641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.i32 %641, 0
  %643 = and i32 %642, 32
  %644 = icmp eq i32 %643, 0
  %645 = and i32 %642, 64
  %646 = icmp eq i32 %645, 0
  %647 = and i32 %642, 128
  %648 = icmp eq i32 %647, 0
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 2
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %668, label %653

; <label>:653                                     ; preds = %263
  %654 = add i32 %50, 508
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = add i32 %656, 0
  %658 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %657, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %659 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %658, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %660 = extractvalue %dx.types.ResRet.f32 %659, 0
  %661 = extractvalue %dx.types.ResRet.f32 %659, 1
  %662 = extractvalue %dx.types.ResRet.f32 %659, 2
  %663 = extractvalue %dx.types.ResRet.f32 %659, 3
  %664 = fmul fast float %663, %91
  %665 = fmul fast float %660, %92
  %666 = fmul fast float %661, %93
  %667 = fmul fast float %662, %94
  br label %668

; <label>:668                                     ; preds = %653, %263
  %669 = phi float [ %94, %263 ], [ %667, %653 ]
  %670 = phi float [ %93, %263 ], [ %666, %653 ]
  %671 = phi float [ %92, %263 ], [ %665, %653 ]
  %672 = phi float [ %91, %263 ], [ %664, %653 ]
  %673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %674 = extractvalue %dx.types.ResRet.i32 %673, 0
  %675 = and i32 %674, 2
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %696, label %677

; <label>:677                                     ; preds = %668
  %678 = add i32 %50, 44
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = and i32 %680, 1
  %682 = icmp ne i32 %681, 0
  %683 = select i1 %682, float %671, float 1.000000e+00
  %684 = add i32 %50, 60
  %685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %684, i32 undef)  ; BufferLoad(srv,index,wot)
  %686 = extractvalue %dx.types.ResRet.i32 %685, 0
  %687 = and i32 %686, 1
  %688 = icmp ne i32 %687, 0
  %689 = select i1 %688, float %670, float 1.000000e+00
  %690 = add i32 %50, 76
  %691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %690, i32 undef)  ; BufferLoad(srv,index,wot)
  %692 = extractvalue %dx.types.ResRet.i32 %691, 0
  %693 = and i32 %692, 1
  %694 = icmp ne i32 %693, 0
  %695 = select i1 %694, float %669, float 1.000000e+00
  br label %696

; <label>:696                                     ; preds = %677, %668
  %697 = phi float [ %669, %668 ], [ %695, %677 ]
  %698 = phi float [ %670, %668 ], [ %689, %677 ]
  %699 = phi float [ %671, %668 ], [ %683, %677 ]
  %700 = lshr i32 %674, 20
  %701 = and i32 %700, 3
  %702 = add nuw nsw i32 %701, 1
  %703 = add i32 %50, 24
  %704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %705 = extractvalue %dx.types.ResRet.i32 %704, 0
  %706 = add i32 %50, 28
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = or i32 %708, %705
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %1356, label %711

; <label>:711                                     ; preds = %696
  %712 = and i32 %705, 262144
  %713 = icmp ne i32 %712, 0
  %714 = select i1 %713, float %57, float 1.000000e+00
  %715 = select i1 %713, float %58, float 0.000000e+00
  %716 = select i1 %713, float %59, float 0.000000e+00
  %717 = select i1 %713, float %60, float 1.000000e+00
  %718 = select i1 %713, float %61, float %89
  %719 = select i1 %713, float %62, float %90
  %720 = add i32 %50, 284
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = lshr i32 %722, 16
  %724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %723)  ; LegacyF16ToF32(value)
  %725 = fmul fast float %724, 0x3F50624DE0000000
  %726 = add i32 %50, 88
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = lshr i32 %728, 16
  %730 = and i32 %729, 255
  %731 = lshr i32 %728, 24
  %732 = add i32 %50, 292
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 65535
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %734, 16
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = add i32 %50, 32
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = lshr i32 %741, 22
  %743 = shl nuw nsw i32 %742, 5
  %744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %743)  ; LegacyF16ToF32(value)
  %745 = shl i32 %741, 4
  %746 = and i32 %745, 32752
  %747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %746)  ; LegacyF16ToF32(value)
  %748 = lshr i32 %741, 7
  %749 = and i32 %748, 32752
  %750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %749)  ; LegacyF16ToF32(value)
  %751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %752 = extractvalue %dx.types.CBufRet.f32 %751, 3
  %753 = fmul fast float %752, 1.000000e+03
  %754 = fmul fast float %316, %753
  %755 = call float @dx.op.unary.f32(i32 22, float %754)  ; Frc(value)
  %756 = fadd fast float %755, %306
  %757 = fmul fast float %317, %753
  %758 = call float @dx.op.unary.f32(i32 22, float %757)  ; Frc(value)
  %759 = fadd fast float %758, %308
  %760 = fmul fast float %725, %753
  %761 = call float @dx.op.unary.f32(i32 22, float %760)  ; Frc(value)
  %762 = fmul fast float %761, 0x401921FB60000000
  %763 = fadd fast float %762, %744
  %764 = call float @dx.op.unary.f32(i32 13, float %763)  ; Sin(value)
  %765 = call float @dx.op.unary.f32(i32 12, float %763)  ; Cos(value)
  %766 = fsub fast float -0.000000e+00, %764
  %767 = fadd fast float %718, -5.000000e-01
  %768 = fadd fast float %719, -5.000000e-01
  %769 = fmul fast float %736, %767
  %770 = fmul fast float %738, %768
  %771 = fadd fast float %769, 5.000000e-01
  %772 = fadd fast float %770, 5.000000e-01
  %773 = fmul fast float %747, %771
  %774 = fmul fast float %750, %772
  %775 = fmul fast float %765, %773
  %776 = call float @dx.op.tertiary.f32(i32 46, float %766, float %774, float %775)  ; FMad(a,b,c)
  %777 = fmul fast float %764, %773
  %778 = call float @dx.op.tertiary.f32(i32 46, float %765, float %774, float %777)  ; FMad(a,b,c)
  %779 = fadd fast float %756, %776
  %780 = fadd fast float %759, %778
  %781 = icmp ugt i32 %730, 1
  %782 = icmp ugt i32 %728, 33554431
  %783 = or i1 %782, %781
  br i1 %783, label %784, label %809

; <label>:784                                     ; preds = %711
  %785 = add i32 %50, 228
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = lshr i32 %787, 16
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = fmul fast float %752, %789
  %791 = call float @dx.op.unary.f32(i32 22, float %790)  ; Frc(value)
  %792 = mul nuw nsw i32 %730, %731
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %791, %793
  %795 = call float @dx.op.unary.f32(i32 27, float %794)  ; Round_ni(value)
  %796 = fptoui float %795 to i32
  %797 = urem i32 %796, %730
  %798 = udiv i32 %796, %731
  %799 = call float @dx.op.unary.f32(i32 22, float %779)  ; Frc(value)
  %800 = call float @dx.op.unary.f32(i32 22, float %780)  ; Frc(value)
  %801 = uitofp i32 %797 to float
  %802 = uitofp i32 %798 to float
  %803 = fadd fast float %799, %801
  %804 = fadd fast float %800, %802
  %805 = uitofp i32 %730 to float
  %806 = uitofp i32 %731 to float
  %807 = fdiv fast float %803, %805
  %808 = fdiv fast float %804, %806
  br label %809

; <label>:809                                     ; preds = %784, %711
  %810 = phi float [ %807, %784 ], [ %779, %711 ]
  %811 = phi float [ %808, %784 ], [ %780, %711 ]
  %812 = and i32 %705, 256
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %860, label %814

; <label>:814                                     ; preds = %809
  %815 = add i32 %50, 440
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = add i32 %817, 0
  %819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %819, %dx.types.Handle %108, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = add i32 %50, 100
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = shl i32 %824, 4
  %826 = and i32 %825, 32752
  %827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %826)  ; LegacyF16ToF32(value)
  %828 = lshr i32 %824, 7
  %829 = and i32 %828, 32752
  %830 = call float @dx.op.legacyF16ToF32(i32 131, i32 %829)  ; LegacyF16ToF32(value)
  %831 = fsub fast float 1.000000e+00, %672
  %832 = call float @dx.op.binary.f32(i32 35, float %831, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %833 = bitcast float %672 to i32
  %834 = sitofp i32 %833 to float
  %835 = fadd fast float %834, 0xC1CFBF8940000000
  %836 = fmul fast float %830, %835
  %837 = fadd fast float %836, 0x41CFBF8940000000
  %838 = fptosi float %837 to i32
  %839 = bitcast i32 %838 to float
  %840 = bitcast float %832 to i32
  %841 = sitofp i32 %840 to float
  %842 = fadd fast float %841, 0xC1CFBF8940000000
  %843 = fmul fast float %842, %830
  %844 = fadd fast float %843, 0x41CFBF8940000000
  %845 = fptosi float %844 to i32
  %846 = bitcast i32 %845 to float
  %847 = fmul fast float %839, %827
  %848 = fmul fast float %846, %827
  %849 = fsub fast float %832, %847
  %850 = fadd fast float %848, %832
  %851 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  %852 = call float @dx.op.unary.f32(i32 7, float %850)  ; Saturate(value)
  %853 = fsub fast float %821, %851
  %854 = fsub fast float %852, %851
  %855 = bitcast float %854 to i32
  %856 = sub nsw i32 2129859010, %855
  %857 = bitcast i32 %856 to float
  %858 = fmul fast float %857, %853
  %859 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  br label %860

; <label>:860                                     ; preds = %814, %809
  %861 = phi float [ %859, %814 ], [ %672, %809 ]
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 128
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %882, label %866

; <label>:866                                     ; preds = %860
  %867 = add i32 %50, 424
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = add i32 %869, 0
  %871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %870, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %872 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %871, %dx.types.Handle %108, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = and i32 %875, 524288
  %877 = icmp ne i32 %876, 0
  %878 = fcmp fast ogt float %873, 0x3FE0101020000000
  %879 = select i1 %878, float 1.000000e+00, float 0.000000e+00
  %880 = select i1 %877, float %879, float %873
  %881 = fmul fast float %880, %861
  br label %882

; <label>:882                                     ; preds = %866, %860
  %883 = phi float [ %881, %866 ], [ %861, %860 ]
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 16
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %1086, label %888

; <label>:888                                     ; preds = %882
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = add i32 %50, 376
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = add i32 %893, 0
  %895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %895, %dx.types.Handle %107, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = extractvalue %dx.types.ResRet.f32 %896, 1
  %899 = extractvalue %dx.types.ResRet.f32 %896, 2
  %900 = extractvalue %dx.types.ResRet.f32 %896, 3
  %901 = and i32 %890, 255
  %902 = uitofp i32 %901 to float
  %903 = lshr i32 %890, 8
  %904 = and i32 %903, 255
  %905 = uitofp i32 %904 to float
  %906 = fmul fast float %900, %902
  %907 = fadd fast float %906, %905
  %908 = fmul fast float %907, 0x3F70101000000000
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 512
  %912 = icmp eq i32 %911, 0
  br i1 %912, label %921, label %913

; <label>:913                                     ; preds = %888
  %914 = add i32 %50, 460
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = add i32 %916, 0
  %918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %918, %dx.types.Handle %108, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %920 = extractvalue %dx.types.ResRet.f32 %919, 0
  br label %921

; <label>:921                                     ; preds = %913, %888
  %922 = phi float [ %920, %913 ], [ 1.000000e+00, %888 ]
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = and i32 %924, 33554432
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %1033, label %927

; <label>:927                                     ; preds = %921
  %928 = add i32 %50, 224
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = and i32 %930, 65535
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = lshr i32 %930, 16
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = add i32 %50, 228
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = lshr i32 %941, 24
  %943 = uitofp i32 %942 to float
  %944 = fmul fast float %943, 0x3F70101020000000
  %945 = and i32 %941, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F70101020000000
  %948 = lshr i32 %941, 8
  %949 = and i32 %948, 255
  %950 = uitofp i32 %949 to float
  %951 = fmul fast float %950, 0x3F70101020000000
  %952 = lshr i32 %941, 16
  %953 = and i32 %952, 255
  %954 = uitofp i32 %953 to float
  %955 = fmul fast float %954, 0x3F70101020000000
  %956 = add i32 %50, 220
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 24
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, 0x3F70101020000000
  %962 = and i32 %958, 255
  %963 = uitofp i32 %962 to float
  %964 = fmul fast float %963, 0x3F70101020000000
  %965 = lshr i32 %958, 8
  %966 = and i32 %965, 255
  %967 = uitofp i32 %966 to float
  %968 = fmul fast float %967, 0x3F70101020000000
  %969 = lshr i32 %958, 16
  %970 = and i32 %969, 255
  %971 = uitofp i32 %970 to float
  %972 = fmul fast float %971, 0x3F70101020000000
  %973 = bitcast float %897 to i32
  %974 = ashr i32 %973, 1
  %975 = sub nsw i32 1597463174, %974
  %976 = bitcast i32 %975 to float
  %977 = fmul fast float %897, 5.000000e-01
  %978 = fmul fast float %976, %976
  %979 = fmul fast float %978, %977
  %980 = fsub fast float 1.500000e+00, %979
  %981 = fmul fast float %976, %897
  %982 = fmul fast float %981, %980
  %983 = bitcast float %898 to i32
  %984 = ashr i32 %983, 1
  %985 = sub nsw i32 1597463174, %984
  %986 = bitcast i32 %985 to float
  %987 = fmul fast float %898, 5.000000e-01
  %988 = fmul fast float %986, %986
  %989 = fmul fast float %988, %987
  %990 = fsub fast float 1.500000e+00, %989
  %991 = fmul fast float %986, %898
  %992 = fmul fast float %991, %990
  %993 = bitcast float %899 to i32
  %994 = ashr i32 %993, 1
  %995 = sub nsw i32 1597463174, %994
  %996 = bitcast i32 %995 to float
  %997 = fmul fast float %899, 5.000000e-01
  %998 = fmul fast float %996, %996
  %999 = fmul fast float %998, %997
  %1000 = fsub fast float 1.500000e+00, %999
  %1001 = fmul fast float %996, %899
  %1002 = fmul fast float %1001, %1000
  %1003 = fsub fast float %982, %964
  %1004 = fsub fast float %992, %968
  %1005 = fsub fast float %1002, %972
  %1006 = fmul fast float %1003, %932
  %1007 = fmul fast float %1004, %934
  %1008 = fmul fast float %1005, %939
  %1009 = fadd fast float %1006, %947
  %1010 = fadd fast float %1007, %951
  %1011 = fadd fast float %1008, %955
  %1012 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1013 = call float @dx.op.unary.f32(i32 7, float %1010)  ; Saturate(value)
  %1014 = call float @dx.op.unary.f32(i32 7, float %1011)  ; Saturate(value)
  %1015 = fmul fast float %1012, %1012
  %1016 = fmul fast float %1013, %1013
  %1017 = fmul fast float %1014, %1014
  %1018 = fsub fast float %1015, %897
  %1019 = fsub fast float %1016, %898
  %1020 = fsub fast float %1017, %899
  %1021 = fmul fast float %1018, %922
  %1022 = fmul fast float %1019, %922
  %1023 = fmul fast float %1020, %922
  %1024 = fadd fast float %1021, %897
  %1025 = fadd fast float %1022, %898
  %1026 = fadd fast float %1023, %899
  %1027 = fadd fast float %944, %908
  %1028 = fsub fast float %1027, %961
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = fsub fast float %1029, %908
  %1031 = fmul fast float %1030, %922
  %1032 = fadd fast float %1031, %908
  br label %1086

; <label>:1033                                    ; preds = %921
  %1034 = and i32 %924, 134217728
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1070, label %1036

; <label>:1036                                    ; preds = %1033
  %1037 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %1038 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %1039 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %1040 = fadd fast float %1037, -5.000000e-01
  %1041 = fadd fast float %1038, -5.000000e-01
  %1042 = fadd fast float %1039, -5.000000e-01
  %1043 = fmul fast float %1040, %922
  %1044 = fmul fast float %1041, %922
  %1045 = fmul fast float %1042, %922
  %1046 = fadd fast float %1043, 5.000000e-01
  %1047 = fadd fast float %1044, 5.000000e-01
  %1048 = fadd fast float %1045, 5.000000e-01
  %1049 = call float @dx.op.unary.f32(i32 24, float %897)  ; Sqrt(value)
  %1050 = call float @dx.op.unary.f32(i32 24, float %898)  ; Sqrt(value)
  %1051 = call float @dx.op.unary.f32(i32 24, float %899)  ; Sqrt(value)
  %1052 = fmul fast float %1046, 2.000000e+00
  %1053 = fsub fast float 1.000000e+00, %1052
  %1054 = fmul fast float %1053, %1049
  %1055 = fadd fast float %1054, %1052
  %1056 = fmul fast float %1055, %1049
  %1057 = fmul fast float %1047, 2.000000e+00
  %1058 = fsub fast float 1.000000e+00, %1057
  %1059 = fmul fast float %1058, %1050
  %1060 = fadd fast float %1059, %1057
  %1061 = fmul fast float %1060, %1050
  %1062 = fmul fast float %1048, 2.000000e+00
  %1063 = fsub fast float 1.000000e+00, %1062
  %1064 = fmul fast float %1063, %1051
  %1065 = fadd fast float %1064, %1062
  %1066 = fmul fast float %1065, %1051
  %1067 = fmul fast float %1056, %1056
  %1068 = fmul fast float %1061, %1061
  %1069 = fmul fast float %1066, %1066
  br label %1086

; <label>:1070                                    ; preds = %1033
  %1071 = fmul fast float %293, %293
  %1072 = fmul fast float %297, %297
  %1073 = fmul fast float %301, %301
  %1074 = fadd fast float %1071, -1.000000e+00
  %1075 = fadd fast float %1072, -1.000000e+00
  %1076 = fadd fast float %1073, -1.000000e+00
  %1077 = fmul fast float %922, %1074
  %1078 = fmul fast float %922, %1075
  %1079 = fmul fast float %922, %1076
  %1080 = fadd fast float %1077, 1.000000e+00
  %1081 = fadd fast float %1078, 1.000000e+00
  %1082 = fadd fast float %1079, 1.000000e+00
  %1083 = fmul fast float %1080, %897
  %1084 = fmul fast float %1081, %898
  %1085 = fmul fast float %1082, %899
  br label %1086

; <label>:1086                                    ; preds = %1070, %1036, %927, %882
  %1087 = phi float [ %1032, %927 ], [ %908, %1036 ], [ %908, %1070 ], [ 0x3FA23C0BE0000000, %882 ]
  %1088 = phi float [ %1024, %927 ], [ %1067, %1036 ], [ %1083, %1070 ], [ 1.000000e+00, %882 ]
  %1089 = phi float [ %1025, %927 ], [ %1068, %1036 ], [ %1084, %1070 ], [ 1.000000e+00, %882 ]
  %1090 = phi float [ %1026, %927 ], [ %1069, %1036 ], [ %1085, %1070 ], [ 1.000000e+00, %882 ]
  %1091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1092 = extractvalue %dx.types.CBufRet.i32 %1091, 1
  %1093 = and i32 %1092, 1
  %1094 = icmp ne i32 %1093, 0
  %1095 = add i32 %50, 356
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1095, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 32
  %1099 = icmp ne i32 %1098, 0
  %1100 = and i1 %1094, %1099
  %1101 = select i1 %1100, float 1.000000e+00, float %1088
  %1102 = select i1 %1100, float 0x3FD3333340000000, float %1089
  %1103 = select i1 %1100, float 0x3FD3333340000000, float %1090
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = and i32 %1105, 32
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1180, label %1108

; <label>:1108                                    ; preds = %1086
  %1109 = add i32 %50, 92
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = add i32 %50, 392
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1116, %dx.types.Handle %107, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1121 = extractvalue %dx.types.ResRet.f32 %1117, 3
  %1122 = and i32 %1111, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = lshr i32 %1111, 8
  %1125 = and i32 %1124, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = lshr i32 %1111, 16
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1129, 0x3F70101000000000
  %1131 = fmul fast float %1118, %1123
  %1132 = fadd fast float %1131, %1126
  %1133 = fmul fast float %1132, 0x3F70101000000000
  %1134 = fadd fast float %1119, -5.000000e-01
  %1135 = fadd fast float %1121, -5.000000e-01
  %1136 = fmul fast float %1134, %1130
  %1137 = fmul fast float %1135, %1130
  %1138 = fadd fast float %1136, 5.000000e-01
  %1139 = fadd fast float %1137, 5.000000e-01
  %1140 = fmul fast float %1138, 2.000000e+00
  %1141 = fadd fast float %1140, -1.000000e+00
  %1142 = fmul fast float %1139, 2.000000e+00
  %1143 = fadd fast float %1142, -1.000000e+00
  %1144 = fadd fast float %1141, %1143
  %1145 = fmul fast float %1144, 5.000000e-01
  %1146 = fsub fast float %1141, %1143
  %1147 = fmul fast float %1146, 5.000000e-01
  %1148 = call float @dx.op.unary.f32(i32 6, float %1145)  ; FAbs(value)
  %1149 = fsub fast float 1.000000e+00, %1148
  %1150 = call float @dx.op.unary.f32(i32 6, float %1147)  ; FAbs(value)
  %1151 = fsub fast float %1149, %1150
  %1152 = call float @dx.op.dot3.f32(i32 55, float %1145, float %1147, float %1151, float %1145, float %1147, float %1151)  ; Dot3(ax,ay,az,bx,by,bz)
  %1153 = call float @dx.op.unary.f32(i32 25, float %1152)  ; Rsqrt(value)
  %1154 = fmul fast float %1145, %1153
  %1155 = fmul fast float %1147, %1153
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = and i32 %1157, 67108864
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1176, label %1160

; <label>:1160                                    ; preds = %1108
  %1161 = add i32 %50, 280
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 65535
  %1165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1164)  ; LegacyF16ToF32(value)
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = and i32 %1167, 65535
  %1169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1168)  ; LegacyF16ToF32(value)
  %1170 = lshr i32 %1163, 16
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = fsub fast float %1133, %1171
  %1173 = fmul fast float %1172, %1165
  %1174 = fadd fast float %1173, %1169
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  br label %1176

; <label>:1176                                    ; preds = %1160, %1108
  %1177 = phi float [ %1175, %1160 ], [ %1133, %1108 ]
  %1178 = call float @dx.op.dot2.f32(i32 54, float %1154, float %1155, float %714, float %715)  ; Dot2(ax,ay,bx,by)
  %1179 = call float @dx.op.dot2.f32(i32 54, float %1154, float %1155, float %716, float %717)  ; Dot2(ax,ay,bx,by)
  br label %1180

; <label>:1180                                    ; preds = %1176, %1086
  %1181 = phi float [ %1177, %1176 ], [ 0x3FD6666660000000, %1086 ]
  %1182 = phi float [ %1178, %1176 ], [ 0.000000e+00, %1086 ]
  %1183 = phi float [ %1179, %1176 ], [ 0.000000e+00, %1086 ]
  %1184 = phi float [ %1120, %1176 ], [ 1.000000e+00, %1086 ]
  %1185 = add i32 %50, 160
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = lshr i32 %1187, 22
  %1189 = shl nuw nsw i32 %1188, 5
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 64
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1228, label %1195

; <label>:1195                                    ; preds = %1180
  %1196 = add i32 %50, 408
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = add i32 %1198, 0
  %1200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 131072
  %1204 = icmp eq i32 %1203, 0
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1200, %dx.types.Handle %107, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  %1207 = extractvalue %dx.types.ResRet.f32 %1205, 1
  %1208 = extractvalue %dx.types.ResRet.f32 %1205, 2
  %1209 = fmul fast float %1206, %281
  %1210 = fmul fast float %1207, %284
  %1211 = fmul fast float %1208, %287
  br i1 %1204, label %1218, label %1212

; <label>:1212                                    ; preds = %1195
  %1213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.f32 %1213, 0
  %1215 = fmul fast float %1214, %1209
  %1216 = fmul fast float %1214, %1210
  %1217 = fmul fast float %1214, %1211
  br label %1218

; <label>:1218                                    ; preds = %1212, %1195
  %1219 = phi float [ %1215, %1212 ], [ %1209, %1195 ]
  %1220 = phi float [ %1216, %1212 ], [ %1210, %1195 ]
  %1221 = phi float [ %1217, %1212 ], [ %1211, %1195 ]
  %1222 = fmul fast float %1219, %1190
  %1223 = select i1 %264, float %1222, float %1219
  %1224 = call float @dx.op.dot3.f32(i32 55, float %1223, float %1220, float %1221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1225 = select i1 %264, float 0.000000e+00, float %1219
  %1226 = select i1 %264, float %1224, float %1220
  %1227 = select i1 %264, float 0.000000e+00, float %1221
  br label %1228

; <label>:1228                                    ; preds = %1218, %1180
  %1229 = phi float [ %1225, %1218 ], [ 0.000000e+00, %1180 ]
  %1230 = phi float [ %1226, %1218 ], [ 0.000000e+00, %1180 ]
  %1231 = phi float [ %1227, %1218 ], [ 0.000000e+00, %1180 ]
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = and i32 %1233, 1024
  %1235 = icmp eq i32 %1234, 0
  br i1 %1235, label %1266, label %1236

; <label>:1236                                    ; preds = %1228
  %1237 = add i32 %50, 152
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101020000000
  %1243 = lshr i32 %1239, 8
  %1244 = and i32 %1243, 255
  %1245 = uitofp i32 %1244 to float
  %1246 = fmul fast float %1245, 0x3F70101020000000
  %1247 = lshr i32 %1239, 16
  %1248 = and i32 %1247, 255
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = fmul fast float %1242, %1242
  %1252 = fmul fast float %1246, %1246
  %1253 = fmul fast float %1250, %1250
  %1254 = add i32 %50, 476
  %1255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1256 = extractvalue %dx.types.ResRet.i32 %1255, 0
  %1257 = add i32 %1256, 0
  %1258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1258, %dx.types.Handle %108, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1260 = extractvalue %dx.types.ResRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.ResRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.ResRet.f32 %1259, 2
  %1263 = fmul fast float %1251, %1260
  %1264 = fmul fast float %1252, %1261
  %1265 = fmul fast float %1253, %1262
  br label %1266

; <label>:1266                                    ; preds = %1236, %1228
  %1267 = phi float [ %1263, %1236 ], [ 0.000000e+00, %1228 ]
  %1268 = phi float [ %1264, %1236 ], [ 0.000000e+00, %1228 ]
  %1269 = phi float [ %1265, %1236 ], [ 0.000000e+00, %1228 ]
  %1270 = fcmp fast ogt float %1267, 0.000000e+00
  %1271 = fcmp fast ogt float %1268, 0.000000e+00
  %1272 = fcmp fast ogt float %1269, 0.000000e+00
  %1273 = call float @dx.op.unary.f32(i32 23, float %1267)  ; Log(value)
  %1274 = call float @dx.op.unary.f32(i32 23, float %1268)  ; Log(value)
  %1275 = call float @dx.op.unary.f32(i32 23, float %1269)  ; Log(value)
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = lshr i32 %1277, 7
  %1279 = and i32 %1278, 32752
  %1280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1279)  ; LegacyF16ToF32(value)
  %1281 = fmul fast float %1273, 0xBFE62E4300000000
  %1282 = fmul fast float %1281, %1280
  %1283 = fmul fast float %1274, 0xBFE62E4300000000
  %1284 = fmul fast float %1283, %1280
  %1285 = fmul fast float %1275, 0xBFE62E4300000000
  %1286 = fmul fast float %1285, %1280
  %1287 = select i1 %1270, float %1282, float 1.270000e+02
  %1288 = select i1 %1271, float %1284, float 1.270000e+02
  %1289 = select i1 %1272, float %1286, float 1.270000e+02
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 10240
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1338, label %1294

; <label>:1294                                    ; preds = %1266
  %1295 = add i32 %50, 492
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = add i32 %1297, 0
  %1299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1299, %dx.types.Handle %108, float %810, float %811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1300, 3
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = and i32 %1304, 1048576
  %1306 = icmp ne i32 %1305, 0
  %1307 = and i32 %1304, 8192
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1324, label %1309

; <label>:1309                                    ; preds = %1294
  %1310 = extractvalue %dx.types.ResRet.f32 %1300, 2
  %1311 = select i1 %1306, float %1310, float %1301
  %1312 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1313 = select i1 %1306, float %1312, float %1301
  %1314 = add i32 %50, 96
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = lshr i32 %1316, 16
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F80101020000000
  %1321 = fmul fast float %1320, %1313
  %1322 = fmul fast float %1320, %1301
  %1323 = fmul fast float %1320, %1311
  br label %1324

; <label>:1324                                    ; preds = %1309, %1294
  %1325 = phi float [ %1321, %1309 ], [ 0.000000e+00, %1294 ]
  %1326 = phi float [ %1322, %1309 ], [ 0.000000e+00, %1294 ]
  %1327 = phi float [ %1323, %1309 ], [ 0.000000e+00, %1294 ]
  %1328 = and i32 %1304, 2048
  %1329 = icmp eq i32 %1328, 0
  br i1 %1329, label %1338, label %1330

; <label>:1330                                    ; preds = %1324
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = shl i32 %1332, 4
  %1334 = and i32 %1333, 32752
  %1335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1334)  ; LegacyF16ToF32(value)
  %1336 = fmul fast float %1335, %1302
  %1337 = call float @dx.op.binary.f32(i32 35, float %1336, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1338

; <label>:1338                                    ; preds = %1330, %1324, %1266
  %1339 = phi float [ %1325, %1330 ], [ %1325, %1324 ], [ 0.000000e+00, %1266 ]
  %1340 = phi float [ %1326, %1330 ], [ %1326, %1324 ], [ 0.000000e+00, %1266 ]
  %1341 = phi float [ %1327, %1330 ], [ %1327, %1324 ], [ 0.000000e+00, %1266 ]
  %1342 = phi float [ %1337, %1330 ], [ 0x3F70101020000000, %1324 ], [ 0x3F70101020000000, %1266 ]
  %1343 = add i32 %50, 96
  %1344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1343, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.i32 %1344, 0
  %1346 = and i32 %1345, 255
  %1347 = uitofp i32 %1346 to float
  %1348 = lshr i32 %1345, 8
  %1349 = and i32 %1348, 255
  %1350 = uitofp i32 %1349 to float
  %1351 = call float @dx.op.dot3.f32(i32 55, float %1101, float %1102, float %1103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1352 = fmul fast float %1350, %1351
  %1353 = fadd fast float %1352, %1347
  %1354 = fmul fast float %1353, 0x3F70101020000000
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  br label %1356

; <label>:1356                                    ; preds = %1338, %696
  %1357 = phi float [ 0.000000e+00, %696 ], [ %1182, %1338 ]
  %1358 = phi float [ 0.000000e+00, %696 ], [ %1183, %1338 ]
  %1359 = phi float [ 0.000000e+00, %696 ], [ %1229, %1338 ]
  %1360 = phi float [ 0.000000e+00, %696 ], [ %1230, %1338 ]
  %1361 = phi float [ 0.000000e+00, %696 ], [ %1231, %1338 ]
  %1362 = phi float [ 0.000000e+00, %696 ], [ %1101, %1338 ]
  %1363 = phi float [ 0.000000e+00, %696 ], [ %1102, %1338 ]
  %1364 = phi float [ 0.000000e+00, %696 ], [ %1103, %1338 ]
  %1365 = phi float [ 0.000000e+00, %696 ], [ %1339, %1338 ]
  %1366 = phi float [ 0.000000e+00, %696 ], [ %1340, %1338 ]
  %1367 = phi float [ 0.000000e+00, %696 ], [ %1341, %1338 ]
  %1368 = phi float [ 0.000000e+00, %696 ], [ %1287, %1338 ]
  %1369 = phi float [ 0.000000e+00, %696 ], [ %1288, %1338 ]
  %1370 = phi float [ 0.000000e+00, %696 ], [ %1289, %1338 ]
  %1371 = phi float [ 0.000000e+00, %696 ], [ %1087, %1338 ]
  %1372 = phi float [ 0.000000e+00, %696 ], [ %883, %1338 ]
  %1373 = phi float [ 0.000000e+00, %696 ], [ %1181, %1338 ]
  %1374 = phi float [ 0.000000e+00, %696 ], [ %1184, %1338 ]
  %1375 = phi float [ 0.000000e+00, %696 ], [ %1342, %1338 ]
  %1376 = phi float [ 0.000000e+00, %696 ], [ %1355, %1338 ]
  br i1 %644, label %2299, label %1377

; <label>:1377                                    ; preds = %1356
  %1378 = icmp ult i32 %702, 2
  %1379 = add i32 %50, 40
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = add i32 %50, 44
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = or i32 %1384, %1381
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %2299, label %1387

; <label>:1387                                    ; preds = %1377
  %1388 = and i32 %1381, 262144
  %1389 = icmp ne i32 %1388, 0
  %1390 = select i1 %1389, float %57, float 1.000000e+00
  %1391 = select i1 %1389, float %58, float 0.000000e+00
  %1392 = select i1 %1389, float %59, float 0.000000e+00
  %1393 = select i1 %1389, float %60, float 1.000000e+00
  %1394 = select i1 %1389, float %61, float %89
  %1395 = select i1 %1389, float %62, float %90
  %1396 = add i32 %50, 300
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = lshr i32 %1398, 16
  %1400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1399)  ; LegacyF16ToF32(value)
  %1401 = fmul fast float %1400, 0x3F50624DE0000000
  %1402 = add i32 %50, 104
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = lshr i32 %1404, 16
  %1406 = and i32 %1405, 255
  %1407 = lshr i32 %1404, 24
  %1408 = add i32 %50, 308
  %1409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1408, i32 undef)  ; BufferLoad(srv,index,wot)
  %1410 = extractvalue %dx.types.ResRet.i32 %1409, 0
  %1411 = and i32 %1410, 65535
  %1412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1411)  ; LegacyF16ToF32(value)
  %1413 = lshr i32 %1410, 16
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = add i32 %50, 48
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = lshr i32 %1417, 22
  %1419 = shl nuw nsw i32 %1418, 5
  %1420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1419)  ; LegacyF16ToF32(value)
  %1421 = shl i32 %1417, 4
  %1422 = and i32 %1421, 32752
  %1423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1422)  ; LegacyF16ToF32(value)
  %1424 = lshr i32 %1417, 7
  %1425 = and i32 %1424, 32752
  %1426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1425)  ; LegacyF16ToF32(value)
  %1427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1428 = extractvalue %dx.types.CBufRet.f32 %1427, 3
  %1429 = fmul fast float %1428, 1.000000e+03
  %1430 = fmul fast float %1429, %423
  %1431 = call float @dx.op.unary.f32(i32 22, float %1430)  ; Frc(value)
  %1432 = fadd fast float %1431, %411
  %1433 = fmul fast float %1429, %425
  %1434 = call float @dx.op.unary.f32(i32 22, float %1433)  ; Frc(value)
  %1435 = fadd fast float %1434, %412
  %1436 = fmul fast float %1401, %1429
  %1437 = call float @dx.op.unary.f32(i32 22, float %1436)  ; Frc(value)
  %1438 = fmul fast float %1437, 0x401921FB60000000
  %1439 = fadd fast float %1438, %1420
  %1440 = call float @dx.op.unary.f32(i32 13, float %1439)  ; Sin(value)
  %1441 = call float @dx.op.unary.f32(i32 12, float %1439)  ; Cos(value)
  %1442 = fsub fast float -0.000000e+00, %1440
  %1443 = fadd fast float %1394, -5.000000e-01
  %1444 = fadd fast float %1395, -5.000000e-01
  %1445 = fmul fast float %1412, %1443
  %1446 = fmul fast float %1414, %1444
  %1447 = fadd fast float %1445, 5.000000e-01
  %1448 = fadd fast float %1446, 5.000000e-01
  %1449 = fmul fast float %1423, %1447
  %1450 = fmul fast float %1426, %1448
  %1451 = fmul fast float %1441, %1449
  %1452 = call float @dx.op.tertiary.f32(i32 46, float %1442, float %1450, float %1451)  ; FMad(a,b,c)
  %1453 = fmul fast float %1440, %1449
  %1454 = call float @dx.op.tertiary.f32(i32 46, float %1441, float %1450, float %1453)  ; FMad(a,b,c)
  %1455 = fadd fast float %1432, %1452
  %1456 = fadd fast float %1435, %1454
  %1457 = icmp ugt i32 %1406, 1
  %1458 = icmp ugt i32 %1404, 33554431
  %1459 = or i1 %1458, %1457
  br i1 %1459, label %1460, label %1485

; <label>:1460                                    ; preds = %1387
  %1461 = add i32 %50, 244
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = lshr i32 %1463, 16
  %1465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1464)  ; LegacyF16ToF32(value)
  %1466 = fmul fast float %1428, %1465
  %1467 = call float @dx.op.unary.f32(i32 22, float %1466)  ; Frc(value)
  %1468 = mul nuw nsw i32 %1406, %1407
  %1469 = uitofp i32 %1468 to float
  %1470 = fmul fast float %1467, %1469
  %1471 = call float @dx.op.unary.f32(i32 27, float %1470)  ; Round_ni(value)
  %1472 = fptoui float %1471 to i32
  %1473 = urem i32 %1472, %1406
  %1474 = udiv i32 %1472, %1407
  %1475 = call float @dx.op.unary.f32(i32 22, float %1455)  ; Frc(value)
  %1476 = call float @dx.op.unary.f32(i32 22, float %1456)  ; Frc(value)
  %1477 = uitofp i32 %1473 to float
  %1478 = uitofp i32 %1474 to float
  %1479 = fadd fast float %1475, %1477
  %1480 = fadd fast float %1476, %1478
  %1481 = uitofp i32 %1406 to float
  %1482 = uitofp i32 %1407 to float
  %1483 = fdiv fast float %1479, %1481
  %1484 = fdiv fast float %1480, %1482
  br label %1485

; <label>:1485                                    ; preds = %1460, %1387
  %1486 = phi float [ %1483, %1460 ], [ %1455, %1387 ]
  %1487 = phi float [ %1484, %1460 ], [ %1456, %1387 ]
  %1488 = and i32 %1381, 256
  %1489 = icmp eq i32 %1488, 0
  br i1 %1489, label %1536, label %1490

; <label>:1490                                    ; preds = %1485
  %1491 = add i32 %50, 444
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = add i32 %1493, 0
  %1495 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1494, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1495, %dx.types.Handle %108, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  %1498 = add i32 %50, 116
  %1499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1498, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.i32 %1499, 0
  %1501 = shl i32 %1500, 4
  %1502 = and i32 %1501, 32752
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = lshr i32 %1500, 7
  %1505 = and i32 %1504, 32752
  %1506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1505)  ; LegacyF16ToF32(value)
  %1507 = fsub fast float 1.000000e+00, %699
  %1508 = call float @dx.op.binary.f32(i32 35, float %1507, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1509 = bitcast float %699 to i32
  %1510 = sitofp i32 %1509 to float
  %1511 = fadd fast float %1510, 0xC1CFBF8940000000
  %1512 = fmul fast float %1506, %1511
  %1513 = fadd fast float %1512, 0x41CFBF8940000000
  %1514 = fptosi float %1513 to i32
  %1515 = bitcast i32 %1514 to float
  %1516 = bitcast float %1508 to i32
  %1517 = sitofp i32 %1516 to float
  %1518 = fadd fast float %1517, 0xC1CFBF8940000000
  %1519 = fmul fast float %1518, %1506
  %1520 = fadd fast float %1519, 0x41CFBF8940000000
  %1521 = fptosi float %1520 to i32
  %1522 = bitcast i32 %1521 to float
  %1523 = fmul fast float %1515, %1503
  %1524 = fmul fast float %1522, %1503
  %1525 = fsub fast float %1508, %1523
  %1526 = fadd fast float %1524, %1508
  %1527 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1528 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  %1529 = fsub fast float %1497, %1527
  %1530 = fsub fast float %1528, %1527
  %1531 = bitcast float %1530 to i32
  %1532 = sub nsw i32 2129859010, %1531
  %1533 = bitcast i32 %1532 to float
  %1534 = fmul fast float %1533, %1529
  %1535 = call float @dx.op.unary.f32(i32 7, float %1534)  ; Saturate(value)
  br label %1536

; <label>:1536                                    ; preds = %1490, %1485
  %1537 = phi float [ %1535, %1490 ], [ %699, %1485 ]
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = and i32 %1539, 128
  %1541 = icmp eq i32 %1540, 0
  br i1 %1541, label %1558, label %1542

; <label>:1542                                    ; preds = %1536
  %1543 = add i32 %50, 428
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1543, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = add i32 %1545, 0
  %1547 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1546, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1548 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1547, %dx.types.Handle %108, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1549 = extractvalue %dx.types.ResRet.f32 %1548, 0
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 524288
  %1553 = icmp ne i32 %1552, 0
  %1554 = fcmp fast ogt float %1549, 0x3FE0101020000000
  %1555 = select i1 %1554, float 1.000000e+00, float 0.000000e+00
  %1556 = select i1 %1553, float %1555, float %1549
  %1557 = fmul fast float %1556, %1537
  br label %1558

; <label>:1558                                    ; preds = %1542, %1536
  %1559 = phi float [ %1557, %1542 ], [ %1537, %1536 ]
  %1560 = fcmp fast ult float %1559, 0x3F70101020000000
  br i1 %1560, label %2299, label %1561

; <label>:1561                                    ; preds = %1558
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = and i32 %1563, 16
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1764, label %1566

; <label>:1566                                    ; preds = %1561
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = add i32 %50, 380
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = add i32 %1571, 0
  %1573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1573, %dx.types.Handle %107, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1575 = extractvalue %dx.types.ResRet.f32 %1574, 0
  %1576 = extractvalue %dx.types.ResRet.f32 %1574, 1
  %1577 = extractvalue %dx.types.ResRet.f32 %1574, 2
  %1578 = extractvalue %dx.types.ResRet.f32 %1574, 3
  %1579 = and i32 %1568, 255
  %1580 = uitofp i32 %1579 to float
  %1581 = lshr i32 %1568, 8
  %1582 = and i32 %1581, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = fmul fast float %1578, %1580
  %1585 = fadd fast float %1584, %1583
  %1586 = fmul fast float %1585, 0x3F70101000000000
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = and i32 %1588, 512
  %1590 = icmp eq i32 %1589, 0
  br i1 %1590, label %1599, label %1591

; <label>:1591                                    ; preds = %1566
  %1592 = add i32 %50, 464
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = add i32 %1594, 0
  %1596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1596, %dx.types.Handle %108, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1598 = extractvalue %dx.types.ResRet.f32 %1597, 0
  br label %1599

; <label>:1599                                    ; preds = %1591, %1566
  %1600 = phi float [ %1598, %1591 ], [ 1.000000e+00, %1566 ]
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 33554432
  %1604 = icmp eq i32 %1603, 0
  br i1 %1604, label %1711, label %1605

; <label>:1605                                    ; preds = %1599
  %1606 = add i32 %50, 240
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 65535
  %1610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1609)  ; LegacyF16ToF32(value)
  %1611 = lshr i32 %1608, 16
  %1612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1611)  ; LegacyF16ToF32(value)
  %1613 = add i32 %50, 244
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 65535
  %1617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1616)  ; LegacyF16ToF32(value)
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = lshr i32 %1619, 24
  %1621 = uitofp i32 %1620 to float
  %1622 = fmul fast float %1621, 0x3F70101020000000
  %1623 = and i32 %1619, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = fmul fast float %1624, 0x3F70101020000000
  %1626 = lshr i32 %1619, 8
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = fmul fast float %1628, 0x3F70101020000000
  %1630 = lshr i32 %1619, 16
  %1631 = and i32 %1630, 255
  %1632 = uitofp i32 %1631 to float
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = add i32 %50, 236
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = lshr i32 %1636, 24
  %1638 = uitofp i32 %1637 to float
  %1639 = fmul fast float %1638, 0x3F70101020000000
  %1640 = and i32 %1636, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = fmul fast float %1641, 0x3F70101020000000
  %1643 = lshr i32 %1636, 8
  %1644 = and i32 %1643, 255
  %1645 = uitofp i32 %1644 to float
  %1646 = fmul fast float %1645, 0x3F70101020000000
  %1647 = lshr i32 %1636, 16
  %1648 = and i32 %1647, 255
  %1649 = uitofp i32 %1648 to float
  %1650 = fmul fast float %1649, 0x3F70101020000000
  %1651 = bitcast float %1575 to i32
  %1652 = ashr i32 %1651, 1
  %1653 = sub nsw i32 1597463174, %1652
  %1654 = bitcast i32 %1653 to float
  %1655 = fmul fast float %1575, 5.000000e-01
  %1656 = fmul fast float %1654, %1654
  %1657 = fmul fast float %1656, %1655
  %1658 = fsub fast float 1.500000e+00, %1657
  %1659 = fmul fast float %1654, %1575
  %1660 = fmul fast float %1659, %1658
  %1661 = bitcast float %1576 to i32
  %1662 = ashr i32 %1661, 1
  %1663 = sub nsw i32 1597463174, %1662
  %1664 = bitcast i32 %1663 to float
  %1665 = fmul fast float %1576, 5.000000e-01
  %1666 = fmul fast float %1664, %1664
  %1667 = fmul fast float %1666, %1665
  %1668 = fsub fast float 1.500000e+00, %1667
  %1669 = fmul fast float %1664, %1576
  %1670 = fmul fast float %1669, %1668
  %1671 = bitcast float %1577 to i32
  %1672 = ashr i32 %1671, 1
  %1673 = sub nsw i32 1597463174, %1672
  %1674 = bitcast i32 %1673 to float
  %1675 = fmul fast float %1577, 5.000000e-01
  %1676 = fmul fast float %1674, %1674
  %1677 = fmul fast float %1676, %1675
  %1678 = fsub fast float 1.500000e+00, %1677
  %1679 = fmul fast float %1674, %1577
  %1680 = fmul fast float %1679, %1678
  %1681 = fsub fast float %1660, %1642
  %1682 = fsub fast float %1670, %1646
  %1683 = fsub fast float %1680, %1650
  %1684 = fmul fast float %1681, %1610
  %1685 = fmul fast float %1682, %1612
  %1686 = fmul fast float %1683, %1617
  %1687 = fadd fast float %1684, %1625
  %1688 = fadd fast float %1685, %1629
  %1689 = fadd fast float %1686, %1633
  %1690 = call float @dx.op.unary.f32(i32 7, float %1687)  ; Saturate(value)
  %1691 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  %1692 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1693 = fmul fast float %1690, %1690
  %1694 = fmul fast float %1691, %1691
  %1695 = fmul fast float %1692, %1692
  %1696 = fsub fast float %1693, %1575
  %1697 = fsub fast float %1694, %1576
  %1698 = fsub fast float %1695, %1577
  %1699 = fmul fast float %1696, %1600
  %1700 = fmul fast float %1697, %1600
  %1701 = fmul fast float %1698, %1600
  %1702 = fadd fast float %1699, %1575
  %1703 = fadd fast float %1700, %1576
  %1704 = fadd fast float %1701, %1577
  %1705 = fadd fast float %1622, %1586
  %1706 = fsub fast float %1705, %1639
  %1707 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1708 = fsub fast float %1707, %1586
  %1709 = fmul fast float %1708, %1600
  %1710 = fadd fast float %1709, %1586
  br label %1764

; <label>:1711                                    ; preds = %1599
  %1712 = and i32 %1602, 134217728
  %1713 = icmp eq i32 %1712, 0
  br i1 %1713, label %1748, label %1714

; <label>:1714                                    ; preds = %1711
  %1715 = call float @dx.op.unary.f32(i32 24, float %399)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %1717 = call float @dx.op.unary.f32(i32 24, float %401)  ; Sqrt(value)
  %1718 = fadd fast float %1715, -5.000000e-01
  %1719 = fadd fast float %1716, -5.000000e-01
  %1720 = fadd fast float %1717, -5.000000e-01
  %1721 = fmul fast float %1718, %1600
  %1722 = fmul fast float %1719, %1600
  %1723 = fmul fast float %1720, %1600
  %1724 = fadd fast float %1721, 5.000000e-01
  %1725 = fadd fast float %1722, 5.000000e-01
  %1726 = fadd fast float %1723, 5.000000e-01
  %1727 = call float @dx.op.unary.f32(i32 24, float %1575)  ; Sqrt(value)
  %1728 = call float @dx.op.unary.f32(i32 24, float %1576)  ; Sqrt(value)
  %1729 = call float @dx.op.unary.f32(i32 24, float %1577)  ; Sqrt(value)
  %1730 = fmul fast float %1724, 2.000000e+00
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = fmul fast float %1731, %1727
  %1733 = fadd fast float %1732, %1730
  %1734 = fmul fast float %1733, %1727
  %1735 = fmul fast float %1725, 2.000000e+00
  %1736 = fsub fast float 1.000000e+00, %1735
  %1737 = fmul fast float %1736, %1728
  %1738 = fadd fast float %1737, %1735
  %1739 = fmul fast float %1738, %1728
  %1740 = fmul fast float %1726, 2.000000e+00
  %1741 = fsub fast float 1.000000e+00, %1740
  %1742 = fmul fast float %1741, %1729
  %1743 = fadd fast float %1742, %1740
  %1744 = fmul fast float %1743, %1729
  %1745 = fmul fast float %1734, %1734
  %1746 = fmul fast float %1739, %1739
  %1747 = fmul fast float %1744, %1744
  br label %1764

; <label>:1748                                    ; preds = %1711
  %1749 = fmul fast float %399, %399
  %1750 = fmul fast float %400, %400
  %1751 = fmul fast float %401, %401
  %1752 = fadd fast float %1749, -1.000000e+00
  %1753 = fadd fast float %1750, -1.000000e+00
  %1754 = fadd fast float %1751, -1.000000e+00
  %1755 = fmul fast float %1600, %1752
  %1756 = fmul fast float %1600, %1753
  %1757 = fmul fast float %1600, %1754
  %1758 = fadd fast float %1755, 1.000000e+00
  %1759 = fadd fast float %1756, 1.000000e+00
  %1760 = fadd fast float %1757, 1.000000e+00
  %1761 = fmul fast float %1758, %1575
  %1762 = fmul fast float %1759, %1576
  %1763 = fmul fast float %1760, %1577
  br label %1764

; <label>:1764                                    ; preds = %1748, %1714, %1605, %1561
  %1765 = phi float [ %1710, %1605 ], [ %1586, %1714 ], [ %1586, %1748 ], [ 0x3FA23C0BE0000000, %1561 ]
  %1766 = phi float [ %1702, %1605 ], [ %1745, %1714 ], [ %1761, %1748 ], [ 1.000000e+00, %1561 ]
  %1767 = phi float [ %1703, %1605 ], [ %1746, %1714 ], [ %1762, %1748 ], [ 1.000000e+00, %1561 ]
  %1768 = phi float [ %1704, %1605 ], [ %1747, %1714 ], [ %1763, %1748 ], [ 1.000000e+00, %1561 ]
  %1769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.i32 %1769, 1
  %1771 = and i32 %1770, 1
  %1772 = icmp ne i32 %1771, 0
  %1773 = add i32 %50, 356
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1773, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 32
  %1777 = icmp ne i32 %1776, 0
  %1778 = and i1 %1772, %1777
  %1779 = select i1 %1778, float 1.000000e+00, float %1766
  %1780 = select i1 %1778, float 0x3FD3333340000000, float %1767
  %1781 = select i1 %1778, float 0x3FD3333340000000, float %1768
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = and i32 %1783, 32
  %1785 = icmp eq i32 %1784, 0
  br i1 %1785, label %1858, label %1786

; <label>:1786                                    ; preds = %1764
  %1787 = add i32 %50, 108
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = add i32 %50, 396
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = add i32 %1792, 0
  %1794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1794, %dx.types.Handle %107, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1796 = extractvalue %dx.types.ResRet.f32 %1795, 0
  %1797 = extractvalue %dx.types.ResRet.f32 %1795, 1
  %1798 = extractvalue %dx.types.ResRet.f32 %1795, 2
  %1799 = extractvalue %dx.types.ResRet.f32 %1795, 3
  %1800 = and i32 %1789, 255
  %1801 = uitofp i32 %1800 to float
  %1802 = lshr i32 %1789, 8
  %1803 = and i32 %1802, 255
  %1804 = uitofp i32 %1803 to float
  %1805 = lshr i32 %1789, 16
  %1806 = and i32 %1805, 255
  %1807 = uitofp i32 %1806 to float
  %1808 = fmul fast float %1807, 0x3F70101000000000
  %1809 = fmul fast float %1796, %1801
  %1810 = fadd fast float %1809, %1804
  %1811 = fmul fast float %1810, 0x3F70101000000000
  %1812 = fadd fast float %1797, -5.000000e-01
  %1813 = fadd fast float %1799, -5.000000e-01
  %1814 = fmul fast float %1812, %1808
  %1815 = fmul fast float %1813, %1808
  %1816 = fadd fast float %1814, 5.000000e-01
  %1817 = fadd fast float %1815, 5.000000e-01
  %1818 = fmul fast float %1816, 2.000000e+00
  %1819 = fadd fast float %1818, -1.000000e+00
  %1820 = fmul fast float %1817, 2.000000e+00
  %1821 = fadd fast float %1820, -1.000000e+00
  %1822 = fadd fast float %1819, %1821
  %1823 = fmul fast float %1822, 5.000000e-01
  %1824 = fsub fast float %1819, %1821
  %1825 = fmul fast float %1824, 5.000000e-01
  %1826 = call float @dx.op.unary.f32(i32 6, float %1823)  ; FAbs(value)
  %1827 = fsub fast float 1.000000e+00, %1826
  %1828 = call float @dx.op.unary.f32(i32 6, float %1825)  ; FAbs(value)
  %1829 = fsub fast float %1827, %1828
  %1830 = call float @dx.op.dot3.f32(i32 55, float %1823, float %1825, float %1829, float %1823, float %1825, float %1829)  ; Dot3(ax,ay,az,bx,by,bz)
  %1831 = call float @dx.op.unary.f32(i32 25, float %1830)  ; Rsqrt(value)
  %1832 = fmul fast float %1823, %1831
  %1833 = fmul fast float %1825, %1831
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = and i32 %1835, 67108864
  %1837 = icmp eq i32 %1836, 0
  br i1 %1837, label %1854, label %1838

; <label>:1838                                    ; preds = %1786
  %1839 = add i32 %50, 296
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = and i32 %1841, 65535
  %1843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1842)  ; LegacyF16ToF32(value)
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = and i32 %1845, 65535
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = lshr i32 %1841, 16
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = fsub fast float %1811, %1849
  %1851 = fmul fast float %1850, %1843
  %1852 = fadd fast float %1851, %1847
  %1853 = call float @dx.op.unary.f32(i32 7, float %1852)  ; Saturate(value)
  br label %1854

; <label>:1854                                    ; preds = %1838, %1786
  %1855 = phi float [ %1853, %1838 ], [ %1811, %1786 ]
  %1856 = call float @dx.op.dot2.f32(i32 54, float %1832, float %1833, float %1390, float %1391)  ; Dot2(ax,ay,bx,by)
  %1857 = call float @dx.op.dot2.f32(i32 54, float %1832, float %1833, float %1392, float %1393)  ; Dot2(ax,ay,bx,by)
  br label %1858

; <label>:1858                                    ; preds = %1854, %1764
  %1859 = phi float [ %1855, %1854 ], [ 0x3FD6666660000000, %1764 ]
  %1860 = phi float [ %1856, %1854 ], [ 0.000000e+00, %1764 ]
  %1861 = phi float [ %1857, %1854 ], [ 0.000000e+00, %1764 ]
  %1862 = phi float [ %1798, %1854 ], [ 1.000000e+00, %1764 ]
  %1863 = add i32 %50, 176
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = lshr i32 %1865, 22
  %1867 = shl nuw nsw i32 %1866, 5
  %1868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1867)  ; LegacyF16ToF32(value)
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = and i32 %1870, 64
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1906, label %1873

; <label>:1873                                    ; preds = %1858
  %1874 = add i32 %50, 412
  %1875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.i32 %1875, 0
  %1877 = add i32 %1876, 0
  %1878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.i32 %1879, 0
  %1881 = and i32 %1880, 131072
  %1882 = icmp eq i32 %1881, 0
  %1883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1878, %dx.types.Handle %107, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.ResRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.ResRet.f32 %1883, 2
  %1887 = fmul fast float %382, %1884
  %1888 = fmul fast float %383, %1885
  %1889 = fmul fast float %384, %1886
  br i1 %1882, label %1896, label %1890

; <label>:1890                                    ; preds = %1873
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = fmul fast float %1892, %1887
  %1894 = fmul fast float %1892, %1888
  %1895 = fmul fast float %1892, %1889
  br label %1896

; <label>:1896                                    ; preds = %1890, %1873
  %1897 = phi float [ %1893, %1890 ], [ %1887, %1873 ]
  %1898 = phi float [ %1894, %1890 ], [ %1888, %1873 ]
  %1899 = phi float [ %1895, %1890 ], [ %1889, %1873 ]
  %1900 = fmul fast float %1897, %1868
  %1901 = select i1 %264, float %1900, float %1897
  %1902 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1898, float %1899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1903 = select i1 %264, float 0.000000e+00, float %1897
  %1904 = select i1 %264, float %1902, float %1898
  %1905 = select i1 %264, float 0.000000e+00, float %1899
  br label %1906

; <label>:1906                                    ; preds = %1896, %1858
  %1907 = phi float [ %1903, %1896 ], [ 0.000000e+00, %1858 ]
  %1908 = phi float [ %1904, %1896 ], [ 0.000000e+00, %1858 ]
  %1909 = phi float [ %1905, %1896 ], [ 0.000000e+00, %1858 ]
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = and i32 %1911, 1024
  %1913 = icmp eq i32 %1912, 0
  br i1 %1913, label %1944, label %1914

; <label>:1914                                    ; preds = %1906
  %1915 = add i32 %50, 168
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = and i32 %1917, 255
  %1919 = uitofp i32 %1918 to float
  %1920 = fmul fast float %1919, 0x3F70101020000000
  %1921 = lshr i32 %1917, 8
  %1922 = and i32 %1921, 255
  %1923 = uitofp i32 %1922 to float
  %1924 = fmul fast float %1923, 0x3F70101020000000
  %1925 = lshr i32 %1917, 16
  %1926 = and i32 %1925, 255
  %1927 = uitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 0x3F70101020000000
  %1929 = fmul fast float %1920, %1920
  %1930 = fmul fast float %1924, %1924
  %1931 = fmul fast float %1928, %1928
  %1932 = add i32 %50, 480
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = add i32 %1934, 0
  %1936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1936, %dx.types.Handle %108, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.ResRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.ResRet.f32 %1937, 2
  %1941 = fmul fast float %1929, %1938
  %1942 = fmul fast float %1930, %1939
  %1943 = fmul fast float %1931, %1940
  br label %1944

; <label>:1944                                    ; preds = %1914, %1906
  %1945 = phi float [ %1941, %1914 ], [ 0.000000e+00, %1906 ]
  %1946 = phi float [ %1942, %1914 ], [ 0.000000e+00, %1906 ]
  %1947 = phi float [ %1943, %1914 ], [ 0.000000e+00, %1906 ]
  %1948 = fcmp fast ogt float %1945, 0.000000e+00
  %1949 = fcmp fast ogt float %1946, 0.000000e+00
  %1950 = fcmp fast ogt float %1947, 0.000000e+00
  %1951 = call float @dx.op.unary.f32(i32 23, float %1945)  ; Log(value)
  %1952 = call float @dx.op.unary.f32(i32 23, float %1946)  ; Log(value)
  %1953 = call float @dx.op.unary.f32(i32 23, float %1947)  ; Log(value)
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = lshr i32 %1955, 7
  %1957 = and i32 %1956, 32752
  %1958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1957)  ; LegacyF16ToF32(value)
  %1959 = fmul fast float %1951, 0xBFE62E4300000000
  %1960 = fmul fast float %1959, %1958
  %1961 = fmul fast float %1952, 0xBFE62E4300000000
  %1962 = fmul fast float %1961, %1958
  %1963 = fmul fast float %1953, 0xBFE62E4300000000
  %1964 = fmul fast float %1963, %1958
  %1965 = select i1 %1948, float %1960, float 1.270000e+02
  %1966 = select i1 %1949, float %1962, float 1.270000e+02
  %1967 = select i1 %1950, float %1964, float 1.270000e+02
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = and i32 %1969, 10240
  %1971 = icmp eq i32 %1970, 0
  br i1 %1971, label %2016, label %1972

; <label>:1972                                    ; preds = %1944
  %1973 = add i32 %50, 496
  %1974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1973, i32 undef)  ; BufferLoad(srv,index,wot)
  %1975 = extractvalue %dx.types.ResRet.i32 %1974, 0
  %1976 = add i32 %1975, 0
  %1977 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1976, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1978 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1977, %dx.types.Handle %108, float %1486, float %1487, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1979 = extractvalue %dx.types.ResRet.f32 %1978, 1
  %1980 = extractvalue %dx.types.ResRet.f32 %1978, 3
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = and i32 %1982, 1048576
  %1984 = icmp ne i32 %1983, 0
  %1985 = and i32 %1982, 8192
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %2002, label %1987

; <label>:1987                                    ; preds = %1972
  %1988 = extractvalue %dx.types.ResRet.f32 %1978, 2
  %1989 = select i1 %1984, float %1988, float %1979
  %1990 = extractvalue %dx.types.ResRet.f32 %1978, 0
  %1991 = select i1 %1984, float %1990, float %1979
  %1992 = add i32 %50, 112
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = lshr i32 %1994, 16
  %1996 = and i32 %1995, 255
  %1997 = uitofp i32 %1996 to float
  %1998 = fmul fast float %1997, 0x3F80101020000000
  %1999 = fmul fast float %1998, %1991
  %2000 = fmul fast float %1998, %1979
  %2001 = fmul fast float %1998, %1989
  br label %2002

; <label>:2002                                    ; preds = %1987, %1972
  %2003 = phi float [ %1999, %1987 ], [ 0.000000e+00, %1972 ]
  %2004 = phi float [ %2000, %1987 ], [ 0.000000e+00, %1972 ]
  %2005 = phi float [ %2001, %1987 ], [ 0.000000e+00, %1972 ]
  %2006 = and i32 %1982, 2048
  %2007 = icmp eq i32 %2006, 0
  br i1 %2007, label %2016, label %2008

; <label>:2008                                    ; preds = %2002
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = shl i32 %2010, 4
  %2012 = and i32 %2011, 32752
  %2013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2012)  ; LegacyF16ToF32(value)
  %2014 = fmul fast float %2013, %1980
  %2015 = call float @dx.op.binary.f32(i32 35, float %2014, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2016

; <label>:2016                                    ; preds = %2008, %2002, %1944
  %2017 = phi float [ %2003, %2008 ], [ %2003, %2002 ], [ 0.000000e+00, %1944 ]
  %2018 = phi float [ %2004, %2008 ], [ %2004, %2002 ], [ 0.000000e+00, %1944 ]
  %2019 = phi float [ %2005, %2008 ], [ %2005, %2002 ], [ 0.000000e+00, %1944 ]
  %2020 = phi float [ %2015, %2008 ], [ 0x3F70101020000000, %2002 ], [ 0x3F70101020000000, %1944 ]
  %2021 = add i32 %50, 112
  %2022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.i32 %2022, 0
  %2024 = and i32 %2023, 255
  %2025 = uitofp i32 %2024 to float
  %2026 = lshr i32 %2023, 8
  %2027 = and i32 %2026, 255
  %2028 = uitofp i32 %2027 to float
  %2029 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1780, float %1781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2030 = fmul fast float %2028, %2029
  %2031 = fadd fast float %2030, %2025
  %2032 = fmul fast float %2031, 0x3F70101020000000
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  br i1 %1378, label %2034, label %2069

; <label>:2034                                    ; preds = %2016
  %2035 = fmul fast float %2020, 2.000000e+00
  %2036 = fcmp fast olt float %1965, 1.270000e+02
  %2037 = fcmp fast olt float %1966, 1.270000e+02
  %2038 = fcmp fast olt float %1967, 1.270000e+02
  %2039 = fmul fast float %1965, 0xBFF7154760000000
  %2040 = fmul fast float %2039, %2035
  %2041 = fmul fast float %1966, 0xBFF7154760000000
  %2042 = fmul fast float %2041, %2035
  %2043 = fmul fast float %1967, 0xBFF7154760000000
  %2044 = fmul fast float %2043, %2035
  %2045 = call float @dx.op.unary.f32(i32 21, float %2040)  ; Exp(value)
  %2046 = call float @dx.op.unary.f32(i32 21, float %2042)  ; Exp(value)
  %2047 = call float @dx.op.unary.f32(i32 21, float %2044)  ; Exp(value)
  %2048 = call float @dx.op.unary.f32(i32 7, float %2045)  ; Saturate(value)
  %2049 = call float @dx.op.unary.f32(i32 7, float %2046)  ; Saturate(value)
  %2050 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2051 = fadd fast float %2048, -1.000000e+00
  %2052 = select i1 %2036, float %2051, float -1.000000e+00
  %2053 = fadd fast float %2049, -1.000000e+00
  %2054 = select i1 %2037, float %2053, float -1.000000e+00
  %2055 = fadd fast float %2050, -1.000000e+00
  %2056 = select i1 %2038, float %2055, float -1.000000e+00
  %2057 = fmul fast float %2052, %1559
  %2058 = fmul fast float %2054, %1559
  %2059 = fmul fast float %2056, %1559
  %2060 = fadd fast float %2057, 1.000000e+00
  %2061 = fadd fast float %2058, 1.000000e+00
  %2062 = fadd fast float %2059, 1.000000e+00
  %2063 = fmul fast float %2060, %1362
  %2064 = fmul fast float %2061, %1363
  %2065 = fmul fast float %2062, %1364
  %2066 = fmul fast float %2060, %1359
  %2067 = fmul fast float %2061, %1360
  %2068 = fmul fast float %2062, %1361
  br label %2069

; <label>:2069                                    ; preds = %2034, %2016
  %2070 = phi float [ %2066, %2034 ], [ %1359, %2016 ]
  %2071 = phi float [ %2067, %2034 ], [ %1360, %2016 ]
  %2072 = phi float [ %2068, %2034 ], [ %1361, %2016 ]
  %2073 = phi float [ %2063, %2034 ], [ %1362, %2016 ]
  %2074 = phi float [ %2064, %2034 ], [ %1363, %2016 ]
  %2075 = phi float [ %2065, %2034 ], [ %1364, %2016 ]
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 3
  %2079 = icmp eq i32 %2078, 3
  br i1 %2079, label %2158, label %2080

; <label>:2080                                    ; preds = %2069
  %2081 = and i32 %2077, 16
  %2082 = icmp ne i32 %2081, 0
  %2083 = select i1 %2082, float %1559, float 0.000000e+00
  %2084 = icmp eq i32 %2078, 0
  br i1 %2084, label %2085, label %2113

; <label>:2085                                    ; preds = %2080
  %2086 = and i32 %2077, 64
  %2087 = icmp ne i32 %2086, 0
  %2088 = select i1 %2087, float %1559, float 0.000000e+00
  %2089 = fsub fast float %1779, %2073
  %2090 = fsub fast float %1780, %2074
  %2091 = fsub fast float %1781, %2075
  %2092 = fmul fast float %2083, %2089
  %2093 = fmul fast float %2083, %2090
  %2094 = fmul fast float %2083, %2091
  %2095 = fadd fast float %2092, %2073
  %2096 = fadd fast float %2093, %2074
  %2097 = fadd fast float %2094, %2075
  %2098 = fsub fast float %1765, %1371
  %2099 = fmul fast float %2083, %2098
  %2100 = fadd fast float %2099, %1371
  %2101 = fsub fast float %1907, %2070
  %2102 = fsub fast float %1908, %2071
  %2103 = fsub fast float %1909, %2072
  %2104 = fmul fast float %2088, %2101
  %2105 = fmul fast float %2088, %2102
  %2106 = fmul fast float %2088, %2103
  %2107 = fadd fast float %2104, %2070
  %2108 = fadd fast float %2105, %2071
  %2109 = fadd fast float %2106, %2072
  %2110 = fsub fast float %2033, %1376
  %2111 = fmul fast float %2083, %2110
  %2112 = fadd fast float %2111, %1376
  br label %2158

; <label>:2113                                    ; preds = %2080
  %2114 = icmp eq i32 %2078, 1
  br i1 %2114, label %2115, label %2128

; <label>:2115                                    ; preds = %2113
  %2116 = fadd fast float %1779, -1.000000e+00
  %2117 = fadd fast float %1780, -1.000000e+00
  %2118 = fadd fast float %1781, -1.000000e+00
  %2119 = fmul fast float %2083, %2116
  %2120 = fmul fast float %2083, %2117
  %2121 = fmul fast float %2083, %2118
  %2122 = fadd fast float %2119, 1.000000e+00
  %2123 = fadd fast float %2120, 1.000000e+00
  %2124 = fadd fast float %2121, 1.000000e+00
  %2125 = fmul fast float %2122, %2073
  %2126 = fmul fast float %2123, %2074
  %2127 = fmul fast float %2124, %2075
  br label %2158

; <label>:2128                                    ; preds = %2113
  %2129 = icmp eq i32 %2078, 2
  br i1 %2129, label %2130, label %2158

; <label>:2130                                    ; preds = %2128
  %2131 = call float @dx.op.unary.f32(i32 24, float %1779)  ; Sqrt(value)
  %2132 = call float @dx.op.unary.f32(i32 24, float %1780)  ; Sqrt(value)
  %2133 = call float @dx.op.unary.f32(i32 24, float %1781)  ; Sqrt(value)
  %2134 = fadd fast float %2131, -5.000000e-01
  %2135 = fadd fast float %2132, -5.000000e-01
  %2136 = fadd fast float %2133, -5.000000e-01
  %2137 = fmul fast float %2134, %2083
  %2138 = fmul fast float %2135, %2083
  %2139 = fmul fast float %2136, %2083
  %2140 = fadd fast float %2137, 5.000000e-01
  %2141 = fadd fast float %2138, 5.000000e-01
  %2142 = fadd fast float %2139, 5.000000e-01
  %2143 = fmul fast float %2140, 2.000000e+00
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = fmul fast float %2144, %2073
  %2146 = fadd fast float %2145, %2143
  %2147 = fmul fast float %2146, %2073
  %2148 = fmul fast float %2141, 2.000000e+00
  %2149 = fsub fast float 1.000000e+00, %2148
  %2150 = fmul fast float %2149, %2074
  %2151 = fadd fast float %2150, %2148
  %2152 = fmul fast float %2151, %2074
  %2153 = fmul fast float %2142, 2.000000e+00
  %2154 = fsub fast float 1.000000e+00, %2153
  %2155 = fmul fast float %2154, %2075
  %2156 = fadd fast float %2155, %2153
  %2157 = fmul fast float %2156, %2075
  br label %2158

; <label>:2158                                    ; preds = %2130, %2128, %2115, %2085, %2069
  %2159 = phi float [ %2070, %2069 ], [ %2070, %2130 ], [ %2070, %2128 ], [ %2070, %2115 ], [ %2107, %2085 ]
  %2160 = phi float [ %2071, %2069 ], [ %2071, %2130 ], [ %2071, %2128 ], [ %2071, %2115 ], [ %2108, %2085 ]
  %2161 = phi float [ %2072, %2069 ], [ %2072, %2130 ], [ %2072, %2128 ], [ %2072, %2115 ], [ %2109, %2085 ]
  %2162 = phi float [ %2073, %2069 ], [ %2147, %2130 ], [ %2073, %2128 ], [ %2125, %2115 ], [ %2095, %2085 ]
  %2163 = phi float [ %2074, %2069 ], [ %2152, %2130 ], [ %2074, %2128 ], [ %2126, %2115 ], [ %2096, %2085 ]
  %2164 = phi float [ %2075, %2069 ], [ %2157, %2130 ], [ %2075, %2128 ], [ %2127, %2115 ], [ %2097, %2085 ]
  %2165 = phi float [ %1371, %2069 ], [ %1371, %2130 ], [ %1371, %2128 ], [ %1371, %2115 ], [ %2100, %2085 ]
  %2166 = phi float [ %1376, %2069 ], [ %1376, %2130 ], [ %1376, %2128 ], [ %1376, %2115 ], [ %2112, %2085 ]
  %2167 = and i32 %2077, 12
  %2168 = icmp eq i32 %2167, 12
  br i1 %2168, label %2299, label %2169

; <label>:2169                                    ; preds = %2158
  %2170 = and i32 %2077, 2097184
  %2171 = icmp eq i32 %2170, 2097184
  %2172 = select i1 %2171, float %1559, float 0.000000e+00
  %2173 = and i32 %2077, 4194336
  %2174 = icmp eq i32 %2173, 4194336
  %2175 = select i1 %2174, float %1559, float 0.000000e+00
  %2176 = and i32 %2077, 8388640
  %2177 = icmp eq i32 %2176, 8388640
  %2178 = select i1 %2177, float %1559, float 0.000000e+00
  %2179 = and i32 %2077, 1024
  %2180 = icmp ne i32 %2179, 0
  %2181 = select i1 %2180, float %1559, float 0.000000e+00
  %2182 = and i32 %2077, 2048
  %2183 = icmp ne i32 %2182, 0
  %2184 = select i1 %2183, float %1559, float 0.000000e+00
  %2185 = and i32 %2077, 8192
  %2186 = icmp ne i32 %2185, 0
  %2187 = select i1 %2186, float %1559, float 0.000000e+00
  %2188 = icmp eq i32 %2167, 0
  br i1 %2188, label %2189, label %2223

; <label>:2189                                    ; preds = %2169
  %2190 = fsub fast float %1860, %1357
  %2191 = fsub fast float %1861, %1358
  %2192 = fmul fast float %2172, %2190
  %2193 = fmul fast float %2172, %2191
  %2194 = fadd fast float %2192, %1357
  %2195 = fadd fast float %2193, %1358
  %2196 = fsub fast float %1862, %1374
  %2197 = fmul fast float %2175, %2196
  %2198 = fadd fast float %2197, %1374
  %2199 = fsub fast float %1859, %1373
  %2200 = fmul fast float %2178, %2199
  %2201 = fadd fast float %2200, %1373
  %2202 = fsub fast float %1965, %1368
  %2203 = fsub fast float %1966, %1369
  %2204 = fsub fast float %1967, %1370
  %2205 = fmul fast float %2181, %2202
  %2206 = fmul fast float %2181, %2203
  %2207 = fmul fast float %2181, %2204
  %2208 = fadd fast float %2205, %1368
  %2209 = fadd fast float %2206, %1369
  %2210 = fadd fast float %2207, %1370
  %2211 = fsub fast float %2020, %1375
  %2212 = fmul fast float %2184, %2211
  %2213 = fadd fast float %2212, %1375
  %2214 = fsub fast float %2017, %1365
  %2215 = fsub fast float %2018, %1366
  %2216 = fsub fast float %2019, %1367
  %2217 = fmul fast float %2187, %2214
  %2218 = fmul fast float %2187, %2215
  %2219 = fmul fast float %2187, %2216
  %2220 = fadd fast float %2217, %1365
  %2221 = fadd fast float %2218, %1366
  %2222 = fadd fast float %2219, %1367
  br label %2299

; <label>:2223                                    ; preds = %2169
  %2224 = icmp eq i32 %2167, 4
  br i1 %2224, label %2225, label %2271

; <label>:2225                                    ; preds = %2223
  %2226 = fmul fast float %2172, %1860
  %2227 = fmul fast float %2172, %1861
  %2228 = fadd fast float %2226, %1357
  %2229 = fadd fast float %2227, %1358
  %2230 = call float @dx.op.binary.f32(i32 36, float %1374, float %1862)  ; FMin(a,b)
  %2231 = fsub fast float %2230, %1374
  %2232 = fmul fast float %2231, %2175
  %2233 = fadd fast float %2232, %1374
  %2234 = fadd fast float %1859, %1373
  %2235 = fmul fast float %2234, 0x3FF337FAE0000000
  %2236 = fmul fast float %1373, %1373
  %2237 = fmul fast float %1859, %1859
  %2238 = fadd fast float %2237, %2236
  %2239 = fmul fast float %2238, 0x3FE5152B00000000
  %2240 = fmul fast float %1373, 0xBFCC1F85E0000000
  %2241 = fmul fast float %2240, %1859
  %2242 = fadd fast float %2241, 0xBFE1363700000000
  %2243 = fadd fast float %2242, %2235
  %2244 = fsub fast float %2243, %2239
  %2245 = fmul fast float %2234, 0x3FBA6F0D00000000
  %2246 = fmul fast float %2238, 0x3FD0432880000000
  %2247 = fmul fast float %1373, 0xBFEF110800000000
  %2248 = fmul fast float %2247, %1859
  %2249 = fadd fast float %2248, 1.000000e+00
  %2250 = fsub fast float %2249, %2245
  %2251 = fadd fast float %2250, %2246
  %2252 = fdiv fast float %2244, %2251
  %2253 = call float @dx.op.unary.f32(i32 7, float %2252)  ; Saturate(value)
  %2254 = fsub fast float %2253, %1373
  %2255 = fmul fast float %2254, %2178
  %2256 = fadd fast float %2255, %1373
  %2257 = fmul fast float %2181, %1965
  %2258 = fmul fast float %2181, %1966
  %2259 = fmul fast float %2181, %1967
  %2260 = fadd fast float %2257, %1368
  %2261 = fadd fast float %2258, %1369
  %2262 = fadd fast float %2259, %1370
  %2263 = fmul fast float %2184, %2020
  %2264 = fadd fast float %2263, %1375
  %2265 = fmul fast float %2187, %2017
  %2266 = fmul fast float %2187, %2018
  %2267 = fmul fast float %2187, %2019
  %2268 = fadd fast float %2265, %1365
  %2269 = fadd fast float %2266, %1366
  %2270 = fadd fast float %2267, %1367
  br label %2299

; <label>:2271                                    ; preds = %2223
  %2272 = icmp eq i32 %2167, 8
  br i1 %2272, label %2273, label %2299

; <label>:2273                                    ; preds = %2271
  %2274 = fmul fast float %2172, %1860
  %2275 = fmul fast float %2172, %1861
  %2276 = fadd fast float %2274, %1357
  %2277 = fadd fast float %2275, %1358
  %2278 = call float @dx.op.binary.f32(i32 36, float %1374, float %1862)  ; FMin(a,b)
  %2279 = fsub fast float %2278, %1374
  %2280 = fmul fast float %2279, %2175
  %2281 = fadd fast float %2280, %1374
  %2282 = fsub fast float %1859, %1373
  %2283 = fmul fast float %2178, %2282
  %2284 = fadd fast float %2283, %1373
  %2285 = fmul fast float %2181, %1965
  %2286 = fmul fast float %2181, %1966
  %2287 = fmul fast float %2181, %1967
  %2288 = fadd fast float %2285, %1368
  %2289 = fadd fast float %2286, %1369
  %2290 = fadd fast float %2287, %1370
  %2291 = fmul fast float %2184, %2020
  %2292 = fadd fast float %2291, %1375
  %2293 = fmul fast float %2187, %2017
  %2294 = fmul fast float %2187, %2018
  %2295 = fmul fast float %2187, %2019
  %2296 = fadd fast float %2293, %1365
  %2297 = fadd fast float %2294, %1366
  %2298 = fadd fast float %2295, %1367
  br label %2299

; <label>:2299                                    ; preds = %2273, %2271, %2225, %2189, %2158, %1558, %1377, %1356
  %2300 = phi float [ %1357, %2158 ], [ %1357, %1558 ], [ %1357, %1356 ], [ %2276, %2273 ], [ %1357, %2271 ], [ %2228, %2225 ], [ %2194, %2189 ], [ %1357, %1377 ]
  %2301 = phi float [ %1358, %2158 ], [ %1358, %1558 ], [ %1358, %1356 ], [ %2277, %2273 ], [ %1358, %2271 ], [ %2229, %2225 ], [ %2195, %2189 ], [ %1358, %1377 ]
  %2302 = phi float [ %2159, %2158 ], [ %1359, %1558 ], [ %1359, %1356 ], [ %2159, %2273 ], [ %2159, %2271 ], [ %2159, %2225 ], [ %2159, %2189 ], [ %1359, %1377 ]
  %2303 = phi float [ %2160, %2158 ], [ %1360, %1558 ], [ %1360, %1356 ], [ %2160, %2273 ], [ %2160, %2271 ], [ %2160, %2225 ], [ %2160, %2189 ], [ %1360, %1377 ]
  %2304 = phi float [ %2161, %2158 ], [ %1361, %1558 ], [ %1361, %1356 ], [ %2161, %2273 ], [ %2161, %2271 ], [ %2161, %2225 ], [ %2161, %2189 ], [ %1361, %1377 ]
  %2305 = phi float [ %2162, %2158 ], [ %1362, %1558 ], [ %1362, %1356 ], [ %2162, %2273 ], [ %2162, %2271 ], [ %2162, %2225 ], [ %2162, %2189 ], [ %1362, %1377 ]
  %2306 = phi float [ %2163, %2158 ], [ %1363, %1558 ], [ %1363, %1356 ], [ %2163, %2273 ], [ %2163, %2271 ], [ %2163, %2225 ], [ %2163, %2189 ], [ %1363, %1377 ]
  %2307 = phi float [ %2164, %2158 ], [ %1364, %1558 ], [ %1364, %1356 ], [ %2164, %2273 ], [ %2164, %2271 ], [ %2164, %2225 ], [ %2164, %2189 ], [ %1364, %1377 ]
  %2308 = phi float [ %1365, %2158 ], [ %1365, %1558 ], [ %1365, %1356 ], [ %2296, %2273 ], [ %1365, %2271 ], [ %2268, %2225 ], [ %2220, %2189 ], [ %1365, %1377 ]
  %2309 = phi float [ %1366, %2158 ], [ %1366, %1558 ], [ %1366, %1356 ], [ %2297, %2273 ], [ %1366, %2271 ], [ %2269, %2225 ], [ %2221, %2189 ], [ %1366, %1377 ]
  %2310 = phi float [ %1367, %2158 ], [ %1367, %1558 ], [ %1367, %1356 ], [ %2298, %2273 ], [ %1367, %2271 ], [ %2270, %2225 ], [ %2222, %2189 ], [ %1367, %1377 ]
  %2311 = phi float [ %1368, %2158 ], [ %1368, %1558 ], [ %1368, %1356 ], [ %2288, %2273 ], [ %1368, %2271 ], [ %2260, %2225 ], [ %2208, %2189 ], [ %1368, %1377 ]
  %2312 = phi float [ %1369, %2158 ], [ %1369, %1558 ], [ %1369, %1356 ], [ %2289, %2273 ], [ %1369, %2271 ], [ %2261, %2225 ], [ %2209, %2189 ], [ %1369, %1377 ]
  %2313 = phi float [ %1370, %2158 ], [ %1370, %1558 ], [ %1370, %1356 ], [ %2290, %2273 ], [ %1370, %2271 ], [ %2262, %2225 ], [ %2210, %2189 ], [ %1370, %1377 ]
  %2314 = phi float [ %2165, %2158 ], [ %1371, %1558 ], [ %1371, %1356 ], [ %2165, %2273 ], [ %2165, %2271 ], [ %2165, %2225 ], [ %2165, %2189 ], [ %1371, %1377 ]
  %2315 = phi float [ %1373, %2158 ], [ %1373, %1558 ], [ %1373, %1356 ], [ %2284, %2273 ], [ %1373, %2271 ], [ %2256, %2225 ], [ %2201, %2189 ], [ %1373, %1377 ]
  %2316 = phi float [ %1374, %2158 ], [ %1374, %1558 ], [ %1374, %1356 ], [ %2281, %2273 ], [ %1374, %2271 ], [ %2233, %2225 ], [ %2198, %2189 ], [ %1374, %1377 ]
  %2317 = phi float [ %1375, %2158 ], [ %1375, %1558 ], [ %1375, %1356 ], [ %2292, %2273 ], [ %1375, %2271 ], [ %2264, %2225 ], [ %2213, %2189 ], [ %1375, %1377 ]
  %2318 = phi float [ %2166, %2158 ], [ %1376, %1558 ], [ %1376, %1356 ], [ %2166, %2273 ], [ %2166, %2271 ], [ %2166, %2225 ], [ %2166, %2189 ], [ %1376, %1377 ]
  br i1 %646, label %3241, label %2319

; <label>:2319                                    ; preds = %2299
  %2320 = icmp ult i32 %702, 3
  %2321 = add i32 %50, 56
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = add i32 %50, 60
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = or i32 %2326, %2323
  %2328 = icmp eq i32 %2327, 0
  br i1 %2328, label %3241, label %2329

; <label>:2329                                    ; preds = %2319
  %2330 = and i32 %2323, 262144
  %2331 = icmp ne i32 %2330, 0
  %2332 = select i1 %2331, float %57, float 1.000000e+00
  %2333 = select i1 %2331, float %58, float 0.000000e+00
  %2334 = select i1 %2331, float %59, float 0.000000e+00
  %2335 = select i1 %2331, float %60, float 1.000000e+00
  %2336 = select i1 %2331, float %61, float %89
  %2337 = select i1 %2331, float %62, float %90
  %2338 = add i32 %50, 316
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = lshr i32 %2340, 16
  %2342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2341)  ; LegacyF16ToF32(value)
  %2343 = fmul fast float %2342, 0x3F50624DE0000000
  %2344 = add i32 %50, 120
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = lshr i32 %2346, 16
  %2348 = and i32 %2347, 255
  %2349 = lshr i32 %2346, 24
  %2350 = add i32 %50, 324
  %2351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2350, i32 undef)  ; BufferLoad(srv,index,wot)
  %2352 = extractvalue %dx.types.ResRet.i32 %2351, 0
  %2353 = and i32 %2352, 65535
  %2354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2353)  ; LegacyF16ToF32(value)
  %2355 = lshr i32 %2352, 16
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = add i32 %50, 64
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = lshr i32 %2359, 22
  %2361 = shl nuw nsw i32 %2360, 5
  %2362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2361)  ; LegacyF16ToF32(value)
  %2363 = shl i32 %2359, 4
  %2364 = and i32 %2363, 32752
  %2365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2364)  ; LegacyF16ToF32(value)
  %2366 = lshr i32 %2359, 7
  %2367 = and i32 %2366, 32752
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2370 = extractvalue %dx.types.CBufRet.f32 %2369, 3
  %2371 = fmul fast float %2370, 1.000000e+03
  %2372 = fmul fast float %2371, %530
  %2373 = call float @dx.op.unary.f32(i32 22, float %2372)  ; Frc(value)
  %2374 = fadd fast float %2373, %518
  %2375 = fmul fast float %2371, %532
  %2376 = call float @dx.op.unary.f32(i32 22, float %2375)  ; Frc(value)
  %2377 = fadd fast float %2376, %519
  %2378 = fmul fast float %2343, %2371
  %2379 = call float @dx.op.unary.f32(i32 22, float %2378)  ; Frc(value)
  %2380 = fmul fast float %2379, 0x401921FB60000000
  %2381 = fadd fast float %2380, %2362
  %2382 = call float @dx.op.unary.f32(i32 13, float %2381)  ; Sin(value)
  %2383 = call float @dx.op.unary.f32(i32 12, float %2381)  ; Cos(value)
  %2384 = fsub fast float -0.000000e+00, %2382
  %2385 = fadd fast float %2336, -5.000000e-01
  %2386 = fadd fast float %2337, -5.000000e-01
  %2387 = fmul fast float %2354, %2385
  %2388 = fmul fast float %2356, %2386
  %2389 = fadd fast float %2387, 5.000000e-01
  %2390 = fadd fast float %2388, 5.000000e-01
  %2391 = fmul fast float %2365, %2389
  %2392 = fmul fast float %2368, %2390
  %2393 = fmul fast float %2383, %2391
  %2394 = call float @dx.op.tertiary.f32(i32 46, float %2384, float %2392, float %2393)  ; FMad(a,b,c)
  %2395 = fmul fast float %2382, %2391
  %2396 = call float @dx.op.tertiary.f32(i32 46, float %2383, float %2392, float %2395)  ; FMad(a,b,c)
  %2397 = fadd fast float %2374, %2394
  %2398 = fadd fast float %2377, %2396
  %2399 = icmp ugt i32 %2348, 1
  %2400 = icmp ugt i32 %2346, 33554431
  %2401 = or i1 %2400, %2399
  br i1 %2401, label %2402, label %2427

; <label>:2402                                    ; preds = %2329
  %2403 = add i32 %50, 260
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = lshr i32 %2405, 16
  %2407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2406)  ; LegacyF16ToF32(value)
  %2408 = fmul fast float %2370, %2407
  %2409 = call float @dx.op.unary.f32(i32 22, float %2408)  ; Frc(value)
  %2410 = mul nuw nsw i32 %2348, %2349
  %2411 = uitofp i32 %2410 to float
  %2412 = fmul fast float %2409, %2411
  %2413 = call float @dx.op.unary.f32(i32 27, float %2412)  ; Round_ni(value)
  %2414 = fptoui float %2413 to i32
  %2415 = urem i32 %2414, %2348
  %2416 = udiv i32 %2414, %2349
  %2417 = call float @dx.op.unary.f32(i32 22, float %2397)  ; Frc(value)
  %2418 = call float @dx.op.unary.f32(i32 22, float %2398)  ; Frc(value)
  %2419 = uitofp i32 %2415 to float
  %2420 = uitofp i32 %2416 to float
  %2421 = fadd fast float %2417, %2419
  %2422 = fadd fast float %2418, %2420
  %2423 = uitofp i32 %2348 to float
  %2424 = uitofp i32 %2349 to float
  %2425 = fdiv fast float %2421, %2423
  %2426 = fdiv fast float %2422, %2424
  br label %2427

; <label>:2427                                    ; preds = %2402, %2329
  %2428 = phi float [ %2425, %2402 ], [ %2397, %2329 ]
  %2429 = phi float [ %2426, %2402 ], [ %2398, %2329 ]
  %2430 = and i32 %2323, 256
  %2431 = icmp eq i32 %2430, 0
  br i1 %2431, label %2478, label %2432

; <label>:2432                                    ; preds = %2427
  %2433 = add i32 %50, 448
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = add i32 %2435, 0
  %2437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2437, %dx.types.Handle %108, float %2428, float %2429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  %2440 = add i32 %50, 132
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = shl i32 %2442, 4
  %2444 = and i32 %2443, 32752
  %2445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2444)  ; LegacyF16ToF32(value)
  %2446 = lshr i32 %2442, 7
  %2447 = and i32 %2446, 32752
  %2448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2447)  ; LegacyF16ToF32(value)
  %2449 = fsub fast float 1.000000e+00, %698
  %2450 = call float @dx.op.binary.f32(i32 35, float %2449, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2451 = bitcast float %698 to i32
  %2452 = sitofp i32 %2451 to float
  %2453 = fadd fast float %2452, 0xC1CFBF8940000000
  %2454 = fmul fast float %2448, %2453
  %2455 = fadd fast float %2454, 0x41CFBF8940000000
  %2456 = fptosi float %2455 to i32
  %2457 = bitcast i32 %2456 to float
  %2458 = bitcast float %2450 to i32
  %2459 = sitofp i32 %2458 to float
  %2460 = fadd fast float %2459, 0xC1CFBF8940000000
  %2461 = fmul fast float %2460, %2448
  %2462 = fadd fast float %2461, 0x41CFBF8940000000
  %2463 = fptosi float %2462 to i32
  %2464 = bitcast i32 %2463 to float
  %2465 = fmul fast float %2457, %2445
  %2466 = fmul fast float %2464, %2445
  %2467 = fsub fast float %2450, %2465
  %2468 = fadd fast float %2466, %2450
  %2469 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2470 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  %2471 = fsub fast float %2439, %2469
  %2472 = fsub fast float %2470, %2469
  %2473 = bitcast float %2472 to i32
  %2474 = sub nsw i32 2129859010, %2473
  %2475 = bitcast i32 %2474 to float
  %2476 = fmul fast float %2475, %2471
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  br label %2478

; <label>:2478                                    ; preds = %2432, %2427
  %2479 = phi float [ %2477, %2432 ], [ %698, %2427 ]
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 128
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2500, label %2484

; <label>:2484                                    ; preds = %2478
  %2485 = add i32 %50, 432
  %2486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2485, i32 undef)  ; BufferLoad(srv,index,wot)
  %2487 = extractvalue %dx.types.ResRet.i32 %2486, 0
  %2488 = add i32 %2487, 0
  %2489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2489, %dx.types.Handle %108, float %2428, float %2429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2491 = extractvalue %dx.types.ResRet.f32 %2490, 0
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 524288
  %2495 = icmp ne i32 %2494, 0
  %2496 = fcmp fast ogt float %2491, 0x3FE0101020000000
  %2497 = select i1 %2496, float 1.000000e+00, float 0.000000e+00
  %2498 = select i1 %2495, float %2497, float %2491
  %2499 = fmul fast float %2498, %2479
  br label %2500

; <label>:2500                                    ; preds = %2484, %2478
  %2501 = phi float [ %2499, %2484 ], [ %2479, %2478 ]
  %2502 = fcmp fast ult float %2501, 0x3F70101020000000
  br i1 %2502, label %3241, label %2503

; <label>:2503                                    ; preds = %2500
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 16
  %2507 = icmp eq i32 %2506, 0
  br i1 %2507, label %2706, label %2508

; <label>:2508                                    ; preds = %2503
  %2509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2344, i32 undef)  ; BufferLoad(srv,index,wot)
  %2510 = extractvalue %dx.types.ResRet.i32 %2509, 0
  %2511 = add i32 %50, 384
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = add i32 %2513, 0
  %2515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2514, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2516 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2515, %dx.types.Handle %107, float %2428, float %2429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2517 = extractvalue %dx.types.ResRet.f32 %2516, 0
  %2518 = extractvalue %dx.types.ResRet.f32 %2516, 1
  %2519 = extractvalue %dx.types.ResRet.f32 %2516, 2
  %2520 = extractvalue %dx.types.ResRet.f32 %2516, 3
  %2521 = and i32 %2510, 255
  %2522 = uitofp i32 %2521 to float
  %2523 = lshr i32 %2510, 8
  %2524 = and i32 %2523, 255
  %2525 = uitofp i32 %2524 to float
  %2526 = fmul fast float %2520, %2522
  %2527 = fadd fast float %2526, %2525
  %2528 = fmul fast float %2527, 0x3F70101000000000
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 512
  %2532 = icmp eq i32 %2531, 0
  br i1 %2532, label %2541, label %2533

; <label>:2533                                    ; preds = %2508
  %2534 = add i32 %50, 468
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %2536, 0
  %2538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2538, %dx.types.Handle %108, float %2428, float %2429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  br label %2541

; <label>:2541                                    ; preds = %2533, %2508
  %2542 = phi float [ %2540, %2533 ], [ 1.000000e+00, %2508 ]
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = and i32 %2544, 33554432
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %2653, label %2547

; <label>:2547                                    ; preds = %2541
  %2548 = add i32 %50, 256
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = and i32 %2550, 65535
  %2552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2551)  ; LegacyF16ToF32(value)
  %2553 = lshr i32 %2550, 16
  %2554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2553)  ; LegacyF16ToF32(value)
  %2555 = add i32 %50, 260
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 65535
  %2559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2558)  ; LegacyF16ToF32(value)
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = lshr i32 %2561, 24
  %2563 = uitofp i32 %2562 to float
  %2564 = fmul fast float %2563, 0x3F70101020000000
  %2565 = and i32 %2561, 255
  %2566 = uitofp i32 %2565 to float
  %2567 = fmul fast float %2566, 0x3F70101020000000
  %2568 = lshr i32 %2561, 8
  %2569 = and i32 %2568, 255
  %2570 = uitofp i32 %2569 to float
  %2571 = fmul fast float %2570, 0x3F70101020000000
  %2572 = lshr i32 %2561, 16
  %2573 = and i32 %2572, 255
  %2574 = uitofp i32 %2573 to float
  %2575 = fmul fast float %2574, 0x3F70101020000000
  %2576 = add i32 %50, 252
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2576, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = lshr i32 %2578, 24
  %2580 = uitofp i32 %2579 to float
  %2581 = fmul fast float %2580, 0x3F70101020000000
  %2582 = and i32 %2578, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = fmul fast float %2583, 0x3F70101020000000
  %2585 = lshr i32 %2578, 8
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F70101020000000
  %2589 = lshr i32 %2578, 16
  %2590 = and i32 %2589, 255
  %2591 = uitofp i32 %2590 to float
  %2592 = fmul fast float %2591, 0x3F70101020000000
  %2593 = bitcast float %2517 to i32
  %2594 = ashr i32 %2593, 1
  %2595 = sub nsw i32 1597463174, %2594
  %2596 = bitcast i32 %2595 to float
  %2597 = fmul fast float %2517, 5.000000e-01
  %2598 = fmul fast float %2596, %2596
  %2599 = fmul fast float %2598, %2597
  %2600 = fsub fast float 1.500000e+00, %2599
  %2601 = fmul fast float %2596, %2517
  %2602 = fmul fast float %2601, %2600
  %2603 = bitcast float %2518 to i32
  %2604 = ashr i32 %2603, 1
  %2605 = sub nsw i32 1597463174, %2604
  %2606 = bitcast i32 %2605 to float
  %2607 = fmul fast float %2518, 5.000000e-01
  %2608 = fmul fast float %2606, %2606
  %2609 = fmul fast float %2608, %2607
  %2610 = fsub fast float 1.500000e+00, %2609
  %2611 = fmul fast float %2606, %2518
  %2612 = fmul fast float %2611, %2610
  %2613 = bitcast float %2519 to i32
  %2614 = ashr i32 %2613, 1
  %2615 = sub nsw i32 1597463174, %2614
  %2616 = bitcast i32 %2615 to float
  %2617 = fmul fast float %2519, 5.000000e-01
  %2618 = fmul fast float %2616, %2616
  %2619 = fmul fast float %2618, %2617
  %2620 = fsub fast float 1.500000e+00, %2619
  %2621 = fmul fast float %2616, %2519
  %2622 = fmul fast float %2621, %2620
  %2623 = fsub fast float %2602, %2584
  %2624 = fsub fast float %2612, %2588
  %2625 = fsub fast float %2622, %2592
  %2626 = fmul fast float %2623, %2552
  %2627 = fmul fast float %2624, %2554
  %2628 = fmul fast float %2625, %2559
  %2629 = fadd fast float %2626, %2567
  %2630 = fadd fast float %2627, %2571
  %2631 = fadd fast float %2628, %2575
  %2632 = call float @dx.op.unary.f32(i32 7, float %2629)  ; Saturate(value)
  %2633 = call float @dx.op.unary.f32(i32 7, float %2630)  ; Saturate(value)
  %2634 = call float @dx.op.unary.f32(i32 7, float %2631)  ; Saturate(value)
  %2635 = fmul fast float %2632, %2632
  %2636 = fmul fast float %2633, %2633
  %2637 = fmul fast float %2634, %2634
  %2638 = fsub fast float %2635, %2517
  %2639 = fsub fast float %2636, %2518
  %2640 = fsub fast float %2637, %2519
  %2641 = fmul fast float %2638, %2542
  %2642 = fmul fast float %2639, %2542
  %2643 = fmul fast float %2640, %2542
  %2644 = fadd fast float %2641, %2517
  %2645 = fadd fast float %2642, %2518
  %2646 = fadd fast float %2643, %2519
  %2647 = fadd fast float %2564, %2528
  %2648 = fsub fast float %2647, %2581
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = fsub fast float %2649, %2528
  %2651 = fmul fast float %2650, %2542
  %2652 = fadd fast float %2651, %2528
  br label %2706

; <label>:2653                                    ; preds = %2541
  %2654 = and i32 %2544, 134217728
  %2655 = icmp eq i32 %2654, 0
  br i1 %2655, label %2690, label %2656

; <label>:2656                                    ; preds = %2653
  %2657 = call float @dx.op.unary.f32(i32 24, float %506)  ; Sqrt(value)
  %2658 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %2659 = call float @dx.op.unary.f32(i32 24, float %508)  ; Sqrt(value)
  %2660 = fadd fast float %2657, -5.000000e-01
  %2661 = fadd fast float %2658, -5.000000e-01
  %2662 = fadd fast float %2659, -5.000000e-01
  %2663 = fmul fast float %2660, %2542
  %2664 = fmul fast float %2661, %2542
  %2665 = fmul fast float %2662, %2542
  %2666 = fadd fast float %2663, 5.000000e-01
  %2667 = fadd fast float %2664, 5.000000e-01
  %2668 = fadd fast float %2665, 5.000000e-01
  %2669 = call float @dx.op.unary.f32(i32 24, float %2517)  ; Sqrt(value)
  %2670 = call float @dx.op.unary.f32(i32 24, float %2518)  ; Sqrt(value)
  %2671 = call float @dx.op.unary.f32(i32 24, float %2519)  ; Sqrt(value)
  %2672 = fmul fast float %2666, 2.000000e+00
  %2673 = fsub fast float 1.000000e+00, %2672
  %2674 = fmul fast float %2673, %2669
  %2675 = fadd fast float %2674, %2672
  %2676 = fmul fast float %2675, %2669
  %2677 = fmul fast float %2667, 2.000000e+00
  %2678 = fsub fast float 1.000000e+00, %2677
  %2679 = fmul fast float %2678, %2670
  %2680 = fadd fast float %2679, %2677
  %2681 = fmul fast float %2680, %2670
  %2682 = fmul fast float %2668, 2.000000e+00
  %2683 = fsub fast float 1.000000e+00, %2682
  %2684 = fmul fast float %2683, %2671
  %2685 = fadd fast float %2684, %2682
  %2686 = fmul fast float %2685, %2671
  %2687 = fmul fast float %2676, %2676
  %2688 = fmul fast float %2681, %2681
  %2689 = fmul fast float %2686, %2686
  br label %2706

; <label>:2690                                    ; preds = %2653
  %2691 = fmul fast float %506, %506
  %2692 = fmul fast float %507, %507
  %2693 = fmul fast float %508, %508
  %2694 = fadd fast float %2691, -1.000000e+00
  %2695 = fadd fast float %2692, -1.000000e+00
  %2696 = fadd fast float %2693, -1.000000e+00
  %2697 = fmul fast float %2542, %2694
  %2698 = fmul fast float %2542, %2695
  %2699 = fmul fast float %2542, %2696
  %2700 = fadd fast float %2697, 1.000000e+00
  %2701 = fadd fast float %2698, 1.000000e+00
  %2702 = fadd fast float %2699, 1.000000e+00
  %2703 = fmul fast float %2700, %2517
  %2704 = fmul fast float %2701, %2518
  %2705 = fmul fast float %2702, %2519
  br label %2706

; <label>:2706                                    ; preds = %2690, %2656, %2547, %2503
  %2707 = phi float [ %2652, %2547 ], [ %2528, %2656 ], [ %2528, %2690 ], [ 0x3FA23C0BE0000000, %2503 ]
  %2708 = phi float [ %2644, %2547 ], [ %2687, %2656 ], [ %2703, %2690 ], [ 1.000000e+00, %2503 ]
  %2709 = phi float [ %2645, %2547 ], [ %2688, %2656 ], [ %2704, %2690 ], [ 1.000000e+00, %2503 ]
  %2710 = phi float [ %2646, %2547 ], [ %2689, %2656 ], [ %2705, %2690 ], [ 1.000000e+00, %2503 ]
  %2711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2712 = extractvalue %dx.types.CBufRet.i32 %2711, 1
  %2713 = and i32 %2712, 1
  %2714 = icmp ne i32 %2713, 0
  %2715 = add i32 %50, 356
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = and i32 %2717, 32
  %2719 = icmp ne i32 %2718, 0
  %2720 = and i1 %2714, %2719
  %2721 = select i1 %2720, float 1.000000e+00, float %2708
  %2722 = select i1 %2720, float 0x3FD3333340000000, float %2709
  %2723 = select i1 %2720, float 0x3FD3333340000000, float %2710
  %2724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.i32 %2724, 0
  %2726 = and i32 %2725, 32
  %2727 = icmp eq i32 %2726, 0
  br i1 %2727, label %2800, label %2728

; <label>:2728                                    ; preds = %2706
  %2729 = add i32 %50, 124
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = add i32 %50, 400
  %2733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.i32 %2733, 0
  %2735 = add i32 %2734, 0
  %2736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2736, %dx.types.Handle %107, float %2428, float %2429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.ResRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.ResRet.f32 %2737, 2
  %2741 = extractvalue %dx.types.ResRet.f32 %2737, 3
  %2742 = and i32 %2731, 255
  %2743 = uitofp i32 %2742 to float
  %2744 = lshr i32 %2731, 8
  %2745 = and i32 %2744, 255
  %2746 = uitofp i32 %2745 to float
  %2747 = lshr i32 %2731, 16
  %2748 = and i32 %2747, 255
  %2749 = uitofp i32 %2748 to float
  %2750 = fmul fast float %2749, 0x3F70101000000000
  %2751 = fmul fast float %2738, %2743
  %2752 = fadd fast float %2751, %2746
  %2753 = fmul fast float %2752, 0x3F70101000000000
  %2754 = fadd fast float %2739, -5.000000e-01
  %2755 = fadd fast float %2741, -5.000000e-01
  %2756 = fmul fast float %2754, %2750
  %2757 = fmul fast float %2755, %2750
  %2758 = fadd fast float %2756, 5.000000e-01
  %2759 = fadd fast float %2757, 5.000000e-01
  %2760 = fmul fast float %2758, 2.000000e+00
  %2761 = fadd fast float %2760, -1.000000e+00
  %2762 = fmul fast float %2759, 2.000000e+00
  %2763 = fadd fast float %2762, -1.000000e+00
  %2764 = fadd fast float %2761, %2763
  %2765 = fmul fast float %2764, 5.000000e-01
  %2766 = fsub fast float %2761, %2763
  %2767 = fmul fast float %2766, 5.000000e-01
  %2768 = call float @dx.op.unary.f32(i32 6, float %2765)  ; FAbs(value)
  %2769 = fsub fast float 1.000000e+00, %2768
  %2770 = call float @dx.op.unary.f32(i32 6, float %2767)  ; FAbs(value)
  %2771 = fsub fast float %2769, %2770
  %2772 = call float @dx.op.dot3.f32(i32 55, float %2765, float %2767, float %2771, float %2765, float %2767, float %2771)  ; Dot3(ax,ay,az,bx,by,bz)
  %2773 = call float @dx.op.unary.f32(i32 25, float %2772)  ; Rsqrt(value)
  %2774 = fmul fast float %2765, %2773
  %2775 = fmul fast float %2767, %2773
  %2776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2777 = extractvalue %dx.types.ResRet.i32 %2776, 0
  %2778 = and i32 %2777, 67108864
  %2779 = icmp eq i32 %2778, 0
  br i1 %2779, label %2796, label %2780

; <label>:2780                                    ; preds = %2728
  %2781 = add i32 %50, 312
  %2782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2783 = extractvalue %dx.types.ResRet.i32 %2782, 0
  %2784 = and i32 %2783, 65535
  %2785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2784)  ; LegacyF16ToF32(value)
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = and i32 %2787, 65535
  %2789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2788)  ; LegacyF16ToF32(value)
  %2790 = lshr i32 %2783, 16
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = fsub fast float %2753, %2791
  %2793 = fmul fast float %2792, %2785
  %2794 = fadd fast float %2793, %2789
  %2795 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  br label %2796

; <label>:2796                                    ; preds = %2780, %2728
  %2797 = phi float [ %2795, %2780 ], [ %2753, %2728 ]
  %2798 = call float @dx.op.dot2.f32(i32 54, float %2774, float %2775, float %2332, float %2333)  ; Dot2(ax,ay,bx,by)
  %2799 = call float @dx.op.dot2.f32(i32 54, float %2774, float %2775, float %2334, float %2335)  ; Dot2(ax,ay,bx,by)
  br label %2800

; <label>:2800                                    ; preds = %2796, %2706
  %2801 = phi float [ %2797, %2796 ], [ 0x3FD6666660000000, %2706 ]
  %2802 = phi float [ %2798, %2796 ], [ 0.000000e+00, %2706 ]
  %2803 = phi float [ %2799, %2796 ], [ 0.000000e+00, %2706 ]
  %2804 = phi float [ %2740, %2796 ], [ 1.000000e+00, %2706 ]
  %2805 = add i32 %50, 192
  %2806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2807 = extractvalue %dx.types.ResRet.i32 %2806, 0
  %2808 = lshr i32 %2807, 22
  %2809 = shl nuw nsw i32 %2808, 5
  %2810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2809)  ; LegacyF16ToF32(value)
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = and i32 %2812, 64
  %2814 = icmp eq i32 %2813, 0
  br i1 %2814, label %2848, label %2815

; <label>:2815                                    ; preds = %2800
  %2816 = add i32 %50, 416
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = add i32 %2818, 0
  %2820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = and i32 %2822, 131072
  %2824 = icmp eq i32 %2823, 0
  %2825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2820, %dx.types.Handle %107, float %2428, float %2429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.ResRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.ResRet.f32 %2825, 2
  %2829 = fmul fast float %489, %2826
  %2830 = fmul fast float %490, %2827
  %2831 = fmul fast float %491, %2828
  br i1 %2824, label %2838, label %2832

; <label>:2832                                    ; preds = %2815
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 0
  %2835 = fmul fast float %2834, %2829
  %2836 = fmul fast float %2834, %2830
  %2837 = fmul fast float %2834, %2831
  br label %2838

; <label>:2838                                    ; preds = %2832, %2815
  %2839 = phi float [ %2835, %2832 ], [ %2829, %2815 ]
  %2840 = phi float [ %2836, %2832 ], [ %2830, %2815 ]
  %2841 = phi float [ %2837, %2832 ], [ %2831, %2815 ]
  %2842 = fmul fast float %2839, %2810
  %2843 = select i1 %264, float %2842, float %2839
  %2844 = call float @dx.op.dot3.f32(i32 55, float %2843, float %2840, float %2841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2845 = select i1 %264, float 0.000000e+00, float %2839
  %2846 = select i1 %264, float %2844, float %2840
  %2847 = select i1 %264, float 0.000000e+00, float %2841
  br label %2848

; <label>:2848                                    ; preds = %2838, %2800
  %2849 = phi float [ %2845, %2838 ], [ 0.000000e+00, %2800 ]
  %2850 = phi float [ %2846, %2838 ], [ 0.000000e+00, %2800 ]
  %2851 = phi float [ %2847, %2838 ], [ 0.000000e+00, %2800 ]
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = and i32 %2853, 1024
  %2855 = icmp eq i32 %2854, 0
  br i1 %2855, label %2886, label %2856

; <label>:2856                                    ; preds = %2848
  %2857 = add i32 %50, 184
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = fmul fast float %2861, 0x3F70101020000000
  %2863 = lshr i32 %2859, 8
  %2864 = and i32 %2863, 255
  %2865 = uitofp i32 %2864 to float
  %2866 = fmul fast float %2865, 0x3F70101020000000
  %2867 = lshr i32 %2859, 16
  %2868 = and i32 %2867, 255
  %2869 = uitofp i32 %2868 to float
  %2870 = fmul fast float %2869, 0x3F70101020000000
  %2871 = fmul fast float %2862, %2862
  %2872 = fmul fast float %2866, %2866
  %2873 = fmul fast float %2870, %2870
  %2874 = add i32 %50, 484
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = add i32 %2876, 0
  %2878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2878, %dx.types.Handle %108, float %2428, float %2429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = extractvalue %dx.types.ResRet.f32 %2879, 1
  %2882 = extractvalue %dx.types.ResRet.f32 %2879, 2
  %2883 = fmul fast float %2871, %2880
  %2884 = fmul fast float %2872, %2881
  %2885 = fmul fast float %2873, %2882
  br label %2886

; <label>:2886                                    ; preds = %2856, %2848
  %2887 = phi float [ %2883, %2856 ], [ 0.000000e+00, %2848 ]
  %2888 = phi float [ %2884, %2856 ], [ 0.000000e+00, %2848 ]
  %2889 = phi float [ %2885, %2856 ], [ 0.000000e+00, %2848 ]
  %2890 = fcmp fast ogt float %2887, 0.000000e+00
  %2891 = fcmp fast ogt float %2888, 0.000000e+00
  %2892 = fcmp fast ogt float %2889, 0.000000e+00
  %2893 = call float @dx.op.unary.f32(i32 23, float %2887)  ; Log(value)
  %2894 = call float @dx.op.unary.f32(i32 23, float %2888)  ; Log(value)
  %2895 = call float @dx.op.unary.f32(i32 23, float %2889)  ; Log(value)
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = lshr i32 %2897, 7
  %2899 = and i32 %2898, 32752
  %2900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2899)  ; LegacyF16ToF32(value)
  %2901 = fmul fast float %2893, 0xBFE62E4300000000
  %2902 = fmul fast float %2901, %2900
  %2903 = fmul fast float %2894, 0xBFE62E4300000000
  %2904 = fmul fast float %2903, %2900
  %2905 = fmul fast float %2895, 0xBFE62E4300000000
  %2906 = fmul fast float %2905, %2900
  %2907 = select i1 %2890, float %2902, float 1.270000e+02
  %2908 = select i1 %2891, float %2904, float 1.270000e+02
  %2909 = select i1 %2892, float %2906, float 1.270000e+02
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = and i32 %2911, 10240
  %2913 = icmp eq i32 %2912, 0
  br i1 %2913, label %2958, label %2914

; <label>:2914                                    ; preds = %2886
  %2915 = add i32 %50, 500
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2915, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = add i32 %2917, 0
  %2919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2919, %dx.types.Handle %108, float %2428, float %2429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2921 = extractvalue %dx.types.ResRet.f32 %2920, 1
  %2922 = extractvalue %dx.types.ResRet.f32 %2920, 3
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 1048576
  %2926 = icmp ne i32 %2925, 0
  %2927 = and i32 %2924, 8192
  %2928 = icmp eq i32 %2927, 0
  br i1 %2928, label %2944, label %2929

; <label>:2929                                    ; preds = %2914
  %2930 = extractvalue %dx.types.ResRet.f32 %2920, 2
  %2931 = select i1 %2926, float %2930, float %2921
  %2932 = extractvalue %dx.types.ResRet.f32 %2920, 0
  %2933 = select i1 %2926, float %2932, float %2921
  %2934 = add i32 %50, 128
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2934, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = lshr i32 %2936, 16
  %2938 = and i32 %2937, 255
  %2939 = uitofp i32 %2938 to float
  %2940 = fmul fast float %2939, 0x3F80101020000000
  %2941 = fmul fast float %2940, %2933
  %2942 = fmul fast float %2940, %2921
  %2943 = fmul fast float %2940, %2931
  br label %2944

; <label>:2944                                    ; preds = %2929, %2914
  %2945 = phi float [ %2941, %2929 ], [ 0.000000e+00, %2914 ]
  %2946 = phi float [ %2942, %2929 ], [ 0.000000e+00, %2914 ]
  %2947 = phi float [ %2943, %2929 ], [ 0.000000e+00, %2914 ]
  %2948 = and i32 %2924, 2048
  %2949 = icmp eq i32 %2948, 0
  br i1 %2949, label %2958, label %2950

; <label>:2950                                    ; preds = %2944
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2805, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = shl i32 %2952, 4
  %2954 = and i32 %2953, 32752
  %2955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2954)  ; LegacyF16ToF32(value)
  %2956 = fmul fast float %2955, %2922
  %2957 = call float @dx.op.binary.f32(i32 35, float %2956, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2958

; <label>:2958                                    ; preds = %2950, %2944, %2886
  %2959 = phi float [ %2945, %2950 ], [ %2945, %2944 ], [ 0.000000e+00, %2886 ]
  %2960 = phi float [ %2946, %2950 ], [ %2946, %2944 ], [ 0.000000e+00, %2886 ]
  %2961 = phi float [ %2947, %2950 ], [ %2947, %2944 ], [ 0.000000e+00, %2886 ]
  %2962 = phi float [ %2957, %2950 ], [ 0x3F70101020000000, %2944 ], [ 0x3F70101020000000, %2886 ]
  %2963 = add i32 %50, 128
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = lshr i32 %2965, 8
  %2969 = and i32 %2968, 255
  %2970 = uitofp i32 %2969 to float
  %2971 = call float @dx.op.dot3.f32(i32 55, float %2721, float %2722, float %2723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2972 = fmul fast float %2970, %2971
  %2973 = fadd fast float %2972, %2967
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  br i1 %2320, label %2976, label %3011

; <label>:2976                                    ; preds = %2958
  %2977 = fmul fast float %2962, 2.000000e+00
  %2978 = fcmp fast olt float %2907, 1.270000e+02
  %2979 = fcmp fast olt float %2908, 1.270000e+02
  %2980 = fcmp fast olt float %2909, 1.270000e+02
  %2981 = fmul fast float %2907, 0xBFF7154760000000
  %2982 = fmul fast float %2981, %2977
  %2983 = fmul fast float %2908, 0xBFF7154760000000
  %2984 = fmul fast float %2983, %2977
  %2985 = fmul fast float %2909, 0xBFF7154760000000
  %2986 = fmul fast float %2985, %2977
  %2987 = call float @dx.op.unary.f32(i32 21, float %2982)  ; Exp(value)
  %2988 = call float @dx.op.unary.f32(i32 21, float %2984)  ; Exp(value)
  %2989 = call float @dx.op.unary.f32(i32 21, float %2986)  ; Exp(value)
  %2990 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2991 = call float @dx.op.unary.f32(i32 7, float %2988)  ; Saturate(value)
  %2992 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2993 = fadd fast float %2990, -1.000000e+00
  %2994 = select i1 %2978, float %2993, float -1.000000e+00
  %2995 = fadd fast float %2991, -1.000000e+00
  %2996 = select i1 %2979, float %2995, float -1.000000e+00
  %2997 = fadd fast float %2992, -1.000000e+00
  %2998 = select i1 %2980, float %2997, float -1.000000e+00
  %2999 = fmul fast float %2994, %2501
  %3000 = fmul fast float %2996, %2501
  %3001 = fmul fast float %2998, %2501
  %3002 = fadd fast float %2999, 1.000000e+00
  %3003 = fadd fast float %3000, 1.000000e+00
  %3004 = fadd fast float %3001, 1.000000e+00
  %3005 = fmul fast float %3002, %2305
  %3006 = fmul fast float %3003, %2306
  %3007 = fmul fast float %3004, %2307
  %3008 = fmul fast float %3002, %2302
  %3009 = fmul fast float %3003, %2303
  %3010 = fmul fast float %3004, %2304
  br label %3011

; <label>:3011                                    ; preds = %2976, %2958
  %3012 = phi float [ %3008, %2976 ], [ %2302, %2958 ]
  %3013 = phi float [ %3009, %2976 ], [ %2303, %2958 ]
  %3014 = phi float [ %3010, %2976 ], [ %2304, %2958 ]
  %3015 = phi float [ %3005, %2976 ], [ %2305, %2958 ]
  %3016 = phi float [ %3006, %2976 ], [ %2306, %2958 ]
  %3017 = phi float [ %3007, %2976 ], [ %2307, %2958 ]
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 3
  %3021 = icmp eq i32 %3020, 3
  br i1 %3021, label %3100, label %3022

; <label>:3022                                    ; preds = %3011
  %3023 = and i32 %3019, 16
  %3024 = icmp ne i32 %3023, 0
  %3025 = select i1 %3024, float %2501, float 0.000000e+00
  %3026 = icmp eq i32 %3020, 0
  br i1 %3026, label %3027, label %3055

; <label>:3027                                    ; preds = %3022
  %3028 = and i32 %3019, 64
  %3029 = icmp ne i32 %3028, 0
  %3030 = select i1 %3029, float %2501, float 0.000000e+00
  %3031 = fsub fast float %2721, %3015
  %3032 = fsub fast float %2722, %3016
  %3033 = fsub fast float %2723, %3017
  %3034 = fmul fast float %3025, %3031
  %3035 = fmul fast float %3025, %3032
  %3036 = fmul fast float %3025, %3033
  %3037 = fadd fast float %3034, %3015
  %3038 = fadd fast float %3035, %3016
  %3039 = fadd fast float %3036, %3017
  %3040 = fsub fast float %2707, %2314
  %3041 = fmul fast float %3025, %3040
  %3042 = fadd fast float %3041, %2314
  %3043 = fsub fast float %2849, %3012
  %3044 = fsub fast float %2850, %3013
  %3045 = fsub fast float %2851, %3014
  %3046 = fmul fast float %3030, %3043
  %3047 = fmul fast float %3030, %3044
  %3048 = fmul fast float %3030, %3045
  %3049 = fadd fast float %3046, %3012
  %3050 = fadd fast float %3047, %3013
  %3051 = fadd fast float %3048, %3014
  %3052 = fsub fast float %2975, %2318
  %3053 = fmul fast float %3025, %3052
  %3054 = fadd fast float %3053, %2318
  br label %3100

; <label>:3055                                    ; preds = %3022
  %3056 = icmp eq i32 %3020, 1
  br i1 %3056, label %3057, label %3070

; <label>:3057                                    ; preds = %3055
  %3058 = fadd fast float %2721, -1.000000e+00
  %3059 = fadd fast float %2722, -1.000000e+00
  %3060 = fadd fast float %2723, -1.000000e+00
  %3061 = fmul fast float %3025, %3058
  %3062 = fmul fast float %3025, %3059
  %3063 = fmul fast float %3025, %3060
  %3064 = fadd fast float %3061, 1.000000e+00
  %3065 = fadd fast float %3062, 1.000000e+00
  %3066 = fadd fast float %3063, 1.000000e+00
  %3067 = fmul fast float %3064, %3015
  %3068 = fmul fast float %3065, %3016
  %3069 = fmul fast float %3066, %3017
  br label %3100

; <label>:3070                                    ; preds = %3055
  %3071 = icmp eq i32 %3020, 2
  br i1 %3071, label %3072, label %3100

; <label>:3072                                    ; preds = %3070
  %3073 = call float @dx.op.unary.f32(i32 24, float %2721)  ; Sqrt(value)
  %3074 = call float @dx.op.unary.f32(i32 24, float %2722)  ; Sqrt(value)
  %3075 = call float @dx.op.unary.f32(i32 24, float %2723)  ; Sqrt(value)
  %3076 = fadd fast float %3073, -5.000000e-01
  %3077 = fadd fast float %3074, -5.000000e-01
  %3078 = fadd fast float %3075, -5.000000e-01
  %3079 = fmul fast float %3076, %3025
  %3080 = fmul fast float %3077, %3025
  %3081 = fmul fast float %3078, %3025
  %3082 = fadd fast float %3079, 5.000000e-01
  %3083 = fadd fast float %3080, 5.000000e-01
  %3084 = fadd fast float %3081, 5.000000e-01
  %3085 = fmul fast float %3082, 2.000000e+00
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = fmul fast float %3086, %3015
  %3088 = fadd fast float %3087, %3085
  %3089 = fmul fast float %3088, %3015
  %3090 = fmul fast float %3083, 2.000000e+00
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = fmul fast float %3091, %3016
  %3093 = fadd fast float %3092, %3090
  %3094 = fmul fast float %3093, %3016
  %3095 = fmul fast float %3084, 2.000000e+00
  %3096 = fsub fast float 1.000000e+00, %3095
  %3097 = fmul fast float %3096, %3017
  %3098 = fadd fast float %3097, %3095
  %3099 = fmul fast float %3098, %3017
  br label %3100

; <label>:3100                                    ; preds = %3072, %3070, %3057, %3027, %3011
  %3101 = phi float [ %3012, %3011 ], [ %3012, %3072 ], [ %3012, %3070 ], [ %3012, %3057 ], [ %3049, %3027 ]
  %3102 = phi float [ %3013, %3011 ], [ %3013, %3072 ], [ %3013, %3070 ], [ %3013, %3057 ], [ %3050, %3027 ]
  %3103 = phi float [ %3014, %3011 ], [ %3014, %3072 ], [ %3014, %3070 ], [ %3014, %3057 ], [ %3051, %3027 ]
  %3104 = phi float [ %3015, %3011 ], [ %3089, %3072 ], [ %3015, %3070 ], [ %3067, %3057 ], [ %3037, %3027 ]
  %3105 = phi float [ %3016, %3011 ], [ %3094, %3072 ], [ %3016, %3070 ], [ %3068, %3057 ], [ %3038, %3027 ]
  %3106 = phi float [ %3017, %3011 ], [ %3099, %3072 ], [ %3017, %3070 ], [ %3069, %3057 ], [ %3039, %3027 ]
  %3107 = phi float [ %2314, %3011 ], [ %2314, %3072 ], [ %2314, %3070 ], [ %2314, %3057 ], [ %3042, %3027 ]
  %3108 = phi float [ %2318, %3011 ], [ %2318, %3072 ], [ %2318, %3070 ], [ %2318, %3057 ], [ %3054, %3027 ]
  %3109 = and i32 %3019, 12
  %3110 = icmp eq i32 %3109, 12
  br i1 %3110, label %3241, label %3111

; <label>:3111                                    ; preds = %3100
  %3112 = and i32 %3019, 2097184
  %3113 = icmp eq i32 %3112, 2097184
  %3114 = select i1 %3113, float %2501, float 0.000000e+00
  %3115 = and i32 %3019, 4194336
  %3116 = icmp eq i32 %3115, 4194336
  %3117 = select i1 %3116, float %2501, float 0.000000e+00
  %3118 = and i32 %3019, 8388640
  %3119 = icmp eq i32 %3118, 8388640
  %3120 = select i1 %3119, float %2501, float 0.000000e+00
  %3121 = and i32 %3019, 1024
  %3122 = icmp ne i32 %3121, 0
  %3123 = select i1 %3122, float %2501, float 0.000000e+00
  %3124 = and i32 %3019, 2048
  %3125 = icmp ne i32 %3124, 0
  %3126 = select i1 %3125, float %2501, float 0.000000e+00
  %3127 = and i32 %3019, 8192
  %3128 = icmp ne i32 %3127, 0
  %3129 = select i1 %3128, float %2501, float 0.000000e+00
  %3130 = icmp eq i32 %3109, 0
  br i1 %3130, label %3131, label %3165

; <label>:3131                                    ; preds = %3111
  %3132 = fsub fast float %2802, %2300
  %3133 = fsub fast float %2803, %2301
  %3134 = fmul fast float %3114, %3132
  %3135 = fmul fast float %3114, %3133
  %3136 = fadd fast float %3134, %2300
  %3137 = fadd fast float %3135, %2301
  %3138 = fsub fast float %2804, %2316
  %3139 = fmul fast float %3117, %3138
  %3140 = fadd fast float %3139, %2316
  %3141 = fsub fast float %2801, %2315
  %3142 = fmul fast float %3120, %3141
  %3143 = fadd fast float %3142, %2315
  %3144 = fsub fast float %2907, %2311
  %3145 = fsub fast float %2908, %2312
  %3146 = fsub fast float %2909, %2313
  %3147 = fmul fast float %3123, %3144
  %3148 = fmul fast float %3123, %3145
  %3149 = fmul fast float %3123, %3146
  %3150 = fadd fast float %3147, %2311
  %3151 = fadd fast float %3148, %2312
  %3152 = fadd fast float %3149, %2313
  %3153 = fsub fast float %2962, %2317
  %3154 = fmul fast float %3126, %3153
  %3155 = fadd fast float %3154, %2317
  %3156 = fsub fast float %2959, %2308
  %3157 = fsub fast float %2960, %2309
  %3158 = fsub fast float %2961, %2310
  %3159 = fmul fast float %3129, %3156
  %3160 = fmul fast float %3129, %3157
  %3161 = fmul fast float %3129, %3158
  %3162 = fadd fast float %3159, %2308
  %3163 = fadd fast float %3160, %2309
  %3164 = fadd fast float %3161, %2310
  br label %3241

; <label>:3165                                    ; preds = %3111
  %3166 = icmp eq i32 %3109, 4
  br i1 %3166, label %3167, label %3213

; <label>:3167                                    ; preds = %3165
  %3168 = fmul fast float %3114, %2802
  %3169 = fmul fast float %3114, %2803
  %3170 = fadd fast float %3168, %2300
  %3171 = fadd fast float %3169, %2301
  %3172 = call float @dx.op.binary.f32(i32 36, float %2316, float %2804)  ; FMin(a,b)
  %3173 = fsub fast float %3172, %2316
  %3174 = fmul fast float %3173, %3117
  %3175 = fadd fast float %3174, %2316
  %3176 = fadd fast float %2801, %2315
  %3177 = fmul fast float %3176, 0x3FF337FAE0000000
  %3178 = fmul fast float %2315, %2315
  %3179 = fmul fast float %2801, %2801
  %3180 = fadd fast float %3179, %3178
  %3181 = fmul fast float %3180, 0x3FE5152B00000000
  %3182 = fmul fast float %2315, 0xBFCC1F85E0000000
  %3183 = fmul fast float %3182, %2801
  %3184 = fadd fast float %3183, 0xBFE1363700000000
  %3185 = fadd fast float %3184, %3177
  %3186 = fsub fast float %3185, %3181
  %3187 = fmul fast float %3176, 0x3FBA6F0D00000000
  %3188 = fmul fast float %3180, 0x3FD0432880000000
  %3189 = fmul fast float %2315, 0xBFEF110800000000
  %3190 = fmul fast float %3189, %2801
  %3191 = fadd fast float %3190, 1.000000e+00
  %3192 = fsub fast float %3191, %3187
  %3193 = fadd fast float %3192, %3188
  %3194 = fdiv fast float %3186, %3193
  %3195 = call float @dx.op.unary.f32(i32 7, float %3194)  ; Saturate(value)
  %3196 = fsub fast float %3195, %2315
  %3197 = fmul fast float %3196, %3120
  %3198 = fadd fast float %3197, %2315
  %3199 = fmul fast float %3123, %2907
  %3200 = fmul fast float %3123, %2908
  %3201 = fmul fast float %3123, %2909
  %3202 = fadd fast float %3199, %2311
  %3203 = fadd fast float %3200, %2312
  %3204 = fadd fast float %3201, %2313
  %3205 = fmul fast float %3126, %2962
  %3206 = fadd fast float %3205, %2317
  %3207 = fmul fast float %3129, %2959
  %3208 = fmul fast float %3129, %2960
  %3209 = fmul fast float %3129, %2961
  %3210 = fadd fast float %3207, %2308
  %3211 = fadd fast float %3208, %2309
  %3212 = fadd fast float %3209, %2310
  br label %3241

; <label>:3213                                    ; preds = %3165
  %3214 = icmp eq i32 %3109, 8
  br i1 %3214, label %3215, label %3241

; <label>:3215                                    ; preds = %3213
  %3216 = fmul fast float %3114, %2802
  %3217 = fmul fast float %3114, %2803
  %3218 = fadd fast float %3216, %2300
  %3219 = fadd fast float %3217, %2301
  %3220 = call float @dx.op.binary.f32(i32 36, float %2316, float %2804)  ; FMin(a,b)
  %3221 = fsub fast float %3220, %2316
  %3222 = fmul fast float %3221, %3117
  %3223 = fadd fast float %3222, %2316
  %3224 = fsub fast float %2801, %2315
  %3225 = fmul fast float %3120, %3224
  %3226 = fadd fast float %3225, %2315
  %3227 = fmul fast float %3123, %2907
  %3228 = fmul fast float %3123, %2908
  %3229 = fmul fast float %3123, %2909
  %3230 = fadd fast float %3227, %2311
  %3231 = fadd fast float %3228, %2312
  %3232 = fadd fast float %3229, %2313
  %3233 = fmul fast float %3126, %2962
  %3234 = fadd fast float %3233, %2317
  %3235 = fmul fast float %3129, %2959
  %3236 = fmul fast float %3129, %2960
  %3237 = fmul fast float %3129, %2961
  %3238 = fadd fast float %3235, %2308
  %3239 = fadd fast float %3236, %2309
  %3240 = fadd fast float %3237, %2310
  br label %3241

; <label>:3241                                    ; preds = %3215, %3213, %3167, %3131, %3100, %2500, %2319, %2299
  %3242 = phi float [ %2300, %3100 ], [ %2300, %2500 ], [ %2300, %2299 ], [ %3218, %3215 ], [ %2300, %3213 ], [ %3170, %3167 ], [ %3136, %3131 ], [ %2300, %2319 ]
  %3243 = phi float [ %2301, %3100 ], [ %2301, %2500 ], [ %2301, %2299 ], [ %3219, %3215 ], [ %2301, %3213 ], [ %3171, %3167 ], [ %3137, %3131 ], [ %2301, %2319 ]
  %3244 = phi float [ %3101, %3100 ], [ %2302, %2500 ], [ %2302, %2299 ], [ %3101, %3215 ], [ %3101, %3213 ], [ %3101, %3167 ], [ %3101, %3131 ], [ %2302, %2319 ]
  %3245 = phi float [ %3102, %3100 ], [ %2303, %2500 ], [ %2303, %2299 ], [ %3102, %3215 ], [ %3102, %3213 ], [ %3102, %3167 ], [ %3102, %3131 ], [ %2303, %2319 ]
  %3246 = phi float [ %3103, %3100 ], [ %2304, %2500 ], [ %2304, %2299 ], [ %3103, %3215 ], [ %3103, %3213 ], [ %3103, %3167 ], [ %3103, %3131 ], [ %2304, %2319 ]
  %3247 = phi float [ %3104, %3100 ], [ %2305, %2500 ], [ %2305, %2299 ], [ %3104, %3215 ], [ %3104, %3213 ], [ %3104, %3167 ], [ %3104, %3131 ], [ %2305, %2319 ]
  %3248 = phi float [ %3105, %3100 ], [ %2306, %2500 ], [ %2306, %2299 ], [ %3105, %3215 ], [ %3105, %3213 ], [ %3105, %3167 ], [ %3105, %3131 ], [ %2306, %2319 ]
  %3249 = phi float [ %3106, %3100 ], [ %2307, %2500 ], [ %2307, %2299 ], [ %3106, %3215 ], [ %3106, %3213 ], [ %3106, %3167 ], [ %3106, %3131 ], [ %2307, %2319 ]
  %3250 = phi float [ %2308, %3100 ], [ %2308, %2500 ], [ %2308, %2299 ], [ %3238, %3215 ], [ %2308, %3213 ], [ %3210, %3167 ], [ %3162, %3131 ], [ %2308, %2319 ]
  %3251 = phi float [ %2309, %3100 ], [ %2309, %2500 ], [ %2309, %2299 ], [ %3239, %3215 ], [ %2309, %3213 ], [ %3211, %3167 ], [ %3163, %3131 ], [ %2309, %2319 ]
  %3252 = phi float [ %2310, %3100 ], [ %2310, %2500 ], [ %2310, %2299 ], [ %3240, %3215 ], [ %2310, %3213 ], [ %3212, %3167 ], [ %3164, %3131 ], [ %2310, %2319 ]
  %3253 = phi float [ %2311, %3100 ], [ %2311, %2500 ], [ %2311, %2299 ], [ %3230, %3215 ], [ %2311, %3213 ], [ %3202, %3167 ], [ %3150, %3131 ], [ %2311, %2319 ]
  %3254 = phi float [ %2312, %3100 ], [ %2312, %2500 ], [ %2312, %2299 ], [ %3231, %3215 ], [ %2312, %3213 ], [ %3203, %3167 ], [ %3151, %3131 ], [ %2312, %2319 ]
  %3255 = phi float [ %2313, %3100 ], [ %2313, %2500 ], [ %2313, %2299 ], [ %3232, %3215 ], [ %2313, %3213 ], [ %3204, %3167 ], [ %3152, %3131 ], [ %2313, %2319 ]
  %3256 = phi float [ %3107, %3100 ], [ %2314, %2500 ], [ %2314, %2299 ], [ %3107, %3215 ], [ %3107, %3213 ], [ %3107, %3167 ], [ %3107, %3131 ], [ %2314, %2319 ]
  %3257 = phi float [ %2315, %3100 ], [ %2315, %2500 ], [ %2315, %2299 ], [ %3226, %3215 ], [ %2315, %3213 ], [ %3198, %3167 ], [ %3143, %3131 ], [ %2315, %2319 ]
  %3258 = phi float [ %2316, %3100 ], [ %2316, %2500 ], [ %2316, %2299 ], [ %3223, %3215 ], [ %2316, %3213 ], [ %3175, %3167 ], [ %3140, %3131 ], [ %2316, %2319 ]
  %3259 = phi float [ %2317, %3100 ], [ %2317, %2500 ], [ %2317, %2299 ], [ %3234, %3215 ], [ %2317, %3213 ], [ %3206, %3167 ], [ %3155, %3131 ], [ %2317, %2319 ]
  %3260 = phi float [ %3108, %3100 ], [ %2318, %2500 ], [ %2318, %2299 ], [ %3108, %3215 ], [ %3108, %3213 ], [ %3108, %3167 ], [ %3108, %3131 ], [ %2318, %2319 ]
  br i1 %648, label %4183, label %3261

; <label>:3261                                    ; preds = %3241
  %3262 = icmp ult i32 %702, 4
  %3263 = add i32 %50, 72
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = add i32 %50, 76
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3266, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = or i32 %3268, %3265
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %4183, label %3271

; <label>:3271                                    ; preds = %3261
  %3272 = and i32 %3265, 262144
  %3273 = icmp ne i32 %3272, 0
  %3274 = select i1 %3273, float %57, float 1.000000e+00
  %3275 = select i1 %3273, float %58, float 0.000000e+00
  %3276 = select i1 %3273, float %59, float 0.000000e+00
  %3277 = select i1 %3273, float %60, float 1.000000e+00
  %3278 = select i1 %3273, float %61, float %89
  %3279 = select i1 %3273, float %62, float %90
  %3280 = add i32 %50, 332
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = lshr i32 %3282, 16
  %3284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3283)  ; LegacyF16ToF32(value)
  %3285 = fmul fast float %3284, 0x3F50624DE0000000
  %3286 = add i32 %50, 136
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = lshr i32 %3288, 16
  %3290 = and i32 %3289, 255
  %3291 = lshr i32 %3288, 24
  %3292 = add i32 %50, 340
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3292, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = and i32 %3294, 65535
  %3296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3295)  ; LegacyF16ToF32(value)
  %3297 = lshr i32 %3294, 16
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = add i32 %50, 80
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = lshr i32 %3301, 22
  %3303 = shl nuw nsw i32 %3302, 5
  %3304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3303)  ; LegacyF16ToF32(value)
  %3305 = shl i32 %3301, 4
  %3306 = and i32 %3305, 32752
  %3307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3306)  ; LegacyF16ToF32(value)
  %3308 = lshr i32 %3301, 7
  %3309 = and i32 %3308, 32752
  %3310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3309)  ; LegacyF16ToF32(value)
  %3311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.f32 %3311, 3
  %3313 = fmul fast float %3312, 1.000000e+03
  %3314 = fmul fast float %3313, %637
  %3315 = call float @dx.op.unary.f32(i32 22, float %3314)  ; Frc(value)
  %3316 = fadd fast float %3315, %625
  %3317 = fmul fast float %3313, %639
  %3318 = call float @dx.op.unary.f32(i32 22, float %3317)  ; Frc(value)
  %3319 = fadd fast float %3318, %626
  %3320 = fmul fast float %3285, %3313
  %3321 = call float @dx.op.unary.f32(i32 22, float %3320)  ; Frc(value)
  %3322 = fmul fast float %3321, 0x401921FB60000000
  %3323 = fadd fast float %3322, %3304
  %3324 = call float @dx.op.unary.f32(i32 13, float %3323)  ; Sin(value)
  %3325 = call float @dx.op.unary.f32(i32 12, float %3323)  ; Cos(value)
  %3326 = fsub fast float -0.000000e+00, %3324
  %3327 = fadd fast float %3278, -5.000000e-01
  %3328 = fadd fast float %3279, -5.000000e-01
  %3329 = fmul fast float %3296, %3327
  %3330 = fmul fast float %3298, %3328
  %3331 = fadd fast float %3329, 5.000000e-01
  %3332 = fadd fast float %3330, 5.000000e-01
  %3333 = fmul fast float %3307, %3331
  %3334 = fmul fast float %3310, %3332
  %3335 = fmul fast float %3325, %3333
  %3336 = call float @dx.op.tertiary.f32(i32 46, float %3326, float %3334, float %3335)  ; FMad(a,b,c)
  %3337 = fmul fast float %3324, %3333
  %3338 = call float @dx.op.tertiary.f32(i32 46, float %3325, float %3334, float %3337)  ; FMad(a,b,c)
  %3339 = fadd fast float %3316, %3336
  %3340 = fadd fast float %3319, %3338
  %3341 = icmp ugt i32 %3290, 1
  %3342 = icmp ugt i32 %3288, 33554431
  %3343 = or i1 %3342, %3341
  br i1 %3343, label %3344, label %3369

; <label>:3344                                    ; preds = %3271
  %3345 = add i32 %50, 276
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3345, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = lshr i32 %3347, 16
  %3349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3348)  ; LegacyF16ToF32(value)
  %3350 = fmul fast float %3312, %3349
  %3351 = call float @dx.op.unary.f32(i32 22, float %3350)  ; Frc(value)
  %3352 = mul nuw nsw i32 %3290, %3291
  %3353 = uitofp i32 %3352 to float
  %3354 = fmul fast float %3351, %3353
  %3355 = call float @dx.op.unary.f32(i32 27, float %3354)  ; Round_ni(value)
  %3356 = fptoui float %3355 to i32
  %3357 = urem i32 %3356, %3290
  %3358 = udiv i32 %3356, %3291
  %3359 = call float @dx.op.unary.f32(i32 22, float %3339)  ; Frc(value)
  %3360 = call float @dx.op.unary.f32(i32 22, float %3340)  ; Frc(value)
  %3361 = uitofp i32 %3357 to float
  %3362 = uitofp i32 %3358 to float
  %3363 = fadd fast float %3359, %3361
  %3364 = fadd fast float %3360, %3362
  %3365 = uitofp i32 %3290 to float
  %3366 = uitofp i32 %3291 to float
  %3367 = fdiv fast float %3363, %3365
  %3368 = fdiv fast float %3364, %3366
  br label %3369

; <label>:3369                                    ; preds = %3344, %3271
  %3370 = phi float [ %3367, %3344 ], [ %3339, %3271 ]
  %3371 = phi float [ %3368, %3344 ], [ %3340, %3271 ]
  %3372 = and i32 %3265, 256
  %3373 = icmp eq i32 %3372, 0
  br i1 %3373, label %3420, label %3374

; <label>:3374                                    ; preds = %3369
  %3375 = add i32 %50, 452
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3375, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = add i32 %3377, 0
  %3379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3379, %dx.types.Handle %108, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3381 = extractvalue %dx.types.ResRet.f32 %3380, 0
  %3382 = add i32 %50, 148
  %3383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3382, i32 undef)  ; BufferLoad(srv,index,wot)
  %3384 = extractvalue %dx.types.ResRet.i32 %3383, 0
  %3385 = shl i32 %3384, 4
  %3386 = and i32 %3385, 32752
  %3387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3386)  ; LegacyF16ToF32(value)
  %3388 = lshr i32 %3384, 7
  %3389 = and i32 %3388, 32752
  %3390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3389)  ; LegacyF16ToF32(value)
  %3391 = fsub fast float 1.000000e+00, %697
  %3392 = call float @dx.op.binary.f32(i32 35, float %3391, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3393 = bitcast float %697 to i32
  %3394 = sitofp i32 %3393 to float
  %3395 = fadd fast float %3394, 0xC1CFBF8940000000
  %3396 = fmul fast float %3390, %3395
  %3397 = fadd fast float %3396, 0x41CFBF8940000000
  %3398 = fptosi float %3397 to i32
  %3399 = bitcast i32 %3398 to float
  %3400 = bitcast float %3392 to i32
  %3401 = sitofp i32 %3400 to float
  %3402 = fadd fast float %3401, 0xC1CFBF8940000000
  %3403 = fmul fast float %3402, %3390
  %3404 = fadd fast float %3403, 0x41CFBF8940000000
  %3405 = fptosi float %3404 to i32
  %3406 = bitcast i32 %3405 to float
  %3407 = fmul fast float %3399, %3387
  %3408 = fmul fast float %3406, %3387
  %3409 = fsub fast float %3392, %3407
  %3410 = fadd fast float %3408, %3392
  %3411 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3412 = call float @dx.op.unary.f32(i32 7, float %3410)  ; Saturate(value)
  %3413 = fsub fast float %3381, %3411
  %3414 = fsub fast float %3412, %3411
  %3415 = bitcast float %3414 to i32
  %3416 = sub nsw i32 2129859010, %3415
  %3417 = bitcast i32 %3416 to float
  %3418 = fmul fast float %3417, %3413
  %3419 = call float @dx.op.unary.f32(i32 7, float %3418)  ; Saturate(value)
  br label %3420

; <label>:3420                                    ; preds = %3374, %3369
  %3421 = phi float [ %3419, %3374 ], [ %697, %3369 ]
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = and i32 %3423, 128
  %3425 = icmp eq i32 %3424, 0
  br i1 %3425, label %3442, label %3426

; <label>:3426                                    ; preds = %3420
  %3427 = add i32 %50, 436
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = add i32 %3429, 0
  %3431 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3430, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3432 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3431, %dx.types.Handle %108, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3433 = extractvalue %dx.types.ResRet.f32 %3432, 0
  %3434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3435 = extractvalue %dx.types.ResRet.i32 %3434, 0
  %3436 = and i32 %3435, 524288
  %3437 = icmp ne i32 %3436, 0
  %3438 = fcmp fast ogt float %3433, 0x3FE0101020000000
  %3439 = select i1 %3438, float 1.000000e+00, float 0.000000e+00
  %3440 = select i1 %3437, float %3439, float %3433
  %3441 = fmul fast float %3440, %3421
  br label %3442

; <label>:3442                                    ; preds = %3426, %3420
  %3443 = phi float [ %3441, %3426 ], [ %3421, %3420 ]
  %3444 = fcmp fast ult float %3443, 0x3F70101020000000
  br i1 %3444, label %4183, label %3445

; <label>:3445                                    ; preds = %3442
  %3446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3447 = extractvalue %dx.types.ResRet.i32 %3446, 0
  %3448 = and i32 %3447, 16
  %3449 = icmp eq i32 %3448, 0
  br i1 %3449, label %3648, label %3450

; <label>:3450                                    ; preds = %3445
  %3451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3452 = extractvalue %dx.types.ResRet.i32 %3451, 0
  %3453 = add i32 %50, 388
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = add i32 %3455, 0
  %3457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3456, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3457, %dx.types.Handle %107, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = extractvalue %dx.types.ResRet.f32 %3458, 1
  %3461 = extractvalue %dx.types.ResRet.f32 %3458, 2
  %3462 = extractvalue %dx.types.ResRet.f32 %3458, 3
  %3463 = and i32 %3452, 255
  %3464 = uitofp i32 %3463 to float
  %3465 = lshr i32 %3452, 8
  %3466 = and i32 %3465, 255
  %3467 = uitofp i32 %3466 to float
  %3468 = fmul fast float %3462, %3464
  %3469 = fadd fast float %3468, %3467
  %3470 = fmul fast float %3469, 0x3F70101000000000
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = and i32 %3472, 512
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3483, label %3475

; <label>:3475                                    ; preds = %3450
  %3476 = add i32 %50, 472
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = add i32 %3478, 0
  %3480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3480, %dx.types.Handle %108, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  br label %3483

; <label>:3483                                    ; preds = %3475, %3450
  %3484 = phi float [ %3482, %3475 ], [ 1.000000e+00, %3450 ]
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = and i32 %3486, 33554432
  %3488 = icmp eq i32 %3487, 0
  br i1 %3488, label %3595, label %3489

; <label>:3489                                    ; preds = %3483
  %3490 = add i32 %50, 272
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = and i32 %3492, 65535
  %3494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3493)  ; LegacyF16ToF32(value)
  %3495 = lshr i32 %3492, 16
  %3496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3495)  ; LegacyF16ToF32(value)
  %3497 = add i32 %50, 276
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = and i32 %3499, 65535
  %3501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3500)  ; LegacyF16ToF32(value)
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = lshr i32 %3503, 24
  %3505 = uitofp i32 %3504 to float
  %3506 = fmul fast float %3505, 0x3F70101020000000
  %3507 = and i32 %3503, 255
  %3508 = uitofp i32 %3507 to float
  %3509 = fmul fast float %3508, 0x3F70101020000000
  %3510 = lshr i32 %3503, 8
  %3511 = and i32 %3510, 255
  %3512 = uitofp i32 %3511 to float
  %3513 = fmul fast float %3512, 0x3F70101020000000
  %3514 = lshr i32 %3503, 16
  %3515 = and i32 %3514, 255
  %3516 = uitofp i32 %3515 to float
  %3517 = fmul fast float %3516, 0x3F70101020000000
  %3518 = add i32 %50, 268
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = lshr i32 %3520, 24
  %3522 = uitofp i32 %3521 to float
  %3523 = fmul fast float %3522, 0x3F70101020000000
  %3524 = and i32 %3520, 255
  %3525 = uitofp i32 %3524 to float
  %3526 = fmul fast float %3525, 0x3F70101020000000
  %3527 = lshr i32 %3520, 8
  %3528 = and i32 %3527, 255
  %3529 = uitofp i32 %3528 to float
  %3530 = fmul fast float %3529, 0x3F70101020000000
  %3531 = lshr i32 %3520, 16
  %3532 = and i32 %3531, 255
  %3533 = uitofp i32 %3532 to float
  %3534 = fmul fast float %3533, 0x3F70101020000000
  %3535 = bitcast float %3459 to i32
  %3536 = ashr i32 %3535, 1
  %3537 = sub nsw i32 1597463174, %3536
  %3538 = bitcast i32 %3537 to float
  %3539 = fmul fast float %3459, 5.000000e-01
  %3540 = fmul fast float %3538, %3538
  %3541 = fmul fast float %3540, %3539
  %3542 = fsub fast float 1.500000e+00, %3541
  %3543 = fmul fast float %3538, %3459
  %3544 = fmul fast float %3543, %3542
  %3545 = bitcast float %3460 to i32
  %3546 = ashr i32 %3545, 1
  %3547 = sub nsw i32 1597463174, %3546
  %3548 = bitcast i32 %3547 to float
  %3549 = fmul fast float %3460, 5.000000e-01
  %3550 = fmul fast float %3548, %3548
  %3551 = fmul fast float %3550, %3549
  %3552 = fsub fast float 1.500000e+00, %3551
  %3553 = fmul fast float %3548, %3460
  %3554 = fmul fast float %3553, %3552
  %3555 = bitcast float %3461 to i32
  %3556 = ashr i32 %3555, 1
  %3557 = sub nsw i32 1597463174, %3556
  %3558 = bitcast i32 %3557 to float
  %3559 = fmul fast float %3461, 5.000000e-01
  %3560 = fmul fast float %3558, %3558
  %3561 = fmul fast float %3560, %3559
  %3562 = fsub fast float 1.500000e+00, %3561
  %3563 = fmul fast float %3558, %3461
  %3564 = fmul fast float %3563, %3562
  %3565 = fsub fast float %3544, %3526
  %3566 = fsub fast float %3554, %3530
  %3567 = fsub fast float %3564, %3534
  %3568 = fmul fast float %3565, %3494
  %3569 = fmul fast float %3566, %3496
  %3570 = fmul fast float %3567, %3501
  %3571 = fadd fast float %3568, %3509
  %3572 = fadd fast float %3569, %3513
  %3573 = fadd fast float %3570, %3517
  %3574 = call float @dx.op.unary.f32(i32 7, float %3571)  ; Saturate(value)
  %3575 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  %3576 = call float @dx.op.unary.f32(i32 7, float %3573)  ; Saturate(value)
  %3577 = fmul fast float %3574, %3574
  %3578 = fmul fast float %3575, %3575
  %3579 = fmul fast float %3576, %3576
  %3580 = fsub fast float %3577, %3459
  %3581 = fsub fast float %3578, %3460
  %3582 = fsub fast float %3579, %3461
  %3583 = fmul fast float %3580, %3484
  %3584 = fmul fast float %3581, %3484
  %3585 = fmul fast float %3582, %3484
  %3586 = fadd fast float %3583, %3459
  %3587 = fadd fast float %3584, %3460
  %3588 = fadd fast float %3585, %3461
  %3589 = fadd fast float %3506, %3470
  %3590 = fsub fast float %3589, %3523
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = fsub fast float %3591, %3470
  %3593 = fmul fast float %3592, %3484
  %3594 = fadd fast float %3593, %3470
  br label %3648

; <label>:3595                                    ; preds = %3483
  %3596 = and i32 %3486, 134217728
  %3597 = icmp eq i32 %3596, 0
  br i1 %3597, label %3632, label %3598

; <label>:3598                                    ; preds = %3595
  %3599 = call float @dx.op.unary.f32(i32 24, float %613)  ; Sqrt(value)
  %3600 = call float @dx.op.unary.f32(i32 24, float %614)  ; Sqrt(value)
  %3601 = call float @dx.op.unary.f32(i32 24, float %615)  ; Sqrt(value)
  %3602 = fadd fast float %3599, -5.000000e-01
  %3603 = fadd fast float %3600, -5.000000e-01
  %3604 = fadd fast float %3601, -5.000000e-01
  %3605 = fmul fast float %3602, %3484
  %3606 = fmul fast float %3603, %3484
  %3607 = fmul fast float %3604, %3484
  %3608 = fadd fast float %3605, 5.000000e-01
  %3609 = fadd fast float %3606, 5.000000e-01
  %3610 = fadd fast float %3607, 5.000000e-01
  %3611 = call float @dx.op.unary.f32(i32 24, float %3459)  ; Sqrt(value)
  %3612 = call float @dx.op.unary.f32(i32 24, float %3460)  ; Sqrt(value)
  %3613 = call float @dx.op.unary.f32(i32 24, float %3461)  ; Sqrt(value)
  %3614 = fmul fast float %3608, 2.000000e+00
  %3615 = fsub fast float 1.000000e+00, %3614
  %3616 = fmul fast float %3615, %3611
  %3617 = fadd fast float %3616, %3614
  %3618 = fmul fast float %3617, %3611
  %3619 = fmul fast float %3609, 2.000000e+00
  %3620 = fsub fast float 1.000000e+00, %3619
  %3621 = fmul fast float %3620, %3612
  %3622 = fadd fast float %3621, %3619
  %3623 = fmul fast float %3622, %3612
  %3624 = fmul fast float %3610, 2.000000e+00
  %3625 = fsub fast float 1.000000e+00, %3624
  %3626 = fmul fast float %3625, %3613
  %3627 = fadd fast float %3626, %3624
  %3628 = fmul fast float %3627, %3613
  %3629 = fmul fast float %3618, %3618
  %3630 = fmul fast float %3623, %3623
  %3631 = fmul fast float %3628, %3628
  br label %3648

; <label>:3632                                    ; preds = %3595
  %3633 = fmul fast float %613, %613
  %3634 = fmul fast float %614, %614
  %3635 = fmul fast float %615, %615
  %3636 = fadd fast float %3633, -1.000000e+00
  %3637 = fadd fast float %3634, -1.000000e+00
  %3638 = fadd fast float %3635, -1.000000e+00
  %3639 = fmul fast float %3484, %3636
  %3640 = fmul fast float %3484, %3637
  %3641 = fmul fast float %3484, %3638
  %3642 = fadd fast float %3639, 1.000000e+00
  %3643 = fadd fast float %3640, 1.000000e+00
  %3644 = fadd fast float %3641, 1.000000e+00
  %3645 = fmul fast float %3642, %3459
  %3646 = fmul fast float %3643, %3460
  %3647 = fmul fast float %3644, %3461
  br label %3648

; <label>:3648                                    ; preds = %3632, %3598, %3489, %3445
  %3649 = phi float [ %3594, %3489 ], [ %3470, %3598 ], [ %3470, %3632 ], [ 0x3FA23C0BE0000000, %3445 ]
  %3650 = phi float [ %3586, %3489 ], [ %3629, %3598 ], [ %3645, %3632 ], [ 1.000000e+00, %3445 ]
  %3651 = phi float [ %3587, %3489 ], [ %3630, %3598 ], [ %3646, %3632 ], [ 1.000000e+00, %3445 ]
  %3652 = phi float [ %3588, %3489 ], [ %3631, %3598 ], [ %3647, %3632 ], [ 1.000000e+00, %3445 ]
  %3653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3654 = extractvalue %dx.types.CBufRet.i32 %3653, 1
  %3655 = and i32 %3654, 1
  %3656 = icmp ne i32 %3655, 0
  %3657 = add i32 %50, 356
  %3658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.i32 %3658, 0
  %3660 = and i32 %3659, 32
  %3661 = icmp ne i32 %3660, 0
  %3662 = and i1 %3656, %3661
  %3663 = select i1 %3662, float 1.000000e+00, float %3650
  %3664 = select i1 %3662, float 0x3FD3333340000000, float %3651
  %3665 = select i1 %3662, float 0x3FD3333340000000, float %3652
  %3666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3667 = extractvalue %dx.types.ResRet.i32 %3666, 0
  %3668 = and i32 %3667, 32
  %3669 = icmp eq i32 %3668, 0
  br i1 %3669, label %3742, label %3670

; <label>:3670                                    ; preds = %3648
  %3671 = add i32 %50, 140
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = add i32 %50, 404
  %3675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3674, i32 undef)  ; BufferLoad(srv,index,wot)
  %3676 = extractvalue %dx.types.ResRet.i32 %3675, 0
  %3677 = add i32 %3676, 0
  %3678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3677, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3679 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3678, %dx.types.Handle %107, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3680 = extractvalue %dx.types.ResRet.f32 %3679, 0
  %3681 = extractvalue %dx.types.ResRet.f32 %3679, 1
  %3682 = extractvalue %dx.types.ResRet.f32 %3679, 2
  %3683 = extractvalue %dx.types.ResRet.f32 %3679, 3
  %3684 = and i32 %3673, 255
  %3685 = uitofp i32 %3684 to float
  %3686 = lshr i32 %3673, 8
  %3687 = and i32 %3686, 255
  %3688 = uitofp i32 %3687 to float
  %3689 = lshr i32 %3673, 16
  %3690 = and i32 %3689, 255
  %3691 = uitofp i32 %3690 to float
  %3692 = fmul fast float %3691, 0x3F70101000000000
  %3693 = fmul fast float %3680, %3685
  %3694 = fadd fast float %3693, %3688
  %3695 = fmul fast float %3694, 0x3F70101000000000
  %3696 = fadd fast float %3681, -5.000000e-01
  %3697 = fadd fast float %3683, -5.000000e-01
  %3698 = fmul fast float %3696, %3692
  %3699 = fmul fast float %3697, %3692
  %3700 = fadd fast float %3698, 5.000000e-01
  %3701 = fadd fast float %3699, 5.000000e-01
  %3702 = fmul fast float %3700, 2.000000e+00
  %3703 = fadd fast float %3702, -1.000000e+00
  %3704 = fmul fast float %3701, 2.000000e+00
  %3705 = fadd fast float %3704, -1.000000e+00
  %3706 = fadd fast float %3703, %3705
  %3707 = fmul fast float %3706, 5.000000e-01
  %3708 = fsub fast float %3703, %3705
  %3709 = fmul fast float %3708, 5.000000e-01
  %3710 = call float @dx.op.unary.f32(i32 6, float %3707)  ; FAbs(value)
  %3711 = fsub fast float 1.000000e+00, %3710
  %3712 = call float @dx.op.unary.f32(i32 6, float %3709)  ; FAbs(value)
  %3713 = fsub fast float %3711, %3712
  %3714 = call float @dx.op.dot3.f32(i32 55, float %3707, float %3709, float %3713, float %3707, float %3709, float %3713)  ; Dot3(ax,ay,az,bx,by,bz)
  %3715 = call float @dx.op.unary.f32(i32 25, float %3714)  ; Rsqrt(value)
  %3716 = fmul fast float %3707, %3715
  %3717 = fmul fast float %3709, %3715
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = and i32 %3719, 67108864
  %3721 = icmp eq i32 %3720, 0
  br i1 %3721, label %3738, label %3722

; <label>:3722                                    ; preds = %3670
  %3723 = add i32 %50, 328
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3723, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = and i32 %3725, 65535
  %3727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3726)  ; LegacyF16ToF32(value)
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = and i32 %3729, 65535
  %3731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3730)  ; LegacyF16ToF32(value)
  %3732 = lshr i32 %3725, 16
  %3733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3732)  ; LegacyF16ToF32(value)
  %3734 = fsub fast float %3695, %3733
  %3735 = fmul fast float %3734, %3727
  %3736 = fadd fast float %3735, %3731
  %3737 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  br label %3738

; <label>:3738                                    ; preds = %3722, %3670
  %3739 = phi float [ %3737, %3722 ], [ %3695, %3670 ]
  %3740 = call float @dx.op.dot2.f32(i32 54, float %3716, float %3717, float %3274, float %3275)  ; Dot2(ax,ay,bx,by)
  %3741 = call float @dx.op.dot2.f32(i32 54, float %3716, float %3717, float %3276, float %3277)  ; Dot2(ax,ay,bx,by)
  br label %3742

; <label>:3742                                    ; preds = %3738, %3648
  %3743 = phi float [ %3739, %3738 ], [ 0x3FD6666660000000, %3648 ]
  %3744 = phi float [ %3740, %3738 ], [ 0.000000e+00, %3648 ]
  %3745 = phi float [ %3741, %3738 ], [ 0.000000e+00, %3648 ]
  %3746 = phi float [ %3682, %3738 ], [ 1.000000e+00, %3648 ]
  %3747 = add i32 %50, 208
  %3748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.i32 %3748, 0
  %3750 = lshr i32 %3749, 22
  %3751 = shl nuw nsw i32 %3750, 5
  %3752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3751)  ; LegacyF16ToF32(value)
  %3753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3754 = extractvalue %dx.types.ResRet.i32 %3753, 0
  %3755 = and i32 %3754, 64
  %3756 = icmp eq i32 %3755, 0
  br i1 %3756, label %3790, label %3757

; <label>:3757                                    ; preds = %3742
  %3758 = add i32 %50, 420
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = add i32 %3760, 0
  %3762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3761, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.i32 %3763, 0
  %3765 = and i32 %3764, 131072
  %3766 = icmp eq i32 %3765, 0
  %3767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3762, %dx.types.Handle %107, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3767, 2
  %3771 = fmul fast float %596, %3768
  %3772 = fmul fast float %597, %3769
  %3773 = fmul fast float %598, %3770
  br i1 %3766, label %3780, label %3774

; <label>:3774                                    ; preds = %3757
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 0
  %3777 = fmul fast float %3776, %3771
  %3778 = fmul fast float %3776, %3772
  %3779 = fmul fast float %3776, %3773
  br label %3780

; <label>:3780                                    ; preds = %3774, %3757
  %3781 = phi float [ %3777, %3774 ], [ %3771, %3757 ]
  %3782 = phi float [ %3778, %3774 ], [ %3772, %3757 ]
  %3783 = phi float [ %3779, %3774 ], [ %3773, %3757 ]
  %3784 = fmul fast float %3781, %3752
  %3785 = select i1 %264, float %3784, float %3781
  %3786 = call float @dx.op.dot3.f32(i32 55, float %3785, float %3782, float %3783, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3787 = select i1 %264, float 0.000000e+00, float %3781
  %3788 = select i1 %264, float %3786, float %3782
  %3789 = select i1 %264, float 0.000000e+00, float %3783
  br label %3790

; <label>:3790                                    ; preds = %3780, %3742
  %3791 = phi float [ %3787, %3780 ], [ 0.000000e+00, %3742 ]
  %3792 = phi float [ %3788, %3780 ], [ 0.000000e+00, %3742 ]
  %3793 = phi float [ %3789, %3780 ], [ 0.000000e+00, %3742 ]
  %3794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3795 = extractvalue %dx.types.ResRet.i32 %3794, 0
  %3796 = and i32 %3795, 1024
  %3797 = icmp eq i32 %3796, 0
  br i1 %3797, label %3828, label %3798

; <label>:3798                                    ; preds = %3790
  %3799 = add i32 %50, 200
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = and i32 %3801, 255
  %3803 = uitofp i32 %3802 to float
  %3804 = fmul fast float %3803, 0x3F70101020000000
  %3805 = lshr i32 %3801, 8
  %3806 = and i32 %3805, 255
  %3807 = uitofp i32 %3806 to float
  %3808 = fmul fast float %3807, 0x3F70101020000000
  %3809 = lshr i32 %3801, 16
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = fmul fast float %3811, 0x3F70101020000000
  %3813 = fmul fast float %3804, %3804
  %3814 = fmul fast float %3808, %3808
  %3815 = fmul fast float %3812, %3812
  %3816 = add i32 %50, 488
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 0
  %3819 = add i32 %3818, 0
  %3820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3821 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3820, %dx.types.Handle %108, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = fmul fast float %3813, %3822
  %3826 = fmul fast float %3814, %3823
  %3827 = fmul fast float %3815, %3824
  br label %3828

; <label>:3828                                    ; preds = %3798, %3790
  %3829 = phi float [ %3825, %3798 ], [ 0.000000e+00, %3790 ]
  %3830 = phi float [ %3826, %3798 ], [ 0.000000e+00, %3790 ]
  %3831 = phi float [ %3827, %3798 ], [ 0.000000e+00, %3790 ]
  %3832 = fcmp fast ogt float %3829, 0.000000e+00
  %3833 = fcmp fast ogt float %3830, 0.000000e+00
  %3834 = fcmp fast ogt float %3831, 0.000000e+00
  %3835 = call float @dx.op.unary.f32(i32 23, float %3829)  ; Log(value)
  %3836 = call float @dx.op.unary.f32(i32 23, float %3830)  ; Log(value)
  %3837 = call float @dx.op.unary.f32(i32 23, float %3831)  ; Log(value)
  %3838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.i32 %3838, 0
  %3840 = lshr i32 %3839, 7
  %3841 = and i32 %3840, 32752
  %3842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3841)  ; LegacyF16ToF32(value)
  %3843 = fmul fast float %3835, 0xBFE62E4300000000
  %3844 = fmul fast float %3843, %3842
  %3845 = fmul fast float %3836, 0xBFE62E4300000000
  %3846 = fmul fast float %3845, %3842
  %3847 = fmul fast float %3837, 0xBFE62E4300000000
  %3848 = fmul fast float %3847, %3842
  %3849 = select i1 %3832, float %3844, float 1.270000e+02
  %3850 = select i1 %3833, float %3846, float 1.270000e+02
  %3851 = select i1 %3834, float %3848, float 1.270000e+02
  %3852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.i32 %3852, 0
  %3854 = and i32 %3853, 10240
  %3855 = icmp eq i32 %3854, 0
  br i1 %3855, label %3900, label %3856

; <label>:3856                                    ; preds = %3828
  %3857 = add i32 %50, 504
  %3858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.i32 %3858, 0
  %3860 = add i32 %3859, 0
  %3861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3861, %dx.types.Handle %108, float %3370, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3863 = extractvalue %dx.types.ResRet.f32 %3862, 1
  %3864 = extractvalue %dx.types.ResRet.f32 %3862, 3
  %3865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.i32 %3865, 0
  %3867 = and i32 %3866, 1048576
  %3868 = icmp ne i32 %3867, 0
  %3869 = and i32 %3866, 8192
  %3870 = icmp eq i32 %3869, 0
  br i1 %3870, label %3886, label %3871

; <label>:3871                                    ; preds = %3856
  %3872 = extractvalue %dx.types.ResRet.f32 %3862, 2
  %3873 = select i1 %3868, float %3872, float %3863
  %3874 = extractvalue %dx.types.ResRet.f32 %3862, 0
  %3875 = select i1 %3868, float %3874, float %3863
  %3876 = add i32 %50, 144
  %3877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3876, i32 undef)  ; BufferLoad(srv,index,wot)
  %3878 = extractvalue %dx.types.ResRet.i32 %3877, 0
  %3879 = lshr i32 %3878, 16
  %3880 = and i32 %3879, 255
  %3881 = uitofp i32 %3880 to float
  %3882 = fmul fast float %3881, 0x3F80101020000000
  %3883 = fmul fast float %3882, %3875
  %3884 = fmul fast float %3882, %3863
  %3885 = fmul fast float %3882, %3873
  br label %3886

; <label>:3886                                    ; preds = %3871, %3856
  %3887 = phi float [ %3883, %3871 ], [ 0.000000e+00, %3856 ]
  %3888 = phi float [ %3884, %3871 ], [ 0.000000e+00, %3856 ]
  %3889 = phi float [ %3885, %3871 ], [ 0.000000e+00, %3856 ]
  %3890 = and i32 %3866, 2048
  %3891 = icmp eq i32 %3890, 0
  br i1 %3891, label %3900, label %3892

; <label>:3892                                    ; preds = %3886
  %3893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.i32 %3893, 0
  %3895 = shl i32 %3894, 4
  %3896 = and i32 %3895, 32752
  %3897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3896)  ; LegacyF16ToF32(value)
  %3898 = fmul fast float %3897, %3864
  %3899 = call float @dx.op.binary.f32(i32 35, float %3898, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3900

; <label>:3900                                    ; preds = %3892, %3886, %3828
  %3901 = phi float [ %3887, %3892 ], [ %3887, %3886 ], [ 0.000000e+00, %3828 ]
  %3902 = phi float [ %3888, %3892 ], [ %3888, %3886 ], [ 0.000000e+00, %3828 ]
  %3903 = phi float [ %3889, %3892 ], [ %3889, %3886 ], [ 0.000000e+00, %3828 ]
  %3904 = phi float [ %3899, %3892 ], [ 0x3F70101020000000, %3886 ], [ 0x3F70101020000000, %3828 ]
  %3905 = add i32 %50, 144
  %3906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.i32 %3906, 0
  %3908 = and i32 %3907, 255
  %3909 = uitofp i32 %3908 to float
  %3910 = lshr i32 %3907, 8
  %3911 = and i32 %3910, 255
  %3912 = uitofp i32 %3911 to float
  %3913 = call float @dx.op.dot3.f32(i32 55, float %3663, float %3664, float %3665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3914 = fmul fast float %3912, %3913
  %3915 = fadd fast float %3914, %3909
  %3916 = fmul fast float %3915, 0x3F70101020000000
  %3917 = call float @dx.op.unary.f32(i32 7, float %3916)  ; Saturate(value)
  br i1 %3262, label %3918, label %3953

; <label>:3918                                    ; preds = %3900
  %3919 = fmul fast float %3904, 2.000000e+00
  %3920 = fcmp fast olt float %3849, 1.270000e+02
  %3921 = fcmp fast olt float %3850, 1.270000e+02
  %3922 = fcmp fast olt float %3851, 1.270000e+02
  %3923 = fmul fast float %3849, 0xBFF7154760000000
  %3924 = fmul fast float %3923, %3919
  %3925 = fmul fast float %3850, 0xBFF7154760000000
  %3926 = fmul fast float %3925, %3919
  %3927 = fmul fast float %3851, 0xBFF7154760000000
  %3928 = fmul fast float %3927, %3919
  %3929 = call float @dx.op.unary.f32(i32 21, float %3924)  ; Exp(value)
  %3930 = call float @dx.op.unary.f32(i32 21, float %3926)  ; Exp(value)
  %3931 = call float @dx.op.unary.f32(i32 21, float %3928)  ; Exp(value)
  %3932 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3933 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3934 = call float @dx.op.unary.f32(i32 7, float %3931)  ; Saturate(value)
  %3935 = fadd fast float %3932, -1.000000e+00
  %3936 = select i1 %3920, float %3935, float -1.000000e+00
  %3937 = fadd fast float %3933, -1.000000e+00
  %3938 = select i1 %3921, float %3937, float -1.000000e+00
  %3939 = fadd fast float %3934, -1.000000e+00
  %3940 = select i1 %3922, float %3939, float -1.000000e+00
  %3941 = fmul fast float %3936, %3443
  %3942 = fmul fast float %3938, %3443
  %3943 = fmul fast float %3940, %3443
  %3944 = fadd fast float %3941, 1.000000e+00
  %3945 = fadd fast float %3942, 1.000000e+00
  %3946 = fadd fast float %3943, 1.000000e+00
  %3947 = fmul fast float %3944, %3247
  %3948 = fmul fast float %3945, %3248
  %3949 = fmul fast float %3946, %3249
  %3950 = fmul fast float %3944, %3244
  %3951 = fmul fast float %3945, %3245
  %3952 = fmul fast float %3946, %3246
  br label %3953

; <label>:3953                                    ; preds = %3918, %3900
  %3954 = phi float [ %3950, %3918 ], [ %3244, %3900 ]
  %3955 = phi float [ %3951, %3918 ], [ %3245, %3900 ]
  %3956 = phi float [ %3952, %3918 ], [ %3246, %3900 ]
  %3957 = phi float [ %3947, %3918 ], [ %3247, %3900 ]
  %3958 = phi float [ %3948, %3918 ], [ %3248, %3900 ]
  %3959 = phi float [ %3949, %3918 ], [ %3249, %3900 ]
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = and i32 %3961, 3
  %3963 = icmp eq i32 %3962, 3
  br i1 %3963, label %4042, label %3964

; <label>:3964                                    ; preds = %3953
  %3965 = and i32 %3961, 16
  %3966 = icmp ne i32 %3965, 0
  %3967 = select i1 %3966, float %3443, float 0.000000e+00
  %3968 = icmp eq i32 %3962, 0
  br i1 %3968, label %3969, label %3997

; <label>:3969                                    ; preds = %3964
  %3970 = and i32 %3961, 64
  %3971 = icmp ne i32 %3970, 0
  %3972 = select i1 %3971, float %3443, float 0.000000e+00
  %3973 = fsub fast float %3663, %3957
  %3974 = fsub fast float %3664, %3958
  %3975 = fsub fast float %3665, %3959
  %3976 = fmul fast float %3967, %3973
  %3977 = fmul fast float %3967, %3974
  %3978 = fmul fast float %3967, %3975
  %3979 = fadd fast float %3976, %3957
  %3980 = fadd fast float %3977, %3958
  %3981 = fadd fast float %3978, %3959
  %3982 = fsub fast float %3649, %3256
  %3983 = fmul fast float %3967, %3982
  %3984 = fadd fast float %3983, %3256
  %3985 = fsub fast float %3791, %3954
  %3986 = fsub fast float %3792, %3955
  %3987 = fsub fast float %3793, %3956
  %3988 = fmul fast float %3972, %3985
  %3989 = fmul fast float %3972, %3986
  %3990 = fmul fast float %3972, %3987
  %3991 = fadd fast float %3988, %3954
  %3992 = fadd fast float %3989, %3955
  %3993 = fadd fast float %3990, %3956
  %3994 = fsub fast float %3917, %3260
  %3995 = fmul fast float %3967, %3994
  %3996 = fadd fast float %3995, %3260
  br label %4042

; <label>:3997                                    ; preds = %3964
  %3998 = icmp eq i32 %3962, 1
  br i1 %3998, label %3999, label %4012

; <label>:3999                                    ; preds = %3997
  %4000 = fadd fast float %3663, -1.000000e+00
  %4001 = fadd fast float %3664, -1.000000e+00
  %4002 = fadd fast float %3665, -1.000000e+00
  %4003 = fmul fast float %3967, %4000
  %4004 = fmul fast float %3967, %4001
  %4005 = fmul fast float %3967, %4002
  %4006 = fadd fast float %4003, 1.000000e+00
  %4007 = fadd fast float %4004, 1.000000e+00
  %4008 = fadd fast float %4005, 1.000000e+00
  %4009 = fmul fast float %4006, %3957
  %4010 = fmul fast float %4007, %3958
  %4011 = fmul fast float %4008, %3959
  br label %4042

; <label>:4012                                    ; preds = %3997
  %4013 = icmp eq i32 %3962, 2
  br i1 %4013, label %4014, label %4042

; <label>:4014                                    ; preds = %4012
  %4015 = call float @dx.op.unary.f32(i32 24, float %3663)  ; Sqrt(value)
  %4016 = call float @dx.op.unary.f32(i32 24, float %3664)  ; Sqrt(value)
  %4017 = call float @dx.op.unary.f32(i32 24, float %3665)  ; Sqrt(value)
  %4018 = fadd fast float %4015, -5.000000e-01
  %4019 = fadd fast float %4016, -5.000000e-01
  %4020 = fadd fast float %4017, -5.000000e-01
  %4021 = fmul fast float %4018, %3967
  %4022 = fmul fast float %4019, %3967
  %4023 = fmul fast float %4020, %3967
  %4024 = fadd fast float %4021, 5.000000e-01
  %4025 = fadd fast float %4022, 5.000000e-01
  %4026 = fadd fast float %4023, 5.000000e-01
  %4027 = fmul fast float %4024, 2.000000e+00
  %4028 = fsub fast float 1.000000e+00, %4027
  %4029 = fmul fast float %4028, %3957
  %4030 = fadd fast float %4029, %4027
  %4031 = fmul fast float %4030, %3957
  %4032 = fmul fast float %4025, 2.000000e+00
  %4033 = fsub fast float 1.000000e+00, %4032
  %4034 = fmul fast float %4033, %3958
  %4035 = fadd fast float %4034, %4032
  %4036 = fmul fast float %4035, %3958
  %4037 = fmul fast float %4026, 2.000000e+00
  %4038 = fsub fast float 1.000000e+00, %4037
  %4039 = fmul fast float %4038, %3959
  %4040 = fadd fast float %4039, %4037
  %4041 = fmul fast float %4040, %3959
  br label %4042

; <label>:4042                                    ; preds = %4014, %4012, %3999, %3969, %3953
  %4043 = phi float [ %3954, %3953 ], [ %3954, %4014 ], [ %3954, %4012 ], [ %3954, %3999 ], [ %3991, %3969 ]
  %4044 = phi float [ %3955, %3953 ], [ %3955, %4014 ], [ %3955, %4012 ], [ %3955, %3999 ], [ %3992, %3969 ]
  %4045 = phi float [ %3956, %3953 ], [ %3956, %4014 ], [ %3956, %4012 ], [ %3956, %3999 ], [ %3993, %3969 ]
  %4046 = phi float [ %3957, %3953 ], [ %4031, %4014 ], [ %3957, %4012 ], [ %4009, %3999 ], [ %3979, %3969 ]
  %4047 = phi float [ %3958, %3953 ], [ %4036, %4014 ], [ %3958, %4012 ], [ %4010, %3999 ], [ %3980, %3969 ]
  %4048 = phi float [ %3959, %3953 ], [ %4041, %4014 ], [ %3959, %4012 ], [ %4011, %3999 ], [ %3981, %3969 ]
  %4049 = phi float [ %3256, %3953 ], [ %3256, %4014 ], [ %3256, %4012 ], [ %3256, %3999 ], [ %3984, %3969 ]
  %4050 = phi float [ %3260, %3953 ], [ %3260, %4014 ], [ %3260, %4012 ], [ %3260, %3999 ], [ %3996, %3969 ]
  %4051 = and i32 %3961, 12
  %4052 = icmp eq i32 %4051, 12
  br i1 %4052, label %4183, label %4053

; <label>:4053                                    ; preds = %4042
  %4054 = and i32 %3961, 2097184
  %4055 = icmp eq i32 %4054, 2097184
  %4056 = select i1 %4055, float %3443, float 0.000000e+00
  %4057 = and i32 %3961, 4194336
  %4058 = icmp eq i32 %4057, 4194336
  %4059 = select i1 %4058, float %3443, float 0.000000e+00
  %4060 = and i32 %3961, 8388640
  %4061 = icmp eq i32 %4060, 8388640
  %4062 = select i1 %4061, float %3443, float 0.000000e+00
  %4063 = and i32 %3961, 1024
  %4064 = icmp ne i32 %4063, 0
  %4065 = select i1 %4064, float %3443, float 0.000000e+00
  %4066 = and i32 %3961, 2048
  %4067 = icmp ne i32 %4066, 0
  %4068 = select i1 %4067, float %3443, float 0.000000e+00
  %4069 = and i32 %3961, 8192
  %4070 = icmp ne i32 %4069, 0
  %4071 = select i1 %4070, float %3443, float 0.000000e+00
  %4072 = icmp eq i32 %4051, 0
  br i1 %4072, label %4073, label %4107

; <label>:4073                                    ; preds = %4053
  %4074 = fsub fast float %3744, %3242
  %4075 = fsub fast float %3745, %3243
  %4076 = fmul fast float %4056, %4074
  %4077 = fmul fast float %4056, %4075
  %4078 = fadd fast float %4076, %3242
  %4079 = fadd fast float %4077, %3243
  %4080 = fsub fast float %3746, %3258
  %4081 = fmul fast float %4059, %4080
  %4082 = fadd fast float %4081, %3258
  %4083 = fsub fast float %3743, %3257
  %4084 = fmul fast float %4062, %4083
  %4085 = fadd fast float %4084, %3257
  %4086 = fsub fast float %3849, %3253
  %4087 = fsub fast float %3850, %3254
  %4088 = fsub fast float %3851, %3255
  %4089 = fmul fast float %4065, %4086
  %4090 = fmul fast float %4065, %4087
  %4091 = fmul fast float %4065, %4088
  %4092 = fadd fast float %4089, %3253
  %4093 = fadd fast float %4090, %3254
  %4094 = fadd fast float %4091, %3255
  %4095 = fsub fast float %3904, %3259
  %4096 = fmul fast float %4068, %4095
  %4097 = fadd fast float %4096, %3259
  %4098 = fsub fast float %3901, %3250
  %4099 = fsub fast float %3902, %3251
  %4100 = fsub fast float %3903, %3252
  %4101 = fmul fast float %4071, %4098
  %4102 = fmul fast float %4071, %4099
  %4103 = fmul fast float %4071, %4100
  %4104 = fadd fast float %4101, %3250
  %4105 = fadd fast float %4102, %3251
  %4106 = fadd fast float %4103, %3252
  br label %4183

; <label>:4107                                    ; preds = %4053
  %4108 = icmp eq i32 %4051, 4
  br i1 %4108, label %4109, label %4155

; <label>:4109                                    ; preds = %4107
  %4110 = fmul fast float %4056, %3744
  %4111 = fmul fast float %4056, %3745
  %4112 = fadd fast float %4110, %3242
  %4113 = fadd fast float %4111, %3243
  %4114 = call float @dx.op.binary.f32(i32 36, float %3258, float %3746)  ; FMin(a,b)
  %4115 = fsub fast float %4114, %3258
  %4116 = fmul fast float %4115, %4059
  %4117 = fadd fast float %4116, %3258
  %4118 = fadd fast float %3743, %3257
  %4119 = fmul fast float %4118, 0x3FF337FAE0000000
  %4120 = fmul fast float %3257, %3257
  %4121 = fmul fast float %3743, %3743
  %4122 = fadd fast float %4121, %4120
  %4123 = fmul fast float %4122, 0x3FE5152B00000000
  %4124 = fmul fast float %3257, 0xBFCC1F85E0000000
  %4125 = fmul fast float %4124, %3743
  %4126 = fadd fast float %4125, 0xBFE1363700000000
  %4127 = fadd fast float %4126, %4119
  %4128 = fsub fast float %4127, %4123
  %4129 = fmul fast float %4118, 0x3FBA6F0D00000000
  %4130 = fmul fast float %4122, 0x3FD0432880000000
  %4131 = fmul fast float %3257, 0xBFEF110800000000
  %4132 = fmul fast float %4131, %3743
  %4133 = fadd fast float %4132, 1.000000e+00
  %4134 = fsub fast float %4133, %4129
  %4135 = fadd fast float %4134, %4130
  %4136 = fdiv fast float %4128, %4135
  %4137 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4138 = fsub fast float %4137, %3257
  %4139 = fmul fast float %4138, %4062
  %4140 = fadd fast float %4139, %3257
  %4141 = fmul fast float %4065, %3849
  %4142 = fmul fast float %4065, %3850
  %4143 = fmul fast float %4065, %3851
  %4144 = fadd fast float %4141, %3253
  %4145 = fadd fast float %4142, %3254
  %4146 = fadd fast float %4143, %3255
  %4147 = fmul fast float %4068, %3904
  %4148 = fadd fast float %4147, %3259
  %4149 = fmul fast float %4071, %3901
  %4150 = fmul fast float %4071, %3902
  %4151 = fmul fast float %4071, %3903
  %4152 = fadd fast float %4149, %3250
  %4153 = fadd fast float %4150, %3251
  %4154 = fadd fast float %4151, %3252
  br label %4183

; <label>:4155                                    ; preds = %4107
  %4156 = icmp eq i32 %4051, 8
  br i1 %4156, label %4157, label %4183

; <label>:4157                                    ; preds = %4155
  %4158 = fmul fast float %4056, %3744
  %4159 = fmul fast float %4056, %3745
  %4160 = fadd fast float %4158, %3242
  %4161 = fadd fast float %4159, %3243
  %4162 = call float @dx.op.binary.f32(i32 36, float %3258, float %3746)  ; FMin(a,b)
  %4163 = fsub fast float %4162, %3258
  %4164 = fmul fast float %4163, %4059
  %4165 = fadd fast float %4164, %3258
  %4166 = fsub fast float %3743, %3257
  %4167 = fmul fast float %4062, %4166
  %4168 = fadd fast float %4167, %3257
  %4169 = fmul fast float %4065, %3849
  %4170 = fmul fast float %4065, %3850
  %4171 = fmul fast float %4065, %3851
  %4172 = fadd fast float %4169, %3253
  %4173 = fadd fast float %4170, %3254
  %4174 = fadd fast float %4171, %3255
  %4175 = fmul fast float %4068, %3904
  %4176 = fadd fast float %4175, %3259
  %4177 = fmul fast float %4071, %3901
  %4178 = fmul fast float %4071, %3902
  %4179 = fmul fast float %4071, %3903
  %4180 = fadd fast float %4177, %3250
  %4181 = fadd fast float %4178, %3251
  %4182 = fadd fast float %4179, %3252
  br label %4183

; <label>:4183                                    ; preds = %4157, %4155, %4109, %4073, %4042, %3442, %3261, %3241
  %4184 = phi float [ %3242, %4042 ], [ %3242, %3442 ], [ %3242, %3241 ], [ %3242, %3261 ], [ %4078, %4073 ], [ %4112, %4109 ], [ %3242, %4155 ], [ %4160, %4157 ]
  %4185 = phi float [ %3243, %4042 ], [ %3243, %3442 ], [ %3243, %3241 ], [ %3243, %3261 ], [ %4079, %4073 ], [ %4113, %4109 ], [ %3243, %4155 ], [ %4161, %4157 ]
  %4186 = phi float [ %4043, %4042 ], [ %3244, %3442 ], [ %3244, %3241 ], [ %3244, %3261 ], [ %4043, %4073 ], [ %4043, %4109 ], [ %4043, %4155 ], [ %4043, %4157 ]
  %4187 = phi float [ %4044, %4042 ], [ %3245, %3442 ], [ %3245, %3241 ], [ %3245, %3261 ], [ %4044, %4073 ], [ %4044, %4109 ], [ %4044, %4155 ], [ %4044, %4157 ]
  %4188 = phi float [ %4045, %4042 ], [ %3246, %3442 ], [ %3246, %3241 ], [ %3246, %3261 ], [ %4045, %4073 ], [ %4045, %4109 ], [ %4045, %4155 ], [ %4045, %4157 ]
  %4189 = phi float [ %4046, %4042 ], [ %3247, %3442 ], [ %3247, %3241 ], [ %3247, %3261 ], [ %4046, %4073 ], [ %4046, %4109 ], [ %4046, %4155 ], [ %4046, %4157 ]
  %4190 = phi float [ %4047, %4042 ], [ %3248, %3442 ], [ %3248, %3241 ], [ %3248, %3261 ], [ %4047, %4073 ], [ %4047, %4109 ], [ %4047, %4155 ], [ %4047, %4157 ]
  %4191 = phi float [ %4048, %4042 ], [ %3249, %3442 ], [ %3249, %3241 ], [ %3249, %3261 ], [ %4048, %4073 ], [ %4048, %4109 ], [ %4048, %4155 ], [ %4048, %4157 ]
  %4192 = phi float [ %3250, %4042 ], [ %3250, %3442 ], [ %3250, %3241 ], [ %3250, %3261 ], [ %4104, %4073 ], [ %4152, %4109 ], [ %3250, %4155 ], [ %4180, %4157 ]
  %4193 = phi float [ %3251, %4042 ], [ %3251, %3442 ], [ %3251, %3241 ], [ %3251, %3261 ], [ %4105, %4073 ], [ %4153, %4109 ], [ %3251, %4155 ], [ %4181, %4157 ]
  %4194 = phi float [ %3252, %4042 ], [ %3252, %3442 ], [ %3252, %3241 ], [ %3252, %3261 ], [ %4106, %4073 ], [ %4154, %4109 ], [ %3252, %4155 ], [ %4182, %4157 ]
  %4195 = phi float [ %3253, %4042 ], [ %3253, %3442 ], [ %3253, %3241 ], [ %3253, %3261 ], [ %4092, %4073 ], [ %4144, %4109 ], [ %3253, %4155 ], [ %4172, %4157 ]
  %4196 = phi float [ %3254, %4042 ], [ %3254, %3442 ], [ %3254, %3241 ], [ %3254, %3261 ], [ %4093, %4073 ], [ %4145, %4109 ], [ %3254, %4155 ], [ %4173, %4157 ]
  %4197 = phi float [ %3255, %4042 ], [ %3255, %3442 ], [ %3255, %3241 ], [ %3255, %3261 ], [ %4094, %4073 ], [ %4146, %4109 ], [ %3255, %4155 ], [ %4174, %4157 ]
  %4198 = phi float [ %4049, %4042 ], [ %3256, %3442 ], [ %3256, %3241 ], [ %3256, %3261 ], [ %4049, %4073 ], [ %4049, %4109 ], [ %4049, %4155 ], [ %4049, %4157 ]
  %4199 = phi float [ %3257, %4042 ], [ %3257, %3442 ], [ %3257, %3241 ], [ %3257, %3261 ], [ %4085, %4073 ], [ %4140, %4109 ], [ %3257, %4155 ], [ %4168, %4157 ]
  %4200 = phi float [ %3258, %4042 ], [ %3258, %3442 ], [ %3258, %3241 ], [ %3258, %3261 ], [ %4082, %4073 ], [ %4117, %4109 ], [ %3258, %4155 ], [ %4165, %4157 ]
  %4201 = phi float [ %3259, %4042 ], [ %3259, %3442 ], [ %3259, %3241 ], [ %3259, %3261 ], [ %4097, %4073 ], [ %4148, %4109 ], [ %3259, %4155 ], [ %4176, %4157 ]
  %4202 = phi float [ %4050, %4042 ], [ %3260, %3442 ], [ %3260, %3241 ], [ %3260, %3261 ], [ %4050, %4073 ], [ %4050, %4109 ], [ %4050, %4155 ], [ %4050, %4157 ]
  %4203 = add i32 %50, 360
  %4204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.i32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.i32 %4204, 1
  %4207 = bitcast i32 %4205 to float
  %4208 = bitcast i32 %4206 to float
  %4209 = fcmp fast oge float %4207, 0.000000e+00
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = select i1 %4209, float %4207, float %4211
  %4213 = fadd fast float %4212, %204
  %4214 = fmul fast float %4208, %205
  %4215 = add i32 %50, 456
  %4216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.i32 %4216, 0
  %4218 = add i32 %4217, 0
  %4219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4219, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = fmul fast float %4214, %4221
  %4223 = fadd fast float %4213, %4222
  %4224 = and i32 %196, 65535
  %4225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4224)  ; LegacyF16ToF32(value)
  %4226 = lshr i32 %196, 16
  %4227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4226)  ; LegacyF16ToF32(value)
  %4228 = and i32 %197, 65535
  %4229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4228)  ; LegacyF16ToF32(value)
  %4230 = fmul fast float %4225, %4189
  %4231 = fmul fast float %4227, %4190
  %4232 = fmul fast float %4229, %4191
  %4233 = shl i32 %198, 4
  %4234 = and i32 %4233, 32752
  %4235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4234)  ; LegacyF16ToF32(value)
  %4236 = lshr i32 %198, 7
  %4237 = and i32 %4236, 32752
  %4238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4237)  ; LegacyF16ToF32(value)
  %4239 = lshr i32 %198, 22
  %4240 = shl nuw nsw i32 %4239, 5
  %4241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4240)  ; LegacyF16ToF32(value)
  %4242 = and i32 %199, 65535
  %4243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4242)  ; LegacyF16ToF32(value)
  %4244 = fmul fast float %4235, %4186
  %4245 = fmul fast float %4244, %4243
  %4246 = fmul fast float %4238, %4187
  %4247 = fmul fast float %4246, %4243
  %4248 = fmul fast float %4241, %4188
  %4249 = fmul fast float %4248, %4243
  %4250 = call float @dx.op.dot2.f32(i32 54, float %4184, float %4185, float %4184, float %4185)  ; Dot2(ax,ay,bx,by)
  %4251 = fmul fast float %4250, 0x3FE3333340000000
  %4252 = fsub fast float 1.000000e+00, %4251
  %4253 = call float @dx.op.dot3.f32(i32 55, float %4184, float %4185, float %4252, float %4184, float %4185, float %4252)  ; Dot3(ax,ay,az,bx,by,bz)
  %4254 = call float @dx.op.unary.f32(i32 25, float %4253)  ; Rsqrt(value)
  %4255 = fmul fast float %4254, %4184
  %4256 = fmul fast float %4254, %4185
  %4257 = fmul fast float %4252, %4254
  %4258 = fmul fast float %4257, %118
  %4259 = fmul fast float %4257, %119
  %4260 = fmul fast float %4257, %120
  %4261 = fmul fast float %4255, %82
  %4262 = fmul fast float %4255, %83
  %4263 = fmul fast float %4255, %84
  %4264 = fadd fast float %4258, %4261
  %4265 = fadd fast float %4259, %4262
  %4266 = fadd fast float %4260, %4263
  %4267 = fmul fast float %130, %4256
  %4268 = fmul fast float %131, %4256
  %4269 = fmul fast float %132, %4256
  %4270 = fadd fast float %4264, %4267
  %4271 = fadd fast float %4265, %4268
  %4272 = fadd fast float %4266, %4269
  %4273 = call float @dx.op.dot3.f32(i32 55, float %4270, float %4271, float %4272, float %4270, float %4271, float %4272)  ; Dot3(ax,ay,az,bx,by,bz)
  %4274 = call float @dx.op.unary.f32(i32 25, float %4273)  ; Rsqrt(value)
  %4275 = fmul fast float %4270, %4274
  %4276 = fmul fast float %4271, %4274
  %4277 = fmul fast float %4272, %4274
  %4278 = icmp eq i32 %53, 65535
  br i1 %4278, label %4877, label %4279

; <label>:4279                                    ; preds = %4183
  %4280 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4281 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %4282 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4283 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4284 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %4285 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4286 = fadd fast float %4280, %54
  %4287 = fadd fast float %4281, %55
  %4288 = fadd fast float %4282, %56
  %4289 = fadd fast float %4283, %54
  %4290 = fadd fast float %4284, %55
  %4291 = fadd fast float %4285, %56
  %4292 = mul i32 %53, 48
  %4293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4292, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.ResRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4293, 2
  %4297 = add i32 %4292, 16
  %4298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4297, i32 undef)  ; BufferLoad(srv,index,wot)
  %4299 = extractvalue %dx.types.ResRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.ResRet.f32 %4298, 1
  %4301 = extractvalue %dx.types.ResRet.f32 %4298, 2
  %4302 = add i32 %4292, 32
  %4303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4302, i32 undef)  ; BufferLoad(srv,index,wot)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = extractvalue %dx.types.ResRet.f32 %4303, 1
  %4306 = extractvalue %dx.types.ResRet.f32 %4303, 2
  %4307 = extractvalue %dx.types.ResRet.f32 %4303, 3
  %4308 = bitcast float %4307 to i32
  %4309 = fmul fast float %4294, %54
  %4310 = fmul fast float %4295, %55
  %4311 = fmul fast float %4296, %56
  %4312 = fsub fast float %4309, %4299
  %4313 = fsub fast float %4310, %4300
  %4314 = fsub fast float %4311, %4301
  %4315 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4318 = fmul fast float %4315, %4304
  %4319 = fmul fast float %4316, %4305
  %4320 = fmul fast float %4317, %4306
  %4321 = fadd fast float %4304, -1.000000e+00
  %4322 = fadd fast float %4305, -1.000000e+00
  %4323 = fadd fast float %4306, -1.000000e+00
  %4324 = call float @dx.op.unary.f32(i32 27, float %4318)  ; Round_ni(value)
  %4325 = call float @dx.op.unary.f32(i32 27, float %4319)  ; Round_ni(value)
  %4326 = call float @dx.op.unary.f32(i32 27, float %4320)  ; Round_ni(value)
  %4327 = call float @dx.op.binary.f32(i32 36, float %4324, float %4321)  ; FMin(a,b)
  %4328 = call float @dx.op.binary.f32(i32 36, float %4325, float %4322)  ; FMin(a,b)
  %4329 = call float @dx.op.binary.f32(i32 36, float %4326, float %4323)  ; FMin(a,b)
  %4330 = fmul fast float %4329, %4305
  %4331 = fadd fast float %4330, %4328
  %4332 = fmul fast float %4331, %4304
  %4333 = fadd fast float %4332, %4327
  %4334 = fptosi float %4333 to i32
  %4335 = add nsw i32 %4334, %4308
  %4336 = shl nsw i32 %4335, 2
  %4337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4336, i32 undef)  ; BufferLoad(srv,index,wot)
  %4338 = extractvalue %dx.types.ResRet.i32 %4337, 0
  %4339 = lshr i32 %4338, 16
  %4340 = icmp eq i32 %4339, 0
  br i1 %4340, label %4840, label %4341

; <label>:4341                                    ; preds = %4279
  br label %4342

; <label>:4342                                    ; preds = %4469, %4341
  %4343 = phi i32 [ %4371, %4469 ], [ %4339, %4341 ]
  %4344 = phi float [ %4470, %4469 ], [ 0.000000e+00, %4341 ]
  %4345 = phi float [ %4471, %4469 ], [ %4223, %4341 ]
  %4346 = phi float [ %4472, %4469 ], [ %4202, %4341 ]
  %4347 = phi float [ %4473, %4469 ], [ %4195, %4341 ]
  %4348 = phi float [ %4474, %4469 ], [ %4196, %4341 ]
  %4349 = phi float [ %4475, %4469 ], [ %4197, %4341 ]
  %4350 = phi float [ %4476, %4469 ], [ 0.000000e+00, %4341 ]
  %4351 = phi float [ %4477, %4469 ], [ 0.000000e+00, %4341 ]
  %4352 = phi float [ %4478, %4469 ], [ %4192, %4341 ]
  %4353 = phi float [ %4479, %4469 ], [ %4193, %4341 ]
  %4354 = phi float [ %4480, %4469 ], [ %4194, %4341 ]
  %4355 = phi float [ %4481, %4469 ], [ %4245, %4341 ]
  %4356 = phi float [ %4482, %4469 ], [ %4247, %4341 ]
  %4357 = phi float [ %4483, %4469 ], [ %4249, %4341 ]
  %4358 = phi float [ %4484, %4469 ], [ %4275, %4341 ]
  %4359 = phi float [ %4485, %4469 ], [ %4276, %4341 ]
  %4360 = phi float [ %4486, %4469 ], [ %4277, %4341 ]
  %4361 = phi float [ %4487, %4469 ], [ %4200, %4341 ]
  %4362 = phi float [ %4488, %4469 ], [ %4199, %4341 ]
  %4363 = phi float [ %4489, %4469 ], [ 0.000000e+00, %4341 ]
  %4364 = phi float [ %4490, %4469 ], [ %4198, %4341 ]
  %4365 = phi float [ %4491, %4469 ], [ %4230, %4341 ]
  %4366 = phi float [ %4492, %4469 ], [ %4231, %4341 ]
  %4367 = phi float [ %4493, %4469 ], [ %4232, %4341 ]
  %4368 = shl nuw nsw i32 %4343, 2
  %4369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.i32 %4369, 0
  %4371 = lshr i32 %4370, 16
  %4372 = shl i32 %4370, 8
  %4373 = and i32 %4372, 16776960
  %4374 = or i32 %4373, 48
  %4375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.ResRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.ResRet.f32 %4375, 2
  %4379 = or i32 %4373, 64
  %4380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4381 = extractvalue %dx.types.ResRet.i32 %4380, 0
  %4382 = extractvalue %dx.types.ResRet.i32 %4380, 1
  %4383 = or i32 %4373, 80
  %4384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.f32 %4384, 2
  %4386 = extractvalue %dx.types.ResRet.f32 %4384, 3
  %4387 = or i32 %4373, 96
  %4388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4387, i32 undef)  ; BufferLoad(srv,index,wot)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = extractvalue %dx.types.ResRet.f32 %4388, 1
  %4391 = extractvalue %dx.types.ResRet.f32 %4388, 2
  %4392 = extractvalue %dx.types.ResRet.f32 %4388, 3
  %4393 = or i32 %4373, 112
  %4394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 2
  %4396 = or i32 %4373, 128
  %4397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4401 = extractvalue %dx.types.ResRet.f32 %4397, 3
  %4402 = or i32 %4373, 144
  %4403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.ResRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.ResRet.f32 %4403, 2
  %4407 = extractvalue %dx.types.ResRet.f32 %4403, 3
  %4408 = or i32 %4373, 160
  %4409 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4408, i32 undef)  ; BufferLoad(srv,index,wot)
  %4410 = extractvalue %dx.types.ResRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.ResRet.f32 %4409, 1
  %4412 = extractvalue %dx.types.ResRet.f32 %4409, 2
  %4413 = extractvalue %dx.types.ResRet.f32 %4409, 3
  %4414 = or i32 %4373, 192
  %4415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4414, i32 undef)  ; BufferLoad(srv,index,wot)
  %4416 = extractvalue %dx.types.ResRet.i32 %4415, 0
  %4417 = or i32 %4373, 208
  %4418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = or i32 %4373, 248
  %4421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4420, i32 undef)  ; BufferLoad(srv,index,wot)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.ResRet.f32 %4421, 1
  %4424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.ResRet.f32 %4424, 2
  %4428 = extractvalue %dx.types.ResRet.f32 %4424, 3
  %4429 = call float @dx.op.dot4.f32(i32 56, float %4425, float %4426, float %4427, float %4428, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4430 = or i32 %4373, 16
  %4431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = extractvalue %dx.types.ResRet.f32 %4431, 1
  %4434 = extractvalue %dx.types.ResRet.f32 %4431, 2
  %4435 = extractvalue %dx.types.ResRet.f32 %4431, 3
  %4436 = call float @dx.op.dot4.f32(i32 56, float %4432, float %4433, float %4434, float %4435, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4437 = or i32 %4373, 32
  %4438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.ResRet.f32 %4438, 1
  %4441 = extractvalue %dx.types.ResRet.f32 %4438, 2
  %4442 = extractvalue %dx.types.ResRet.f32 %4438, 3
  %4443 = call float @dx.op.dot4.f32(i32 56, float %4439, float %4440, float %4441, float %4442, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4444 = call float @dx.op.unary.f32(i32 27, float %4429)  ; Round_ni(value)
  %4445 = call float @dx.op.unary.f32(i32 6, float %4444)  ; FAbs(value)
  %4446 = call float @dx.op.unary.f32(i32 27, float %4436)  ; Round_ni(value)
  %4447 = call float @dx.op.unary.f32(i32 6, float %4446)  ; FAbs(value)
  %4448 = call float @dx.op.unary.f32(i32 6, float %4443)  ; FAbs(value)
  %4449 = call float @dx.op.unary.f32(i32 27, float %4448)  ; Round_ni(value)
  %4450 = fadd fast float %4447, %4445
  %4451 = fadd fast float %4450, %4449
  %4452 = fcmp fast oeq float %4451, 0.000000e+00
  %4453 = call float @dx.op.dot4.f32(i32 56, float %4425, float %4426, float %4427, float %4428, float %4286, float %4287, float %4288, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4454 = call float @dx.op.dot4.f32(i32 56, float %4432, float %4433, float %4434, float %4435, float %4286, float %4287, float %4288, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4455 = call float @dx.op.dot4.f32(i32 56, float %4425, float %4426, float %4427, float %4428, float %4289, float %4290, float %4291, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4456 = call float @dx.op.dot4.f32(i32 56, float %4432, float %4433, float %4434, float %4435, float %4289, float %4290, float %4291, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4457 = fsub fast float %4453, %4429
  %4458 = fsub fast float %4455, %4429
  %4459 = fsub fast float %4454, %4436
  %4460 = fsub fast float %4456, %4436
  %4461 = call float @dx.op.dot3.f32(i32 55, float %4376, float %4377, float %4378, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 2
  %4464 = fadd fast float %4463, %4461
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4467 = fcmp fast ogt float %4465, %4466
  %4468 = and i1 %4452, %4467
  br i1 %4468, label %4495, label %4469

; <label>:4469                                    ; preds = %4826, %4578, %4495, %4342
  %4470 = phi float [ %4344, %4495 ], [ %4581, %4578 ], [ %4581, %4826 ], [ %4344, %4342 ]
  %4471 = phi float [ %4345, %4495 ], [ %4345, %4578 ], [ %4802, %4826 ], [ %4345, %4342 ]
  %4472 = phi float [ %4346, %4495 ], [ %4346, %4578 ], [ %4800, %4826 ], [ %4346, %4342 ]
  %4473 = phi float [ %4347, %4495 ], [ %4347, %4578 ], [ %4778, %4826 ], [ %4347, %4342 ]
  %4474 = phi float [ %4348, %4495 ], [ %4348, %4578 ], [ %4779, %4826 ], [ %4348, %4342 ]
  %4475 = phi float [ %4349, %4495 ], [ %4349, %4578 ], [ %4780, %4826 ], [ %4349, %4342 ]
  %4476 = phi float [ %4350, %4495 ], [ %4350, %4578 ], [ %4705, %4826 ], [ %4350, %4342 ]
  %4477 = phi float [ %4351, %4495 ], [ %4351, %4578 ], [ %4703, %4826 ], [ %4351, %4342 ]
  %4478 = phi float [ %4352, %4495 ], [ %4352, %4578 ], [ %4748, %4826 ], [ %4352, %4342 ]
  %4479 = phi float [ %4353, %4495 ], [ %4353, %4578 ], [ %4749, %4826 ], [ %4353, %4342 ]
  %4480 = phi float [ %4354, %4495 ], [ %4354, %4578 ], [ %4750, %4826 ], [ %4354, %4342 ]
  %4481 = phi float [ %4355, %4495 ], [ %4355, %4578 ], [ %4836, %4826 ], [ %4355, %4342 ]
  %4482 = phi float [ %4356, %4495 ], [ %4356, %4578 ], [ %4837, %4826 ], [ %4356, %4342 ]
  %4483 = phi float [ %4357, %4495 ], [ %4357, %4578 ], [ %4838, %4826 ], [ %4357, %4342 ]
  %4484 = phi float [ %4358, %4495 ], [ %4358, %4578 ], [ %4684, %4826 ], [ %4358, %4342 ]
  %4485 = phi float [ %4359, %4495 ], [ %4359, %4578 ], [ %4685, %4826 ], [ %4359, %4342 ]
  %4486 = phi float [ %4360, %4495 ], [ %4360, %4578 ], [ %4686, %4826 ], [ %4360, %4342 ]
  %4487 = phi float [ %4361, %4495 ], [ %4361, %4578 ], [ %4758, %4826 ], [ %4361, %4342 ]
  %4488 = phi float [ %4362, %4495 ], [ %4362, %4578 ], [ %4755, %4826 ], [ %4362, %4342 ]
  %4489 = phi float [ %4363, %4495 ], [ %4363, %4578 ], [ %4752, %4826 ], [ %4363, %4342 ]
  %4490 = phi float [ %4364, %4495 ], [ %4364, %4578 ], [ %4701, %4826 ], [ %4364, %4342 ]
  %4491 = phi float [ %4365, %4495 ], [ %4365, %4578 ], [ %4696, %4826 ], [ %4365, %4342 ]
  %4492 = phi float [ %4366, %4495 ], [ %4366, %4578 ], [ %4697, %4826 ], [ %4366, %4342 ]
  %4493 = phi float [ %4367, %4495 ], [ %4367, %4578 ], [ %4698, %4826 ], [ %4367, %4342 ]
  %4494 = icmp eq i32 %4371, 0
  br i1 %4494, label %4839, label %4342

; <label>:4495                                    ; preds = %4342
  %4496 = extractvalue %dx.types.ResRet.f32 %4375, 3
  %4497 = extractvalue %dx.types.ResRet.f32 %4394, 3
  %4498 = extractvalue %dx.types.ResRet.f32 %4394, 1
  %4499 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4500 = extractvalue %dx.types.ResRet.f32 %4384, 1
  %4501 = extractvalue %dx.types.ResRet.f32 %4384, 0
  %4502 = extractvalue %dx.types.ResRet.i32 %4380, 3
  %4503 = extractvalue %dx.types.ResRet.i32 %4380, 2
  %4504 = bitcast float %4496 to i32
  %4505 = add i32 %4502, 0
  %4506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4505, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4508 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4506, %dx.types.Handle %4507, float %4429, float %4436, float undef, float undef, i32 0, i32 0, i32 undef, float %4457, float %4459, float undef, float %4458, float %4460, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = fmul fast float %4509, %4501
  %4511 = fadd fast float %4510, %4500
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fmul fast float %4429, %4389
  %4514 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4436, float %4513)  ; FMad(a,b,c)
  %4515 = fadd fast float %4514, %4499
  %4516 = fmul fast float %4429, %4391
  %4517 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4436, float %4516)  ; FMad(a,b,c)
  %4518 = fadd fast float %4517, %4498
  %4519 = fmul fast float %4457, %4389
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4459, float %4519)  ; FMad(a,b,c)
  %4521 = fmul fast float %4457, %4391
  %4522 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4459, float %4521)  ; FMad(a,b,c)
  %4523 = fmul fast float %4458, %4389
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4390, float %4460, float %4523)  ; FMad(a,b,c)
  %4525 = fmul fast float %4458, %4391
  %4526 = call float @dx.op.tertiary.f32(i32 46, float %4392, float %4460, float %4525)  ; FMad(a,b,c)
  %4527 = add i32 %4503, 0
  %4528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4527, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4529 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4528, %dx.types.Handle %4507, float %4515, float %4518, float undef, float undef, i32 0, i32 0, i32 undef, float %4520, float %4522, float undef, float %4524, float %4526, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = and i32 %4504, 1024
  %4532 = icmp ne i32 %4531, 0
  %4533 = fcmp fast ogt float %4530, 0x3FE0101020000000
  %4534 = uitofp i1 %4533 to float
  %4535 = select i1 %4532, float %4534, float %4530
  %4536 = and i32 %4504, 8192
  %4537 = icmp ne i32 %4536, 0
  %4538 = select i1 %4537, float %4497, float 1.000000e+00
  %4539 = fmul fast float %4429, 2.000000e+00
  %4540 = fadd fast float %4539, -1.000000e+00
  %4541 = call float @dx.op.unary.f32(i32 6, float %4540)  ; FAbs(value)
  %4542 = fmul fast float %4541, %4422
  %4543 = fsub fast float %4542, %4422
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = fmul fast float %4436, 2.000000e+00
  %4546 = fadd fast float %4545, -1.000000e+00
  %4547 = call float @dx.op.unary.f32(i32 6, float %4546)  ; FAbs(value)
  %4548 = fmul fast float %4547, %4423
  %4549 = fsub fast float %4548, %4423
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = fmul fast float %4448, %4385
  %4552 = fsub fast float %4551, %4385
  %4553 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4554 = fmul fast float %4512, %4538
  %4555 = fmul fast float %4554, %4509
  %4556 = fmul fast float %4555, %4544
  %4557 = fmul fast float %4556, %4535
  %4558 = fmul fast float %4557, %4550
  %4559 = fmul fast float %4558, %4553
  %4560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4561 = extractvalue %dx.types.CBufRet.f32 %4560, 1
  %4562 = extractvalue %dx.types.CBufRet.f32 %4560, 0
  %4563 = fsub fast float %4465, %4562
  %4564 = fmul fast float %4563, %4561
  %4565 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4566 = fmul fast float %4559, %4386
  %4567 = fadd fast float %4559, %4386
  %4568 = fmul fast float %4567, %4395
  %4569 = fsub fast float %4568, %4395
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = and i32 %4504, 128
  %4572 = icmp ne i32 %4571, 0
  %4573 = select i1 %4572, float %4570, float %4566
  %4574 = fmul fast float %4573, %4565
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 0
  %4577 = fcmp fast ugt float %4574, %4576
  br i1 %4577, label %4578, label %4469

; <label>:4578                                    ; preds = %4495
  %4579 = select i1 %4537, float %4574, float 0.000000e+00
  %4580 = fadd fast float %4579, %4344
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  br i1 %4537, label %4469, label %4582

; <label>:4582                                    ; preds = %4578
  %4583 = and i32 %4504, 4
  %4584 = and i32 %4504, 8
  %4585 = add i32 %4381, 0
  %4586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4585, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4587 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4588 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4586, %dx.types.Handle %4587, float %4515, float %4518, float undef, float undef, i32 0, i32 0, i32 undef, float %4520, float %4522, float undef, float %4524, float %4526, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4589 = extractvalue %dx.types.ResRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.ResRet.f32 %4588, 1
  %4591 = extractvalue %dx.types.ResRet.f32 %4588, 2
  %4592 = extractvalue %dx.types.ResRet.f32 %4588, 3
  %4593 = bitcast float %4407 to i32
  %4594 = and i32 %4593, 255
  %4595 = uitofp i32 %4594 to float
  %4596 = lshr i32 %4593, 8
  %4597 = and i32 %4596, 255
  %4598 = uitofp i32 %4597 to float
  %4599 = fmul fast float %4592, %4595
  %4600 = fadd fast float %4599, %4598
  %4601 = fmul fast float %4600, 0x3F70101000000000
  %4602 = add i32 %4382, 0
  %4603 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4602, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4604 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4603, %dx.types.Handle %4587, float %4515, float %4518, float undef, float undef, i32 0, i32 0, i32 undef, float %4520, float %4522, float undef, float %4524, float %4526, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = extractvalue %dx.types.ResRet.f32 %4604, 1
  %4607 = extractvalue %dx.types.ResRet.f32 %4604, 2
  %4608 = extractvalue %dx.types.ResRet.f32 %4604, 3
  %4609 = bitcast float %4401 to i32
  %4610 = and i32 %4609, 255
  %4611 = uitofp i32 %4610 to float
  %4612 = lshr i32 %4609, 8
  %4613 = and i32 %4612, 255
  %4614 = uitofp i32 %4613 to float
  %4615 = lshr i32 %4609, 16
  %4616 = and i32 %4615, 255
  %4617 = uitofp i32 %4616 to float
  %4618 = fmul fast float %4617, 0x3F70101000000000
  %4619 = fmul fast float %4605, %4611
  %4620 = fadd fast float %4619, %4614
  %4621 = fmul fast float %4620, 0x3F70101000000000
  %4622 = fadd fast float %4606, -5.000000e-01
  %4623 = fadd fast float %4608, -5.000000e-01
  %4624 = fmul fast float %4622, %4618
  %4625 = fmul fast float %4623, %4618
  %4626 = fadd fast float %4624, 5.000000e-01
  %4627 = fadd fast float %4625, 5.000000e-01
  %4628 = fmul fast float %4589, %4410
  %4629 = fmul fast float %4590, %4411
  %4630 = fmul fast float %4591, %4412
  %4631 = fmul fast float %4626, 2.000000e+00
  %4632 = fadd fast float %4631, -1.000000e+00
  %4633 = fmul fast float %4627, 2.000000e+00
  %4634 = fadd fast float %4633, -1.000000e+00
  %4635 = fadd fast float %4632, %4634
  %4636 = fmul fast float %4635, 5.000000e-01
  %4637 = fsub fast float %4632, %4634
  %4638 = fmul fast float %4637, 5.000000e-01
  %4639 = call float @dx.op.unary.f32(i32 6, float %4636)  ; FAbs(value)
  %4640 = fsub fast float 1.000000e+00, %4639
  %4641 = call float @dx.op.unary.f32(i32 6, float %4638)  ; FAbs(value)
  %4642 = fsub fast float %4640, %4641
  %4643 = call float @dx.op.dot3.f32(i32 55, float %4636, float %4638, float %4642, float %4636, float %4638, float %4642)  ; Dot3(ax,ay,az,bx,by,bz)
  %4644 = call float @dx.op.unary.f32(i32 25, float %4643)  ; Rsqrt(value)
  %4645 = fmul fast float %4636, %4644
  %4646 = fmul fast float %4638, %4644
  %4647 = fmul fast float %4644, %4642
  %4648 = fmul fast float %4647, %4376
  %4649 = fmul fast float %4647, %4377
  %4650 = fmul fast float %4647, %4378
  %4651 = fmul fast float %4645, %4398
  %4652 = fmul fast float %4645, %4399
  %4653 = fmul fast float %4645, %4400
  %4654 = fadd fast float %4651, %4648
  %4655 = fadd fast float %4652, %4649
  %4656 = fadd fast float %4653, %4650
  %4657 = fmul fast float %4646, %4404
  %4658 = fmul fast float %4646, %4405
  %4659 = fmul fast float %4646, %4406
  %4660 = fadd fast float %4654, %4657
  %4661 = fadd fast float %4655, %4658
  %4662 = fadd fast float %4656, %4659
  %4663 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float %4660, float %4661, float %4662)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = call float @dx.op.unary.f32(i32 25, float %4663)  ; Rsqrt(value)
  %4665 = fmul fast float %4660, %4664
  %4666 = fmul fast float %4661, %4664
  %4667 = fmul fast float %4662, %4664
  %4668 = icmp ne i32 %4584, 0
  %4669 = select i1 %4668, float 1.000000e+00, float 0.000000e+00
  %4670 = fmul fast float %4574, %4669
  %4671 = and i32 %4504, 1
  %4672 = icmp eq i32 %4671, 0
  br i1 %4672, label %4673, label %4677

; <label>:4673                                    ; preds = %4582
  %4674 = fsub fast float %4665, %4358
  %4675 = fsub fast float %4666, %4359
  %4676 = fsub fast float %4667, %4360
  br label %4677

; <label>:4677                                    ; preds = %4673, %4582
  %4678 = phi float [ %4674, %4673 ], [ %4665, %4582 ]
  %4679 = phi float [ %4675, %4673 ], [ %4666, %4582 ]
  %4680 = phi float [ %4676, %4673 ], [ %4667, %4582 ]
  %4681 = fmul float %4680, %4670
  %4682 = fmul float %4679, %4670
  %4683 = fmul float %4678, %4670
  %4684 = fadd fast float %4683, %4358
  %4685 = fadd fast float %4682, %4359
  %4686 = fadd fast float %4681, %4360
  %4687 = icmp ne i32 %4583, 0
  %4688 = select i1 %4687, float 1.000000e+00, float 0.000000e+00
  %4689 = fmul fast float %4574, %4688
  %4690 = fsub fast float %4628, %4365
  %4691 = fsub fast float %4629, %4366
  %4692 = fsub fast float %4630, %4367
  %4693 = fmul fast float %4690, %4689
  %4694 = fmul fast float %4691, %4689
  %4695 = fmul fast float %4692, %4689
  %4696 = fadd fast float %4693, %4365
  %4697 = fadd fast float %4694, %4366
  %4698 = fadd fast float %4695, %4367
  %4699 = fsub fast float %4601, %4364
  %4700 = fmul fast float %4699, %4689
  %4701 = fadd fast float %4700, %4364
  %4702 = fmul fast float %4689, %4351
  %4703 = fsub fast float %4351, %4702
  %4704 = fmul fast float %4689, %4350
  %4705 = fsub fast float %4350, %4704
  %4706 = bitcast float %4419 to i32
  %4707 = lshr i32 %4706, 16
  %4708 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4707)  ; LegacyF16ToF32(value)
  %4709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4710 = extractvalue %dx.types.ResRet.i32 %4709, 0
  %4711 = and i32 %4710, 1
  %4712 = icmp eq i32 %4711, 0
  br i1 %4712, label %4713, label %4738

; <label>:4713                                    ; preds = %4677
  %4714 = fadd fast float %4601, 0xBFB99999A0000000
  %4715 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4716 = fmul fast float %4715, 0x3FF1C71C80000000
  %4717 = fsub fast float 1.000000e+00, %4716
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = fmul fast float %4718, %4628
  %4720 = fmul fast float %4718, %4629
  %4721 = fmul fast float %4718, %4630
  %4722 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = call float @dx.op.binary.f32(i32 35, float %4723, float %4724)  ; FMax(a,b)
  %4726 = call float @dx.op.binary.f32(i32 35, float %4722, float %4725)  ; FMax(a,b)
  %4727 = fcmp fast ogt float %4726, 0.000000e+00
  %4728 = bitcast float %4726 to i32
  %4729 = sub nsw i32 2129859010, %4728
  %4730 = bitcast i32 %4729 to float
  %4731 = select i1 %4727, float %4730, float 0.000000e+00
  %4732 = fmul fast float %4722, %4708
  %4733 = fmul fast float %4723, %4708
  %4734 = fmul fast float %4724, %4708
  %4735 = fmul fast float %4732, %4731
  %4736 = fmul fast float %4733, %4731
  %4737 = fmul fast float %4734, %4731
  br label %4738

; <label>:4738                                    ; preds = %4713, %4677
  %4739 = phi float [ %4708, %4677 ], [ %4735, %4713 ]
  %4740 = phi float [ %4708, %4677 ], [ %4736, %4713 ]
  %4741 = phi float [ %4708, %4677 ], [ %4737, %4713 ]
  %4742 = fsub fast float %4739, %4352
  %4743 = fsub fast float %4740, %4353
  %4744 = fsub fast float %4741, %4354
  %4745 = fmul fast float %4742, %4689
  %4746 = fmul fast float %4743, %4689
  %4747 = fmul fast float %4744, %4689
  %4748 = fadd fast float %4745, %4352
  %4749 = fadd fast float %4746, %4353
  %4750 = fadd fast float %4747, %4354
  %4751 = fadd fast float %4574, %4363
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fsub fast float %4621, %4362
  %4754 = fmul fast float %4753, %4670
  %4755 = fadd fast float %4754, %4362
  %4756 = fsub fast float %4607, %4361
  %4757 = fmul fast float %4756, %4670
  %4758 = fadd fast float %4757, %4361
  br i1 %4672, label %4767, label %4759

; <label>:4759                                    ; preds = %4738
  %4760 = and i32 %4504, 32768
  %4761 = icmp eq i32 %4760, 0
  br i1 %4761, label %4777, label %4762

; <label>:4762                                    ; preds = %4759
  %4763 = fmul fast float %4670, 1.270000e+02
  %4764 = fadd fast float %4763, %4347
  %4765 = fadd fast float %4763, %4348
  %4766 = fadd fast float %4763, %4349
  br label %4777

; <label>:4767                                    ; preds = %4738
  %4768 = fsub fast float 1.270000e+02, %4347
  %4769 = fsub fast float 1.270000e+02, %4348
  %4770 = fsub fast float 1.270000e+02, %4349
  %4771 = fmul fast float %4670, %4768
  %4772 = fmul fast float %4670, %4769
  %4773 = fmul fast float %4670, %4770
  %4774 = fadd fast float %4771, %4347
  %4775 = fadd fast float %4772, %4348
  %4776 = fadd fast float %4773, %4349
  br label %4777

; <label>:4777                                    ; preds = %4767, %4762, %4759
  %4778 = phi float [ %4764, %4762 ], [ %4347, %4759 ], [ %4774, %4767 ]
  %4779 = phi float [ %4765, %4762 ], [ %4348, %4759 ], [ %4775, %4767 ]
  %4780 = phi float [ %4766, %4762 ], [ %4349, %4759 ], [ %4776, %4767 ]
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4629, float %4630, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4785 = fmul fast float %4784, %4781
  %4786 = fadd fast float %4785, %4783
  %4787 = call float @dx.op.unary.f32(i32 7, float %4786)  ; Saturate(value)
  %4788 = bitcast float %4413 to i32
  %4789 = and i32 %4788, 65535
  %4790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4789)  ; LegacyF16ToF32(value)
  %4791 = lshr i32 %4788, 16
  %4792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4791)  ; LegacyF16ToF32(value)
  %4793 = fcmp fast oge float %4790, 0.000000e+00
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = select i1 %4793, float %4790, float %4795
  %4797 = fadd fast float %4796, %4792
  %4798 = fsub fast float %4787, %4346
  %4799 = fmul fast float %4798, %4574
  %4800 = fadd fast float %4799, %4346
  %4801 = fmul fast float %4797, %4574
  %4802 = call float @dx.op.binary.f32(i32 35, float %4345, float %4801)  ; FMax(a,b)
  %4803 = and i32 %4504, 16
  %4804 = icmp eq i32 %4803, 0
  br i1 %4804, label %4826, label %4805

; <label>:4805                                    ; preds = %4777
  %4806 = add i32 %4416, 0
  %4807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4806, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4808 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4807, %dx.types.Handle %4587, float %4515, float %4518, float undef, float undef, i32 0, i32 0, i32 undef, float %4520, float %4522, float undef, float %4524, float %4526, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.ResRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.ResRet.f32 %4808, 2
  %4812 = and i32 %4706, 65535
  %4813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4812)  ; LegacyF16ToF32(value)
  %4814 = fmul fast float %4809, %4410
  %4815 = fmul fast float %4810, %4411
  %4816 = fmul fast float %4811, %4412
  %4817 = and i32 %4504, 16384
  %4818 = icmp ne i32 %4817, 0
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = select i1 %4818, float %4820, float 1.000000e+00
  %4822 = fmul fast float %4821, %4813
  %4823 = fmul fast float %4814, %4822
  %4824 = fmul fast float %4815, %4822
  %4825 = fmul fast float %4816, %4822
  br label %4826

; <label>:4826                                    ; preds = %4805, %4777
  %4827 = phi float [ %4823, %4805 ], [ 0.000000e+00, %4777 ]
  %4828 = phi float [ %4824, %4805 ], [ 0.000000e+00, %4777 ]
  %4829 = phi float [ %4825, %4805 ], [ 0.000000e+00, %4777 ]
  %4830 = fsub fast float %4827, %4355
  %4831 = fsub fast float %4828, %4356
  %4832 = fsub fast float %4829, %4357
  %4833 = fmul fast float %4830, %4574
  %4834 = fmul fast float %4831, %4574
  %4835 = fmul fast float %4832, %4574
  %4836 = fadd fast float %4833, %4355
  %4837 = fadd fast float %4834, %4356
  %4838 = fadd fast float %4835, %4357
  br label %4469

; <label>:4839                                    ; preds = %4469
  br label %4840

; <label>:4840                                    ; preds = %4839, %4279
  %4841 = phi float [ 0.000000e+00, %4279 ], [ %4470, %4839 ]
  %4842 = phi float [ %4223, %4279 ], [ %4471, %4839 ]
  %4843 = phi float [ %4202, %4279 ], [ %4472, %4839 ]
  %4844 = phi float [ %4195, %4279 ], [ %4473, %4839 ]
  %4845 = phi float [ %4196, %4279 ], [ %4474, %4839 ]
  %4846 = phi float [ %4197, %4279 ], [ %4475, %4839 ]
  %4847 = phi float [ 0.000000e+00, %4279 ], [ %4476, %4839 ]
  %4848 = phi float [ 0.000000e+00, %4279 ], [ %4477, %4839 ]
  %4849 = phi float [ %4192, %4279 ], [ %4478, %4839 ]
  %4850 = phi float [ %4193, %4279 ], [ %4479, %4839 ]
  %4851 = phi float [ %4194, %4279 ], [ %4480, %4839 ]
  %4852 = phi float [ %4245, %4279 ], [ %4481, %4839 ]
  %4853 = phi float [ %4247, %4279 ], [ %4482, %4839 ]
  %4854 = phi float [ %4249, %4279 ], [ %4483, %4839 ]
  %4855 = phi float [ %4275, %4279 ], [ %4484, %4839 ]
  %4856 = phi float [ %4276, %4279 ], [ %4485, %4839 ]
  %4857 = phi float [ %4277, %4279 ], [ %4486, %4839 ]
  %4858 = phi float [ %4200, %4279 ], [ %4487, %4839 ]
  %4859 = phi float [ %4199, %4279 ], [ %4488, %4839 ]
  %4860 = phi float [ 0.000000e+00, %4279 ], [ %4489, %4839 ]
  %4861 = phi float [ %4198, %4279 ], [ %4490, %4839 ]
  %4862 = phi float [ %4230, %4279 ], [ %4491, %4839 ]
  %4863 = phi float [ %4231, %4279 ], [ %4492, %4839 ]
  %4864 = phi float [ %4232, %4279 ], [ %4493, %4839 ]
  %4865 = call float @dx.op.dot3.f32(i32 55, float %4855, float %4856, float %4857, float %4855, float %4856, float %4857)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = call float @dx.op.unary.f32(i32 25, float %4865)  ; Rsqrt(value)
  %4867 = fmul fast float %4866, %4855
  %4868 = fmul fast float %4866, %4856
  %4869 = fmul fast float %4866, %4857
  %4870 = fadd fast float %4860, %1372
  %4871 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4872 = call float @dx.op.dot3.f32(i32 55, float %4867, float %4868, float %4869, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = call float @dx.op.unary.f32(i32 25, float %4872)  ; Rsqrt(value)
  %4874 = fmul fast float %4873, %4867
  %4875 = fmul fast float %4873, %4868
  %4876 = fmul fast float %4873, %4869
  br label %4877

; <label>:4877                                    ; preds = %4840, %4183
  %4878 = phi float [ %4874, %4840 ], [ %4275, %4183 ]
  %4879 = phi float [ %4875, %4840 ], [ %4276, %4183 ]
  %4880 = phi float [ %4876, %4840 ], [ %4277, %4183 ]
  %4881 = phi float [ %4862, %4840 ], [ %4230, %4183 ]
  %4882 = phi float [ %4863, %4840 ], [ %4231, %4183 ]
  %4883 = phi float [ %4864, %4840 ], [ %4232, %4183 ]
  %4884 = phi float [ %4852, %4840 ], [ %4245, %4183 ]
  %4885 = phi float [ %4853, %4840 ], [ %4247, %4183 ]
  %4886 = phi float [ %4854, %4840 ], [ %4249, %4183 ]
  %4887 = phi float [ %4849, %4840 ], [ %4192, %4183 ]
  %4888 = phi float [ %4850, %4840 ], [ %4193, %4183 ]
  %4889 = phi float [ %4851, %4840 ], [ %4194, %4183 ]
  %4890 = phi float [ %4844, %4840 ], [ %4195, %4183 ]
  %4891 = phi float [ %4845, %4840 ], [ %4196, %4183 ]
  %4892 = phi float [ %4846, %4840 ], [ %4197, %4183 ]
  %4893 = phi float [ %4861, %4840 ], [ %4198, %4183 ]
  %4894 = phi float [ %4871, %4840 ], [ %1372, %4183 ]
  %4895 = phi float [ %4859, %4840 ], [ %4199, %4183 ]
  %4896 = phi float [ %4858, %4840 ], [ %4200, %4183 ]
  %4897 = phi float [ %4848, %4840 ], [ 0.000000e+00, %4183 ]
  %4898 = phi float [ %4847, %4840 ], [ 0.000000e+00, %4183 ]
  %4899 = phi float [ %4841, %4840 ], [ 0.000000e+00, %4183 ]
  %4900 = phi float [ %4842, %4840 ], [ %4223, %4183 ]
  %4901 = phi float [ %4843, %4840 ], [ %4202, %4183 ]
  %4902 = fadd fast float %4893, 0xBFB99999A0000000
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = fmul fast float %4903, 0x3FF1C71C80000000
  %4905 = call float @dx.op.binary.f32(i32 36, float %4893, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4906 = fsub fast float 1.000000e+00, %4904
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = fmul fast float %4907, %4881
  %4909 = fmul fast float %4907, %4882
  %4910 = fmul fast float %4907, %4883
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4913 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4914 = fmul fast float %4904, %4881
  %4915 = fmul fast float %4904, %4882
  %4916 = fmul fast float %4904, %4883
  %4917 = fadd fast float %4914, %4905
  %4918 = fadd fast float %4915, %4905
  %4919 = fadd fast float %4916, %4905
  %4920 = call float @dx.op.unary.f32(i32 7, float %4917)  ; Saturate(value)
  %4921 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4922 = call float @dx.op.unary.f32(i32 7, float %4919)  ; Saturate(value)
  %4923 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  %4924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %4925 = extractvalue %dx.types.ResRet.i32 %4924, 0
  %4926 = and i32 %4925, 1
  %4927 = icmp eq i32 %4926, 0
  br i1 %4927, label %4942, label %4928

; <label>:4928                                    ; preds = %4877
  %4929 = call float @dx.op.binary.f32(i32 35, float %4912, float %4913)  ; FMax(a,b)
  %4930 = call float @dx.op.binary.f32(i32 35, float %4911, float %4929)  ; FMax(a,b)
  %4931 = fcmp fast ogt float %4930, 0.000000e+00
  %4932 = bitcast float %4930 to i32
  %4933 = sub nsw i32 2129859010, %4932
  %4934 = bitcast i32 %4933 to float
  %4935 = select i1 %4931, float %4934, float 0.000000e+00
  %4936 = fmul fast float %4911, %4887
  %4937 = fmul fast float %4912, %4888
  %4938 = fmul fast float %4913, %4889
  %4939 = fmul fast float %4936, %4935
  %4940 = fmul fast float %4937, %4935
  %4941 = fmul fast float %4938, %4935
  br label %4942

; <label>:4942                                    ; preds = %4928, %4877
  %4943 = phi float [ %4939, %4928 ], [ %4887, %4877 ]
  %4944 = phi float [ %4940, %4928 ], [ %4888, %4877 ]
  %4945 = phi float [ %4941, %4928 ], [ %4889, %4877 ]
  %4946 = call float @dx.op.binary.f32(i32 36, float %4890, float 1.270000e+02)  ; FMin(a,b)
  %4947 = call float @dx.op.binary.f32(i32 36, float %4891, float 1.270000e+02)  ; FMin(a,b)
  %4948 = call float @dx.op.binary.f32(i32 36, float %4892, float 1.270000e+02)  ; FMin(a,b)
  %4949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.i32 %4949, 3
  %4951 = and i32 %4950, 8
  %4952 = icmp ne i32 %4951, 0
  %4953 = call float @dx.op.binary.f32(i32 35, float %4911, float %4881)  ; FMax(a,b)
  %4954 = call float @dx.op.binary.f32(i32 35, float %4912, float %4881)  ; FMax(a,b)
  %4955 = call float @dx.op.binary.f32(i32 35, float %4913, float %4881)  ; FMax(a,b)
  %4956 = call float @dx.op.dot3.f32(i32 55, float %4911, float %4912, float %4913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4957 = select i1 %264, float %4881, float %4911
  %4958 = select i1 %264, float %4956, float %4912
  %4959 = select i1 %264, float 1.000000e+00, float %4913
  %4960 = select i1 %4952, float %4953, float %4957
  %4961 = select i1 %4952, float %4954, float %4958
  %4962 = select i1 %4952, float %4955, float %4959
  %4963 = call float @dx.op.dot3.f32(i32 55, float %4943, float %4944, float %4945, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4964 = select i1 %264, float %4963, float %4943
  %4965 = select i1 %264, float %4963, float %4944
  %4966 = select i1 %264, float %4963, float %4945
  %4967 = and i32 %240, 3
  %4968 = select i1 %234, i32 %4967, i32 0
  %4969 = icmp eq i32 %4968, 1
  br i1 %4969, label %4970, label %5046

; <label>:4970                                    ; preds = %4942
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = fadd fast float %4972, %190
  %4975 = fadd fast float %4973, %191
  %4976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4977 = extractvalue %dx.types.CBufRet.f32 %4976, 0
  %4978 = extractvalue %dx.types.CBufRet.f32 %4976, 1
  %4979 = fsub fast float %4974, %4977
  %4980 = fsub fast float %4975, %4978
  %4981 = fmul fast float %4979, %4979
  %4982 = fmul fast float %4980, %4980
  %4983 = fadd fast float %4981, %4982
  %4984 = call float @dx.op.unary.f32(i32 24, float %4983)  ; Sqrt(value)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4976, 2
  %4986 = fcmp fast olt float %4984, %4985
  br i1 %4986, label %4987, label %5040

; <label>:4987                                    ; preds = %4970
  %4988 = extractvalue %dx.types.CBufRet.f32 %4971, 2
  %4989 = fadd fast float %4988, %192
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.CBufRet.f32 %4990, 1
  %4997 = extractvalue %dx.types.CBufRet.f32 %4992, 1
  %4998 = extractvalue %dx.types.CBufRet.f32 %4994, 1
  %4999 = extractvalue %dx.types.CBufRet.f32 %4990, 3
  %5000 = extractvalue %dx.types.CBufRet.f32 %4992, 3
  %5001 = extractvalue %dx.types.CBufRet.f32 %4994, 3
  %5002 = fadd fast float %4999, %4974
  %5003 = fadd fast float %5000, %4975
  %5004 = fadd fast float %4989, %5001
  %5005 = fmul fast float %5002, %4991
  %5006 = call float @dx.op.tertiary.f32(i32 46, float %5003, float %4993, float %5005)  ; FMad(a,b,c)
  %5007 = call float @dx.op.tertiary.f32(i32 46, float %5004, float %4995, float %5006)  ; FMad(a,b,c)
  %5008 = fmul fast float %5002, %4996
  %5009 = call float @dx.op.tertiary.f32(i32 46, float %5003, float %4997, float %5008)  ; FMad(a,b,c)
  %5010 = call float @dx.op.tertiary.f32(i32 46, float %5004, float %4998, float %5009)  ; FMad(a,b,c)
  %5011 = fsub fast float %5007, %4999
  %5012 = fsub fast float %5010, %5000
  %5013 = fsub fast float %5011, %4977
  %5014 = fadd fast float %5013, %4985
  %5015 = fsub fast float %5012, %4978
  %5016 = fadd fast float %5015, %4985
  %5017 = extractvalue %dx.types.CBufRet.f32 %4976, 3
  %5018 = fmul fast float %5014, %5017
  %5019 = fmul fast float %5016, %5017
  %5020 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5021 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5022 = fsub fast float 1.000000e+00, %5020
  %5023 = fsub fast float 1.000000e+00, %5021
  %5024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %44, float %5022, float %5023, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5025 = extractvalue %dx.types.ResRet.f32 %5024, 0
  %5026 = fcmp fast ugt float %5025, 0.000000e+00
  br i1 %5026, label %5027, label %5040

; <label>:5027                                    ; preds = %4987
  %5028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.f32 %5028, 2
  %5030 = fmul fast float %5029, %5025
  %5031 = extractvalue %dx.types.CBufRet.f32 %5028, 3
  %5032 = fadd fast float %5031, %5030
  %5033 = extractvalue %dx.types.CBufRet.f32 %4994, 2
  %5034 = fadd fast float %5032, %5001
  %5035 = fmul fast float %5007, %4995
  %5036 = call float @dx.op.tertiary.f32(i32 46, float %5010, float %4998, float %5035)  ; FMad(a,b,c)
  %5037 = call float @dx.op.tertiary.f32(i32 46, float %5034, float %5033, float %5036)  ; FMad(a,b,c)
  %5038 = fsub fast float %5037, %5001
  %5039 = fsub fast float %5038, %4988
  br label %5040

; <label>:5040                                    ; preds = %5027, %4987, %4970
  %5041 = phi i1 [ true, %5027 ], [ false, %4987 ], [ false, %4970 ]
  %5042 = phi float [ %5039, %5027 ], [ -1.310720e+05, %4987 ], [ -1.310720e+05, %4970 ]
  %5043 = fsub fast float %5042, %192
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = select i1 %5041, float %5044, float 1.000000e+00
  br label %5046

; <label>:5046                                    ; preds = %5040, %4942
  %5047 = phi float [ %5045, %5040 ], [ 0.000000e+00, %4942 ]
  %5048 = icmp eq i32 %4968, 3
  %5049 = select i1 %5048, float 1.000000e+00, float %5047
  %5050 = call float @dx.op.binary.f32(i32 35, float %4899, float %5049)  ; FMax(a,b)
  %5051 = fcmp fast olt float %5049, 1.000000e+00
  %5052 = fcmp uge float %67, 0.000000e+00
  %5053 = and i1 %5052, %5051
  br i1 %5053, label %5054, label %5064

; <label>:5054                                    ; preds = %5046
  %5055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %42, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5056 = extractvalue %dx.types.ResRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.ResRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.ResRet.f32 %5055, 2
  %5059 = fadd fast float %5056, %5050
  %5060 = fcmp ule float %66, 0.000000e+00
  %5061 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = select i1 %5060, float %5061, float 1.000000e+00
  %5063 = fmul fast float %5062, %5058
  br label %5064

; <label>:5064                                    ; preds = %5054, %5046
  %5065 = phi float [ %5059, %5054 ], [ %5050, %5046 ]
  %5066 = phi float [ %5057, %5054 ], [ 0.000000e+00, %5046 ]
  %5067 = phi float [ %5063, %5054 ], [ 0.000000e+00, %5046 ]
  %5068 = call float @dx.op.unary.f32(i32 7, float %5065)  ; Saturate(value)
  %5069 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5070 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5071 = fcmp fast une float %5069, 0.000000e+00
  %5072 = fcmp fast une float %5070, 0.000000e+00
  %5073 = or i1 %5071, %5072
  br i1 %5073, label %5074, label %5649

; <label>:5074                                    ; preds = %5064
  br i1 %5071, label %5075, label %5348

; <label>:5075                                    ; preds = %5074
  %5076 = call float @dx.op.unary.f32(i32 23, float %4896)  ; Log(value)
  %5077 = fmul fast float %5076, 4.000000e+00
  %5078 = call float @dx.op.unary.f32(i32 21, float %5077)  ; Exp(value)
  %5079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.f32 %5079, 0
  %5081 = fmul fast float %5080, %54
  %5082 = fmul fast float %5080, %55
  %5083 = fmul fast float %5080, %56
  %5084 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5085 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5086 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5087 = call float @dx.op.unary.f32(i32 23, float %5084)  ; Log(value)
  %5088 = call float @dx.op.unary.f32(i32 23, float %5085)  ; Log(value)
  %5089 = call float @dx.op.unary.f32(i32 23, float %5086)  ; Log(value)
  %5090 = fmul fast float %5087, 4.000000e+00
  %5091 = fmul fast float %5088, 4.000000e+00
  %5092 = fmul fast float %5089, 4.000000e+00
  %5093 = call float @dx.op.unary.f32(i32 21, float %5090)  ; Exp(value)
  %5094 = call float @dx.op.unary.f32(i32 21, float %5091)  ; Exp(value)
  %5095 = call float @dx.op.unary.f32(i32 21, float %5092)  ; Exp(value)
  %5096 = fadd fast float %5094, %5093
  %5097 = fadd fast float %5096, %5095
  %5098 = fdiv fast float 1.000000e+00, %5097
  %5099 = fmul fast float %5098, %5093
  %5100 = fcmp fast ogt float %63, 0.000000e+00
  %5101 = fcmp fast ogt float %64, 0.000000e+00
  %5102 = fcmp fast ogt float %65, 0.000000e+00
  %5103 = fcmp fast olt float %63, 0.000000e+00
  %5104 = fcmp fast olt float %64, 0.000000e+00
  %5105 = fcmp fast olt float %65, 0.000000e+00
  %5106 = zext i1 %5100 to i32
  %5107 = zext i1 %5101 to i32
  %5108 = zext i1 %5102 to i32
  %5109 = zext i1 %5103 to i32
  %5110 = zext i1 %5104 to i32
  %5111 = zext i1 %5105 to i32
  %5112 = sub nsw i32 %5106, %5109
  %5113 = sub nsw i32 %5107, %5110
  %5114 = sub nsw i32 %5108, %5111
  %5115 = call float @dx.op.unary.f32(i32 83, float %5081)  ; DerivCoarseX(value)
  %5116 = call float @dx.op.unary.f32(i32 83, float %5082)  ; DerivCoarseX(value)
  %5117 = call float @dx.op.unary.f32(i32 83, float %5083)  ; DerivCoarseX(value)
  %5118 = call float @dx.op.unary.f32(i32 84, float %5081)  ; DerivCoarseY(value)
  %5119 = call float @dx.op.unary.f32(i32 84, float %5082)  ; DerivCoarseY(value)
  %5120 = call float @dx.op.unary.f32(i32 84, float %5083)  ; DerivCoarseY(value)
  %5121 = fcmp fast ole float %275, %5099
  %5122 = fmul fast float %5098, %5096
  %5123 = fcmp fast ole float %275, %5122
  %5124 = select i1 %5123, float %5083, float %5081
  %5125 = select i1 %5123, float %5081, float %5082
  %5126 = select i1 %5121, float %5082, float %5124
  %5127 = select i1 %5121, float %5083, float %5125
  %5128 = select i1 %5123, float %5117, float %5115
  %5129 = select i1 %5123, float %5115, float %5116
  %5130 = select i1 %5121, float %5116, float %5128
  %5131 = select i1 %5121, float %5117, float %5129
  %5132 = select i1 %5123, float %5120, float %5118
  %5133 = select i1 %5123, float %5118, float %5119
  %5134 = select i1 %5121, float %5119, float %5132
  %5135 = select i1 %5121, float %5120, float %5133
  %5136 = call float @dx.op.unary.f32(i32 27, float %5126)  ; Round_ni(value)
  %5137 = call float @dx.op.unary.f32(i32 27, float %5127)  ; Round_ni(value)
  %5138 = fptosi float %5136 to i32
  %5139 = fptosi float %5137 to i32
  %5140 = xor i32 %5139, %5138
  %5141 = sitofp i32 %5140 to float
  %5142 = fptosi float %5141 to i32
  %5143 = sitofp i32 %5142 to float
  %5144 = fmul fast float %5143, 0x3FE3C6EF40000000
  %5145 = frem fast float %5136, 2.560000e+02
  %5146 = frem fast float %5137, 2.560000e+02
  %5147 = fptoui float %5145 to i32
  %5148 = fptoui float %5146 to i32
  %5149 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5147, i32 %5148, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5150 = extractvalue %dx.types.ResRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.ResRet.f32 %5149, 1
  %5152 = extractvalue %dx.types.ResRet.f32 %5149, 2
  %5153 = fadd fast float %5150, %5144
  %5154 = fadd fast float %5151, %5144
  %5155 = fadd fast float %5152, %5144
  %5156 = call float @dx.op.unary.f32(i32 22, float %5153)  ; Frc(value)
  %5157 = call float @dx.op.unary.f32(i32 22, float %5154)  ; Frc(value)
  %5158 = call float @dx.op.unary.f32(i32 22, float %5155)  ; Frc(value)
  %5159 = fmul fast float %5158, 0x401921FB60000000
  %5160 = call float @dx.op.unary.f32(i32 13, float %5159)  ; Sin(value)
  %5161 = call float @dx.op.unary.f32(i32 12, float %5159)  ; Cos(value)
  %5162 = fsub fast float -0.000000e+00, %5161
  %5163 = fmul fast float %5161, %5126
  %5164 = call float @dx.op.tertiary.f32(i32 46, float %5160, float %5127, float %5163)  ; FMad(a,b,c)
  %5165 = fmul fast float %5160, %5126
  %5166 = call float @dx.op.tertiary.f32(i32 46, float %5162, float %5127, float %5165)  ; FMad(a,b,c)
  %5167 = fadd fast float %5164, %5156
  %5168 = fadd fast float %5166, %5157
  %5169 = extractvalue %dx.types.CBufRet.f32 %5079, 3
  %5170 = bitcast float %5169 to i32
  %5171 = icmp eq i32 %5170, 0
  br i1 %5171, label %5210, label %5172

; <label>:5172                                    ; preds = %5075
  %5173 = add i32 %5170, 0
  %5174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5175 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5174, %dx.types.Handle %108, float %5167, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float %5130, float %5131, float undef, float %5134, float %5135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5176 = extractvalue %dx.types.ResRet.f32 %5175, 0
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 1
  %5179 = extractvalue %dx.types.CBufRet.f32 %5177, 2
  %5180 = fsub fast float 1.000000e+00, %5069
  %5181 = call float @dx.op.binary.f32(i32 35, float %5180, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5182 = bitcast float %5069 to i32
  %5183 = sitofp i32 %5182 to float
  %5184 = fadd fast float %5183, 0xC1CFBF8940000000
  %5185 = fmul fast float %5179, %5184
  %5186 = fadd fast float %5185, 0x41CFBF8940000000
  %5187 = fptosi float %5186 to i32
  %5188 = bitcast i32 %5187 to float
  %5189 = bitcast float %5181 to i32
  %5190 = sitofp i32 %5189 to float
  %5191 = fadd fast float %5190, 0xC1CFBF8940000000
  %5192 = fmul fast float %5191, %5179
  %5193 = fadd fast float %5192, 0x41CFBF8940000000
  %5194 = fptosi float %5193 to i32
  %5195 = bitcast i32 %5194 to float
  %5196 = fmul fast float %5188, %5178
  %5197 = fmul fast float %5195, %5178
  %5198 = fsub fast float %5181, %5196
  %5199 = fadd fast float %5197, %5181
  %5200 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5201 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5202 = fsub fast float %5176, %5200
  %5203 = fsub fast float %5201, %5200
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = fmul fast float %5206, %5202
  %5208 = call float @dx.op.unary.f32(i32 7, float %5207)  ; Saturate(value)
  %5209 = fcmp fast olt float %5208, 0x3F70101020000000
  br i1 %5209, label %5348, label %5210

; <label>:5210                                    ; preds = %5172, %5075
  %5211 = phi float [ %5208, %5172 ], [ %5069, %5075 ]
  %5212 = fmul fast float %5211, %5078
  %5213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.i32 %5213, 1
  %5215 = extractvalue %dx.types.CBufRet.i32 %5213, 0
  %5216 = add i32 %5215, 0
  %5217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5218 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5217, %dx.types.Handle %107, float %5167, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float %5130, float %5131, float undef, float %5134, float %5135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5219 = extractvalue %dx.types.ResRet.f32 %5218, 0
  %5220 = extractvalue %dx.types.ResRet.f32 %5218, 1
  %5221 = extractvalue %dx.types.ResRet.f32 %5218, 2
  %5222 = extractvalue %dx.types.ResRet.f32 %5218, 3
  %5223 = and i32 %5214, 255
  %5224 = uitofp i32 %5223 to float
  %5225 = lshr i32 %5214, 8
  %5226 = and i32 %5225, 255
  %5227 = uitofp i32 %5226 to float
  %5228 = fmul fast float %5222, %5224
  %5229 = fadd fast float %5228, %5227
  %5230 = fmul fast float %5229, 0x3F70101000000000
  %5231 = fadd fast float %5230, 0xBFB99999A0000000
  %5232 = call float @dx.op.unary.f32(i32 7, float %5231)  ; Saturate(value)
  %5233 = fmul fast float %5232, 0x3FF1C71C80000000
  %5234 = call float @dx.op.binary.f32(i32 36, float %5230, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5235 = fsub fast float 1.000000e+00, %5233
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = fmul fast float %5236, %5219
  %5238 = fmul fast float %5236, %5220
  %5239 = fmul fast float %5236, %5221
  %5240 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5241 = call float @dx.op.unary.f32(i32 7, float %5238)  ; Saturate(value)
  %5242 = call float @dx.op.unary.f32(i32 7, float %5239)  ; Saturate(value)
  %5243 = fmul fast float %5233, %5219
  %5244 = fmul fast float %5233, %5220
  %5245 = fmul fast float %5233, %5221
  %5246 = fadd fast float %5243, %5234
  %5247 = fadd fast float %5244, %5234
  %5248 = fadd fast float %5245, %5234
  %5249 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5250 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5251 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5253 = extractvalue %dx.types.CBufRet.i32 %5252, 3
  %5254 = extractvalue %dx.types.CBufRet.i32 %5252, 2
  %5255 = add i32 %5254, 0
  %5256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5257 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5256, %dx.types.Handle %107, float %5167, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float %5130, float %5131, float undef, float %5134, float %5135, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.ResRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.ResRet.f32 %5257, 3
  %5262 = and i32 %5253, 255
  %5263 = uitofp i32 %5262 to float
  %5264 = lshr i32 %5253, 8
  %5265 = and i32 %5264, 255
  %5266 = uitofp i32 %5265 to float
  %5267 = lshr i32 %5253, 16
  %5268 = and i32 %5267, 255
  %5269 = uitofp i32 %5268 to float
  %5270 = fmul fast float %5269, 0x3F70101000000000
  %5271 = fmul fast float %5258, %5263
  %5272 = fadd fast float %5271, %5266
  %5273 = fmul fast float %5272, 0x3F70101000000000
  %5274 = fadd fast float %5259, -5.000000e-01
  %5275 = fadd fast float %5261, -5.000000e-01
  %5276 = fmul fast float %5274, %5270
  %5277 = fmul fast float %5275, %5270
  %5278 = fadd fast float %5276, 5.000000e-01
  %5279 = fadd fast float %5277, 5.000000e-01
  %5280 = fmul fast float %5278, 2.000000e+00
  %5281 = fadd fast float %5280, -1.000000e+00
  %5282 = fmul fast float %5279, 2.000000e+00
  %5283 = fadd fast float %5282, -1.000000e+00
  %5284 = fadd fast float %5281, %5283
  %5285 = fmul fast float %5284, 5.000000e-01
  %5286 = fsub fast float %5281, %5283
  %5287 = fmul fast float %5286, 5.000000e-01
  %5288 = call float @dx.op.unary.f32(i32 6, float %5285)  ; FAbs(value)
  %5289 = fsub fast float 1.000000e+00, %5288
  %5290 = call float @dx.op.unary.f32(i32 6, float %5287)  ; FAbs(value)
  %5291 = fsub fast float %5289, %5290
  %5292 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5287, float %5291, float %5285, float %5287, float %5291)  ; Dot3(ax,ay,az,bx,by,bz)
  %5293 = call float @dx.op.unary.f32(i32 25, float %5292)  ; Rsqrt(value)
  %5294 = fmul fast float %5285, %5293
  %5295 = fmul fast float %5287, %5293
  %5296 = select i1 %5123, i32 %5113, i32 %5114
  %5297 = select i1 %5121, i32 %5112, i32 %5296
  %5298 = sitofp i32 %5297 to float
  %5299 = fmul fast float %5291, %5298
  %5300 = fmul fast float %5299, %5293
  %5301 = select i1 %5123, float %5300, float %5295
  %5302 = select i1 %5123, float %5295, float %5300
  %5303 = select i1 %5121, float %5300, float %5294
  %5304 = select i1 %5121, float %5295, float %5301
  %5305 = select i1 %5121, float %5294, float %5302
  %5306 = fsub fast float %5240, %4960
  %5307 = fsub fast float %5241, %4961
  %5308 = fsub fast float %5242, %4962
  %5309 = fmul fast float %5306, %5212
  %5310 = fmul fast float %5307, %5212
  %5311 = fmul fast float %5308, %5212
  %5312 = fadd fast float %5309, %4960
  %5313 = fadd fast float %5310, %4961
  %5314 = fadd fast float %5311, %4962
  %5315 = fsub fast float %5249, %4920
  %5316 = fsub fast float %5250, %4921
  %5317 = fsub fast float %5251, %4922
  %5318 = fmul fast float %5315, %5212
  %5319 = fmul fast float %5316, %5212
  %5320 = fmul fast float %5317, %5212
  %5321 = fadd fast float %5318, %4920
  %5322 = fadd fast float %5319, %4921
  %5323 = fadd fast float %5320, %4922
  %5324 = fadd fast float %5303, %4878
  %5325 = fadd fast float %5304, %4879
  %5326 = fadd fast float %5305, %4880
  %5327 = call float @dx.op.dot3.f32(i32 55, float %5324, float %5325, float %5326, float %5324, float %5325, float %5326)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = call float @dx.op.unary.f32(i32 25, float %5327)  ; Rsqrt(value)
  %5329 = fmul fast float %5324, %5328
  %5330 = fmul fast float %5325, %5328
  %5331 = fmul fast float %5326, %5328
  %5332 = fsub fast float %5329, %4878
  %5333 = fsub fast float %5330, %4879
  %5334 = fsub fast float %5331, %4880
  %5335 = fmul fast float %5332, %5212
  %5336 = fmul fast float %5333, %5212
  %5337 = fmul fast float %5334, %5212
  %5338 = fadd fast float %5335, %4878
  %5339 = fadd fast float %5336, %4879
  %5340 = fadd fast float %5337, %4880
  %5341 = call float @dx.op.binary.f32(i32 36, float %4896, float %5260)  ; FMin(a,b)
  %5342 = fsub fast float %5341, %4896
  %5343 = fmul fast float %5342, %5212
  %5344 = fadd fast float %5343, %4896
  %5345 = fsub fast float %5273, %4923
  %5346 = fmul fast float %5345, %5212
  %5347 = fadd fast float %5346, %4923
  br label %5348

; <label>:5348                                    ; preds = %5210, %5172, %5074
  %5349 = phi float [ %5321, %5210 ], [ %4920, %5172 ], [ %4920, %5074 ]
  %5350 = phi float [ %5322, %5210 ], [ %4921, %5172 ], [ %4921, %5074 ]
  %5351 = phi float [ %5323, %5210 ], [ %4922, %5172 ], [ %4922, %5074 ]
  %5352 = phi float [ %5312, %5210 ], [ %4960, %5172 ], [ %4960, %5074 ]
  %5353 = phi float [ %5313, %5210 ], [ %4961, %5172 ], [ %4961, %5074 ]
  %5354 = phi float [ %5314, %5210 ], [ %4962, %5172 ], [ %4962, %5074 ]
  %5355 = phi float [ %5338, %5210 ], [ %4878, %5172 ], [ %4878, %5074 ]
  %5356 = phi float [ %5339, %5210 ], [ %4879, %5172 ], [ %4879, %5074 ]
  %5357 = phi float [ %5340, %5210 ], [ %4880, %5172 ], [ %4880, %5074 ]
  %5358 = phi float [ %5347, %5210 ], [ %4923, %5172 ], [ %4923, %5074 ]
  %5359 = phi float [ %5344, %5210 ], [ %4896, %5172 ], [ %4896, %5074 ]
  br i1 %5072, label %5360, label %5649

; <label>:5360                                    ; preds = %5348
  %5361 = call float @dx.op.unary.f32(i32 23, float %5359)  ; Log(value)
  %5362 = fmul fast float %5361, 4.000000e+00
  %5363 = call float @dx.op.unary.f32(i32 21, float %5362)  ; Exp(value)
  %5364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.f32 %5364, 0
  %5366 = fmul fast float %5365, %54
  %5367 = fmul fast float %5365, %55
  %5368 = fmul fast float %5365, %56
  %5369 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5370 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5371 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5372 = call float @dx.op.unary.f32(i32 23, float %5369)  ; Log(value)
  %5373 = call float @dx.op.unary.f32(i32 23, float %5370)  ; Log(value)
  %5374 = call float @dx.op.unary.f32(i32 23, float %5371)  ; Log(value)
  %5375 = fmul fast float %5372, 4.000000e+00
  %5376 = fmul fast float %5373, 4.000000e+00
  %5377 = fmul fast float %5374, 4.000000e+00
  %5378 = call float @dx.op.unary.f32(i32 21, float %5375)  ; Exp(value)
  %5379 = call float @dx.op.unary.f32(i32 21, float %5376)  ; Exp(value)
  %5380 = call float @dx.op.unary.f32(i32 21, float %5377)  ; Exp(value)
  %5381 = fadd fast float %5379, %5378
  %5382 = fadd fast float %5381, %5380
  %5383 = fdiv fast float 1.000000e+00, %5382
  %5384 = fmul fast float %5383, %5378
  %5385 = fcmp fast ogt float %63, 0.000000e+00
  %5386 = fcmp fast ogt float %64, 0.000000e+00
  %5387 = fcmp fast ogt float %65, 0.000000e+00
  %5388 = fcmp fast olt float %63, 0.000000e+00
  %5389 = fcmp fast olt float %64, 0.000000e+00
  %5390 = fcmp fast olt float %65, 0.000000e+00
  %5391 = zext i1 %5385 to i32
  %5392 = zext i1 %5386 to i32
  %5393 = zext i1 %5387 to i32
  %5394 = zext i1 %5388 to i32
  %5395 = zext i1 %5389 to i32
  %5396 = zext i1 %5390 to i32
  %5397 = sub nsw i32 %5391, %5394
  %5398 = sub nsw i32 %5392, %5395
  %5399 = sub nsw i32 %5393, %5396
  %5400 = call float @dx.op.unary.f32(i32 83, float %5366)  ; DerivCoarseX(value)
  %5401 = call float @dx.op.unary.f32(i32 83, float %5367)  ; DerivCoarseX(value)
  %5402 = call float @dx.op.unary.f32(i32 83, float %5368)  ; DerivCoarseX(value)
  %5403 = call float @dx.op.unary.f32(i32 84, float %5366)  ; DerivCoarseY(value)
  %5404 = call float @dx.op.unary.f32(i32 84, float %5367)  ; DerivCoarseY(value)
  %5405 = call float @dx.op.unary.f32(i32 84, float %5368)  ; DerivCoarseY(value)
  %5406 = fcmp fast ole float %275, %5384
  %5407 = fmul fast float %5383, %5381
  %5408 = fcmp fast ole float %275, %5407
  %5409 = select i1 %5408, float %5368, float %5366
  %5410 = select i1 %5408, float %5366, float %5367
  %5411 = select i1 %5406, float %5367, float %5409
  %5412 = select i1 %5406, float %5368, float %5410
  %5413 = select i1 %5408, float %5402, float %5400
  %5414 = select i1 %5408, float %5400, float %5401
  %5415 = select i1 %5406, float %5401, float %5413
  %5416 = select i1 %5406, float %5402, float %5414
  %5417 = select i1 %5408, float %5405, float %5403
  %5418 = select i1 %5408, float %5403, float %5404
  %5419 = select i1 %5406, float %5404, float %5417
  %5420 = select i1 %5406, float %5405, float %5418
  %5421 = call float @dx.op.unary.f32(i32 27, float %5411)  ; Round_ni(value)
  %5422 = call float @dx.op.unary.f32(i32 27, float %5412)  ; Round_ni(value)
  %5423 = fptosi float %5421 to i32
  %5424 = fptosi float %5422 to i32
  %5425 = xor i32 %5424, %5423
  %5426 = sitofp i32 %5425 to float
  %5427 = fptosi float %5426 to i32
  %5428 = sitofp i32 %5427 to float
  %5429 = fmul fast float %5428, 0x3FE3C6EF40000000
  %5430 = frem fast float %5421, 2.560000e+02
  %5431 = frem fast float %5422, 2.560000e+02
  %5432 = fptoui float %5430 to i32
  %5433 = fptoui float %5431 to i32
  %5434 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5432, i32 %5433, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5435 = extractvalue %dx.types.ResRet.f32 %5434, 0
  %5436 = extractvalue %dx.types.ResRet.f32 %5434, 1
  %5437 = extractvalue %dx.types.ResRet.f32 %5434, 2
  %5438 = fadd fast float %5435, %5429
  %5439 = fadd fast float %5436, %5429
  %5440 = fadd fast float %5437, %5429
  %5441 = call float @dx.op.unary.f32(i32 22, float %5438)  ; Frc(value)
  %5442 = call float @dx.op.unary.f32(i32 22, float %5439)  ; Frc(value)
  %5443 = call float @dx.op.unary.f32(i32 22, float %5440)  ; Frc(value)
  %5444 = fmul fast float %5443, 0x401921FB60000000
  %5445 = call float @dx.op.unary.f32(i32 13, float %5444)  ; Sin(value)
  %5446 = call float @dx.op.unary.f32(i32 12, float %5444)  ; Cos(value)
  %5447 = fsub fast float -0.000000e+00, %5446
  %5448 = fmul fast float %5446, %5411
  %5449 = call float @dx.op.tertiary.f32(i32 46, float %5445, float %5412, float %5448)  ; FMad(a,b,c)
  %5450 = fmul fast float %5445, %5411
  %5451 = call float @dx.op.tertiary.f32(i32 46, float %5447, float %5412, float %5450)  ; FMad(a,b,c)
  %5452 = fadd fast float %5449, %5441
  %5453 = fadd fast float %5451, %5442
  %5454 = extractvalue %dx.types.CBufRet.f32 %5364, 3
  %5455 = bitcast float %5454 to i32
  %5456 = icmp eq i32 %5455, 0
  br i1 %5456, label %5495, label %5457

; <label>:5457                                    ; preds = %5360
  %5458 = add i32 %5455, 0
  %5459 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5458, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5460 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5459, %dx.types.Handle %108, float %5452, float %5453, float undef, float undef, i32 0, i32 0, i32 undef, float %5415, float %5416, float undef, float %5419, float %5420, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5461 = extractvalue %dx.types.ResRet.f32 %5460, 0
  %5462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5463 = extractvalue %dx.types.CBufRet.f32 %5462, 1
  %5464 = extractvalue %dx.types.CBufRet.f32 %5462, 2
  %5465 = fsub fast float 1.000000e+00, %5070
  %5466 = call float @dx.op.binary.f32(i32 35, float %5465, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5467 = bitcast float %5070 to i32
  %5468 = sitofp i32 %5467 to float
  %5469 = fadd fast float %5468, 0xC1CFBF8940000000
  %5470 = fmul fast float %5464, %5469
  %5471 = fadd fast float %5470, 0x41CFBF8940000000
  %5472 = fptosi float %5471 to i32
  %5473 = bitcast i32 %5472 to float
  %5474 = bitcast float %5466 to i32
  %5475 = sitofp i32 %5474 to float
  %5476 = fadd fast float %5475, 0xC1CFBF8940000000
  %5477 = fmul fast float %5476, %5464
  %5478 = fadd fast float %5477, 0x41CFBF8940000000
  %5479 = fptosi float %5478 to i32
  %5480 = bitcast i32 %5479 to float
  %5481 = fmul fast float %5473, %5463
  %5482 = fmul fast float %5480, %5463
  %5483 = fsub fast float %5466, %5481
  %5484 = fadd fast float %5482, %5466
  %5485 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5486 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5487 = fsub fast float %5461, %5485
  %5488 = fsub fast float %5486, %5485
  %5489 = bitcast float %5488 to i32
  %5490 = sub nsw i32 2129859010, %5489
  %5491 = bitcast i32 %5490 to float
  %5492 = fmul fast float %5491, %5487
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fcmp fast olt float %5493, 0x3F70101020000000
  br i1 %5494, label %5649, label %5495

; <label>:5495                                    ; preds = %5457, %5360
  %5496 = phi float [ %5493, %5457 ], [ %5070, %5360 ]
  %5497 = fmul fast float %5496, %5363
  %5498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.i32 %5498, 1
  %5500 = extractvalue %dx.types.CBufRet.i32 %5498, 0
  %5501 = add i32 %5500, 0
  %5502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5503 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5502, %dx.types.Handle %107, float %5452, float %5453, float undef, float undef, i32 0, i32 0, i32 undef, float %5415, float %5416, float undef, float %5419, float %5420, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.ResRet.f32 %5503, 1
  %5506 = extractvalue %dx.types.ResRet.f32 %5503, 2
  %5507 = extractvalue %dx.types.ResRet.f32 %5503, 3
  %5508 = and i32 %5499, 255
  %5509 = uitofp i32 %5508 to float
  %5510 = lshr i32 %5499, 8
  %5511 = and i32 %5510, 255
  %5512 = uitofp i32 %5511 to float
  %5513 = fmul fast float %5507, %5509
  %5514 = fadd fast float %5513, %5512
  %5515 = fmul fast float %5514, 0x3F70101000000000
  %5516 = fadd fast float %5515, 0xBFB99999A0000000
  %5517 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5518 = fmul fast float %5517, 0x3FF1C71C80000000
  %5519 = call float @dx.op.binary.f32(i32 36, float %5515, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5520 = fsub fast float 1.000000e+00, %5518
  %5521 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5522 = fmul fast float %5521, %5504
  %5523 = fmul fast float %5521, %5505
  %5524 = fmul fast float %5521, %5506
  %5525 = call float @dx.op.unary.f32(i32 7, float %5522)  ; Saturate(value)
  %5526 = call float @dx.op.unary.f32(i32 7, float %5523)  ; Saturate(value)
  %5527 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5528 = fmul fast float %5518, %5504
  %5529 = fmul fast float %5518, %5505
  %5530 = fmul fast float %5518, %5506
  %5531 = fadd fast float %5528, %5519
  %5532 = fadd fast float %5529, %5519
  %5533 = fadd fast float %5530, %5519
  %5534 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5535 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5536 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.i32 %5537, 3
  %5539 = extractvalue %dx.types.CBufRet.i32 %5537, 2
  %5540 = add i32 %5539, 0
  %5541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5542 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5541, %dx.types.Handle %107, float %5452, float %5453, float undef, float undef, i32 0, i32 0, i32 undef, float %5415, float %5416, float undef, float %5419, float %5420, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5543 = extractvalue %dx.types.ResRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.ResRet.f32 %5542, 1
  %5545 = extractvalue %dx.types.ResRet.f32 %5542, 2
  %5546 = extractvalue %dx.types.ResRet.f32 %5542, 3
  %5547 = and i32 %5538, 255
  %5548 = uitofp i32 %5547 to float
  %5549 = lshr i32 %5538, 8
  %5550 = and i32 %5549, 255
  %5551 = uitofp i32 %5550 to float
  %5552 = lshr i32 %5538, 16
  %5553 = and i32 %5552, 255
  %5554 = uitofp i32 %5553 to float
  %5555 = fmul fast float %5554, 0x3F70101000000000
  %5556 = fmul fast float %5543, %5548
  %5557 = fadd fast float %5556, %5551
  %5558 = fmul fast float %5557, 0x3F70101000000000
  %5559 = fadd fast float %5544, -5.000000e-01
  %5560 = fadd fast float %5546, -5.000000e-01
  %5561 = fmul fast float %5559, %5555
  %5562 = fmul fast float %5560, %5555
  %5563 = fadd fast float %5561, 5.000000e-01
  %5564 = fadd fast float %5562, 5.000000e-01
  %5565 = fmul fast float %5563, 2.000000e+00
  %5566 = fadd fast float %5565, -1.000000e+00
  %5567 = fmul fast float %5564, 2.000000e+00
  %5568 = fadd fast float %5567, -1.000000e+00
  %5569 = fadd fast float %5566, %5568
  %5570 = fmul fast float %5569, 5.000000e-01
  %5571 = fsub fast float %5566, %5568
  %5572 = fmul fast float %5571, 5.000000e-01
  %5573 = call float @dx.op.unary.f32(i32 6, float %5570)  ; FAbs(value)
  %5574 = fsub fast float 1.000000e+00, %5573
  %5575 = call float @dx.op.unary.f32(i32 6, float %5572)  ; FAbs(value)
  %5576 = fsub fast float %5574, %5575
  %5577 = call float @dx.op.dot3.f32(i32 55, float %5570, float %5572, float %5576, float %5570, float %5572, float %5576)  ; Dot3(ax,ay,az,bx,by,bz)
  %5578 = call float @dx.op.unary.f32(i32 25, float %5577)  ; Rsqrt(value)
  %5579 = fmul fast float %5570, %5578
  %5580 = fmul fast float %5572, %5578
  %5581 = select i1 %5408, i32 %5398, i32 %5399
  %5582 = select i1 %5406, i32 %5397, i32 %5581
  %5583 = sitofp i32 %5582 to float
  %5584 = fmul fast float %5576, %5583
  %5585 = fmul fast float %5584, %5578
  %5586 = select i1 %5408, float %5585, float %5580
  %5587 = select i1 %5408, float %5580, float %5585
  %5588 = select i1 %5406, float %5585, float %5579
  %5589 = select i1 %5406, float %5580, float %5586
  %5590 = select i1 %5406, float %5579, float %5587
  %5591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5592 = extractvalue %dx.types.CBufRet.f32 %5591, 0
  %5593 = fptoui float %5592 to i32
  %5594 = add i32 %5593, 0
  %5595 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5594, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5596 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5595, %dx.types.Handle %107, float %5452, float %5453, float undef, float undef, i32 0, i32 0, i32 undef, float %5415, float %5416, float undef, float %5419, float %5420, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = fsub fast float %5525, %5352
  %5599 = fsub fast float %5526, %5353
  %5600 = fsub fast float %5527, %5354
  %5601 = fmul fast float %5598, %5497
  %5602 = fmul fast float %5599, %5497
  %5603 = fmul fast float %5600, %5497
  %5604 = fadd fast float %5601, %5352
  %5605 = fadd fast float %5602, %5353
  %5606 = fadd fast float %5603, %5354
  %5607 = fsub fast float %5534, %5349
  %5608 = fsub fast float %5535, %5350
  %5609 = fsub fast float %5536, %5351
  %5610 = fmul fast float %5607, %5497
  %5611 = fmul fast float %5608, %5497
  %5612 = fmul fast float %5609, %5497
  %5613 = fadd fast float %5610, %5349
  %5614 = fadd fast float %5611, %5350
  %5615 = fadd fast float %5612, %5351
  %5616 = fadd fast float %5588, %5355
  %5617 = fadd fast float %5589, %5356
  %5618 = fadd fast float %5590, %5357
  %5619 = call float @dx.op.dot3.f32(i32 55, float %5616, float %5617, float %5618, float %5616, float %5617, float %5618)  ; Dot3(ax,ay,az,bx,by,bz)
  %5620 = call float @dx.op.unary.f32(i32 25, float %5619)  ; Rsqrt(value)
  %5621 = fmul fast float %5620, %5616
  %5622 = fmul fast float %5620, %5617
  %5623 = fmul fast float %5620, %5618
  %5624 = fsub fast float %5621, %5355
  %5625 = fsub fast float %5622, %5356
  %5626 = fsub fast float %5623, %5357
  %5627 = fmul fast float %5624, %5497
  %5628 = fmul fast float %5625, %5497
  %5629 = fmul fast float %5626, %5497
  %5630 = fadd fast float %5627, %5355
  %5631 = fadd fast float %5628, %5356
  %5632 = fadd fast float %5629, %5357
  %5633 = call float @dx.op.binary.f32(i32 36, float %5359, float %5545)  ; FMin(a,b)
  %5634 = fsub fast float %5633, %5359
  %5635 = fmul fast float %5634, %5497
  %5636 = fadd fast float %5635, %5359
  %5637 = fsub fast float %5558, %5358
  %5638 = fmul fast float %5637, %5497
  %5639 = fadd fast float %5638, %5358
  %5640 = fsub fast float %5597, %4964
  %5641 = fsub fast float %5597, %4965
  %5642 = fsub fast float %5597, %4966
  %5643 = fmul fast float %5640, %5497
  %5644 = fmul fast float %5641, %5497
  %5645 = fmul fast float %5642, %5497
  %5646 = fadd fast float %5643, %4964
  %5647 = fadd fast float %5644, %4965
  %5648 = fadd fast float %5645, %4966
  br label %5649

; <label>:5649                                    ; preds = %5495, %5457, %5348, %5064
  %5650 = phi float [ %5613, %5495 ], [ %5349, %5457 ], [ %5349, %5348 ], [ %4920, %5064 ]
  %5651 = phi float [ %5614, %5495 ], [ %5350, %5457 ], [ %5350, %5348 ], [ %4921, %5064 ]
  %5652 = phi float [ %5615, %5495 ], [ %5351, %5457 ], [ %5351, %5348 ], [ %4922, %5064 ]
  %5653 = phi float [ %5604, %5495 ], [ %5352, %5457 ], [ %5352, %5348 ], [ %4960, %5064 ]
  %5654 = phi float [ %5605, %5495 ], [ %5353, %5457 ], [ %5353, %5348 ], [ %4961, %5064 ]
  %5655 = phi float [ %5606, %5495 ], [ %5354, %5457 ], [ %5354, %5348 ], [ %4962, %5064 ]
  %5656 = phi float [ %5630, %5495 ], [ %5355, %5457 ], [ %5355, %5348 ], [ %4878, %5064 ]
  %5657 = phi float [ %5631, %5495 ], [ %5356, %5457 ], [ %5356, %5348 ], [ %4879, %5064 ]
  %5658 = phi float [ %5632, %5495 ], [ %5357, %5457 ], [ %5357, %5348 ], [ %4880, %5064 ]
  %5659 = phi float [ %5646, %5495 ], [ %4964, %5457 ], [ %4964, %5348 ], [ %4964, %5064 ]
  %5660 = phi float [ %5647, %5495 ], [ %4965, %5457 ], [ %4965, %5348 ], [ %4965, %5064 ]
  %5661 = phi float [ %5648, %5495 ], [ %4966, %5457 ], [ %4966, %5348 ], [ %4966, %5064 ]
  %5662 = phi float [ %5639, %5495 ], [ %5358, %5457 ], [ %5358, %5348 ], [ %4923, %5064 ]
  %5663 = phi float [ %5636, %5495 ], [ %5359, %5457 ], [ %5359, %5348 ], [ %4896, %5064 ]
  %5664 = fcmp fast une float %5068, 0.000000e+00
  br i1 %5664, label %5665, label %5834

; <label>:5665                                    ; preds = %5649
  %5666 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = call float @dx.op.unary.f32(i32 25, float %5666)  ; Rsqrt(value)
  %5668 = fmul fast float %190, %5667
  %5669 = fsub fast float -0.000000e+00, %5668
  %5670 = fmul fast float %191, %5667
  %5671 = fsub fast float -0.000000e+00, %5670
  %5672 = fmul fast float %192, %5667
  %5673 = fsub fast float -0.000000e+00, %5672
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5671, float %5673, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fmul fast float %5068, 2.500000e+00
  %5676 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5677 = fmul fast float %5068, 0x4013FFFFE0000000
  %5678 = fadd fast float %5677, 0xBFFFFFFFE0000000
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = fmul fast float %5068, 0x4004000020000000
  %5681 = fadd fast float %5680, 0xBFF8000040000000
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = fmul fast float %4902, 1.000000e+01
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5684, 2.000000e+00
  %5686 = fsub fast float 3.000000e+00, %5685
  %5687 = fmul fast float %5684, %5684
  %5688 = fmul fast float %5687, %5686
  %5689 = fsub fast float 1.000000e+00, %5688
  %5690 = fsub fast float 0x3FE3333340000000, %5662
  %5691 = fmul fast float %5690, 0x400AAAAAA0000000
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = fmul fast float %5689, %5692
  %5694 = fmul fast float %5653, 0x3FEA2B8620000000
  %5695 = fmul fast float %5654, 0x3FEA2B8620000000
  %5696 = fmul fast float %5655, 0x3FEA2B8620000000
  %5697 = fadd fast float %5694, 0x3FC81DFBA0000000
  %5698 = fmul fast float %5697, %5653
  %5699 = fadd fast float %5698, 0x3F910E6020000000
  %5700 = fadd fast float %5695, 0x3FC81DFBA0000000
  %5701 = fmul fast float %5700, %5654
  %5702 = fadd fast float %5701, 0x3F910E6020000000
  %5703 = fadd fast float %5696, 0x3FC81DFBA0000000
  %5704 = fmul fast float %5703, %5655
  %5705 = fadd fast float %5704, 0x3F910E6020000000
  %5706 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5707 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5708 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5709 = fsub fast float %5706, %5653
  %5710 = fsub fast float %5707, %5654
  %5711 = fsub fast float %5708, %5655
  %5712 = fmul fast float %5709, %5676
  %5713 = fmul fast float %5712, %5693
  %5714 = fmul fast float %5710, %5676
  %5715 = fmul fast float %5714, %5693
  %5716 = fmul fast float %5711, %5676
  %5717 = fmul fast float %5716, %5693
  %5718 = fadd fast float %5713, %5653
  %5719 = fadd fast float %5715, %5654
  %5720 = fadd fast float %5717, %5655
  %5721 = fmul fast float %5663, %5663
  %5722 = fmul fast float %5721, %5721
  %5723 = fadd fast float %5679, 1.000000e+00
  %5724 = fsub fast float %5723, %5693
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5727 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5728 = fsub fast float 1.000000e+00, %5722
  %5729 = call float @dx.op.binary.f32(i32 36, float %5725, float %5728)  ; FMin(a,b)
  %5730 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5731 = call float @dx.op.binary.f32(i32 35, float %5729, float %5730)  ; FMax(a,b)
  %5732 = fadd fast float %5727, 0xBFE4CCCCC0000000
  %5733 = fmul fast float %5732, 0x4006DB6DA0000000
  %5734 = call float @dx.op.unary.f32(i32 7, float %5733)  ; Saturate(value)
  %5735 = fmul fast float %5734, 2.000000e+00
  %5736 = fsub fast float 3.000000e+00, %5735
  %5737 = bitcast float %5650 to i32
  %5738 = ashr i32 %5737, 1
  %5739 = add nsw i32 %5738, 532487669
  %5740 = bitcast i32 %5739 to float
  %5741 = fsub fast float 1.000000e+00, %5740
  %5742 = bitcast float %5741 to i32
  %5743 = sub nsw i32 2129859010, %5742
  %5744 = bitcast i32 %5743 to float
  %5745 = fmul fast float %5744, 2.000000e+00
  %5746 = bitcast float %5651 to i32
  %5747 = ashr i32 %5746, 1
  %5748 = add nsw i32 %5747, 532487669
  %5749 = bitcast i32 %5748 to float
  %5750 = fsub fast float 1.000000e+00, %5749
  %5751 = bitcast float %5750 to i32
  %5752 = sub nsw i32 2129859010, %5751
  %5753 = bitcast i32 %5752 to float
  %5754 = fmul fast float %5753, 2.000000e+00
  %5755 = bitcast float %5652 to i32
  %5756 = ashr i32 %5755, 1
  %5757 = add nsw i32 %5756, 532487669
  %5758 = bitcast i32 %5757 to float
  %5759 = fsub fast float 1.000000e+00, %5758
  %5760 = bitcast float %5759 to i32
  %5761 = sub nsw i32 2129859010, %5760
  %5762 = bitcast i32 %5761 to float
  %5763 = fmul fast float %5762, 2.000000e+00
  %5764 = fsub fast float 0x4002A9FBE0000000, %5745
  %5765 = fadd fast float %5745, 0x3FD54FDF00000000
  %5766 = bitcast float %5765 to i32
  %5767 = sub nsw i32 2129859010, %5766
  %5768 = bitcast i32 %5767 to float
  %5769 = fmul fast float %5768, %5764
  %5770 = fmul fast float %5769, %5769
  %5771 = fsub fast float 0x4002A9FBE0000000, %5754
  %5772 = fadd fast float %5754, 0x3FD54FDF00000000
  %5773 = bitcast float %5772 to i32
  %5774 = sub nsw i32 2129859010, %5773
  %5775 = bitcast i32 %5774 to float
  %5776 = fmul fast float %5775, %5771
  %5777 = fmul fast float %5776, %5776
  %5778 = fsub fast float 0x4002A9FBE0000000, %5763
  %5779 = fadd fast float %5763, 0x3FD54FDF00000000
  %5780 = bitcast float %5779 to i32
  %5781 = sub nsw i32 2129859010, %5780
  %5782 = bitcast i32 %5781 to float
  %5783 = fmul fast float %5782, %5778
  %5784 = fmul fast float %5783, %5783
  %5785 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5770)  ; FMax(a,b)
  %5786 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5777)  ; FMax(a,b)
  %5787 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5784)  ; FMax(a,b)
  %5788 = fsub fast float 1.000000e+00, %5674
  %5789 = fadd fast float %5788, %5689
  %5790 = call float @dx.op.unary.f32(i32 7, float %5789)  ; Saturate(value)
  %5791 = fsub fast float 1.000000e+00, %5049
  %5792 = fmul fast float %5731, %5791
  %5793 = fmul fast float %5734, %5734
  %5794 = fmul fast float %5793, %5792
  %5795 = fmul fast float %5794, %5736
  %5796 = fmul fast float %5791, 0xBFE99999A0000000
  %5797 = fmul fast float %5796, %5676
  %5798 = fmul fast float %5797, %5693
  %5799 = fadd fast float %5798, 1.000000e+00
  %5800 = fadd fast float %5662, -1.000000e+00
  %5801 = fmul fast float %5799, %5800
  %5802 = fadd fast float %5801, 1.000000e+00
  %5803 = fsub fast float %5785, %5650
  %5804 = fsub fast float %5786, %5651
  %5805 = fsub fast float %5787, %5652
  %5806 = fmul fast float %5795, %5803
  %5807 = fmul fast float %5795, %5804
  %5808 = fmul fast float %5795, %5805
  %5809 = fadd fast float %5806, %5650
  %5810 = fadd fast float %5807, %5651
  %5811 = fadd fast float %5808, %5652
  %5812 = fsub fast float %118, %5656
  %5813 = fsub fast float %119, %5657
  %5814 = fsub fast float %120, %5658
  %5815 = fmul fast float %5795, %5812
  %5816 = fmul fast float %5795, %5813
  %5817 = fmul fast float %5795, %5814
  %5818 = fadd fast float %5815, %5656
  %5819 = fadd fast float %5816, %5657
  %5820 = fadd fast float %5817, %5658
  %5821 = fmul fast float %5795, %5790
  %5822 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5823 = fsub fast float 1.000000e+00, %5822
  %5824 = fmul fast float %5821, %5823
  %5825 = fadd fast float %5824, %5822
  %5826 = fsub fast float 1.000000e+00, %5663
  %5827 = fmul fast float %5795, %5826
  %5828 = fadd fast float %5827, %5663
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5818, float %5819, float %5820, float %5818, float %5819, float %5820)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = call float @dx.op.unary.f32(i32 25, float %5829)  ; Rsqrt(value)
  %5831 = fmul fast float %5818, %5830
  %5832 = fmul fast float %5819, %5830
  %5833 = fmul fast float %5820, %5830
  br label %5834

; <label>:5834                                    ; preds = %5665, %5649
  %5835 = phi float [ %5809, %5665 ], [ %5650, %5649 ]
  %5836 = phi float [ %5810, %5665 ], [ %5651, %5649 ]
  %5837 = phi float [ %5811, %5665 ], [ %5652, %5649 ]
  %5838 = phi float [ %5718, %5665 ], [ %5653, %5649 ]
  %5839 = phi float [ %5719, %5665 ], [ %5654, %5649 ]
  %5840 = phi float [ %5720, %5665 ], [ %5655, %5649 ]
  %5841 = phi float [ %5831, %5665 ], [ %5656, %5649 ]
  %5842 = phi float [ %5832, %5665 ], [ %5657, %5649 ]
  %5843 = phi float [ %5833, %5665 ], [ %5658, %5649 ]
  %5844 = phi float [ %5825, %5665 ], [ %5662, %5649 ]
  %5845 = phi float [ %5828, %5665 ], [ %5663, %5649 ]
  %5846 = icmp eq i32 %52, 0
  br i1 %5846, label %5877, label %5847

; <label>:5847                                    ; preds = %5834
  %5848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5849 = extractvalue %dx.types.CBufRet.f32 %5848, 2
  %5850 = extractvalue %dx.types.CBufRet.f32 %5848, 3
  %5851 = fmul fast float %5849, %111
  %5852 = fmul fast float %5850, %112
  %5853 = fmul fast float %5851, 1.024000e+03
  %5854 = fmul fast float %5852, 1.024000e+03
  %5855 = fadd fast float %5853, -5.120000e+02
  %5856 = fadd fast float %5854, -5.120000e+02
  %5857 = fmul fast float %5851, 0x4081BEDF00000000
  %5858 = fadd fast float %5857, 0xC071BEDF00000000
  %5859 = call float @dx.op.unary.f32(i32 22, float %5858)  ; Frc(value)
  %5860 = fmul fast float %5855, %5859
  %5861 = fadd fast float %5860, %5856
  %5862 = fmul fast float %5852, 0x4073BEBE20000000
  %5863 = fadd fast float %5862, 0xC063BEBE20000000
  %5864 = call float @dx.op.unary.f32(i32 22, float %5863)  ; Frc(value)
  %5865 = fmul fast float %5856, %5864
  %5866 = fadd fast float %5865, %5855
  %5867 = fmul fast float %5861, %5866
  %5868 = call float @dx.op.unary.f32(i32 22, float %5867)  ; Frc(value)
  %5869 = add i32 %318, 12
  %5870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5869, i32 undef)  ; BufferLoad(srv,index,wot)
  %5871 = extractvalue %dx.types.ResRet.i32 %5870, 0
  %5872 = and i32 %5871, 255
  %5873 = uitofp i32 %5872 to float
  %5874 = fmul fast float %5873, 0x3F70101020000000
  %5875 = fcmp fast olt float %5868, %5874
  br i1 %5875, label %5876, label %5877

; <label>:5876                                    ; preds = %5847
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %5877

; <label>:5877                                    ; preds = %5876, %5847, %5834
  %5878 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5879 = call float @dx.op.unary.f32(i32 25, float %5878)  ; Rsqrt(value)
  %5880 = fmul fast float %5879, %190
  %5881 = fmul fast float %5879, %191
  %5882 = fmul fast float %5879, %192
  %5883 = fsub fast float -0.000000e+00, %5880
  %5884 = fsub fast float -0.000000e+00, %5881
  %5885 = fsub fast float -0.000000e+00, %5882
  %5886 = select i1 %264, float 0.000000e+00, float %5837
  %5887 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %5883, float %5884, float %5885)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = call float @dx.op.dot3.f32(i32 55, float %5880, float %5881, float %5882, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5890 = fmul fast float %5889, 2.000000e+00
  %5891 = fmul fast float %5890, %5841
  %5892 = fmul fast float %5890, %5842
  %5893 = fmul fast float %5890, %5843
  %5894 = fsub fast float %5880, %5891
  %5895 = fsub fast float %5881, %5892
  %5896 = fsub fast float %5882, %5893
  %5897 = call float @dx.op.binary.f32(i32 36, float %5845, float 1.000000e+00)  ; FMin(a,b)
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = bitcast float %5898 to i32
  %5900 = ashr i32 %5899, 1
  %5901 = add nsw i32 %5900, 532487669
  %5902 = bitcast i32 %5901 to float
  %5903 = fsub fast float 1.000000e+00, %5844
  %5904 = call float @dx.op.binary.f32(i32 35, float %5903, float 0x3F847AE140000000)  ; FMax(a,b)
  %5905 = fmul fast float %5904, %5904
  %5906 = fmul fast float %5905, %5905
  %5907 = call float @dx.op.unary.f32(i32 7, float %5888)  ; Saturate(value)
  %5908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %44, float %5902, float %5906, float %5907, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5909 = extractvalue %dx.types.ResRet.f32 %5908, 0
  %5910 = fsub fast float 1.000000e+00, %5845
  %5911 = bitcast float %5910 to i32
  %5912 = sub nsw i32 2129859010, %5911
  %5913 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = fmul fast float %5913, 0x3FD20DD760000000
  %5915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5916 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5917 = fcmp fast oeq float %5916, 0.000000e+00
  %5918 = fcmp fast oeq float %5915, 0.000000e+00
  %5919 = or i1 %5918, %5917
  br i1 %5919, label %5949, label %5920

; <label>:5920                                    ; preds = %5877
  %5921 = fsub fast float -0.000000e+00, %81
  %5922 = fsub fast float -0.000000e+00, %79
  %5923 = call float @dx.op.unary.f32(i32 24, float %5916)  ; Sqrt(value)
  %5924 = fdiv fast float %5923, %5915
  %5925 = fcmp fast ogt float %5924, 0x3FFB6F8900000000
  %5926 = select i1 %5925, float 0x3FFB6F8900000000, float %5924
  %5927 = fmul fast float %5926, 0x3FE8A23460000000
  %5928 = call float @dx.op.unary.f32(i32 7, float %5927)  ; Saturate(value)
  %5929 = call float @dx.op.binary.f32(i32 35, float %5926, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5930 = fmul fast float %5928, %5915
  %5931 = fmul fast float %5929, 0x3FF279A740000000
  %5932 = fadd fast float %5931, -1.000000e+00
  %5933 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %80, float %5921, float %5922, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5934 = call float @dx.op.unary.f32(i32 25, float %5933)  ; Rsqrt(value)
  %5935 = fmul fast float %5934, %5921
  %5936 = fmul fast float %5934, %5922
  %5937 = fmul fast float %5934, %80
  %5938 = fmul fast float %5932, %5932
  %5939 = fsub fast float 1.000000e+00, %5938
  %5940 = fmul fast float %5929, 0x40005F8BE0000000
  %5941 = fsub fast float 0x400C5BF8A0000000, %5940
  %5942 = fdiv fast float %5930, %5941
  %5943 = fmul fast float %5942, 0x3FEE31C3C0000000
  %5944 = fmul fast float %5943, %5939
  %5945 = fmul fast float %5929, 0x3FDACB7480000000
  %5946 = fadd fast float %5945, 0xBFD7347680000000
  %5947 = fmul fast float %5946, %5942
  %5948 = fmul fast float %5947, %5939
  br label %5949

; <label>:5949                                    ; preds = %5920, %5877
  %5950 = phi float [ %5935, %5920 ], [ 0.000000e+00, %5877 ]
  %5951 = phi float [ %5936, %5920 ], [ 0.000000e+00, %5877 ]
  %5952 = phi float [ %5937, %5920 ], [ 0.000000e+00, %5877 ]
  %5953 = phi float [ %5944, %5920 ], [ 0.000000e+00, %5877 ]
  %5954 = phi float [ %5948, %5920 ], [ 0.000000e+00, %5877 ]
  %5955 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5956 = fmul fast float %5955, 0x3FDF454380000000
  %5957 = fmul fast float %5955, %5955
  %5958 = fmul fast float %5957, 0x3FEE471020000000
  %5959 = fadd fast float %5958, 0xBFD42F6020000000
  %5960 = fmul fast float %5915, 0x3FD20DD760000000
  %5961 = fmul fast float %5959, %5954
  %5962 = fadd fast float %5961, %5960
  %5963 = fmul fast float %5956, %5953
  %5964 = fadd fast float %5962, %5963
  %5965 = fsub fast float %5962, %5963
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5950, float %5951, float %5952, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = fmul fast float %5966, 0x3FDF454380000000
  %5968 = fmul fast float %5966, %5966
  %5969 = fmul fast float %5968, 0x3FEE471020000000
  %5970 = fadd fast float %5969, 0xBFD42F6020000000
  %5971 = call float @dx.op.dot3.f32(i32 55, float %5915, float %5953, float %5954, float 0x3FD20DD760000000, float %5967, float %5970)  ; Dot3(ax,ay,az,bx,by,bz)
  %5972 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5973 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5974 = fcmp fast oeq float %5973, 0.000000e+00
  %5975 = fcmp fast oeq float %5972, 0.000000e+00
  %5976 = or i1 %5975, %5974
  br i1 %5976, label %6006, label %5977

; <label>:5977                                    ; preds = %5949
  %5978 = fsub fast float -0.000000e+00, %77
  %5979 = fsub fast float -0.000000e+00, %75
  %5980 = call float @dx.op.unary.f32(i32 24, float %5973)  ; Sqrt(value)
  %5981 = fdiv fast float %5980, %5972
  %5982 = fcmp fast ogt float %5981, 0x3FFB6F8900000000
  %5983 = select i1 %5982, float 0x3FFB6F8900000000, float %5981
  %5984 = fmul fast float %5983, 0x3FE8A23460000000
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = call float @dx.op.binary.f32(i32 35, float %5983, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5987 = fmul fast float %5985, %5972
  %5988 = fmul fast float %5986, 0x3FF279A740000000
  %5989 = fadd fast float %5988, -1.000000e+00
  %5990 = call float @dx.op.dot3.f32(i32 55, float %5978, float %5979, float %76, float %5978, float %5979, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = call float @dx.op.unary.f32(i32 25, float %5990)  ; Rsqrt(value)
  %5992 = fmul fast float %5991, %5978
  %5993 = fmul fast float %5991, %5979
  %5994 = fmul fast float %5991, %76
  %5995 = fmul fast float %5989, %5989
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = fmul fast float %5986, 0x40005F8BE0000000
  %5998 = fsub fast float 0x400C5BF8A0000000, %5997
  %5999 = fdiv fast float %5987, %5998
  %6000 = fmul fast float %5999, 0x3FEE31C3C0000000
  %6001 = fmul fast float %6000, %5996
  %6002 = fmul fast float %5986, 0x3FDACB7480000000
  %6003 = fadd fast float %6002, 0xBFD7347680000000
  %6004 = fmul fast float %6003, %5999
  %6005 = fmul fast float %6004, %5996
  br label %6006

; <label>:6006                                    ; preds = %5977, %5949
  %6007 = phi float [ %5992, %5977 ], [ 0.000000e+00, %5949 ]
  %6008 = phi float [ %5993, %5977 ], [ 0.000000e+00, %5949 ]
  %6009 = phi float [ %5994, %5977 ], [ 0.000000e+00, %5949 ]
  %6010 = phi float [ %6001, %5977 ], [ 0.000000e+00, %5949 ]
  %6011 = phi float [ %6005, %5977 ], [ 0.000000e+00, %5949 ]
  %6012 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %6013 = fmul fast float %6012, 0x3FDF454380000000
  %6014 = fmul fast float %6012, %6012
  %6015 = fmul fast float %6014, 0x3FEE471020000000
  %6016 = fadd fast float %6015, 0xBFD42F6020000000
  %6017 = fmul fast float %5972, 0x3FD20DD760000000
  %6018 = fmul fast float %6016, %6011
  %6019 = fadd fast float %6018, %6017
  %6020 = fmul fast float %6013, %6010
  %6021 = fadd fast float %6019, %6020
  %6022 = fsub fast float %6019, %6020
  %6023 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6008, float %6009, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %6024 = fmul fast float %6023, 0x3FDF454380000000
  %6025 = fmul fast float %6023, %6023
  %6026 = fmul fast float %6025, 0x3FEE471020000000
  %6027 = fadd fast float %6026, 0xBFD42F6020000000
  %6028 = call float @dx.op.dot3.f32(i32 55, float %5972, float %6010, float %6011, float 0x3FD20DD760000000, float %6024, float %6027)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %6030 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %6031 = fcmp fast oeq float %6030, 0.000000e+00
  %6032 = fcmp fast oeq float %6029, 0.000000e+00
  %6033 = or i1 %6032, %6031
  br i1 %6033, label %6063, label %6034

; <label>:6034                                    ; preds = %6006
  %6035 = fsub fast float -0.000000e+00, %73
  %6036 = fsub fast float -0.000000e+00, %71
  %6037 = call float @dx.op.unary.f32(i32 24, float %6030)  ; Sqrt(value)
  %6038 = fdiv fast float %6037, %6029
  %6039 = fcmp fast ogt float %6038, 0x3FFB6F8900000000
  %6040 = select i1 %6039, float 0x3FFB6F8900000000, float %6038
  %6041 = fmul fast float %6040, 0x3FE8A23460000000
  %6042 = call float @dx.op.unary.f32(i32 7, float %6041)  ; Saturate(value)
  %6043 = call float @dx.op.binary.f32(i32 35, float %6040, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6044 = fmul fast float %6042, %6029
  %6045 = fmul fast float %6043, 0x3FF279A740000000
  %6046 = fadd fast float %6045, -1.000000e+00
  %6047 = call float @dx.op.dot3.f32(i32 55, float %6035, float %6036, float %72, float %6035, float %6036, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = call float @dx.op.unary.f32(i32 25, float %6047)  ; Rsqrt(value)
  %6049 = fmul fast float %6048, %6035
  %6050 = fmul fast float %6048, %6036
  %6051 = fmul fast float %6048, %72
  %6052 = fmul fast float %6046, %6046
  %6053 = fsub fast float 1.000000e+00, %6052
  %6054 = fmul fast float %6043, 0x40005F8BE0000000
  %6055 = fsub fast float 0x400C5BF8A0000000, %6054
  %6056 = fdiv fast float %6044, %6055
  %6057 = fmul fast float %6056, 0x3FEE31C3C0000000
  %6058 = fmul fast float %6057, %6053
  %6059 = fmul fast float %6043, 0x3FDACB7480000000
  %6060 = fadd fast float %6059, 0xBFD7347680000000
  %6061 = fmul fast float %6060, %6056
  %6062 = fmul fast float %6061, %6053
  br label %6063

; <label>:6063                                    ; preds = %6034, %6006
  %6064 = phi float [ %6049, %6034 ], [ 0.000000e+00, %6006 ]
  %6065 = phi float [ %6050, %6034 ], [ 0.000000e+00, %6006 ]
  %6066 = phi float [ %6051, %6034 ], [ 0.000000e+00, %6006 ]
  %6067 = phi float [ %6058, %6034 ], [ 0.000000e+00, %6006 ]
  %6068 = phi float [ %6062, %6034 ], [ 0.000000e+00, %6006 ]
  %6069 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %6070 = fmul fast float %6069, 0x3FDF454380000000
  %6071 = fmul fast float %6069, %6069
  %6072 = fmul fast float %6071, 0x3FEE471020000000
  %6073 = fadd fast float %6072, 0xBFD42F6020000000
  %6074 = fmul fast float %6029, 0x3FD20DD760000000
  %6075 = fmul fast float %6073, %6068
  %6076 = fadd fast float %6075, %6074
  %6077 = fmul fast float %6070, %6067
  %6078 = fadd fast float %6076, %6077
  %6079 = fsub fast float %6076, %6077
  %6080 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float %5894, float %5895, float %5896)  ; Dot3(ax,ay,az,bx,by,bz)
  %6081 = fmul fast float %6080, 0x3FDF454380000000
  %6082 = fmul fast float %6080, %6080
  %6083 = fmul fast float %6082, 0x3FEE471020000000
  %6084 = fadd fast float %6083, 0xBFD42F6020000000
  %6085 = call float @dx.op.dot3.f32(i32 55, float %6029, float %6067, float %6068, float 0x3FD20DD760000000, float %6081, float %6084)  ; Dot3(ax,ay,az,bx,by,bz)
  %6086 = call float @dx.op.binary.f32(i32 35, float %5964, float 0.000000e+00)  ; FMax(a,b)
  %6087 = call float @dx.op.binary.f32(i32 35, float %6021, float 0.000000e+00)  ; FMax(a,b)
  %6088 = call float @dx.op.binary.f32(i32 35, float %6078, float 0.000000e+00)  ; FMax(a,b)
  %6089 = call float @dx.op.binary.f32(i32 35, float %5965, float 0.000000e+00)  ; FMax(a,b)
  %6090 = call float @dx.op.binary.f32(i32 35, float %6022, float 0.000000e+00)  ; FMax(a,b)
  %6091 = call float @dx.op.binary.f32(i32 35, float %6079, float 0.000000e+00)  ; FMax(a,b)
  %6092 = call float @dx.op.binary.f32(i32 35, float %5971, float 0.000000e+00)  ; FMax(a,b)
  %6093 = call float @dx.op.binary.f32(i32 35, float %6028, float 0.000000e+00)  ; FMax(a,b)
  %6094 = call float @dx.op.binary.f32(i32 35, float %6085, float 0.000000e+00)  ; FMax(a,b)
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = call float @dx.op.binary.f32(i32 36, float %5838, float %6096)  ; FMin(a,b)
  %6098 = fmul fast float %6097, %5898
  %6099 = fsub fast float 1.000000e+00, %6098
  %6100 = bitcast float %6099 to i32
  %6101 = sub nsw i32 2129859010, %6100
  %6102 = bitcast i32 %6101 to float
  %6103 = call float @dx.op.binary.f32(i32 36, float %5839, float %6096)  ; FMin(a,b)
  %6104 = fmul fast float %6103, %5898
  %6105 = fsub fast float 1.000000e+00, %6104
  %6106 = bitcast float %6105 to i32
  %6107 = sub nsw i32 2129859010, %6106
  %6108 = bitcast i32 %6107 to float
  %6109 = call float @dx.op.binary.f32(i32 36, float %5840, float %6096)  ; FMin(a,b)
  %6110 = fmul fast float %6109, %5898
  %6111 = fsub fast float 1.000000e+00, %6110
  %6112 = bitcast float %6111 to i32
  %6113 = sub nsw i32 2129859010, %6112
  %6114 = bitcast i32 %6113 to float
  %6115 = fmul fast float %6086, %5897
  %6116 = fmul fast float %6115, %6102
  %6117 = fmul fast float %6087, %5897
  %6118 = fmul fast float %6117, %6108
  %6119 = fmul fast float %6088, %5897
  %6120 = fmul fast float %6119, %6114
  %6121 = call float @dx.op.binary.f32(i32 36, float %5835, float %6096)  ; FMin(a,b)
  %6122 = fmul fast float %6121, %5898
  %6123 = fsub fast float 1.000000e+00, %6122
  %6124 = bitcast float %6123 to i32
  %6125 = sub nsw i32 2129859010, %6124
  %6126 = bitcast i32 %6125 to float
  %6127 = call float @dx.op.binary.f32(i32 36, float %5836, float %6096)  ; FMin(a,b)
  %6128 = fmul fast float %6127, %5898
  %6129 = fsub fast float 1.000000e+00, %6128
  %6130 = bitcast float %6129 to i32
  %6131 = sub nsw i32 2129859010, %6130
  %6132 = bitcast i32 %6131 to float
  %6133 = call float @dx.op.binary.f32(i32 36, float %5886, float %6096)  ; FMin(a,b)
  %6134 = fmul fast float %6133, %5898
  %6135 = fsub fast float 1.000000e+00, %6134
  %6136 = bitcast float %6135 to i32
  %6137 = sub nsw i32 2129859010, %6136
  %6138 = bitcast i32 %6137 to float
  %6139 = fmul fast float %6092, %5897
  %6140 = fmul fast float %6139, %6126
  %6141 = fmul fast float %6093, %5897
  %6142 = fmul fast float %6141, %6132
  %6143 = fmul fast float %6094, %5897
  %6144 = fmul fast float %6143, %6138
  %6145 = call float @dx.op.dot3.f32(i32 55, float %6116, float %6118, float %6120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = select i1 %264, float 0.000000e+00, float %6116
  %6147 = select i1 %264, float %6145, float %6118
  %6148 = select i1 %264, float 0.000000e+00, float %6120
  %6149 = call float @dx.op.dot3.f32(i32 55, float %6089, float %6090, float %6091, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6150 = select i1 %264, float 0.000000e+00, float %6089
  %6151 = select i1 %264, float %6149, float %6090
  %6152 = select i1 %264, float 0.000000e+00, float %6091
  %6153 = call float @dx.op.dot3.f32(i32 55, float %6140, float %6142, float %6144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6154 = select i1 %264, float 0.000000e+00, float %6140
  %6155 = select i1 %264, float %6153, float %6142
  %6156 = select i1 %264, float 0.000000e+00, float %6144
  %6157 = fmul fast float %4201, %4201
  %6158 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6159 = fmul fast float %5888, 9.843750e-01
  %6160 = fmul fast float %5844, 9.843750e-01
  %6161 = fadd fast float %6159, 7.812500e-03
  %6162 = fadd fast float %6160, 7.812500e-03
  %6163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %44, float %6161, float %6162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6164 = extractvalue %dx.types.ResRet.f32 %6163, 0
  %6165 = extractvalue %dx.types.ResRet.f32 %6163, 1
  %6166 = extractvalue %dx.types.ResRet.f32 %6163, 2
  %6167 = extractvalue %dx.types.ResRet.f32 %6163, 3
  %6168 = fsub fast float 1.000000e+00, %6158
  %6169 = fsub fast float %6166, %6164
  %6170 = fsub fast float %6167, %6165
  %6171 = fmul fast float %6169, %6168
  %6172 = fmul fast float %6170, %6168
  %6173 = fadd fast float %6171, %6164
  %6174 = fadd fast float %6172, %6165
  %6175 = fmul fast float %6173, %5835
  %6176 = fmul fast float %6173, %5836
  %6177 = fmul fast float %6173, %5886
  %6178 = fadd fast float %6175, %6174
  %6179 = fadd fast float %6176, %6174
  %6180 = fadd fast float %6177, %6174
  %6181 = fcmp fast ogt float %4897, 0.000000e+00
  br i1 %6181, label %6182, label %6208

; <label>:6182                                    ; preds = %6063
  %6183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4897, float %5888, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 0
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 1
  %6186 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6187 = fadd fast float %6184, -5.000000e-01
  %6188 = fadd fast float %6185, -5.000000e-01
  %6189 = fadd fast float %6186, -5.000000e-01
  %6190 = fsub fast float 1.000000e+00, %5835
  %6191 = fsub fast float 1.000000e+00, %5836
  %6192 = fsub fast float 1.000000e+00, %5886
  %6193 = fmul fast float %5835, 4.000000e+00
  %6194 = fmul fast float %6193, %6190
  %6195 = fmul fast float %6194, %6187
  %6196 = fmul fast float %5836, 4.000000e+00
  %6197 = fmul fast float %6196, %6191
  %6198 = fmul fast float %6197, %6188
  %6199 = fmul fast float %5886, 4.000000e+00
  %6200 = fmul fast float %6199, %6192
  %6201 = fmul fast float %6200, %6189
  %6202 = fadd fast float %6195, %6178
  %6203 = fadd fast float %6198, %6179
  %6204 = fadd fast float %6201, %6180
  %6205 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6206 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6207 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  br label %6208

; <label>:6208                                    ; preds = %6182, %6063
  %6209 = phi float [ %6205, %6182 ], [ %6178, %6063 ]
  %6210 = phi float [ %6206, %6182 ], [ %6179, %6063 ]
  %6211 = phi float [ %6207, %6182 ], [ %6180, %6063 ]
  %6212 = call float @dx.op.binary.f32(i32 35, float %6210, float %6211)  ; FMax(a,b)
  %6213 = call float @dx.op.binary.f32(i32 35, float %6209, float %6212)  ; FMax(a,b)
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = fmul fast float %6213, %5844
  %6216 = fadd fast float %6215, %5844
  %6217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6218 = extractvalue %dx.types.CBufRet.f32 %6217, 2
  %6219 = extractvalue %dx.types.CBufRet.f32 %6217, 3
  %6220 = fmul fast float %6216, %6218
  %6221 = fadd fast float %6220, %6219
  %6222 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6223 = fsub fast float 1.000000e+00, %5909
  %6224 = fadd fast float %6223, %6222
  %6225 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6226 = fcmp fast olt float %6225, 1.000000e+00
  br i1 %6226, label %6227, label %6675

; <label>:6227                                    ; preds = %6208
  %6228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6229 = extractvalue %dx.types.CBufRet.f32 %6228, 2
  %6230 = extractvalue %dx.types.CBufRet.f32 %6228, 3
  %6231 = fmul fast float %6229, %111
  %6232 = fmul fast float %6230, %112
  %6233 = fptoui float %6231 to i32
  %6234 = fptoui float %6232 to i32
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6237 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6238 = extractvalue %dx.types.CBufRet.f32 %6235, 3
  %6239 = fadd fast float %98, -4.000000e+00
  %6240 = call float @dx.op.binary.f32(i32 35, float %6239, float 0.000000e+00)  ; FMax(a,b)
  %6241 = fadd fast float %6240, %6236
  %6242 = fmul fast float %6241, %6237
  %6243 = call float @dx.op.unary.f32(i32 23, float %6242)  ; Log(value)
  %6244 = fmul fast float %6243, %6238
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6247 = fmul fast float %6244, %6246
  %6248 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  %6249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6250 = extractvalue %dx.types.CBufRet.i32 %6249, 1
  %6251 = add i32 %6250, -1
  %6252 = uitofp i32 %6250 to float
  %6253 = fmul fast float %6252, %6248
  %6254 = fptoui float %6253 to i32
  %6255 = call i32 @dx.op.binary.i32(i32 40, i32 %6254, i32 %6251)  ; UMin(a,b)
  %6256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6257 = extractvalue %dx.types.CBufRet.i32 %6256, 2
  %6258 = extractvalue %dx.types.CBufRet.i32 %6256, 3
  %6259 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6234, i32 %6257, i32 %6233)  ; UMad(a,b,c)
  %6260 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6255, i32 %6258, i32 %6259)  ; UMad(a,b,c)
  %6261 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6262 = fptoui float %6261 to i32
  %6263 = lshr i32 %6262, 5
  %6264 = call i32 @dx.op.binary.i32(i32 40, i32 %6263, i32 8191)  ; UMin(a,b)
  br i1 false, label %6265, label %6272

; <label>:6265                                    ; preds = %6227
  %6266 = fadd fast float 0.000000e+00, %5896
  %6267 = call float @dx.op.dot3.f32(i32 55, float %5894, float %5895, float %6266, float %5894, float %5895, float %6266)  ; Dot3(ax,ay,az,bx,by,bz)
  %6268 = call float @dx.op.unary.f32(i32 25, float %6267)  ; Rsqrt(value)
  %6269 = fmul fast float %6268, %5894
  %6270 = fmul fast float %6268, %5895
  %6271 = fmul fast float %6266, %6268
  br label %6272

; <label>:6272                                    ; preds = %6265, %6227
  %6273 = phi float [ %6269, %6265 ], [ %5894, %6227 ]
  %6274 = phi float [ %6270, %6265 ], [ %5895, %6227 ]
  %6275 = phi float [ %6271, %6265 ], [ %5896, %6227 ]
  %6276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6277 = extractvalue %dx.types.CBufRet.i32 %6276, 2
  %6278 = add nsw i32 %6277, -1
  %6279 = call i32 @dx.op.binary.i32(i32 37, i32 %6278, i32 0)  ; IMax(a,b)
  %6280 = shl i32 %6264, 2
  %6281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %6280, i32 undef)  ; BufferLoad(srv,index,wot)
  %6282 = extractvalue %dx.types.ResRet.i32 %6281, 0
  %6283 = lshr i32 %6282, 16
  %6284 = and i32 %6282, 65535
  %6285 = lshr i32 %6282, 21
  %6286 = lshr i32 %6284, 5
  %6287 = call i32 @dx.op.binary.i32(i32 40, i32 %6286, i32 %6279)  ; UMin(a,b)
  %6288 = icmp ugt i32 %6285, %6287
  br i1 %6288, label %6651, label %6289

; <label>:6289                                    ; preds = %6272
  br label %6290

; <label>:6290                                    ; preds = %6643, %6289
  %6291 = phi float [ %6644, %6643 ], [ 0.000000e+00, %6289 ]
  %6292 = phi float [ %6645, %6643 ], [ 0.000000e+00, %6289 ]
  %6293 = phi float [ %6646, %6643 ], [ 0.000000e+00, %6289 ]
  %6294 = phi float [ %6647, %6643 ], [ 1.000000e+00, %6289 ]
  %6295 = phi i32 [ %6648, %6643 ], [ %6285, %6289 ]
  %6296 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.i32 %6296, 2
  %6298 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6260, i32 %6297, i32 %6295)  ; UMad(a,b,c)
  %6299 = shl i32 %6298, 2
  %6300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6299, i32 undef)  ; BufferLoad(srv,index,wot)
  %6301 = extractvalue %dx.types.ResRet.i32 %6300, 0
  %6302 = shl i32 %6295, 5
  %6303 = sub nsw i32 %6283, %6302
  %6304 = call i32 @dx.op.binary.i32(i32 37, i32 %6303, i32 0)  ; IMax(a,b)
  %6305 = call i32 @dx.op.binary.i32(i32 38, i32 %6304, i32 31)  ; IMin(a,b)
  %6306 = sub nsw i32 1, %6283
  %6307 = add nsw i32 %6306, %6284
  %6308 = call i32 @dx.op.binary.i32(i32 37, i32 %6307, i32 0)  ; IMax(a,b)
  %6309 = call i32 @dx.op.binary.i32(i32 38, i32 %6308, i32 32)  ; IMin(a,b)
  %6310 = and i32 %6309, 31
  %6311 = shl i32 -1, %6310
  %6312 = xor i32 %6311, -1
  %6313 = and i32 %6305, 31
  %6314 = shl i32 %6312, %6313
  %6315 = icmp eq i32 %6309, 32
  %6316 = select i1 %6315, i32 -1, i32 %6314
  %6317 = and i32 %6316, %6301
  %6318 = icmp eq i32 %6317, 0
  br i1 %6318, label %6643, label %6319

; <label>:6319                                    ; preds = %6290
  br label %6320

; <label>:6320                                    ; preds = %6426, %6319
  %6321 = phi float [ %6427, %6426 ], [ %6291, %6319 ]
  %6322 = phi float [ %6428, %6426 ], [ %6292, %6319 ]
  %6323 = phi float [ %6429, %6426 ], [ %6293, %6319 ]
  %6324 = phi float [ %6430, %6426 ], [ %6294, %6319 ]
  %6325 = phi i32 [ %6330, %6426 ], [ %6317, %6319 ]
  %6326 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6325)  ; FirstbitLo(value)
  %6327 = add i32 %6326, %6302
  %6328 = and i32 %6326, 31
  %6329 = shl i32 1, %6328
  %6330 = xor i32 %6329, %6325
  %6331 = mul i32 %6327, 72
  %6332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6331, i32 undef)  ; BufferLoad(srv,index,wot)
  %6333 = extractvalue %dx.types.ResRet.f32 %6332, 0
  %6334 = extractvalue %dx.types.ResRet.f32 %6332, 1
  %6335 = extractvalue %dx.types.ResRet.f32 %6332, 2
  %6336 = add i32 %6331, 12
  %6337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6336, i32 undef)  ; BufferLoad(srv,index,wot)
  %6338 = extractvalue %dx.types.ResRet.i32 %6337, 0
  %6339 = add i32 %6331, 16
  %6340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6339, i32 undef)  ; BufferLoad(srv,index,wot)
  %6341 = extractvalue %dx.types.ResRet.f32 %6340, 0
  %6342 = extractvalue %dx.types.ResRet.f32 %6340, 1
  %6343 = extractvalue %dx.types.ResRet.f32 %6340, 2
  %6344 = add i32 %6331, 28
  %6345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6344, i32 undef)  ; BufferLoad(srv,index,wot)
  %6346 = extractvalue %dx.types.ResRet.f32 %6345, 0
  %6347 = add i32 %6331, 32
  %6348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6347, i32 undef)  ; BufferLoad(srv,index,wot)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.ResRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.ResRet.f32 %6348, 2
  %6352 = extractvalue %dx.types.ResRet.f32 %6348, 3
  %6353 = add i32 %6331, 48
  %6354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6353, i32 undef)  ; BufferLoad(srv,index,wot)
  %6355 = extractvalue %dx.types.ResRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.ResRet.f32 %6354, 1
  %6357 = add i32 %6331, 56
  %6358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6357, i32 undef)  ; BufferLoad(srv,index,wot)
  %6359 = extractvalue %dx.types.ResRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.ResRet.f32 %6358, 1
  %6361 = add i32 %6331, 64
  %6362 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6361, i32 undef)  ; BufferLoad(srv,index,wot)
  %6363 = extractvalue %dx.types.ResRet.f32 %6362, 0
  %6364 = extractvalue %dx.types.ResRet.f32 %6362, 1
  %6365 = mul i32 %6327, 60
  %6366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6365, i32 undef)  ; BufferLoad(srv,index,wot)
  %6367 = extractvalue %dx.types.ResRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.ResRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.ResRet.f32 %6366, 2
  %6370 = add i32 %6365, 12
  %6371 = add i32 %6365, 48
  %6372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6371, i32 undef)  ; BufferLoad(srv,index,wot)
  %6373 = extractvalue %dx.types.ResRet.f32 %6372, 0
  %6374 = extractvalue %dx.types.ResRet.f32 %6372, 1
  %6375 = extractvalue %dx.types.ResRet.f32 %6372, 2
  %6376 = and i32 %6338, 32767
  %6377 = bitcast float %6333 to i32
  %6378 = icmp eq i32 %6377, -1
  %6379 = bitcast float %6334 to i32
  %6380 = and i32 %6338, 32768
  %6381 = icmp ne i32 %6380, 0
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 0
  %6384 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6385 = extractvalue %dx.types.CBufRet.f32 %6382, 2
  %6386 = fsub fast float %6367, %6383
  %6387 = fsub fast float %6368, %6384
  %6388 = fsub fast float %6369, %6385
  %6389 = fsub fast float %190, %6386
  %6390 = fsub fast float %191, %6387
  %6391 = fsub fast float %192, %6388
  %6392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6370, i32 undef)  ; BufferLoad(srv,index,wot)
  %6393 = extractvalue %dx.types.ResRet.f32 %6392, 0
  %6394 = extractvalue %dx.types.ResRet.f32 %6392, 1
  %6395 = extractvalue %dx.types.ResRet.f32 %6392, 2
  %6396 = call float @dx.op.dot3.f32(i32 55, float %6389, float %6390, float %6391, float %6393, float %6394, float %6395)  ; Dot3(ax,ay,az,bx,by,bz)
  %6397 = add i32 %6365, 24
  %6398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6397, i32 undef)  ; BufferLoad(srv,index,wot)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.ResRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.ResRet.f32 %6398, 2
  %6402 = call float @dx.op.dot3.f32(i32 55, float %6389, float %6390, float %6391, float %6399, float %6400, float %6401)  ; Dot3(ax,ay,az,bx,by,bz)
  %6403 = add i32 %6365, 36
  %6404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6403, i32 undef)  ; BufferLoad(srv,index,wot)
  %6405 = extractvalue %dx.types.ResRet.f32 %6404, 0
  %6406 = extractvalue %dx.types.ResRet.f32 %6404, 1
  %6407 = extractvalue %dx.types.ResRet.f32 %6404, 2
  %6408 = call float @dx.op.dot3.f32(i32 55, float %6389, float %6390, float %6391, float %6405, float %6406, float %6407)  ; Dot3(ax,ay,az,bx,by,bz)
  %6409 = call float @dx.op.unary.f32(i32 6, float %6396)  ; FAbs(value)
  %6410 = call float @dx.op.unary.f32(i32 6, float %6402)  ; FAbs(value)
  %6411 = call float @dx.op.unary.f32(i32 6, float %6408)  ; FAbs(value)
  %6412 = fsub fast float %6373, %6409
  %6413 = fsub fast float %6374, %6410
  %6414 = fsub fast float %6375, %6411
  %6415 = fmul fast float %6412, %6341
  %6416 = fmul fast float %6413, %6342
  %6417 = fmul fast float %6414, %6343
  %6418 = call float @dx.op.binary.f32(i32 36, float %6416, float %6417)  ; FMin(a,b)
  %6419 = call float @dx.op.binary.f32(i32 36, float %6415, float %6418)  ; FMin(a,b)
  %6420 = call float @dx.op.unary.f32(i32 7, float %6419)  ; Saturate(value)
  %6421 = call float @dx.op.binary.f32(i32 36, float %6324, float %6420)  ; FMin(a,b)
  %6422 = uitofp i1 %6381 to float
  %6423 = fsub fast float 1.000000e+00, %6422
  %6424 = fmul fast float %6421, %6423
  %6425 = fcmp fast ogt float %6424, 0.000000e+00
  br i1 %6425, label %6432, label %6426

; <label>:6426                                    ; preds = %6574, %6320
  %6427 = phi float [ %6638, %6574 ], [ %6321, %6320 ]
  %6428 = phi float [ %6639, %6574 ], [ %6322, %6320 ]
  %6429 = phi float [ %6640, %6574 ], [ %6323, %6320 ]
  %6430 = phi float [ %6641, %6574 ], [ %6324, %6320 ]
  %6431 = icmp eq i32 %6325, %6329
  br i1 %6431, label %6642, label %6320

; <label>:6432                                    ; preds = %6320
  br i1 %6378, label %6490, label %6433

; <label>:6433                                    ; preds = %6432
  %6434 = fsub fast float -0.000000e+00, %6393
  %6435 = fsub fast float -0.000000e+00, %6394
  %6436 = fsub fast float -0.000000e+00, %6395
  %6437 = call float @dx.op.dot3.f32(i32 55, float %6273, float %6274, float %6275, float %6434, float %6435, float %6436)  ; Dot3(ax,ay,az,bx,by,bz)
  %6438 = fsub fast float -0.000000e+00, %6437
  %6439 = call float @dx.op.dot3.f32(i32 55, float %6389, float %6390, float %6391, float %6434, float %6435, float %6436)  ; Dot3(ax,ay,az,bx,by,bz)
  %6440 = fadd fast float %6439, %6356
  %6441 = fadd fast float %6355, %6439
  %6442 = fsub fast float -0.000000e+00, %6441
  %6443 = fcmp ogt float %6437, -0.000000e+00
  %6444 = select i1 %6443, float %6442, float %6440
  %6445 = call float @dx.op.unary.f32(i32 6, float %6438)  ; FAbs(value)
  %6446 = fdiv fast float 1.000000e+00, %6445
  %6447 = fmul fast float %6444, %6446
  %6448 = call float @dx.op.binary.f32(i32 35, float %6447, float 0.000000e+00)  ; FMax(a,b)
  %6449 = fsub fast float -0.000000e+00, %6399
  %6450 = fsub fast float -0.000000e+00, %6400
  %6451 = fsub fast float -0.000000e+00, %6401
  %6452 = call float @dx.op.dot3.f32(i32 55, float %6273, float %6274, float %6275, float %6449, float %6450, float %6451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6453 = fsub fast float -0.000000e+00, %6452
  %6454 = call float @dx.op.dot3.f32(i32 55, float %6389, float %6390, float %6391, float %6449, float %6450, float %6451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6455 = fadd fast float %6454, %6360
  %6456 = fadd fast float %6359, %6454
  %6457 = fsub fast float -0.000000e+00, %6456
  %6458 = fcmp ogt float %6452, -0.000000e+00
  %6459 = select i1 %6458, float %6457, float %6455
  %6460 = call float @dx.op.unary.f32(i32 6, float %6453)  ; FAbs(value)
  %6461 = fdiv fast float 1.000000e+00, %6460
  %6462 = fmul fast float %6459, %6461
  %6463 = call float @dx.op.binary.f32(i32 35, float %6462, float 0.000000e+00)  ; FMax(a,b)
  %6464 = fsub fast float -0.000000e+00, %6405
  %6465 = fsub fast float -0.000000e+00, %6406
  %6466 = fsub fast float -0.000000e+00, %6407
  %6467 = call float @dx.op.dot3.f32(i32 55, float %6273, float %6274, float %6275, float %6464, float %6465, float %6466)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = fsub fast float -0.000000e+00, %6467
  %6469 = call float @dx.op.dot3.f32(i32 55, float %6389, float %6390, float %6391, float %6464, float %6465, float %6466)  ; Dot3(ax,ay,az,bx,by,bz)
  %6470 = fadd fast float %6469, %6364
  %6471 = fadd fast float %6363, %6469
  %6472 = fsub fast float -0.000000e+00, %6471
  %6473 = fcmp ogt float %6467, -0.000000e+00
  %6474 = select i1 %6473, float %6472, float %6470
  %6475 = call float @dx.op.unary.f32(i32 6, float %6468)  ; FAbs(value)
  %6476 = fdiv fast float 1.000000e+00, %6475
  %6477 = fmul fast float %6474, %6476
  %6478 = call float @dx.op.binary.f32(i32 35, float %6477, float 0.000000e+00)  ; FMax(a,b)
  %6479 = call float @dx.op.binary.f32(i32 36, float %6463, float %6478)  ; FMin(a,b)
  %6480 = call float @dx.op.binary.f32(i32 36, float %6448, float %6479)  ; FMin(a,b)
  %6481 = fmul fast float %6480, %6273
  %6482 = fmul fast float %6480, %6274
  %6483 = fmul fast float %6480, %6275
  %6484 = fadd fast float %6481, %190
  %6485 = fadd fast float %6482, %191
  %6486 = fadd fast float %6483, %192
  %6487 = fsub fast float %6484, %6333
  %6488 = fsub fast float %6485, %6334
  %6489 = fsub fast float %6486, %6335
  br label %6497

; <label>:6490                                    ; preds = %6432
  %6491 = fmul fast float %6273, 8.096000e+03
  %6492 = fmul fast float %6274, 8.096000e+03
  %6493 = fmul fast float %6275, 8.096000e+03
  %6494 = fadd fast float %6491, %190
  %6495 = fadd fast float %6492, %191
  %6496 = fadd fast float %6493, %192
  br label %6497

; <label>:6497                                    ; preds = %6490, %6433
  %6498 = phi float [ %6273, %6490 ], [ %6487, %6433 ]
  %6499 = phi float [ %6274, %6490 ], [ %6488, %6433 ]
  %6500 = phi float [ %6275, %6490 ], [ %6489, %6433 ]
  %6501 = phi float [ %6494, %6490 ], [ %6484, %6433 ]
  %6502 = phi float [ %6495, %6490 ], [ %6485, %6433 ]
  %6503 = phi float [ %6496, %6490 ], [ %6486, %6433 ]
  %6504 = fcmp fast olt float %6352, 1.000000e+00
  br i1 %6504, label %6505, label %6536, !dx.controlflow.hints !93

; <label>:6505                                    ; preds = %6497
  %6506 = fmul fast float %6500, %6350
  %6507 = fmul fast float %6499, %6351
  %6508 = fsub fast float %6506, %6507
  %6509 = fmul fast float %6498, %6351
  %6510 = fmul fast float %6500, %6349
  %6511 = fsub fast float %6509, %6510
  %6512 = fmul fast float %6499, %6349
  %6513 = fmul fast float %6498, %6350
  %6514 = fsub fast float %6512, %6513
  %6515 = fmul fast float %6508, 2.000000e+00
  %6516 = fmul fast float %6511, 2.000000e+00
  %6517 = fmul fast float %6514, 2.000000e+00
  %6518 = fmul fast float %6515, %6352
  %6519 = fmul fast float %6516, %6352
  %6520 = fmul fast float %6517, %6352
  %6521 = fmul fast float %6517, %6350
  %6522 = fmul fast float %6516, %6351
  %6523 = fmul fast float %6515, %6351
  %6524 = fmul fast float %6517, %6349
  %6525 = fmul fast float %6516, %6349
  %6526 = fmul fast float %6515, %6350
  %6527 = fadd fast float %6521, %6498
  %6528 = fadd fast float %6527, %6518
  %6529 = fsub fast float %6528, %6522
  %6530 = fsub fast float %6499, %6524
  %6531 = fadd fast float %6530, %6519
  %6532 = fadd fast float %6531, %6523
  %6533 = fadd fast float %6520, %6500
  %6534 = fsub fast float %6533, %6526
  %6535 = fadd fast float %6534, %6525
  br label %6536

; <label>:6536                                    ; preds = %6505, %6497
  %6537 = phi float [ %6529, %6505 ], [ %6498, %6497 ]
  %6538 = phi float [ %6532, %6505 ], [ %6499, %6497 ]
  %6539 = phi float [ %6535, %6505 ], [ %6500, %6497 ]
  br i1 %6378, label %6571, label %6540

; <label>:6540                                    ; preds = %6536
  %6541 = fmul fast float %5844, 0x400187C840000000
  %6542 = fadd fast float %6541, 0xC00EFC2120000000
  %6543 = fmul fast float %6542, %5844
  %6544 = fadd fast float %6543, 0x3FE5D16340000000
  %6545 = fmul fast float %6544, %5844
  %6546 = fadd fast float %6545, 1.000000e+00
  %6547 = call float @dx.op.unary.f32(i32 7, float %6546)  ; Saturate(value)
  %6548 = fsub fast float %6501, %190
  %6549 = fsub fast float %6502, %191
  %6550 = fsub fast float %6503, %192
  %6551 = fsub fast float %6501, %6333
  %6552 = fsub fast float %6502, %6334
  %6553 = fsub fast float %6503, %6335
  %6554 = call float @dx.op.dot3.f32(i32 55, float %6548, float %6549, float %6550, float %6548, float %6549, float %6550)  ; Dot3(ax,ay,az,bx,by,bz)
  %6555 = call float @dx.op.dot3.f32(i32 55, float %6551, float %6552, float %6553, float %6551, float %6552, float %6553)  ; Dot3(ax,ay,az,bx,by,bz)
  %6556 = fadd fast float %6555, 0x3EE4F8B580000000
  %6557 = fdiv fast float %6554, %6556
  %6558 = bitcast float %6557 to i32
  %6559 = ashr i32 %6558, 1
  %6560 = add nsw i32 %6559, 532487669
  %6561 = bitcast i32 %6560 to float
  %6562 = fmul fast float %6561, %6547
  %6563 = call float @dx.op.unary.f32(i32 7, float %6562)  ; Saturate(value)
  %6564 = fmul fast float %6563, 0x4009981AE0000000
  %6565 = fsub fast float 0x40111BBD80000000, %6564
  %6566 = fmul fast float %6565, %6563
  %6567 = fadd fast float %6566, 0xC0009F6020000000
  %6568 = fmul fast float %6567, %6563
  %6569 = fadd fast float %6568, 1.000000e+00
  %6570 = call float @dx.op.unary.f32(i32 7, float %6569)  ; Saturate(value)
  br label %6574

; <label>:6571                                    ; preds = %6536
  %6572 = icmp ne i32 %6379, -1
  %6573 = zext i1 %6572 to i32
  br label %6574

; <label>:6574                                    ; preds = %6571, %6540
  %6575 = phi float [ %5844, %6571 ], [ %6570, %6540 ]
  %6576 = phi i32 [ %6573, %6571 ], [ 0, %6540 ]
  %6577 = fmul float %6575, 5.000000e+00
  %6578 = fsub float 5.000000e+00, %6577
  %6579 = icmp ne i32 %6576, 0
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 3
  %6582 = fadd fast float %6581, %6578
  %6583 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6582)  ; FMax(a,b)
  %6584 = call float @dx.op.unary.f32(i32 6, float %6537)  ; FAbs(value)
  %6585 = call float @dx.op.unary.f32(i32 6, float %6538)  ; FAbs(value)
  %6586 = fadd fast float %6585, %6584
  %6587 = call float @dx.op.unary.f32(i32 6, float %6539)  ; FAbs(value)
  %6588 = fadd fast float %6586, %6587
  %6589 = fcmp fast oeq float %6588, 0.000000e+00
  %6590 = fdiv fast float 1.000000e+00, %6588
  %6591 = select i1 %6589, float 1.000000e+00, float %6590
  %6592 = fmul fast float %6591, %6537
  %6593 = fmul fast float %6591, %6538
  %6594 = call float @dx.op.unary.f32(i32 6, float %6593)  ; FAbs(value)
  %6595 = call float @dx.op.unary.f32(i32 6, float %6592)  ; FAbs(value)
  %6596 = fsub fast float 1.000000e+00, %6594
  %6597 = fsub fast float 1.000000e+00, %6595
  %6598 = fcmp fast oge float %6592, 0.000000e+00
  %6599 = fcmp fast oge float %6593, 0.000000e+00
  %6600 = select i1 %6598, float 1.000000e+00, float -1.000000e+00
  %6601 = select i1 %6599, float 1.000000e+00, float -1.000000e+00
  %6602 = fcmp fast ole float %6539, 0.000000e+00
  %6603 = fmul fast float %6600, %6596
  %6604 = fmul fast float %6601, %6597
  %6605 = select i1 %6602, float %6603, float %6592
  %6606 = select i1 %6602, float %6604, float %6593
  %6607 = fmul fast float %6605, 5.000000e-01
  %6608 = fmul fast float %6606, 5.000000e-01
  %6609 = fadd fast float %6607, 5.000000e-01
  %6610 = fadd fast float %6608, 5.000000e-01
  %6611 = uitofp i32 %6376 to float
  %6612 = call float @dx.op.binary.f32(i32 36, float %6583, float 3.000000e+00)  ; FMin(a,b)
  %6613 = fadd fast float %6612, 2.000000e+00
  %6614 = call float @dx.op.unary.f32(i32 21, float %6613)  ; Exp(value)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6580, 1
  %6616 = fmul fast float %6615, %6614
  %6617 = fmul fast float %6616, 2.000000e+00
  %6618 = fsub fast float 1.000000e+00, %6617
  %6619 = fmul fast float %6609, %6618
  %6620 = fmul fast float %6610, %6618
  %6621 = fadd fast float %6619, %6616
  %6622 = fadd fast float %6620, %6616
  %6623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %42, float %6621, float %6622, float %6611, float undef, i32 0, i32 0, i32 undef, float %6583)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6624 = extractvalue %dx.types.ResRet.f32 %6623, 0
  %6625 = extractvalue %dx.types.ResRet.f32 %6623, 1
  %6626 = extractvalue %dx.types.ResRet.f32 %6623, 2
  %6627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6627, 3
  %6629 = fmul fast float %6628, %6346
  %6630 = call float @dx.op.binary.f32(i32 36, float %5914, float %6629)  ; FMin(a,b)
  %6631 = select i1 %6579, float %6630, float %6629
  %6632 = fmul fast float %6624, %6424
  %6633 = fmul fast float %6632, %6631
  %6634 = fmul fast float %6625, %6424
  %6635 = fmul fast float %6634, %6631
  %6636 = fmul fast float %6626, %6424
  %6637 = fmul fast float %6636, %6631
  %6638 = fadd fast float %6633, %6321
  %6639 = fadd fast float %6635, %6322
  %6640 = fadd fast float %6637, %6323
  %6641 = fsub fast float %6324, %6424
  br label %6426

; <label>:6642                                    ; preds = %6426
  br label %6643

; <label>:6643                                    ; preds = %6642, %6290
  %6644 = phi float [ %6291, %6290 ], [ %6427, %6642 ]
  %6645 = phi float [ %6292, %6290 ], [ %6428, %6642 ]
  %6646 = phi float [ %6293, %6290 ], [ %6429, %6642 ]
  %6647 = phi float [ %6294, %6290 ], [ %6430, %6642 ]
  %6648 = add i32 %6295, 1
  %6649 = icmp ugt i32 %6648, %6287
  br i1 %6649, label %6650, label %6290, !llvm.loop !94

; <label>:6650                                    ; preds = %6643
  br label %6651

; <label>:6651                                    ; preds = %6650, %6272
  %6652 = phi float [ 0.000000e+00, %6272 ], [ %6644, %6650 ]
  %6653 = phi float [ 0.000000e+00, %6272 ], [ %6645, %6650 ]
  %6654 = phi float [ 0.000000e+00, %6272 ], [ %6646, %6650 ]
  %6655 = call float @dx.op.dot3.f32(i32 55, float %6652, float %6653, float %6654, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6656 = select i1 %264, float 0.000000e+00, float %6652
  %6657 = select i1 %264, float %6655, float %6653
  %6658 = select i1 %264, float 0.000000e+00, float %6654
  %6659 = fcmp fast olt float %6225, 0.000000e+00
  %6660 = call float @dx.op.unary.f32(i32 6, float %6225)  ; FAbs(value)
  %6661 = fmul fast float %6660, %6154
  %6662 = fmul fast float %6660, %6155
  %6663 = fmul fast float %6660, %6156
  %6664 = select i1 %6659, float %6154, float %6661
  %6665 = select i1 %6659, float %6155, float %6662
  %6666 = select i1 %6659, float %6156, float %6663
  %6667 = fsub fast float 1.000000e+00, %6660
  %6668 = call float @dx.op.unary.f32(i32 7, float %6667)  ; Saturate(value)
  %6669 = fmul fast float %6668, %6656
  %6670 = fmul fast float %6668, %6657
  %6671 = fmul fast float %6668, %6658
  %6672 = fadd fast float %6664, %6669
  %6673 = fadd fast float %6665, %6670
  %6674 = fadd fast float %6666, %6671
  br label %6675

; <label>:6675                                    ; preds = %6651, %6208
  %6676 = phi float [ %6154, %6208 ], [ %6672, %6651 ]
  %6677 = phi float [ %6155, %6208 ], [ %6673, %6651 ]
  %6678 = phi float [ %6156, %6208 ], [ %6674, %6651 ]
  %6679 = call float @dx.op.dot3.f32(i32 55, float %5838, float %5839, float %5840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6680 = fcmp fast ogt float %6679, 0x3E7FF19E20000000
  %6681 = fdiv fast float 1.000000e+00, %6679
  %6682 = select i1 %6680, float %6681, float 0.000000e+00
  %6683 = fmul fast float %6682, %5838
  %6684 = fmul fast float %6682, %5839
  %6685 = fmul fast float %6682, %5840
  %6686 = fadd fast float %6683, -1.000000e+00
  %6687 = fadd fast float %6684, -1.000000e+00
  %6688 = fadd fast float %6685, -1.000000e+00
  %6689 = fmul fast float %6686, 5.000000e-01
  %6690 = fmul fast float %6687, 5.000000e-01
  %6691 = fmul fast float %6688, 5.000000e-01
  %6692 = fadd fast float %6689, 1.000000e+00
  %6693 = fadd fast float %6690, 1.000000e+00
  %6694 = fadd fast float %6691, 1.000000e+00
  %6695 = call float @dx.op.binary.f32(i32 35, float %5888, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6696 = fdiv fast float %4201, %6695
  %6697 = fcmp fast olt float %4946, 1.270000e+02
  %6698 = fcmp fast olt float %4947, 1.270000e+02
  %6699 = fcmp fast olt float %4948, 1.270000e+02
  %6700 = fmul fast float %4946, 0xBFF7154760000000
  %6701 = fmul fast float %6700, %6696
  %6702 = fmul fast float %4947, 0xBFF7154760000000
  %6703 = fmul fast float %6702, %6696
  %6704 = fmul fast float %4948, 0xBFF7154760000000
  %6705 = fmul fast float %6704, %6696
  %6706 = call float @dx.op.unary.f32(i32 21, float %6701)  ; Exp(value)
  %6707 = call float @dx.op.unary.f32(i32 21, float %6703)  ; Exp(value)
  %6708 = call float @dx.op.unary.f32(i32 21, float %6705)  ; Exp(value)
  %6709 = call float @dx.op.unary.f32(i32 7, float %6706)  ; Saturate(value)
  %6710 = call float @dx.op.unary.f32(i32 7, float %6707)  ; Saturate(value)
  %6711 = call float @dx.op.unary.f32(i32 7, float %6708)  ; Saturate(value)
  %6712 = select i1 %6697, float %6709, float 0.000000e+00
  %6713 = select i1 %6698, float %6710, float 0.000000e+00
  %6714 = select i1 %6699, float %6711, float 0.000000e+00
  %6715 = fmul fast float %6712, %6214
  %6716 = fmul fast float %6713, %6214
  %6717 = fmul fast float %6714, %6214
  %6718 = fadd fast float %6715, -1.000000e+00
  %6719 = fadd fast float %6716, -1.000000e+00
  %6720 = fadd fast float %6717, -1.000000e+00
  %6721 = fmul fast float %6718, %4894
  %6722 = fmul fast float %6719, %4894
  %6723 = fmul fast float %6720, %4894
  %6724 = fmul fast float %6676, %6209
  %6725 = fmul fast float %6677, %6210
  %6726 = fmul fast float %6678, %6211
  %6727 = fsub fast float 1.000000e+00, %5888
  %6728 = bitcast float %6727 to i32
  %6729 = sitofp i32 %6728 to float
  %6730 = fmul fast float %6729, 5.000000e+00
  %6731 = fadd fast float %6730, 0xC1EFBF8940000000
  %6732 = fptosi float %6731 to i32
  %6733 = bitcast i32 %6732 to float
  %6734 = fmul fast float %6733, %4898
  %6735 = fmul fast float %6146, %6734
  %6736 = fmul fast float %6735, %6214
  %6737 = fmul fast float %6736, %6692
  %6738 = fmul fast float %6147, %6734
  %6739 = fmul fast float %6738, %6214
  %6740 = fmul fast float %6739, %6693
  %6741 = fmul fast float %6148, %6734
  %6742 = fmul fast float %6741, %6214
  %6743 = fmul fast float %6742, %6694
  %6744 = fadd fast float %6724, %4884
  %6745 = fadd fast float %6744, %6737
  %6746 = fmul fast float %6745, %4894
  %6747 = fadd fast float %6725, %4885
  %6748 = fadd fast float %6747, %6740
  %6749 = fmul fast float %6748, %4894
  %6750 = fadd fast float %6726, %4886
  %6751 = fadd fast float %6750, %6743
  %6752 = fmul fast float %6751, %4894
  %6753 = fmul fast float %5836, 0x4012D0A400000000
  %6754 = fadd fast float %6723, 1.000000e+00
  %6755 = fadd fast float %6722, 1.000000e+00
  %6756 = fadd fast float %6721, 1.000000e+00
  %6757 = fmul fast float %6214, %6148
  %6758 = fmul fast float %6214, %6147
  %6759 = fmul fast float %6214, %6146
  %6760 = fmul fast float %5903, %4894
  %6761 = fsub fast float 1.000000e+00, %6760
  %6762 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6763 = fsub fast float 1.000000e+00, %6762
  %6764 = fadd fast float %6753, 0x3FDB6377A0000000
  %6765 = fmul fast float %6763, %6764
  %6766 = call float @dx.op.dot3.f32(i32 55, float %5659, float %5660, float %5661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6767 = fadd fast float %6765, %6766
  %6768 = call float @dx.op.unary.f32(i32 7, float %6767)  ; Saturate(value)
  %6769 = call float @dx.op.binary.f32(i32 35, float %6768, float 0x3F847AE140000000)  ; FMax(a,b)
  %6770 = fmul fast float %6769, %6769
  %6771 = fmul fast float %6770, %6770
  %6772 = fmul fast float %6771, 0xC00A935000000000
  %6773 = call float @dx.op.unary.f32(i32 21, float %6772)  ; Exp(value)
  %6774 = fsub fast float 1.000000e+00, %6773
  %6775 = fmul fast float %6756, %6150
  %6776 = fmul fast float %6775, %6774
  %6777 = fmul fast float %6755, %6151
  %6778 = fmul fast float %6777, %6774
  %6779 = fmul fast float %6754, %6152
  %6780 = fmul fast float %6779, %6774
  %6781 = fadd fast float %6776, %6759
  %6782 = fmul fast float %6781, %4894
  %6783 = fadd fast float %6778, %6758
  %6784 = fmul fast float %6783, %4894
  %6785 = fadd fast float %6780, %6757
  %6786 = fmul fast float %6785, %4894
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 3
  %6789 = fcmp fast oeq float %6788, 0.000000e+00
  br i1 %6789, label %8555, label %6790

; <label>:6790                                    ; preds = %6675
  %6791 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6792 = extractvalue %dx.types.CBufRet.f32 %6787, 1
  %6793 = extractvalue %dx.types.CBufRet.f32 %6787, 2
  %6794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6795 = extractvalue %dx.types.CBufRet.f32 %6794, 0
  %6796 = extractvalue %dx.types.CBufRet.f32 %6794, 1
  %6797 = extractvalue %dx.types.CBufRet.f32 %6794, 2
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = extractvalue %dx.types.CBufRet.f32 %6798, 1
  %6801 = call float @dx.op.dot3.f32(i32 55, float %6795, float %6796, float %6797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6802 = select i1 %264, float %6799, float %6795
  %6803 = select i1 %264, float %6801, float %6796
  %6804 = select i1 %264, float %6800, float %6797
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 2
  %6807 = fmul fast float %6806, %118
  %6808 = fmul fast float %6806, %119
  %6809 = fmul fast float %6806, %120
  %6810 = fadd fast float %6807, %190
  %6811 = fadd fast float %6808, %191
  %6812 = fadd fast float %6809, %192
  %6813 = fcmp fast olt float %6788, 0.000000e+00
  br i1 %6813, label %8071, label %6814

; <label>:6814                                    ; preds = %6790
  %6815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6816 = extractvalue %dx.types.CBufRet.f32 %6815, 0
  %6817 = extractvalue %dx.types.CBufRet.f32 %6815, 1
  %6818 = extractvalue %dx.types.CBufRet.f32 %6815, 2
  %6819 = extractvalue %dx.types.CBufRet.f32 %6815, 3
  %6820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6821 = extractvalue %dx.types.CBufRet.f32 %6820, 0
  %6822 = extractvalue %dx.types.CBufRet.f32 %6820, 1
  %6823 = extractvalue %dx.types.CBufRet.f32 %6820, 2
  %6824 = extractvalue %dx.types.CBufRet.f32 %6820, 3
  %6825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6826 = extractvalue %dx.types.CBufRet.f32 %6825, 0
  %6827 = extractvalue %dx.types.CBufRet.f32 %6825, 1
  %6828 = extractvalue %dx.types.CBufRet.f32 %6825, 2
  %6829 = extractvalue %dx.types.CBufRet.f32 %6825, 3
  %6830 = fmul fast float %6816, %6810
  %6831 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %6817, float %6830)  ; FMad(a,b,c)
  %6832 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %6818, float %6831)  ; FMad(a,b,c)
  %6833 = fadd fast float %6832, %6819
  %6834 = fmul fast float %6821, %6810
  %6835 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %6822, float %6834)  ; FMad(a,b,c)
  %6836 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %6823, float %6835)  ; FMad(a,b,c)
  %6837 = fadd fast float %6836, %6824
  %6838 = fmul fast float %6826, %6810
  %6839 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %6827, float %6838)  ; FMad(a,b,c)
  %6840 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %6828, float %6839)  ; FMad(a,b,c)
  %6841 = fadd fast float %6840, %6829
  %6842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6843 = extractvalue %dx.types.CBufRet.f32 %6842, 0
  %6844 = fcmp fast une float %6843, 0.000000e+00
  %6845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6846 = extractvalue %dx.types.CBufRet.f32 %6845, 0
  %6847 = extractvalue %dx.types.CBufRet.f32 %6845, 1
  %6848 = extractvalue %dx.types.CBufRet.f32 %6845, 3
  %6849 = fmul fast float %6848, %6833
  %6850 = fmul fast float %6848, %6837
  %6851 = fadd fast float %6849, %6846
  %6852 = fadd fast float %6850, %6847
  %6853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6854 = extractvalue %dx.types.CBufRet.f32 %6853, 0
  %6855 = extractvalue %dx.types.CBufRet.f32 %6853, 1
  %6856 = extractvalue %dx.types.CBufRet.f32 %6853, 3
  %6857 = fmul fast float %6856, %6833
  %6858 = fmul fast float %6856, %6837
  %6859 = fadd fast float %6857, %6854
  %6860 = fadd fast float %6858, %6855
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6863 = fsub fast float %6862, %6841
  %6864 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6865 = fmul fast float %6863, %6864
  %6866 = fsub fast float 1.000000e+00, %6865
  %6867 = call float @dx.op.unary.f32(i32 7, float %6866)  ; Saturate(value)
  br i1 %6844, label %6928, label %6868

; <label>:6868                                    ; preds = %6814
  %6869 = extractvalue %dx.types.CBufRet.f32 %6853, 2
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6872 = fadd fast float %6871, %6869
  %6873 = fcmp fast ogt float %6872, 0.000000e+00
  br i1 %6873, label %6874, label %6898

; <label>:6874                                    ; preds = %6868
  %6875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6876 = extractvalue %dx.types.CBufRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.CBufRet.f32 %6875, 1
  %6878 = fsub fast float %6859, %6876
  %6879 = fsub fast float %6860, %6877
  %6880 = fcmp fast olt float %6878, 0.000000e+00
  %6881 = fcmp fast olt float %6879, 0.000000e+00
  %6882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6883 = extractvalue %dx.types.CBufRet.f32 %6882, 0
  %6884 = extractvalue %dx.types.CBufRet.f32 %6882, 1
  %6885 = extractvalue %dx.types.CBufRet.f32 %6882, 2
  %6886 = extractvalue %dx.types.CBufRet.f32 %6882, 3
  %6887 = select i1 %6880, float %6883, float %6885
  %6888 = select i1 %6881, float %6884, float %6886
  %6889 = fmul fast float %6887, %6878
  %6890 = fmul fast float %6888, %6879
  %6891 = call float @dx.op.unary.f32(i32 6, float %6889)  ; FAbs(value)
  %6892 = call float @dx.op.unary.f32(i32 6, float %6890)  ; FAbs(value)
  %6893 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6894 = call float @dx.op.binary.f32(i32 35, float %6891, float %6892)  ; FMax(a,b)
  %6895 = fsub fast float %6893, %6894
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6897 = fmul fast float %6896, %6867
  br label %6898

; <label>:6898                                    ; preds = %6874, %6868
  %6899 = phi float [ %6897, %6874 ], [ 0.000000e+00, %6868 ]
  %6900 = extractvalue %dx.types.CBufRet.f32 %6845, 2
  %6901 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6902 = fadd fast float %6901, %6900
  %6903 = fcmp fast ogt float %6902, 0.000000e+00
  br i1 %6903, label %6904, label %6928

; <label>:6904                                    ; preds = %6898
  %6905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6906 = extractvalue %dx.types.CBufRet.f32 %6905, 0
  %6907 = extractvalue %dx.types.CBufRet.f32 %6905, 1
  %6908 = fsub fast float %6851, %6906
  %6909 = fsub fast float %6852, %6907
  %6910 = fcmp fast olt float %6908, 0.000000e+00
  %6911 = fcmp fast olt float %6909, 0.000000e+00
  %6912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6913 = extractvalue %dx.types.CBufRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.CBufRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.CBufRet.f32 %6912, 2
  %6916 = extractvalue %dx.types.CBufRet.f32 %6912, 3
  %6917 = select i1 %6910, float %6913, float %6915
  %6918 = select i1 %6911, float %6914, float %6916
  %6919 = fmul fast float %6917, %6908
  %6920 = fmul fast float %6918, %6909
  %6921 = call float @dx.op.unary.f32(i32 6, float %6919)  ; FAbs(value)
  %6922 = call float @dx.op.unary.f32(i32 6, float %6920)  ; FAbs(value)
  %6923 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6924 = call float @dx.op.binary.f32(i32 35, float %6921, float %6922)  ; FMax(a,b)
  %6925 = fsub fast float %6923, %6924
  %6926 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  %6927 = fmul fast float %6926, %6867
  br label %6928

; <label>:6928                                    ; preds = %6904, %6898, %6814
  %6929 = phi float [ 0.000000e+00, %6814 ], [ %6927, %6904 ], [ 0.000000e+00, %6898 ]
  %6930 = phi float [ 0.000000e+00, %6814 ], [ %6899, %6904 ], [ %6899, %6898 ]
  %6931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6932 = extractvalue %dx.types.CBufRet.f32 %6931, 1
  %6933 = call float @dx.op.unary.f32(i32 7, float %6932)  ; Saturate(value)
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.CBufRet.f32 %6934, 1
  %6937 = fsub fast float %6833, %6935
  %6938 = fsub fast float %6837, %6936
  %6939 = fcmp fast olt float %6937, 0.000000e+00
  %6940 = fcmp fast olt float %6938, 0.000000e+00
  %6941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6942 = extractvalue %dx.types.CBufRet.f32 %6941, 0
  %6943 = extractvalue %dx.types.CBufRet.f32 %6941, 1
  %6944 = extractvalue %dx.types.CBufRet.f32 %6941, 2
  %6945 = extractvalue %dx.types.CBufRet.f32 %6941, 3
  %6946 = select i1 %6939, float %6942, float %6944
  %6947 = select i1 %6940, float %6943, float %6945
  %6948 = fmul fast float %6946, %6937
  %6949 = fmul fast float %6947, %6938
  %6950 = call float @dx.op.unary.f32(i32 6, float %6948)  ; FAbs(value)
  %6951 = call float @dx.op.unary.f32(i32 6, float %6949)  ; FAbs(value)
  %6952 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6953 = call float @dx.op.binary.f32(i32 35, float %6950, float %6951)  ; FMax(a,b)
  %6954 = fsub fast float %6952, %6953
  %6955 = call float @dx.op.unary.f32(i32 7, float %6954)  ; Saturate(value)
  %6956 = call float @dx.op.binary.f32(i32 36, float %6955, float %6933)  ; FMin(a,b)
  %6957 = fmul fast float %6956, %6867
  %6958 = fsub fast float %6929, %6957
  %6959 = fsub fast float %6930, %6929
  %6960 = fsub fast float %6959, %6957
  %6961 = call float @dx.op.binary.f32(i32 35, float %6929, float %6930)  ; FMax(a,b)
  %6962 = call float @dx.op.binary.f32(i32 35, float %6957, float %6961)  ; FMax(a,b)
  %6963 = fcmp fast olt float %6962, 1.000000e+00
  br i1 %6963, label %6964, label %7362, !dx.controlflow.hints !96

; <label>:6964                                    ; preds = %6928
  %6965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6966 = extractvalue %dx.types.CBufRet.f32 %6965, 0
  %6967 = fcmp fast une float %6966, 0.000000e+00
  br i1 %6967, label %6968, label %7362, !dx.controlflow.hints !97

; <label>:6968                                    ; preds = %6964
  %6969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6970 = extractvalue %dx.types.CBufRet.f32 %6969, 0
  %6971 = extractvalue %dx.types.CBufRet.f32 %6969, 1
  %6972 = extractvalue %dx.types.CBufRet.f32 %6969, 2
  %6973 = extractvalue %dx.types.CBufRet.f32 %6969, 3
  %6974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6975 = extractvalue %dx.types.CBufRet.f32 %6974, 0
  %6976 = extractvalue %dx.types.CBufRet.f32 %6974, 1
  %6977 = extractvalue %dx.types.CBufRet.f32 %6974, 2
  %6978 = extractvalue %dx.types.CBufRet.f32 %6974, 3
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %6983 = extractvalue %dx.types.CBufRet.f32 %6979, 3
  %6984 = fmul fast float %6970, %6810
  %6985 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %6971, float %6984)  ; FMad(a,b,c)
  %6986 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %6972, float %6985)  ; FMad(a,b,c)
  %6987 = fadd fast float %6986, %6973
  %6988 = fmul fast float %6975, %6810
  %6989 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %6976, float %6988)  ; FMad(a,b,c)
  %6990 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %6977, float %6989)  ; FMad(a,b,c)
  %6991 = fadd fast float %6990, %6978
  %6992 = fmul fast float %6980, %6810
  %6993 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %6981, float %6992)  ; FMad(a,b,c)
  %6994 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %6982, float %6993)  ; FMad(a,b,c)
  %6995 = fadd fast float %6994, %6983
  %6996 = fcmp fast oge float %6987, 1.000000e+00
  %6997 = fcmp fast oge float %6991, 1.000000e+00
  %6998 = or i1 %6996, %6997
  %6999 = fcmp fast olt float %6987, 0.000000e+00
  %7000 = fcmp fast olt float %6991, 0.000000e+00
  %7001 = or i1 %6999, %7000
  %7002 = or i1 %6998, %7001
  br i1 %7002, label %7362, label %7003, !dx.controlflow.hints !98

; <label>:7003                                    ; preds = %6968
  %7004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7005 = extractvalue %dx.types.CBufRet.f32 %7004, 0
  %7006 = extractvalue %dx.types.CBufRet.f32 %7004, 1
  %7007 = extractvalue %dx.types.CBufRet.f32 %7004, 2
  %7008 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7009 = extractvalue %dx.types.CBufRet.i32 %7008, 2
  %7010 = uitofp i32 %7009 to float
  %7011 = extractvalue %dx.types.CBufRet.i32 %7008, 3
  %7012 = uitofp i32 %7011 to float
  %7013 = extractvalue %dx.types.CBufRet.f32 %7004, 3
  %7014 = fmul fast float %7013, 2.000000e+00
  %7015 = fsub fast float %6987, %7005
  %7016 = fsub fast float %6991, %7006
  %7017 = fmul fast float %7014, %7015
  %7018 = fmul fast float %7014, %7016
  %7019 = fdiv fast float 1.000000e+00, %6793
  %7020 = fmul fast float %7018, %7019
  %7021 = call float @dx.op.unary.f32(i32 6, float %7020)  ; FAbs(value)
  %7022 = fmul fast float %7007, %6812
  %7023 = fmul fast float %7022, %7014
  %7024 = call float @dx.op.unary.f32(i32 6, float %7023)  ; FAbs(value)
  %7025 = call float @dx.op.unary.f32(i32 6, float %7017)  ; FAbs(value)
  %7026 = call float @dx.op.binary.f32(i32 35, float %7024, float %7021)  ; FMax(a,b)
  %7027 = call float @dx.op.binary.f32(i32 35, float %7025, float %7026)  ; FMax(a,b)
  %7028 = fmul fast float %7027, 2.000000e+00
  %7029 = call float @dx.op.unary.f32(i32 23, float %7028)  ; Log(value)
  %7030 = call float @dx.op.binary.f32(i32 35, float %7029, float %7010)  ; FMax(a,b)
  %7031 = call float @dx.op.unary.f32(i32 22, float %7030)  ; Frc(value)
  %7032 = fadd fast float %7031, 0xBFEA666660000000
  %7033 = fmul fast float %7032, 8.000000e+00
  %7034 = call float @dx.op.unary.f32(i32 7, float %7033)  ; Saturate(value)
  %7035 = call float @dx.op.unary.f32(i32 27, float %7030)  ; Round_ni(value)
  %7036 = fadd fast float %7035, %7034
  %7037 = call float @dx.op.binary.f32(i32 36, float %7036, float %7012)  ; FMin(a,b)
  %7038 = call float @dx.op.unary.f32(i32 27, float %7037)  ; Round_ni(value)
  %7039 = fsub fast float -0.000000e+00, %7038
  %7040 = call float @dx.op.unary.f32(i32 21, float %7039)  ; Exp(value)
  %7041 = fmul fast float %7040, %7014
  %7042 = fmul fast float %7041, %6987
  %7043 = fmul fast float %7041, %6991
  %7044 = fmul fast float %7042, 2.500000e-01
  %7045 = fmul fast float %7043, 2.500000e-01
  %7046 = fadd fast float %7044, 5.000000e-01
  %7047 = fadd fast float %7045, 5.000000e-01
  %7048 = fsub fast float %7012, %7010
  %7049 = fptoui float %7048 to i32
  %7050 = add i32 %7049, 320
  %7051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7050)  ; CBufferLoadLegacy(handle,regIndex)
  %7052 = extractvalue %dx.types.CBufRet.f32 %7051, 0
  %7053 = extractvalue %dx.types.CBufRet.f32 %7051, 1
  %7054 = fcmp fast une float %7037, %7012
  %7055 = fsub fast float %6987, %7052
  %7056 = fsub fast float %6991, %7053
  %7057 = call float @dx.op.unary.f32(i32 6, float %7055)  ; FAbs(value)
  %7058 = call float @dx.op.unary.f32(i32 6, float %7056)  ; FAbs(value)
  %7059 = fmul fast float %7057, %7041
  %7060 = fmul fast float %7058, %7041
  %7061 = fcmp fast olt float %7059, 1.000000e+00
  %7062 = fcmp fast olt float %7060, 1.000000e+00
  %7063 = and i1 %7061, %7062
  %7064 = or i1 %7054, %7063
  br i1 %7064, label %7065, label %7362, !dx.controlflow.hints !99

; <label>:7065                                    ; preds = %7003
  %7066 = fmul fast float %7043, 5.000000e-01
  %7067 = fmul fast float %7042, 5.000000e-01
  %7068 = fadd fast float %7066, 5.000000e-01
  %7069 = fadd fast float %7067, 5.000000e-01
  %7070 = sitofp i32 %7009 to float
  %7071 = fsub fast float %7037, %7070
  %7072 = call float @dx.op.unary.f32(i32 27, float %7071)  ; Round_ni(value)
  %7073 = call float @dx.op.unary.f32(i32 22, float %7037)  ; Frc(value)
  %7074 = call float @dx.op.unary.f32(i32 22, float %7069)  ; Frc(value)
  %7075 = call float @dx.op.unary.f32(i32 22, float %7068)  ; Frc(value)
  %7076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %7074, float %7075, float %7072, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7077 = extractvalue %dx.types.ResRet.f32 %7076, 0
  %7078 = extractvalue %dx.types.ResRet.f32 %7076, 1
  %7079 = extractvalue %dx.types.ResRet.f32 %7076, 2
  %7080 = extractvalue %dx.types.ResRet.f32 %7076, 3
  %7081 = fcmp fast ogt float %7073, 0.000000e+00
  br i1 %7081, label %7082, label %7103, !dx.controlflow.hints !100

; <label>:7082                                    ; preds = %7065
  %7083 = fadd fast float %7072, 1.000000e+00
  %7084 = call float @dx.op.unary.f32(i32 22, float %7046)  ; Frc(value)
  %7085 = call float @dx.op.unary.f32(i32 22, float %7047)  ; Frc(value)
  %7086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %43, float %7084, float %7085, float %7083, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7087 = extractvalue %dx.types.ResRet.f32 %7086, 0
  %7088 = extractvalue %dx.types.ResRet.f32 %7086, 1
  %7089 = extractvalue %dx.types.ResRet.f32 %7086, 2
  %7090 = extractvalue %dx.types.ResRet.f32 %7086, 3
  %7091 = fsub fast float %7087, %7077
  %7092 = fsub fast float %7088, %7078
  %7093 = fsub fast float %7089, %7079
  %7094 = fsub fast float %7090, %7080
  %7095 = fmul fast float %7091, %7073
  %7096 = fmul fast float %7092, %7073
  %7097 = fmul fast float %7093, %7073
  %7098 = fmul fast float %7094, %7073
  %7099 = fadd fast float %7095, %7077
  %7100 = fadd fast float %7096, %7078
  %7101 = fadd fast float %7097, %7079
  %7102 = fadd fast float %7098, %7080
  br label %7103

; <label>:7103                                    ; preds = %7082, %7065
  %7104 = phi float [ %7099, %7082 ], [ %7077, %7065 ]
  %7105 = phi float [ %7100, %7082 ], [ %7078, %7065 ]
  %7106 = phi float [ %7101, %7082 ], [ %7079, %7065 ]
  %7107 = phi float [ %7102, %7082 ], [ %7080, %7065 ]
  %7108 = fadd fast float %7104, -5.000000e-01
  %7109 = fadd fast float %7106, -5.000000e-01
  %7110 = fmul fast float %7108, 0xBFD5555560000000
  %7111 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7109, float %7110)  ; FMad(a,b,c)
  %7112 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7105, float 0.000000e+00)  ; FMad(a,b,c)
  %7113 = fadd fast float %7112, %7107
  %7114 = fmul fast float %7108, -7.500000e-01
  %7115 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7109, float %7114)  ; FMad(a,b,c)
  %7116 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7105, float 0.000000e+00)  ; FMad(a,b,c)
  %7117 = fadd fast float %7116, %7107
  %7118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7119 = extractvalue %dx.types.CBufRet.f32 %7118, 0
  %7120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7121 = extractvalue %dx.types.CBufRet.f32 %7120, 0
  %7122 = extractvalue %dx.types.CBufRet.f32 %7120, 1
  %7123 = extractvalue %dx.types.CBufRet.f32 %7120, 2
  %7124 = extractvalue %dx.types.CBufRet.f32 %7120, 3
  %7125 = fsub fast float %7121, %7111
  %7126 = fsub fast float %7122, %7113
  %7127 = fsub fast float %7123, %7115
  %7128 = fsub fast float %7124, %7117
  %7129 = fmul fast float %7125, %7119
  %7130 = fmul fast float %7126, %7119
  %7131 = fmul fast float %7127, %7119
  %7132 = fmul fast float %7128, %7119
  %7133 = fadd fast float %7129, %7111
  %7134 = fadd fast float %7130, %7113
  %7135 = fadd fast float %7131, %7115
  %7136 = fadd fast float %7132, %7117
  %7137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7138 = extractvalue %dx.types.ResRet.i32 %7137, 0
  %7139 = and i32 %7138, 536870911
  %7140 = uitofp i32 %7139 to float
  %7141 = fmul fast float %7140, %6987
  %7142 = fmul fast float %7140, %6991
  %7143 = fptoui float %7141 to i32
  %7144 = fptoui float %7142 to i32
  %7145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7146 = extractvalue %dx.types.ResRet.i32 %7145, 0
  %7147 = and i32 %7146, 31
  %7148 = lshr i32 %7143, %7147
  %7149 = lshr i32 %7144, %7147
  %7150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7151 = extractvalue %dx.types.ResRet.i32 %7150, 0
  %7152 = and i32 %7151, 31
  %7153 = shl i32 1, %7152
  %7154 = call i32 @dx.op.binary.i32(i32 40, i32 %7153, i32 4)  ; UMin(a,b)
  %7155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7156 = extractvalue %dx.types.ResRet.i32 %7155, 0
  %7157 = extractvalue %dx.types.ResRet.i32 %7155, 1
  %7158 = icmp eq i32 %7154, 0
  br i1 %7158, label %7200, label %7159

; <label>:7159                                    ; preds = %7103
  br label %7160

; <label>:7160                                    ; preds = %7188, %7159
  %7161 = phi i32 [ %7191, %7188 ], [ 0, %7159 ]
  %7162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7163 = extractvalue %dx.types.ResRet.i32 %7162, 0
  %7164 = lshr i32 %7163, 16
  %7165 = and i32 %7164, 31
  %7166 = shl i32 %7149, %7165
  %7167 = add i32 %7166, %7148
  %7168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7169 = extractvalue %dx.types.ResRet.i32 %7168, 0
  %7170 = and i32 %7169, 31
  %7171 = shl i32 %7167, %7170
  %7172 = add i32 %7171, %7161
  %7173 = shl i32 %7172, 2
  %7174 = add i32 %7173, 32
  %7175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7174, i32 undef)  ; BufferLoad(srv,index,wot)
  %7176 = extractvalue %dx.types.ResRet.i32 %7175, 0
  %7177 = icmp slt i32 %7176, 0
  %7178 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7161
  %7179 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7161
  %7180 = bitcast float* %7178 to i32*
  %7181 = bitcast float* %7179 to i32*
  br i1 %7177, label %7182, label %7188

; <label>:7182                                    ; preds = %7160
  %7183 = and i32 %7176, 1073741823
  %7184 = add nuw nsw i32 %7183, 20
  %7185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7184, i32 undef)  ; BufferLoad(srv,index,wot)
  %7186 = extractvalue %dx.types.ResRet.i32 %7185, 0
  %7187 = extractvalue %dx.types.ResRet.i32 %7185, 1
  br label %7188

; <label>:7188                                    ; preds = %7182, %7160
  %7189 = phi i32 [ %7186, %7182 ], [ %7156, %7160 ]
  %7190 = phi i32 [ %7187, %7182 ], [ %7157, %7160 ]
  store i32 %7189, i32* %7180, align 4
  store i32 %7190, i32* %7181, align 4
  %7191 = add nuw i32 %7161, 1
  %7192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.i32 %7192, 2
  %7194 = icmp eq i32 %7193, 0
  %7195 = icmp ugt i32 %7176, -1073741825
  %7196 = and i1 %7195, %7194
  %7197 = icmp ult i32 %7191, %7154
  %7198 = and i1 %7196, %7197
  br i1 %7198, label %7160, label %7199

; <label>:7199                                    ; preds = %7188
  br label %7200

; <label>:7200                                    ; preds = %7199, %7103
  %7201 = phi i32 [ 0, %7103 ], [ %7191, %7199 ]
  %7202 = extractvalue %dx.types.CBufRet.f32 %6965, 2
  %7203 = fptoui float %7202 to i32
  %7204 = icmp eq i32 %7203, 0
  br i1 %7204, label %7256, label %7205

; <label>:7205                                    ; preds = %7200
  br label %7206

; <label>:7206                                    ; preds = %7251, %7205
  %7207 = phi i32 [ %7252, %7251 ], [ %7201, %7205 ]
  %7208 = phi i32 [ %7253, %7251 ], [ 0, %7205 ]
  %7209 = lshr i32 %7208, 2
  %7210 = and i32 %7208, 3
  %7211 = add nuw nsw i32 %7209, 83
  %7212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %7211)  ; CBufferLoadLegacy(handle,regIndex)
  %7213 = extractvalue %dx.types.CBufRet.i32 %7212, 0
  %7214 = extractvalue %dx.types.CBufRet.i32 %7212, 1
  %7215 = extractvalue %dx.types.CBufRet.i32 %7212, 2
  %7216 = extractvalue %dx.types.CBufRet.i32 %7212, 3
  %7217 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %7213, i32* %7217, align 4
  %7218 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %7214, i32* %7218, align 4
  %7219 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %7215, i32* %7219, align 4
  %7220 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %7216, i32* %7220, align 4
  %7221 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %7210
  %7222 = load i32, i32* %7221, align 4, !tbaa !101, !noalias !105
  %7223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7224 = extractvalue %dx.types.ResRet.i32 %7223, 0
  %7225 = lshr i32 %7224, 16
  %7226 = and i32 %7225, 31
  %7227 = shl i32 %7149, %7226
  %7228 = add i32 %7227, %7148
  %7229 = shl i32 %7228, 2
  %7230 = add i32 %7229, %7222
  %7231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7230, i32 undef)  ; BufferLoad(srv,index,wot)
  %7232 = extractvalue %dx.types.ResRet.i32 %7231, 0
  %7233 = icmp eq i32 %7232, 0
  br i1 %7233, label %7251, label %7234

; <label>:7234                                    ; preds = %7206
  %7235 = icmp slt i32 %7232, 0
  %7236 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7207
  %7237 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7207
  %7238 = bitcast float* %7236 to i32*
  %7239 = bitcast float* %7237 to i32*
  br i1 %7235, label %7240, label %7247

; <label>:7240                                    ; preds = %7234
  %7241 = and i32 %7232, 1073741823
  %7242 = add i32 %7222, 20
  %7243 = add i32 %7242, %7241
  %7244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7243, i32 undef)  ; BufferLoad(srv,index,wot)
  %7245 = extractvalue %dx.types.ResRet.i32 %7244, 0
  %7246 = extractvalue %dx.types.ResRet.i32 %7244, 1
  br label %7247

; <label>:7247                                    ; preds = %7240, %7234
  %7248 = phi i32 [ %7245, %7240 ], [ %7156, %7234 ]
  %7249 = phi i32 [ %7246, %7240 ], [ %7157, %7234 ]
  store i32 %7248, i32* %7238, align 4
  store i32 %7249, i32* %7239, align 4
  %7250 = add i32 %7207, 1
  br label %7251

; <label>:7251                                    ; preds = %7247, %7206
  %7252 = phi i32 [ %7207, %7206 ], [ %7250, %7247 ]
  %7253 = add nuw i32 %7208, 1
  %7254 = icmp eq i32 %7253, %7203
  br i1 %7254, label %7255, label %7206

; <label>:7255                                    ; preds = %7251
  br label %7256

; <label>:7256                                    ; preds = %7255, %7200
  %7257 = phi i32 [ %7201, %7200 ], [ %7252, %7255 ]
  %7258 = icmp eq i32 %7257, 1
  %7259 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7260 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7258, label %7261, label %7264

; <label>:7261                                    ; preds = %7256
  %7262 = load float, float* %7259, align 4
  %7263 = load float, float* %7260, align 4
  br label %7291

; <label>:7264                                    ; preds = %7256
  %7265 = load float, float* %7259, align 4
  %7266 = load float, float* %7260, align 4
  %7267 = fdiv fast float 1.000000e+00, %7266
  %7268 = fsub fast float %7265, %7267
  %7269 = icmp ugt i32 %7257, 1
  br i1 %7269, label %7270, label %7286

; <label>:7270                                    ; preds = %7264
  br label %7271

; <label>:7271                                    ; preds = %7271, %7270
  %7272 = phi float [ %7281, %7271 ], [ %7268, %7270 ]
  %7273 = phi float [ %7282, %7271 ], [ %7265, %7270 ]
  %7274 = phi i32 [ %7283, %7271 ], [ 1, %7270 ]
  %7275 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7274
  %7276 = load float, float* %7275, align 4
  %7277 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7274
  %7278 = load float, float* %7277, align 4
  %7279 = fdiv fast float 1.000000e+00, %7278
  %7280 = fsub fast float %7276, %7279
  %7281 = call float @dx.op.binary.f32(i32 36, float %7272, float %7280)  ; FMin(a,b)
  %7282 = call float @dx.op.binary.f32(i32 35, float %7273, float %7276)  ; FMax(a,b)
  %7283 = add nuw i32 %7274, 1
  %7284 = icmp eq i32 %7283, %7257
  br i1 %7284, label %7285, label %7271

; <label>:7285                                    ; preds = %7271
  br label %7286

; <label>:7286                                    ; preds = %7285, %7264
  %7287 = phi float [ %7268, %7264 ], [ %7281, %7285 ]
  %7288 = phi float [ %7265, %7264 ], [ %7282, %7285 ]
  %7289 = fsub fast float %7288, %7287
  %7290 = fdiv fast float 1.000000e+00, %7289
  br label %7291

; <label>:7291                                    ; preds = %7286, %7261
  %7292 = phi float [ %7262, %7261 ], [ %7288, %7286 ]
  %7293 = phi float [ %7263, %7261 ], [ %7290, %7286 ]
  %7294 = fadd fast float %6995, %7292
  %7295 = fmul fast float %7294, %7293
  %7296 = call float @dx.op.unary.f32(i32 7, float %7295)  ; Saturate(value)
  %7297 = fmul fast float %7296, 2.000000e+00
  %7298 = fsub fast float 1.000000e+00, %7297
  %7299 = fmul fast float %7133, %7133
  %7300 = fsub fast float %7134, %7299
  %7301 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7300)  ; FMax(a,b)
  %7302 = fdiv fast float 1.000000e+00, %7301
  %7303 = fmul fast float %7134, %7133
  %7304 = fsub fast float %7135, %7303
  %7305 = fsub fast float %7298, %7133
  %7306 = fmul fast float %7298, %7298
  %7307 = fsub fast float %7306, %7134
  %7308 = fmul fast float %7302, %7304
  %7309 = fmul fast float %7308, %7305
  %7310 = fsub fast float %7307, %7309
  %7311 = fmul fast float %7134, %7134
  %7312 = fsub fast float %7136, %7311
  %7313 = fmul fast float %7304, %7304
  %7314 = fmul fast float %7313, %7302
  %7315 = fsub fast float %7312, %7314
  %7316 = fdiv fast float %7310, %7315
  %7317 = fmul fast float %7316, %7304
  %7318 = fsub fast float %7305, %7317
  %7319 = fmul fast float %7318, %7302
  %7320 = fmul fast float %7319, %7133
  %7321 = fsub fast float 1.000000e+00, %7320
  %7322 = fmul fast float %7316, %7134
  %7323 = fsub fast float %7321, %7322
  %7324 = fmul fast float %7319, %7319
  %7325 = fmul fast float %7316, 4.000000e+00
  %7326 = fmul fast float %7325, %7323
  %7327 = fsub fast float %7324, %7326
  %7328 = call float @dx.op.unary.f32(i32 24, float %7327)  ; Sqrt(value)
  %7329 = fcmp fast oge float %7319, 0.000000e+00
  %7330 = fsub fast float -0.000000e+00, %7328
  %7331 = select i1 %7329, float %7330, float %7328
  %7332 = fsub fast float %7331, %7319
  %7333 = fdiv fast float %7332, %7316
  %7334 = fdiv fast float %7323, %7332
  %7335 = fmul fast float %7333, 5.000000e-01
  %7336 = fmul fast float %7334, 2.000000e+00
  %7337 = select i1 %7329, float %7335, float %7336
  %7338 = select i1 %7329, float %7336, float %7335
  %7339 = call float @dx.op.binary.f32(i32 35, float %7337, float %7338)  ; FMax(a,b)
  %7340 = call float @dx.op.binary.f32(i32 36, float %7337, float %7338)  ; FMin(a,b)
  %7341 = fcmp fast ogt float %7298, %7339
  %7342 = fsub fast float %7298, %7340
  %7343 = fsub fast float %7298, %7339
  %7344 = fsub fast float %7339, %7340
  %7345 = select i1 %7341, float %7343, float %7344
  %7346 = fmul float %7342, %7345
  %7347 = select i1 %7341, float %7340, float %7298
  %7348 = fcmp fast ogt float %7298, %7340
  %7349 = fmul fast float %7347, %7339
  %7350 = fadd fast float %7347, %7339
  %7351 = fmul fast float %7350, %7133
  %7352 = fadd fast float %7349, %7134
  %7353 = fsub fast float %7352, %7351
  %7354 = fdiv fast float %7353, %7346
  %7355 = select i1 %7348, float %7354, float 0.000000e+00
  %7356 = fsub fast float 1.000000e+00, %7355
  %7357 = select i1 %7341, float %7356, float %7355
  %7358 = call float @dx.op.unary.f32(i32 7, float %7357)  ; Saturate(value)
  %7359 = extractvalue %dx.types.CBufRet.f32 %7118, 3
  %7360 = fmul fast float %7359, %7358
  %7361 = fsub fast float 1.000000e+00, %7360
  br label %7362

; <label>:7362                                    ; preds = %7291, %7003, %6968, %6964, %6928
  %7363 = phi float [ 1.000000e+00, %6928 ], [ %7361, %7291 ], [ 1.000000e+00, %6968 ], [ 1.000000e+00, %7003 ], [ 1.000000e+00, %6964 ]
  %7364 = fcmp fast ogt float %6960, 0.000000e+00
  br i1 %7364, label %7365, label %7529, !dx.controlflow.hints !114

; <label>:7365                                    ; preds = %7362
  %7366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7367 = extractvalue %dx.types.CBufRet.f32 %7366, 2
  %7368 = fadd fast float %7367, %6841
  %7369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.f32 %7369, 2
  %7371 = extractvalue %dx.types.CBufRet.f32 %7369, 3
  %7372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7373 = extractvalue %dx.types.CBufRet.f32 %7372, 2
  %7374 = call float @dx.op.binary.f32(i32 35, float %7368, float 0.000000e+00)  ; FMax(a,b)
  %7375 = fadd fast float %7374, 0x3F10000000000000
  %7376 = fcmp fast oeq float %7373, 0.000000e+00
  br i1 %7376, label %7377, label %7444

; <label>:7377                                    ; preds = %7365
  %7378 = extractvalue %dx.types.CBufRet.f32 %7369, 1
  %7379 = extractvalue %dx.types.CBufRet.f32 %7369, 0
  %7380 = fmul fast float %7379, %6859
  %7381 = fmul fast float %7378, %6860
  %7382 = fadd fast float %7380, 5.000000e-01
  %7383 = call float @dx.op.unary.f32(i32 27, float %7382)  ; Round_ni(value)
  %7384 = fadd fast float %7381, 5.000000e-01
  %7385 = call float @dx.op.unary.f32(i32 27, float %7384)  ; Round_ni(value)
  %7386 = fsub fast float %7382, %7383
  %7387 = fsub fast float %7384, %7385
  %7388 = fadd fast float %7383, -5.000000e-01
  %7389 = fadd fast float %7385, -5.000000e-01
  %7390 = fmul fast float %7386, 2.000000e+00
  %7391 = fsub fast float 3.000000e+00, %7390
  %7392 = fadd fast float %7390, 1.000000e+00
  %7393 = fsub fast float 2.000000e+00, %7386
  %7394 = bitcast float %7391 to i32
  %7395 = sub nsw i32 2129859010, %7394
  %7396 = bitcast i32 %7395 to float
  %7397 = fmul fast float %7396, %7393
  %7398 = fadd fast float %7397, -1.000000e+00
  %7399 = bitcast float %7392 to i32
  %7400 = sub nsw i32 2129859010, %7399
  %7401 = bitcast i32 %7400 to float
  %7402 = fmul fast float %7401, %7386
  %7403 = fadd fast float %7402, 1.000000e+00
  %7404 = fmul fast float %7387, 2.000000e+00
  %7405 = fsub fast float 3.000000e+00, %7404
  %7406 = fadd fast float %7404, 1.000000e+00
  %7407 = fsub fast float 2.000000e+00, %7387
  %7408 = bitcast float %7405 to i32
  %7409 = sub nsw i32 2129859010, %7408
  %7410 = bitcast i32 %7409 to float
  %7411 = fmul fast float %7410, %7407
  %7412 = fadd fast float %7411, -1.000000e+00
  %7413 = bitcast float %7406 to i32
  %7414 = sub nsw i32 2129859010, %7413
  %7415 = bitcast i32 %7414 to float
  %7416 = fmul fast float %7415, %7387
  %7417 = fadd fast float %7416, 1.000000e+00
  %7418 = fadd fast float %7398, %7388
  %7419 = fmul fast float %7418, %7370
  %7420 = fadd fast float %7412, %7389
  %7421 = fmul fast float %7420, %7371
  %7422 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7419, float %7421, float undef, float undef, i32 0, i32 0, i32 undef, float %7375)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7423 = extractvalue %dx.types.ResRet.f32 %7422, 0
  %7424 = fmul fast float %7423, %7391
  %7425 = fadd fast float %7403, %7388
  %7426 = fmul fast float %7425, %7370
  %7427 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7426, float %7421, float undef, float undef, i32 0, i32 0, i32 undef, float %7375)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7428 = extractvalue %dx.types.ResRet.f32 %7427, 0
  %7429 = fmul fast float %7428, %7392
  %7430 = fadd fast float %7417, %7389
  %7431 = fmul fast float %7430, %7371
  %7432 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7419, float %7431, float undef, float undef, i32 0, i32 0, i32 undef, float %7375)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7433 = extractvalue %dx.types.ResRet.f32 %7432, 0
  %7434 = fmul fast float %7433, %7391
  %7435 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %46, float %7426, float %7431, float undef, float undef, i32 0, i32 0, i32 undef, float %7375)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7436 = extractvalue %dx.types.ResRet.f32 %7435, 0
  %7437 = fmul fast float %7436, %7392
  %7438 = fadd fast float %7437, %7434
  %7439 = fmul fast float %7438, %7406
  %7440 = fadd fast float %7429, %7424
  %7441 = fmul fast float %7440, %7405
  %7442 = fadd fast float %7441, %7439
  %7443 = fmul fast float %7442, 6.250000e-02
  br label %7529

; <label>:7444                                    ; preds = %7365
  %7445 = fmul fast float %275, 0x401921FB60000000
  %7446 = call float @dx.op.unary.f32(i32 13, float %7445)  ; Sin(value)
  %7447 = call float @dx.op.unary.f32(i32 12, float %7445)  ; Cos(value)
  %7448 = fsub fast float -0.000000e+00, %7446
  br label %7449

; <label>:7449                                    ; preds = %7498, %7444
  %7450 = phi float [ 0.000000e+00, %7444 ], [ %7493, %7498 ]
  %7451 = phi float [ 0.000000e+00, %7444 ], [ %7495, %7498 ]
  %7452 = phi i32 [ 0, %7444 ], [ %7499, %7498 ]
  %7453 = mul i32 %7452, 2
  %7454 = add i32 0, %7453
  %7455 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7454
  %7456 = load float, float* %7455, align 4
  %7457 = mul i32 %7452, 2
  %7458 = add i32 1, %7457
  %7459 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7458
  %7460 = load float, float* %7459, align 4
  %7461 = fmul fast float %7456, %7447
  %7462 = call float @dx.op.tertiary.f32(i32 46, float %7460, float %7448, float %7461)  ; FMad(a,b,c)
  %7463 = fmul fast float %7456, %7446
  %7464 = call float @dx.op.tertiary.f32(i32 46, float %7460, float %7447, float %7463)  ; FMad(a,b,c)
  %7465 = fmul fast float %7462, %7373
  %7466 = fmul fast float %7464, %7373
  %7467 = fadd fast float %7465, %6859
  %7468 = fadd fast float %7466, %6860
  %7469 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %45, float %7467, float %7468, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7470 = extractvalue %dx.types.ResRet.f32 %7469, 0
  %7471 = extractvalue %dx.types.ResRet.f32 %7469, 1
  %7472 = extractvalue %dx.types.ResRet.f32 %7469, 2
  %7473 = extractvalue %dx.types.ResRet.f32 %7469, 3
  %7474 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7470, float* %7474, align 4
  %7475 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7471, float* %7475, align 4
  %7476 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7472, float* %7476, align 4
  %7477 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7473, float* %7477, align 4
  %7478 = fsub fast float %7470, %7375
  %7479 = fcmp fast olt float %7478, 0.000000e+00
  %7480 = select i1 %7479, float 0.000000e+00, float 1.000000e+00
  %7481 = fadd fast float %7480, %7450
  %7482 = fmul fast float %7480, %7478
  %7483 = fadd fast float %7482, %7451
  br label %7484

; <label>:7484                                    ; preds = %7484, %7449
  %7485 = phi i32 [ 1, %7449 ], [ %7496, %7484 ]
  %7486 = phi float [ %7483, %7449 ], [ %7495, %7484 ]
  %7487 = phi float [ %7481, %7449 ], [ %7493, %7484 ]
  %7488 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7485
  %7489 = load float, float* %7488, align 4, !tbaa !115, !noalias !105
  %7490 = fsub fast float %7489, %7375
  %7491 = fcmp fast olt float %7490, 0.000000e+00
  %7492 = select i1 %7491, float 0.000000e+00, float 1.000000e+00
  %7493 = fadd fast float %7492, %7487
  %7494 = fmul fast float %7492, %7490
  %7495 = fadd fast float %7494, %7486
  %7496 = add nuw nsw i32 %7485, 1
  %7497 = icmp eq i32 %7496, 4
  br i1 %7497, label %7498, label %7484, !llvm.loop !117

; <label>:7498                                    ; preds = %7484
  %7499 = add nuw nsw i32 %7452, 1
  %7500 = icmp eq i32 %7499, 8
  br i1 %7500, label %7501, label %7449, !llvm.loop !118

; <label>:7501                                    ; preds = %7498
  %7502 = fdiv fast float 1.000000e+00, %7493
  %7503 = fmul fast float %7502, %7495
  %7504 = fdiv fast float 1.000000e+00, %7375
  %7505 = fmul fast float %7503, %7504
  %7506 = call float @dx.op.unary.f32(i32 7, float %7505)  ; Saturate(value)
  %7507 = call float @dx.op.binary.f32(i32 35, float %7506, float 0.000000e+00)  ; FMax(a,b)
  %7508 = fmul fast float %7493, 3.125000e-02
  %7509 = call float @dx.op.unary.f32(i32 7, float %7508)  ; Saturate(value)
  %7510 = fmul fast float %7509, 2.000000e+00
  %7511 = fadd fast float %7510, -1.000000e+00
  %7512 = fcmp fast ogt float %7511, 0.000000e+00
  %7513 = fcmp fast olt float %7511, 0.000000e+00
  %7514 = zext i1 %7512 to i32
  %7515 = zext i1 %7513 to i32
  %7516 = sub nsw i32 %7514, %7515
  %7517 = sitofp i32 %7516 to float
  %7518 = fmul fast float %7517, %7511
  %7519 = fsub fast float 1.000000e+00, %7518
  %7520 = fmul fast float %7519, %7519
  %7521 = fmul fast float %7520, %7519
  %7522 = fsub fast float %7519, %7521
  %7523 = fmul fast float %7522, %7507
  %7524 = fsub fast float 1.000000e+00, %7521
  %7525 = fsub fast float %7524, %7523
  %7526 = fmul fast float %7517, 5.000000e-01
  %7527 = fmul fast float %7526, %7525
  %7528 = fsub fast float 5.000000e-01, %7527
  br label %7529

; <label>:7529                                    ; preds = %7501, %7377, %7362
  %7530 = phi float [ 1.000000e+00, %7362 ], [ %7443, %7377 ], [ %7528, %7501 ]
  %7531 = fcmp fast ogt float %6958, 0.000000e+00
  br i1 %7531, label %7532, label %7696, !dx.controlflow.hints !119

; <label>:7532                                    ; preds = %7529
  %7533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7534 = extractvalue %dx.types.CBufRet.f32 %7533, 1
  %7535 = fadd fast float %7534, %6841
  %7536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7537 = extractvalue %dx.types.CBufRet.f32 %7536, 2
  %7538 = extractvalue %dx.types.CBufRet.f32 %7536, 3
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 1
  %7541 = call float @dx.op.binary.f32(i32 35, float %7535, float 0.000000e+00)  ; FMax(a,b)
  %7542 = fadd fast float %7541, 0x3F10000000000000
  %7543 = fcmp fast oeq float %7540, 0.000000e+00
  br i1 %7543, label %7544, label %7611

; <label>:7544                                    ; preds = %7532
  %7545 = extractvalue %dx.types.CBufRet.f32 %7536, 1
  %7546 = extractvalue %dx.types.CBufRet.f32 %7536, 0
  %7547 = fmul fast float %7546, %6851
  %7548 = fmul fast float %7545, %6852
  %7549 = fadd fast float %7547, 5.000000e-01
  %7550 = call float @dx.op.unary.f32(i32 27, float %7549)  ; Round_ni(value)
  %7551 = fadd fast float %7548, 5.000000e-01
  %7552 = call float @dx.op.unary.f32(i32 27, float %7551)  ; Round_ni(value)
  %7553 = fsub fast float %7549, %7550
  %7554 = fsub fast float %7551, %7552
  %7555 = fadd fast float %7550, -5.000000e-01
  %7556 = fadd fast float %7552, -5.000000e-01
  %7557 = fmul fast float %7553, 2.000000e+00
  %7558 = fsub fast float 3.000000e+00, %7557
  %7559 = fadd fast float %7557, 1.000000e+00
  %7560 = fsub fast float 2.000000e+00, %7553
  %7561 = bitcast float %7558 to i32
  %7562 = sub nsw i32 2129859010, %7561
  %7563 = bitcast i32 %7562 to float
  %7564 = fmul fast float %7563, %7560
  %7565 = fadd fast float %7564, -1.000000e+00
  %7566 = bitcast float %7559 to i32
  %7567 = sub nsw i32 2129859010, %7566
  %7568 = bitcast i32 %7567 to float
  %7569 = fmul fast float %7568, %7553
  %7570 = fadd fast float %7569, 1.000000e+00
  %7571 = fmul fast float %7554, 2.000000e+00
  %7572 = fsub fast float 3.000000e+00, %7571
  %7573 = fadd fast float %7571, 1.000000e+00
  %7574 = fsub fast float 2.000000e+00, %7554
  %7575 = bitcast float %7572 to i32
  %7576 = sub nsw i32 2129859010, %7575
  %7577 = bitcast i32 %7576 to float
  %7578 = fmul fast float %7577, %7574
  %7579 = fadd fast float %7578, -1.000000e+00
  %7580 = bitcast float %7573 to i32
  %7581 = sub nsw i32 2129859010, %7580
  %7582 = bitcast i32 %7581 to float
  %7583 = fmul fast float %7582, %7554
  %7584 = fadd fast float %7583, 1.000000e+00
  %7585 = fadd fast float %7565, %7555
  %7586 = fmul fast float %7585, %7537
  %7587 = fadd fast float %7579, %7556
  %7588 = fmul fast float %7587, %7538
  %7589 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7586, float %7588, float undef, float undef, i32 0, i32 0, i32 undef, float %7542)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7590 = extractvalue %dx.types.ResRet.f32 %7589, 0
  %7591 = fmul fast float %7590, %7558
  %7592 = fadd fast float %7570, %7555
  %7593 = fmul fast float %7592, %7537
  %7594 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7593, float %7588, float undef, float undef, i32 0, i32 0, i32 undef, float %7542)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7595 = extractvalue %dx.types.ResRet.f32 %7594, 0
  %7596 = fmul fast float %7595, %7559
  %7597 = fadd fast float %7584, %7556
  %7598 = fmul fast float %7597, %7538
  %7599 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7586, float %7598, float undef, float undef, i32 0, i32 0, i32 undef, float %7542)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7600 = extractvalue %dx.types.ResRet.f32 %7599, 0
  %7601 = fmul fast float %7600, %7558
  %7602 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %46, float %7593, float %7598, float undef, float undef, i32 0, i32 0, i32 undef, float %7542)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7603 = extractvalue %dx.types.ResRet.f32 %7602, 0
  %7604 = fmul fast float %7603, %7559
  %7605 = fadd fast float %7604, %7601
  %7606 = fmul fast float %7605, %7573
  %7607 = fadd fast float %7596, %7591
  %7608 = fmul fast float %7607, %7572
  %7609 = fadd fast float %7608, %7606
  %7610 = fmul fast float %7609, 6.250000e-02
  br label %7696

; <label>:7611                                    ; preds = %7532
  %7612 = fmul fast float %275, 0x401921FB60000000
  %7613 = call float @dx.op.unary.f32(i32 13, float %7612)  ; Sin(value)
  %7614 = call float @dx.op.unary.f32(i32 12, float %7612)  ; Cos(value)
  %7615 = fsub fast float -0.000000e+00, %7613
  br label %7616

; <label>:7616                                    ; preds = %7665, %7611
  %7617 = phi float [ 0.000000e+00, %7611 ], [ %7660, %7665 ]
  %7618 = phi float [ 0.000000e+00, %7611 ], [ %7662, %7665 ]
  %7619 = phi i32 [ 0, %7611 ], [ %7666, %7665 ]
  %7620 = mul i32 %7619, 2
  %7621 = add i32 0, %7620
  %7622 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7621
  %7623 = load float, float* %7622, align 4
  %7624 = mul i32 %7619, 2
  %7625 = add i32 1, %7624
  %7626 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7625
  %7627 = load float, float* %7626, align 4
  %7628 = fmul fast float %7623, %7614
  %7629 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7615, float %7628)  ; FMad(a,b,c)
  %7630 = fmul fast float %7623, %7613
  %7631 = call float @dx.op.tertiary.f32(i32 46, float %7627, float %7614, float %7630)  ; FMad(a,b,c)
  %7632 = fmul fast float %7629, %7540
  %7633 = fmul fast float %7631, %7540
  %7634 = fadd fast float %7632, %6851
  %7635 = fadd fast float %7633, %6852
  %7636 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %45, float %7634, float %7635, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7637 = extractvalue %dx.types.ResRet.f32 %7636, 0
  %7638 = extractvalue %dx.types.ResRet.f32 %7636, 1
  %7639 = extractvalue %dx.types.ResRet.f32 %7636, 2
  %7640 = extractvalue %dx.types.ResRet.f32 %7636, 3
  %7641 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7637, float* %7641, align 4
  %7642 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7638, float* %7642, align 4
  %7643 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7639, float* %7643, align 4
  %7644 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7640, float* %7644, align 4
  %7645 = fsub fast float %7637, %7542
  %7646 = fcmp fast olt float %7645, 0.000000e+00
  %7647 = select i1 %7646, float 0.000000e+00, float 1.000000e+00
  %7648 = fadd fast float %7647, %7617
  %7649 = fmul fast float %7647, %7645
  %7650 = fadd fast float %7649, %7618
  br label %7651

; <label>:7651                                    ; preds = %7651, %7616
  %7652 = phi i32 [ 1, %7616 ], [ %7663, %7651 ]
  %7653 = phi float [ %7650, %7616 ], [ %7662, %7651 ]
  %7654 = phi float [ %7648, %7616 ], [ %7660, %7651 ]
  %7655 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7652
  %7656 = load float, float* %7655, align 4, !tbaa !115, !noalias !105
  %7657 = fsub fast float %7656, %7542
  %7658 = fcmp fast olt float %7657, 0.000000e+00
  %7659 = select i1 %7658, float 0.000000e+00, float 1.000000e+00
  %7660 = fadd fast float %7659, %7654
  %7661 = fmul fast float %7659, %7657
  %7662 = fadd fast float %7661, %7653
  %7663 = add nuw nsw i32 %7652, 1
  %7664 = icmp eq i32 %7663, 4
  br i1 %7664, label %7665, label %7651, !llvm.loop !117

; <label>:7665                                    ; preds = %7651
  %7666 = add nuw nsw i32 %7619, 1
  %7667 = icmp eq i32 %7666, 8
  br i1 %7667, label %7668, label %7616, !llvm.loop !118

; <label>:7668                                    ; preds = %7665
  %7669 = fdiv fast float 1.000000e+00, %7660
  %7670 = fmul fast float %7669, %7662
  %7671 = fdiv fast float 1.000000e+00, %7542
  %7672 = fmul fast float %7670, %7671
  %7673 = call float @dx.op.unary.f32(i32 7, float %7672)  ; Saturate(value)
  %7674 = call float @dx.op.binary.f32(i32 35, float %7673, float 0.000000e+00)  ; FMax(a,b)
  %7675 = fmul fast float %7660, 3.125000e-02
  %7676 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7677 = fmul fast float %7676, 2.000000e+00
  %7678 = fadd fast float %7677, -1.000000e+00
  %7679 = fcmp fast ogt float %7678, 0.000000e+00
  %7680 = fcmp fast olt float %7678, 0.000000e+00
  %7681 = zext i1 %7679 to i32
  %7682 = zext i1 %7680 to i32
  %7683 = sub nsw i32 %7681, %7682
  %7684 = sitofp i32 %7683 to float
  %7685 = fmul fast float %7684, %7678
  %7686 = fsub fast float 1.000000e+00, %7685
  %7687 = fmul fast float %7686, %7686
  %7688 = fmul fast float %7687, %7686
  %7689 = fsub fast float %7686, %7688
  %7690 = fmul fast float %7689, %7674
  %7691 = fsub fast float 1.000000e+00, %7688
  %7692 = fsub fast float %7691, %7690
  %7693 = fmul fast float %7684, 5.000000e-01
  %7694 = fmul fast float %7693, %7692
  %7695 = fsub fast float 5.000000e-01, %7694
  br label %7696

; <label>:7696                                    ; preds = %7668, %7544, %7529
  %7697 = phi float [ 1.000000e+00, %7529 ], [ %7610, %7544 ], [ %7695, %7668 ]
  %7698 = fcmp fast ogt float %6957, 0.000000e+00
  br i1 %7698, label %7699, label %8017, !dx.controlflow.hints !120

; <label>:7699                                    ; preds = %7696
  %7700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7701 = extractvalue %dx.types.CBufRet.f32 %7700, 0
  %7702 = fadd fast float %7701, %6841
  %7703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7704 = extractvalue %dx.types.CBufRet.f32 %7703, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7703, 3
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 0
  %7708 = call float @dx.op.binary.f32(i32 35, float %7702, float 0.000000e+00)  ; FMax(a,b)
  %7709 = fadd fast float %7708, 0x3F10000000000000
  %7710 = fcmp fast oeq float %7707, 0.000000e+00
  br i1 %6844, label %7711, label %7864, !dx.controlflow.hints !121

; <label>:7711                                    ; preds = %7699
  br i1 %7710, label %7712, label %7779

; <label>:7712                                    ; preds = %7711
  %7713 = extractvalue %dx.types.CBufRet.f32 %7703, 1
  %7714 = extractvalue %dx.types.CBufRet.f32 %7703, 0
  %7715 = fmul fast float %7714, %6833
  %7716 = fmul fast float %7713, %6837
  %7717 = fadd fast float %7715, 5.000000e-01
  %7718 = call float @dx.op.unary.f32(i32 27, float %7717)  ; Round_ni(value)
  %7719 = fadd fast float %7716, 5.000000e-01
  %7720 = call float @dx.op.unary.f32(i32 27, float %7719)  ; Round_ni(value)
  %7721 = fsub fast float %7717, %7718
  %7722 = fsub fast float %7719, %7720
  %7723 = fadd fast float %7718, -5.000000e-01
  %7724 = fadd fast float %7720, -5.000000e-01
  %7725 = fmul fast float %7721, 2.000000e+00
  %7726 = fsub fast float 3.000000e+00, %7725
  %7727 = fadd fast float %7725, 1.000000e+00
  %7728 = fsub fast float 2.000000e+00, %7721
  %7729 = bitcast float %7726 to i32
  %7730 = sub nsw i32 2129859010, %7729
  %7731 = bitcast i32 %7730 to float
  %7732 = fmul fast float %7731, %7728
  %7733 = fadd fast float %7732, -1.000000e+00
  %7734 = bitcast float %7727 to i32
  %7735 = sub nsw i32 2129859010, %7734
  %7736 = bitcast i32 %7735 to float
  %7737 = fmul fast float %7736, %7721
  %7738 = fadd fast float %7737, 1.000000e+00
  %7739 = fmul fast float %7722, 2.000000e+00
  %7740 = fsub fast float 3.000000e+00, %7739
  %7741 = fadd fast float %7739, 1.000000e+00
  %7742 = fsub fast float 2.000000e+00, %7722
  %7743 = bitcast float %7740 to i32
  %7744 = sub nsw i32 2129859010, %7743
  %7745 = bitcast i32 %7744 to float
  %7746 = fmul fast float %7745, %7742
  %7747 = fadd fast float %7746, -1.000000e+00
  %7748 = bitcast float %7741 to i32
  %7749 = sub nsw i32 2129859010, %7748
  %7750 = bitcast i32 %7749 to float
  %7751 = fmul fast float %7750, %7722
  %7752 = fadd fast float %7751, 1.000000e+00
  %7753 = fadd fast float %7733, %7723
  %7754 = fmul fast float %7753, %7704
  %7755 = fadd fast float %7747, %7724
  %7756 = fmul fast float %7755, %7705
  %7757 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7754, float %7756, float undef, float undef, i32 0, i32 0, i32 undef, float %7709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7758 = extractvalue %dx.types.ResRet.f32 %7757, 0
  %7759 = fmul fast float %7758, %7726
  %7760 = fadd fast float %7738, %7723
  %7761 = fmul fast float %7760, %7704
  %7762 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7761, float %7756, float undef, float undef, i32 0, i32 0, i32 undef, float %7709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7763 = extractvalue %dx.types.ResRet.f32 %7762, 0
  %7764 = fmul fast float %7763, %7727
  %7765 = fadd fast float %7752, %7724
  %7766 = fmul fast float %7765, %7705
  %7767 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7754, float %7766, float undef, float undef, i32 0, i32 0, i32 undef, float %7709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7768 = extractvalue %dx.types.ResRet.f32 %7767, 0
  %7769 = fmul fast float %7768, %7726
  %7770 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7761, float %7766, float undef, float undef, i32 0, i32 0, i32 undef, float %7709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7771 = extractvalue %dx.types.ResRet.f32 %7770, 0
  %7772 = fmul fast float %7771, %7727
  %7773 = fadd fast float %7772, %7769
  %7774 = fmul fast float %7773, %7741
  %7775 = fadd fast float %7764, %7759
  %7776 = fmul fast float %7775, %7740
  %7777 = fadd fast float %7776, %7774
  %7778 = fmul fast float %7777, 6.250000e-02
  br label %8017

; <label>:7779                                    ; preds = %7711
  %7780 = fmul fast float %275, 0x401921FB60000000
  %7781 = call float @dx.op.unary.f32(i32 13, float %7780)  ; Sin(value)
  %7782 = call float @dx.op.unary.f32(i32 12, float %7780)  ; Cos(value)
  %7783 = fsub fast float -0.000000e+00, %7781
  br label %7784

; <label>:7784                                    ; preds = %7833, %7779
  %7785 = phi float [ 0.000000e+00, %7779 ], [ %7828, %7833 ]
  %7786 = phi float [ 0.000000e+00, %7779 ], [ %7830, %7833 ]
  %7787 = phi i32 [ 0, %7779 ], [ %7834, %7833 ]
  %7788 = mul i32 %7787, 2
  %7789 = add i32 0, %7788
  %7790 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7789
  %7791 = load float, float* %7790, align 4
  %7792 = mul i32 %7787, 2
  %7793 = add i32 1, %7792
  %7794 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7793
  %7795 = load float, float* %7794, align 4
  %7796 = fmul fast float %7791, %7782
  %7797 = call float @dx.op.tertiary.f32(i32 46, float %7795, float %7783, float %7796)  ; FMad(a,b,c)
  %7798 = fmul fast float %7791, %7781
  %7799 = call float @dx.op.tertiary.f32(i32 46, float %7795, float %7782, float %7798)  ; FMad(a,b,c)
  %7800 = fmul fast float %7797, %7707
  %7801 = fmul fast float %7799, %7707
  %7802 = fadd fast float %7800, %6833
  %7803 = fadd fast float %7801, %6837
  %7804 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %45, float %7802, float %7803, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7805 = extractvalue %dx.types.ResRet.f32 %7804, 0
  %7806 = extractvalue %dx.types.ResRet.f32 %7804, 1
  %7807 = extractvalue %dx.types.ResRet.f32 %7804, 2
  %7808 = extractvalue %dx.types.ResRet.f32 %7804, 3
  %7809 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7805, float* %7809, align 4
  %7810 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7806, float* %7810, align 4
  %7811 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7807, float* %7811, align 4
  %7812 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7808, float* %7812, align 4
  %7813 = fsub fast float %7805, %7709
  %7814 = fcmp fast olt float %7813, 0.000000e+00
  %7815 = select i1 %7814, float 0.000000e+00, float 1.000000e+00
  %7816 = fadd fast float %7815, %7785
  %7817 = fmul fast float %7815, %7813
  %7818 = fadd fast float %7817, %7786
  br label %7819

; <label>:7819                                    ; preds = %7819, %7784
  %7820 = phi i32 [ 1, %7784 ], [ %7831, %7819 ]
  %7821 = phi float [ %7818, %7784 ], [ %7830, %7819 ]
  %7822 = phi float [ %7816, %7784 ], [ %7828, %7819 ]
  %7823 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7820
  %7824 = load float, float* %7823, align 4, !tbaa !115, !noalias !105
  %7825 = fsub fast float %7824, %7709
  %7826 = fcmp fast olt float %7825, 0.000000e+00
  %7827 = select i1 %7826, float 0.000000e+00, float 1.000000e+00
  %7828 = fadd fast float %7827, %7822
  %7829 = fmul fast float %7827, %7825
  %7830 = fadd fast float %7829, %7821
  %7831 = add nuw nsw i32 %7820, 1
  %7832 = icmp eq i32 %7831, 4
  br i1 %7832, label %7833, label %7819, !llvm.loop !117

; <label>:7833                                    ; preds = %7819
  %7834 = add nuw nsw i32 %7787, 1
  %7835 = icmp eq i32 %7834, 8
  br i1 %7835, label %7836, label %7784, !llvm.loop !118

; <label>:7836                                    ; preds = %7833
  %7837 = fdiv fast float 1.000000e+00, %7828
  %7838 = fmul fast float %7837, %7830
  %7839 = fdiv fast float 1.000000e+00, %7709
  %7840 = fmul fast float %7838, %7839
  %7841 = call float @dx.op.unary.f32(i32 7, float %7840)  ; Saturate(value)
  %7842 = call float @dx.op.binary.f32(i32 35, float %7841, float 0.000000e+00)  ; FMax(a,b)
  %7843 = fmul fast float %7828, 3.125000e-02
  %7844 = call float @dx.op.unary.f32(i32 7, float %7843)  ; Saturate(value)
  %7845 = fmul fast float %7844, 2.000000e+00
  %7846 = fadd fast float %7845, -1.000000e+00
  %7847 = fcmp fast ogt float %7846, 0.000000e+00
  %7848 = fcmp fast olt float %7846, 0.000000e+00
  %7849 = zext i1 %7847 to i32
  %7850 = zext i1 %7848 to i32
  %7851 = sub nsw i32 %7849, %7850
  %7852 = sitofp i32 %7851 to float
  %7853 = fmul fast float %7852, %7846
  %7854 = fsub fast float 1.000000e+00, %7853
  %7855 = fmul fast float %7854, %7854
  %7856 = fmul fast float %7855, %7854
  %7857 = fsub fast float %7854, %7856
  %7858 = fmul fast float %7857, %7842
  %7859 = fsub fast float 1.000000e+00, %7856
  %7860 = fsub fast float %7859, %7858
  %7861 = fmul fast float %7852, 5.000000e-01
  %7862 = fmul fast float %7861, %7860
  %7863 = fsub fast float 5.000000e-01, %7862
  br label %8017

; <label>:7864                                    ; preds = %7699
  br i1 %7710, label %7865, label %7932

; <label>:7865                                    ; preds = %7864
  %7866 = extractvalue %dx.types.CBufRet.f32 %7703, 1
  %7867 = extractvalue %dx.types.CBufRet.f32 %7703, 0
  %7868 = fmul fast float %7867, %6833
  %7869 = fmul fast float %7866, %6837
  %7870 = fadd fast float %7868, 5.000000e-01
  %7871 = call float @dx.op.unary.f32(i32 27, float %7870)  ; Round_ni(value)
  %7872 = fadd fast float %7869, 5.000000e-01
  %7873 = call float @dx.op.unary.f32(i32 27, float %7872)  ; Round_ni(value)
  %7874 = fsub fast float %7870, %7871
  %7875 = fsub fast float %7872, %7873
  %7876 = fadd fast float %7871, -5.000000e-01
  %7877 = fadd fast float %7873, -5.000000e-01
  %7878 = fmul fast float %7874, 2.000000e+00
  %7879 = fsub fast float 3.000000e+00, %7878
  %7880 = fadd fast float %7878, 1.000000e+00
  %7881 = fsub fast float 2.000000e+00, %7874
  %7882 = bitcast float %7879 to i32
  %7883 = sub nsw i32 2129859010, %7882
  %7884 = bitcast i32 %7883 to float
  %7885 = fmul fast float %7884, %7881
  %7886 = fadd fast float %7885, -1.000000e+00
  %7887 = bitcast float %7880 to i32
  %7888 = sub nsw i32 2129859010, %7887
  %7889 = bitcast i32 %7888 to float
  %7890 = fmul fast float %7889, %7874
  %7891 = fadd fast float %7890, 1.000000e+00
  %7892 = fmul fast float %7875, 2.000000e+00
  %7893 = fsub fast float 3.000000e+00, %7892
  %7894 = fadd fast float %7892, 1.000000e+00
  %7895 = fsub fast float 2.000000e+00, %7875
  %7896 = bitcast float %7893 to i32
  %7897 = sub nsw i32 2129859010, %7896
  %7898 = bitcast i32 %7897 to float
  %7899 = fmul fast float %7898, %7895
  %7900 = fadd fast float %7899, -1.000000e+00
  %7901 = bitcast float %7894 to i32
  %7902 = sub nsw i32 2129859010, %7901
  %7903 = bitcast i32 %7902 to float
  %7904 = fmul fast float %7903, %7875
  %7905 = fadd fast float %7904, 1.000000e+00
  %7906 = fadd fast float %7886, %7876
  %7907 = fmul fast float %7906, %7704
  %7908 = fadd fast float %7900, %7877
  %7909 = fmul fast float %7908, %7705
  %7910 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7907, float %7909, float undef, float undef, i32 0, i32 0, i32 undef, float %7709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7911 = extractvalue %dx.types.ResRet.f32 %7910, 0
  %7912 = fmul fast float %7911, %7879
  %7913 = fadd fast float %7891, %7876
  %7914 = fmul fast float %7913, %7704
  %7915 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7914, float %7909, float undef, float undef, i32 0, i32 0, i32 undef, float %7709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7916 = extractvalue %dx.types.ResRet.f32 %7915, 0
  %7917 = fmul fast float %7916, %7880
  %7918 = fadd fast float %7905, %7877
  %7919 = fmul fast float %7918, %7705
  %7920 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7907, float %7919, float undef, float undef, i32 0, i32 0, i32 undef, float %7709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7921 = extractvalue %dx.types.ResRet.f32 %7920, 0
  %7922 = fmul fast float %7921, %7879
  %7923 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7914, float %7919, float undef, float undef, i32 0, i32 0, i32 undef, float %7709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7924 = extractvalue %dx.types.ResRet.f32 %7923, 0
  %7925 = fmul fast float %7924, %7880
  %7926 = fadd fast float %7925, %7922
  %7927 = fmul fast float %7926, %7894
  %7928 = fadd fast float %7917, %7912
  %7929 = fmul fast float %7928, %7893
  %7930 = fadd fast float %7929, %7927
  %7931 = fmul fast float %7930, 6.250000e-02
  br label %8017

; <label>:7932                                    ; preds = %7864
  %7933 = fmul fast float %275, 0x401921FB60000000
  %7934 = call float @dx.op.unary.f32(i32 13, float %7933)  ; Sin(value)
  %7935 = call float @dx.op.unary.f32(i32 12, float %7933)  ; Cos(value)
  %7936 = fsub fast float -0.000000e+00, %7934
  br label %7937

; <label>:7937                                    ; preds = %7986, %7932
  %7938 = phi float [ 0.000000e+00, %7932 ], [ %7981, %7986 ]
  %7939 = phi float [ 0.000000e+00, %7932 ], [ %7983, %7986 ]
  %7940 = phi i32 [ 0, %7932 ], [ %7987, %7986 ]
  %7941 = mul i32 %7940, 2
  %7942 = add i32 0, %7941
  %7943 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7942
  %7944 = load float, float* %7943, align 4
  %7945 = mul i32 %7940, 2
  %7946 = add i32 1, %7945
  %7947 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7946
  %7948 = load float, float* %7947, align 4
  %7949 = fmul fast float %7944, %7935
  %7950 = call float @dx.op.tertiary.f32(i32 46, float %7948, float %7936, float %7949)  ; FMad(a,b,c)
  %7951 = fmul fast float %7944, %7934
  %7952 = call float @dx.op.tertiary.f32(i32 46, float %7948, float %7935, float %7951)  ; FMad(a,b,c)
  %7953 = fmul fast float %7950, %7707
  %7954 = fmul fast float %7952, %7707
  %7955 = fadd fast float %7953, %6833
  %7956 = fadd fast float %7954, %6837
  %7957 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7955, float %7956, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7958 = extractvalue %dx.types.ResRet.f32 %7957, 0
  %7959 = extractvalue %dx.types.ResRet.f32 %7957, 1
  %7960 = extractvalue %dx.types.ResRet.f32 %7957, 2
  %7961 = extractvalue %dx.types.ResRet.f32 %7957, 3
  %7962 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7958, float* %7962, align 4
  %7963 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7959, float* %7963, align 4
  %7964 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7960, float* %7964, align 4
  %7965 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7961, float* %7965, align 4
  %7966 = fsub fast float %7958, %7709
  %7967 = fcmp fast olt float %7966, 0.000000e+00
  %7968 = select i1 %7967, float 0.000000e+00, float 1.000000e+00
  %7969 = fadd fast float %7968, %7938
  %7970 = fmul fast float %7968, %7966
  %7971 = fadd fast float %7970, %7939
  br label %7972

; <label>:7972                                    ; preds = %7972, %7937
  %7973 = phi i32 [ 1, %7937 ], [ %7984, %7972 ]
  %7974 = phi float [ %7971, %7937 ], [ %7983, %7972 ]
  %7975 = phi float [ %7969, %7937 ], [ %7981, %7972 ]
  %7976 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7973
  %7977 = load float, float* %7976, align 4, !tbaa !115, !noalias !105
  %7978 = fsub fast float %7977, %7709
  %7979 = fcmp fast olt float %7978, 0.000000e+00
  %7980 = select i1 %7979, float 0.000000e+00, float 1.000000e+00
  %7981 = fadd fast float %7980, %7975
  %7982 = fmul fast float %7980, %7978
  %7983 = fadd fast float %7982, %7974
  %7984 = add nuw nsw i32 %7973, 1
  %7985 = icmp eq i32 %7984, 4
  br i1 %7985, label %7986, label %7972, !llvm.loop !117

; <label>:7986                                    ; preds = %7972
  %7987 = add nuw nsw i32 %7940, 1
  %7988 = icmp eq i32 %7987, 8
  br i1 %7988, label %7989, label %7937, !llvm.loop !118

; <label>:7989                                    ; preds = %7986
  %7990 = fdiv fast float 1.000000e+00, %7981
  %7991 = fmul fast float %7990, %7983
  %7992 = fdiv fast float 1.000000e+00, %7709
  %7993 = fmul fast float %7991, %7992
  %7994 = call float @dx.op.unary.f32(i32 7, float %7993)  ; Saturate(value)
  %7995 = call float @dx.op.binary.f32(i32 35, float %7994, float 0.000000e+00)  ; FMax(a,b)
  %7996 = fmul fast float %7981, 3.125000e-02
  %7997 = call float @dx.op.unary.f32(i32 7, float %7996)  ; Saturate(value)
  %7998 = fmul fast float %7997, 2.000000e+00
  %7999 = fadd fast float %7998, -1.000000e+00
  %8000 = fcmp fast ogt float %7999, 0.000000e+00
  %8001 = fcmp fast olt float %7999, 0.000000e+00
  %8002 = zext i1 %8000 to i32
  %8003 = zext i1 %8001 to i32
  %8004 = sub nsw i32 %8002, %8003
  %8005 = sitofp i32 %8004 to float
  %8006 = fmul fast float %8005, %7999
  %8007 = fsub fast float 1.000000e+00, %8006
  %8008 = fmul fast float %8007, %8007
  %8009 = fmul fast float %8008, %8007
  %8010 = fsub fast float %8007, %8009
  %8011 = fmul fast float %8010, %7995
  %8012 = fsub fast float 1.000000e+00, %8009
  %8013 = fsub fast float %8012, %8011
  %8014 = fmul fast float %8005, 5.000000e-01
  %8015 = fmul fast float %8014, %8013
  %8016 = fsub fast float 5.000000e-01, %8015
  br label %8017

; <label>:8017                                    ; preds = %7989, %7865, %7836, %7712, %7696
  %8018 = phi float [ 1.000000e+00, %7696 ], [ %7778, %7712 ], [ %7863, %7836 ], [ %7931, %7865 ], [ %8016, %7989 ]
  %8019 = fsub fast float %7530, %7363
  %8020 = fmul fast float %8019, %6930
  %8021 = fadd fast float %8020, %7363
  %8022 = fsub fast float %7697, %8021
  %8023 = fmul fast float %8022, %6929
  %8024 = fadd fast float %8023, %8021
  %8025 = fsub fast float %8018, %8024
  %8026 = fmul fast float %8025, %6957
  %8027 = fadd fast float %8026, %8024
  %8028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8029 = extractvalue %dx.types.CBufRet.f32 %8028, 2
  %8030 = fcmp fast ogt float %8029, 0.000000e+00
  br i1 %8030, label %8031, label %8071, !dx.controlflow.hints !122

; <label>:8031                                    ; preds = %8017
  %8032 = fcmp fast ugt float %8029, 0.000000e+00
  br i1 %8032, label %8033, label %8068

; <label>:8033                                    ; preds = %8031
  %8034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8035 = extractvalue %dx.types.CBufRet.f32 %8034, 0
  %8036 = extractvalue %dx.types.CBufRet.f32 %8034, 1
  %8037 = extractvalue %dx.types.CBufRet.f32 %8034, 2
  %8038 = extractvalue %dx.types.CBufRet.f32 %8034, 3
  %8039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8040 = extractvalue %dx.types.CBufRet.f32 %8039, 0
  %8041 = extractvalue %dx.types.CBufRet.f32 %8039, 1
  %8042 = extractvalue %dx.types.CBufRet.f32 %8039, 2
  %8043 = extractvalue %dx.types.CBufRet.f32 %8039, 3
  %8044 = extractvalue %dx.types.CBufRet.f32 %8028, 0
  %8045 = extractvalue %dx.types.CBufRet.f32 %8028, 1
  %8046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8047 = extractvalue %dx.types.CBufRet.f32 %8046, 0
  %8048 = extractvalue %dx.types.CBufRet.f32 %8046, 1
  %8049 = extractvalue %dx.types.CBufRet.f32 %8046, 2
  %8050 = fadd fast float %8047, %6810
  %8051 = fadd fast float %8048, %6811
  %8052 = fadd fast float %8049, %6812
  %8053 = fmul fast float %8050, %8035
  %8054 = call float @dx.op.tertiary.f32(i32 46, float %8036, float %8051, float %8053)  ; FMad(a,b,c)
  %8055 = call float @dx.op.tertiary.f32(i32 46, float %8037, float %8052, float %8054)  ; FMad(a,b,c)
  %8056 = fadd fast float %8055, %8038
  %8057 = fmul fast float %8050, %8040
  %8058 = call float @dx.op.tertiary.f32(i32 46, float %8041, float %8051, float %8057)  ; FMad(a,b,c)
  %8059 = call float @dx.op.tertiary.f32(i32 46, float %8042, float %8052, float %8058)  ; FMad(a,b,c)
  %8060 = fadd fast float %8059, %8043
  %8061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %41, float %8056, float %8060, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8062 = extractvalue %dx.types.ResRet.f32 %8061, 0
  %8063 = fmul fast float %8062, %8045
  %8064 = fadd fast float %8063, %8044
  %8065 = call float @dx.op.unary.f32(i32 7, float %8064)  ; Saturate(value)
  %8066 = fmul fast float %8065, %8029
  %8067 = fsub fast float 1.000000e+00, %8066
  br label %8068

; <label>:8068                                    ; preds = %8033, %8031
  %8069 = phi float [ %8067, %8033 ], [ 1.000000e+00, %8031 ]
  %8070 = fmul fast float %8069, %8027
  br label %8071

; <label>:8071                                    ; preds = %8068, %8017, %6790
  %8072 = phi float [ 1.000000e+00, %6790 ], [ %8070, %8068 ], [ %8027, %8017 ]
  %8073 = call float @dx.op.binary.f32(i32 36, float %8072, float %8072)  ; FMin(a,b)
  %8074 = call float @dx.op.binary.f32(i32 36, float %8072, float %8073)  ; FMin(a,b)
  %8075 = fcmp fast ogt float %8074, 0.000000e+00
  br i1 %8075, label %8076, label %8242, !dx.controlflow.hints !123

; <label>:8076                                    ; preds = %8071
  %8077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8078 = extractvalue %dx.types.CBufRet.f32 %8077, 0
  %8079 = extractvalue %dx.types.CBufRet.f32 %8077, 1
  %8080 = extractvalue %dx.types.CBufRet.f32 %8077, 2
  %8081 = extractvalue %dx.types.CBufRet.f32 %8077, 3
  %8082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8083 = extractvalue %dx.types.CBufRet.f32 %8082, 0
  %8084 = extractvalue %dx.types.CBufRet.f32 %8082, 1
  %8085 = extractvalue %dx.types.CBufRet.f32 %8082, 2
  %8086 = extractvalue %dx.types.CBufRet.f32 %8082, 3
  %8087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8087, 0
  %8089 = extractvalue %dx.types.CBufRet.f32 %8087, 1
  %8090 = extractvalue %dx.types.CBufRet.f32 %8087, 2
  %8091 = extractvalue %dx.types.CBufRet.f32 %8087, 3
  %8092 = fmul fast float %8078, %6810
  %8093 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %8079, float %8092)  ; FMad(a,b,c)
  %8094 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %8080, float %8093)  ; FMad(a,b,c)
  %8095 = fadd fast float %8094, %8081
  %8096 = fmul fast float %8083, %6810
  %8097 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %8084, float %8096)  ; FMad(a,b,c)
  %8098 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %8085, float %8097)  ; FMad(a,b,c)
  %8099 = fadd fast float %8098, %8086
  %8100 = fmul fast float %8088, %6810
  %8101 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %8089, float %8100)  ; FMad(a,b,c)
  %8102 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %8090, float %8101)  ; FMad(a,b,c)
  %8103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8104 = extractvalue %dx.types.CBufRet.f32 %8103, 0
  %8105 = extractvalue %dx.types.CBufRet.f32 %8103, 1
  %8106 = extractvalue %dx.types.CBufRet.f32 %8103, 3
  %8107 = fmul fast float %8106, %8095
  %8108 = fmul fast float %8106, %8099
  %8109 = fadd fast float %8107, %8104
  %8110 = fadd fast float %8108, %8105
  %8111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8112 = extractvalue %dx.types.CBufRet.f32 %8111, 0
  %8113 = extractvalue %dx.types.CBufRet.f32 %8111, 1
  %8114 = fsub fast float %8109, %8112
  %8115 = fsub fast float %8110, %8113
  %8116 = fcmp fast olt float %8114, 0.000000e+00
  %8117 = fcmp fast olt float %8115, 0.000000e+00
  %8118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8119 = extractvalue %dx.types.CBufRet.f32 %8118, 0
  %8120 = extractvalue %dx.types.CBufRet.f32 %8118, 1
  %8121 = extractvalue %dx.types.CBufRet.f32 %8118, 2
  %8122 = extractvalue %dx.types.CBufRet.f32 %8118, 3
  %8123 = select i1 %8116, float %8119, float %8121
  %8124 = select i1 %8117, float %8120, float %8122
  %8125 = fmul fast float %8123, %8114
  %8126 = fmul fast float %8124, %8115
  %8127 = call float @dx.op.unary.f32(i32 6, float %8125)  ; FAbs(value)
  %8128 = call float @dx.op.unary.f32(i32 6, float %8126)  ; FAbs(value)
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8131 = call float @dx.op.binary.f32(i32 35, float %8127, float %8128)  ; FMax(a,b)
  %8132 = fsub fast float %8130, %8131
  %8133 = call float @dx.op.unary.f32(i32 7, float %8132)  ; Saturate(value)
  %8134 = fcmp fast ogt float %8133, 0.000000e+00
  br i1 %8134, label %8135, label %8176, !dx.controlflow.hints !124

; <label>:8135                                    ; preds = %8076
  %8136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %8109, float %8110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8137 = extractvalue %dx.types.ResRet.f32 %8136, 1
  %8138 = fcmp fast ogt float %8137, 0.000000e+00
  br i1 %8138, label %8139, label %8171

; <label>:8139                                    ; preds = %8135
  %8140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %8109, float %8110, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8141 = extractvalue %dx.types.ResRet.f32 %8140, 0
  %8142 = extractvalue %dx.types.ResRet.f32 %8140, 1
  %8143 = extractvalue %dx.types.ResRet.f32 %8140, 2
  %8144 = extractvalue %dx.types.ResRet.f32 %8140, 3
  %8145 = fsub fast float 1.000000e+00, %8091
  %8146 = fsub fast float %8145, %8102
  %8147 = fmul fast float %8146, 0x400921FB60000000
  %8148 = fadd fast float %8147, 0x3FF921FB60000000
  %8149 = call float @dx.op.unary.f32(i32 13, float %8148)  ; Sin(value)
  %8150 = fadd fast float %8149, -1.000000e+00
  %8151 = fmul fast float %8150, 0x3FD45F3060000000
  %8152 = fmul fast float %8146, 0x401921FB60000000
  %8153 = fadd fast float %8152, 0x400921FB60000000
  %8154 = call float @dx.op.unary.f32(i32 13, float %8153)  ; Sin(value)
  %8155 = fadd fast float %8154, 0x3E7777A5C0000000
  %8156 = fmul fast float %8155, 0x3FC45F3060000000
  %8157 = fmul fast float %8146, 0x4022D97C80000000
  %8158 = fadd fast float %8157, 0x4012D97C80000000
  %8159 = call float @dx.op.unary.f32(i32 13, float %8158)  ; Sin(value)
  %8160 = fadd fast float %8159, 1.000000e+00
  %8161 = fmul fast float %8160, 0x3FBB2995E0000000
  %8162 = fmul fast float %8146, 0x402921FB60000000
  %8163 = fadd fast float %8162, 0x401921FB60000000
  %8164 = call float @dx.op.unary.f32(i32 13, float %8163)  ; Sin(value)
  %8165 = fadd fast float %8164, 0xBE8777A5C0000000
  %8166 = fmul fast float %8165, 0x3FB45F3060000000
  %8167 = call float @dx.op.dot4.f32(i32 56, float %8141, float %8142, float %8143, float %8144, float %8151, float %8156, float %8161, float %8166)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8168 = fmul fast float %8167, 0xBFF7154760000000
  %8169 = call float @dx.op.unary.f32(i32 21, float %8168)  ; Exp(value)
  %8170 = call float @dx.op.unary.f32(i32 7, float %8169)  ; Saturate(value)
  br label %8171

; <label>:8171                                    ; preds = %8139, %8135
  %8172 = phi float [ %8170, %8139 ], [ 1.000000e+00, %8135 ]
  %8173 = fadd fast float %8172, -1.000000e+00
  %8174 = fmul fast float %8173, %8133
  %8175 = fadd fast float %8174, 1.000000e+00
  br label %8176

; <label>:8176                                    ; preds = %8171, %8076
  %8177 = phi float [ %8175, %8171 ], [ 1.000000e+00, %8076 ]
  %8178 = fmul fast float %8177, %8072
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.CBufRet.f32 %8179, 2
  %8183 = fadd fast float %8180, %190
  %8184 = fadd fast float %8181, %191
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 1
  %8187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8188 = extractvalue %dx.types.CBufRet.f32 %8187, 0
  %8189 = extractvalue %dx.types.CBufRet.f32 %8187, 1
  %8190 = extractvalue %dx.types.CBufRet.f32 %8187, 2
  %8191 = fsub fast float -0.000000e+00, %8183
  %8192 = fsub fast float -0.000000e+00, %8184
  %8193 = fsub fast float -0.000000e+00, %192
  %8194 = fsub fast float %8193, %8182
  %8195 = fadd fast float %8194, %8186
  %8196 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8191, float %8192, float %8195)  ; Dot3(ax,ay,az,bx,by,bz)
  %8197 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8188, float %8189, float %8190)  ; Dot3(ax,ay,az,bx,by,bz)
  %8198 = fdiv fast float 1.000000e+00, %8197
  %8199 = fmul fast float %8198, %8196
  %8200 = fmul fast float %8188, %8199
  %8201 = fmul fast float %8189, %8199
  %8202 = fadd fast float %8200, %8183
  %8203 = fadd fast float %8201, %8184
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.CBufRet.f32 %8204, 1
  %8207 = fsub fast float %8202, %8205
  %8208 = fsub fast float %8203, %8206
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %8211 = extractvalue %dx.types.CBufRet.f32 %8209, 3
  %8212 = fmul fast float %8207, %8210
  %8213 = fmul fast float %8208, %8211
  %8214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8215 = extractvalue %dx.types.CBufRet.i32 %8214, 3
  %8216 = icmp eq i32 %8215, 0
  br i1 %8216, label %8222, label %8217

; <label>:8217                                    ; preds = %8176
  %8218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8212, float %8213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8219 = extractvalue %dx.types.ResRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.ResRet.f32 %8218, 1
  %8221 = extractvalue %dx.types.ResRet.f32 %8218, 2
  br label %8227

; <label>:8222                                    ; preds = %8176
  %8223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %44, float %8212, float %8213, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8224 = extractvalue %dx.types.ResRet.f32 %8223, 0
  %8225 = extractvalue %dx.types.ResRet.f32 %8223, 1
  %8226 = extractvalue %dx.types.ResRet.f32 %8223, 2
  br label %8227

; <label>:8227                                    ; preds = %8222, %8217
  %8228 = phi float [ %8219, %8217 ], [ %8224, %8222 ]
  %8229 = phi float [ %8220, %8217 ], [ %8225, %8222 ]
  %8230 = phi float [ %8221, %8217 ], [ %8226, %8222 ]
  %8231 = extractvalue %dx.types.CBufRet.f32 %8185, 2
  %8232 = fmul fast float %8231, %8228
  %8233 = extractvalue %dx.types.CBufRet.f32 %8185, 0
  %8234 = fsub fast float %8199, %8233
  %8235 = fsub fast float %8234, %8232
  %8236 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8235)  ; FMax(a,b)
  %8237 = fmul fast float %8236, %8229
  %8238 = call float @dx.op.binary.f32(i32 36, float %8230, float %8237)  ; FMin(a,b)
  %8239 = fmul fast float %8238, 0xBFF7154760000000
  %8240 = call float @dx.op.unary.f32(i32 21, float %8239)  ; Exp(value)
  %8241 = fmul fast float %8178, %8240
  br label %8242

; <label>:8242                                    ; preds = %8227, %8071
  %8243 = phi float [ %8241, %8227 ], [ %8072, %8071 ]
  %8244 = call float @dx.op.binary.f32(i32 36, float %8243, float %8243)  ; FMin(a,b)
  %8245 = call float @dx.op.binary.f32(i32 36, float %8243, float %8244)  ; FMin(a,b)
  %8246 = fcmp fast ogt float %8245, 0.000000e+00
  br i1 %8246, label %8247, label %8555, !dx.controlflow.hints !125

; <label>:8247                                    ; preds = %8242
  %8248 = bitcast i32 %5912 to float
  %8249 = fmul fast float %8243, %6802
  %8250 = fmul fast float %8243, %6803
  %8251 = fmul fast float %8243, %6804
  %8252 = fsub fast float %6791, %5880
  %8253 = fsub fast float %6792, %5881
  %8254 = fsub fast float %6793, %5882
  %8255 = call float @dx.op.dot3.f32(i32 55, float %8252, float %8253, float %8254, float %8252, float %8253, float %8254)  ; Dot3(ax,ay,az,bx,by,bz)
  %8256 = call float @dx.op.unary.f32(i32 25, float %8255)  ; Rsqrt(value)
  %8257 = fmul fast float %8256, %8252
  %8258 = fmul fast float %8256, %8253
  %8259 = fmul fast float %8256, %8254
  %8260 = call float @dx.op.dot3.f32(i32 55, float %6791, float %6792, float %6793, float %5841, float %5842, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %8261 = call float @dx.op.dot3.f32(i32 55, float %5883, float %5884, float %5885, float %8257, float %8258, float %8259)  ; Dot3(ax,ay,az,bx,by,bz)
  %8262 = call float @dx.op.unary.f32(i32 7, float %8260)  ; Saturate(value)
  %8263 = fmul fast float %8262, %8262
  %8264 = fmul fast float %8263, %8248
  %8265 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  %8266 = fmul fast float %8265, %8262
  %8267 = call float @dx.op.dot3.f32(i32 55, float %5841, float %5842, float %5843, float %8257, float %8258, float %8259)  ; Dot3(ax,ay,az,bx,by,bz)
  %8268 = fmul fast float %8267, %8267
  %8269 = call float @dx.op.unary.f32(i32 6, float %8260)  ; FAbs(value)
  %8270 = fsub fast float 1.000000e+00, %5906
  %8271 = fmul fast float %5888, %5888
  %8272 = fmul fast float %8271, %8270
  %8273 = fadd fast float %8272, %5906
  %8274 = bitcast float %8273 to i32
  %8275 = ashr i32 %8274, 1
  %8276 = add nsw i32 %8275, 532487669
  %8277 = bitcast i32 %8276 to float
  %8278 = fadd fast float %8277, %5888
  %8279 = fmul fast float %5906, %8268
  %8280 = fsub fast float 1.000000e+00, %8268
  %8281 = fadd fast float %8280, %8279
  %8282 = fmul fast float %8269, %8269
  %8283 = fmul fast float %8282, %8270
  %8284 = fadd fast float %8283, %5906
  %8285 = bitcast float %8284 to i32
  %8286 = ashr i32 %8285, 1
  %8287 = add nsw i32 %8286, 532487669
  %8288 = bitcast i32 %8287 to float
  %8289 = fadd fast float %8288, %8269
  %8290 = fmul fast float %8281, %8281
  %8291 = fmul fast float %8290, %8278
  %8292 = fmul fast float %8291, %8289
  %8293 = fdiv fast float 0x3FF0A00000000000, %8292
  %8294 = fmul fast float %8293, %5906
  %8295 = fmul fast float %6158, 0x3FF9999980000000
  %8296 = fsub fast float 5.000000e+00, %8295
  %8297 = call float @dx.op.unary.f32(i32 6, float %8261)  ; FAbs(value)
  %8298 = fsub fast float 1.000000e+00, %8297
  %8299 = fmul fast float %6158, 0x41D9660740000000
  %8300 = fadd fast float %8299, 0xC1EFBF8940000000
  %8301 = bitcast float %8298 to i32
  %8302 = sitofp i32 %8301 to float
  %8303 = fmul fast float %8302, %8296
  %8304 = fadd fast float %8300, %8303
  %8305 = fptosi float %8304 to i32
  %8306 = bitcast i32 %8305 to float
  %8307 = fsub fast float 1.000000e+00, %5835
  %8308 = fsub fast float 1.000000e+00, %5836
  %8309 = fsub fast float 1.000000e+00, %5886
  %8310 = fmul fast float %8306, %8307
  %8311 = fmul fast float %8306, %8308
  %8312 = fmul fast float %8306, %8309
  %8313 = fadd fast float %8310, %5835
  %8314 = fadd fast float %8311, %5836
  %8315 = fadd fast float %8312, %5886
  br i1 %6181, label %8316, label %8339

; <label>:8316                                    ; preds = %8247
  %8317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4897, float %8297, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8318 = extractvalue %dx.types.ResRet.f32 %8317, 0
  %8319 = extractvalue %dx.types.ResRet.f32 %8317, 1
  %8320 = extractvalue %dx.types.ResRet.f32 %8317, 2
  %8321 = fadd fast float %8318, -5.000000e-01
  %8322 = fadd fast float %8319, -5.000000e-01
  %8323 = fadd fast float %8320, -5.000000e-01
  %8324 = fmul fast float %5835, 4.000000e+00
  %8325 = fmul fast float %8324, %8307
  %8326 = fmul fast float %8325, %8321
  %8327 = fmul fast float %5836, 4.000000e+00
  %8328 = fmul fast float %8327, %8308
  %8329 = fmul fast float %8328, %8322
  %8330 = fmul fast float %5886, 4.000000e+00
  %8331 = fmul fast float %8330, %8309
  %8332 = fmul fast float %8331, %8323
  %8333 = fadd fast float %8326, %8313
  %8334 = fadd fast float %8329, %8314
  %8335 = fadd fast float %8332, %8315
  %8336 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8337 = call float @dx.op.unary.f32(i32 7, float %8334)  ; Saturate(value)
  %8338 = call float @dx.op.unary.f32(i32 7, float %8335)  ; Saturate(value)
  br label %8339

; <label>:8339                                    ; preds = %8316, %8247
  %8340 = phi float [ %8336, %8316 ], [ %8313, %8247 ]
  %8341 = phi float [ %8337, %8316 ], [ %8314, %8247 ]
  %8342 = phi float [ %8338, %8316 ], [ %8315, %8247 ]
  %8343 = fmul fast float %8260, 9.843750e-01
  %8344 = fadd fast float %8343, 7.812500e-03
  %8345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %44, float %8344, float %6162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8346 = extractvalue %dx.types.ResRet.f32 %8345, 0
  %8347 = extractvalue %dx.types.ResRet.f32 %8345, 1
  %8348 = extractvalue %dx.types.ResRet.f32 %8345, 2
  %8349 = extractvalue %dx.types.ResRet.f32 %8345, 3
  %8350 = fsub fast float %8348, %8346
  %8351 = fsub fast float %8349, %8347
  %8352 = fmul fast float %8350, %6168
  %8353 = fmul fast float %8351, %6168
  %8354 = fadd fast float %8352, %8346
  %8355 = fadd fast float %8353, %8347
  %8356 = fmul fast float %8354, %5835
  %8357 = fmul fast float %8354, %5836
  %8358 = fmul fast float %8354, %5886
  %8359 = fadd fast float %8356, %8355
  %8360 = fadd fast float %8357, %8355
  %8361 = fadd fast float %8358, %8355
  br i1 %6181, label %8362, label %8385

; <label>:8362                                    ; preds = %8339
  %8363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4897, float %8260, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8364 = extractvalue %dx.types.ResRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.ResRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.ResRet.f32 %8363, 2
  %8367 = fadd fast float %8364, -5.000000e-01
  %8368 = fadd fast float %8365, -5.000000e-01
  %8369 = fadd fast float %8366, -5.000000e-01
  %8370 = fmul fast float %5835, 4.000000e+00
  %8371 = fmul fast float %8370, %8307
  %8372 = fmul fast float %8371, %8367
  %8373 = fmul fast float %5836, 4.000000e+00
  %8374 = fmul fast float %8373, %8308
  %8375 = fmul fast float %8374, %8368
  %8376 = fmul fast float %5886, 4.000000e+00
  %8377 = fmul fast float %8376, %8309
  %8378 = fmul fast float %8377, %8369
  %8379 = fadd fast float %8372, %8359
  %8380 = fadd fast float %8375, %8360
  %8381 = fadd fast float %8378, %8361
  %8382 = call float @dx.op.unary.f32(i32 7, float %8379)  ; Saturate(value)
  %8383 = call float @dx.op.unary.f32(i32 7, float %8380)  ; Saturate(value)
  %8384 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  br label %8385

; <label>:8385                                    ; preds = %8362, %8339
  %8386 = phi float [ %8382, %8362 ], [ %8359, %8339 ]
  %8387 = phi float [ %8383, %8362 ], [ %8360, %8339 ]
  %8388 = phi float [ %8384, %8362 ], [ %8361, %8339 ]
  %8389 = call float @dx.op.binary.f32(i32 35, float %8387, float %8388)  ; FMax(a,b)
  %8390 = call float @dx.op.binary.f32(i32 35, float %8386, float %8389)  ; FMax(a,b)
  %8391 = fsub fast float 1.000000e+00, %8390
  %8392 = call float @dx.op.binary.f32(i32 35, float %8269, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8393 = fdiv fast float %4201, %8392
  %8394 = fmul fast float %6700, %8393
  %8395 = fmul fast float %6702, %8393
  %8396 = fmul fast float %6704, %8393
  %8397 = call float @dx.op.unary.f32(i32 21, float %8394)  ; Exp(value)
  %8398 = call float @dx.op.unary.f32(i32 21, float %8395)  ; Exp(value)
  %8399 = call float @dx.op.unary.f32(i32 21, float %8396)  ; Exp(value)
  %8400 = call float @dx.op.unary.f32(i32 7, float %8397)  ; Saturate(value)
  %8401 = call float @dx.op.unary.f32(i32 7, float %8398)  ; Saturate(value)
  %8402 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8403 = select i1 %6697, float %8400, float 0.000000e+00
  %8404 = select i1 %6698, float %8401, float 0.000000e+00
  %8405 = select i1 %6699, float %8402, float 0.000000e+00
  %8406 = fsub fast float -0.000000e+00, %5841
  %8407 = fsub fast float -0.000000e+00, %5842
  %8408 = fsub fast float -0.000000e+00, %5843
  %8409 = call float @dx.op.dot3.f32(i32 55, float %6791, float %6792, float %6793, float %8406, float %8407, float %8408)  ; Dot3(ax,ay,az,bx,by,bz)
  %8410 = call float @dx.op.unary.f32(i32 7, float %8409)  ; Saturate(value)
  %8411 = fmul fast float %8410, 9.843750e-01
  %8412 = fadd fast float %8411, 7.812500e-03
  %8413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %44, float %8412, float %6162, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8414 = extractvalue %dx.types.ResRet.f32 %8413, 0
  %8415 = extractvalue %dx.types.ResRet.f32 %8413, 1
  %8416 = extractvalue %dx.types.ResRet.f32 %8413, 2
  %8417 = extractvalue %dx.types.ResRet.f32 %8413, 3
  %8418 = fsub fast float %8416, %8414
  %8419 = fsub fast float %8417, %8415
  %8420 = fmul fast float %8418, %6168
  %8421 = fmul fast float %8419, %6168
  %8422 = fadd fast float %8420, %8414
  %8423 = fadd fast float %8421, %8415
  %8424 = fmul fast float %8422, %5835
  %8425 = fmul fast float %8422, %5836
  %8426 = fmul fast float %8422, %5886
  %8427 = fadd fast float %8424, %8423
  %8428 = fadd fast float %8425, %8423
  %8429 = fadd fast float %8426, %8423
  br i1 %6181, label %8430, label %8453

; <label>:8430                                    ; preds = %8385
  %8431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %44, float %4897, float %8410, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8432 = extractvalue %dx.types.ResRet.f32 %8431, 0
  %8433 = extractvalue %dx.types.ResRet.f32 %8431, 1
  %8434 = extractvalue %dx.types.ResRet.f32 %8431, 2
  %8435 = fadd fast float %8432, -5.000000e-01
  %8436 = fadd fast float %8433, -5.000000e-01
  %8437 = fadd fast float %8434, -5.000000e-01
  %8438 = fmul fast float %5835, 4.000000e+00
  %8439 = fmul fast float %8438, %8307
  %8440 = fmul fast float %8439, %8435
  %8441 = fmul fast float %5836, 4.000000e+00
  %8442 = fmul fast float %8441, %8308
  %8443 = fmul fast float %8442, %8436
  %8444 = fmul fast float %5886, 4.000000e+00
  %8445 = fmul fast float %8444, %8309
  %8446 = fmul fast float %8445, %8437
  %8447 = fadd fast float %8440, %8427
  %8448 = fadd fast float %8443, %8428
  %8449 = fadd fast float %8446, %8429
  %8450 = call float @dx.op.unary.f32(i32 7, float %8447)  ; Saturate(value)
  %8451 = call float @dx.op.unary.f32(i32 7, float %8448)  ; Saturate(value)
  %8452 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  br label %8453

; <label>:8453                                    ; preds = %8430, %8385
  %8454 = phi float [ %8450, %8430 ], [ %8427, %8385 ]
  %8455 = phi float [ %8451, %8430 ], [ %8428, %8385 ]
  %8456 = phi float [ %8452, %8430 ], [ %8429, %8385 ]
  %8457 = call float @dx.op.binary.f32(i32 35, float %8455, float %8456)  ; FMax(a,b)
  %8458 = call float @dx.op.binary.f32(i32 35, float %8454, float %8457)  ; FMax(a,b)
  %8459 = fsub fast float 1.000000e+00, %8458
  %8460 = fmul fast float %5903, %6764
  %8461 = fadd fast float %6766, %8460
  %8462 = call float @dx.op.unary.f32(i32 7, float %8461)  ; Saturate(value)
  %8463 = fsub fast float %6791, %5894
  %8464 = fsub fast float %6792, %5895
  %8465 = fsub fast float %6793, %5896
  %8466 = call float @dx.op.dot3.f32(i32 55, float %8463, float %8464, float %8465, float %8463, float %8464, float %8465)  ; Dot3(ax,ay,az,bx,by,bz)
  %8467 = call float @dx.op.unary.f32(i32 25, float %8466)  ; Rsqrt(value)
  %8468 = fmul fast float %8467, %8463
  %8469 = fmul fast float %8467, %8464
  %8470 = fmul fast float %8467, %8465
  %8471 = call float @dx.op.dot3.f32(i32 55, float %8406, float %8407, float %8408, float %8468, float %8469, float %8470)  ; Dot3(ax,ay,az,bx,by,bz)
  %8472 = fmul fast float %8471, %8471
  %8473 = call float @dx.op.unary.f32(i32 6, float %8410)  ; FAbs(value)
  %8474 = call float @dx.op.binary.f32(i32 35, float %8462, float 0x3F847AE140000000)  ; FMax(a,b)
  %8475 = fmul fast float %8474, %8474
  %8476 = fmul fast float %8475, %8475
  %8477 = fsub fast float 1.000000e+00, %8476
  %8478 = fmul fast float %8271, %8477
  %8479 = fadd fast float %8478, %8476
  %8480 = bitcast float %8479 to i32
  %8481 = ashr i32 %8480, 1
  %8482 = add nsw i32 %8481, 532487669
  %8483 = bitcast i32 %8482 to float
  %8484 = fadd fast float %8483, %5888
  %8485 = fmul fast float %8476, %8472
  %8486 = fsub fast float 1.000000e+00, %8472
  %8487 = fadd fast float %8486, %8485
  %8488 = fmul fast float %8473, %8473
  %8489 = fmul fast float %8488, %8477
  %8490 = fadd fast float %8489, %8476
  %8491 = bitcast float %8490 to i32
  %8492 = ashr i32 %8491, 1
  %8493 = add nsw i32 %8492, 532487669
  %8494 = bitcast i32 %8493 to float
  %8495 = fadd fast float %8494, %8473
  %8496 = fmul fast float %8487, %8487
  %8497 = fmul fast float %8496, %8484
  %8498 = fmul fast float %8497, %8495
  %8499 = fdiv fast float 0x3FF0A00000000000, %8498
  %8500 = fmul fast float %8499, %8476
  %8501 = fmul fast float %8410, %8403
  %8502 = fmul fast float %8410, %8404
  %8503 = fmul fast float %8410, %8405
  %8504 = fmul fast float %8501, %8459
  %8505 = fmul fast float %8504, %8500
  %8506 = fmul fast float %8502, %8459
  %8507 = fmul fast float %8506, %8500
  %8508 = fmul fast float %8503, %8459
  %8509 = fmul fast float %8508, %8500
  %8510 = fmul fast float %8340, %8294
  %8511 = fmul fast float %8341, %8294
  %8512 = fmul fast float %8342, %8294
  %8513 = fsub fast float 1.000000e+00, %8261
  %8514 = bitcast float %8513 to i32
  %8515 = sitofp i32 %8514 to float
  %8516 = fmul fast float %8515, 5.000000e+00
  %8517 = fadd fast float %8516, 0xC1EFBF8940000000
  %8518 = fptosi float %8517 to i32
  %8519 = bitcast i32 %8518 to float
  %8520 = fmul fast float %8519, %4898
  %8521 = fmul fast float %8391, %8520
  %8522 = fmul fast float %8521, %6692
  %8523 = fmul fast float %8521, %6693
  %8524 = fmul fast float %8521, %6694
  %8525 = fadd fast float %8522, %8510
  %8526 = fadd fast float %8523, %8511
  %8527 = fadd fast float %8524, %8512
  %8528 = fmul fast float %8525, %8266
  %8529 = fmul fast float %8526, %8266
  %8530 = fmul fast float %8527, %8266
  %8531 = fmul fast float %8266, %8249
  %8532 = fmul fast float %8531, %8391
  %8533 = fmul fast float %8266, %8250
  %8534 = fmul fast float %8533, %8391
  %8535 = fmul fast float %8266, %8251
  %8536 = fmul fast float %8535, %8391
  %8537 = fadd fast float %8528, %8505
  %8538 = fadd fast float %8529, %8507
  %8539 = fadd fast float %8530, %8509
  %8540 = fmul fast float %8537, %8249
  %8541 = fmul fast float %8538, %8250
  %8542 = fmul fast float %8539, %8251
  %8543 = fadd fast float %8532, %6781
  %8544 = fmul fast float %8543, %4894
  %8545 = fadd fast float %8534, %6783
  %8546 = fmul fast float %8545, %4894
  %8547 = fadd fast float %8536, %6785
  %8548 = fmul fast float %8547, %4894
  %8549 = fadd fast float %8540, %6745
  %8550 = fmul fast float %8549, %4894
  %8551 = fadd fast float %8541, %6748
  %8552 = fmul fast float %8551, %4894
  %8553 = fadd fast float %8542, %6751
  %8554 = fmul fast float %8553, %4894
  br label %8555

; <label>:8555                                    ; preds = %8453, %8242, %6675
  %8556 = phi float [ %6746, %6675 ], [ %6746, %8242 ], [ %8550, %8453 ]
  %8557 = phi float [ %6749, %6675 ], [ %6749, %8242 ], [ %8552, %8453 ]
  %8558 = phi float [ %6752, %6675 ], [ %6752, %8242 ], [ %8554, %8453 ]
  %8559 = phi float [ %6782, %6675 ], [ %6782, %8242 ], [ %8544, %8453 ]
  %8560 = phi float [ %6784, %6675 ], [ %6784, %8242 ], [ %8546, %8453 ]
  %8561 = phi float [ %6786, %6675 ], [ %6786, %8242 ], [ %8548, %8453 ]
  %8562 = fmul fast float %4894, %6721
  %8563 = fsub fast float -0.000000e+00, %8562
  %8564 = fmul fast float %4894, %6722
  %8565 = fsub fast float -0.000000e+00, %8564
  %8566 = fmul fast float %4894, %6723
  %8567 = fsub fast float -0.000000e+00, %8566
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 0
  %8570 = fmul fast float %8569, %6727
  %8571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8572 = extractvalue %dx.types.CBufRet.f32 %8571, 3
  %8573 = fsub fast float 1.000000e+00, %4901
  %8574 = call float @dx.op.unary.f32(i32 7, float %8573)  ; Saturate(value)
  %8575 = fadd fast float %8561, %4900
  %8576 = fmul fast float %8575, %4901
  %8577 = fmul fast float %8574, %8572
  %8578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8579 = extractvalue %dx.types.CBufRet.f32 %8578, 3
  %8580 = fmul fast float %8559, %5838
  %8581 = fmul fast float %8560, %5839
  %8582 = fmul fast float %8561, %5840
  %8583 = fcmp fast ogt float %98, %225
  %8584 = and i1 %8583, %4969
  %8585 = or i1 %5048, %8584
  %8586 = icmp eq i32 %4968, 2
  %8587 = fcmp fast ole float %98, %225
  %8588 = and i1 %8587, %8586
  %8589 = or i1 %8588, %8585
  br i1 %8584, label %8590, label %8847

; <label>:8590                                    ; preds = %8555
  %8591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8592 = extractvalue %dx.types.CBufRet.f32 %8591, 2
  %8593 = extractvalue %dx.types.CBufRet.f32 %8591, 3
  %8594 = fmul fast float %8592, %111
  %8595 = fmul fast float %8593, %112
  %8596 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8597 = call float @dx.op.unary.f32(i32 7, float %8595)  ; Saturate(value)
  %8598 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8596, float %8597, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8599 = extractvalue %dx.types.ResRet.f32 %8598, 0
  %8600 = extractvalue %dx.types.ResRet.f32 %8598, 1
  %8601 = extractvalue %dx.types.ResRet.f32 %8598, 2
  %8602 = extractvalue %dx.types.ResRet.f32 %8598, 3
  %8603 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %8596, float %8597, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8604 = extractvalue %dx.types.ResRet.f32 %8603, 0
  %8605 = extractvalue %dx.types.ResRet.f32 %8603, 1
  %8606 = extractvalue %dx.types.ResRet.f32 %8603, 2
  %8607 = extractvalue %dx.types.ResRet.f32 %8603, 3
  %8608 = call float @dx.op.binary.f32(i32 35, float %8600, float %8601)  ; FMax(a,b)
  %8609 = call float @dx.op.binary.f32(i32 35, float %8599, float %8608)  ; FMax(a,b)
  %8610 = call float @dx.op.binary.f32(i32 35, float %8609, float %8602)  ; FMax(a,b)
  %8611 = call float @dx.op.binary.f32(i32 36, float %8605, float %8606)  ; FMin(a,b)
  %8612 = call float @dx.op.binary.f32(i32 36, float %8604, float %8611)  ; FMin(a,b)
  %8613 = call float @dx.op.binary.f32(i32 36, float %8612, float %8607)  ; FMin(a,b)
  %8614 = fmul fast float %8610, 2.550000e+02
  %8615 = fadd fast float %8614, 0x3F70101020000000
  %8616 = fptoui float %8615 to i32
  %8617 = fmul fast float %8613, 2.550000e+02
  %8618 = fadd fast float %8617, 0x3F70101020000000
  %8619 = fptoui float %8618 to i32
  %8620 = icmp ult i32 %8616, %8619
  br i1 %8620, label %8621, label %8789

; <label>:8621                                    ; preds = %8590
  %8622 = fcmp fast ogt float %97, 9.843750e-01
  %8623 = fadd fast float %98, -4.000000e+00
  %8624 = select i1 %8622, float -4.000000e+00, float %8623
  %8625 = call float @dx.op.binary.f32(i32 35, float %8624, float 0.000000e+00)  ; FMax(a,b)
  %8626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8627 = extractvalue %dx.types.CBufRet.f32 %8626, 0
  %8628 = fadd fast float %8627, %8625
  %8629 = extractvalue %dx.types.CBufRet.f32 %8626, 2
  %8630 = fmul fast float %8628, %8629
  %8631 = call float @dx.op.unary.f32(i32 23, float %8630)  ; Log(value)
  %8632 = extractvalue %dx.types.CBufRet.f32 %8626, 3
  %8633 = fmul fast float %8632, %8631
  %8634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8635 = extractvalue %dx.types.CBufRet.f32 %8634, 2
  %8636 = fmul fast float %8633, %8635
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = uitofp i32 %8616 to float
  %8639 = uitofp i32 %8619 to float
  %8640 = fadd fast float %8638, 5.000000e-01
  %8641 = fadd fast float %8639, 5.000000e-01
  %8642 = fmul fast float %8635, %8640
  %8643 = fmul fast float %8635, %8641
  %8644 = fadd fast float %8642, 0x3F0FFB4800000000
  %8645 = fadd fast float %8643, 0xBF0FFB4800000000
  %8646 = call float @dx.op.binary.f32(i32 35, float %8637, float %8644)  ; FMax(a,b)
  %8647 = call float @dx.op.binary.f32(i32 36, float %8646, float %8645)  ; FMin(a,b)
  %8648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8649 = extractvalue %dx.types.CBufRet.f32 %8648, 1
  %8650 = extractvalue %dx.types.CBufRet.f32 %8648, 2
  %8651 = extractvalue %dx.types.CBufRet.f32 %8648, 0
  %8652 = fmul fast float %8649, %8647
  %8653 = fadd fast float %8651, %8652
  %8654 = fadd fast float %8651, %8650
  %8655 = fsub fast float %8649, %8650
  %8656 = fadd fast float %8655, %8651
  %8657 = call float @dx.op.binary.f32(i32 35, float %8653, float %8654)  ; FMax(a,b)
  %8658 = call float @dx.op.binary.f32(i32 36, float %8657, float %8656)  ; FMin(a,b)
  %8659 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %8596, float %8597, float %8658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8660 = extractvalue %dx.types.ResRet.f32 %8659, 0
  %8661 = extractvalue %dx.types.ResRet.f32 %8659, 1
  %8662 = extractvalue %dx.types.ResRet.f32 %8659, 2
  %8663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8664 = extractvalue %dx.types.CBufRet.i32 %8663, 0
  %8665 = extractvalue %dx.types.CBufRet.i32 %8663, 1
  %8666 = uitofp i32 %8664 to float
  %8667 = uitofp i32 %8665 to float
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8671 = fmul fast float %8666, %8596
  %8672 = fmul fast float %8667, %8597
  %8673 = fadd fast float %8671, -5.000000e-01
  %8674 = fadd fast float %8672, -5.000000e-01
  %8675 = call float @dx.op.unary.f32(i32 22, float %8673)  ; Frc(value)
  %8676 = call float @dx.op.unary.f32(i32 22, float %8674)  ; Frc(value)
  %8677 = fmul fast float %8675, %8675
  %8678 = fmul fast float %8677, %8675
  %8679 = fsub fast float 3.000000e+00, %8675
  %8680 = fmul fast float %8677, %8679
  %8681 = fmul fast float %8675, 3.000000e+00
  %8682 = fmul fast float %8678, 3.000000e+00
  %8683 = fmul fast float %8677, 6.000000e+00
  %8684 = fsub fast float %8682, %8683
  %8685 = fadd fast float %8684, 4.000000e+00
  %8686 = fmul fast float %8685, 0x3FC5555560000000
  %8687 = fmul fast float %8678, -3.000000e+00
  %8688 = fadd fast float %8677, %8675
  %8689 = fmul fast float %8688, 3.000000e+00
  %8690 = fadd fast float %8687, 1.000000e+00
  %8691 = fadd fast float %8690, %8689
  %8692 = fmul fast float %8678, 0x3FC5555560000000
  %8693 = fmul fast float %8676, %8676
  %8694 = fmul fast float %8693, %8676
  %8695 = fsub fast float 3.000000e+00, %8676
  %8696 = fmul fast float %8693, %8695
  %8697 = fmul fast float %8676, 3.000000e+00
  %8698 = fmul fast float %8694, 3.000000e+00
  %8699 = fmul fast float %8693, 6.000000e+00
  %8700 = fsub fast float %8698, %8699
  %8701 = fadd fast float %8700, 4.000000e+00
  %8702 = fmul fast float %8701, 0x3FC5555560000000
  %8703 = fmul fast float %8694, -3.000000e+00
  %8704 = fadd fast float %8693, %8676
  %8705 = fmul fast float %8704, 3.000000e+00
  %8706 = fadd fast float %8703, 1.000000e+00
  %8707 = fadd fast float %8706, %8705
  %8708 = fmul fast float %8694, 0x3FC5555560000000
  %8709 = fadd fast float %8675, 1.000000e+00
  %8710 = fsub fast float 1.000000e+00, %8681
  %8711 = fadd fast float %8710, %8680
  %8712 = fadd fast float %8711, %8685
  %8713 = fmul fast float %8712, 0x3FC5555560000000
  %8714 = fdiv fast float %8686, %8713
  %8715 = fsub fast float %8709, %8714
  %8716 = fsub fast float 1.000000e+00, %8675
  %8717 = fadd fast float %8691, %8678
  %8718 = fmul fast float %8717, 0x3FC5555560000000
  %8719 = fdiv fast float %8692, %8718
  %8720 = fadd fast float %8716, %8719
  %8721 = fadd fast float %8676, 1.000000e+00
  %8722 = fsub fast float 1.000000e+00, %8697
  %8723 = fadd fast float %8722, %8696
  %8724 = fadd fast float %8723, %8701
  %8725 = fmul fast float %8724, 0x3FC5555560000000
  %8726 = fdiv fast float %8702, %8725
  %8727 = fsub fast float %8721, %8726
  %8728 = fsub fast float 1.000000e+00, %8676
  %8729 = fadd fast float %8707, %8694
  %8730 = fmul fast float %8729, 0x3FC5555560000000
  %8731 = fdiv fast float %8708, %8730
  %8732 = fadd fast float %8731, %8728
  %8733 = fmul fast float %8715, %8669
  %8734 = fsub fast float %8596, %8733
  %8735 = fmul fast float %8720, %8669
  %8736 = fadd fast float %8735, %8596
  %8737 = fmul fast float %8732, %8670
  %8738 = fadd fast float %8737, %8597
  %8739 = fmul fast float %8727, %8670
  %8740 = fsub fast float %8597, %8739
  %8741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8734, float %8740, float %8658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8742 = extractvalue %dx.types.ResRet.f32 %8741, 0
  %8743 = extractvalue %dx.types.ResRet.f32 %8741, 1
  %8744 = extractvalue %dx.types.ResRet.f32 %8741, 2
  %8745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8736, float %8740, float %8658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8746 = extractvalue %dx.types.ResRet.f32 %8745, 0
  %8747 = extractvalue %dx.types.ResRet.f32 %8745, 1
  %8748 = extractvalue %dx.types.ResRet.f32 %8745, 2
  %8749 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8734, float %8738, float %8658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8750 = extractvalue %dx.types.ResRet.f32 %8749, 0
  %8751 = extractvalue %dx.types.ResRet.f32 %8749, 1
  %8752 = extractvalue %dx.types.ResRet.f32 %8749, 2
  %8753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %8736, float %8738, float %8658, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8754 = extractvalue %dx.types.ResRet.f32 %8753, 0
  %8755 = extractvalue %dx.types.ResRet.f32 %8753, 1
  %8756 = extractvalue %dx.types.ResRet.f32 %8753, 2
  %8757 = fsub fast float %8750, %8742
  %8758 = fsub fast float %8751, %8743
  %8759 = fsub fast float %8752, %8744
  %8760 = fmul fast float %8757, %8730
  %8761 = fmul fast float %8758, %8730
  %8762 = fmul fast float %8759, %8730
  %8763 = fadd fast float %8760, %8742
  %8764 = fadd fast float %8761, %8743
  %8765 = fadd fast float %8762, %8744
  %8766 = fsub fast float %8754, %8746
  %8767 = fsub fast float %8755, %8747
  %8768 = fsub fast float %8756, %8748
  %8769 = fmul fast float %8766, %8730
  %8770 = fmul fast float %8767, %8730
  %8771 = fmul fast float %8768, %8730
  %8772 = fsub fast float %8746, %8763
  %8773 = fadd fast float %8772, %8769
  %8774 = fsub fast float %8747, %8764
  %8775 = fadd fast float %8774, %8770
  %8776 = fsub fast float %8748, %8765
  %8777 = fadd fast float %8776, %8771
  %8778 = fmul fast float %8773, %8718
  %8779 = fmul fast float %8775, %8718
  %8780 = fmul fast float %8777, %8718
  %8781 = fadd fast float %8778, %8763
  %8782 = fadd fast float %8779, %8764
  %8783 = fadd fast float %8780, %8765
  %8784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8785 = extractvalue %dx.types.CBufRet.f32 %8784, 1
  %8786 = fmul fast float %8781, %8785
  %8787 = fmul fast float %8782, %8785
  %8788 = fmul fast float %8783, %8785
  br label %8789

; <label>:8789                                    ; preds = %8621, %8590
  %8790 = phi float [ %8660, %8621 ], [ 1.000000e+00, %8590 ]
  %8791 = phi float [ %8661, %8621 ], [ 1.000000e+00, %8590 ]
  %8792 = phi float [ %8662, %8621 ], [ 1.000000e+00, %8590 ]
  %8793 = phi float [ %8786, %8621 ], [ 0.000000e+00, %8590 ]
  %8794 = phi float [ %8787, %8621 ], [ 0.000000e+00, %8590 ]
  %8795 = phi float [ %8788, %8621 ], [ 0.000000e+00, %8590 ]
  %8796 = fmul fast float %8793, %8563
  %8797 = fmul fast float %8794, %8565
  %8798 = fmul fast float %8795, %8567
  %8799 = call float @dx.op.dot3.f32(i32 55, float %8790, float %8791, float %8792, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8800 = call float @dx.op.dot3.f32(i32 55, float %8796, float %8797, float %8798, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8801 = select i1 %264, float %8799, float %8790
  %8802 = select i1 %264, float %8799, float %8791
  %8803 = select i1 %264, float 1.000000e+00, float %8792
  %8804 = select i1 %264, float %8800, float %8796
  %8805 = select i1 %264, float 0.000000e+00, float %8797
  %8806 = select i1 %264, float 0.000000e+00, float %8798
  %8807 = fmul fast float %8801, %8580
  %8808 = fmul fast float %8802, %8581
  %8809 = fmul fast float %8803, %8582
  %8810 = fadd fast float %8807, %8804
  %8811 = fadd fast float %8808, %8805
  %8812 = fadd fast float %8806, %8809
  %8813 = fmul fast float %8801, %8556
  %8814 = fmul fast float %8802, %8557
  %8815 = fmul fast float %8803, %8558
  %8816 = fmul fast float %139, %8592
  %8817 = fmul fast float %141, %8593
  %8818 = fsub fast float 1.000000e+00, %8816
  %8819 = fsub fast float 1.000000e+00, %8817
  %8820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8820, 0
  %8822 = extractvalue %dx.types.CBufRet.f32 %8820, 1
  %8823 = extractvalue %dx.types.CBufRet.f32 %8820, 2
  %8824 = fmul fast float %8818, %8821
  %8825 = fmul fast float %8818, %8822
  %8826 = fmul fast float %8818, %8823
  %8827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8828 = extractvalue %dx.types.CBufRet.f32 %8827, 0
  %8829 = extractvalue %dx.types.CBufRet.f32 %8827, 1
  %8830 = extractvalue %dx.types.CBufRet.f32 %8827, 2
  %8831 = fmul fast float %8819, %8828
  %8832 = fmul fast float %8819, %8829
  %8833 = fmul fast float %8819, %8830
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 0
  %8836 = extractvalue %dx.types.CBufRet.f32 %8834, 1
  %8837 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8838 = fadd fast float %8831, %8835
  %8839 = fadd fast float %8838, %8824
  %8840 = fadd fast float %8832, %8836
  %8841 = fadd fast float %8840, %8825
  %8842 = fadd fast float %8833, %8837
  %8843 = fadd fast float %8842, %8826
  %8844 = fmul fast float %8839, %225
  %8845 = fmul fast float %8841, %225
  %8846 = fmul fast float %8843, %225
  br label %8847

; <label>:8847                                    ; preds = %8789, %8555
  %8848 = phi float [ %8844, %8789 ], [ %190, %8555 ]
  %8849 = phi float [ %8845, %8789 ], [ %191, %8555 ]
  %8850 = phi float [ %8846, %8789 ], [ %192, %8555 ]
  %8851 = phi float [ %225, %8789 ], [ %98, %8555 ]
  %8852 = phi float [ %8810, %8789 ], [ %8580, %8555 ]
  %8853 = phi float [ %8811, %8789 ], [ %8581, %8555 ]
  %8854 = phi float [ %8812, %8789 ], [ %8582, %8555 ]
  %8855 = phi float [ %8813, %8789 ], [ %8556, %8555 ]
  %8856 = phi float [ %8814, %8789 ], [ %8557, %8555 ]
  %8857 = phi float [ %8815, %8789 ], [ %8558, %8555 ]
  %8858 = phi float [ %8790, %8789 ], [ 1.000000e+00, %8555 ]
  br i1 %8589, label %10013, label %8859

; <label>:8859                                    ; preds = %8847
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 0
  %8862 = extractvalue %dx.types.CBufRet.f32 %8860, 1
  %8863 = extractvalue %dx.types.CBufRet.f32 %8860, 2
  %8864 = extractvalue %dx.types.CBufRet.f32 %8860, 3
  %8865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8866 = extractvalue %dx.types.CBufRet.f32 %8865, 0
  %8867 = extractvalue %dx.types.CBufRet.f32 %8865, 1
  %8868 = extractvalue %dx.types.CBufRet.f32 %8865, 2
  %8869 = extractvalue %dx.types.CBufRet.f32 %8865, 3
  %8870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.f32 %8870, 0
  %8872 = extractvalue %dx.types.CBufRet.f32 %8870, 1
  %8873 = extractvalue %dx.types.CBufRet.f32 %8870, 2
  %8874 = extractvalue %dx.types.CBufRet.f32 %8870, 3
  %8875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8876 = extractvalue %dx.types.CBufRet.f32 %8875, 0
  %8877 = extractvalue %dx.types.CBufRet.f32 %8875, 1
  %8878 = extractvalue %dx.types.CBufRet.f32 %8875, 2
  %8879 = extractvalue %dx.types.CBufRet.f32 %8875, 3
  %8880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8881 = extractvalue %dx.types.CBufRet.f32 %8880, 3
  %8882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8883 = extractvalue %dx.types.CBufRet.f32 %8882, 3
  %8884 = extractvalue %dx.types.CBufRet.f32 %8882, 0
  %8885 = extractvalue %dx.types.CBufRet.f32 %8882, 1
  %8886 = extractvalue %dx.types.CBufRet.f32 %8882, 2
  %8887 = fcmp fast olt float %8886, -5.000000e-01
  %8888 = call float @dx.op.dot3.f32(i32 55, float %8848, float %8849, float %8850, float %8848, float %8849, float %8850)  ; Dot3(ax,ay,az,bx,by,bz)
  %8889 = call float @dx.op.unary.f32(i32 25, float %8888)  ; Rsqrt(value)
  %8890 = fmul fast float %8889, %8888
  %8891 = fmul fast float %8889, %8848
  %8892 = fmul fast float %8889, %8849
  %8893 = fmul fast float %8889, %8850
  %8894 = fadd fast float %8890, %8864
  %8895 = call float @dx.op.dot3.f32(i32 55, float %8891, float %8892, float %8893, float %8861, float %8862, float %8863)  ; Dot3(ax,ay,az,bx,by,bz)
  %8896 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8897 = extractvalue %dx.types.CBufRet.i32 %8896, 1
  %8898 = and i32 %8897, 1
  %8899 = icmp ne i32 %8898, 0
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 2
  %8902 = fcmp fast ogt float %8901, 0.000000e+00
  %8903 = and i1 %8899, %8902
  br i1 %8903, label %8904, label %9310, !dx.controlflow.hints !126

; <label>:8904                                    ; preds = %8859
  %8905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8906 = extractvalue %dx.types.CBufRet.f32 %8905, 3
  %8907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.f32 %8907, 2
  %8909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8910 = extractvalue %dx.types.CBufRet.f32 %8909, 2
  %8911 = fsub fast float %8908, %8910
  %8912 = and i32 %8897, 2
  %8913 = extractvalue %dx.types.CBufRet.i32 %8896, 0
  %8914 = call i32 @dx.op.binary.i32(i32 40, i32 %8913, i32 3)  ; UMin(a,b)
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 1
  %8918 = extractvalue %dx.types.CBufRet.f32 %8909, 0
  %8919 = extractvalue %dx.types.CBufRet.f32 %8909, 1
  %8920 = fsub fast float %8916, %8918
  %8921 = fsub fast float %8917, %8919
  %8922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8923 = extractvalue %dx.types.CBufRet.f32 %8922, 0
  %8924 = fcmp fast ogt float %8923, 0.000000e+00
  %8925 = fsub fast float -0.000000e+00, %8920
  %8926 = fsub fast float -0.000000e+00, %8921
  %8927 = call float @dx.op.dot2.f32(i32 54, float %8891, float %8892, float %8891, float %8892)  ; Dot2(ax,ay,bx,by)
  %8928 = call float @dx.op.dot2.f32(i32 54, float %8891, float %8892, float %8925, float %8926)  ; Dot2(ax,ay,bx,by)
  %8929 = fmul fast float %8928, 2.000000e+00
  %8930 = call float @dx.op.dot2.f32(i32 54, float %8925, float %8926, float %8925, float %8926)  ; Dot2(ax,ay,bx,by)
  %8931 = fmul fast float %8923, %8923
  %8932 = fsub fast float %8930, %8931
  %8933 = fmul fast float %8929, %8929
  %8934 = fmul fast float %8927, 4.000000e+00
  %8935 = fmul fast float %8934, %8932
  %8936 = fsub fast float %8933, %8935
  %8937 = fcmp fast ogt float %8936, 0.000000e+00
  br i1 %8937, label %8938, label %8953

; <label>:8938                                    ; preds = %8904
  %8939 = fcmp fast ogt float %8929, 0.000000e+00
  %8940 = call float @dx.op.unary.f32(i32 24, float %8936)  ; Sqrt(value)
  %8941 = fsub fast float -0.000000e+00, %8940
  %8942 = select i1 %8939, float %8940, float %8941
  %8943 = fadd fast float %8942, %8929
  %8944 = fmul float %8943, -5.000000e-01
  %8945 = fdiv fast float %8944, %8927
  %8946 = call float @dx.op.binary.f32(i32 35, float %8945, float 0.000000e+00)  ; FMax(a,b)
  %8947 = call float @dx.op.binary.f32(i32 36, float %8890, float %8946)  ; FMin(a,b)
  %8948 = fdiv fast float %8932, %8944
  %8949 = call float @dx.op.binary.f32(i32 35, float %8948, float 0.000000e+00)  ; FMax(a,b)
  %8950 = call float @dx.op.binary.f32(i32 36, float %8890, float %8949)  ; FMin(a,b)
  %8951 = call float @dx.op.binary.f32(i32 36, float %8947, float %8950)  ; FMin(a,b)
  %8952 = call float @dx.op.binary.f32(i32 35, float %8947, float %8950)  ; FMax(a,b)
  br label %8953

; <label>:8953                                    ; preds = %8938, %8904
  %8954 = phi float [ %8952, %8938 ], [ -1.000000e+00, %8904 ]
  %8955 = phi float [ %8951, %8938 ], [ -1.000000e+00, %8904 ]
  %8956 = phi i1 [ true, %8938 ], [ false, %8904 ]
  %8957 = and i1 %8924, %8956
  br i1 %8957, label %8958, label %8960

; <label>:8958                                    ; preds = %8953
  %8959 = fcmp fast oeq float %8955, %8954
  br i1 %8959, label %9263, label %8961

; <label>:8960                                    ; preds = %8953
  br i1 %8924, label %9263, label %8961

; <label>:8961                                    ; preds = %8960, %8958
  %8962 = phi float [ %8890, %8960 ], [ %8954, %8958 ]
  %8963 = phi float [ 0.000000e+00, %8960 ], [ %8955, %8958 ]
  %8964 = icmp ne i32 %8912, 0
  %8965 = fmul fast float %8962, %8893
  %8966 = fadd fast float %8965, %8906
  %8967 = fmul fast float %8966, %8962
  %8968 = select i1 %8964, float 0.000000e+00, float %8967
  %8969 = fcmp fast oeq float %8893, 0.000000e+00
  %8970 = fdiv fast float %8911, %8893
  %8971 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8970)  ; FMax(a,b)
  %8972 = select i1 %8969, float %8962, float %8971
  %8973 = call float @dx.op.binary.f32(i32 36, float %8962, float %8972)  ; FMin(a,b)
  %8974 = fcmp fast ogt float %8893, 0.000000e+00
  %8975 = fcmp fast olt float %8911, 0.000000e+00
  br i1 %8974, label %8976, label %9033

; <label>:8976                                    ; preds = %8961
  %8977 = icmp eq i32 %8912, 0
  br i1 %8975, label %8978, label %9022

; <label>:8978                                    ; preds = %8976
  %8979 = select i1 %8977, float %8962, float 0.000000e+00
  %8980 = fsub fast float -0.000000e+00, %8979
  %8981 = call float @dx.op.unary.f32(i32 6, float %8980)  ; FAbs(value)
  %8982 = fmul fast float %8979, %8893
  %8983 = fadd fast float %8982, %8906
  %8984 = fmul fast float %8981, %8983
  %8985 = fsub fast float %8968, %8984
  %8986 = fsub fast float %8962, %8981
  %8987 = select i1 %8977, float %8986, float 0.000000e+00
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 0
  %8990 = extractvalue %dx.types.CBufRet.f32 %8988, 1
  %8991 = extractvalue %dx.types.CBufRet.f32 %8988, 2
  %8992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8993 = extractvalue %dx.types.CBufRet.f32 %8992, 0
  %8994 = extractvalue %dx.types.CBufRet.f32 %8992, 1
  %8995 = extractvalue %dx.types.CBufRet.f32 %8992, 2
  %8996 = extractvalue %dx.types.CBufRet.f32 %8992, 3
  %8997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8998 = extractvalue %dx.types.CBufRet.f32 %8997, 3
  %8999 = call float @dx.op.binary.f32(i32 36, float %8985, float %8998)  ; FMin(a,b)
  %9000 = fmul fast float %8996, %8987
  %9001 = call float @dx.op.unary.f32(i32 7, float %9000)  ; Saturate(value)
  %9002 = fsub fast float %8993, %8989
  %9003 = fsub fast float %8994, %8990
  %9004 = fsub fast float %8995, %8991
  %9005 = fmul fast float %9001, %9002
  %9006 = fmul fast float %9001, %9003
  %9007 = fmul fast float %9001, %9004
  %9008 = fadd fast float %9005, %8989
  %9009 = fadd fast float %9006, %8990
  %9010 = fadd fast float %9007, %8991
  %9011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.f32 %9011, 0
  %9013 = extractvalue %dx.types.CBufRet.f32 %9011, 1
  %9014 = fadd fast float %9013, %9012
  %9015 = call float @dx.op.unary.f32(i32 7, float %9014)  ; Saturate(value)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9011, 2
  %9017 = extractvalue %dx.types.CBufRet.f32 %9011, 3
  %9018 = fadd fast float %9017, %9016
  %9019 = call float @dx.op.unary.f32(i32 7, float %9018)  ; Saturate(value)
  %9020 = fmul fast float %9015, %8999
  %9021 = fmul fast float %9020, %9019
  br label %9263

; <label>:9022                                    ; preds = %8976
  br i1 %8977, label %9023, label %9044

; <label>:9023                                    ; preds = %9022
  %9024 = call float @dx.op.binary.f32(i32 36, float %8973, float %8963)  ; FMin(a,b)
  %9025 = fsub fast float %8973, %9024
  %9026 = fsub fast float %9025, %8962
  %9027 = call float @dx.op.unary.f32(i32 6, float %9026)  ; FAbs(value)
  %9028 = fadd fast float %9025, %8962
  %9029 = fmul fast float %9028, %8893
  %9030 = fadd fast float %9029, %8906
  %9031 = fmul fast float %9030, %9027
  %9032 = fsub fast float %8968, %9031
  br label %9044

; <label>:9033                                    ; preds = %8961
  br i1 %8975, label %9034, label %9044

; <label>:9034                                    ; preds = %9033
  %9035 = call float @dx.op.binary.f32(i32 35, float %8963, float %8973)  ; FMax(a,b)
  %9036 = icmp eq i32 %8912, 0
  %9037 = select i1 %9036, float %8973, float 0.000000e+00
  %9038 = fsub fast float -0.000000e+00, %9037
  %9039 = call float @dx.op.unary.f32(i32 6, float %9038)  ; FAbs(value)
  %9040 = fmul fast float %9037, %8893
  %9041 = fadd fast float %9040, %8906
  %9042 = fmul fast float %9039, %9041
  %9043 = fsub fast float %8968, %9042
  br label %9044

; <label>:9044                                    ; preds = %9034, %9033, %9023, %9022
  %9045 = phi float [ %8963, %9022 ], [ %8963, %9023 ], [ %9035, %9034 ], [ %8963, %9033 ]
  %9046 = phi float [ 0.000000e+00, %9022 ], [ %9027, %9023 ], [ %9039, %9034 ], [ 0.000000e+00, %9033 ]
  %9047 = phi float [ %8968, %9022 ], [ %9032, %9023 ], [ %9043, %9034 ], [ %8968, %9033 ]
  %9048 = phi float [ %8973, %9022 ], [ %8973, %9023 ], [ %8962, %9034 ], [ %8962, %9033 ]
  %9049 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9049, align 4, !tbaa !115, !noalias !127
  %9050 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9050, align 4, !tbaa !115, !noalias !127
  %9051 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9051, align 4, !tbaa !115, !noalias !127
  %9052 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9052, align 4, !tbaa !115, !noalias !127
  %9053 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9053, align 4, !tbaa !115, !noalias !127
  %9054 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9054, align 4, !tbaa !115, !noalias !127
  %9055 = icmp sgt i32 %8914, 0
  br i1 %9055, label %9056, label %9117

; <label>:9056                                    ; preds = %9044
  br label %9057

; <label>:9057                                    ; preds = %9106, %9056
  %9058 = phi i32 [ %9107, %9106 ], [ 0, %9056 ]
  %9059 = phi i32 [ %9108, %9106 ], [ 0, %9056 ]
  %9060 = add nuw i32 %9059, 171
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %9060)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9065 = extractvalue %dx.types.CBufRet.f32 %9064, 0
  %9066 = extractvalue %dx.types.CBufRet.f32 %9064, 1
  %9067 = fsub fast float %9062, %9065
  %9068 = fsub fast float %9063, %9066
  %9069 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9070 = fsub fast float -0.000000e+00, %9067
  %9071 = fsub fast float -0.000000e+00, %9068
  %9072 = call float @dx.op.dot2.f32(i32 54, float %8891, float %8892, float %9070, float %9071)  ; Dot2(ax,ay,bx,by)
  %9073 = fmul fast float %9072, 2.000000e+00
  %9074 = call float @dx.op.dot2.f32(i32 54, float %9070, float %9071, float %9070, float %9071)  ; Dot2(ax,ay,bx,by)
  %9075 = fmul fast float %9069, %9069
  %9076 = fsub fast float %9074, %9075
  %9077 = fmul fast float %9073, %9073
  %9078 = fmul fast float %8934, %9076
  %9079 = fsub fast float %9077, %9078
  %9080 = fcmp fast ogt float %9079, 0.000000e+00
  br i1 %9080, label %9081, label %9096

; <label>:9081                                    ; preds = %9057
  %9082 = fcmp fast ogt float %9073, 0.000000e+00
  %9083 = call float @dx.op.unary.f32(i32 24, float %9079)  ; Sqrt(value)
  %9084 = fsub fast float -0.000000e+00, %9083
  %9085 = select i1 %9082, float %9083, float %9084
  %9086 = fadd fast float %9085, %9073
  %9087 = fmul float %9086, -5.000000e-01
  %9088 = fdiv fast float %9087, %8927
  %9089 = call float @dx.op.binary.f32(i32 35, float %9088, float 0.000000e+00)  ; FMax(a,b)
  %9090 = call float @dx.op.binary.f32(i32 36, float %8962, float %9089)  ; FMin(a,b)
  %9091 = fdiv fast float %9076, %9087
  %9092 = call float @dx.op.binary.f32(i32 35, float %9091, float 0.000000e+00)  ; FMax(a,b)
  %9093 = call float @dx.op.binary.f32(i32 36, float %8962, float %9092)  ; FMin(a,b)
  %9094 = call float @dx.op.binary.f32(i32 36, float %9090, float %9093)  ; FMin(a,b)
  %9095 = call float @dx.op.binary.f32(i32 35, float %9090, float %9093)  ; FMax(a,b)
  br label %9096

; <label>:9096                                    ; preds = %9081, %9057
  %9097 = phi float [ %9095, %9081 ], [ -1.000000e+00, %9057 ]
  %9098 = phi float [ %9094, %9081 ], [ -1.000000e+00, %9057 ]
  %9099 = phi i1 [ true, %9081 ], [ false, %9057 ]
  br i1 %9099, label %9100, label %9106

; <label>:9100                                    ; preds = %9096
  %9101 = call float @dx.op.binary.f32(i32 35, float %9045, float %9098)  ; FMax(a,b)
  %9102 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9059
  store float %9101, float* %9102, align 4, !tbaa !115, !noalias !127
  %9103 = call float @dx.op.binary.f32(i32 35, float %9045, float %9097)  ; FMax(a,b)
  %9104 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9059
  store float %9103, float* %9104, align 4, !tbaa !115, !noalias !127
  %9105 = add nsw i32 %9058, 1
  br label %9106

; <label>:9106                                    ; preds = %9100, %9096
  %9107 = phi i32 [ %9105, %9100 ], [ %9058, %9096 ]
  %9108 = add nuw nsw i32 %9059, 1
  %9109 = icmp eq i32 %9108, %8914
  br i1 %9109, label %9110, label %9057

; <label>:9110                                    ; preds = %9106
  %9111 = load float, float* %9051, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %9112 = load float, float* %9050, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  %9113 = load float, float* %9049, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  %9114 = load float, float* %9054, align 4, !tbaa !115, !alias.scope !153, !noalias !156
  %9115 = load float, float* %9053, align 4, !tbaa !115, !alias.scope !159, !noalias !160
  %9116 = load float, float* %9052, align 4, !tbaa !115, !alias.scope !161, !noalias !162
  br label %9117

; <label>:9117                                    ; preds = %9110, %9044
  %9118 = phi float [ -1.000000e+00, %9044 ], [ %9116, %9110 ]
  %9119 = phi float [ -1.000000e+00, %9044 ], [ %9115, %9110 ]
  %9120 = phi float [ -1.000000e+00, %9044 ], [ %9114, %9110 ]
  %9121 = phi float [ -1.000000e+00, %9044 ], [ %9113, %9110 ]
  %9122 = phi float [ -1.000000e+00, %9044 ], [ %9112, %9110 ]
  %9123 = phi float [ -1.000000e+00, %9044 ], [ %9111, %9110 ]
  %9124 = phi i32 [ 0, %9044 ], [ %9107, %9110 ]
  %9125 = call float @dx.op.binary.f32(i32 36, float %9122, float %9123)  ; FMin(a,b)
  %9126 = call float @dx.op.binary.f32(i32 36, float %9121, float %9125)  ; FMin(a,b)
  %9127 = call float @dx.op.binary.f32(i32 35, float %9121, float %9122)  ; FMax(a,b)
  %9128 = call float @dx.op.binary.f32(i32 36, float %9127, float %9123)  ; FMin(a,b)
  %9129 = call float @dx.op.binary.f32(i32 36, float %9121, float %9122)  ; FMin(a,b)
  %9130 = call float @dx.op.binary.f32(i32 35, float %9129, float %9128)  ; FMax(a,b)
  %9131 = call float @dx.op.binary.f32(i32 35, float %9122, float %9123)  ; FMax(a,b)
  %9132 = call float @dx.op.binary.f32(i32 35, float %9121, float %9131)  ; FMax(a,b)
  store float %9126, float* %9049, align 4, !tbaa !115, !alias.scope !151, !noalias !152
  store float %9130, float* %9050, align 4, !tbaa !115, !alias.scope !149, !noalias !150
  store float %9132, float* %9051, align 4, !tbaa !115, !alias.scope !143, !noalias !146
  %9133 = call float @dx.op.binary.f32(i32 36, float %9119, float %9120)  ; FMin(a,b)
  %9134 = call float @dx.op.binary.f32(i32 36, float %9118, float %9133)  ; FMin(a,b)
  %9135 = call float @dx.op.binary.f32(i32 35, float %9118, float %9119)  ; FMax(a,b)
  %9136 = call float @dx.op.binary.f32(i32 36, float %9135, float %9120)  ; FMin(a,b)
  %9137 = call float @dx.op.binary.f32(i32 36, float %9118, float %9119)  ; FMin(a,b)
  %9138 = call float @dx.op.binary.f32(i32 35, float %9137, float %9136)  ; FMax(a,b)
  %9139 = call float @dx.op.binary.f32(i32 35, float %9119, float %9120)  ; FMax(a,b)
  %9140 = call float @dx.op.binary.f32(i32 35, float %9118, float %9139)  ; FMax(a,b)
  store float %9134, float* %9052, align 4, !tbaa !115, !alias.scope !161, !noalias !162
  store float %9138, float* %9053, align 4, !tbaa !115, !alias.scope !159, !noalias !160
  store float %9140, float* %9054, align 4, !tbaa !115, !alias.scope !153, !noalias !156
  %9141 = sub nsw i32 3, %9124
  %9142 = icmp sgt i32 %9141, 2
  br i1 %9142, label %9143, label %9181

; <label>:9143                                    ; preds = %9117
  %9144 = icmp eq i32 %8912, 0
  %9145 = fsub fast float %8962, %9046
  %9146 = select i1 %9144, float %9145, float %9046
  %9147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9148 = extractvalue %dx.types.CBufRet.f32 %9147, 0
  %9149 = extractvalue %dx.types.CBufRet.f32 %9147, 1
  %9150 = extractvalue %dx.types.CBufRet.f32 %9147, 2
  %9151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.f32 %9151, 0
  %9153 = extractvalue %dx.types.CBufRet.f32 %9151, 1
  %9154 = extractvalue %dx.types.CBufRet.f32 %9151, 2
  %9155 = extractvalue %dx.types.CBufRet.f32 %9151, 3
  %9156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9157 = extractvalue %dx.types.CBufRet.f32 %9156, 3
  %9158 = call float @dx.op.binary.f32(i32 36, float %9047, float %9157)  ; FMin(a,b)
  %9159 = fmul fast float %9155, %9146
  %9160 = call float @dx.op.unary.f32(i32 7, float %9159)  ; Saturate(value)
  %9161 = fsub fast float %9152, %9148
  %9162 = fsub fast float %9153, %9149
  %9163 = fsub fast float %9154, %9150
  %9164 = fmul fast float %9160, %9161
  %9165 = fmul fast float %9160, %9162
  %9166 = fmul fast float %9160, %9163
  %9167 = fadd fast float %9164, %9148
  %9168 = fadd fast float %9165, %9149
  %9169 = fadd fast float %9166, %9150
  %9170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9171 = extractvalue %dx.types.CBufRet.f32 %9170, 0
  %9172 = extractvalue %dx.types.CBufRet.f32 %9170, 1
  %9173 = fadd fast float %9172, %9171
  %9174 = call float @dx.op.unary.f32(i32 7, float %9173)  ; Saturate(value)
  %9175 = extractvalue %dx.types.CBufRet.f32 %9170, 2
  %9176 = extractvalue %dx.types.CBufRet.f32 %9170, 3
  %9177 = fadd fast float %9176, %9175
  %9178 = call float @dx.op.unary.f32(i32 7, float %9177)  ; Saturate(value)
  %9179 = fmul fast float %9174, %9158
  %9180 = fmul fast float %9179, %9178
  br label %9263

; <label>:9181                                    ; preds = %9117
  %9182 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9141
  %9183 = load float, float* %9182, align 4, !tbaa !115, !noalias !127
  %9184 = fcmp fast olt float %9183, %9048
  %9185 = icmp sgt i32 %9124, 0
  %9186 = and i1 %9185, %9184
  br i1 %9186, label %9187, label %9224

; <label>:9187                                    ; preds = %9181
  br label %9188

; <label>:9188                                    ; preds = %9217, %9187
  %9189 = phi float [ %9218, %9217 ], [ %9046, %9187 ]
  %9190 = phi float [ %9219, %9217 ], [ %9047, %9187 ]
  %9191 = phi float [ %9199, %9217 ], [ %9183, %9187 ]
  %9192 = phi i32 [ %9196, %9217 ], [ %9141, %9187 ]
  %9193 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9192
  %9194 = load float, float* %9193, align 4, !tbaa !115, !noalias !127
  %9195 = icmp slt i32 %9192, 2
  %9196 = add nsw i32 %9192, 1
  %9197 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9196
  %9198 = load float, float* %9197, align 4, !tbaa !115, !noalias !127
  %9199 = select i1 %9195, float %9198, float %8962
  %9200 = call float @dx.op.binary.f32(i32 36, float %9199, float %9194)  ; FMin(a,b)
  %9201 = call float @dx.op.binary.f32(i32 36, float %9048, float %9200)  ; FMin(a,b)
  %9202 = icmp eq i32 %8912, 0
  %9203 = fadd fast float %9201, %9191
  %9204 = fmul fast float %9203, %8893
  %9205 = fadd fast float %9204, %8906
  br i1 %9202, label %9211, label %9206

; <label>:9206                                    ; preds = %9188
  %9207 = fsub fast float %9201, %9191
  %9208 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9207)  ; FMax(a,b)
  %9209 = fmul fast float %9208, %9205
  %9210 = fadd fast float %9209, %9190
  br label %9217

; <label>:9211                                    ; preds = %9188
  %9212 = fsub fast float %9191, %9201
  %9213 = call float @dx.op.unary.f32(i32 6, float %9212)  ; FAbs(value)
  %9214 = fadd fast float %9213, %9189
  %9215 = fmul fast float %9213, %9205
  %9216 = fsub fast float %9190, %9215
  br label %9217

; <label>:9217                                    ; preds = %9211, %9206
  %9218 = phi float [ %9208, %9206 ], [ %9214, %9211 ]
  %9219 = phi float [ %9210, %9206 ], [ %9216, %9211 ]
  %9220 = fcmp fast olt float %9199, %9048
  %9221 = icmp slt i32 %9196, 3
  %9222 = and i1 %9221, %9220
  br i1 %9222, label %9188, label %9223

; <label>:9223                                    ; preds = %9217
  br label %9224

; <label>:9224                                    ; preds = %9223, %9181
  %9225 = phi float [ %9046, %9181 ], [ %9218, %9223 ]
  %9226 = phi float [ %9047, %9181 ], [ %9219, %9223 ]
  %9227 = fsub fast float %8962, %9225
  %9228 = select i1 %8964, float %9225, float %9227
  %9229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9230 = extractvalue %dx.types.CBufRet.f32 %9229, 0
  %9231 = extractvalue %dx.types.CBufRet.f32 %9229, 1
  %9232 = extractvalue %dx.types.CBufRet.f32 %9229, 2
  %9233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9234 = extractvalue %dx.types.CBufRet.f32 %9233, 0
  %9235 = extractvalue %dx.types.CBufRet.f32 %9233, 1
  %9236 = extractvalue %dx.types.CBufRet.f32 %9233, 2
  %9237 = extractvalue %dx.types.CBufRet.f32 %9233, 3
  %9238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9239 = extractvalue %dx.types.CBufRet.f32 %9238, 3
  %9240 = call float @dx.op.binary.f32(i32 36, float %9226, float %9239)  ; FMin(a,b)
  %9241 = fmul fast float %9237, %9228
  %9242 = call float @dx.op.unary.f32(i32 7, float %9241)  ; Saturate(value)
  %9243 = fsub fast float %9234, %9230
  %9244 = fsub fast float %9235, %9231
  %9245 = fsub fast float %9236, %9232
  %9246 = fmul fast float %9242, %9243
  %9247 = fmul fast float %9242, %9244
  %9248 = fmul fast float %9242, %9245
  %9249 = fadd fast float %9246, %9230
  %9250 = fadd fast float %9247, %9231
  %9251 = fadd fast float %9248, %9232
  %9252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9252, 0
  %9254 = extractvalue %dx.types.CBufRet.f32 %9252, 1
  %9255 = fadd fast float %9254, %9253
  %9256 = call float @dx.op.unary.f32(i32 7, float %9255)  ; Saturate(value)
  %9257 = extractvalue %dx.types.CBufRet.f32 %9252, 2
  %9258 = extractvalue %dx.types.CBufRet.f32 %9252, 3
  %9259 = fadd fast float %9258, %9257
  %9260 = call float @dx.op.unary.f32(i32 7, float %9259)  ; Saturate(value)
  %9261 = fmul fast float %9256, %9240
  %9262 = fmul fast float %9261, %9260
  br label %9263

; <label>:9263                                    ; preds = %9224, %9143, %8978, %8960, %8958
  %9264 = phi float [ %8987, %8978 ], [ %9146, %9143 ], [ %9228, %9224 ], [ 0.000000e+00, %8958 ], [ 0.000000e+00, %8960 ]
  %9265 = phi float [ %9021, %8978 ], [ %9180, %9143 ], [ %9262, %9224 ], [ 0.000000e+00, %8958 ], [ 0.000000e+00, %8960 ]
  %9266 = phi float [ %9008, %8978 ], [ %9167, %9143 ], [ %9249, %9224 ], [ 0.000000e+00, %8958 ], [ 0.000000e+00, %8960 ]
  %9267 = phi float [ %9009, %8978 ], [ %9168, %9143 ], [ %9250, %9224 ], [ 0.000000e+00, %8958 ], [ 0.000000e+00, %8960 ]
  %9268 = phi float [ %9010, %8978 ], [ %9169, %9143 ], [ %9251, %9224 ], [ 0.000000e+00, %8958 ], [ 0.000000e+00, %8960 ]
  %9269 = fmul fast float %8901, %9265
  %9270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9271 = extractvalue %dx.types.CBufRet.f32 %9270, 2
  %9272 = fsub fast float %8908, %9271
  %9273 = fcmp fast olt float %9269, -2.000000e+01
  %9274 = call float @dx.op.unary.f32(i32 21, float %9269)  ; Exp(value)
  %9275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9276 = extractvalue %dx.types.CBufRet.f32 %9275, 2
  %9277 = extractvalue %dx.types.CBufRet.f32 %9275, 3
  %9278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9279 = extractvalue %dx.types.CBufRet.f32 %9278, 2
  %9280 = fmul fast float %9277, %9272
  %9281 = call float @dx.op.unary.f32(i32 7, float %9280)  ; Saturate(value)
  %9282 = fsub fast float 1.000000e+00, %9281
  %9283 = fmul fast float %8893, 5.000000e-01
  %9284 = fadd fast float %9283, 5.000000e-01
  %9285 = call float @dx.op.unary.f32(i32 7, float %9284)  ; Saturate(value)
  %9286 = fsub fast float 1.000000e+00, %9285
  %9287 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9282)  ; FMax(a,b)
  %9288 = fdiv fast float %9286, %9287
  %9289 = fsub fast float %9272, %8850
  %9290 = call float @dx.op.unary.f32(i32 6, float %9289)  ; FAbs(value)
  %9291 = fmul fast float %9290, %9276
  %9292 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9293 = fsub fast float 1.000000e+00, %9291
  %9294 = fmul fast float %9293, %9292
  %9295 = fadd fast float %9294, %9291
  %9296 = fmul fast float %9279, %9272
  %9297 = call float @dx.op.unary.f32(i32 7, float %9296)  ; Saturate(value)
  %9298 = fsub fast float 1.000000e+00, %9295
  %9299 = fmul fast float %9298, %9297
  %9300 = fadd fast float %9299, %9295
  %9301 = call float @dx.op.unary.f32(i32 7, float %9300)  ; Saturate(value)
  %9302 = fadd fast float %9274, -1.000000e+00
  %9303 = select i1 %9273, float -1.000000e+00, float %9302
  %9304 = fmul fast float %9301, %9303
  %9305 = fadd fast float %9304, 1.000000e+00
  %9306 = fsub fast float -0.000000e+00, %9304
  %9307 = fmul fast float %9266, %9306
  %9308 = fmul fast float %9267, %9306
  %9309 = fmul fast float %9268, %9306
  br label %9310

; <label>:9310                                    ; preds = %9263, %8859
  %9311 = phi float [ %9264, %9263 ], [ 0.000000e+00, %8859 ]
  %9312 = phi float [ %9305, %9263 ], [ 1.000000e+00, %8859 ]
  %9313 = phi float [ %9307, %9263 ], [ 0.000000e+00, %8859 ]
  %9314 = phi float [ %9308, %9263 ], [ 0.000000e+00, %8859 ]
  %9315 = phi float [ %9309, %9263 ], [ 0.000000e+00, %8859 ]
  %9316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9317 = extractvalue %dx.types.CBufRet.f32 %9316, 1
  %9318 = fsub fast float 1.000000e+00, %9312
  %9319 = fmul fast float %9318, %8894
  %9320 = fmul fast float %9319, %9317
  %9321 = fsub fast float %8894, %9320
  br i1 %8887, label %9322, label %9351, !dx.controlflow.hints !163

; <label>:9322                                    ; preds = %9310
  %9323 = fmul fast float %8895, %8884
  %9324 = fadd fast float %9323, %8885
  %9325 = call float @dx.op.unary.f32(i32 7, float %9324)  ; Saturate(value)
  %9326 = fmul fast float %8866, %9321
  %9327 = fsub fast float -0.000000e+00, %9326
  %9328 = fmul fast float %8867, %9321
  %9329 = fsub fast float -0.000000e+00, %9328
  %9330 = call float @dx.op.unary.f32(i32 21, float %9327)  ; Exp(value)
  %9331 = call float @dx.op.unary.f32(i32 21, float %9329)  ; Exp(value)
  %9332 = call float @dx.op.binary.f32(i32 35, float %8874, float %9330)  ; FMax(a,b)
  %9333 = call float @dx.op.binary.f32(i32 35, float %8874, float %9331)  ; FMax(a,b)
  %9334 = fsub fast float %9333, %9332
  %9335 = fmul fast float %9334, %9325
  %9336 = fadd fast float %9335, %9332
  %9337 = call float @dx.op.unary.f32(i32 7, float %9336)  ; Saturate(value)
  %9338 = fsub fast float %8871, %8876
  %9339 = fsub fast float %8872, %8877
  %9340 = fsub fast float %8873, %8878
  %9341 = fmul fast float %9325, %9338
  %9342 = fmul fast float %9325, %9339
  %9343 = fmul fast float %9325, %9340
  %9344 = fadd fast float %9341, %8876
  %9345 = fadd fast float %9342, %8877
  %9346 = fadd fast float %9343, %8878
  %9347 = fsub fast float 1.000000e+00, %9337
  %9348 = fmul fast float %9347, %9344
  %9349 = fmul fast float %9347, %9345
  %9350 = fmul fast float %9347, %9346
  br label %9410

; <label>:9351                                    ; preds = %9310
  %9352 = fmul fast float %9321, %8883
  %9353 = call float @dx.op.unary.f32(i32 7, float %9352)  ; Saturate(value)
  %9354 = fsub fast float 2.000000e+00, %9353
  %9355 = fmul fast float %9353, 9.921875e-01
  %9356 = fmul fast float %9355, %9354
  %9357 = fadd fast float %9356, 3.906250e-03
  %9358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %44, float %9357, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9359 = extractvalue %dx.types.ResRet.f32 %9358, 0
  %9360 = fsub fast float %9353, %9359
  %9361 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9360)  ; FMax(a,b)
  %9362 = fmul fast float %8869, %8850
  %9363 = call float @dx.op.unary.f32(i32 6, float %9362)  ; FAbs(value)
  %9364 = fcmp fast ogt float %9363, 0x3EB0C6F7A0000000
  br i1 %9364, label %9365, label %9371, !dx.controlflow.hints !164

; <label>:9365                                    ; preds = %9351
  %9366 = fmul fast float %9362, 0xBFF7154760000000
  %9367 = call float @dx.op.unary.f32(i32 21, float %9366)  ; Exp(value)
  %9368 = fsub fast float 1.000000e+00, %9367
  %9369 = fdiv fast float %9368, %9362
  %9370 = fmul fast float %9369, %8879
  br label %9371

; <label>:9371                                    ; preds = %9365, %9351
  %9372 = phi float [ %9370, %9365 ], [ %8879, %9351 ]
  %9373 = fadd fast float %9372, %8881
  %9374 = fmul fast float %9373, %9361
  %9375 = fmul fast float %8866, %9374
  %9376 = fsub fast float -0.000000e+00, %9375
  %9377 = fmul fast float %8867, %9374
  %9378 = fsub fast float -0.000000e+00, %9377
  %9379 = fmul fast float %8868, %9374
  %9380 = fsub fast float -0.000000e+00, %9379
  %9381 = call float @dx.op.unary.f32(i32 21, float %9376)  ; Exp(value)
  %9382 = call float @dx.op.unary.f32(i32 21, float %9378)  ; Exp(value)
  %9383 = call float @dx.op.unary.f32(i32 21, float %9380)  ; Exp(value)
  %9384 = fmul fast float %8895, %8895
  %9385 = fadd fast float %9384, 1.000000e+00
  %9386 = fmul fast float %9385, 0x3FAE8EC8A0000000
  %9387 = fmul fast float %9386, %8876
  %9388 = fmul fast float %9386, %8877
  %9389 = fmul fast float %9386, %8878
  %9390 = fmul fast float %8895, %8874
  %9391 = fsub fast float 1.000000e+00, %9390
  %9392 = fmul fast float %8874, %8874
  %9393 = fsub fast float 1.000000e+00, %9392
  %9394 = fmul fast float %9393, 0x3FB45F3060000000
  %9395 = fmul fast float %9391, %9391
  %9396 = fdiv fast float 1.000000e+00, %9395
  %9397 = fmul fast float %9394, %9396
  %9398 = fmul fast float %9397, %8871
  %9399 = fmul fast float %9397, %8872
  %9400 = fmul fast float %9397, %8873
  %9401 = fadd fast float %9398, %9387
  %9402 = fadd fast float %9399, %9388
  %9403 = fadd fast float %9400, %9389
  %9404 = fsub fast float 1.000000e+00, %9381
  %9405 = fsub fast float 1.000000e+00, %9382
  %9406 = fsub fast float 1.000000e+00, %9383
  %9407 = fmul fast float %9401, %9404
  %9408 = fmul fast float %9402, %9405
  %9409 = fmul fast float %9403, %9406
  br label %9410

; <label>:9410                                    ; preds = %9371, %9322
  %9411 = phi float [ %9348, %9322 ], [ %9407, %9371 ]
  %9412 = phi float [ %9349, %9322 ], [ %9408, %9371 ]
  %9413 = phi float [ %9350, %9322 ], [ %9409, %9371 ]
  %9414 = phi float [ %9337, %9322 ], [ %9381, %9371 ]
  %9415 = phi float [ %9337, %9322 ], [ %9382, %9371 ]
  %9416 = phi float [ %9337, %9322 ], [ %9383, %9371 ]
  br i1 %8903, label %9417, label %9615, !dx.controlflow.hints !165

; <label>:9417                                    ; preds = %9410
  %9418 = extractvalue %dx.types.CBufRet.f32 %9316, 0
  %9419 = fmul fast float %9418, %9318
  %9420 = fsub fast float %9313, %9411
  %9421 = fsub fast float %9314, %9412
  %9422 = fsub fast float %9315, %9413
  %9423 = fmul fast float %9419, %9420
  %9424 = fmul fast float %9419, %9421
  %9425 = fmul fast float %9419, %9422
  %9426 = fadd fast float %9423, %9411
  %9427 = fadd fast float %9424, %9412
  %9428 = fadd fast float %9425, %9413
  %9429 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9414)  ; FMax(a,b)
  %9430 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9415)  ; FMax(a,b)
  %9431 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9416)  ; FMax(a,b)
  %9432 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9312)  ; FMax(a,b)
  %9433 = call float @dx.op.binary.f32(i32 35, float %9311, float %9321)  ; FMax(a,b)
  %9434 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9433)  ; FMax(a,b)
  %9435 = fdiv fast float %9311, %9434
  %9436 = call float @dx.op.unary.f32(i32 7, float %9435)  ; Saturate(value)
  %9437 = fdiv fast float %9321, %9434
  %9438 = call float @dx.op.unary.f32(i32 7, float %9437)  ; Saturate(value)
  %9439 = fcmp fast une float %9432, 1.000000e+00
  br i1 %9439, label %9440, label %9453, !dx.controlflow.hints !166

; <label>:9440                                    ; preds = %9417
  %9441 = call float @dx.op.unary.f32(i32 23, float %9432)  ; Log(value)
  %9442 = fmul fast float %9441, 0x3FE62E4300000000
  %9443 = fmul fast float %9313, %9442
  %9444 = fsub fast float -0.000000e+00, %9443
  %9445 = fmul fast float %9314, %9442
  %9446 = fsub fast float -0.000000e+00, %9445
  %9447 = fmul fast float %9315, %9442
  %9448 = fsub fast float -0.000000e+00, %9447
  %9449 = fsub fast float 1.000000e+00, %9432
  %9450 = fdiv fast float %9444, %9449
  %9451 = fdiv fast float %9446, %9449
  %9452 = fdiv fast float %9448, %9449
  br label %9453

; <label>:9453                                    ; preds = %9440, %9417
  %9454 = phi float [ %9450, %9440 ], [ %9313, %9417 ]
  %9455 = phi float [ %9451, %9440 ], [ %9314, %9417 ]
  %9456 = phi float [ %9452, %9440 ], [ %9315, %9417 ]
  %9457 = phi float [ %9442, %9440 ], [ 0.000000e+00, %9417 ]
  %9458 = fcmp fast une float %9429, 1.000000e+00
  br i1 %9458, label %9459, label %9466, !dx.controlflow.hints !167

; <label>:9459                                    ; preds = %9453
  %9460 = call float @dx.op.unary.f32(i32 23, float %9429)  ; Log(value)
  %9461 = fmul fast float %9460, 0x3FE62E4300000000
  %9462 = fmul fast float %9426, %9461
  %9463 = fsub fast float -0.000000e+00, %9462
  %9464 = fsub fast float 1.000000e+00, %9429
  %9465 = fdiv fast float %9463, %9464
  br label %9466

; <label>:9466                                    ; preds = %9459, %9453
  %9467 = phi float [ %9465, %9459 ], [ %9426, %9453 ]
  %9468 = phi float [ %9461, %9459 ], [ 0.000000e+00, %9453 ]
  %9469 = fcmp fast une float %9430, 1.000000e+00
  br i1 %9469, label %9470, label %9477, !dx.controlflow.hints !167

; <label>:9470                                    ; preds = %9466
  %9471 = call float @dx.op.unary.f32(i32 23, float %9430)  ; Log(value)
  %9472 = fmul fast float %9471, 0x3FE62E4300000000
  %9473 = fmul fast float %9427, %9472
  %9474 = fsub fast float -0.000000e+00, %9473
  %9475 = fsub fast float 1.000000e+00, %9430
  %9476 = fdiv fast float %9474, %9475
  br label %9477

; <label>:9477                                    ; preds = %9470, %9466
  %9478 = phi float [ %9476, %9470 ], [ %9427, %9466 ]
  %9479 = phi float [ %9472, %9470 ], [ 0.000000e+00, %9466 ]
  %9480 = fcmp fast une float %9431, 1.000000e+00
  br i1 %9480, label %9481, label %9488, !dx.controlflow.hints !167

; <label>:9481                                    ; preds = %9477
  %9482 = call float @dx.op.unary.f32(i32 23, float %9431)  ; Log(value)
  %9483 = fmul fast float %9482, 0x3FE62E4300000000
  %9484 = fmul fast float %9428, %9483
  %9485 = fsub fast float -0.000000e+00, %9484
  %9486 = fsub fast float 1.000000e+00, %9431
  %9487 = fdiv fast float %9485, %9486
  br label %9488

; <label>:9488                                    ; preds = %9481, %9477
  %9489 = phi float [ %9487, %9481 ], [ %9428, %9477 ]
  %9490 = phi float [ %9483, %9481 ], [ 0.000000e+00, %9477 ]
  %9491 = fmul fast float %9454, %9438
  %9492 = fmul fast float %9455, %9438
  %9493 = fmul fast float %9456, %9438
  %9494 = fmul fast float %9457, %9438
  %9495 = fmul fast float %9467, %9436
  %9496 = fmul fast float %9478, %9436
  %9497 = fmul fast float %9489, %9436
  %9498 = fmul fast float %9468, %9436
  %9499 = fmul fast float %9479, %9436
  %9500 = fmul fast float %9490, %9436
  %9501 = fadd fast float %9495, %9491
  %9502 = fadd fast float %9496, %9492
  %9503 = fadd fast float %9497, %9493
  %9504 = fadd fast float %9498, %9494
  %9505 = fadd fast float %9499, %9494
  %9506 = fadd fast float %9500, %9494
  %9507 = fcmp fast une float %9504, 0.000000e+00
  br i1 %9507, label %9508, label %9515, !dx.controlflow.hints !168

; <label>:9508                                    ; preds = %9488
  %9509 = fmul fast float %9504, 0x3FF7154760000000
  %9510 = call float @dx.op.unary.f32(i32 21, float %9509)  ; Exp(value)
  %9511 = fsub fast float 1.000000e+00, %9510
  %9512 = fmul fast float %9501, %9511
  %9513 = fsub fast float -0.000000e+00, %9512
  %9514 = fdiv fast float %9513, %9504
  br label %9515

; <label>:9515                                    ; preds = %9508, %9488
  %9516 = phi float [ %9510, %9508 ], [ 1.000000e+00, %9488 ]
  %9517 = phi float [ %9514, %9508 ], [ %9501, %9488 ]
  %9518 = fcmp fast une float %9505, 0.000000e+00
  br i1 %9518, label %9519, label %9526, !dx.controlflow.hints !168

; <label>:9519                                    ; preds = %9515
  %9520 = fmul fast float %9505, 0x3FF7154760000000
  %9521 = call float @dx.op.unary.f32(i32 21, float %9520)  ; Exp(value)
  %9522 = fsub fast float 1.000000e+00, %9521
  %9523 = fmul fast float %9502, %9522
  %9524 = fsub fast float -0.000000e+00, %9523
  %9525 = fdiv fast float %9524, %9505
  br label %9526

; <label>:9526                                    ; preds = %9519, %9515
  %9527 = phi float [ %9521, %9519 ], [ 1.000000e+00, %9515 ]
  %9528 = phi float [ %9525, %9519 ], [ %9502, %9515 ]
  %9529 = fcmp fast une float %9506, 0.000000e+00
  br i1 %9529, label %9530, label %9537, !dx.controlflow.hints !168

; <label>:9530                                    ; preds = %9526
  %9531 = fmul fast float %9506, 0x3FF7154760000000
  %9532 = call float @dx.op.unary.f32(i32 21, float %9531)  ; Exp(value)
  %9533 = fsub fast float 1.000000e+00, %9532
  %9534 = fmul fast float %9503, %9533
  %9535 = fsub fast float -0.000000e+00, %9534
  %9536 = fdiv fast float %9535, %9506
  br label %9537

; <label>:9537                                    ; preds = %9530, %9526
  %9538 = phi float [ %9532, %9530 ], [ 1.000000e+00, %9526 ]
  %9539 = phi float [ %9536, %9530 ], [ %9503, %9526 ]
  %9540 = fcmp fast ogt float %9436, %9438
  br i1 %9540, label %9541, label %9561

; <label>:9541                                    ; preds = %9537
  %9542 = fsub fast float 1.000000e+00, %9438
  %9543 = fmul fast float %9454, %9542
  %9544 = fmul fast float %9455, %9542
  %9545 = fmul fast float %9456, %9542
  %9546 = fmul fast float %9457, %9542
  %9547 = fcmp fast une float %9546, 0.000000e+00
  br i1 %9547, label %9548, label %9599, !dx.controlflow.hints !169

; <label>:9548                                    ; preds = %9541
  %9549 = fmul fast float %9546, 0x3FF7154760000000
  %9550 = call float @dx.op.unary.f32(i32 21, float %9549)  ; Exp(value)
  %9551 = fsub fast float 1.000000e+00, %9550
  %9552 = fmul fast float %9543, %9551
  %9553 = fsub fast float -0.000000e+00, %9552
  %9554 = fmul fast float %9544, %9551
  %9555 = fsub fast float -0.000000e+00, %9554
  %9556 = fmul fast float %9545, %9551
  %9557 = fsub fast float -0.000000e+00, %9556
  %9558 = fdiv fast float %9553, %9546
  %9559 = fdiv fast float %9555, %9546
  %9560 = fdiv fast float %9557, %9546
  br label %9599

; <label>:9561                                    ; preds = %9537
  %9562 = fsub fast float 1.000000e+00, %9436
  %9563 = fmul fast float %9467, %9562
  %9564 = fmul fast float %9478, %9562
  %9565 = fmul fast float %9489, %9562
  %9566 = fmul fast float %9468, %9562
  %9567 = fmul fast float %9479, %9562
  %9568 = fmul fast float %9490, %9562
  %9569 = fcmp fast une float %9566, 0.000000e+00
  br i1 %9569, label %9570, label %9577, !dx.controlflow.hints !168

; <label>:9570                                    ; preds = %9561
  %9571 = fmul fast float %9566, 0x3FF7154760000000
  %9572 = call float @dx.op.unary.f32(i32 21, float %9571)  ; Exp(value)
  %9573 = fsub fast float 1.000000e+00, %9572
  %9574 = fmul fast float %9563, %9573
  %9575 = fsub fast float -0.000000e+00, %9574
  %9576 = fdiv fast float %9575, %9566
  br label %9577

; <label>:9577                                    ; preds = %9570, %9561
  %9578 = phi float [ %9576, %9570 ], [ %9563, %9561 ]
  %9579 = phi float [ %9572, %9570 ], [ 1.000000e+00, %9561 ]
  %9580 = fcmp fast une float %9567, 0.000000e+00
  br i1 %9580, label %9581, label %9588, !dx.controlflow.hints !168

; <label>:9581                                    ; preds = %9577
  %9582 = fmul fast float %9567, 0x3FF7154760000000
  %9583 = call float @dx.op.unary.f32(i32 21, float %9582)  ; Exp(value)
  %9584 = fsub fast float 1.000000e+00, %9583
  %9585 = fmul fast float %9564, %9584
  %9586 = fsub fast float -0.000000e+00, %9585
  %9587 = fdiv fast float %9586, %9567
  br label %9588

; <label>:9588                                    ; preds = %9581, %9577
  %9589 = phi float [ %9587, %9581 ], [ %9564, %9577 ]
  %9590 = phi float [ %9583, %9581 ], [ 1.000000e+00, %9577 ]
  %9591 = fcmp fast une float %9568, 0.000000e+00
  br i1 %9591, label %9592, label %9599, !dx.controlflow.hints !168

; <label>:9592                                    ; preds = %9588
  %9593 = fmul fast float %9568, 0x3FF7154760000000
  %9594 = call float @dx.op.unary.f32(i32 21, float %9593)  ; Exp(value)
  %9595 = fsub fast float 1.000000e+00, %9594
  %9596 = fmul fast float %9565, %9595
  %9597 = fsub fast float -0.000000e+00, %9596
  %9598 = fdiv fast float %9597, %9568
  br label %9599

; <label>:9599                                    ; preds = %9592, %9588, %9548, %9541
  %9600 = phi float [ %9598, %9592 ], [ %9560, %9548 ], [ %9545, %9541 ], [ %9565, %9588 ]
  %9601 = phi float [ %9589, %9592 ], [ %9559, %9548 ], [ %9544, %9541 ], [ %9589, %9588 ]
  %9602 = phi float [ %9578, %9592 ], [ %9558, %9548 ], [ %9543, %9541 ], [ %9578, %9588 ]
  %9603 = phi float [ %9594, %9592 ], [ %9550, %9548 ], [ 1.000000e+00, %9541 ], [ 1.000000e+00, %9588 ]
  %9604 = phi float [ %9590, %9592 ], [ %9550, %9548 ], [ 1.000000e+00, %9541 ], [ %9590, %9588 ]
  %9605 = phi float [ %9579, %9592 ], [ %9550, %9548 ], [ 1.000000e+00, %9541 ], [ %9579, %9588 ]
  %9606 = fmul fast float %9605, %9517
  %9607 = fmul fast float %9604, %9528
  %9608 = fmul fast float %9603, %9539
  %9609 = fadd fast float %9606, %9602
  %9610 = fadd fast float %9607, %9601
  %9611 = fadd fast float %9608, %9600
  %9612 = fmul fast float %9605, %9516
  %9613 = fmul fast float %9604, %9527
  %9614 = fmul fast float %9603, %9538
  br label %9615

; <label>:9615                                    ; preds = %9599, %9410
  %9616 = phi float [ %9614, %9599 ], [ %9416, %9410 ]
  %9617 = phi float [ %9613, %9599 ], [ %9415, %9410 ]
  %9618 = phi float [ %9612, %9599 ], [ %9414, %9410 ]
  %9619 = phi float [ %9611, %9599 ], [ %9413, %9410 ]
  %9620 = phi float [ %9610, %9599 ], [ %9412, %9410 ]
  %9621 = phi float [ %9609, %9599 ], [ %9411, %9410 ]
  %9622 = fmul fast float %9621, %8563
  %9623 = fmul fast float %9620, %8565
  %9624 = fmul fast float %9619, %8567
  %9625 = fmul fast float %9618, %8858
  %9626 = call float @dx.op.dot3.f32(i32 55, float %9618, float %9617, float %9616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9627 = call float @dx.op.dot3.f32(i32 55, float %9622, float %9623, float %9624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9628 = select i1 %264, float %9626, float %9618
  %9629 = select i1 %264, float %9626, float %9617
  %9630 = select i1 %264, float 1.000000e+00, float %9616
  %9631 = select i1 %264, float %9627, float %9622
  %9632 = select i1 %264, float 0.000000e+00, float %9623
  %9633 = select i1 %264, float 0.000000e+00, float %9624
  %9634 = fmul fast float %9628, %8852
  %9635 = fmul fast float %9629, %8853
  %9636 = fmul fast float %9630, %8854
  %9637 = fadd fast float %9634, %9631
  %9638 = fadd fast float %9635, %9632
  %9639 = fadd fast float %9633, %9636
  %9640 = fmul fast float %9628, %8855
  %9641 = fmul fast float %9629, %8856
  %9642 = fmul fast float %9630, %8857
  %9643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.i32 %9643, 0
  %9645 = icmp eq i32 %9644, 0
  br i1 %9645, label %10013, label %9646, !dx.controlflow.hints !170

; <label>:9646                                    ; preds = %9615
  %9647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9648 = extractvalue %dx.types.CBufRet.f32 %9647, 2
  %9649 = extractvalue %dx.types.CBufRet.f32 %9647, 3
  %9650 = fmul fast float %9648, %111
  %9651 = fmul fast float %9649, %112
  %9652 = fmul fast float %9650, 2.000000e+00
  %9653 = fmul fast float %9651, 2.000000e+00
  %9654 = fsub fast float 1.000000e+00, %9652
  %9655 = fsub fast float 1.000000e+00, %9653
  %9656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9657 = extractvalue %dx.types.CBufRet.f32 %9656, 0
  %9658 = extractvalue %dx.types.CBufRet.f32 %9656, 1
  %9659 = extractvalue %dx.types.CBufRet.f32 %9656, 2
  %9660 = fmul fast float %9654, %9657
  %9661 = fmul fast float %9654, %9658
  %9662 = fmul fast float %9654, %9659
  %9663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9664 = extractvalue %dx.types.CBufRet.f32 %9663, 0
  %9665 = extractvalue %dx.types.CBufRet.f32 %9663, 1
  %9666 = extractvalue %dx.types.CBufRet.f32 %9663, 2
  %9667 = fmul fast float %9655, %9664
  %9668 = fmul fast float %9655, %9665
  %9669 = fmul fast float %9655, %9666
  %9670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9671 = extractvalue %dx.types.CBufRet.f32 %9670, 0
  %9672 = extractvalue %dx.types.CBufRet.f32 %9670, 1
  %9673 = extractvalue %dx.types.CBufRet.f32 %9670, 2
  %9674 = fadd fast float %9667, %9671
  %9675 = fadd fast float %9674, %9660
  %9676 = fadd fast float %9668, %9672
  %9677 = fadd fast float %9676, %9661
  %9678 = fadd fast float %9669, %9673
  %9679 = fadd fast float %9678, %9662
  %9680 = fmul fast float %9675, %8851
  %9681 = fmul fast float %9677, %8851
  %9682 = fmul fast float %9679, %8851
  %9683 = fmul fast float %9680, %9680
  %9684 = fmul fast float %9681, %9681
  %9685 = fadd fast float %9683, %9684
  %9686 = fmul fast float %9682, %9682
  %9687 = fadd fast float %9685, %9686
  %9688 = call float @dx.op.unary.f32(i32 24, float %9687)  ; Sqrt(value)
  %9689 = extractvalue %dx.types.CBufRet.f32 %8578, 0
  %9690 = fsub fast float %9688, %9689
  %9691 = extractvalue %dx.types.CBufRet.f32 %8578, 2
  %9692 = fmul fast float %9690, %9691
  %9693 = call float @dx.op.unary.f32(i32 7, float %9692)  ; Saturate(value)
  %9694 = fadd fast float %9693, -5.000000e-01
  %9695 = fmul fast float %9694, 2.000000e+00
  %9696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9697 = extractvalue %dx.types.CBufRet.f32 %9696, 2
  %9698 = call float @dx.op.binary.f32(i32 36, float %9697, float %9695)  ; FMin(a,b)
  %9699 = fsub fast float -0.000000e+00, %9697
  %9700 = fcmp fast ogt float %9698, %9699
  br i1 %9700, label %9701, label %10013, !dx.controlflow.hints !171

; <label>:9701                                    ; preds = %9646
  %9702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9703 = extractvalue %dx.types.CBufRet.f32 %9702, 3
  %9704 = fcmp fast ogt float %9703, 0.000000e+00
  br i1 %9704, label %9705, label %9780, !dx.controlflow.hints !172

; <label>:9705                                    ; preds = %9701
  %9706 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9707 = extractvalue %dx.types.Dimensions %9706, 0
  %9708 = sitofp i32 %9707 to float
  %9709 = extractvalue %dx.types.Dimensions %9706, 1
  %9710 = sitofp i32 %9709 to float
  %9711 = fmul fast float %9650, %9708
  %9712 = fmul fast float %9651, %9710
  %9713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9714 = extractvalue %dx.types.CBufRet.f32 %9713, 1
  %9715 = fsub fast float -0.000000e+00, %9714
  %9716 = fptoui float %9715 to i32
  %9717 = fptoui float %9711 to i32
  %9718 = fptoui float %9712 to i32
  %9719 = and i32 %9716, 31
  %9720 = lshr i32 %9717, %9719
  %9721 = lshr i32 %9718, %9719
  %9722 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9716, i32 %9720, i32 %9721, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9723 = extractvalue %dx.types.ResRet.f32 %9722, 0
  %9724 = fcmp fast olt float %9723, -1.000000e+00
  %9725 = fcmp fast ogt float %9723, -1.000000e+00
  %9726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9727 = extractvalue %dx.types.CBufRet.f32 %9726, 1
  %9728 = select i1 %9725, float %9727, float 1.000000e+00
  %9729 = fadd fast float %9723, 1.000000e+00
  %9730 = fmul fast float %9728, %9729
  %9731 = call float @dx.op.unary.f32(i32 6, float %9730)  ; FAbs(value)
  %9732 = extractvalue %dx.types.CBufRet.f32 %9726, 3
  %9733 = fcmp fast oge float %9731, %9732
  %9734 = select i1 %9733, float 0x4197782600000000, float %9731
  %9735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9736 = extractvalue %dx.types.CBufRet.f32 %9735, 0
  %9737 = extractvalue %dx.types.CBufRet.f32 %9735, 1
  %9738 = extractvalue %dx.types.CBufRet.f32 %9735, 2
  %9739 = select i1 %9724, float %9736, float %9657
  %9740 = select i1 %9724, float %9737, float %9658
  %9741 = select i1 %9724, float %9738, float %9659
  %9742 = fmul fast float %9739, %9654
  %9743 = fmul fast float %9740, %9654
  %9744 = fmul fast float %9741, %9654
  %9745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9746 = extractvalue %dx.types.CBufRet.f32 %9745, 0
  %9747 = extractvalue %dx.types.CBufRet.f32 %9745, 1
  %9748 = extractvalue %dx.types.CBufRet.f32 %9745, 2
  %9749 = select i1 %9724, float %9746, float %9664
  %9750 = select i1 %9724, float %9747, float %9665
  %9751 = select i1 %9724, float %9748, float %9666
  %9752 = fmul fast float %9749, %9655
  %9753 = fmul fast float %9750, %9655
  %9754 = fmul fast float %9751, %9655
  %9755 = fadd fast float %9752, %9742
  %9756 = fadd fast float %9753, %9743
  %9757 = fadd fast float %9754, %9744
  %9758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9759 = extractvalue %dx.types.CBufRet.f32 %9758, 0
  %9760 = extractvalue %dx.types.CBufRet.f32 %9758, 1
  %9761 = extractvalue %dx.types.CBufRet.f32 %9758, 2
  %9762 = select i1 %9724, float %9759, float %9671
  %9763 = select i1 %9724, float %9760, float %9672
  %9764 = select i1 %9724, float %9761, float %9673
  %9765 = fadd fast float %9755, %9762
  %9766 = fadd fast float %9756, %9763
  %9767 = fadd fast float %9757, %9764
  %9768 = fmul fast float %9765, %9734
  %9769 = fmul fast float %9766, %9734
  %9770 = fmul fast float %9767, %9734
  %9771 = fmul fast float %9768, %9768
  %9772 = fmul fast float %9769, %9769
  %9773 = fadd fast float %9771, %9772
  %9774 = fmul fast float %9770, %9770
  %9775 = fadd fast float %9773, %9774
  %9776 = call float @dx.op.unary.f32(i32 24, float %9775)  ; Sqrt(value)
  %9777 = fsub fast float %9776, %9689
  %9778 = fmul fast float %9777, %9691
  %9779 = call float @dx.op.unary.f32(i32 7, float %9778)  ; Saturate(value)
  br label %9780

; <label>:9780                                    ; preds = %9705, %9701
  %9781 = phi float [ %9779, %9705 ], [ 1.000000e+00, %9701 ]
  %9782 = fmul fast float %9698, 5.000000e-01
  %9783 = fadd fast float %9782, 5.000000e-01
  %9784 = call float @dx.op.unary.f32(i32 22, float %9783)  ; Frc(value)
  %9785 = call float @dx.op.unary.f32(i32 27, float %9784)  ; Round_ni(value)
  %9786 = call float @dx.op.unary.f32(i32 22, float %9784)  ; Frc(value)
  %9787 = fmul fast float %9786, 2.000000e+00
  %9788 = fadd fast float %9787, -1.000000e+00
  %9789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9650, float %9651, float %9785, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9790 = extractvalue %dx.types.ResRet.f32 %9789, 0
  %9791 = extractvalue %dx.types.ResRet.f32 %9789, 1
  %9792 = extractvalue %dx.types.ResRet.f32 %9789, 2
  %9793 = extractvalue %dx.types.ResRet.f32 %9789, 3
  %9794 = fadd fast float %9790, -5.000000e-01
  %9795 = fadd fast float %9792, -5.000000e-01
  %9796 = fmul fast float %9794, 0xBFD5555560000000
  %9797 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9795, float %9796)  ; FMad(a,b,c)
  %9798 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9791, float 0.000000e+00)  ; FMad(a,b,c)
  %9799 = fadd fast float %9798, %9793
  %9800 = fmul fast float %9794, -7.500000e-01
  %9801 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9795, float %9800)  ; FMad(a,b,c)
  %9802 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9791, float 0.000000e+00)  ; FMad(a,b,c)
  %9803 = fadd fast float %9802, %9793
  %9804 = call float @dx.op.binary.f32(i32 35, float %9797, float -1.000000e+00)  ; FMax(a,b)
  %9805 = call float @dx.op.binary.f32(i32 35, float %9799, float -1.000000e+00)  ; FMax(a,b)
  %9806 = call float @dx.op.binary.f32(i32 35, float %9801, float -1.000000e+00)  ; FMax(a,b)
  %9807 = call float @dx.op.binary.f32(i32 35, float %9803, float -1.000000e+00)  ; FMax(a,b)
  %9808 = call float @dx.op.binary.f32(i32 36, float %9804, float 1.000000e+00)  ; FMin(a,b)
  %9809 = call float @dx.op.binary.f32(i32 36, float %9805, float 1.000000e+00)  ; FMin(a,b)
  %9810 = call float @dx.op.binary.f32(i32 36, float %9806, float 1.000000e+00)  ; FMin(a,b)
  %9811 = call float @dx.op.binary.f32(i32 36, float %9807, float 1.000000e+00)  ; FMin(a,b)
  %9812 = fcmp fast olt float %9808, 0x3FEFFF8020000000
  br i1 %9812, label %9813, label %9928, !dx.controlflow.hints !173

; <label>:9813                                    ; preds = %9780
  %9814 = extractvalue %dx.types.CBufRet.f32 %9696, 3
  %9815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9816 = extractvalue %dx.types.CBufRet.f32 %9815, 0
  %9817 = extractvalue %dx.types.CBufRet.f32 %9815, 1
  %9818 = extractvalue %dx.types.CBufRet.f32 %9815, 2
  %9819 = extractvalue %dx.types.CBufRet.f32 %9815, 3
  %9820 = fsub fast float %9816, %9808
  %9821 = fsub fast float %9817, %9809
  %9822 = fsub fast float %9818, %9810
  %9823 = fsub fast float %9819, %9811
  %9824 = fmul fast float %9820, %9814
  %9825 = fmul fast float %9821, %9814
  %9826 = fmul fast float %9822, %9814
  %9827 = fmul fast float %9823, %9814
  %9828 = fadd fast float %9824, %9808
  %9829 = fadd fast float %9825, %9809
  %9830 = fsub fast float -0.000000e+00, %9829
  %9831 = fadd fast float %9826, %9810
  %9832 = fadd fast float %9827, %9811
  %9833 = fmul fast float %9828, %9828
  %9834 = fsub fast float %9829, %9833
  %9835 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9834)  ; FMax(a,b)
  %9836 = fdiv fast float 1.000000e+00, %9835
  %9837 = fmul fast float %9829, %9828
  %9838 = fsub fast float %9831, %9837
  %9839 = fsub fast float %9788, %9828
  %9840 = fmul fast float %9788, %9788
  %9841 = fsub fast float %9840, %9829
  %9842 = fmul fast float %9839, %9836
  %9843 = fmul fast float %9842, %9838
  %9844 = fsub fast float %9841, %9843
  %9845 = fmul fast float %9829, %9829
  %9846 = fsub fast float %9832, %9845
  %9847 = fmul fast float %9838, %9838
  %9848 = fmul fast float %9847, %9836
  %9849 = fsub fast float %9846, %9848
  %9850 = fdiv fast float %9844, %9849
  %9851 = fmul fast float %9838, %9850
  %9852 = fsub fast float %9839, %9851
  %9853 = fmul fast float %9852, %9836
  %9854 = fmul fast float %9853, %9828
  %9855 = fsub fast float 1.000000e+00, %9854
  %9856 = fmul fast float %9829, %9850
  %9857 = fsub fast float %9855, %9856
  %9858 = fmul fast float %9853, %9853
  %9859 = fmul fast float %9850, 4.000000e+00
  %9860 = fmul fast float %9859, %9857
  %9861 = fsub fast float %9858, %9860
  %9862 = call float @dx.op.unary.f32(i32 24, float %9861)  ; Sqrt(value)
  %9863 = fcmp fast oge float %9853, 0.000000e+00
  %9864 = fsub fast float -0.000000e+00, %9862
  %9865 = select i1 %9863, float %9864, float %9862
  %9866 = fsub fast float %9865, %9853
  %9867 = fdiv fast float %9866, %9850
  %9868 = fdiv fast float %9857, %9866
  %9869 = fmul fast float %9867, 5.000000e-01
  %9870 = fmul fast float %9868, 2.000000e+00
  %9871 = select i1 %9863, float %9869, float %9870
  %9872 = select i1 %9863, float %9870, float %9869
  %9873 = call float @dx.op.binary.f32(i32 35, float %9871, float %9872)  ; FMax(a,b)
  %9874 = call float @dx.op.binary.f32(i32 36, float %9871, float %9872)  ; FMin(a,b)
  %9875 = fcmp fast ogt float %9788, %9874
  br i1 %9875, label %9876, label %9886

; <label>:9876                                    ; preds = %9813
  %9877 = fsub fast float %9788, %9874
  %9878 = fsub fast float %9873, %9874
  %9879 = fmul fast float %9877, %9878
  %9880 = fmul fast float %9873, %9788
  %9881 = fadd fast float %9873, %9788
  %9882 = fmul fast float %9881, %9828
  %9883 = fadd fast float %9880, %9829
  %9884 = fsub fast float %9883, %9882
  %9885 = fdiv fast float %9884, %9879
  br label %9886

; <label>:9886                                    ; preds = %9876, %9813
  %9887 = phi float [ %9885, %9876 ], [ 0.000000e+00, %9813 ]
  %9888 = fcmp fast ogt float %9788, %9873
  %9889 = fsub fast float %9788, %9873
  br i1 %9888, label %9890, label %9900

; <label>:9890                                    ; preds = %9886
  %9891 = fsub fast float %9873, %9874
  %9892 = fmul fast float %9891, %9889
  %9893 = fmul fast float %9874, %9788
  %9894 = fadd fast float %9874, %9788
  %9895 = fmul fast float %9894, %9828
  %9896 = fsub fast float %9830, %9893
  %9897 = fadd fast float %9896, %9895
  %9898 = fdiv fast float %9897, %9892
  %9899 = fadd fast float %9898, %9887
  br label %9900

; <label>:9900                                    ; preds = %9890, %9886
  %9901 = phi float [ %9899, %9890 ], [ %9887, %9886 ]
  %9902 = fsub fast float %9788, %9874
  %9903 = fmul fast float %9902, %9889
  %9904 = fmul fast float %9874, %9873
  %9905 = fadd fast float %9874, %9873
  %9906 = fmul fast float %9905, %9828
  %9907 = fadd fast float %9904, %9829
  %9908 = fsub fast float %9907, %9906
  %9909 = fdiv fast float %9908, %9903
  %9910 = call float @dx.op.unary.f32(i32 7, float %9901)  ; Saturate(value)
  %9911 = fcmp fast oeq float %8579, 0.000000e+00
  %9912 = extractvalue %dx.types.CBufRet.f32 %9696, 0
  %9913 = fcmp fast oeq float %9912, 0.000000e+00
  %9914 = or i1 %9911, %9913
  %9915 = fmul fast float %9912, 2.000000e+00
  %9916 = fadd fast float %9697, %9698
  %9917 = fdiv fast float %9916, %9915
  %9918 = call float @dx.op.unary.f32(i32 7, float %9917)  ; Saturate(value)
  %9919 = fmul fast float %9918, 2.000000e+00
  %9920 = fsub fast float 3.000000e+00, %9919
  %9921 = fmul fast float %9918, %9918
  %9922 = fmul fast float %9921, %9920
  %9923 = select i1 %9914, float 1.000000e+00, float %9922
  %9924 = fmul fast float %9909, %8579
  %9925 = fadd fast float %9910, %9924
  %9926 = call float @dx.op.unary.f32(i32 7, float %9925)  ; Saturate(value)
  %9927 = fmul fast float %9923, %9926
  br label %9928

; <label>:9928                                    ; preds = %9900, %9780
  %9929 = phi float [ %9927, %9900 ], [ 0.000000e+00, %9780 ]
  %9930 = fsub fast float 1.000000e+00, %9929
  %9931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %44, float %9650, float %9651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9932 = extractvalue %dx.types.ResRet.f32 %9931, 0
  %9933 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9934 = extractvalue %dx.types.CBufRet.i32 %9933, 2
  %9935 = icmp eq i32 %9934, 0
  br i1 %9935, label %9941, label %9936

; <label>:9936                                    ; preds = %9928
  %9937 = call float @dx.op.unary.f32(i32 7, float %9929)  ; Saturate(value)
  %9938 = fadd fast float %9932, -1.000000e+00
  %9939 = fmul fast float %9937, %9938
  %9940 = fadd fast float %9939, 1.000000e+00
  br label %9941

; <label>:9941                                    ; preds = %9936, %9928
  %9942 = phi float [ %9940, %9936 ], [ %9930, %9928 ]
  br i1 %9704, label %9943, label %9961

; <label>:9943                                    ; preds = %9941
  %9944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9945 = extractvalue %dx.types.CBufRet.f32 %9944, 1
  %9946 = fsub fast float %9781, %9945
  %9947 = call float @dx.op.unary.f32(i32 7, float %9946)  ; Saturate(value)
  %9948 = fsub fast float %9781, %9703
  %9949 = call float @dx.op.unary.f32(i32 7, float %9948)  ; Saturate(value)
  %9950 = fsub fast float %9947, %9949
  %9951 = fsub fast float %9783, %9949
  %9952 = fdiv fast float %9951, %9950
  %9953 = call float @dx.op.unary.f32(i32 7, float %9952)  ; Saturate(value)
  %9954 = fmul fast float %9953, 2.000000e+00
  %9955 = fsub fast float 3.000000e+00, %9954
  %9956 = fsub fast float %9932, %9942
  %9957 = fmul fast float %9953, %9953
  %9958 = fmul fast float %9957, %9956
  %9959 = fmul fast float %9958, %9955
  %9960 = fadd fast float %9959, %9942
  br label %9961

; <label>:9961                                    ; preds = %9943, %9941
  %9962 = phi float [ %9960, %9943 ], [ %9942, %9941 ]
  %9963 = call float @dx.op.binary.f32(i32 35, float %9932, float %9962)  ; FMax(a,b)
  %9964 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9965 = extractvalue %dx.types.CBufRet.i32 %9964, 2
  %9966 = and i32 %9965, 1
  %9967 = icmp eq i32 %9966, 0
  %9968 = fcmp fast une float %9963, 1.000000e+00
  %9969 = and i1 %9968, %9967
  br i1 %9969, label %9970, label %9989

; <label>:9970                                    ; preds = %9961
  %9971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %9650, float %9651, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9972 = extractvalue %dx.types.ResRet.f32 %9971, 0
  %9973 = extractvalue %dx.types.ResRet.f32 %9971, 1
  %9974 = extractvalue %dx.types.ResRet.f32 %9971, 2
  %9975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9976 = extractvalue %dx.types.CBufRet.f32 %9975, 1
  %9977 = fmul fast float %9976, %9972
  %9978 = fmul fast float %9976, %9973
  %9979 = fmul fast float %9976, %9974
  %9980 = fcmp fast ogt float %9932, 0x3FEFFF2E40000000
  %9981 = fsub fast float 1.000000e+00, %9963
  %9982 = fsub fast float 1.000000e+00, %9932
  %9983 = fdiv fast float %9981, %9982
  %9984 = call float @dx.op.unary.f32(i32 7, float %9983)  ; Saturate(value)
  %9985 = select i1 %9980, float 0.000000e+00, float %9984
  %9986 = fmul fast float %9977, %9985
  %9987 = fmul fast float %9978, %9985
  %9988 = fmul fast float %9979, %9985
  br label %9989

; <label>:9989                                    ; preds = %9970, %9961
  %9990 = phi float [ 0.000000e+00, %9961 ], [ %9986, %9970 ]
  %9991 = phi float [ 0.000000e+00, %9961 ], [ %9987, %9970 ]
  %9992 = phi float [ 0.000000e+00, %9961 ], [ %9988, %9970 ]
  %9993 = fmul fast float %9990, %8563
  %9994 = fmul fast float %9991, %8565
  %9995 = fmul fast float %9992, %8567
  %9996 = fmul fast float %9963, %9625
  %9997 = call float @dx.op.dot3.f32(i32 55, float %9963, float %9963, float %9963, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9998 = call float @dx.op.dot3.f32(i32 55, float %9993, float %9994, float %9995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9999 = select i1 %264, float %9997, float %9963
  %10000 = select i1 %264, float 1.000000e+00, float %9963
  %10001 = select i1 %264, float %9998, float %9993
  %10002 = select i1 %264, float 0.000000e+00, float %9994
  %10003 = select i1 %264, float 0.000000e+00, float %9995
  %10004 = fmul fast float %9999, %9637
  %10005 = fmul fast float %9999, %9638
  %10006 = fmul fast float %10000, %9639
  %10007 = fadd fast float %10004, %10001
  %10008 = fadd fast float %10005, %10002
  %10009 = fadd fast float %10003, %10006
  %10010 = fmul fast float %9999, %9640
  %10011 = fmul fast float %9999, %9641
  %10012 = fmul fast float %10000, %9642
  br label %10013

; <label>:10013                                   ; preds = %9989, %9646, %9615, %8847
  %10014 = phi float [ %8852, %8847 ], [ %9637, %9615 ], [ %10007, %9989 ], [ %9637, %9646 ]
  %10015 = phi float [ %8853, %8847 ], [ %9638, %9615 ], [ %10008, %9989 ], [ %9638, %9646 ]
  %10016 = phi float [ %8854, %8847 ], [ %9639, %9615 ], [ %10009, %9989 ], [ %9639, %9646 ]
  %10017 = phi float [ %8855, %8847 ], [ %9640, %9615 ], [ %10010, %9989 ], [ %9640, %9646 ]
  %10018 = phi float [ %8856, %8847 ], [ %9641, %9615 ], [ %10011, %9989 ], [ %9641, %9646 ]
  %10019 = phi float [ %8857, %8847 ], [ %9642, %9615 ], [ %10012, %9989 ], [ %9642, %9646 ]
  %10020 = phi float [ %8858, %8847 ], [ %9625, %9615 ], [ %9996, %9989 ], [ %9625, %9646 ]
  %10021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10022 = extractvalue %dx.types.CBufRet.f32 %10021, 2
  %10023 = extractvalue %dx.types.CBufRet.f32 %10021, 3
  %10024 = fmul fast float %10022, %111
  %10025 = fmul fast float %10023, %112
  %10026 = call float @dx.op.unary.f32(i32 7, float %10024)  ; Saturate(value)
  %10027 = call float @dx.op.unary.f32(i32 7, float %10025)  ; Saturate(value)
  %10028 = select i1 %8589, i32 2, i32 0
  %10029 = or i32 %10028, 1
  %10030 = uitofp i32 %10029 to float
  %10031 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %10026, float %10027, float %10030, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10032 = extractvalue %dx.types.ResRet.f32 %10031, 0
  %10033 = extractvalue %dx.types.ResRet.f32 %10031, 1
  %10034 = extractvalue %dx.types.ResRet.f32 %10031, 2
  %10035 = extractvalue %dx.types.ResRet.f32 %10031, 3
  %10036 = add nuw nsw i32 %10028, 2
  %10037 = uitofp i32 %10036 to float
  %10038 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %44, float %10026, float %10027, float %10037, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10039 = extractvalue %dx.types.ResRet.f32 %10038, 0
  %10040 = extractvalue %dx.types.ResRet.f32 %10038, 1
  %10041 = extractvalue %dx.types.ResRet.f32 %10038, 2
  %10042 = extractvalue %dx.types.ResRet.f32 %10038, 3
  %10043 = call float @dx.op.binary.f32(i32 35, float %10033, float %10034)  ; FMax(a,b)
  %10044 = call float @dx.op.binary.f32(i32 35, float %10032, float %10043)  ; FMax(a,b)
  %10045 = call float @dx.op.binary.f32(i32 35, float %10044, float %10035)  ; FMax(a,b)
  %10046 = call float @dx.op.binary.f32(i32 36, float %10040, float %10041)  ; FMin(a,b)
  %10047 = call float @dx.op.binary.f32(i32 36, float %10039, float %10046)  ; FMin(a,b)
  %10048 = call float @dx.op.binary.f32(i32 36, float %10047, float %10042)  ; FMin(a,b)
  %10049 = fmul fast float %10045, 2.550000e+02
  %10050 = fadd fast float %10049, 0x3F70101020000000
  %10051 = fptoui float %10050 to i32
  %10052 = fmul fast float %10048, 2.550000e+02
  %10053 = fadd fast float %10052, 0x3F70101020000000
  %10054 = fptoui float %10053 to i32
  %10055 = icmp ult i32 %10051, %10054
  br i1 %10055, label %10056, label %10225

; <label>:10056                                   ; preds = %10013
  %10057 = fcmp fast ogt float %97, 9.843750e-01
  %10058 = fadd fast float %8851, -4.000000e+00
  %10059 = select i1 %10057, float -4.000000e+00, float %10058
  %10060 = call float @dx.op.binary.f32(i32 35, float %10059, float 0.000000e+00)  ; FMax(a,b)
  %10061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10062 = extractvalue %dx.types.CBufRet.f32 %10061, 0
  %10063 = fadd fast float %10062, %10060
  %10064 = extractvalue %dx.types.CBufRet.f32 %10061, 2
  %10065 = fmul fast float %10063, %10064
  %10066 = call float @dx.op.unary.f32(i32 23, float %10065)  ; Log(value)
  %10067 = extractvalue %dx.types.CBufRet.f32 %10061, 3
  %10068 = fmul fast float %10067, %10066
  %10069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10070 = extractvalue %dx.types.CBufRet.f32 %10069, 2
  %10071 = fmul fast float %10068, %10070
  %10072 = call float @dx.op.unary.f32(i32 7, float %10071)  ; Saturate(value)
  %10073 = uitofp i32 %10051 to float
  %10074 = uitofp i32 %10054 to float
  %10075 = fadd fast float %10073, 5.000000e-01
  %10076 = fadd fast float %10074, 5.000000e-01
  %10077 = fmul fast float %10070, %10075
  %10078 = fmul fast float %10070, %10076
  %10079 = fadd fast float %10077, 0x3F0FFB4800000000
  %10080 = fadd fast float %10078, 0xBF0FFB4800000000
  %10081 = call float @dx.op.binary.f32(i32 35, float %10072, float %10079)  ; FMax(a,b)
  %10082 = call float @dx.op.binary.f32(i32 36, float %10081, float %10080)  ; FMin(a,b)
  %10083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10084 = extractvalue %dx.types.CBufRet.f32 %10083, 1
  %10085 = extractvalue %dx.types.CBufRet.f32 %10083, 2
  %10086 = extractvalue %dx.types.CBufRet.f32 %10083, 0
  %10087 = select i1 %8589, float %10086, float 0.000000e+00
  %10088 = fmul fast float %10084, %10082
  %10089 = fadd fast float %10087, %10088
  %10090 = fadd fast float %10087, %10085
  %10091 = fsub fast float %10084, %10085
  %10092 = fadd fast float %10091, %10087
  %10093 = call float @dx.op.binary.f32(i32 35, float %10089, float %10090)  ; FMax(a,b)
  %10094 = call float @dx.op.binary.f32(i32 36, float %10093, float %10092)  ; FMin(a,b)
  %10095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %42, float %10026, float %10027, float %10094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10096 = extractvalue %dx.types.ResRet.f32 %10095, 0
  %10097 = extractvalue %dx.types.ResRet.f32 %10095, 1
  %10098 = extractvalue %dx.types.ResRet.f32 %10095, 2
  %10099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10100 = extractvalue %dx.types.CBufRet.i32 %10099, 0
  %10101 = extractvalue %dx.types.CBufRet.i32 %10099, 1
  %10102 = uitofp i32 %10100 to float
  %10103 = uitofp i32 %10101 to float
  %10104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10105 = extractvalue %dx.types.CBufRet.f32 %10104, 0
  %10106 = extractvalue %dx.types.CBufRet.f32 %10104, 1
  %10107 = fmul fast float %10102, %10026
  %10108 = fmul fast float %10103, %10027
  %10109 = fadd fast float %10107, -5.000000e-01
  %10110 = fadd fast float %10108, -5.000000e-01
  %10111 = call float @dx.op.unary.f32(i32 22, float %10109)  ; Frc(value)
  %10112 = call float @dx.op.unary.f32(i32 22, float %10110)  ; Frc(value)
  %10113 = fmul fast float %10111, %10111
  %10114 = fmul fast float %10113, %10111
  %10115 = fsub fast float 3.000000e+00, %10111
  %10116 = fmul fast float %10113, %10115
  %10117 = fmul fast float %10111, 3.000000e+00
  %10118 = fmul fast float %10114, 3.000000e+00
  %10119 = fmul fast float %10113, 6.000000e+00
  %10120 = fsub fast float %10118, %10119
  %10121 = fadd fast float %10120, 4.000000e+00
  %10122 = fmul fast float %10121, 0x3FC5555560000000
  %10123 = fmul fast float %10114, -3.000000e+00
  %10124 = fadd fast float %10113, %10111
  %10125 = fmul fast float %10124, 3.000000e+00
  %10126 = fadd fast float %10123, 1.000000e+00
  %10127 = fadd fast float %10126, %10125
  %10128 = fmul fast float %10114, 0x3FC5555560000000
  %10129 = fmul fast float %10112, %10112
  %10130 = fmul fast float %10129, %10112
  %10131 = fsub fast float 3.000000e+00, %10112
  %10132 = fmul fast float %10129, %10131
  %10133 = fmul fast float %10112, 3.000000e+00
  %10134 = fmul fast float %10130, 3.000000e+00
  %10135 = fmul fast float %10129, 6.000000e+00
  %10136 = fsub fast float %10134, %10135
  %10137 = fadd fast float %10136, 4.000000e+00
  %10138 = fmul fast float %10137, 0x3FC5555560000000
  %10139 = fmul fast float %10130, -3.000000e+00
  %10140 = fadd fast float %10129, %10112
  %10141 = fmul fast float %10140, 3.000000e+00
  %10142 = fadd fast float %10139, 1.000000e+00
  %10143 = fadd fast float %10142, %10141
  %10144 = fmul fast float %10130, 0x3FC5555560000000
  %10145 = fadd fast float %10111, 1.000000e+00
  %10146 = fsub fast float 1.000000e+00, %10117
  %10147 = fadd fast float %10146, %10116
  %10148 = fadd fast float %10147, %10121
  %10149 = fmul fast float %10148, 0x3FC5555560000000
  %10150 = fdiv fast float %10122, %10149
  %10151 = fsub fast float %10145, %10150
  %10152 = fsub fast float 1.000000e+00, %10111
  %10153 = fadd fast float %10127, %10114
  %10154 = fmul fast float %10153, 0x3FC5555560000000
  %10155 = fdiv fast float %10128, %10154
  %10156 = fadd fast float %10152, %10155
  %10157 = fadd fast float %10112, 1.000000e+00
  %10158 = fsub fast float 1.000000e+00, %10133
  %10159 = fadd fast float %10158, %10132
  %10160 = fadd fast float %10159, %10137
  %10161 = fmul fast float %10160, 0x3FC5555560000000
  %10162 = fdiv fast float %10138, %10161
  %10163 = fsub fast float %10157, %10162
  %10164 = fsub fast float 1.000000e+00, %10112
  %10165 = fadd fast float %10143, %10130
  %10166 = fmul fast float %10165, 0x3FC5555560000000
  %10167 = fdiv fast float %10144, %10166
  %10168 = fadd fast float %10167, %10164
  %10169 = fmul fast float %10151, %10105
  %10170 = fsub fast float %10026, %10169
  %10171 = fmul fast float %10156, %10105
  %10172 = fadd fast float %10171, %10026
  %10173 = fmul fast float %10168, %10106
  %10174 = fadd fast float %10173, %10027
  %10175 = fmul fast float %10163, %10106
  %10176 = fsub fast float %10027, %10175
  %10177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %10170, float %10176, float %10094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10178 = extractvalue %dx.types.ResRet.f32 %10177, 0
  %10179 = extractvalue %dx.types.ResRet.f32 %10177, 1
  %10180 = extractvalue %dx.types.ResRet.f32 %10177, 2
  %10181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %10172, float %10176, float %10094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10182 = extractvalue %dx.types.ResRet.f32 %10181, 0
  %10183 = extractvalue %dx.types.ResRet.f32 %10181, 1
  %10184 = extractvalue %dx.types.ResRet.f32 %10181, 2
  %10185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %10170, float %10174, float %10094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10186 = extractvalue %dx.types.ResRet.f32 %10185, 0
  %10187 = extractvalue %dx.types.ResRet.f32 %10185, 1
  %10188 = extractvalue %dx.types.ResRet.f32 %10185, 2
  %10189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %42, float %10172, float %10174, float %10094, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10190 = extractvalue %dx.types.ResRet.f32 %10189, 0
  %10191 = extractvalue %dx.types.ResRet.f32 %10189, 1
  %10192 = extractvalue %dx.types.ResRet.f32 %10189, 2
  %10193 = fsub fast float %10186, %10178
  %10194 = fsub fast float %10187, %10179
  %10195 = fsub fast float %10188, %10180
  %10196 = fmul fast float %10193, %10166
  %10197 = fmul fast float %10194, %10166
  %10198 = fmul fast float %10195, %10166
  %10199 = fadd fast float %10196, %10178
  %10200 = fadd fast float %10197, %10179
  %10201 = fadd fast float %10198, %10180
  %10202 = fsub fast float %10190, %10182
  %10203 = fsub fast float %10191, %10183
  %10204 = fsub fast float %10192, %10184
  %10205 = fmul fast float %10202, %10166
  %10206 = fmul fast float %10203, %10166
  %10207 = fmul fast float %10204, %10166
  %10208 = fsub fast float %10182, %10199
  %10209 = fadd fast float %10208, %10205
  %10210 = fsub fast float %10183, %10200
  %10211 = fadd fast float %10210, %10206
  %10212 = fsub fast float %10184, %10201
  %10213 = fadd fast float %10212, %10207
  %10214 = fmul fast float %10209, %10154
  %10215 = fmul fast float %10211, %10154
  %10216 = fmul fast float %10213, %10154
  %10217 = fadd fast float %10214, %10199
  %10218 = fadd fast float %10215, %10200
  %10219 = fadd fast float %10216, %10201
  %10220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10221 = extractvalue %dx.types.CBufRet.f32 %10220, 1
  %10222 = fmul fast float %10217, %10221
  %10223 = fmul fast float %10218, %10221
  %10224 = fmul fast float %10219, %10221
  br label %10225

; <label>:10225                                   ; preds = %10056, %10013
  %10226 = phi float [ %10096, %10056 ], [ 1.000000e+00, %10013 ]
  %10227 = phi float [ %10097, %10056 ], [ 1.000000e+00, %10013 ]
  %10228 = phi float [ %10098, %10056 ], [ 1.000000e+00, %10013 ]
  %10229 = phi float [ %10222, %10056 ], [ 0.000000e+00, %10013 ]
  %10230 = phi float [ %10223, %10056 ], [ 0.000000e+00, %10013 ]
  %10231 = phi float [ %10224, %10056 ], [ 0.000000e+00, %10013 ]
  %10232 = fmul fast float %10229, %8563
  %10233 = fmul fast float %10230, %8565
  %10234 = fmul fast float %10231, %8567
  %10235 = fmul fast float %10226, %10020
  %10236 = call float @dx.op.dot3.f32(i32 55, float %10226, float %10227, float %10228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10237 = call float @dx.op.dot3.f32(i32 55, float %10232, float %10233, float %10234, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10238 = select i1 %264, float %10236, float %10226
  %10239 = select i1 %264, float %10236, float %10227
  %10240 = select i1 %264, float 1.000000e+00, float %10228
  %10241 = select i1 %264, float %10237, float %10232
  %10242 = select i1 %264, float 0.000000e+00, float %10233
  %10243 = select i1 %264, float 0.000000e+00, float %10234
  %10244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10245 = extractvalue %dx.types.CBufRet.i32 %10244, 3
  %10246 = and i32 %10245, 3
  %10247 = icmp ne i32 %10246, 0
  %10248 = and i32 %10245, 4
  %10249 = icmp ne i32 %10248, 0
  %10250 = and i1 %10247, %10249
  %10251 = and i1 %264, %10250
  br i1 %10251, label %10252, label %10258

; <label>:10252                                   ; preds = %10225
  %10253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10254 = extractvalue %dx.types.CBufRet.f32 %10253, 1
  %10255 = fadd fast float %10235, -1.000000e+00
  %10256 = fmul fast float %10254, %10255
  %10257 = fadd fast float %10256, 1.000000e+00
  br label %10258

; <label>:10258                                   ; preds = %10252, %10225
  %10259 = phi float [ %10257, %10252 ], [ %10235, %10225 ]
  %10260 = fadd fast float %10017, %10014
  %10261 = fmul fast float %10238, %10260
  %10262 = fadd fast float %10261, %10241
  %10263 = fadd fast float %10018, %10015
  %10264 = fmul fast float %10239, %10263
  %10265 = fadd fast float %10264, %10242
  %10266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10267 = extractvalue %dx.types.CBufRet.f32 %10266, 0
  br i1 %264, label %10268, label %10283

; <label>:10268                                   ; preds = %10258
  %10269 = fadd fast float %10262, %10265
  %10270 = fmul fast float %10267, %10269
  %10271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10272 = extractvalue %dx.types.CBufRet.f32 %10271, 3
  %10273 = extractvalue %dx.types.CBufRet.f32 %8571, 1
  %10274 = fsub fast float %8576, %8570
  %10275 = fadd fast float %10274, %8577
  %10276 = fsub fast float %10275, %10273
  %10277 = extractvalue %dx.types.CBufRet.f32 %8571, 2
  %10278 = fmul fast float %10276, %10277
  %10279 = call float @dx.op.unary.f32(i32 7, float %10278)  ; Saturate(value)
  %10280 = fsub fast float %10279, %10272
  %10281 = fmul fast float %10280, %10259
  %10282 = fadd fast float %10281, %10272
  br label %10309

; <label>:10283                                   ; preds = %10258
  %10284 = fadd fast float %10019, %10016
  %10285 = fmul fast float %10240, %10284
  %10286 = fadd fast float %10285, %10243
  %10287 = fmul fast float %10267, %10262
  %10288 = fmul fast float %10267, %10265
  %10289 = fmul fast float %10267, %10286
  %10290 = call float @dx.op.binary.f32(i32 35, float %10288, float %10289)  ; FMax(a,b)
  %10291 = call float @dx.op.binary.f32(i32 35, float %10287, float %10290)  ; FMax(a,b)
  %10292 = call float @dx.op.binary.f32(i32 35, float %8565, float %8567)  ; FMax(a,b)
  %10293 = call float @dx.op.binary.f32(i32 35, float %8563, float %10292)  ; FMax(a,b)
  %10294 = call float @dx.op.binary.f32(i32 35, float %10291, float %10293)  ; FMax(a,b)
  %10295 = fcmp fast ugt float %10294, 0x3F10000000000000
  br i1 %10295, label %10297, label %10296

; <label>:10296                                   ; preds = %10283
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10297

; <label>:10297                                   ; preds = %10296, %10283
  %10298 = add i32 %50, 356
  %10299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %10298, i32 undef)  ; BufferLoad(srv,index,wot)
  %10300 = extractvalue %dx.types.ResRet.i32 %10299, 0
  %10301 = and i32 %10300, 32
  %10302 = icmp eq i32 %10301, 0
  br i1 %10302, label %10309, label %10303

; <label>:10303                                   ; preds = %10297
  %10304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10305 = extractvalue %dx.types.CBufRet.f32 %10304, 0
  %10306 = fmul fast float %10305, 0x3FE99999A0000000
  %10307 = fadd fast float %10305, %10287
  %10308 = fadd fast float %10306, %10289
  br label %10309

; <label>:10309                                   ; preds = %10303, %10297, %10268
  %10310 = phi float [ 1.000000e+00, %10268 ], [ %8565, %10303 ], [ %8565, %10297 ]
  %10311 = phi float [ 1.000000e+00, %10268 ], [ %8567, %10303 ], [ %8567, %10297 ]
  %10312 = phi float [ %10270, %10268 ], [ %10307, %10303 ], [ %10287, %10297 ]
  %10313 = phi float [ %10282, %10268 ], [ %10288, %10303 ], [ %10288, %10297 ]
  %10314 = phi float [ 1.000000e+00, %10268 ], [ %10308, %10303 ], [ %10289, %10297 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10315 = call float @dx.op.binary.f32(i32 36, float %10312, float 3.225500e+04)  ; FMin(a,b)
  %10316 = call float @dx.op.binary.f32(i32 36, float %10313, float 3.225500e+04)  ; FMin(a,b)
  %10317 = call float @dx.op.binary.f32(i32 36, float %10314, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10315)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10316)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10317)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10318 = call float @dx.op.binary.f32(i32 36, float %8563, float 3.225500e+04)  ; FMin(a,b)
  %10319 = call float @dx.op.binary.f32(i32 36, float %10310, float 3.225500e+04)  ; FMin(a,b)
  %10320 = call float @dx.op.binary.f32(i32 36, float %10311, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10318)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10319)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10320)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!62}
!dx.entryPoints = !{!63}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !51, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
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
!62 = !{[62 x i32] [i32 60, i32 8, i32 119, i32 119, i32 7, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 0, i32 119, i32 0, i32 0, i32 0]}
!63 = !{void ()* @ps_main, !"ps_main", !64, !4, !92}
!64 = !{!65, !88, null}
!65 = !{!66, !69, !70, !72, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87}
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
!85 = !{i32 14, !"ENTITY_IDS", i8 5, i8 0, !67, i8 1, i32 1, i8 2, i32 13, i8 1, !71}
!86 = !{i32 15, !"PACKED_TRI_DATA", i8 5, i8 0, !67, i8 1, i32 1, i8 4, i32 14, i8 0, !84}
!87 = !{i32 16, !"SV_SampleIndex", i8 5, i8 12, !67, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!88 = !{!89, !90}
!89 = !{i32 0, !"SV_Target", i8 9, i8 16, !67, i8 0, i32 1, i8 4, i32 0, i8 0, !68}
!90 = !{i32 1, !"SV_Target", i8 9, i8 16, !91, i8 0, i32 1, i8 4, i32 1, i8 0, !68}
!91 = !{i32 1}
!92 = !{i32 0, i64 16}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !95}
!95 = !{!"llvm.loop.unroll.disable"}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = !{!102, !102, i64 0}
!102 = !{!"int", !103, i64 0}
!103 = !{!"omnipotent char", !104, i64 0}
!104 = !{!"Simple C/C++ TBAA"}
!105 = !{!106, !108, !110, !112}
!106 = distinct !{!106, !107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!107 = distinct !{!107, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!108 = distinct !{!108, !109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!109 = distinct !{!109, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!110 = distinct !{!110, !111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!111 = distinct !{!111, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!112 = distinct !{!112, !113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!113 = distinct !{!113, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!114 = distinct !{!114, !"dx.controlflow.hints", i32 1}
!115 = !{!116, !116, i64 0}
!116 = !{!"float", !103, i64 0}
!117 = distinct !{!117, !95}
!118 = distinct !{!118, !95}
!119 = distinct !{!119, !"dx.controlflow.hints", i32 1}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = !{!128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!128 = distinct !{!128, !129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!129 = distinct !{!129, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!130 = distinct !{!130, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!131 = distinct !{!131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!132 = distinct !{!132, !131, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!133 = distinct !{!133, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!134 = distinct !{!134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!135 = distinct !{!135, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!136 = distinct !{!136, !134, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!137 = distinct !{!137, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!138 = distinct !{!138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!139 = distinct !{!139, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!140 = distinct !{!140, !138, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!141 = distinct !{!141, !142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!142 = distinct !{!142, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!143 = !{!144}
!144 = distinct !{!144, !145, !"\01?sort@@YAXAIAM00@Z: %c"}
!145 = distinct !{!145, !"\01?sort@@YAXAIAM00@Z"}
!146 = !{!147, !148, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!147 = distinct !{!147, !145, !"\01?sort@@YAXAIAM00@Z: %a"}
!148 = distinct !{!148, !145, !"\01?sort@@YAXAIAM00@Z: %b"}
!149 = !{!148}
!150 = !{!147, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!151 = !{!147}
!152 = !{!148, !144, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!153 = !{!154}
!154 = distinct !{!154, !155, !"\01?sort@@YAXAIAM00@Z: %c"}
!155 = distinct !{!155, !"\01?sort@@YAXAIAM00@Z"}
!156 = !{!157, !158, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!157 = distinct !{!157, !155, !"\01?sort@@YAXAIAM00@Z: %a"}
!158 = distinct !{!158, !155, !"\01?sort@@YAXAIAM00@Z: %b"}
!159 = !{!158}
!160 = !{!157, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!161 = !{!157}
!162 = !{!158, !154, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 2}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = distinct !{!172, !"dx.controlflow.hints", i32 1}
!173 = distinct !{!173, !"dx.controlflow.hints", i32 1}

