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
; shader hash: 555b5793b15e96089d23115bce81af6a
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
  %490 = add i32 %51, 556
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
  br i1 %546, label %1192, label %547

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
  %1070 = and i32 %1069, 1024
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1102, label %1072

; <label>:1072                                    ; preds = %1064
  %1073 = add i32 %51, 152
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 255
  %1077 = uitofp i32 %1076 to float
  %1078 = fmul fast float %1077, 0x3F70101020000000
  %1079 = lshr i32 %1075, 8
  %1080 = and i32 %1079, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = fmul fast float %1081, 0x3F70101020000000
  %1083 = lshr i32 %1075, 16
  %1084 = and i32 %1083, 255
  %1085 = uitofp i32 %1084 to float
  %1086 = fmul fast float %1085, 0x3F70101020000000
  %1087 = fmul fast float %1078, %1078
  %1088 = fmul fast float %1082, %1082
  %1089 = fmul fast float %1086, %1086
  %1090 = add i32 %51, 524
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = add i32 %1092, 0
  %1094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1094, %dx.types.Handle %108, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1096 = extractvalue %dx.types.ResRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.ResRet.f32 %1095, 1
  %1098 = extractvalue %dx.types.ResRet.f32 %1095, 2
  %1099 = fmul fast float %1087, %1096
  %1100 = fmul fast float %1088, %1097
  %1101 = fmul fast float %1089, %1098
  br label %1102

; <label>:1102                                    ; preds = %1072, %1064
  %1103 = phi float [ %1099, %1072 ], [ 0.000000e+00, %1064 ]
  %1104 = phi float [ %1100, %1072 ], [ 0.000000e+00, %1064 ]
  %1105 = phi float [ %1101, %1072 ], [ 0.000000e+00, %1064 ]
  %1106 = fcmp fast ogt float %1103, 0.000000e+00
  %1107 = fcmp fast ogt float %1104, 0.000000e+00
  %1108 = fcmp fast ogt float %1105, 0.000000e+00
  %1109 = call float @dx.op.unary.f32(i32 23, float %1103)  ; Log(value)
  %1110 = call float @dx.op.unary.f32(i32 23, float %1104)  ; Log(value)
  %1111 = call float @dx.op.unary.f32(i32 23, float %1105)  ; Log(value)
  %1112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.i32 %1112, 0
  %1114 = lshr i32 %1113, 7
  %1115 = and i32 %1114, 32752
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = fmul fast float %1109, 0xBFE62E4300000000
  %1118 = fmul fast float %1117, %1116
  %1119 = fmul fast float %1110, 0xBFE62E4300000000
  %1120 = fmul fast float %1119, %1116
  %1121 = fmul fast float %1111, 0xBFE62E4300000000
  %1122 = fmul fast float %1121, %1116
  %1123 = select i1 %1106, float %1118, float 1.270000e+02
  %1124 = select i1 %1107, float %1120, float 1.270000e+02
  %1125 = select i1 %1108, float %1122, float 1.270000e+02
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = and i32 %1127, 10240
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1174, label %1130

; <label>:1130                                    ; preds = %1102
  %1131 = add i32 %51, 540
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = add i32 %1133, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1135, %dx.types.Handle %108, float %646, float %647, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 1
  %1138 = extractvalue %dx.types.ResRet.f32 %1136, 3
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = and i32 %1140, 1048576
  %1142 = icmp ne i32 %1141, 0
  %1143 = and i32 %1140, 8192
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1160, label %1145

; <label>:1145                                    ; preds = %1130
  %1146 = extractvalue %dx.types.ResRet.f32 %1136, 2
  %1147 = select i1 %1142, float %1146, float %1137
  %1148 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1149 = select i1 %1142, float %1148, float %1137
  %1150 = add i32 %51, 96
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = lshr i32 %1152, 16
  %1154 = and i32 %1153, 255
  %1155 = uitofp i32 %1154 to float
  %1156 = fmul fast float %1155, 0x3F80101020000000
  %1157 = fmul fast float %1156, %1149
  %1158 = fmul fast float %1156, %1137
  %1159 = fmul fast float %1156, %1147
  br label %1160

; <label>:1160                                    ; preds = %1145, %1130
  %1161 = phi float [ %1157, %1145 ], [ 0.000000e+00, %1130 ]
  %1162 = phi float [ %1158, %1145 ], [ 0.000000e+00, %1130 ]
  %1163 = phi float [ %1159, %1145 ], [ 0.000000e+00, %1130 ]
  %1164 = and i32 %1140, 2048
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1174, label %1166

; <label>:1166                                    ; preds = %1160
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = shl i32 %1168, 4
  %1170 = and i32 %1169, 32752
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = fmul fast float %1171, %1138
  %1173 = call float @dx.op.binary.f32(i32 35, float %1172, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1174

; <label>:1174                                    ; preds = %1166, %1160, %1102
  %1175 = phi float [ %1161, %1166 ], [ %1161, %1160 ], [ 0.000000e+00, %1102 ]
  %1176 = phi float [ %1162, %1166 ], [ %1162, %1160 ], [ 0.000000e+00, %1102 ]
  %1177 = phi float [ %1163, %1166 ], [ %1163, %1160 ], [ 0.000000e+00, %1102 ]
  %1178 = phi float [ %1173, %1166 ], [ 0x3F70101020000000, %1160 ], [ 0x3F70101020000000, %1102 ]
  %1179 = add i32 %51, 96
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 255
  %1183 = uitofp i32 %1182 to float
  %1184 = lshr i32 %1181, 8
  %1185 = and i32 %1184, 255
  %1186 = uitofp i32 %1185 to float
  %1187 = call float @dx.op.dot3.f32(i32 55, float %937, float %938, float %939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1188 = fmul fast float %1186, %1187
  %1189 = fadd fast float %1188, %1183
  %1190 = fmul fast float %1189, 0x3F70101020000000
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  br label %1192

; <label>:1192                                    ; preds = %1174, %532
  %1193 = phi float [ 0.000000e+00, %532 ], [ %1018, %1174 ]
  %1194 = phi float [ 0.000000e+00, %532 ], [ %1019, %1174 ]
  %1195 = phi float [ 0.000000e+00, %532 ], [ %1065, %1174 ]
  %1196 = phi float [ 0.000000e+00, %532 ], [ %1066, %1174 ]
  %1197 = phi float [ 0.000000e+00, %532 ], [ %1067, %1174 ]
  %1198 = phi float [ 0.000000e+00, %532 ], [ %937, %1174 ]
  %1199 = phi float [ 0.000000e+00, %532 ], [ %938, %1174 ]
  %1200 = phi float [ 0.000000e+00, %532 ], [ %939, %1174 ]
  %1201 = phi float [ 0.000000e+00, %532 ], [ %1175, %1174 ]
  %1202 = phi float [ 0.000000e+00, %532 ], [ %1176, %1174 ]
  %1203 = phi float [ 0.000000e+00, %532 ], [ %1177, %1174 ]
  %1204 = phi float [ 0.000000e+00, %532 ], [ %1123, %1174 ]
  %1205 = phi float [ 0.000000e+00, %532 ], [ %1124, %1174 ]
  %1206 = phi float [ 0.000000e+00, %532 ], [ %1125, %1174 ]
  %1207 = phi float [ 0.000000e+00, %532 ], [ %923, %1174 ]
  %1208 = phi float [ 0.000000e+00, %532 ], [ %719, %1174 ]
  %1209 = phi float [ 0.000000e+00, %532 ], [ %1017, %1174 ]
  %1210 = phi float [ 0.000000e+00, %532 ], [ %1020, %1174 ]
  %1211 = phi float [ 0.000000e+00, %532 ], [ %1178, %1174 ]
  %1212 = phi float [ 0.000000e+00, %532 ], [ %1191, %1174 ]
  br i1 %480, label %2135, label %1213

; <label>:1213                                    ; preds = %1192
  %1214 = icmp ult i32 %538, 2
  %1215 = add i32 %51, 40
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %51, 44
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = or i32 %1220, %1217
  %1222 = icmp eq i32 %1221, 0
  br i1 %1222, label %2135, label %1223

; <label>:1223                                    ; preds = %1213
  %1224 = and i32 %1217, 262144
  %1225 = icmp ne i32 %1224, 0
  %1226 = select i1 %1225, float %57, float 1.000000e+00
  %1227 = select i1 %1225, float %58, float 0.000000e+00
  %1228 = select i1 %1225, float %59, float 0.000000e+00
  %1229 = select i1 %1225, float %60, float 1.000000e+00
  %1230 = select i1 %1225, float %61, float %89
  %1231 = select i1 %1225, float %62, float %90
  %1232 = add i32 %51, 300
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = lshr i32 %1234, 16
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = fmul fast float %1236, 0x3F50624DE0000000
  %1238 = add i32 %51, 104
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = lshr i32 %1240, 16
  %1242 = and i32 %1241, 255
  %1243 = lshr i32 %1240, 24
  %1244 = add i32 %51, 308
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 65535
  %1248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1247)  ; LegacyF16ToF32(value)
  %1249 = lshr i32 %1246, 16
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = add i32 %51, 48
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = lshr i32 %1253, 22
  %1255 = shl nuw nsw i32 %1254, 5
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = shl i32 %1253, 4
  %1258 = and i32 %1257, 32752
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = lshr i32 %1253, 7
  %1261 = and i32 %1260, 32752
  %1262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1261)  ; LegacyF16ToF32(value)
  %1263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1264 = extractvalue %dx.types.CBufRet.f32 %1263, 3
  %1265 = fmul fast float %1264, 1.000000e+03
  %1266 = fmul fast float %390, %1265
  %1267 = call float @dx.op.unary.f32(i32 22, float %1266)  ; Frc(value)
  %1268 = fadd fast float %1267, %380
  %1269 = fmul fast float %391, %1265
  %1270 = call float @dx.op.unary.f32(i32 22, float %1269)  ; Frc(value)
  %1271 = fadd fast float %1270, %382
  %1272 = fmul fast float %1237, %1265
  %1273 = call float @dx.op.unary.f32(i32 22, float %1272)  ; Frc(value)
  %1274 = fmul fast float %1273, 0x401921FB60000000
  %1275 = fadd fast float %1274, %1256
  %1276 = call float @dx.op.unary.f32(i32 13, float %1275)  ; Sin(value)
  %1277 = call float @dx.op.unary.f32(i32 12, float %1275)  ; Cos(value)
  %1278 = fsub fast float -0.000000e+00, %1276
  %1279 = fadd fast float %1230, -5.000000e-01
  %1280 = fadd fast float %1231, -5.000000e-01
  %1281 = fmul fast float %1248, %1279
  %1282 = fmul fast float %1250, %1280
  %1283 = fadd fast float %1281, 5.000000e-01
  %1284 = fadd fast float %1282, 5.000000e-01
  %1285 = fmul fast float %1259, %1283
  %1286 = fmul fast float %1262, %1284
  %1287 = fmul fast float %1277, %1285
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1286, float %1287)  ; FMad(a,b,c)
  %1289 = fmul fast float %1276, %1285
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1277, float %1286, float %1289)  ; FMad(a,b,c)
  %1291 = fadd fast float %1268, %1288
  %1292 = fadd fast float %1271, %1290
  %1293 = icmp ugt i32 %1242, 1
  %1294 = icmp ugt i32 %1240, 33554431
  %1295 = or i1 %1294, %1293
  br i1 %1295, label %1296, label %1321

; <label>:1296                                    ; preds = %1223
  %1297 = add i32 %51, 244
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = lshr i32 %1299, 16
  %1301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1300)  ; LegacyF16ToF32(value)
  %1302 = fmul fast float %1264, %1301
  %1303 = call float @dx.op.unary.f32(i32 22, float %1302)  ; Frc(value)
  %1304 = mul nuw nsw i32 %1242, %1243
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1303, %1305
  %1307 = call float @dx.op.unary.f32(i32 27, float %1306)  ; Round_ni(value)
  %1308 = fptoui float %1307 to i32
  %1309 = urem i32 %1308, %1242
  %1310 = udiv i32 %1308, %1243
  %1311 = call float @dx.op.unary.f32(i32 22, float %1291)  ; Frc(value)
  %1312 = call float @dx.op.unary.f32(i32 22, float %1292)  ; Frc(value)
  %1313 = uitofp i32 %1309 to float
  %1314 = uitofp i32 %1310 to float
  %1315 = fadd fast float %1311, %1313
  %1316 = fadd fast float %1312, %1314
  %1317 = uitofp i32 %1242 to float
  %1318 = uitofp i32 %1243 to float
  %1319 = fdiv fast float %1315, %1317
  %1320 = fdiv fast float %1316, %1318
  br label %1321

; <label>:1321                                    ; preds = %1296, %1223
  %1322 = phi float [ %1319, %1296 ], [ %1291, %1223 ]
  %1323 = phi float [ %1320, %1296 ], [ %1292, %1223 ]
  %1324 = and i32 %1217, 256
  %1325 = icmp eq i32 %1324, 0
  br i1 %1325, label %1372, label %1326

; <label>:1326                                    ; preds = %1321
  %1327 = add i32 %51, 492
  %1328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.i32 %1328, 0
  %1330 = add i32 %1329, 0
  %1331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1332 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1331, %dx.types.Handle %108, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1333 = extractvalue %dx.types.ResRet.f32 %1332, 0
  %1334 = add i32 %51, 116
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1334, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = shl i32 %1336, 4
  %1338 = and i32 %1337, 32752
  %1339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1338)  ; LegacyF16ToF32(value)
  %1340 = lshr i32 %1336, 7
  %1341 = and i32 %1340, 32752
  %1342 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1341)  ; LegacyF16ToF32(value)
  %1343 = fsub fast float 1.000000e+00, %535
  %1344 = call float @dx.op.binary.f32(i32 35, float %1343, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1345 = bitcast float %535 to i32
  %1346 = sitofp i32 %1345 to float
  %1347 = fadd fast float %1346, 0xC1CFBF8940000000
  %1348 = fmul fast float %1342, %1347
  %1349 = fadd fast float %1348, 0x41CFBF8940000000
  %1350 = fptosi float %1349 to i32
  %1351 = bitcast i32 %1350 to float
  %1352 = bitcast float %1344 to i32
  %1353 = sitofp i32 %1352 to float
  %1354 = fadd fast float %1353, 0xC1CFBF8940000000
  %1355 = fmul fast float %1354, %1342
  %1356 = fadd fast float %1355, 0x41CFBF8940000000
  %1357 = fptosi float %1356 to i32
  %1358 = bitcast i32 %1357 to float
  %1359 = fmul fast float %1351, %1339
  %1360 = fmul fast float %1358, %1339
  %1361 = fsub fast float %1344, %1359
  %1362 = fadd fast float %1360, %1344
  %1363 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1364 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1365 = fsub fast float %1333, %1363
  %1366 = fsub fast float %1364, %1363
  %1367 = bitcast float %1366 to i32
  %1368 = sub nsw i32 2129859010, %1367
  %1369 = bitcast i32 %1368 to float
  %1370 = fmul fast float %1369, %1365
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  br label %1372

; <label>:1372                                    ; preds = %1326, %1321
  %1373 = phi float [ %1371, %1326 ], [ %535, %1321 ]
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 128
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1394, label %1378

; <label>:1378                                    ; preds = %1372
  %1379 = add i32 %51, 476
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = add i32 %1381, 0
  %1383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1383, %dx.types.Handle %108, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1385 = extractvalue %dx.types.ResRet.f32 %1384, 0
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = and i32 %1387, 524288
  %1389 = icmp ne i32 %1388, 0
  %1390 = fcmp fast ogt float %1385, 0x3FE0101020000000
  %1391 = select i1 %1390, float 1.000000e+00, float 0.000000e+00
  %1392 = select i1 %1389, float %1391, float %1385
  %1393 = fmul fast float %1392, %1373
  br label %1394

; <label>:1394                                    ; preds = %1378, %1372
  %1395 = phi float [ %1393, %1378 ], [ %1373, %1372 ]
  %1396 = fcmp fast ult float %1395, 0x3F70101020000000
  br i1 %1396, label %2135, label %1397

; <label>:1397                                    ; preds = %1394
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = and i32 %1399, 16
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1600, label %1402

; <label>:1402                                    ; preds = %1397
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = add i32 %51, 428
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = add i32 %1407, 0
  %1409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1410 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1409, %dx.types.Handle %107, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1411 = extractvalue %dx.types.ResRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.ResRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.ResRet.f32 %1410, 2
  %1414 = extractvalue %dx.types.ResRet.f32 %1410, 3
  %1415 = and i32 %1404, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = lshr i32 %1404, 8
  %1418 = and i32 %1417, 255
  %1419 = uitofp i32 %1418 to float
  %1420 = fmul fast float %1414, %1416
  %1421 = fadd fast float %1420, %1419
  %1422 = fmul fast float %1421, 0x3F70101000000000
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 512
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1435, label %1427

; <label>:1427                                    ; preds = %1402
  %1428 = add i32 %51, 512
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1428, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = add i32 %1430, 0
  %1432 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1431, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1433 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1432, %dx.types.Handle %108, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  br label %1435

; <label>:1435                                    ; preds = %1427, %1402
  %1436 = phi float [ %1434, %1427 ], [ 1.000000e+00, %1402 ]
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 33554432
  %1440 = icmp eq i32 %1439, 0
  br i1 %1440, label %1547, label %1441

; <label>:1441                                    ; preds = %1435
  %1442 = add i32 %51, 240
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1442, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 65535
  %1446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1445)  ; LegacyF16ToF32(value)
  %1447 = lshr i32 %1444, 16
  %1448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1447)  ; LegacyF16ToF32(value)
  %1449 = add i32 %51, 244
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 65535
  %1453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1452)  ; LegacyF16ToF32(value)
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = lshr i32 %1455, 24
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1457, 0x3F70101020000000
  %1459 = and i32 %1455, 255
  %1460 = uitofp i32 %1459 to float
  %1461 = fmul fast float %1460, 0x3F70101020000000
  %1462 = lshr i32 %1455, 8
  %1463 = and i32 %1462, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = fmul fast float %1464, 0x3F70101020000000
  %1466 = lshr i32 %1455, 16
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = fmul fast float %1468, 0x3F70101020000000
  %1470 = add i32 %51, 236
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = lshr i32 %1472, 24
  %1474 = uitofp i32 %1473 to float
  %1475 = fmul fast float %1474, 0x3F70101020000000
  %1476 = and i32 %1472, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = fmul fast float %1477, 0x3F70101020000000
  %1479 = lshr i32 %1472, 8
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, 0x3F70101020000000
  %1483 = lshr i32 %1472, 16
  %1484 = and i32 %1483, 255
  %1485 = uitofp i32 %1484 to float
  %1486 = fmul fast float %1485, 0x3F70101020000000
  %1487 = bitcast float %1411 to i32
  %1488 = ashr i32 %1487, 1
  %1489 = sub nsw i32 1597463174, %1488
  %1490 = bitcast i32 %1489 to float
  %1491 = fmul fast float %1411, 5.000000e-01
  %1492 = fmul fast float %1490, %1490
  %1493 = fmul fast float %1492, %1491
  %1494 = fsub fast float 1.500000e+00, %1493
  %1495 = fmul fast float %1490, %1411
  %1496 = fmul fast float %1495, %1494
  %1497 = bitcast float %1412 to i32
  %1498 = ashr i32 %1497, 1
  %1499 = sub nsw i32 1597463174, %1498
  %1500 = bitcast i32 %1499 to float
  %1501 = fmul fast float %1412, 5.000000e-01
  %1502 = fmul fast float %1500, %1500
  %1503 = fmul fast float %1502, %1501
  %1504 = fsub fast float 1.500000e+00, %1503
  %1505 = fmul fast float %1500, %1412
  %1506 = fmul fast float %1505, %1504
  %1507 = bitcast float %1413 to i32
  %1508 = ashr i32 %1507, 1
  %1509 = sub nsw i32 1597463174, %1508
  %1510 = bitcast i32 %1509 to float
  %1511 = fmul fast float %1413, 5.000000e-01
  %1512 = fmul fast float %1510, %1510
  %1513 = fmul fast float %1512, %1511
  %1514 = fsub fast float 1.500000e+00, %1513
  %1515 = fmul fast float %1510, %1413
  %1516 = fmul fast float %1515, %1514
  %1517 = fsub fast float %1496, %1478
  %1518 = fsub fast float %1506, %1482
  %1519 = fsub fast float %1516, %1486
  %1520 = fmul fast float %1517, %1446
  %1521 = fmul fast float %1518, %1448
  %1522 = fmul fast float %1519, %1453
  %1523 = fadd fast float %1520, %1461
  %1524 = fadd fast float %1521, %1465
  %1525 = fadd fast float %1522, %1469
  %1526 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  %1527 = call float @dx.op.unary.f32(i32 7, float %1524)  ; Saturate(value)
  %1528 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1529 = fmul fast float %1526, %1526
  %1530 = fmul fast float %1527, %1527
  %1531 = fmul fast float %1528, %1528
  %1532 = fsub fast float %1529, %1411
  %1533 = fsub fast float %1530, %1412
  %1534 = fsub fast float %1531, %1413
  %1535 = fmul fast float %1532, %1436
  %1536 = fmul fast float %1533, %1436
  %1537 = fmul fast float %1534, %1436
  %1538 = fadd fast float %1535, %1411
  %1539 = fadd fast float %1536, %1412
  %1540 = fadd fast float %1537, %1413
  %1541 = fadd fast float %1458, %1422
  %1542 = fsub fast float %1541, %1475
  %1543 = call float @dx.op.unary.f32(i32 7, float %1542)  ; Saturate(value)
  %1544 = fsub fast float %1543, %1422
  %1545 = fmul fast float %1544, %1436
  %1546 = fadd fast float %1545, %1422
  br label %1600

; <label>:1547                                    ; preds = %1435
  %1548 = and i32 %1438, 134217728
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1584, label %1550

; <label>:1550                                    ; preds = %1547
  %1551 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %1552 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %1553 = call float @dx.op.unary.f32(i32 24, float %375)  ; Sqrt(value)
  %1554 = fadd fast float %1551, -5.000000e-01
  %1555 = fadd fast float %1552, -5.000000e-01
  %1556 = fadd fast float %1553, -5.000000e-01
  %1557 = fmul fast float %1554, %1436
  %1558 = fmul fast float %1555, %1436
  %1559 = fmul fast float %1556, %1436
  %1560 = fadd fast float %1557, 5.000000e-01
  %1561 = fadd fast float %1558, 5.000000e-01
  %1562 = fadd fast float %1559, 5.000000e-01
  %1563 = call float @dx.op.unary.f32(i32 24, float %1411)  ; Sqrt(value)
  %1564 = call float @dx.op.unary.f32(i32 24, float %1412)  ; Sqrt(value)
  %1565 = call float @dx.op.unary.f32(i32 24, float %1413)  ; Sqrt(value)
  %1566 = fmul fast float %1560, 2.000000e+00
  %1567 = fsub fast float 1.000000e+00, %1566
  %1568 = fmul fast float %1567, %1563
  %1569 = fadd fast float %1568, %1566
  %1570 = fmul fast float %1569, %1563
  %1571 = fmul fast float %1561, 2.000000e+00
  %1572 = fsub fast float 1.000000e+00, %1571
  %1573 = fmul fast float %1572, %1564
  %1574 = fadd fast float %1573, %1571
  %1575 = fmul fast float %1574, %1564
  %1576 = fmul fast float %1562, 2.000000e+00
  %1577 = fsub fast float 1.000000e+00, %1576
  %1578 = fmul fast float %1577, %1565
  %1579 = fadd fast float %1578, %1576
  %1580 = fmul fast float %1579, %1565
  %1581 = fmul fast float %1570, %1570
  %1582 = fmul fast float %1575, %1575
  %1583 = fmul fast float %1580, %1580
  br label %1600

; <label>:1584                                    ; preds = %1547
  %1585 = fmul fast float %367, %367
  %1586 = fmul fast float %371, %371
  %1587 = fmul fast float %375, %375
  %1588 = fadd fast float %1585, -1.000000e+00
  %1589 = fadd fast float %1586, -1.000000e+00
  %1590 = fadd fast float %1587, -1.000000e+00
  %1591 = fmul fast float %1436, %1588
  %1592 = fmul fast float %1436, %1589
  %1593 = fmul fast float %1436, %1590
  %1594 = fadd fast float %1591, 1.000000e+00
  %1595 = fadd fast float %1592, 1.000000e+00
  %1596 = fadd fast float %1593, 1.000000e+00
  %1597 = fmul fast float %1594, %1411
  %1598 = fmul fast float %1595, %1412
  %1599 = fmul fast float %1596, %1413
  br label %1600

; <label>:1600                                    ; preds = %1584, %1550, %1441, %1397
  %1601 = phi float [ %1546, %1441 ], [ %1422, %1550 ], [ %1422, %1584 ], [ 0x3FA23C0BE0000000, %1397 ]
  %1602 = phi float [ %1538, %1441 ], [ %1581, %1550 ], [ %1597, %1584 ], [ 1.000000e+00, %1397 ]
  %1603 = phi float [ %1539, %1441 ], [ %1582, %1550 ], [ %1598, %1584 ], [ 1.000000e+00, %1397 ]
  %1604 = phi float [ %1540, %1441 ], [ %1583, %1550 ], [ %1599, %1584 ], [ 1.000000e+00, %1397 ]
  %1605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.i32 %1605, 1
  %1607 = and i32 %1606, 1
  %1608 = icmp ne i32 %1607, 0
  %1609 = add i32 %51, 356
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = and i32 %1611, 32
  %1613 = icmp ne i32 %1612, 0
  %1614 = and i1 %1608, %1613
  %1615 = select i1 %1614, float 1.000000e+00, float %1602
  %1616 = select i1 %1614, float 0x3FD3333340000000, float %1603
  %1617 = select i1 %1614, float 0x3FD3333340000000, float %1604
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 32
  %1621 = icmp eq i32 %1620, 0
  br i1 %1621, label %1694, label %1622

; <label>:1622                                    ; preds = %1600
  %1623 = add i32 %51, 108
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1623, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = add i32 %51, 444
  %1627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1628 = extractvalue %dx.types.ResRet.i32 %1627, 0
  %1629 = add i32 %1628, 0
  %1630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1629, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1631 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1630, %dx.types.Handle %107, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1632 = extractvalue %dx.types.ResRet.f32 %1631, 0
  %1633 = extractvalue %dx.types.ResRet.f32 %1631, 1
  %1634 = extractvalue %dx.types.ResRet.f32 %1631, 2
  %1635 = extractvalue %dx.types.ResRet.f32 %1631, 3
  %1636 = and i32 %1625, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = lshr i32 %1625, 8
  %1639 = and i32 %1638, 255
  %1640 = uitofp i32 %1639 to float
  %1641 = lshr i32 %1625, 16
  %1642 = and i32 %1641, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = fmul fast float %1643, 0x3F70101000000000
  %1645 = fmul fast float %1632, %1637
  %1646 = fadd fast float %1645, %1640
  %1647 = fmul fast float %1646, 0x3F70101000000000
  %1648 = fadd fast float %1633, -5.000000e-01
  %1649 = fadd fast float %1635, -5.000000e-01
  %1650 = fmul fast float %1648, %1644
  %1651 = fmul fast float %1649, %1644
  %1652 = fadd fast float %1650, 5.000000e-01
  %1653 = fadd fast float %1651, 5.000000e-01
  %1654 = fmul fast float %1652, 2.000000e+00
  %1655 = fadd fast float %1654, -1.000000e+00
  %1656 = fmul fast float %1653, 2.000000e+00
  %1657 = fadd fast float %1656, -1.000000e+00
  %1658 = fadd fast float %1655, %1657
  %1659 = fmul fast float %1658, 5.000000e-01
  %1660 = fsub fast float %1655, %1657
  %1661 = fmul fast float %1660, 5.000000e-01
  %1662 = call float @dx.op.unary.f32(i32 6, float %1659)  ; FAbs(value)
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = call float @dx.op.unary.f32(i32 6, float %1661)  ; FAbs(value)
  %1665 = fsub fast float %1663, %1664
  %1666 = call float @dx.op.dot3.f32(i32 55, float %1659, float %1661, float %1665, float %1659, float %1661, float %1665)  ; Dot3(ax,ay,az,bx,by,bz)
  %1667 = call float @dx.op.unary.f32(i32 25, float %1666)  ; Rsqrt(value)
  %1668 = fmul fast float %1659, %1667
  %1669 = fmul fast float %1661, %1667
  %1670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.i32 %1670, 0
  %1672 = and i32 %1671, 67108864
  %1673 = icmp eq i32 %1672, 0
  br i1 %1673, label %1690, label %1674

; <label>:1674                                    ; preds = %1622
  %1675 = add i32 %51, 296
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1675, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = and i32 %1677, 65535
  %1679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1678)  ; LegacyF16ToF32(value)
  %1680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1681 = extractvalue %dx.types.ResRet.i32 %1680, 0
  %1682 = and i32 %1681, 65535
  %1683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1682)  ; LegacyF16ToF32(value)
  %1684 = lshr i32 %1677, 16
  %1685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1684)  ; LegacyF16ToF32(value)
  %1686 = fsub fast float %1647, %1685
  %1687 = fmul fast float %1686, %1679
  %1688 = fadd fast float %1687, %1683
  %1689 = call float @dx.op.unary.f32(i32 7, float %1688)  ; Saturate(value)
  br label %1690

; <label>:1690                                    ; preds = %1674, %1622
  %1691 = phi float [ %1689, %1674 ], [ %1647, %1622 ]
  %1692 = call float @dx.op.dot2.f32(i32 54, float %1668, float %1669, float %1226, float %1227)  ; Dot2(ax,ay,bx,by)
  %1693 = call float @dx.op.dot2.f32(i32 54, float %1668, float %1669, float %1228, float %1229)  ; Dot2(ax,ay,bx,by)
  br label %1694

; <label>:1694                                    ; preds = %1690, %1600
  %1695 = phi float [ %1691, %1690 ], [ 0x3FD6666660000000, %1600 ]
  %1696 = phi float [ %1692, %1690 ], [ 0.000000e+00, %1600 ]
  %1697 = phi float [ %1693, %1690 ], [ 0.000000e+00, %1600 ]
  %1698 = phi float [ %1634, %1690 ], [ 1.000000e+00, %1600 ]
  %1699 = add i32 %51, 176
  %1700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1701 = extractvalue %dx.types.ResRet.i32 %1700, 0
  %1702 = lshr i32 %1701, 22
  %1703 = shl nuw nsw i32 %1702, 5
  %1704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1703)  ; LegacyF16ToF32(value)
  %1705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1706 = extractvalue %dx.types.ResRet.i32 %1705, 0
  %1707 = and i32 %1706, 64
  %1708 = icmp eq i32 %1707, 0
  br i1 %1708, label %1742, label %1709

; <label>:1709                                    ; preds = %1694
  %1710 = add i32 %51, 460
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = add i32 %1712, 0
  %1714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = and i32 %1716, 131072
  %1718 = icmp eq i32 %1717, 0
  %1719 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1714, %dx.types.Handle %107, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1720 = extractvalue %dx.types.ResRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.ResRet.f32 %1719, 1
  %1722 = extractvalue %dx.types.ResRet.f32 %1719, 2
  %1723 = fmul fast float %1720, %355
  %1724 = fmul fast float %1721, %358
  %1725 = fmul fast float %1722, %361
  br i1 %1718, label %1732, label %1726

; <label>:1726                                    ; preds = %1709
  %1727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.f32 %1727, 0
  %1729 = fmul fast float %1728, %1723
  %1730 = fmul fast float %1728, %1724
  %1731 = fmul fast float %1728, %1725
  br label %1732

; <label>:1732                                    ; preds = %1726, %1709
  %1733 = phi float [ %1729, %1726 ], [ %1723, %1709 ]
  %1734 = phi float [ %1730, %1726 ], [ %1724, %1709 ]
  %1735 = phi float [ %1731, %1726 ], [ %1725, %1709 ]
  %1736 = fmul fast float %1733, %1704
  %1737 = select i1 %296, float %1736, float %1733
  %1738 = call float @dx.op.dot3.f32(i32 55, float %1737, float %1734, float %1735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1739 = select i1 %296, float 0.000000e+00, float %1733
  %1740 = select i1 %296, float %1738, float %1734
  %1741 = select i1 %296, float 0.000000e+00, float %1735
  br label %1742

; <label>:1742                                    ; preds = %1732, %1694
  %1743 = phi float [ %1739, %1732 ], [ 0.000000e+00, %1694 ]
  %1744 = phi float [ %1740, %1732 ], [ 0.000000e+00, %1694 ]
  %1745 = phi float [ %1741, %1732 ], [ 0.000000e+00, %1694 ]
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = and i32 %1747, 1024
  %1749 = icmp eq i32 %1748, 0
  br i1 %1749, label %1780, label %1750

; <label>:1750                                    ; preds = %1742
  %1751 = add i32 %51, 168
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = and i32 %1753, 255
  %1755 = uitofp i32 %1754 to float
  %1756 = fmul fast float %1755, 0x3F70101020000000
  %1757 = lshr i32 %1753, 8
  %1758 = and i32 %1757, 255
  %1759 = uitofp i32 %1758 to float
  %1760 = fmul fast float %1759, 0x3F70101020000000
  %1761 = lshr i32 %1753, 16
  %1762 = and i32 %1761, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = fmul fast float %1763, 0x3F70101020000000
  %1765 = fmul fast float %1756, %1756
  %1766 = fmul fast float %1760, %1760
  %1767 = fmul fast float %1764, %1764
  %1768 = add i32 %51, 528
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = add i32 %1770, 0
  %1772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1772, %dx.types.Handle %108, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.ResRet.f32 %1773, 1
  %1776 = extractvalue %dx.types.ResRet.f32 %1773, 2
  %1777 = fmul fast float %1765, %1774
  %1778 = fmul fast float %1766, %1775
  %1779 = fmul fast float %1767, %1776
  br label %1780

; <label>:1780                                    ; preds = %1750, %1742
  %1781 = phi float [ %1777, %1750 ], [ 0.000000e+00, %1742 ]
  %1782 = phi float [ %1778, %1750 ], [ 0.000000e+00, %1742 ]
  %1783 = phi float [ %1779, %1750 ], [ 0.000000e+00, %1742 ]
  %1784 = fcmp fast ogt float %1781, 0.000000e+00
  %1785 = fcmp fast ogt float %1782, 0.000000e+00
  %1786 = fcmp fast ogt float %1783, 0.000000e+00
  %1787 = call float @dx.op.unary.f32(i32 23, float %1781)  ; Log(value)
  %1788 = call float @dx.op.unary.f32(i32 23, float %1782)  ; Log(value)
  %1789 = call float @dx.op.unary.f32(i32 23, float %1783)  ; Log(value)
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = lshr i32 %1791, 7
  %1793 = and i32 %1792, 32752
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = fmul fast float %1787, 0xBFE62E4300000000
  %1796 = fmul fast float %1795, %1794
  %1797 = fmul fast float %1788, 0xBFE62E4300000000
  %1798 = fmul fast float %1797, %1794
  %1799 = fmul fast float %1789, 0xBFE62E4300000000
  %1800 = fmul fast float %1799, %1794
  %1801 = select i1 %1784, float %1796, float 1.270000e+02
  %1802 = select i1 %1785, float %1798, float 1.270000e+02
  %1803 = select i1 %1786, float %1800, float 1.270000e+02
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = and i32 %1805, 10240
  %1807 = icmp eq i32 %1806, 0
  br i1 %1807, label %1852, label %1808

; <label>:1808                                    ; preds = %1780
  %1809 = add i32 %51, 544
  %1810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1809, i32 undef)  ; BufferLoad(srv,index,wot)
  %1811 = extractvalue %dx.types.ResRet.i32 %1810, 0
  %1812 = add i32 %1811, 0
  %1813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1813, %dx.types.Handle %108, float %1322, float %1323, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1815 = extractvalue %dx.types.ResRet.f32 %1814, 1
  %1816 = extractvalue %dx.types.ResRet.f32 %1814, 3
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = and i32 %1818, 1048576
  %1820 = icmp ne i32 %1819, 0
  %1821 = and i32 %1818, 8192
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %1838, label %1823

; <label>:1823                                    ; preds = %1808
  %1824 = extractvalue %dx.types.ResRet.f32 %1814, 2
  %1825 = select i1 %1820, float %1824, float %1815
  %1826 = extractvalue %dx.types.ResRet.f32 %1814, 0
  %1827 = select i1 %1820, float %1826, float %1815
  %1828 = add i32 %51, 112
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = lshr i32 %1830, 16
  %1832 = and i32 %1831, 255
  %1833 = uitofp i32 %1832 to float
  %1834 = fmul fast float %1833, 0x3F80101020000000
  %1835 = fmul fast float %1834, %1827
  %1836 = fmul fast float %1834, %1815
  %1837 = fmul fast float %1834, %1825
  br label %1838

; <label>:1838                                    ; preds = %1823, %1808
  %1839 = phi float [ %1835, %1823 ], [ 0.000000e+00, %1808 ]
  %1840 = phi float [ %1836, %1823 ], [ 0.000000e+00, %1808 ]
  %1841 = phi float [ %1837, %1823 ], [ 0.000000e+00, %1808 ]
  %1842 = and i32 %1818, 2048
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %1852, label %1844

; <label>:1844                                    ; preds = %1838
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1699, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = shl i32 %1846, 4
  %1848 = and i32 %1847, 32752
  %1849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1848)  ; LegacyF16ToF32(value)
  %1850 = fmul fast float %1849, %1816
  %1851 = call float @dx.op.binary.f32(i32 35, float %1850, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1852

; <label>:1852                                    ; preds = %1844, %1838, %1780
  %1853 = phi float [ %1839, %1844 ], [ %1839, %1838 ], [ 0.000000e+00, %1780 ]
  %1854 = phi float [ %1840, %1844 ], [ %1840, %1838 ], [ 0.000000e+00, %1780 ]
  %1855 = phi float [ %1841, %1844 ], [ %1841, %1838 ], [ 0.000000e+00, %1780 ]
  %1856 = phi float [ %1851, %1844 ], [ 0x3F70101020000000, %1838 ], [ 0x3F70101020000000, %1780 ]
  %1857 = add i32 %51, 112
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = and i32 %1859, 255
  %1861 = uitofp i32 %1860 to float
  %1862 = lshr i32 %1859, 8
  %1863 = and i32 %1862, 255
  %1864 = uitofp i32 %1863 to float
  %1865 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1616, float %1617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1866 = fmul fast float %1864, %1865
  %1867 = fadd fast float %1866, %1861
  %1868 = fmul fast float %1867, 0x3F70101020000000
  %1869 = call float @dx.op.unary.f32(i32 7, float %1868)  ; Saturate(value)
  br i1 %1214, label %1870, label %1905

; <label>:1870                                    ; preds = %1852
  %1871 = fmul fast float %1856, 2.000000e+00
  %1872 = fcmp fast olt float %1801, 1.270000e+02
  %1873 = fcmp fast olt float %1802, 1.270000e+02
  %1874 = fcmp fast olt float %1803, 1.270000e+02
  %1875 = fmul fast float %1801, 0xBFF7154760000000
  %1876 = fmul fast float %1875, %1871
  %1877 = fmul fast float %1802, 0xBFF7154760000000
  %1878 = fmul fast float %1877, %1871
  %1879 = fmul fast float %1803, 0xBFF7154760000000
  %1880 = fmul fast float %1879, %1871
  %1881 = call float @dx.op.unary.f32(i32 21, float %1876)  ; Exp(value)
  %1882 = call float @dx.op.unary.f32(i32 21, float %1878)  ; Exp(value)
  %1883 = call float @dx.op.unary.f32(i32 21, float %1880)  ; Exp(value)
  %1884 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1885 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1886 = call float @dx.op.unary.f32(i32 7, float %1883)  ; Saturate(value)
  %1887 = fadd fast float %1884, -1.000000e+00
  %1888 = select i1 %1872, float %1887, float -1.000000e+00
  %1889 = fadd fast float %1885, -1.000000e+00
  %1890 = select i1 %1873, float %1889, float -1.000000e+00
  %1891 = fadd fast float %1886, -1.000000e+00
  %1892 = select i1 %1874, float %1891, float -1.000000e+00
  %1893 = fmul fast float %1888, %1395
  %1894 = fmul fast float %1890, %1395
  %1895 = fmul fast float %1892, %1395
  %1896 = fadd fast float %1893, 1.000000e+00
  %1897 = fadd fast float %1894, 1.000000e+00
  %1898 = fadd fast float %1895, 1.000000e+00
  %1899 = fmul fast float %1896, %1198
  %1900 = fmul fast float %1897, %1199
  %1901 = fmul fast float %1898, %1200
  %1902 = fmul fast float %1896, %1195
  %1903 = fmul fast float %1897, %1196
  %1904 = fmul fast float %1898, %1197
  br label %1905

; <label>:1905                                    ; preds = %1870, %1852
  %1906 = phi float [ %1902, %1870 ], [ %1195, %1852 ]
  %1907 = phi float [ %1903, %1870 ], [ %1196, %1852 ]
  %1908 = phi float [ %1904, %1870 ], [ %1197, %1852 ]
  %1909 = phi float [ %1899, %1870 ], [ %1198, %1852 ]
  %1910 = phi float [ %1900, %1870 ], [ %1199, %1852 ]
  %1911 = phi float [ %1901, %1870 ], [ %1200, %1852 ]
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 3
  %1915 = icmp eq i32 %1914, 3
  br i1 %1915, label %1994, label %1916

; <label>:1916                                    ; preds = %1905
  %1917 = and i32 %1913, 16
  %1918 = icmp ne i32 %1917, 0
  %1919 = select i1 %1918, float %1395, float 0.000000e+00
  %1920 = icmp eq i32 %1914, 0
  br i1 %1920, label %1921, label %1949

; <label>:1921                                    ; preds = %1916
  %1922 = and i32 %1913, 64
  %1923 = icmp ne i32 %1922, 0
  %1924 = select i1 %1923, float %1395, float 0.000000e+00
  %1925 = fsub fast float %1615, %1909
  %1926 = fsub fast float %1616, %1910
  %1927 = fsub fast float %1617, %1911
  %1928 = fmul fast float %1919, %1925
  %1929 = fmul fast float %1919, %1926
  %1930 = fmul fast float %1919, %1927
  %1931 = fadd fast float %1928, %1909
  %1932 = fadd fast float %1929, %1910
  %1933 = fadd fast float %1930, %1911
  %1934 = fsub fast float %1601, %1207
  %1935 = fmul fast float %1919, %1934
  %1936 = fadd fast float %1935, %1207
  %1937 = fsub fast float %1743, %1906
  %1938 = fsub fast float %1744, %1907
  %1939 = fsub fast float %1745, %1908
  %1940 = fmul fast float %1924, %1937
  %1941 = fmul fast float %1924, %1938
  %1942 = fmul fast float %1924, %1939
  %1943 = fadd fast float %1940, %1906
  %1944 = fadd fast float %1941, %1907
  %1945 = fadd fast float %1942, %1908
  %1946 = fsub fast float %1869, %1212
  %1947 = fmul fast float %1919, %1946
  %1948 = fadd fast float %1947, %1212
  br label %1994

; <label>:1949                                    ; preds = %1916
  %1950 = icmp eq i32 %1914, 1
  br i1 %1950, label %1951, label %1964

; <label>:1951                                    ; preds = %1949
  %1952 = fadd fast float %1615, -1.000000e+00
  %1953 = fadd fast float %1616, -1.000000e+00
  %1954 = fadd fast float %1617, -1.000000e+00
  %1955 = fmul fast float %1919, %1952
  %1956 = fmul fast float %1919, %1953
  %1957 = fmul fast float %1919, %1954
  %1958 = fadd fast float %1955, 1.000000e+00
  %1959 = fadd fast float %1956, 1.000000e+00
  %1960 = fadd fast float %1957, 1.000000e+00
  %1961 = fmul fast float %1958, %1909
  %1962 = fmul fast float %1959, %1910
  %1963 = fmul fast float %1960, %1911
  br label %1994

; <label>:1964                                    ; preds = %1949
  %1965 = icmp eq i32 %1914, 2
  br i1 %1965, label %1966, label %1994

; <label>:1966                                    ; preds = %1964
  %1967 = call float @dx.op.unary.f32(i32 24, float %1615)  ; Sqrt(value)
  %1968 = call float @dx.op.unary.f32(i32 24, float %1616)  ; Sqrt(value)
  %1969 = call float @dx.op.unary.f32(i32 24, float %1617)  ; Sqrt(value)
  %1970 = fadd fast float %1967, -5.000000e-01
  %1971 = fadd fast float %1968, -5.000000e-01
  %1972 = fadd fast float %1969, -5.000000e-01
  %1973 = fmul fast float %1970, %1919
  %1974 = fmul fast float %1971, %1919
  %1975 = fmul fast float %1972, %1919
  %1976 = fadd fast float %1973, 5.000000e-01
  %1977 = fadd fast float %1974, 5.000000e-01
  %1978 = fadd fast float %1975, 5.000000e-01
  %1979 = fmul fast float %1976, 2.000000e+00
  %1980 = fsub fast float 1.000000e+00, %1979
  %1981 = fmul fast float %1980, %1909
  %1982 = fadd fast float %1981, %1979
  %1983 = fmul fast float %1982, %1909
  %1984 = fmul fast float %1977, 2.000000e+00
  %1985 = fsub fast float 1.000000e+00, %1984
  %1986 = fmul fast float %1985, %1910
  %1987 = fadd fast float %1986, %1984
  %1988 = fmul fast float %1987, %1910
  %1989 = fmul fast float %1978, 2.000000e+00
  %1990 = fsub fast float 1.000000e+00, %1989
  %1991 = fmul fast float %1990, %1911
  %1992 = fadd fast float %1991, %1989
  %1993 = fmul fast float %1992, %1911
  br label %1994

; <label>:1994                                    ; preds = %1966, %1964, %1951, %1921, %1905
  %1995 = phi float [ %1906, %1905 ], [ %1906, %1966 ], [ %1906, %1964 ], [ %1906, %1951 ], [ %1943, %1921 ]
  %1996 = phi float [ %1907, %1905 ], [ %1907, %1966 ], [ %1907, %1964 ], [ %1907, %1951 ], [ %1944, %1921 ]
  %1997 = phi float [ %1908, %1905 ], [ %1908, %1966 ], [ %1908, %1964 ], [ %1908, %1951 ], [ %1945, %1921 ]
  %1998 = phi float [ %1909, %1905 ], [ %1983, %1966 ], [ %1909, %1964 ], [ %1961, %1951 ], [ %1931, %1921 ]
  %1999 = phi float [ %1910, %1905 ], [ %1988, %1966 ], [ %1910, %1964 ], [ %1962, %1951 ], [ %1932, %1921 ]
  %2000 = phi float [ %1911, %1905 ], [ %1993, %1966 ], [ %1911, %1964 ], [ %1963, %1951 ], [ %1933, %1921 ]
  %2001 = phi float [ %1207, %1905 ], [ %1207, %1966 ], [ %1207, %1964 ], [ %1207, %1951 ], [ %1936, %1921 ]
  %2002 = phi float [ %1212, %1905 ], [ %1212, %1966 ], [ %1212, %1964 ], [ %1212, %1951 ], [ %1948, %1921 ]
  %2003 = and i32 %1913, 12
  %2004 = icmp eq i32 %2003, 12
  br i1 %2004, label %2135, label %2005

; <label>:2005                                    ; preds = %1994
  %2006 = and i32 %1913, 2097184
  %2007 = icmp eq i32 %2006, 2097184
  %2008 = select i1 %2007, float %1395, float 0.000000e+00
  %2009 = and i32 %1913, 4194336
  %2010 = icmp eq i32 %2009, 4194336
  %2011 = select i1 %2010, float %1395, float 0.000000e+00
  %2012 = and i32 %1913, 8388640
  %2013 = icmp eq i32 %2012, 8388640
  %2014 = select i1 %2013, float %1395, float 0.000000e+00
  %2015 = and i32 %1913, 1024
  %2016 = icmp ne i32 %2015, 0
  %2017 = select i1 %2016, float %1395, float 0.000000e+00
  %2018 = and i32 %1913, 2048
  %2019 = icmp ne i32 %2018, 0
  %2020 = select i1 %2019, float %1395, float 0.000000e+00
  %2021 = and i32 %1913, 8192
  %2022 = icmp ne i32 %2021, 0
  %2023 = select i1 %2022, float %1395, float 0.000000e+00
  %2024 = icmp eq i32 %2003, 0
  br i1 %2024, label %2025, label %2059

; <label>:2025                                    ; preds = %2005
  %2026 = fsub fast float %1696, %1193
  %2027 = fsub fast float %1697, %1194
  %2028 = fmul fast float %2008, %2026
  %2029 = fmul fast float %2008, %2027
  %2030 = fadd fast float %2028, %1193
  %2031 = fadd fast float %2029, %1194
  %2032 = fsub fast float %1698, %1210
  %2033 = fmul fast float %2011, %2032
  %2034 = fadd fast float %2033, %1210
  %2035 = fsub fast float %1695, %1209
  %2036 = fmul fast float %2014, %2035
  %2037 = fadd fast float %2036, %1209
  %2038 = fsub fast float %1801, %1204
  %2039 = fsub fast float %1802, %1205
  %2040 = fsub fast float %1803, %1206
  %2041 = fmul fast float %2017, %2038
  %2042 = fmul fast float %2017, %2039
  %2043 = fmul fast float %2017, %2040
  %2044 = fadd fast float %2041, %1204
  %2045 = fadd fast float %2042, %1205
  %2046 = fadd fast float %2043, %1206
  %2047 = fsub fast float %1856, %1211
  %2048 = fmul fast float %2020, %2047
  %2049 = fadd fast float %2048, %1211
  %2050 = fsub fast float %1853, %1201
  %2051 = fsub fast float %1854, %1202
  %2052 = fsub fast float %1855, %1203
  %2053 = fmul fast float %2023, %2050
  %2054 = fmul fast float %2023, %2051
  %2055 = fmul fast float %2023, %2052
  %2056 = fadd fast float %2053, %1201
  %2057 = fadd fast float %2054, %1202
  %2058 = fadd fast float %2055, %1203
  br label %2135

; <label>:2059                                    ; preds = %2005
  %2060 = icmp eq i32 %2003, 4
  br i1 %2060, label %2061, label %2107

; <label>:2061                                    ; preds = %2059
  %2062 = fmul fast float %2008, %1696
  %2063 = fmul fast float %2008, %1697
  %2064 = fadd fast float %2062, %1193
  %2065 = fadd fast float %2063, %1194
  %2066 = call float @dx.op.binary.f32(i32 36, float %1210, float %1698)  ; FMin(a,b)
  %2067 = fsub fast float %2066, %1210
  %2068 = fmul fast float %2067, %2011
  %2069 = fadd fast float %2068, %1210
  %2070 = fadd fast float %1695, %1209
  %2071 = fmul fast float %2070, 0x3FF337FAE0000000
  %2072 = fmul fast float %1209, %1209
  %2073 = fmul fast float %1695, %1695
  %2074 = fadd fast float %2073, %2072
  %2075 = fmul fast float %2074, 0x3FE5152B00000000
  %2076 = fmul fast float %1209, 0xBFCC1F85E0000000
  %2077 = fmul fast float %2076, %1695
  %2078 = fadd fast float %2077, 0xBFE1363700000000
  %2079 = fadd fast float %2078, %2071
  %2080 = fsub fast float %2079, %2075
  %2081 = fmul fast float %2070, 0x3FBA6F0D00000000
  %2082 = fmul fast float %2074, 0x3FD0432880000000
  %2083 = fmul fast float %1209, 0xBFEF110800000000
  %2084 = fmul fast float %2083, %1695
  %2085 = fadd fast float %2084, 1.000000e+00
  %2086 = fsub fast float %2085, %2081
  %2087 = fadd fast float %2086, %2082
  %2088 = fdiv fast float %2080, %2087
  %2089 = call float @dx.op.unary.f32(i32 7, float %2088)  ; Saturate(value)
  %2090 = fsub fast float %2089, %1209
  %2091 = fmul fast float %2090, %2014
  %2092 = fadd fast float %2091, %1209
  %2093 = fmul fast float %2017, %1801
  %2094 = fmul fast float %2017, %1802
  %2095 = fmul fast float %2017, %1803
  %2096 = fadd fast float %2093, %1204
  %2097 = fadd fast float %2094, %1205
  %2098 = fadd fast float %2095, %1206
  %2099 = fmul fast float %2020, %1856
  %2100 = fadd fast float %2099, %1211
  %2101 = fmul fast float %2023, %1853
  %2102 = fmul fast float %2023, %1854
  %2103 = fmul fast float %2023, %1855
  %2104 = fadd fast float %2101, %1201
  %2105 = fadd fast float %2102, %1202
  %2106 = fadd fast float %2103, %1203
  br label %2135

; <label>:2107                                    ; preds = %2059
  %2108 = icmp eq i32 %2003, 8
  br i1 %2108, label %2109, label %2135

; <label>:2109                                    ; preds = %2107
  %2110 = fmul fast float %2008, %1696
  %2111 = fmul fast float %2008, %1697
  %2112 = fadd fast float %2110, %1193
  %2113 = fadd fast float %2111, %1194
  %2114 = call float @dx.op.binary.f32(i32 36, float %1210, float %1698)  ; FMin(a,b)
  %2115 = fsub fast float %2114, %1210
  %2116 = fmul fast float %2115, %2011
  %2117 = fadd fast float %2116, %1210
  %2118 = fsub fast float %1695, %1209
  %2119 = fmul fast float %2014, %2118
  %2120 = fadd fast float %2119, %1209
  %2121 = fmul fast float %2017, %1801
  %2122 = fmul fast float %2017, %1802
  %2123 = fmul fast float %2017, %1803
  %2124 = fadd fast float %2121, %1204
  %2125 = fadd fast float %2122, %1205
  %2126 = fadd fast float %2123, %1206
  %2127 = fmul fast float %2020, %1856
  %2128 = fadd fast float %2127, %1211
  %2129 = fmul fast float %2023, %1853
  %2130 = fmul fast float %2023, %1854
  %2131 = fmul fast float %2023, %1855
  %2132 = fadd fast float %2129, %1201
  %2133 = fadd fast float %2130, %1202
  %2134 = fadd fast float %2131, %1203
  br label %2135

; <label>:2135                                    ; preds = %2109, %2107, %2061, %2025, %1994, %1394, %1213, %1192
  %2136 = phi float [ %1193, %1994 ], [ %1193, %1394 ], [ %1193, %1192 ], [ %2112, %2109 ], [ %1193, %2107 ], [ %2064, %2061 ], [ %2030, %2025 ], [ %1193, %1213 ]
  %2137 = phi float [ %1194, %1994 ], [ %1194, %1394 ], [ %1194, %1192 ], [ %2113, %2109 ], [ %1194, %2107 ], [ %2065, %2061 ], [ %2031, %2025 ], [ %1194, %1213 ]
  %2138 = phi float [ %1995, %1994 ], [ %1195, %1394 ], [ %1195, %1192 ], [ %1995, %2109 ], [ %1995, %2107 ], [ %1995, %2061 ], [ %1995, %2025 ], [ %1195, %1213 ]
  %2139 = phi float [ %1996, %1994 ], [ %1196, %1394 ], [ %1196, %1192 ], [ %1996, %2109 ], [ %1996, %2107 ], [ %1996, %2061 ], [ %1996, %2025 ], [ %1196, %1213 ]
  %2140 = phi float [ %1997, %1994 ], [ %1197, %1394 ], [ %1197, %1192 ], [ %1997, %2109 ], [ %1997, %2107 ], [ %1997, %2061 ], [ %1997, %2025 ], [ %1197, %1213 ]
  %2141 = phi float [ %1998, %1994 ], [ %1198, %1394 ], [ %1198, %1192 ], [ %1998, %2109 ], [ %1998, %2107 ], [ %1998, %2061 ], [ %1998, %2025 ], [ %1198, %1213 ]
  %2142 = phi float [ %1999, %1994 ], [ %1199, %1394 ], [ %1199, %1192 ], [ %1999, %2109 ], [ %1999, %2107 ], [ %1999, %2061 ], [ %1999, %2025 ], [ %1199, %1213 ]
  %2143 = phi float [ %2000, %1994 ], [ %1200, %1394 ], [ %1200, %1192 ], [ %2000, %2109 ], [ %2000, %2107 ], [ %2000, %2061 ], [ %2000, %2025 ], [ %1200, %1213 ]
  %2144 = phi float [ %1201, %1994 ], [ %1201, %1394 ], [ %1201, %1192 ], [ %2132, %2109 ], [ %1201, %2107 ], [ %2104, %2061 ], [ %2056, %2025 ], [ %1201, %1213 ]
  %2145 = phi float [ %1202, %1994 ], [ %1202, %1394 ], [ %1202, %1192 ], [ %2133, %2109 ], [ %1202, %2107 ], [ %2105, %2061 ], [ %2057, %2025 ], [ %1202, %1213 ]
  %2146 = phi float [ %1203, %1994 ], [ %1203, %1394 ], [ %1203, %1192 ], [ %2134, %2109 ], [ %1203, %2107 ], [ %2106, %2061 ], [ %2058, %2025 ], [ %1203, %1213 ]
  %2147 = phi float [ %1204, %1994 ], [ %1204, %1394 ], [ %1204, %1192 ], [ %2124, %2109 ], [ %1204, %2107 ], [ %2096, %2061 ], [ %2044, %2025 ], [ %1204, %1213 ]
  %2148 = phi float [ %1205, %1994 ], [ %1205, %1394 ], [ %1205, %1192 ], [ %2125, %2109 ], [ %1205, %2107 ], [ %2097, %2061 ], [ %2045, %2025 ], [ %1205, %1213 ]
  %2149 = phi float [ %1206, %1994 ], [ %1206, %1394 ], [ %1206, %1192 ], [ %2126, %2109 ], [ %1206, %2107 ], [ %2098, %2061 ], [ %2046, %2025 ], [ %1206, %1213 ]
  %2150 = phi float [ %2001, %1994 ], [ %1207, %1394 ], [ %1207, %1192 ], [ %2001, %2109 ], [ %2001, %2107 ], [ %2001, %2061 ], [ %2001, %2025 ], [ %1207, %1213 ]
  %2151 = phi float [ %1209, %1994 ], [ %1209, %1394 ], [ %1209, %1192 ], [ %2120, %2109 ], [ %1209, %2107 ], [ %2092, %2061 ], [ %2037, %2025 ], [ %1209, %1213 ]
  %2152 = phi float [ %1210, %1994 ], [ %1210, %1394 ], [ %1210, %1192 ], [ %2117, %2109 ], [ %1210, %2107 ], [ %2069, %2061 ], [ %2034, %2025 ], [ %1210, %1213 ]
  %2153 = phi float [ %1211, %1994 ], [ %1211, %1394 ], [ %1211, %1192 ], [ %2128, %2109 ], [ %1211, %2107 ], [ %2100, %2061 ], [ %2049, %2025 ], [ %1211, %1213 ]
  %2154 = phi float [ %2002, %1994 ], [ %1212, %1394 ], [ %1212, %1192 ], [ %2002, %2109 ], [ %2002, %2107 ], [ %2002, %2061 ], [ %2002, %2025 ], [ %1212, %1213 ]
  br i1 %482, label %3077, label %2155

; <label>:2155                                    ; preds = %2135
  %2156 = icmp ult i32 %538, 3
  %2157 = add i32 %51, 56
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = add i32 %51, 60
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = or i32 %2162, %2159
  %2164 = icmp eq i32 %2163, 0
  br i1 %2164, label %3077, label %2165

; <label>:2165                                    ; preds = %2155
  %2166 = and i32 %2159, 262144
  %2167 = icmp ne i32 %2166, 0
  %2168 = select i1 %2167, float %57, float 1.000000e+00
  %2169 = select i1 %2167, float %58, float 0.000000e+00
  %2170 = select i1 %2167, float %59, float 0.000000e+00
  %2171 = select i1 %2167, float %60, float 1.000000e+00
  %2172 = select i1 %2167, float %61, float %89
  %2173 = select i1 %2167, float %62, float %90
  %2174 = add i32 %51, 316
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = lshr i32 %2176, 16
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = fmul fast float %2178, 0x3F50624DE0000000
  %2180 = add i32 %51, 120
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = lshr i32 %2182, 16
  %2184 = and i32 %2183, 255
  %2185 = lshr i32 %2182, 24
  %2186 = add i32 %51, 324
  %2187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2186, i32 undef)  ; BufferLoad(srv,index,wot)
  %2188 = extractvalue %dx.types.ResRet.i32 %2187, 0
  %2189 = and i32 %2188, 65535
  %2190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2189)  ; LegacyF16ToF32(value)
  %2191 = lshr i32 %2188, 16
  %2192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2191)  ; LegacyF16ToF32(value)
  %2193 = add i32 %51, 64
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = lshr i32 %2195, 22
  %2197 = shl nuw nsw i32 %2196, 5
  %2198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2197)  ; LegacyF16ToF32(value)
  %2199 = shl i32 %2195, 4
  %2200 = and i32 %2199, 32752
  %2201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2200)  ; LegacyF16ToF32(value)
  %2202 = lshr i32 %2195, 7
  %2203 = and i32 %2202, 32752
  %2204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2203)  ; LegacyF16ToF32(value)
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 3
  %2207 = fmul fast float %2206, 1.000000e+03
  %2208 = fmul fast float %432, %2207
  %2209 = call float @dx.op.unary.f32(i32 22, float %2208)  ; Frc(value)
  %2210 = fadd fast float %2209, %422
  %2211 = fmul fast float %433, %2207
  %2212 = call float @dx.op.unary.f32(i32 22, float %2211)  ; Frc(value)
  %2213 = fadd fast float %2212, %424
  %2214 = fmul fast float %2179, %2207
  %2215 = call float @dx.op.unary.f32(i32 22, float %2214)  ; Frc(value)
  %2216 = fmul fast float %2215, 0x401921FB60000000
  %2217 = fadd fast float %2216, %2198
  %2218 = call float @dx.op.unary.f32(i32 13, float %2217)  ; Sin(value)
  %2219 = call float @dx.op.unary.f32(i32 12, float %2217)  ; Cos(value)
  %2220 = fsub fast float -0.000000e+00, %2218
  %2221 = fadd fast float %2172, -5.000000e-01
  %2222 = fadd fast float %2173, -5.000000e-01
  %2223 = fmul fast float %2190, %2221
  %2224 = fmul fast float %2192, %2222
  %2225 = fadd fast float %2223, 5.000000e-01
  %2226 = fadd fast float %2224, 5.000000e-01
  %2227 = fmul fast float %2201, %2225
  %2228 = fmul fast float %2204, %2226
  %2229 = fmul fast float %2219, %2227
  %2230 = call float @dx.op.tertiary.f32(i32 46, float %2220, float %2228, float %2229)  ; FMad(a,b,c)
  %2231 = fmul fast float %2218, %2227
  %2232 = call float @dx.op.tertiary.f32(i32 46, float %2219, float %2228, float %2231)  ; FMad(a,b,c)
  %2233 = fadd fast float %2210, %2230
  %2234 = fadd fast float %2213, %2232
  %2235 = icmp ugt i32 %2184, 1
  %2236 = icmp ugt i32 %2182, 33554431
  %2237 = or i1 %2236, %2235
  br i1 %2237, label %2238, label %2263

; <label>:2238                                    ; preds = %2165
  %2239 = add i32 %51, 260
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = lshr i32 %2241, 16
  %2243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2242)  ; LegacyF16ToF32(value)
  %2244 = fmul fast float %2206, %2243
  %2245 = call float @dx.op.unary.f32(i32 22, float %2244)  ; Frc(value)
  %2246 = mul nuw nsw i32 %2184, %2185
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2245, %2247
  %2249 = call float @dx.op.unary.f32(i32 27, float %2248)  ; Round_ni(value)
  %2250 = fptoui float %2249 to i32
  %2251 = urem i32 %2250, %2184
  %2252 = udiv i32 %2250, %2185
  %2253 = call float @dx.op.unary.f32(i32 22, float %2233)  ; Frc(value)
  %2254 = call float @dx.op.unary.f32(i32 22, float %2234)  ; Frc(value)
  %2255 = uitofp i32 %2251 to float
  %2256 = uitofp i32 %2252 to float
  %2257 = fadd fast float %2253, %2255
  %2258 = fadd fast float %2254, %2256
  %2259 = uitofp i32 %2184 to float
  %2260 = uitofp i32 %2185 to float
  %2261 = fdiv fast float %2257, %2259
  %2262 = fdiv fast float %2258, %2260
  br label %2263

; <label>:2263                                    ; preds = %2238, %2165
  %2264 = phi float [ %2261, %2238 ], [ %2233, %2165 ]
  %2265 = phi float [ %2262, %2238 ], [ %2234, %2165 ]
  %2266 = and i32 %2159, 256
  %2267 = icmp eq i32 %2266, 0
  br i1 %2267, label %2314, label %2268

; <label>:2268                                    ; preds = %2263
  %2269 = add i32 %51, 496
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = add i32 %2271, 0
  %2273 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2272, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2274 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2273, %dx.types.Handle %108, float %2264, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = add i32 %51, 132
  %2277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2276, i32 undef)  ; BufferLoad(srv,index,wot)
  %2278 = extractvalue %dx.types.ResRet.i32 %2277, 0
  %2279 = shl i32 %2278, 4
  %2280 = and i32 %2279, 32752
  %2281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2280)  ; LegacyF16ToF32(value)
  %2282 = lshr i32 %2278, 7
  %2283 = and i32 %2282, 32752
  %2284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2283)  ; LegacyF16ToF32(value)
  %2285 = fsub fast float 1.000000e+00, %534
  %2286 = call float @dx.op.binary.f32(i32 35, float %2285, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2287 = bitcast float %534 to i32
  %2288 = sitofp i32 %2287 to float
  %2289 = fadd fast float %2288, 0xC1CFBF8940000000
  %2290 = fmul fast float %2284, %2289
  %2291 = fadd fast float %2290, 0x41CFBF8940000000
  %2292 = fptosi float %2291 to i32
  %2293 = bitcast i32 %2292 to float
  %2294 = bitcast float %2286 to i32
  %2295 = sitofp i32 %2294 to float
  %2296 = fadd fast float %2295, 0xC1CFBF8940000000
  %2297 = fmul fast float %2296, %2284
  %2298 = fadd fast float %2297, 0x41CFBF8940000000
  %2299 = fptosi float %2298 to i32
  %2300 = bitcast i32 %2299 to float
  %2301 = fmul fast float %2293, %2281
  %2302 = fmul fast float %2300, %2281
  %2303 = fsub fast float %2286, %2301
  %2304 = fadd fast float %2302, %2286
  %2305 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2306 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2307 = fsub fast float %2275, %2305
  %2308 = fsub fast float %2306, %2305
  %2309 = bitcast float %2308 to i32
  %2310 = sub nsw i32 2129859010, %2309
  %2311 = bitcast i32 %2310 to float
  %2312 = fmul fast float %2311, %2307
  %2313 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  br label %2314

; <label>:2314                                    ; preds = %2268, %2263
  %2315 = phi float [ %2313, %2268 ], [ %534, %2263 ]
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 128
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2336, label %2320

; <label>:2320                                    ; preds = %2314
  %2321 = add i32 %51, 480
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = add i32 %2323, 0
  %2325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2324, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2326 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2325, %dx.types.Handle %108, float %2264, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2327 = extractvalue %dx.types.ResRet.f32 %2326, 0
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = and i32 %2329, 524288
  %2331 = icmp ne i32 %2330, 0
  %2332 = fcmp fast ogt float %2327, 0x3FE0101020000000
  %2333 = select i1 %2332, float 1.000000e+00, float 0.000000e+00
  %2334 = select i1 %2331, float %2333, float %2327
  %2335 = fmul fast float %2334, %2315
  br label %2336

; <label>:2336                                    ; preds = %2320, %2314
  %2337 = phi float [ %2335, %2320 ], [ %2315, %2314 ]
  %2338 = fcmp fast ult float %2337, 0x3F70101020000000
  br i1 %2338, label %3077, label %2339

; <label>:2339                                    ; preds = %2336
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 16
  %2343 = icmp eq i32 %2342, 0
  br i1 %2343, label %2542, label %2344

; <label>:2344                                    ; preds = %2339
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2180, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = add i32 %51, 432
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2347, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = add i32 %2349, 0
  %2351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2351, %dx.types.Handle %107, float %2264, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2353 = extractvalue %dx.types.ResRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.ResRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.ResRet.f32 %2352, 2
  %2356 = extractvalue %dx.types.ResRet.f32 %2352, 3
  %2357 = and i32 %2346, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = lshr i32 %2346, 8
  %2360 = and i32 %2359, 255
  %2361 = uitofp i32 %2360 to float
  %2362 = fmul fast float %2356, %2358
  %2363 = fadd fast float %2362, %2361
  %2364 = fmul fast float %2363, 0x3F70101000000000
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 512
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2377, label %2369

; <label>:2369                                    ; preds = %2344
  %2370 = add i32 %51, 516
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = add i32 %2372, 0
  %2374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2375 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2374, %dx.types.Handle %108, float %2264, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  br label %2377

; <label>:2377                                    ; preds = %2369, %2344
  %2378 = phi float [ %2376, %2369 ], [ 1.000000e+00, %2344 ]
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 33554432
  %2382 = icmp eq i32 %2381, 0
  br i1 %2382, label %2489, label %2383

; <label>:2383                                    ; preds = %2377
  %2384 = add i32 %51, 256
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2384, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 65535
  %2388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2387)  ; LegacyF16ToF32(value)
  %2389 = lshr i32 %2386, 16
  %2390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2389)  ; LegacyF16ToF32(value)
  %2391 = add i32 %51, 260
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = and i32 %2393, 65535
  %2395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2394)  ; LegacyF16ToF32(value)
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.i32 %2396, 0
  %2398 = lshr i32 %2397, 24
  %2399 = uitofp i32 %2398 to float
  %2400 = fmul fast float %2399, 0x3F70101020000000
  %2401 = and i32 %2397, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = lshr i32 %2397, 8
  %2405 = and i32 %2404, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = fmul fast float %2406, 0x3F70101020000000
  %2408 = lshr i32 %2397, 16
  %2409 = and i32 %2408, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = fmul fast float %2410, 0x3F70101020000000
  %2412 = add i32 %51, 252
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2412, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = lshr i32 %2414, 24
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F70101020000000
  %2418 = and i32 %2414, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = lshr i32 %2414, 8
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = fmul fast float %2423, 0x3F70101020000000
  %2425 = lshr i32 %2414, 16
  %2426 = and i32 %2425, 255
  %2427 = uitofp i32 %2426 to float
  %2428 = fmul fast float %2427, 0x3F70101020000000
  %2429 = bitcast float %2353 to i32
  %2430 = ashr i32 %2429, 1
  %2431 = sub nsw i32 1597463174, %2430
  %2432 = bitcast i32 %2431 to float
  %2433 = fmul fast float %2353, 5.000000e-01
  %2434 = fmul fast float %2432, %2432
  %2435 = fmul fast float %2434, %2433
  %2436 = fsub fast float 1.500000e+00, %2435
  %2437 = fmul fast float %2432, %2353
  %2438 = fmul fast float %2437, %2436
  %2439 = bitcast float %2354 to i32
  %2440 = ashr i32 %2439, 1
  %2441 = sub nsw i32 1597463174, %2440
  %2442 = bitcast i32 %2441 to float
  %2443 = fmul fast float %2354, 5.000000e-01
  %2444 = fmul fast float %2442, %2442
  %2445 = fmul fast float %2444, %2443
  %2446 = fsub fast float 1.500000e+00, %2445
  %2447 = fmul fast float %2442, %2354
  %2448 = fmul fast float %2447, %2446
  %2449 = bitcast float %2355 to i32
  %2450 = ashr i32 %2449, 1
  %2451 = sub nsw i32 1597463174, %2450
  %2452 = bitcast i32 %2451 to float
  %2453 = fmul fast float %2355, 5.000000e-01
  %2454 = fmul fast float %2452, %2452
  %2455 = fmul fast float %2454, %2453
  %2456 = fsub fast float 1.500000e+00, %2455
  %2457 = fmul fast float %2452, %2355
  %2458 = fmul fast float %2457, %2456
  %2459 = fsub fast float %2438, %2420
  %2460 = fsub fast float %2448, %2424
  %2461 = fsub fast float %2458, %2428
  %2462 = fmul fast float %2459, %2388
  %2463 = fmul fast float %2460, %2390
  %2464 = fmul fast float %2461, %2395
  %2465 = fadd fast float %2462, %2403
  %2466 = fadd fast float %2463, %2407
  %2467 = fadd fast float %2464, %2411
  %2468 = call float @dx.op.unary.f32(i32 7, float %2465)  ; Saturate(value)
  %2469 = call float @dx.op.unary.f32(i32 7, float %2466)  ; Saturate(value)
  %2470 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2471 = fmul fast float %2468, %2468
  %2472 = fmul fast float %2469, %2469
  %2473 = fmul fast float %2470, %2470
  %2474 = fsub fast float %2471, %2353
  %2475 = fsub fast float %2472, %2354
  %2476 = fsub fast float %2473, %2355
  %2477 = fmul fast float %2474, %2378
  %2478 = fmul fast float %2475, %2378
  %2479 = fmul fast float %2476, %2378
  %2480 = fadd fast float %2477, %2353
  %2481 = fadd fast float %2478, %2354
  %2482 = fadd fast float %2479, %2355
  %2483 = fadd fast float %2400, %2364
  %2484 = fsub fast float %2483, %2417
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  %2486 = fsub fast float %2485, %2364
  %2487 = fmul fast float %2486, %2378
  %2488 = fadd fast float %2487, %2364
  br label %2542

; <label>:2489                                    ; preds = %2377
  %2490 = and i32 %2380, 134217728
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2526, label %2492

; <label>:2492                                    ; preds = %2489
  %2493 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %2494 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %2495 = call float @dx.op.unary.f32(i32 24, float %417)  ; Sqrt(value)
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fadd fast float %2494, -5.000000e-01
  %2498 = fadd fast float %2495, -5.000000e-01
  %2499 = fmul fast float %2496, %2378
  %2500 = fmul fast float %2497, %2378
  %2501 = fmul fast float %2498, %2378
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = call float @dx.op.unary.f32(i32 24, float %2353)  ; Sqrt(value)
  %2506 = call float @dx.op.unary.f32(i32 24, float %2354)  ; Sqrt(value)
  %2507 = call float @dx.op.unary.f32(i32 24, float %2355)  ; Sqrt(value)
  %2508 = fmul fast float %2502, 2.000000e+00
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %2509, %2505
  %2511 = fadd fast float %2510, %2508
  %2512 = fmul fast float %2511, %2505
  %2513 = fmul fast float %2503, 2.000000e+00
  %2514 = fsub fast float 1.000000e+00, %2513
  %2515 = fmul fast float %2514, %2506
  %2516 = fadd fast float %2515, %2513
  %2517 = fmul fast float %2516, %2506
  %2518 = fmul fast float %2504, 2.000000e+00
  %2519 = fsub fast float 1.000000e+00, %2518
  %2520 = fmul fast float %2519, %2507
  %2521 = fadd fast float %2520, %2518
  %2522 = fmul fast float %2521, %2507
  %2523 = fmul fast float %2512, %2512
  %2524 = fmul fast float %2517, %2517
  %2525 = fmul fast float %2522, %2522
  br label %2542

; <label>:2526                                    ; preds = %2489
  %2527 = fmul fast float %409, %409
  %2528 = fmul fast float %413, %413
  %2529 = fmul fast float %417, %417
  %2530 = fadd fast float %2527, -1.000000e+00
  %2531 = fadd fast float %2528, -1.000000e+00
  %2532 = fadd fast float %2529, -1.000000e+00
  %2533 = fmul fast float %2378, %2530
  %2534 = fmul fast float %2378, %2531
  %2535 = fmul fast float %2378, %2532
  %2536 = fadd fast float %2533, 1.000000e+00
  %2537 = fadd fast float %2534, 1.000000e+00
  %2538 = fadd fast float %2535, 1.000000e+00
  %2539 = fmul fast float %2536, %2353
  %2540 = fmul fast float %2537, %2354
  %2541 = fmul fast float %2538, %2355
  br label %2542

; <label>:2542                                    ; preds = %2526, %2492, %2383, %2339
  %2543 = phi float [ %2488, %2383 ], [ %2364, %2492 ], [ %2364, %2526 ], [ 0x3FA23C0BE0000000, %2339 ]
  %2544 = phi float [ %2480, %2383 ], [ %2523, %2492 ], [ %2539, %2526 ], [ 1.000000e+00, %2339 ]
  %2545 = phi float [ %2481, %2383 ], [ %2524, %2492 ], [ %2540, %2526 ], [ 1.000000e+00, %2339 ]
  %2546 = phi float [ %2482, %2383 ], [ %2525, %2492 ], [ %2541, %2526 ], [ 1.000000e+00, %2339 ]
  %2547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2548 = extractvalue %dx.types.CBufRet.i32 %2547, 1
  %2549 = and i32 %2548, 1
  %2550 = icmp ne i32 %2549, 0
  %2551 = add i32 %51, 356
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = and i32 %2553, 32
  %2555 = icmp ne i32 %2554, 0
  %2556 = and i1 %2550, %2555
  %2557 = select i1 %2556, float 1.000000e+00, float %2544
  %2558 = select i1 %2556, float 0x3FD3333340000000, float %2545
  %2559 = select i1 %2556, float 0x3FD3333340000000, float %2546
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = and i32 %2561, 32
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2636, label %2564

; <label>:2564                                    ; preds = %2542
  %2565 = add i32 %51, 124
  %2566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2565, i32 undef)  ; BufferLoad(srv,index,wot)
  %2567 = extractvalue %dx.types.ResRet.i32 %2566, 0
  %2568 = add i32 %51, 448
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = add i32 %2570, 0
  %2572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2571, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2573 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2572, %dx.types.Handle %107, float %2264, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2574 = extractvalue %dx.types.ResRet.f32 %2573, 0
  %2575 = extractvalue %dx.types.ResRet.f32 %2573, 1
  %2576 = extractvalue %dx.types.ResRet.f32 %2573, 2
  %2577 = extractvalue %dx.types.ResRet.f32 %2573, 3
  %2578 = and i32 %2567, 255
  %2579 = uitofp i32 %2578 to float
  %2580 = lshr i32 %2567, 8
  %2581 = and i32 %2580, 255
  %2582 = uitofp i32 %2581 to float
  %2583 = lshr i32 %2567, 16
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = fmul fast float %2585, 0x3F70101000000000
  %2587 = fmul fast float %2574, %2579
  %2588 = fadd fast float %2587, %2582
  %2589 = fmul fast float %2588, 0x3F70101000000000
  %2590 = fadd fast float %2575, -5.000000e-01
  %2591 = fadd fast float %2577, -5.000000e-01
  %2592 = fmul fast float %2590, %2586
  %2593 = fmul fast float %2591, %2586
  %2594 = fadd fast float %2592, 5.000000e-01
  %2595 = fadd fast float %2593, 5.000000e-01
  %2596 = fmul fast float %2594, 2.000000e+00
  %2597 = fadd fast float %2596, -1.000000e+00
  %2598 = fmul fast float %2595, 2.000000e+00
  %2599 = fadd fast float %2598, -1.000000e+00
  %2600 = fadd fast float %2597, %2599
  %2601 = fmul fast float %2600, 5.000000e-01
  %2602 = fsub fast float %2597, %2599
  %2603 = fmul fast float %2602, 5.000000e-01
  %2604 = call float @dx.op.unary.f32(i32 6, float %2601)  ; FAbs(value)
  %2605 = fsub fast float 1.000000e+00, %2604
  %2606 = call float @dx.op.unary.f32(i32 6, float %2603)  ; FAbs(value)
  %2607 = fsub fast float %2605, %2606
  %2608 = call float @dx.op.dot3.f32(i32 55, float %2601, float %2603, float %2607, float %2601, float %2603, float %2607)  ; Dot3(ax,ay,az,bx,by,bz)
  %2609 = call float @dx.op.unary.f32(i32 25, float %2608)  ; Rsqrt(value)
  %2610 = fmul fast float %2601, %2609
  %2611 = fmul fast float %2603, %2609
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 67108864
  %2615 = icmp eq i32 %2614, 0
  br i1 %2615, label %2632, label %2616

; <label>:2616                                    ; preds = %2564
  %2617 = add i32 %51, 312
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 65535
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = and i32 %2623, 65535
  %2625 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2624)  ; LegacyF16ToF32(value)
  %2626 = lshr i32 %2619, 16
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = fsub fast float %2589, %2627
  %2629 = fmul fast float %2628, %2621
  %2630 = fadd fast float %2629, %2625
  %2631 = call float @dx.op.unary.f32(i32 7, float %2630)  ; Saturate(value)
  br label %2632

; <label>:2632                                    ; preds = %2616, %2564
  %2633 = phi float [ %2631, %2616 ], [ %2589, %2564 ]
  %2634 = call float @dx.op.dot2.f32(i32 54, float %2610, float %2611, float %2168, float %2169)  ; Dot2(ax,ay,bx,by)
  %2635 = call float @dx.op.dot2.f32(i32 54, float %2610, float %2611, float %2170, float %2171)  ; Dot2(ax,ay,bx,by)
  br label %2636

; <label>:2636                                    ; preds = %2632, %2542
  %2637 = phi float [ %2633, %2632 ], [ 0x3FD6666660000000, %2542 ]
  %2638 = phi float [ %2634, %2632 ], [ 0.000000e+00, %2542 ]
  %2639 = phi float [ %2635, %2632 ], [ 0.000000e+00, %2542 ]
  %2640 = phi float [ %2576, %2632 ], [ 1.000000e+00, %2542 ]
  %2641 = add i32 %51, 192
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = lshr i32 %2643, 22
  %2645 = shl nuw nsw i32 %2644, 5
  %2646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2645)  ; LegacyF16ToF32(value)
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 64
  %2650 = icmp eq i32 %2649, 0
  br i1 %2650, label %2684, label %2651

; <label>:2651                                    ; preds = %2636
  %2652 = add i32 %51, 464
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = add i32 %2654, 0
  %2656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2658 = extractvalue %dx.types.ResRet.i32 %2657, 0
  %2659 = and i32 %2658, 131072
  %2660 = icmp eq i32 %2659, 0
  %2661 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2656, %dx.types.Handle %107, float %2264, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2662 = extractvalue %dx.types.ResRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.ResRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.ResRet.f32 %2661, 2
  %2665 = fmul fast float %2662, %397
  %2666 = fmul fast float %2663, %400
  %2667 = fmul fast float %2664, %403
  br i1 %2660, label %2674, label %2668

; <label>:2668                                    ; preds = %2651
  %2669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2670 = extractvalue %dx.types.CBufRet.f32 %2669, 0
  %2671 = fmul fast float %2670, %2665
  %2672 = fmul fast float %2670, %2666
  %2673 = fmul fast float %2670, %2667
  br label %2674

; <label>:2674                                    ; preds = %2668, %2651
  %2675 = phi float [ %2671, %2668 ], [ %2665, %2651 ]
  %2676 = phi float [ %2672, %2668 ], [ %2666, %2651 ]
  %2677 = phi float [ %2673, %2668 ], [ %2667, %2651 ]
  %2678 = fmul fast float %2675, %2646
  %2679 = select i1 %296, float %2678, float %2675
  %2680 = call float @dx.op.dot3.f32(i32 55, float %2679, float %2676, float %2677, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2681 = select i1 %296, float 0.000000e+00, float %2675
  %2682 = select i1 %296, float %2680, float %2676
  %2683 = select i1 %296, float 0.000000e+00, float %2677
  br label %2684

; <label>:2684                                    ; preds = %2674, %2636
  %2685 = phi float [ %2681, %2674 ], [ 0.000000e+00, %2636 ]
  %2686 = phi float [ %2682, %2674 ], [ 0.000000e+00, %2636 ]
  %2687 = phi float [ %2683, %2674 ], [ 0.000000e+00, %2636 ]
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = and i32 %2689, 1024
  %2691 = icmp eq i32 %2690, 0
  br i1 %2691, label %2722, label %2692

; <label>:2692                                    ; preds = %2684
  %2693 = add i32 %51, 184
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = and i32 %2695, 255
  %2697 = uitofp i32 %2696 to float
  %2698 = fmul fast float %2697, 0x3F70101020000000
  %2699 = lshr i32 %2695, 8
  %2700 = and i32 %2699, 255
  %2701 = uitofp i32 %2700 to float
  %2702 = fmul fast float %2701, 0x3F70101020000000
  %2703 = lshr i32 %2695, 16
  %2704 = and i32 %2703, 255
  %2705 = uitofp i32 %2704 to float
  %2706 = fmul fast float %2705, 0x3F70101020000000
  %2707 = fmul fast float %2698, %2698
  %2708 = fmul fast float %2702, %2702
  %2709 = fmul fast float %2706, %2706
  %2710 = add i32 %51, 532
  %2711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2710, i32 undef)  ; BufferLoad(srv,index,wot)
  %2712 = extractvalue %dx.types.ResRet.i32 %2711, 0
  %2713 = add i32 %2712, 0
  %2714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2714, %dx.types.Handle %108, float %2264, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.ResRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.ResRet.f32 %2715, 2
  %2719 = fmul fast float %2707, %2716
  %2720 = fmul fast float %2708, %2717
  %2721 = fmul fast float %2709, %2718
  br label %2722

; <label>:2722                                    ; preds = %2692, %2684
  %2723 = phi float [ %2719, %2692 ], [ 0.000000e+00, %2684 ]
  %2724 = phi float [ %2720, %2692 ], [ 0.000000e+00, %2684 ]
  %2725 = phi float [ %2721, %2692 ], [ 0.000000e+00, %2684 ]
  %2726 = fcmp fast ogt float %2723, 0.000000e+00
  %2727 = fcmp fast ogt float %2724, 0.000000e+00
  %2728 = fcmp fast ogt float %2725, 0.000000e+00
  %2729 = call float @dx.op.unary.f32(i32 23, float %2723)  ; Log(value)
  %2730 = call float @dx.op.unary.f32(i32 23, float %2724)  ; Log(value)
  %2731 = call float @dx.op.unary.f32(i32 23, float %2725)  ; Log(value)
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = lshr i32 %2733, 7
  %2735 = and i32 %2734, 32752
  %2736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2735)  ; LegacyF16ToF32(value)
  %2737 = fmul fast float %2729, 0xBFE62E4300000000
  %2738 = fmul fast float %2737, %2736
  %2739 = fmul fast float %2730, 0xBFE62E4300000000
  %2740 = fmul fast float %2739, %2736
  %2741 = fmul fast float %2731, 0xBFE62E4300000000
  %2742 = fmul fast float %2741, %2736
  %2743 = select i1 %2726, float %2738, float 1.270000e+02
  %2744 = select i1 %2727, float %2740, float 1.270000e+02
  %2745 = select i1 %2728, float %2742, float 1.270000e+02
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %2747, 10240
  %2749 = icmp eq i32 %2748, 0
  br i1 %2749, label %2794, label %2750

; <label>:2750                                    ; preds = %2722
  %2751 = add i32 %51, 548
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = add i32 %2753, 0
  %2755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2755, %dx.types.Handle %108, float %2264, float %2265, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 3
  %2759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.i32 %2759, 0
  %2761 = and i32 %2760, 1048576
  %2762 = icmp ne i32 %2761, 0
  %2763 = and i32 %2760, 8192
  %2764 = icmp eq i32 %2763, 0
  br i1 %2764, label %2780, label %2765

; <label>:2765                                    ; preds = %2750
  %2766 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2767 = select i1 %2762, float %2766, float %2757
  %2768 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2769 = select i1 %2762, float %2768, float %2757
  %2770 = add i32 %51, 128
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = lshr i32 %2772, 16
  %2774 = and i32 %2773, 255
  %2775 = uitofp i32 %2774 to float
  %2776 = fmul fast float %2775, 0x3F80101020000000
  %2777 = fmul fast float %2776, %2769
  %2778 = fmul fast float %2776, %2757
  %2779 = fmul fast float %2776, %2767
  br label %2780

; <label>:2780                                    ; preds = %2765, %2750
  %2781 = phi float [ %2777, %2765 ], [ 0.000000e+00, %2750 ]
  %2782 = phi float [ %2778, %2765 ], [ 0.000000e+00, %2750 ]
  %2783 = phi float [ %2779, %2765 ], [ 0.000000e+00, %2750 ]
  %2784 = and i32 %2760, 2048
  %2785 = icmp eq i32 %2784, 0
  br i1 %2785, label %2794, label %2786

; <label>:2786                                    ; preds = %2780
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = shl i32 %2788, 4
  %2790 = and i32 %2789, 32752
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = fmul fast float %2791, %2758
  %2793 = call float @dx.op.binary.f32(i32 35, float %2792, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2794

; <label>:2794                                    ; preds = %2786, %2780, %2722
  %2795 = phi float [ %2781, %2786 ], [ %2781, %2780 ], [ 0.000000e+00, %2722 ]
  %2796 = phi float [ %2782, %2786 ], [ %2782, %2780 ], [ 0.000000e+00, %2722 ]
  %2797 = phi float [ %2783, %2786 ], [ %2783, %2780 ], [ 0.000000e+00, %2722 ]
  %2798 = phi float [ %2793, %2786 ], [ 0x3F70101020000000, %2780 ], [ 0x3F70101020000000, %2722 ]
  %2799 = add i32 %51, 128
  %2800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2799, i32 undef)  ; BufferLoad(srv,index,wot)
  %2801 = extractvalue %dx.types.ResRet.i32 %2800, 0
  %2802 = and i32 %2801, 255
  %2803 = uitofp i32 %2802 to float
  %2804 = lshr i32 %2801, 8
  %2805 = and i32 %2804, 255
  %2806 = uitofp i32 %2805 to float
  %2807 = call float @dx.op.dot3.f32(i32 55, float %2557, float %2558, float %2559, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2808 = fmul fast float %2806, %2807
  %2809 = fadd fast float %2808, %2803
  %2810 = fmul fast float %2809, 0x3F70101020000000
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  br i1 %2156, label %2812, label %2847

; <label>:2812                                    ; preds = %2794
  %2813 = fmul fast float %2798, 2.000000e+00
  %2814 = fcmp fast olt float %2743, 1.270000e+02
  %2815 = fcmp fast olt float %2744, 1.270000e+02
  %2816 = fcmp fast olt float %2745, 1.270000e+02
  %2817 = fmul fast float %2743, 0xBFF7154760000000
  %2818 = fmul fast float %2817, %2813
  %2819 = fmul fast float %2744, 0xBFF7154760000000
  %2820 = fmul fast float %2819, %2813
  %2821 = fmul fast float %2745, 0xBFF7154760000000
  %2822 = fmul fast float %2821, %2813
  %2823 = call float @dx.op.unary.f32(i32 21, float %2818)  ; Exp(value)
  %2824 = call float @dx.op.unary.f32(i32 21, float %2820)  ; Exp(value)
  %2825 = call float @dx.op.unary.f32(i32 21, float %2822)  ; Exp(value)
  %2826 = call float @dx.op.unary.f32(i32 7, float %2823)  ; Saturate(value)
  %2827 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2828 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2829 = fadd fast float %2826, -1.000000e+00
  %2830 = select i1 %2814, float %2829, float -1.000000e+00
  %2831 = fadd fast float %2827, -1.000000e+00
  %2832 = select i1 %2815, float %2831, float -1.000000e+00
  %2833 = fadd fast float %2828, -1.000000e+00
  %2834 = select i1 %2816, float %2833, float -1.000000e+00
  %2835 = fmul fast float %2830, %2337
  %2836 = fmul fast float %2832, %2337
  %2837 = fmul fast float %2834, %2337
  %2838 = fadd fast float %2835, 1.000000e+00
  %2839 = fadd fast float %2836, 1.000000e+00
  %2840 = fadd fast float %2837, 1.000000e+00
  %2841 = fmul fast float %2838, %2141
  %2842 = fmul fast float %2839, %2142
  %2843 = fmul fast float %2840, %2143
  %2844 = fmul fast float %2838, %2138
  %2845 = fmul fast float %2839, %2139
  %2846 = fmul fast float %2840, %2140
  br label %2847

; <label>:2847                                    ; preds = %2812, %2794
  %2848 = phi float [ %2844, %2812 ], [ %2138, %2794 ]
  %2849 = phi float [ %2845, %2812 ], [ %2139, %2794 ]
  %2850 = phi float [ %2846, %2812 ], [ %2140, %2794 ]
  %2851 = phi float [ %2841, %2812 ], [ %2141, %2794 ]
  %2852 = phi float [ %2842, %2812 ], [ %2142, %2794 ]
  %2853 = phi float [ %2843, %2812 ], [ %2143, %2794 ]
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 3
  %2857 = icmp eq i32 %2856, 3
  br i1 %2857, label %2936, label %2858

; <label>:2858                                    ; preds = %2847
  %2859 = and i32 %2855, 16
  %2860 = icmp ne i32 %2859, 0
  %2861 = select i1 %2860, float %2337, float 0.000000e+00
  %2862 = icmp eq i32 %2856, 0
  br i1 %2862, label %2863, label %2891

; <label>:2863                                    ; preds = %2858
  %2864 = and i32 %2855, 64
  %2865 = icmp ne i32 %2864, 0
  %2866 = select i1 %2865, float %2337, float 0.000000e+00
  %2867 = fsub fast float %2557, %2851
  %2868 = fsub fast float %2558, %2852
  %2869 = fsub fast float %2559, %2853
  %2870 = fmul fast float %2861, %2867
  %2871 = fmul fast float %2861, %2868
  %2872 = fmul fast float %2861, %2869
  %2873 = fadd fast float %2870, %2851
  %2874 = fadd fast float %2871, %2852
  %2875 = fadd fast float %2872, %2853
  %2876 = fsub fast float %2543, %2150
  %2877 = fmul fast float %2861, %2876
  %2878 = fadd fast float %2877, %2150
  %2879 = fsub fast float %2685, %2848
  %2880 = fsub fast float %2686, %2849
  %2881 = fsub fast float %2687, %2850
  %2882 = fmul fast float %2866, %2879
  %2883 = fmul fast float %2866, %2880
  %2884 = fmul fast float %2866, %2881
  %2885 = fadd fast float %2882, %2848
  %2886 = fadd fast float %2883, %2849
  %2887 = fadd fast float %2884, %2850
  %2888 = fsub fast float %2811, %2154
  %2889 = fmul fast float %2861, %2888
  %2890 = fadd fast float %2889, %2154
  br label %2936

; <label>:2891                                    ; preds = %2858
  %2892 = icmp eq i32 %2856, 1
  br i1 %2892, label %2893, label %2906

; <label>:2893                                    ; preds = %2891
  %2894 = fadd fast float %2557, -1.000000e+00
  %2895 = fadd fast float %2558, -1.000000e+00
  %2896 = fadd fast float %2559, -1.000000e+00
  %2897 = fmul fast float %2861, %2894
  %2898 = fmul fast float %2861, %2895
  %2899 = fmul fast float %2861, %2896
  %2900 = fadd fast float %2897, 1.000000e+00
  %2901 = fadd fast float %2898, 1.000000e+00
  %2902 = fadd fast float %2899, 1.000000e+00
  %2903 = fmul fast float %2900, %2851
  %2904 = fmul fast float %2901, %2852
  %2905 = fmul fast float %2902, %2853
  br label %2936

; <label>:2906                                    ; preds = %2891
  %2907 = icmp eq i32 %2856, 2
  br i1 %2907, label %2908, label %2936

; <label>:2908                                    ; preds = %2906
  %2909 = call float @dx.op.unary.f32(i32 24, float %2557)  ; Sqrt(value)
  %2910 = call float @dx.op.unary.f32(i32 24, float %2558)  ; Sqrt(value)
  %2911 = call float @dx.op.unary.f32(i32 24, float %2559)  ; Sqrt(value)
  %2912 = fadd fast float %2909, -5.000000e-01
  %2913 = fadd fast float %2910, -5.000000e-01
  %2914 = fadd fast float %2911, -5.000000e-01
  %2915 = fmul fast float %2912, %2861
  %2916 = fmul fast float %2913, %2861
  %2917 = fmul fast float %2914, %2861
  %2918 = fadd fast float %2915, 5.000000e-01
  %2919 = fadd fast float %2916, 5.000000e-01
  %2920 = fadd fast float %2917, 5.000000e-01
  %2921 = fmul fast float %2918, 2.000000e+00
  %2922 = fsub fast float 1.000000e+00, %2921
  %2923 = fmul fast float %2922, %2851
  %2924 = fadd fast float %2923, %2921
  %2925 = fmul fast float %2924, %2851
  %2926 = fmul fast float %2919, 2.000000e+00
  %2927 = fsub fast float 1.000000e+00, %2926
  %2928 = fmul fast float %2927, %2852
  %2929 = fadd fast float %2928, %2926
  %2930 = fmul fast float %2929, %2852
  %2931 = fmul fast float %2920, 2.000000e+00
  %2932 = fsub fast float 1.000000e+00, %2931
  %2933 = fmul fast float %2932, %2853
  %2934 = fadd fast float %2933, %2931
  %2935 = fmul fast float %2934, %2853
  br label %2936

; <label>:2936                                    ; preds = %2908, %2906, %2893, %2863, %2847
  %2937 = phi float [ %2848, %2847 ], [ %2848, %2908 ], [ %2848, %2906 ], [ %2848, %2893 ], [ %2885, %2863 ]
  %2938 = phi float [ %2849, %2847 ], [ %2849, %2908 ], [ %2849, %2906 ], [ %2849, %2893 ], [ %2886, %2863 ]
  %2939 = phi float [ %2850, %2847 ], [ %2850, %2908 ], [ %2850, %2906 ], [ %2850, %2893 ], [ %2887, %2863 ]
  %2940 = phi float [ %2851, %2847 ], [ %2925, %2908 ], [ %2851, %2906 ], [ %2903, %2893 ], [ %2873, %2863 ]
  %2941 = phi float [ %2852, %2847 ], [ %2930, %2908 ], [ %2852, %2906 ], [ %2904, %2893 ], [ %2874, %2863 ]
  %2942 = phi float [ %2853, %2847 ], [ %2935, %2908 ], [ %2853, %2906 ], [ %2905, %2893 ], [ %2875, %2863 ]
  %2943 = phi float [ %2150, %2847 ], [ %2150, %2908 ], [ %2150, %2906 ], [ %2150, %2893 ], [ %2878, %2863 ]
  %2944 = phi float [ %2154, %2847 ], [ %2154, %2908 ], [ %2154, %2906 ], [ %2154, %2893 ], [ %2890, %2863 ]
  %2945 = and i32 %2855, 12
  %2946 = icmp eq i32 %2945, 12
  br i1 %2946, label %3077, label %2947

; <label>:2947                                    ; preds = %2936
  %2948 = and i32 %2855, 2097184
  %2949 = icmp eq i32 %2948, 2097184
  %2950 = select i1 %2949, float %2337, float 0.000000e+00
  %2951 = and i32 %2855, 4194336
  %2952 = icmp eq i32 %2951, 4194336
  %2953 = select i1 %2952, float %2337, float 0.000000e+00
  %2954 = and i32 %2855, 8388640
  %2955 = icmp eq i32 %2954, 8388640
  %2956 = select i1 %2955, float %2337, float 0.000000e+00
  %2957 = and i32 %2855, 1024
  %2958 = icmp ne i32 %2957, 0
  %2959 = select i1 %2958, float %2337, float 0.000000e+00
  %2960 = and i32 %2855, 2048
  %2961 = icmp ne i32 %2960, 0
  %2962 = select i1 %2961, float %2337, float 0.000000e+00
  %2963 = and i32 %2855, 8192
  %2964 = icmp ne i32 %2963, 0
  %2965 = select i1 %2964, float %2337, float 0.000000e+00
  %2966 = icmp eq i32 %2945, 0
  br i1 %2966, label %2967, label %3001

; <label>:2967                                    ; preds = %2947
  %2968 = fsub fast float %2638, %2136
  %2969 = fsub fast float %2639, %2137
  %2970 = fmul fast float %2950, %2968
  %2971 = fmul fast float %2950, %2969
  %2972 = fadd fast float %2970, %2136
  %2973 = fadd fast float %2971, %2137
  %2974 = fsub fast float %2640, %2152
  %2975 = fmul fast float %2953, %2974
  %2976 = fadd fast float %2975, %2152
  %2977 = fsub fast float %2637, %2151
  %2978 = fmul fast float %2956, %2977
  %2979 = fadd fast float %2978, %2151
  %2980 = fsub fast float %2743, %2147
  %2981 = fsub fast float %2744, %2148
  %2982 = fsub fast float %2745, %2149
  %2983 = fmul fast float %2959, %2980
  %2984 = fmul fast float %2959, %2981
  %2985 = fmul fast float %2959, %2982
  %2986 = fadd fast float %2983, %2147
  %2987 = fadd fast float %2984, %2148
  %2988 = fadd fast float %2985, %2149
  %2989 = fsub fast float %2798, %2153
  %2990 = fmul fast float %2962, %2989
  %2991 = fadd fast float %2990, %2153
  %2992 = fsub fast float %2795, %2144
  %2993 = fsub fast float %2796, %2145
  %2994 = fsub fast float %2797, %2146
  %2995 = fmul fast float %2965, %2992
  %2996 = fmul fast float %2965, %2993
  %2997 = fmul fast float %2965, %2994
  %2998 = fadd fast float %2995, %2144
  %2999 = fadd fast float %2996, %2145
  %3000 = fadd fast float %2997, %2146
  br label %3077

; <label>:3001                                    ; preds = %2947
  %3002 = icmp eq i32 %2945, 4
  br i1 %3002, label %3003, label %3049

; <label>:3003                                    ; preds = %3001
  %3004 = fmul fast float %2950, %2638
  %3005 = fmul fast float %2950, %2639
  %3006 = fadd fast float %3004, %2136
  %3007 = fadd fast float %3005, %2137
  %3008 = call float @dx.op.binary.f32(i32 36, float %2152, float %2640)  ; FMin(a,b)
  %3009 = fsub fast float %3008, %2152
  %3010 = fmul fast float %3009, %2953
  %3011 = fadd fast float %3010, %2152
  %3012 = fadd fast float %2637, %2151
  %3013 = fmul fast float %3012, 0x3FF337FAE0000000
  %3014 = fmul fast float %2151, %2151
  %3015 = fmul fast float %2637, %2637
  %3016 = fadd fast float %3015, %3014
  %3017 = fmul fast float %3016, 0x3FE5152B00000000
  %3018 = fmul fast float %2151, 0xBFCC1F85E0000000
  %3019 = fmul fast float %3018, %2637
  %3020 = fadd fast float %3019, 0xBFE1363700000000
  %3021 = fadd fast float %3020, %3013
  %3022 = fsub fast float %3021, %3017
  %3023 = fmul fast float %3012, 0x3FBA6F0D00000000
  %3024 = fmul fast float %3016, 0x3FD0432880000000
  %3025 = fmul fast float %2151, 0xBFEF110800000000
  %3026 = fmul fast float %3025, %2637
  %3027 = fadd fast float %3026, 1.000000e+00
  %3028 = fsub fast float %3027, %3023
  %3029 = fadd fast float %3028, %3024
  %3030 = fdiv fast float %3022, %3029
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3032 = fsub fast float %3031, %2151
  %3033 = fmul fast float %3032, %2956
  %3034 = fadd fast float %3033, %2151
  %3035 = fmul fast float %2959, %2743
  %3036 = fmul fast float %2959, %2744
  %3037 = fmul fast float %2959, %2745
  %3038 = fadd fast float %3035, %2147
  %3039 = fadd fast float %3036, %2148
  %3040 = fadd fast float %3037, %2149
  %3041 = fmul fast float %2962, %2798
  %3042 = fadd fast float %3041, %2153
  %3043 = fmul fast float %2965, %2795
  %3044 = fmul fast float %2965, %2796
  %3045 = fmul fast float %2965, %2797
  %3046 = fadd fast float %3043, %2144
  %3047 = fadd fast float %3044, %2145
  %3048 = fadd fast float %3045, %2146
  br label %3077

; <label>:3049                                    ; preds = %3001
  %3050 = icmp eq i32 %2945, 8
  br i1 %3050, label %3051, label %3077

; <label>:3051                                    ; preds = %3049
  %3052 = fmul fast float %2950, %2638
  %3053 = fmul fast float %2950, %2639
  %3054 = fadd fast float %3052, %2136
  %3055 = fadd fast float %3053, %2137
  %3056 = call float @dx.op.binary.f32(i32 36, float %2152, float %2640)  ; FMin(a,b)
  %3057 = fsub fast float %3056, %2152
  %3058 = fmul fast float %3057, %2953
  %3059 = fadd fast float %3058, %2152
  %3060 = fsub fast float %2637, %2151
  %3061 = fmul fast float %2956, %3060
  %3062 = fadd fast float %3061, %2151
  %3063 = fmul fast float %2959, %2743
  %3064 = fmul fast float %2959, %2744
  %3065 = fmul fast float %2959, %2745
  %3066 = fadd fast float %3063, %2147
  %3067 = fadd fast float %3064, %2148
  %3068 = fadd fast float %3065, %2149
  %3069 = fmul fast float %2962, %2798
  %3070 = fadd fast float %3069, %2153
  %3071 = fmul fast float %2965, %2795
  %3072 = fmul fast float %2965, %2796
  %3073 = fmul fast float %2965, %2797
  %3074 = fadd fast float %3071, %2144
  %3075 = fadd fast float %3072, %2145
  %3076 = fadd fast float %3073, %2146
  br label %3077

; <label>:3077                                    ; preds = %3051, %3049, %3003, %2967, %2936, %2336, %2155, %2135
  %3078 = phi float [ %2136, %2936 ], [ %2136, %2336 ], [ %2136, %2135 ], [ %3054, %3051 ], [ %2136, %3049 ], [ %3006, %3003 ], [ %2972, %2967 ], [ %2136, %2155 ]
  %3079 = phi float [ %2137, %2936 ], [ %2137, %2336 ], [ %2137, %2135 ], [ %3055, %3051 ], [ %2137, %3049 ], [ %3007, %3003 ], [ %2973, %2967 ], [ %2137, %2155 ]
  %3080 = phi float [ %2937, %2936 ], [ %2138, %2336 ], [ %2138, %2135 ], [ %2937, %3051 ], [ %2937, %3049 ], [ %2937, %3003 ], [ %2937, %2967 ], [ %2138, %2155 ]
  %3081 = phi float [ %2938, %2936 ], [ %2139, %2336 ], [ %2139, %2135 ], [ %2938, %3051 ], [ %2938, %3049 ], [ %2938, %3003 ], [ %2938, %2967 ], [ %2139, %2155 ]
  %3082 = phi float [ %2939, %2936 ], [ %2140, %2336 ], [ %2140, %2135 ], [ %2939, %3051 ], [ %2939, %3049 ], [ %2939, %3003 ], [ %2939, %2967 ], [ %2140, %2155 ]
  %3083 = phi float [ %2940, %2936 ], [ %2141, %2336 ], [ %2141, %2135 ], [ %2940, %3051 ], [ %2940, %3049 ], [ %2940, %3003 ], [ %2940, %2967 ], [ %2141, %2155 ]
  %3084 = phi float [ %2941, %2936 ], [ %2142, %2336 ], [ %2142, %2135 ], [ %2941, %3051 ], [ %2941, %3049 ], [ %2941, %3003 ], [ %2941, %2967 ], [ %2142, %2155 ]
  %3085 = phi float [ %2942, %2936 ], [ %2143, %2336 ], [ %2143, %2135 ], [ %2942, %3051 ], [ %2942, %3049 ], [ %2942, %3003 ], [ %2942, %2967 ], [ %2143, %2155 ]
  %3086 = phi float [ %2144, %2936 ], [ %2144, %2336 ], [ %2144, %2135 ], [ %3074, %3051 ], [ %2144, %3049 ], [ %3046, %3003 ], [ %2998, %2967 ], [ %2144, %2155 ]
  %3087 = phi float [ %2145, %2936 ], [ %2145, %2336 ], [ %2145, %2135 ], [ %3075, %3051 ], [ %2145, %3049 ], [ %3047, %3003 ], [ %2999, %2967 ], [ %2145, %2155 ]
  %3088 = phi float [ %2146, %2936 ], [ %2146, %2336 ], [ %2146, %2135 ], [ %3076, %3051 ], [ %2146, %3049 ], [ %3048, %3003 ], [ %3000, %2967 ], [ %2146, %2155 ]
  %3089 = phi float [ %2147, %2936 ], [ %2147, %2336 ], [ %2147, %2135 ], [ %3066, %3051 ], [ %2147, %3049 ], [ %3038, %3003 ], [ %2986, %2967 ], [ %2147, %2155 ]
  %3090 = phi float [ %2148, %2936 ], [ %2148, %2336 ], [ %2148, %2135 ], [ %3067, %3051 ], [ %2148, %3049 ], [ %3039, %3003 ], [ %2987, %2967 ], [ %2148, %2155 ]
  %3091 = phi float [ %2149, %2936 ], [ %2149, %2336 ], [ %2149, %2135 ], [ %3068, %3051 ], [ %2149, %3049 ], [ %3040, %3003 ], [ %2988, %2967 ], [ %2149, %2155 ]
  %3092 = phi float [ %2943, %2936 ], [ %2150, %2336 ], [ %2150, %2135 ], [ %2943, %3051 ], [ %2943, %3049 ], [ %2943, %3003 ], [ %2943, %2967 ], [ %2150, %2155 ]
  %3093 = phi float [ %2151, %2936 ], [ %2151, %2336 ], [ %2151, %2135 ], [ %3062, %3051 ], [ %2151, %3049 ], [ %3034, %3003 ], [ %2979, %2967 ], [ %2151, %2155 ]
  %3094 = phi float [ %2152, %2936 ], [ %2152, %2336 ], [ %2152, %2135 ], [ %3059, %3051 ], [ %2152, %3049 ], [ %3011, %3003 ], [ %2976, %2967 ], [ %2152, %2155 ]
  %3095 = phi float [ %2153, %2936 ], [ %2153, %2336 ], [ %2153, %2135 ], [ %3070, %3051 ], [ %2153, %3049 ], [ %3042, %3003 ], [ %2991, %2967 ], [ %2153, %2155 ]
  %3096 = phi float [ %2944, %2936 ], [ %2154, %2336 ], [ %2154, %2135 ], [ %2944, %3051 ], [ %2944, %3049 ], [ %2944, %3003 ], [ %2944, %2967 ], [ %2154, %2155 ]
  br i1 %484, label %4019, label %3097

; <label>:3097                                    ; preds = %3077
  %3098 = icmp ult i32 %538, 4
  %3099 = add i32 %51, 72
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = add i32 %51, 76
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = or i32 %3104, %3101
  %3106 = icmp eq i32 %3105, 0
  br i1 %3106, label %4019, label %3107

; <label>:3107                                    ; preds = %3097
  %3108 = and i32 %3101, 262144
  %3109 = icmp ne i32 %3108, 0
  %3110 = select i1 %3109, float %57, float 1.000000e+00
  %3111 = select i1 %3109, float %58, float 0.000000e+00
  %3112 = select i1 %3109, float %59, float 0.000000e+00
  %3113 = select i1 %3109, float %60, float 1.000000e+00
  %3114 = select i1 %3109, float %61, float %89
  %3115 = select i1 %3109, float %62, float %90
  %3116 = add i32 %51, 332
  %3117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3118 = extractvalue %dx.types.ResRet.i32 %3117, 0
  %3119 = lshr i32 %3118, 16
  %3120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3119)  ; LegacyF16ToF32(value)
  %3121 = fmul fast float %3120, 0x3F50624DE0000000
  %3122 = add i32 %51, 136
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = lshr i32 %3124, 16
  %3126 = and i32 %3125, 255
  %3127 = lshr i32 %3124, 24
  %3128 = add i32 %51, 340
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = and i32 %3130, 65535
  %3132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3131)  ; LegacyF16ToF32(value)
  %3133 = lshr i32 %3130, 16
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = add i32 %51, 80
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = lshr i32 %3137, 22
  %3139 = shl nuw nsw i32 %3138, 5
  %3140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3139)  ; LegacyF16ToF32(value)
  %3141 = shl i32 %3137, 4
  %3142 = and i32 %3141, 32752
  %3143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3142)  ; LegacyF16ToF32(value)
  %3144 = lshr i32 %3137, 7
  %3145 = and i32 %3144, 32752
  %3146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3145)  ; LegacyF16ToF32(value)
  %3147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3148 = extractvalue %dx.types.CBufRet.f32 %3147, 3
  %3149 = fmul fast float %3148, 1.000000e+03
  %3150 = fmul fast float %474, %3149
  %3151 = call float @dx.op.unary.f32(i32 22, float %3150)  ; Frc(value)
  %3152 = fadd fast float %3151, %464
  %3153 = fmul fast float %475, %3149
  %3154 = call float @dx.op.unary.f32(i32 22, float %3153)  ; Frc(value)
  %3155 = fadd fast float %3154, %466
  %3156 = fmul fast float %3121, %3149
  %3157 = call float @dx.op.unary.f32(i32 22, float %3156)  ; Frc(value)
  %3158 = fmul fast float %3157, 0x401921FB60000000
  %3159 = fadd fast float %3158, %3140
  %3160 = call float @dx.op.unary.f32(i32 13, float %3159)  ; Sin(value)
  %3161 = call float @dx.op.unary.f32(i32 12, float %3159)  ; Cos(value)
  %3162 = fsub fast float -0.000000e+00, %3160
  %3163 = fadd fast float %3114, -5.000000e-01
  %3164 = fadd fast float %3115, -5.000000e-01
  %3165 = fmul fast float %3132, %3163
  %3166 = fmul fast float %3134, %3164
  %3167 = fadd fast float %3165, 5.000000e-01
  %3168 = fadd fast float %3166, 5.000000e-01
  %3169 = fmul fast float %3143, %3167
  %3170 = fmul fast float %3146, %3168
  %3171 = fmul fast float %3161, %3169
  %3172 = call float @dx.op.tertiary.f32(i32 46, float %3162, float %3170, float %3171)  ; FMad(a,b,c)
  %3173 = fmul fast float %3160, %3169
  %3174 = call float @dx.op.tertiary.f32(i32 46, float %3161, float %3170, float %3173)  ; FMad(a,b,c)
  %3175 = fadd fast float %3152, %3172
  %3176 = fadd fast float %3155, %3174
  %3177 = icmp ugt i32 %3126, 1
  %3178 = icmp ugt i32 %3124, 33554431
  %3179 = or i1 %3178, %3177
  br i1 %3179, label %3180, label %3205

; <label>:3180                                    ; preds = %3107
  %3181 = add i32 %51, 276
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = lshr i32 %3183, 16
  %3185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3184)  ; LegacyF16ToF32(value)
  %3186 = fmul fast float %3148, %3185
  %3187 = call float @dx.op.unary.f32(i32 22, float %3186)  ; Frc(value)
  %3188 = mul nuw nsw i32 %3126, %3127
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3187, %3189
  %3191 = call float @dx.op.unary.f32(i32 27, float %3190)  ; Round_ni(value)
  %3192 = fptoui float %3191 to i32
  %3193 = urem i32 %3192, %3126
  %3194 = udiv i32 %3192, %3127
  %3195 = call float @dx.op.unary.f32(i32 22, float %3175)  ; Frc(value)
  %3196 = call float @dx.op.unary.f32(i32 22, float %3176)  ; Frc(value)
  %3197 = uitofp i32 %3193 to float
  %3198 = uitofp i32 %3194 to float
  %3199 = fadd fast float %3195, %3197
  %3200 = fadd fast float %3196, %3198
  %3201 = uitofp i32 %3126 to float
  %3202 = uitofp i32 %3127 to float
  %3203 = fdiv fast float %3199, %3201
  %3204 = fdiv fast float %3200, %3202
  br label %3205

; <label>:3205                                    ; preds = %3180, %3107
  %3206 = phi float [ %3203, %3180 ], [ %3175, %3107 ]
  %3207 = phi float [ %3204, %3180 ], [ %3176, %3107 ]
  %3208 = and i32 %3101, 256
  %3209 = icmp eq i32 %3208, 0
  br i1 %3209, label %3256, label %3210

; <label>:3210                                    ; preds = %3205
  %3211 = add i32 %51, 500
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = add i32 %3213, 0
  %3215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3215, %dx.types.Handle %108, float %3206, float %3207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3217 = extractvalue %dx.types.ResRet.f32 %3216, 0
  %3218 = add i32 %51, 148
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = shl i32 %3220, 4
  %3222 = and i32 %3221, 32752
  %3223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3222)  ; LegacyF16ToF32(value)
  %3224 = lshr i32 %3220, 7
  %3225 = and i32 %3224, 32752
  %3226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3225)  ; LegacyF16ToF32(value)
  %3227 = fsub fast float 1.000000e+00, %533
  %3228 = call float @dx.op.binary.f32(i32 35, float %3227, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3229 = bitcast float %533 to i32
  %3230 = sitofp i32 %3229 to float
  %3231 = fadd fast float %3230, 0xC1CFBF8940000000
  %3232 = fmul fast float %3226, %3231
  %3233 = fadd fast float %3232, 0x41CFBF8940000000
  %3234 = fptosi float %3233 to i32
  %3235 = bitcast i32 %3234 to float
  %3236 = bitcast float %3228 to i32
  %3237 = sitofp i32 %3236 to float
  %3238 = fadd fast float %3237, 0xC1CFBF8940000000
  %3239 = fmul fast float %3238, %3226
  %3240 = fadd fast float %3239, 0x41CFBF8940000000
  %3241 = fptosi float %3240 to i32
  %3242 = bitcast i32 %3241 to float
  %3243 = fmul fast float %3235, %3223
  %3244 = fmul fast float %3242, %3223
  %3245 = fsub fast float %3228, %3243
  %3246 = fadd fast float %3244, %3228
  %3247 = call float @dx.op.unary.f32(i32 7, float %3245)  ; Saturate(value)
  %3248 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3249 = fsub fast float %3217, %3247
  %3250 = fsub fast float %3248, %3247
  %3251 = bitcast float %3250 to i32
  %3252 = sub nsw i32 2129859010, %3251
  %3253 = bitcast i32 %3252 to float
  %3254 = fmul fast float %3253, %3249
  %3255 = call float @dx.op.unary.f32(i32 7, float %3254)  ; Saturate(value)
  br label %3256

; <label>:3256                                    ; preds = %3210, %3205
  %3257 = phi float [ %3255, %3210 ], [ %533, %3205 ]
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = and i32 %3259, 128
  %3261 = icmp eq i32 %3260, 0
  br i1 %3261, label %3278, label %3262

; <label>:3262                                    ; preds = %3256
  %3263 = add i32 %51, 484
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3263, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = add i32 %3265, 0
  %3267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3267, %dx.types.Handle %108, float %3206, float %3207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3269 = extractvalue %dx.types.ResRet.f32 %3268, 0
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = and i32 %3271, 524288
  %3273 = icmp ne i32 %3272, 0
  %3274 = fcmp fast ogt float %3269, 0x3FE0101020000000
  %3275 = select i1 %3274, float 1.000000e+00, float 0.000000e+00
  %3276 = select i1 %3273, float %3275, float %3269
  %3277 = fmul fast float %3276, %3257
  br label %3278

; <label>:3278                                    ; preds = %3262, %3256
  %3279 = phi float [ %3277, %3262 ], [ %3257, %3256 ]
  %3280 = fcmp fast ult float %3279, 0x3F70101020000000
  br i1 %3280, label %4019, label %3281

; <label>:3281                                    ; preds = %3278
  %3282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3283 = extractvalue %dx.types.ResRet.i32 %3282, 0
  %3284 = and i32 %3283, 16
  %3285 = icmp eq i32 %3284, 0
  br i1 %3285, label %3484, label %3286

; <label>:3286                                    ; preds = %3281
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = add i32 %51, 436
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3289, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = add i32 %3291, 0
  %3293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3293, %dx.types.Handle %107, float %3206, float %3207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3295 = extractvalue %dx.types.ResRet.f32 %3294, 0
  %3296 = extractvalue %dx.types.ResRet.f32 %3294, 1
  %3297 = extractvalue %dx.types.ResRet.f32 %3294, 2
  %3298 = extractvalue %dx.types.ResRet.f32 %3294, 3
  %3299 = and i32 %3288, 255
  %3300 = uitofp i32 %3299 to float
  %3301 = lshr i32 %3288, 8
  %3302 = and i32 %3301, 255
  %3303 = uitofp i32 %3302 to float
  %3304 = fmul fast float %3298, %3300
  %3305 = fadd fast float %3304, %3303
  %3306 = fmul fast float %3305, 0x3F70101000000000
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 512
  %3310 = icmp eq i32 %3309, 0
  br i1 %3310, label %3319, label %3311

; <label>:3311                                    ; preds = %3286
  %3312 = add i32 %51, 520
  %3313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3312, i32 undef)  ; BufferLoad(srv,index,wot)
  %3314 = extractvalue %dx.types.ResRet.i32 %3313, 0
  %3315 = add i32 %3314, 0
  %3316 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3315, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3317 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3316, %dx.types.Handle %108, float %3206, float %3207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3318 = extractvalue %dx.types.ResRet.f32 %3317, 0
  br label %3319

; <label>:3319                                    ; preds = %3311, %3286
  %3320 = phi float [ %3318, %3311 ], [ 1.000000e+00, %3286 ]
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = and i32 %3322, 33554432
  %3324 = icmp eq i32 %3323, 0
  br i1 %3324, label %3431, label %3325

; <label>:3325                                    ; preds = %3319
  %3326 = add i32 %51, 272
  %3327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3326, i32 undef)  ; BufferLoad(srv,index,wot)
  %3328 = extractvalue %dx.types.ResRet.i32 %3327, 0
  %3329 = and i32 %3328, 65535
  %3330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3329)  ; LegacyF16ToF32(value)
  %3331 = lshr i32 %3328, 16
  %3332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3331)  ; LegacyF16ToF32(value)
  %3333 = add i32 %51, 276
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = and i32 %3335, 65535
  %3337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3336)  ; LegacyF16ToF32(value)
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = lshr i32 %3339, 24
  %3341 = uitofp i32 %3340 to float
  %3342 = fmul fast float %3341, 0x3F70101020000000
  %3343 = and i32 %3339, 255
  %3344 = uitofp i32 %3343 to float
  %3345 = fmul fast float %3344, 0x3F70101020000000
  %3346 = lshr i32 %3339, 8
  %3347 = and i32 %3346, 255
  %3348 = uitofp i32 %3347 to float
  %3349 = fmul fast float %3348, 0x3F70101020000000
  %3350 = lshr i32 %3339, 16
  %3351 = and i32 %3350, 255
  %3352 = uitofp i32 %3351 to float
  %3353 = fmul fast float %3352, 0x3F70101020000000
  %3354 = add i32 %51, 268
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = lshr i32 %3356, 24
  %3358 = uitofp i32 %3357 to float
  %3359 = fmul fast float %3358, 0x3F70101020000000
  %3360 = and i32 %3356, 255
  %3361 = uitofp i32 %3360 to float
  %3362 = fmul fast float %3361, 0x3F70101020000000
  %3363 = lshr i32 %3356, 8
  %3364 = and i32 %3363, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = fmul fast float %3365, 0x3F70101020000000
  %3367 = lshr i32 %3356, 16
  %3368 = and i32 %3367, 255
  %3369 = uitofp i32 %3368 to float
  %3370 = fmul fast float %3369, 0x3F70101020000000
  %3371 = bitcast float %3295 to i32
  %3372 = ashr i32 %3371, 1
  %3373 = sub nsw i32 1597463174, %3372
  %3374 = bitcast i32 %3373 to float
  %3375 = fmul fast float %3295, 5.000000e-01
  %3376 = fmul fast float %3374, %3374
  %3377 = fmul fast float %3376, %3375
  %3378 = fsub fast float 1.500000e+00, %3377
  %3379 = fmul fast float %3374, %3295
  %3380 = fmul fast float %3379, %3378
  %3381 = bitcast float %3296 to i32
  %3382 = ashr i32 %3381, 1
  %3383 = sub nsw i32 1597463174, %3382
  %3384 = bitcast i32 %3383 to float
  %3385 = fmul fast float %3296, 5.000000e-01
  %3386 = fmul fast float %3384, %3384
  %3387 = fmul fast float %3386, %3385
  %3388 = fsub fast float 1.500000e+00, %3387
  %3389 = fmul fast float %3384, %3296
  %3390 = fmul fast float %3389, %3388
  %3391 = bitcast float %3297 to i32
  %3392 = ashr i32 %3391, 1
  %3393 = sub nsw i32 1597463174, %3392
  %3394 = bitcast i32 %3393 to float
  %3395 = fmul fast float %3297, 5.000000e-01
  %3396 = fmul fast float %3394, %3394
  %3397 = fmul fast float %3396, %3395
  %3398 = fsub fast float 1.500000e+00, %3397
  %3399 = fmul fast float %3394, %3297
  %3400 = fmul fast float %3399, %3398
  %3401 = fsub fast float %3380, %3362
  %3402 = fsub fast float %3390, %3366
  %3403 = fsub fast float %3400, %3370
  %3404 = fmul fast float %3401, %3330
  %3405 = fmul fast float %3402, %3332
  %3406 = fmul fast float %3403, %3337
  %3407 = fadd fast float %3404, %3345
  %3408 = fadd fast float %3405, %3349
  %3409 = fadd fast float %3406, %3353
  %3410 = call float @dx.op.unary.f32(i32 7, float %3407)  ; Saturate(value)
  %3411 = call float @dx.op.unary.f32(i32 7, float %3408)  ; Saturate(value)
  %3412 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3413 = fmul fast float %3410, %3410
  %3414 = fmul fast float %3411, %3411
  %3415 = fmul fast float %3412, %3412
  %3416 = fsub fast float %3413, %3295
  %3417 = fsub fast float %3414, %3296
  %3418 = fsub fast float %3415, %3297
  %3419 = fmul fast float %3416, %3320
  %3420 = fmul fast float %3417, %3320
  %3421 = fmul fast float %3418, %3320
  %3422 = fadd fast float %3419, %3295
  %3423 = fadd fast float %3420, %3296
  %3424 = fadd fast float %3421, %3297
  %3425 = fadd fast float %3342, %3306
  %3426 = fsub fast float %3425, %3359
  %3427 = call float @dx.op.unary.f32(i32 7, float %3426)  ; Saturate(value)
  %3428 = fsub fast float %3427, %3306
  %3429 = fmul fast float %3428, %3320
  %3430 = fadd fast float %3429, %3306
  br label %3484

; <label>:3431                                    ; preds = %3319
  %3432 = and i32 %3322, 134217728
  %3433 = icmp eq i32 %3432, 0
  br i1 %3433, label %3468, label %3434

; <label>:3434                                    ; preds = %3431
  %3435 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %3436 = call float @dx.op.unary.f32(i32 24, float %455)  ; Sqrt(value)
  %3437 = call float @dx.op.unary.f32(i32 24, float %459)  ; Sqrt(value)
  %3438 = fadd fast float %3435, -5.000000e-01
  %3439 = fadd fast float %3436, -5.000000e-01
  %3440 = fadd fast float %3437, -5.000000e-01
  %3441 = fmul fast float %3438, %3320
  %3442 = fmul fast float %3439, %3320
  %3443 = fmul fast float %3440, %3320
  %3444 = fadd fast float %3441, 5.000000e-01
  %3445 = fadd fast float %3442, 5.000000e-01
  %3446 = fadd fast float %3443, 5.000000e-01
  %3447 = call float @dx.op.unary.f32(i32 24, float %3295)  ; Sqrt(value)
  %3448 = call float @dx.op.unary.f32(i32 24, float %3296)  ; Sqrt(value)
  %3449 = call float @dx.op.unary.f32(i32 24, float %3297)  ; Sqrt(value)
  %3450 = fmul fast float %3444, 2.000000e+00
  %3451 = fsub fast float 1.000000e+00, %3450
  %3452 = fmul fast float %3451, %3447
  %3453 = fadd fast float %3452, %3450
  %3454 = fmul fast float %3453, %3447
  %3455 = fmul fast float %3445, 2.000000e+00
  %3456 = fsub fast float 1.000000e+00, %3455
  %3457 = fmul fast float %3456, %3448
  %3458 = fadd fast float %3457, %3455
  %3459 = fmul fast float %3458, %3448
  %3460 = fmul fast float %3446, 2.000000e+00
  %3461 = fsub fast float 1.000000e+00, %3460
  %3462 = fmul fast float %3461, %3449
  %3463 = fadd fast float %3462, %3460
  %3464 = fmul fast float %3463, %3449
  %3465 = fmul fast float %3454, %3454
  %3466 = fmul fast float %3459, %3459
  %3467 = fmul fast float %3464, %3464
  br label %3484

; <label>:3468                                    ; preds = %3431
  %3469 = fmul fast float %451, %451
  %3470 = fmul fast float %455, %455
  %3471 = fmul fast float %459, %459
  %3472 = fadd fast float %3469, -1.000000e+00
  %3473 = fadd fast float %3470, -1.000000e+00
  %3474 = fadd fast float %3471, -1.000000e+00
  %3475 = fmul fast float %3320, %3472
  %3476 = fmul fast float %3320, %3473
  %3477 = fmul fast float %3320, %3474
  %3478 = fadd fast float %3475, 1.000000e+00
  %3479 = fadd fast float %3476, 1.000000e+00
  %3480 = fadd fast float %3477, 1.000000e+00
  %3481 = fmul fast float %3478, %3295
  %3482 = fmul fast float %3479, %3296
  %3483 = fmul fast float %3480, %3297
  br label %3484

; <label>:3484                                    ; preds = %3468, %3434, %3325, %3281
  %3485 = phi float [ %3430, %3325 ], [ %3306, %3434 ], [ %3306, %3468 ], [ 0x3FA23C0BE0000000, %3281 ]
  %3486 = phi float [ %3422, %3325 ], [ %3465, %3434 ], [ %3481, %3468 ], [ 1.000000e+00, %3281 ]
  %3487 = phi float [ %3423, %3325 ], [ %3466, %3434 ], [ %3482, %3468 ], [ 1.000000e+00, %3281 ]
  %3488 = phi float [ %3424, %3325 ], [ %3467, %3434 ], [ %3483, %3468 ], [ 1.000000e+00, %3281 ]
  %3489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3490 = extractvalue %dx.types.CBufRet.i32 %3489, 1
  %3491 = and i32 %3490, 1
  %3492 = icmp ne i32 %3491, 0
  %3493 = add i32 %51, 356
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = and i32 %3495, 32
  %3497 = icmp ne i32 %3496, 0
  %3498 = and i1 %3492, %3497
  %3499 = select i1 %3498, float 1.000000e+00, float %3486
  %3500 = select i1 %3498, float 0x3FD3333340000000, float %3487
  %3501 = select i1 %3498, float 0x3FD3333340000000, float %3488
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = and i32 %3503, 32
  %3505 = icmp eq i32 %3504, 0
  br i1 %3505, label %3578, label %3506

; <label>:3506                                    ; preds = %3484
  %3507 = add i32 %51, 140
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3507, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = add i32 %51, 452
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = add i32 %3512, 0
  %3514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3514, %dx.types.Handle %107, float %3206, float %3207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = extractvalue %dx.types.ResRet.f32 %3515, 3
  %3520 = and i32 %3509, 255
  %3521 = uitofp i32 %3520 to float
  %3522 = lshr i32 %3509, 8
  %3523 = and i32 %3522, 255
  %3524 = uitofp i32 %3523 to float
  %3525 = lshr i32 %3509, 16
  %3526 = and i32 %3525, 255
  %3527 = uitofp i32 %3526 to float
  %3528 = fmul fast float %3527, 0x3F70101000000000
  %3529 = fmul fast float %3516, %3521
  %3530 = fadd fast float %3529, %3524
  %3531 = fmul fast float %3530, 0x3F70101000000000
  %3532 = fadd fast float %3517, -5.000000e-01
  %3533 = fadd fast float %3519, -5.000000e-01
  %3534 = fmul fast float %3532, %3528
  %3535 = fmul fast float %3533, %3528
  %3536 = fadd fast float %3534, 5.000000e-01
  %3537 = fadd fast float %3535, 5.000000e-01
  %3538 = fmul fast float %3536, 2.000000e+00
  %3539 = fadd fast float %3538, -1.000000e+00
  %3540 = fmul fast float %3537, 2.000000e+00
  %3541 = fadd fast float %3540, -1.000000e+00
  %3542 = fadd fast float %3539, %3541
  %3543 = fmul fast float %3542, 5.000000e-01
  %3544 = fsub fast float %3539, %3541
  %3545 = fmul fast float %3544, 5.000000e-01
  %3546 = call float @dx.op.unary.f32(i32 6, float %3543)  ; FAbs(value)
  %3547 = fsub fast float 1.000000e+00, %3546
  %3548 = call float @dx.op.unary.f32(i32 6, float %3545)  ; FAbs(value)
  %3549 = fsub fast float %3547, %3548
  %3550 = call float @dx.op.dot3.f32(i32 55, float %3543, float %3545, float %3549, float %3543, float %3545, float %3549)  ; Dot3(ax,ay,az,bx,by,bz)
  %3551 = call float @dx.op.unary.f32(i32 25, float %3550)  ; Rsqrt(value)
  %3552 = fmul fast float %3543, %3551
  %3553 = fmul fast float %3545, %3551
  %3554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3555 = extractvalue %dx.types.ResRet.i32 %3554, 0
  %3556 = and i32 %3555, 67108864
  %3557 = icmp eq i32 %3556, 0
  br i1 %3557, label %3574, label %3558

; <label>:3558                                    ; preds = %3506
  %3559 = add i32 %51, 328
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 65535
  %3563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3562)  ; LegacyF16ToF32(value)
  %3564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3565 = extractvalue %dx.types.ResRet.i32 %3564, 0
  %3566 = and i32 %3565, 65535
  %3567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3566)  ; LegacyF16ToF32(value)
  %3568 = lshr i32 %3561, 16
  %3569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3568)  ; LegacyF16ToF32(value)
  %3570 = fsub fast float %3531, %3569
  %3571 = fmul fast float %3570, %3563
  %3572 = fadd fast float %3571, %3567
  %3573 = call float @dx.op.unary.f32(i32 7, float %3572)  ; Saturate(value)
  br label %3574

; <label>:3574                                    ; preds = %3558, %3506
  %3575 = phi float [ %3573, %3558 ], [ %3531, %3506 ]
  %3576 = call float @dx.op.dot2.f32(i32 54, float %3552, float %3553, float %3110, float %3111)  ; Dot2(ax,ay,bx,by)
  %3577 = call float @dx.op.dot2.f32(i32 54, float %3552, float %3553, float %3112, float %3113)  ; Dot2(ax,ay,bx,by)
  br label %3578

; <label>:3578                                    ; preds = %3574, %3484
  %3579 = phi float [ %3575, %3574 ], [ 0x3FD6666660000000, %3484 ]
  %3580 = phi float [ %3576, %3574 ], [ 0.000000e+00, %3484 ]
  %3581 = phi float [ %3577, %3574 ], [ 0.000000e+00, %3484 ]
  %3582 = phi float [ %3518, %3574 ], [ 1.000000e+00, %3484 ]
  %3583 = add i32 %51, 208
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = lshr i32 %3585, 22
  %3587 = shl nuw nsw i32 %3586, 5
  %3588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3587)  ; LegacyF16ToF32(value)
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = and i32 %3590, 64
  %3592 = icmp eq i32 %3591, 0
  br i1 %3592, label %3626, label %3593

; <label>:3593                                    ; preds = %3578
  %3594 = add i32 %51, 468
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = add i32 %3596, 0
  %3598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = and i32 %3600, 131072
  %3602 = icmp eq i32 %3601, 0
  %3603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3598, %dx.types.Handle %107, float %3206, float %3207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = fmul fast float %3604, %439
  %3608 = fmul fast float %3605, %442
  %3609 = fmul fast float %3606, %445
  br i1 %3602, label %3616, label %3610

; <label>:3610                                    ; preds = %3593
  %3611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3612 = extractvalue %dx.types.CBufRet.f32 %3611, 0
  %3613 = fmul fast float %3612, %3607
  %3614 = fmul fast float %3612, %3608
  %3615 = fmul fast float %3612, %3609
  br label %3616

; <label>:3616                                    ; preds = %3610, %3593
  %3617 = phi float [ %3613, %3610 ], [ %3607, %3593 ]
  %3618 = phi float [ %3614, %3610 ], [ %3608, %3593 ]
  %3619 = phi float [ %3615, %3610 ], [ %3609, %3593 ]
  %3620 = fmul fast float %3617, %3588
  %3621 = select i1 %296, float %3620, float %3617
  %3622 = call float @dx.op.dot3.f32(i32 55, float %3621, float %3618, float %3619, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3623 = select i1 %296, float 0.000000e+00, float %3617
  %3624 = select i1 %296, float %3622, float %3618
  %3625 = select i1 %296, float 0.000000e+00, float %3619
  br label %3626

; <label>:3626                                    ; preds = %3616, %3578
  %3627 = phi float [ %3623, %3616 ], [ 0.000000e+00, %3578 ]
  %3628 = phi float [ %3624, %3616 ], [ 0.000000e+00, %3578 ]
  %3629 = phi float [ %3625, %3616 ], [ 0.000000e+00, %3578 ]
  %3630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3631 = extractvalue %dx.types.ResRet.i32 %3630, 0
  %3632 = and i32 %3631, 1024
  %3633 = icmp eq i32 %3632, 0
  br i1 %3633, label %3664, label %3634

; <label>:3634                                    ; preds = %3626
  %3635 = add i32 %51, 200
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = and i32 %3637, 255
  %3639 = uitofp i32 %3638 to float
  %3640 = fmul fast float %3639, 0x3F70101020000000
  %3641 = lshr i32 %3637, 8
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = fmul fast float %3643, 0x3F70101020000000
  %3645 = lshr i32 %3637, 16
  %3646 = and i32 %3645, 255
  %3647 = uitofp i32 %3646 to float
  %3648 = fmul fast float %3647, 0x3F70101020000000
  %3649 = fmul fast float %3640, %3640
  %3650 = fmul fast float %3644, %3644
  %3651 = fmul fast float %3648, %3648
  %3652 = add i32 %51, 536
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = add i32 %3654, 0
  %3656 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3655, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3656, %dx.types.Handle %108, float %3206, float %3207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3658 = extractvalue %dx.types.ResRet.f32 %3657, 0
  %3659 = extractvalue %dx.types.ResRet.f32 %3657, 1
  %3660 = extractvalue %dx.types.ResRet.f32 %3657, 2
  %3661 = fmul fast float %3649, %3658
  %3662 = fmul fast float %3650, %3659
  %3663 = fmul fast float %3651, %3660
  br label %3664

; <label>:3664                                    ; preds = %3634, %3626
  %3665 = phi float [ %3661, %3634 ], [ 0.000000e+00, %3626 ]
  %3666 = phi float [ %3662, %3634 ], [ 0.000000e+00, %3626 ]
  %3667 = phi float [ %3663, %3634 ], [ 0.000000e+00, %3626 ]
  %3668 = fcmp fast ogt float %3665, 0.000000e+00
  %3669 = fcmp fast ogt float %3666, 0.000000e+00
  %3670 = fcmp fast ogt float %3667, 0.000000e+00
  %3671 = call float @dx.op.unary.f32(i32 23, float %3665)  ; Log(value)
  %3672 = call float @dx.op.unary.f32(i32 23, float %3666)  ; Log(value)
  %3673 = call float @dx.op.unary.f32(i32 23, float %3667)  ; Log(value)
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = lshr i32 %3675, 7
  %3677 = and i32 %3676, 32752
  %3678 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3677)  ; LegacyF16ToF32(value)
  %3679 = fmul fast float %3671, 0xBFE62E4300000000
  %3680 = fmul fast float %3679, %3678
  %3681 = fmul fast float %3672, 0xBFE62E4300000000
  %3682 = fmul fast float %3681, %3678
  %3683 = fmul fast float %3673, 0xBFE62E4300000000
  %3684 = fmul fast float %3683, %3678
  %3685 = select i1 %3668, float %3680, float 1.270000e+02
  %3686 = select i1 %3669, float %3682, float 1.270000e+02
  %3687 = select i1 %3670, float %3684, float 1.270000e+02
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = and i32 %3689, 10240
  %3691 = icmp eq i32 %3690, 0
  br i1 %3691, label %3736, label %3692

; <label>:3692                                    ; preds = %3664
  %3693 = add i32 %51, 552
  %3694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3693, i32 undef)  ; BufferLoad(srv,index,wot)
  %3695 = extractvalue %dx.types.ResRet.i32 %3694, 0
  %3696 = add i32 %3695, 0
  %3697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3697, %dx.types.Handle %108, float %3206, float %3207, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 1
  %3700 = extractvalue %dx.types.ResRet.f32 %3698, 3
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = and i32 %3702, 1048576
  %3704 = icmp ne i32 %3703, 0
  %3705 = and i32 %3702, 8192
  %3706 = icmp eq i32 %3705, 0
  br i1 %3706, label %3722, label %3707

; <label>:3707                                    ; preds = %3692
  %3708 = extractvalue %dx.types.ResRet.f32 %3698, 2
  %3709 = select i1 %3704, float %3708, float %3699
  %3710 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3711 = select i1 %3704, float %3710, float %3699
  %3712 = add i32 %51, 144
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = lshr i32 %3714, 16
  %3716 = and i32 %3715, 255
  %3717 = uitofp i32 %3716 to float
  %3718 = fmul fast float %3717, 0x3F80101020000000
  %3719 = fmul fast float %3718, %3711
  %3720 = fmul fast float %3718, %3699
  %3721 = fmul fast float %3718, %3709
  br label %3722

; <label>:3722                                    ; preds = %3707, %3692
  %3723 = phi float [ %3719, %3707 ], [ 0.000000e+00, %3692 ]
  %3724 = phi float [ %3720, %3707 ], [ 0.000000e+00, %3692 ]
  %3725 = phi float [ %3721, %3707 ], [ 0.000000e+00, %3692 ]
  %3726 = and i32 %3702, 2048
  %3727 = icmp eq i32 %3726, 0
  br i1 %3727, label %3736, label %3728

; <label>:3728                                    ; preds = %3722
  %3729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3730 = extractvalue %dx.types.ResRet.i32 %3729, 0
  %3731 = shl i32 %3730, 4
  %3732 = and i32 %3731, 32752
  %3733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3732)  ; LegacyF16ToF32(value)
  %3734 = fmul fast float %3733, %3700
  %3735 = call float @dx.op.binary.f32(i32 35, float %3734, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3736

; <label>:3736                                    ; preds = %3728, %3722, %3664
  %3737 = phi float [ %3723, %3728 ], [ %3723, %3722 ], [ 0.000000e+00, %3664 ]
  %3738 = phi float [ %3724, %3728 ], [ %3724, %3722 ], [ 0.000000e+00, %3664 ]
  %3739 = phi float [ %3725, %3728 ], [ %3725, %3722 ], [ 0.000000e+00, %3664 ]
  %3740 = phi float [ %3735, %3728 ], [ 0x3F70101020000000, %3722 ], [ 0x3F70101020000000, %3664 ]
  %3741 = add i32 %51, 144
  %3742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.i32 %3742, 0
  %3744 = and i32 %3743, 255
  %3745 = uitofp i32 %3744 to float
  %3746 = lshr i32 %3743, 8
  %3747 = and i32 %3746, 255
  %3748 = uitofp i32 %3747 to float
  %3749 = call float @dx.op.dot3.f32(i32 55, float %3499, float %3500, float %3501, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3750 = fmul fast float %3748, %3749
  %3751 = fadd fast float %3750, %3745
  %3752 = fmul fast float %3751, 0x3F70101020000000
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  br i1 %3098, label %3754, label %3789

; <label>:3754                                    ; preds = %3736
  %3755 = fmul fast float %3740, 2.000000e+00
  %3756 = fcmp fast olt float %3685, 1.270000e+02
  %3757 = fcmp fast olt float %3686, 1.270000e+02
  %3758 = fcmp fast olt float %3687, 1.270000e+02
  %3759 = fmul fast float %3685, 0xBFF7154760000000
  %3760 = fmul fast float %3759, %3755
  %3761 = fmul fast float %3686, 0xBFF7154760000000
  %3762 = fmul fast float %3761, %3755
  %3763 = fmul fast float %3687, 0xBFF7154760000000
  %3764 = fmul fast float %3763, %3755
  %3765 = call float @dx.op.unary.f32(i32 21, float %3760)  ; Exp(value)
  %3766 = call float @dx.op.unary.f32(i32 21, float %3762)  ; Exp(value)
  %3767 = call float @dx.op.unary.f32(i32 21, float %3764)  ; Exp(value)
  %3768 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3769 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3770 = call float @dx.op.unary.f32(i32 7, float %3767)  ; Saturate(value)
  %3771 = fadd fast float %3768, -1.000000e+00
  %3772 = select i1 %3756, float %3771, float -1.000000e+00
  %3773 = fadd fast float %3769, -1.000000e+00
  %3774 = select i1 %3757, float %3773, float -1.000000e+00
  %3775 = fadd fast float %3770, -1.000000e+00
  %3776 = select i1 %3758, float %3775, float -1.000000e+00
  %3777 = fmul fast float %3772, %3279
  %3778 = fmul fast float %3774, %3279
  %3779 = fmul fast float %3776, %3279
  %3780 = fadd fast float %3777, 1.000000e+00
  %3781 = fadd fast float %3778, 1.000000e+00
  %3782 = fadd fast float %3779, 1.000000e+00
  %3783 = fmul fast float %3780, %3083
  %3784 = fmul fast float %3781, %3084
  %3785 = fmul fast float %3782, %3085
  %3786 = fmul fast float %3780, %3080
  %3787 = fmul fast float %3781, %3081
  %3788 = fmul fast float %3782, %3082
  br label %3789

; <label>:3789                                    ; preds = %3754, %3736
  %3790 = phi float [ %3786, %3754 ], [ %3080, %3736 ]
  %3791 = phi float [ %3787, %3754 ], [ %3081, %3736 ]
  %3792 = phi float [ %3788, %3754 ], [ %3082, %3736 ]
  %3793 = phi float [ %3783, %3754 ], [ %3083, %3736 ]
  %3794 = phi float [ %3784, %3754 ], [ %3084, %3736 ]
  %3795 = phi float [ %3785, %3754 ], [ %3085, %3736 ]
  %3796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.i32 %3796, 0
  %3798 = and i32 %3797, 3
  %3799 = icmp eq i32 %3798, 3
  br i1 %3799, label %3878, label %3800

; <label>:3800                                    ; preds = %3789
  %3801 = and i32 %3797, 16
  %3802 = icmp ne i32 %3801, 0
  %3803 = select i1 %3802, float %3279, float 0.000000e+00
  %3804 = icmp eq i32 %3798, 0
  br i1 %3804, label %3805, label %3833

; <label>:3805                                    ; preds = %3800
  %3806 = and i32 %3797, 64
  %3807 = icmp ne i32 %3806, 0
  %3808 = select i1 %3807, float %3279, float 0.000000e+00
  %3809 = fsub fast float %3499, %3793
  %3810 = fsub fast float %3500, %3794
  %3811 = fsub fast float %3501, %3795
  %3812 = fmul fast float %3803, %3809
  %3813 = fmul fast float %3803, %3810
  %3814 = fmul fast float %3803, %3811
  %3815 = fadd fast float %3812, %3793
  %3816 = fadd fast float %3813, %3794
  %3817 = fadd fast float %3814, %3795
  %3818 = fsub fast float %3485, %3092
  %3819 = fmul fast float %3803, %3818
  %3820 = fadd fast float %3819, %3092
  %3821 = fsub fast float %3627, %3790
  %3822 = fsub fast float %3628, %3791
  %3823 = fsub fast float %3629, %3792
  %3824 = fmul fast float %3808, %3821
  %3825 = fmul fast float %3808, %3822
  %3826 = fmul fast float %3808, %3823
  %3827 = fadd fast float %3824, %3790
  %3828 = fadd fast float %3825, %3791
  %3829 = fadd fast float %3826, %3792
  %3830 = fsub fast float %3753, %3096
  %3831 = fmul fast float %3803, %3830
  %3832 = fadd fast float %3831, %3096
  br label %3878

; <label>:3833                                    ; preds = %3800
  %3834 = icmp eq i32 %3798, 1
  br i1 %3834, label %3835, label %3848

; <label>:3835                                    ; preds = %3833
  %3836 = fadd fast float %3499, -1.000000e+00
  %3837 = fadd fast float %3500, -1.000000e+00
  %3838 = fadd fast float %3501, -1.000000e+00
  %3839 = fmul fast float %3803, %3836
  %3840 = fmul fast float %3803, %3837
  %3841 = fmul fast float %3803, %3838
  %3842 = fadd fast float %3839, 1.000000e+00
  %3843 = fadd fast float %3840, 1.000000e+00
  %3844 = fadd fast float %3841, 1.000000e+00
  %3845 = fmul fast float %3842, %3793
  %3846 = fmul fast float %3843, %3794
  %3847 = fmul fast float %3844, %3795
  br label %3878

; <label>:3848                                    ; preds = %3833
  %3849 = icmp eq i32 %3798, 2
  br i1 %3849, label %3850, label %3878

; <label>:3850                                    ; preds = %3848
  %3851 = call float @dx.op.unary.f32(i32 24, float %3499)  ; Sqrt(value)
  %3852 = call float @dx.op.unary.f32(i32 24, float %3500)  ; Sqrt(value)
  %3853 = call float @dx.op.unary.f32(i32 24, float %3501)  ; Sqrt(value)
  %3854 = fadd fast float %3851, -5.000000e-01
  %3855 = fadd fast float %3852, -5.000000e-01
  %3856 = fadd fast float %3853, -5.000000e-01
  %3857 = fmul fast float %3854, %3803
  %3858 = fmul fast float %3855, %3803
  %3859 = fmul fast float %3856, %3803
  %3860 = fadd fast float %3857, 5.000000e-01
  %3861 = fadd fast float %3858, 5.000000e-01
  %3862 = fadd fast float %3859, 5.000000e-01
  %3863 = fmul fast float %3860, 2.000000e+00
  %3864 = fsub fast float 1.000000e+00, %3863
  %3865 = fmul fast float %3864, %3793
  %3866 = fadd fast float %3865, %3863
  %3867 = fmul fast float %3866, %3793
  %3868 = fmul fast float %3861, 2.000000e+00
  %3869 = fsub fast float 1.000000e+00, %3868
  %3870 = fmul fast float %3869, %3794
  %3871 = fadd fast float %3870, %3868
  %3872 = fmul fast float %3871, %3794
  %3873 = fmul fast float %3862, 2.000000e+00
  %3874 = fsub fast float 1.000000e+00, %3873
  %3875 = fmul fast float %3874, %3795
  %3876 = fadd fast float %3875, %3873
  %3877 = fmul fast float %3876, %3795
  br label %3878

; <label>:3878                                    ; preds = %3850, %3848, %3835, %3805, %3789
  %3879 = phi float [ %3790, %3789 ], [ %3790, %3850 ], [ %3790, %3848 ], [ %3790, %3835 ], [ %3827, %3805 ]
  %3880 = phi float [ %3791, %3789 ], [ %3791, %3850 ], [ %3791, %3848 ], [ %3791, %3835 ], [ %3828, %3805 ]
  %3881 = phi float [ %3792, %3789 ], [ %3792, %3850 ], [ %3792, %3848 ], [ %3792, %3835 ], [ %3829, %3805 ]
  %3882 = phi float [ %3793, %3789 ], [ %3867, %3850 ], [ %3793, %3848 ], [ %3845, %3835 ], [ %3815, %3805 ]
  %3883 = phi float [ %3794, %3789 ], [ %3872, %3850 ], [ %3794, %3848 ], [ %3846, %3835 ], [ %3816, %3805 ]
  %3884 = phi float [ %3795, %3789 ], [ %3877, %3850 ], [ %3795, %3848 ], [ %3847, %3835 ], [ %3817, %3805 ]
  %3885 = phi float [ %3092, %3789 ], [ %3092, %3850 ], [ %3092, %3848 ], [ %3092, %3835 ], [ %3820, %3805 ]
  %3886 = phi float [ %3096, %3789 ], [ %3096, %3850 ], [ %3096, %3848 ], [ %3096, %3835 ], [ %3832, %3805 ]
  %3887 = and i32 %3797, 12
  %3888 = icmp eq i32 %3887, 12
  br i1 %3888, label %4019, label %3889

; <label>:3889                                    ; preds = %3878
  %3890 = and i32 %3797, 2097184
  %3891 = icmp eq i32 %3890, 2097184
  %3892 = select i1 %3891, float %3279, float 0.000000e+00
  %3893 = and i32 %3797, 4194336
  %3894 = icmp eq i32 %3893, 4194336
  %3895 = select i1 %3894, float %3279, float 0.000000e+00
  %3896 = and i32 %3797, 8388640
  %3897 = icmp eq i32 %3896, 8388640
  %3898 = select i1 %3897, float %3279, float 0.000000e+00
  %3899 = and i32 %3797, 1024
  %3900 = icmp ne i32 %3899, 0
  %3901 = select i1 %3900, float %3279, float 0.000000e+00
  %3902 = and i32 %3797, 2048
  %3903 = icmp ne i32 %3902, 0
  %3904 = select i1 %3903, float %3279, float 0.000000e+00
  %3905 = and i32 %3797, 8192
  %3906 = icmp ne i32 %3905, 0
  %3907 = select i1 %3906, float %3279, float 0.000000e+00
  %3908 = icmp eq i32 %3887, 0
  br i1 %3908, label %3909, label %3943

; <label>:3909                                    ; preds = %3889
  %3910 = fsub fast float %3580, %3078
  %3911 = fsub fast float %3581, %3079
  %3912 = fmul fast float %3892, %3910
  %3913 = fmul fast float %3892, %3911
  %3914 = fadd fast float %3912, %3078
  %3915 = fadd fast float %3913, %3079
  %3916 = fsub fast float %3582, %3094
  %3917 = fmul fast float %3895, %3916
  %3918 = fadd fast float %3917, %3094
  %3919 = fsub fast float %3579, %3093
  %3920 = fmul fast float %3898, %3919
  %3921 = fadd fast float %3920, %3093
  %3922 = fsub fast float %3685, %3089
  %3923 = fsub fast float %3686, %3090
  %3924 = fsub fast float %3687, %3091
  %3925 = fmul fast float %3901, %3922
  %3926 = fmul fast float %3901, %3923
  %3927 = fmul fast float %3901, %3924
  %3928 = fadd fast float %3925, %3089
  %3929 = fadd fast float %3926, %3090
  %3930 = fadd fast float %3927, %3091
  %3931 = fsub fast float %3740, %3095
  %3932 = fmul fast float %3904, %3931
  %3933 = fadd fast float %3932, %3095
  %3934 = fsub fast float %3737, %3086
  %3935 = fsub fast float %3738, %3087
  %3936 = fsub fast float %3739, %3088
  %3937 = fmul fast float %3907, %3934
  %3938 = fmul fast float %3907, %3935
  %3939 = fmul fast float %3907, %3936
  %3940 = fadd fast float %3937, %3086
  %3941 = fadd fast float %3938, %3087
  %3942 = fadd fast float %3939, %3088
  br label %4019

; <label>:3943                                    ; preds = %3889
  %3944 = icmp eq i32 %3887, 4
  br i1 %3944, label %3945, label %3991

; <label>:3945                                    ; preds = %3943
  %3946 = fmul fast float %3892, %3580
  %3947 = fmul fast float %3892, %3581
  %3948 = fadd fast float %3946, %3078
  %3949 = fadd fast float %3947, %3079
  %3950 = call float @dx.op.binary.f32(i32 36, float %3094, float %3582)  ; FMin(a,b)
  %3951 = fsub fast float %3950, %3094
  %3952 = fmul fast float %3951, %3895
  %3953 = fadd fast float %3952, %3094
  %3954 = fadd fast float %3579, %3093
  %3955 = fmul fast float %3954, 0x3FF337FAE0000000
  %3956 = fmul fast float %3093, %3093
  %3957 = fmul fast float %3579, %3579
  %3958 = fadd fast float %3957, %3956
  %3959 = fmul fast float %3958, 0x3FE5152B00000000
  %3960 = fmul fast float %3093, 0xBFCC1F85E0000000
  %3961 = fmul fast float %3960, %3579
  %3962 = fadd fast float %3961, 0xBFE1363700000000
  %3963 = fadd fast float %3962, %3955
  %3964 = fsub fast float %3963, %3959
  %3965 = fmul fast float %3954, 0x3FBA6F0D00000000
  %3966 = fmul fast float %3958, 0x3FD0432880000000
  %3967 = fmul fast float %3093, 0xBFEF110800000000
  %3968 = fmul fast float %3967, %3579
  %3969 = fadd fast float %3968, 1.000000e+00
  %3970 = fsub fast float %3969, %3965
  %3971 = fadd fast float %3970, %3966
  %3972 = fdiv fast float %3964, %3971
  %3973 = call float @dx.op.unary.f32(i32 7, float %3972)  ; Saturate(value)
  %3974 = fsub fast float %3973, %3093
  %3975 = fmul fast float %3974, %3898
  %3976 = fadd fast float %3975, %3093
  %3977 = fmul fast float %3901, %3685
  %3978 = fmul fast float %3901, %3686
  %3979 = fmul fast float %3901, %3687
  %3980 = fadd fast float %3977, %3089
  %3981 = fadd fast float %3978, %3090
  %3982 = fadd fast float %3979, %3091
  %3983 = fmul fast float %3904, %3740
  %3984 = fadd fast float %3983, %3095
  %3985 = fmul fast float %3907, %3737
  %3986 = fmul fast float %3907, %3738
  %3987 = fmul fast float %3907, %3739
  %3988 = fadd fast float %3985, %3086
  %3989 = fadd fast float %3986, %3087
  %3990 = fadd fast float %3987, %3088
  br label %4019

; <label>:3991                                    ; preds = %3943
  %3992 = icmp eq i32 %3887, 8
  br i1 %3992, label %3993, label %4019

; <label>:3993                                    ; preds = %3991
  %3994 = fmul fast float %3892, %3580
  %3995 = fmul fast float %3892, %3581
  %3996 = fadd fast float %3994, %3078
  %3997 = fadd fast float %3995, %3079
  %3998 = call float @dx.op.binary.f32(i32 36, float %3094, float %3582)  ; FMin(a,b)
  %3999 = fsub fast float %3998, %3094
  %4000 = fmul fast float %3999, %3895
  %4001 = fadd fast float %4000, %3094
  %4002 = fsub fast float %3579, %3093
  %4003 = fmul fast float %3898, %4002
  %4004 = fadd fast float %4003, %3093
  %4005 = fmul fast float %3901, %3685
  %4006 = fmul fast float %3901, %3686
  %4007 = fmul fast float %3901, %3687
  %4008 = fadd fast float %4005, %3089
  %4009 = fadd fast float %4006, %3090
  %4010 = fadd fast float %4007, %3091
  %4011 = fmul fast float %3904, %3740
  %4012 = fadd fast float %4011, %3095
  %4013 = fmul fast float %3907, %3737
  %4014 = fmul fast float %3907, %3738
  %4015 = fmul fast float %3907, %3739
  %4016 = fadd fast float %4013, %3086
  %4017 = fadd fast float %4014, %3087
  %4018 = fadd fast float %4015, %3088
  br label %4019

; <label>:4019                                    ; preds = %3993, %3991, %3945, %3909, %3878, %3278, %3097, %3077
  %4020 = phi float [ %3078, %3878 ], [ %3078, %3278 ], [ %3078, %3077 ], [ %3078, %3097 ], [ %3914, %3909 ], [ %3948, %3945 ], [ %3078, %3991 ], [ %3996, %3993 ]
  %4021 = phi float [ %3079, %3878 ], [ %3079, %3278 ], [ %3079, %3077 ], [ %3079, %3097 ], [ %3915, %3909 ], [ %3949, %3945 ], [ %3079, %3991 ], [ %3997, %3993 ]
  %4022 = phi float [ %3879, %3878 ], [ %3080, %3278 ], [ %3080, %3077 ], [ %3080, %3097 ], [ %3879, %3909 ], [ %3879, %3945 ], [ %3879, %3991 ], [ %3879, %3993 ]
  %4023 = phi float [ %3880, %3878 ], [ %3081, %3278 ], [ %3081, %3077 ], [ %3081, %3097 ], [ %3880, %3909 ], [ %3880, %3945 ], [ %3880, %3991 ], [ %3880, %3993 ]
  %4024 = phi float [ %3881, %3878 ], [ %3082, %3278 ], [ %3082, %3077 ], [ %3082, %3097 ], [ %3881, %3909 ], [ %3881, %3945 ], [ %3881, %3991 ], [ %3881, %3993 ]
  %4025 = phi float [ %3882, %3878 ], [ %3083, %3278 ], [ %3083, %3077 ], [ %3083, %3097 ], [ %3882, %3909 ], [ %3882, %3945 ], [ %3882, %3991 ], [ %3882, %3993 ]
  %4026 = phi float [ %3883, %3878 ], [ %3084, %3278 ], [ %3084, %3077 ], [ %3084, %3097 ], [ %3883, %3909 ], [ %3883, %3945 ], [ %3883, %3991 ], [ %3883, %3993 ]
  %4027 = phi float [ %3884, %3878 ], [ %3085, %3278 ], [ %3085, %3077 ], [ %3085, %3097 ], [ %3884, %3909 ], [ %3884, %3945 ], [ %3884, %3991 ], [ %3884, %3993 ]
  %4028 = phi float [ %3086, %3878 ], [ %3086, %3278 ], [ %3086, %3077 ], [ %3086, %3097 ], [ %3940, %3909 ], [ %3988, %3945 ], [ %3086, %3991 ], [ %4016, %3993 ]
  %4029 = phi float [ %3087, %3878 ], [ %3087, %3278 ], [ %3087, %3077 ], [ %3087, %3097 ], [ %3941, %3909 ], [ %3989, %3945 ], [ %3087, %3991 ], [ %4017, %3993 ]
  %4030 = phi float [ %3088, %3878 ], [ %3088, %3278 ], [ %3088, %3077 ], [ %3088, %3097 ], [ %3942, %3909 ], [ %3990, %3945 ], [ %3088, %3991 ], [ %4018, %3993 ]
  %4031 = phi float [ %3089, %3878 ], [ %3089, %3278 ], [ %3089, %3077 ], [ %3089, %3097 ], [ %3928, %3909 ], [ %3980, %3945 ], [ %3089, %3991 ], [ %4008, %3993 ]
  %4032 = phi float [ %3090, %3878 ], [ %3090, %3278 ], [ %3090, %3077 ], [ %3090, %3097 ], [ %3929, %3909 ], [ %3981, %3945 ], [ %3090, %3991 ], [ %4009, %3993 ]
  %4033 = phi float [ %3091, %3878 ], [ %3091, %3278 ], [ %3091, %3077 ], [ %3091, %3097 ], [ %3930, %3909 ], [ %3982, %3945 ], [ %3091, %3991 ], [ %4010, %3993 ]
  %4034 = phi float [ %3885, %3878 ], [ %3092, %3278 ], [ %3092, %3077 ], [ %3092, %3097 ], [ %3885, %3909 ], [ %3885, %3945 ], [ %3885, %3991 ], [ %3885, %3993 ]
  %4035 = phi float [ %3093, %3878 ], [ %3093, %3278 ], [ %3093, %3077 ], [ %3093, %3097 ], [ %3921, %3909 ], [ %3976, %3945 ], [ %3093, %3991 ], [ %4004, %3993 ]
  %4036 = phi float [ %3094, %3878 ], [ %3094, %3278 ], [ %3094, %3077 ], [ %3094, %3097 ], [ %3918, %3909 ], [ %3953, %3945 ], [ %3094, %3991 ], [ %4001, %3993 ]
  %4037 = phi float [ %3095, %3878 ], [ %3095, %3278 ], [ %3095, %3077 ], [ %3095, %3097 ], [ %3933, %3909 ], [ %3984, %3945 ], [ %3095, %3991 ], [ %4012, %3993 ]
  %4038 = phi float [ %3886, %3878 ], [ %3096, %3278 ], [ %3096, %3077 ], [ %3096, %3097 ], [ %3886, %3909 ], [ %3886, %3945 ], [ %3886, %3991 ], [ %3886, %3993 ]
  %4039 = add i32 %51, 408
  %4040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.i32 %4040, 0
  %4042 = extractvalue %dx.types.ResRet.i32 %4040, 1
  %4043 = bitcast i32 %4041 to float
  %4044 = bitcast i32 %4042 to float
  %4045 = fcmp fast oge float %4043, 0.000000e+00
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = select i1 %4045, float %4043, float %4047
  %4049 = fadd fast float %4048, %204
  %4050 = fmul fast float %4044, %205
  %4051 = add i32 %51, 504
  %4052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.i32 %4052, 0
  %4054 = add i32 %4053, 0
  %4055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4056 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4055, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4057 = extractvalue %dx.types.ResRet.f32 %4056, 0
  %4058 = fmul fast float %4050, %4057
  %4059 = fadd fast float %4049, %4058
  %4060 = and i32 %196, 65535
  %4061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4060)  ; LegacyF16ToF32(value)
  %4062 = lshr i32 %196, 16
  %4063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4062)  ; LegacyF16ToF32(value)
  %4064 = and i32 %197, 65535
  %4065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4064)  ; LegacyF16ToF32(value)
  %4066 = fmul fast float %4061, %4025
  %4067 = fmul fast float %4063, %4026
  %4068 = fmul fast float %4065, %4027
  %4069 = shl i32 %198, 4
  %4070 = and i32 %4069, 32752
  %4071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4070)  ; LegacyF16ToF32(value)
  %4072 = lshr i32 %198, 7
  %4073 = and i32 %4072, 32752
  %4074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4073)  ; LegacyF16ToF32(value)
  %4075 = lshr i32 %198, 22
  %4076 = shl nuw nsw i32 %4075, 5
  %4077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4076)  ; LegacyF16ToF32(value)
  %4078 = and i32 %199, 65535
  %4079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4078)  ; LegacyF16ToF32(value)
  %4080 = fmul fast float %4071, %4022
  %4081 = fmul fast float %4080, %4079
  %4082 = fmul fast float %4074, %4023
  %4083 = fmul fast float %4082, %4079
  %4084 = fmul fast float %4077, %4024
  %4085 = fmul fast float %4084, %4079
  %4086 = call float @dx.op.dot2.f32(i32 54, float %4020, float %4021, float %4020, float %4021)  ; Dot2(ax,ay,bx,by)
  %4087 = fmul fast float %4086, 0x3FE3333340000000
  %4088 = fsub fast float 1.000000e+00, %4087
  %4089 = call float @dx.op.dot3.f32(i32 55, float %4020, float %4021, float %4088, float %4020, float %4021, float %4088)  ; Dot3(ax,ay,az,bx,by,bz)
  %4090 = call float @dx.op.unary.f32(i32 25, float %4089)  ; Rsqrt(value)
  %4091 = fmul fast float %4090, %4020
  %4092 = fmul fast float %4090, %4021
  %4093 = fmul fast float %4088, %4090
  %4094 = fmul fast float %4093, %118
  %4095 = fmul fast float %4093, %119
  %4096 = fmul fast float %4093, %120
  %4097 = fmul fast float %4091, %82
  %4098 = fmul fast float %4091, %83
  %4099 = fmul fast float %4091, %84
  %4100 = fadd fast float %4094, %4097
  %4101 = fadd fast float %4095, %4098
  %4102 = fadd fast float %4096, %4099
  %4103 = fmul fast float %130, %4092
  %4104 = fmul fast float %131, %4092
  %4105 = fmul fast float %132, %4092
  %4106 = fadd fast float %4100, %4103
  %4107 = fadd fast float %4101, %4104
  %4108 = fadd fast float %4102, %4105
  %4109 = call float @dx.op.dot3.f32(i32 55, float %4106, float %4107, float %4108, float %4106, float %4107, float %4108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4110 = call float @dx.op.unary.f32(i32 25, float %4109)  ; Rsqrt(value)
  %4111 = fmul fast float %4106, %4110
  %4112 = fmul fast float %4107, %4110
  %4113 = fmul fast float %4108, %4110
  %4114 = icmp eq i32 %53, 65535
  br i1 %4114, label %4713, label %4115

; <label>:4115                                    ; preds = %4019
  %4116 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4117 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %4118 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4119 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4120 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %4121 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4122 = fadd fast float %4116, %54
  %4123 = fadd fast float %4117, %55
  %4124 = fadd fast float %4118, %56
  %4125 = fadd fast float %4119, %54
  %4126 = fadd fast float %4120, %55
  %4127 = fadd fast float %4121, %56
  %4128 = mul i32 %53, 48
  %4129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4128, i32 undef)  ; BufferLoad(srv,index,wot)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.ResRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.ResRet.f32 %4129, 2
  %4133 = add i32 %4128, 16
  %4134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4133, i32 undef)  ; BufferLoad(srv,index,wot)
  %4135 = extractvalue %dx.types.ResRet.f32 %4134, 0
  %4136 = extractvalue %dx.types.ResRet.f32 %4134, 1
  %4137 = extractvalue %dx.types.ResRet.f32 %4134, 2
  %4138 = add i32 %4128, 32
  %4139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4138, i32 undef)  ; BufferLoad(srv,index,wot)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = extractvalue %dx.types.ResRet.f32 %4139, 3
  %4144 = bitcast float %4143 to i32
  %4145 = fmul fast float %4130, %54
  %4146 = fmul fast float %4131, %55
  %4147 = fmul fast float %4132, %56
  %4148 = fsub fast float %4145, %4135
  %4149 = fsub fast float %4146, %4136
  %4150 = fsub fast float %4147, %4137
  %4151 = call float @dx.op.unary.f32(i32 7, float %4148)  ; Saturate(value)
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4154 = fmul fast float %4151, %4140
  %4155 = fmul fast float %4152, %4141
  %4156 = fmul fast float %4153, %4142
  %4157 = fadd fast float %4140, -1.000000e+00
  %4158 = fadd fast float %4141, -1.000000e+00
  %4159 = fadd fast float %4142, -1.000000e+00
  %4160 = call float @dx.op.unary.f32(i32 27, float %4154)  ; Round_ni(value)
  %4161 = call float @dx.op.unary.f32(i32 27, float %4155)  ; Round_ni(value)
  %4162 = call float @dx.op.unary.f32(i32 27, float %4156)  ; Round_ni(value)
  %4163 = call float @dx.op.binary.f32(i32 36, float %4160, float %4157)  ; FMin(a,b)
  %4164 = call float @dx.op.binary.f32(i32 36, float %4161, float %4158)  ; FMin(a,b)
  %4165 = call float @dx.op.binary.f32(i32 36, float %4162, float %4159)  ; FMin(a,b)
  %4166 = fmul fast float %4165, %4141
  %4167 = fadd fast float %4166, %4164
  %4168 = fmul fast float %4167, %4140
  %4169 = fadd fast float %4168, %4163
  %4170 = fptosi float %4169 to i32
  %4171 = add nsw i32 %4170, %4144
  %4172 = shl nsw i32 %4171, 2
  %4173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.i32 %4173, 0
  %4175 = lshr i32 %4174, 16
  %4176 = icmp eq i32 %4175, 0
  br i1 %4176, label %4676, label %4177

; <label>:4177                                    ; preds = %4115
  br label %4178

; <label>:4178                                    ; preds = %4305, %4177
  %4179 = phi i32 [ %4207, %4305 ], [ %4175, %4177 ]
  %4180 = phi float [ %4306, %4305 ], [ 0.000000e+00, %4177 ]
  %4181 = phi float [ %4307, %4305 ], [ %4059, %4177 ]
  %4182 = phi float [ %4308, %4305 ], [ %4038, %4177 ]
  %4183 = phi float [ %4309, %4305 ], [ %4031, %4177 ]
  %4184 = phi float [ %4310, %4305 ], [ %4032, %4177 ]
  %4185 = phi float [ %4311, %4305 ], [ %4033, %4177 ]
  %4186 = phi float [ %4312, %4305 ], [ 0.000000e+00, %4177 ]
  %4187 = phi float [ %4313, %4305 ], [ 0.000000e+00, %4177 ]
  %4188 = phi float [ %4314, %4305 ], [ %4028, %4177 ]
  %4189 = phi float [ %4315, %4305 ], [ %4029, %4177 ]
  %4190 = phi float [ %4316, %4305 ], [ %4030, %4177 ]
  %4191 = phi float [ %4317, %4305 ], [ %4081, %4177 ]
  %4192 = phi float [ %4318, %4305 ], [ %4083, %4177 ]
  %4193 = phi float [ %4319, %4305 ], [ %4085, %4177 ]
  %4194 = phi float [ %4320, %4305 ], [ %4111, %4177 ]
  %4195 = phi float [ %4321, %4305 ], [ %4112, %4177 ]
  %4196 = phi float [ %4322, %4305 ], [ %4113, %4177 ]
  %4197 = phi float [ %4323, %4305 ], [ %4036, %4177 ]
  %4198 = phi float [ %4324, %4305 ], [ %4035, %4177 ]
  %4199 = phi float [ %4325, %4305 ], [ 0.000000e+00, %4177 ]
  %4200 = phi float [ %4326, %4305 ], [ %4034, %4177 ]
  %4201 = phi float [ %4327, %4305 ], [ %4066, %4177 ]
  %4202 = phi float [ %4328, %4305 ], [ %4067, %4177 ]
  %4203 = phi float [ %4329, %4305 ], [ %4068, %4177 ]
  %4204 = shl nuw nsw i32 %4179, 2
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = lshr i32 %4206, 16
  %4208 = shl i32 %4206, 8
  %4209 = and i32 %4208, 16776960
  %4210 = or i32 %4209, 48
  %4211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = extractvalue %dx.types.ResRet.f32 %4211, 1
  %4214 = extractvalue %dx.types.ResRet.f32 %4211, 2
  %4215 = or i32 %4209, 64
  %4216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4215, i32 undef)  ; BufferLoad(srv,index,wot)
  %4217 = extractvalue %dx.types.ResRet.i32 %4216, 0
  %4218 = extractvalue %dx.types.ResRet.i32 %4216, 1
  %4219 = or i32 %4209, 80
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 2
  %4222 = extractvalue %dx.types.ResRet.f32 %4220, 3
  %4223 = or i32 %4209, 96
  %4224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4223, i32 undef)  ; BufferLoad(srv,index,wot)
  %4225 = extractvalue %dx.types.ResRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.ResRet.f32 %4224, 1
  %4227 = extractvalue %dx.types.ResRet.f32 %4224, 2
  %4228 = extractvalue %dx.types.ResRet.f32 %4224, 3
  %4229 = or i32 %4209, 112
  %4230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.f32 %4230, 2
  %4232 = or i32 %4209, 128
  %4233 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4238 = or i32 %4209, 144
  %4239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4238, i32 undef)  ; BufferLoad(srv,index,wot)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = extractvalue %dx.types.ResRet.f32 %4239, 1
  %4242 = extractvalue %dx.types.ResRet.f32 %4239, 2
  %4243 = extractvalue %dx.types.ResRet.f32 %4239, 3
  %4244 = or i32 %4209, 160
  %4245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4244, i32 undef)  ; BufferLoad(srv,index,wot)
  %4246 = extractvalue %dx.types.ResRet.f32 %4245, 0
  %4247 = extractvalue %dx.types.ResRet.f32 %4245, 1
  %4248 = extractvalue %dx.types.ResRet.f32 %4245, 2
  %4249 = extractvalue %dx.types.ResRet.f32 %4245, 3
  %4250 = or i32 %4209, 192
  %4251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.i32 %4251, 0
  %4253 = or i32 %4209, 208
  %4254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = or i32 %4209, 248
  %4257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4256, i32 undef)  ; BufferLoad(srv,index,wot)
  %4258 = extractvalue %dx.types.ResRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.ResRet.f32 %4257, 1
  %4260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4261 = extractvalue %dx.types.ResRet.f32 %4260, 0
  %4262 = extractvalue %dx.types.ResRet.f32 %4260, 1
  %4263 = extractvalue %dx.types.ResRet.f32 %4260, 2
  %4264 = extractvalue %dx.types.ResRet.f32 %4260, 3
  %4265 = call float @dx.op.dot4.f32(i32 56, float %4261, float %4262, float %4263, float %4264, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4266 = or i32 %4209, 16
  %4267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4266, i32 undef)  ; BufferLoad(srv,index,wot)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.ResRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.ResRet.f32 %4267, 2
  %4271 = extractvalue %dx.types.ResRet.f32 %4267, 3
  %4272 = call float @dx.op.dot4.f32(i32 56, float %4268, float %4269, float %4270, float %4271, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4273 = or i32 %4209, 32
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.ResRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.ResRet.f32 %4274, 2
  %4278 = extractvalue %dx.types.ResRet.f32 %4274, 3
  %4279 = call float @dx.op.dot4.f32(i32 56, float %4275, float %4276, float %4277, float %4278, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4280 = call float @dx.op.unary.f32(i32 27, float %4265)  ; Round_ni(value)
  %4281 = call float @dx.op.unary.f32(i32 6, float %4280)  ; FAbs(value)
  %4282 = call float @dx.op.unary.f32(i32 27, float %4272)  ; Round_ni(value)
  %4283 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4284 = call float @dx.op.unary.f32(i32 6, float %4279)  ; FAbs(value)
  %4285 = call float @dx.op.unary.f32(i32 27, float %4284)  ; Round_ni(value)
  %4286 = fadd fast float %4283, %4281
  %4287 = fadd fast float %4286, %4285
  %4288 = fcmp fast oeq float %4287, 0.000000e+00
  %4289 = call float @dx.op.dot4.f32(i32 56, float %4261, float %4262, float %4263, float %4264, float %4122, float %4123, float %4124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4290 = call float @dx.op.dot4.f32(i32 56, float %4268, float %4269, float %4270, float %4271, float %4122, float %4123, float %4124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4291 = call float @dx.op.dot4.f32(i32 56, float %4261, float %4262, float %4263, float %4264, float %4125, float %4126, float %4127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4292 = call float @dx.op.dot4.f32(i32 56, float %4268, float %4269, float %4270, float %4271, float %4125, float %4126, float %4127, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4293 = fsub fast float %4289, %4265
  %4294 = fsub fast float %4291, %4265
  %4295 = fsub fast float %4290, %4272
  %4296 = fsub fast float %4292, %4272
  %4297 = call float @dx.op.dot3.f32(i32 55, float %4212, float %4213, float %4214, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4300 = fadd fast float %4299, %4297
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4303 = fcmp fast ogt float %4301, %4302
  %4304 = and i1 %4288, %4303
  br i1 %4304, label %4331, label %4305

; <label>:4305                                    ; preds = %4662, %4414, %4331, %4178
  %4306 = phi float [ %4180, %4331 ], [ %4417, %4414 ], [ %4417, %4662 ], [ %4180, %4178 ]
  %4307 = phi float [ %4181, %4331 ], [ %4181, %4414 ], [ %4638, %4662 ], [ %4181, %4178 ]
  %4308 = phi float [ %4182, %4331 ], [ %4182, %4414 ], [ %4636, %4662 ], [ %4182, %4178 ]
  %4309 = phi float [ %4183, %4331 ], [ %4183, %4414 ], [ %4614, %4662 ], [ %4183, %4178 ]
  %4310 = phi float [ %4184, %4331 ], [ %4184, %4414 ], [ %4615, %4662 ], [ %4184, %4178 ]
  %4311 = phi float [ %4185, %4331 ], [ %4185, %4414 ], [ %4616, %4662 ], [ %4185, %4178 ]
  %4312 = phi float [ %4186, %4331 ], [ %4186, %4414 ], [ %4541, %4662 ], [ %4186, %4178 ]
  %4313 = phi float [ %4187, %4331 ], [ %4187, %4414 ], [ %4539, %4662 ], [ %4187, %4178 ]
  %4314 = phi float [ %4188, %4331 ], [ %4188, %4414 ], [ %4584, %4662 ], [ %4188, %4178 ]
  %4315 = phi float [ %4189, %4331 ], [ %4189, %4414 ], [ %4585, %4662 ], [ %4189, %4178 ]
  %4316 = phi float [ %4190, %4331 ], [ %4190, %4414 ], [ %4586, %4662 ], [ %4190, %4178 ]
  %4317 = phi float [ %4191, %4331 ], [ %4191, %4414 ], [ %4672, %4662 ], [ %4191, %4178 ]
  %4318 = phi float [ %4192, %4331 ], [ %4192, %4414 ], [ %4673, %4662 ], [ %4192, %4178 ]
  %4319 = phi float [ %4193, %4331 ], [ %4193, %4414 ], [ %4674, %4662 ], [ %4193, %4178 ]
  %4320 = phi float [ %4194, %4331 ], [ %4194, %4414 ], [ %4520, %4662 ], [ %4194, %4178 ]
  %4321 = phi float [ %4195, %4331 ], [ %4195, %4414 ], [ %4521, %4662 ], [ %4195, %4178 ]
  %4322 = phi float [ %4196, %4331 ], [ %4196, %4414 ], [ %4522, %4662 ], [ %4196, %4178 ]
  %4323 = phi float [ %4197, %4331 ], [ %4197, %4414 ], [ %4594, %4662 ], [ %4197, %4178 ]
  %4324 = phi float [ %4198, %4331 ], [ %4198, %4414 ], [ %4591, %4662 ], [ %4198, %4178 ]
  %4325 = phi float [ %4199, %4331 ], [ %4199, %4414 ], [ %4588, %4662 ], [ %4199, %4178 ]
  %4326 = phi float [ %4200, %4331 ], [ %4200, %4414 ], [ %4537, %4662 ], [ %4200, %4178 ]
  %4327 = phi float [ %4201, %4331 ], [ %4201, %4414 ], [ %4532, %4662 ], [ %4201, %4178 ]
  %4328 = phi float [ %4202, %4331 ], [ %4202, %4414 ], [ %4533, %4662 ], [ %4202, %4178 ]
  %4329 = phi float [ %4203, %4331 ], [ %4203, %4414 ], [ %4534, %4662 ], [ %4203, %4178 ]
  %4330 = icmp eq i32 %4207, 0
  br i1 %4330, label %4675, label %4178

; <label>:4331                                    ; preds = %4178
  %4332 = extractvalue %dx.types.ResRet.f32 %4211, 3
  %4333 = extractvalue %dx.types.ResRet.f32 %4230, 3
  %4334 = extractvalue %dx.types.ResRet.f32 %4230, 1
  %4335 = extractvalue %dx.types.ResRet.f32 %4230, 0
  %4336 = extractvalue %dx.types.ResRet.f32 %4220, 1
  %4337 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4338 = extractvalue %dx.types.ResRet.i32 %4216, 3
  %4339 = extractvalue %dx.types.ResRet.i32 %4216, 2
  %4340 = bitcast float %4332 to i32
  %4341 = add i32 %4338, 0
  %4342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4341, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4344 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4342, %dx.types.Handle %4343, float %4265, float %4272, float undef, float undef, i32 0, i32 0, i32 undef, float %4293, float %4295, float undef, float %4294, float %4296, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = fmul fast float %4345, %4337
  %4347 = fadd fast float %4346, %4336
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fmul fast float %4265, %4225
  %4350 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4272, float %4349)  ; FMad(a,b,c)
  %4351 = fadd fast float %4350, %4335
  %4352 = fmul fast float %4265, %4227
  %4353 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4272, float %4352)  ; FMad(a,b,c)
  %4354 = fadd fast float %4353, %4334
  %4355 = fmul fast float %4293, %4225
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4295, float %4355)  ; FMad(a,b,c)
  %4357 = fmul fast float %4293, %4227
  %4358 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4295, float %4357)  ; FMad(a,b,c)
  %4359 = fmul fast float %4294, %4225
  %4360 = call float @dx.op.tertiary.f32(i32 46, float %4226, float %4296, float %4359)  ; FMad(a,b,c)
  %4361 = fmul fast float %4294, %4227
  %4362 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4296, float %4361)  ; FMad(a,b,c)
  %4363 = add i32 %4339, 0
  %4364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4363, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4365 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4364, %dx.types.Handle %4343, float %4351, float %4354, float undef, float undef, i32 0, i32 0, i32 undef, float %4356, float %4358, float undef, float %4360, float %4362, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = and i32 %4340, 1024
  %4368 = icmp ne i32 %4367, 0
  %4369 = fcmp fast ogt float %4366, 0x3FE0101020000000
  %4370 = uitofp i1 %4369 to float
  %4371 = select i1 %4368, float %4370, float %4366
  %4372 = and i32 %4340, 8192
  %4373 = icmp ne i32 %4372, 0
  %4374 = select i1 %4373, float %4333, float 1.000000e+00
  %4375 = fmul fast float %4265, 2.000000e+00
  %4376 = fadd fast float %4375, -1.000000e+00
  %4377 = call float @dx.op.unary.f32(i32 6, float %4376)  ; FAbs(value)
  %4378 = fmul fast float %4377, %4258
  %4379 = fsub fast float %4378, %4258
  %4380 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4381 = fmul fast float %4272, 2.000000e+00
  %4382 = fadd fast float %4381, -1.000000e+00
  %4383 = call float @dx.op.unary.f32(i32 6, float %4382)  ; FAbs(value)
  %4384 = fmul fast float %4383, %4259
  %4385 = fsub fast float %4384, %4259
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4387 = fmul fast float %4284, %4221
  %4388 = fsub fast float %4387, %4221
  %4389 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4390 = fmul fast float %4348, %4374
  %4391 = fmul fast float %4390, %4345
  %4392 = fmul fast float %4391, %4380
  %4393 = fmul fast float %4392, %4371
  %4394 = fmul fast float %4393, %4386
  %4395 = fmul fast float %4394, %4389
  %4396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4397 = extractvalue %dx.types.CBufRet.f32 %4396, 1
  %4398 = extractvalue %dx.types.CBufRet.f32 %4396, 0
  %4399 = fsub fast float %4301, %4398
  %4400 = fmul fast float %4399, %4397
  %4401 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4402 = fmul fast float %4395, %4222
  %4403 = fadd fast float %4395, %4222
  %4404 = fmul fast float %4403, %4231
  %4405 = fsub fast float %4404, %4231
  %4406 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4407 = and i32 %4340, 128
  %4408 = icmp ne i32 %4407, 0
  %4409 = select i1 %4408, float %4406, float %4402
  %4410 = fmul fast float %4409, %4401
  %4411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = extractvalue %dx.types.CBufRet.f32 %4411, 0
  %4413 = fcmp fast ugt float %4410, %4412
  br i1 %4413, label %4414, label %4305

; <label>:4414                                    ; preds = %4331
  %4415 = select i1 %4373, float %4410, float 0.000000e+00
  %4416 = fadd fast float %4415, %4180
  %4417 = call float @dx.op.unary.f32(i32 7, float %4416)  ; Saturate(value)
  br i1 %4373, label %4305, label %4418

; <label>:4418                                    ; preds = %4414
  %4419 = and i32 %4340, 4
  %4420 = and i32 %4340, 8
  %4421 = add i32 %4217, 0
  %4422 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4421, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4424 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4422, %dx.types.Handle %4423, float %4351, float %4354, float undef, float undef, i32 0, i32 0, i32 undef, float %4356, float %4358, float undef, float %4360, float %4362, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.ResRet.f32 %4424, 2
  %4428 = extractvalue %dx.types.ResRet.f32 %4424, 3
  %4429 = bitcast float %4243 to i32
  %4430 = and i32 %4429, 255
  %4431 = uitofp i32 %4430 to float
  %4432 = lshr i32 %4429, 8
  %4433 = and i32 %4432, 255
  %4434 = uitofp i32 %4433 to float
  %4435 = fmul fast float %4428, %4431
  %4436 = fadd fast float %4435, %4434
  %4437 = fmul fast float %4436, 0x3F70101000000000
  %4438 = add i32 %4218, 0
  %4439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4438, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4440 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4439, %dx.types.Handle %4423, float %4351, float %4354, float undef, float undef, i32 0, i32 0, i32 undef, float %4356, float %4358, float undef, float %4360, float %4362, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = extractvalue %dx.types.ResRet.f32 %4440, 1
  %4443 = extractvalue %dx.types.ResRet.f32 %4440, 2
  %4444 = extractvalue %dx.types.ResRet.f32 %4440, 3
  %4445 = bitcast float %4237 to i32
  %4446 = and i32 %4445, 255
  %4447 = uitofp i32 %4446 to float
  %4448 = lshr i32 %4445, 8
  %4449 = and i32 %4448, 255
  %4450 = uitofp i32 %4449 to float
  %4451 = lshr i32 %4445, 16
  %4452 = and i32 %4451, 255
  %4453 = uitofp i32 %4452 to float
  %4454 = fmul fast float %4453, 0x3F70101000000000
  %4455 = fmul fast float %4441, %4447
  %4456 = fadd fast float %4455, %4450
  %4457 = fmul fast float %4456, 0x3F70101000000000
  %4458 = fadd fast float %4442, -5.000000e-01
  %4459 = fadd fast float %4444, -5.000000e-01
  %4460 = fmul fast float %4458, %4454
  %4461 = fmul fast float %4459, %4454
  %4462 = fadd fast float %4460, 5.000000e-01
  %4463 = fadd fast float %4461, 5.000000e-01
  %4464 = fmul fast float %4425, %4246
  %4465 = fmul fast float %4426, %4247
  %4466 = fmul fast float %4427, %4248
  %4467 = fmul fast float %4462, 2.000000e+00
  %4468 = fadd fast float %4467, -1.000000e+00
  %4469 = fmul fast float %4463, 2.000000e+00
  %4470 = fadd fast float %4469, -1.000000e+00
  %4471 = fadd fast float %4468, %4470
  %4472 = fmul fast float %4471, 5.000000e-01
  %4473 = fsub fast float %4468, %4470
  %4474 = fmul fast float %4473, 5.000000e-01
  %4475 = call float @dx.op.unary.f32(i32 6, float %4472)  ; FAbs(value)
  %4476 = fsub fast float 1.000000e+00, %4475
  %4477 = call float @dx.op.unary.f32(i32 6, float %4474)  ; FAbs(value)
  %4478 = fsub fast float %4476, %4477
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4472, float %4474, float %4478, float %4472, float %4474, float %4478)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = call float @dx.op.unary.f32(i32 25, float %4479)  ; Rsqrt(value)
  %4481 = fmul fast float %4472, %4480
  %4482 = fmul fast float %4474, %4480
  %4483 = fmul fast float %4480, %4478
  %4484 = fmul fast float %4483, %4212
  %4485 = fmul fast float %4483, %4213
  %4486 = fmul fast float %4483, %4214
  %4487 = fmul fast float %4481, %4234
  %4488 = fmul fast float %4481, %4235
  %4489 = fmul fast float %4481, %4236
  %4490 = fadd fast float %4487, %4484
  %4491 = fadd fast float %4488, %4485
  %4492 = fadd fast float %4489, %4486
  %4493 = fmul fast float %4482, %4240
  %4494 = fmul fast float %4482, %4241
  %4495 = fmul fast float %4482, %4242
  %4496 = fadd fast float %4490, %4493
  %4497 = fadd fast float %4491, %4494
  %4498 = fadd fast float %4492, %4495
  %4499 = call float @dx.op.dot3.f32(i32 55, float %4496, float %4497, float %4498, float %4496, float %4497, float %4498)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = call float @dx.op.unary.f32(i32 25, float %4499)  ; Rsqrt(value)
  %4501 = fmul fast float %4496, %4500
  %4502 = fmul fast float %4497, %4500
  %4503 = fmul fast float %4498, %4500
  %4504 = icmp ne i32 %4420, 0
  %4505 = select i1 %4504, float 1.000000e+00, float 0.000000e+00
  %4506 = fmul fast float %4410, %4505
  %4507 = and i32 %4340, 1
  %4508 = icmp eq i32 %4507, 0
  br i1 %4508, label %4509, label %4513

; <label>:4509                                    ; preds = %4418
  %4510 = fsub fast float %4501, %4194
  %4511 = fsub fast float %4502, %4195
  %4512 = fsub fast float %4503, %4196
  br label %4513

; <label>:4513                                    ; preds = %4509, %4418
  %4514 = phi float [ %4510, %4509 ], [ %4501, %4418 ]
  %4515 = phi float [ %4511, %4509 ], [ %4502, %4418 ]
  %4516 = phi float [ %4512, %4509 ], [ %4503, %4418 ]
  %4517 = fmul float %4516, %4506
  %4518 = fmul float %4515, %4506
  %4519 = fmul float %4514, %4506
  %4520 = fadd fast float %4519, %4194
  %4521 = fadd fast float %4518, %4195
  %4522 = fadd fast float %4517, %4196
  %4523 = icmp ne i32 %4419, 0
  %4524 = select i1 %4523, float 1.000000e+00, float 0.000000e+00
  %4525 = fmul fast float %4410, %4524
  %4526 = fsub fast float %4464, %4201
  %4527 = fsub fast float %4465, %4202
  %4528 = fsub fast float %4466, %4203
  %4529 = fmul fast float %4526, %4525
  %4530 = fmul fast float %4527, %4525
  %4531 = fmul fast float %4528, %4525
  %4532 = fadd fast float %4529, %4201
  %4533 = fadd fast float %4530, %4202
  %4534 = fadd fast float %4531, %4203
  %4535 = fsub fast float %4437, %4200
  %4536 = fmul fast float %4535, %4525
  %4537 = fadd fast float %4536, %4200
  %4538 = fmul fast float %4525, %4187
  %4539 = fsub fast float %4187, %4538
  %4540 = fmul fast float %4525, %4186
  %4541 = fsub fast float %4186, %4540
  %4542 = bitcast float %4255 to i32
  %4543 = lshr i32 %4542, 16
  %4544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4543)  ; LegacyF16ToF32(value)
  %4545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4546 = extractvalue %dx.types.ResRet.i32 %4545, 0
  %4547 = and i32 %4546, 1
  %4548 = icmp eq i32 %4547, 0
  br i1 %4548, label %4549, label %4574

; <label>:4549                                    ; preds = %4513
  %4550 = fadd fast float %4437, 0xBFB99999A0000000
  %4551 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4552 = fmul fast float %4551, 0x3FF1C71C80000000
  %4553 = fsub fast float 1.000000e+00, %4552
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = fmul fast float %4554, %4464
  %4556 = fmul fast float %4554, %4465
  %4557 = fmul fast float %4554, %4466
  %4558 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4559 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4560 = call float @dx.op.unary.f32(i32 7, float %4557)  ; Saturate(value)
  %4561 = call float @dx.op.binary.f32(i32 35, float %4559, float %4560)  ; FMax(a,b)
  %4562 = call float @dx.op.binary.f32(i32 35, float %4558, float %4561)  ; FMax(a,b)
  %4563 = fcmp fast ogt float %4562, 0.000000e+00
  %4564 = bitcast float %4562 to i32
  %4565 = sub nsw i32 2129859010, %4564
  %4566 = bitcast i32 %4565 to float
  %4567 = select i1 %4563, float %4566, float 0.000000e+00
  %4568 = fmul fast float %4558, %4544
  %4569 = fmul fast float %4559, %4544
  %4570 = fmul fast float %4560, %4544
  %4571 = fmul fast float %4568, %4567
  %4572 = fmul fast float %4569, %4567
  %4573 = fmul fast float %4570, %4567
  br label %4574

; <label>:4574                                    ; preds = %4549, %4513
  %4575 = phi float [ %4544, %4513 ], [ %4571, %4549 ]
  %4576 = phi float [ %4544, %4513 ], [ %4572, %4549 ]
  %4577 = phi float [ %4544, %4513 ], [ %4573, %4549 ]
  %4578 = fsub fast float %4575, %4188
  %4579 = fsub fast float %4576, %4189
  %4580 = fsub fast float %4577, %4190
  %4581 = fmul fast float %4578, %4525
  %4582 = fmul fast float %4579, %4525
  %4583 = fmul fast float %4580, %4525
  %4584 = fadd fast float %4581, %4188
  %4585 = fadd fast float %4582, %4189
  %4586 = fadd fast float %4583, %4190
  %4587 = fadd fast float %4410, %4199
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = fsub fast float %4457, %4198
  %4590 = fmul fast float %4589, %4506
  %4591 = fadd fast float %4590, %4198
  %4592 = fsub fast float %4443, %4197
  %4593 = fmul fast float %4592, %4506
  %4594 = fadd fast float %4593, %4197
  br i1 %4508, label %4603, label %4595

; <label>:4595                                    ; preds = %4574
  %4596 = and i32 %4340, 32768
  %4597 = icmp eq i32 %4596, 0
  br i1 %4597, label %4613, label %4598

; <label>:4598                                    ; preds = %4595
  %4599 = fmul fast float %4506, 1.270000e+02
  %4600 = fadd fast float %4599, %4183
  %4601 = fadd fast float %4599, %4184
  %4602 = fadd fast float %4599, %4185
  br label %4613

; <label>:4603                                    ; preds = %4574
  %4604 = fsub fast float 1.270000e+02, %4183
  %4605 = fsub fast float 1.270000e+02, %4184
  %4606 = fsub fast float 1.270000e+02, %4185
  %4607 = fmul fast float %4506, %4604
  %4608 = fmul fast float %4506, %4605
  %4609 = fmul fast float %4506, %4606
  %4610 = fadd fast float %4607, %4183
  %4611 = fadd fast float %4608, %4184
  %4612 = fadd fast float %4609, %4185
  br label %4613

; <label>:4613                                    ; preds = %4603, %4598, %4595
  %4614 = phi float [ %4600, %4598 ], [ %4183, %4595 ], [ %4610, %4603 ]
  %4615 = phi float [ %4601, %4598 ], [ %4184, %4595 ], [ %4611, %4603 ]
  %4616 = phi float [ %4602, %4598 ], [ %4185, %4595 ], [ %4612, %4603 ]
  %4617 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4465, float %4466, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4621 = fmul fast float %4620, %4617
  %4622 = fadd fast float %4621, %4619
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = bitcast float %4249 to i32
  %4625 = and i32 %4624, 65535
  %4626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4625)  ; LegacyF16ToF32(value)
  %4627 = lshr i32 %4624, 16
  %4628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4627)  ; LegacyF16ToF32(value)
  %4629 = fcmp fast oge float %4626, 0.000000e+00
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 0
  %4632 = select i1 %4629, float %4626, float %4631
  %4633 = fadd fast float %4632, %4628
  %4634 = fsub fast float %4623, %4182
  %4635 = fmul fast float %4634, %4410
  %4636 = fadd fast float %4635, %4182
  %4637 = fmul fast float %4633, %4410
  %4638 = call float @dx.op.binary.f32(i32 35, float %4181, float %4637)  ; FMax(a,b)
  %4639 = and i32 %4340, 16
  %4640 = icmp eq i32 %4639, 0
  br i1 %4640, label %4662, label %4641

; <label>:4641                                    ; preds = %4613
  %4642 = add i32 %4252, 0
  %4643 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4642, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4644 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4643, %dx.types.Handle %4423, float %4351, float %4354, float undef, float undef, i32 0, i32 0, i32 undef, float %4356, float %4358, float undef, float %4360, float %4362, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4648 = and i32 %4542, 65535
  %4649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4648)  ; LegacyF16ToF32(value)
  %4650 = fmul fast float %4645, %4246
  %4651 = fmul fast float %4646, %4247
  %4652 = fmul fast float %4647, %4248
  %4653 = and i32 %4340, 16384
  %4654 = icmp ne i32 %4653, 0
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4657 = select i1 %4654, float %4656, float 1.000000e+00
  %4658 = fmul fast float %4657, %4649
  %4659 = fmul fast float %4650, %4658
  %4660 = fmul fast float %4651, %4658
  %4661 = fmul fast float %4652, %4658
  br label %4662

; <label>:4662                                    ; preds = %4641, %4613
  %4663 = phi float [ %4659, %4641 ], [ 0.000000e+00, %4613 ]
  %4664 = phi float [ %4660, %4641 ], [ 0.000000e+00, %4613 ]
  %4665 = phi float [ %4661, %4641 ], [ 0.000000e+00, %4613 ]
  %4666 = fsub fast float %4663, %4191
  %4667 = fsub fast float %4664, %4192
  %4668 = fsub fast float %4665, %4193
  %4669 = fmul fast float %4666, %4410
  %4670 = fmul fast float %4667, %4410
  %4671 = fmul fast float %4668, %4410
  %4672 = fadd fast float %4669, %4191
  %4673 = fadd fast float %4670, %4192
  %4674 = fadd fast float %4671, %4193
  br label %4305

; <label>:4675                                    ; preds = %4305
  br label %4676

; <label>:4676                                    ; preds = %4675, %4115
  %4677 = phi float [ 0.000000e+00, %4115 ], [ %4306, %4675 ]
  %4678 = phi float [ %4059, %4115 ], [ %4307, %4675 ]
  %4679 = phi float [ %4038, %4115 ], [ %4308, %4675 ]
  %4680 = phi float [ %4031, %4115 ], [ %4309, %4675 ]
  %4681 = phi float [ %4032, %4115 ], [ %4310, %4675 ]
  %4682 = phi float [ %4033, %4115 ], [ %4311, %4675 ]
  %4683 = phi float [ 0.000000e+00, %4115 ], [ %4312, %4675 ]
  %4684 = phi float [ 0.000000e+00, %4115 ], [ %4313, %4675 ]
  %4685 = phi float [ %4028, %4115 ], [ %4314, %4675 ]
  %4686 = phi float [ %4029, %4115 ], [ %4315, %4675 ]
  %4687 = phi float [ %4030, %4115 ], [ %4316, %4675 ]
  %4688 = phi float [ %4081, %4115 ], [ %4317, %4675 ]
  %4689 = phi float [ %4083, %4115 ], [ %4318, %4675 ]
  %4690 = phi float [ %4085, %4115 ], [ %4319, %4675 ]
  %4691 = phi float [ %4111, %4115 ], [ %4320, %4675 ]
  %4692 = phi float [ %4112, %4115 ], [ %4321, %4675 ]
  %4693 = phi float [ %4113, %4115 ], [ %4322, %4675 ]
  %4694 = phi float [ %4036, %4115 ], [ %4323, %4675 ]
  %4695 = phi float [ %4035, %4115 ], [ %4324, %4675 ]
  %4696 = phi float [ 0.000000e+00, %4115 ], [ %4325, %4675 ]
  %4697 = phi float [ %4034, %4115 ], [ %4326, %4675 ]
  %4698 = phi float [ %4066, %4115 ], [ %4327, %4675 ]
  %4699 = phi float [ %4067, %4115 ], [ %4328, %4675 ]
  %4700 = phi float [ %4068, %4115 ], [ %4329, %4675 ]
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4691, float %4692, float %4693)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = call float @dx.op.unary.f32(i32 25, float %4701)  ; Rsqrt(value)
  %4703 = fmul fast float %4702, %4691
  %4704 = fmul fast float %4702, %4692
  %4705 = fmul fast float %4702, %4693
  %4706 = fadd fast float %4696, %1208
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4703, float %4704, float %4705, float %4703, float %4704, float %4705)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = call float @dx.op.unary.f32(i32 25, float %4708)  ; Rsqrt(value)
  %4710 = fmul fast float %4709, %4703
  %4711 = fmul fast float %4709, %4704
  %4712 = fmul fast float %4709, %4705
  br label %4713

; <label>:4713                                    ; preds = %4676, %4019
  %4714 = phi float [ %4710, %4676 ], [ %4111, %4019 ]
  %4715 = phi float [ %4711, %4676 ], [ %4112, %4019 ]
  %4716 = phi float [ %4712, %4676 ], [ %4113, %4019 ]
  %4717 = phi float [ %4688, %4676 ], [ %4081, %4019 ]
  %4718 = phi float [ %4689, %4676 ], [ %4083, %4019 ]
  %4719 = phi float [ %4690, %4676 ], [ %4085, %4019 ]
  %4720 = phi float [ %4685, %4676 ], [ %4028, %4019 ]
  %4721 = phi float [ %4686, %4676 ], [ %4029, %4019 ]
  %4722 = phi float [ %4687, %4676 ], [ %4030, %4019 ]
  %4723 = phi float [ %4680, %4676 ], [ %4031, %4019 ]
  %4724 = phi float [ %4681, %4676 ], [ %4032, %4019 ]
  %4725 = phi float [ %4682, %4676 ], [ %4033, %4019 ]
  %4726 = phi float [ %4698, %4676 ], [ %4066, %4019 ]
  %4727 = phi float [ %4699, %4676 ], [ %4067, %4019 ]
  %4728 = phi float [ %4700, %4676 ], [ %4068, %4019 ]
  %4729 = phi float [ %4697, %4676 ], [ %4034, %4019 ]
  %4730 = phi float [ %4707, %4676 ], [ %1208, %4019 ]
  %4731 = phi float [ %4695, %4676 ], [ %4035, %4019 ]
  %4732 = phi float [ %4694, %4676 ], [ %4036, %4019 ]
  %4733 = phi float [ %4684, %4676 ], [ 0.000000e+00, %4019 ]
  %4734 = phi float [ %4683, %4676 ], [ 0.000000e+00, %4019 ]
  %4735 = phi float [ %4677, %4676 ], [ 0.000000e+00, %4019 ]
  %4736 = phi float [ %4678, %4676 ], [ %4059, %4019 ]
  %4737 = phi float [ %4679, %4676 ], [ %4038, %4019 ]
  %4738 = add i32 %51, 392
  %4739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4738, i32 undef)  ; BufferLoad(srv,index,wot)
  %4740 = extractvalue %dx.types.ResRet.i32 %4739, 0
  %4741 = extractvalue %dx.types.ResRet.i32 %4739, 1
  %4742 = extractvalue %dx.types.ResRet.i32 %4739, 2
  %4743 = extractvalue %dx.types.ResRet.i32 %4739, 3
  %4744 = bitcast i32 %4740 to float
  %4745 = bitcast i32 %4741 to float
  %4746 = bitcast i32 %4742 to float
  %4747 = bitcast i32 %4743 to float
  %4748 = fsub fast float %4726, %4744
  %4749 = fsub fast float %4727, %4745
  %4750 = fsub fast float %4728, %4746
  %4751 = fmul fast float %4748, %237
  %4752 = fmul fast float %4749, %237
  %4753 = fmul fast float %4750, %237
  %4754 = fadd fast float %4751, %4744
  %4755 = fadd fast float %4752, %4745
  %4756 = fadd fast float %4753, %4746
  %4757 = fsub fast float %4730, %4747
  %4758 = fmul fast float %4757, %237
  %4759 = fadd fast float %4758, %4747
  %4760 = fadd fast float %4729, 0xBFB99999A0000000
  %4761 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4762 = fmul fast float %4761, 0x3FF1C71C80000000
  %4763 = call float @dx.op.binary.f32(i32 36, float %4729, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4764 = fsub fast float 1.000000e+00, %4762
  %4765 = call float @dx.op.unary.f32(i32 7, float %4764)  ; Saturate(value)
  %4766 = fmul fast float %4754, %4765
  %4767 = fmul fast float %4755, %4765
  %4768 = fmul fast float %4756, %4765
  %4769 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4770 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4771 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4772 = fmul fast float %4754, %4762
  %4773 = fmul fast float %4755, %4762
  %4774 = fmul fast float %4756, %4762
  %4775 = fadd fast float %4772, %4763
  %4776 = fadd fast float %4773, %4763
  %4777 = fadd fast float %4774, %4763
  %4778 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4779 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4780 = call float @dx.op.unary.f32(i32 7, float %4777)  ; Saturate(value)
  %4781 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %4783 = extractvalue %dx.types.ResRet.i32 %4782, 0
  %4784 = and i32 %4783, 1
  %4785 = icmp eq i32 %4784, 0
  br i1 %4785, label %4800, label %4786

; <label>:4786                                    ; preds = %4713
  %4787 = call float @dx.op.binary.f32(i32 35, float %4770, float %4771)  ; FMax(a,b)
  %4788 = call float @dx.op.binary.f32(i32 35, float %4769, float %4787)  ; FMax(a,b)
  %4789 = fcmp fast ogt float %4788, 0.000000e+00
  %4790 = bitcast float %4788 to i32
  %4791 = sub nsw i32 2129859010, %4790
  %4792 = bitcast i32 %4791 to float
  %4793 = select i1 %4789, float %4792, float 0.000000e+00
  %4794 = fmul fast float %4769, %4720
  %4795 = fmul fast float %4770, %4721
  %4796 = fmul fast float %4771, %4722
  %4797 = fmul fast float %4794, %4793
  %4798 = fmul fast float %4795, %4793
  %4799 = fmul fast float %4796, %4793
  br label %4800

; <label>:4800                                    ; preds = %4786, %4713
  %4801 = phi float [ %4797, %4786 ], [ %4720, %4713 ]
  %4802 = phi float [ %4798, %4786 ], [ %4721, %4713 ]
  %4803 = phi float [ %4799, %4786 ], [ %4722, %4713 ]
  %4804 = call float @dx.op.binary.f32(i32 36, float %4723, float 1.270000e+02)  ; FMin(a,b)
  %4805 = call float @dx.op.binary.f32(i32 36, float %4724, float 1.270000e+02)  ; FMin(a,b)
  %4806 = call float @dx.op.binary.f32(i32 36, float %4725, float 1.270000e+02)  ; FMin(a,b)
  %4807 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.i32 %4807, 3
  %4809 = and i32 %4808, 8
  %4810 = icmp ne i32 %4809, 0
  %4811 = call float @dx.op.binary.f32(i32 35, float %4769, float %4754)  ; FMax(a,b)
  %4812 = call float @dx.op.binary.f32(i32 35, float %4770, float %4754)  ; FMax(a,b)
  %4813 = call float @dx.op.binary.f32(i32 35, float %4771, float %4754)  ; FMax(a,b)
  %4814 = call float @dx.op.dot3.f32(i32 55, float %4769, float %4770, float %4771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4815 = select i1 %296, float %4754, float %4769
  %4816 = select i1 %296, float %4814, float %4770
  %4817 = select i1 %296, float 1.000000e+00, float %4771
  %4818 = select i1 %4810, float %4811, float %4815
  %4819 = select i1 %4810, float %4812, float %4816
  %4820 = select i1 %4810, float %4813, float %4817
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4801, float %4802, float %4803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = select i1 %296, float %4821, float %4801
  %4823 = select i1 %296, float %4821, float %4802
  %4824 = select i1 %296, float %4821, float %4803
  %4825 = and i32 %272, 3
  %4826 = select i1 %266, i32 %4825, i32 0
  %4827 = icmp eq i32 %4826, 1
  br i1 %4827, label %4828, label %4904

; <label>:4828                                    ; preds = %4800
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 0
  %4831 = extractvalue %dx.types.CBufRet.f32 %4829, 1
  %4832 = fadd fast float %4830, %190
  %4833 = fadd fast float %4831, %191
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4836 = extractvalue %dx.types.CBufRet.f32 %4834, 1
  %4837 = fsub fast float %4832, %4835
  %4838 = fsub fast float %4833, %4836
  %4839 = fmul fast float %4837, %4837
  %4840 = fmul fast float %4838, %4838
  %4841 = fadd fast float %4839, %4840
  %4842 = call float @dx.op.unary.f32(i32 24, float %4841)  ; Sqrt(value)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4834, 2
  %4844 = fcmp fast olt float %4842, %4843
  br i1 %4844, label %4845, label %4898

; <label>:4845                                    ; preds = %4828
  %4846 = extractvalue %dx.types.CBufRet.f32 %4829, 2
  %4847 = fadd fast float %4846, %192
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4856 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4857 = extractvalue %dx.types.CBufRet.f32 %4848, 3
  %4858 = extractvalue %dx.types.CBufRet.f32 %4850, 3
  %4859 = extractvalue %dx.types.CBufRet.f32 %4852, 3
  %4860 = fadd fast float %4857, %4832
  %4861 = fadd fast float %4858, %4833
  %4862 = fadd fast float %4847, %4859
  %4863 = fmul fast float %4860, %4849
  %4864 = call float @dx.op.tertiary.f32(i32 46, float %4861, float %4851, float %4863)  ; FMad(a,b,c)
  %4865 = call float @dx.op.tertiary.f32(i32 46, float %4862, float %4853, float %4864)  ; FMad(a,b,c)
  %4866 = fmul fast float %4860, %4854
  %4867 = call float @dx.op.tertiary.f32(i32 46, float %4861, float %4855, float %4866)  ; FMad(a,b,c)
  %4868 = call float @dx.op.tertiary.f32(i32 46, float %4862, float %4856, float %4867)  ; FMad(a,b,c)
  %4869 = fsub fast float %4865, %4857
  %4870 = fsub fast float %4868, %4858
  %4871 = fsub fast float %4869, %4835
  %4872 = fadd fast float %4871, %4843
  %4873 = fsub fast float %4870, %4836
  %4874 = fadd fast float %4873, %4843
  %4875 = extractvalue %dx.types.CBufRet.f32 %4834, 3
  %4876 = fmul fast float %4872, %4875
  %4877 = fmul fast float %4874, %4875
  %4878 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4879 = call float @dx.op.unary.f32(i32 7, float %4877)  ; Saturate(value)
  %4880 = fsub fast float 1.000000e+00, %4878
  %4881 = fsub fast float 1.000000e+00, %4879
  %4882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %4880, float %4881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = fcmp fast ugt float %4883, 0.000000e+00
  br i1 %4884, label %4885, label %4898

; <label>:4885                                    ; preds = %4845
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 2
  %4888 = fmul fast float %4887, %4883
  %4889 = extractvalue %dx.types.CBufRet.f32 %4886, 3
  %4890 = fadd fast float %4889, %4888
  %4891 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4892 = fadd fast float %4890, %4859
  %4893 = fmul fast float %4865, %4853
  %4894 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4856, float %4893)  ; FMad(a,b,c)
  %4895 = call float @dx.op.tertiary.f32(i32 46, float %4892, float %4891, float %4894)  ; FMad(a,b,c)
  %4896 = fsub fast float %4895, %4859
  %4897 = fsub fast float %4896, %4846
  br label %4898

; <label>:4898                                    ; preds = %4885, %4845, %4828
  %4899 = phi i1 [ true, %4885 ], [ false, %4845 ], [ false, %4828 ]
  %4900 = phi float [ %4897, %4885 ], [ -1.310720e+05, %4845 ], [ -1.310720e+05, %4828 ]
  %4901 = fsub fast float %4900, %192
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = select i1 %4899, float %4902, float 1.000000e+00
  br label %4904

; <label>:4904                                    ; preds = %4898, %4800
  %4905 = phi float [ %4903, %4898 ], [ 0.000000e+00, %4800 ]
  %4906 = icmp eq i32 %4826, 3
  %4907 = select i1 %4906, float 1.000000e+00, float %4905
  %4908 = call float @dx.op.binary.f32(i32 35, float %4735, float %4907)  ; FMax(a,b)
  %4909 = fcmp fast olt float %4907, 1.000000e+00
  br i1 %4909, label %4910, label %5083

; <label>:4910                                    ; preds = %4904
  %4911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.i32 %4911, 0
  %4913 = and i32 %4912, 7
  %4914 = icmp eq i32 %4913, 0
  br i1 %4914, label %4986, label %4915

; <label>:4915                                    ; preds = %4910
  %4916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4917 = extractvalue %dx.types.CBufRet.f32 %4916, 0
  %4918 = extractvalue %dx.types.CBufRet.f32 %4916, 1
  %4919 = extractvalue %dx.types.CBufRet.f32 %4916, 2
  %4920 = fadd fast float %4917, %190
  %4921 = fadd fast float %4918, %191
  %4922 = fadd fast float %4919, %192
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.CBufRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.CBufRet.f32 %4923, 2
  %4927 = extractvalue %dx.types.CBufRet.f32 %4923, 3
  %4928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4929 = extractvalue %dx.types.CBufRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.CBufRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.CBufRet.f32 %4928, 2
  %4932 = extractvalue %dx.types.CBufRet.f32 %4928, 3
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 0
  %4935 = extractvalue %dx.types.CBufRet.f32 %4933, 1
  %4936 = extractvalue %dx.types.CBufRet.f32 %4933, 2
  %4937 = extractvalue %dx.types.CBufRet.f32 %4933, 3
  %4938 = fmul fast float %4920, %4924
  %4939 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4925, float %4938)  ; FMad(a,b,c)
  %4940 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4926, float %4939)  ; FMad(a,b,c)
  %4941 = fadd fast float %4940, %4927
  %4942 = fmul fast float %4929, %4920
  %4943 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4930, float %4942)  ; FMad(a,b,c)
  %4944 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4931, float %4943)  ; FMad(a,b,c)
  %4945 = fadd fast float %4944, %4932
  %4946 = fmul fast float %4934, %4920
  %4947 = call float @dx.op.tertiary.f32(i32 46, float %4921, float %4935, float %4946)  ; FMad(a,b,c)
  %4948 = call float @dx.op.tertiary.f32(i32 46, float %4922, float %4936, float %4947)  ; FMad(a,b,c)
  %4949 = fadd fast float %4948, %4937
  %4950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4951 = extractvalue %dx.types.CBufRet.f32 %4950, 1
  %4952 = extractvalue %dx.types.CBufRet.f32 %4950, 0
  %4953 = fmul fast float %4952, %307
  %4954 = fadd fast float %4949, %4953
  %4955 = fmul fast float %307, 0x401921FB60000000
  %4956 = call float @dx.op.unary.f32(i32 13, float %4955)  ; Sin(value)
  %4957 = call float @dx.op.unary.f32(i32 12, float %4955)  ; Cos(value)
  %4958 = fmul fast float %4957, %4951
  %4959 = call float @dx.op.tertiary.f32(i32 46, float %4956, float %4951, float 0.000000e+00)  ; FMad(a,b,c)
  %4960 = fmul fast float %4951, %4956
  %4961 = fsub fast float -0.000000e+00, %4960
  %4962 = call float @dx.op.tertiary.f32(i32 46, float %4957, float %4951, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4963

; <label>:4963                                    ; preds = %4963, %4915
  %4964 = phi float [ 0.000000e+00, %4915 ], [ %4978, %4963 ]
  %4965 = phi i32 [ 0, %4915 ], [ %4979, %4963 ]
  %4966 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4965
  %4967 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4965
  %4968 = load float, float* %4966, align 4
  %4969 = load float, float* %4967, align 4
  %4970 = fmul fast float %4958, %4968
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4961, float %4970)  ; FMad(a,b,c)
  %4972 = fmul fast float %4968, %4959
  %4973 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4962, float %4972)  ; FMad(a,b,c)
  %4974 = fadd fast float %4941, %4971
  %4975 = fadd fast float %4945, %4973
  %4976 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %47, float %4974, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float %4954)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4977 = extractvalue %dx.types.ResRet.f32 %4976, 0
  %4978 = fadd fast float %4977, %4964
  %4979 = add nuw nsw i32 %4965, 1
  %4980 = icmp eq i32 %4979, 4
  br i1 %4980, label %4981, label %4963

; <label>:4981                                    ; preds = %4963
  %4982 = fmul fast float %4978, 2.500000e-01
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 1
  %4985 = fmul fast float %4984, %4982
  br label %4986

; <label>:4986                                    ; preds = %4981, %4910
  %4987 = phi float [ %4982, %4981 ], [ 0.000000e+00, %4910 ]
  %4988 = phi float [ %4985, %4981 ], [ 0.000000e+00, %4910 ]
  %4989 = fcmp uge float %67, 0.000000e+00
  br i1 %4989, label %4990, label %5001

; <label>:4990                                    ; preds = %4986
  %4991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4992 = extractvalue %dx.types.ResRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.ResRet.f32 %4991, 1
  %4994 = extractvalue %dx.types.ResRet.f32 %4991, 2
  %4995 = fadd fast float %4992, %4908
  %4996 = fcmp fast ogt float %66, 0.000000e+00
  %4997 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = select i1 %4996, float 1.000000e+00, float %4997
  %4999 = fmul fast float %4998, %4994
  %5000 = select i1 %4996, float 0.000000e+00, float %4988
  br label %5083

; <label>:5001                                    ; preds = %4986
  %5002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5003 = extractvalue %dx.types.CBufRet.i32 %5002, 0
  %5004 = and i32 %5003, 7
  %5005 = icmp eq i32 %5004, 0
  br i1 %5005, label %5083, label %5006

; <label>:5006                                    ; preds = %5001
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 0
  %5009 = fmul fast float %5008, %4987
  %5010 = fadd fast float %5009, %4908
  %5011 = extractvalue %dx.types.CBufRet.f32 %5007, 2
  %5012 = fmul fast float %5011, %4987
  %5013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %5014 = extractvalue %dx.types.CBufRet.f32 %5013, 0
  %5015 = fmul fast float %5014, %4987
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = and i32 %5003, 8
  %5018 = icmp eq i32 %5017, 0
  br i1 %5018, label %5083, label %5019

; <label>:5019                                    ; preds = %5006
  %5020 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5021 = fadd fast float %5020, %192
  %5022 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5023 = fadd fast float %5022, %191
  %5024 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5025 = fadd fast float %5024, %190
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.CBufRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.CBufRet.f32 %5026, 2
  %5030 = fsub fast float %5025, %5027
  %5031 = fsub fast float %5023, %5028
  %5032 = fsub fast float %5021, %5029
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = extractvalue %dx.types.CBufRet.f32 %5033, 1
  %5036 = extractvalue %dx.types.CBufRet.f32 %5033, 2
  %5037 = fmul fast float %5030, %5034
  %5038 = fmul fast float %5031, %5035
  %5039 = fmul fast float %5032, %5036
  %5040 = fcmp fast oge float %5037, 0.000000e+00
  %5041 = fcmp fast oge float %5038, 0.000000e+00
  %5042 = fcmp fast oge float %5039, 0.000000e+00
  %5043 = and i1 %5040, %5041
  %5044 = and i1 %5042, %5043
  %5045 = fcmp fast ole float %5037, 1.000000e+00
  %5046 = fcmp fast ole float %5038, 1.000000e+00
  %5047 = fcmp fast ole float %5039, 1.000000e+00
  %5048 = and i1 %5045, %5046
  %5049 = and i1 %5047, %5048
  %5050 = and i1 %5044, %5049
  br i1 %5050, label %5051, label %5083

; <label>:5051                                    ; preds = %5019
  %5052 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5053 = extractvalue %dx.types.CBufRet.i32 %5052, 0
  %5054 = icmp eq i32 %5053, 0
  br i1 %5054, label %5061, label %5055

; <label>:5055                                    ; preds = %5051
  %5056 = add i32 %5053, 0
  %5057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5058 = fsub fast float -0.000000e+00, %5038
  %5059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5057, %dx.types.Handle %108, float %5037, float %5058, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5060 = extractvalue %dx.types.ResRet.f32 %5059, 0
  br label %5061

; <label>:5061                                    ; preds = %5055, %5051
  %5062 = phi float [ %5060, %5055 ], [ 1.000000e+00, %5051 ]
  %5063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.i32 %5063, 0
  %5065 = and i32 %5064, 32
  %5066 = icmp ne i32 %5065, 0
  %5067 = fmul fast float %5062, %4987
  %5068 = select i1 %5066, float %5062, float %5067
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5071 = fmul fast float %5068, %5070
  %5072 = fadd fast float %5071, %5010
  %5073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5074 = extractvalue %dx.types.CBufRet.f32 %5073, 0
  %5075 = fmul fast float %5068, %5074
  %5076 = fadd fast float %5075, %4988
  %5077 = extractvalue %dx.types.CBufRet.f32 %5073, 1
  %5078 = fmul fast float %5068, %5077
  %5079 = fadd fast float %5078, %5012
  %5080 = extractvalue %dx.types.CBufRet.f32 %5073, 2
  %5081 = fmul fast float %5080, %5068
  %5082 = fadd fast float %5081, %5015
  br label %5083

; <label>:5083                                    ; preds = %5061, %5019, %5006, %5001, %4990, %4904
  %5084 = phi float [ %4908, %5001 ], [ %4908, %4904 ], [ %4995, %4990 ], [ %5072, %5061 ], [ %5010, %5019 ], [ %5010, %5006 ]
  %5085 = phi float [ %4988, %5001 ], [ 0.000000e+00, %4904 ], [ %5000, %4990 ], [ %5076, %5061 ], [ %4988, %5019 ], [ %4988, %5006 ]
  %5086 = phi float [ 0.000000e+00, %5001 ], [ 0.000000e+00, %4904 ], [ %4993, %4990 ], [ %5079, %5061 ], [ %5012, %5019 ], [ %5012, %5006 ]
  %5087 = phi float [ 0.000000e+00, %5001 ], [ 0.000000e+00, %4904 ], [ %4999, %4990 ], [ %5082, %5061 ], [ %5015, %5019 ], [ %5015, %5006 ]
  %5088 = call float @dx.op.unary.f32(i32 7, float %5084)  ; Saturate(value)
  %5089 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5092 = fcmp fast une float %5090, 0.000000e+00
  %5093 = fcmp fast une float %5091, 0.000000e+00
  %5094 = or i1 %5092, %5093
  br i1 %5094, label %5095, label %5670

; <label>:5095                                    ; preds = %5083
  br i1 %5092, label %5096, label %5369

; <label>:5096                                    ; preds = %5095
  %5097 = call float @dx.op.unary.f32(i32 23, float %4732)  ; Log(value)
  %5098 = fmul fast float %5097, 4.000000e+00
  %5099 = call float @dx.op.unary.f32(i32 21, float %5098)  ; Exp(value)
  %5100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5101 = extractvalue %dx.types.CBufRet.f32 %5100, 0
  %5102 = fmul fast float %5101, %54
  %5103 = fmul fast float %5101, %55
  %5104 = fmul fast float %5101, %56
  %5105 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5106 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5107 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5108 = call float @dx.op.unary.f32(i32 23, float %5105)  ; Log(value)
  %5109 = call float @dx.op.unary.f32(i32 23, float %5106)  ; Log(value)
  %5110 = call float @dx.op.unary.f32(i32 23, float %5107)  ; Log(value)
  %5111 = fmul fast float %5108, 4.000000e+00
  %5112 = fmul fast float %5109, 4.000000e+00
  %5113 = fmul fast float %5110, 4.000000e+00
  %5114 = call float @dx.op.unary.f32(i32 21, float %5111)  ; Exp(value)
  %5115 = call float @dx.op.unary.f32(i32 21, float %5112)  ; Exp(value)
  %5116 = call float @dx.op.unary.f32(i32 21, float %5113)  ; Exp(value)
  %5117 = fadd fast float %5115, %5114
  %5118 = fadd fast float %5117, %5116
  %5119 = fdiv fast float 1.000000e+00, %5118
  %5120 = fmul fast float %5119, %5114
  %5121 = fcmp fast ogt float %63, 0.000000e+00
  %5122 = fcmp fast ogt float %64, 0.000000e+00
  %5123 = fcmp fast ogt float %65, 0.000000e+00
  %5124 = fcmp fast olt float %63, 0.000000e+00
  %5125 = fcmp fast olt float %64, 0.000000e+00
  %5126 = fcmp fast olt float %65, 0.000000e+00
  %5127 = zext i1 %5121 to i32
  %5128 = zext i1 %5122 to i32
  %5129 = zext i1 %5123 to i32
  %5130 = zext i1 %5124 to i32
  %5131 = zext i1 %5125 to i32
  %5132 = zext i1 %5126 to i32
  %5133 = sub nsw i32 %5127, %5130
  %5134 = sub nsw i32 %5128, %5131
  %5135 = sub nsw i32 %5129, %5132
  %5136 = call float @dx.op.unary.f32(i32 83, float %5102)  ; DerivCoarseX(value)
  %5137 = call float @dx.op.unary.f32(i32 83, float %5103)  ; DerivCoarseX(value)
  %5138 = call float @dx.op.unary.f32(i32 83, float %5104)  ; DerivCoarseX(value)
  %5139 = call float @dx.op.unary.f32(i32 84, float %5102)  ; DerivCoarseY(value)
  %5140 = call float @dx.op.unary.f32(i32 84, float %5103)  ; DerivCoarseY(value)
  %5141 = call float @dx.op.unary.f32(i32 84, float %5104)  ; DerivCoarseY(value)
  %5142 = fcmp fast ole float %307, %5120
  %5143 = fmul fast float %5119, %5117
  %5144 = fcmp fast ole float %307, %5143
  %5145 = select i1 %5144, float %5104, float %5102
  %5146 = select i1 %5144, float %5102, float %5103
  %5147 = select i1 %5142, float %5103, float %5145
  %5148 = select i1 %5142, float %5104, float %5146
  %5149 = select i1 %5144, float %5138, float %5136
  %5150 = select i1 %5144, float %5136, float %5137
  %5151 = select i1 %5142, float %5137, float %5149
  %5152 = select i1 %5142, float %5138, float %5150
  %5153 = select i1 %5144, float %5141, float %5139
  %5154 = select i1 %5144, float %5139, float %5140
  %5155 = select i1 %5142, float %5140, float %5153
  %5156 = select i1 %5142, float %5141, float %5154
  %5157 = call float @dx.op.unary.f32(i32 27, float %5147)  ; Round_ni(value)
  %5158 = call float @dx.op.unary.f32(i32 27, float %5148)  ; Round_ni(value)
  %5159 = fptosi float %5157 to i32
  %5160 = fptosi float %5158 to i32
  %5161 = xor i32 %5160, %5159
  %5162 = sitofp i32 %5161 to float
  %5163 = fptosi float %5162 to i32
  %5164 = sitofp i32 %5163 to float
  %5165 = fmul fast float %5164, 0x3FE3C6EF40000000
  %5166 = frem fast float %5157, 2.560000e+02
  %5167 = frem fast float %5158, 2.560000e+02
  %5168 = fptoui float %5166 to i32
  %5169 = fptoui float %5167 to i32
  %5170 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5168, i32 %5169, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 0
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 1
  %5173 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5174 = fadd fast float %5171, %5165
  %5175 = fadd fast float %5172, %5165
  %5176 = fadd fast float %5173, %5165
  %5177 = call float @dx.op.unary.f32(i32 22, float %5174)  ; Frc(value)
  %5178 = call float @dx.op.unary.f32(i32 22, float %5175)  ; Frc(value)
  %5179 = call float @dx.op.unary.f32(i32 22, float %5176)  ; Frc(value)
  %5180 = fmul fast float %5179, 0x401921FB60000000
  %5181 = call float @dx.op.unary.f32(i32 13, float %5180)  ; Sin(value)
  %5182 = call float @dx.op.unary.f32(i32 12, float %5180)  ; Cos(value)
  %5183 = fsub fast float -0.000000e+00, %5182
  %5184 = fmul fast float %5182, %5147
  %5185 = call float @dx.op.tertiary.f32(i32 46, float %5181, float %5148, float %5184)  ; FMad(a,b,c)
  %5186 = fmul fast float %5181, %5147
  %5187 = call float @dx.op.tertiary.f32(i32 46, float %5183, float %5148, float %5186)  ; FMad(a,b,c)
  %5188 = fadd fast float %5185, %5177
  %5189 = fadd fast float %5187, %5178
  %5190 = extractvalue %dx.types.CBufRet.f32 %5100, 3
  %5191 = bitcast float %5190 to i32
  %5192 = icmp eq i32 %5191, 0
  br i1 %5192, label %5231, label %5193

; <label>:5193                                    ; preds = %5096
  %5194 = add i32 %5191, 0
  %5195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5196 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5195, %dx.types.Handle %108, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float %5151, float %5152, float undef, float %5155, float %5156, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 1
  %5200 = extractvalue %dx.types.CBufRet.f32 %5198, 2
  %5201 = fsub fast float 1.000000e+00, %5090
  %5202 = call float @dx.op.binary.f32(i32 35, float %5201, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5203 = bitcast float %5090 to i32
  %5204 = sitofp i32 %5203 to float
  %5205 = fadd fast float %5204, 0xC1CFBF8940000000
  %5206 = fmul fast float %5200, %5205
  %5207 = fadd fast float %5206, 0x41CFBF8940000000
  %5208 = fptosi float %5207 to i32
  %5209 = bitcast i32 %5208 to float
  %5210 = bitcast float %5202 to i32
  %5211 = sitofp i32 %5210 to float
  %5212 = fadd fast float %5211, 0xC1CFBF8940000000
  %5213 = fmul fast float %5212, %5200
  %5214 = fadd fast float %5213, 0x41CFBF8940000000
  %5215 = fptosi float %5214 to i32
  %5216 = bitcast i32 %5215 to float
  %5217 = fmul fast float %5209, %5199
  %5218 = fmul fast float %5216, %5199
  %5219 = fsub fast float %5202, %5217
  %5220 = fadd fast float %5218, %5202
  %5221 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5222 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5223 = fsub fast float %5197, %5221
  %5224 = fsub fast float %5222, %5221
  %5225 = bitcast float %5224 to i32
  %5226 = sub nsw i32 2129859010, %5225
  %5227 = bitcast i32 %5226 to float
  %5228 = fmul fast float %5227, %5223
  %5229 = call float @dx.op.unary.f32(i32 7, float %5228)  ; Saturate(value)
  %5230 = fcmp fast olt float %5229, 0x3F70101020000000
  br i1 %5230, label %5369, label %5231

; <label>:5231                                    ; preds = %5193, %5096
  %5232 = phi float [ %5229, %5193 ], [ %5090, %5096 ]
  %5233 = fmul fast float %5232, %5099
  %5234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5235 = extractvalue %dx.types.CBufRet.i32 %5234, 1
  %5236 = extractvalue %dx.types.CBufRet.i32 %5234, 0
  %5237 = add i32 %5236, 0
  %5238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5239 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5238, %dx.types.Handle %107, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float %5151, float %5152, float undef, float %5155, float %5156, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5240 = extractvalue %dx.types.ResRet.f32 %5239, 0
  %5241 = extractvalue %dx.types.ResRet.f32 %5239, 1
  %5242 = extractvalue %dx.types.ResRet.f32 %5239, 2
  %5243 = extractvalue %dx.types.ResRet.f32 %5239, 3
  %5244 = and i32 %5235, 255
  %5245 = uitofp i32 %5244 to float
  %5246 = lshr i32 %5235, 8
  %5247 = and i32 %5246, 255
  %5248 = uitofp i32 %5247 to float
  %5249 = fmul fast float %5243, %5245
  %5250 = fadd fast float %5249, %5248
  %5251 = fmul fast float %5250, 0x3F70101000000000
  %5252 = fadd fast float %5251, 0xBFB99999A0000000
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  %5254 = fmul fast float %5253, 0x3FF1C71C80000000
  %5255 = call float @dx.op.binary.f32(i32 36, float %5251, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5256 = fsub fast float 1.000000e+00, %5254
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = fmul fast float %5257, %5240
  %5259 = fmul fast float %5257, %5241
  %5260 = fmul fast float %5257, %5242
  %5261 = call float @dx.op.unary.f32(i32 7, float %5258)  ; Saturate(value)
  %5262 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5263 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5264 = fmul fast float %5254, %5240
  %5265 = fmul fast float %5254, %5241
  %5266 = fmul fast float %5254, %5242
  %5267 = fadd fast float %5264, %5255
  %5268 = fadd fast float %5265, %5255
  %5269 = fadd fast float %5266, %5255
  %5270 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5271 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.i32 %5273, 3
  %5275 = extractvalue %dx.types.CBufRet.i32 %5273, 2
  %5276 = add i32 %5275, 0
  %5277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5278 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5277, %dx.types.Handle %107, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float %5151, float %5152, float undef, float %5155, float %5156, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = extractvalue %dx.types.ResRet.f32 %5278, 2
  %5282 = extractvalue %dx.types.ResRet.f32 %5278, 3
  %5283 = and i32 %5274, 255
  %5284 = uitofp i32 %5283 to float
  %5285 = lshr i32 %5274, 8
  %5286 = and i32 %5285, 255
  %5287 = uitofp i32 %5286 to float
  %5288 = lshr i32 %5274, 16
  %5289 = and i32 %5288, 255
  %5290 = uitofp i32 %5289 to float
  %5291 = fmul fast float %5290, 0x3F70101000000000
  %5292 = fmul fast float %5279, %5284
  %5293 = fadd fast float %5292, %5287
  %5294 = fmul fast float %5293, 0x3F70101000000000
  %5295 = fadd fast float %5280, -5.000000e-01
  %5296 = fadd fast float %5282, -5.000000e-01
  %5297 = fmul fast float %5295, %5291
  %5298 = fmul fast float %5296, %5291
  %5299 = fadd fast float %5297, 5.000000e-01
  %5300 = fadd fast float %5298, 5.000000e-01
  %5301 = fmul fast float %5299, 2.000000e+00
  %5302 = fadd fast float %5301, -1.000000e+00
  %5303 = fmul fast float %5300, 2.000000e+00
  %5304 = fadd fast float %5303, -1.000000e+00
  %5305 = fadd fast float %5302, %5304
  %5306 = fmul fast float %5305, 5.000000e-01
  %5307 = fsub fast float %5302, %5304
  %5308 = fmul fast float %5307, 5.000000e-01
  %5309 = call float @dx.op.unary.f32(i32 6, float %5306)  ; FAbs(value)
  %5310 = fsub fast float 1.000000e+00, %5309
  %5311 = call float @dx.op.unary.f32(i32 6, float %5308)  ; FAbs(value)
  %5312 = fsub fast float %5310, %5311
  %5313 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5308, float %5312, float %5306, float %5308, float %5312)  ; Dot3(ax,ay,az,bx,by,bz)
  %5314 = call float @dx.op.unary.f32(i32 25, float %5313)  ; Rsqrt(value)
  %5315 = fmul fast float %5306, %5314
  %5316 = fmul fast float %5308, %5314
  %5317 = select i1 %5144, i32 %5134, i32 %5135
  %5318 = select i1 %5142, i32 %5133, i32 %5317
  %5319 = sitofp i32 %5318 to float
  %5320 = fmul fast float %5312, %5319
  %5321 = fmul fast float %5320, %5314
  %5322 = select i1 %5144, float %5321, float %5316
  %5323 = select i1 %5144, float %5316, float %5321
  %5324 = select i1 %5142, float %5321, float %5315
  %5325 = select i1 %5142, float %5316, float %5322
  %5326 = select i1 %5142, float %5315, float %5323
  %5327 = fsub fast float %5261, %4818
  %5328 = fsub fast float %5262, %4819
  %5329 = fsub fast float %5263, %4820
  %5330 = fmul fast float %5327, %5233
  %5331 = fmul fast float %5328, %5233
  %5332 = fmul fast float %5329, %5233
  %5333 = fadd fast float %5330, %4818
  %5334 = fadd fast float %5331, %4819
  %5335 = fadd fast float %5332, %4820
  %5336 = fsub fast float %5270, %4778
  %5337 = fsub fast float %5271, %4779
  %5338 = fsub fast float %5272, %4780
  %5339 = fmul fast float %5336, %5233
  %5340 = fmul fast float %5337, %5233
  %5341 = fmul fast float %5338, %5233
  %5342 = fadd fast float %5339, %4778
  %5343 = fadd fast float %5340, %4779
  %5344 = fadd fast float %5341, %4780
  %5345 = fadd fast float %5324, %4714
  %5346 = fadd fast float %5325, %4715
  %5347 = fadd fast float %5326, %4716
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5345, float %5346, float %5347, float %5345, float %5346, float %5347)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = call float @dx.op.unary.f32(i32 25, float %5348)  ; Rsqrt(value)
  %5350 = fmul fast float %5345, %5349
  %5351 = fmul fast float %5346, %5349
  %5352 = fmul fast float %5347, %5349
  %5353 = fsub fast float %5350, %4714
  %5354 = fsub fast float %5351, %4715
  %5355 = fsub fast float %5352, %4716
  %5356 = fmul fast float %5353, %5233
  %5357 = fmul fast float %5354, %5233
  %5358 = fmul fast float %5355, %5233
  %5359 = fadd fast float %5356, %4714
  %5360 = fadd fast float %5357, %4715
  %5361 = fadd fast float %5358, %4716
  %5362 = call float @dx.op.binary.f32(i32 36, float %4732, float %5281)  ; FMin(a,b)
  %5363 = fsub fast float %5362, %4732
  %5364 = fmul fast float %5363, %5233
  %5365 = fadd fast float %5364, %4732
  %5366 = fsub fast float %5294, %4781
  %5367 = fmul fast float %5366, %5233
  %5368 = fadd fast float %5367, %4781
  br label %5369

; <label>:5369                                    ; preds = %5231, %5193, %5095
  %5370 = phi float [ %5342, %5231 ], [ %4778, %5193 ], [ %4778, %5095 ]
  %5371 = phi float [ %5343, %5231 ], [ %4779, %5193 ], [ %4779, %5095 ]
  %5372 = phi float [ %5344, %5231 ], [ %4780, %5193 ], [ %4780, %5095 ]
  %5373 = phi float [ %5333, %5231 ], [ %4818, %5193 ], [ %4818, %5095 ]
  %5374 = phi float [ %5334, %5231 ], [ %4819, %5193 ], [ %4819, %5095 ]
  %5375 = phi float [ %5335, %5231 ], [ %4820, %5193 ], [ %4820, %5095 ]
  %5376 = phi float [ %5359, %5231 ], [ %4714, %5193 ], [ %4714, %5095 ]
  %5377 = phi float [ %5360, %5231 ], [ %4715, %5193 ], [ %4715, %5095 ]
  %5378 = phi float [ %5361, %5231 ], [ %4716, %5193 ], [ %4716, %5095 ]
  %5379 = phi float [ %5368, %5231 ], [ %4781, %5193 ], [ %4781, %5095 ]
  %5380 = phi float [ %5365, %5231 ], [ %4732, %5193 ], [ %4732, %5095 ]
  br i1 %5093, label %5381, label %5670

; <label>:5381                                    ; preds = %5369
  %5382 = call float @dx.op.unary.f32(i32 23, float %5380)  ; Log(value)
  %5383 = fmul fast float %5382, 4.000000e+00
  %5384 = call float @dx.op.unary.f32(i32 21, float %5383)  ; Exp(value)
  %5385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5386 = extractvalue %dx.types.CBufRet.f32 %5385, 0
  %5387 = fmul fast float %5386, %54
  %5388 = fmul fast float %5386, %55
  %5389 = fmul fast float %5386, %56
  %5390 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5391 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5392 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5393 = call float @dx.op.unary.f32(i32 23, float %5390)  ; Log(value)
  %5394 = call float @dx.op.unary.f32(i32 23, float %5391)  ; Log(value)
  %5395 = call float @dx.op.unary.f32(i32 23, float %5392)  ; Log(value)
  %5396 = fmul fast float %5393, 4.000000e+00
  %5397 = fmul fast float %5394, 4.000000e+00
  %5398 = fmul fast float %5395, 4.000000e+00
  %5399 = call float @dx.op.unary.f32(i32 21, float %5396)  ; Exp(value)
  %5400 = call float @dx.op.unary.f32(i32 21, float %5397)  ; Exp(value)
  %5401 = call float @dx.op.unary.f32(i32 21, float %5398)  ; Exp(value)
  %5402 = fadd fast float %5400, %5399
  %5403 = fadd fast float %5402, %5401
  %5404 = fdiv fast float 1.000000e+00, %5403
  %5405 = fmul fast float %5404, %5399
  %5406 = fcmp fast ogt float %63, 0.000000e+00
  %5407 = fcmp fast ogt float %64, 0.000000e+00
  %5408 = fcmp fast ogt float %65, 0.000000e+00
  %5409 = fcmp fast olt float %63, 0.000000e+00
  %5410 = fcmp fast olt float %64, 0.000000e+00
  %5411 = fcmp fast olt float %65, 0.000000e+00
  %5412 = zext i1 %5406 to i32
  %5413 = zext i1 %5407 to i32
  %5414 = zext i1 %5408 to i32
  %5415 = zext i1 %5409 to i32
  %5416 = zext i1 %5410 to i32
  %5417 = zext i1 %5411 to i32
  %5418 = sub nsw i32 %5412, %5415
  %5419 = sub nsw i32 %5413, %5416
  %5420 = sub nsw i32 %5414, %5417
  %5421 = call float @dx.op.unary.f32(i32 83, float %5387)  ; DerivCoarseX(value)
  %5422 = call float @dx.op.unary.f32(i32 83, float %5388)  ; DerivCoarseX(value)
  %5423 = call float @dx.op.unary.f32(i32 83, float %5389)  ; DerivCoarseX(value)
  %5424 = call float @dx.op.unary.f32(i32 84, float %5387)  ; DerivCoarseY(value)
  %5425 = call float @dx.op.unary.f32(i32 84, float %5388)  ; DerivCoarseY(value)
  %5426 = call float @dx.op.unary.f32(i32 84, float %5389)  ; DerivCoarseY(value)
  %5427 = fcmp fast ole float %307, %5405
  %5428 = fmul fast float %5404, %5402
  %5429 = fcmp fast ole float %307, %5428
  %5430 = select i1 %5429, float %5389, float %5387
  %5431 = select i1 %5429, float %5387, float %5388
  %5432 = select i1 %5427, float %5388, float %5430
  %5433 = select i1 %5427, float %5389, float %5431
  %5434 = select i1 %5429, float %5423, float %5421
  %5435 = select i1 %5429, float %5421, float %5422
  %5436 = select i1 %5427, float %5422, float %5434
  %5437 = select i1 %5427, float %5423, float %5435
  %5438 = select i1 %5429, float %5426, float %5424
  %5439 = select i1 %5429, float %5424, float %5425
  %5440 = select i1 %5427, float %5425, float %5438
  %5441 = select i1 %5427, float %5426, float %5439
  %5442 = call float @dx.op.unary.f32(i32 27, float %5432)  ; Round_ni(value)
  %5443 = call float @dx.op.unary.f32(i32 27, float %5433)  ; Round_ni(value)
  %5444 = fptosi float %5442 to i32
  %5445 = fptosi float %5443 to i32
  %5446 = xor i32 %5445, %5444
  %5447 = sitofp i32 %5446 to float
  %5448 = fptosi float %5447 to i32
  %5449 = sitofp i32 %5448 to float
  %5450 = fmul fast float %5449, 0x3FE3C6EF40000000
  %5451 = frem fast float %5442, 2.560000e+02
  %5452 = frem fast float %5443, 2.560000e+02
  %5453 = fptoui float %5451 to i32
  %5454 = fptoui float %5452 to i32
  %5455 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5453, i32 %5454, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.ResRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.ResRet.f32 %5455, 2
  %5459 = fadd fast float %5456, %5450
  %5460 = fadd fast float %5457, %5450
  %5461 = fadd fast float %5458, %5450
  %5462 = call float @dx.op.unary.f32(i32 22, float %5459)  ; Frc(value)
  %5463 = call float @dx.op.unary.f32(i32 22, float %5460)  ; Frc(value)
  %5464 = call float @dx.op.unary.f32(i32 22, float %5461)  ; Frc(value)
  %5465 = fmul fast float %5464, 0x401921FB60000000
  %5466 = call float @dx.op.unary.f32(i32 13, float %5465)  ; Sin(value)
  %5467 = call float @dx.op.unary.f32(i32 12, float %5465)  ; Cos(value)
  %5468 = fsub fast float -0.000000e+00, %5467
  %5469 = fmul fast float %5467, %5432
  %5470 = call float @dx.op.tertiary.f32(i32 46, float %5466, float %5433, float %5469)  ; FMad(a,b,c)
  %5471 = fmul fast float %5466, %5432
  %5472 = call float @dx.op.tertiary.f32(i32 46, float %5468, float %5433, float %5471)  ; FMad(a,b,c)
  %5473 = fadd fast float %5470, %5462
  %5474 = fadd fast float %5472, %5463
  %5475 = extractvalue %dx.types.CBufRet.f32 %5385, 3
  %5476 = bitcast float %5475 to i32
  %5477 = icmp eq i32 %5476, 0
  br i1 %5477, label %5516, label %5478

; <label>:5478                                    ; preds = %5381
  %5479 = add i32 %5476, 0
  %5480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5481 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5480, %dx.types.Handle %108, float %5473, float %5474, float undef, float undef, i32 0, i32 0, i32 undef, float %5436, float %5437, float undef, float %5440, float %5441, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 0
  %5483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5484 = extractvalue %dx.types.CBufRet.f32 %5483, 1
  %5485 = extractvalue %dx.types.CBufRet.f32 %5483, 2
  %5486 = fsub fast float 1.000000e+00, %5091
  %5487 = call float @dx.op.binary.f32(i32 35, float %5486, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5488 = bitcast float %5091 to i32
  %5489 = sitofp i32 %5488 to float
  %5490 = fadd fast float %5489, 0xC1CFBF8940000000
  %5491 = fmul fast float %5485, %5490
  %5492 = fadd fast float %5491, 0x41CFBF8940000000
  %5493 = fptosi float %5492 to i32
  %5494 = bitcast i32 %5493 to float
  %5495 = bitcast float %5487 to i32
  %5496 = sitofp i32 %5495 to float
  %5497 = fadd fast float %5496, 0xC1CFBF8940000000
  %5498 = fmul fast float %5497, %5485
  %5499 = fadd fast float %5498, 0x41CFBF8940000000
  %5500 = fptosi float %5499 to i32
  %5501 = bitcast i32 %5500 to float
  %5502 = fmul fast float %5494, %5484
  %5503 = fmul fast float %5501, %5484
  %5504 = fsub fast float %5487, %5502
  %5505 = fadd fast float %5503, %5487
  %5506 = call float @dx.op.unary.f32(i32 7, float %5504)  ; Saturate(value)
  %5507 = call float @dx.op.unary.f32(i32 7, float %5505)  ; Saturate(value)
  %5508 = fsub fast float %5482, %5506
  %5509 = fsub fast float %5507, %5506
  %5510 = bitcast float %5509 to i32
  %5511 = sub nsw i32 2129859010, %5510
  %5512 = bitcast i32 %5511 to float
  %5513 = fmul fast float %5512, %5508
  %5514 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5515 = fcmp fast olt float %5514, 0x3F70101020000000
  br i1 %5515, label %5670, label %5516

; <label>:5516                                    ; preds = %5478, %5381
  %5517 = phi float [ %5514, %5478 ], [ %5091, %5381 ]
  %5518 = fmul fast float %5517, %5384
  %5519 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5520 = extractvalue %dx.types.CBufRet.i32 %5519, 1
  %5521 = extractvalue %dx.types.CBufRet.i32 %5519, 0
  %5522 = add i32 %5521, 0
  %5523 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5522, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5524 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5523, %dx.types.Handle %107, float %5473, float %5474, float undef, float undef, i32 0, i32 0, i32 undef, float %5436, float %5437, float undef, float %5440, float %5441, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.ResRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.ResRet.f32 %5524, 2
  %5528 = extractvalue %dx.types.ResRet.f32 %5524, 3
  %5529 = and i32 %5520, 255
  %5530 = uitofp i32 %5529 to float
  %5531 = lshr i32 %5520, 8
  %5532 = and i32 %5531, 255
  %5533 = uitofp i32 %5532 to float
  %5534 = fmul fast float %5528, %5530
  %5535 = fadd fast float %5534, %5533
  %5536 = fmul fast float %5535, 0x3F70101000000000
  %5537 = fadd fast float %5536, 0xBFB99999A0000000
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %5538, 0x3FF1C71C80000000
  %5540 = call float @dx.op.binary.f32(i32 36, float %5536, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5541 = fsub fast float 1.000000e+00, %5539
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5543 = fmul fast float %5542, %5525
  %5544 = fmul fast float %5542, %5526
  %5545 = fmul fast float %5542, %5527
  %5546 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5547 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  %5548 = call float @dx.op.unary.f32(i32 7, float %5545)  ; Saturate(value)
  %5549 = fmul fast float %5539, %5525
  %5550 = fmul fast float %5539, %5526
  %5551 = fmul fast float %5539, %5527
  %5552 = fadd fast float %5549, %5540
  %5553 = fadd fast float %5550, %5540
  %5554 = fadd fast float %5551, %5540
  %5555 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5556 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5557 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.i32 %5558, 3
  %5560 = extractvalue %dx.types.CBufRet.i32 %5558, 2
  %5561 = add i32 %5560, 0
  %5562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5563 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5562, %dx.types.Handle %107, float %5473, float %5474, float undef, float undef, i32 0, i32 0, i32 undef, float %5436, float %5437, float undef, float %5440, float %5441, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5564 = extractvalue %dx.types.ResRet.f32 %5563, 0
  %5565 = extractvalue %dx.types.ResRet.f32 %5563, 1
  %5566 = extractvalue %dx.types.ResRet.f32 %5563, 2
  %5567 = extractvalue %dx.types.ResRet.f32 %5563, 3
  %5568 = and i32 %5559, 255
  %5569 = uitofp i32 %5568 to float
  %5570 = lshr i32 %5559, 8
  %5571 = and i32 %5570, 255
  %5572 = uitofp i32 %5571 to float
  %5573 = lshr i32 %5559, 16
  %5574 = and i32 %5573, 255
  %5575 = uitofp i32 %5574 to float
  %5576 = fmul fast float %5575, 0x3F70101000000000
  %5577 = fmul fast float %5564, %5569
  %5578 = fadd fast float %5577, %5572
  %5579 = fmul fast float %5578, 0x3F70101000000000
  %5580 = fadd fast float %5565, -5.000000e-01
  %5581 = fadd fast float %5567, -5.000000e-01
  %5582 = fmul fast float %5580, %5576
  %5583 = fmul fast float %5581, %5576
  %5584 = fadd fast float %5582, 5.000000e-01
  %5585 = fadd fast float %5583, 5.000000e-01
  %5586 = fmul fast float %5584, 2.000000e+00
  %5587 = fadd fast float %5586, -1.000000e+00
  %5588 = fmul fast float %5585, 2.000000e+00
  %5589 = fadd fast float %5588, -1.000000e+00
  %5590 = fadd fast float %5587, %5589
  %5591 = fmul fast float %5590, 5.000000e-01
  %5592 = fsub fast float %5587, %5589
  %5593 = fmul fast float %5592, 5.000000e-01
  %5594 = call float @dx.op.unary.f32(i32 6, float %5591)  ; FAbs(value)
  %5595 = fsub fast float 1.000000e+00, %5594
  %5596 = call float @dx.op.unary.f32(i32 6, float %5593)  ; FAbs(value)
  %5597 = fsub fast float %5595, %5596
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5593, float %5597, float %5591, float %5593, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = call float @dx.op.unary.f32(i32 25, float %5598)  ; Rsqrt(value)
  %5600 = fmul fast float %5591, %5599
  %5601 = fmul fast float %5593, %5599
  %5602 = select i1 %5429, i32 %5419, i32 %5420
  %5603 = select i1 %5427, i32 %5418, i32 %5602
  %5604 = sitofp i32 %5603 to float
  %5605 = fmul fast float %5597, %5604
  %5606 = fmul fast float %5605, %5599
  %5607 = select i1 %5429, float %5606, float %5601
  %5608 = select i1 %5429, float %5601, float %5606
  %5609 = select i1 %5427, float %5606, float %5600
  %5610 = select i1 %5427, float %5601, float %5607
  %5611 = select i1 %5427, float %5600, float %5608
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5614 = fptoui float %5613 to i32
  %5615 = add i32 %5614, 0
  %5616 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5615, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5617 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5616, %dx.types.Handle %107, float %5473, float %5474, float undef, float undef, i32 0, i32 0, i32 undef, float %5436, float %5437, float undef, float %5440, float %5441, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5618 = extractvalue %dx.types.ResRet.f32 %5617, 0
  %5619 = fsub fast float %5546, %5373
  %5620 = fsub fast float %5547, %5374
  %5621 = fsub fast float %5548, %5375
  %5622 = fmul fast float %5619, %5518
  %5623 = fmul fast float %5620, %5518
  %5624 = fmul fast float %5621, %5518
  %5625 = fadd fast float %5622, %5373
  %5626 = fadd fast float %5623, %5374
  %5627 = fadd fast float %5624, %5375
  %5628 = fsub fast float %5555, %5370
  %5629 = fsub fast float %5556, %5371
  %5630 = fsub fast float %5557, %5372
  %5631 = fmul fast float %5628, %5518
  %5632 = fmul fast float %5629, %5518
  %5633 = fmul fast float %5630, %5518
  %5634 = fadd fast float %5631, %5370
  %5635 = fadd fast float %5632, %5371
  %5636 = fadd fast float %5633, %5372
  %5637 = fadd fast float %5609, %5376
  %5638 = fadd fast float %5610, %5377
  %5639 = fadd fast float %5611, %5378
  %5640 = call float @dx.op.dot3.f32(i32 55, float %5637, float %5638, float %5639, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = call float @dx.op.unary.f32(i32 25, float %5640)  ; Rsqrt(value)
  %5642 = fmul fast float %5641, %5637
  %5643 = fmul fast float %5641, %5638
  %5644 = fmul fast float %5641, %5639
  %5645 = fsub fast float %5642, %5376
  %5646 = fsub fast float %5643, %5377
  %5647 = fsub fast float %5644, %5378
  %5648 = fmul fast float %5645, %5518
  %5649 = fmul fast float %5646, %5518
  %5650 = fmul fast float %5647, %5518
  %5651 = fadd fast float %5648, %5376
  %5652 = fadd fast float %5649, %5377
  %5653 = fadd fast float %5650, %5378
  %5654 = call float @dx.op.binary.f32(i32 36, float %5380, float %5566)  ; FMin(a,b)
  %5655 = fsub fast float %5654, %5380
  %5656 = fmul fast float %5655, %5518
  %5657 = fadd fast float %5656, %5380
  %5658 = fsub fast float %5579, %5379
  %5659 = fmul fast float %5658, %5518
  %5660 = fadd fast float %5659, %5379
  %5661 = fsub fast float %5618, %4822
  %5662 = fsub fast float %5618, %4823
  %5663 = fsub fast float %5618, %4824
  %5664 = fmul fast float %5661, %5518
  %5665 = fmul fast float %5662, %5518
  %5666 = fmul fast float %5663, %5518
  %5667 = fadd fast float %5664, %4822
  %5668 = fadd fast float %5665, %4823
  %5669 = fadd fast float %5666, %4824
  br label %5670

; <label>:5670                                    ; preds = %5516, %5478, %5369, %5083
  %5671 = phi float [ %5634, %5516 ], [ %5370, %5478 ], [ %5370, %5369 ], [ %4778, %5083 ]
  %5672 = phi float [ %5635, %5516 ], [ %5371, %5478 ], [ %5371, %5369 ], [ %4779, %5083 ]
  %5673 = phi float [ %5636, %5516 ], [ %5372, %5478 ], [ %5372, %5369 ], [ %4780, %5083 ]
  %5674 = phi float [ %5625, %5516 ], [ %5373, %5478 ], [ %5373, %5369 ], [ %4818, %5083 ]
  %5675 = phi float [ %5626, %5516 ], [ %5374, %5478 ], [ %5374, %5369 ], [ %4819, %5083 ]
  %5676 = phi float [ %5627, %5516 ], [ %5375, %5478 ], [ %5375, %5369 ], [ %4820, %5083 ]
  %5677 = phi float [ %5651, %5516 ], [ %5376, %5478 ], [ %5376, %5369 ], [ %4714, %5083 ]
  %5678 = phi float [ %5652, %5516 ], [ %5377, %5478 ], [ %5377, %5369 ], [ %4715, %5083 ]
  %5679 = phi float [ %5653, %5516 ], [ %5378, %5478 ], [ %5378, %5369 ], [ %4716, %5083 ]
  %5680 = phi float [ %5667, %5516 ], [ %4822, %5478 ], [ %4822, %5369 ], [ %4822, %5083 ]
  %5681 = phi float [ %5668, %5516 ], [ %4823, %5478 ], [ %4823, %5369 ], [ %4823, %5083 ]
  %5682 = phi float [ %5669, %5516 ], [ %4824, %5478 ], [ %4824, %5369 ], [ %4824, %5083 ]
  %5683 = phi float [ %5660, %5516 ], [ %5379, %5478 ], [ %5379, %5369 ], [ %4781, %5083 ]
  %5684 = phi float [ %5657, %5516 ], [ %5380, %5478 ], [ %5380, %5369 ], [ %4732, %5083 ]
  %5685 = fcmp fast une float %5088, 0.000000e+00
  %5686 = fsub fast float -0.000000e+00, %223
  %5687 = fsub fast float -0.000000e+00, %224
  %5688 = fsub fast float -0.000000e+00, %225
  br i1 %5685, label %5689, label %6043

; <label>:5689                                    ; preds = %5670
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5686, float %5687, float %5688, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5692 = fmul fast float %5088, 2.500000e+00
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = fmul fast float %5088, 0x4013FFFFE0000000
  %5695 = fadd fast float %5694, 0xBFFFFFFFE0000000
  %5696 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5697 = fmul fast float %5088, 0x4004000020000000
  %5698 = fadd fast float %5697, 0xBFF8000040000000
  %5699 = call float @dx.op.unary.f32(i32 7, float %5698)  ; Saturate(value)
  %5700 = fmul fast float %4760, 1.000000e+01
  %5701 = call float @dx.op.unary.f32(i32 7, float %5700)  ; Saturate(value)
  %5702 = fmul fast float %5701, 2.000000e+00
  %5703 = fsub fast float 3.000000e+00, %5702
  %5704 = fmul fast float %5701, %5701
  %5705 = fmul fast float %5704, %5703
  %5706 = fsub fast float 1.000000e+00, %5705
  %5707 = fsub fast float 0x3FE3333340000000, %5683
  %5708 = fmul fast float %5707, 0x400AAAAAA0000000
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = fmul fast float %5706, %5709
  %5711 = fmul fast float %5674, 0x3FEA2B8620000000
  %5712 = fmul fast float %5675, 0x3FEA2B8620000000
  %5713 = fmul fast float %5676, 0x3FEA2B8620000000
  %5714 = fadd fast float %5711, 0x3FC81DFBA0000000
  %5715 = fmul fast float %5714, %5674
  %5716 = fadd fast float %5715, 0x3F910E6020000000
  %5717 = fadd fast float %5712, 0x3FC81DFBA0000000
  %5718 = fmul fast float %5717, %5675
  %5719 = fadd fast float %5718, 0x3F910E6020000000
  %5720 = fadd fast float %5713, 0x3FC81DFBA0000000
  %5721 = fmul fast float %5720, %5676
  %5722 = fadd fast float %5721, 0x3F910E6020000000
  %5723 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5724 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5725 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5726 = fsub fast float %5723, %5674
  %5727 = fsub fast float %5724, %5675
  %5728 = fsub fast float %5725, %5676
  %5729 = fmul fast float %5726, %5693
  %5730 = fmul fast float %5729, %5710
  %5731 = fmul fast float %5727, %5693
  %5732 = fmul fast float %5731, %5710
  %5733 = fmul fast float %5728, %5693
  %5734 = fmul fast float %5733, %5710
  %5735 = fadd fast float %5730, %5674
  %5736 = fadd fast float %5732, %5675
  %5737 = fadd fast float %5734, %5676
  %5738 = fmul fast float %5684, %5684
  %5739 = fmul fast float %5738, %5738
  %5740 = fadd fast float %5696, 1.000000e+00
  %5741 = fsub fast float %5740, %5710
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.unary.f32(i32 7, float %5743)  ; Saturate(value)
  %5745 = fsub fast float 1.000000e+00, %5739
  %5746 = call float @dx.op.binary.f32(i32 36, float %5742, float %5745)  ; FMin(a,b)
  %5747 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5748 = call float @dx.op.binary.f32(i32 35, float %5746, float %5747)  ; FMax(a,b)
  %5749 = fadd fast float %5744, 0xBFE4CCCCC0000000
  %5750 = fmul fast float %5749, 0x4006DB6DA0000000
  %5751 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5752 = fmul fast float %5751, 2.000000e+00
  %5753 = fsub fast float 3.000000e+00, %5752
  %5754 = bitcast float %5671 to i32
  %5755 = ashr i32 %5754, 1
  %5756 = add nsw i32 %5755, 532487669
  %5757 = bitcast i32 %5756 to float
  %5758 = fsub fast float 1.000000e+00, %5757
  %5759 = bitcast float %5758 to i32
  %5760 = sub nsw i32 2129859010, %5759
  %5761 = bitcast i32 %5760 to float
  %5762 = fmul fast float %5761, 2.000000e+00
  %5763 = bitcast float %5672 to i32
  %5764 = ashr i32 %5763, 1
  %5765 = add nsw i32 %5764, 532487669
  %5766 = bitcast i32 %5765 to float
  %5767 = fsub fast float 1.000000e+00, %5766
  %5768 = bitcast float %5767 to i32
  %5769 = sub nsw i32 2129859010, %5768
  %5770 = bitcast i32 %5769 to float
  %5771 = fmul fast float %5770, 2.000000e+00
  %5772 = bitcast float %5673 to i32
  %5773 = ashr i32 %5772, 1
  %5774 = add nsw i32 %5773, 532487669
  %5775 = bitcast i32 %5774 to float
  %5776 = fsub fast float 1.000000e+00, %5775
  %5777 = bitcast float %5776 to i32
  %5778 = sub nsw i32 2129859010, %5777
  %5779 = bitcast i32 %5778 to float
  %5780 = fmul fast float %5779, 2.000000e+00
  %5781 = fsub fast float 0x4002A9FBE0000000, %5762
  %5782 = fadd fast float %5762, 0x3FD54FDF00000000
  %5783 = bitcast float %5782 to i32
  %5784 = sub nsw i32 2129859010, %5783
  %5785 = bitcast i32 %5784 to float
  %5786 = fmul fast float %5785, %5781
  %5787 = fmul fast float %5786, %5786
  %5788 = fsub fast float 0x4002A9FBE0000000, %5771
  %5789 = fadd fast float %5771, 0x3FD54FDF00000000
  %5790 = bitcast float %5789 to i32
  %5791 = sub nsw i32 2129859010, %5790
  %5792 = bitcast i32 %5791 to float
  %5793 = fmul fast float %5792, %5788
  %5794 = fmul fast float %5793, %5793
  %5795 = fsub fast float 0x4002A9FBE0000000, %5780
  %5796 = fadd fast float %5780, 0x3FD54FDF00000000
  %5797 = bitcast float %5796 to i32
  %5798 = sub nsw i32 2129859010, %5797
  %5799 = bitcast i32 %5798 to float
  %5800 = fmul fast float %5799, %5795
  %5801 = fmul fast float %5800, %5800
  %5802 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5787)  ; FMax(a,b)
  %5803 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5794)  ; FMax(a,b)
  %5804 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5801)  ; FMax(a,b)
  %5805 = fsub fast float 1.000000e+00, %5690
  %5806 = fadd fast float %5805, %5706
  %5807 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5808 = fsub fast float 1.000000e+00, %4907
  %5809 = fmul fast float %5748, %5808
  %5810 = fmul fast float %5751, %5751
  %5811 = fmul fast float %5810, %5809
  %5812 = fmul fast float %5811, %5753
  %5813 = fmul fast float %5808, 0xBFE99999A0000000
  %5814 = fmul fast float %5813, %5693
  %5815 = fmul fast float %5814, %5710
  %5816 = fadd fast float %5815, 1.000000e+00
  %5817 = fadd fast float %5683, -1.000000e+00
  %5818 = fmul fast float %5816, %5817
  %5819 = fadd fast float %5818, 1.000000e+00
  %5820 = fsub fast float %5802, %5671
  %5821 = fsub fast float %5803, %5672
  %5822 = fsub fast float %5804, %5673
  %5823 = fmul fast float %5812, %5820
  %5824 = fmul fast float %5812, %5821
  %5825 = fmul fast float %5812, %5822
  %5826 = fadd fast float %5823, %5671
  %5827 = fadd fast float %5824, %5672
  %5828 = fadd fast float %5825, %5673
  %5829 = fsub fast float %118, %5677
  %5830 = fsub fast float %119, %5678
  %5831 = fsub fast float %120, %5679
  %5832 = fmul fast float %5812, %5829
  %5833 = fmul fast float %5812, %5830
  %5834 = fmul fast float %5812, %5831
  %5835 = fadd fast float %5832, %5677
  %5836 = fadd fast float %5833, %5678
  %5837 = fadd fast float %5834, %5679
  %5838 = fmul fast float %5812, %5807
  %5839 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5840 = fsub fast float 1.000000e+00, %5839
  %5841 = fmul fast float %5838, %5840
  %5842 = fadd fast float %5841, %5839
  %5843 = fsub fast float 1.000000e+00, %5684
  %5844 = fmul fast float %5812, %5843
  %5845 = fadd fast float %5844, %5684
  %5846 = fcmp fast une float %5089, 0.000000e+00
  %5847 = fcmp fast ogt float %5744, 0x3FE4CCCCC0000000
  %5848 = and i1 %5846, %5847
  br i1 %5848, label %5849, label %6035

; <label>:5849                                    ; preds = %5689
  %5850 = extractvalue %dx.types.CBufRet.f32 %5691, 1
  %5851 = fadd fast float %5850, %191
  %5852 = extractvalue %dx.types.CBufRet.f32 %5691, 0
  %5853 = fadd fast float %5852, %190
  %5854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5855 = extractvalue %dx.types.CBufRet.f32 %5854, 3
  %5856 = fadd fast float %5855, 0x3FC0A3D700000000
  %5857 = fmul fast float %5856, 0x3FF6666660000000
  %5858 = fmul fast float %5855, 0x3FF2978D40000000
  %5859 = fmul fast float %5855, 0x3FF5BA5E40000000
  %5860 = fmul fast float %5855, 0x3FF94FDF40000000
  %5861 = call float @dx.op.unary.f32(i32 6, float %5853)  ; FAbs(value)
  %5862 = call float @dx.op.unary.f32(i32 6, float %5851)  ; FAbs(value)
  %5863 = fmul fast float %5861, 0x3F8EB851E0000000
  %5864 = fmul fast float %5862, 0x3F8EB851E0000000
  %5865 = fmul fast float %5089, 4.000000e+00
  %5866 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5867 = fadd fast float %5863, 2.500000e-01
  %5868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5867, float %5864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5869 = extractvalue %dx.types.ResRet.f32 %5868, 0
  %5870 = extractvalue %dx.types.ResRet.f32 %5868, 1
  %5871 = extractvalue %dx.types.ResRet.f32 %5868, 2
  %5872 = extractvalue %dx.types.ResRet.f32 %5868, 3
  %5873 = fmul fast float %5870, 2.000000e+00
  %5874 = fmul fast float %5871, 2.000000e+00
  %5875 = fadd fast float %5873, -1.000000e+00
  %5876 = fadd fast float %5874, -1.000000e+00
  %5877 = fsub fast float 1.000000e+00, %5866
  %5878 = fmul fast float %5877, 8.000000e+00
  %5879 = call float @dx.op.unary.f32(i32 21, float %5878)  ; Exp(value)
  %5880 = fmul fast float %5872, %5879
  %5881 = fadd fast float %5857, -1.000000e+00
  %5882 = fadd fast float %5881, %5872
  %5883 = fadd fast float %5882, %5880
  %5884 = frem fast float %5883, %5879
  %5885 = fcmp fast ole float %5884, 1.000000e+00
  %5886 = call float @dx.op.unary.f32(i32 22, float %5884)  ; Frc(value)
  %5887 = select i1 %5885, float %5886, float 0.000000e+00
  %5888 = fadd fast float %5869, -1.000000e+00
  %5889 = fadd fast float %5888, %5887
  %5890 = fsub fast float 1.000000e+00, %5887
  %5891 = call float @dx.op.unary.f32(i32 7, float %5890)  ; Saturate(value)
  %5892 = fmul fast float %5891, %5869
  %5893 = fmul fast float %5889, 8.000000e+00
  %5894 = call float @dx.op.binary.f32(i32 35, float %5893, float 0.000000e+00)  ; FMax(a,b)
  %5895 = call float @dx.op.binary.f32(i32 36, float %5894, float 4.000000e+00)  ; FMin(a,b)
  %5896 = fmul fast float %5895, 0x400921FB60000000
  %5897 = call float @dx.op.unary.f32(i32 13, float %5896)  ; Sin(value)
  %5898 = fadd fast float %5887, -1.000000e+00
  %5899 = fmul fast float %5892, %5898
  %5900 = fmul fast float %5899, %5897
  %5901 = fmul fast float %5900, %5875
  %5902 = fmul fast float %5900, %5876
  %5903 = fadd fast float %5865, -1.000000e+00
  %5904 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5905 = fadd fast float %5863, 0xBFE19999A0000000
  %5906 = fadd fast float %5864, 0x3FD3D70A40000000
  %5907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5905, float %5906, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5908 = extractvalue %dx.types.ResRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.ResRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.ResRet.f32 %5907, 2
  %5911 = extractvalue %dx.types.ResRet.f32 %5907, 3
  %5912 = fmul fast float %5909, 2.000000e+00
  %5913 = fmul fast float %5910, 2.000000e+00
  %5914 = fadd fast float %5912, -1.000000e+00
  %5915 = fadd fast float %5913, -1.000000e+00
  %5916 = fsub fast float 1.000000e+00, %5904
  %5917 = fmul fast float %5916, 8.000000e+00
  %5918 = call float @dx.op.unary.f32(i32 21, float %5917)  ; Exp(value)
  %5919 = fmul fast float %5911, %5918
  %5920 = fadd fast float %5858, 0xBFE5B22D00000000
  %5921 = fadd fast float %5920, %5911
  %5922 = fadd fast float %5921, %5919
  %5923 = frem fast float %5922, %5918
  %5924 = fcmp fast ole float %5923, 1.000000e+00
  %5925 = call float @dx.op.unary.f32(i32 22, float %5923)  ; Frc(value)
  %5926 = select i1 %5924, float %5925, float 0.000000e+00
  %5927 = fadd fast float %5908, -1.000000e+00
  %5928 = fadd fast float %5927, %5926
  %5929 = fsub fast float 1.000000e+00, %5926
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = fmul fast float %5930, %5908
  %5932 = fmul fast float %5928, 8.000000e+00
  %5933 = call float @dx.op.binary.f32(i32 35, float %5932, float 0.000000e+00)  ; FMax(a,b)
  %5934 = call float @dx.op.binary.f32(i32 36, float %5933, float 4.000000e+00)  ; FMin(a,b)
  %5935 = fmul fast float %5934, 0x400921FB60000000
  %5936 = call float @dx.op.unary.f32(i32 13, float %5935)  ; Sin(value)
  %5937 = fadd fast float %5926, -1.000000e+00
  %5938 = fmul fast float %5931, %5937
  %5939 = fmul fast float %5938, %5936
  %5940 = fmul fast float %5939, %5914
  %5941 = fmul fast float %5939, %5915
  %5942 = fadd fast float %5865, -2.000000e+00
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  %5944 = fadd fast float %5863, 0x3FE3333340000000
  %5945 = fadd fast float %5864, 0x3FEB333340000000
  %5946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5944, float %5945, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5947 = extractvalue %dx.types.ResRet.f32 %5946, 0
  %5948 = extractvalue %dx.types.ResRet.f32 %5946, 1
  %5949 = extractvalue %dx.types.ResRet.f32 %5946, 2
  %5950 = extractvalue %dx.types.ResRet.f32 %5946, 3
  %5951 = fmul fast float %5948, 2.000000e+00
  %5952 = fmul fast float %5949, 2.000000e+00
  %5953 = fadd fast float %5951, -1.000000e+00
  %5954 = fadd fast float %5952, -1.000000e+00
  %5955 = fsub fast float 1.000000e+00, %5943
  %5956 = fmul fast float %5955, 8.000000e+00
  %5957 = call float @dx.op.unary.f32(i32 21, float %5956)  ; Exp(value)
  %5958 = fmul fast float %5950, %5957
  %5959 = fadd fast float %5859, 0xBFD5E35400000000
  %5960 = fadd fast float %5959, %5950
  %5961 = fadd fast float %5960, %5958
  %5962 = frem fast float %5961, %5957
  %5963 = fcmp fast ole float %5962, 1.000000e+00
  %5964 = call float @dx.op.unary.f32(i32 22, float %5962)  ; Frc(value)
  %5965 = select i1 %5963, float %5964, float 0.000000e+00
  %5966 = fadd fast float %5947, -1.000000e+00
  %5967 = fadd fast float %5966, %5965
  %5968 = fsub fast float 1.000000e+00, %5965
  %5969 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  %5970 = fmul fast float %5969, %5947
  %5971 = fmul fast float %5967, 8.000000e+00
  %5972 = call float @dx.op.binary.f32(i32 35, float %5971, float 0.000000e+00)  ; FMax(a,b)
  %5973 = call float @dx.op.binary.f32(i32 36, float %5972, float 4.000000e+00)  ; FMin(a,b)
  %5974 = fmul fast float %5973, 0x400921FB60000000
  %5975 = call float @dx.op.unary.f32(i32 13, float %5974)  ; Sin(value)
  %5976 = fadd fast float %5965, -1.000000e+00
  %5977 = fmul fast float %5970, %5976
  %5978 = fmul fast float %5977, %5975
  %5979 = fmul fast float %5978, %5953
  %5980 = fmul fast float %5978, %5954
  %5981 = fadd fast float %5865, -3.000000e+00
  %5982 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  %5983 = fadd fast float %5863, 5.000000e-01
  %5984 = fadd fast float %5864, -7.500000e-01
  %5985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5983, float %5984, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5986 = extractvalue %dx.types.ResRet.f32 %5985, 0
  %5987 = extractvalue %dx.types.ResRet.f32 %5985, 1
  %5988 = extractvalue %dx.types.ResRet.f32 %5985, 2
  %5989 = extractvalue %dx.types.ResRet.f32 %5985, 3
  %5990 = fmul fast float %5987, 2.000000e+00
  %5991 = fmul fast float %5988, 2.000000e+00
  %5992 = fadd fast float %5990, -1.000000e+00
  %5993 = fadd fast float %5991, -1.000000e+00
  %5994 = fsub fast float 1.000000e+00, %5982
  %5995 = fmul fast float %5994, 8.000000e+00
  %5996 = call float @dx.op.unary.f32(i32 21, float %5995)  ; Exp(value)
  %5997 = fmul fast float %5989, %5996
  %5998 = fadd fast float %5860, 0xBF78938000000000
  %5999 = fadd fast float %5998, %5989
  %6000 = fadd fast float %5999, %5997
  %6001 = frem fast float %6000, %5996
  %6002 = fcmp fast ole float %6001, 1.000000e+00
  %6003 = call float @dx.op.unary.f32(i32 22, float %6001)  ; Frc(value)
  %6004 = select i1 %6002, float %6003, float 0.000000e+00
  %6005 = fadd fast float %5986, -1.000000e+00
  %6006 = fadd fast float %6005, %6004
  %6007 = fsub fast float 1.000000e+00, %6004
  %6008 = call float @dx.op.unary.f32(i32 7, float %6007)  ; Saturate(value)
  %6009 = fmul fast float %6008, %5986
  %6010 = fmul fast float %6006, 8.000000e+00
  %6011 = call float @dx.op.binary.f32(i32 35, float %6010, float 0.000000e+00)  ; FMax(a,b)
  %6012 = call float @dx.op.binary.f32(i32 36, float %6011, float 4.000000e+00)  ; FMin(a,b)
  %6013 = fmul fast float %6012, 0x400921FB60000000
  %6014 = call float @dx.op.unary.f32(i32 13, float %6013)  ; Sin(value)
  %6015 = fadd fast float %6004, -1.000000e+00
  %6016 = fmul fast float %6009, %6015
  %6017 = fmul fast float %6016, %6014
  %6018 = fmul fast float %6017, %5992
  %6019 = fmul fast float %6017, %5993
  %6020 = fadd fast float %5940, %5901
  %6021 = fadd fast float %5941, %5902
  %6022 = fadd fast float %6020, %5979
  %6023 = fadd fast float %6021, %5980
  %6024 = fadd fast float %6022, %6018
  %6025 = fadd fast float %6023, %6019
  %6026 = fmul fast float %5744, 0x4006DB6DA0000000
  %6027 = fadd fast float %6026, 0xBFFDB6DB40000000
  %6028 = call float @dx.op.unary.f32(i32 7, float %6027)  ; Saturate(value)
  %6029 = fmul fast float %6028, %5693
  %6030 = fmul fast float %6029, %5808
  %6031 = fmul fast float %6030, %6024
  %6032 = fmul fast float %6030, %6025
  %6033 = fadd fast float %6031, %5835
  %6034 = fadd fast float %6032, %5836
  br label %6035

; <label>:6035                                    ; preds = %5849, %5689
  %6036 = phi float [ %5835, %5689 ], [ %6033, %5849 ]
  %6037 = phi float [ %5836, %5689 ], [ %6034, %5849 ]
  %6038 = call float @dx.op.dot3.f32(i32 55, float %6036, float %6037, float %5837, float %6036, float %6037, float %5837)  ; Dot3(ax,ay,az,bx,by,bz)
  %6039 = call float @dx.op.unary.f32(i32 25, float %6038)  ; Rsqrt(value)
  %6040 = fmul fast float %6039, %6036
  %6041 = fmul fast float %6039, %6037
  %6042 = fmul fast float %6039, %5837
  br label %6043

; <label>:6043                                    ; preds = %6035, %5670
  %6044 = phi float [ %5826, %6035 ], [ %5671, %5670 ]
  %6045 = phi float [ %5827, %6035 ], [ %5672, %5670 ]
  %6046 = phi float [ %5828, %6035 ], [ %5673, %5670 ]
  %6047 = phi float [ %5735, %6035 ], [ %5674, %5670 ]
  %6048 = phi float [ %5736, %6035 ], [ %5675, %5670 ]
  %6049 = phi float [ %5737, %6035 ], [ %5676, %5670 ]
  %6050 = phi float [ %6040, %6035 ], [ %5677, %5670 ]
  %6051 = phi float [ %6041, %6035 ], [ %5678, %5670 ]
  %6052 = phi float [ %6042, %6035 ], [ %5679, %5670 ]
  %6053 = phi float [ %5842, %6035 ], [ %5683, %5670 ]
  %6054 = phi float [ %5845, %6035 ], [ %5684, %5670 ]
  %6055 = select i1 %296, float 0.000000e+00, float %6046
  %6056 = call float @dx.op.dot3.f32(i32 55, float %6050, float %6051, float %6052, float %5686, float %5687, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %6057 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6058 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %6050, float %6051, float %6052)  ; Dot3(ax,ay,az,bx,by,bz)
  %6059 = fmul fast float %6058, 2.000000e+00
  %6060 = fmul fast float %6059, %6050
  %6061 = fmul fast float %6059, %6051
  %6062 = fmul fast float %6059, %6052
  %6063 = fsub fast float %223, %6060
  %6064 = fsub fast float %224, %6061
  %6065 = fsub fast float %225, %6062
  %6066 = call float @dx.op.binary.f32(i32 36, float %6054, float 1.000000e+00)  ; FMin(a,b)
  %6067 = fsub fast float 1.000000e+00, %6066
  %6068 = bitcast float %6067 to i32
  %6069 = ashr i32 %6068, 1
  %6070 = add nsw i32 %6069, 532487669
  %6071 = bitcast i32 %6070 to float
  %6072 = fsub fast float 1.000000e+00, %6053
  %6073 = call float @dx.op.binary.f32(i32 35, float %6072, float 0x3F847AE140000000)  ; FMax(a,b)
  %6074 = fmul fast float %6073, %6073
  %6075 = fmul fast float %6074, %6074
  %6076 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %45, float %6071, float %6075, float %6076, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6078 = extractvalue %dx.types.ResRet.f32 %6077, 0
  %6079 = fsub fast float 1.000000e+00, %6054
  %6080 = bitcast float %6079 to i32
  %6081 = sub nsw i32 2129859010, %6080
  %6082 = bitcast i32 %6081 to float
  %6083 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6084 = fmul fast float %6083, 0x3FD20DD760000000
  %6085 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %6086 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %6087 = fcmp fast oeq float %6086, 0.000000e+00
  %6088 = fcmp fast oeq float %6085, 0.000000e+00
  %6089 = or i1 %6088, %6087
  br i1 %6089, label %6119, label %6090

; <label>:6090                                    ; preds = %6043
  %6091 = fsub fast float -0.000000e+00, %81
  %6092 = fsub fast float -0.000000e+00, %79
  %6093 = call float @dx.op.unary.f32(i32 24, float %6086)  ; Sqrt(value)
  %6094 = fdiv fast float %6093, %6085
  %6095 = fcmp fast ogt float %6094, 0x3FFB6F8900000000
  %6096 = select i1 %6095, float 0x3FFB6F8900000000, float %6094
  %6097 = fmul fast float %6096, 0x3FE8A23460000000
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6099 = call float @dx.op.binary.f32(i32 35, float %6096, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6100 = fmul fast float %6098, %6085
  %6101 = fmul fast float %6099, 0x3FF279A740000000
  %6102 = fadd fast float %6101, -1.000000e+00
  %6103 = call float @dx.op.dot3.f32(i32 55, float %6091, float %6092, float %80, float %6091, float %6092, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %6104 = call float @dx.op.unary.f32(i32 25, float %6103)  ; Rsqrt(value)
  %6105 = fmul fast float %6104, %6091
  %6106 = fmul fast float %6104, %6092
  %6107 = fmul fast float %6104, %80
  %6108 = fmul fast float %6102, %6102
  %6109 = fsub fast float 1.000000e+00, %6108
  %6110 = fmul fast float %6099, 0x40005F8BE0000000
  %6111 = fsub fast float 0x400C5BF8A0000000, %6110
  %6112 = fdiv fast float %6100, %6111
  %6113 = fmul fast float %6112, 0x3FEE31C3C0000000
  %6114 = fmul fast float %6113, %6109
  %6115 = fmul fast float %6099, 0x3FDACB7480000000
  %6116 = fadd fast float %6115, 0xBFD7347680000000
  %6117 = fmul fast float %6116, %6112
  %6118 = fmul fast float %6117, %6109
  br label %6119

; <label>:6119                                    ; preds = %6090, %6043
  %6120 = phi float [ %6105, %6090 ], [ 0.000000e+00, %6043 ]
  %6121 = phi float [ %6106, %6090 ], [ 0.000000e+00, %6043 ]
  %6122 = phi float [ %6107, %6090 ], [ 0.000000e+00, %6043 ]
  %6123 = phi float [ %6114, %6090 ], [ 0.000000e+00, %6043 ]
  %6124 = phi float [ %6118, %6090 ], [ 0.000000e+00, %6043 ]
  %6125 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6050, float %6051, float %6052)  ; Dot3(ax,ay,az,bx,by,bz)
  %6126 = fmul fast float %6125, 0x3FDF454380000000
  %6127 = fmul fast float %6125, %6125
  %6128 = fmul fast float %6127, 0x3FEE471020000000
  %6129 = fadd fast float %6128, 0xBFD42F6020000000
  %6130 = fmul fast float %6085, 0x3FD20DD760000000
  %6131 = fmul fast float %6129, %6124
  %6132 = fadd fast float %6131, %6130
  %6133 = fmul fast float %6126, %6123
  %6134 = fadd fast float %6132, %6133
  %6135 = fsub fast float %6132, %6133
  %6136 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6063, float %6064, float %6065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6137 = fmul fast float %6136, 0x3FDF454380000000
  %6138 = fmul fast float %6136, %6136
  %6139 = fmul fast float %6138, 0x3FEE471020000000
  %6140 = fadd fast float %6139, 0xBFD42F6020000000
  %6141 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6123, float %6124, float 0x3FD20DD760000000, float %6137, float %6140)  ; Dot3(ax,ay,az,bx,by,bz)
  %6142 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %6143 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %6144 = fcmp fast oeq float %6143, 0.000000e+00
  %6145 = fcmp fast oeq float %6142, 0.000000e+00
  %6146 = or i1 %6145, %6144
  br i1 %6146, label %6176, label %6147

; <label>:6147                                    ; preds = %6119
  %6148 = fsub fast float -0.000000e+00, %77
  %6149 = fsub fast float -0.000000e+00, %75
  %6150 = call float @dx.op.unary.f32(i32 24, float %6143)  ; Sqrt(value)
  %6151 = fdiv fast float %6150, %6142
  %6152 = fcmp fast ogt float %6151, 0x3FFB6F8900000000
  %6153 = select i1 %6152, float 0x3FFB6F8900000000, float %6151
  %6154 = fmul fast float %6153, 0x3FE8A23460000000
  %6155 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6156 = call float @dx.op.binary.f32(i32 35, float %6153, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6157 = fmul fast float %6155, %6142
  %6158 = fmul fast float %6156, 0x3FF279A740000000
  %6159 = fadd fast float %6158, -1.000000e+00
  %6160 = call float @dx.op.dot3.f32(i32 55, float %6148, float %6149, float %76, float %6148, float %6149, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %6161 = call float @dx.op.unary.f32(i32 25, float %6160)  ; Rsqrt(value)
  %6162 = fmul fast float %6161, %6148
  %6163 = fmul fast float %6161, %6149
  %6164 = fmul fast float %6161, %76
  %6165 = fmul fast float %6159, %6159
  %6166 = fsub fast float 1.000000e+00, %6165
  %6167 = fmul fast float %6156, 0x40005F8BE0000000
  %6168 = fsub fast float 0x400C5BF8A0000000, %6167
  %6169 = fdiv fast float %6157, %6168
  %6170 = fmul fast float %6169, 0x3FEE31C3C0000000
  %6171 = fmul fast float %6170, %6166
  %6172 = fmul fast float %6156, 0x3FDACB7480000000
  %6173 = fadd fast float %6172, 0xBFD7347680000000
  %6174 = fmul fast float %6173, %6169
  %6175 = fmul fast float %6174, %6166
  br label %6176

; <label>:6176                                    ; preds = %6147, %6119
  %6177 = phi float [ %6162, %6147 ], [ 0.000000e+00, %6119 ]
  %6178 = phi float [ %6163, %6147 ], [ 0.000000e+00, %6119 ]
  %6179 = phi float [ %6164, %6147 ], [ 0.000000e+00, %6119 ]
  %6180 = phi float [ %6171, %6147 ], [ 0.000000e+00, %6119 ]
  %6181 = phi float [ %6175, %6147 ], [ 0.000000e+00, %6119 ]
  %6182 = call float @dx.op.dot3.f32(i32 55, float %6177, float %6178, float %6179, float %6050, float %6051, float %6052)  ; Dot3(ax,ay,az,bx,by,bz)
  %6183 = fmul fast float %6182, 0x3FDF454380000000
  %6184 = fmul fast float %6182, %6182
  %6185 = fmul fast float %6184, 0x3FEE471020000000
  %6186 = fadd fast float %6185, 0xBFD42F6020000000
  %6187 = fmul fast float %6142, 0x3FD20DD760000000
  %6188 = fmul fast float %6186, %6181
  %6189 = fadd fast float %6188, %6187
  %6190 = fmul fast float %6183, %6180
  %6191 = fadd fast float %6189, %6190
  %6192 = fsub fast float %6189, %6190
  %6193 = call float @dx.op.dot3.f32(i32 55, float %6177, float %6178, float %6179, float %6063, float %6064, float %6065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6194 = fmul fast float %6193, 0x3FDF454380000000
  %6195 = fmul fast float %6193, %6193
  %6196 = fmul fast float %6195, 0x3FEE471020000000
  %6197 = fadd fast float %6196, 0xBFD42F6020000000
  %6198 = call float @dx.op.dot3.f32(i32 55, float %6142, float %6180, float %6181, float 0x3FD20DD760000000, float %6194, float %6197)  ; Dot3(ax,ay,az,bx,by,bz)
  %6199 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %6200 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %6201 = fcmp fast oeq float %6200, 0.000000e+00
  %6202 = fcmp fast oeq float %6199, 0.000000e+00
  %6203 = or i1 %6202, %6201
  br i1 %6203, label %6233, label %6204

; <label>:6204                                    ; preds = %6176
  %6205 = fsub fast float -0.000000e+00, %73
  %6206 = fsub fast float -0.000000e+00, %71
  %6207 = call float @dx.op.unary.f32(i32 24, float %6200)  ; Sqrt(value)
  %6208 = fdiv fast float %6207, %6199
  %6209 = fcmp fast ogt float %6208, 0x3FFB6F8900000000
  %6210 = select i1 %6209, float 0x3FFB6F8900000000, float %6208
  %6211 = fmul fast float %6210, 0x3FE8A23460000000
  %6212 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  %6213 = call float @dx.op.binary.f32(i32 35, float %6210, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6214 = fmul fast float %6212, %6199
  %6215 = fmul fast float %6213, 0x3FF279A740000000
  %6216 = fadd fast float %6215, -1.000000e+00
  %6217 = call float @dx.op.dot3.f32(i32 55, float %6205, float %6206, float %72, float %6205, float %6206, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %6218 = call float @dx.op.unary.f32(i32 25, float %6217)  ; Rsqrt(value)
  %6219 = fmul fast float %6218, %6205
  %6220 = fmul fast float %6218, %6206
  %6221 = fmul fast float %6218, %72
  %6222 = fmul fast float %6216, %6216
  %6223 = fsub fast float 1.000000e+00, %6222
  %6224 = fmul fast float %6213, 0x40005F8BE0000000
  %6225 = fsub fast float 0x400C5BF8A0000000, %6224
  %6226 = fdiv fast float %6214, %6225
  %6227 = fmul fast float %6226, 0x3FEE31C3C0000000
  %6228 = fmul fast float %6227, %6223
  %6229 = fmul fast float %6213, 0x3FDACB7480000000
  %6230 = fadd fast float %6229, 0xBFD7347680000000
  %6231 = fmul fast float %6230, %6226
  %6232 = fmul fast float %6231, %6223
  br label %6233

; <label>:6233                                    ; preds = %6204, %6176
  %6234 = phi float [ %6219, %6204 ], [ 0.000000e+00, %6176 ]
  %6235 = phi float [ %6220, %6204 ], [ 0.000000e+00, %6176 ]
  %6236 = phi float [ %6221, %6204 ], [ 0.000000e+00, %6176 ]
  %6237 = phi float [ %6228, %6204 ], [ 0.000000e+00, %6176 ]
  %6238 = phi float [ %6232, %6204 ], [ 0.000000e+00, %6176 ]
  %6239 = call float @dx.op.dot3.f32(i32 55, float %6234, float %6235, float %6236, float %6050, float %6051, float %6052)  ; Dot3(ax,ay,az,bx,by,bz)
  %6240 = fmul fast float %6239, 0x3FDF454380000000
  %6241 = fmul fast float %6239, %6239
  %6242 = fmul fast float %6241, 0x3FEE471020000000
  %6243 = fadd fast float %6242, 0xBFD42F6020000000
  %6244 = fmul fast float %6199, 0x3FD20DD760000000
  %6245 = fmul fast float %6243, %6238
  %6246 = fadd fast float %6245, %6244
  %6247 = fmul fast float %6240, %6237
  %6248 = fadd fast float %6246, %6247
  %6249 = fsub fast float %6246, %6247
  %6250 = call float @dx.op.dot3.f32(i32 55, float %6234, float %6235, float %6236, float %6063, float %6064, float %6065)  ; Dot3(ax,ay,az,bx,by,bz)
  %6251 = fmul fast float %6250, 0x3FDF454380000000
  %6252 = fmul fast float %6250, %6250
  %6253 = fmul fast float %6252, 0x3FEE471020000000
  %6254 = fadd fast float %6253, 0xBFD42F6020000000
  %6255 = call float @dx.op.dot3.f32(i32 55, float %6199, float %6237, float %6238, float 0x3FD20DD760000000, float %6251, float %6254)  ; Dot3(ax,ay,az,bx,by,bz)
  %6256 = call float @dx.op.binary.f32(i32 35, float %6134, float 0.000000e+00)  ; FMax(a,b)
  %6257 = call float @dx.op.binary.f32(i32 35, float %6191, float 0.000000e+00)  ; FMax(a,b)
  %6258 = call float @dx.op.binary.f32(i32 35, float %6248, float 0.000000e+00)  ; FMax(a,b)
  %6259 = call float @dx.op.binary.f32(i32 35, float %6135, float 0.000000e+00)  ; FMax(a,b)
  %6260 = call float @dx.op.binary.f32(i32 35, float %6192, float 0.000000e+00)  ; FMax(a,b)
  %6261 = call float @dx.op.binary.f32(i32 35, float %6249, float 0.000000e+00)  ; FMax(a,b)
  %6262 = call float @dx.op.binary.f32(i32 35, float %6141, float 0.000000e+00)  ; FMax(a,b)
  %6263 = call float @dx.op.binary.f32(i32 35, float %6198, float 0.000000e+00)  ; FMax(a,b)
  %6264 = call float @dx.op.binary.f32(i32 35, float %6255, float 0.000000e+00)  ; FMax(a,b)
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 0
  %6267 = call float @dx.op.binary.f32(i32 36, float %6047, float %6266)  ; FMin(a,b)
  %6268 = fmul fast float %6267, %6067
  %6269 = fsub fast float 1.000000e+00, %6268
  %6270 = bitcast float %6269 to i32
  %6271 = sub nsw i32 2129859010, %6270
  %6272 = bitcast i32 %6271 to float
  %6273 = call float @dx.op.binary.f32(i32 36, float %6048, float %6266)  ; FMin(a,b)
  %6274 = fmul fast float %6273, %6067
  %6275 = fsub fast float 1.000000e+00, %6274
  %6276 = bitcast float %6275 to i32
  %6277 = sub nsw i32 2129859010, %6276
  %6278 = bitcast i32 %6277 to float
  %6279 = call float @dx.op.binary.f32(i32 36, float %6049, float %6266)  ; FMin(a,b)
  %6280 = fmul fast float %6279, %6067
  %6281 = fsub fast float 1.000000e+00, %6280
  %6282 = bitcast float %6281 to i32
  %6283 = sub nsw i32 2129859010, %6282
  %6284 = bitcast i32 %6283 to float
  %6285 = fmul fast float %6256, %6066
  %6286 = fmul fast float %6285, %6272
  %6287 = fmul fast float %6257, %6066
  %6288 = fmul fast float %6287, %6278
  %6289 = fmul fast float %6258, %6066
  %6290 = fmul fast float %6289, %6284
  %6291 = call float @dx.op.binary.f32(i32 36, float %6044, float %6266)  ; FMin(a,b)
  %6292 = fmul fast float %6291, %6067
  %6293 = fsub fast float 1.000000e+00, %6292
  %6294 = bitcast float %6293 to i32
  %6295 = sub nsw i32 2129859010, %6294
  %6296 = bitcast i32 %6295 to float
  %6297 = call float @dx.op.binary.f32(i32 36, float %6045, float %6266)  ; FMin(a,b)
  %6298 = fmul fast float %6297, %6067
  %6299 = fsub fast float 1.000000e+00, %6298
  %6300 = bitcast float %6299 to i32
  %6301 = sub nsw i32 2129859010, %6300
  %6302 = bitcast i32 %6301 to float
  %6303 = call float @dx.op.binary.f32(i32 36, float %6055, float %6266)  ; FMin(a,b)
  %6304 = fmul fast float %6303, %6067
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = bitcast float %6305 to i32
  %6307 = sub nsw i32 2129859010, %6306
  %6308 = bitcast i32 %6307 to float
  %6309 = fmul fast float %6262, %6066
  %6310 = fmul fast float %6309, %6296
  %6311 = fmul fast float %6263, %6066
  %6312 = fmul fast float %6311, %6302
  %6313 = fmul fast float %6264, %6066
  %6314 = fmul fast float %6313, %6308
  %6315 = call float @dx.op.dot3.f32(i32 55, float %6286, float %6288, float %6290, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6316 = select i1 %296, float 0.000000e+00, float %6286
  %6317 = select i1 %296, float %6315, float %6288
  %6318 = select i1 %296, float 0.000000e+00, float %6290
  %6319 = call float @dx.op.dot3.f32(i32 55, float %6259, float %6260, float %6261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6320 = select i1 %296, float 0.000000e+00, float %6259
  %6321 = select i1 %296, float %6319, float %6260
  %6322 = select i1 %296, float 0.000000e+00, float %6261
  %6323 = call float @dx.op.dot3.f32(i32 55, float %6310, float %6312, float %6314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6324 = select i1 %296, float 0.000000e+00, float %6310
  %6325 = select i1 %296, float %6323, float %6312
  %6326 = select i1 %296, float 0.000000e+00, float %6314
  %6327 = fmul fast float %4037, %4037
  %6328 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  %6329 = fmul fast float %6057, 9.843750e-01
  %6330 = fmul fast float %6053, 9.843750e-01
  %6331 = fadd fast float %6329, 7.812500e-03
  %6332 = fadd fast float %6330, 7.812500e-03
  %6333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %6331, float %6332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6334 = extractvalue %dx.types.ResRet.f32 %6333, 0
  %6335 = extractvalue %dx.types.ResRet.f32 %6333, 1
  %6336 = extractvalue %dx.types.ResRet.f32 %6333, 2
  %6337 = extractvalue %dx.types.ResRet.f32 %6333, 3
  %6338 = fsub fast float 1.000000e+00, %6328
  %6339 = fsub fast float %6336, %6334
  %6340 = fsub fast float %6337, %6335
  %6341 = fmul fast float %6339, %6338
  %6342 = fmul fast float %6340, %6338
  %6343 = fadd fast float %6341, %6334
  %6344 = fadd fast float %6342, %6335
  %6345 = fmul fast float %6343, %6044
  %6346 = fmul fast float %6343, %6045
  %6347 = fmul fast float %6343, %6055
  %6348 = fadd fast float %6345, %6344
  %6349 = fadd fast float %6346, %6344
  %6350 = fadd fast float %6347, %6344
  %6351 = fcmp fast ogt float %4733, 0.000000e+00
  br i1 %6351, label %6352, label %6378

; <label>:6352                                    ; preds = %6233
  %6353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4733, float %6057, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6354 = extractvalue %dx.types.ResRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.ResRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.ResRet.f32 %6353, 2
  %6357 = fadd fast float %6354, -5.000000e-01
  %6358 = fadd fast float %6355, -5.000000e-01
  %6359 = fadd fast float %6356, -5.000000e-01
  %6360 = fsub fast float 1.000000e+00, %6044
  %6361 = fsub fast float 1.000000e+00, %6045
  %6362 = fsub fast float 1.000000e+00, %6055
  %6363 = fmul fast float %6044, 4.000000e+00
  %6364 = fmul fast float %6363, %6360
  %6365 = fmul fast float %6364, %6357
  %6366 = fmul fast float %6045, 4.000000e+00
  %6367 = fmul fast float %6366, %6361
  %6368 = fmul fast float %6367, %6358
  %6369 = fmul fast float %6055, 4.000000e+00
  %6370 = fmul fast float %6369, %6362
  %6371 = fmul fast float %6370, %6359
  %6372 = fadd fast float %6365, %6348
  %6373 = fadd fast float %6368, %6349
  %6374 = fadd fast float %6371, %6350
  %6375 = call float @dx.op.unary.f32(i32 7, float %6372)  ; Saturate(value)
  %6376 = call float @dx.op.unary.f32(i32 7, float %6373)  ; Saturate(value)
  %6377 = call float @dx.op.unary.f32(i32 7, float %6374)  ; Saturate(value)
  br label %6378

; <label>:6378                                    ; preds = %6352, %6233
  %6379 = phi float [ %6375, %6352 ], [ %6348, %6233 ]
  %6380 = phi float [ %6376, %6352 ], [ %6349, %6233 ]
  %6381 = phi float [ %6377, %6352 ], [ %6350, %6233 ]
  %6382 = call float @dx.op.binary.f32(i32 35, float %6380, float %6381)  ; FMax(a,b)
  %6383 = call float @dx.op.binary.f32(i32 35, float %6379, float %6382)  ; FMax(a,b)
  %6384 = fsub fast float 1.000000e+00, %6383
  %6385 = fmul fast float %6383, %6053
  %6386 = fadd fast float %6385, %6053
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 2
  %6389 = extractvalue %dx.types.CBufRet.f32 %6387, 3
  %6390 = fmul fast float %6386, %6388
  %6391 = fadd fast float %6390, %6389
  %6392 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6393 = fsub fast float 1.000000e+00, %6078
  %6394 = fadd fast float %6393, %6392
  %6395 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6396 = fcmp fast olt float %6395, 1.000000e+00
  br i1 %6396, label %6397, label %6845

; <label>:6397                                    ; preds = %6378
  %6398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6399 = extractvalue %dx.types.CBufRet.f32 %6398, 2
  %6400 = extractvalue %dx.types.CBufRet.f32 %6398, 3
  %6401 = fmul fast float %6399, %111
  %6402 = fmul fast float %6400, %112
  %6403 = fptoui float %6401 to i32
  %6404 = fptoui float %6402 to i32
  %6405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6406 = extractvalue %dx.types.CBufRet.f32 %6405, 0
  %6407 = extractvalue %dx.types.CBufRet.f32 %6405, 2
  %6408 = extractvalue %dx.types.CBufRet.f32 %6405, 3
  %6409 = fadd fast float %98, -4.000000e+00
  %6410 = call float @dx.op.binary.f32(i32 35, float %6409, float 0.000000e+00)  ; FMax(a,b)
  %6411 = fadd fast float %6410, %6406
  %6412 = fmul fast float %6411, %6407
  %6413 = call float @dx.op.unary.f32(i32 23, float %6412)  ; Log(value)
  %6414 = fmul fast float %6413, %6408
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %6417 = fmul fast float %6414, %6416
  %6418 = call float @dx.op.unary.f32(i32 7, float %6417)  ; Saturate(value)
  %6419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6420 = extractvalue %dx.types.CBufRet.i32 %6419, 1
  %6421 = add i32 %6420, -1
  %6422 = uitofp i32 %6420 to float
  %6423 = fmul fast float %6422, %6418
  %6424 = fptoui float %6423 to i32
  %6425 = call i32 @dx.op.binary.i32(i32 40, i32 %6424, i32 %6421)  ; UMin(a,b)
  %6426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.i32 %6426, 2
  %6428 = extractvalue %dx.types.CBufRet.i32 %6426, 3
  %6429 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6404, i32 %6427, i32 %6403)  ; UMad(a,b,c)
  %6430 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6425, i32 %6428, i32 %6429)  ; UMad(a,b,c)
  %6431 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6432 = fptoui float %6431 to i32
  %6433 = lshr i32 %6432, 5
  %6434 = call i32 @dx.op.binary.i32(i32 40, i32 %6433, i32 8191)  ; UMin(a,b)
  br i1 false, label %6435, label %6442

; <label>:6435                                    ; preds = %6397
  %6436 = fadd fast float 0.000000e+00, %6065
  %6437 = call float @dx.op.dot3.f32(i32 55, float %6063, float %6064, float %6436, float %6063, float %6064, float %6436)  ; Dot3(ax,ay,az,bx,by,bz)
  %6438 = call float @dx.op.unary.f32(i32 25, float %6437)  ; Rsqrt(value)
  %6439 = fmul fast float %6438, %6063
  %6440 = fmul fast float %6438, %6064
  %6441 = fmul fast float %6436, %6438
  br label %6442

; <label>:6442                                    ; preds = %6435, %6397
  %6443 = phi float [ %6439, %6435 ], [ %6063, %6397 ]
  %6444 = phi float [ %6440, %6435 ], [ %6064, %6397 ]
  %6445 = phi float [ %6441, %6435 ], [ %6065, %6397 ]
  %6446 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.i32 %6446, 2
  %6448 = add nsw i32 %6447, -1
  %6449 = call i32 @dx.op.binary.i32(i32 37, i32 %6448, i32 0)  ; IMax(a,b)
  %6450 = shl i32 %6434, 2
  %6451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6450, i32 undef)  ; BufferLoad(srv,index,wot)
  %6452 = extractvalue %dx.types.ResRet.i32 %6451, 0
  %6453 = lshr i32 %6452, 16
  %6454 = and i32 %6452, 65535
  %6455 = lshr i32 %6452, 21
  %6456 = lshr i32 %6454, 5
  %6457 = call i32 @dx.op.binary.i32(i32 40, i32 %6456, i32 %6449)  ; UMin(a,b)
  %6458 = icmp ugt i32 %6455, %6457
  br i1 %6458, label %6821, label %6459

; <label>:6459                                    ; preds = %6442
  br label %6460

; <label>:6460                                    ; preds = %6813, %6459
  %6461 = phi float [ %6814, %6813 ], [ 0.000000e+00, %6459 ]
  %6462 = phi float [ %6815, %6813 ], [ 0.000000e+00, %6459 ]
  %6463 = phi float [ %6816, %6813 ], [ 0.000000e+00, %6459 ]
  %6464 = phi float [ %6817, %6813 ], [ 1.000000e+00, %6459 ]
  %6465 = phi i32 [ %6818, %6813 ], [ %6455, %6459 ]
  %6466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6467 = extractvalue %dx.types.CBufRet.i32 %6466, 2
  %6468 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6430, i32 %6467, i32 %6465)  ; UMad(a,b,c)
  %6469 = shl i32 %6468, 2
  %6470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6469, i32 undef)  ; BufferLoad(srv,index,wot)
  %6471 = extractvalue %dx.types.ResRet.i32 %6470, 0
  %6472 = shl i32 %6465, 5
  %6473 = sub nsw i32 %6453, %6472
  %6474 = call i32 @dx.op.binary.i32(i32 37, i32 %6473, i32 0)  ; IMax(a,b)
  %6475 = call i32 @dx.op.binary.i32(i32 38, i32 %6474, i32 31)  ; IMin(a,b)
  %6476 = sub nsw i32 1, %6453
  %6477 = add nsw i32 %6476, %6454
  %6478 = call i32 @dx.op.binary.i32(i32 37, i32 %6477, i32 0)  ; IMax(a,b)
  %6479 = call i32 @dx.op.binary.i32(i32 38, i32 %6478, i32 32)  ; IMin(a,b)
  %6480 = and i32 %6479, 31
  %6481 = shl i32 -1, %6480
  %6482 = xor i32 %6481, -1
  %6483 = and i32 %6475, 31
  %6484 = shl i32 %6482, %6483
  %6485 = icmp eq i32 %6479, 32
  %6486 = select i1 %6485, i32 -1, i32 %6484
  %6487 = and i32 %6486, %6471
  %6488 = icmp eq i32 %6487, 0
  br i1 %6488, label %6813, label %6489

; <label>:6489                                    ; preds = %6460
  br label %6490

; <label>:6490                                    ; preds = %6596, %6489
  %6491 = phi float [ %6597, %6596 ], [ %6461, %6489 ]
  %6492 = phi float [ %6598, %6596 ], [ %6462, %6489 ]
  %6493 = phi float [ %6599, %6596 ], [ %6463, %6489 ]
  %6494 = phi float [ %6600, %6596 ], [ %6464, %6489 ]
  %6495 = phi i32 [ %6500, %6596 ], [ %6487, %6489 ]
  %6496 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6495)  ; FirstbitLo(value)
  %6497 = add i32 %6496, %6472
  %6498 = and i32 %6496, 31
  %6499 = shl i32 1, %6498
  %6500 = xor i32 %6499, %6495
  %6501 = mul i32 %6497, 72
  %6502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6501, i32 undef)  ; BufferLoad(srv,index,wot)
  %6503 = extractvalue %dx.types.ResRet.f32 %6502, 0
  %6504 = extractvalue %dx.types.ResRet.f32 %6502, 1
  %6505 = extractvalue %dx.types.ResRet.f32 %6502, 2
  %6506 = add i32 %6501, 12
  %6507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6506, i32 undef)  ; BufferLoad(srv,index,wot)
  %6508 = extractvalue %dx.types.ResRet.i32 %6507, 0
  %6509 = add i32 %6501, 16
  %6510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6509, i32 undef)  ; BufferLoad(srv,index,wot)
  %6511 = extractvalue %dx.types.ResRet.f32 %6510, 0
  %6512 = extractvalue %dx.types.ResRet.f32 %6510, 1
  %6513 = extractvalue %dx.types.ResRet.f32 %6510, 2
  %6514 = add i32 %6501, 28
  %6515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6514, i32 undef)  ; BufferLoad(srv,index,wot)
  %6516 = extractvalue %dx.types.ResRet.f32 %6515, 0
  %6517 = add i32 %6501, 32
  %6518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6517, i32 undef)  ; BufferLoad(srv,index,wot)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  %6520 = extractvalue %dx.types.ResRet.f32 %6518, 1
  %6521 = extractvalue %dx.types.ResRet.f32 %6518, 2
  %6522 = extractvalue %dx.types.ResRet.f32 %6518, 3
  %6523 = add i32 %6501, 48
  %6524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6523, i32 undef)  ; BufferLoad(srv,index,wot)
  %6525 = extractvalue %dx.types.ResRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.ResRet.f32 %6524, 1
  %6527 = add i32 %6501, 56
  %6528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6527, i32 undef)  ; BufferLoad(srv,index,wot)
  %6529 = extractvalue %dx.types.ResRet.f32 %6528, 0
  %6530 = extractvalue %dx.types.ResRet.f32 %6528, 1
  %6531 = add i32 %6501, 64
  %6532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6531, i32 undef)  ; BufferLoad(srv,index,wot)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.ResRet.f32 %6532, 1
  %6535 = mul i32 %6497, 60
  %6536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6535, i32 undef)  ; BufferLoad(srv,index,wot)
  %6537 = extractvalue %dx.types.ResRet.f32 %6536, 0
  %6538 = extractvalue %dx.types.ResRet.f32 %6536, 1
  %6539 = extractvalue %dx.types.ResRet.f32 %6536, 2
  %6540 = add i32 %6535, 12
  %6541 = add i32 %6535, 48
  %6542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6541, i32 undef)  ; BufferLoad(srv,index,wot)
  %6543 = extractvalue %dx.types.ResRet.f32 %6542, 0
  %6544 = extractvalue %dx.types.ResRet.f32 %6542, 1
  %6545 = extractvalue %dx.types.ResRet.f32 %6542, 2
  %6546 = and i32 %6508, 32767
  %6547 = bitcast float %6503 to i32
  %6548 = icmp eq i32 %6547, -1
  %6549 = bitcast float %6504 to i32
  %6550 = and i32 %6508, 32768
  %6551 = icmp ne i32 %6550, 0
  %6552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6553 = extractvalue %dx.types.CBufRet.f32 %6552, 0
  %6554 = extractvalue %dx.types.CBufRet.f32 %6552, 1
  %6555 = extractvalue %dx.types.CBufRet.f32 %6552, 2
  %6556 = fsub fast float %6537, %6553
  %6557 = fsub fast float %6538, %6554
  %6558 = fsub fast float %6539, %6555
  %6559 = fsub fast float %190, %6556
  %6560 = fsub fast float %191, %6557
  %6561 = fsub fast float %192, %6558
  %6562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6540, i32 undef)  ; BufferLoad(srv,index,wot)
  %6563 = extractvalue %dx.types.ResRet.f32 %6562, 0
  %6564 = extractvalue %dx.types.ResRet.f32 %6562, 1
  %6565 = extractvalue %dx.types.ResRet.f32 %6562, 2
  %6566 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %6563, float %6564, float %6565)  ; Dot3(ax,ay,az,bx,by,bz)
  %6567 = add i32 %6535, 24
  %6568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6567, i32 undef)  ; BufferLoad(srv,index,wot)
  %6569 = extractvalue %dx.types.ResRet.f32 %6568, 0
  %6570 = extractvalue %dx.types.ResRet.f32 %6568, 1
  %6571 = extractvalue %dx.types.ResRet.f32 %6568, 2
  %6572 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %6569, float %6570, float %6571)  ; Dot3(ax,ay,az,bx,by,bz)
  %6573 = add i32 %6535, 36
  %6574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6573, i32 undef)  ; BufferLoad(srv,index,wot)
  %6575 = extractvalue %dx.types.ResRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.ResRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.ResRet.f32 %6574, 2
  %6578 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %6575, float %6576, float %6577)  ; Dot3(ax,ay,az,bx,by,bz)
  %6579 = call float @dx.op.unary.f32(i32 6, float %6566)  ; FAbs(value)
  %6580 = call float @dx.op.unary.f32(i32 6, float %6572)  ; FAbs(value)
  %6581 = call float @dx.op.unary.f32(i32 6, float %6578)  ; FAbs(value)
  %6582 = fsub fast float %6543, %6579
  %6583 = fsub fast float %6544, %6580
  %6584 = fsub fast float %6545, %6581
  %6585 = fmul fast float %6582, %6511
  %6586 = fmul fast float %6583, %6512
  %6587 = fmul fast float %6584, %6513
  %6588 = call float @dx.op.binary.f32(i32 36, float %6586, float %6587)  ; FMin(a,b)
  %6589 = call float @dx.op.binary.f32(i32 36, float %6585, float %6588)  ; FMin(a,b)
  %6590 = call float @dx.op.unary.f32(i32 7, float %6589)  ; Saturate(value)
  %6591 = call float @dx.op.binary.f32(i32 36, float %6494, float %6590)  ; FMin(a,b)
  %6592 = uitofp i1 %6551 to float
  %6593 = fsub fast float 1.000000e+00, %6592
  %6594 = fmul fast float %6591, %6593
  %6595 = fcmp fast ogt float %6594, 0.000000e+00
  br i1 %6595, label %6602, label %6596

; <label>:6596                                    ; preds = %6744, %6490
  %6597 = phi float [ %6808, %6744 ], [ %6491, %6490 ]
  %6598 = phi float [ %6809, %6744 ], [ %6492, %6490 ]
  %6599 = phi float [ %6810, %6744 ], [ %6493, %6490 ]
  %6600 = phi float [ %6811, %6744 ], [ %6494, %6490 ]
  %6601 = icmp eq i32 %6495, %6499
  br i1 %6601, label %6812, label %6490

; <label>:6602                                    ; preds = %6490
  br i1 %6548, label %6660, label %6603

; <label>:6603                                    ; preds = %6602
  %6604 = fsub fast float -0.000000e+00, %6563
  %6605 = fsub fast float -0.000000e+00, %6564
  %6606 = fsub fast float -0.000000e+00, %6565
  %6607 = call float @dx.op.dot3.f32(i32 55, float %6443, float %6444, float %6445, float %6604, float %6605, float %6606)  ; Dot3(ax,ay,az,bx,by,bz)
  %6608 = fsub fast float -0.000000e+00, %6607
  %6609 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %6604, float %6605, float %6606)  ; Dot3(ax,ay,az,bx,by,bz)
  %6610 = fadd fast float %6609, %6526
  %6611 = fadd fast float %6525, %6609
  %6612 = fsub fast float -0.000000e+00, %6611
  %6613 = fcmp ogt float %6607, -0.000000e+00
  %6614 = select i1 %6613, float %6612, float %6610
  %6615 = call float @dx.op.unary.f32(i32 6, float %6608)  ; FAbs(value)
  %6616 = fdiv fast float 1.000000e+00, %6615
  %6617 = fmul fast float %6614, %6616
  %6618 = call float @dx.op.binary.f32(i32 35, float %6617, float 0.000000e+00)  ; FMax(a,b)
  %6619 = fsub fast float -0.000000e+00, %6569
  %6620 = fsub fast float -0.000000e+00, %6570
  %6621 = fsub fast float -0.000000e+00, %6571
  %6622 = call float @dx.op.dot3.f32(i32 55, float %6443, float %6444, float %6445, float %6619, float %6620, float %6621)  ; Dot3(ax,ay,az,bx,by,bz)
  %6623 = fsub fast float -0.000000e+00, %6622
  %6624 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %6619, float %6620, float %6621)  ; Dot3(ax,ay,az,bx,by,bz)
  %6625 = fadd fast float %6624, %6530
  %6626 = fadd fast float %6529, %6624
  %6627 = fsub fast float -0.000000e+00, %6626
  %6628 = fcmp ogt float %6622, -0.000000e+00
  %6629 = select i1 %6628, float %6627, float %6625
  %6630 = call float @dx.op.unary.f32(i32 6, float %6623)  ; FAbs(value)
  %6631 = fdiv fast float 1.000000e+00, %6630
  %6632 = fmul fast float %6629, %6631
  %6633 = call float @dx.op.binary.f32(i32 35, float %6632, float 0.000000e+00)  ; FMax(a,b)
  %6634 = fsub fast float -0.000000e+00, %6575
  %6635 = fsub fast float -0.000000e+00, %6576
  %6636 = fsub fast float -0.000000e+00, %6577
  %6637 = call float @dx.op.dot3.f32(i32 55, float %6443, float %6444, float %6445, float %6634, float %6635, float %6636)  ; Dot3(ax,ay,az,bx,by,bz)
  %6638 = fsub fast float -0.000000e+00, %6637
  %6639 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %6634, float %6635, float %6636)  ; Dot3(ax,ay,az,bx,by,bz)
  %6640 = fadd fast float %6639, %6534
  %6641 = fadd fast float %6533, %6639
  %6642 = fsub fast float -0.000000e+00, %6641
  %6643 = fcmp ogt float %6637, -0.000000e+00
  %6644 = select i1 %6643, float %6642, float %6640
  %6645 = call float @dx.op.unary.f32(i32 6, float %6638)  ; FAbs(value)
  %6646 = fdiv fast float 1.000000e+00, %6645
  %6647 = fmul fast float %6644, %6646
  %6648 = call float @dx.op.binary.f32(i32 35, float %6647, float 0.000000e+00)  ; FMax(a,b)
  %6649 = call float @dx.op.binary.f32(i32 36, float %6633, float %6648)  ; FMin(a,b)
  %6650 = call float @dx.op.binary.f32(i32 36, float %6618, float %6649)  ; FMin(a,b)
  %6651 = fmul fast float %6650, %6443
  %6652 = fmul fast float %6650, %6444
  %6653 = fmul fast float %6650, %6445
  %6654 = fadd fast float %6651, %190
  %6655 = fadd fast float %6652, %191
  %6656 = fadd fast float %6653, %192
  %6657 = fsub fast float %6654, %6503
  %6658 = fsub fast float %6655, %6504
  %6659 = fsub fast float %6656, %6505
  br label %6667

; <label>:6660                                    ; preds = %6602
  %6661 = fmul fast float %6443, 8.096000e+03
  %6662 = fmul fast float %6444, 8.096000e+03
  %6663 = fmul fast float %6445, 8.096000e+03
  %6664 = fadd fast float %6661, %190
  %6665 = fadd fast float %6662, %191
  %6666 = fadd fast float %6663, %192
  br label %6667

; <label>:6667                                    ; preds = %6660, %6603
  %6668 = phi float [ %6443, %6660 ], [ %6657, %6603 ]
  %6669 = phi float [ %6444, %6660 ], [ %6658, %6603 ]
  %6670 = phi float [ %6445, %6660 ], [ %6659, %6603 ]
  %6671 = phi float [ %6664, %6660 ], [ %6654, %6603 ]
  %6672 = phi float [ %6665, %6660 ], [ %6655, %6603 ]
  %6673 = phi float [ %6666, %6660 ], [ %6656, %6603 ]
  %6674 = fcmp fast olt float %6522, 1.000000e+00
  br i1 %6674, label %6675, label %6706, !dx.controlflow.hints !94

; <label>:6675                                    ; preds = %6667
  %6676 = fmul fast float %6670, %6520
  %6677 = fmul fast float %6669, %6521
  %6678 = fsub fast float %6676, %6677
  %6679 = fmul fast float %6668, %6521
  %6680 = fmul fast float %6670, %6519
  %6681 = fsub fast float %6679, %6680
  %6682 = fmul fast float %6669, %6519
  %6683 = fmul fast float %6668, %6520
  %6684 = fsub fast float %6682, %6683
  %6685 = fmul fast float %6678, 2.000000e+00
  %6686 = fmul fast float %6681, 2.000000e+00
  %6687 = fmul fast float %6684, 2.000000e+00
  %6688 = fmul fast float %6685, %6522
  %6689 = fmul fast float %6686, %6522
  %6690 = fmul fast float %6687, %6522
  %6691 = fmul fast float %6687, %6520
  %6692 = fmul fast float %6686, %6521
  %6693 = fmul fast float %6685, %6521
  %6694 = fmul fast float %6687, %6519
  %6695 = fmul fast float %6686, %6519
  %6696 = fmul fast float %6685, %6520
  %6697 = fadd fast float %6691, %6668
  %6698 = fadd fast float %6697, %6688
  %6699 = fsub fast float %6698, %6692
  %6700 = fsub fast float %6669, %6694
  %6701 = fadd fast float %6700, %6689
  %6702 = fadd fast float %6701, %6693
  %6703 = fadd fast float %6690, %6670
  %6704 = fsub fast float %6703, %6696
  %6705 = fadd fast float %6704, %6695
  br label %6706

; <label>:6706                                    ; preds = %6675, %6667
  %6707 = phi float [ %6699, %6675 ], [ %6668, %6667 ]
  %6708 = phi float [ %6702, %6675 ], [ %6669, %6667 ]
  %6709 = phi float [ %6705, %6675 ], [ %6670, %6667 ]
  br i1 %6548, label %6741, label %6710

; <label>:6710                                    ; preds = %6706
  %6711 = fmul fast float %6053, 0x400187C840000000
  %6712 = fadd fast float %6711, 0xC00EFC2120000000
  %6713 = fmul fast float %6712, %6053
  %6714 = fadd fast float %6713, 0x3FE5D16340000000
  %6715 = fmul fast float %6714, %6053
  %6716 = fadd fast float %6715, 1.000000e+00
  %6717 = call float @dx.op.unary.f32(i32 7, float %6716)  ; Saturate(value)
  %6718 = fsub fast float %6671, %190
  %6719 = fsub fast float %6672, %191
  %6720 = fsub fast float %6673, %192
  %6721 = fsub fast float %6671, %6503
  %6722 = fsub fast float %6672, %6504
  %6723 = fsub fast float %6673, %6505
  %6724 = call float @dx.op.dot3.f32(i32 55, float %6718, float %6719, float %6720, float %6718, float %6719, float %6720)  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = call float @dx.op.dot3.f32(i32 55, float %6721, float %6722, float %6723, float %6721, float %6722, float %6723)  ; Dot3(ax,ay,az,bx,by,bz)
  %6726 = fadd fast float %6725, 0x3EE4F8B580000000
  %6727 = fdiv fast float %6724, %6726
  %6728 = bitcast float %6727 to i32
  %6729 = ashr i32 %6728, 1
  %6730 = add nsw i32 %6729, 532487669
  %6731 = bitcast i32 %6730 to float
  %6732 = fmul fast float %6731, %6717
  %6733 = call float @dx.op.unary.f32(i32 7, float %6732)  ; Saturate(value)
  %6734 = fmul fast float %6733, 0x4009981AE0000000
  %6735 = fsub fast float 0x40111BBD80000000, %6734
  %6736 = fmul fast float %6735, %6733
  %6737 = fadd fast float %6736, 0xC0009F6020000000
  %6738 = fmul fast float %6737, %6733
  %6739 = fadd fast float %6738, 1.000000e+00
  %6740 = call float @dx.op.unary.f32(i32 7, float %6739)  ; Saturate(value)
  br label %6744

; <label>:6741                                    ; preds = %6706
  %6742 = icmp ne i32 %6549, -1
  %6743 = zext i1 %6742 to i32
  br label %6744

; <label>:6744                                    ; preds = %6741, %6710
  %6745 = phi float [ %6053, %6741 ], [ %6740, %6710 ]
  %6746 = phi i32 [ %6743, %6741 ], [ 0, %6710 ]
  %6747 = fmul float %6745, 5.000000e+00
  %6748 = fsub float 5.000000e+00, %6747
  %6749 = icmp ne i32 %6746, 0
  %6750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6751 = extractvalue %dx.types.CBufRet.f32 %6750, 3
  %6752 = fadd fast float %6751, %6748
  %6753 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6752)  ; FMax(a,b)
  %6754 = call float @dx.op.unary.f32(i32 6, float %6707)  ; FAbs(value)
  %6755 = call float @dx.op.unary.f32(i32 6, float %6708)  ; FAbs(value)
  %6756 = fadd fast float %6755, %6754
  %6757 = call float @dx.op.unary.f32(i32 6, float %6709)  ; FAbs(value)
  %6758 = fadd fast float %6756, %6757
  %6759 = fcmp fast oeq float %6758, 0.000000e+00
  %6760 = fdiv fast float 1.000000e+00, %6758
  %6761 = select i1 %6759, float 1.000000e+00, float %6760
  %6762 = fmul fast float %6761, %6707
  %6763 = fmul fast float %6761, %6708
  %6764 = call float @dx.op.unary.f32(i32 6, float %6763)  ; FAbs(value)
  %6765 = call float @dx.op.unary.f32(i32 6, float %6762)  ; FAbs(value)
  %6766 = fsub fast float 1.000000e+00, %6764
  %6767 = fsub fast float 1.000000e+00, %6765
  %6768 = fcmp fast oge float %6762, 0.000000e+00
  %6769 = fcmp fast oge float %6763, 0.000000e+00
  %6770 = select i1 %6768, float 1.000000e+00, float -1.000000e+00
  %6771 = select i1 %6769, float 1.000000e+00, float -1.000000e+00
  %6772 = fcmp fast ole float %6709, 0.000000e+00
  %6773 = fmul fast float %6770, %6766
  %6774 = fmul fast float %6771, %6767
  %6775 = select i1 %6772, float %6773, float %6762
  %6776 = select i1 %6772, float %6774, float %6763
  %6777 = fmul fast float %6775, 5.000000e-01
  %6778 = fmul fast float %6776, 5.000000e-01
  %6779 = fadd fast float %6777, 5.000000e-01
  %6780 = fadd fast float %6778, 5.000000e-01
  %6781 = uitofp i32 %6546 to float
  %6782 = call float @dx.op.binary.f32(i32 36, float %6753, float 3.000000e+00)  ; FMin(a,b)
  %6783 = fadd fast float %6782, 2.000000e+00
  %6784 = call float @dx.op.unary.f32(i32 21, float %6783)  ; Exp(value)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6750, 1
  %6786 = fmul fast float %6785, %6784
  %6787 = fmul fast float %6786, 2.000000e+00
  %6788 = fsub fast float 1.000000e+00, %6787
  %6789 = fmul fast float %6779, %6788
  %6790 = fmul fast float %6780, %6788
  %6791 = fadd fast float %6789, %6786
  %6792 = fadd fast float %6790, %6786
  %6793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %6791, float %6792, float %6781, float undef, i32 0, i32 0, i32 undef, float %6753)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6794 = extractvalue %dx.types.ResRet.f32 %6793, 0
  %6795 = extractvalue %dx.types.ResRet.f32 %6793, 1
  %6796 = extractvalue %dx.types.ResRet.f32 %6793, 2
  %6797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6798 = extractvalue %dx.types.CBufRet.f32 %6797, 3
  %6799 = fmul fast float %6798, %6516
  %6800 = call float @dx.op.binary.f32(i32 36, float %6084, float %6799)  ; FMin(a,b)
  %6801 = select i1 %6749, float %6800, float %6799
  %6802 = fmul fast float %6794, %6594
  %6803 = fmul fast float %6802, %6801
  %6804 = fmul fast float %6795, %6594
  %6805 = fmul fast float %6804, %6801
  %6806 = fmul fast float %6796, %6594
  %6807 = fmul fast float %6806, %6801
  %6808 = fadd fast float %6803, %6491
  %6809 = fadd fast float %6805, %6492
  %6810 = fadd fast float %6807, %6493
  %6811 = fsub fast float %6494, %6594
  br label %6596

; <label>:6812                                    ; preds = %6596
  br label %6813

; <label>:6813                                    ; preds = %6812, %6460
  %6814 = phi float [ %6461, %6460 ], [ %6597, %6812 ]
  %6815 = phi float [ %6462, %6460 ], [ %6598, %6812 ]
  %6816 = phi float [ %6463, %6460 ], [ %6599, %6812 ]
  %6817 = phi float [ %6464, %6460 ], [ %6600, %6812 ]
  %6818 = add i32 %6465, 1
  %6819 = icmp ugt i32 %6818, %6457
  br i1 %6819, label %6820, label %6460, !llvm.loop !95

; <label>:6820                                    ; preds = %6813
  br label %6821

; <label>:6821                                    ; preds = %6820, %6442
  %6822 = phi float [ 0.000000e+00, %6442 ], [ %6814, %6820 ]
  %6823 = phi float [ 0.000000e+00, %6442 ], [ %6815, %6820 ]
  %6824 = phi float [ 0.000000e+00, %6442 ], [ %6816, %6820 ]
  %6825 = call float @dx.op.dot3.f32(i32 55, float %6822, float %6823, float %6824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6826 = select i1 %296, float 0.000000e+00, float %6822
  %6827 = select i1 %296, float %6825, float %6823
  %6828 = select i1 %296, float 0.000000e+00, float %6824
  %6829 = fcmp fast olt float %6395, 0.000000e+00
  %6830 = call float @dx.op.unary.f32(i32 6, float %6395)  ; FAbs(value)
  %6831 = fmul fast float %6830, %6324
  %6832 = fmul fast float %6830, %6325
  %6833 = fmul fast float %6830, %6326
  %6834 = select i1 %6829, float %6324, float %6831
  %6835 = select i1 %6829, float %6325, float %6832
  %6836 = select i1 %6829, float %6326, float %6833
  %6837 = fsub fast float 1.000000e+00, %6830
  %6838 = call float @dx.op.unary.f32(i32 7, float %6837)  ; Saturate(value)
  %6839 = fmul fast float %6838, %6826
  %6840 = fmul fast float %6838, %6827
  %6841 = fmul fast float %6838, %6828
  %6842 = fadd fast float %6834, %6839
  %6843 = fadd fast float %6835, %6840
  %6844 = fadd fast float %6836, %6841
  br label %6845

; <label>:6845                                    ; preds = %6821, %6378
  %6846 = phi float [ %6324, %6378 ], [ %6842, %6821 ]
  %6847 = phi float [ %6325, %6378 ], [ %6843, %6821 ]
  %6848 = phi float [ %6326, %6378 ], [ %6844, %6821 ]
  %6849 = call float @dx.op.dot3.f32(i32 55, float %6047, float %6048, float %6049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6850 = fcmp fast ogt float %6849, 0x3E7FF19E20000000
  %6851 = fdiv fast float 1.000000e+00, %6849
  %6852 = select i1 %6850, float %6851, float 0.000000e+00
  %6853 = fmul fast float %6852, %6047
  %6854 = fmul fast float %6852, %6048
  %6855 = fmul fast float %6852, %6049
  %6856 = fadd fast float %6853, -1.000000e+00
  %6857 = fadd fast float %6854, -1.000000e+00
  %6858 = fadd fast float %6855, -1.000000e+00
  %6859 = fmul fast float %6856, 5.000000e-01
  %6860 = fmul fast float %6857, 5.000000e-01
  %6861 = fmul fast float %6858, 5.000000e-01
  %6862 = fadd fast float %6859, 1.000000e+00
  %6863 = fadd fast float %6860, 1.000000e+00
  %6864 = fadd fast float %6861, 1.000000e+00
  %6865 = call float @dx.op.binary.f32(i32 35, float %6057, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6866 = fdiv fast float %4037, %6865
  %6867 = fcmp fast olt float %4804, 1.270000e+02
  %6868 = fcmp fast olt float %4805, 1.270000e+02
  %6869 = fcmp fast olt float %4806, 1.270000e+02
  %6870 = fmul fast float %4804, 0xBFF7154760000000
  %6871 = fmul fast float %6870, %6866
  %6872 = fmul fast float %4805, 0xBFF7154760000000
  %6873 = fmul fast float %6872, %6866
  %6874 = fmul fast float %4806, 0xBFF7154760000000
  %6875 = fmul fast float %6874, %6866
  %6876 = call float @dx.op.unary.f32(i32 21, float %6871)  ; Exp(value)
  %6877 = call float @dx.op.unary.f32(i32 21, float %6873)  ; Exp(value)
  %6878 = call float @dx.op.unary.f32(i32 21, float %6875)  ; Exp(value)
  %6879 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  %6880 = call float @dx.op.unary.f32(i32 7, float %6877)  ; Saturate(value)
  %6881 = call float @dx.op.unary.f32(i32 7, float %6878)  ; Saturate(value)
  %6882 = select i1 %6867, float %6879, float 0.000000e+00
  %6883 = select i1 %6868, float %6880, float 0.000000e+00
  %6884 = select i1 %6869, float %6881, float 0.000000e+00
  %6885 = fmul fast float %6882, %6384
  %6886 = fmul fast float %6883, %6384
  %6887 = fmul fast float %6884, %6384
  %6888 = fadd fast float %6885, -1.000000e+00
  %6889 = fadd fast float %6886, -1.000000e+00
  %6890 = fadd fast float %6887, -1.000000e+00
  %6891 = fmul fast float %6888, %4759
  %6892 = fmul fast float %6889, %4759
  %6893 = fmul fast float %6890, %4759
  %6894 = fmul fast float %6846, %6379
  %6895 = fmul fast float %6847, %6380
  %6896 = fmul fast float %6848, %6381
  %6897 = fsub fast float 1.000000e+00, %6057
  %6898 = bitcast float %6897 to i32
  %6899 = sitofp i32 %6898 to float
  %6900 = fmul fast float %6899, 5.000000e+00
  %6901 = fadd fast float %6900, 0xC1EFBF8940000000
  %6902 = fptosi float %6901 to i32
  %6903 = bitcast i32 %6902 to float
  %6904 = fmul fast float %6903, %4734
  %6905 = fmul fast float %6316, %6904
  %6906 = fmul fast float %6905, %6384
  %6907 = fmul fast float %6906, %6862
  %6908 = fmul fast float %6317, %6904
  %6909 = fmul fast float %6908, %6384
  %6910 = fmul fast float %6909, %6863
  %6911 = fmul fast float %6318, %6904
  %6912 = fmul fast float %6911, %6384
  %6913 = fmul fast float %6912, %6864
  %6914 = fadd fast float %6894, %4717
  %6915 = fadd fast float %6914, %6907
  %6916 = fmul fast float %6915, %4759
  %6917 = fadd fast float %6895, %4718
  %6918 = fadd fast float %6917, %6910
  %6919 = fmul fast float %6918, %4759
  %6920 = fadd fast float %6896, %4719
  %6921 = fadd fast float %6920, %6913
  %6922 = fmul fast float %6921, %4759
  %6923 = fmul fast float %6045, 0x4012D0A400000000
  %6924 = fadd fast float %6893, 1.000000e+00
  %6925 = fadd fast float %6892, 1.000000e+00
  %6926 = fadd fast float %6891, 1.000000e+00
  %6927 = fmul fast float %6384, %6318
  %6928 = fmul fast float %6384, %6317
  %6929 = fmul fast float %6384, %6316
  %6930 = fmul fast float %6072, %4759
  %6931 = fsub fast float 1.000000e+00, %6930
  %6932 = call float @dx.op.unary.f32(i32 7, float %6931)  ; Saturate(value)
  %6933 = fsub fast float 1.000000e+00, %6932
  %6934 = fadd fast float %6923, 0x3FDB6377A0000000
  %6935 = fmul fast float %6933, %6934
  %6936 = call float @dx.op.dot3.f32(i32 55, float %5680, float %5681, float %5682, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6937 = fadd fast float %6935, %6936
  %6938 = call float @dx.op.unary.f32(i32 7, float %6937)  ; Saturate(value)
  %6939 = call float @dx.op.binary.f32(i32 35, float %6938, float 0x3F847AE140000000)  ; FMax(a,b)
  %6940 = fmul fast float %6939, %6939
  %6941 = fmul fast float %6940, %6940
  %6942 = fmul fast float %6941, 0xC00A935000000000
  %6943 = call float @dx.op.unary.f32(i32 21, float %6942)  ; Exp(value)
  %6944 = fsub fast float 1.000000e+00, %6943
  %6945 = fmul fast float %6926, %6320
  %6946 = fmul fast float %6945, %6944
  %6947 = fmul fast float %6925, %6321
  %6948 = fmul fast float %6947, %6944
  %6949 = fmul fast float %6924, %6322
  %6950 = fmul fast float %6949, %6944
  %6951 = fadd fast float %6946, %6929
  %6952 = fmul fast float %6951, %4759
  %6953 = fadd fast float %6948, %6928
  %6954 = fmul fast float %6953, %4759
  %6955 = fadd fast float %6950, %6927
  %6956 = fmul fast float %6955, %4759
  %6957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6958 = extractvalue %dx.types.CBufRet.f32 %6957, 3
  %6959 = fcmp fast oeq float %6958, 0.000000e+00
  br i1 %6959, label %8724, label %6960

; <label>:6960                                    ; preds = %6845
  %6961 = extractvalue %dx.types.CBufRet.f32 %6957, 0
  %6962 = extractvalue %dx.types.CBufRet.f32 %6957, 1
  %6963 = extractvalue %dx.types.CBufRet.f32 %6957, 2
  %6964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6965 = extractvalue %dx.types.CBufRet.f32 %6964, 0
  %6966 = extractvalue %dx.types.CBufRet.f32 %6964, 1
  %6967 = extractvalue %dx.types.CBufRet.f32 %6964, 2
  %6968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6969 = extractvalue %dx.types.CBufRet.f32 %6968, 0
  %6970 = extractvalue %dx.types.CBufRet.f32 %6968, 1
  %6971 = call float @dx.op.dot3.f32(i32 55, float %6965, float %6966, float %6967, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6972 = select i1 %296, float %6969, float %6965
  %6973 = select i1 %296, float %6971, float %6966
  %6974 = select i1 %296, float %6970, float %6967
  %6975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6976 = extractvalue %dx.types.CBufRet.f32 %6975, 2
  %6977 = fmul fast float %6976, %118
  %6978 = fmul fast float %6976, %119
  %6979 = fmul fast float %6976, %120
  %6980 = fadd fast float %6977, %190
  %6981 = fadd fast float %6978, %191
  %6982 = fadd fast float %6979, %192
  %6983 = fcmp fast olt float %6958, 0.000000e+00
  br i1 %6983, label %8241, label %6984

; <label>:6984                                    ; preds = %6960
  %6985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6986 = extractvalue %dx.types.CBufRet.f32 %6985, 0
  %6987 = extractvalue %dx.types.CBufRet.f32 %6985, 1
  %6988 = extractvalue %dx.types.CBufRet.f32 %6985, 2
  %6989 = extractvalue %dx.types.CBufRet.f32 %6985, 3
  %6990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6991 = extractvalue %dx.types.CBufRet.f32 %6990, 0
  %6992 = extractvalue %dx.types.CBufRet.f32 %6990, 1
  %6993 = extractvalue %dx.types.CBufRet.f32 %6990, 2
  %6994 = extractvalue %dx.types.CBufRet.f32 %6990, 3
  %6995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6996 = extractvalue %dx.types.CBufRet.f32 %6995, 0
  %6997 = extractvalue %dx.types.CBufRet.f32 %6995, 1
  %6998 = extractvalue %dx.types.CBufRet.f32 %6995, 2
  %6999 = extractvalue %dx.types.CBufRet.f32 %6995, 3
  %7000 = fmul fast float %6986, %6980
  %7001 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %6987, float %7000)  ; FMad(a,b,c)
  %7002 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %6988, float %7001)  ; FMad(a,b,c)
  %7003 = fadd fast float %7002, %6989
  %7004 = fmul fast float %6991, %6980
  %7005 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %6992, float %7004)  ; FMad(a,b,c)
  %7006 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %6993, float %7005)  ; FMad(a,b,c)
  %7007 = fadd fast float %7006, %6994
  %7008 = fmul fast float %6996, %6980
  %7009 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %6997, float %7008)  ; FMad(a,b,c)
  %7010 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %6998, float %7009)  ; FMad(a,b,c)
  %7011 = fadd fast float %7010, %6999
  %7012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7013 = extractvalue %dx.types.CBufRet.f32 %7012, 0
  %7014 = fcmp fast une float %7013, 0.000000e+00
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7019 = fmul fast float %7018, %7003
  %7020 = fmul fast float %7018, %7007
  %7021 = fadd fast float %7019, %7016
  %7022 = fadd fast float %7020, %7017
  %7023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %7024 = extractvalue %dx.types.CBufRet.f32 %7023, 0
  %7025 = extractvalue %dx.types.CBufRet.f32 %7023, 1
  %7026 = extractvalue %dx.types.CBufRet.f32 %7023, 3
  %7027 = fmul fast float %7026, %7003
  %7028 = fmul fast float %7026, %7007
  %7029 = fadd fast float %7027, %7024
  %7030 = fadd fast float %7028, %7025
  %7031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %7032 = extractvalue %dx.types.CBufRet.f32 %7031, 1
  %7033 = fsub fast float %7032, %7011
  %7034 = extractvalue %dx.types.CBufRet.f32 %7031, 2
  %7035 = fmul fast float %7033, %7034
  %7036 = fsub fast float 1.000000e+00, %7035
  %7037 = call float @dx.op.unary.f32(i32 7, float %7036)  ; Saturate(value)
  br i1 %7014, label %7098, label %7038

; <label>:7038                                    ; preds = %6984
  %7039 = extractvalue %dx.types.CBufRet.f32 %7023, 2
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 2
  %7042 = fadd fast float %7041, %7039
  %7043 = fcmp fast ogt float %7042, 0.000000e+00
  br i1 %7043, label %7044, label %7068

; <label>:7044                                    ; preds = %7038
  %7045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7046 = extractvalue %dx.types.CBufRet.f32 %7045, 0
  %7047 = extractvalue %dx.types.CBufRet.f32 %7045, 1
  %7048 = fsub fast float %7029, %7046
  %7049 = fsub fast float %7030, %7047
  %7050 = fcmp fast olt float %7048, 0.000000e+00
  %7051 = fcmp fast olt float %7049, 0.000000e+00
  %7052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7053 = extractvalue %dx.types.CBufRet.f32 %7052, 0
  %7054 = extractvalue %dx.types.CBufRet.f32 %7052, 1
  %7055 = extractvalue %dx.types.CBufRet.f32 %7052, 2
  %7056 = extractvalue %dx.types.CBufRet.f32 %7052, 3
  %7057 = select i1 %7050, float %7053, float %7055
  %7058 = select i1 %7051, float %7054, float %7056
  %7059 = fmul fast float %7057, %7048
  %7060 = fmul fast float %7058, %7049
  %7061 = call float @dx.op.unary.f32(i32 6, float %7059)  ; FAbs(value)
  %7062 = call float @dx.op.unary.f32(i32 6, float %7060)  ; FAbs(value)
  %7063 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %7064 = call float @dx.op.binary.f32(i32 35, float %7061, float %7062)  ; FMax(a,b)
  %7065 = fsub fast float %7063, %7064
  %7066 = call float @dx.op.unary.f32(i32 7, float %7065)  ; Saturate(value)
  %7067 = fmul fast float %7066, %7037
  br label %7068

; <label>:7068                                    ; preds = %7044, %7038
  %7069 = phi float [ %7067, %7044 ], [ 0.000000e+00, %7038 ]
  %7070 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %7071 = extractvalue %dx.types.CBufRet.f32 %7040, 1
  %7072 = fadd fast float %7071, %7070
  %7073 = fcmp fast ogt float %7072, 0.000000e+00
  br i1 %7073, label %7074, label %7098

; <label>:7074                                    ; preds = %7068
  %7075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7075, 0
  %7077 = extractvalue %dx.types.CBufRet.f32 %7075, 1
  %7078 = fsub fast float %7021, %7076
  %7079 = fsub fast float %7022, %7077
  %7080 = fcmp fast olt float %7078, 0.000000e+00
  %7081 = fcmp fast olt float %7079, 0.000000e+00
  %7082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7083 = extractvalue %dx.types.CBufRet.f32 %7082, 0
  %7084 = extractvalue %dx.types.CBufRet.f32 %7082, 1
  %7085 = extractvalue %dx.types.CBufRet.f32 %7082, 2
  %7086 = extractvalue %dx.types.CBufRet.f32 %7082, 3
  %7087 = select i1 %7080, float %7083, float %7085
  %7088 = select i1 %7081, float %7084, float %7086
  %7089 = fmul fast float %7087, %7078
  %7090 = fmul fast float %7088, %7079
  %7091 = call float @dx.op.unary.f32(i32 6, float %7089)  ; FAbs(value)
  %7092 = call float @dx.op.unary.f32(i32 6, float %7090)  ; FAbs(value)
  %7093 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %7094 = call float @dx.op.binary.f32(i32 35, float %7091, float %7092)  ; FMax(a,b)
  %7095 = fsub fast float %7093, %7094
  %7096 = call float @dx.op.unary.f32(i32 7, float %7095)  ; Saturate(value)
  %7097 = fmul fast float %7096, %7037
  br label %7098

; <label>:7098                                    ; preds = %7074, %7068, %6984
  %7099 = phi float [ 0.000000e+00, %6984 ], [ %7097, %7074 ], [ 0.000000e+00, %7068 ]
  %7100 = phi float [ 0.000000e+00, %6984 ], [ %7069, %7074 ], [ %7069, %7068 ]
  %7101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7102 = extractvalue %dx.types.CBufRet.f32 %7101, 1
  %7103 = call float @dx.op.unary.f32(i32 7, float %7102)  ; Saturate(value)
  %7104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7105 = extractvalue %dx.types.CBufRet.f32 %7104, 0
  %7106 = extractvalue %dx.types.CBufRet.f32 %7104, 1
  %7107 = fsub fast float %7003, %7105
  %7108 = fsub fast float %7007, %7106
  %7109 = fcmp fast olt float %7107, 0.000000e+00
  %7110 = fcmp fast olt float %7108, 0.000000e+00
  %7111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7112 = extractvalue %dx.types.CBufRet.f32 %7111, 0
  %7113 = extractvalue %dx.types.CBufRet.f32 %7111, 1
  %7114 = extractvalue %dx.types.CBufRet.f32 %7111, 2
  %7115 = extractvalue %dx.types.CBufRet.f32 %7111, 3
  %7116 = select i1 %7109, float %7112, float %7114
  %7117 = select i1 %7110, float %7113, float %7115
  %7118 = fmul fast float %7116, %7107
  %7119 = fmul fast float %7117, %7108
  %7120 = call float @dx.op.unary.f32(i32 6, float %7118)  ; FAbs(value)
  %7121 = call float @dx.op.unary.f32(i32 6, float %7119)  ; FAbs(value)
  %7122 = extractvalue %dx.types.CBufRet.f32 %6975, 0
  %7123 = call float @dx.op.binary.f32(i32 35, float %7120, float %7121)  ; FMax(a,b)
  %7124 = fsub fast float %7122, %7123
  %7125 = call float @dx.op.unary.f32(i32 7, float %7124)  ; Saturate(value)
  %7126 = call float @dx.op.binary.f32(i32 36, float %7125, float %7103)  ; FMin(a,b)
  %7127 = fmul fast float %7126, %7037
  %7128 = fsub fast float %7099, %7127
  %7129 = fsub fast float %7100, %7099
  %7130 = fsub fast float %7129, %7127
  %7131 = call float @dx.op.binary.f32(i32 35, float %7099, float %7100)  ; FMax(a,b)
  %7132 = call float @dx.op.binary.f32(i32 35, float %7127, float %7131)  ; FMax(a,b)
  %7133 = fcmp fast olt float %7132, 1.000000e+00
  br i1 %7133, label %7134, label %7532, !dx.controlflow.hints !97

; <label>:7134                                    ; preds = %7098
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7137 = fcmp fast une float %7136, 0.000000e+00
  br i1 %7137, label %7138, label %7532, !dx.controlflow.hints !98

; <label>:7138                                    ; preds = %7134
  %7139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7140 = extractvalue %dx.types.CBufRet.f32 %7139, 0
  %7141 = extractvalue %dx.types.CBufRet.f32 %7139, 1
  %7142 = extractvalue %dx.types.CBufRet.f32 %7139, 2
  %7143 = extractvalue %dx.types.CBufRet.f32 %7139, 3
  %7144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7145 = extractvalue %dx.types.CBufRet.f32 %7144, 0
  %7146 = extractvalue %dx.types.CBufRet.f32 %7144, 1
  %7147 = extractvalue %dx.types.CBufRet.f32 %7144, 2
  %7148 = extractvalue %dx.types.CBufRet.f32 %7144, 3
  %7149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7150 = extractvalue %dx.types.CBufRet.f32 %7149, 0
  %7151 = extractvalue %dx.types.CBufRet.f32 %7149, 1
  %7152 = extractvalue %dx.types.CBufRet.f32 %7149, 2
  %7153 = extractvalue %dx.types.CBufRet.f32 %7149, 3
  %7154 = fmul fast float %7140, %6980
  %7155 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %7141, float %7154)  ; FMad(a,b,c)
  %7156 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %7142, float %7155)  ; FMad(a,b,c)
  %7157 = fadd fast float %7156, %7143
  %7158 = fmul fast float %7145, %6980
  %7159 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %7146, float %7158)  ; FMad(a,b,c)
  %7160 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %7147, float %7159)  ; FMad(a,b,c)
  %7161 = fadd fast float %7160, %7148
  %7162 = fmul fast float %7150, %6980
  %7163 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %7151, float %7162)  ; FMad(a,b,c)
  %7164 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %7152, float %7163)  ; FMad(a,b,c)
  %7165 = fadd fast float %7164, %7153
  %7166 = fcmp fast oge float %7157, 1.000000e+00
  %7167 = fcmp fast oge float %7161, 1.000000e+00
  %7168 = or i1 %7166, %7167
  %7169 = fcmp fast olt float %7157, 0.000000e+00
  %7170 = fcmp fast olt float %7161, 0.000000e+00
  %7171 = or i1 %7169, %7170
  %7172 = or i1 %7168, %7171
  br i1 %7172, label %7532, label %7173, !dx.controlflow.hints !99

; <label>:7173                                    ; preds = %7138
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7176 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7177 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7178 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7179 = extractvalue %dx.types.CBufRet.i32 %7178, 2
  %7180 = uitofp i32 %7179 to float
  %7181 = extractvalue %dx.types.CBufRet.i32 %7178, 3
  %7182 = uitofp i32 %7181 to float
  %7183 = extractvalue %dx.types.CBufRet.f32 %7174, 3
  %7184 = fmul fast float %7183, 2.000000e+00
  %7185 = fsub fast float %7157, %7175
  %7186 = fsub fast float %7161, %7176
  %7187 = fmul fast float %7184, %7185
  %7188 = fmul fast float %7184, %7186
  %7189 = fdiv fast float 1.000000e+00, %6963
  %7190 = fmul fast float %7188, %7189
  %7191 = call float @dx.op.unary.f32(i32 6, float %7190)  ; FAbs(value)
  %7192 = fmul fast float %7177, %6982
  %7193 = fmul fast float %7192, %7184
  %7194 = call float @dx.op.unary.f32(i32 6, float %7193)  ; FAbs(value)
  %7195 = call float @dx.op.unary.f32(i32 6, float %7187)  ; FAbs(value)
  %7196 = call float @dx.op.binary.f32(i32 35, float %7194, float %7191)  ; FMax(a,b)
  %7197 = call float @dx.op.binary.f32(i32 35, float %7195, float %7196)  ; FMax(a,b)
  %7198 = fmul fast float %7197, 2.000000e+00
  %7199 = call float @dx.op.unary.f32(i32 23, float %7198)  ; Log(value)
  %7200 = call float @dx.op.binary.f32(i32 35, float %7199, float %7180)  ; FMax(a,b)
  %7201 = call float @dx.op.unary.f32(i32 22, float %7200)  ; Frc(value)
  %7202 = fadd fast float %7201, 0xBFEA666660000000
  %7203 = fmul fast float %7202, 8.000000e+00
  %7204 = call float @dx.op.unary.f32(i32 7, float %7203)  ; Saturate(value)
  %7205 = call float @dx.op.unary.f32(i32 27, float %7200)  ; Round_ni(value)
  %7206 = fadd fast float %7205, %7204
  %7207 = call float @dx.op.binary.f32(i32 36, float %7206, float %7182)  ; FMin(a,b)
  %7208 = call float @dx.op.unary.f32(i32 27, float %7207)  ; Round_ni(value)
  %7209 = fsub fast float -0.000000e+00, %7208
  %7210 = call float @dx.op.unary.f32(i32 21, float %7209)  ; Exp(value)
  %7211 = fmul fast float %7210, %7184
  %7212 = fmul fast float %7211, %7157
  %7213 = fmul fast float %7211, %7161
  %7214 = fmul fast float %7212, 2.500000e-01
  %7215 = fmul fast float %7213, 2.500000e-01
  %7216 = fadd fast float %7214, 5.000000e-01
  %7217 = fadd fast float %7215, 5.000000e-01
  %7218 = fsub fast float %7182, %7180
  %7219 = fptoui float %7218 to i32
  %7220 = add i32 %7219, 320
  %7221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7220)  ; CBufferLoadLegacy(handle,regIndex)
  %7222 = extractvalue %dx.types.CBufRet.f32 %7221, 0
  %7223 = extractvalue %dx.types.CBufRet.f32 %7221, 1
  %7224 = fcmp fast une float %7207, %7182
  %7225 = fsub fast float %7157, %7222
  %7226 = fsub fast float %7161, %7223
  %7227 = call float @dx.op.unary.f32(i32 6, float %7225)  ; FAbs(value)
  %7228 = call float @dx.op.unary.f32(i32 6, float %7226)  ; FAbs(value)
  %7229 = fmul fast float %7227, %7211
  %7230 = fmul fast float %7228, %7211
  %7231 = fcmp fast olt float %7229, 1.000000e+00
  %7232 = fcmp fast olt float %7230, 1.000000e+00
  %7233 = and i1 %7231, %7232
  %7234 = or i1 %7224, %7233
  br i1 %7234, label %7235, label %7532, !dx.controlflow.hints !100

; <label>:7235                                    ; preds = %7173
  %7236 = fmul fast float %7213, 5.000000e-01
  %7237 = fmul fast float %7212, 5.000000e-01
  %7238 = fadd fast float %7236, 5.000000e-01
  %7239 = fadd fast float %7237, 5.000000e-01
  %7240 = sitofp i32 %7179 to float
  %7241 = fsub fast float %7207, %7240
  %7242 = call float @dx.op.unary.f32(i32 27, float %7241)  ; Round_ni(value)
  %7243 = call float @dx.op.unary.f32(i32 22, float %7207)  ; Frc(value)
  %7244 = call float @dx.op.unary.f32(i32 22, float %7239)  ; Frc(value)
  %7245 = call float @dx.op.unary.f32(i32 22, float %7238)  ; Frc(value)
  %7246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %7244, float %7245, float %7242, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7247 = extractvalue %dx.types.ResRet.f32 %7246, 0
  %7248 = extractvalue %dx.types.ResRet.f32 %7246, 1
  %7249 = extractvalue %dx.types.ResRet.f32 %7246, 2
  %7250 = extractvalue %dx.types.ResRet.f32 %7246, 3
  %7251 = fcmp fast ogt float %7243, 0.000000e+00
  br i1 %7251, label %7252, label %7273, !dx.controlflow.hints !101

; <label>:7252                                    ; preds = %7235
  %7253 = fadd fast float %7242, 1.000000e+00
  %7254 = call float @dx.op.unary.f32(i32 22, float %7216)  ; Frc(value)
  %7255 = call float @dx.op.unary.f32(i32 22, float %7217)  ; Frc(value)
  %7256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %7254, float %7255, float %7253, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7257 = extractvalue %dx.types.ResRet.f32 %7256, 0
  %7258 = extractvalue %dx.types.ResRet.f32 %7256, 1
  %7259 = extractvalue %dx.types.ResRet.f32 %7256, 2
  %7260 = extractvalue %dx.types.ResRet.f32 %7256, 3
  %7261 = fsub fast float %7257, %7247
  %7262 = fsub fast float %7258, %7248
  %7263 = fsub fast float %7259, %7249
  %7264 = fsub fast float %7260, %7250
  %7265 = fmul fast float %7261, %7243
  %7266 = fmul fast float %7262, %7243
  %7267 = fmul fast float %7263, %7243
  %7268 = fmul fast float %7264, %7243
  %7269 = fadd fast float %7265, %7247
  %7270 = fadd fast float %7266, %7248
  %7271 = fadd fast float %7267, %7249
  %7272 = fadd fast float %7268, %7250
  br label %7273

; <label>:7273                                    ; preds = %7252, %7235
  %7274 = phi float [ %7269, %7252 ], [ %7247, %7235 ]
  %7275 = phi float [ %7270, %7252 ], [ %7248, %7235 ]
  %7276 = phi float [ %7271, %7252 ], [ %7249, %7235 ]
  %7277 = phi float [ %7272, %7252 ], [ %7250, %7235 ]
  %7278 = fadd fast float %7274, -5.000000e-01
  %7279 = fadd fast float %7276, -5.000000e-01
  %7280 = fmul fast float %7278, 0xBFD5555560000000
  %7281 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7279, float %7280)  ; FMad(a,b,c)
  %7282 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7275, float 0.000000e+00)  ; FMad(a,b,c)
  %7283 = fadd fast float %7282, %7277
  %7284 = fmul fast float %7278, -7.500000e-01
  %7285 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7279, float %7284)  ; FMad(a,b,c)
  %7286 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7275, float 0.000000e+00)  ; FMad(a,b,c)
  %7287 = fadd fast float %7286, %7277
  %7288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7289 = extractvalue %dx.types.CBufRet.f32 %7288, 0
  %7290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7291 = extractvalue %dx.types.CBufRet.f32 %7290, 0
  %7292 = extractvalue %dx.types.CBufRet.f32 %7290, 1
  %7293 = extractvalue %dx.types.CBufRet.f32 %7290, 2
  %7294 = extractvalue %dx.types.CBufRet.f32 %7290, 3
  %7295 = fsub fast float %7291, %7281
  %7296 = fsub fast float %7292, %7283
  %7297 = fsub fast float %7293, %7285
  %7298 = fsub fast float %7294, %7287
  %7299 = fmul fast float %7295, %7289
  %7300 = fmul fast float %7296, %7289
  %7301 = fmul fast float %7297, %7289
  %7302 = fmul fast float %7298, %7289
  %7303 = fadd fast float %7299, %7281
  %7304 = fadd fast float %7300, %7283
  %7305 = fadd fast float %7301, %7285
  %7306 = fadd fast float %7302, %7287
  %7307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7308 = extractvalue %dx.types.ResRet.i32 %7307, 0
  %7309 = and i32 %7308, 536870911
  %7310 = uitofp i32 %7309 to float
  %7311 = fmul fast float %7310, %7157
  %7312 = fmul fast float %7310, %7161
  %7313 = fptoui float %7311 to i32
  %7314 = fptoui float %7312 to i32
  %7315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7316 = extractvalue %dx.types.ResRet.i32 %7315, 0
  %7317 = and i32 %7316, 31
  %7318 = lshr i32 %7313, %7317
  %7319 = lshr i32 %7314, %7317
  %7320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7321 = extractvalue %dx.types.ResRet.i32 %7320, 0
  %7322 = and i32 %7321, 31
  %7323 = shl i32 1, %7322
  %7324 = call i32 @dx.op.binary.i32(i32 40, i32 %7323, i32 4)  ; UMin(a,b)
  %7325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7326 = extractvalue %dx.types.ResRet.i32 %7325, 0
  %7327 = extractvalue %dx.types.ResRet.i32 %7325, 1
  %7328 = icmp eq i32 %7324, 0
  br i1 %7328, label %7370, label %7329

; <label>:7329                                    ; preds = %7273
  br label %7330

; <label>:7330                                    ; preds = %7358, %7329
  %7331 = phi i32 [ %7361, %7358 ], [ 0, %7329 ]
  %7332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7333 = extractvalue %dx.types.ResRet.i32 %7332, 0
  %7334 = lshr i32 %7333, 16
  %7335 = and i32 %7334, 31
  %7336 = shl i32 %7319, %7335
  %7337 = add i32 %7336, %7318
  %7338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7339 = extractvalue %dx.types.ResRet.i32 %7338, 0
  %7340 = and i32 %7339, 31
  %7341 = shl i32 %7337, %7340
  %7342 = add i32 %7341, %7331
  %7343 = shl i32 %7342, 2
  %7344 = add i32 %7343, 32
  %7345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7344, i32 undef)  ; BufferLoad(srv,index,wot)
  %7346 = extractvalue %dx.types.ResRet.i32 %7345, 0
  %7347 = icmp slt i32 %7346, 0
  %7348 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7331
  %7349 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7331
  %7350 = bitcast float* %7348 to i32*
  %7351 = bitcast float* %7349 to i32*
  br i1 %7347, label %7352, label %7358

; <label>:7352                                    ; preds = %7330
  %7353 = and i32 %7346, 1073741823
  %7354 = add nuw nsw i32 %7353, 20
  %7355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7354, i32 undef)  ; BufferLoad(srv,index,wot)
  %7356 = extractvalue %dx.types.ResRet.i32 %7355, 0
  %7357 = extractvalue %dx.types.ResRet.i32 %7355, 1
  br label %7358

; <label>:7358                                    ; preds = %7352, %7330
  %7359 = phi i32 [ %7356, %7352 ], [ %7326, %7330 ]
  %7360 = phi i32 [ %7357, %7352 ], [ %7327, %7330 ]
  store i32 %7359, i32* %7350, align 4
  store i32 %7360, i32* %7351, align 4
  %7361 = add nuw i32 %7331, 1
  %7362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.i32 %7362, 2
  %7364 = icmp eq i32 %7363, 0
  %7365 = icmp ugt i32 %7346, -1073741825
  %7366 = and i1 %7365, %7364
  %7367 = icmp ult i32 %7361, %7324
  %7368 = and i1 %7366, %7367
  br i1 %7368, label %7330, label %7369

; <label>:7369                                    ; preds = %7358
  br label %7370

; <label>:7370                                    ; preds = %7369, %7273
  %7371 = phi i32 [ 0, %7273 ], [ %7361, %7369 ]
  %7372 = extractvalue %dx.types.CBufRet.f32 %7135, 2
  %7373 = fptoui float %7372 to i32
  %7374 = icmp eq i32 %7373, 0
  br i1 %7374, label %7426, label %7375

; <label>:7375                                    ; preds = %7370
  br label %7376

; <label>:7376                                    ; preds = %7421, %7375
  %7377 = phi i32 [ %7422, %7421 ], [ %7371, %7375 ]
  %7378 = phi i32 [ %7423, %7421 ], [ 0, %7375 ]
  %7379 = lshr i32 %7378, 2
  %7380 = and i32 %7378, 3
  %7381 = add nuw nsw i32 %7379, 83
  %7382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %7381)  ; CBufferLoadLegacy(handle,regIndex)
  %7383 = extractvalue %dx.types.CBufRet.i32 %7382, 0
  %7384 = extractvalue %dx.types.CBufRet.i32 %7382, 1
  %7385 = extractvalue %dx.types.CBufRet.i32 %7382, 2
  %7386 = extractvalue %dx.types.CBufRet.i32 %7382, 3
  %7387 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %7383, i32* %7387, align 4
  %7388 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %7384, i32* %7388, align 4
  %7389 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %7385, i32* %7389, align 4
  %7390 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %7386, i32* %7390, align 4
  %7391 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %7380
  %7392 = load i32, i32* %7391, align 4, !tbaa !102, !noalias !106
  %7393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7394 = extractvalue %dx.types.ResRet.i32 %7393, 0
  %7395 = lshr i32 %7394, 16
  %7396 = and i32 %7395, 31
  %7397 = shl i32 %7319, %7396
  %7398 = add i32 %7397, %7318
  %7399 = shl i32 %7398, 2
  %7400 = add i32 %7399, %7392
  %7401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7400, i32 undef)  ; BufferLoad(srv,index,wot)
  %7402 = extractvalue %dx.types.ResRet.i32 %7401, 0
  %7403 = icmp eq i32 %7402, 0
  br i1 %7403, label %7421, label %7404

; <label>:7404                                    ; preds = %7376
  %7405 = icmp slt i32 %7402, 0
  %7406 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7377
  %7407 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7377
  %7408 = bitcast float* %7406 to i32*
  %7409 = bitcast float* %7407 to i32*
  br i1 %7405, label %7410, label %7417

; <label>:7410                                    ; preds = %7404
  %7411 = and i32 %7402, 1073741823
  %7412 = add i32 %7392, 20
  %7413 = add i32 %7412, %7411
  %7414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7413, i32 undef)  ; BufferLoad(srv,index,wot)
  %7415 = extractvalue %dx.types.ResRet.i32 %7414, 0
  %7416 = extractvalue %dx.types.ResRet.i32 %7414, 1
  br label %7417

; <label>:7417                                    ; preds = %7410, %7404
  %7418 = phi i32 [ %7415, %7410 ], [ %7326, %7404 ]
  %7419 = phi i32 [ %7416, %7410 ], [ %7327, %7404 ]
  store i32 %7418, i32* %7408, align 4
  store i32 %7419, i32* %7409, align 4
  %7420 = add i32 %7377, 1
  br label %7421

; <label>:7421                                    ; preds = %7417, %7376
  %7422 = phi i32 [ %7377, %7376 ], [ %7420, %7417 ]
  %7423 = add nuw i32 %7378, 1
  %7424 = icmp eq i32 %7423, %7373
  br i1 %7424, label %7425, label %7376

; <label>:7425                                    ; preds = %7421
  br label %7426

; <label>:7426                                    ; preds = %7425, %7370
  %7427 = phi i32 [ %7371, %7370 ], [ %7422, %7425 ]
  %7428 = icmp eq i32 %7427, 1
  %7429 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7430 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7428, label %7431, label %7434

; <label>:7431                                    ; preds = %7426
  %7432 = load float, float* %7429, align 4
  %7433 = load float, float* %7430, align 4
  br label %7461

; <label>:7434                                    ; preds = %7426
  %7435 = load float, float* %7429, align 4
  %7436 = load float, float* %7430, align 4
  %7437 = fdiv fast float 1.000000e+00, %7436
  %7438 = fsub fast float %7435, %7437
  %7439 = icmp ugt i32 %7427, 1
  br i1 %7439, label %7440, label %7456

; <label>:7440                                    ; preds = %7434
  br label %7441

; <label>:7441                                    ; preds = %7441, %7440
  %7442 = phi float [ %7451, %7441 ], [ %7438, %7440 ]
  %7443 = phi float [ %7452, %7441 ], [ %7435, %7440 ]
  %7444 = phi i32 [ %7453, %7441 ], [ 1, %7440 ]
  %7445 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7444
  %7446 = load float, float* %7445, align 4
  %7447 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7444
  %7448 = load float, float* %7447, align 4
  %7449 = fdiv fast float 1.000000e+00, %7448
  %7450 = fsub fast float %7446, %7449
  %7451 = call float @dx.op.binary.f32(i32 36, float %7442, float %7450)  ; FMin(a,b)
  %7452 = call float @dx.op.binary.f32(i32 35, float %7443, float %7446)  ; FMax(a,b)
  %7453 = add nuw i32 %7444, 1
  %7454 = icmp eq i32 %7453, %7427
  br i1 %7454, label %7455, label %7441

; <label>:7455                                    ; preds = %7441
  br label %7456

; <label>:7456                                    ; preds = %7455, %7434
  %7457 = phi float [ %7438, %7434 ], [ %7451, %7455 ]
  %7458 = phi float [ %7435, %7434 ], [ %7452, %7455 ]
  %7459 = fsub fast float %7458, %7457
  %7460 = fdiv fast float 1.000000e+00, %7459
  br label %7461

; <label>:7461                                    ; preds = %7456, %7431
  %7462 = phi float [ %7432, %7431 ], [ %7458, %7456 ]
  %7463 = phi float [ %7433, %7431 ], [ %7460, %7456 ]
  %7464 = fadd fast float %7165, %7462
  %7465 = fmul fast float %7464, %7463
  %7466 = call float @dx.op.unary.f32(i32 7, float %7465)  ; Saturate(value)
  %7467 = fmul fast float %7466, 2.000000e+00
  %7468 = fsub fast float 1.000000e+00, %7467
  %7469 = fmul fast float %7303, %7303
  %7470 = fsub fast float %7304, %7469
  %7471 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7470)  ; FMax(a,b)
  %7472 = fdiv fast float 1.000000e+00, %7471
  %7473 = fmul fast float %7304, %7303
  %7474 = fsub fast float %7305, %7473
  %7475 = fsub fast float %7468, %7303
  %7476 = fmul fast float %7468, %7468
  %7477 = fsub fast float %7476, %7304
  %7478 = fmul fast float %7472, %7474
  %7479 = fmul fast float %7478, %7475
  %7480 = fsub fast float %7477, %7479
  %7481 = fmul fast float %7304, %7304
  %7482 = fsub fast float %7306, %7481
  %7483 = fmul fast float %7474, %7474
  %7484 = fmul fast float %7483, %7472
  %7485 = fsub fast float %7482, %7484
  %7486 = fdiv fast float %7480, %7485
  %7487 = fmul fast float %7486, %7474
  %7488 = fsub fast float %7475, %7487
  %7489 = fmul fast float %7488, %7472
  %7490 = fmul fast float %7489, %7303
  %7491 = fsub fast float 1.000000e+00, %7490
  %7492 = fmul fast float %7486, %7304
  %7493 = fsub fast float %7491, %7492
  %7494 = fmul fast float %7489, %7489
  %7495 = fmul fast float %7486, 4.000000e+00
  %7496 = fmul fast float %7495, %7493
  %7497 = fsub fast float %7494, %7496
  %7498 = call float @dx.op.unary.f32(i32 24, float %7497)  ; Sqrt(value)
  %7499 = fcmp fast oge float %7489, 0.000000e+00
  %7500 = fsub fast float -0.000000e+00, %7498
  %7501 = select i1 %7499, float %7500, float %7498
  %7502 = fsub fast float %7501, %7489
  %7503 = fdiv fast float %7502, %7486
  %7504 = fdiv fast float %7493, %7502
  %7505 = fmul fast float %7503, 5.000000e-01
  %7506 = fmul fast float %7504, 2.000000e+00
  %7507 = select i1 %7499, float %7505, float %7506
  %7508 = select i1 %7499, float %7506, float %7505
  %7509 = call float @dx.op.binary.f32(i32 35, float %7507, float %7508)  ; FMax(a,b)
  %7510 = call float @dx.op.binary.f32(i32 36, float %7507, float %7508)  ; FMin(a,b)
  %7511 = fcmp fast ogt float %7468, %7509
  %7512 = fsub fast float %7468, %7510
  %7513 = fsub fast float %7468, %7509
  %7514 = fsub fast float %7509, %7510
  %7515 = select i1 %7511, float %7513, float %7514
  %7516 = fmul float %7512, %7515
  %7517 = select i1 %7511, float %7510, float %7468
  %7518 = fcmp fast ogt float %7468, %7510
  %7519 = fmul fast float %7517, %7509
  %7520 = fadd fast float %7517, %7509
  %7521 = fmul fast float %7520, %7303
  %7522 = fadd fast float %7519, %7304
  %7523 = fsub fast float %7522, %7521
  %7524 = fdiv fast float %7523, %7516
  %7525 = select i1 %7518, float %7524, float 0.000000e+00
  %7526 = fsub fast float 1.000000e+00, %7525
  %7527 = select i1 %7511, float %7526, float %7525
  %7528 = call float @dx.op.unary.f32(i32 7, float %7527)  ; Saturate(value)
  %7529 = extractvalue %dx.types.CBufRet.f32 %7288, 3
  %7530 = fmul fast float %7529, %7528
  %7531 = fsub fast float 1.000000e+00, %7530
  br label %7532

; <label>:7532                                    ; preds = %7461, %7173, %7138, %7134, %7098
  %7533 = phi float [ 1.000000e+00, %7098 ], [ %7531, %7461 ], [ 1.000000e+00, %7138 ], [ 1.000000e+00, %7173 ], [ 1.000000e+00, %7134 ]
  %7534 = fcmp fast ogt float %7130, 0.000000e+00
  br i1 %7534, label %7535, label %7699, !dx.controlflow.hints !115

; <label>:7535                                    ; preds = %7532
  %7536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7537 = extractvalue %dx.types.CBufRet.f32 %7536, 2
  %7538 = fadd fast float %7537, %7011
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7541 = extractvalue %dx.types.CBufRet.f32 %7539, 3
  %7542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7543 = extractvalue %dx.types.CBufRet.f32 %7542, 2
  %7544 = call float @dx.op.binary.f32(i32 35, float %7538, float 0.000000e+00)  ; FMax(a,b)
  %7545 = fadd fast float %7544, 0x3F10000000000000
  %7546 = fcmp fast oeq float %7543, 0.000000e+00
  br i1 %7546, label %7547, label %7614

; <label>:7547                                    ; preds = %7535
  %7548 = extractvalue %dx.types.CBufRet.f32 %7539, 1
  %7549 = extractvalue %dx.types.CBufRet.f32 %7539, 0
  %7550 = fmul fast float %7549, %7029
  %7551 = fmul fast float %7548, %7030
  %7552 = fadd fast float %7550, 5.000000e-01
  %7553 = call float @dx.op.unary.f32(i32 27, float %7552)  ; Round_ni(value)
  %7554 = fadd fast float %7551, 5.000000e-01
  %7555 = call float @dx.op.unary.f32(i32 27, float %7554)  ; Round_ni(value)
  %7556 = fsub fast float %7552, %7553
  %7557 = fsub fast float %7554, %7555
  %7558 = fadd fast float %7553, -5.000000e-01
  %7559 = fadd fast float %7555, -5.000000e-01
  %7560 = fmul fast float %7556, 2.000000e+00
  %7561 = fsub fast float 3.000000e+00, %7560
  %7562 = fadd fast float %7560, 1.000000e+00
  %7563 = fsub fast float 2.000000e+00, %7556
  %7564 = bitcast float %7561 to i32
  %7565 = sub nsw i32 2129859010, %7564
  %7566 = bitcast i32 %7565 to float
  %7567 = fmul fast float %7566, %7563
  %7568 = fadd fast float %7567, -1.000000e+00
  %7569 = bitcast float %7562 to i32
  %7570 = sub nsw i32 2129859010, %7569
  %7571 = bitcast i32 %7570 to float
  %7572 = fmul fast float %7571, %7556
  %7573 = fadd fast float %7572, 1.000000e+00
  %7574 = fmul fast float %7557, 2.000000e+00
  %7575 = fsub fast float 3.000000e+00, %7574
  %7576 = fadd fast float %7574, 1.000000e+00
  %7577 = fsub fast float 2.000000e+00, %7557
  %7578 = bitcast float %7575 to i32
  %7579 = sub nsw i32 2129859010, %7578
  %7580 = bitcast i32 %7579 to float
  %7581 = fmul fast float %7580, %7577
  %7582 = fadd fast float %7581, -1.000000e+00
  %7583 = bitcast float %7576 to i32
  %7584 = sub nsw i32 2129859010, %7583
  %7585 = bitcast i32 %7584 to float
  %7586 = fmul fast float %7585, %7557
  %7587 = fadd fast float %7586, 1.000000e+00
  %7588 = fadd fast float %7568, %7558
  %7589 = fmul fast float %7588, %7540
  %7590 = fadd fast float %7582, %7559
  %7591 = fmul fast float %7590, %7541
  %7592 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7589, float %7591, float undef, float undef, i32 0, i32 0, i32 undef, float %7545)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7593 = extractvalue %dx.types.ResRet.f32 %7592, 0
  %7594 = fmul fast float %7593, %7561
  %7595 = fadd fast float %7573, %7558
  %7596 = fmul fast float %7595, %7540
  %7597 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7596, float %7591, float undef, float undef, i32 0, i32 0, i32 undef, float %7545)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7598 = extractvalue %dx.types.ResRet.f32 %7597, 0
  %7599 = fmul fast float %7598, %7562
  %7600 = fadd fast float %7587, %7559
  %7601 = fmul fast float %7600, %7541
  %7602 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7589, float %7601, float undef, float undef, i32 0, i32 0, i32 undef, float %7545)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7603 = extractvalue %dx.types.ResRet.f32 %7602, 0
  %7604 = fmul fast float %7603, %7561
  %7605 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7596, float %7601, float undef, float undef, i32 0, i32 0, i32 undef, float %7545)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7606 = extractvalue %dx.types.ResRet.f32 %7605, 0
  %7607 = fmul fast float %7606, %7562
  %7608 = fadd fast float %7607, %7604
  %7609 = fmul fast float %7608, %7576
  %7610 = fadd fast float %7599, %7594
  %7611 = fmul fast float %7610, %7575
  %7612 = fadd fast float %7611, %7609
  %7613 = fmul fast float %7612, 6.250000e-02
  br label %7699

; <label>:7614                                    ; preds = %7535
  %7615 = fmul fast float %307, 0x401921FB60000000
  %7616 = call float @dx.op.unary.f32(i32 13, float %7615)  ; Sin(value)
  %7617 = call float @dx.op.unary.f32(i32 12, float %7615)  ; Cos(value)
  %7618 = fsub fast float -0.000000e+00, %7616
  br label %7619

; <label>:7619                                    ; preds = %7668, %7614
  %7620 = phi float [ 0.000000e+00, %7614 ], [ %7663, %7668 ]
  %7621 = phi float [ 0.000000e+00, %7614 ], [ %7665, %7668 ]
  %7622 = phi i32 [ 0, %7614 ], [ %7669, %7668 ]
  %7623 = mul i32 %7622, 2
  %7624 = add i32 0, %7623
  %7625 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7624
  %7626 = load float, float* %7625, align 4
  %7627 = mul i32 %7622, 2
  %7628 = add i32 1, %7627
  %7629 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7628
  %7630 = load float, float* %7629, align 4
  %7631 = fmul fast float %7626, %7617
  %7632 = call float @dx.op.tertiary.f32(i32 46, float %7630, float %7618, float %7631)  ; FMad(a,b,c)
  %7633 = fmul fast float %7626, %7616
  %7634 = call float @dx.op.tertiary.f32(i32 46, float %7630, float %7617, float %7633)  ; FMad(a,b,c)
  %7635 = fmul fast float %7632, %7543
  %7636 = fmul fast float %7634, %7543
  %7637 = fadd fast float %7635, %7029
  %7638 = fadd fast float %7636, %7030
  %7639 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %7637, float %7638, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7640 = extractvalue %dx.types.ResRet.f32 %7639, 0
  %7641 = extractvalue %dx.types.ResRet.f32 %7639, 1
  %7642 = extractvalue %dx.types.ResRet.f32 %7639, 2
  %7643 = extractvalue %dx.types.ResRet.f32 %7639, 3
  %7644 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7640, float* %7644, align 4
  %7645 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7641, float* %7645, align 4
  %7646 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7642, float* %7646, align 4
  %7647 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7643, float* %7647, align 4
  %7648 = fsub fast float %7640, %7545
  %7649 = fcmp fast olt float %7648, 0.000000e+00
  %7650 = select i1 %7649, float 0.000000e+00, float 1.000000e+00
  %7651 = fadd fast float %7650, %7620
  %7652 = fmul fast float %7650, %7648
  %7653 = fadd fast float %7652, %7621
  br label %7654

; <label>:7654                                    ; preds = %7654, %7619
  %7655 = phi i32 [ 1, %7619 ], [ %7666, %7654 ]
  %7656 = phi float [ %7653, %7619 ], [ %7665, %7654 ]
  %7657 = phi float [ %7651, %7619 ], [ %7663, %7654 ]
  %7658 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7655
  %7659 = load float, float* %7658, align 4, !tbaa !116, !noalias !106
  %7660 = fsub fast float %7659, %7545
  %7661 = fcmp fast olt float %7660, 0.000000e+00
  %7662 = select i1 %7661, float 0.000000e+00, float 1.000000e+00
  %7663 = fadd fast float %7662, %7657
  %7664 = fmul fast float %7662, %7660
  %7665 = fadd fast float %7664, %7656
  %7666 = add nuw nsw i32 %7655, 1
  %7667 = icmp eq i32 %7666, 4
  br i1 %7667, label %7668, label %7654, !llvm.loop !118

; <label>:7668                                    ; preds = %7654
  %7669 = add nuw nsw i32 %7622, 1
  %7670 = icmp eq i32 %7669, 8
  br i1 %7670, label %7671, label %7619, !llvm.loop !119

; <label>:7671                                    ; preds = %7668
  %7672 = fdiv fast float 1.000000e+00, %7663
  %7673 = fmul fast float %7672, %7665
  %7674 = fdiv fast float 1.000000e+00, %7545
  %7675 = fmul fast float %7673, %7674
  %7676 = call float @dx.op.unary.f32(i32 7, float %7675)  ; Saturate(value)
  %7677 = call float @dx.op.binary.f32(i32 35, float %7676, float 0.000000e+00)  ; FMax(a,b)
  %7678 = fmul fast float %7663, 3.125000e-02
  %7679 = call float @dx.op.unary.f32(i32 7, float %7678)  ; Saturate(value)
  %7680 = fmul fast float %7679, 2.000000e+00
  %7681 = fadd fast float %7680, -1.000000e+00
  %7682 = fcmp fast ogt float %7681, 0.000000e+00
  %7683 = fcmp fast olt float %7681, 0.000000e+00
  %7684 = zext i1 %7682 to i32
  %7685 = zext i1 %7683 to i32
  %7686 = sub nsw i32 %7684, %7685
  %7687 = sitofp i32 %7686 to float
  %7688 = fmul fast float %7687, %7681
  %7689 = fsub fast float 1.000000e+00, %7688
  %7690 = fmul fast float %7689, %7689
  %7691 = fmul fast float %7690, %7689
  %7692 = fsub fast float %7689, %7691
  %7693 = fmul fast float %7692, %7677
  %7694 = fsub fast float 1.000000e+00, %7691
  %7695 = fsub fast float %7694, %7693
  %7696 = fmul fast float %7687, 5.000000e-01
  %7697 = fmul fast float %7696, %7695
  %7698 = fsub fast float 5.000000e-01, %7697
  br label %7699

; <label>:7699                                    ; preds = %7671, %7547, %7532
  %7700 = phi float [ 1.000000e+00, %7532 ], [ %7613, %7547 ], [ %7698, %7671 ]
  %7701 = fcmp fast ogt float %7128, 0.000000e+00
  br i1 %7701, label %7702, label %7866, !dx.controlflow.hints !120

; <label>:7702                                    ; preds = %7699
  %7703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7704 = extractvalue %dx.types.CBufRet.f32 %7703, 1
  %7705 = fadd fast float %7704, %7011
  %7706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.f32 %7706, 2
  %7708 = extractvalue %dx.types.CBufRet.f32 %7706, 3
  %7709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7710 = extractvalue %dx.types.CBufRet.f32 %7709, 1
  %7711 = call float @dx.op.binary.f32(i32 35, float %7705, float 0.000000e+00)  ; FMax(a,b)
  %7712 = fadd fast float %7711, 0x3F10000000000000
  %7713 = fcmp fast oeq float %7710, 0.000000e+00
  br i1 %7713, label %7714, label %7781

; <label>:7714                                    ; preds = %7702
  %7715 = extractvalue %dx.types.CBufRet.f32 %7706, 1
  %7716 = extractvalue %dx.types.CBufRet.f32 %7706, 0
  %7717 = fmul fast float %7716, %7021
  %7718 = fmul fast float %7715, %7022
  %7719 = fadd fast float %7717, 5.000000e-01
  %7720 = call float @dx.op.unary.f32(i32 27, float %7719)  ; Round_ni(value)
  %7721 = fadd fast float %7718, 5.000000e-01
  %7722 = call float @dx.op.unary.f32(i32 27, float %7721)  ; Round_ni(value)
  %7723 = fsub fast float %7719, %7720
  %7724 = fsub fast float %7721, %7722
  %7725 = fadd fast float %7720, -5.000000e-01
  %7726 = fadd fast float %7722, -5.000000e-01
  %7727 = fmul fast float %7723, 2.000000e+00
  %7728 = fsub fast float 3.000000e+00, %7727
  %7729 = fadd fast float %7727, 1.000000e+00
  %7730 = fsub fast float 2.000000e+00, %7723
  %7731 = bitcast float %7728 to i32
  %7732 = sub nsw i32 2129859010, %7731
  %7733 = bitcast i32 %7732 to float
  %7734 = fmul fast float %7733, %7730
  %7735 = fadd fast float %7734, -1.000000e+00
  %7736 = bitcast float %7729 to i32
  %7737 = sub nsw i32 2129859010, %7736
  %7738 = bitcast i32 %7737 to float
  %7739 = fmul fast float %7738, %7723
  %7740 = fadd fast float %7739, 1.000000e+00
  %7741 = fmul fast float %7724, 2.000000e+00
  %7742 = fsub fast float 3.000000e+00, %7741
  %7743 = fadd fast float %7741, 1.000000e+00
  %7744 = fsub fast float 2.000000e+00, %7724
  %7745 = bitcast float %7742 to i32
  %7746 = sub nsw i32 2129859010, %7745
  %7747 = bitcast i32 %7746 to float
  %7748 = fmul fast float %7747, %7744
  %7749 = fadd fast float %7748, -1.000000e+00
  %7750 = bitcast float %7743 to i32
  %7751 = sub nsw i32 2129859010, %7750
  %7752 = bitcast i32 %7751 to float
  %7753 = fmul fast float %7752, %7724
  %7754 = fadd fast float %7753, 1.000000e+00
  %7755 = fadd fast float %7735, %7725
  %7756 = fmul fast float %7755, %7707
  %7757 = fadd fast float %7749, %7726
  %7758 = fmul fast float %7757, %7708
  %7759 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7756, float %7758, float undef, float undef, i32 0, i32 0, i32 undef, float %7712)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7760 = extractvalue %dx.types.ResRet.f32 %7759, 0
  %7761 = fmul fast float %7760, %7728
  %7762 = fadd fast float %7740, %7725
  %7763 = fmul fast float %7762, %7707
  %7764 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7763, float %7758, float undef, float undef, i32 0, i32 0, i32 undef, float %7712)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7765 = extractvalue %dx.types.ResRet.f32 %7764, 0
  %7766 = fmul fast float %7765, %7729
  %7767 = fadd fast float %7754, %7726
  %7768 = fmul fast float %7767, %7708
  %7769 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7756, float %7768, float undef, float undef, i32 0, i32 0, i32 undef, float %7712)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7770 = extractvalue %dx.types.ResRet.f32 %7769, 0
  %7771 = fmul fast float %7770, %7728
  %7772 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7763, float %7768, float undef, float undef, i32 0, i32 0, i32 undef, float %7712)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7773 = extractvalue %dx.types.ResRet.f32 %7772, 0
  %7774 = fmul fast float %7773, %7729
  %7775 = fadd fast float %7774, %7771
  %7776 = fmul fast float %7775, %7743
  %7777 = fadd fast float %7766, %7761
  %7778 = fmul fast float %7777, %7742
  %7779 = fadd fast float %7778, %7776
  %7780 = fmul fast float %7779, 6.250000e-02
  br label %7866

; <label>:7781                                    ; preds = %7702
  %7782 = fmul fast float %307, 0x401921FB60000000
  %7783 = call float @dx.op.unary.f32(i32 13, float %7782)  ; Sin(value)
  %7784 = call float @dx.op.unary.f32(i32 12, float %7782)  ; Cos(value)
  %7785 = fsub fast float -0.000000e+00, %7783
  br label %7786

; <label>:7786                                    ; preds = %7835, %7781
  %7787 = phi float [ 0.000000e+00, %7781 ], [ %7830, %7835 ]
  %7788 = phi float [ 0.000000e+00, %7781 ], [ %7832, %7835 ]
  %7789 = phi i32 [ 0, %7781 ], [ %7836, %7835 ]
  %7790 = mul i32 %7789, 2
  %7791 = add i32 0, %7790
  %7792 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7791
  %7793 = load float, float* %7792, align 4
  %7794 = mul i32 %7789, 2
  %7795 = add i32 1, %7794
  %7796 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7795
  %7797 = load float, float* %7796, align 4
  %7798 = fmul fast float %7793, %7784
  %7799 = call float @dx.op.tertiary.f32(i32 46, float %7797, float %7785, float %7798)  ; FMad(a,b,c)
  %7800 = fmul fast float %7793, %7783
  %7801 = call float @dx.op.tertiary.f32(i32 46, float %7797, float %7784, float %7800)  ; FMad(a,b,c)
  %7802 = fmul fast float %7799, %7710
  %7803 = fmul fast float %7801, %7710
  %7804 = fadd fast float %7802, %7021
  %7805 = fadd fast float %7803, %7022
  %7806 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %7804, float %7805, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7807 = extractvalue %dx.types.ResRet.f32 %7806, 0
  %7808 = extractvalue %dx.types.ResRet.f32 %7806, 1
  %7809 = extractvalue %dx.types.ResRet.f32 %7806, 2
  %7810 = extractvalue %dx.types.ResRet.f32 %7806, 3
  %7811 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7807, float* %7811, align 4
  %7812 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7808, float* %7812, align 4
  %7813 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7809, float* %7813, align 4
  %7814 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7810, float* %7814, align 4
  %7815 = fsub fast float %7807, %7712
  %7816 = fcmp fast olt float %7815, 0.000000e+00
  %7817 = select i1 %7816, float 0.000000e+00, float 1.000000e+00
  %7818 = fadd fast float %7817, %7787
  %7819 = fmul fast float %7817, %7815
  %7820 = fadd fast float %7819, %7788
  br label %7821

; <label>:7821                                    ; preds = %7821, %7786
  %7822 = phi i32 [ 1, %7786 ], [ %7833, %7821 ]
  %7823 = phi float [ %7820, %7786 ], [ %7832, %7821 ]
  %7824 = phi float [ %7818, %7786 ], [ %7830, %7821 ]
  %7825 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7822
  %7826 = load float, float* %7825, align 4, !tbaa !116, !noalias !106
  %7827 = fsub fast float %7826, %7712
  %7828 = fcmp fast olt float %7827, 0.000000e+00
  %7829 = select i1 %7828, float 0.000000e+00, float 1.000000e+00
  %7830 = fadd fast float %7829, %7824
  %7831 = fmul fast float %7829, %7827
  %7832 = fadd fast float %7831, %7823
  %7833 = add nuw nsw i32 %7822, 1
  %7834 = icmp eq i32 %7833, 4
  br i1 %7834, label %7835, label %7821, !llvm.loop !118

; <label>:7835                                    ; preds = %7821
  %7836 = add nuw nsw i32 %7789, 1
  %7837 = icmp eq i32 %7836, 8
  br i1 %7837, label %7838, label %7786, !llvm.loop !119

; <label>:7838                                    ; preds = %7835
  %7839 = fdiv fast float 1.000000e+00, %7830
  %7840 = fmul fast float %7839, %7832
  %7841 = fdiv fast float 1.000000e+00, %7712
  %7842 = fmul fast float %7840, %7841
  %7843 = call float @dx.op.unary.f32(i32 7, float %7842)  ; Saturate(value)
  %7844 = call float @dx.op.binary.f32(i32 35, float %7843, float 0.000000e+00)  ; FMax(a,b)
  %7845 = fmul fast float %7830, 3.125000e-02
  %7846 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7847 = fmul fast float %7846, 2.000000e+00
  %7848 = fadd fast float %7847, -1.000000e+00
  %7849 = fcmp fast ogt float %7848, 0.000000e+00
  %7850 = fcmp fast olt float %7848, 0.000000e+00
  %7851 = zext i1 %7849 to i32
  %7852 = zext i1 %7850 to i32
  %7853 = sub nsw i32 %7851, %7852
  %7854 = sitofp i32 %7853 to float
  %7855 = fmul fast float %7854, %7848
  %7856 = fsub fast float 1.000000e+00, %7855
  %7857 = fmul fast float %7856, %7856
  %7858 = fmul fast float %7857, %7856
  %7859 = fsub fast float %7856, %7858
  %7860 = fmul fast float %7859, %7844
  %7861 = fsub fast float 1.000000e+00, %7858
  %7862 = fsub fast float %7861, %7860
  %7863 = fmul fast float %7854, 5.000000e-01
  %7864 = fmul fast float %7863, %7862
  %7865 = fsub fast float 5.000000e-01, %7864
  br label %7866

; <label>:7866                                    ; preds = %7838, %7714, %7699
  %7867 = phi float [ 1.000000e+00, %7699 ], [ %7780, %7714 ], [ %7865, %7838 ]
  %7868 = fcmp fast ogt float %7127, 0.000000e+00
  br i1 %7868, label %7869, label %8187, !dx.controlflow.hints !121

; <label>:7869                                    ; preds = %7866
  %7870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7871 = extractvalue %dx.types.CBufRet.f32 %7870, 0
  %7872 = fadd fast float %7871, %7011
  %7873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7874 = extractvalue %dx.types.CBufRet.f32 %7873, 2
  %7875 = extractvalue %dx.types.CBufRet.f32 %7873, 3
  %7876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7877 = extractvalue %dx.types.CBufRet.f32 %7876, 0
  %7878 = call float @dx.op.binary.f32(i32 35, float %7872, float 0.000000e+00)  ; FMax(a,b)
  %7879 = fadd fast float %7878, 0x3F10000000000000
  %7880 = fcmp fast oeq float %7877, 0.000000e+00
  br i1 %7014, label %7881, label %8034, !dx.controlflow.hints !122

; <label>:7881                                    ; preds = %7869
  br i1 %7880, label %7882, label %7949

; <label>:7882                                    ; preds = %7881
  %7883 = extractvalue %dx.types.CBufRet.f32 %7873, 1
  %7884 = extractvalue %dx.types.CBufRet.f32 %7873, 0
  %7885 = fmul fast float %7884, %7003
  %7886 = fmul fast float %7883, %7007
  %7887 = fadd fast float %7885, 5.000000e-01
  %7888 = call float @dx.op.unary.f32(i32 27, float %7887)  ; Round_ni(value)
  %7889 = fadd fast float %7886, 5.000000e-01
  %7890 = call float @dx.op.unary.f32(i32 27, float %7889)  ; Round_ni(value)
  %7891 = fsub fast float %7887, %7888
  %7892 = fsub fast float %7889, %7890
  %7893 = fadd fast float %7888, -5.000000e-01
  %7894 = fadd fast float %7890, -5.000000e-01
  %7895 = fmul fast float %7891, 2.000000e+00
  %7896 = fsub fast float 3.000000e+00, %7895
  %7897 = fadd fast float %7895, 1.000000e+00
  %7898 = fsub fast float 2.000000e+00, %7891
  %7899 = bitcast float %7896 to i32
  %7900 = sub nsw i32 2129859010, %7899
  %7901 = bitcast i32 %7900 to float
  %7902 = fmul fast float %7901, %7898
  %7903 = fadd fast float %7902, -1.000000e+00
  %7904 = bitcast float %7897 to i32
  %7905 = sub nsw i32 2129859010, %7904
  %7906 = bitcast i32 %7905 to float
  %7907 = fmul fast float %7906, %7891
  %7908 = fadd fast float %7907, 1.000000e+00
  %7909 = fmul fast float %7892, 2.000000e+00
  %7910 = fsub fast float 3.000000e+00, %7909
  %7911 = fadd fast float %7909, 1.000000e+00
  %7912 = fsub fast float 2.000000e+00, %7892
  %7913 = bitcast float %7910 to i32
  %7914 = sub nsw i32 2129859010, %7913
  %7915 = bitcast i32 %7914 to float
  %7916 = fmul fast float %7915, %7912
  %7917 = fadd fast float %7916, -1.000000e+00
  %7918 = bitcast float %7911 to i32
  %7919 = sub nsw i32 2129859010, %7918
  %7920 = bitcast i32 %7919 to float
  %7921 = fmul fast float %7920, %7892
  %7922 = fadd fast float %7921, 1.000000e+00
  %7923 = fadd fast float %7903, %7893
  %7924 = fmul fast float %7923, %7874
  %7925 = fadd fast float %7917, %7894
  %7926 = fmul fast float %7925, %7875
  %7927 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7924, float %7926, float undef, float undef, i32 0, i32 0, i32 undef, float %7879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7928 = extractvalue %dx.types.ResRet.f32 %7927, 0
  %7929 = fmul fast float %7928, %7896
  %7930 = fadd fast float %7908, %7893
  %7931 = fmul fast float %7930, %7874
  %7932 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7931, float %7926, float undef, float undef, i32 0, i32 0, i32 undef, float %7879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7933 = extractvalue %dx.types.ResRet.f32 %7932, 0
  %7934 = fmul fast float %7933, %7897
  %7935 = fadd fast float %7922, %7894
  %7936 = fmul fast float %7935, %7875
  %7937 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7924, float %7936, float undef, float undef, i32 0, i32 0, i32 undef, float %7879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7938 = extractvalue %dx.types.ResRet.f32 %7937, 0
  %7939 = fmul fast float %7938, %7896
  %7940 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7931, float %7936, float undef, float undef, i32 0, i32 0, i32 undef, float %7879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7941 = extractvalue %dx.types.ResRet.f32 %7940, 0
  %7942 = fmul fast float %7941, %7897
  %7943 = fadd fast float %7942, %7939
  %7944 = fmul fast float %7943, %7911
  %7945 = fadd fast float %7934, %7929
  %7946 = fmul fast float %7945, %7910
  %7947 = fadd fast float %7946, %7944
  %7948 = fmul fast float %7947, 6.250000e-02
  br label %8187

; <label>:7949                                    ; preds = %7881
  %7950 = fmul fast float %307, 0x401921FB60000000
  %7951 = call float @dx.op.unary.f32(i32 13, float %7950)  ; Sin(value)
  %7952 = call float @dx.op.unary.f32(i32 12, float %7950)  ; Cos(value)
  %7953 = fsub fast float -0.000000e+00, %7951
  br label %7954

; <label>:7954                                    ; preds = %8003, %7949
  %7955 = phi float [ 0.000000e+00, %7949 ], [ %7998, %8003 ]
  %7956 = phi float [ 0.000000e+00, %7949 ], [ %8000, %8003 ]
  %7957 = phi i32 [ 0, %7949 ], [ %8004, %8003 ]
  %7958 = mul i32 %7957, 2
  %7959 = add i32 0, %7958
  %7960 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7959
  %7961 = load float, float* %7960, align 4
  %7962 = mul i32 %7957, 2
  %7963 = add i32 1, %7962
  %7964 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7963
  %7965 = load float, float* %7964, align 4
  %7966 = fmul fast float %7961, %7952
  %7967 = call float @dx.op.tertiary.f32(i32 46, float %7965, float %7953, float %7966)  ; FMad(a,b,c)
  %7968 = fmul fast float %7961, %7951
  %7969 = call float @dx.op.tertiary.f32(i32 46, float %7965, float %7952, float %7968)  ; FMad(a,b,c)
  %7970 = fmul fast float %7967, %7877
  %7971 = fmul fast float %7969, %7877
  %7972 = fadd fast float %7970, %7003
  %7973 = fadd fast float %7971, %7007
  %7974 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %46, float %7972, float %7973, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = extractvalue %dx.types.ResRet.f32 %7974, 1
  %7977 = extractvalue %dx.types.ResRet.f32 %7974, 2
  %7978 = extractvalue %dx.types.ResRet.f32 %7974, 3
  %7979 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7975, float* %7979, align 4
  %7980 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7976, float* %7980, align 4
  %7981 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7977, float* %7981, align 4
  %7982 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7978, float* %7982, align 4
  %7983 = fsub fast float %7975, %7879
  %7984 = fcmp fast olt float %7983, 0.000000e+00
  %7985 = select i1 %7984, float 0.000000e+00, float 1.000000e+00
  %7986 = fadd fast float %7985, %7955
  %7987 = fmul fast float %7985, %7983
  %7988 = fadd fast float %7987, %7956
  br label %7989

; <label>:7989                                    ; preds = %7989, %7954
  %7990 = phi i32 [ 1, %7954 ], [ %8001, %7989 ]
  %7991 = phi float [ %7988, %7954 ], [ %8000, %7989 ]
  %7992 = phi float [ %7986, %7954 ], [ %7998, %7989 ]
  %7993 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7990
  %7994 = load float, float* %7993, align 4, !tbaa !116, !noalias !106
  %7995 = fsub fast float %7994, %7879
  %7996 = fcmp fast olt float %7995, 0.000000e+00
  %7997 = select i1 %7996, float 0.000000e+00, float 1.000000e+00
  %7998 = fadd fast float %7997, %7992
  %7999 = fmul fast float %7997, %7995
  %8000 = fadd fast float %7999, %7991
  %8001 = add nuw nsw i32 %7990, 1
  %8002 = icmp eq i32 %8001, 4
  br i1 %8002, label %8003, label %7989, !llvm.loop !118

; <label>:8003                                    ; preds = %7989
  %8004 = add nuw nsw i32 %7957, 1
  %8005 = icmp eq i32 %8004, 8
  br i1 %8005, label %8006, label %7954, !llvm.loop !119

; <label>:8006                                    ; preds = %8003
  %8007 = fdiv fast float 1.000000e+00, %7998
  %8008 = fmul fast float %8007, %8000
  %8009 = fdiv fast float 1.000000e+00, %7879
  %8010 = fmul fast float %8008, %8009
  %8011 = call float @dx.op.unary.f32(i32 7, float %8010)  ; Saturate(value)
  %8012 = call float @dx.op.binary.f32(i32 35, float %8011, float 0.000000e+00)  ; FMax(a,b)
  %8013 = fmul fast float %7998, 3.125000e-02
  %8014 = call float @dx.op.unary.f32(i32 7, float %8013)  ; Saturate(value)
  %8015 = fmul fast float %8014, 2.000000e+00
  %8016 = fadd fast float %8015, -1.000000e+00
  %8017 = fcmp fast ogt float %8016, 0.000000e+00
  %8018 = fcmp fast olt float %8016, 0.000000e+00
  %8019 = zext i1 %8017 to i32
  %8020 = zext i1 %8018 to i32
  %8021 = sub nsw i32 %8019, %8020
  %8022 = sitofp i32 %8021 to float
  %8023 = fmul fast float %8022, %8016
  %8024 = fsub fast float 1.000000e+00, %8023
  %8025 = fmul fast float %8024, %8024
  %8026 = fmul fast float %8025, %8024
  %8027 = fsub fast float %8024, %8026
  %8028 = fmul fast float %8027, %8012
  %8029 = fsub fast float 1.000000e+00, %8026
  %8030 = fsub fast float %8029, %8028
  %8031 = fmul fast float %8022, 5.000000e-01
  %8032 = fmul fast float %8031, %8030
  %8033 = fsub fast float 5.000000e-01, %8032
  br label %8187

; <label>:8034                                    ; preds = %7869
  br i1 %7880, label %8035, label %8102

; <label>:8035                                    ; preds = %8034
  %8036 = extractvalue %dx.types.CBufRet.f32 %7873, 1
  %8037 = extractvalue %dx.types.CBufRet.f32 %7873, 0
  %8038 = fmul fast float %8037, %7003
  %8039 = fmul fast float %8036, %7007
  %8040 = fadd fast float %8038, 5.000000e-01
  %8041 = call float @dx.op.unary.f32(i32 27, float %8040)  ; Round_ni(value)
  %8042 = fadd fast float %8039, 5.000000e-01
  %8043 = call float @dx.op.unary.f32(i32 27, float %8042)  ; Round_ni(value)
  %8044 = fsub fast float %8040, %8041
  %8045 = fsub fast float %8042, %8043
  %8046 = fadd fast float %8041, -5.000000e-01
  %8047 = fadd fast float %8043, -5.000000e-01
  %8048 = fmul fast float %8044, 2.000000e+00
  %8049 = fsub fast float 3.000000e+00, %8048
  %8050 = fadd fast float %8048, 1.000000e+00
  %8051 = fsub fast float 2.000000e+00, %8044
  %8052 = bitcast float %8049 to i32
  %8053 = sub nsw i32 2129859010, %8052
  %8054 = bitcast i32 %8053 to float
  %8055 = fmul fast float %8054, %8051
  %8056 = fadd fast float %8055, -1.000000e+00
  %8057 = bitcast float %8050 to i32
  %8058 = sub nsw i32 2129859010, %8057
  %8059 = bitcast i32 %8058 to float
  %8060 = fmul fast float %8059, %8044
  %8061 = fadd fast float %8060, 1.000000e+00
  %8062 = fmul fast float %8045, 2.000000e+00
  %8063 = fsub fast float 3.000000e+00, %8062
  %8064 = fadd fast float %8062, 1.000000e+00
  %8065 = fsub fast float 2.000000e+00, %8045
  %8066 = bitcast float %8063 to i32
  %8067 = sub nsw i32 2129859010, %8066
  %8068 = bitcast i32 %8067 to float
  %8069 = fmul fast float %8068, %8065
  %8070 = fadd fast float %8069, -1.000000e+00
  %8071 = bitcast float %8064 to i32
  %8072 = sub nsw i32 2129859010, %8071
  %8073 = bitcast i32 %8072 to float
  %8074 = fmul fast float %8073, %8045
  %8075 = fadd fast float %8074, 1.000000e+00
  %8076 = fadd fast float %8056, %8046
  %8077 = fmul fast float %8076, %7874
  %8078 = fadd fast float %8070, %8047
  %8079 = fmul fast float %8078, %7875
  %8080 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8077, float %8079, float undef, float undef, i32 0, i32 0, i32 undef, float %7879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8081 = extractvalue %dx.types.ResRet.f32 %8080, 0
  %8082 = fmul fast float %8081, %8049
  %8083 = fadd fast float %8061, %8046
  %8084 = fmul fast float %8083, %7874
  %8085 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8084, float %8079, float undef, float undef, i32 0, i32 0, i32 undef, float %7879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 0
  %8087 = fmul fast float %8086, %8050
  %8088 = fadd fast float %8075, %8047
  %8089 = fmul fast float %8088, %7875
  %8090 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8077, float %8089, float undef, float undef, i32 0, i32 0, i32 undef, float %7879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8091 = extractvalue %dx.types.ResRet.f32 %8090, 0
  %8092 = fmul fast float %8091, %8049
  %8093 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8084, float %8089, float undef, float undef, i32 0, i32 0, i32 undef, float %7879)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8094 = extractvalue %dx.types.ResRet.f32 %8093, 0
  %8095 = fmul fast float %8094, %8050
  %8096 = fadd fast float %8095, %8092
  %8097 = fmul fast float %8096, %8064
  %8098 = fadd fast float %8087, %8082
  %8099 = fmul fast float %8098, %8063
  %8100 = fadd fast float %8099, %8097
  %8101 = fmul fast float %8100, 6.250000e-02
  br label %8187

; <label>:8102                                    ; preds = %8034
  %8103 = fmul fast float %307, 0x401921FB60000000
  %8104 = call float @dx.op.unary.f32(i32 13, float %8103)  ; Sin(value)
  %8105 = call float @dx.op.unary.f32(i32 12, float %8103)  ; Cos(value)
  %8106 = fsub fast float -0.000000e+00, %8104
  br label %8107

; <label>:8107                                    ; preds = %8156, %8102
  %8108 = phi float [ 0.000000e+00, %8102 ], [ %8151, %8156 ]
  %8109 = phi float [ 0.000000e+00, %8102 ], [ %8153, %8156 ]
  %8110 = phi i32 [ 0, %8102 ], [ %8157, %8156 ]
  %8111 = mul i32 %8110, 2
  %8112 = add i32 0, %8111
  %8113 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8112
  %8114 = load float, float* %8113, align 4
  %8115 = mul i32 %8110, 2
  %8116 = add i32 1, %8115
  %8117 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8116
  %8118 = load float, float* %8117, align 4
  %8119 = fmul fast float %8114, %8105
  %8120 = call float @dx.op.tertiary.f32(i32 46, float %8118, float %8106, float %8119)  ; FMad(a,b,c)
  %8121 = fmul fast float %8114, %8104
  %8122 = call float @dx.op.tertiary.f32(i32 46, float %8118, float %8105, float %8121)  ; FMad(a,b,c)
  %8123 = fmul fast float %8120, %7877
  %8124 = fmul fast float %8122, %7877
  %8125 = fadd fast float %8123, %7003
  %8126 = fadd fast float %8124, %7007
  %8127 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %46, float %8125, float %8126, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8128 = extractvalue %dx.types.ResRet.f32 %8127, 0
  %8129 = extractvalue %dx.types.ResRet.f32 %8127, 1
  %8130 = extractvalue %dx.types.ResRet.f32 %8127, 2
  %8131 = extractvalue %dx.types.ResRet.f32 %8127, 3
  %8132 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %8128, float* %8132, align 4
  %8133 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %8129, float* %8133, align 4
  %8134 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %8130, float* %8134, align 4
  %8135 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %8131, float* %8135, align 4
  %8136 = fsub fast float %8128, %7879
  %8137 = fcmp fast olt float %8136, 0.000000e+00
  %8138 = select i1 %8137, float 0.000000e+00, float 1.000000e+00
  %8139 = fadd fast float %8138, %8108
  %8140 = fmul fast float %8138, %8136
  %8141 = fadd fast float %8140, %8109
  br label %8142

; <label>:8142                                    ; preds = %8142, %8107
  %8143 = phi i32 [ 1, %8107 ], [ %8154, %8142 ]
  %8144 = phi float [ %8141, %8107 ], [ %8153, %8142 ]
  %8145 = phi float [ %8139, %8107 ], [ %8151, %8142 ]
  %8146 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %8143
  %8147 = load float, float* %8146, align 4, !tbaa !116, !noalias !106
  %8148 = fsub fast float %8147, %7879
  %8149 = fcmp fast olt float %8148, 0.000000e+00
  %8150 = select i1 %8149, float 0.000000e+00, float 1.000000e+00
  %8151 = fadd fast float %8150, %8145
  %8152 = fmul fast float %8150, %8148
  %8153 = fadd fast float %8152, %8144
  %8154 = add nuw nsw i32 %8143, 1
  %8155 = icmp eq i32 %8154, 4
  br i1 %8155, label %8156, label %8142, !llvm.loop !118

; <label>:8156                                    ; preds = %8142
  %8157 = add nuw nsw i32 %8110, 1
  %8158 = icmp eq i32 %8157, 8
  br i1 %8158, label %8159, label %8107, !llvm.loop !119

; <label>:8159                                    ; preds = %8156
  %8160 = fdiv fast float 1.000000e+00, %8151
  %8161 = fmul fast float %8160, %8153
  %8162 = fdiv fast float 1.000000e+00, %7879
  %8163 = fmul fast float %8161, %8162
  %8164 = call float @dx.op.unary.f32(i32 7, float %8163)  ; Saturate(value)
  %8165 = call float @dx.op.binary.f32(i32 35, float %8164, float 0.000000e+00)  ; FMax(a,b)
  %8166 = fmul fast float %8151, 3.125000e-02
  %8167 = call float @dx.op.unary.f32(i32 7, float %8166)  ; Saturate(value)
  %8168 = fmul fast float %8167, 2.000000e+00
  %8169 = fadd fast float %8168, -1.000000e+00
  %8170 = fcmp fast ogt float %8169, 0.000000e+00
  %8171 = fcmp fast olt float %8169, 0.000000e+00
  %8172 = zext i1 %8170 to i32
  %8173 = zext i1 %8171 to i32
  %8174 = sub nsw i32 %8172, %8173
  %8175 = sitofp i32 %8174 to float
  %8176 = fmul fast float %8175, %8169
  %8177 = fsub fast float 1.000000e+00, %8176
  %8178 = fmul fast float %8177, %8177
  %8179 = fmul fast float %8178, %8177
  %8180 = fsub fast float %8177, %8179
  %8181 = fmul fast float %8180, %8165
  %8182 = fsub fast float 1.000000e+00, %8179
  %8183 = fsub fast float %8182, %8181
  %8184 = fmul fast float %8175, 5.000000e-01
  %8185 = fmul fast float %8184, %8183
  %8186 = fsub fast float 5.000000e-01, %8185
  br label %8187

; <label>:8187                                    ; preds = %8159, %8035, %8006, %7882, %7866
  %8188 = phi float [ 1.000000e+00, %7866 ], [ %7948, %7882 ], [ %8033, %8006 ], [ %8101, %8035 ], [ %8186, %8159 ]
  %8189 = fsub fast float %7700, %7533
  %8190 = fmul fast float %8189, %7100
  %8191 = fadd fast float %8190, %7533
  %8192 = fsub fast float %7867, %8191
  %8193 = fmul fast float %8192, %7099
  %8194 = fadd fast float %8193, %8191
  %8195 = fsub fast float %8188, %8194
  %8196 = fmul fast float %8195, %7127
  %8197 = fadd fast float %8196, %8194
  %8198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8199 = extractvalue %dx.types.CBufRet.f32 %8198, 2
  %8200 = fcmp fast ogt float %8199, 0.000000e+00
  br i1 %8200, label %8201, label %8241, !dx.controlflow.hints !123

; <label>:8201                                    ; preds = %8187
  %8202 = fcmp fast ugt float %8199, 0.000000e+00
  br i1 %8202, label %8203, label %8238

; <label>:8203                                    ; preds = %8201
  %8204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8205 = extractvalue %dx.types.CBufRet.f32 %8204, 0
  %8206 = extractvalue %dx.types.CBufRet.f32 %8204, 1
  %8207 = extractvalue %dx.types.CBufRet.f32 %8204, 2
  %8208 = extractvalue %dx.types.CBufRet.f32 %8204, 3
  %8209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8210 = extractvalue %dx.types.CBufRet.f32 %8209, 0
  %8211 = extractvalue %dx.types.CBufRet.f32 %8209, 1
  %8212 = extractvalue %dx.types.CBufRet.f32 %8209, 2
  %8213 = extractvalue %dx.types.CBufRet.f32 %8209, 3
  %8214 = extractvalue %dx.types.CBufRet.f32 %8198, 0
  %8215 = extractvalue %dx.types.CBufRet.f32 %8198, 1
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.CBufRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %8220 = fadd fast float %8217, %6980
  %8221 = fadd fast float %8218, %6981
  %8222 = fadd fast float %8219, %6982
  %8223 = fmul fast float %8220, %8205
  %8224 = call float @dx.op.tertiary.f32(i32 46, float %8206, float %8221, float %8223)  ; FMad(a,b,c)
  %8225 = call float @dx.op.tertiary.f32(i32 46, float %8207, float %8222, float %8224)  ; FMad(a,b,c)
  %8226 = fadd fast float %8225, %8208
  %8227 = fmul fast float %8220, %8210
  %8228 = call float @dx.op.tertiary.f32(i32 46, float %8211, float %8221, float %8227)  ; FMad(a,b,c)
  %8229 = call float @dx.op.tertiary.f32(i32 46, float %8212, float %8222, float %8228)  ; FMad(a,b,c)
  %8230 = fadd fast float %8229, %8213
  %8231 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %8226, float %8230, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8232 = extractvalue %dx.types.ResRet.f32 %8231, 0
  %8233 = fmul fast float %8232, %8215
  %8234 = fadd fast float %8233, %8214
  %8235 = call float @dx.op.unary.f32(i32 7, float %8234)  ; Saturate(value)
  %8236 = fmul fast float %8235, %8199
  %8237 = fsub fast float 1.000000e+00, %8236
  br label %8238

; <label>:8238                                    ; preds = %8203, %8201
  %8239 = phi float [ %8237, %8203 ], [ 1.000000e+00, %8201 ]
  %8240 = fmul fast float %8239, %8197
  br label %8241

; <label>:8241                                    ; preds = %8238, %8187, %6960
  %8242 = phi float [ 1.000000e+00, %6960 ], [ %8240, %8238 ], [ %8197, %8187 ]
  %8243 = call float @dx.op.binary.f32(i32 36, float %8242, float %8242)  ; FMin(a,b)
  %8244 = call float @dx.op.binary.f32(i32 36, float %8242, float %8243)  ; FMin(a,b)
  %8245 = fcmp fast ogt float %8244, 0.000000e+00
  br i1 %8245, label %8246, label %8412, !dx.controlflow.hints !124

; <label>:8246                                    ; preds = %8241
  %8247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8248 = extractvalue %dx.types.CBufRet.f32 %8247, 0
  %8249 = extractvalue %dx.types.CBufRet.f32 %8247, 1
  %8250 = extractvalue %dx.types.CBufRet.f32 %8247, 2
  %8251 = extractvalue %dx.types.CBufRet.f32 %8247, 3
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 0
  %8254 = extractvalue %dx.types.CBufRet.f32 %8252, 1
  %8255 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8256 = extractvalue %dx.types.CBufRet.f32 %8252, 3
  %8257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8258 = extractvalue %dx.types.CBufRet.f32 %8257, 0
  %8259 = extractvalue %dx.types.CBufRet.f32 %8257, 1
  %8260 = extractvalue %dx.types.CBufRet.f32 %8257, 2
  %8261 = extractvalue %dx.types.CBufRet.f32 %8257, 3
  %8262 = fmul fast float %8248, %6980
  %8263 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %8249, float %8262)  ; FMad(a,b,c)
  %8264 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %8250, float %8263)  ; FMad(a,b,c)
  %8265 = fadd fast float %8264, %8251
  %8266 = fmul fast float %8253, %6980
  %8267 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %8254, float %8266)  ; FMad(a,b,c)
  %8268 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %8255, float %8267)  ; FMad(a,b,c)
  %8269 = fadd fast float %8268, %8256
  %8270 = fmul fast float %8258, %6980
  %8271 = call float @dx.op.tertiary.f32(i32 46, float %6981, float %8259, float %8270)  ; FMad(a,b,c)
  %8272 = call float @dx.op.tertiary.f32(i32 46, float %6982, float %8260, float %8271)  ; FMad(a,b,c)
  %8273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8274 = extractvalue %dx.types.CBufRet.f32 %8273, 0
  %8275 = extractvalue %dx.types.CBufRet.f32 %8273, 1
  %8276 = extractvalue %dx.types.CBufRet.f32 %8273, 3
  %8277 = fmul fast float %8276, %8265
  %8278 = fmul fast float %8276, %8269
  %8279 = fadd fast float %8277, %8274
  %8280 = fadd fast float %8278, %8275
  %8281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8282 = extractvalue %dx.types.CBufRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.CBufRet.f32 %8281, 1
  %8284 = fsub fast float %8279, %8282
  %8285 = fsub fast float %8280, %8283
  %8286 = fcmp fast olt float %8284, 0.000000e+00
  %8287 = fcmp fast olt float %8285, 0.000000e+00
  %8288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.CBufRet.f32 %8288, 1
  %8291 = extractvalue %dx.types.CBufRet.f32 %8288, 2
  %8292 = extractvalue %dx.types.CBufRet.f32 %8288, 3
  %8293 = select i1 %8286, float %8289, float %8291
  %8294 = select i1 %8287, float %8290, float %8292
  %8295 = fmul fast float %8293, %8284
  %8296 = fmul fast float %8294, %8285
  %8297 = call float @dx.op.unary.f32(i32 6, float %8295)  ; FAbs(value)
  %8298 = call float @dx.op.unary.f32(i32 6, float %8296)  ; FAbs(value)
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8301 = call float @dx.op.binary.f32(i32 35, float %8297, float %8298)  ; FMax(a,b)
  %8302 = fsub fast float %8300, %8301
  %8303 = call float @dx.op.unary.f32(i32 7, float %8302)  ; Saturate(value)
  %8304 = fcmp fast ogt float %8303, 0.000000e+00
  br i1 %8304, label %8305, label %8346, !dx.controlflow.hints !125

; <label>:8305                                    ; preds = %8246
  %8306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %8279, float %8280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8307 = extractvalue %dx.types.ResRet.f32 %8306, 1
  %8308 = fcmp fast ogt float %8307, 0.000000e+00
  br i1 %8308, label %8309, label %8341

; <label>:8309                                    ; preds = %8305
  %8310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %8279, float %8280, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8311 = extractvalue %dx.types.ResRet.f32 %8310, 0
  %8312 = extractvalue %dx.types.ResRet.f32 %8310, 1
  %8313 = extractvalue %dx.types.ResRet.f32 %8310, 2
  %8314 = extractvalue %dx.types.ResRet.f32 %8310, 3
  %8315 = fsub fast float 1.000000e+00, %8261
  %8316 = fsub fast float %8315, %8272
  %8317 = fmul fast float %8316, 0x400921FB60000000
  %8318 = fadd fast float %8317, 0x3FF921FB60000000
  %8319 = call float @dx.op.unary.f32(i32 13, float %8318)  ; Sin(value)
  %8320 = fadd fast float %8319, -1.000000e+00
  %8321 = fmul fast float %8320, 0x3FD45F3060000000
  %8322 = fmul fast float %8316, 0x401921FB60000000
  %8323 = fadd fast float %8322, 0x400921FB60000000
  %8324 = call float @dx.op.unary.f32(i32 13, float %8323)  ; Sin(value)
  %8325 = fadd fast float %8324, 0x3E7777A5C0000000
  %8326 = fmul fast float %8325, 0x3FC45F3060000000
  %8327 = fmul fast float %8316, 0x4022D97C80000000
  %8328 = fadd fast float %8327, 0x4012D97C80000000
  %8329 = call float @dx.op.unary.f32(i32 13, float %8328)  ; Sin(value)
  %8330 = fadd fast float %8329, 1.000000e+00
  %8331 = fmul fast float %8330, 0x3FBB2995E0000000
  %8332 = fmul fast float %8316, 0x402921FB60000000
  %8333 = fadd fast float %8332, 0x401921FB60000000
  %8334 = call float @dx.op.unary.f32(i32 13, float %8333)  ; Sin(value)
  %8335 = fadd fast float %8334, 0xBE8777A5C0000000
  %8336 = fmul fast float %8335, 0x3FB45F3060000000
  %8337 = call float @dx.op.dot4.f32(i32 56, float %8311, float %8312, float %8313, float %8314, float %8321, float %8326, float %8331, float %8336)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8338 = fmul fast float %8337, 0xBFF7154760000000
  %8339 = call float @dx.op.unary.f32(i32 21, float %8338)  ; Exp(value)
  %8340 = call float @dx.op.unary.f32(i32 7, float %8339)  ; Saturate(value)
  br label %8341

; <label>:8341                                    ; preds = %8309, %8305
  %8342 = phi float [ %8340, %8309 ], [ 1.000000e+00, %8305 ]
  %8343 = fadd fast float %8342, -1.000000e+00
  %8344 = fmul fast float %8343, %8303
  %8345 = fadd fast float %8344, 1.000000e+00
  br label %8346

; <label>:8346                                    ; preds = %8341, %8246
  %8347 = phi float [ %8345, %8341 ], [ 1.000000e+00, %8246 ]
  %8348 = fmul fast float %8347, %8242
  %8349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8350 = extractvalue %dx.types.CBufRet.f32 %8349, 0
  %8351 = extractvalue %dx.types.CBufRet.f32 %8349, 1
  %8352 = extractvalue %dx.types.CBufRet.f32 %8349, 2
  %8353 = fadd fast float %8350, %190
  %8354 = fadd fast float %8351, %191
  %8355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8356 = extractvalue %dx.types.CBufRet.f32 %8355, 1
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.CBufRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.CBufRet.f32 %8357, 2
  %8361 = fsub fast float -0.000000e+00, %8353
  %8362 = fsub fast float -0.000000e+00, %8354
  %8363 = fsub fast float -0.000000e+00, %192
  %8364 = fsub fast float %8363, %8352
  %8365 = fadd fast float %8364, %8356
  %8366 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8361, float %8362, float %8365)  ; Dot3(ax,ay,az,bx,by,bz)
  %8367 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8358, float %8359, float %8360)  ; Dot3(ax,ay,az,bx,by,bz)
  %8368 = fdiv fast float 1.000000e+00, %8367
  %8369 = fmul fast float %8368, %8366
  %8370 = fmul fast float %8358, %8369
  %8371 = fmul fast float %8359, %8369
  %8372 = fadd fast float %8370, %8353
  %8373 = fadd fast float %8371, %8354
  %8374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.f32 %8374, 0
  %8376 = extractvalue %dx.types.CBufRet.f32 %8374, 1
  %8377 = fsub fast float %8372, %8375
  %8378 = fsub fast float %8373, %8376
  %8379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8380 = extractvalue %dx.types.CBufRet.f32 %8379, 2
  %8381 = extractvalue %dx.types.CBufRet.f32 %8379, 3
  %8382 = fmul fast float %8377, %8380
  %8383 = fmul fast float %8378, %8381
  %8384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.i32 %8384, 3
  %8386 = icmp eq i32 %8385, 0
  br i1 %8386, label %8392, label %8387

; <label>:8387                                    ; preds = %8346
  %8388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %8382, float %8383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8389 = extractvalue %dx.types.ResRet.f32 %8388, 0
  %8390 = extractvalue %dx.types.ResRet.f32 %8388, 1
  %8391 = extractvalue %dx.types.ResRet.f32 %8388, 2
  br label %8397

; <label>:8392                                    ; preds = %8346
  %8393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8382, float %8383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8394 = extractvalue %dx.types.ResRet.f32 %8393, 0
  %8395 = extractvalue %dx.types.ResRet.f32 %8393, 1
  %8396 = extractvalue %dx.types.ResRet.f32 %8393, 2
  br label %8397

; <label>:8397                                    ; preds = %8392, %8387
  %8398 = phi float [ %8389, %8387 ], [ %8394, %8392 ]
  %8399 = phi float [ %8390, %8387 ], [ %8395, %8392 ]
  %8400 = phi float [ %8391, %8387 ], [ %8396, %8392 ]
  %8401 = extractvalue %dx.types.CBufRet.f32 %8355, 2
  %8402 = fmul fast float %8401, %8398
  %8403 = extractvalue %dx.types.CBufRet.f32 %8355, 0
  %8404 = fsub fast float %8369, %8403
  %8405 = fsub fast float %8404, %8402
  %8406 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8405)  ; FMax(a,b)
  %8407 = fmul fast float %8406, %8399
  %8408 = call float @dx.op.binary.f32(i32 36, float %8400, float %8407)  ; FMin(a,b)
  %8409 = fmul fast float %8408, 0xBFF7154760000000
  %8410 = call float @dx.op.unary.f32(i32 21, float %8409)  ; Exp(value)
  %8411 = fmul fast float %8348, %8410
  br label %8412

; <label>:8412                                    ; preds = %8397, %8241
  %8413 = phi float [ %8411, %8397 ], [ %8242, %8241 ]
  %8414 = call float @dx.op.binary.f32(i32 36, float %8413, float %8413)  ; FMin(a,b)
  %8415 = call float @dx.op.binary.f32(i32 36, float %8413, float %8414)  ; FMin(a,b)
  %8416 = fcmp fast ogt float %8415, 0.000000e+00
  br i1 %8416, label %8417, label %8724, !dx.controlflow.hints !126

; <label>:8417                                    ; preds = %8412
  %8418 = fmul fast float %8413, %6972
  %8419 = fmul fast float %8413, %6973
  %8420 = fmul fast float %8413, %6974
  %8421 = fsub fast float %6961, %223
  %8422 = fsub fast float %6962, %224
  %8423 = fsub fast float %6963, %225
  %8424 = call float @dx.op.dot3.f32(i32 55, float %8421, float %8422, float %8423, float %8421, float %8422, float %8423)  ; Dot3(ax,ay,az,bx,by,bz)
  %8425 = call float @dx.op.unary.f32(i32 25, float %8424)  ; Rsqrt(value)
  %8426 = fmul fast float %8425, %8421
  %8427 = fmul fast float %8425, %8422
  %8428 = fmul fast float %8425, %8423
  %8429 = call float @dx.op.dot3.f32(i32 55, float %6961, float %6962, float %6963, float %6050, float %6051, float %6052)  ; Dot3(ax,ay,az,bx,by,bz)
  %8430 = call float @dx.op.dot3.f32(i32 55, float %5686, float %5687, float %5688, float %8426, float %8427, float %8428)  ; Dot3(ax,ay,az,bx,by,bz)
  %8431 = call float @dx.op.unary.f32(i32 7, float %8429)  ; Saturate(value)
  %8432 = fmul fast float %8431, %8431
  %8433 = fmul fast float %8432, %6082
  %8434 = call float @dx.op.unary.f32(i32 7, float %8433)  ; Saturate(value)
  %8435 = fmul fast float %8434, %8431
  %8436 = call float @dx.op.dot3.f32(i32 55, float %6050, float %6051, float %6052, float %8426, float %8427, float %8428)  ; Dot3(ax,ay,az,bx,by,bz)
  %8437 = fmul fast float %8436, %8436
  %8438 = call float @dx.op.unary.f32(i32 6, float %8429)  ; FAbs(value)
  %8439 = fsub fast float 1.000000e+00, %6075
  %8440 = fmul fast float %6057, %6057
  %8441 = fmul fast float %8440, %8439
  %8442 = fadd fast float %8441, %6075
  %8443 = bitcast float %8442 to i32
  %8444 = ashr i32 %8443, 1
  %8445 = add nsw i32 %8444, 532487669
  %8446 = bitcast i32 %8445 to float
  %8447 = fadd fast float %8446, %6057
  %8448 = fmul fast float %6075, %8437
  %8449 = fsub fast float 1.000000e+00, %8437
  %8450 = fadd fast float %8449, %8448
  %8451 = fmul fast float %8438, %8438
  %8452 = fmul fast float %8451, %8439
  %8453 = fadd fast float %8452, %6075
  %8454 = bitcast float %8453 to i32
  %8455 = ashr i32 %8454, 1
  %8456 = add nsw i32 %8455, 532487669
  %8457 = bitcast i32 %8456 to float
  %8458 = fadd fast float %8457, %8438
  %8459 = fmul fast float %8450, %8450
  %8460 = fmul fast float %8459, %8447
  %8461 = fmul fast float %8460, %8458
  %8462 = fdiv fast float 0x3FF0A00000000000, %8461
  %8463 = fmul fast float %8462, %6075
  %8464 = fmul fast float %6328, 0x3FF9999980000000
  %8465 = fsub fast float 5.000000e+00, %8464
  %8466 = call float @dx.op.unary.f32(i32 6, float %8430)  ; FAbs(value)
  %8467 = fsub fast float 1.000000e+00, %8466
  %8468 = fmul fast float %6328, 0x41D9660740000000
  %8469 = fadd fast float %8468, 0xC1EFBF8940000000
  %8470 = bitcast float %8467 to i32
  %8471 = sitofp i32 %8470 to float
  %8472 = fmul fast float %8471, %8465
  %8473 = fadd fast float %8469, %8472
  %8474 = fptosi float %8473 to i32
  %8475 = bitcast i32 %8474 to float
  %8476 = fsub fast float 1.000000e+00, %6044
  %8477 = fsub fast float 1.000000e+00, %6045
  %8478 = fsub fast float 1.000000e+00, %6055
  %8479 = fmul fast float %8475, %8476
  %8480 = fmul fast float %8475, %8477
  %8481 = fmul fast float %8475, %8478
  %8482 = fadd fast float %8479, %6044
  %8483 = fadd fast float %8480, %6045
  %8484 = fadd fast float %8481, %6055
  br i1 %6351, label %8485, label %8508

; <label>:8485                                    ; preds = %8417
  %8486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4733, float %8466, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8487 = extractvalue %dx.types.ResRet.f32 %8486, 0
  %8488 = extractvalue %dx.types.ResRet.f32 %8486, 1
  %8489 = extractvalue %dx.types.ResRet.f32 %8486, 2
  %8490 = fadd fast float %8487, -5.000000e-01
  %8491 = fadd fast float %8488, -5.000000e-01
  %8492 = fadd fast float %8489, -5.000000e-01
  %8493 = fmul fast float %6044, 4.000000e+00
  %8494 = fmul fast float %8493, %8476
  %8495 = fmul fast float %8494, %8490
  %8496 = fmul fast float %6045, 4.000000e+00
  %8497 = fmul fast float %8496, %8477
  %8498 = fmul fast float %8497, %8491
  %8499 = fmul fast float %6055, 4.000000e+00
  %8500 = fmul fast float %8499, %8478
  %8501 = fmul fast float %8500, %8492
  %8502 = fadd fast float %8495, %8482
  %8503 = fadd fast float %8498, %8483
  %8504 = fadd fast float %8501, %8484
  %8505 = call float @dx.op.unary.f32(i32 7, float %8502)  ; Saturate(value)
  %8506 = call float @dx.op.unary.f32(i32 7, float %8503)  ; Saturate(value)
  %8507 = call float @dx.op.unary.f32(i32 7, float %8504)  ; Saturate(value)
  br label %8508

; <label>:8508                                    ; preds = %8485, %8417
  %8509 = phi float [ %8505, %8485 ], [ %8482, %8417 ]
  %8510 = phi float [ %8506, %8485 ], [ %8483, %8417 ]
  %8511 = phi float [ %8507, %8485 ], [ %8484, %8417 ]
  %8512 = fmul fast float %8429, 9.843750e-01
  %8513 = fadd fast float %8512, 7.812500e-03
  %8514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8513, float %6332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8515 = extractvalue %dx.types.ResRet.f32 %8514, 0
  %8516 = extractvalue %dx.types.ResRet.f32 %8514, 1
  %8517 = extractvalue %dx.types.ResRet.f32 %8514, 2
  %8518 = extractvalue %dx.types.ResRet.f32 %8514, 3
  %8519 = fsub fast float %8517, %8515
  %8520 = fsub fast float %8518, %8516
  %8521 = fmul fast float %8519, %6338
  %8522 = fmul fast float %8520, %6338
  %8523 = fadd fast float %8521, %8515
  %8524 = fadd fast float %8522, %8516
  %8525 = fmul fast float %8523, %6044
  %8526 = fmul fast float %8523, %6045
  %8527 = fmul fast float %8523, %6055
  %8528 = fadd fast float %8525, %8524
  %8529 = fadd fast float %8526, %8524
  %8530 = fadd fast float %8527, %8524
  br i1 %6351, label %8531, label %8554

; <label>:8531                                    ; preds = %8508
  %8532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4733, float %8429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8533 = extractvalue %dx.types.ResRet.f32 %8532, 0
  %8534 = extractvalue %dx.types.ResRet.f32 %8532, 1
  %8535 = extractvalue %dx.types.ResRet.f32 %8532, 2
  %8536 = fadd fast float %8533, -5.000000e-01
  %8537 = fadd fast float %8534, -5.000000e-01
  %8538 = fadd fast float %8535, -5.000000e-01
  %8539 = fmul fast float %6044, 4.000000e+00
  %8540 = fmul fast float %8539, %8476
  %8541 = fmul fast float %8540, %8536
  %8542 = fmul fast float %6045, 4.000000e+00
  %8543 = fmul fast float %8542, %8477
  %8544 = fmul fast float %8543, %8537
  %8545 = fmul fast float %6055, 4.000000e+00
  %8546 = fmul fast float %8545, %8478
  %8547 = fmul fast float %8546, %8538
  %8548 = fadd fast float %8541, %8528
  %8549 = fadd fast float %8544, %8529
  %8550 = fadd fast float %8547, %8530
  %8551 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8552 = call float @dx.op.unary.f32(i32 7, float %8549)  ; Saturate(value)
  %8553 = call float @dx.op.unary.f32(i32 7, float %8550)  ; Saturate(value)
  br label %8554

; <label>:8554                                    ; preds = %8531, %8508
  %8555 = phi float [ %8551, %8531 ], [ %8528, %8508 ]
  %8556 = phi float [ %8552, %8531 ], [ %8529, %8508 ]
  %8557 = phi float [ %8553, %8531 ], [ %8530, %8508 ]
  %8558 = call float @dx.op.binary.f32(i32 35, float %8556, float %8557)  ; FMax(a,b)
  %8559 = call float @dx.op.binary.f32(i32 35, float %8555, float %8558)  ; FMax(a,b)
  %8560 = fsub fast float 1.000000e+00, %8559
  %8561 = call float @dx.op.binary.f32(i32 35, float %8438, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8562 = fdiv fast float %4037, %8561
  %8563 = fmul fast float %6870, %8562
  %8564 = fmul fast float %6872, %8562
  %8565 = fmul fast float %6874, %8562
  %8566 = call float @dx.op.unary.f32(i32 21, float %8563)  ; Exp(value)
  %8567 = call float @dx.op.unary.f32(i32 21, float %8564)  ; Exp(value)
  %8568 = call float @dx.op.unary.f32(i32 21, float %8565)  ; Exp(value)
  %8569 = call float @dx.op.unary.f32(i32 7, float %8566)  ; Saturate(value)
  %8570 = call float @dx.op.unary.f32(i32 7, float %8567)  ; Saturate(value)
  %8571 = call float @dx.op.unary.f32(i32 7, float %8568)  ; Saturate(value)
  %8572 = select i1 %6867, float %8569, float 0.000000e+00
  %8573 = select i1 %6868, float %8570, float 0.000000e+00
  %8574 = select i1 %6869, float %8571, float 0.000000e+00
  %8575 = fsub fast float -0.000000e+00, %6050
  %8576 = fsub fast float -0.000000e+00, %6051
  %8577 = fsub fast float -0.000000e+00, %6052
  %8578 = call float @dx.op.dot3.f32(i32 55, float %6961, float %6962, float %6963, float %8575, float %8576, float %8577)  ; Dot3(ax,ay,az,bx,by,bz)
  %8579 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8580 = fmul fast float %8579, 9.843750e-01
  %8581 = fadd fast float %8580, 7.812500e-03
  %8582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8581, float %6332, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8583 = extractvalue %dx.types.ResRet.f32 %8582, 0
  %8584 = extractvalue %dx.types.ResRet.f32 %8582, 1
  %8585 = extractvalue %dx.types.ResRet.f32 %8582, 2
  %8586 = extractvalue %dx.types.ResRet.f32 %8582, 3
  %8587 = fsub fast float %8585, %8583
  %8588 = fsub fast float %8586, %8584
  %8589 = fmul fast float %8587, %6338
  %8590 = fmul fast float %8588, %6338
  %8591 = fadd fast float %8589, %8583
  %8592 = fadd fast float %8590, %8584
  %8593 = fmul fast float %8591, %6044
  %8594 = fmul fast float %8591, %6045
  %8595 = fmul fast float %8591, %6055
  %8596 = fadd fast float %8593, %8592
  %8597 = fadd fast float %8594, %8592
  %8598 = fadd fast float %8595, %8592
  br i1 %6351, label %8599, label %8622

; <label>:8599                                    ; preds = %8554
  %8600 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4733, float %8579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8601 = extractvalue %dx.types.ResRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.ResRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.ResRet.f32 %8600, 2
  %8604 = fadd fast float %8601, -5.000000e-01
  %8605 = fadd fast float %8602, -5.000000e-01
  %8606 = fadd fast float %8603, -5.000000e-01
  %8607 = fmul fast float %6044, 4.000000e+00
  %8608 = fmul fast float %8607, %8476
  %8609 = fmul fast float %8608, %8604
  %8610 = fmul fast float %6045, 4.000000e+00
  %8611 = fmul fast float %8610, %8477
  %8612 = fmul fast float %8611, %8605
  %8613 = fmul fast float %6055, 4.000000e+00
  %8614 = fmul fast float %8613, %8478
  %8615 = fmul fast float %8614, %8606
  %8616 = fadd fast float %8609, %8596
  %8617 = fadd fast float %8612, %8597
  %8618 = fadd fast float %8615, %8598
  %8619 = call float @dx.op.unary.f32(i32 7, float %8616)  ; Saturate(value)
  %8620 = call float @dx.op.unary.f32(i32 7, float %8617)  ; Saturate(value)
  %8621 = call float @dx.op.unary.f32(i32 7, float %8618)  ; Saturate(value)
  br label %8622

; <label>:8622                                    ; preds = %8599, %8554
  %8623 = phi float [ %8619, %8599 ], [ %8596, %8554 ]
  %8624 = phi float [ %8620, %8599 ], [ %8597, %8554 ]
  %8625 = phi float [ %8621, %8599 ], [ %8598, %8554 ]
  %8626 = call float @dx.op.binary.f32(i32 35, float %8624, float %8625)  ; FMax(a,b)
  %8627 = call float @dx.op.binary.f32(i32 35, float %8623, float %8626)  ; FMax(a,b)
  %8628 = fsub fast float 1.000000e+00, %8627
  %8629 = fmul fast float %6072, %6934
  %8630 = fadd fast float %6936, %8629
  %8631 = call float @dx.op.unary.f32(i32 7, float %8630)  ; Saturate(value)
  %8632 = fsub fast float %6961, %6063
  %8633 = fsub fast float %6962, %6064
  %8634 = fsub fast float %6963, %6065
  %8635 = call float @dx.op.dot3.f32(i32 55, float %8632, float %8633, float %8634, float %8632, float %8633, float %8634)  ; Dot3(ax,ay,az,bx,by,bz)
  %8636 = call float @dx.op.unary.f32(i32 25, float %8635)  ; Rsqrt(value)
  %8637 = fmul fast float %8636, %8632
  %8638 = fmul fast float %8636, %8633
  %8639 = fmul fast float %8636, %8634
  %8640 = call float @dx.op.dot3.f32(i32 55, float %8575, float %8576, float %8577, float %8637, float %8638, float %8639)  ; Dot3(ax,ay,az,bx,by,bz)
  %8641 = fmul fast float %8640, %8640
  %8642 = call float @dx.op.unary.f32(i32 6, float %8579)  ; FAbs(value)
  %8643 = call float @dx.op.binary.f32(i32 35, float %8631, float 0x3F847AE140000000)  ; FMax(a,b)
  %8644 = fmul fast float %8643, %8643
  %8645 = fmul fast float %8644, %8644
  %8646 = fsub fast float 1.000000e+00, %8645
  %8647 = fmul fast float %8440, %8646
  %8648 = fadd fast float %8647, %8645
  %8649 = bitcast float %8648 to i32
  %8650 = ashr i32 %8649, 1
  %8651 = add nsw i32 %8650, 532487669
  %8652 = bitcast i32 %8651 to float
  %8653 = fadd fast float %8652, %6057
  %8654 = fmul fast float %8645, %8641
  %8655 = fsub fast float 1.000000e+00, %8641
  %8656 = fadd fast float %8655, %8654
  %8657 = fmul fast float %8642, %8642
  %8658 = fmul fast float %8657, %8646
  %8659 = fadd fast float %8658, %8645
  %8660 = bitcast float %8659 to i32
  %8661 = ashr i32 %8660, 1
  %8662 = add nsw i32 %8661, 532487669
  %8663 = bitcast i32 %8662 to float
  %8664 = fadd fast float %8663, %8642
  %8665 = fmul fast float %8656, %8656
  %8666 = fmul fast float %8665, %8653
  %8667 = fmul fast float %8666, %8664
  %8668 = fdiv fast float 0x3FF0A00000000000, %8667
  %8669 = fmul fast float %8668, %8645
  %8670 = fmul fast float %8579, %8572
  %8671 = fmul fast float %8579, %8573
  %8672 = fmul fast float %8579, %8574
  %8673 = fmul fast float %8670, %8628
  %8674 = fmul fast float %8673, %8669
  %8675 = fmul fast float %8671, %8628
  %8676 = fmul fast float %8675, %8669
  %8677 = fmul fast float %8672, %8628
  %8678 = fmul fast float %8677, %8669
  %8679 = fmul fast float %8509, %8463
  %8680 = fmul fast float %8510, %8463
  %8681 = fmul fast float %8511, %8463
  %8682 = fsub fast float 1.000000e+00, %8430
  %8683 = bitcast float %8682 to i32
  %8684 = sitofp i32 %8683 to float
  %8685 = fmul fast float %8684, 5.000000e+00
  %8686 = fadd fast float %8685, 0xC1EFBF8940000000
  %8687 = fptosi float %8686 to i32
  %8688 = bitcast i32 %8687 to float
  %8689 = fmul fast float %8688, %4734
  %8690 = fmul fast float %8560, %8689
  %8691 = fmul fast float %8690, %6862
  %8692 = fmul fast float %8690, %6863
  %8693 = fmul fast float %8690, %6864
  %8694 = fadd fast float %8691, %8679
  %8695 = fadd fast float %8692, %8680
  %8696 = fadd fast float %8693, %8681
  %8697 = fmul fast float %8694, %8435
  %8698 = fmul fast float %8695, %8435
  %8699 = fmul fast float %8696, %8435
  %8700 = fmul fast float %8435, %8418
  %8701 = fmul fast float %8700, %8560
  %8702 = fmul fast float %8435, %8419
  %8703 = fmul fast float %8702, %8560
  %8704 = fmul fast float %8435, %8420
  %8705 = fmul fast float %8704, %8560
  %8706 = fadd fast float %8697, %8674
  %8707 = fadd fast float %8698, %8676
  %8708 = fadd fast float %8699, %8678
  %8709 = fmul fast float %8706, %8418
  %8710 = fmul fast float %8707, %8419
  %8711 = fmul fast float %8708, %8420
  %8712 = fadd fast float %8701, %6951
  %8713 = fmul fast float %8712, %4759
  %8714 = fadd fast float %8703, %6953
  %8715 = fmul fast float %8714, %4759
  %8716 = fadd fast float %8705, %6955
  %8717 = fmul fast float %8716, %4759
  %8718 = fadd fast float %8709, %6915
  %8719 = fmul fast float %8718, %4759
  %8720 = fadd fast float %8710, %6918
  %8721 = fmul fast float %8720, %4759
  %8722 = fadd fast float %8711, %6921
  %8723 = fmul fast float %8722, %4759
  br label %8724

; <label>:8724                                    ; preds = %8622, %8412, %6845
  %8725 = phi float [ %6916, %6845 ], [ %6916, %8412 ], [ %8719, %8622 ]
  %8726 = phi float [ %6919, %6845 ], [ %6919, %8412 ], [ %8721, %8622 ]
  %8727 = phi float [ %6922, %6845 ], [ %6922, %8412 ], [ %8723, %8622 ]
  %8728 = phi float [ %6952, %6845 ], [ %6952, %8412 ], [ %8713, %8622 ]
  %8729 = phi float [ %6954, %6845 ], [ %6954, %8412 ], [ %8715, %8622 ]
  %8730 = phi float [ %6956, %6845 ], [ %6956, %8412 ], [ %8717, %8622 ]
  %8731 = fmul fast float %4759, %6891
  %8732 = fsub fast float -0.000000e+00, %8731
  %8733 = fmul fast float %4759, %6892
  %8734 = fsub fast float -0.000000e+00, %8733
  %8735 = fmul fast float %4759, %6893
  %8736 = fsub fast float -0.000000e+00, %8735
  %8737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8738 = extractvalue %dx.types.CBufRet.f32 %8737, 0
  %8739 = fmul fast float %8738, %6897
  %8740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8741 = extractvalue %dx.types.CBufRet.f32 %8740, 3
  %8742 = fsub fast float 1.000000e+00, %4737
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = fadd fast float %8730, %4736
  %8745 = fmul fast float %8744, %4737
  %8746 = fmul fast float %8743, %8741
  %8747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4738, i32 undef)  ; BufferLoad(srv,index,wot)
  %8748 = extractvalue %dx.types.ResRet.i32 %8747, 3
  %8749 = bitcast i32 %8748 to float
  %8750 = fsub fast float %8732, %8749
  %8751 = fsub fast float %8734, %8749
  %8752 = fsub fast float %8736, %8749
  %8753 = fmul fast float %8750, %237
  %8754 = fmul fast float %8751, %237
  %8755 = fmul fast float %8752, %237
  %8756 = fadd fast float %8753, %8749
  %8757 = fadd fast float %8754, %8749
  %8758 = fadd fast float %8755, %8749
  %8759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8759, 3
  %8761 = fmul fast float %8728, %6047
  %8762 = fmul fast float %8729, %6048
  %8763 = fmul fast float %8730, %6049
  %8764 = fcmp fast ogt float %98, %257
  %8765 = and i1 %8764, %4827
  %8766 = or i1 %4906, %8765
  %8767 = icmp eq i32 %4826, 2
  %8768 = fcmp fast ole float %98, %257
  %8769 = and i1 %8768, %8767
  %8770 = or i1 %8769, %8766
  br i1 %8765, label %8771, label %9028

; <label>:8771                                    ; preds = %8724
  %8772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8773 = extractvalue %dx.types.CBufRet.f32 %8772, 2
  %8774 = extractvalue %dx.types.CBufRet.f32 %8772, 3
  %8775 = fmul fast float %8773, %111
  %8776 = fmul fast float %8774, %112
  %8777 = call float @dx.op.unary.f32(i32 7, float %8775)  ; Saturate(value)
  %8778 = call float @dx.op.unary.f32(i32 7, float %8776)  ; Saturate(value)
  %8779 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8777, float %8778, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8780 = extractvalue %dx.types.ResRet.f32 %8779, 0
  %8781 = extractvalue %dx.types.ResRet.f32 %8779, 1
  %8782 = extractvalue %dx.types.ResRet.f32 %8779, 2
  %8783 = extractvalue %dx.types.ResRet.f32 %8779, 3
  %8784 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8777, float %8778, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8785 = extractvalue %dx.types.ResRet.f32 %8784, 0
  %8786 = extractvalue %dx.types.ResRet.f32 %8784, 1
  %8787 = extractvalue %dx.types.ResRet.f32 %8784, 2
  %8788 = extractvalue %dx.types.ResRet.f32 %8784, 3
  %8789 = call float @dx.op.binary.f32(i32 35, float %8781, float %8782)  ; FMax(a,b)
  %8790 = call float @dx.op.binary.f32(i32 35, float %8780, float %8789)  ; FMax(a,b)
  %8791 = call float @dx.op.binary.f32(i32 35, float %8790, float %8783)  ; FMax(a,b)
  %8792 = call float @dx.op.binary.f32(i32 36, float %8786, float %8787)  ; FMin(a,b)
  %8793 = call float @dx.op.binary.f32(i32 36, float %8785, float %8792)  ; FMin(a,b)
  %8794 = call float @dx.op.binary.f32(i32 36, float %8793, float %8788)  ; FMin(a,b)
  %8795 = fmul fast float %8791, 2.550000e+02
  %8796 = fadd fast float %8795, 0x3F70101020000000
  %8797 = fptoui float %8796 to i32
  %8798 = fmul fast float %8794, 2.550000e+02
  %8799 = fadd fast float %8798, 0x3F70101020000000
  %8800 = fptoui float %8799 to i32
  %8801 = icmp ult i32 %8797, %8800
  br i1 %8801, label %8802, label %8970

; <label>:8802                                    ; preds = %8771
  %8803 = fcmp fast ogt float %97, 9.843750e-01
  %8804 = fadd fast float %98, -4.000000e+00
  %8805 = select i1 %8803, float -4.000000e+00, float %8804
  %8806 = call float @dx.op.binary.f32(i32 35, float %8805, float 0.000000e+00)  ; FMax(a,b)
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 0
  %8809 = fadd fast float %8808, %8806
  %8810 = extractvalue %dx.types.CBufRet.f32 %8807, 2
  %8811 = fmul fast float %8809, %8810
  %8812 = call float @dx.op.unary.f32(i32 23, float %8811)  ; Log(value)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8807, 3
  %8814 = fmul fast float %8813, %8812
  %8815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8816 = extractvalue %dx.types.CBufRet.f32 %8815, 2
  %8817 = fmul fast float %8814, %8816
  %8818 = call float @dx.op.unary.f32(i32 7, float %8817)  ; Saturate(value)
  %8819 = uitofp i32 %8797 to float
  %8820 = uitofp i32 %8800 to float
  %8821 = fadd fast float %8819, 5.000000e-01
  %8822 = fadd fast float %8820, 5.000000e-01
  %8823 = fmul fast float %8816, %8821
  %8824 = fmul fast float %8816, %8822
  %8825 = fadd fast float %8823, 0x3F0FFB4800000000
  %8826 = fadd fast float %8824, 0xBF0FFB4800000000
  %8827 = call float @dx.op.binary.f32(i32 35, float %8818, float %8825)  ; FMax(a,b)
  %8828 = call float @dx.op.binary.f32(i32 36, float %8827, float %8826)  ; FMin(a,b)
  %8829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8830 = extractvalue %dx.types.CBufRet.f32 %8829, 1
  %8831 = extractvalue %dx.types.CBufRet.f32 %8829, 2
  %8832 = extractvalue %dx.types.CBufRet.f32 %8829, 0
  %8833 = fmul fast float %8830, %8828
  %8834 = fadd fast float %8832, %8833
  %8835 = fadd fast float %8832, %8831
  %8836 = fsub fast float %8830, %8831
  %8837 = fadd fast float %8836, %8832
  %8838 = call float @dx.op.binary.f32(i32 35, float %8834, float %8835)  ; FMax(a,b)
  %8839 = call float @dx.op.binary.f32(i32 36, float %8838, float %8837)  ; FMin(a,b)
  %8840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8777, float %8778, float %8839, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8841 = extractvalue %dx.types.ResRet.f32 %8840, 0
  %8842 = extractvalue %dx.types.ResRet.f32 %8840, 1
  %8843 = extractvalue %dx.types.ResRet.f32 %8840, 2
  %8844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.i32 %8844, 0
  %8846 = extractvalue %dx.types.CBufRet.i32 %8844, 1
  %8847 = uitofp i32 %8845 to float
  %8848 = uitofp i32 %8846 to float
  %8849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8850 = extractvalue %dx.types.CBufRet.f32 %8849, 0
  %8851 = extractvalue %dx.types.CBufRet.f32 %8849, 1
  %8852 = fmul fast float %8847, %8777
  %8853 = fmul fast float %8848, %8778
  %8854 = fadd fast float %8852, -5.000000e-01
  %8855 = fadd fast float %8853, -5.000000e-01
  %8856 = call float @dx.op.unary.f32(i32 22, float %8854)  ; Frc(value)
  %8857 = call float @dx.op.unary.f32(i32 22, float %8855)  ; Frc(value)
  %8858 = fmul fast float %8856, %8856
  %8859 = fmul fast float %8858, %8856
  %8860 = fsub fast float 3.000000e+00, %8856
  %8861 = fmul fast float %8858, %8860
  %8862 = fmul fast float %8856, 3.000000e+00
  %8863 = fmul fast float %8859, 3.000000e+00
  %8864 = fmul fast float %8858, 6.000000e+00
  %8865 = fsub fast float %8863, %8864
  %8866 = fadd fast float %8865, 4.000000e+00
  %8867 = fmul fast float %8866, 0x3FC5555560000000
  %8868 = fmul fast float %8859, -3.000000e+00
  %8869 = fadd fast float %8858, %8856
  %8870 = fmul fast float %8869, 3.000000e+00
  %8871 = fadd fast float %8868, 1.000000e+00
  %8872 = fadd fast float %8871, %8870
  %8873 = fmul fast float %8859, 0x3FC5555560000000
  %8874 = fmul fast float %8857, %8857
  %8875 = fmul fast float %8874, %8857
  %8876 = fsub fast float 3.000000e+00, %8857
  %8877 = fmul fast float %8874, %8876
  %8878 = fmul fast float %8857, 3.000000e+00
  %8879 = fmul fast float %8875, 3.000000e+00
  %8880 = fmul fast float %8874, 6.000000e+00
  %8881 = fsub fast float %8879, %8880
  %8882 = fadd fast float %8881, 4.000000e+00
  %8883 = fmul fast float %8882, 0x3FC5555560000000
  %8884 = fmul fast float %8875, -3.000000e+00
  %8885 = fadd fast float %8874, %8857
  %8886 = fmul fast float %8885, 3.000000e+00
  %8887 = fadd fast float %8884, 1.000000e+00
  %8888 = fadd fast float %8887, %8886
  %8889 = fmul fast float %8875, 0x3FC5555560000000
  %8890 = fadd fast float %8856, 1.000000e+00
  %8891 = fsub fast float 1.000000e+00, %8862
  %8892 = fadd fast float %8891, %8861
  %8893 = fadd fast float %8892, %8866
  %8894 = fmul fast float %8893, 0x3FC5555560000000
  %8895 = fdiv fast float %8867, %8894
  %8896 = fsub fast float %8890, %8895
  %8897 = fsub fast float 1.000000e+00, %8856
  %8898 = fadd fast float %8872, %8859
  %8899 = fmul fast float %8898, 0x3FC5555560000000
  %8900 = fdiv fast float %8873, %8899
  %8901 = fadd fast float %8897, %8900
  %8902 = fadd fast float %8857, 1.000000e+00
  %8903 = fsub fast float 1.000000e+00, %8878
  %8904 = fadd fast float %8903, %8877
  %8905 = fadd fast float %8904, %8882
  %8906 = fmul fast float %8905, 0x3FC5555560000000
  %8907 = fdiv fast float %8883, %8906
  %8908 = fsub fast float %8902, %8907
  %8909 = fsub fast float 1.000000e+00, %8857
  %8910 = fadd fast float %8888, %8875
  %8911 = fmul fast float %8910, 0x3FC5555560000000
  %8912 = fdiv fast float %8889, %8911
  %8913 = fadd fast float %8912, %8909
  %8914 = fmul fast float %8896, %8850
  %8915 = fsub fast float %8777, %8914
  %8916 = fmul fast float %8901, %8850
  %8917 = fadd fast float %8916, %8777
  %8918 = fmul fast float %8913, %8851
  %8919 = fadd fast float %8918, %8778
  %8920 = fmul fast float %8908, %8851
  %8921 = fsub fast float %8778, %8920
  %8922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8915, float %8921, float %8839, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8923 = extractvalue %dx.types.ResRet.f32 %8922, 0
  %8924 = extractvalue %dx.types.ResRet.f32 %8922, 1
  %8925 = extractvalue %dx.types.ResRet.f32 %8922, 2
  %8926 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8917, float %8921, float %8839, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8927 = extractvalue %dx.types.ResRet.f32 %8926, 0
  %8928 = extractvalue %dx.types.ResRet.f32 %8926, 1
  %8929 = extractvalue %dx.types.ResRet.f32 %8926, 2
  %8930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8915, float %8919, float %8839, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8931 = extractvalue %dx.types.ResRet.f32 %8930, 0
  %8932 = extractvalue %dx.types.ResRet.f32 %8930, 1
  %8933 = extractvalue %dx.types.ResRet.f32 %8930, 2
  %8934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8917, float %8919, float %8839, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8935 = extractvalue %dx.types.ResRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.ResRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.ResRet.f32 %8934, 2
  %8938 = fsub fast float %8931, %8923
  %8939 = fsub fast float %8932, %8924
  %8940 = fsub fast float %8933, %8925
  %8941 = fmul fast float %8938, %8911
  %8942 = fmul fast float %8939, %8911
  %8943 = fmul fast float %8940, %8911
  %8944 = fadd fast float %8941, %8923
  %8945 = fadd fast float %8942, %8924
  %8946 = fadd fast float %8943, %8925
  %8947 = fsub fast float %8935, %8927
  %8948 = fsub fast float %8936, %8928
  %8949 = fsub fast float %8937, %8929
  %8950 = fmul fast float %8947, %8911
  %8951 = fmul fast float %8948, %8911
  %8952 = fmul fast float %8949, %8911
  %8953 = fsub fast float %8927, %8944
  %8954 = fadd fast float %8953, %8950
  %8955 = fsub fast float %8928, %8945
  %8956 = fadd fast float %8955, %8951
  %8957 = fsub fast float %8929, %8946
  %8958 = fadd fast float %8957, %8952
  %8959 = fmul fast float %8954, %8899
  %8960 = fmul fast float %8956, %8899
  %8961 = fmul fast float %8958, %8899
  %8962 = fadd fast float %8959, %8944
  %8963 = fadd fast float %8960, %8945
  %8964 = fadd fast float %8961, %8946
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8967 = fmul fast float %8962, %8966
  %8968 = fmul fast float %8963, %8966
  %8969 = fmul fast float %8964, %8966
  br label %8970

; <label>:8970                                    ; preds = %8802, %8771
  %8971 = phi float [ %8841, %8802 ], [ 1.000000e+00, %8771 ]
  %8972 = phi float [ %8842, %8802 ], [ 1.000000e+00, %8771 ]
  %8973 = phi float [ %8843, %8802 ], [ 1.000000e+00, %8771 ]
  %8974 = phi float [ %8967, %8802 ], [ 0.000000e+00, %8771 ]
  %8975 = phi float [ %8968, %8802 ], [ 0.000000e+00, %8771 ]
  %8976 = phi float [ %8969, %8802 ], [ 0.000000e+00, %8771 ]
  %8977 = fmul fast float %8974, %8756
  %8978 = fmul fast float %8975, %8757
  %8979 = fmul fast float %8976, %8758
  %8980 = call float @dx.op.dot3.f32(i32 55, float %8971, float %8972, float %8973, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8981 = call float @dx.op.dot3.f32(i32 55, float %8977, float %8978, float %8979, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8982 = select i1 %296, float %8980, float %8971
  %8983 = select i1 %296, float %8980, float %8972
  %8984 = select i1 %296, float 1.000000e+00, float %8973
  %8985 = select i1 %296, float %8981, float %8977
  %8986 = select i1 %296, float 0.000000e+00, float %8978
  %8987 = select i1 %296, float 0.000000e+00, float %8979
  %8988 = fmul fast float %8982, %8761
  %8989 = fmul fast float %8983, %8762
  %8990 = fmul fast float %8984, %8763
  %8991 = fadd fast float %8988, %8985
  %8992 = fadd fast float %8989, %8986
  %8993 = fadd fast float %8987, %8990
  %8994 = fmul fast float %8982, %8725
  %8995 = fmul fast float %8983, %8726
  %8996 = fmul fast float %8984, %8727
  %8997 = fmul fast float %139, %8773
  %8998 = fmul fast float %141, %8774
  %8999 = fsub fast float 1.000000e+00, %8997
  %9000 = fsub fast float 1.000000e+00, %8998
  %9001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9002 = extractvalue %dx.types.CBufRet.f32 %9001, 0
  %9003 = extractvalue %dx.types.CBufRet.f32 %9001, 1
  %9004 = extractvalue %dx.types.CBufRet.f32 %9001, 2
  %9005 = fmul fast float %8999, %9002
  %9006 = fmul fast float %8999, %9003
  %9007 = fmul fast float %8999, %9004
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9012 = fmul fast float %9000, %9009
  %9013 = fmul fast float %9000, %9010
  %9014 = fmul fast float %9000, %9011
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 0
  %9017 = extractvalue %dx.types.CBufRet.f32 %9015, 1
  %9018 = extractvalue %dx.types.CBufRet.f32 %9015, 2
  %9019 = fadd fast float %9012, %9016
  %9020 = fadd fast float %9019, %9005
  %9021 = fadd fast float %9013, %9017
  %9022 = fadd fast float %9021, %9006
  %9023 = fadd fast float %9014, %9018
  %9024 = fadd fast float %9023, %9007
  %9025 = fmul fast float %9020, %257
  %9026 = fmul fast float %9022, %257
  %9027 = fmul fast float %9024, %257
  br label %9028

; <label>:9028                                    ; preds = %8970, %8724
  %9029 = phi float [ %9025, %8970 ], [ %190, %8724 ]
  %9030 = phi float [ %9026, %8970 ], [ %191, %8724 ]
  %9031 = phi float [ %9027, %8970 ], [ %192, %8724 ]
  %9032 = phi float [ %257, %8970 ], [ %98, %8724 ]
  %9033 = phi float [ %8991, %8970 ], [ %8761, %8724 ]
  %9034 = phi float [ %8992, %8970 ], [ %8762, %8724 ]
  %9035 = phi float [ %8993, %8970 ], [ %8763, %8724 ]
  %9036 = phi float [ %8994, %8970 ], [ %8725, %8724 ]
  %9037 = phi float [ %8995, %8970 ], [ %8726, %8724 ]
  %9038 = phi float [ %8996, %8970 ], [ %8727, %8724 ]
  %9039 = phi float [ %8971, %8970 ], [ 1.000000e+00, %8724 ]
  br i1 %8770, label %10194, label %9040

; <label>:9040                                    ; preds = %9028
  %9041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9042 = extractvalue %dx.types.CBufRet.f32 %9041, 0
  %9043 = extractvalue %dx.types.CBufRet.f32 %9041, 1
  %9044 = extractvalue %dx.types.CBufRet.f32 %9041, 2
  %9045 = extractvalue %dx.types.CBufRet.f32 %9041, 3
  %9046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9047 = extractvalue %dx.types.CBufRet.f32 %9046, 0
  %9048 = extractvalue %dx.types.CBufRet.f32 %9046, 1
  %9049 = extractvalue %dx.types.CBufRet.f32 %9046, 2
  %9050 = extractvalue %dx.types.CBufRet.f32 %9046, 3
  %9051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9052 = extractvalue %dx.types.CBufRet.f32 %9051, 0
  %9053 = extractvalue %dx.types.CBufRet.f32 %9051, 1
  %9054 = extractvalue %dx.types.CBufRet.f32 %9051, 2
  %9055 = extractvalue %dx.types.CBufRet.f32 %9051, 3
  %9056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9057 = extractvalue %dx.types.CBufRet.f32 %9056, 0
  %9058 = extractvalue %dx.types.CBufRet.f32 %9056, 1
  %9059 = extractvalue %dx.types.CBufRet.f32 %9056, 2
  %9060 = extractvalue %dx.types.CBufRet.f32 %9056, 3
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 3
  %9063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9064 = extractvalue %dx.types.CBufRet.f32 %9063, 3
  %9065 = extractvalue %dx.types.CBufRet.f32 %9063, 0
  %9066 = extractvalue %dx.types.CBufRet.f32 %9063, 1
  %9067 = extractvalue %dx.types.CBufRet.f32 %9063, 2
  %9068 = fcmp fast olt float %9067, -5.000000e-01
  %9069 = call float @dx.op.dot3.f32(i32 55, float %9029, float %9030, float %9031, float %9029, float %9030, float %9031)  ; Dot3(ax,ay,az,bx,by,bz)
  %9070 = call float @dx.op.unary.f32(i32 25, float %9069)  ; Rsqrt(value)
  %9071 = fmul fast float %9070, %9069
  %9072 = fmul fast float %9070, %9029
  %9073 = fmul fast float %9070, %9030
  %9074 = fmul fast float %9070, %9031
  %9075 = fadd fast float %9071, %9045
  %9076 = call float @dx.op.dot3.f32(i32 55, float %9072, float %9073, float %9074, float %9042, float %9043, float %9044)  ; Dot3(ax,ay,az,bx,by,bz)
  %9077 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9078 = extractvalue %dx.types.CBufRet.i32 %9077, 1
  %9079 = and i32 %9078, 1
  %9080 = icmp ne i32 %9079, 0
  %9081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9082 = extractvalue %dx.types.CBufRet.f32 %9081, 2
  %9083 = fcmp fast ogt float %9082, 0.000000e+00
  %9084 = and i1 %9080, %9083
  br i1 %9084, label %9085, label %9491, !dx.controlflow.hints !127

; <label>:9085                                    ; preds = %9040
  %9086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9087 = extractvalue %dx.types.CBufRet.f32 %9086, 3
  %9088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9089 = extractvalue %dx.types.CBufRet.f32 %9088, 2
  %9090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9091 = extractvalue %dx.types.CBufRet.f32 %9090, 2
  %9092 = fsub fast float %9089, %9091
  %9093 = and i32 %9078, 2
  %9094 = extractvalue %dx.types.CBufRet.i32 %9077, 0
  %9095 = call i32 @dx.op.binary.i32(i32 40, i32 %9094, i32 3)  ; UMin(a,b)
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 0
  %9098 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9099 = extractvalue %dx.types.CBufRet.f32 %9090, 0
  %9100 = extractvalue %dx.types.CBufRet.f32 %9090, 1
  %9101 = fsub fast float %9097, %9099
  %9102 = fsub fast float %9098, %9100
  %9103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9104 = extractvalue %dx.types.CBufRet.f32 %9103, 0
  %9105 = fcmp fast ogt float %9104, 0.000000e+00
  %9106 = fsub fast float -0.000000e+00, %9101
  %9107 = fsub fast float -0.000000e+00, %9102
  %9108 = call float @dx.op.dot2.f32(i32 54, float %9072, float %9073, float %9072, float %9073)  ; Dot2(ax,ay,bx,by)
  %9109 = call float @dx.op.dot2.f32(i32 54, float %9072, float %9073, float %9106, float %9107)  ; Dot2(ax,ay,bx,by)
  %9110 = fmul fast float %9109, 2.000000e+00
  %9111 = call float @dx.op.dot2.f32(i32 54, float %9106, float %9107, float %9106, float %9107)  ; Dot2(ax,ay,bx,by)
  %9112 = fmul fast float %9104, %9104
  %9113 = fsub fast float %9111, %9112
  %9114 = fmul fast float %9110, %9110
  %9115 = fmul fast float %9108, 4.000000e+00
  %9116 = fmul fast float %9115, %9113
  %9117 = fsub fast float %9114, %9116
  %9118 = fcmp fast ogt float %9117, 0.000000e+00
  br i1 %9118, label %9119, label %9134

; <label>:9119                                    ; preds = %9085
  %9120 = fcmp fast ogt float %9110, 0.000000e+00
  %9121 = call float @dx.op.unary.f32(i32 24, float %9117)  ; Sqrt(value)
  %9122 = fsub fast float -0.000000e+00, %9121
  %9123 = select i1 %9120, float %9121, float %9122
  %9124 = fadd fast float %9123, %9110
  %9125 = fmul float %9124, -5.000000e-01
  %9126 = fdiv fast float %9125, %9108
  %9127 = call float @dx.op.binary.f32(i32 35, float %9126, float 0.000000e+00)  ; FMax(a,b)
  %9128 = call float @dx.op.binary.f32(i32 36, float %9071, float %9127)  ; FMin(a,b)
  %9129 = fdiv fast float %9113, %9125
  %9130 = call float @dx.op.binary.f32(i32 35, float %9129, float 0.000000e+00)  ; FMax(a,b)
  %9131 = call float @dx.op.binary.f32(i32 36, float %9071, float %9130)  ; FMin(a,b)
  %9132 = call float @dx.op.binary.f32(i32 36, float %9128, float %9131)  ; FMin(a,b)
  %9133 = call float @dx.op.binary.f32(i32 35, float %9128, float %9131)  ; FMax(a,b)
  br label %9134

; <label>:9134                                    ; preds = %9119, %9085
  %9135 = phi float [ %9133, %9119 ], [ -1.000000e+00, %9085 ]
  %9136 = phi float [ %9132, %9119 ], [ -1.000000e+00, %9085 ]
  %9137 = phi i1 [ true, %9119 ], [ false, %9085 ]
  %9138 = and i1 %9105, %9137
  br i1 %9138, label %9139, label %9141

; <label>:9139                                    ; preds = %9134
  %9140 = fcmp fast oeq float %9136, %9135
  br i1 %9140, label %9444, label %9142

; <label>:9141                                    ; preds = %9134
  br i1 %9105, label %9444, label %9142

; <label>:9142                                    ; preds = %9141, %9139
  %9143 = phi float [ %9071, %9141 ], [ %9135, %9139 ]
  %9144 = phi float [ 0.000000e+00, %9141 ], [ %9136, %9139 ]
  %9145 = icmp ne i32 %9093, 0
  %9146 = fmul fast float %9143, %9074
  %9147 = fadd fast float %9146, %9087
  %9148 = fmul fast float %9147, %9143
  %9149 = select i1 %9145, float 0.000000e+00, float %9148
  %9150 = fcmp fast oeq float %9074, 0.000000e+00
  %9151 = fdiv fast float %9092, %9074
  %9152 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9151)  ; FMax(a,b)
  %9153 = select i1 %9150, float %9143, float %9152
  %9154 = call float @dx.op.binary.f32(i32 36, float %9143, float %9153)  ; FMin(a,b)
  %9155 = fcmp fast ogt float %9074, 0.000000e+00
  %9156 = fcmp fast olt float %9092, 0.000000e+00
  br i1 %9155, label %9157, label %9214

; <label>:9157                                    ; preds = %9142
  %9158 = icmp eq i32 %9093, 0
  br i1 %9156, label %9159, label %9203

; <label>:9159                                    ; preds = %9157
  %9160 = select i1 %9158, float %9143, float 0.000000e+00
  %9161 = fsub fast float -0.000000e+00, %9160
  %9162 = call float @dx.op.unary.f32(i32 6, float %9161)  ; FAbs(value)
  %9163 = fmul fast float %9160, %9074
  %9164 = fadd fast float %9163, %9087
  %9165 = fmul fast float %9162, %9164
  %9166 = fsub fast float %9149, %9165
  %9167 = fsub fast float %9143, %9162
  %9168 = select i1 %9158, float %9167, float 0.000000e+00
  %9169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9170 = extractvalue %dx.types.CBufRet.f32 %9169, 0
  %9171 = extractvalue %dx.types.CBufRet.f32 %9169, 1
  %9172 = extractvalue %dx.types.CBufRet.f32 %9169, 2
  %9173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9174 = extractvalue %dx.types.CBufRet.f32 %9173, 0
  %9175 = extractvalue %dx.types.CBufRet.f32 %9173, 1
  %9176 = extractvalue %dx.types.CBufRet.f32 %9173, 2
  %9177 = extractvalue %dx.types.CBufRet.f32 %9173, 3
  %9178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9179 = extractvalue %dx.types.CBufRet.f32 %9178, 3
  %9180 = call float @dx.op.binary.f32(i32 36, float %9166, float %9179)  ; FMin(a,b)
  %9181 = fmul fast float %9177, %9168
  %9182 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9183 = fsub fast float %9174, %9170
  %9184 = fsub fast float %9175, %9171
  %9185 = fsub fast float %9176, %9172
  %9186 = fmul fast float %9182, %9183
  %9187 = fmul fast float %9182, %9184
  %9188 = fmul fast float %9182, %9185
  %9189 = fadd fast float %9186, %9170
  %9190 = fadd fast float %9187, %9171
  %9191 = fadd fast float %9188, %9172
  %9192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9193 = extractvalue %dx.types.CBufRet.f32 %9192, 0
  %9194 = extractvalue %dx.types.CBufRet.f32 %9192, 1
  %9195 = fadd fast float %9194, %9193
  %9196 = call float @dx.op.unary.f32(i32 7, float %9195)  ; Saturate(value)
  %9197 = extractvalue %dx.types.CBufRet.f32 %9192, 2
  %9198 = extractvalue %dx.types.CBufRet.f32 %9192, 3
  %9199 = fadd fast float %9198, %9197
  %9200 = call float @dx.op.unary.f32(i32 7, float %9199)  ; Saturate(value)
  %9201 = fmul fast float %9196, %9180
  %9202 = fmul fast float %9201, %9200
  br label %9444

; <label>:9203                                    ; preds = %9157
  br i1 %9158, label %9204, label %9225

; <label>:9204                                    ; preds = %9203
  %9205 = call float @dx.op.binary.f32(i32 36, float %9154, float %9144)  ; FMin(a,b)
  %9206 = fsub fast float %9154, %9205
  %9207 = fsub fast float %9206, %9143
  %9208 = call float @dx.op.unary.f32(i32 6, float %9207)  ; FAbs(value)
  %9209 = fadd fast float %9206, %9143
  %9210 = fmul fast float %9209, %9074
  %9211 = fadd fast float %9210, %9087
  %9212 = fmul fast float %9211, %9208
  %9213 = fsub fast float %9149, %9212
  br label %9225

; <label>:9214                                    ; preds = %9142
  br i1 %9156, label %9215, label %9225

; <label>:9215                                    ; preds = %9214
  %9216 = call float @dx.op.binary.f32(i32 35, float %9144, float %9154)  ; FMax(a,b)
  %9217 = icmp eq i32 %9093, 0
  %9218 = select i1 %9217, float %9154, float 0.000000e+00
  %9219 = fsub fast float -0.000000e+00, %9218
  %9220 = call float @dx.op.unary.f32(i32 6, float %9219)  ; FAbs(value)
  %9221 = fmul fast float %9218, %9074
  %9222 = fadd fast float %9221, %9087
  %9223 = fmul fast float %9220, %9222
  %9224 = fsub fast float %9149, %9223
  br label %9225

; <label>:9225                                    ; preds = %9215, %9214, %9204, %9203
  %9226 = phi float [ %9144, %9203 ], [ %9144, %9204 ], [ %9216, %9215 ], [ %9144, %9214 ]
  %9227 = phi float [ 0.000000e+00, %9203 ], [ %9208, %9204 ], [ %9220, %9215 ], [ 0.000000e+00, %9214 ]
  %9228 = phi float [ %9149, %9203 ], [ %9213, %9204 ], [ %9224, %9215 ], [ %9149, %9214 ]
  %9229 = phi float [ %9154, %9203 ], [ %9154, %9204 ], [ %9143, %9215 ], [ %9143, %9214 ]
  %9230 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9230, align 4, !tbaa !116, !noalias !128
  %9231 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9231, align 4, !tbaa !116, !noalias !128
  %9232 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9232, align 4, !tbaa !116, !noalias !128
  %9233 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9233, align 4, !tbaa !116, !noalias !128
  %9234 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9234, align 4, !tbaa !116, !noalias !128
  %9235 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9235, align 4, !tbaa !116, !noalias !128
  %9236 = icmp sgt i32 %9095, 0
  br i1 %9236, label %9237, label %9298

; <label>:9237                                    ; preds = %9225
  br label %9238

; <label>:9238                                    ; preds = %9287, %9237
  %9239 = phi i32 [ %9288, %9287 ], [ 0, %9237 ]
  %9240 = phi i32 [ %9289, %9287 ], [ 0, %9237 ]
  %9241 = add nuw i32 %9240, 171
  %9242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %9241)  ; CBufferLoadLegacy(handle,regIndex)
  %9243 = extractvalue %dx.types.CBufRet.f32 %9242, 0
  %9244 = extractvalue %dx.types.CBufRet.f32 %9242, 1
  %9245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9246 = extractvalue %dx.types.CBufRet.f32 %9245, 0
  %9247 = extractvalue %dx.types.CBufRet.f32 %9245, 1
  %9248 = fsub fast float %9243, %9246
  %9249 = fsub fast float %9244, %9247
  %9250 = extractvalue %dx.types.CBufRet.f32 %9242, 2
  %9251 = fsub fast float -0.000000e+00, %9248
  %9252 = fsub fast float -0.000000e+00, %9249
  %9253 = call float @dx.op.dot2.f32(i32 54, float %9072, float %9073, float %9251, float %9252)  ; Dot2(ax,ay,bx,by)
  %9254 = fmul fast float %9253, 2.000000e+00
  %9255 = call float @dx.op.dot2.f32(i32 54, float %9251, float %9252, float %9251, float %9252)  ; Dot2(ax,ay,bx,by)
  %9256 = fmul fast float %9250, %9250
  %9257 = fsub fast float %9255, %9256
  %9258 = fmul fast float %9254, %9254
  %9259 = fmul fast float %9115, %9257
  %9260 = fsub fast float %9258, %9259
  %9261 = fcmp fast ogt float %9260, 0.000000e+00
  br i1 %9261, label %9262, label %9277

; <label>:9262                                    ; preds = %9238
  %9263 = fcmp fast ogt float %9254, 0.000000e+00
  %9264 = call float @dx.op.unary.f32(i32 24, float %9260)  ; Sqrt(value)
  %9265 = fsub fast float -0.000000e+00, %9264
  %9266 = select i1 %9263, float %9264, float %9265
  %9267 = fadd fast float %9266, %9254
  %9268 = fmul float %9267, -5.000000e-01
  %9269 = fdiv fast float %9268, %9108
  %9270 = call float @dx.op.binary.f32(i32 35, float %9269, float 0.000000e+00)  ; FMax(a,b)
  %9271 = call float @dx.op.binary.f32(i32 36, float %9143, float %9270)  ; FMin(a,b)
  %9272 = fdiv fast float %9257, %9268
  %9273 = call float @dx.op.binary.f32(i32 35, float %9272, float 0.000000e+00)  ; FMax(a,b)
  %9274 = call float @dx.op.binary.f32(i32 36, float %9143, float %9273)  ; FMin(a,b)
  %9275 = call float @dx.op.binary.f32(i32 36, float %9271, float %9274)  ; FMin(a,b)
  %9276 = call float @dx.op.binary.f32(i32 35, float %9271, float %9274)  ; FMax(a,b)
  br label %9277

; <label>:9277                                    ; preds = %9262, %9238
  %9278 = phi float [ %9276, %9262 ], [ -1.000000e+00, %9238 ]
  %9279 = phi float [ %9275, %9262 ], [ -1.000000e+00, %9238 ]
  %9280 = phi i1 [ true, %9262 ], [ false, %9238 ]
  br i1 %9280, label %9281, label %9287

; <label>:9281                                    ; preds = %9277
  %9282 = call float @dx.op.binary.f32(i32 35, float %9226, float %9279)  ; FMax(a,b)
  %9283 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9240
  store float %9282, float* %9283, align 4, !tbaa !116, !noalias !128
  %9284 = call float @dx.op.binary.f32(i32 35, float %9226, float %9278)  ; FMax(a,b)
  %9285 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9240
  store float %9284, float* %9285, align 4, !tbaa !116, !noalias !128
  %9286 = add nsw i32 %9239, 1
  br label %9287

; <label>:9287                                    ; preds = %9281, %9277
  %9288 = phi i32 [ %9286, %9281 ], [ %9239, %9277 ]
  %9289 = add nuw nsw i32 %9240, 1
  %9290 = icmp eq i32 %9289, %9095
  br i1 %9290, label %9291, label %9238

; <label>:9291                                    ; preds = %9287
  %9292 = load float, float* %9232, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %9293 = load float, float* %9231, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %9294 = load float, float* %9230, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  %9295 = load float, float* %9235, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %9296 = load float, float* %9234, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  %9297 = load float, float* %9233, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  br label %9298

; <label>:9298                                    ; preds = %9291, %9225
  %9299 = phi float [ -1.000000e+00, %9225 ], [ %9297, %9291 ]
  %9300 = phi float [ -1.000000e+00, %9225 ], [ %9296, %9291 ]
  %9301 = phi float [ -1.000000e+00, %9225 ], [ %9295, %9291 ]
  %9302 = phi float [ -1.000000e+00, %9225 ], [ %9294, %9291 ]
  %9303 = phi float [ -1.000000e+00, %9225 ], [ %9293, %9291 ]
  %9304 = phi float [ -1.000000e+00, %9225 ], [ %9292, %9291 ]
  %9305 = phi i32 [ 0, %9225 ], [ %9288, %9291 ]
  %9306 = call float @dx.op.binary.f32(i32 36, float %9303, float %9304)  ; FMin(a,b)
  %9307 = call float @dx.op.binary.f32(i32 36, float %9302, float %9306)  ; FMin(a,b)
  %9308 = call float @dx.op.binary.f32(i32 35, float %9302, float %9303)  ; FMax(a,b)
  %9309 = call float @dx.op.binary.f32(i32 36, float %9308, float %9304)  ; FMin(a,b)
  %9310 = call float @dx.op.binary.f32(i32 36, float %9302, float %9303)  ; FMin(a,b)
  %9311 = call float @dx.op.binary.f32(i32 35, float %9310, float %9309)  ; FMax(a,b)
  %9312 = call float @dx.op.binary.f32(i32 35, float %9303, float %9304)  ; FMax(a,b)
  %9313 = call float @dx.op.binary.f32(i32 35, float %9302, float %9312)  ; FMax(a,b)
  store float %9307, float* %9230, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %9311, float* %9231, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %9313, float* %9232, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %9314 = call float @dx.op.binary.f32(i32 36, float %9300, float %9301)  ; FMin(a,b)
  %9315 = call float @dx.op.binary.f32(i32 36, float %9299, float %9314)  ; FMin(a,b)
  %9316 = call float @dx.op.binary.f32(i32 35, float %9299, float %9300)  ; FMax(a,b)
  %9317 = call float @dx.op.binary.f32(i32 36, float %9316, float %9301)  ; FMin(a,b)
  %9318 = call float @dx.op.binary.f32(i32 36, float %9299, float %9300)  ; FMin(a,b)
  %9319 = call float @dx.op.binary.f32(i32 35, float %9318, float %9317)  ; FMax(a,b)
  %9320 = call float @dx.op.binary.f32(i32 35, float %9300, float %9301)  ; FMax(a,b)
  %9321 = call float @dx.op.binary.f32(i32 35, float %9299, float %9320)  ; FMax(a,b)
  store float %9315, float* %9233, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  store float %9319, float* %9234, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  store float %9321, float* %9235, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %9322 = sub nsw i32 3, %9305
  %9323 = icmp sgt i32 %9322, 2
  br i1 %9323, label %9324, label %9362

; <label>:9324                                    ; preds = %9298
  %9325 = icmp eq i32 %9093, 0
  %9326 = fsub fast float %9143, %9227
  %9327 = select i1 %9325, float %9326, float %9227
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 0
  %9330 = extractvalue %dx.types.CBufRet.f32 %9328, 1
  %9331 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9333 = extractvalue %dx.types.CBufRet.f32 %9332, 0
  %9334 = extractvalue %dx.types.CBufRet.f32 %9332, 1
  %9335 = extractvalue %dx.types.CBufRet.f32 %9332, 2
  %9336 = extractvalue %dx.types.CBufRet.f32 %9332, 3
  %9337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9338 = extractvalue %dx.types.CBufRet.f32 %9337, 3
  %9339 = call float @dx.op.binary.f32(i32 36, float %9228, float %9338)  ; FMin(a,b)
  %9340 = fmul fast float %9336, %9327
  %9341 = call float @dx.op.unary.f32(i32 7, float %9340)  ; Saturate(value)
  %9342 = fsub fast float %9333, %9329
  %9343 = fsub fast float %9334, %9330
  %9344 = fsub fast float %9335, %9331
  %9345 = fmul fast float %9341, %9342
  %9346 = fmul fast float %9341, %9343
  %9347 = fmul fast float %9341, %9344
  %9348 = fadd fast float %9345, %9329
  %9349 = fadd fast float %9346, %9330
  %9350 = fadd fast float %9347, %9331
  %9351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9352 = extractvalue %dx.types.CBufRet.f32 %9351, 0
  %9353 = extractvalue %dx.types.CBufRet.f32 %9351, 1
  %9354 = fadd fast float %9353, %9352
  %9355 = call float @dx.op.unary.f32(i32 7, float %9354)  ; Saturate(value)
  %9356 = extractvalue %dx.types.CBufRet.f32 %9351, 2
  %9357 = extractvalue %dx.types.CBufRet.f32 %9351, 3
  %9358 = fadd fast float %9357, %9356
  %9359 = call float @dx.op.unary.f32(i32 7, float %9358)  ; Saturate(value)
  %9360 = fmul fast float %9355, %9339
  %9361 = fmul fast float %9360, %9359
  br label %9444

; <label>:9362                                    ; preds = %9298
  %9363 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9322
  %9364 = load float, float* %9363, align 4, !tbaa !116, !noalias !128
  %9365 = fcmp fast olt float %9364, %9229
  %9366 = icmp sgt i32 %9305, 0
  %9367 = and i1 %9366, %9365
  br i1 %9367, label %9368, label %9405

; <label>:9368                                    ; preds = %9362
  br label %9369

; <label>:9369                                    ; preds = %9398, %9368
  %9370 = phi float [ %9399, %9398 ], [ %9227, %9368 ]
  %9371 = phi float [ %9400, %9398 ], [ %9228, %9368 ]
  %9372 = phi float [ %9380, %9398 ], [ %9364, %9368 ]
  %9373 = phi i32 [ %9377, %9398 ], [ %9322, %9368 ]
  %9374 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9373
  %9375 = load float, float* %9374, align 4, !tbaa !116, !noalias !128
  %9376 = icmp slt i32 %9373, 2
  %9377 = add nsw i32 %9373, 1
  %9378 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9377
  %9379 = load float, float* %9378, align 4, !tbaa !116, !noalias !128
  %9380 = select i1 %9376, float %9379, float %9143
  %9381 = call float @dx.op.binary.f32(i32 36, float %9380, float %9375)  ; FMin(a,b)
  %9382 = call float @dx.op.binary.f32(i32 36, float %9229, float %9381)  ; FMin(a,b)
  %9383 = icmp eq i32 %9093, 0
  %9384 = fadd fast float %9382, %9372
  %9385 = fmul fast float %9384, %9074
  %9386 = fadd fast float %9385, %9087
  br i1 %9383, label %9392, label %9387

; <label>:9387                                    ; preds = %9369
  %9388 = fsub fast float %9382, %9372
  %9389 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9388)  ; FMax(a,b)
  %9390 = fmul fast float %9389, %9386
  %9391 = fadd fast float %9390, %9371
  br label %9398

; <label>:9392                                    ; preds = %9369
  %9393 = fsub fast float %9372, %9382
  %9394 = call float @dx.op.unary.f32(i32 6, float %9393)  ; FAbs(value)
  %9395 = fadd fast float %9394, %9370
  %9396 = fmul fast float %9394, %9386
  %9397 = fsub fast float %9371, %9396
  br label %9398

; <label>:9398                                    ; preds = %9392, %9387
  %9399 = phi float [ %9389, %9387 ], [ %9395, %9392 ]
  %9400 = phi float [ %9391, %9387 ], [ %9397, %9392 ]
  %9401 = fcmp fast olt float %9380, %9229
  %9402 = icmp slt i32 %9377, 3
  %9403 = and i1 %9402, %9401
  br i1 %9403, label %9369, label %9404

; <label>:9404                                    ; preds = %9398
  br label %9405

; <label>:9405                                    ; preds = %9404, %9362
  %9406 = phi float [ %9227, %9362 ], [ %9399, %9404 ]
  %9407 = phi float [ %9228, %9362 ], [ %9400, %9404 ]
  %9408 = fsub fast float %9143, %9406
  %9409 = select i1 %9145, float %9406, float %9408
  %9410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9411 = extractvalue %dx.types.CBufRet.f32 %9410, 0
  %9412 = extractvalue %dx.types.CBufRet.f32 %9410, 1
  %9413 = extractvalue %dx.types.CBufRet.f32 %9410, 2
  %9414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9415 = extractvalue %dx.types.CBufRet.f32 %9414, 0
  %9416 = extractvalue %dx.types.CBufRet.f32 %9414, 1
  %9417 = extractvalue %dx.types.CBufRet.f32 %9414, 2
  %9418 = extractvalue %dx.types.CBufRet.f32 %9414, 3
  %9419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9420 = extractvalue %dx.types.CBufRet.f32 %9419, 3
  %9421 = call float @dx.op.binary.f32(i32 36, float %9407, float %9420)  ; FMin(a,b)
  %9422 = fmul fast float %9418, %9409
  %9423 = call float @dx.op.unary.f32(i32 7, float %9422)  ; Saturate(value)
  %9424 = fsub fast float %9415, %9411
  %9425 = fsub fast float %9416, %9412
  %9426 = fsub fast float %9417, %9413
  %9427 = fmul fast float %9423, %9424
  %9428 = fmul fast float %9423, %9425
  %9429 = fmul fast float %9423, %9426
  %9430 = fadd fast float %9427, %9411
  %9431 = fadd fast float %9428, %9412
  %9432 = fadd fast float %9429, %9413
  %9433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9434 = extractvalue %dx.types.CBufRet.f32 %9433, 0
  %9435 = extractvalue %dx.types.CBufRet.f32 %9433, 1
  %9436 = fadd fast float %9435, %9434
  %9437 = call float @dx.op.unary.f32(i32 7, float %9436)  ; Saturate(value)
  %9438 = extractvalue %dx.types.CBufRet.f32 %9433, 2
  %9439 = extractvalue %dx.types.CBufRet.f32 %9433, 3
  %9440 = fadd fast float %9439, %9438
  %9441 = call float @dx.op.unary.f32(i32 7, float %9440)  ; Saturate(value)
  %9442 = fmul fast float %9437, %9421
  %9443 = fmul fast float %9442, %9441
  br label %9444

; <label>:9444                                    ; preds = %9405, %9324, %9159, %9141, %9139
  %9445 = phi float [ %9168, %9159 ], [ %9327, %9324 ], [ %9409, %9405 ], [ 0.000000e+00, %9139 ], [ 0.000000e+00, %9141 ]
  %9446 = phi float [ %9202, %9159 ], [ %9361, %9324 ], [ %9443, %9405 ], [ 0.000000e+00, %9139 ], [ 0.000000e+00, %9141 ]
  %9447 = phi float [ %9189, %9159 ], [ %9348, %9324 ], [ %9430, %9405 ], [ 0.000000e+00, %9139 ], [ 0.000000e+00, %9141 ]
  %9448 = phi float [ %9190, %9159 ], [ %9349, %9324 ], [ %9431, %9405 ], [ 0.000000e+00, %9139 ], [ 0.000000e+00, %9141 ]
  %9449 = phi float [ %9191, %9159 ], [ %9350, %9324 ], [ %9432, %9405 ], [ 0.000000e+00, %9139 ], [ 0.000000e+00, %9141 ]
  %9450 = fmul fast float %9082, %9446
  %9451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9452 = extractvalue %dx.types.CBufRet.f32 %9451, 2
  %9453 = fsub fast float %9089, %9452
  %9454 = fcmp fast olt float %9450, -2.000000e+01
  %9455 = call float @dx.op.unary.f32(i32 21, float %9450)  ; Exp(value)
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 2
  %9458 = extractvalue %dx.types.CBufRet.f32 %9456, 3
  %9459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.f32 %9459, 2
  %9461 = fmul fast float %9458, %9453
  %9462 = call float @dx.op.unary.f32(i32 7, float %9461)  ; Saturate(value)
  %9463 = fsub fast float 1.000000e+00, %9462
  %9464 = fmul fast float %9074, 5.000000e-01
  %9465 = fadd fast float %9464, 5.000000e-01
  %9466 = call float @dx.op.unary.f32(i32 7, float %9465)  ; Saturate(value)
  %9467 = fsub fast float 1.000000e+00, %9466
  %9468 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9463)  ; FMax(a,b)
  %9469 = fdiv fast float %9467, %9468
  %9470 = fsub fast float %9453, %9031
  %9471 = call float @dx.op.unary.f32(i32 6, float %9470)  ; FAbs(value)
  %9472 = fmul fast float %9471, %9457
  %9473 = call float @dx.op.unary.f32(i32 7, float %9469)  ; Saturate(value)
  %9474 = fsub fast float 1.000000e+00, %9472
  %9475 = fmul fast float %9474, %9473
  %9476 = fadd fast float %9475, %9472
  %9477 = fmul fast float %9460, %9453
  %9478 = call float @dx.op.unary.f32(i32 7, float %9477)  ; Saturate(value)
  %9479 = fsub fast float 1.000000e+00, %9476
  %9480 = fmul fast float %9479, %9478
  %9481 = fadd fast float %9480, %9476
  %9482 = call float @dx.op.unary.f32(i32 7, float %9481)  ; Saturate(value)
  %9483 = fadd fast float %9455, -1.000000e+00
  %9484 = select i1 %9454, float -1.000000e+00, float %9483
  %9485 = fmul fast float %9482, %9484
  %9486 = fadd fast float %9485, 1.000000e+00
  %9487 = fsub fast float -0.000000e+00, %9485
  %9488 = fmul fast float %9447, %9487
  %9489 = fmul fast float %9448, %9487
  %9490 = fmul fast float %9449, %9487
  br label %9491

; <label>:9491                                    ; preds = %9444, %9040
  %9492 = phi float [ %9445, %9444 ], [ 0.000000e+00, %9040 ]
  %9493 = phi float [ %9486, %9444 ], [ 1.000000e+00, %9040 ]
  %9494 = phi float [ %9488, %9444 ], [ 0.000000e+00, %9040 ]
  %9495 = phi float [ %9489, %9444 ], [ 0.000000e+00, %9040 ]
  %9496 = phi float [ %9490, %9444 ], [ 0.000000e+00, %9040 ]
  %9497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9498 = extractvalue %dx.types.CBufRet.f32 %9497, 1
  %9499 = fsub fast float 1.000000e+00, %9493
  %9500 = fmul fast float %9499, %9075
  %9501 = fmul fast float %9500, %9498
  %9502 = fsub fast float %9075, %9501
  br i1 %9068, label %9503, label %9532, !dx.controlflow.hints !164

; <label>:9503                                    ; preds = %9491
  %9504 = fmul fast float %9076, %9065
  %9505 = fadd fast float %9504, %9066
  %9506 = call float @dx.op.unary.f32(i32 7, float %9505)  ; Saturate(value)
  %9507 = fmul fast float %9047, %9502
  %9508 = fsub fast float -0.000000e+00, %9507
  %9509 = fmul fast float %9048, %9502
  %9510 = fsub fast float -0.000000e+00, %9509
  %9511 = call float @dx.op.unary.f32(i32 21, float %9508)  ; Exp(value)
  %9512 = call float @dx.op.unary.f32(i32 21, float %9510)  ; Exp(value)
  %9513 = call float @dx.op.binary.f32(i32 35, float %9055, float %9511)  ; FMax(a,b)
  %9514 = call float @dx.op.binary.f32(i32 35, float %9055, float %9512)  ; FMax(a,b)
  %9515 = fsub fast float %9514, %9513
  %9516 = fmul fast float %9515, %9506
  %9517 = fadd fast float %9516, %9513
  %9518 = call float @dx.op.unary.f32(i32 7, float %9517)  ; Saturate(value)
  %9519 = fsub fast float %9052, %9057
  %9520 = fsub fast float %9053, %9058
  %9521 = fsub fast float %9054, %9059
  %9522 = fmul fast float %9506, %9519
  %9523 = fmul fast float %9506, %9520
  %9524 = fmul fast float %9506, %9521
  %9525 = fadd fast float %9522, %9057
  %9526 = fadd fast float %9523, %9058
  %9527 = fadd fast float %9524, %9059
  %9528 = fsub fast float 1.000000e+00, %9518
  %9529 = fmul fast float %9528, %9525
  %9530 = fmul fast float %9528, %9526
  %9531 = fmul fast float %9528, %9527
  br label %9591

; <label>:9532                                    ; preds = %9491
  %9533 = fmul fast float %9502, %9064
  %9534 = call float @dx.op.unary.f32(i32 7, float %9533)  ; Saturate(value)
  %9535 = fsub fast float 2.000000e+00, %9534
  %9536 = fmul fast float %9534, 9.921875e-01
  %9537 = fmul fast float %9536, %9535
  %9538 = fadd fast float %9537, 3.906250e-03
  %9539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %9538, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9540 = extractvalue %dx.types.ResRet.f32 %9539, 0
  %9541 = fsub fast float %9534, %9540
  %9542 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9541)  ; FMax(a,b)
  %9543 = fmul fast float %9050, %9031
  %9544 = call float @dx.op.unary.f32(i32 6, float %9543)  ; FAbs(value)
  %9545 = fcmp fast ogt float %9544, 0x3EB0C6F7A0000000
  br i1 %9545, label %9546, label %9552, !dx.controlflow.hints !165

; <label>:9546                                    ; preds = %9532
  %9547 = fmul fast float %9543, 0xBFF7154760000000
  %9548 = call float @dx.op.unary.f32(i32 21, float %9547)  ; Exp(value)
  %9549 = fsub fast float 1.000000e+00, %9548
  %9550 = fdiv fast float %9549, %9543
  %9551 = fmul fast float %9550, %9060
  br label %9552

; <label>:9552                                    ; preds = %9546, %9532
  %9553 = phi float [ %9551, %9546 ], [ %9060, %9532 ]
  %9554 = fadd fast float %9553, %9062
  %9555 = fmul fast float %9554, %9542
  %9556 = fmul fast float %9047, %9555
  %9557 = fsub fast float -0.000000e+00, %9556
  %9558 = fmul fast float %9048, %9555
  %9559 = fsub fast float -0.000000e+00, %9558
  %9560 = fmul fast float %9049, %9555
  %9561 = fsub fast float -0.000000e+00, %9560
  %9562 = call float @dx.op.unary.f32(i32 21, float %9557)  ; Exp(value)
  %9563 = call float @dx.op.unary.f32(i32 21, float %9559)  ; Exp(value)
  %9564 = call float @dx.op.unary.f32(i32 21, float %9561)  ; Exp(value)
  %9565 = fmul fast float %9076, %9076
  %9566 = fadd fast float %9565, 1.000000e+00
  %9567 = fmul fast float %9566, 0x3FAE8EC8A0000000
  %9568 = fmul fast float %9567, %9057
  %9569 = fmul fast float %9567, %9058
  %9570 = fmul fast float %9567, %9059
  %9571 = fmul fast float %9076, %9055
  %9572 = fsub fast float 1.000000e+00, %9571
  %9573 = fmul fast float %9055, %9055
  %9574 = fsub fast float 1.000000e+00, %9573
  %9575 = fmul fast float %9574, 0x3FB45F3060000000
  %9576 = fmul fast float %9572, %9572
  %9577 = fdiv fast float 1.000000e+00, %9576
  %9578 = fmul fast float %9575, %9577
  %9579 = fmul fast float %9578, %9052
  %9580 = fmul fast float %9578, %9053
  %9581 = fmul fast float %9578, %9054
  %9582 = fadd fast float %9579, %9568
  %9583 = fadd fast float %9580, %9569
  %9584 = fadd fast float %9581, %9570
  %9585 = fsub fast float 1.000000e+00, %9562
  %9586 = fsub fast float 1.000000e+00, %9563
  %9587 = fsub fast float 1.000000e+00, %9564
  %9588 = fmul fast float %9582, %9585
  %9589 = fmul fast float %9583, %9586
  %9590 = fmul fast float %9584, %9587
  br label %9591

; <label>:9591                                    ; preds = %9552, %9503
  %9592 = phi float [ %9529, %9503 ], [ %9588, %9552 ]
  %9593 = phi float [ %9530, %9503 ], [ %9589, %9552 ]
  %9594 = phi float [ %9531, %9503 ], [ %9590, %9552 ]
  %9595 = phi float [ %9518, %9503 ], [ %9562, %9552 ]
  %9596 = phi float [ %9518, %9503 ], [ %9563, %9552 ]
  %9597 = phi float [ %9518, %9503 ], [ %9564, %9552 ]
  br i1 %9084, label %9598, label %9796, !dx.controlflow.hints !166

; <label>:9598                                    ; preds = %9591
  %9599 = extractvalue %dx.types.CBufRet.f32 %9497, 0
  %9600 = fmul fast float %9599, %9499
  %9601 = fsub fast float %9494, %9592
  %9602 = fsub fast float %9495, %9593
  %9603 = fsub fast float %9496, %9594
  %9604 = fmul fast float %9600, %9601
  %9605 = fmul fast float %9600, %9602
  %9606 = fmul fast float %9600, %9603
  %9607 = fadd fast float %9604, %9592
  %9608 = fadd fast float %9605, %9593
  %9609 = fadd fast float %9606, %9594
  %9610 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9595)  ; FMax(a,b)
  %9611 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9596)  ; FMax(a,b)
  %9612 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9597)  ; FMax(a,b)
  %9613 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9493)  ; FMax(a,b)
  %9614 = call float @dx.op.binary.f32(i32 35, float %9492, float %9502)  ; FMax(a,b)
  %9615 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9614)  ; FMax(a,b)
  %9616 = fdiv fast float %9492, %9615
  %9617 = call float @dx.op.unary.f32(i32 7, float %9616)  ; Saturate(value)
  %9618 = fdiv fast float %9502, %9615
  %9619 = call float @dx.op.unary.f32(i32 7, float %9618)  ; Saturate(value)
  %9620 = fcmp fast une float %9613, 1.000000e+00
  br i1 %9620, label %9621, label %9634, !dx.controlflow.hints !167

; <label>:9621                                    ; preds = %9598
  %9622 = call float @dx.op.unary.f32(i32 23, float %9613)  ; Log(value)
  %9623 = fmul fast float %9622, 0x3FE62E4300000000
  %9624 = fmul fast float %9494, %9623
  %9625 = fsub fast float -0.000000e+00, %9624
  %9626 = fmul fast float %9495, %9623
  %9627 = fsub fast float -0.000000e+00, %9626
  %9628 = fmul fast float %9496, %9623
  %9629 = fsub fast float -0.000000e+00, %9628
  %9630 = fsub fast float 1.000000e+00, %9613
  %9631 = fdiv fast float %9625, %9630
  %9632 = fdiv fast float %9627, %9630
  %9633 = fdiv fast float %9629, %9630
  br label %9634

; <label>:9634                                    ; preds = %9621, %9598
  %9635 = phi float [ %9631, %9621 ], [ %9494, %9598 ]
  %9636 = phi float [ %9632, %9621 ], [ %9495, %9598 ]
  %9637 = phi float [ %9633, %9621 ], [ %9496, %9598 ]
  %9638 = phi float [ %9623, %9621 ], [ 0.000000e+00, %9598 ]
  %9639 = fcmp fast une float %9610, 1.000000e+00
  br i1 %9639, label %9640, label %9647, !dx.controlflow.hints !168

; <label>:9640                                    ; preds = %9634
  %9641 = call float @dx.op.unary.f32(i32 23, float %9610)  ; Log(value)
  %9642 = fmul fast float %9641, 0x3FE62E4300000000
  %9643 = fmul fast float %9607, %9642
  %9644 = fsub fast float -0.000000e+00, %9643
  %9645 = fsub fast float 1.000000e+00, %9610
  %9646 = fdiv fast float %9644, %9645
  br label %9647

; <label>:9647                                    ; preds = %9640, %9634
  %9648 = phi float [ %9646, %9640 ], [ %9607, %9634 ]
  %9649 = phi float [ %9642, %9640 ], [ 0.000000e+00, %9634 ]
  %9650 = fcmp fast une float %9611, 1.000000e+00
  br i1 %9650, label %9651, label %9658, !dx.controlflow.hints !168

; <label>:9651                                    ; preds = %9647
  %9652 = call float @dx.op.unary.f32(i32 23, float %9611)  ; Log(value)
  %9653 = fmul fast float %9652, 0x3FE62E4300000000
  %9654 = fmul fast float %9608, %9653
  %9655 = fsub fast float -0.000000e+00, %9654
  %9656 = fsub fast float 1.000000e+00, %9611
  %9657 = fdiv fast float %9655, %9656
  br label %9658

; <label>:9658                                    ; preds = %9651, %9647
  %9659 = phi float [ %9657, %9651 ], [ %9608, %9647 ]
  %9660 = phi float [ %9653, %9651 ], [ 0.000000e+00, %9647 ]
  %9661 = fcmp fast une float %9612, 1.000000e+00
  br i1 %9661, label %9662, label %9669, !dx.controlflow.hints !168

; <label>:9662                                    ; preds = %9658
  %9663 = call float @dx.op.unary.f32(i32 23, float %9612)  ; Log(value)
  %9664 = fmul fast float %9663, 0x3FE62E4300000000
  %9665 = fmul fast float %9609, %9664
  %9666 = fsub fast float -0.000000e+00, %9665
  %9667 = fsub fast float 1.000000e+00, %9612
  %9668 = fdiv fast float %9666, %9667
  br label %9669

; <label>:9669                                    ; preds = %9662, %9658
  %9670 = phi float [ %9668, %9662 ], [ %9609, %9658 ]
  %9671 = phi float [ %9664, %9662 ], [ 0.000000e+00, %9658 ]
  %9672 = fmul fast float %9635, %9619
  %9673 = fmul fast float %9636, %9619
  %9674 = fmul fast float %9637, %9619
  %9675 = fmul fast float %9638, %9619
  %9676 = fmul fast float %9648, %9617
  %9677 = fmul fast float %9659, %9617
  %9678 = fmul fast float %9670, %9617
  %9679 = fmul fast float %9649, %9617
  %9680 = fmul fast float %9660, %9617
  %9681 = fmul fast float %9671, %9617
  %9682 = fadd fast float %9676, %9672
  %9683 = fadd fast float %9677, %9673
  %9684 = fadd fast float %9678, %9674
  %9685 = fadd fast float %9679, %9675
  %9686 = fadd fast float %9680, %9675
  %9687 = fadd fast float %9681, %9675
  %9688 = fcmp fast une float %9685, 0.000000e+00
  br i1 %9688, label %9689, label %9696, !dx.controlflow.hints !169

; <label>:9689                                    ; preds = %9669
  %9690 = fmul fast float %9685, 0x3FF7154760000000
  %9691 = call float @dx.op.unary.f32(i32 21, float %9690)  ; Exp(value)
  %9692 = fsub fast float 1.000000e+00, %9691
  %9693 = fmul fast float %9682, %9692
  %9694 = fsub fast float -0.000000e+00, %9693
  %9695 = fdiv fast float %9694, %9685
  br label %9696

; <label>:9696                                    ; preds = %9689, %9669
  %9697 = phi float [ %9691, %9689 ], [ 1.000000e+00, %9669 ]
  %9698 = phi float [ %9695, %9689 ], [ %9682, %9669 ]
  %9699 = fcmp fast une float %9686, 0.000000e+00
  br i1 %9699, label %9700, label %9707, !dx.controlflow.hints !169

; <label>:9700                                    ; preds = %9696
  %9701 = fmul fast float %9686, 0x3FF7154760000000
  %9702 = call float @dx.op.unary.f32(i32 21, float %9701)  ; Exp(value)
  %9703 = fsub fast float 1.000000e+00, %9702
  %9704 = fmul fast float %9683, %9703
  %9705 = fsub fast float -0.000000e+00, %9704
  %9706 = fdiv fast float %9705, %9686
  br label %9707

; <label>:9707                                    ; preds = %9700, %9696
  %9708 = phi float [ %9702, %9700 ], [ 1.000000e+00, %9696 ]
  %9709 = phi float [ %9706, %9700 ], [ %9683, %9696 ]
  %9710 = fcmp fast une float %9687, 0.000000e+00
  br i1 %9710, label %9711, label %9718, !dx.controlflow.hints !169

; <label>:9711                                    ; preds = %9707
  %9712 = fmul fast float %9687, 0x3FF7154760000000
  %9713 = call float @dx.op.unary.f32(i32 21, float %9712)  ; Exp(value)
  %9714 = fsub fast float 1.000000e+00, %9713
  %9715 = fmul fast float %9684, %9714
  %9716 = fsub fast float -0.000000e+00, %9715
  %9717 = fdiv fast float %9716, %9687
  br label %9718

; <label>:9718                                    ; preds = %9711, %9707
  %9719 = phi float [ %9713, %9711 ], [ 1.000000e+00, %9707 ]
  %9720 = phi float [ %9717, %9711 ], [ %9684, %9707 ]
  %9721 = fcmp fast ogt float %9617, %9619
  br i1 %9721, label %9722, label %9742

; <label>:9722                                    ; preds = %9718
  %9723 = fsub fast float 1.000000e+00, %9619
  %9724 = fmul fast float %9635, %9723
  %9725 = fmul fast float %9636, %9723
  %9726 = fmul fast float %9637, %9723
  %9727 = fmul fast float %9638, %9723
  %9728 = fcmp fast une float %9727, 0.000000e+00
  br i1 %9728, label %9729, label %9780, !dx.controlflow.hints !170

; <label>:9729                                    ; preds = %9722
  %9730 = fmul fast float %9727, 0x3FF7154760000000
  %9731 = call float @dx.op.unary.f32(i32 21, float %9730)  ; Exp(value)
  %9732 = fsub fast float 1.000000e+00, %9731
  %9733 = fmul fast float %9724, %9732
  %9734 = fsub fast float -0.000000e+00, %9733
  %9735 = fmul fast float %9725, %9732
  %9736 = fsub fast float -0.000000e+00, %9735
  %9737 = fmul fast float %9726, %9732
  %9738 = fsub fast float -0.000000e+00, %9737
  %9739 = fdiv fast float %9734, %9727
  %9740 = fdiv fast float %9736, %9727
  %9741 = fdiv fast float %9738, %9727
  br label %9780

; <label>:9742                                    ; preds = %9718
  %9743 = fsub fast float 1.000000e+00, %9617
  %9744 = fmul fast float %9648, %9743
  %9745 = fmul fast float %9659, %9743
  %9746 = fmul fast float %9670, %9743
  %9747 = fmul fast float %9649, %9743
  %9748 = fmul fast float %9660, %9743
  %9749 = fmul fast float %9671, %9743
  %9750 = fcmp fast une float %9747, 0.000000e+00
  br i1 %9750, label %9751, label %9758, !dx.controlflow.hints !169

; <label>:9751                                    ; preds = %9742
  %9752 = fmul fast float %9747, 0x3FF7154760000000
  %9753 = call float @dx.op.unary.f32(i32 21, float %9752)  ; Exp(value)
  %9754 = fsub fast float 1.000000e+00, %9753
  %9755 = fmul fast float %9744, %9754
  %9756 = fsub fast float -0.000000e+00, %9755
  %9757 = fdiv fast float %9756, %9747
  br label %9758

; <label>:9758                                    ; preds = %9751, %9742
  %9759 = phi float [ %9757, %9751 ], [ %9744, %9742 ]
  %9760 = phi float [ %9753, %9751 ], [ 1.000000e+00, %9742 ]
  %9761 = fcmp fast une float %9748, 0.000000e+00
  br i1 %9761, label %9762, label %9769, !dx.controlflow.hints !169

; <label>:9762                                    ; preds = %9758
  %9763 = fmul fast float %9748, 0x3FF7154760000000
  %9764 = call float @dx.op.unary.f32(i32 21, float %9763)  ; Exp(value)
  %9765 = fsub fast float 1.000000e+00, %9764
  %9766 = fmul fast float %9745, %9765
  %9767 = fsub fast float -0.000000e+00, %9766
  %9768 = fdiv fast float %9767, %9748
  br label %9769

; <label>:9769                                    ; preds = %9762, %9758
  %9770 = phi float [ %9768, %9762 ], [ %9745, %9758 ]
  %9771 = phi float [ %9764, %9762 ], [ 1.000000e+00, %9758 ]
  %9772 = fcmp fast une float %9749, 0.000000e+00
  br i1 %9772, label %9773, label %9780, !dx.controlflow.hints !169

; <label>:9773                                    ; preds = %9769
  %9774 = fmul fast float %9749, 0x3FF7154760000000
  %9775 = call float @dx.op.unary.f32(i32 21, float %9774)  ; Exp(value)
  %9776 = fsub fast float 1.000000e+00, %9775
  %9777 = fmul fast float %9746, %9776
  %9778 = fsub fast float -0.000000e+00, %9777
  %9779 = fdiv fast float %9778, %9749
  br label %9780

; <label>:9780                                    ; preds = %9773, %9769, %9729, %9722
  %9781 = phi float [ %9779, %9773 ], [ %9741, %9729 ], [ %9726, %9722 ], [ %9746, %9769 ]
  %9782 = phi float [ %9770, %9773 ], [ %9740, %9729 ], [ %9725, %9722 ], [ %9770, %9769 ]
  %9783 = phi float [ %9759, %9773 ], [ %9739, %9729 ], [ %9724, %9722 ], [ %9759, %9769 ]
  %9784 = phi float [ %9775, %9773 ], [ %9731, %9729 ], [ 1.000000e+00, %9722 ], [ 1.000000e+00, %9769 ]
  %9785 = phi float [ %9771, %9773 ], [ %9731, %9729 ], [ 1.000000e+00, %9722 ], [ %9771, %9769 ]
  %9786 = phi float [ %9760, %9773 ], [ %9731, %9729 ], [ 1.000000e+00, %9722 ], [ %9760, %9769 ]
  %9787 = fmul fast float %9786, %9698
  %9788 = fmul fast float %9785, %9709
  %9789 = fmul fast float %9784, %9720
  %9790 = fadd fast float %9787, %9783
  %9791 = fadd fast float %9788, %9782
  %9792 = fadd fast float %9789, %9781
  %9793 = fmul fast float %9786, %9697
  %9794 = fmul fast float %9785, %9708
  %9795 = fmul fast float %9784, %9719
  br label %9796

; <label>:9796                                    ; preds = %9780, %9591
  %9797 = phi float [ %9795, %9780 ], [ %9597, %9591 ]
  %9798 = phi float [ %9794, %9780 ], [ %9596, %9591 ]
  %9799 = phi float [ %9793, %9780 ], [ %9595, %9591 ]
  %9800 = phi float [ %9792, %9780 ], [ %9594, %9591 ]
  %9801 = phi float [ %9791, %9780 ], [ %9593, %9591 ]
  %9802 = phi float [ %9790, %9780 ], [ %9592, %9591 ]
  %9803 = fmul fast float %9802, %8756
  %9804 = fmul fast float %9801, %8757
  %9805 = fmul fast float %9800, %8758
  %9806 = fmul fast float %9799, %9039
  %9807 = call float @dx.op.dot3.f32(i32 55, float %9799, float %9798, float %9797, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9808 = call float @dx.op.dot3.f32(i32 55, float %9803, float %9804, float %9805, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9809 = select i1 %296, float %9807, float %9799
  %9810 = select i1 %296, float %9807, float %9798
  %9811 = select i1 %296, float 1.000000e+00, float %9797
  %9812 = select i1 %296, float %9808, float %9803
  %9813 = select i1 %296, float 0.000000e+00, float %9804
  %9814 = select i1 %296, float 0.000000e+00, float %9805
  %9815 = fmul fast float %9809, %9033
  %9816 = fmul fast float %9810, %9034
  %9817 = fmul fast float %9811, %9035
  %9818 = fadd fast float %9815, %9812
  %9819 = fadd fast float %9816, %9813
  %9820 = fadd fast float %9814, %9817
  %9821 = fmul fast float %9809, %9036
  %9822 = fmul fast float %9810, %9037
  %9823 = fmul fast float %9811, %9038
  %9824 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9825 = extractvalue %dx.types.CBufRet.i32 %9824, 0
  %9826 = icmp eq i32 %9825, 0
  br i1 %9826, label %10194, label %9827, !dx.controlflow.hints !171

; <label>:9827                                    ; preds = %9796
  %9828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9829 = extractvalue %dx.types.CBufRet.f32 %9828, 2
  %9830 = extractvalue %dx.types.CBufRet.f32 %9828, 3
  %9831 = fmul fast float %9829, %111
  %9832 = fmul fast float %9830, %112
  %9833 = fmul fast float %9831, 2.000000e+00
  %9834 = fmul fast float %9832, 2.000000e+00
  %9835 = fsub fast float 1.000000e+00, %9833
  %9836 = fsub fast float 1.000000e+00, %9834
  %9837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9838 = extractvalue %dx.types.CBufRet.f32 %9837, 0
  %9839 = extractvalue %dx.types.CBufRet.f32 %9837, 1
  %9840 = extractvalue %dx.types.CBufRet.f32 %9837, 2
  %9841 = fmul fast float %9835, %9838
  %9842 = fmul fast float %9835, %9839
  %9843 = fmul fast float %9835, %9840
  %9844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9845 = extractvalue %dx.types.CBufRet.f32 %9844, 0
  %9846 = extractvalue %dx.types.CBufRet.f32 %9844, 1
  %9847 = extractvalue %dx.types.CBufRet.f32 %9844, 2
  %9848 = fmul fast float %9836, %9845
  %9849 = fmul fast float %9836, %9846
  %9850 = fmul fast float %9836, %9847
  %9851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9852 = extractvalue %dx.types.CBufRet.f32 %9851, 0
  %9853 = extractvalue %dx.types.CBufRet.f32 %9851, 1
  %9854 = extractvalue %dx.types.CBufRet.f32 %9851, 2
  %9855 = fadd fast float %9848, %9852
  %9856 = fadd fast float %9855, %9841
  %9857 = fadd fast float %9849, %9853
  %9858 = fadd fast float %9857, %9842
  %9859 = fadd fast float %9850, %9854
  %9860 = fadd fast float %9859, %9843
  %9861 = fmul fast float %9856, %9032
  %9862 = fmul fast float %9858, %9032
  %9863 = fmul fast float %9860, %9032
  %9864 = fmul fast float %9861, %9861
  %9865 = fmul fast float %9862, %9862
  %9866 = fadd fast float %9864, %9865
  %9867 = fmul fast float %9863, %9863
  %9868 = fadd fast float %9866, %9867
  %9869 = call float @dx.op.unary.f32(i32 24, float %9868)  ; Sqrt(value)
  %9870 = extractvalue %dx.types.CBufRet.f32 %8759, 0
  %9871 = fsub fast float %9869, %9870
  %9872 = extractvalue %dx.types.CBufRet.f32 %8759, 2
  %9873 = fmul fast float %9871, %9872
  %9874 = call float @dx.op.unary.f32(i32 7, float %9873)  ; Saturate(value)
  %9875 = fadd fast float %9874, -5.000000e-01
  %9876 = fmul fast float %9875, 2.000000e+00
  %9877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9878 = extractvalue %dx.types.CBufRet.f32 %9877, 2
  %9879 = call float @dx.op.binary.f32(i32 36, float %9878, float %9876)  ; FMin(a,b)
  %9880 = fsub fast float -0.000000e+00, %9878
  %9881 = fcmp fast ogt float %9879, %9880
  br i1 %9881, label %9882, label %10194, !dx.controlflow.hints !172

; <label>:9882                                    ; preds = %9827
  %9883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9884 = extractvalue %dx.types.CBufRet.f32 %9883, 3
  %9885 = fcmp fast ogt float %9884, 0.000000e+00
  br i1 %9885, label %9886, label %9961, !dx.controlflow.hints !173

; <label>:9886                                    ; preds = %9882
  %9887 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9888 = extractvalue %dx.types.Dimensions %9887, 0
  %9889 = sitofp i32 %9888 to float
  %9890 = extractvalue %dx.types.Dimensions %9887, 1
  %9891 = sitofp i32 %9890 to float
  %9892 = fmul fast float %9831, %9889
  %9893 = fmul fast float %9832, %9891
  %9894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9895 = extractvalue %dx.types.CBufRet.f32 %9894, 1
  %9896 = fsub fast float -0.000000e+00, %9895
  %9897 = fptoui float %9896 to i32
  %9898 = fptoui float %9892 to i32
  %9899 = fptoui float %9893 to i32
  %9900 = and i32 %9897, 31
  %9901 = lshr i32 %9898, %9900
  %9902 = lshr i32 %9899, %9900
  %9903 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9897, i32 %9901, i32 %9902, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9904 = extractvalue %dx.types.ResRet.f32 %9903, 0
  %9905 = fcmp fast olt float %9904, -1.000000e+00
  %9906 = fcmp fast ogt float %9904, -1.000000e+00
  %9907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9908 = extractvalue %dx.types.CBufRet.f32 %9907, 1
  %9909 = select i1 %9906, float %9908, float 1.000000e+00
  %9910 = fadd fast float %9904, 1.000000e+00
  %9911 = fmul fast float %9909, %9910
  %9912 = call float @dx.op.unary.f32(i32 6, float %9911)  ; FAbs(value)
  %9913 = extractvalue %dx.types.CBufRet.f32 %9907, 3
  %9914 = fcmp fast oge float %9912, %9913
  %9915 = select i1 %9914, float 0x4197782600000000, float %9912
  %9916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9917 = extractvalue %dx.types.CBufRet.f32 %9916, 0
  %9918 = extractvalue %dx.types.CBufRet.f32 %9916, 1
  %9919 = extractvalue %dx.types.CBufRet.f32 %9916, 2
  %9920 = select i1 %9905, float %9917, float %9838
  %9921 = select i1 %9905, float %9918, float %9839
  %9922 = select i1 %9905, float %9919, float %9840
  %9923 = fmul fast float %9920, %9835
  %9924 = fmul fast float %9921, %9835
  %9925 = fmul fast float %9922, %9835
  %9926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9927 = extractvalue %dx.types.CBufRet.f32 %9926, 0
  %9928 = extractvalue %dx.types.CBufRet.f32 %9926, 1
  %9929 = extractvalue %dx.types.CBufRet.f32 %9926, 2
  %9930 = select i1 %9905, float %9927, float %9845
  %9931 = select i1 %9905, float %9928, float %9846
  %9932 = select i1 %9905, float %9929, float %9847
  %9933 = fmul fast float %9930, %9836
  %9934 = fmul fast float %9931, %9836
  %9935 = fmul fast float %9932, %9836
  %9936 = fadd fast float %9933, %9923
  %9937 = fadd fast float %9934, %9924
  %9938 = fadd fast float %9935, %9925
  %9939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9940 = extractvalue %dx.types.CBufRet.f32 %9939, 0
  %9941 = extractvalue %dx.types.CBufRet.f32 %9939, 1
  %9942 = extractvalue %dx.types.CBufRet.f32 %9939, 2
  %9943 = select i1 %9905, float %9940, float %9852
  %9944 = select i1 %9905, float %9941, float %9853
  %9945 = select i1 %9905, float %9942, float %9854
  %9946 = fadd fast float %9936, %9943
  %9947 = fadd fast float %9937, %9944
  %9948 = fadd fast float %9938, %9945
  %9949 = fmul fast float %9946, %9915
  %9950 = fmul fast float %9947, %9915
  %9951 = fmul fast float %9948, %9915
  %9952 = fmul fast float %9949, %9949
  %9953 = fmul fast float %9950, %9950
  %9954 = fadd fast float %9952, %9953
  %9955 = fmul fast float %9951, %9951
  %9956 = fadd fast float %9954, %9955
  %9957 = call float @dx.op.unary.f32(i32 24, float %9956)  ; Sqrt(value)
  %9958 = fsub fast float %9957, %9870
  %9959 = fmul fast float %9958, %9872
  %9960 = call float @dx.op.unary.f32(i32 7, float %9959)  ; Saturate(value)
  br label %9961

; <label>:9961                                    ; preds = %9886, %9882
  %9962 = phi float [ %9960, %9886 ], [ 1.000000e+00, %9882 ]
  %9963 = fmul fast float %9879, 5.000000e-01
  %9964 = fadd fast float %9963, 5.000000e-01
  %9965 = call float @dx.op.unary.f32(i32 22, float %9964)  ; Frc(value)
  %9966 = call float @dx.op.unary.f32(i32 27, float %9965)  ; Round_ni(value)
  %9967 = call float @dx.op.unary.f32(i32 22, float %9965)  ; Frc(value)
  %9968 = fmul fast float %9967, 2.000000e+00
  %9969 = fadd fast float %9968, -1.000000e+00
  %9970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %9831, float %9832, float %9966, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9971 = extractvalue %dx.types.ResRet.f32 %9970, 0
  %9972 = extractvalue %dx.types.ResRet.f32 %9970, 1
  %9973 = extractvalue %dx.types.ResRet.f32 %9970, 2
  %9974 = extractvalue %dx.types.ResRet.f32 %9970, 3
  %9975 = fadd fast float %9971, -5.000000e-01
  %9976 = fadd fast float %9973, -5.000000e-01
  %9977 = fmul fast float %9975, 0xBFD5555560000000
  %9978 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9976, float %9977)  ; FMad(a,b,c)
  %9979 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9972, float 0.000000e+00)  ; FMad(a,b,c)
  %9980 = fadd fast float %9979, %9974
  %9981 = fmul fast float %9975, -7.500000e-01
  %9982 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9976, float %9981)  ; FMad(a,b,c)
  %9983 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9972, float 0.000000e+00)  ; FMad(a,b,c)
  %9984 = fadd fast float %9983, %9974
  %9985 = call float @dx.op.binary.f32(i32 35, float %9978, float -1.000000e+00)  ; FMax(a,b)
  %9986 = call float @dx.op.binary.f32(i32 35, float %9980, float -1.000000e+00)  ; FMax(a,b)
  %9987 = call float @dx.op.binary.f32(i32 35, float %9982, float -1.000000e+00)  ; FMax(a,b)
  %9988 = call float @dx.op.binary.f32(i32 35, float %9984, float -1.000000e+00)  ; FMax(a,b)
  %9989 = call float @dx.op.binary.f32(i32 36, float %9985, float 1.000000e+00)  ; FMin(a,b)
  %9990 = call float @dx.op.binary.f32(i32 36, float %9986, float 1.000000e+00)  ; FMin(a,b)
  %9991 = call float @dx.op.binary.f32(i32 36, float %9987, float 1.000000e+00)  ; FMin(a,b)
  %9992 = call float @dx.op.binary.f32(i32 36, float %9988, float 1.000000e+00)  ; FMin(a,b)
  %9993 = fcmp fast olt float %9989, 0x3FEFFF8020000000
  br i1 %9993, label %9994, label %10109, !dx.controlflow.hints !174

; <label>:9994                                    ; preds = %9961
  %9995 = extractvalue %dx.types.CBufRet.f32 %9877, 3
  %9996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9997 = extractvalue %dx.types.CBufRet.f32 %9996, 0
  %9998 = extractvalue %dx.types.CBufRet.f32 %9996, 1
  %9999 = extractvalue %dx.types.CBufRet.f32 %9996, 2
  %10000 = extractvalue %dx.types.CBufRet.f32 %9996, 3
  %10001 = fsub fast float %9997, %9989
  %10002 = fsub fast float %9998, %9990
  %10003 = fsub fast float %9999, %9991
  %10004 = fsub fast float %10000, %9992
  %10005 = fmul fast float %10001, %9995
  %10006 = fmul fast float %10002, %9995
  %10007 = fmul fast float %10003, %9995
  %10008 = fmul fast float %10004, %9995
  %10009 = fadd fast float %10005, %9989
  %10010 = fadd fast float %10006, %9990
  %10011 = fsub fast float -0.000000e+00, %10010
  %10012 = fadd fast float %10007, %9991
  %10013 = fadd fast float %10008, %9992
  %10014 = fmul fast float %10009, %10009
  %10015 = fsub fast float %10010, %10014
  %10016 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %10015)  ; FMax(a,b)
  %10017 = fdiv fast float 1.000000e+00, %10016
  %10018 = fmul fast float %10010, %10009
  %10019 = fsub fast float %10012, %10018
  %10020 = fsub fast float %9969, %10009
  %10021 = fmul fast float %9969, %9969
  %10022 = fsub fast float %10021, %10010
  %10023 = fmul fast float %10020, %10017
  %10024 = fmul fast float %10023, %10019
  %10025 = fsub fast float %10022, %10024
  %10026 = fmul fast float %10010, %10010
  %10027 = fsub fast float %10013, %10026
  %10028 = fmul fast float %10019, %10019
  %10029 = fmul fast float %10028, %10017
  %10030 = fsub fast float %10027, %10029
  %10031 = fdiv fast float %10025, %10030
  %10032 = fmul fast float %10019, %10031
  %10033 = fsub fast float %10020, %10032
  %10034 = fmul fast float %10033, %10017
  %10035 = fmul fast float %10034, %10009
  %10036 = fsub fast float 1.000000e+00, %10035
  %10037 = fmul fast float %10010, %10031
  %10038 = fsub fast float %10036, %10037
  %10039 = fmul fast float %10034, %10034
  %10040 = fmul fast float %10031, 4.000000e+00
  %10041 = fmul fast float %10040, %10038
  %10042 = fsub fast float %10039, %10041
  %10043 = call float @dx.op.unary.f32(i32 24, float %10042)  ; Sqrt(value)
  %10044 = fcmp fast oge float %10034, 0.000000e+00
  %10045 = fsub fast float -0.000000e+00, %10043
  %10046 = select i1 %10044, float %10045, float %10043
  %10047 = fsub fast float %10046, %10034
  %10048 = fdiv fast float %10047, %10031
  %10049 = fdiv fast float %10038, %10047
  %10050 = fmul fast float %10048, 5.000000e-01
  %10051 = fmul fast float %10049, 2.000000e+00
  %10052 = select i1 %10044, float %10050, float %10051
  %10053 = select i1 %10044, float %10051, float %10050
  %10054 = call float @dx.op.binary.f32(i32 35, float %10052, float %10053)  ; FMax(a,b)
  %10055 = call float @dx.op.binary.f32(i32 36, float %10052, float %10053)  ; FMin(a,b)
  %10056 = fcmp fast ogt float %9969, %10055
  br i1 %10056, label %10057, label %10067

; <label>:10057                                   ; preds = %9994
  %10058 = fsub fast float %9969, %10055
  %10059 = fsub fast float %10054, %10055
  %10060 = fmul fast float %10058, %10059
  %10061 = fmul fast float %10054, %9969
  %10062 = fadd fast float %10054, %9969
  %10063 = fmul fast float %10062, %10009
  %10064 = fadd fast float %10061, %10010
  %10065 = fsub fast float %10064, %10063
  %10066 = fdiv fast float %10065, %10060
  br label %10067

; <label>:10067                                   ; preds = %10057, %9994
  %10068 = phi float [ %10066, %10057 ], [ 0.000000e+00, %9994 ]
  %10069 = fcmp fast ogt float %9969, %10054
  %10070 = fsub fast float %9969, %10054
  br i1 %10069, label %10071, label %10081

; <label>:10071                                   ; preds = %10067
  %10072 = fsub fast float %10054, %10055
  %10073 = fmul fast float %10072, %10070
  %10074 = fmul fast float %10055, %9969
  %10075 = fadd fast float %10055, %9969
  %10076 = fmul fast float %10075, %10009
  %10077 = fsub fast float %10011, %10074
  %10078 = fadd fast float %10077, %10076
  %10079 = fdiv fast float %10078, %10073
  %10080 = fadd fast float %10079, %10068
  br label %10081

; <label>:10081                                   ; preds = %10071, %10067
  %10082 = phi float [ %10080, %10071 ], [ %10068, %10067 ]
  %10083 = fsub fast float %9969, %10055
  %10084 = fmul fast float %10083, %10070
  %10085 = fmul fast float %10055, %10054
  %10086 = fadd fast float %10055, %10054
  %10087 = fmul fast float %10086, %10009
  %10088 = fadd fast float %10085, %10010
  %10089 = fsub fast float %10088, %10087
  %10090 = fdiv fast float %10089, %10084
  %10091 = call float @dx.op.unary.f32(i32 7, float %10082)  ; Saturate(value)
  %10092 = fcmp fast oeq float %8760, 0.000000e+00
  %10093 = extractvalue %dx.types.CBufRet.f32 %9877, 0
  %10094 = fcmp fast oeq float %10093, 0.000000e+00
  %10095 = or i1 %10092, %10094
  %10096 = fmul fast float %10093, 2.000000e+00
  %10097 = fadd fast float %9878, %9879
  %10098 = fdiv fast float %10097, %10096
  %10099 = call float @dx.op.unary.f32(i32 7, float %10098)  ; Saturate(value)
  %10100 = fmul fast float %10099, 2.000000e+00
  %10101 = fsub fast float 3.000000e+00, %10100
  %10102 = fmul fast float %10099, %10099
  %10103 = fmul fast float %10102, %10101
  %10104 = select i1 %10095, float 1.000000e+00, float %10103
  %10105 = fmul fast float %10090, %8760
  %10106 = fadd fast float %10091, %10105
  %10107 = call float @dx.op.unary.f32(i32 7, float %10106)  ; Saturate(value)
  %10108 = fmul fast float %10104, %10107
  br label %10109

; <label>:10109                                   ; preds = %10081, %9961
  %10110 = phi float [ %10108, %10081 ], [ 0.000000e+00, %9961 ]
  %10111 = fsub fast float 1.000000e+00, %10110
  %10112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %9831, float %9832, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10113 = extractvalue %dx.types.ResRet.f32 %10112, 0
  %10114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10115 = extractvalue %dx.types.CBufRet.i32 %10114, 2
  %10116 = icmp eq i32 %10115, 0
  br i1 %10116, label %10122, label %10117

; <label>:10117                                   ; preds = %10109
  %10118 = call float @dx.op.unary.f32(i32 7, float %10110)  ; Saturate(value)
  %10119 = fadd fast float %10113, -1.000000e+00
  %10120 = fmul fast float %10118, %10119
  %10121 = fadd fast float %10120, 1.000000e+00
  br label %10122

; <label>:10122                                   ; preds = %10117, %10109
  %10123 = phi float [ %10121, %10117 ], [ %10111, %10109 ]
  br i1 %9885, label %10124, label %10142

; <label>:10124                                   ; preds = %10122
  %10125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10126 = extractvalue %dx.types.CBufRet.f32 %10125, 1
  %10127 = fsub fast float %9962, %10126
  %10128 = call float @dx.op.unary.f32(i32 7, float %10127)  ; Saturate(value)
  %10129 = fsub fast float %9962, %9884
  %10130 = call float @dx.op.unary.f32(i32 7, float %10129)  ; Saturate(value)
  %10131 = fsub fast float %10128, %10130
  %10132 = fsub fast float %9964, %10130
  %10133 = fdiv fast float %10132, %10131
  %10134 = call float @dx.op.unary.f32(i32 7, float %10133)  ; Saturate(value)
  %10135 = fmul fast float %10134, 2.000000e+00
  %10136 = fsub fast float 3.000000e+00, %10135
  %10137 = fsub fast float %10113, %10123
  %10138 = fmul fast float %10134, %10134
  %10139 = fmul fast float %10138, %10137
  %10140 = fmul fast float %10139, %10136
  %10141 = fadd fast float %10140, %10123
  br label %10142

; <label>:10142                                   ; preds = %10124, %10122
  %10143 = phi float [ %10141, %10124 ], [ %10123, %10122 ]
  %10144 = call float @dx.op.binary.f32(i32 35, float %10113, float %10143)  ; FMax(a,b)
  %10145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10146 = extractvalue %dx.types.CBufRet.i32 %10145, 2
  %10147 = and i32 %10146, 1
  %10148 = icmp eq i32 %10147, 0
  %10149 = fcmp fast une float %10144, 1.000000e+00
  %10150 = and i1 %10149, %10148
  br i1 %10150, label %10151, label %10170

; <label>:10151                                   ; preds = %10142
  %10152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %9831, float %9832, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10153 = extractvalue %dx.types.ResRet.f32 %10152, 0
  %10154 = extractvalue %dx.types.ResRet.f32 %10152, 1
  %10155 = extractvalue %dx.types.ResRet.f32 %10152, 2
  %10156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10157 = extractvalue %dx.types.CBufRet.f32 %10156, 1
  %10158 = fmul fast float %10157, %10153
  %10159 = fmul fast float %10157, %10154
  %10160 = fmul fast float %10157, %10155
  %10161 = fcmp fast ogt float %10113, 0x3FEFFF2E40000000
  %10162 = fsub fast float 1.000000e+00, %10144
  %10163 = fsub fast float 1.000000e+00, %10113
  %10164 = fdiv fast float %10162, %10163
  %10165 = call float @dx.op.unary.f32(i32 7, float %10164)  ; Saturate(value)
  %10166 = select i1 %10161, float 0.000000e+00, float %10165
  %10167 = fmul fast float %10158, %10166
  %10168 = fmul fast float %10159, %10166
  %10169 = fmul fast float %10160, %10166
  br label %10170

; <label>:10170                                   ; preds = %10151, %10142
  %10171 = phi float [ 0.000000e+00, %10142 ], [ %10167, %10151 ]
  %10172 = phi float [ 0.000000e+00, %10142 ], [ %10168, %10151 ]
  %10173 = phi float [ 0.000000e+00, %10142 ], [ %10169, %10151 ]
  %10174 = fmul fast float %10171, %8756
  %10175 = fmul fast float %10172, %8757
  %10176 = fmul fast float %10173, %8758
  %10177 = fmul fast float %10144, %9806
  %10178 = call float @dx.op.dot3.f32(i32 55, float %10144, float %10144, float %10144, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10179 = call float @dx.op.dot3.f32(i32 55, float %10174, float %10175, float %10176, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10180 = select i1 %296, float %10178, float %10144
  %10181 = select i1 %296, float 1.000000e+00, float %10144
  %10182 = select i1 %296, float %10179, float %10174
  %10183 = select i1 %296, float 0.000000e+00, float %10175
  %10184 = select i1 %296, float 0.000000e+00, float %10176
  %10185 = fmul fast float %10180, %9818
  %10186 = fmul fast float %10180, %9819
  %10187 = fmul fast float %10181, %9820
  %10188 = fadd fast float %10185, %10182
  %10189 = fadd fast float %10186, %10183
  %10190 = fadd fast float %10184, %10187
  %10191 = fmul fast float %10180, %9821
  %10192 = fmul fast float %10180, %9822
  %10193 = fmul fast float %10181, %9823
  br label %10194

; <label>:10194                                   ; preds = %10170, %9827, %9796, %9028
  %10195 = phi float [ %9033, %9028 ], [ %9818, %9796 ], [ %10188, %10170 ], [ %9818, %9827 ]
  %10196 = phi float [ %9034, %9028 ], [ %9819, %9796 ], [ %10189, %10170 ], [ %9819, %9827 ]
  %10197 = phi float [ %9035, %9028 ], [ %9820, %9796 ], [ %10190, %10170 ], [ %9820, %9827 ]
  %10198 = phi float [ %9036, %9028 ], [ %9821, %9796 ], [ %10191, %10170 ], [ %9821, %9827 ]
  %10199 = phi float [ %9037, %9028 ], [ %9822, %9796 ], [ %10192, %10170 ], [ %9822, %9827 ]
  %10200 = phi float [ %9038, %9028 ], [ %9823, %9796 ], [ %10193, %10170 ], [ %9823, %9827 ]
  %10201 = phi float [ %9039, %9028 ], [ %9806, %9796 ], [ %10177, %10170 ], [ %9806, %9827 ]
  %10202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10203 = extractvalue %dx.types.CBufRet.f32 %10202, 2
  %10204 = extractvalue %dx.types.CBufRet.f32 %10202, 3
  %10205 = fmul fast float %10203, %111
  %10206 = fmul fast float %10204, %112
  %10207 = call float @dx.op.unary.f32(i32 7, float %10205)  ; Saturate(value)
  %10208 = call float @dx.op.unary.f32(i32 7, float %10206)  ; Saturate(value)
  %10209 = select i1 %8770, i32 2, i32 0
  %10210 = or i32 %10209, 1
  %10211 = uitofp i32 %10210 to float
  %10212 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %10207, float %10208, float %10211, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10213 = extractvalue %dx.types.ResRet.f32 %10212, 0
  %10214 = extractvalue %dx.types.ResRet.f32 %10212, 1
  %10215 = extractvalue %dx.types.ResRet.f32 %10212, 2
  %10216 = extractvalue %dx.types.ResRet.f32 %10212, 3
  %10217 = add nuw nsw i32 %10209, 2
  %10218 = uitofp i32 %10217 to float
  %10219 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %10207, float %10208, float %10218, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10220 = extractvalue %dx.types.ResRet.f32 %10219, 0
  %10221 = extractvalue %dx.types.ResRet.f32 %10219, 1
  %10222 = extractvalue %dx.types.ResRet.f32 %10219, 2
  %10223 = extractvalue %dx.types.ResRet.f32 %10219, 3
  %10224 = call float @dx.op.binary.f32(i32 35, float %10214, float %10215)  ; FMax(a,b)
  %10225 = call float @dx.op.binary.f32(i32 35, float %10213, float %10224)  ; FMax(a,b)
  %10226 = call float @dx.op.binary.f32(i32 35, float %10225, float %10216)  ; FMax(a,b)
  %10227 = call float @dx.op.binary.f32(i32 36, float %10221, float %10222)  ; FMin(a,b)
  %10228 = call float @dx.op.binary.f32(i32 36, float %10220, float %10227)  ; FMin(a,b)
  %10229 = call float @dx.op.binary.f32(i32 36, float %10228, float %10223)  ; FMin(a,b)
  %10230 = fmul fast float %10226, 2.550000e+02
  %10231 = fadd fast float %10230, 0x3F70101020000000
  %10232 = fptoui float %10231 to i32
  %10233 = fmul fast float %10229, 2.550000e+02
  %10234 = fadd fast float %10233, 0x3F70101020000000
  %10235 = fptoui float %10234 to i32
  %10236 = icmp ult i32 %10232, %10235
  br i1 %10236, label %10237, label %10406

; <label>:10237                                   ; preds = %10194
  %10238 = fcmp fast ogt float %97, 9.843750e-01
  %10239 = fadd fast float %9032, -4.000000e+00
  %10240 = select i1 %10238, float -4.000000e+00, float %10239
  %10241 = call float @dx.op.binary.f32(i32 35, float %10240, float 0.000000e+00)  ; FMax(a,b)
  %10242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10243 = extractvalue %dx.types.CBufRet.f32 %10242, 0
  %10244 = fadd fast float %10243, %10241
  %10245 = extractvalue %dx.types.CBufRet.f32 %10242, 2
  %10246 = fmul fast float %10244, %10245
  %10247 = call float @dx.op.unary.f32(i32 23, float %10246)  ; Log(value)
  %10248 = extractvalue %dx.types.CBufRet.f32 %10242, 3
  %10249 = fmul fast float %10248, %10247
  %10250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10251 = extractvalue %dx.types.CBufRet.f32 %10250, 2
  %10252 = fmul fast float %10249, %10251
  %10253 = call float @dx.op.unary.f32(i32 7, float %10252)  ; Saturate(value)
  %10254 = uitofp i32 %10232 to float
  %10255 = uitofp i32 %10235 to float
  %10256 = fadd fast float %10254, 5.000000e-01
  %10257 = fadd fast float %10255, 5.000000e-01
  %10258 = fmul fast float %10251, %10256
  %10259 = fmul fast float %10251, %10257
  %10260 = fadd fast float %10258, 0x3F0FFB4800000000
  %10261 = fadd fast float %10259, 0xBF0FFB4800000000
  %10262 = call float @dx.op.binary.f32(i32 35, float %10253, float %10260)  ; FMax(a,b)
  %10263 = call float @dx.op.binary.f32(i32 36, float %10262, float %10261)  ; FMin(a,b)
  %10264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10265 = extractvalue %dx.types.CBufRet.f32 %10264, 1
  %10266 = extractvalue %dx.types.CBufRet.f32 %10264, 2
  %10267 = extractvalue %dx.types.CBufRet.f32 %10264, 0
  %10268 = select i1 %8770, float %10267, float 0.000000e+00
  %10269 = fmul fast float %10265, %10263
  %10270 = fadd fast float %10268, %10269
  %10271 = fadd fast float %10268, %10266
  %10272 = fsub fast float %10265, %10266
  %10273 = fadd fast float %10272, %10268
  %10274 = call float @dx.op.binary.f32(i32 35, float %10270, float %10271)  ; FMax(a,b)
  %10275 = call float @dx.op.binary.f32(i32 36, float %10274, float %10273)  ; FMin(a,b)
  %10276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %10207, float %10208, float %10275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10277 = extractvalue %dx.types.ResRet.f32 %10276, 0
  %10278 = extractvalue %dx.types.ResRet.f32 %10276, 1
  %10279 = extractvalue %dx.types.ResRet.f32 %10276, 2
  %10280 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10281 = extractvalue %dx.types.CBufRet.i32 %10280, 0
  %10282 = extractvalue %dx.types.CBufRet.i32 %10280, 1
  %10283 = uitofp i32 %10281 to float
  %10284 = uitofp i32 %10282 to float
  %10285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10286 = extractvalue %dx.types.CBufRet.f32 %10285, 0
  %10287 = extractvalue %dx.types.CBufRet.f32 %10285, 1
  %10288 = fmul fast float %10283, %10207
  %10289 = fmul fast float %10284, %10208
  %10290 = fadd fast float %10288, -5.000000e-01
  %10291 = fadd fast float %10289, -5.000000e-01
  %10292 = call float @dx.op.unary.f32(i32 22, float %10290)  ; Frc(value)
  %10293 = call float @dx.op.unary.f32(i32 22, float %10291)  ; Frc(value)
  %10294 = fmul fast float %10292, %10292
  %10295 = fmul fast float %10294, %10292
  %10296 = fsub fast float 3.000000e+00, %10292
  %10297 = fmul fast float %10294, %10296
  %10298 = fmul fast float %10292, 3.000000e+00
  %10299 = fmul fast float %10295, 3.000000e+00
  %10300 = fmul fast float %10294, 6.000000e+00
  %10301 = fsub fast float %10299, %10300
  %10302 = fadd fast float %10301, 4.000000e+00
  %10303 = fmul fast float %10302, 0x3FC5555560000000
  %10304 = fmul fast float %10295, -3.000000e+00
  %10305 = fadd fast float %10294, %10292
  %10306 = fmul fast float %10305, 3.000000e+00
  %10307 = fadd fast float %10304, 1.000000e+00
  %10308 = fadd fast float %10307, %10306
  %10309 = fmul fast float %10295, 0x3FC5555560000000
  %10310 = fmul fast float %10293, %10293
  %10311 = fmul fast float %10310, %10293
  %10312 = fsub fast float 3.000000e+00, %10293
  %10313 = fmul fast float %10310, %10312
  %10314 = fmul fast float %10293, 3.000000e+00
  %10315 = fmul fast float %10311, 3.000000e+00
  %10316 = fmul fast float %10310, 6.000000e+00
  %10317 = fsub fast float %10315, %10316
  %10318 = fadd fast float %10317, 4.000000e+00
  %10319 = fmul fast float %10318, 0x3FC5555560000000
  %10320 = fmul fast float %10311, -3.000000e+00
  %10321 = fadd fast float %10310, %10293
  %10322 = fmul fast float %10321, 3.000000e+00
  %10323 = fadd fast float %10320, 1.000000e+00
  %10324 = fadd fast float %10323, %10322
  %10325 = fmul fast float %10311, 0x3FC5555560000000
  %10326 = fadd fast float %10292, 1.000000e+00
  %10327 = fsub fast float 1.000000e+00, %10298
  %10328 = fadd fast float %10327, %10297
  %10329 = fadd fast float %10328, %10302
  %10330 = fmul fast float %10329, 0x3FC5555560000000
  %10331 = fdiv fast float %10303, %10330
  %10332 = fsub fast float %10326, %10331
  %10333 = fsub fast float 1.000000e+00, %10292
  %10334 = fadd fast float %10308, %10295
  %10335 = fmul fast float %10334, 0x3FC5555560000000
  %10336 = fdiv fast float %10309, %10335
  %10337 = fadd fast float %10333, %10336
  %10338 = fadd fast float %10293, 1.000000e+00
  %10339 = fsub fast float 1.000000e+00, %10314
  %10340 = fadd fast float %10339, %10313
  %10341 = fadd fast float %10340, %10318
  %10342 = fmul fast float %10341, 0x3FC5555560000000
  %10343 = fdiv fast float %10319, %10342
  %10344 = fsub fast float %10338, %10343
  %10345 = fsub fast float 1.000000e+00, %10293
  %10346 = fadd fast float %10324, %10311
  %10347 = fmul fast float %10346, 0x3FC5555560000000
  %10348 = fdiv fast float %10325, %10347
  %10349 = fadd fast float %10348, %10345
  %10350 = fmul fast float %10332, %10286
  %10351 = fsub fast float %10207, %10350
  %10352 = fmul fast float %10337, %10286
  %10353 = fadd fast float %10352, %10207
  %10354 = fmul fast float %10349, %10287
  %10355 = fadd fast float %10354, %10208
  %10356 = fmul fast float %10344, %10287
  %10357 = fsub fast float %10208, %10356
  %10358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10351, float %10357, float %10275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10359 = extractvalue %dx.types.ResRet.f32 %10358, 0
  %10360 = extractvalue %dx.types.ResRet.f32 %10358, 1
  %10361 = extractvalue %dx.types.ResRet.f32 %10358, 2
  %10362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10353, float %10357, float %10275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10363 = extractvalue %dx.types.ResRet.f32 %10362, 0
  %10364 = extractvalue %dx.types.ResRet.f32 %10362, 1
  %10365 = extractvalue %dx.types.ResRet.f32 %10362, 2
  %10366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10351, float %10355, float %10275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10367 = extractvalue %dx.types.ResRet.f32 %10366, 0
  %10368 = extractvalue %dx.types.ResRet.f32 %10366, 1
  %10369 = extractvalue %dx.types.ResRet.f32 %10366, 2
  %10370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10353, float %10355, float %10275, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10371 = extractvalue %dx.types.ResRet.f32 %10370, 0
  %10372 = extractvalue %dx.types.ResRet.f32 %10370, 1
  %10373 = extractvalue %dx.types.ResRet.f32 %10370, 2
  %10374 = fsub fast float %10367, %10359
  %10375 = fsub fast float %10368, %10360
  %10376 = fsub fast float %10369, %10361
  %10377 = fmul fast float %10374, %10347
  %10378 = fmul fast float %10375, %10347
  %10379 = fmul fast float %10376, %10347
  %10380 = fadd fast float %10377, %10359
  %10381 = fadd fast float %10378, %10360
  %10382 = fadd fast float %10379, %10361
  %10383 = fsub fast float %10371, %10363
  %10384 = fsub fast float %10372, %10364
  %10385 = fsub fast float %10373, %10365
  %10386 = fmul fast float %10383, %10347
  %10387 = fmul fast float %10384, %10347
  %10388 = fmul fast float %10385, %10347
  %10389 = fsub fast float %10363, %10380
  %10390 = fadd fast float %10389, %10386
  %10391 = fsub fast float %10364, %10381
  %10392 = fadd fast float %10391, %10387
  %10393 = fsub fast float %10365, %10382
  %10394 = fadd fast float %10393, %10388
  %10395 = fmul fast float %10390, %10335
  %10396 = fmul fast float %10392, %10335
  %10397 = fmul fast float %10394, %10335
  %10398 = fadd fast float %10395, %10380
  %10399 = fadd fast float %10396, %10381
  %10400 = fadd fast float %10397, %10382
  %10401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10402 = extractvalue %dx.types.CBufRet.f32 %10401, 1
  %10403 = fmul fast float %10398, %10402
  %10404 = fmul fast float %10399, %10402
  %10405 = fmul fast float %10400, %10402
  br label %10406

; <label>:10406                                   ; preds = %10237, %10194
  %10407 = phi float [ %10277, %10237 ], [ 1.000000e+00, %10194 ]
  %10408 = phi float [ %10278, %10237 ], [ 1.000000e+00, %10194 ]
  %10409 = phi float [ %10279, %10237 ], [ 1.000000e+00, %10194 ]
  %10410 = phi float [ %10403, %10237 ], [ 0.000000e+00, %10194 ]
  %10411 = phi float [ %10404, %10237 ], [ 0.000000e+00, %10194 ]
  %10412 = phi float [ %10405, %10237 ], [ 0.000000e+00, %10194 ]
  %10413 = fmul fast float %10410, %8756
  %10414 = fmul fast float %10411, %8757
  %10415 = fmul fast float %10412, %8758
  %10416 = fmul fast float %10407, %10201
  %10417 = call float @dx.op.dot3.f32(i32 55, float %10407, float %10408, float %10409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10418 = call float @dx.op.dot3.f32(i32 55, float %10413, float %10414, float %10415, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10419 = select i1 %296, float %10417, float %10407
  %10420 = select i1 %296, float %10417, float %10408
  %10421 = select i1 %296, float 1.000000e+00, float %10409
  %10422 = select i1 %296, float %10418, float %10413
  %10423 = select i1 %296, float 0.000000e+00, float %10414
  %10424 = select i1 %296, float 0.000000e+00, float %10415
  %10425 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10426 = extractvalue %dx.types.CBufRet.i32 %10425, 3
  %10427 = and i32 %10426, 3
  %10428 = icmp ne i32 %10427, 0
  %10429 = and i32 %10426, 4
  %10430 = icmp ne i32 %10429, 0
  %10431 = and i1 %10428, %10430
  %10432 = and i1 %296, %10431
  br i1 %10432, label %10433, label %10439

; <label>:10433                                   ; preds = %10406
  %10434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10435 = extractvalue %dx.types.CBufRet.f32 %10434, 1
  %10436 = fadd fast float %10416, -1.000000e+00
  %10437 = fmul fast float %10435, %10436
  %10438 = fadd fast float %10437, 1.000000e+00
  br label %10439

; <label>:10439                                   ; preds = %10433, %10406
  %10440 = phi float [ %10438, %10433 ], [ %10416, %10406 ]
  %10441 = fadd fast float %10198, %10195
  %10442 = fmul fast float %10419, %10441
  %10443 = fadd fast float %10442, %10422
  %10444 = fadd fast float %10199, %10196
  %10445 = fmul fast float %10420, %10444
  %10446 = fadd fast float %10445, %10423
  %10447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10448 = extractvalue %dx.types.CBufRet.f32 %10447, 0
  br i1 %296, label %10449, label %10464

; <label>:10449                                   ; preds = %10439
  %10450 = fadd fast float %10443, %10446
  %10451 = fmul fast float %10448, %10450
  %10452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10453 = extractvalue %dx.types.CBufRet.f32 %10452, 3
  %10454 = extractvalue %dx.types.CBufRet.f32 %8740, 1
  %10455 = fsub fast float %8745, %8739
  %10456 = fadd fast float %10455, %8746
  %10457 = fsub fast float %10456, %10454
  %10458 = extractvalue %dx.types.CBufRet.f32 %8740, 2
  %10459 = fmul fast float %10457, %10458
  %10460 = call float @dx.op.unary.f32(i32 7, float %10459)  ; Saturate(value)
  %10461 = fsub fast float %10460, %10453
  %10462 = fmul fast float %10461, %10440
  %10463 = fadd fast float %10462, %10453
  br label %10490

; <label>:10464                                   ; preds = %10439
  %10465 = fadd fast float %10200, %10197
  %10466 = fmul fast float %10421, %10465
  %10467 = fadd fast float %10466, %10424
  %10468 = fmul fast float %10448, %10443
  %10469 = fmul fast float %10448, %10446
  %10470 = fmul fast float %10448, %10467
  %10471 = call float @dx.op.binary.f32(i32 35, float %10469, float %10470)  ; FMax(a,b)
  %10472 = call float @dx.op.binary.f32(i32 35, float %10468, float %10471)  ; FMax(a,b)
  %10473 = call float @dx.op.binary.f32(i32 35, float %8757, float %8758)  ; FMax(a,b)
  %10474 = call float @dx.op.binary.f32(i32 35, float %8756, float %10473)  ; FMax(a,b)
  %10475 = call float @dx.op.binary.f32(i32 35, float %10472, float %10474)  ; FMax(a,b)
  %10476 = fcmp fast ugt float %10475, 0x3F10000000000000
  br i1 %10476, label %10478, label %10477

; <label>:10477                                   ; preds = %10464
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10478

; <label>:10478                                   ; preds = %10477, %10464
  %10479 = add i32 %51, 356
  %10480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %10479, i32 undef)  ; BufferLoad(srv,index,wot)
  %10481 = extractvalue %dx.types.ResRet.i32 %10480, 0
  %10482 = and i32 %10481, 32
  %10483 = icmp eq i32 %10482, 0
  br i1 %10483, label %10490, label %10484

; <label>:10484                                   ; preds = %10478
  %10485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10486 = extractvalue %dx.types.CBufRet.f32 %10485, 0
  %10487 = fmul fast float %10486, 0x3FE99999A0000000
  %10488 = fadd fast float %10486, %10468
  %10489 = fadd fast float %10487, %10470
  br label %10490

; <label>:10490                                   ; preds = %10484, %10478, %10449
  %10491 = phi float [ 1.000000e+00, %10449 ], [ %8757, %10484 ], [ %8757, %10478 ]
  %10492 = phi float [ 1.000000e+00, %10449 ], [ %8758, %10484 ], [ %8758, %10478 ]
  %10493 = phi float [ %10451, %10449 ], [ %10488, %10484 ], [ %10468, %10478 ]
  %10494 = phi float [ %10463, %10449 ], [ %10469, %10484 ], [ %10469, %10478 ]
  %10495 = phi float [ 1.000000e+00, %10449 ], [ %10489, %10484 ], [ %10470, %10478 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10496 = call float @dx.op.binary.f32(i32 36, float %10493, float 3.225500e+04)  ; FMin(a,b)
  %10497 = call float @dx.op.binary.f32(i32 36, float %10494, float 3.225500e+04)  ; FMin(a,b)
  %10498 = call float @dx.op.binary.f32(i32 36, float %10495, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10496)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10497)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10498)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10499 = call float @dx.op.binary.f32(i32 36, float %8756, float 3.225500e+04)  ; FMin(a,b)
  %10500 = call float @dx.op.binary.f32(i32 36, float %10491, float 3.225500e+04)  ; FMin(a,b)
  %10501 = call float @dx.op.binary.f32(i32 36, float %10492, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10499)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10500)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10501)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

