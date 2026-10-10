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
; shader hash: 069fc41e597559c251bfe78b78adceaf
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
  %488 = add i32 %51, 536
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
  br i1 %544, label %1132, label %545

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
  %1068 = and i32 %1067, 10240
  %1069 = icmp eq i32 %1068, 0
  br i1 %1069, label %1114, label %1070

; <label>:1070                                    ; preds = %1062
  %1071 = add i32 %51, 520
  %1072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.i32 %1072, 0
  %1074 = add i32 %1073, 0
  %1075 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1074, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1076 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1075, %dx.types.Handle %108, float %644, float %645, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 3
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1090 = add i32 %51, 96
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1119 = add i32 %51, 96
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1138 = phi float [ 0.000000e+00, %530 ], [ %1115, %1114 ]
  %1139 = phi float [ 0.000000e+00, %530 ], [ %1116, %1114 ]
  %1140 = phi float [ 0.000000e+00, %530 ], [ %1117, %1114 ]
  %1141 = phi float [ 0.000000e+00, %530 ], [ %1063, %1114 ]
  %1142 = phi float [ 0.000000e+00, %530 ], [ %1064, %1114 ]
  %1143 = phi float [ 0.000000e+00, %530 ], [ %1065, %1114 ]
  %1144 = phi float [ 0.000000e+00, %530 ], [ %921, %1114 ]
  %1145 = phi float [ 0.000000e+00, %530 ], [ %717, %1114 ]
  %1146 = phi float [ 0.000000e+00, %530 ], [ %1015, %1114 ]
  %1147 = phi float [ 0.000000e+00, %530 ], [ %1018, %1114 ]
  %1148 = phi float [ 0.000000e+00, %530 ], [ %1118, %1114 ]
  %1149 = phi float [ 0.000000e+00, %530 ], [ %1131, %1114 ]
  br i1 %478, label %1963, label %1150

; <label>:1150                                    ; preds = %1132
  %1151 = icmp ult i32 %536, 2
  %1152 = add i32 %51, 40
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = add i32 %51, 44
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = or i32 %1157, %1154
  %1159 = icmp eq i32 %1158, 0
  br i1 %1159, label %1963, label %1160

; <label>:1160                                    ; preds = %1150
  %1161 = and i32 %1154, 262144
  %1162 = icmp ne i32 %1161, 0
  %1163 = select i1 %1162, float %57, float 1.000000e+00
  %1164 = select i1 %1162, float %58, float 0.000000e+00
  %1165 = select i1 %1162, float %59, float 0.000000e+00
  %1166 = select i1 %1162, float %60, float 1.000000e+00
  %1167 = select i1 %1162, float %61, float %89
  %1168 = select i1 %1162, float %62, float %90
  %1169 = add i32 %51, 300
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = lshr i32 %1171, 16
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = fmul fast float %1173, 0x3F50624DE0000000
  %1175 = add i32 %51, 104
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = lshr i32 %1177, 16
  %1179 = and i32 %1178, 255
  %1180 = lshr i32 %1177, 24
  %1181 = add i32 %51, 308
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 65535
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = lshr i32 %1183, 16
  %1187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1186)  ; LegacyF16ToF32(value)
  %1188 = add i32 %51, 48
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1188, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1234 = add i32 %51, 244
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1264 = add i32 %51, 492
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1264, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = add i32 %1266, 0
  %1268 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1267, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1268, %dx.types.Handle %108, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1270 = extractvalue %dx.types.ResRet.f32 %1269, 0
  %1271 = add i32 %51, 116
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1271, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = and i32 %1312, 128
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1331, label %1315

; <label>:1315                                    ; preds = %1309
  %1316 = add i32 %51, 476
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = add i32 %1318, 0
  %1320 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1319, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1321 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1320, %dx.types.Handle %108, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1336 = extractvalue %dx.types.ResRet.i32 %1335, 0
  %1337 = and i32 %1336, 16
  %1338 = icmp eq i32 %1337, 0
  br i1 %1338, label %1537, label %1339

; <label>:1339                                    ; preds = %1334
  %1340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1341 = extractvalue %dx.types.ResRet.i32 %1340, 0
  %1342 = add i32 %51, 428
  %1343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1342, i32 undef)  ; BufferLoad(srv,index,wot)
  %1344 = extractvalue %dx.types.ResRet.i32 %1343, 0
  %1345 = add i32 %1344, 0
  %1346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1346, %dx.types.Handle %107, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 512
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1372, label %1364

; <label>:1364                                    ; preds = %1339
  %1365 = add i32 %51, 508
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %1367, 0
  %1369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1369, %dx.types.Handle %108, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  br label %1372

; <label>:1372                                    ; preds = %1364, %1339
  %1373 = phi float [ %1371, %1364 ], [ 1.000000e+00, %1339 ]
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 33554432
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1484, label %1378

; <label>:1378                                    ; preds = %1372
  %1379 = add i32 %51, 240
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = and i32 %1381, 65535
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = lshr i32 %1381, 16
  %1385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1384)  ; LegacyF16ToF32(value)
  %1386 = add i32 %51, 244
  %1387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1386, i32 undef)  ; BufferLoad(srv,index,wot)
  %1388 = extractvalue %dx.types.ResRet.i32 %1387, 0
  %1389 = and i32 %1388, 65535
  %1390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1389)  ; LegacyF16ToF32(value)
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1407 = add i32 %51, 236
  %1408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1407, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1542 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.i32 %1542, 1
  %1544 = and i32 %1543, 1
  %1545 = icmp ne i32 %1544, 0
  %1546 = add i32 %51, 356
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 32
  %1550 = icmp ne i32 %1549, 0
  %1551 = and i1 %1545, %1550
  %1552 = select i1 %1551, float 1.000000e+00, float %1539
  %1553 = select i1 %1551, float 0x3FD3333340000000, float %1540
  %1554 = select i1 %1551, float 0x3FD3333340000000, float %1541
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 32
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1631, label %1559

; <label>:1559                                    ; preds = %1537
  %1560 = add i32 %51, 108
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1560, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = add i32 %51, 444
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1563, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = add i32 %1565, 0
  %1567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1567, %dx.types.Handle %107, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 67108864
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1627, label %1611

; <label>:1611                                    ; preds = %1559
  %1612 = add i32 %51, 296
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 65535
  %1616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1615)  ; LegacyF16ToF32(value)
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1636 = add i32 %51, 176
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = lshr i32 %1638, 22
  %1640 = shl nuw nsw i32 %1639, 5
  %1641 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1640)  ; LegacyF16ToF32(value)
  %1642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1643 = extractvalue %dx.types.ResRet.i32 %1642, 0
  %1644 = and i32 %1643, 64
  %1645 = icmp eq i32 %1644, 0
  br i1 %1645, label %1679, label %1646

; <label>:1646                                    ; preds = %1631
  %1647 = add i32 %51, 460
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = add i32 %1649, 0
  %1651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 131072
  %1655 = icmp eq i32 %1654, 0
  %1656 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1651, %dx.types.Handle %107, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1657 = extractvalue %dx.types.ResRet.f32 %1656, 0
  %1658 = extractvalue %dx.types.ResRet.f32 %1656, 1
  %1659 = extractvalue %dx.types.ResRet.f32 %1656, 2
  %1660 = fmul fast float %1657, %353
  %1661 = fmul fast float %1658, %356
  %1662 = fmul fast float %1659, %359
  br i1 %1655, label %1669, label %1663

; <label>:1663                                    ; preds = %1646
  %1664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = and i32 %1684, 10240
  %1686 = icmp eq i32 %1685, 0
  br i1 %1686, label %1731, label %1687

; <label>:1687                                    ; preds = %1679
  %1688 = add i32 %51, 524
  %1689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1688, i32 undef)  ; BufferLoad(srv,index,wot)
  %1690 = extractvalue %dx.types.ResRet.i32 %1689, 0
  %1691 = add i32 %1690, 0
  %1692 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1691, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1693 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1692, %dx.types.Handle %108, float %1259, float %1260, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1694 = extractvalue %dx.types.ResRet.f32 %1693, 1
  %1695 = extractvalue %dx.types.ResRet.f32 %1693, 3
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1707 = add i32 %51, 112
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1736 = add i32 %51, 112
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1754 = fmul fast float %1750, %1141
  %1755 = fmul fast float %1750, %1142
  %1756 = fmul fast float %1750, %1143
  br label %1757

; <label>:1757                                    ; preds = %1749, %1731
  %1758 = phi float [ %1751, %1749 ], [ %1135, %1731 ]
  %1759 = phi float [ %1752, %1749 ], [ %1136, %1731 ]
  %1760 = phi float [ %1753, %1749 ], [ %1137, %1731 ]
  %1761 = phi float [ %1754, %1749 ], [ %1141, %1731 ]
  %1762 = phi float [ %1755, %1749 ], [ %1142, %1731 ]
  %1763 = phi float [ %1756, %1749 ], [ %1143, %1731 ]
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1890 = fsub fast float %1732, %1138
  %1891 = fsub fast float %1733, %1139
  %1892 = fsub fast float %1734, %1140
  %1893 = fmul fast float %1872, %1890
  %1894 = fmul fast float %1872, %1891
  %1895 = fmul fast float %1872, %1892
  %1896 = fadd fast float %1893, %1138
  %1897 = fadd fast float %1894, %1139
  %1898 = fadd fast float %1895, %1140
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
  %1938 = fadd fast float %1935, %1138
  %1939 = fadd fast float %1936, %1139
  %1940 = fadd fast float %1937, %1140
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
  %1960 = fadd fast float %1957, %1138
  %1961 = fadd fast float %1958, %1139
  %1962 = fadd fast float %1959, %1140
  br label %1963

; <label>:1963                                    ; preds = %1943, %1941, %1901, %1874, %1846, %1331, %1150, %1132
  %1964 = phi float [ %1133, %1846 ], [ %1133, %1331 ], [ %1133, %1132 ], [ %1946, %1943 ], [ %1133, %1941 ], [ %1904, %1901 ], [ %1879, %1874 ], [ %1133, %1150 ]
  %1965 = phi float [ %1134, %1846 ], [ %1134, %1331 ], [ %1134, %1132 ], [ %1947, %1943 ], [ %1134, %1941 ], [ %1905, %1901 ], [ %1880, %1874 ], [ %1134, %1150 ]
  %1966 = phi float [ %1847, %1846 ], [ %1135, %1331 ], [ %1135, %1132 ], [ %1847, %1943 ], [ %1847, %1941 ], [ %1847, %1901 ], [ %1847, %1874 ], [ %1135, %1150 ]
  %1967 = phi float [ %1848, %1846 ], [ %1136, %1331 ], [ %1136, %1132 ], [ %1848, %1943 ], [ %1848, %1941 ], [ %1848, %1901 ], [ %1848, %1874 ], [ %1136, %1150 ]
  %1968 = phi float [ %1849, %1846 ], [ %1137, %1331 ], [ %1137, %1132 ], [ %1849, %1943 ], [ %1849, %1941 ], [ %1849, %1901 ], [ %1849, %1874 ], [ %1137, %1150 ]
  %1969 = phi float [ %1138, %1846 ], [ %1138, %1331 ], [ %1138, %1132 ], [ %1960, %1943 ], [ %1138, %1941 ], [ %1938, %1901 ], [ %1896, %1874 ], [ %1138, %1150 ]
  %1970 = phi float [ %1139, %1846 ], [ %1139, %1331 ], [ %1139, %1132 ], [ %1961, %1943 ], [ %1139, %1941 ], [ %1939, %1901 ], [ %1897, %1874 ], [ %1139, %1150 ]
  %1971 = phi float [ %1140, %1846 ], [ %1140, %1331 ], [ %1140, %1132 ], [ %1962, %1943 ], [ %1140, %1941 ], [ %1940, %1901 ], [ %1898, %1874 ], [ %1140, %1150 ]
  %1972 = phi float [ %1850, %1846 ], [ %1141, %1331 ], [ %1141, %1132 ], [ %1850, %1943 ], [ %1850, %1941 ], [ %1850, %1901 ], [ %1850, %1874 ], [ %1141, %1150 ]
  %1973 = phi float [ %1851, %1846 ], [ %1142, %1331 ], [ %1142, %1132 ], [ %1851, %1943 ], [ %1851, %1941 ], [ %1851, %1901 ], [ %1851, %1874 ], [ %1142, %1150 ]
  %1974 = phi float [ %1852, %1846 ], [ %1143, %1331 ], [ %1143, %1132 ], [ %1852, %1943 ], [ %1852, %1941 ], [ %1852, %1901 ], [ %1852, %1874 ], [ %1143, %1150 ]
  %1975 = phi float [ %1853, %1846 ], [ %1144, %1331 ], [ %1144, %1132 ], [ %1853, %1943 ], [ %1853, %1941 ], [ %1853, %1901 ], [ %1853, %1874 ], [ %1144, %1150 ]
  %1976 = phi float [ %1146, %1846 ], [ %1146, %1331 ], [ %1146, %1132 ], [ %1954, %1943 ], [ %1146, %1941 ], [ %1932, %1901 ], [ %1886, %1874 ], [ %1146, %1150 ]
  %1977 = phi float [ %1147, %1846 ], [ %1147, %1331 ], [ %1147, %1132 ], [ %1951, %1943 ], [ %1147, %1941 ], [ %1909, %1901 ], [ %1883, %1874 ], [ %1147, %1150 ]
  %1978 = phi float [ %1148, %1846 ], [ %1148, %1331 ], [ %1148, %1132 ], [ %1956, %1943 ], [ %1148, %1941 ], [ %1934, %1901 ], [ %1889, %1874 ], [ %1148, %1150 ]
  %1979 = phi float [ %1854, %1846 ], [ %1149, %1331 ], [ %1149, %1132 ], [ %1854, %1943 ], [ %1854, %1941 ], [ %1854, %1901 ], [ %1854, %1874 ], [ %1149, %1150 ]
  br i1 %480, label %2793, label %1980

; <label>:1980                                    ; preds = %1963
  %1981 = icmp ult i32 %536, 3
  %1982 = add i32 %51, 56
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = add i32 %51, 60
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1985, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = or i32 %1987, %1984
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %2793, label %1990

; <label>:1990                                    ; preds = %1980
  %1991 = and i32 %1984, 262144
  %1992 = icmp ne i32 %1991, 0
  %1993 = select i1 %1992, float %57, float 1.000000e+00
  %1994 = select i1 %1992, float %58, float 0.000000e+00
  %1995 = select i1 %1992, float %59, float 0.000000e+00
  %1996 = select i1 %1992, float %60, float 1.000000e+00
  %1997 = select i1 %1992, float %61, float %89
  %1998 = select i1 %1992, float %62, float %90
  %1999 = add i32 %51, 316
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = lshr i32 %2001, 16
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = fmul fast float %2003, 0x3F50624DE0000000
  %2005 = add i32 %51, 120
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = lshr i32 %2007, 16
  %2009 = and i32 %2008, 255
  %2010 = lshr i32 %2007, 24
  %2011 = add i32 %51, 324
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 65535
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = lshr i32 %2013, 16
  %2017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2016)  ; LegacyF16ToF32(value)
  %2018 = add i32 %51, 64
  %2019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2064 = add i32 %51, 260
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2094 = add i32 %51, 496
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2094, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = add i32 %2096, 0
  %2098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2098, %dx.types.Handle %108, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2100 = extractvalue %dx.types.ResRet.f32 %2099, 0
  %2101 = add i32 %51, 132
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2101, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 128
  %2144 = icmp eq i32 %2143, 0
  br i1 %2144, label %2161, label %2145

; <label>:2145                                    ; preds = %2139
  %2146 = add i32 %51, 480
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = add i32 %2148, 0
  %2150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2150, %dx.types.Handle %108, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2152 = extractvalue %dx.types.ResRet.f32 %2151, 0
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = and i32 %2166, 16
  %2168 = icmp eq i32 %2167, 0
  br i1 %2168, label %2367, label %2169

; <label>:2169                                    ; preds = %2164
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = add i32 %51, 432
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = add i32 %2174, 0
  %2176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2176, %dx.types.Handle %107, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = and i32 %2191, 512
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2202, label %2194

; <label>:2194                                    ; preds = %2169
  %2195 = add i32 %51, 512
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2195, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = add i32 %2197, 0
  %2199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2198, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2200 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2199, %dx.types.Handle %108, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2201 = extractvalue %dx.types.ResRet.f32 %2200, 0
  br label %2202

; <label>:2202                                    ; preds = %2194, %2169
  %2203 = phi float [ %2201, %2194 ], [ 1.000000e+00, %2169 ]
  %2204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2205 = extractvalue %dx.types.ResRet.i32 %2204, 0
  %2206 = and i32 %2205, 33554432
  %2207 = icmp eq i32 %2206, 0
  br i1 %2207, label %2314, label %2208

; <label>:2208                                    ; preds = %2202
  %2209 = add i32 %51, 256
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 65535
  %2213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2212)  ; LegacyF16ToF32(value)
  %2214 = lshr i32 %2211, 16
  %2215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2214)  ; LegacyF16ToF32(value)
  %2216 = add i32 %51, 260
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2216, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 65535
  %2220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2219)  ; LegacyF16ToF32(value)
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2237 = add i32 %51, 252
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2372 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.i32 %2372, 1
  %2374 = and i32 %2373, 1
  %2375 = icmp ne i32 %2374, 0
  %2376 = add i32 %51, 356
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 32
  %2380 = icmp ne i32 %2379, 0
  %2381 = and i1 %2375, %2380
  %2382 = select i1 %2381, float 1.000000e+00, float %2369
  %2383 = select i1 %2381, float 0x3FD3333340000000, float %2370
  %2384 = select i1 %2381, float 0x3FD3333340000000, float %2371
  %2385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2386 = extractvalue %dx.types.ResRet.i32 %2385, 0
  %2387 = and i32 %2386, 32
  %2388 = icmp eq i32 %2387, 0
  br i1 %2388, label %2461, label %2389

; <label>:2389                                    ; preds = %2367
  %2390 = add i32 %51, 124
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2390, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = add i32 %51, 448
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = add i32 %2395, 0
  %2397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2398 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2397, %dx.types.Handle %107, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 67108864
  %2440 = icmp eq i32 %2439, 0
  br i1 %2440, label %2457, label %2441

; <label>:2441                                    ; preds = %2389
  %2442 = add i32 %51, 312
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = and i32 %2444, 65535
  %2446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2445)  ; LegacyF16ToF32(value)
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2466 = add i32 %51, 192
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = lshr i32 %2468, 22
  %2470 = shl nuw nsw i32 %2469, 5
  %2471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2470)  ; LegacyF16ToF32(value)
  %2472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2473 = extractvalue %dx.types.ResRet.i32 %2472, 0
  %2474 = and i32 %2473, 64
  %2475 = icmp eq i32 %2474, 0
  br i1 %2475, label %2509, label %2476

; <label>:2476                                    ; preds = %2461
  %2477 = add i32 %51, 464
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2477, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = add i32 %2479, 0
  %2481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 131072
  %2485 = icmp eq i32 %2484, 0
  %2486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2481, %dx.types.Handle %107, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2487 = extractvalue %dx.types.ResRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.ResRet.f32 %2486, 1
  %2489 = extractvalue %dx.types.ResRet.f32 %2486, 2
  %2490 = fmul fast float %2487, %395
  %2491 = fmul fast float %2488, %398
  %2492 = fmul fast float %2489, %401
  br i1 %2485, label %2499, label %2493

; <label>:2493                                    ; preds = %2476
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2514 = extractvalue %dx.types.ResRet.i32 %2513, 0
  %2515 = and i32 %2514, 10240
  %2516 = icmp eq i32 %2515, 0
  br i1 %2516, label %2561, label %2517

; <label>:2517                                    ; preds = %2509
  %2518 = add i32 %51, 528
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2518, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = add i32 %2520, 0
  %2522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2522, %dx.types.Handle %108, float %2089, float %2090, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2524 = extractvalue %dx.types.ResRet.f32 %2523, 1
  %2525 = extractvalue %dx.types.ResRet.f32 %2523, 3
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2537 = add i32 %51, 128
  %2538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2537, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2466, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2566 = add i32 %51, 128
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2584 = fmul fast float %2580, %1972
  %2585 = fmul fast float %2580, %1973
  %2586 = fmul fast float %2580, %1974
  br label %2587

; <label>:2587                                    ; preds = %2579, %2561
  %2588 = phi float [ %2581, %2579 ], [ %1966, %2561 ]
  %2589 = phi float [ %2582, %2579 ], [ %1967, %2561 ]
  %2590 = phi float [ %2583, %2579 ], [ %1968, %2561 ]
  %2591 = phi float [ %2584, %2579 ], [ %1972, %2561 ]
  %2592 = phi float [ %2585, %2579 ], [ %1973, %2561 ]
  %2593 = phi float [ %2586, %2579 ], [ %1974, %2561 ]
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2720 = fsub fast float %2562, %1969
  %2721 = fsub fast float %2563, %1970
  %2722 = fsub fast float %2564, %1971
  %2723 = fmul fast float %2702, %2720
  %2724 = fmul fast float %2702, %2721
  %2725 = fmul fast float %2702, %2722
  %2726 = fadd fast float %2723, %1969
  %2727 = fadd fast float %2724, %1970
  %2728 = fadd fast float %2725, %1971
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
  %2768 = fadd fast float %2765, %1969
  %2769 = fadd fast float %2766, %1970
  %2770 = fadd fast float %2767, %1971
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
  %2790 = fadd fast float %2787, %1969
  %2791 = fadd fast float %2788, %1970
  %2792 = fadd fast float %2789, %1971
  br label %2793

; <label>:2793                                    ; preds = %2773, %2771, %2731, %2704, %2676, %2161, %1980, %1963
  %2794 = phi float [ %1964, %2676 ], [ %1964, %2161 ], [ %1964, %1963 ], [ %2776, %2773 ], [ %1964, %2771 ], [ %2734, %2731 ], [ %2709, %2704 ], [ %1964, %1980 ]
  %2795 = phi float [ %1965, %2676 ], [ %1965, %2161 ], [ %1965, %1963 ], [ %2777, %2773 ], [ %1965, %2771 ], [ %2735, %2731 ], [ %2710, %2704 ], [ %1965, %1980 ]
  %2796 = phi float [ %2677, %2676 ], [ %1966, %2161 ], [ %1966, %1963 ], [ %2677, %2773 ], [ %2677, %2771 ], [ %2677, %2731 ], [ %2677, %2704 ], [ %1966, %1980 ]
  %2797 = phi float [ %2678, %2676 ], [ %1967, %2161 ], [ %1967, %1963 ], [ %2678, %2773 ], [ %2678, %2771 ], [ %2678, %2731 ], [ %2678, %2704 ], [ %1967, %1980 ]
  %2798 = phi float [ %2679, %2676 ], [ %1968, %2161 ], [ %1968, %1963 ], [ %2679, %2773 ], [ %2679, %2771 ], [ %2679, %2731 ], [ %2679, %2704 ], [ %1968, %1980 ]
  %2799 = phi float [ %1969, %2676 ], [ %1969, %2161 ], [ %1969, %1963 ], [ %2790, %2773 ], [ %1969, %2771 ], [ %2768, %2731 ], [ %2726, %2704 ], [ %1969, %1980 ]
  %2800 = phi float [ %1970, %2676 ], [ %1970, %2161 ], [ %1970, %1963 ], [ %2791, %2773 ], [ %1970, %2771 ], [ %2769, %2731 ], [ %2727, %2704 ], [ %1970, %1980 ]
  %2801 = phi float [ %1971, %2676 ], [ %1971, %2161 ], [ %1971, %1963 ], [ %2792, %2773 ], [ %1971, %2771 ], [ %2770, %2731 ], [ %2728, %2704 ], [ %1971, %1980 ]
  %2802 = phi float [ %2680, %2676 ], [ %1972, %2161 ], [ %1972, %1963 ], [ %2680, %2773 ], [ %2680, %2771 ], [ %2680, %2731 ], [ %2680, %2704 ], [ %1972, %1980 ]
  %2803 = phi float [ %2681, %2676 ], [ %1973, %2161 ], [ %1973, %1963 ], [ %2681, %2773 ], [ %2681, %2771 ], [ %2681, %2731 ], [ %2681, %2704 ], [ %1973, %1980 ]
  %2804 = phi float [ %2682, %2676 ], [ %1974, %2161 ], [ %1974, %1963 ], [ %2682, %2773 ], [ %2682, %2771 ], [ %2682, %2731 ], [ %2682, %2704 ], [ %1974, %1980 ]
  %2805 = phi float [ %2683, %2676 ], [ %1975, %2161 ], [ %1975, %1963 ], [ %2683, %2773 ], [ %2683, %2771 ], [ %2683, %2731 ], [ %2683, %2704 ], [ %1975, %1980 ]
  %2806 = phi float [ %1976, %2676 ], [ %1976, %2161 ], [ %1976, %1963 ], [ %2784, %2773 ], [ %1976, %2771 ], [ %2762, %2731 ], [ %2716, %2704 ], [ %1976, %1980 ]
  %2807 = phi float [ %1977, %2676 ], [ %1977, %2161 ], [ %1977, %1963 ], [ %2781, %2773 ], [ %1977, %2771 ], [ %2739, %2731 ], [ %2713, %2704 ], [ %1977, %1980 ]
  %2808 = phi float [ %1978, %2676 ], [ %1978, %2161 ], [ %1978, %1963 ], [ %2786, %2773 ], [ %1978, %2771 ], [ %2764, %2731 ], [ %2719, %2704 ], [ %1978, %1980 ]
  %2809 = phi float [ %2684, %2676 ], [ %1979, %2161 ], [ %1979, %1963 ], [ %2684, %2773 ], [ %2684, %2771 ], [ %2684, %2731 ], [ %2684, %2704 ], [ %1979, %1980 ]
  br i1 %482, label %3623, label %2810

; <label>:2810                                    ; preds = %2793
  %2811 = icmp ult i32 %536, 4
  %2812 = add i32 %51, 72
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = add i32 %51, 76
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = or i32 %2817, %2814
  %2819 = icmp eq i32 %2818, 0
  br i1 %2819, label %3623, label %2820

; <label>:2820                                    ; preds = %2810
  %2821 = and i32 %2814, 262144
  %2822 = icmp ne i32 %2821, 0
  %2823 = select i1 %2822, float %57, float 1.000000e+00
  %2824 = select i1 %2822, float %58, float 0.000000e+00
  %2825 = select i1 %2822, float %59, float 0.000000e+00
  %2826 = select i1 %2822, float %60, float 1.000000e+00
  %2827 = select i1 %2822, float %61, float %89
  %2828 = select i1 %2822, float %62, float %90
  %2829 = add i32 %51, 332
  %2830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.i32 %2830, 0
  %2832 = lshr i32 %2831, 16
  %2833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2832)  ; LegacyF16ToF32(value)
  %2834 = fmul fast float %2833, 0x3F50624DE0000000
  %2835 = add i32 %51, 136
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = lshr i32 %2837, 16
  %2839 = and i32 %2838, 255
  %2840 = lshr i32 %2837, 24
  %2841 = add i32 %51, 340
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = and i32 %2843, 65535
  %2845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2844)  ; LegacyF16ToF32(value)
  %2846 = lshr i32 %2843, 16
  %2847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2846)  ; LegacyF16ToF32(value)
  %2848 = add i32 %51, 80
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2894 = add i32 %51, 276
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2924 = add i32 %51, 500
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %2926, 0
  %2928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2928, %dx.types.Handle %108, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2930 = extractvalue %dx.types.ResRet.f32 %2929, 0
  %2931 = add i32 %51, 148
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.i32 %2971, 0
  %2973 = and i32 %2972, 128
  %2974 = icmp eq i32 %2973, 0
  br i1 %2974, label %2991, label %2975

; <label>:2975                                    ; preds = %2969
  %2976 = add i32 %51, 484
  %2977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2976, i32 undef)  ; BufferLoad(srv,index,wot)
  %2978 = extractvalue %dx.types.ResRet.i32 %2977, 0
  %2979 = add i32 %2978, 0
  %2980 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2979, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2981 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2980, %dx.types.Handle %108, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2982 = extractvalue %dx.types.ResRet.f32 %2981, 0
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = and i32 %2996, 16
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3197, label %2999

; <label>:2999                                    ; preds = %2994
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = add i32 %51, 436
  %3003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.i32 %3003, 0
  %3005 = add i32 %3004, 0
  %3006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3007 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3006, %dx.types.Handle %107, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = and i32 %3021, 512
  %3023 = icmp eq i32 %3022, 0
  br i1 %3023, label %3032, label %3024

; <label>:3024                                    ; preds = %2999
  %3025 = add i32 %51, 516
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3027, 0
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3029, %dx.types.Handle %108, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3031 = extractvalue %dx.types.ResRet.f32 %3030, 0
  br label %3032

; <label>:3032                                    ; preds = %3024, %2999
  %3033 = phi float [ %3031, %3024 ], [ 1.000000e+00, %2999 ]
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 33554432
  %3037 = icmp eq i32 %3036, 0
  br i1 %3037, label %3144, label %3038

; <label>:3038                                    ; preds = %3032
  %3039 = add i32 %51, 272
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = and i32 %3041, 65535
  %3043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3042)  ; LegacyF16ToF32(value)
  %3044 = lshr i32 %3041, 16
  %3045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3044)  ; LegacyF16ToF32(value)
  %3046 = add i32 %51, 276
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3046, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 65535
  %3050 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3049)  ; LegacyF16ToF32(value)
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3067 = add i32 %51, 268
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3203 = extractvalue %dx.types.CBufRet.i32 %3202, 1
  %3204 = and i32 %3203, 1
  %3205 = icmp ne i32 %3204, 0
  %3206 = add i32 %51, 356
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 32
  %3210 = icmp ne i32 %3209, 0
  %3211 = and i1 %3205, %3210
  %3212 = select i1 %3211, float 1.000000e+00, float %3199
  %3213 = select i1 %3211, float 0x3FD3333340000000, float %3200
  %3214 = select i1 %3211, float 0x3FD3333340000000, float %3201
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = and i32 %3216, 32
  %3218 = icmp eq i32 %3217, 0
  br i1 %3218, label %3291, label %3219

; <label>:3219                                    ; preds = %3197
  %3220 = add i32 %51, 140
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3220, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = add i32 %51, 452
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = add i32 %3225, 0
  %3227 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3226, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3228 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3227, %dx.types.Handle %107, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %3267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3268 = extractvalue %dx.types.ResRet.i32 %3267, 0
  %3269 = and i32 %3268, 67108864
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %3287, label %3271

; <label>:3271                                    ; preds = %3219
  %3272 = add i32 %51, 328
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = and i32 %3274, 65535
  %3276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3275)  ; LegacyF16ToF32(value)
  %3277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3296 = add i32 %51, 208
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = lshr i32 %3298, 22
  %3300 = shl nuw nsw i32 %3299, 5
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 64
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3339, label %3306

; <label>:3306                                    ; preds = %3291
  %3307 = add i32 %51, 468
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3313 = extractvalue %dx.types.ResRet.i32 %3312, 0
  %3314 = and i32 %3313, 131072
  %3315 = icmp eq i32 %3314, 0
  %3316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3311, %dx.types.Handle %107, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = fmul fast float %3317, %437
  %3321 = fmul fast float %3318, %440
  %3322 = fmul fast float %3319, %443
  br i1 %3315, label %3329, label %3323

; <label>:3323                                    ; preds = %3306
  %3324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 10240
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3391, label %3347

; <label>:3347                                    ; preds = %3339
  %3348 = add i32 %51, 532
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = add i32 %3350, 0
  %3352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3351, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3353 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3352, %dx.types.Handle %108, float %2919, float %2920, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3354 = extractvalue %dx.types.ResRet.f32 %3353, 1
  %3355 = extractvalue %dx.types.ResRet.f32 %3353, 3
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3367 = add i32 %51, 144
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3396 = add i32 %51, 144
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3414 = fmul fast float %3410, %2802
  %3415 = fmul fast float %3410, %2803
  %3416 = fmul fast float %3410, %2804
  br label %3417

; <label>:3417                                    ; preds = %3409, %3391
  %3418 = phi float [ %3411, %3409 ], [ %2796, %3391 ]
  %3419 = phi float [ %3412, %3409 ], [ %2797, %3391 ]
  %3420 = phi float [ %3413, %3409 ], [ %2798, %3391 ]
  %3421 = phi float [ %3414, %3409 ], [ %2802, %3391 ]
  %3422 = phi float [ %3415, %3409 ], [ %2803, %3391 ]
  %3423 = phi float [ %3416, %3409 ], [ %2804, %3391 ]
  %3424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3550 = fsub fast float %3392, %2799
  %3551 = fsub fast float %3393, %2800
  %3552 = fsub fast float %3394, %2801
  %3553 = fmul fast float %3532, %3550
  %3554 = fmul fast float %3532, %3551
  %3555 = fmul fast float %3532, %3552
  %3556 = fadd fast float %3553, %2799
  %3557 = fadd fast float %3554, %2800
  %3558 = fadd fast float %3555, %2801
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
  %3598 = fadd fast float %3595, %2799
  %3599 = fadd fast float %3596, %2800
  %3600 = fadd fast float %3597, %2801
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
  %3620 = fadd fast float %3617, %2799
  %3621 = fadd fast float %3618, %2800
  %3622 = fadd fast float %3619, %2801
  br label %3623

; <label>:3623                                    ; preds = %3603, %3601, %3561, %3534, %3506, %2991, %2810, %2793
  %3624 = phi float [ %2794, %3506 ], [ %2794, %2991 ], [ %2794, %2793 ], [ %2794, %2810 ], [ %3539, %3534 ], [ %3564, %3561 ], [ %2794, %3601 ], [ %3606, %3603 ]
  %3625 = phi float [ %2795, %3506 ], [ %2795, %2991 ], [ %2795, %2793 ], [ %2795, %2810 ], [ %3540, %3534 ], [ %3565, %3561 ], [ %2795, %3601 ], [ %3607, %3603 ]
  %3626 = phi float [ %3507, %3506 ], [ %2796, %2991 ], [ %2796, %2793 ], [ %2796, %2810 ], [ %3507, %3534 ], [ %3507, %3561 ], [ %3507, %3601 ], [ %3507, %3603 ]
  %3627 = phi float [ %3508, %3506 ], [ %2797, %2991 ], [ %2797, %2793 ], [ %2797, %2810 ], [ %3508, %3534 ], [ %3508, %3561 ], [ %3508, %3601 ], [ %3508, %3603 ]
  %3628 = phi float [ %3509, %3506 ], [ %2798, %2991 ], [ %2798, %2793 ], [ %2798, %2810 ], [ %3509, %3534 ], [ %3509, %3561 ], [ %3509, %3601 ], [ %3509, %3603 ]
  %3629 = phi float [ %2799, %3506 ], [ %2799, %2991 ], [ %2799, %2793 ], [ %2799, %2810 ], [ %3556, %3534 ], [ %3598, %3561 ], [ %2799, %3601 ], [ %3620, %3603 ]
  %3630 = phi float [ %2800, %3506 ], [ %2800, %2991 ], [ %2800, %2793 ], [ %2800, %2810 ], [ %3557, %3534 ], [ %3599, %3561 ], [ %2800, %3601 ], [ %3621, %3603 ]
  %3631 = phi float [ %2801, %3506 ], [ %2801, %2991 ], [ %2801, %2793 ], [ %2801, %2810 ], [ %3558, %3534 ], [ %3600, %3561 ], [ %2801, %3601 ], [ %3622, %3603 ]
  %3632 = phi float [ %3510, %3506 ], [ %2802, %2991 ], [ %2802, %2793 ], [ %2802, %2810 ], [ %3510, %3534 ], [ %3510, %3561 ], [ %3510, %3601 ], [ %3510, %3603 ]
  %3633 = phi float [ %3511, %3506 ], [ %2803, %2991 ], [ %2803, %2793 ], [ %2803, %2810 ], [ %3511, %3534 ], [ %3511, %3561 ], [ %3511, %3601 ], [ %3511, %3603 ]
  %3634 = phi float [ %3512, %3506 ], [ %2804, %2991 ], [ %2804, %2793 ], [ %2804, %2810 ], [ %3512, %3534 ], [ %3512, %3561 ], [ %3512, %3601 ], [ %3512, %3603 ]
  %3635 = phi float [ %3513, %3506 ], [ %2805, %2991 ], [ %2805, %2793 ], [ %2805, %2810 ], [ %3513, %3534 ], [ %3513, %3561 ], [ %3513, %3601 ], [ %3513, %3603 ]
  %3636 = phi float [ %2806, %3506 ], [ %2806, %2991 ], [ %2806, %2793 ], [ %2806, %2810 ], [ %3546, %3534 ], [ %3592, %3561 ], [ %2806, %3601 ], [ %3614, %3603 ]
  %3637 = phi float [ %2807, %3506 ], [ %2807, %2991 ], [ %2807, %2793 ], [ %2807, %2810 ], [ %3543, %3534 ], [ %3569, %3561 ], [ %2807, %3601 ], [ %3611, %3603 ]
  %3638 = phi float [ %2808, %3506 ], [ %2808, %2991 ], [ %2808, %2793 ], [ %2808, %2810 ], [ %3549, %3534 ], [ %3594, %3561 ], [ %2808, %3601 ], [ %3616, %3603 ]
  %3639 = phi float [ %3514, %3506 ], [ %2809, %2991 ], [ %2809, %2793 ], [ %2809, %2810 ], [ %3514, %3534 ], [ %3514, %3561 ], [ %3514, %3601 ], [ %3514, %3603 ]
  %3640 = add i32 %51, 408
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = bitcast i32 %3642 to float
  %3644 = fcmp fast oge float %3643, 0.000000e+00
  %3645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3646 = extractvalue %dx.types.CBufRet.f32 %3645, 0
  %3647 = select i1 %3644, float %3643, float %3646
  %3648 = fadd fast float %3647, %203
  %3649 = and i32 %196, 65535
  %3650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3649)  ; LegacyF16ToF32(value)
  %3651 = lshr i32 %196, 16
  %3652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3651)  ; LegacyF16ToF32(value)
  %3653 = and i32 %197, 65535
  %3654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3653)  ; LegacyF16ToF32(value)
  %3655 = fmul fast float %3650, %3626
  %3656 = fmul fast float %3652, %3627
  %3657 = fmul fast float %3654, %3628
  %3658 = shl i32 %198, 4
  %3659 = and i32 %3658, 32752
  %3660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3659)  ; LegacyF16ToF32(value)
  %3661 = lshr i32 %198, 7
  %3662 = and i32 %3661, 32752
  %3663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3662)  ; LegacyF16ToF32(value)
  %3664 = lshr i32 %198, 22
  %3665 = shl nuw nsw i32 %3664, 5
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = and i32 %199, 65535
  %3668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3667)  ; LegacyF16ToF32(value)
  %3669 = fmul fast float %3660, %3632
  %3670 = fmul fast float %3669, %3668
  %3671 = fmul fast float %3663, %3633
  %3672 = fmul fast float %3671, %3668
  %3673 = fmul fast float %3666, %3634
  %3674 = fmul fast float %3673, %3668
  %3675 = call float @dx.op.dot2.f32(i32 54, float %3624, float %3625, float %3624, float %3625)  ; Dot2(ax,ay,bx,by)
  %3676 = fmul fast float %3675, 0x3FE3333340000000
  %3677 = fsub fast float 1.000000e+00, %3676
  %3678 = call float @dx.op.dot3.f32(i32 55, float %3624, float %3625, float %3677, float %3624, float %3625, float %3677)  ; Dot3(ax,ay,az,bx,by,bz)
  %3679 = call float @dx.op.unary.f32(i32 25, float %3678)  ; Rsqrt(value)
  %3680 = fmul fast float %3679, %3624
  %3681 = fmul fast float %3679, %3625
  %3682 = fmul fast float %3677, %3679
  %3683 = fmul fast float %3682, %118
  %3684 = fmul fast float %3682, %119
  %3685 = fmul fast float %3682, %120
  %3686 = fmul fast float %3680, %82
  %3687 = fmul fast float %3680, %83
  %3688 = fmul fast float %3680, %84
  %3689 = fadd fast float %3683, %3686
  %3690 = fadd fast float %3684, %3687
  %3691 = fadd fast float %3685, %3688
  %3692 = fmul fast float %130, %3681
  %3693 = fmul fast float %131, %3681
  %3694 = fmul fast float %132, %3681
  %3695 = fadd fast float %3689, %3692
  %3696 = fadd fast float %3690, %3693
  %3697 = fadd fast float %3691, %3694
  %3698 = call float @dx.op.dot3.f32(i32 55, float %3695, float %3696, float %3697, float %3695, float %3696, float %3697)  ; Dot3(ax,ay,az,bx,by,bz)
  %3699 = call float @dx.op.unary.f32(i32 25, float %3698)  ; Rsqrt(value)
  %3700 = fmul fast float %3695, %3699
  %3701 = fmul fast float %3696, %3699
  %3702 = fmul fast float %3697, %3699
  %3703 = icmp eq i32 %53, 65535
  br i1 %3703, label %4271, label %3704

; <label>:3704                                    ; preds = %3623
  %3705 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3706 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %3707 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %3708 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3709 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %3710 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %3711 = fadd fast float %3705, %54
  %3712 = fadd fast float %3706, %55
  %3713 = fadd fast float %3707, %56
  %3714 = fadd fast float %3708, %54
  %3715 = fadd fast float %3709, %55
  %3716 = fadd fast float %3710, %56
  %3717 = mul i32 %53, 48
  %3718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.f32 %3718, 0
  %3720 = extractvalue %dx.types.ResRet.f32 %3718, 1
  %3721 = extractvalue %dx.types.ResRet.f32 %3718, 2
  %3722 = add i32 %3717, 16
  %3723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3722, i32 undef)  ; BufferLoad(srv,index,wot)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = extractvalue %dx.types.ResRet.f32 %3723, 1
  %3726 = extractvalue %dx.types.ResRet.f32 %3723, 2
  %3727 = add i32 %3717, 32
  %3728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.f32 %3728, 0
  %3730 = extractvalue %dx.types.ResRet.f32 %3728, 1
  %3731 = extractvalue %dx.types.ResRet.f32 %3728, 2
  %3732 = extractvalue %dx.types.ResRet.f32 %3728, 3
  %3733 = bitcast float %3732 to i32
  %3734 = fmul fast float %3719, %54
  %3735 = fmul fast float %3720, %55
  %3736 = fmul fast float %3721, %56
  %3737 = fsub fast float %3734, %3724
  %3738 = fsub fast float %3735, %3725
  %3739 = fsub fast float %3736, %3726
  %3740 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3741 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3742 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3743 = fmul fast float %3740, %3729
  %3744 = fmul fast float %3741, %3730
  %3745 = fmul fast float %3742, %3731
  %3746 = fadd fast float %3729, -1.000000e+00
  %3747 = fadd fast float %3730, -1.000000e+00
  %3748 = fadd fast float %3731, -1.000000e+00
  %3749 = call float @dx.op.unary.f32(i32 27, float %3743)  ; Round_ni(value)
  %3750 = call float @dx.op.unary.f32(i32 27, float %3744)  ; Round_ni(value)
  %3751 = call float @dx.op.unary.f32(i32 27, float %3745)  ; Round_ni(value)
  %3752 = call float @dx.op.binary.f32(i32 36, float %3749, float %3746)  ; FMin(a,b)
  %3753 = call float @dx.op.binary.f32(i32 36, float %3750, float %3747)  ; FMin(a,b)
  %3754 = call float @dx.op.binary.f32(i32 36, float %3751, float %3748)  ; FMin(a,b)
  %3755 = fmul fast float %3754, %3730
  %3756 = fadd fast float %3755, %3753
  %3757 = fmul fast float %3756, %3729
  %3758 = fadd fast float %3757, %3752
  %3759 = fptosi float %3758 to i32
  %3760 = add nsw i32 %3759, %3733
  %3761 = shl nsw i32 %3760, 2
  %3762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3761, i32 undef)  ; BufferLoad(srv,index,wot)
  %3763 = extractvalue %dx.types.ResRet.i32 %3762, 0
  %3764 = lshr i32 %3763, 16
  %3765 = icmp eq i32 %3764, 0
  br i1 %3765, label %4237, label %3766

; <label>:3766                                    ; preds = %3704
  br label %3767

; <label>:3767                                    ; preds = %3891, %3766
  %3768 = phi i32 [ %3793, %3891 ], [ %3764, %3766 ]
  %3769 = phi float [ %3892, %3891 ], [ 0.000000e+00, %3766 ]
  %3770 = phi float [ %3893, %3891 ], [ %3648, %3766 ]
  %3771 = phi float [ %3894, %3891 ], [ %3639, %3766 ]
  %3772 = phi float [ %3895, %3891 ], [ 0.000000e+00, %3766 ]
  %3773 = phi float [ %3896, %3891 ], [ 0.000000e+00, %3766 ]
  %3774 = phi float [ %3897, %3891 ], [ %3629, %3766 ]
  %3775 = phi float [ %3898, %3891 ], [ %3630, %3766 ]
  %3776 = phi float [ %3899, %3891 ], [ %3631, %3766 ]
  %3777 = phi float [ %3900, %3891 ], [ %3670, %3766 ]
  %3778 = phi float [ %3901, %3891 ], [ %3672, %3766 ]
  %3779 = phi float [ %3902, %3891 ], [ %3674, %3766 ]
  %3780 = phi float [ %3903, %3891 ], [ %3700, %3766 ]
  %3781 = phi float [ %3904, %3891 ], [ %3701, %3766 ]
  %3782 = phi float [ %3905, %3891 ], [ %3702, %3766 ]
  %3783 = phi float [ %3906, %3891 ], [ %3637, %3766 ]
  %3784 = phi float [ %3907, %3891 ], [ %3636, %3766 ]
  %3785 = phi float [ %3908, %3891 ], [ 0.000000e+00, %3766 ]
  %3786 = phi float [ %3909, %3891 ], [ %3635, %3766 ]
  %3787 = phi float [ %3910, %3891 ], [ %3655, %3766 ]
  %3788 = phi float [ %3911, %3891 ], [ %3656, %3766 ]
  %3789 = phi float [ %3912, %3891 ], [ %3657, %3766 ]
  %3790 = shl nuw nsw i32 %3768, 2
  %3791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3790, i32 undef)  ; BufferLoad(srv,index,wot)
  %3792 = extractvalue %dx.types.ResRet.i32 %3791, 0
  %3793 = lshr i32 %3792, 16
  %3794 = shl i32 %3792, 8
  %3795 = and i32 %3794, 16776960
  %3796 = or i32 %3795, 48
  %3797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3796, i32 undef)  ; BufferLoad(srv,index,wot)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.ResRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.ResRet.f32 %3797, 2
  %3801 = or i32 %3795, 64
  %3802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.i32 %3802, 0
  %3804 = extractvalue %dx.types.ResRet.i32 %3802, 1
  %3805 = or i32 %3795, 80
  %3806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.f32 %3806, 2
  %3808 = extractvalue %dx.types.ResRet.f32 %3806, 3
  %3809 = or i32 %3795, 96
  %3810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = or i32 %3795, 112
  %3816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3817 = extractvalue %dx.types.ResRet.f32 %3816, 2
  %3818 = or i32 %3795, 128
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = extractvalue %dx.types.ResRet.f32 %3819, 3
  %3824 = or i32 %3795, 144
  %3825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3826 = extractvalue %dx.types.ResRet.f32 %3825, 0
  %3827 = extractvalue %dx.types.ResRet.f32 %3825, 1
  %3828 = extractvalue %dx.types.ResRet.f32 %3825, 2
  %3829 = extractvalue %dx.types.ResRet.f32 %3825, 3
  %3830 = or i32 %3795, 160
  %3831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.f32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.f32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.f32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.f32 %3831, 3
  %3836 = or i32 %3795, 192
  %3837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3836, i32 undef)  ; BufferLoad(srv,index,wot)
  %3838 = extractvalue %dx.types.ResRet.i32 %3837, 0
  %3839 = or i32 %3795, 208
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = or i32 %3795, 248
  %3843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.f32 %3843, 0
  %3845 = extractvalue %dx.types.ResRet.f32 %3843, 1
  %3846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = extractvalue %dx.types.ResRet.f32 %3846, 3
  %3851 = call float @dx.op.dot4.f32(i32 56, float %3847, float %3848, float %3849, float %3850, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3852 = or i32 %3795, 16
  %3853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = extractvalue %dx.types.ResRet.f32 %3853, 3
  %3858 = call float @dx.op.dot4.f32(i32 56, float %3854, float %3855, float %3856, float %3857, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3859 = or i32 %3795, 32
  %3860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.f32 %3860, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3860, 1
  %3863 = extractvalue %dx.types.ResRet.f32 %3860, 2
  %3864 = extractvalue %dx.types.ResRet.f32 %3860, 3
  %3865 = call float @dx.op.dot4.f32(i32 56, float %3861, float %3862, float %3863, float %3864, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3866 = call float @dx.op.unary.f32(i32 27, float %3851)  ; Round_ni(value)
  %3867 = call float @dx.op.unary.f32(i32 6, float %3866)  ; FAbs(value)
  %3868 = call float @dx.op.unary.f32(i32 27, float %3858)  ; Round_ni(value)
  %3869 = call float @dx.op.unary.f32(i32 6, float %3868)  ; FAbs(value)
  %3870 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3871 = call float @dx.op.unary.f32(i32 27, float %3870)  ; Round_ni(value)
  %3872 = fadd fast float %3869, %3867
  %3873 = fadd fast float %3872, %3871
  %3874 = fcmp fast oeq float %3873, 0.000000e+00
  %3875 = call float @dx.op.dot4.f32(i32 56, float %3847, float %3848, float %3849, float %3850, float %3711, float %3712, float %3713, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3876 = call float @dx.op.dot4.f32(i32 56, float %3854, float %3855, float %3856, float %3857, float %3711, float %3712, float %3713, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3877 = call float @dx.op.dot4.f32(i32 56, float %3847, float %3848, float %3849, float %3850, float %3714, float %3715, float %3716, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3878 = call float @dx.op.dot4.f32(i32 56, float %3854, float %3855, float %3856, float %3857, float %3714, float %3715, float %3716, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3879 = fsub fast float %3875, %3851
  %3880 = fsub fast float %3877, %3851
  %3881 = fsub fast float %3876, %3858
  %3882 = fsub fast float %3878, %3858
  %3883 = call float @dx.op.dot3.f32(i32 55, float %3798, float %3799, float %3800, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3884, 2
  %3886 = fadd fast float %3885, %3883
  %3887 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3888 = extractvalue %dx.types.CBufRet.f32 %3884, 0
  %3889 = fcmp fast ogt float %3887, %3888
  %3890 = and i1 %3874, %3889
  br i1 %3890, label %3914, label %3891

; <label>:3891                                    ; preds = %4223, %3997, %3914, %3767
  %3892 = phi float [ %3769, %3914 ], [ %4000, %3997 ], [ %4000, %4223 ], [ %3769, %3767 ]
  %3893 = phi float [ %3770, %3914 ], [ %3770, %3997 ], [ %4199, %4223 ], [ %3770, %3767 ]
  %3894 = phi float [ %3771, %3914 ], [ %3771, %3997 ], [ %4197, %4223 ], [ %3771, %3767 ]
  %3895 = phi float [ %3772, %3914 ], [ %3772, %3997 ], [ %4124, %4223 ], [ %3772, %3767 ]
  %3896 = phi float [ %3773, %3914 ], [ %3773, %3997 ], [ %4122, %4223 ], [ %3773, %3767 ]
  %3897 = phi float [ %3774, %3914 ], [ %3774, %3997 ], [ %4167, %4223 ], [ %3774, %3767 ]
  %3898 = phi float [ %3775, %3914 ], [ %3775, %3997 ], [ %4168, %4223 ], [ %3775, %3767 ]
  %3899 = phi float [ %3776, %3914 ], [ %3776, %3997 ], [ %4169, %4223 ], [ %3776, %3767 ]
  %3900 = phi float [ %3777, %3914 ], [ %3777, %3997 ], [ %4233, %4223 ], [ %3777, %3767 ]
  %3901 = phi float [ %3778, %3914 ], [ %3778, %3997 ], [ %4234, %4223 ], [ %3778, %3767 ]
  %3902 = phi float [ %3779, %3914 ], [ %3779, %3997 ], [ %4235, %4223 ], [ %3779, %3767 ]
  %3903 = phi float [ %3780, %3914 ], [ %3780, %3997 ], [ %4103, %4223 ], [ %3780, %3767 ]
  %3904 = phi float [ %3781, %3914 ], [ %3781, %3997 ], [ %4104, %4223 ], [ %3781, %3767 ]
  %3905 = phi float [ %3782, %3914 ], [ %3782, %3997 ], [ %4105, %4223 ], [ %3782, %3767 ]
  %3906 = phi float [ %3783, %3914 ], [ %3783, %3997 ], [ %4177, %4223 ], [ %3783, %3767 ]
  %3907 = phi float [ %3784, %3914 ], [ %3784, %3997 ], [ %4174, %4223 ], [ %3784, %3767 ]
  %3908 = phi float [ %3785, %3914 ], [ %3785, %3997 ], [ %4171, %4223 ], [ %3785, %3767 ]
  %3909 = phi float [ %3786, %3914 ], [ %3786, %3997 ], [ %4120, %4223 ], [ %3786, %3767 ]
  %3910 = phi float [ %3787, %3914 ], [ %3787, %3997 ], [ %4115, %4223 ], [ %3787, %3767 ]
  %3911 = phi float [ %3788, %3914 ], [ %3788, %3997 ], [ %4116, %4223 ], [ %3788, %3767 ]
  %3912 = phi float [ %3789, %3914 ], [ %3789, %3997 ], [ %4117, %4223 ], [ %3789, %3767 ]
  %3913 = icmp eq i32 %3793, 0
  br i1 %3913, label %4236, label %3767

; <label>:3914                                    ; preds = %3767
  %3915 = extractvalue %dx.types.ResRet.f32 %3797, 3
  %3916 = extractvalue %dx.types.ResRet.f32 %3816, 3
  %3917 = extractvalue %dx.types.ResRet.f32 %3816, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3816, 0
  %3919 = extractvalue %dx.types.ResRet.f32 %3806, 1
  %3920 = extractvalue %dx.types.ResRet.f32 %3806, 0
  %3921 = extractvalue %dx.types.ResRet.i32 %3802, 3
  %3922 = extractvalue %dx.types.ResRet.i32 %3802, 2
  %3923 = bitcast float %3915 to i32
  %3924 = add i32 %3921, 0
  %3925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3924, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3927 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3925, %dx.types.Handle %3926, float %3851, float %3858, float undef, float undef, i32 0, i32 0, i32 undef, float %3879, float %3881, float undef, float %3880, float %3882, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3928 = extractvalue %dx.types.ResRet.f32 %3927, 0
  %3929 = fmul fast float %3928, %3920
  %3930 = fadd fast float %3929, %3919
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fmul fast float %3851, %3811
  %3933 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3858, float %3932)  ; FMad(a,b,c)
  %3934 = fadd fast float %3933, %3918
  %3935 = fmul fast float %3851, %3813
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3858, float %3935)  ; FMad(a,b,c)
  %3937 = fadd fast float %3936, %3917
  %3938 = fmul fast float %3879, %3811
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3881, float %3938)  ; FMad(a,b,c)
  %3940 = fmul fast float %3879, %3813
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3881, float %3940)  ; FMad(a,b,c)
  %3942 = fmul fast float %3880, %3811
  %3943 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3882, float %3942)  ; FMad(a,b,c)
  %3944 = fmul fast float %3880, %3813
  %3945 = call float @dx.op.tertiary.f32(i32 46, float %3814, float %3882, float %3944)  ; FMad(a,b,c)
  %3946 = add i32 %3922, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3947, %dx.types.Handle %3926, float %3934, float %3937, float undef, float undef, i32 0, i32 0, i32 undef, float %3939, float %3941, float undef, float %3943, float %3945, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = and i32 %3923, 1024
  %3951 = icmp ne i32 %3950, 0
  %3952 = fcmp fast ogt float %3949, 0x3FE0101020000000
  %3953 = uitofp i1 %3952 to float
  %3954 = select i1 %3951, float %3953, float %3949
  %3955 = and i32 %3923, 8192
  %3956 = icmp ne i32 %3955, 0
  %3957 = select i1 %3956, float %3916, float 1.000000e+00
  %3958 = fmul fast float %3851, 2.000000e+00
  %3959 = fadd fast float %3958, -1.000000e+00
  %3960 = call float @dx.op.unary.f32(i32 6, float %3959)  ; FAbs(value)
  %3961 = fmul fast float %3960, %3844
  %3962 = fsub fast float %3961, %3844
  %3963 = call float @dx.op.unary.f32(i32 7, float %3962)  ; Saturate(value)
  %3964 = fmul fast float %3858, 2.000000e+00
  %3965 = fadd fast float %3964, -1.000000e+00
  %3966 = call float @dx.op.unary.f32(i32 6, float %3965)  ; FAbs(value)
  %3967 = fmul fast float %3966, %3845
  %3968 = fsub fast float %3967, %3845
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3970 = fmul fast float %3870, %3807
  %3971 = fsub fast float %3970, %3807
  %3972 = call float @dx.op.unary.f32(i32 7, float %3971)  ; Saturate(value)
  %3973 = fmul fast float %3931, %3957
  %3974 = fmul fast float %3973, %3928
  %3975 = fmul fast float %3974, %3963
  %3976 = fmul fast float %3975, %3954
  %3977 = fmul fast float %3976, %3969
  %3978 = fmul fast float %3977, %3972
  %3979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3979, 1
  %3981 = extractvalue %dx.types.CBufRet.f32 %3979, 0
  %3982 = fsub fast float %3887, %3981
  %3983 = fmul fast float %3982, %3980
  %3984 = call float @dx.op.unary.f32(i32 7, float %3983)  ; Saturate(value)
  %3985 = fmul fast float %3978, %3808
  %3986 = fadd fast float %3978, %3808
  %3987 = fmul fast float %3986, %3817
  %3988 = fsub fast float %3987, %3817
  %3989 = call float @dx.op.unary.f32(i32 7, float %3988)  ; Saturate(value)
  %3990 = and i32 %3923, 128
  %3991 = icmp ne i32 %3990, 0
  %3992 = select i1 %3991, float %3989, float %3985
  %3993 = fmul fast float %3992, %3984
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 0
  %3996 = fcmp fast ugt float %3993, %3995
  br i1 %3996, label %3997, label %3891

; <label>:3997                                    ; preds = %3914
  %3998 = select i1 %3956, float %3993, float 0.000000e+00
  %3999 = fadd fast float %3998, %3769
  %4000 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  br i1 %3956, label %3891, label %4001

; <label>:4001                                    ; preds = %3997
  %4002 = and i32 %3923, 4
  %4003 = and i32 %3923, 8
  %4004 = add i32 %3803, 0
  %4005 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4004, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4007 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4005, %dx.types.Handle %4006, float %3934, float %3937, float undef, float undef, i32 0, i32 0, i32 undef, float %3939, float %3941, float undef, float %3943, float %3945, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = extractvalue %dx.types.ResRet.f32 %4007, 1
  %4010 = extractvalue %dx.types.ResRet.f32 %4007, 2
  %4011 = extractvalue %dx.types.ResRet.f32 %4007, 3
  %4012 = bitcast float %3829 to i32
  %4013 = and i32 %4012, 255
  %4014 = uitofp i32 %4013 to float
  %4015 = lshr i32 %4012, 8
  %4016 = and i32 %4015, 255
  %4017 = uitofp i32 %4016 to float
  %4018 = fmul fast float %4011, %4014
  %4019 = fadd fast float %4018, %4017
  %4020 = fmul fast float %4019, 0x3F70101000000000
  %4021 = add i32 %3804, 0
  %4022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4021, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4023 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4022, %dx.types.Handle %4006, float %3934, float %3937, float undef, float undef, i32 0, i32 0, i32 undef, float %3939, float %3941, float undef, float %3943, float %3945, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4024 = extractvalue %dx.types.ResRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.f32 %4023, 1
  %4026 = extractvalue %dx.types.ResRet.f32 %4023, 2
  %4027 = extractvalue %dx.types.ResRet.f32 %4023, 3
  %4028 = bitcast float %3823 to i32
  %4029 = and i32 %4028, 255
  %4030 = uitofp i32 %4029 to float
  %4031 = lshr i32 %4028, 8
  %4032 = and i32 %4031, 255
  %4033 = uitofp i32 %4032 to float
  %4034 = lshr i32 %4028, 16
  %4035 = and i32 %4034, 255
  %4036 = uitofp i32 %4035 to float
  %4037 = fmul fast float %4036, 0x3F70101000000000
  %4038 = fmul fast float %4024, %4030
  %4039 = fadd fast float %4038, %4033
  %4040 = fmul fast float %4039, 0x3F70101000000000
  %4041 = fadd fast float %4025, -5.000000e-01
  %4042 = fadd fast float %4027, -5.000000e-01
  %4043 = fmul fast float %4041, %4037
  %4044 = fmul fast float %4042, %4037
  %4045 = fadd fast float %4043, 5.000000e-01
  %4046 = fadd fast float %4044, 5.000000e-01
  %4047 = fmul fast float %4008, %3832
  %4048 = fmul fast float %4009, %3833
  %4049 = fmul fast float %4010, %3834
  %4050 = fmul fast float %4045, 2.000000e+00
  %4051 = fadd fast float %4050, -1.000000e+00
  %4052 = fmul fast float %4046, 2.000000e+00
  %4053 = fadd fast float %4052, -1.000000e+00
  %4054 = fadd fast float %4051, %4053
  %4055 = fmul fast float %4054, 5.000000e-01
  %4056 = fsub fast float %4051, %4053
  %4057 = fmul fast float %4056, 5.000000e-01
  %4058 = call float @dx.op.unary.f32(i32 6, float %4055)  ; FAbs(value)
  %4059 = fsub fast float 1.000000e+00, %4058
  %4060 = call float @dx.op.unary.f32(i32 6, float %4057)  ; FAbs(value)
  %4061 = fsub fast float %4059, %4060
  %4062 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4057, float %4061, float %4055, float %4057, float %4061)  ; Dot3(ax,ay,az,bx,by,bz)
  %4063 = call float @dx.op.unary.f32(i32 25, float %4062)  ; Rsqrt(value)
  %4064 = fmul fast float %4055, %4063
  %4065 = fmul fast float %4057, %4063
  %4066 = fmul fast float %4063, %4061
  %4067 = fmul fast float %4066, %3798
  %4068 = fmul fast float %4066, %3799
  %4069 = fmul fast float %4066, %3800
  %4070 = fmul fast float %4064, %3820
  %4071 = fmul fast float %4064, %3821
  %4072 = fmul fast float %4064, %3822
  %4073 = fadd fast float %4070, %4067
  %4074 = fadd fast float %4071, %4068
  %4075 = fadd fast float %4072, %4069
  %4076 = fmul fast float %4065, %3826
  %4077 = fmul fast float %4065, %3827
  %4078 = fmul fast float %4065, %3828
  %4079 = fadd fast float %4073, %4076
  %4080 = fadd fast float %4074, %4077
  %4081 = fadd fast float %4075, %4078
  %4082 = call float @dx.op.dot3.f32(i32 55, float %4079, float %4080, float %4081, float %4079, float %4080, float %4081)  ; Dot3(ax,ay,az,bx,by,bz)
  %4083 = call float @dx.op.unary.f32(i32 25, float %4082)  ; Rsqrt(value)
  %4084 = fmul fast float %4079, %4083
  %4085 = fmul fast float %4080, %4083
  %4086 = fmul fast float %4081, %4083
  %4087 = icmp ne i32 %4003, 0
  %4088 = select i1 %4087, float 1.000000e+00, float 0.000000e+00
  %4089 = fmul fast float %3993, %4088
  %4090 = and i32 %3923, 1
  %4091 = icmp eq i32 %4090, 0
  br i1 %4091, label %4092, label %4096

; <label>:4092                                    ; preds = %4001
  %4093 = fsub fast float %4084, %3780
  %4094 = fsub fast float %4085, %3781
  %4095 = fsub fast float %4086, %3782
  br label %4096

; <label>:4096                                    ; preds = %4092, %4001
  %4097 = phi float [ %4093, %4092 ], [ %4084, %4001 ]
  %4098 = phi float [ %4094, %4092 ], [ %4085, %4001 ]
  %4099 = phi float [ %4095, %4092 ], [ %4086, %4001 ]
  %4100 = fmul float %4099, %4089
  %4101 = fmul float %4098, %4089
  %4102 = fmul float %4097, %4089
  %4103 = fadd fast float %4102, %3780
  %4104 = fadd fast float %4101, %3781
  %4105 = fadd fast float %4100, %3782
  %4106 = icmp ne i32 %4002, 0
  %4107 = select i1 %4106, float 1.000000e+00, float 0.000000e+00
  %4108 = fmul fast float %3993, %4107
  %4109 = fsub fast float %4047, %3787
  %4110 = fsub fast float %4048, %3788
  %4111 = fsub fast float %4049, %3789
  %4112 = fmul fast float %4109, %4108
  %4113 = fmul fast float %4110, %4108
  %4114 = fmul fast float %4111, %4108
  %4115 = fadd fast float %4112, %3787
  %4116 = fadd fast float %4113, %3788
  %4117 = fadd fast float %4114, %3789
  %4118 = fsub fast float %4020, %3786
  %4119 = fmul fast float %4118, %4108
  %4120 = fadd fast float %4119, %3786
  %4121 = fmul fast float %4108, %3773
  %4122 = fsub fast float %3773, %4121
  %4123 = fmul fast float %4108, %3772
  %4124 = fsub fast float %3772, %4123
  %4125 = bitcast float %3841 to i32
  %4126 = lshr i32 %4125, 16
  %4127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4126)  ; LegacyF16ToF32(value)
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = and i32 %4129, 1
  %4131 = icmp eq i32 %4130, 0
  br i1 %4131, label %4132, label %4157

; <label>:4132                                    ; preds = %4096
  %4133 = fadd fast float %4020, 0xBFB99999A0000000
  %4134 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4135 = fmul fast float %4134, 0x3FF1C71C80000000
  %4136 = fsub fast float 1.000000e+00, %4135
  %4137 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4138 = fmul fast float %4137, %4047
  %4139 = fmul fast float %4137, %4048
  %4140 = fmul fast float %4137, %4049
  %4141 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4142 = call float @dx.op.unary.f32(i32 7, float %4139)  ; Saturate(value)
  %4143 = call float @dx.op.unary.f32(i32 7, float %4140)  ; Saturate(value)
  %4144 = call float @dx.op.binary.f32(i32 35, float %4142, float %4143)  ; FMax(a,b)
  %4145 = call float @dx.op.binary.f32(i32 35, float %4141, float %4144)  ; FMax(a,b)
  %4146 = fcmp fast ogt float %4145, 0.000000e+00
  %4147 = bitcast float %4145 to i32
  %4148 = sub nsw i32 2129859010, %4147
  %4149 = bitcast i32 %4148 to float
  %4150 = select i1 %4146, float %4149, float 0.000000e+00
  %4151 = fmul fast float %4141, %4127
  %4152 = fmul fast float %4142, %4127
  %4153 = fmul fast float %4143, %4127
  %4154 = fmul fast float %4151, %4150
  %4155 = fmul fast float %4152, %4150
  %4156 = fmul fast float %4153, %4150
  br label %4157

; <label>:4157                                    ; preds = %4132, %4096
  %4158 = phi float [ %4127, %4096 ], [ %4154, %4132 ]
  %4159 = phi float [ %4127, %4096 ], [ %4155, %4132 ]
  %4160 = phi float [ %4127, %4096 ], [ %4156, %4132 ]
  %4161 = fsub fast float %4158, %3774
  %4162 = fsub fast float %4159, %3775
  %4163 = fsub fast float %4160, %3776
  %4164 = fmul fast float %4161, %4108
  %4165 = fmul fast float %4162, %4108
  %4166 = fmul fast float %4163, %4108
  %4167 = fadd fast float %4164, %3774
  %4168 = fadd fast float %4165, %3775
  %4169 = fadd fast float %4166, %3776
  %4170 = fadd fast float %3993, %3785
  %4171 = call float @dx.op.unary.f32(i32 7, float %4170)  ; Saturate(value)
  %4172 = fsub fast float %4040, %3784
  %4173 = fmul fast float %4172, %4089
  %4174 = fadd fast float %4173, %3784
  %4175 = fsub fast float %4026, %3783
  %4176 = fmul fast float %4175, %4089
  %4177 = fadd fast float %4176, %3783
  %4178 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.CBufRet.f32 %4179, 1
  %4182 = fmul fast float %4181, %4178
  %4183 = fadd fast float %4182, %4180
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = bitcast float %3835 to i32
  %4186 = and i32 %4185, 65535
  %4187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4186)  ; LegacyF16ToF32(value)
  %4188 = lshr i32 %4185, 16
  %4189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4188)  ; LegacyF16ToF32(value)
  %4190 = fcmp fast oge float %4187, 0.000000e+00
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = select i1 %4190, float %4187, float %4192
  %4194 = fadd fast float %4193, %4189
  %4195 = fsub fast float %4184, %3771
  %4196 = fmul fast float %4195, %3993
  %4197 = fadd fast float %4196, %3771
  %4198 = fmul fast float %4194, %3993
  %4199 = call float @dx.op.binary.f32(i32 35, float %3770, float %4198)  ; FMax(a,b)
  %4200 = and i32 %3923, 16
  %4201 = icmp eq i32 %4200, 0
  br i1 %4201, label %4223, label %4202

; <label>:4202                                    ; preds = %4157
  %4203 = add i32 %3838, 0
  %4204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4203, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4205 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4204, %dx.types.Handle %4006, float %3934, float %3937, float undef, float undef, i32 0, i32 0, i32 undef, float %3939, float %3941, float undef, float %3943, float %3945, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = extractvalue %dx.types.ResRet.f32 %4205, 1
  %4208 = extractvalue %dx.types.ResRet.f32 %4205, 2
  %4209 = and i32 %4125, 65535
  %4210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4209)  ; LegacyF16ToF32(value)
  %4211 = fmul fast float %4206, %3832
  %4212 = fmul fast float %4207, %3833
  %4213 = fmul fast float %4208, %3834
  %4214 = and i32 %3923, 16384
  %4215 = icmp ne i32 %4214, 0
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = select i1 %4215, float %4217, float 1.000000e+00
  %4219 = fmul fast float %4218, %4210
  %4220 = fmul fast float %4211, %4219
  %4221 = fmul fast float %4212, %4219
  %4222 = fmul fast float %4213, %4219
  br label %4223

; <label>:4223                                    ; preds = %4202, %4157
  %4224 = phi float [ %4220, %4202 ], [ 0.000000e+00, %4157 ]
  %4225 = phi float [ %4221, %4202 ], [ 0.000000e+00, %4157 ]
  %4226 = phi float [ %4222, %4202 ], [ 0.000000e+00, %4157 ]
  %4227 = fsub fast float %4224, %3777
  %4228 = fsub fast float %4225, %3778
  %4229 = fsub fast float %4226, %3779
  %4230 = fmul fast float %4227, %3993
  %4231 = fmul fast float %4228, %3993
  %4232 = fmul fast float %4229, %3993
  %4233 = fadd fast float %4230, %3777
  %4234 = fadd fast float %4231, %3778
  %4235 = fadd fast float %4232, %3779
  br label %3891

; <label>:4236                                    ; preds = %3891
  br label %4237

; <label>:4237                                    ; preds = %4236, %3704
  %4238 = phi float [ 0.000000e+00, %3704 ], [ %3892, %4236 ]
  %4239 = phi float [ %3648, %3704 ], [ %3893, %4236 ]
  %4240 = phi float [ %3639, %3704 ], [ %3894, %4236 ]
  %4241 = phi float [ 0.000000e+00, %3704 ], [ %3895, %4236 ]
  %4242 = phi float [ 0.000000e+00, %3704 ], [ %3896, %4236 ]
  %4243 = phi float [ %3629, %3704 ], [ %3897, %4236 ]
  %4244 = phi float [ %3630, %3704 ], [ %3898, %4236 ]
  %4245 = phi float [ %3631, %3704 ], [ %3899, %4236 ]
  %4246 = phi float [ %3670, %3704 ], [ %3900, %4236 ]
  %4247 = phi float [ %3672, %3704 ], [ %3901, %4236 ]
  %4248 = phi float [ %3674, %3704 ], [ %3902, %4236 ]
  %4249 = phi float [ %3700, %3704 ], [ %3903, %4236 ]
  %4250 = phi float [ %3701, %3704 ], [ %3904, %4236 ]
  %4251 = phi float [ %3702, %3704 ], [ %3905, %4236 ]
  %4252 = phi float [ %3637, %3704 ], [ %3906, %4236 ]
  %4253 = phi float [ %3636, %3704 ], [ %3907, %4236 ]
  %4254 = phi float [ 0.000000e+00, %3704 ], [ %3908, %4236 ]
  %4255 = phi float [ %3635, %3704 ], [ %3909, %4236 ]
  %4256 = phi float [ %3655, %3704 ], [ %3910, %4236 ]
  %4257 = phi float [ %3656, %3704 ], [ %3911, %4236 ]
  %4258 = phi float [ %3657, %3704 ], [ %3912, %4236 ]
  %4259 = call float @dx.op.dot3.f32(i32 55, float %4249, float %4250, float %4251, float %4249, float %4250, float %4251)  ; Dot3(ax,ay,az,bx,by,bz)
  %4260 = call float @dx.op.unary.f32(i32 25, float %4259)  ; Rsqrt(value)
  %4261 = fmul fast float %4260, %4249
  %4262 = fmul fast float %4260, %4250
  %4263 = fmul fast float %4260, %4251
  %4264 = fadd fast float %4254, %1145
  %4265 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4266 = call float @dx.op.dot3.f32(i32 55, float %4261, float %4262, float %4263, float %4261, float %4262, float %4263)  ; Dot3(ax,ay,az,bx,by,bz)
  %4267 = call float @dx.op.unary.f32(i32 25, float %4266)  ; Rsqrt(value)
  %4268 = fmul fast float %4267, %4261
  %4269 = fmul fast float %4267, %4262
  %4270 = fmul fast float %4267, %4263
  br label %4271

; <label>:4271                                    ; preds = %4237, %3623
  %4272 = phi float [ %4268, %4237 ], [ %3700, %3623 ]
  %4273 = phi float [ %4269, %4237 ], [ %3701, %3623 ]
  %4274 = phi float [ %4270, %4237 ], [ %3702, %3623 ]
  %4275 = phi float [ %4256, %4237 ], [ %3655, %3623 ]
  %4276 = phi float [ %4257, %4237 ], [ %3656, %3623 ]
  %4277 = phi float [ %4258, %4237 ], [ %3657, %3623 ]
  %4278 = phi float [ %4246, %4237 ], [ %3670, %3623 ]
  %4279 = phi float [ %4247, %4237 ], [ %3672, %3623 ]
  %4280 = phi float [ %4248, %4237 ], [ %3674, %3623 ]
  %4281 = phi float [ %4243, %4237 ], [ %3629, %3623 ]
  %4282 = phi float [ %4244, %4237 ], [ %3630, %3623 ]
  %4283 = phi float [ %4245, %4237 ], [ %3631, %3623 ]
  %4284 = phi float [ %4255, %4237 ], [ %3635, %3623 ]
  %4285 = phi float [ %4265, %4237 ], [ %1145, %3623 ]
  %4286 = phi float [ %4253, %4237 ], [ %3636, %3623 ]
  %4287 = phi float [ %4252, %4237 ], [ %3637, %3623 ]
  %4288 = phi float [ %4242, %4237 ], [ 0.000000e+00, %3623 ]
  %4289 = phi float [ %4241, %4237 ], [ 0.000000e+00, %3623 ]
  %4290 = phi float [ %4238, %4237 ], [ 0.000000e+00, %3623 ]
  %4291 = phi float [ %4239, %4237 ], [ %3648, %3623 ]
  %4292 = phi float [ %4240, %4237 ], [ %3639, %3623 ]
  %4293 = add i32 %51, 392
  %4294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.i32 %4294, 0
  %4296 = extractvalue %dx.types.ResRet.i32 %4294, 1
  %4297 = extractvalue %dx.types.ResRet.i32 %4294, 2
  %4298 = extractvalue %dx.types.ResRet.i32 %4294, 3
  %4299 = bitcast i32 %4295 to float
  %4300 = bitcast i32 %4296 to float
  %4301 = bitcast i32 %4297 to float
  %4302 = bitcast i32 %4298 to float
  %4303 = fsub fast float %4275, %4299
  %4304 = fsub fast float %4276, %4300
  %4305 = fsub fast float %4277, %4301
  %4306 = fmul fast float %4303, %235
  %4307 = fmul fast float %4304, %235
  %4308 = fmul fast float %4305, %235
  %4309 = fadd fast float %4306, %4299
  %4310 = fadd fast float %4307, %4300
  %4311 = fadd fast float %4308, %4301
  %4312 = fsub fast float %4285, %4302
  %4313 = fmul fast float %4312, %235
  %4314 = fadd fast float %4313, %4302
  %4315 = fadd fast float %4284, 0xBFB99999A0000000
  %4316 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4317 = fmul fast float %4316, 0x3FF1C71C80000000
  %4318 = call float @dx.op.binary.f32(i32 36, float %4284, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4319 = fsub fast float 1.000000e+00, %4317
  %4320 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4321 = fmul fast float %4309, %4320
  %4322 = fmul fast float %4310, %4320
  %4323 = fmul fast float %4311, %4320
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  %4327 = fmul fast float %4309, %4317
  %4328 = fmul fast float %4310, %4317
  %4329 = fmul fast float %4311, %4317
  %4330 = fadd fast float %4327, %4318
  %4331 = fadd fast float %4328, %4318
  %4332 = fadd fast float %4329, %4318
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %4338 = extractvalue %dx.types.ResRet.i32 %4337, 0
  %4339 = and i32 %4338, 1
  %4340 = icmp eq i32 %4339, 0
  br i1 %4340, label %4355, label %4341

; <label>:4341                                    ; preds = %4271
  %4342 = call float @dx.op.binary.f32(i32 35, float %4325, float %4326)  ; FMax(a,b)
  %4343 = call float @dx.op.binary.f32(i32 35, float %4324, float %4342)  ; FMax(a,b)
  %4344 = fcmp fast ogt float %4343, 0.000000e+00
  %4345 = bitcast float %4343 to i32
  %4346 = sub nsw i32 2129859010, %4345
  %4347 = bitcast i32 %4346 to float
  %4348 = select i1 %4344, float %4347, float 0.000000e+00
  %4349 = fmul fast float %4324, %4281
  %4350 = fmul fast float %4325, %4282
  %4351 = fmul fast float %4326, %4283
  %4352 = fmul fast float %4349, %4348
  %4353 = fmul fast float %4350, %4348
  %4354 = fmul fast float %4351, %4348
  br label %4355

; <label>:4355                                    ; preds = %4341, %4271
  %4356 = phi float [ %4352, %4341 ], [ %4281, %4271 ]
  %4357 = phi float [ %4353, %4341 ], [ %4282, %4271 ]
  %4358 = phi float [ %4354, %4341 ], [ %4283, %4271 ]
  %4359 = fadd fast float %4324, 0xBFD51EB860000000
  %4360 = fadd fast float %4325, 0xBFD51EB860000000
  %4361 = fadd fast float %4326, 0xBFD51EB860000000
  %4362 = fmul fast float %4359, %4359
  %4363 = fmul fast float %4360, %4360
  %4364 = fmul fast float %4361, %4361
  %4365 = fmul fast float %4362, %4362
  %4366 = fmul fast float %4365, 1.000000e+02
  %4367 = fmul fast float %4363, %4363
  %4368 = fmul fast float %4367, 1.000000e+02
  %4369 = fmul fast float %4364, %4364
  %4370 = fmul fast float %4369, 1.000000e+02
  %4371 = fadd fast float %4366, 3.500000e+00
  %4372 = fadd fast float %4368, 3.500000e+00
  %4373 = fadd fast float %4370, 3.500000e+00
  %4374 = call float @dx.op.binary.f32(i32 35, float %4356, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4375 = call float @dx.op.binary.f32(i32 35, float %4357, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4376 = call float @dx.op.binary.f32(i32 35, float %4358, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4377 = fdiv fast float %4371, %4374
  %4378 = fdiv fast float %4372, %4375
  %4379 = fdiv fast float %4373, %4376
  %4380 = fmul fast float %3638, 0xBFF7154760000000
  %4381 = fmul fast float %4380, %4377
  %4382 = call float @dx.op.unary.f32(i32 21, float %4381)  ; Exp(value)
  %4383 = fmul fast float %4382, 2.500000e-01
  %4384 = fmul fast float %3638, 0xBFDEC709E0000000
  %4385 = fmul fast float %4384, %4377
  %4386 = call float @dx.op.unary.f32(i32 21, float %4385)  ; Exp(value)
  %4387 = fmul fast float %4386, 7.500000e-01
  %4388 = fmul fast float %4380, %4378
  %4389 = call float @dx.op.unary.f32(i32 21, float %4388)  ; Exp(value)
  %4390 = fmul fast float %4389, 2.500000e-01
  %4391 = fmul fast float %4384, %4378
  %4392 = call float @dx.op.unary.f32(i32 21, float %4391)  ; Exp(value)
  %4393 = fmul fast float %4392, 7.500000e-01
  %4394 = fmul fast float %4380, %4379
  %4395 = call float @dx.op.unary.f32(i32 21, float %4394)  ; Exp(value)
  %4396 = fmul fast float %4395, 2.500000e-01
  %4397 = fmul fast float %4384, %4379
  %4398 = call float @dx.op.unary.f32(i32 21, float %4397)  ; Exp(value)
  %4399 = fmul fast float %4398, 7.500000e-01
  %4400 = fadd fast float %4383, %4387
  %4401 = fadd fast float %4390, %4393
  %4402 = fadd fast float %4396, %4399
  %4403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.i32 %4403, 3
  %4405 = and i32 %4404, 8
  %4406 = icmp ne i32 %4405, 0
  %4407 = call float @dx.op.binary.f32(i32 35, float %4324, float %4309)  ; FMax(a,b)
  %4408 = call float @dx.op.binary.f32(i32 35, float %4325, float %4309)  ; FMax(a,b)
  %4409 = call float @dx.op.binary.f32(i32 35, float %4326, float %4309)  ; FMax(a,b)
  %4410 = call float @dx.op.dot3.f32(i32 55, float %4324, float %4325, float %4326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4411 = select i1 %294, float %4309, float %4324
  %4412 = select i1 %294, float %4410, float %4325
  %4413 = select i1 %294, float 1.000000e+00, float %4326
  %4414 = select i1 %4406, float %4407, float %4411
  %4415 = select i1 %4406, float %4408, float %4412
  %4416 = select i1 %4406, float %4409, float %4413
  %4417 = and i32 %270, 3
  %4418 = select i1 %264, i32 %4417, i32 0
  %4419 = icmp eq i32 %4418, 1
  br i1 %4419, label %4420, label %4496

; <label>:4420                                    ; preds = %4355
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4423 = extractvalue %dx.types.CBufRet.f32 %4421, 1
  %4424 = fadd fast float %4422, %190
  %4425 = fadd fast float %4423, %191
  %4426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.f32 %4426, 0
  %4428 = extractvalue %dx.types.CBufRet.f32 %4426, 1
  %4429 = fsub fast float %4424, %4427
  %4430 = fsub fast float %4425, %4428
  %4431 = fmul fast float %4429, %4429
  %4432 = fmul fast float %4430, %4430
  %4433 = fadd fast float %4431, %4432
  %4434 = call float @dx.op.unary.f32(i32 24, float %4433)  ; Sqrt(value)
  %4435 = extractvalue %dx.types.CBufRet.f32 %4426, 2
  %4436 = fcmp fast olt float %4434, %4435
  br i1 %4436, label %4437, label %4490

; <label>:4437                                    ; preds = %4420
  %4438 = extractvalue %dx.types.CBufRet.f32 %4421, 2
  %4439 = fadd fast float %4438, %192
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4445 = extractvalue %dx.types.CBufRet.f32 %4444, 0
  %4446 = extractvalue %dx.types.CBufRet.f32 %4440, 1
  %4447 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4448 = extractvalue %dx.types.CBufRet.f32 %4444, 1
  %4449 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4450 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4451 = extractvalue %dx.types.CBufRet.f32 %4444, 3
  %4452 = fadd fast float %4449, %4424
  %4453 = fadd fast float %4450, %4425
  %4454 = fadd fast float %4439, %4451
  %4455 = fmul fast float %4452, %4441
  %4456 = call float @dx.op.tertiary.f32(i32 46, float %4453, float %4443, float %4455)  ; FMad(a,b,c)
  %4457 = call float @dx.op.tertiary.f32(i32 46, float %4454, float %4445, float %4456)  ; FMad(a,b,c)
  %4458 = fmul fast float %4452, %4446
  %4459 = call float @dx.op.tertiary.f32(i32 46, float %4453, float %4447, float %4458)  ; FMad(a,b,c)
  %4460 = call float @dx.op.tertiary.f32(i32 46, float %4454, float %4448, float %4459)  ; FMad(a,b,c)
  %4461 = fsub fast float %4457, %4449
  %4462 = fsub fast float %4460, %4450
  %4463 = fsub fast float %4461, %4427
  %4464 = fadd fast float %4463, %4435
  %4465 = fsub fast float %4462, %4428
  %4466 = fadd fast float %4465, %4435
  %4467 = extractvalue %dx.types.CBufRet.f32 %4426, 3
  %4468 = fmul fast float %4464, %4467
  %4469 = fmul fast float %4466, %4467
  %4470 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4471 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4472 = fsub fast float 1.000000e+00, %4470
  %4473 = fsub fast float 1.000000e+00, %4471
  %4474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %4472, float %4473, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4475 = extractvalue %dx.types.ResRet.f32 %4474, 0
  %4476 = fcmp fast ugt float %4475, 0.000000e+00
  br i1 %4476, label %4477, label %4490

; <label>:4477                                    ; preds = %4437
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4480 = fmul fast float %4479, %4475
  %4481 = extractvalue %dx.types.CBufRet.f32 %4478, 3
  %4482 = fadd fast float %4481, %4480
  %4483 = extractvalue %dx.types.CBufRet.f32 %4444, 2
  %4484 = fadd fast float %4482, %4451
  %4485 = fmul fast float %4457, %4445
  %4486 = call float @dx.op.tertiary.f32(i32 46, float %4460, float %4448, float %4485)  ; FMad(a,b,c)
  %4487 = call float @dx.op.tertiary.f32(i32 46, float %4484, float %4483, float %4486)  ; FMad(a,b,c)
  %4488 = fsub fast float %4487, %4451
  %4489 = fsub fast float %4488, %4438
  br label %4490

; <label>:4490                                    ; preds = %4477, %4437, %4420
  %4491 = phi i1 [ true, %4477 ], [ false, %4437 ], [ false, %4420 ]
  %4492 = phi float [ %4489, %4477 ], [ -1.310720e+05, %4437 ], [ -1.310720e+05, %4420 ]
  %4493 = fsub fast float %4492, %192
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = select i1 %4491, float %4494, float 1.000000e+00
  br label %4496

; <label>:4496                                    ; preds = %4490, %4355
  %4497 = phi float [ %4495, %4490 ], [ 0.000000e+00, %4355 ]
  %4498 = icmp eq i32 %4418, 3
  %4499 = select i1 %4498, float 1.000000e+00, float %4497
  %4500 = call float @dx.op.binary.f32(i32 35, float %4290, float %4499)  ; FMax(a,b)
  %4501 = fcmp fast olt float %4499, 1.000000e+00
  br i1 %4501, label %4502, label %4675

; <label>:4502                                    ; preds = %4496
  %4503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.i32 %4503, 0
  %4505 = and i32 %4504, 7
  %4506 = icmp eq i32 %4505, 0
  br i1 %4506, label %4578, label %4507

; <label>:4507                                    ; preds = %4502
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4511 = extractvalue %dx.types.CBufRet.f32 %4508, 2
  %4512 = fadd fast float %4509, %190
  %4513 = fadd fast float %4510, %191
  %4514 = fadd fast float %4511, %192
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4518 = extractvalue %dx.types.CBufRet.f32 %4515, 2
  %4519 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 0
  %4522 = extractvalue %dx.types.CBufRet.f32 %4520, 1
  %4523 = extractvalue %dx.types.CBufRet.f32 %4520, 2
  %4524 = extractvalue %dx.types.CBufRet.f32 %4520, 3
  %4525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4526 = extractvalue %dx.types.CBufRet.f32 %4525, 0
  %4527 = extractvalue %dx.types.CBufRet.f32 %4525, 1
  %4528 = extractvalue %dx.types.CBufRet.f32 %4525, 2
  %4529 = extractvalue %dx.types.CBufRet.f32 %4525, 3
  %4530 = fmul fast float %4512, %4516
  %4531 = call float @dx.op.tertiary.f32(i32 46, float %4513, float %4517, float %4530)  ; FMad(a,b,c)
  %4532 = call float @dx.op.tertiary.f32(i32 46, float %4514, float %4518, float %4531)  ; FMad(a,b,c)
  %4533 = fadd fast float %4532, %4519
  %4534 = fmul fast float %4521, %4512
  %4535 = call float @dx.op.tertiary.f32(i32 46, float %4513, float %4522, float %4534)  ; FMad(a,b,c)
  %4536 = call float @dx.op.tertiary.f32(i32 46, float %4514, float %4523, float %4535)  ; FMad(a,b,c)
  %4537 = fadd fast float %4536, %4524
  %4538 = fmul fast float %4526, %4512
  %4539 = call float @dx.op.tertiary.f32(i32 46, float %4513, float %4527, float %4538)  ; FMad(a,b,c)
  %4540 = call float @dx.op.tertiary.f32(i32 46, float %4514, float %4528, float %4539)  ; FMad(a,b,c)
  %4541 = fadd fast float %4540, %4529
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 1
  %4544 = extractvalue %dx.types.CBufRet.f32 %4542, 0
  %4545 = fmul fast float %4544, %305
  %4546 = fadd fast float %4541, %4545
  %4547 = fmul fast float %305, 0x401921FB60000000
  %4548 = call float @dx.op.unary.f32(i32 13, float %4547)  ; Sin(value)
  %4549 = call float @dx.op.unary.f32(i32 12, float %4547)  ; Cos(value)
  %4550 = fmul fast float %4549, %4543
  %4551 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4543, float 0.000000e+00)  ; FMad(a,b,c)
  %4552 = fmul fast float %4543, %4548
  %4553 = fsub fast float -0.000000e+00, %4552
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4549, float %4543, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4555

; <label>:4555                                    ; preds = %4555, %4507
  %4556 = phi float [ 0.000000e+00, %4507 ], [ %4570, %4555 ]
  %4557 = phi i32 [ 0, %4507 ], [ %4571, %4555 ]
  %4558 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4557
  %4559 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4557
  %4560 = load float, float* %4558, align 4
  %4561 = load float, float* %4559, align 4
  %4562 = fmul fast float %4550, %4560
  %4563 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4553, float %4562)  ; FMad(a,b,c)
  %4564 = fmul fast float %4560, %4551
  %4565 = call float @dx.op.tertiary.f32(i32 46, float %4561, float %4554, float %4564)  ; FMad(a,b,c)
  %4566 = fadd fast float %4533, %4563
  %4567 = fadd fast float %4537, %4565
  %4568 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %47, float %4566, float %4567, float undef, float undef, i32 0, i32 0, i32 undef, float %4546)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4569 = extractvalue %dx.types.ResRet.f32 %4568, 0
  %4570 = fadd fast float %4569, %4556
  %4571 = add nuw nsw i32 %4557, 1
  %4572 = icmp eq i32 %4571, 4
  br i1 %4572, label %4573, label %4555

; <label>:4573                                    ; preds = %4555
  %4574 = fmul fast float %4570, 2.500000e-01
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 1
  %4577 = fmul fast float %4576, %4574
  br label %4578

; <label>:4578                                    ; preds = %4573, %4502
  %4579 = phi float [ %4574, %4573 ], [ 0.000000e+00, %4502 ]
  %4580 = phi float [ %4577, %4573 ], [ 0.000000e+00, %4502 ]
  %4581 = fcmp uge float %67, 0.000000e+00
  br i1 %4581, label %4582, label %4593

; <label>:4582                                    ; preds = %4578
  %4583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4584 = extractvalue %dx.types.ResRet.f32 %4583, 0
  %4585 = extractvalue %dx.types.ResRet.f32 %4583, 1
  %4586 = extractvalue %dx.types.ResRet.f32 %4583, 2
  %4587 = fadd fast float %4584, %4500
  %4588 = fcmp fast ogt float %66, 0.000000e+00
  %4589 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4590 = select i1 %4588, float 1.000000e+00, float %4589
  %4591 = fmul fast float %4590, %4586
  %4592 = select i1 %4588, float 0.000000e+00, float %4580
  br label %4675

; <label>:4593                                    ; preds = %4578
  %4594 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.i32 %4594, 0
  %4596 = and i32 %4595, 7
  %4597 = icmp eq i32 %4596, 0
  br i1 %4597, label %4675, label %4598

; <label>:4598                                    ; preds = %4593
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4601 = fmul fast float %4600, %4579
  %4602 = fadd fast float %4601, %4500
  %4603 = extractvalue %dx.types.CBufRet.f32 %4599, 2
  %4604 = fmul fast float %4603, %4579
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 0
  %4607 = fmul fast float %4606, %4579
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = and i32 %4595, 8
  %4610 = icmp eq i32 %4609, 0
  br i1 %4610, label %4675, label %4611

; <label>:4611                                    ; preds = %4598
  %4612 = extractvalue %dx.types.CBufRet.f32 %4608, 2
  %4613 = fadd fast float %4612, %192
  %4614 = extractvalue %dx.types.CBufRet.f32 %4608, 1
  %4615 = fadd fast float %4614, %191
  %4616 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4617 = fadd fast float %4616, %190
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4622 = fsub fast float %4617, %4619
  %4623 = fsub fast float %4615, %4620
  %4624 = fsub fast float %4613, %4621
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4629 = fmul fast float %4622, %4626
  %4630 = fmul fast float %4623, %4627
  %4631 = fmul fast float %4624, %4628
  %4632 = fcmp fast oge float %4629, 0.000000e+00
  %4633 = fcmp fast oge float %4630, 0.000000e+00
  %4634 = fcmp fast oge float %4631, 0.000000e+00
  %4635 = and i1 %4632, %4633
  %4636 = and i1 %4634, %4635
  %4637 = fcmp fast ole float %4629, 1.000000e+00
  %4638 = fcmp fast ole float %4630, 1.000000e+00
  %4639 = fcmp fast ole float %4631, 1.000000e+00
  %4640 = and i1 %4637, %4638
  %4641 = and i1 %4639, %4640
  %4642 = and i1 %4636, %4641
  br i1 %4642, label %4643, label %4675

; <label>:4643                                    ; preds = %4611
  %4644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.i32 %4644, 0
  %4646 = icmp eq i32 %4645, 0
  br i1 %4646, label %4653, label %4647

; <label>:4647                                    ; preds = %4643
  %4648 = add i32 %4645, 0
  %4649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4650 = fsub fast float -0.000000e+00, %4630
  %4651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4649, %dx.types.Handle %108, float %4629, float %4650, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  br label %4653

; <label>:4653                                    ; preds = %4647, %4643
  %4654 = phi float [ %4652, %4647 ], [ 1.000000e+00, %4643 ]
  %4655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.i32 %4655, 0
  %4657 = and i32 %4656, 32
  %4658 = icmp ne i32 %4657, 0
  %4659 = fmul fast float %4654, %4579
  %4660 = select i1 %4658, float %4654, float %4659
  %4661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.f32 %4661, 1
  %4663 = fmul fast float %4660, %4662
  %4664 = fadd fast float %4663, %4602
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 0
  %4667 = fmul fast float %4660, %4666
  %4668 = fadd fast float %4667, %4580
  %4669 = extractvalue %dx.types.CBufRet.f32 %4665, 1
  %4670 = fmul fast float %4660, %4669
  %4671 = fadd fast float %4670, %4604
  %4672 = extractvalue %dx.types.CBufRet.f32 %4665, 2
  %4673 = fmul fast float %4672, %4660
  %4674 = fadd fast float %4673, %4607
  br label %4675

; <label>:4675                                    ; preds = %4653, %4611, %4598, %4593, %4582, %4496
  %4676 = phi float [ %4500, %4593 ], [ %4500, %4496 ], [ %4587, %4582 ], [ %4664, %4653 ], [ %4602, %4611 ], [ %4602, %4598 ]
  %4677 = phi float [ %4580, %4593 ], [ 0.000000e+00, %4496 ], [ %4592, %4582 ], [ %4668, %4653 ], [ %4580, %4611 ], [ %4580, %4598 ]
  %4678 = phi float [ 0.000000e+00, %4593 ], [ 0.000000e+00, %4496 ], [ %4585, %4582 ], [ %4671, %4653 ], [ %4604, %4611 ], [ %4604, %4598 ]
  %4679 = phi float [ 0.000000e+00, %4593 ], [ 0.000000e+00, %4496 ], [ %4591, %4582 ], [ %4674, %4653 ], [ %4607, %4611 ], [ %4607, %4598 ]
  %4680 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4684 = fcmp fast une float %4682, 0.000000e+00
  %4685 = fcmp fast une float %4683, 0.000000e+00
  %4686 = or i1 %4684, %4685
  br i1 %4686, label %4687, label %5246

; <label>:4687                                    ; preds = %4675
  br i1 %4684, label %4688, label %4961

; <label>:4688                                    ; preds = %4687
  %4689 = call float @dx.op.unary.f32(i32 23, float %4287)  ; Log(value)
  %4690 = fmul fast float %4689, 4.000000e+00
  %4691 = call float @dx.op.unary.f32(i32 21, float %4690)  ; Exp(value)
  %4692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4693 = extractvalue %dx.types.CBufRet.f32 %4692, 0
  %4694 = fmul fast float %4693, %54
  %4695 = fmul fast float %4693, %55
  %4696 = fmul fast float %4693, %56
  %4697 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4698 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4699 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4700 = call float @dx.op.unary.f32(i32 23, float %4697)  ; Log(value)
  %4701 = call float @dx.op.unary.f32(i32 23, float %4698)  ; Log(value)
  %4702 = call float @dx.op.unary.f32(i32 23, float %4699)  ; Log(value)
  %4703 = fmul fast float %4700, 4.000000e+00
  %4704 = fmul fast float %4701, 4.000000e+00
  %4705 = fmul fast float %4702, 4.000000e+00
  %4706 = call float @dx.op.unary.f32(i32 21, float %4703)  ; Exp(value)
  %4707 = call float @dx.op.unary.f32(i32 21, float %4704)  ; Exp(value)
  %4708 = call float @dx.op.unary.f32(i32 21, float %4705)  ; Exp(value)
  %4709 = fadd fast float %4707, %4706
  %4710 = fadd fast float %4709, %4708
  %4711 = fdiv fast float 1.000000e+00, %4710
  %4712 = fmul fast float %4711, %4706
  %4713 = fcmp fast ogt float %63, 0.000000e+00
  %4714 = fcmp fast ogt float %64, 0.000000e+00
  %4715 = fcmp fast ogt float %65, 0.000000e+00
  %4716 = fcmp fast olt float %63, 0.000000e+00
  %4717 = fcmp fast olt float %64, 0.000000e+00
  %4718 = fcmp fast olt float %65, 0.000000e+00
  %4719 = zext i1 %4713 to i32
  %4720 = zext i1 %4714 to i32
  %4721 = zext i1 %4715 to i32
  %4722 = zext i1 %4716 to i32
  %4723 = zext i1 %4717 to i32
  %4724 = zext i1 %4718 to i32
  %4725 = sub nsw i32 %4719, %4722
  %4726 = sub nsw i32 %4720, %4723
  %4727 = sub nsw i32 %4721, %4724
  %4728 = call float @dx.op.unary.f32(i32 83, float %4694)  ; DerivCoarseX(value)
  %4729 = call float @dx.op.unary.f32(i32 83, float %4695)  ; DerivCoarseX(value)
  %4730 = call float @dx.op.unary.f32(i32 83, float %4696)  ; DerivCoarseX(value)
  %4731 = call float @dx.op.unary.f32(i32 84, float %4694)  ; DerivCoarseY(value)
  %4732 = call float @dx.op.unary.f32(i32 84, float %4695)  ; DerivCoarseY(value)
  %4733 = call float @dx.op.unary.f32(i32 84, float %4696)  ; DerivCoarseY(value)
  %4734 = fcmp fast ole float %305, %4712
  %4735 = fmul fast float %4711, %4709
  %4736 = fcmp fast ole float %305, %4735
  %4737 = select i1 %4736, float %4696, float %4694
  %4738 = select i1 %4736, float %4694, float %4695
  %4739 = select i1 %4734, float %4695, float %4737
  %4740 = select i1 %4734, float %4696, float %4738
  %4741 = select i1 %4736, float %4730, float %4728
  %4742 = select i1 %4736, float %4728, float %4729
  %4743 = select i1 %4734, float %4729, float %4741
  %4744 = select i1 %4734, float %4730, float %4742
  %4745 = select i1 %4736, float %4733, float %4731
  %4746 = select i1 %4736, float %4731, float %4732
  %4747 = select i1 %4734, float %4732, float %4745
  %4748 = select i1 %4734, float %4733, float %4746
  %4749 = call float @dx.op.unary.f32(i32 27, float %4739)  ; Round_ni(value)
  %4750 = call float @dx.op.unary.f32(i32 27, float %4740)  ; Round_ni(value)
  %4751 = fptosi float %4749 to i32
  %4752 = fptosi float %4750 to i32
  %4753 = xor i32 %4752, %4751
  %4754 = sitofp i32 %4753 to float
  %4755 = fptosi float %4754 to i32
  %4756 = sitofp i32 %4755 to float
  %4757 = fmul fast float %4756, 0x3FE3C6EF40000000
  %4758 = frem fast float %4749, 2.560000e+02
  %4759 = frem fast float %4750, 2.560000e+02
  %4760 = fptoui float %4758 to i32
  %4761 = fptoui float %4759 to i32
  %4762 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %4760, i32 %4761, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4763 = extractvalue %dx.types.ResRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.ResRet.f32 %4762, 1
  %4765 = extractvalue %dx.types.ResRet.f32 %4762, 2
  %4766 = fadd fast float %4763, %4757
  %4767 = fadd fast float %4764, %4757
  %4768 = fadd fast float %4765, %4757
  %4769 = call float @dx.op.unary.f32(i32 22, float %4766)  ; Frc(value)
  %4770 = call float @dx.op.unary.f32(i32 22, float %4767)  ; Frc(value)
  %4771 = call float @dx.op.unary.f32(i32 22, float %4768)  ; Frc(value)
  %4772 = fmul fast float %4771, 0x401921FB60000000
  %4773 = call float @dx.op.unary.f32(i32 13, float %4772)  ; Sin(value)
  %4774 = call float @dx.op.unary.f32(i32 12, float %4772)  ; Cos(value)
  %4775 = fsub fast float -0.000000e+00, %4774
  %4776 = fmul fast float %4774, %4739
  %4777 = call float @dx.op.tertiary.f32(i32 46, float %4773, float %4740, float %4776)  ; FMad(a,b,c)
  %4778 = fmul fast float %4773, %4739
  %4779 = call float @dx.op.tertiary.f32(i32 46, float %4775, float %4740, float %4778)  ; FMad(a,b,c)
  %4780 = fadd fast float %4777, %4769
  %4781 = fadd fast float %4779, %4770
  %4782 = extractvalue %dx.types.CBufRet.f32 %4692, 3
  %4783 = bitcast float %4782 to i32
  %4784 = icmp eq i32 %4783, 0
  br i1 %4784, label %4823, label %4785

; <label>:4785                                    ; preds = %4688
  %4786 = add i32 %4783, 0
  %4787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4788 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4787, %dx.types.Handle %108, float %4780, float %4781, float undef, float undef, i32 0, i32 0, i32 undef, float %4743, float %4744, float undef, float %4747, float %4748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4789 = extractvalue %dx.types.ResRet.f32 %4788, 0
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 1
  %4792 = extractvalue %dx.types.CBufRet.f32 %4790, 2
  %4793 = fsub fast float 1.000000e+00, %4682
  %4794 = call float @dx.op.binary.f32(i32 35, float %4793, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4795 = bitcast float %4682 to i32
  %4796 = sitofp i32 %4795 to float
  %4797 = fadd fast float %4796, 0xC1CFBF8940000000
  %4798 = fmul fast float %4792, %4797
  %4799 = fadd fast float %4798, 0x41CFBF8940000000
  %4800 = fptosi float %4799 to i32
  %4801 = bitcast i32 %4800 to float
  %4802 = bitcast float %4794 to i32
  %4803 = sitofp i32 %4802 to float
  %4804 = fadd fast float %4803, 0xC1CFBF8940000000
  %4805 = fmul fast float %4804, %4792
  %4806 = fadd fast float %4805, 0x41CFBF8940000000
  %4807 = fptosi float %4806 to i32
  %4808 = bitcast i32 %4807 to float
  %4809 = fmul fast float %4801, %4791
  %4810 = fmul fast float %4808, %4791
  %4811 = fsub fast float %4794, %4809
  %4812 = fadd fast float %4810, %4794
  %4813 = call float @dx.op.unary.f32(i32 7, float %4811)  ; Saturate(value)
  %4814 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4815 = fsub fast float %4789, %4813
  %4816 = fsub fast float %4814, %4813
  %4817 = bitcast float %4816 to i32
  %4818 = sub nsw i32 2129859010, %4817
  %4819 = bitcast i32 %4818 to float
  %4820 = fmul fast float %4819, %4815
  %4821 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4822 = fcmp fast olt float %4821, 0x3F70101020000000
  br i1 %4822, label %4961, label %4823

; <label>:4823                                    ; preds = %4785, %4688
  %4824 = phi float [ %4821, %4785 ], [ %4682, %4688 ]
  %4825 = fmul fast float %4824, %4691
  %4826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.i32 %4826, 1
  %4828 = extractvalue %dx.types.CBufRet.i32 %4826, 0
  %4829 = add i32 %4828, 0
  %4830 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4829, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4830, %dx.types.Handle %107, float %4780, float %4781, float undef, float undef, i32 0, i32 0, i32 undef, float %4743, float %4744, float undef, float %4747, float %4748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.ResRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.ResRet.f32 %4831, 2
  %4835 = extractvalue %dx.types.ResRet.f32 %4831, 3
  %4836 = and i32 %4827, 255
  %4837 = uitofp i32 %4836 to float
  %4838 = lshr i32 %4827, 8
  %4839 = and i32 %4838, 255
  %4840 = uitofp i32 %4839 to float
  %4841 = fmul fast float %4835, %4837
  %4842 = fadd fast float %4841, %4840
  %4843 = fmul fast float %4842, 0x3F70101000000000
  %4844 = fadd fast float %4843, 0xBFB99999A0000000
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = fmul fast float %4845, 0x3FF1C71C80000000
  %4847 = call float @dx.op.binary.f32(i32 36, float %4843, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4848 = fsub fast float 1.000000e+00, %4846
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4849, %4832
  %4851 = fmul fast float %4849, %4833
  %4852 = fmul fast float %4849, %4834
  %4853 = call float @dx.op.unary.f32(i32 7, float %4850)  ; Saturate(value)
  %4854 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4855 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4856 = fmul fast float %4846, %4832
  %4857 = fmul fast float %4846, %4833
  %4858 = fmul fast float %4846, %4834
  %4859 = fadd fast float %4856, %4847
  %4860 = fadd fast float %4857, %4847
  %4861 = fadd fast float %4858, %4847
  %4862 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4863 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4864 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.i32 %4865, 3
  %4867 = extractvalue %dx.types.CBufRet.i32 %4865, 2
  %4868 = add i32 %4867, 0
  %4869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4868, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4870 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4869, %dx.types.Handle %107, float %4780, float %4781, float undef, float undef, i32 0, i32 0, i32 undef, float %4743, float %4744, float undef, float %4747, float %4748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4871 = extractvalue %dx.types.ResRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.ResRet.f32 %4870, 1
  %4873 = extractvalue %dx.types.ResRet.f32 %4870, 2
  %4874 = extractvalue %dx.types.ResRet.f32 %4870, 3
  %4875 = and i32 %4866, 255
  %4876 = uitofp i32 %4875 to float
  %4877 = lshr i32 %4866, 8
  %4878 = and i32 %4877, 255
  %4879 = uitofp i32 %4878 to float
  %4880 = lshr i32 %4866, 16
  %4881 = and i32 %4880, 255
  %4882 = uitofp i32 %4881 to float
  %4883 = fmul fast float %4882, 0x3F70101000000000
  %4884 = fmul fast float %4871, %4876
  %4885 = fadd fast float %4884, %4879
  %4886 = fmul fast float %4885, 0x3F70101000000000
  %4887 = fadd fast float %4872, -5.000000e-01
  %4888 = fadd fast float %4874, -5.000000e-01
  %4889 = fmul fast float %4887, %4883
  %4890 = fmul fast float %4888, %4883
  %4891 = fadd fast float %4889, 5.000000e-01
  %4892 = fadd fast float %4890, 5.000000e-01
  %4893 = fmul fast float %4891, 2.000000e+00
  %4894 = fadd fast float %4893, -1.000000e+00
  %4895 = fmul fast float %4892, 2.000000e+00
  %4896 = fadd fast float %4895, -1.000000e+00
  %4897 = fadd fast float %4894, %4896
  %4898 = fmul fast float %4897, 5.000000e-01
  %4899 = fsub fast float %4894, %4896
  %4900 = fmul fast float %4899, 5.000000e-01
  %4901 = call float @dx.op.unary.f32(i32 6, float %4898)  ; FAbs(value)
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = call float @dx.op.unary.f32(i32 6, float %4900)  ; FAbs(value)
  %4904 = fsub fast float %4902, %4903
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4900, float %4904, float %4898, float %4900, float %4904)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = call float @dx.op.unary.f32(i32 25, float %4905)  ; Rsqrt(value)
  %4907 = fmul fast float %4898, %4906
  %4908 = fmul fast float %4900, %4906
  %4909 = select i1 %4736, i32 %4726, i32 %4727
  %4910 = select i1 %4734, i32 %4725, i32 %4909
  %4911 = sitofp i32 %4910 to float
  %4912 = fmul fast float %4904, %4911
  %4913 = fmul fast float %4912, %4906
  %4914 = select i1 %4736, float %4913, float %4908
  %4915 = select i1 %4736, float %4908, float %4913
  %4916 = select i1 %4734, float %4913, float %4907
  %4917 = select i1 %4734, float %4908, float %4914
  %4918 = select i1 %4734, float %4907, float %4915
  %4919 = fsub fast float %4853, %4414
  %4920 = fsub fast float %4854, %4415
  %4921 = fsub fast float %4855, %4416
  %4922 = fmul fast float %4919, %4825
  %4923 = fmul fast float %4920, %4825
  %4924 = fmul fast float %4921, %4825
  %4925 = fadd fast float %4922, %4414
  %4926 = fadd fast float %4923, %4415
  %4927 = fadd fast float %4924, %4416
  %4928 = fsub fast float %4862, %4333
  %4929 = fsub fast float %4863, %4334
  %4930 = fsub fast float %4864, %4335
  %4931 = fmul fast float %4928, %4825
  %4932 = fmul fast float %4929, %4825
  %4933 = fmul fast float %4930, %4825
  %4934 = fadd fast float %4931, %4333
  %4935 = fadd fast float %4932, %4334
  %4936 = fadd fast float %4933, %4335
  %4937 = fadd fast float %4916, %4272
  %4938 = fadd fast float %4917, %4273
  %4939 = fadd fast float %4918, %4274
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4937, float %4938, float %4939, float %4937, float %4938, float %4939)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 25, float %4940)  ; Rsqrt(value)
  %4942 = fmul fast float %4937, %4941
  %4943 = fmul fast float %4938, %4941
  %4944 = fmul fast float %4939, %4941
  %4945 = fsub fast float %4942, %4272
  %4946 = fsub fast float %4943, %4273
  %4947 = fsub fast float %4944, %4274
  %4948 = fmul fast float %4945, %4825
  %4949 = fmul fast float %4946, %4825
  %4950 = fmul fast float %4947, %4825
  %4951 = fadd fast float %4948, %4272
  %4952 = fadd fast float %4949, %4273
  %4953 = fadd fast float %4950, %4274
  %4954 = call float @dx.op.binary.f32(i32 36, float %4287, float %4873)  ; FMin(a,b)
  %4955 = fsub fast float %4954, %4287
  %4956 = fmul fast float %4955, %4825
  %4957 = fadd fast float %4956, %4287
  %4958 = fsub fast float %4886, %4336
  %4959 = fmul fast float %4958, %4825
  %4960 = fadd fast float %4959, %4336
  br label %4961

; <label>:4961                                    ; preds = %4823, %4785, %4687
  %4962 = phi float [ %4951, %4823 ], [ %4272, %4785 ], [ %4272, %4687 ]
  %4963 = phi float [ %4952, %4823 ], [ %4273, %4785 ], [ %4273, %4687 ]
  %4964 = phi float [ %4953, %4823 ], [ %4274, %4785 ], [ %4274, %4687 ]
  %4965 = phi float [ %4934, %4823 ], [ %4333, %4785 ], [ %4333, %4687 ]
  %4966 = phi float [ %4935, %4823 ], [ %4334, %4785 ], [ %4334, %4687 ]
  %4967 = phi float [ %4936, %4823 ], [ %4335, %4785 ], [ %4335, %4687 ]
  %4968 = phi float [ %4925, %4823 ], [ %4414, %4785 ], [ %4414, %4687 ]
  %4969 = phi float [ %4926, %4823 ], [ %4415, %4785 ], [ %4415, %4687 ]
  %4970 = phi float [ %4927, %4823 ], [ %4416, %4785 ], [ %4416, %4687 ]
  %4971 = phi float [ %4960, %4823 ], [ %4336, %4785 ], [ %4336, %4687 ]
  %4972 = phi float [ %4957, %4823 ], [ %4287, %4785 ], [ %4287, %4687 ]
  br i1 %4685, label %4973, label %5246

; <label>:4973                                    ; preds = %4961
  %4974 = call float @dx.op.unary.f32(i32 23, float %4972)  ; Log(value)
  %4975 = fmul fast float %4974, 4.000000e+00
  %4976 = call float @dx.op.unary.f32(i32 21, float %4975)  ; Exp(value)
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = fmul fast float %4978, %54
  %4980 = fmul fast float %4978, %55
  %4981 = fmul fast float %4978, %56
  %4982 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4983 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %4984 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %4985 = call float @dx.op.unary.f32(i32 23, float %4982)  ; Log(value)
  %4986 = call float @dx.op.unary.f32(i32 23, float %4983)  ; Log(value)
  %4987 = call float @dx.op.unary.f32(i32 23, float %4984)  ; Log(value)
  %4988 = fmul fast float %4985, 4.000000e+00
  %4989 = fmul fast float %4986, 4.000000e+00
  %4990 = fmul fast float %4987, 4.000000e+00
  %4991 = call float @dx.op.unary.f32(i32 21, float %4988)  ; Exp(value)
  %4992 = call float @dx.op.unary.f32(i32 21, float %4989)  ; Exp(value)
  %4993 = call float @dx.op.unary.f32(i32 21, float %4990)  ; Exp(value)
  %4994 = fadd fast float %4992, %4991
  %4995 = fadd fast float %4994, %4993
  %4996 = fdiv fast float 1.000000e+00, %4995
  %4997 = fmul fast float %4996, %4991
  %4998 = fcmp fast ogt float %63, 0.000000e+00
  %4999 = fcmp fast ogt float %64, 0.000000e+00
  %5000 = fcmp fast ogt float %65, 0.000000e+00
  %5001 = fcmp fast olt float %63, 0.000000e+00
  %5002 = fcmp fast olt float %64, 0.000000e+00
  %5003 = fcmp fast olt float %65, 0.000000e+00
  %5004 = zext i1 %4998 to i32
  %5005 = zext i1 %4999 to i32
  %5006 = zext i1 %5000 to i32
  %5007 = zext i1 %5001 to i32
  %5008 = zext i1 %5002 to i32
  %5009 = zext i1 %5003 to i32
  %5010 = sub nsw i32 %5004, %5007
  %5011 = sub nsw i32 %5005, %5008
  %5012 = sub nsw i32 %5006, %5009
  %5013 = call float @dx.op.unary.f32(i32 83, float %4979)  ; DerivCoarseX(value)
  %5014 = call float @dx.op.unary.f32(i32 83, float %4980)  ; DerivCoarseX(value)
  %5015 = call float @dx.op.unary.f32(i32 83, float %4981)  ; DerivCoarseX(value)
  %5016 = call float @dx.op.unary.f32(i32 84, float %4979)  ; DerivCoarseY(value)
  %5017 = call float @dx.op.unary.f32(i32 84, float %4980)  ; DerivCoarseY(value)
  %5018 = call float @dx.op.unary.f32(i32 84, float %4981)  ; DerivCoarseY(value)
  %5019 = fcmp fast ole float %305, %4997
  %5020 = fmul fast float %4996, %4994
  %5021 = fcmp fast ole float %305, %5020
  %5022 = select i1 %5021, float %4981, float %4979
  %5023 = select i1 %5021, float %4979, float %4980
  %5024 = select i1 %5019, float %4980, float %5022
  %5025 = select i1 %5019, float %4981, float %5023
  %5026 = select i1 %5021, float %5015, float %5013
  %5027 = select i1 %5021, float %5013, float %5014
  %5028 = select i1 %5019, float %5014, float %5026
  %5029 = select i1 %5019, float %5015, float %5027
  %5030 = select i1 %5021, float %5018, float %5016
  %5031 = select i1 %5021, float %5016, float %5017
  %5032 = select i1 %5019, float %5017, float %5030
  %5033 = select i1 %5019, float %5018, float %5031
  %5034 = call float @dx.op.unary.f32(i32 27, float %5024)  ; Round_ni(value)
  %5035 = call float @dx.op.unary.f32(i32 27, float %5025)  ; Round_ni(value)
  %5036 = fptosi float %5034 to i32
  %5037 = fptosi float %5035 to i32
  %5038 = xor i32 %5037, %5036
  %5039 = sitofp i32 %5038 to float
  %5040 = fptosi float %5039 to i32
  %5041 = sitofp i32 %5040 to float
  %5042 = fmul fast float %5041, 0x3FE3C6EF40000000
  %5043 = frem fast float %5034, 2.560000e+02
  %5044 = frem fast float %5035, 2.560000e+02
  %5045 = fptoui float %5043 to i32
  %5046 = fptoui float %5044 to i32
  %5047 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5045, i32 %5046, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.ResRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.ResRet.f32 %5047, 2
  %5051 = fadd fast float %5048, %5042
  %5052 = fadd fast float %5049, %5042
  %5053 = fadd fast float %5050, %5042
  %5054 = call float @dx.op.unary.f32(i32 22, float %5051)  ; Frc(value)
  %5055 = call float @dx.op.unary.f32(i32 22, float %5052)  ; Frc(value)
  %5056 = call float @dx.op.unary.f32(i32 22, float %5053)  ; Frc(value)
  %5057 = fmul fast float %5056, 0x401921FB60000000
  %5058 = call float @dx.op.unary.f32(i32 13, float %5057)  ; Sin(value)
  %5059 = call float @dx.op.unary.f32(i32 12, float %5057)  ; Cos(value)
  %5060 = fsub fast float -0.000000e+00, %5059
  %5061 = fmul fast float %5059, %5024
  %5062 = call float @dx.op.tertiary.f32(i32 46, float %5058, float %5025, float %5061)  ; FMad(a,b,c)
  %5063 = fmul fast float %5058, %5024
  %5064 = call float @dx.op.tertiary.f32(i32 46, float %5060, float %5025, float %5063)  ; FMad(a,b,c)
  %5065 = fadd fast float %5062, %5054
  %5066 = fadd fast float %5064, %5055
  %5067 = extractvalue %dx.types.CBufRet.f32 %4977, 3
  %5068 = bitcast float %5067 to i32
  %5069 = icmp eq i32 %5068, 0
  br i1 %5069, label %5108, label %5070

; <label>:5070                                    ; preds = %4973
  %5071 = add i32 %5068, 0
  %5072 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5071, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5073 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5072, %dx.types.Handle %108, float %5065, float %5066, float undef, float undef, i32 0, i32 0, i32 undef, float %5028, float %5029, float undef, float %5032, float %5033, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5074 = extractvalue %dx.types.ResRet.f32 %5073, 0
  %5075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5076 = extractvalue %dx.types.CBufRet.f32 %5075, 1
  %5077 = extractvalue %dx.types.CBufRet.f32 %5075, 2
  %5078 = fsub fast float 1.000000e+00, %4683
  %5079 = call float @dx.op.binary.f32(i32 35, float %5078, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5080 = bitcast float %4683 to i32
  %5081 = sitofp i32 %5080 to float
  %5082 = fadd fast float %5081, 0xC1CFBF8940000000
  %5083 = fmul fast float %5077, %5082
  %5084 = fadd fast float %5083, 0x41CFBF8940000000
  %5085 = fptosi float %5084 to i32
  %5086 = bitcast i32 %5085 to float
  %5087 = bitcast float %5079 to i32
  %5088 = sitofp i32 %5087 to float
  %5089 = fadd fast float %5088, 0xC1CFBF8940000000
  %5090 = fmul fast float %5089, %5077
  %5091 = fadd fast float %5090, 0x41CFBF8940000000
  %5092 = fptosi float %5091 to i32
  %5093 = bitcast i32 %5092 to float
  %5094 = fmul fast float %5086, %5076
  %5095 = fmul fast float %5093, %5076
  %5096 = fsub fast float %5079, %5094
  %5097 = fadd fast float %5095, %5079
  %5098 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5100 = fsub fast float %5074, %5098
  %5101 = fsub fast float %5099, %5098
  %5102 = bitcast float %5101 to i32
  %5103 = sub nsw i32 2129859010, %5102
  %5104 = bitcast i32 %5103 to float
  %5105 = fmul fast float %5104, %5100
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fcmp fast olt float %5106, 0x3F70101020000000
  br i1 %5107, label %5246, label %5108

; <label>:5108                                    ; preds = %5070, %4973
  %5109 = phi float [ %5106, %5070 ], [ %4683, %4973 ]
  %5110 = fmul fast float %5109, %4976
  %5111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.i32 %5111, 1
  %5113 = extractvalue %dx.types.CBufRet.i32 %5111, 0
  %5114 = add i32 %5113, 0
  %5115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5116 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5115, %dx.types.Handle %107, float %5065, float %5066, float undef, float undef, i32 0, i32 0, i32 undef, float %5028, float %5029, float undef, float %5032, float %5033, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5117 = extractvalue %dx.types.ResRet.f32 %5116, 0
  %5118 = extractvalue %dx.types.ResRet.f32 %5116, 1
  %5119 = extractvalue %dx.types.ResRet.f32 %5116, 2
  %5120 = extractvalue %dx.types.ResRet.f32 %5116, 3
  %5121 = and i32 %5112, 255
  %5122 = uitofp i32 %5121 to float
  %5123 = lshr i32 %5112, 8
  %5124 = and i32 %5123, 255
  %5125 = uitofp i32 %5124 to float
  %5126 = fmul fast float %5120, %5122
  %5127 = fadd fast float %5126, %5125
  %5128 = fmul fast float %5127, 0x3F70101000000000
  %5129 = fadd fast float %5128, 0xBFB99999A0000000
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = fmul fast float %5130, 0x3FF1C71C80000000
  %5132 = call float @dx.op.binary.f32(i32 36, float %5128, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5133 = fsub fast float 1.000000e+00, %5131
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = fmul fast float %5134, %5117
  %5136 = fmul fast float %5134, %5118
  %5137 = fmul fast float %5134, %5119
  %5138 = call float @dx.op.unary.f32(i32 7, float %5135)  ; Saturate(value)
  %5139 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5140 = call float @dx.op.unary.f32(i32 7, float %5137)  ; Saturate(value)
  %5141 = fmul fast float %5131, %5117
  %5142 = fmul fast float %5131, %5118
  %5143 = fmul fast float %5131, %5119
  %5144 = fadd fast float %5141, %5132
  %5145 = fadd fast float %5142, %5132
  %5146 = fadd fast float %5143, %5132
  %5147 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5148 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5151 = extractvalue %dx.types.CBufRet.i32 %5150, 3
  %5152 = extractvalue %dx.types.CBufRet.i32 %5150, 2
  %5153 = add i32 %5152, 0
  %5154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5155 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5154, %dx.types.Handle %107, float %5065, float %5066, float undef, float undef, i32 0, i32 0, i32 undef, float %5028, float %5029, float undef, float %5032, float %5033, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5156 = extractvalue %dx.types.ResRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.ResRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.ResRet.f32 %5155, 2
  %5159 = extractvalue %dx.types.ResRet.f32 %5155, 3
  %5160 = and i32 %5151, 255
  %5161 = uitofp i32 %5160 to float
  %5162 = lshr i32 %5151, 8
  %5163 = and i32 %5162, 255
  %5164 = uitofp i32 %5163 to float
  %5165 = lshr i32 %5151, 16
  %5166 = and i32 %5165, 255
  %5167 = uitofp i32 %5166 to float
  %5168 = fmul fast float %5167, 0x3F70101000000000
  %5169 = fmul fast float %5156, %5161
  %5170 = fadd fast float %5169, %5164
  %5171 = fmul fast float %5170, 0x3F70101000000000
  %5172 = fadd fast float %5157, -5.000000e-01
  %5173 = fadd fast float %5159, -5.000000e-01
  %5174 = fmul fast float %5172, %5168
  %5175 = fmul fast float %5173, %5168
  %5176 = fadd fast float %5174, 5.000000e-01
  %5177 = fadd fast float %5175, 5.000000e-01
  %5178 = fmul fast float %5176, 2.000000e+00
  %5179 = fadd fast float %5178, -1.000000e+00
  %5180 = fmul fast float %5177, 2.000000e+00
  %5181 = fadd fast float %5180, -1.000000e+00
  %5182 = fadd fast float %5179, %5181
  %5183 = fmul fast float %5182, 5.000000e-01
  %5184 = fsub fast float %5179, %5181
  %5185 = fmul fast float %5184, 5.000000e-01
  %5186 = call float @dx.op.unary.f32(i32 6, float %5183)  ; FAbs(value)
  %5187 = fsub fast float 1.000000e+00, %5186
  %5188 = call float @dx.op.unary.f32(i32 6, float %5185)  ; FAbs(value)
  %5189 = fsub fast float %5187, %5188
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5185, float %5189, float %5183, float %5185, float %5189)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = call float @dx.op.unary.f32(i32 25, float %5190)  ; Rsqrt(value)
  %5192 = fmul fast float %5183, %5191
  %5193 = fmul fast float %5185, %5191
  %5194 = select i1 %5021, i32 %5011, i32 %5012
  %5195 = select i1 %5019, i32 %5010, i32 %5194
  %5196 = sitofp i32 %5195 to float
  %5197 = fmul fast float %5189, %5196
  %5198 = fmul fast float %5197, %5191
  %5199 = select i1 %5021, float %5198, float %5193
  %5200 = select i1 %5021, float %5193, float %5198
  %5201 = select i1 %5019, float %5198, float %5192
  %5202 = select i1 %5019, float %5193, float %5199
  %5203 = select i1 %5019, float %5192, float %5200
  %5204 = fsub fast float %5138, %4968
  %5205 = fsub fast float %5139, %4969
  %5206 = fsub fast float %5140, %4970
  %5207 = fmul fast float %5204, %5110
  %5208 = fmul fast float %5205, %5110
  %5209 = fmul fast float %5206, %5110
  %5210 = fadd fast float %5207, %4968
  %5211 = fadd fast float %5208, %4969
  %5212 = fadd fast float %5209, %4970
  %5213 = fsub fast float %5147, %4965
  %5214 = fsub fast float %5148, %4966
  %5215 = fsub fast float %5149, %4967
  %5216 = fmul fast float %5213, %5110
  %5217 = fmul fast float %5214, %5110
  %5218 = fmul fast float %5215, %5110
  %5219 = fadd fast float %5216, %4965
  %5220 = fadd fast float %5217, %4966
  %5221 = fadd fast float %5218, %4967
  %5222 = fadd fast float %5201, %4962
  %5223 = fadd fast float %5202, %4963
  %5224 = fadd fast float %5203, %4964
  %5225 = call float @dx.op.dot3.f32(i32 55, float %5222, float %5223, float %5224, float %5222, float %5223, float %5224)  ; Dot3(ax,ay,az,bx,by,bz)
  %5226 = call float @dx.op.unary.f32(i32 25, float %5225)  ; Rsqrt(value)
  %5227 = fmul fast float %5222, %5226
  %5228 = fmul fast float %5223, %5226
  %5229 = fmul fast float %5224, %5226
  %5230 = fsub fast float %5227, %4962
  %5231 = fsub fast float %5228, %4963
  %5232 = fsub fast float %5229, %4964
  %5233 = fmul fast float %5230, %5110
  %5234 = fmul fast float %5231, %5110
  %5235 = fmul fast float %5232, %5110
  %5236 = fadd fast float %5233, %4962
  %5237 = fadd fast float %5234, %4963
  %5238 = fadd fast float %5235, %4964
  %5239 = call float @dx.op.binary.f32(i32 36, float %4972, float %5158)  ; FMin(a,b)
  %5240 = fsub fast float %5239, %4972
  %5241 = fmul fast float %5240, %5110
  %5242 = fadd fast float %5241, %4972
  %5243 = fsub fast float %5171, %4971
  %5244 = fmul fast float %5243, %5110
  %5245 = fadd fast float %5244, %4971
  br label %5246

; <label>:5246                                    ; preds = %5108, %5070, %4961, %4675
  %5247 = phi float [ %5236, %5108 ], [ %4962, %5070 ], [ %4962, %4961 ], [ %4272, %4675 ]
  %5248 = phi float [ %5237, %5108 ], [ %4963, %5070 ], [ %4963, %4961 ], [ %4273, %4675 ]
  %5249 = phi float [ %5238, %5108 ], [ %4964, %5070 ], [ %4964, %4961 ], [ %4274, %4675 ]
  %5250 = phi float [ %5219, %5108 ], [ %4965, %5070 ], [ %4965, %4961 ], [ %4333, %4675 ]
  %5251 = phi float [ %5220, %5108 ], [ %4966, %5070 ], [ %4966, %4961 ], [ %4334, %4675 ]
  %5252 = phi float [ %5221, %5108 ], [ %4967, %5070 ], [ %4967, %4961 ], [ %4335, %4675 ]
  %5253 = phi float [ %5210, %5108 ], [ %4968, %5070 ], [ %4968, %4961 ], [ %4414, %4675 ]
  %5254 = phi float [ %5211, %5108 ], [ %4969, %5070 ], [ %4969, %4961 ], [ %4415, %4675 ]
  %5255 = phi float [ %5212, %5108 ], [ %4970, %5070 ], [ %4970, %4961 ], [ %4416, %4675 ]
  %5256 = phi float [ %5245, %5108 ], [ %4971, %5070 ], [ %4971, %4961 ], [ %4336, %4675 ]
  %5257 = phi float [ %5242, %5108 ], [ %4972, %5070 ], [ %4972, %4961 ], [ %4287, %4675 ]
  %5258 = fcmp fast une float %4680, 0.000000e+00
  %5259 = fsub fast float -0.000000e+00, %221
  %5260 = fsub fast float -0.000000e+00, %222
  %5261 = fsub fast float -0.000000e+00, %223
  br i1 %5258, label %5262, label %5616

; <label>:5262                                    ; preds = %5246
  %5263 = call float @dx.op.dot3.f32(i32 55, float %5259, float %5260, float %5261, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = fmul fast float %4680, 2.500000e+00
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = fmul fast float %4680, 0x4013FFFFE0000000
  %5268 = fadd fast float %5267, 0xBFFFFFFFE0000000
  %5269 = call float @dx.op.unary.f32(i32 7, float %5268)  ; Saturate(value)
  %5270 = fmul fast float %4680, 0x4004000020000000
  %5271 = fadd fast float %5270, 0xBFF8000040000000
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = fmul fast float %4315, 1.000000e+01
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = fmul fast float %5274, 2.000000e+00
  %5276 = fsub fast float 3.000000e+00, %5275
  %5277 = fmul fast float %5274, %5274
  %5278 = fmul fast float %5277, %5276
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = fsub fast float 0x3FE3333340000000, %5256
  %5281 = fmul fast float %5280, 0x400AAAAAA0000000
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = fmul fast float %5279, %5282
  %5284 = fmul fast float %5253, 0x3FEA2B8620000000
  %5285 = fmul fast float %5254, 0x3FEA2B8620000000
  %5286 = fmul fast float %5255, 0x3FEA2B8620000000
  %5287 = fadd fast float %5284, 0x3FC81DFBA0000000
  %5288 = fmul fast float %5287, %5253
  %5289 = fadd fast float %5288, 0x3F910E6020000000
  %5290 = fadd fast float %5285, 0x3FC81DFBA0000000
  %5291 = fmul fast float %5290, %5254
  %5292 = fadd fast float %5291, 0x3F910E6020000000
  %5293 = fadd fast float %5286, 0x3FC81DFBA0000000
  %5294 = fmul fast float %5293, %5255
  %5295 = fadd fast float %5294, 0x3F910E6020000000
  %5296 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5297 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5298 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5299 = fsub fast float %5296, %5253
  %5300 = fsub fast float %5297, %5254
  %5301 = fsub fast float %5298, %5255
  %5302 = fmul fast float %5299, %5266
  %5303 = fmul fast float %5302, %5283
  %5304 = fmul fast float %5300, %5266
  %5305 = fmul fast float %5304, %5283
  %5306 = fmul fast float %5301, %5266
  %5307 = fmul fast float %5306, %5283
  %5308 = fadd fast float %5303, %5253
  %5309 = fadd fast float %5305, %5254
  %5310 = fadd fast float %5307, %5255
  %5311 = fmul fast float %5257, %5257
  %5312 = fmul fast float %5311, %5311
  %5313 = fadd fast float %5269, 1.000000e+00
  %5314 = fsub fast float %5313, %5283
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = fsub fast float 1.000000e+00, %5312
  %5319 = call float @dx.op.binary.f32(i32 36, float %5315, float %5318)  ; FMin(a,b)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5321 = call float @dx.op.binary.f32(i32 35, float %5319, float %5320)  ; FMax(a,b)
  %5322 = fadd fast float %5317, 0xBFE4CCCCC0000000
  %5323 = fmul fast float %5322, 0x4006DB6DA0000000
  %5324 = call float @dx.op.unary.f32(i32 7, float %5323)  ; Saturate(value)
  %5325 = fmul fast float %5324, 2.000000e+00
  %5326 = fsub fast float 3.000000e+00, %5325
  %5327 = bitcast float %5250 to i32
  %5328 = ashr i32 %5327, 1
  %5329 = add nsw i32 %5328, 532487669
  %5330 = bitcast i32 %5329 to float
  %5331 = fsub fast float 1.000000e+00, %5330
  %5332 = bitcast float %5331 to i32
  %5333 = sub nsw i32 2129859010, %5332
  %5334 = bitcast i32 %5333 to float
  %5335 = fmul fast float %5334, 2.000000e+00
  %5336 = bitcast float %5251 to i32
  %5337 = ashr i32 %5336, 1
  %5338 = add nsw i32 %5337, 532487669
  %5339 = bitcast i32 %5338 to float
  %5340 = fsub fast float 1.000000e+00, %5339
  %5341 = bitcast float %5340 to i32
  %5342 = sub nsw i32 2129859010, %5341
  %5343 = bitcast i32 %5342 to float
  %5344 = fmul fast float %5343, 2.000000e+00
  %5345 = bitcast float %5252 to i32
  %5346 = ashr i32 %5345, 1
  %5347 = add nsw i32 %5346, 532487669
  %5348 = bitcast i32 %5347 to float
  %5349 = fsub fast float 1.000000e+00, %5348
  %5350 = bitcast float %5349 to i32
  %5351 = sub nsw i32 2129859010, %5350
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, 2.000000e+00
  %5354 = fsub fast float 0x4002A9FBE0000000, %5335
  %5355 = fadd fast float %5335, 0x3FD54FDF00000000
  %5356 = bitcast float %5355 to i32
  %5357 = sub nsw i32 2129859010, %5356
  %5358 = bitcast i32 %5357 to float
  %5359 = fmul fast float %5358, %5354
  %5360 = fmul fast float %5359, %5359
  %5361 = fsub fast float 0x4002A9FBE0000000, %5344
  %5362 = fadd fast float %5344, 0x3FD54FDF00000000
  %5363 = bitcast float %5362 to i32
  %5364 = sub nsw i32 2129859010, %5363
  %5365 = bitcast i32 %5364 to float
  %5366 = fmul fast float %5365, %5361
  %5367 = fmul fast float %5366, %5366
  %5368 = fsub fast float 0x4002A9FBE0000000, %5353
  %5369 = fadd fast float %5353, 0x3FD54FDF00000000
  %5370 = bitcast float %5369 to i32
  %5371 = sub nsw i32 2129859010, %5370
  %5372 = bitcast i32 %5371 to float
  %5373 = fmul fast float %5372, %5368
  %5374 = fmul fast float %5373, %5373
  %5375 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5360)  ; FMax(a,b)
  %5376 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5367)  ; FMax(a,b)
  %5377 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5374)  ; FMax(a,b)
  %5378 = fsub fast float 1.000000e+00, %5263
  %5379 = fadd fast float %5378, %5279
  %5380 = call float @dx.op.unary.f32(i32 7, float %5379)  ; Saturate(value)
  %5381 = fsub fast float 1.000000e+00, %4499
  %5382 = fmul fast float %5321, %5381
  %5383 = fmul fast float %5324, %5324
  %5384 = fmul fast float %5383, %5382
  %5385 = fmul fast float %5384, %5326
  %5386 = fmul fast float %5381, 0xBFE99999A0000000
  %5387 = fmul fast float %5386, %5266
  %5388 = fmul fast float %5387, %5283
  %5389 = fadd fast float %5388, 1.000000e+00
  %5390 = fadd fast float %5256, -1.000000e+00
  %5391 = fmul fast float %5389, %5390
  %5392 = fadd fast float %5391, 1.000000e+00
  %5393 = fsub fast float %5375, %5250
  %5394 = fsub fast float %5376, %5251
  %5395 = fsub fast float %5377, %5252
  %5396 = fmul fast float %5385, %5393
  %5397 = fmul fast float %5385, %5394
  %5398 = fmul fast float %5385, %5395
  %5399 = fadd fast float %5396, %5250
  %5400 = fadd fast float %5397, %5251
  %5401 = fadd fast float %5398, %5252
  %5402 = fsub fast float %118, %5247
  %5403 = fsub fast float %119, %5248
  %5404 = fsub fast float %120, %5249
  %5405 = fmul fast float %5385, %5402
  %5406 = fmul fast float %5385, %5403
  %5407 = fmul fast float %5385, %5404
  %5408 = fadd fast float %5405, %5247
  %5409 = fadd fast float %5406, %5248
  %5410 = fadd fast float %5407, %5249
  %5411 = fmul fast float %5385, %5380
  %5412 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5413 = fsub fast float 1.000000e+00, %5412
  %5414 = fmul fast float %5411, %5413
  %5415 = fadd fast float %5414, %5412
  %5416 = fsub fast float 1.000000e+00, %5257
  %5417 = fmul fast float %5385, %5416
  %5418 = fadd fast float %5417, %5257
  %5419 = fcmp fast une float %4681, 0.000000e+00
  %5420 = fcmp fast ogt float %5317, 0x3FE4CCCCC0000000
  %5421 = and i1 %5419, %5420
  br i1 %5421, label %5422, label %5608

; <label>:5422                                    ; preds = %5262
  %5423 = extractvalue %dx.types.CBufRet.f32 %5264, 1
  %5424 = fadd fast float %5423, %191
  %5425 = extractvalue %dx.types.CBufRet.f32 %5264, 0
  %5426 = fadd fast float %5425, %190
  %5427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5428 = extractvalue %dx.types.CBufRet.f32 %5427, 3
  %5429 = fadd fast float %5428, 0x3FC0A3D700000000
  %5430 = fmul fast float %5429, 0x3FF6666660000000
  %5431 = fmul fast float %5428, 0x3FF2978D40000000
  %5432 = fmul fast float %5428, 0x3FF5BA5E40000000
  %5433 = fmul fast float %5428, 0x3FF94FDF40000000
  %5434 = call float @dx.op.unary.f32(i32 6, float %5426)  ; FAbs(value)
  %5435 = call float @dx.op.unary.f32(i32 6, float %5424)  ; FAbs(value)
  %5436 = fmul fast float %5434, 0x3F8EB851E0000000
  %5437 = fmul fast float %5435, 0x3F8EB851E0000000
  %5438 = fmul fast float %4681, 4.000000e+00
  %5439 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5440 = fadd fast float %5436, 2.500000e-01
  %5441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5440, float %5437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.ResRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.ResRet.f32 %5441, 2
  %5445 = extractvalue %dx.types.ResRet.f32 %5441, 3
  %5446 = fmul fast float %5443, 2.000000e+00
  %5447 = fmul fast float %5444, 2.000000e+00
  %5448 = fadd fast float %5446, -1.000000e+00
  %5449 = fadd fast float %5447, -1.000000e+00
  %5450 = fsub fast float 1.000000e+00, %5439
  %5451 = fmul fast float %5450, 8.000000e+00
  %5452 = call float @dx.op.unary.f32(i32 21, float %5451)  ; Exp(value)
  %5453 = fmul fast float %5445, %5452
  %5454 = fadd fast float %5430, -1.000000e+00
  %5455 = fadd fast float %5454, %5445
  %5456 = fadd fast float %5455, %5453
  %5457 = frem fast float %5456, %5452
  %5458 = fcmp fast ole float %5457, 1.000000e+00
  %5459 = call float @dx.op.unary.f32(i32 22, float %5457)  ; Frc(value)
  %5460 = select i1 %5458, float %5459, float 0.000000e+00
  %5461 = fadd fast float %5442, -1.000000e+00
  %5462 = fadd fast float %5461, %5460
  %5463 = fsub fast float 1.000000e+00, %5460
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = fmul fast float %5464, %5442
  %5466 = fmul fast float %5462, 8.000000e+00
  %5467 = call float @dx.op.binary.f32(i32 35, float %5466, float 0.000000e+00)  ; FMax(a,b)
  %5468 = call float @dx.op.binary.f32(i32 36, float %5467, float 4.000000e+00)  ; FMin(a,b)
  %5469 = fmul fast float %5468, 0x400921FB60000000
  %5470 = call float @dx.op.unary.f32(i32 13, float %5469)  ; Sin(value)
  %5471 = fadd fast float %5460, -1.000000e+00
  %5472 = fmul fast float %5465, %5471
  %5473 = fmul fast float %5472, %5470
  %5474 = fmul fast float %5473, %5448
  %5475 = fmul fast float %5473, %5449
  %5476 = fadd fast float %5438, -1.000000e+00
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fadd fast float %5436, 0xBFE19999A0000000
  %5479 = fadd fast float %5437, 0x3FD3D70A40000000
  %5480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5478, float %5479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5481 = extractvalue %dx.types.ResRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.ResRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.ResRet.f32 %5480, 2
  %5484 = extractvalue %dx.types.ResRet.f32 %5480, 3
  %5485 = fmul fast float %5482, 2.000000e+00
  %5486 = fmul fast float %5483, 2.000000e+00
  %5487 = fadd fast float %5485, -1.000000e+00
  %5488 = fadd fast float %5486, -1.000000e+00
  %5489 = fsub fast float 1.000000e+00, %5477
  %5490 = fmul fast float %5489, 8.000000e+00
  %5491 = call float @dx.op.unary.f32(i32 21, float %5490)  ; Exp(value)
  %5492 = fmul fast float %5484, %5491
  %5493 = fadd fast float %5431, 0xBFE5B22D00000000
  %5494 = fadd fast float %5493, %5484
  %5495 = fadd fast float %5494, %5492
  %5496 = frem fast float %5495, %5491
  %5497 = fcmp fast ole float %5496, 1.000000e+00
  %5498 = call float @dx.op.unary.f32(i32 22, float %5496)  ; Frc(value)
  %5499 = select i1 %5497, float %5498, float 0.000000e+00
  %5500 = fadd fast float %5481, -1.000000e+00
  %5501 = fadd fast float %5500, %5499
  %5502 = fsub fast float 1.000000e+00, %5499
  %5503 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  %5504 = fmul fast float %5503, %5481
  %5505 = fmul fast float %5501, 8.000000e+00
  %5506 = call float @dx.op.binary.f32(i32 35, float %5505, float 0.000000e+00)  ; FMax(a,b)
  %5507 = call float @dx.op.binary.f32(i32 36, float %5506, float 4.000000e+00)  ; FMin(a,b)
  %5508 = fmul fast float %5507, 0x400921FB60000000
  %5509 = call float @dx.op.unary.f32(i32 13, float %5508)  ; Sin(value)
  %5510 = fadd fast float %5499, -1.000000e+00
  %5511 = fmul fast float %5504, %5510
  %5512 = fmul fast float %5511, %5509
  %5513 = fmul fast float %5512, %5487
  %5514 = fmul fast float %5512, %5488
  %5515 = fadd fast float %5438, -2.000000e+00
  %5516 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5517 = fadd fast float %5436, 0x3FE3333340000000
  %5518 = fadd fast float %5437, 0x3FEB333340000000
  %5519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5517, float %5518, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5520 = extractvalue %dx.types.ResRet.f32 %5519, 0
  %5521 = extractvalue %dx.types.ResRet.f32 %5519, 1
  %5522 = extractvalue %dx.types.ResRet.f32 %5519, 2
  %5523 = extractvalue %dx.types.ResRet.f32 %5519, 3
  %5524 = fmul fast float %5521, 2.000000e+00
  %5525 = fmul fast float %5522, 2.000000e+00
  %5526 = fadd fast float %5524, -1.000000e+00
  %5527 = fadd fast float %5525, -1.000000e+00
  %5528 = fsub fast float 1.000000e+00, %5516
  %5529 = fmul fast float %5528, 8.000000e+00
  %5530 = call float @dx.op.unary.f32(i32 21, float %5529)  ; Exp(value)
  %5531 = fmul fast float %5523, %5530
  %5532 = fadd fast float %5432, 0xBFD5E35400000000
  %5533 = fadd fast float %5532, %5523
  %5534 = fadd fast float %5533, %5531
  %5535 = frem fast float %5534, %5530
  %5536 = fcmp fast ole float %5535, 1.000000e+00
  %5537 = call float @dx.op.unary.f32(i32 22, float %5535)  ; Frc(value)
  %5538 = select i1 %5536, float %5537, float 0.000000e+00
  %5539 = fadd fast float %5520, -1.000000e+00
  %5540 = fadd fast float %5539, %5538
  %5541 = fsub fast float 1.000000e+00, %5538
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5543 = fmul fast float %5542, %5520
  %5544 = fmul fast float %5540, 8.000000e+00
  %5545 = call float @dx.op.binary.f32(i32 35, float %5544, float 0.000000e+00)  ; FMax(a,b)
  %5546 = call float @dx.op.binary.f32(i32 36, float %5545, float 4.000000e+00)  ; FMin(a,b)
  %5547 = fmul fast float %5546, 0x400921FB60000000
  %5548 = call float @dx.op.unary.f32(i32 13, float %5547)  ; Sin(value)
  %5549 = fadd fast float %5538, -1.000000e+00
  %5550 = fmul fast float %5543, %5549
  %5551 = fmul fast float %5550, %5548
  %5552 = fmul fast float %5551, %5526
  %5553 = fmul fast float %5551, %5527
  %5554 = fadd fast float %5438, -3.000000e+00
  %5555 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5556 = fadd fast float %5436, 5.000000e-01
  %5557 = fadd fast float %5437, -7.500000e-01
  %5558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5556, float %5557, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5559 = extractvalue %dx.types.ResRet.f32 %5558, 0
  %5560 = extractvalue %dx.types.ResRet.f32 %5558, 1
  %5561 = extractvalue %dx.types.ResRet.f32 %5558, 2
  %5562 = extractvalue %dx.types.ResRet.f32 %5558, 3
  %5563 = fmul fast float %5560, 2.000000e+00
  %5564 = fmul fast float %5561, 2.000000e+00
  %5565 = fadd fast float %5563, -1.000000e+00
  %5566 = fadd fast float %5564, -1.000000e+00
  %5567 = fsub fast float 1.000000e+00, %5555
  %5568 = fmul fast float %5567, 8.000000e+00
  %5569 = call float @dx.op.unary.f32(i32 21, float %5568)  ; Exp(value)
  %5570 = fmul fast float %5562, %5569
  %5571 = fadd fast float %5433, 0xBF78938000000000
  %5572 = fadd fast float %5571, %5562
  %5573 = fadd fast float %5572, %5570
  %5574 = frem fast float %5573, %5569
  %5575 = fcmp fast ole float %5574, 1.000000e+00
  %5576 = call float @dx.op.unary.f32(i32 22, float %5574)  ; Frc(value)
  %5577 = select i1 %5575, float %5576, float 0.000000e+00
  %5578 = fadd fast float %5559, -1.000000e+00
  %5579 = fadd fast float %5578, %5577
  %5580 = fsub fast float 1.000000e+00, %5577
  %5581 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5582 = fmul fast float %5581, %5559
  %5583 = fmul fast float %5579, 8.000000e+00
  %5584 = call float @dx.op.binary.f32(i32 35, float %5583, float 0.000000e+00)  ; FMax(a,b)
  %5585 = call float @dx.op.binary.f32(i32 36, float %5584, float 4.000000e+00)  ; FMin(a,b)
  %5586 = fmul fast float %5585, 0x400921FB60000000
  %5587 = call float @dx.op.unary.f32(i32 13, float %5586)  ; Sin(value)
  %5588 = fadd fast float %5577, -1.000000e+00
  %5589 = fmul fast float %5582, %5588
  %5590 = fmul fast float %5589, %5587
  %5591 = fmul fast float %5590, %5565
  %5592 = fmul fast float %5590, %5566
  %5593 = fadd fast float %5513, %5474
  %5594 = fadd fast float %5514, %5475
  %5595 = fadd fast float %5593, %5552
  %5596 = fadd fast float %5594, %5553
  %5597 = fadd fast float %5595, %5591
  %5598 = fadd fast float %5596, %5592
  %5599 = fmul fast float %5317, 0x4006DB6DA0000000
  %5600 = fadd fast float %5599, 0xBFFDB6DB40000000
  %5601 = call float @dx.op.unary.f32(i32 7, float %5600)  ; Saturate(value)
  %5602 = fmul fast float %5601, %5266
  %5603 = fmul fast float %5602, %5381
  %5604 = fmul fast float %5603, %5597
  %5605 = fmul fast float %5603, %5598
  %5606 = fadd fast float %5604, %5408
  %5607 = fadd fast float %5605, %5409
  br label %5608

; <label>:5608                                    ; preds = %5422, %5262
  %5609 = phi float [ %5408, %5262 ], [ %5606, %5422 ]
  %5610 = phi float [ %5409, %5262 ], [ %5607, %5422 ]
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5609, float %5610, float %5410, float %5609, float %5610, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.unary.f32(i32 25, float %5611)  ; Rsqrt(value)
  %5613 = fmul fast float %5612, %5609
  %5614 = fmul fast float %5612, %5610
  %5615 = fmul fast float %5612, %5410
  br label %5616

; <label>:5616                                    ; preds = %5608, %5246
  %5617 = phi float [ %5613, %5608 ], [ %5247, %5246 ]
  %5618 = phi float [ %5614, %5608 ], [ %5248, %5246 ]
  %5619 = phi float [ %5615, %5608 ], [ %5249, %5246 ]
  %5620 = phi float [ %5399, %5608 ], [ %5250, %5246 ]
  %5621 = phi float [ %5400, %5608 ], [ %5251, %5246 ]
  %5622 = phi float [ %5401, %5608 ], [ %5252, %5246 ]
  %5623 = phi float [ %5308, %5608 ], [ %5253, %5246 ]
  %5624 = phi float [ %5309, %5608 ], [ %5254, %5246 ]
  %5625 = phi float [ %5310, %5608 ], [ %5255, %5246 ]
  %5626 = phi float [ %5415, %5608 ], [ %5256, %5246 ]
  %5627 = phi float [ %5418, %5608 ], [ %5257, %5246 ]
  %5628 = select i1 %294, float 0.000000e+00, float %5622
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5259, float %5260, float %5261)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = call float @dx.op.dot3.f32(i32 55, float %221, float %222, float %223, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = fmul fast float %5631, 2.000000e+00
  %5633 = fmul fast float %5632, %5617
  %5634 = fmul fast float %5632, %5618
  %5635 = fmul fast float %5632, %5619
  %5636 = fsub fast float %221, %5633
  %5637 = fsub fast float %222, %5634
  %5638 = fsub fast float %223, %5635
  %5639 = call float @dx.op.binary.f32(i32 36, float %5627, float 1.000000e+00)  ; FMin(a,b)
  %5640 = fsub fast float 1.000000e+00, %5639
  %5641 = bitcast float %5640 to i32
  %5642 = ashr i32 %5641, 1
  %5643 = add nsw i32 %5642, 532487669
  %5644 = bitcast i32 %5643 to float
  %5645 = fsub fast float 1.000000e+00, %5626
  %5646 = call float @dx.op.binary.f32(i32 35, float %5645, float 0x3F847AE140000000)  ; FMax(a,b)
  %5647 = fmul fast float %5646, %5646
  %5648 = fmul fast float %5647, %5647
  %5649 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  %5650 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %45, float %5644, float %5648, float %5649, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5651 = extractvalue %dx.types.ResRet.f32 %5650, 0
  %5652 = fsub fast float 1.000000e+00, %5627
  %5653 = bitcast float %5652 to i32
  %5654 = sub nsw i32 2129859010, %5653
  %5655 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = fmul fast float %5655, 0x3FD20DD760000000
  %5657 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %5658 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = fcmp fast oeq float %5658, 0.000000e+00
  %5660 = fcmp fast oeq float %5657, 0.000000e+00
  %5661 = or i1 %5660, %5659
  br i1 %5661, label %5691, label %5662

; <label>:5662                                    ; preds = %5616
  %5663 = fsub fast float -0.000000e+00, %81
  %5664 = fsub fast float -0.000000e+00, %79
  %5665 = call float @dx.op.unary.f32(i32 24, float %5658)  ; Sqrt(value)
  %5666 = fdiv fast float %5665, %5657
  %5667 = fcmp fast ogt float %5666, 0x3FFB6F8900000000
  %5668 = select i1 %5667, float 0x3FFB6F8900000000, float %5666
  %5669 = fmul fast float %5668, 0x3FE8A23460000000
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = call float @dx.op.binary.f32(i32 35, float %5668, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5672 = fmul fast float %5670, %5657
  %5673 = fmul fast float %5671, 0x3FF279A740000000
  %5674 = fadd fast float %5673, -1.000000e+00
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5663, float %5664, float %80, float %5663, float %5664, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = call float @dx.op.unary.f32(i32 25, float %5675)  ; Rsqrt(value)
  %5677 = fmul fast float %5676, %5663
  %5678 = fmul fast float %5676, %5664
  %5679 = fmul fast float %5676, %80
  %5680 = fmul fast float %5674, %5674
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = fmul fast float %5671, 0x40005F8BE0000000
  %5683 = fsub fast float 0x400C5BF8A0000000, %5682
  %5684 = fdiv fast float %5672, %5683
  %5685 = fmul fast float %5684, 0x3FEE31C3C0000000
  %5686 = fmul fast float %5685, %5681
  %5687 = fmul fast float %5671, 0x3FDACB7480000000
  %5688 = fadd fast float %5687, 0xBFD7347680000000
  %5689 = fmul fast float %5688, %5684
  %5690 = fmul fast float %5689, %5681
  br label %5691

; <label>:5691                                    ; preds = %5662, %5616
  %5692 = phi float [ %5677, %5662 ], [ 0.000000e+00, %5616 ]
  %5693 = phi float [ %5678, %5662 ], [ 0.000000e+00, %5616 ]
  %5694 = phi float [ %5679, %5662 ], [ 0.000000e+00, %5616 ]
  %5695 = phi float [ %5686, %5662 ], [ 0.000000e+00, %5616 ]
  %5696 = phi float [ %5690, %5662 ], [ 0.000000e+00, %5616 ]
  %5697 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5698 = fmul fast float %5697, 0x3FDF454380000000
  %5699 = fmul fast float %5697, %5697
  %5700 = fmul fast float %5699, 0x3FEE471020000000
  %5701 = fadd fast float %5700, 0xBFD42F6020000000
  %5702 = fmul fast float %5657, 0x3FD20DD760000000
  %5703 = fmul fast float %5701, %5696
  %5704 = fadd fast float %5703, %5702
  %5705 = fmul fast float %5698, %5695
  %5706 = fadd fast float %5704, %5705
  %5707 = fsub fast float %5704, %5705
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5692, float %5693, float %5694, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = fmul fast float %5708, 0x3FDF454380000000
  %5710 = fmul fast float %5708, %5708
  %5711 = fmul fast float %5710, 0x3FEE471020000000
  %5712 = fadd fast float %5711, 0xBFD42F6020000000
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5657, float %5695, float %5696, float 0x3FD20DD760000000, float %5709, float %5712)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5715 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = fcmp fast oeq float %5715, 0.000000e+00
  %5717 = fcmp fast oeq float %5714, 0.000000e+00
  %5718 = or i1 %5717, %5716
  br i1 %5718, label %5748, label %5719

; <label>:5719                                    ; preds = %5691
  %5720 = fsub fast float -0.000000e+00, %77
  %5721 = fsub fast float -0.000000e+00, %75
  %5722 = call float @dx.op.unary.f32(i32 24, float %5715)  ; Sqrt(value)
  %5723 = fdiv fast float %5722, %5714
  %5724 = fcmp fast ogt float %5723, 0x3FFB6F8900000000
  %5725 = select i1 %5724, float 0x3FFB6F8900000000, float %5723
  %5726 = fmul fast float %5725, 0x3FE8A23460000000
  %5727 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5728 = call float @dx.op.binary.f32(i32 35, float %5725, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5729 = fmul fast float %5727, %5714
  %5730 = fmul fast float %5728, 0x3FF279A740000000
  %5731 = fadd fast float %5730, -1.000000e+00
  %5732 = call float @dx.op.dot3.f32(i32 55, float %5720, float %5721, float %76, float %5720, float %5721, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5733 = call float @dx.op.unary.f32(i32 25, float %5732)  ; Rsqrt(value)
  %5734 = fmul fast float %5733, %5720
  %5735 = fmul fast float %5733, %5721
  %5736 = fmul fast float %5733, %76
  %5737 = fmul fast float %5731, %5731
  %5738 = fsub fast float 1.000000e+00, %5737
  %5739 = fmul fast float %5728, 0x40005F8BE0000000
  %5740 = fsub fast float 0x400C5BF8A0000000, %5739
  %5741 = fdiv fast float %5729, %5740
  %5742 = fmul fast float %5741, 0x3FEE31C3C0000000
  %5743 = fmul fast float %5742, %5738
  %5744 = fmul fast float %5728, 0x3FDACB7480000000
  %5745 = fadd fast float %5744, 0xBFD7347680000000
  %5746 = fmul fast float %5745, %5741
  %5747 = fmul fast float %5746, %5738
  br label %5748

; <label>:5748                                    ; preds = %5719, %5691
  %5749 = phi float [ %5734, %5719 ], [ 0.000000e+00, %5691 ]
  %5750 = phi float [ %5735, %5719 ], [ 0.000000e+00, %5691 ]
  %5751 = phi float [ %5736, %5719 ], [ 0.000000e+00, %5691 ]
  %5752 = phi float [ %5743, %5719 ], [ 0.000000e+00, %5691 ]
  %5753 = phi float [ %5747, %5719 ], [ 0.000000e+00, %5691 ]
  %5754 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5755 = fmul fast float %5754, 0x3FDF454380000000
  %5756 = fmul fast float %5754, %5754
  %5757 = fmul fast float %5756, 0x3FEE471020000000
  %5758 = fadd fast float %5757, 0xBFD42F6020000000
  %5759 = fmul fast float %5714, 0x3FD20DD760000000
  %5760 = fmul fast float %5758, %5753
  %5761 = fadd fast float %5760, %5759
  %5762 = fmul fast float %5755, %5752
  %5763 = fadd fast float %5761, %5762
  %5764 = fsub fast float %5761, %5762
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5749, float %5750, float %5751, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = fmul fast float %5765, 0x3FDF454380000000
  %5767 = fmul fast float %5765, %5765
  %5768 = fmul fast float %5767, 0x3FEE471020000000
  %5769 = fadd fast float %5768, 0xBFD42F6020000000
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5714, float %5752, float %5753, float 0x3FD20DD760000000, float %5766, float %5769)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5772 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5773 = fcmp fast oeq float %5772, 0.000000e+00
  %5774 = fcmp fast oeq float %5771, 0.000000e+00
  %5775 = or i1 %5774, %5773
  br i1 %5775, label %5805, label %5776

; <label>:5776                                    ; preds = %5748
  %5777 = fsub fast float -0.000000e+00, %73
  %5778 = fsub fast float -0.000000e+00, %71
  %5779 = call float @dx.op.unary.f32(i32 24, float %5772)  ; Sqrt(value)
  %5780 = fdiv fast float %5779, %5771
  %5781 = fcmp fast ogt float %5780, 0x3FFB6F8900000000
  %5782 = select i1 %5781, float 0x3FFB6F8900000000, float %5780
  %5783 = fmul fast float %5782, 0x3FE8A23460000000
  %5784 = call float @dx.op.unary.f32(i32 7, float %5783)  ; Saturate(value)
  %5785 = call float @dx.op.binary.f32(i32 35, float %5782, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5786 = fmul fast float %5784, %5771
  %5787 = fmul fast float %5785, 0x3FF279A740000000
  %5788 = fadd fast float %5787, -1.000000e+00
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5777, float %5778, float %72, float %5777, float %5778, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = call float @dx.op.unary.f32(i32 25, float %5789)  ; Rsqrt(value)
  %5791 = fmul fast float %5790, %5777
  %5792 = fmul fast float %5790, %5778
  %5793 = fmul fast float %5790, %72
  %5794 = fmul fast float %5788, %5788
  %5795 = fsub fast float 1.000000e+00, %5794
  %5796 = fmul fast float %5785, 0x40005F8BE0000000
  %5797 = fsub fast float 0x400C5BF8A0000000, %5796
  %5798 = fdiv fast float %5786, %5797
  %5799 = fmul fast float %5798, 0x3FEE31C3C0000000
  %5800 = fmul fast float %5799, %5795
  %5801 = fmul fast float %5785, 0x3FDACB7480000000
  %5802 = fadd fast float %5801, 0xBFD7347680000000
  %5803 = fmul fast float %5802, %5798
  %5804 = fmul fast float %5803, %5795
  br label %5805

; <label>:5805                                    ; preds = %5776, %5748
  %5806 = phi float [ %5791, %5776 ], [ 0.000000e+00, %5748 ]
  %5807 = phi float [ %5792, %5776 ], [ 0.000000e+00, %5748 ]
  %5808 = phi float [ %5793, %5776 ], [ 0.000000e+00, %5748 ]
  %5809 = phi float [ %5800, %5776 ], [ 0.000000e+00, %5748 ]
  %5810 = phi float [ %5804, %5776 ], [ 0.000000e+00, %5748 ]
  %5811 = call float @dx.op.dot3.f32(i32 55, float %5806, float %5807, float %5808, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = fmul fast float %5811, 0x3FDF454380000000
  %5813 = fmul fast float %5811, %5811
  %5814 = fmul fast float %5813, 0x3FEE471020000000
  %5815 = fadd fast float %5814, 0xBFD42F6020000000
  %5816 = fmul fast float %5771, 0x3FD20DD760000000
  %5817 = fmul fast float %5815, %5810
  %5818 = fadd fast float %5817, %5816
  %5819 = fmul fast float %5812, %5809
  %5820 = fadd fast float %5818, %5819
  %5821 = fsub fast float %5818, %5819
  %5822 = call float @dx.op.dot3.f32(i32 55, float %5806, float %5807, float %5808, float %5636, float %5637, float %5638)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = fmul fast float %5822, 0x3FDF454380000000
  %5824 = fmul fast float %5822, %5822
  %5825 = fmul fast float %5824, 0x3FEE471020000000
  %5826 = fadd fast float %5825, 0xBFD42F6020000000
  %5827 = call float @dx.op.dot3.f32(i32 55, float %5771, float %5809, float %5810, float 0x3FD20DD760000000, float %5823, float %5826)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = call float @dx.op.binary.f32(i32 35, float %5706, float 0.000000e+00)  ; FMax(a,b)
  %5829 = call float @dx.op.binary.f32(i32 35, float %5763, float 0.000000e+00)  ; FMax(a,b)
  %5830 = call float @dx.op.binary.f32(i32 35, float %5820, float 0.000000e+00)  ; FMax(a,b)
  %5831 = call float @dx.op.binary.f32(i32 35, float %5707, float 0.000000e+00)  ; FMax(a,b)
  %5832 = call float @dx.op.binary.f32(i32 35, float %5764, float 0.000000e+00)  ; FMax(a,b)
  %5833 = call float @dx.op.binary.f32(i32 35, float %5821, float 0.000000e+00)  ; FMax(a,b)
  %5834 = call float @dx.op.binary.f32(i32 35, float %5713, float 0.000000e+00)  ; FMax(a,b)
  %5835 = call float @dx.op.binary.f32(i32 35, float %5770, float 0.000000e+00)  ; FMax(a,b)
  %5836 = call float @dx.op.binary.f32(i32 35, float %5827, float 0.000000e+00)  ; FMax(a,b)
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 0
  %5839 = call float @dx.op.binary.f32(i32 36, float %5623, float %5838)  ; FMin(a,b)
  %5840 = fmul fast float %5839, %5640
  %5841 = fsub fast float 1.000000e+00, %5840
  %5842 = bitcast float %5841 to i32
  %5843 = sub nsw i32 2129859010, %5842
  %5844 = bitcast i32 %5843 to float
  %5845 = call float @dx.op.binary.f32(i32 36, float %5624, float %5838)  ; FMin(a,b)
  %5846 = fmul fast float %5845, %5640
  %5847 = fsub fast float 1.000000e+00, %5846
  %5848 = bitcast float %5847 to i32
  %5849 = sub nsw i32 2129859010, %5848
  %5850 = bitcast i32 %5849 to float
  %5851 = call float @dx.op.binary.f32(i32 36, float %5625, float %5838)  ; FMin(a,b)
  %5852 = fmul fast float %5851, %5640
  %5853 = fsub fast float 1.000000e+00, %5852
  %5854 = bitcast float %5853 to i32
  %5855 = sub nsw i32 2129859010, %5854
  %5856 = bitcast i32 %5855 to float
  %5857 = fmul fast float %5828, %5639
  %5858 = fmul fast float %5857, %5844
  %5859 = fmul fast float %5829, %5639
  %5860 = fmul fast float %5859, %5850
  %5861 = fmul fast float %5830, %5639
  %5862 = fmul fast float %5861, %5856
  %5863 = call float @dx.op.binary.f32(i32 36, float %5620, float %5838)  ; FMin(a,b)
  %5864 = fmul fast float %5863, %5640
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = bitcast float %5865 to i32
  %5867 = sub nsw i32 2129859010, %5866
  %5868 = bitcast i32 %5867 to float
  %5869 = call float @dx.op.binary.f32(i32 36, float %5621, float %5838)  ; FMin(a,b)
  %5870 = fmul fast float %5869, %5640
  %5871 = fsub fast float 1.000000e+00, %5870
  %5872 = bitcast float %5871 to i32
  %5873 = sub nsw i32 2129859010, %5872
  %5874 = bitcast i32 %5873 to float
  %5875 = call float @dx.op.binary.f32(i32 36, float %5628, float %5838)  ; FMin(a,b)
  %5876 = fmul fast float %5875, %5640
  %5877 = fsub fast float 1.000000e+00, %5876
  %5878 = bitcast float %5877 to i32
  %5879 = sub nsw i32 2129859010, %5878
  %5880 = bitcast i32 %5879 to float
  %5881 = fmul fast float %5834, %5639
  %5882 = fmul fast float %5881, %5868
  %5883 = fmul fast float %5835, %5639
  %5884 = fmul fast float %5883, %5874
  %5885 = fmul fast float %5836, %5639
  %5886 = fmul fast float %5885, %5880
  %5887 = call float @dx.op.dot3.f32(i32 55, float %5858, float %5860, float %5862, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = select i1 %294, float 0.000000e+00, float %5858
  %5889 = select i1 %294, float %5887, float %5860
  %5890 = select i1 %294, float 0.000000e+00, float %5862
  %5891 = call float @dx.op.dot3.f32(i32 55, float %5831, float %5832, float %5833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5892 = select i1 %294, float 0.000000e+00, float %5831
  %5893 = select i1 %294, float %5891, float %5832
  %5894 = select i1 %294, float 0.000000e+00, float %5833
  %5895 = call float @dx.op.dot3.f32(i32 55, float %5882, float %5884, float %5886, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5896 = select i1 %294, float 0.000000e+00, float %5882
  %5897 = select i1 %294, float %5895, float %5884
  %5898 = select i1 %294, float 0.000000e+00, float %5886
  %5899 = fmul fast float %5630, 9.843750e-01
  %5900 = fmul fast float %5626, 9.843750e-01
  %5901 = fadd fast float %5899, 7.812500e-03
  %5902 = fadd fast float %5900, 7.812500e-03
  %5903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %5901, float %5902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5904 = extractvalue %dx.types.ResRet.f32 %5903, 2
  %5905 = extractvalue %dx.types.ResRet.f32 %5903, 3
  %5906 = fmul fast float %5904, %5620
  %5907 = fmul fast float %5904, %5621
  %5908 = fmul fast float %5904, %5628
  %5909 = fadd fast float %5906, %5905
  %5910 = fadd fast float %5907, %5905
  %5911 = fadd fast float %5908, %5905
  %5912 = fcmp fast ogt float %4288, 0.000000e+00
  br i1 %5912, label %5913, label %5939

; <label>:5913                                    ; preds = %5805
  %5914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4288, float %5630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.ResRet.f32 %5914, 1
  %5917 = extractvalue %dx.types.ResRet.f32 %5914, 2
  %5918 = fadd fast float %5915, -5.000000e-01
  %5919 = fadd fast float %5916, -5.000000e-01
  %5920 = fadd fast float %5917, -5.000000e-01
  %5921 = fsub fast float 1.000000e+00, %5620
  %5922 = fsub fast float 1.000000e+00, %5621
  %5923 = fsub fast float 1.000000e+00, %5628
  %5924 = fmul fast float %5620, 4.000000e+00
  %5925 = fmul fast float %5924, %5921
  %5926 = fmul fast float %5925, %5918
  %5927 = fmul fast float %5621, 4.000000e+00
  %5928 = fmul fast float %5927, %5922
  %5929 = fmul fast float %5928, %5919
  %5930 = fmul fast float %5628, 4.000000e+00
  %5931 = fmul fast float %5930, %5923
  %5932 = fmul fast float %5931, %5920
  %5933 = fadd fast float %5926, %5909
  %5934 = fadd fast float %5929, %5910
  %5935 = fadd fast float %5932, %5911
  %5936 = call float @dx.op.unary.f32(i32 7, float %5933)  ; Saturate(value)
  %5937 = call float @dx.op.unary.f32(i32 7, float %5934)  ; Saturate(value)
  %5938 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  br label %5939

; <label>:5939                                    ; preds = %5913, %5805
  %5940 = phi float [ %5936, %5913 ], [ %5909, %5805 ]
  %5941 = phi float [ %5937, %5913 ], [ %5910, %5805 ]
  %5942 = phi float [ %5938, %5913 ], [ %5911, %5805 ]
  %5943 = call float @dx.op.binary.f32(i32 35, float %5941, float %5942)  ; FMax(a,b)
  %5944 = call float @dx.op.binary.f32(i32 35, float %5940, float %5943)  ; FMax(a,b)
  %5945 = fsub fast float 1.000000e+00, %5944
  %5946 = fmul fast float %5944, %5626
  %5947 = fadd fast float %5946, %5626
  %5948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5949 = extractvalue %dx.types.CBufRet.f32 %5948, 2
  %5950 = extractvalue %dx.types.CBufRet.f32 %5948, 3
  %5951 = fmul fast float %5947, %5949
  %5952 = fadd fast float %5951, %5950
  %5953 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  %5954 = fsub fast float 1.000000e+00, %5651
  %5955 = fadd fast float %5954, %5953
  %5956 = call float @dx.op.unary.f32(i32 7, float %5955)  ; Saturate(value)
  %5957 = fcmp fast olt float %5956, 1.000000e+00
  br i1 %5957, label %5958, label %6406

; <label>:5958                                    ; preds = %5939
  %5959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5960 = extractvalue %dx.types.CBufRet.f32 %5959, 2
  %5961 = extractvalue %dx.types.CBufRet.f32 %5959, 3
  %5962 = fmul fast float %5960, %111
  %5963 = fmul fast float %5961, %112
  %5964 = fptoui float %5962 to i32
  %5965 = fptoui float %5963 to i32
  %5966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5967 = extractvalue %dx.types.CBufRet.f32 %5966, 0
  %5968 = extractvalue %dx.types.CBufRet.f32 %5966, 2
  %5969 = extractvalue %dx.types.CBufRet.f32 %5966, 3
  %5970 = fadd fast float %98, -4.000000e+00
  %5971 = call float @dx.op.binary.f32(i32 35, float %5970, float 0.000000e+00)  ; FMax(a,b)
  %5972 = fadd fast float %5971, %5967
  %5973 = fmul fast float %5972, %5968
  %5974 = call float @dx.op.unary.f32(i32 23, float %5973)  ; Log(value)
  %5975 = fmul fast float %5974, %5969
  %5976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.f32 %5976, 2
  %5978 = fmul fast float %5975, %5977
  %5979 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.i32 %5980, 1
  %5982 = add i32 %5981, -1
  %5983 = uitofp i32 %5981 to float
  %5984 = fmul fast float %5983, %5979
  %5985 = fptoui float %5984 to i32
  %5986 = call i32 @dx.op.binary.i32(i32 40, i32 %5985, i32 %5982)  ; UMin(a,b)
  %5987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5988 = extractvalue %dx.types.CBufRet.i32 %5987, 2
  %5989 = extractvalue %dx.types.CBufRet.i32 %5987, 3
  %5990 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5965, i32 %5988, i32 %5964)  ; UMad(a,b,c)
  %5991 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5986, i32 %5989, i32 %5990)  ; UMad(a,b,c)
  %5992 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %5993 = fptoui float %5992 to i32
  %5994 = lshr i32 %5993, 5
  %5995 = call i32 @dx.op.binary.i32(i32 40, i32 %5994, i32 8191)  ; UMin(a,b)
  br i1 false, label %5996, label %6003

; <label>:5996                                    ; preds = %5958
  %5997 = fadd fast float 0.000000e+00, %5638
  %5998 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %5997, float %5636, float %5637, float %5997)  ; Dot3(ax,ay,az,bx,by,bz)
  %5999 = call float @dx.op.unary.f32(i32 25, float %5998)  ; Rsqrt(value)
  %6000 = fmul fast float %5999, %5636
  %6001 = fmul fast float %5999, %5637
  %6002 = fmul fast float %5997, %5999
  br label %6003

; <label>:6003                                    ; preds = %5996, %5958
  %6004 = phi float [ %6000, %5996 ], [ %5636, %5958 ]
  %6005 = phi float [ %6001, %5996 ], [ %5637, %5958 ]
  %6006 = phi float [ %6002, %5996 ], [ %5638, %5958 ]
  %6007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.i32 %6007, 2
  %6009 = add nsw i32 %6008, -1
  %6010 = call i32 @dx.op.binary.i32(i32 37, i32 %6009, i32 0)  ; IMax(a,b)
  %6011 = shl i32 %5995, 2
  %6012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6011, i32 undef)  ; BufferLoad(srv,index,wot)
  %6013 = extractvalue %dx.types.ResRet.i32 %6012, 0
  %6014 = lshr i32 %6013, 16
  %6015 = and i32 %6013, 65535
  %6016 = lshr i32 %6013, 21
  %6017 = lshr i32 %6015, 5
  %6018 = call i32 @dx.op.binary.i32(i32 40, i32 %6017, i32 %6010)  ; UMin(a,b)
  %6019 = icmp ugt i32 %6016, %6018
  br i1 %6019, label %6382, label %6020

; <label>:6020                                    ; preds = %6003
  br label %6021

; <label>:6021                                    ; preds = %6374, %6020
  %6022 = phi float [ %6375, %6374 ], [ 0.000000e+00, %6020 ]
  %6023 = phi float [ %6376, %6374 ], [ 0.000000e+00, %6020 ]
  %6024 = phi float [ %6377, %6374 ], [ 0.000000e+00, %6020 ]
  %6025 = phi float [ %6378, %6374 ], [ 1.000000e+00, %6020 ]
  %6026 = phi i32 [ %6379, %6374 ], [ %6016, %6020 ]
  %6027 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6028 = extractvalue %dx.types.CBufRet.i32 %6027, 2
  %6029 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5991, i32 %6028, i32 %6026)  ; UMad(a,b,c)
  %6030 = shl i32 %6029, 2
  %6031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6030, i32 undef)  ; BufferLoad(srv,index,wot)
  %6032 = extractvalue %dx.types.ResRet.i32 %6031, 0
  %6033 = shl i32 %6026, 5
  %6034 = sub nsw i32 %6014, %6033
  %6035 = call i32 @dx.op.binary.i32(i32 37, i32 %6034, i32 0)  ; IMax(a,b)
  %6036 = call i32 @dx.op.binary.i32(i32 38, i32 %6035, i32 31)  ; IMin(a,b)
  %6037 = sub nsw i32 1, %6014
  %6038 = add nsw i32 %6037, %6015
  %6039 = call i32 @dx.op.binary.i32(i32 37, i32 %6038, i32 0)  ; IMax(a,b)
  %6040 = call i32 @dx.op.binary.i32(i32 38, i32 %6039, i32 32)  ; IMin(a,b)
  %6041 = and i32 %6040, 31
  %6042 = shl i32 -1, %6041
  %6043 = xor i32 %6042, -1
  %6044 = and i32 %6036, 31
  %6045 = shl i32 %6043, %6044
  %6046 = icmp eq i32 %6040, 32
  %6047 = select i1 %6046, i32 -1, i32 %6045
  %6048 = and i32 %6047, %6032
  %6049 = icmp eq i32 %6048, 0
  br i1 %6049, label %6374, label %6050

; <label>:6050                                    ; preds = %6021
  br label %6051

; <label>:6051                                    ; preds = %6157, %6050
  %6052 = phi float [ %6158, %6157 ], [ %6022, %6050 ]
  %6053 = phi float [ %6159, %6157 ], [ %6023, %6050 ]
  %6054 = phi float [ %6160, %6157 ], [ %6024, %6050 ]
  %6055 = phi float [ %6161, %6157 ], [ %6025, %6050 ]
  %6056 = phi i32 [ %6061, %6157 ], [ %6048, %6050 ]
  %6057 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6056)  ; FirstbitLo(value)
  %6058 = add i32 %6057, %6033
  %6059 = and i32 %6057, 31
  %6060 = shl i32 1, %6059
  %6061 = xor i32 %6060, %6056
  %6062 = mul i32 %6058, 72
  %6063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6062, i32 undef)  ; BufferLoad(srv,index,wot)
  %6064 = extractvalue %dx.types.ResRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.ResRet.f32 %6063, 1
  %6066 = extractvalue %dx.types.ResRet.f32 %6063, 2
  %6067 = add i32 %6062, 12
  %6068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6067, i32 undef)  ; BufferLoad(srv,index,wot)
  %6069 = extractvalue %dx.types.ResRet.i32 %6068, 0
  %6070 = add i32 %6062, 16
  %6071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6070, i32 undef)  ; BufferLoad(srv,index,wot)
  %6072 = extractvalue %dx.types.ResRet.f32 %6071, 0
  %6073 = extractvalue %dx.types.ResRet.f32 %6071, 1
  %6074 = extractvalue %dx.types.ResRet.f32 %6071, 2
  %6075 = add i32 %6062, 28
  %6076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6075, i32 undef)  ; BufferLoad(srv,index,wot)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  %6078 = add i32 %6062, 32
  %6079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6078, i32 undef)  ; BufferLoad(srv,index,wot)
  %6080 = extractvalue %dx.types.ResRet.f32 %6079, 0
  %6081 = extractvalue %dx.types.ResRet.f32 %6079, 1
  %6082 = extractvalue %dx.types.ResRet.f32 %6079, 2
  %6083 = extractvalue %dx.types.ResRet.f32 %6079, 3
  %6084 = add i32 %6062, 48
  %6085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6084, i32 undef)  ; BufferLoad(srv,index,wot)
  %6086 = extractvalue %dx.types.ResRet.f32 %6085, 0
  %6087 = extractvalue %dx.types.ResRet.f32 %6085, 1
  %6088 = add i32 %6062, 56
  %6089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6088, i32 undef)  ; BufferLoad(srv,index,wot)
  %6090 = extractvalue %dx.types.ResRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.ResRet.f32 %6089, 1
  %6092 = add i32 %6062, 64
  %6093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6092, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = mul i32 %6058, 60
  %6097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6096, i32 undef)  ; BufferLoad(srv,index,wot)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.ResRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6097, 2
  %6101 = add i32 %6096, 12
  %6102 = add i32 %6096, 48
  %6103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6102, i32 undef)  ; BufferLoad(srv,index,wot)
  %6104 = extractvalue %dx.types.ResRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.ResRet.f32 %6103, 1
  %6106 = extractvalue %dx.types.ResRet.f32 %6103, 2
  %6107 = and i32 %6069, 32767
  %6108 = bitcast float %6064 to i32
  %6109 = icmp eq i32 %6108, -1
  %6110 = bitcast float %6065 to i32
  %6111 = and i32 %6069, 32768
  %6112 = icmp ne i32 %6111, 0
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 0
  %6115 = extractvalue %dx.types.CBufRet.f32 %6113, 1
  %6116 = extractvalue %dx.types.CBufRet.f32 %6113, 2
  %6117 = fsub fast float %6098, %6114
  %6118 = fsub fast float %6099, %6115
  %6119 = fsub fast float %6100, %6116
  %6120 = fsub fast float %190, %6117
  %6121 = fsub fast float %191, %6118
  %6122 = fsub fast float %192, %6119
  %6123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6101, i32 undef)  ; BufferLoad(srv,index,wot)
  %6124 = extractvalue %dx.types.ResRet.f32 %6123, 0
  %6125 = extractvalue %dx.types.ResRet.f32 %6123, 1
  %6126 = extractvalue %dx.types.ResRet.f32 %6123, 2
  %6127 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6124, float %6125, float %6126)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = add i32 %6096, 24
  %6129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6128, i32 undef)  ; BufferLoad(srv,index,wot)
  %6130 = extractvalue %dx.types.ResRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.ResRet.f32 %6129, 1
  %6132 = extractvalue %dx.types.ResRet.f32 %6129, 2
  %6133 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6130, float %6131, float %6132)  ; Dot3(ax,ay,az,bx,by,bz)
  %6134 = add i32 %6096, 36
  %6135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6134, i32 undef)  ; BufferLoad(srv,index,wot)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.ResRet.f32 %6135, 1
  %6138 = extractvalue %dx.types.ResRet.f32 %6135, 2
  %6139 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6136, float %6137, float %6138)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = call float @dx.op.unary.f32(i32 6, float %6127)  ; FAbs(value)
  %6141 = call float @dx.op.unary.f32(i32 6, float %6133)  ; FAbs(value)
  %6142 = call float @dx.op.unary.f32(i32 6, float %6139)  ; FAbs(value)
  %6143 = fsub fast float %6104, %6140
  %6144 = fsub fast float %6105, %6141
  %6145 = fsub fast float %6106, %6142
  %6146 = fmul fast float %6143, %6072
  %6147 = fmul fast float %6144, %6073
  %6148 = fmul fast float %6145, %6074
  %6149 = call float @dx.op.binary.f32(i32 36, float %6147, float %6148)  ; FMin(a,b)
  %6150 = call float @dx.op.binary.f32(i32 36, float %6146, float %6149)  ; FMin(a,b)
  %6151 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6152 = call float @dx.op.binary.f32(i32 36, float %6055, float %6151)  ; FMin(a,b)
  %6153 = uitofp i1 %6112 to float
  %6154 = fsub fast float 1.000000e+00, %6153
  %6155 = fmul fast float %6152, %6154
  %6156 = fcmp fast ogt float %6155, 0.000000e+00
  br i1 %6156, label %6163, label %6157

; <label>:6157                                    ; preds = %6305, %6051
  %6158 = phi float [ %6369, %6305 ], [ %6052, %6051 ]
  %6159 = phi float [ %6370, %6305 ], [ %6053, %6051 ]
  %6160 = phi float [ %6371, %6305 ], [ %6054, %6051 ]
  %6161 = phi float [ %6372, %6305 ], [ %6055, %6051 ]
  %6162 = icmp eq i32 %6056, %6060
  br i1 %6162, label %6373, label %6051

; <label>:6163                                    ; preds = %6051
  br i1 %6109, label %6221, label %6164

; <label>:6164                                    ; preds = %6163
  %6165 = fsub fast float -0.000000e+00, %6124
  %6166 = fsub fast float -0.000000e+00, %6125
  %6167 = fsub fast float -0.000000e+00, %6126
  %6168 = call float @dx.op.dot3.f32(i32 55, float %6004, float %6005, float %6006, float %6165, float %6166, float %6167)  ; Dot3(ax,ay,az,bx,by,bz)
  %6169 = fsub fast float -0.000000e+00, %6168
  %6170 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6165, float %6166, float %6167)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = fadd fast float %6170, %6087
  %6172 = fadd fast float %6086, %6170
  %6173 = fsub fast float -0.000000e+00, %6172
  %6174 = fcmp ogt float %6168, -0.000000e+00
  %6175 = select i1 %6174, float %6173, float %6171
  %6176 = call float @dx.op.unary.f32(i32 6, float %6169)  ; FAbs(value)
  %6177 = fdiv fast float 1.000000e+00, %6176
  %6178 = fmul fast float %6175, %6177
  %6179 = call float @dx.op.binary.f32(i32 35, float %6178, float 0.000000e+00)  ; FMax(a,b)
  %6180 = fsub fast float -0.000000e+00, %6130
  %6181 = fsub fast float -0.000000e+00, %6131
  %6182 = fsub fast float -0.000000e+00, %6132
  %6183 = call float @dx.op.dot3.f32(i32 55, float %6004, float %6005, float %6006, float %6180, float %6181, float %6182)  ; Dot3(ax,ay,az,bx,by,bz)
  %6184 = fsub fast float -0.000000e+00, %6183
  %6185 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6180, float %6181, float %6182)  ; Dot3(ax,ay,az,bx,by,bz)
  %6186 = fadd fast float %6185, %6091
  %6187 = fadd fast float %6090, %6185
  %6188 = fsub fast float -0.000000e+00, %6187
  %6189 = fcmp ogt float %6183, -0.000000e+00
  %6190 = select i1 %6189, float %6188, float %6186
  %6191 = call float @dx.op.unary.f32(i32 6, float %6184)  ; FAbs(value)
  %6192 = fdiv fast float 1.000000e+00, %6191
  %6193 = fmul fast float %6190, %6192
  %6194 = call float @dx.op.binary.f32(i32 35, float %6193, float 0.000000e+00)  ; FMax(a,b)
  %6195 = fsub fast float -0.000000e+00, %6136
  %6196 = fsub fast float -0.000000e+00, %6137
  %6197 = fsub fast float -0.000000e+00, %6138
  %6198 = call float @dx.op.dot3.f32(i32 55, float %6004, float %6005, float %6006, float %6195, float %6196, float %6197)  ; Dot3(ax,ay,az,bx,by,bz)
  %6199 = fsub fast float -0.000000e+00, %6198
  %6200 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6195, float %6196, float %6197)  ; Dot3(ax,ay,az,bx,by,bz)
  %6201 = fadd fast float %6200, %6095
  %6202 = fadd fast float %6094, %6200
  %6203 = fsub fast float -0.000000e+00, %6202
  %6204 = fcmp ogt float %6198, -0.000000e+00
  %6205 = select i1 %6204, float %6203, float %6201
  %6206 = call float @dx.op.unary.f32(i32 6, float %6199)  ; FAbs(value)
  %6207 = fdiv fast float 1.000000e+00, %6206
  %6208 = fmul fast float %6205, %6207
  %6209 = call float @dx.op.binary.f32(i32 35, float %6208, float 0.000000e+00)  ; FMax(a,b)
  %6210 = call float @dx.op.binary.f32(i32 36, float %6194, float %6209)  ; FMin(a,b)
  %6211 = call float @dx.op.binary.f32(i32 36, float %6179, float %6210)  ; FMin(a,b)
  %6212 = fmul fast float %6211, %6004
  %6213 = fmul fast float %6211, %6005
  %6214 = fmul fast float %6211, %6006
  %6215 = fadd fast float %6212, %190
  %6216 = fadd fast float %6213, %191
  %6217 = fadd fast float %6214, %192
  %6218 = fsub fast float %6215, %6064
  %6219 = fsub fast float %6216, %6065
  %6220 = fsub fast float %6217, %6066
  br label %6228

; <label>:6221                                    ; preds = %6163
  %6222 = fmul fast float %6004, 8.096000e+03
  %6223 = fmul fast float %6005, 8.096000e+03
  %6224 = fmul fast float %6006, 8.096000e+03
  %6225 = fadd fast float %6222, %190
  %6226 = fadd fast float %6223, %191
  %6227 = fadd fast float %6224, %192
  br label %6228

; <label>:6228                                    ; preds = %6221, %6164
  %6229 = phi float [ %6004, %6221 ], [ %6218, %6164 ]
  %6230 = phi float [ %6005, %6221 ], [ %6219, %6164 ]
  %6231 = phi float [ %6006, %6221 ], [ %6220, %6164 ]
  %6232 = phi float [ %6225, %6221 ], [ %6215, %6164 ]
  %6233 = phi float [ %6226, %6221 ], [ %6216, %6164 ]
  %6234 = phi float [ %6227, %6221 ], [ %6217, %6164 ]
  %6235 = fcmp fast olt float %6083, 1.000000e+00
  br i1 %6235, label %6236, label %6267, !dx.controlflow.hints !94

; <label>:6236                                    ; preds = %6228
  %6237 = fmul fast float %6231, %6081
  %6238 = fmul fast float %6230, %6082
  %6239 = fsub fast float %6237, %6238
  %6240 = fmul fast float %6229, %6082
  %6241 = fmul fast float %6231, %6080
  %6242 = fsub fast float %6240, %6241
  %6243 = fmul fast float %6230, %6080
  %6244 = fmul fast float %6229, %6081
  %6245 = fsub fast float %6243, %6244
  %6246 = fmul fast float %6239, 2.000000e+00
  %6247 = fmul fast float %6242, 2.000000e+00
  %6248 = fmul fast float %6245, 2.000000e+00
  %6249 = fmul fast float %6246, %6083
  %6250 = fmul fast float %6247, %6083
  %6251 = fmul fast float %6248, %6083
  %6252 = fmul fast float %6248, %6081
  %6253 = fmul fast float %6247, %6082
  %6254 = fmul fast float %6246, %6082
  %6255 = fmul fast float %6248, %6080
  %6256 = fmul fast float %6247, %6080
  %6257 = fmul fast float %6246, %6081
  %6258 = fadd fast float %6252, %6229
  %6259 = fadd fast float %6258, %6249
  %6260 = fsub fast float %6259, %6253
  %6261 = fsub fast float %6230, %6255
  %6262 = fadd fast float %6261, %6250
  %6263 = fadd fast float %6262, %6254
  %6264 = fadd fast float %6251, %6231
  %6265 = fsub fast float %6264, %6257
  %6266 = fadd fast float %6265, %6256
  br label %6267

; <label>:6267                                    ; preds = %6236, %6228
  %6268 = phi float [ %6260, %6236 ], [ %6229, %6228 ]
  %6269 = phi float [ %6263, %6236 ], [ %6230, %6228 ]
  %6270 = phi float [ %6266, %6236 ], [ %6231, %6228 ]
  br i1 %6109, label %6302, label %6271

; <label>:6271                                    ; preds = %6267
  %6272 = fmul fast float %5626, 0x400187C840000000
  %6273 = fadd fast float %6272, 0xC00EFC2120000000
  %6274 = fmul fast float %6273, %5626
  %6275 = fadd fast float %6274, 0x3FE5D16340000000
  %6276 = fmul fast float %6275, %5626
  %6277 = fadd fast float %6276, 1.000000e+00
  %6278 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6279 = fsub fast float %6232, %190
  %6280 = fsub fast float %6233, %191
  %6281 = fsub fast float %6234, %192
  %6282 = fsub fast float %6232, %6064
  %6283 = fsub fast float %6233, %6065
  %6284 = fsub fast float %6234, %6066
  %6285 = call float @dx.op.dot3.f32(i32 55, float %6279, float %6280, float %6281, float %6279, float %6280, float %6281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6286 = call float @dx.op.dot3.f32(i32 55, float %6282, float %6283, float %6284, float %6282, float %6283, float %6284)  ; Dot3(ax,ay,az,bx,by,bz)
  %6287 = fadd fast float %6286, 0x3EE4F8B580000000
  %6288 = fdiv fast float %6285, %6287
  %6289 = bitcast float %6288 to i32
  %6290 = ashr i32 %6289, 1
  %6291 = add nsw i32 %6290, 532487669
  %6292 = bitcast i32 %6291 to float
  %6293 = fmul fast float %6292, %6278
  %6294 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  %6295 = fmul fast float %6294, 0x4009981AE0000000
  %6296 = fsub fast float 0x40111BBD80000000, %6295
  %6297 = fmul fast float %6296, %6294
  %6298 = fadd fast float %6297, 0xC0009F6020000000
  %6299 = fmul fast float %6298, %6294
  %6300 = fadd fast float %6299, 1.000000e+00
  %6301 = call float @dx.op.unary.f32(i32 7, float %6300)  ; Saturate(value)
  br label %6305

; <label>:6302                                    ; preds = %6267
  %6303 = icmp ne i32 %6110, -1
  %6304 = zext i1 %6303 to i32
  br label %6305

; <label>:6305                                    ; preds = %6302, %6271
  %6306 = phi float [ %5626, %6302 ], [ %6301, %6271 ]
  %6307 = phi i32 [ %6304, %6302 ], [ 0, %6271 ]
  %6308 = fmul float %6306, 5.000000e+00
  %6309 = fsub float 5.000000e+00, %6308
  %6310 = icmp ne i32 %6307, 0
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 3
  %6313 = fadd fast float %6312, %6309
  %6314 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6313)  ; FMax(a,b)
  %6315 = call float @dx.op.unary.f32(i32 6, float %6268)  ; FAbs(value)
  %6316 = call float @dx.op.unary.f32(i32 6, float %6269)  ; FAbs(value)
  %6317 = fadd fast float %6316, %6315
  %6318 = call float @dx.op.unary.f32(i32 6, float %6270)  ; FAbs(value)
  %6319 = fadd fast float %6317, %6318
  %6320 = fcmp fast oeq float %6319, 0.000000e+00
  %6321 = fdiv fast float 1.000000e+00, %6319
  %6322 = select i1 %6320, float 1.000000e+00, float %6321
  %6323 = fmul fast float %6322, %6268
  %6324 = fmul fast float %6322, %6269
  %6325 = call float @dx.op.unary.f32(i32 6, float %6324)  ; FAbs(value)
  %6326 = call float @dx.op.unary.f32(i32 6, float %6323)  ; FAbs(value)
  %6327 = fsub fast float 1.000000e+00, %6325
  %6328 = fsub fast float 1.000000e+00, %6326
  %6329 = fcmp fast oge float %6323, 0.000000e+00
  %6330 = fcmp fast oge float %6324, 0.000000e+00
  %6331 = select i1 %6329, float 1.000000e+00, float -1.000000e+00
  %6332 = select i1 %6330, float 1.000000e+00, float -1.000000e+00
  %6333 = fcmp fast ole float %6270, 0.000000e+00
  %6334 = fmul fast float %6331, %6327
  %6335 = fmul fast float %6332, %6328
  %6336 = select i1 %6333, float %6334, float %6323
  %6337 = select i1 %6333, float %6335, float %6324
  %6338 = fmul fast float %6336, 5.000000e-01
  %6339 = fmul fast float %6337, 5.000000e-01
  %6340 = fadd fast float %6338, 5.000000e-01
  %6341 = fadd fast float %6339, 5.000000e-01
  %6342 = uitofp i32 %6107 to float
  %6343 = call float @dx.op.binary.f32(i32 36, float %6314, float 3.000000e+00)  ; FMin(a,b)
  %6344 = fadd fast float %6343, 2.000000e+00
  %6345 = call float @dx.op.unary.f32(i32 21, float %6344)  ; Exp(value)
  %6346 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6347 = fmul fast float %6346, %6345
  %6348 = fmul fast float %6347, 2.000000e+00
  %6349 = fsub fast float 1.000000e+00, %6348
  %6350 = fmul fast float %6340, %6349
  %6351 = fmul fast float %6341, %6349
  %6352 = fadd fast float %6350, %6347
  %6353 = fadd fast float %6351, %6347
  %6354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %6352, float %6353, float %6342, float undef, i32 0, i32 0, i32 undef, float %6314)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6355 = extractvalue %dx.types.ResRet.f32 %6354, 0
  %6356 = extractvalue %dx.types.ResRet.f32 %6354, 1
  %6357 = extractvalue %dx.types.ResRet.f32 %6354, 2
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 3
  %6360 = fmul fast float %6359, %6077
  %6361 = call float @dx.op.binary.f32(i32 36, float %5656, float %6360)  ; FMin(a,b)
  %6362 = select i1 %6310, float %6361, float %6360
  %6363 = fmul fast float %6355, %6155
  %6364 = fmul fast float %6363, %6362
  %6365 = fmul fast float %6356, %6155
  %6366 = fmul fast float %6365, %6362
  %6367 = fmul fast float %6357, %6155
  %6368 = fmul fast float %6367, %6362
  %6369 = fadd fast float %6364, %6052
  %6370 = fadd fast float %6366, %6053
  %6371 = fadd fast float %6368, %6054
  %6372 = fsub fast float %6055, %6155
  br label %6157

; <label>:6373                                    ; preds = %6157
  br label %6374

; <label>:6374                                    ; preds = %6373, %6021
  %6375 = phi float [ %6022, %6021 ], [ %6158, %6373 ]
  %6376 = phi float [ %6023, %6021 ], [ %6159, %6373 ]
  %6377 = phi float [ %6024, %6021 ], [ %6160, %6373 ]
  %6378 = phi float [ %6025, %6021 ], [ %6161, %6373 ]
  %6379 = add i32 %6026, 1
  %6380 = icmp ugt i32 %6379, %6018
  br i1 %6380, label %6381, label %6021, !llvm.loop !95

; <label>:6381                                    ; preds = %6374
  br label %6382

; <label>:6382                                    ; preds = %6381, %6003
  %6383 = phi float [ 0.000000e+00, %6003 ], [ %6375, %6381 ]
  %6384 = phi float [ 0.000000e+00, %6003 ], [ %6376, %6381 ]
  %6385 = phi float [ 0.000000e+00, %6003 ], [ %6377, %6381 ]
  %6386 = call float @dx.op.dot3.f32(i32 55, float %6383, float %6384, float %6385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6387 = select i1 %294, float 0.000000e+00, float %6383
  %6388 = select i1 %294, float %6386, float %6384
  %6389 = select i1 %294, float 0.000000e+00, float %6385
  %6390 = fcmp fast olt float %5956, 0.000000e+00
  %6391 = call float @dx.op.unary.f32(i32 6, float %5956)  ; FAbs(value)
  %6392 = fmul fast float %6391, %5896
  %6393 = fmul fast float %6391, %5897
  %6394 = fmul fast float %6391, %5898
  %6395 = select i1 %6390, float %5896, float %6392
  %6396 = select i1 %6390, float %5897, float %6393
  %6397 = select i1 %6390, float %5898, float %6394
  %6398 = fsub fast float 1.000000e+00, %6391
  %6399 = call float @dx.op.unary.f32(i32 7, float %6398)  ; Saturate(value)
  %6400 = fmul fast float %6399, %6387
  %6401 = fmul fast float %6399, %6388
  %6402 = fmul fast float %6399, %6389
  %6403 = fadd fast float %6395, %6400
  %6404 = fadd fast float %6396, %6401
  %6405 = fadd fast float %6397, %6402
  br label %6406

; <label>:6406                                    ; preds = %6382, %5939
  %6407 = phi float [ %5896, %5939 ], [ %6403, %6382 ]
  %6408 = phi float [ %5897, %5939 ], [ %6404, %6382 ]
  %6409 = phi float [ %5898, %5939 ], [ %6405, %6382 ]
  %6410 = call float @dx.op.dot3.f32(i32 55, float %5623, float %5624, float %5625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6411 = fcmp fast ogt float %6410, 0x3E7FF19E20000000
  %6412 = fdiv fast float 1.000000e+00, %6410
  %6413 = select i1 %6411, float %6412, float 0.000000e+00
  %6414 = fmul fast float %6413, %5623
  %6415 = fmul fast float %6413, %5624
  %6416 = fmul fast float %6413, %5625
  %6417 = fadd fast float %6414, -1.000000e+00
  %6418 = fadd fast float %6415, -1.000000e+00
  %6419 = fadd fast float %6416, -1.000000e+00
  %6420 = fmul fast float %6417, 5.000000e-01
  %6421 = fmul fast float %6418, 5.000000e-01
  %6422 = fmul fast float %6419, 5.000000e-01
  %6423 = fadd fast float %6420, 1.000000e+00
  %6424 = fadd fast float %6421, 1.000000e+00
  %6425 = fadd fast float %6422, 1.000000e+00
  %6426 = fmul fast float %5945, %4400
  %6427 = fmul fast float %5945, %4401
  %6428 = fmul fast float %5945, %4402
  %6429 = fadd fast float %6426, -1.000000e+00
  %6430 = fadd fast float %6427, -1.000000e+00
  %6431 = fadd fast float %6428, -1.000000e+00
  %6432 = fmul fast float %6429, %4314
  %6433 = fmul fast float %6430, %4314
  %6434 = fmul fast float %6431, %4314
  %6435 = fmul fast float %6407, %5940
  %6436 = fmul fast float %6408, %5941
  %6437 = fmul fast float %6409, %5942
  %6438 = fsub fast float 1.000000e+00, %5630
  %6439 = bitcast float %6438 to i32
  %6440 = sitofp i32 %6439 to float
  %6441 = fmul fast float %6440, 5.000000e+00
  %6442 = fadd fast float %6441, 0xC1EFBF8940000000
  %6443 = fptosi float %6442 to i32
  %6444 = bitcast i32 %6443 to float
  %6445 = fmul fast float %6444, %4289
  %6446 = fmul fast float %5888, %6445
  %6447 = fmul fast float %6446, %5945
  %6448 = fmul fast float %6447, %6423
  %6449 = fmul fast float %5889, %6445
  %6450 = fmul fast float %6449, %5945
  %6451 = fmul fast float %6450, %6424
  %6452 = fmul fast float %5890, %6445
  %6453 = fmul fast float %6452, %5945
  %6454 = fmul fast float %6453, %6425
  %6455 = fadd fast float %6435, %4278
  %6456 = fadd fast float %6455, %6448
  %6457 = fmul fast float %6456, %4314
  %6458 = fadd fast float %6436, %4279
  %6459 = fadd fast float %6458, %6451
  %6460 = fmul fast float %6459, %4314
  %6461 = fadd fast float %6437, %4280
  %6462 = fadd fast float %6461, %6454
  %6463 = fmul fast float %6462, %4314
  %6464 = fadd fast float %6434, 1.000000e+00
  %6465 = fadd fast float %6433, 1.000000e+00
  %6466 = fadd fast float %6432, 1.000000e+00
  %6467 = fmul fast float %5945, %5890
  %6468 = fmul fast float %5945, %5889
  %6469 = fmul fast float %5945, %5888
  %6470 = fmul fast float %6466, %5892
  %6471 = fmul fast float %6465, %5893
  %6472 = fmul fast float %6464, %5894
  %6473 = fadd fast float %6470, %6469
  %6474 = fmul fast float %6473, %4314
  %6475 = fadd fast float %6471, %6468
  %6476 = fmul fast float %6475, %4314
  %6477 = fadd fast float %6472, %6467
  %6478 = fmul fast float %6477, %4314
  %6479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6480 = extractvalue %dx.types.CBufRet.f32 %6479, 3
  %6481 = fcmp fast oeq float %6480, 0.000000e+00
  br i1 %6481, label %8165, label %6482

; <label>:6482                                    ; preds = %6406
  %6483 = extractvalue %dx.types.CBufRet.f32 %6479, 0
  %6484 = extractvalue %dx.types.CBufRet.f32 %6479, 1
  %6485 = extractvalue %dx.types.CBufRet.f32 %6479, 2
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6488 = extractvalue %dx.types.CBufRet.f32 %6486, 1
  %6489 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.CBufRet.f32 %6490, 1
  %6493 = call float @dx.op.dot3.f32(i32 55, float %6487, float %6488, float %6489, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6494 = select i1 %294, float %6491, float %6487
  %6495 = select i1 %294, float %6493, float %6488
  %6496 = select i1 %294, float %6492, float %6489
  %6497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6498 = extractvalue %dx.types.CBufRet.f32 %6497, 2
  %6499 = fmul fast float %6498, %118
  %6500 = fmul fast float %6498, %119
  %6501 = fmul fast float %6498, %120
  %6502 = fadd fast float %6499, %190
  %6503 = fadd fast float %6500, %191
  %6504 = fadd fast float %6501, %192
  %6505 = fcmp fast olt float %6480, 0.000000e+00
  br i1 %6505, label %7763, label %6506

; <label>:6506                                    ; preds = %6482
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 0
  %6509 = extractvalue %dx.types.CBufRet.f32 %6507, 1
  %6510 = extractvalue %dx.types.CBufRet.f32 %6507, 2
  %6511 = extractvalue %dx.types.CBufRet.f32 %6507, 3
  %6512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6513 = extractvalue %dx.types.CBufRet.f32 %6512, 0
  %6514 = extractvalue %dx.types.CBufRet.f32 %6512, 1
  %6515 = extractvalue %dx.types.CBufRet.f32 %6512, 2
  %6516 = extractvalue %dx.types.CBufRet.f32 %6512, 3
  %6517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6518 = extractvalue %dx.types.CBufRet.f32 %6517, 0
  %6519 = extractvalue %dx.types.CBufRet.f32 %6517, 1
  %6520 = extractvalue %dx.types.CBufRet.f32 %6517, 2
  %6521 = extractvalue %dx.types.CBufRet.f32 %6517, 3
  %6522 = fmul fast float %6508, %6502
  %6523 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %6509, float %6522)  ; FMad(a,b,c)
  %6524 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %6510, float %6523)  ; FMad(a,b,c)
  %6525 = fadd fast float %6524, %6511
  %6526 = fmul fast float %6513, %6502
  %6527 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %6514, float %6526)  ; FMad(a,b,c)
  %6528 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %6515, float %6527)  ; FMad(a,b,c)
  %6529 = fadd fast float %6528, %6516
  %6530 = fmul fast float %6518, %6502
  %6531 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %6519, float %6530)  ; FMad(a,b,c)
  %6532 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %6520, float %6531)  ; FMad(a,b,c)
  %6533 = fadd fast float %6532, %6521
  %6534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6535 = extractvalue %dx.types.CBufRet.f32 %6534, 0
  %6536 = fcmp fast une float %6535, 0.000000e+00
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = extractvalue %dx.types.CBufRet.f32 %6537, 1
  %6540 = extractvalue %dx.types.CBufRet.f32 %6537, 3
  %6541 = fmul fast float %6540, %6525
  %6542 = fmul fast float %6540, %6529
  %6543 = fadd fast float %6541, %6538
  %6544 = fadd fast float %6542, %6539
  %6545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6546 = extractvalue %dx.types.CBufRet.f32 %6545, 0
  %6547 = extractvalue %dx.types.CBufRet.f32 %6545, 1
  %6548 = extractvalue %dx.types.CBufRet.f32 %6545, 3
  %6549 = fmul fast float %6548, %6525
  %6550 = fmul fast float %6548, %6529
  %6551 = fadd fast float %6549, %6546
  %6552 = fadd fast float %6550, %6547
  %6553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6554 = extractvalue %dx.types.CBufRet.f32 %6553, 1
  %6555 = fsub fast float %6554, %6533
  %6556 = extractvalue %dx.types.CBufRet.f32 %6553, 2
  %6557 = fmul fast float %6555, %6556
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  br i1 %6536, label %6620, label %6560

; <label>:6560                                    ; preds = %6506
  %6561 = extractvalue %dx.types.CBufRet.f32 %6545, 2
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 2
  %6564 = fadd fast float %6563, %6561
  %6565 = fcmp fast ogt float %6564, 0.000000e+00
  br i1 %6565, label %6566, label %6590

; <label>:6566                                    ; preds = %6560
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6569 = extractvalue %dx.types.CBufRet.f32 %6567, 1
  %6570 = fsub fast float %6551, %6568
  %6571 = fsub fast float %6552, %6569
  %6572 = fcmp fast olt float %6570, 0.000000e+00
  %6573 = fcmp fast olt float %6571, 0.000000e+00
  %6574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6575 = extractvalue %dx.types.CBufRet.f32 %6574, 0
  %6576 = extractvalue %dx.types.CBufRet.f32 %6574, 1
  %6577 = extractvalue %dx.types.CBufRet.f32 %6574, 2
  %6578 = extractvalue %dx.types.CBufRet.f32 %6574, 3
  %6579 = select i1 %6572, float %6575, float %6577
  %6580 = select i1 %6573, float %6576, float %6578
  %6581 = fmul fast float %6579, %6570
  %6582 = fmul fast float %6580, %6571
  %6583 = call float @dx.op.unary.f32(i32 6, float %6581)  ; FAbs(value)
  %6584 = call float @dx.op.unary.f32(i32 6, float %6582)  ; FAbs(value)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6586 = call float @dx.op.binary.f32(i32 35, float %6583, float %6584)  ; FMax(a,b)
  %6587 = fsub fast float %6585, %6586
  %6588 = call float @dx.op.unary.f32(i32 7, float %6587)  ; Saturate(value)
  %6589 = fmul fast float %6588, %6559
  br label %6590

; <label>:6590                                    ; preds = %6566, %6560
  %6591 = phi float [ %6589, %6566 ], [ 0.000000e+00, %6560 ]
  %6592 = extractvalue %dx.types.CBufRet.f32 %6537, 2
  %6593 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6594 = fadd fast float %6593, %6592
  %6595 = fcmp fast ogt float %6594, 0.000000e+00
  br i1 %6595, label %6596, label %6620

; <label>:6596                                    ; preds = %6590
  %6597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6598 = extractvalue %dx.types.CBufRet.f32 %6597, 0
  %6599 = extractvalue %dx.types.CBufRet.f32 %6597, 1
  %6600 = fsub fast float %6543, %6598
  %6601 = fsub fast float %6544, %6599
  %6602 = fcmp fast olt float %6600, 0.000000e+00
  %6603 = fcmp fast olt float %6601, 0.000000e+00
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  %6606 = extractvalue %dx.types.CBufRet.f32 %6604, 1
  %6607 = extractvalue %dx.types.CBufRet.f32 %6604, 2
  %6608 = extractvalue %dx.types.CBufRet.f32 %6604, 3
  %6609 = select i1 %6602, float %6605, float %6607
  %6610 = select i1 %6603, float %6606, float %6608
  %6611 = fmul fast float %6609, %6600
  %6612 = fmul fast float %6610, %6601
  %6613 = call float @dx.op.unary.f32(i32 6, float %6611)  ; FAbs(value)
  %6614 = call float @dx.op.unary.f32(i32 6, float %6612)  ; FAbs(value)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6616 = call float @dx.op.binary.f32(i32 35, float %6613, float %6614)  ; FMax(a,b)
  %6617 = fsub fast float %6615, %6616
  %6618 = call float @dx.op.unary.f32(i32 7, float %6617)  ; Saturate(value)
  %6619 = fmul fast float %6618, %6559
  br label %6620

; <label>:6620                                    ; preds = %6596, %6590, %6506
  %6621 = phi float [ 0.000000e+00, %6506 ], [ %6619, %6596 ], [ 0.000000e+00, %6590 ]
  %6622 = phi float [ 0.000000e+00, %6506 ], [ %6591, %6596 ], [ %6591, %6590 ]
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 1
  %6625 = call float @dx.op.unary.f32(i32 7, float %6624)  ; Saturate(value)
  %6626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6627 = extractvalue %dx.types.CBufRet.f32 %6626, 0
  %6628 = extractvalue %dx.types.CBufRet.f32 %6626, 1
  %6629 = fsub fast float %6525, %6627
  %6630 = fsub fast float %6529, %6628
  %6631 = fcmp fast olt float %6629, 0.000000e+00
  %6632 = fcmp fast olt float %6630, 0.000000e+00
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = extractvalue %dx.types.CBufRet.f32 %6633, 1
  %6636 = extractvalue %dx.types.CBufRet.f32 %6633, 2
  %6637 = extractvalue %dx.types.CBufRet.f32 %6633, 3
  %6638 = select i1 %6631, float %6634, float %6636
  %6639 = select i1 %6632, float %6635, float %6637
  %6640 = fmul fast float %6638, %6629
  %6641 = fmul fast float %6639, %6630
  %6642 = call float @dx.op.unary.f32(i32 6, float %6640)  ; FAbs(value)
  %6643 = call float @dx.op.unary.f32(i32 6, float %6641)  ; FAbs(value)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6497, 0
  %6645 = call float @dx.op.binary.f32(i32 35, float %6642, float %6643)  ; FMax(a,b)
  %6646 = fsub fast float %6644, %6645
  %6647 = call float @dx.op.unary.f32(i32 7, float %6646)  ; Saturate(value)
  %6648 = call float @dx.op.binary.f32(i32 36, float %6647, float %6625)  ; FMin(a,b)
  %6649 = fmul fast float %6648, %6559
  %6650 = fsub fast float %6621, %6649
  %6651 = fsub fast float %6622, %6621
  %6652 = fsub fast float %6651, %6649
  %6653 = call float @dx.op.binary.f32(i32 35, float %6621, float %6622)  ; FMax(a,b)
  %6654 = call float @dx.op.binary.f32(i32 35, float %6649, float %6653)  ; FMax(a,b)
  %6655 = fcmp fast olt float %6654, 1.000000e+00
  br i1 %6655, label %6656, label %7054, !dx.controlflow.hints !97

; <label>:6656                                    ; preds = %6620
  %6657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6658 = extractvalue %dx.types.CBufRet.f32 %6657, 0
  %6659 = fcmp fast une float %6658, 0.000000e+00
  br i1 %6659, label %6660, label %7054, !dx.controlflow.hints !98

; <label>:6660                                    ; preds = %6656
  %6661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6662 = extractvalue %dx.types.CBufRet.f32 %6661, 0
  %6663 = extractvalue %dx.types.CBufRet.f32 %6661, 1
  %6664 = extractvalue %dx.types.CBufRet.f32 %6661, 2
  %6665 = extractvalue %dx.types.CBufRet.f32 %6661, 3
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 0
  %6668 = extractvalue %dx.types.CBufRet.f32 %6666, 1
  %6669 = extractvalue %dx.types.CBufRet.f32 %6666, 2
  %6670 = extractvalue %dx.types.CBufRet.f32 %6666, 3
  %6671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6672 = extractvalue %dx.types.CBufRet.f32 %6671, 0
  %6673 = extractvalue %dx.types.CBufRet.f32 %6671, 1
  %6674 = extractvalue %dx.types.CBufRet.f32 %6671, 2
  %6675 = extractvalue %dx.types.CBufRet.f32 %6671, 3
  %6676 = fmul fast float %6662, %6502
  %6677 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %6663, float %6676)  ; FMad(a,b,c)
  %6678 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %6664, float %6677)  ; FMad(a,b,c)
  %6679 = fadd fast float %6678, %6665
  %6680 = fmul fast float %6667, %6502
  %6681 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %6668, float %6680)  ; FMad(a,b,c)
  %6682 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %6669, float %6681)  ; FMad(a,b,c)
  %6683 = fadd fast float %6682, %6670
  %6684 = fmul fast float %6672, %6502
  %6685 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %6673, float %6684)  ; FMad(a,b,c)
  %6686 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %6674, float %6685)  ; FMad(a,b,c)
  %6687 = fadd fast float %6686, %6675
  %6688 = fcmp fast oge float %6679, 1.000000e+00
  %6689 = fcmp fast oge float %6683, 1.000000e+00
  %6690 = or i1 %6688, %6689
  %6691 = fcmp fast olt float %6679, 0.000000e+00
  %6692 = fcmp fast olt float %6683, 0.000000e+00
  %6693 = or i1 %6691, %6692
  %6694 = or i1 %6690, %6693
  br i1 %6694, label %7054, label %6695, !dx.controlflow.hints !99

; <label>:6695                                    ; preds = %6660
  %6696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6697 = extractvalue %dx.types.CBufRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.CBufRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.CBufRet.f32 %6696, 2
  %6700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.i32 %6700, 2
  %6702 = uitofp i32 %6701 to float
  %6703 = extractvalue %dx.types.CBufRet.i32 %6700, 3
  %6704 = uitofp i32 %6703 to float
  %6705 = extractvalue %dx.types.CBufRet.f32 %6696, 3
  %6706 = fmul fast float %6705, 2.000000e+00
  %6707 = fsub fast float %6679, %6697
  %6708 = fsub fast float %6683, %6698
  %6709 = fmul fast float %6706, %6707
  %6710 = fmul fast float %6706, %6708
  %6711 = fdiv fast float 1.000000e+00, %6485
  %6712 = fmul fast float %6710, %6711
  %6713 = call float @dx.op.unary.f32(i32 6, float %6712)  ; FAbs(value)
  %6714 = fmul fast float %6699, %6504
  %6715 = fmul fast float %6714, %6706
  %6716 = call float @dx.op.unary.f32(i32 6, float %6715)  ; FAbs(value)
  %6717 = call float @dx.op.unary.f32(i32 6, float %6709)  ; FAbs(value)
  %6718 = call float @dx.op.binary.f32(i32 35, float %6716, float %6713)  ; FMax(a,b)
  %6719 = call float @dx.op.binary.f32(i32 35, float %6717, float %6718)  ; FMax(a,b)
  %6720 = fmul fast float %6719, 2.000000e+00
  %6721 = call float @dx.op.unary.f32(i32 23, float %6720)  ; Log(value)
  %6722 = call float @dx.op.binary.f32(i32 35, float %6721, float %6702)  ; FMax(a,b)
  %6723 = call float @dx.op.unary.f32(i32 22, float %6722)  ; Frc(value)
  %6724 = fadd fast float %6723, 0xBFEA666660000000
  %6725 = fmul fast float %6724, 8.000000e+00
  %6726 = call float @dx.op.unary.f32(i32 7, float %6725)  ; Saturate(value)
  %6727 = call float @dx.op.unary.f32(i32 27, float %6722)  ; Round_ni(value)
  %6728 = fadd fast float %6727, %6726
  %6729 = call float @dx.op.binary.f32(i32 36, float %6728, float %6704)  ; FMin(a,b)
  %6730 = call float @dx.op.unary.f32(i32 27, float %6729)  ; Round_ni(value)
  %6731 = fsub fast float -0.000000e+00, %6730
  %6732 = call float @dx.op.unary.f32(i32 21, float %6731)  ; Exp(value)
  %6733 = fmul fast float %6732, %6706
  %6734 = fmul fast float %6733, %6679
  %6735 = fmul fast float %6733, %6683
  %6736 = fmul fast float %6734, 2.500000e-01
  %6737 = fmul fast float %6735, 2.500000e-01
  %6738 = fadd fast float %6736, 5.000000e-01
  %6739 = fadd fast float %6737, 5.000000e-01
  %6740 = fsub fast float %6704, %6702
  %6741 = fptoui float %6740 to i32
  %6742 = add i32 %6741, 320
  %6743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %6742)  ; CBufferLoadLegacy(handle,regIndex)
  %6744 = extractvalue %dx.types.CBufRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.CBufRet.f32 %6743, 1
  %6746 = fcmp fast une float %6729, %6704
  %6747 = fsub fast float %6679, %6744
  %6748 = fsub fast float %6683, %6745
  %6749 = call float @dx.op.unary.f32(i32 6, float %6747)  ; FAbs(value)
  %6750 = call float @dx.op.unary.f32(i32 6, float %6748)  ; FAbs(value)
  %6751 = fmul fast float %6749, %6733
  %6752 = fmul fast float %6750, %6733
  %6753 = fcmp fast olt float %6751, 1.000000e+00
  %6754 = fcmp fast olt float %6752, 1.000000e+00
  %6755 = and i1 %6753, %6754
  %6756 = or i1 %6746, %6755
  br i1 %6756, label %6757, label %7054, !dx.controlflow.hints !100

; <label>:6757                                    ; preds = %6695
  %6758 = fmul fast float %6735, 5.000000e-01
  %6759 = fmul fast float %6734, 5.000000e-01
  %6760 = fadd fast float %6758, 5.000000e-01
  %6761 = fadd fast float %6759, 5.000000e-01
  %6762 = sitofp i32 %6701 to float
  %6763 = fsub fast float %6729, %6762
  %6764 = call float @dx.op.unary.f32(i32 27, float %6763)  ; Round_ni(value)
  %6765 = call float @dx.op.unary.f32(i32 22, float %6729)  ; Frc(value)
  %6766 = call float @dx.op.unary.f32(i32 22, float %6761)  ; Frc(value)
  %6767 = call float @dx.op.unary.f32(i32 22, float %6760)  ; Frc(value)
  %6768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %6766, float %6767, float %6764, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6769 = extractvalue %dx.types.ResRet.f32 %6768, 0
  %6770 = extractvalue %dx.types.ResRet.f32 %6768, 1
  %6771 = extractvalue %dx.types.ResRet.f32 %6768, 2
  %6772 = extractvalue %dx.types.ResRet.f32 %6768, 3
  %6773 = fcmp fast ogt float %6765, 0.000000e+00
  br i1 %6773, label %6774, label %6795, !dx.controlflow.hints !101

; <label>:6774                                    ; preds = %6757
  %6775 = fadd fast float %6764, 1.000000e+00
  %6776 = call float @dx.op.unary.f32(i32 22, float %6738)  ; Frc(value)
  %6777 = call float @dx.op.unary.f32(i32 22, float %6739)  ; Frc(value)
  %6778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %6776, float %6777, float %6775, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6779 = extractvalue %dx.types.ResRet.f32 %6778, 0
  %6780 = extractvalue %dx.types.ResRet.f32 %6778, 1
  %6781 = extractvalue %dx.types.ResRet.f32 %6778, 2
  %6782 = extractvalue %dx.types.ResRet.f32 %6778, 3
  %6783 = fsub fast float %6779, %6769
  %6784 = fsub fast float %6780, %6770
  %6785 = fsub fast float %6781, %6771
  %6786 = fsub fast float %6782, %6772
  %6787 = fmul fast float %6783, %6765
  %6788 = fmul fast float %6784, %6765
  %6789 = fmul fast float %6785, %6765
  %6790 = fmul fast float %6786, %6765
  %6791 = fadd fast float %6787, %6769
  %6792 = fadd fast float %6788, %6770
  %6793 = fadd fast float %6789, %6771
  %6794 = fadd fast float %6790, %6772
  br label %6795

; <label>:6795                                    ; preds = %6774, %6757
  %6796 = phi float [ %6791, %6774 ], [ %6769, %6757 ]
  %6797 = phi float [ %6792, %6774 ], [ %6770, %6757 ]
  %6798 = phi float [ %6793, %6774 ], [ %6771, %6757 ]
  %6799 = phi float [ %6794, %6774 ], [ %6772, %6757 ]
  %6800 = fadd fast float %6796, -5.000000e-01
  %6801 = fadd fast float %6798, -5.000000e-01
  %6802 = fmul fast float %6800, 0xBFD5555560000000
  %6803 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6801, float %6802)  ; FMad(a,b,c)
  %6804 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6797, float 0.000000e+00)  ; FMad(a,b,c)
  %6805 = fadd fast float %6804, %6799
  %6806 = fmul fast float %6800, -7.500000e-01
  %6807 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6801, float %6806)  ; FMad(a,b,c)
  %6808 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6797, float 0.000000e+00)  ; FMad(a,b,c)
  %6809 = fadd fast float %6808, %6799
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 0
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6816 = extractvalue %dx.types.CBufRet.f32 %6812, 3
  %6817 = fsub fast float %6813, %6803
  %6818 = fsub fast float %6814, %6805
  %6819 = fsub fast float %6815, %6807
  %6820 = fsub fast float %6816, %6809
  %6821 = fmul fast float %6817, %6811
  %6822 = fmul fast float %6818, %6811
  %6823 = fmul fast float %6819, %6811
  %6824 = fmul fast float %6820, %6811
  %6825 = fadd fast float %6821, %6803
  %6826 = fadd fast float %6822, %6805
  %6827 = fadd fast float %6823, %6807
  %6828 = fadd fast float %6824, %6809
  %6829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6830 = extractvalue %dx.types.ResRet.i32 %6829, 0
  %6831 = and i32 %6830, 536870911
  %6832 = uitofp i32 %6831 to float
  %6833 = fmul fast float %6832, %6679
  %6834 = fmul fast float %6832, %6683
  %6835 = fptoui float %6833 to i32
  %6836 = fptoui float %6834 to i32
  %6837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6838 = extractvalue %dx.types.ResRet.i32 %6837, 0
  %6839 = and i32 %6838, 31
  %6840 = lshr i32 %6835, %6839
  %6841 = lshr i32 %6836, %6839
  %6842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6843 = extractvalue %dx.types.ResRet.i32 %6842, 0
  %6844 = and i32 %6843, 31
  %6845 = shl i32 1, %6844
  %6846 = call i32 @dx.op.binary.i32(i32 40, i32 %6845, i32 4)  ; UMin(a,b)
  %6847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6848 = extractvalue %dx.types.ResRet.i32 %6847, 0
  %6849 = extractvalue %dx.types.ResRet.i32 %6847, 1
  %6850 = icmp eq i32 %6846, 0
  br i1 %6850, label %6892, label %6851

; <label>:6851                                    ; preds = %6795
  br label %6852

; <label>:6852                                    ; preds = %6880, %6851
  %6853 = phi i32 [ %6883, %6880 ], [ 0, %6851 ]
  %6854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6855 = extractvalue %dx.types.ResRet.i32 %6854, 0
  %6856 = lshr i32 %6855, 16
  %6857 = and i32 %6856, 31
  %6858 = shl i32 %6841, %6857
  %6859 = add i32 %6858, %6840
  %6860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6861 = extractvalue %dx.types.ResRet.i32 %6860, 0
  %6862 = and i32 %6861, 31
  %6863 = shl i32 %6859, %6862
  %6864 = add i32 %6863, %6853
  %6865 = shl i32 %6864, 2
  %6866 = add i32 %6865, 32
  %6867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6866, i32 undef)  ; BufferLoad(srv,index,wot)
  %6868 = extractvalue %dx.types.ResRet.i32 %6867, 0
  %6869 = icmp slt i32 %6868, 0
  %6870 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6853
  %6871 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6853
  %6872 = bitcast float* %6870 to i32*
  %6873 = bitcast float* %6871 to i32*
  br i1 %6869, label %6874, label %6880

; <label>:6874                                    ; preds = %6852
  %6875 = and i32 %6868, 1073741823
  %6876 = add nuw nsw i32 %6875, 20
  %6877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6876, i32 undef)  ; BufferLoad(srv,index,wot)
  %6878 = extractvalue %dx.types.ResRet.i32 %6877, 0
  %6879 = extractvalue %dx.types.ResRet.i32 %6877, 1
  br label %6880

; <label>:6880                                    ; preds = %6874, %6852
  %6881 = phi i32 [ %6878, %6874 ], [ %6848, %6852 ]
  %6882 = phi i32 [ %6879, %6874 ], [ %6849, %6852 ]
  store i32 %6881, i32* %6872, align 4
  store i32 %6882, i32* %6873, align 4
  %6883 = add nuw i32 %6853, 1
  %6884 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6885 = extractvalue %dx.types.CBufRet.i32 %6884, 2
  %6886 = icmp eq i32 %6885, 0
  %6887 = icmp ugt i32 %6868, -1073741825
  %6888 = and i1 %6887, %6886
  %6889 = icmp ult i32 %6883, %6846
  %6890 = and i1 %6888, %6889
  br i1 %6890, label %6852, label %6891

; <label>:6891                                    ; preds = %6880
  br label %6892

; <label>:6892                                    ; preds = %6891, %6795
  %6893 = phi i32 [ 0, %6795 ], [ %6883, %6891 ]
  %6894 = extractvalue %dx.types.CBufRet.f32 %6657, 2
  %6895 = fptoui float %6894 to i32
  %6896 = icmp eq i32 %6895, 0
  br i1 %6896, label %6948, label %6897

; <label>:6897                                    ; preds = %6892
  br label %6898

; <label>:6898                                    ; preds = %6943, %6897
  %6899 = phi i32 [ %6944, %6943 ], [ %6893, %6897 ]
  %6900 = phi i32 [ %6945, %6943 ], [ 0, %6897 ]
  %6901 = lshr i32 %6900, 2
  %6902 = and i32 %6900, 3
  %6903 = add nuw nsw i32 %6901, 83
  %6904 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %6903)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.i32 %6904, 0
  %6906 = extractvalue %dx.types.CBufRet.i32 %6904, 1
  %6907 = extractvalue %dx.types.CBufRet.i32 %6904, 2
  %6908 = extractvalue %dx.types.CBufRet.i32 %6904, 3
  %6909 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %6905, i32* %6909, align 4
  %6910 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %6906, i32* %6910, align 4
  %6911 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %6907, i32* %6911, align 4
  %6912 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %6908, i32* %6912, align 4
  %6913 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %6902
  %6914 = load i32, i32* %6913, align 4, !tbaa !102, !noalias !106
  %6915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6916 = extractvalue %dx.types.ResRet.i32 %6915, 0
  %6917 = lshr i32 %6916, 16
  %6918 = and i32 %6917, 31
  %6919 = shl i32 %6841, %6918
  %6920 = add i32 %6919, %6840
  %6921 = shl i32 %6920, 2
  %6922 = add i32 %6921, %6914
  %6923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6922, i32 undef)  ; BufferLoad(srv,index,wot)
  %6924 = extractvalue %dx.types.ResRet.i32 %6923, 0
  %6925 = icmp eq i32 %6924, 0
  br i1 %6925, label %6943, label %6926

; <label>:6926                                    ; preds = %6898
  %6927 = icmp slt i32 %6924, 0
  %6928 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6899
  %6929 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6899
  %6930 = bitcast float* %6928 to i32*
  %6931 = bitcast float* %6929 to i32*
  br i1 %6927, label %6932, label %6939

; <label>:6932                                    ; preds = %6926
  %6933 = and i32 %6924, 1073741823
  %6934 = add i32 %6914, 20
  %6935 = add i32 %6934, %6933
  %6936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6935, i32 undef)  ; BufferLoad(srv,index,wot)
  %6937 = extractvalue %dx.types.ResRet.i32 %6936, 0
  %6938 = extractvalue %dx.types.ResRet.i32 %6936, 1
  br label %6939

; <label>:6939                                    ; preds = %6932, %6926
  %6940 = phi i32 [ %6937, %6932 ], [ %6848, %6926 ]
  %6941 = phi i32 [ %6938, %6932 ], [ %6849, %6926 ]
  store i32 %6940, i32* %6930, align 4
  store i32 %6941, i32* %6931, align 4
  %6942 = add i32 %6899, 1
  br label %6943

; <label>:6943                                    ; preds = %6939, %6898
  %6944 = phi i32 [ %6899, %6898 ], [ %6942, %6939 ]
  %6945 = add nuw i32 %6900, 1
  %6946 = icmp eq i32 %6945, %6895
  br i1 %6946, label %6947, label %6898

; <label>:6947                                    ; preds = %6943
  br label %6948

; <label>:6948                                    ; preds = %6947, %6892
  %6949 = phi i32 [ %6893, %6892 ], [ %6944, %6947 ]
  %6950 = icmp eq i32 %6949, 1
  %6951 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %6952 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %6950, label %6953, label %6956

; <label>:6953                                    ; preds = %6948
  %6954 = load float, float* %6951, align 4
  %6955 = load float, float* %6952, align 4
  br label %6983

; <label>:6956                                    ; preds = %6948
  %6957 = load float, float* %6951, align 4
  %6958 = load float, float* %6952, align 4
  %6959 = fdiv fast float 1.000000e+00, %6958
  %6960 = fsub fast float %6957, %6959
  %6961 = icmp ugt i32 %6949, 1
  br i1 %6961, label %6962, label %6978

; <label>:6962                                    ; preds = %6956
  br label %6963

; <label>:6963                                    ; preds = %6963, %6962
  %6964 = phi float [ %6973, %6963 ], [ %6960, %6962 ]
  %6965 = phi float [ %6974, %6963 ], [ %6957, %6962 ]
  %6966 = phi i32 [ %6975, %6963 ], [ 1, %6962 ]
  %6967 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %6966
  %6968 = load float, float* %6967, align 4
  %6969 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %6966
  %6970 = load float, float* %6969, align 4
  %6971 = fdiv fast float 1.000000e+00, %6970
  %6972 = fsub fast float %6968, %6971
  %6973 = call float @dx.op.binary.f32(i32 36, float %6964, float %6972)  ; FMin(a,b)
  %6974 = call float @dx.op.binary.f32(i32 35, float %6965, float %6968)  ; FMax(a,b)
  %6975 = add nuw i32 %6966, 1
  %6976 = icmp eq i32 %6975, %6949
  br i1 %6976, label %6977, label %6963

; <label>:6977                                    ; preds = %6963
  br label %6978

; <label>:6978                                    ; preds = %6977, %6956
  %6979 = phi float [ %6960, %6956 ], [ %6973, %6977 ]
  %6980 = phi float [ %6957, %6956 ], [ %6974, %6977 ]
  %6981 = fsub fast float %6980, %6979
  %6982 = fdiv fast float 1.000000e+00, %6981
  br label %6983

; <label>:6983                                    ; preds = %6978, %6953
  %6984 = phi float [ %6954, %6953 ], [ %6980, %6978 ]
  %6985 = phi float [ %6955, %6953 ], [ %6982, %6978 ]
  %6986 = fadd fast float %6687, %6984
  %6987 = fmul fast float %6986, %6985
  %6988 = call float @dx.op.unary.f32(i32 7, float %6987)  ; Saturate(value)
  %6989 = fmul fast float %6988, 2.000000e+00
  %6990 = fsub fast float 1.000000e+00, %6989
  %6991 = fmul fast float %6825, %6825
  %6992 = fsub fast float %6826, %6991
  %6993 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6992)  ; FMax(a,b)
  %6994 = fdiv fast float 1.000000e+00, %6993
  %6995 = fmul fast float %6826, %6825
  %6996 = fsub fast float %6827, %6995
  %6997 = fsub fast float %6990, %6825
  %6998 = fmul fast float %6990, %6990
  %6999 = fsub fast float %6998, %6826
  %7000 = fmul fast float %6994, %6996
  %7001 = fmul fast float %7000, %6997
  %7002 = fsub fast float %6999, %7001
  %7003 = fmul fast float %6826, %6826
  %7004 = fsub fast float %6828, %7003
  %7005 = fmul fast float %6996, %6996
  %7006 = fmul fast float %7005, %6994
  %7007 = fsub fast float %7004, %7006
  %7008 = fdiv fast float %7002, %7007
  %7009 = fmul fast float %7008, %6996
  %7010 = fsub fast float %6997, %7009
  %7011 = fmul fast float %7010, %6994
  %7012 = fmul fast float %7011, %6825
  %7013 = fsub fast float 1.000000e+00, %7012
  %7014 = fmul fast float %7008, %6826
  %7015 = fsub fast float %7013, %7014
  %7016 = fmul fast float %7011, %7011
  %7017 = fmul fast float %7008, 4.000000e+00
  %7018 = fmul fast float %7017, %7015
  %7019 = fsub fast float %7016, %7018
  %7020 = call float @dx.op.unary.f32(i32 24, float %7019)  ; Sqrt(value)
  %7021 = fcmp fast oge float %7011, 0.000000e+00
  %7022 = fsub fast float -0.000000e+00, %7020
  %7023 = select i1 %7021, float %7022, float %7020
  %7024 = fsub fast float %7023, %7011
  %7025 = fdiv fast float %7024, %7008
  %7026 = fdiv fast float %7015, %7024
  %7027 = fmul fast float %7025, 5.000000e-01
  %7028 = fmul fast float %7026, 2.000000e+00
  %7029 = select i1 %7021, float %7027, float %7028
  %7030 = select i1 %7021, float %7028, float %7027
  %7031 = call float @dx.op.binary.f32(i32 35, float %7029, float %7030)  ; FMax(a,b)
  %7032 = call float @dx.op.binary.f32(i32 36, float %7029, float %7030)  ; FMin(a,b)
  %7033 = fcmp fast ogt float %6990, %7031
  %7034 = fsub fast float %6990, %7032
  %7035 = fsub fast float %6990, %7031
  %7036 = fsub fast float %7031, %7032
  %7037 = select i1 %7033, float %7035, float %7036
  %7038 = fmul float %7034, %7037
  %7039 = select i1 %7033, float %7032, float %6990
  %7040 = fcmp fast ogt float %6990, %7032
  %7041 = fmul fast float %7039, %7031
  %7042 = fadd fast float %7039, %7031
  %7043 = fmul fast float %7042, %6825
  %7044 = fadd fast float %7041, %6826
  %7045 = fsub fast float %7044, %7043
  %7046 = fdiv fast float %7045, %7038
  %7047 = select i1 %7040, float %7046, float 0.000000e+00
  %7048 = fsub fast float 1.000000e+00, %7047
  %7049 = select i1 %7033, float %7048, float %7047
  %7050 = call float @dx.op.unary.f32(i32 7, float %7049)  ; Saturate(value)
  %7051 = extractvalue %dx.types.CBufRet.f32 %6810, 3
  %7052 = fmul fast float %7051, %7050
  %7053 = fsub fast float 1.000000e+00, %7052
  br label %7054

; <label>:7054                                    ; preds = %6983, %6695, %6660, %6656, %6620
  %7055 = phi float [ 1.000000e+00, %6620 ], [ %7053, %6983 ], [ 1.000000e+00, %6660 ], [ 1.000000e+00, %6695 ], [ 1.000000e+00, %6656 ]
  %7056 = fcmp fast ogt float %6652, 0.000000e+00
  br i1 %7056, label %7057, label %7221, !dx.controlflow.hints !115

; <label>:7057                                    ; preds = %7054
  %7058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7059 = extractvalue %dx.types.CBufRet.f32 %7058, 2
  %7060 = fadd fast float %7059, %6533
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 2
  %7063 = extractvalue %dx.types.CBufRet.f32 %7061, 3
  %7064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7065 = extractvalue %dx.types.CBufRet.f32 %7064, 2
  %7066 = call float @dx.op.binary.f32(i32 35, float %7060, float 0.000000e+00)  ; FMax(a,b)
  %7067 = fadd fast float %7066, 0x3F10000000000000
  %7068 = fcmp fast oeq float %7065, 0.000000e+00
  br i1 %7068, label %7069, label %7136

; <label>:7069                                    ; preds = %7057
  %7070 = extractvalue %dx.types.CBufRet.f32 %7061, 1
  %7071 = extractvalue %dx.types.CBufRet.f32 %7061, 0
  %7072 = fmul fast float %7071, %6551
  %7073 = fmul fast float %7070, %6552
  %7074 = fadd fast float %7072, 5.000000e-01
  %7075 = call float @dx.op.unary.f32(i32 27, float %7074)  ; Round_ni(value)
  %7076 = fadd fast float %7073, 5.000000e-01
  %7077 = call float @dx.op.unary.f32(i32 27, float %7076)  ; Round_ni(value)
  %7078 = fsub fast float %7074, %7075
  %7079 = fsub fast float %7076, %7077
  %7080 = fadd fast float %7075, -5.000000e-01
  %7081 = fadd fast float %7077, -5.000000e-01
  %7082 = fmul fast float %7078, 2.000000e+00
  %7083 = fsub fast float 3.000000e+00, %7082
  %7084 = fadd fast float %7082, 1.000000e+00
  %7085 = fsub fast float 2.000000e+00, %7078
  %7086 = bitcast float %7083 to i32
  %7087 = sub nsw i32 2129859010, %7086
  %7088 = bitcast i32 %7087 to float
  %7089 = fmul fast float %7088, %7085
  %7090 = fadd fast float %7089, -1.000000e+00
  %7091 = bitcast float %7084 to i32
  %7092 = sub nsw i32 2129859010, %7091
  %7093 = bitcast i32 %7092 to float
  %7094 = fmul fast float %7093, %7078
  %7095 = fadd fast float %7094, 1.000000e+00
  %7096 = fmul fast float %7079, 2.000000e+00
  %7097 = fsub fast float 3.000000e+00, %7096
  %7098 = fadd fast float %7096, 1.000000e+00
  %7099 = fsub fast float 2.000000e+00, %7079
  %7100 = bitcast float %7097 to i32
  %7101 = sub nsw i32 2129859010, %7100
  %7102 = bitcast i32 %7101 to float
  %7103 = fmul fast float %7102, %7099
  %7104 = fadd fast float %7103, -1.000000e+00
  %7105 = bitcast float %7098 to i32
  %7106 = sub nsw i32 2129859010, %7105
  %7107 = bitcast i32 %7106 to float
  %7108 = fmul fast float %7107, %7079
  %7109 = fadd fast float %7108, 1.000000e+00
  %7110 = fadd fast float %7090, %7080
  %7111 = fmul fast float %7110, %7062
  %7112 = fadd fast float %7104, %7081
  %7113 = fmul fast float %7112, %7063
  %7114 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7111, float %7113, float undef, float undef, i32 0, i32 0, i32 undef, float %7067)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7115 = extractvalue %dx.types.ResRet.f32 %7114, 0
  %7116 = fmul fast float %7115, %7083
  %7117 = fadd fast float %7095, %7080
  %7118 = fmul fast float %7117, %7062
  %7119 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7118, float %7113, float undef, float undef, i32 0, i32 0, i32 undef, float %7067)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7120 = extractvalue %dx.types.ResRet.f32 %7119, 0
  %7121 = fmul fast float %7120, %7084
  %7122 = fadd fast float %7109, %7081
  %7123 = fmul fast float %7122, %7063
  %7124 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7111, float %7123, float undef, float undef, i32 0, i32 0, i32 undef, float %7067)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = fmul fast float %7125, %7083
  %7127 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7118, float %7123, float undef, float undef, i32 0, i32 0, i32 undef, float %7067)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7128 = extractvalue %dx.types.ResRet.f32 %7127, 0
  %7129 = fmul fast float %7128, %7084
  %7130 = fadd fast float %7129, %7126
  %7131 = fmul fast float %7130, %7098
  %7132 = fadd fast float %7121, %7116
  %7133 = fmul fast float %7132, %7097
  %7134 = fadd fast float %7133, %7131
  %7135 = fmul fast float %7134, 6.250000e-02
  br label %7221

; <label>:7136                                    ; preds = %7057
  %7137 = fmul fast float %305, 0x401921FB60000000
  %7138 = call float @dx.op.unary.f32(i32 13, float %7137)  ; Sin(value)
  %7139 = call float @dx.op.unary.f32(i32 12, float %7137)  ; Cos(value)
  %7140 = fsub fast float -0.000000e+00, %7138
  br label %7141

; <label>:7141                                    ; preds = %7190, %7136
  %7142 = phi float [ 0.000000e+00, %7136 ], [ %7185, %7190 ]
  %7143 = phi float [ 0.000000e+00, %7136 ], [ %7187, %7190 ]
  %7144 = phi i32 [ 0, %7136 ], [ %7191, %7190 ]
  %7145 = mul i32 %7144, 2
  %7146 = add i32 0, %7145
  %7147 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7146
  %7148 = load float, float* %7147, align 4
  %7149 = mul i32 %7144, 2
  %7150 = add i32 1, %7149
  %7151 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7150
  %7152 = load float, float* %7151, align 4
  %7153 = fmul fast float %7148, %7139
  %7154 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7140, float %7153)  ; FMad(a,b,c)
  %7155 = fmul fast float %7148, %7138
  %7156 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7139, float %7155)  ; FMad(a,b,c)
  %7157 = fmul fast float %7154, %7065
  %7158 = fmul fast float %7156, %7065
  %7159 = fadd fast float %7157, %6551
  %7160 = fadd fast float %7158, %6552
  %7161 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %7159, float %7160, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7162 = extractvalue %dx.types.ResRet.f32 %7161, 0
  %7163 = extractvalue %dx.types.ResRet.f32 %7161, 1
  %7164 = extractvalue %dx.types.ResRet.f32 %7161, 2
  %7165 = extractvalue %dx.types.ResRet.f32 %7161, 3
  %7166 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7162, float* %7166, align 4
  %7167 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7163, float* %7167, align 4
  %7168 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7164, float* %7168, align 4
  %7169 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7165, float* %7169, align 4
  %7170 = fsub fast float %7162, %7067
  %7171 = fcmp fast olt float %7170, 0.000000e+00
  %7172 = select i1 %7171, float 0.000000e+00, float 1.000000e+00
  %7173 = fadd fast float %7172, %7142
  %7174 = fmul fast float %7172, %7170
  %7175 = fadd fast float %7174, %7143
  br label %7176

; <label>:7176                                    ; preds = %7176, %7141
  %7177 = phi i32 [ 1, %7141 ], [ %7188, %7176 ]
  %7178 = phi float [ %7175, %7141 ], [ %7187, %7176 ]
  %7179 = phi float [ %7173, %7141 ], [ %7185, %7176 ]
  %7180 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7177
  %7181 = load float, float* %7180, align 4, !tbaa !116, !noalias !106
  %7182 = fsub fast float %7181, %7067
  %7183 = fcmp fast olt float %7182, 0.000000e+00
  %7184 = select i1 %7183, float 0.000000e+00, float 1.000000e+00
  %7185 = fadd fast float %7184, %7179
  %7186 = fmul fast float %7184, %7182
  %7187 = fadd fast float %7186, %7178
  %7188 = add nuw nsw i32 %7177, 1
  %7189 = icmp eq i32 %7188, 4
  br i1 %7189, label %7190, label %7176, !llvm.loop !118

; <label>:7190                                    ; preds = %7176
  %7191 = add nuw nsw i32 %7144, 1
  %7192 = icmp eq i32 %7191, 8
  br i1 %7192, label %7193, label %7141, !llvm.loop !119

; <label>:7193                                    ; preds = %7190
  %7194 = fdiv fast float 1.000000e+00, %7185
  %7195 = fmul fast float %7194, %7187
  %7196 = fdiv fast float 1.000000e+00, %7067
  %7197 = fmul fast float %7195, %7196
  %7198 = call float @dx.op.unary.f32(i32 7, float %7197)  ; Saturate(value)
  %7199 = call float @dx.op.binary.f32(i32 35, float %7198, float 0.000000e+00)  ; FMax(a,b)
  %7200 = fmul fast float %7185, 3.125000e-02
  %7201 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7202 = fmul fast float %7201, 2.000000e+00
  %7203 = fadd fast float %7202, -1.000000e+00
  %7204 = fcmp fast ogt float %7203, 0.000000e+00
  %7205 = fcmp fast olt float %7203, 0.000000e+00
  %7206 = zext i1 %7204 to i32
  %7207 = zext i1 %7205 to i32
  %7208 = sub nsw i32 %7206, %7207
  %7209 = sitofp i32 %7208 to float
  %7210 = fmul fast float %7209, %7203
  %7211 = fsub fast float 1.000000e+00, %7210
  %7212 = fmul fast float %7211, %7211
  %7213 = fmul fast float %7212, %7211
  %7214 = fsub fast float %7211, %7213
  %7215 = fmul fast float %7214, %7199
  %7216 = fsub fast float 1.000000e+00, %7213
  %7217 = fsub fast float %7216, %7215
  %7218 = fmul fast float %7209, 5.000000e-01
  %7219 = fmul fast float %7218, %7217
  %7220 = fsub fast float 5.000000e-01, %7219
  br label %7221

; <label>:7221                                    ; preds = %7193, %7069, %7054
  %7222 = phi float [ 1.000000e+00, %7054 ], [ %7135, %7069 ], [ %7220, %7193 ]
  %7223 = fcmp fast ogt float %6650, 0.000000e+00
  br i1 %7223, label %7224, label %7388, !dx.controlflow.hints !120

; <label>:7224                                    ; preds = %7221
  %7225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7226 = extractvalue %dx.types.CBufRet.f32 %7225, 1
  %7227 = fadd fast float %7226, %6533
  %7228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7229 = extractvalue %dx.types.CBufRet.f32 %7228, 2
  %7230 = extractvalue %dx.types.CBufRet.f32 %7228, 3
  %7231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7232 = extractvalue %dx.types.CBufRet.f32 %7231, 1
  %7233 = call float @dx.op.binary.f32(i32 35, float %7227, float 0.000000e+00)  ; FMax(a,b)
  %7234 = fadd fast float %7233, 0x3F10000000000000
  %7235 = fcmp fast oeq float %7232, 0.000000e+00
  br i1 %7235, label %7236, label %7303

; <label>:7236                                    ; preds = %7224
  %7237 = extractvalue %dx.types.CBufRet.f32 %7228, 1
  %7238 = extractvalue %dx.types.CBufRet.f32 %7228, 0
  %7239 = fmul fast float %7238, %6543
  %7240 = fmul fast float %7237, %6544
  %7241 = fadd fast float %7239, 5.000000e-01
  %7242 = call float @dx.op.unary.f32(i32 27, float %7241)  ; Round_ni(value)
  %7243 = fadd fast float %7240, 5.000000e-01
  %7244 = call float @dx.op.unary.f32(i32 27, float %7243)  ; Round_ni(value)
  %7245 = fsub fast float %7241, %7242
  %7246 = fsub fast float %7243, %7244
  %7247 = fadd fast float %7242, -5.000000e-01
  %7248 = fadd fast float %7244, -5.000000e-01
  %7249 = fmul fast float %7245, 2.000000e+00
  %7250 = fsub fast float 3.000000e+00, %7249
  %7251 = fadd fast float %7249, 1.000000e+00
  %7252 = fsub fast float 2.000000e+00, %7245
  %7253 = bitcast float %7250 to i32
  %7254 = sub nsw i32 2129859010, %7253
  %7255 = bitcast i32 %7254 to float
  %7256 = fmul fast float %7255, %7252
  %7257 = fadd fast float %7256, -1.000000e+00
  %7258 = bitcast float %7251 to i32
  %7259 = sub nsw i32 2129859010, %7258
  %7260 = bitcast i32 %7259 to float
  %7261 = fmul fast float %7260, %7245
  %7262 = fadd fast float %7261, 1.000000e+00
  %7263 = fmul fast float %7246, 2.000000e+00
  %7264 = fsub fast float 3.000000e+00, %7263
  %7265 = fadd fast float %7263, 1.000000e+00
  %7266 = fsub fast float 2.000000e+00, %7246
  %7267 = bitcast float %7264 to i32
  %7268 = sub nsw i32 2129859010, %7267
  %7269 = bitcast i32 %7268 to float
  %7270 = fmul fast float %7269, %7266
  %7271 = fadd fast float %7270, -1.000000e+00
  %7272 = bitcast float %7265 to i32
  %7273 = sub nsw i32 2129859010, %7272
  %7274 = bitcast i32 %7273 to float
  %7275 = fmul fast float %7274, %7246
  %7276 = fadd fast float %7275, 1.000000e+00
  %7277 = fadd fast float %7257, %7247
  %7278 = fmul fast float %7277, %7229
  %7279 = fadd fast float %7271, %7248
  %7280 = fmul fast float %7279, %7230
  %7281 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7278, float %7280, float undef, float undef, i32 0, i32 0, i32 undef, float %7234)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7282 = extractvalue %dx.types.ResRet.f32 %7281, 0
  %7283 = fmul fast float %7282, %7250
  %7284 = fadd fast float %7262, %7247
  %7285 = fmul fast float %7284, %7229
  %7286 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7285, float %7280, float undef, float undef, i32 0, i32 0, i32 undef, float %7234)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7287 = extractvalue %dx.types.ResRet.f32 %7286, 0
  %7288 = fmul fast float %7287, %7251
  %7289 = fadd fast float %7276, %7248
  %7290 = fmul fast float %7289, %7230
  %7291 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7278, float %7290, float undef, float undef, i32 0, i32 0, i32 undef, float %7234)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = fmul fast float %7292, %7250
  %7294 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7285, float %7290, float undef, float undef, i32 0, i32 0, i32 undef, float %7234)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7295 = extractvalue %dx.types.ResRet.f32 %7294, 0
  %7296 = fmul fast float %7295, %7251
  %7297 = fadd fast float %7296, %7293
  %7298 = fmul fast float %7297, %7265
  %7299 = fadd fast float %7288, %7283
  %7300 = fmul fast float %7299, %7264
  %7301 = fadd fast float %7300, %7298
  %7302 = fmul fast float %7301, 6.250000e-02
  br label %7388

; <label>:7303                                    ; preds = %7224
  %7304 = fmul fast float %305, 0x401921FB60000000
  %7305 = call float @dx.op.unary.f32(i32 13, float %7304)  ; Sin(value)
  %7306 = call float @dx.op.unary.f32(i32 12, float %7304)  ; Cos(value)
  %7307 = fsub fast float -0.000000e+00, %7305
  br label %7308

; <label>:7308                                    ; preds = %7357, %7303
  %7309 = phi float [ 0.000000e+00, %7303 ], [ %7352, %7357 ]
  %7310 = phi float [ 0.000000e+00, %7303 ], [ %7354, %7357 ]
  %7311 = phi i32 [ 0, %7303 ], [ %7358, %7357 ]
  %7312 = mul i32 %7311, 2
  %7313 = add i32 0, %7312
  %7314 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7313
  %7315 = load float, float* %7314, align 4
  %7316 = mul i32 %7311, 2
  %7317 = add i32 1, %7316
  %7318 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7317
  %7319 = load float, float* %7318, align 4
  %7320 = fmul fast float %7315, %7306
  %7321 = call float @dx.op.tertiary.f32(i32 46, float %7319, float %7307, float %7320)  ; FMad(a,b,c)
  %7322 = fmul fast float %7315, %7305
  %7323 = call float @dx.op.tertiary.f32(i32 46, float %7319, float %7306, float %7322)  ; FMad(a,b,c)
  %7324 = fmul fast float %7321, %7232
  %7325 = fmul fast float %7323, %7232
  %7326 = fadd fast float %7324, %6543
  %7327 = fadd fast float %7325, %6544
  %7328 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %7326, float %7327, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7329 = extractvalue %dx.types.ResRet.f32 %7328, 0
  %7330 = extractvalue %dx.types.ResRet.f32 %7328, 1
  %7331 = extractvalue %dx.types.ResRet.f32 %7328, 2
  %7332 = extractvalue %dx.types.ResRet.f32 %7328, 3
  %7333 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7329, float* %7333, align 4
  %7334 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7330, float* %7334, align 4
  %7335 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7331, float* %7335, align 4
  %7336 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7332, float* %7336, align 4
  %7337 = fsub fast float %7329, %7234
  %7338 = fcmp fast olt float %7337, 0.000000e+00
  %7339 = select i1 %7338, float 0.000000e+00, float 1.000000e+00
  %7340 = fadd fast float %7339, %7309
  %7341 = fmul fast float %7339, %7337
  %7342 = fadd fast float %7341, %7310
  br label %7343

; <label>:7343                                    ; preds = %7343, %7308
  %7344 = phi i32 [ 1, %7308 ], [ %7355, %7343 ]
  %7345 = phi float [ %7342, %7308 ], [ %7354, %7343 ]
  %7346 = phi float [ %7340, %7308 ], [ %7352, %7343 ]
  %7347 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7344
  %7348 = load float, float* %7347, align 4, !tbaa !116, !noalias !106
  %7349 = fsub fast float %7348, %7234
  %7350 = fcmp fast olt float %7349, 0.000000e+00
  %7351 = select i1 %7350, float 0.000000e+00, float 1.000000e+00
  %7352 = fadd fast float %7351, %7346
  %7353 = fmul fast float %7351, %7349
  %7354 = fadd fast float %7353, %7345
  %7355 = add nuw nsw i32 %7344, 1
  %7356 = icmp eq i32 %7355, 4
  br i1 %7356, label %7357, label %7343, !llvm.loop !118

; <label>:7357                                    ; preds = %7343
  %7358 = add nuw nsw i32 %7311, 1
  %7359 = icmp eq i32 %7358, 8
  br i1 %7359, label %7360, label %7308, !llvm.loop !119

; <label>:7360                                    ; preds = %7357
  %7361 = fdiv fast float 1.000000e+00, %7352
  %7362 = fmul fast float %7361, %7354
  %7363 = fdiv fast float 1.000000e+00, %7234
  %7364 = fmul fast float %7362, %7363
  %7365 = call float @dx.op.unary.f32(i32 7, float %7364)  ; Saturate(value)
  %7366 = call float @dx.op.binary.f32(i32 35, float %7365, float 0.000000e+00)  ; FMax(a,b)
  %7367 = fmul fast float %7352, 3.125000e-02
  %7368 = call float @dx.op.unary.f32(i32 7, float %7367)  ; Saturate(value)
  %7369 = fmul fast float %7368, 2.000000e+00
  %7370 = fadd fast float %7369, -1.000000e+00
  %7371 = fcmp fast ogt float %7370, 0.000000e+00
  %7372 = fcmp fast olt float %7370, 0.000000e+00
  %7373 = zext i1 %7371 to i32
  %7374 = zext i1 %7372 to i32
  %7375 = sub nsw i32 %7373, %7374
  %7376 = sitofp i32 %7375 to float
  %7377 = fmul fast float %7376, %7370
  %7378 = fsub fast float 1.000000e+00, %7377
  %7379 = fmul fast float %7378, %7378
  %7380 = fmul fast float %7379, %7378
  %7381 = fsub fast float %7378, %7380
  %7382 = fmul fast float %7381, %7366
  %7383 = fsub fast float 1.000000e+00, %7380
  %7384 = fsub fast float %7383, %7382
  %7385 = fmul fast float %7376, 5.000000e-01
  %7386 = fmul fast float %7385, %7384
  %7387 = fsub fast float 5.000000e-01, %7386
  br label %7388

; <label>:7388                                    ; preds = %7360, %7236, %7221
  %7389 = phi float [ 1.000000e+00, %7221 ], [ %7302, %7236 ], [ %7387, %7360 ]
  %7390 = fcmp fast ogt float %6649, 0.000000e+00
  br i1 %7390, label %7391, label %7709, !dx.controlflow.hints !121

; <label>:7391                                    ; preds = %7388
  %7392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7393 = extractvalue %dx.types.CBufRet.f32 %7392, 0
  %7394 = fadd fast float %7393, %6533
  %7395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7396 = extractvalue %dx.types.CBufRet.f32 %7395, 2
  %7397 = extractvalue %dx.types.CBufRet.f32 %7395, 3
  %7398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7399 = extractvalue %dx.types.CBufRet.f32 %7398, 0
  %7400 = call float @dx.op.binary.f32(i32 35, float %7394, float 0.000000e+00)  ; FMax(a,b)
  %7401 = fadd fast float %7400, 0x3F10000000000000
  %7402 = fcmp fast oeq float %7399, 0.000000e+00
  br i1 %6536, label %7403, label %7556, !dx.controlflow.hints !122

; <label>:7403                                    ; preds = %7391
  br i1 %7402, label %7404, label %7471

; <label>:7404                                    ; preds = %7403
  %7405 = extractvalue %dx.types.CBufRet.f32 %7395, 1
  %7406 = extractvalue %dx.types.CBufRet.f32 %7395, 0
  %7407 = fmul fast float %7406, %6525
  %7408 = fmul fast float %7405, %6529
  %7409 = fadd fast float %7407, 5.000000e-01
  %7410 = call float @dx.op.unary.f32(i32 27, float %7409)  ; Round_ni(value)
  %7411 = fadd fast float %7408, 5.000000e-01
  %7412 = call float @dx.op.unary.f32(i32 27, float %7411)  ; Round_ni(value)
  %7413 = fsub fast float %7409, %7410
  %7414 = fsub fast float %7411, %7412
  %7415 = fadd fast float %7410, -5.000000e-01
  %7416 = fadd fast float %7412, -5.000000e-01
  %7417 = fmul fast float %7413, 2.000000e+00
  %7418 = fsub fast float 3.000000e+00, %7417
  %7419 = fadd fast float %7417, 1.000000e+00
  %7420 = fsub fast float 2.000000e+00, %7413
  %7421 = bitcast float %7418 to i32
  %7422 = sub nsw i32 2129859010, %7421
  %7423 = bitcast i32 %7422 to float
  %7424 = fmul fast float %7423, %7420
  %7425 = fadd fast float %7424, -1.000000e+00
  %7426 = bitcast float %7419 to i32
  %7427 = sub nsw i32 2129859010, %7426
  %7428 = bitcast i32 %7427 to float
  %7429 = fmul fast float %7428, %7413
  %7430 = fadd fast float %7429, 1.000000e+00
  %7431 = fmul fast float %7414, 2.000000e+00
  %7432 = fsub fast float 3.000000e+00, %7431
  %7433 = fadd fast float %7431, 1.000000e+00
  %7434 = fsub fast float 2.000000e+00, %7414
  %7435 = bitcast float %7432 to i32
  %7436 = sub nsw i32 2129859010, %7435
  %7437 = bitcast i32 %7436 to float
  %7438 = fmul fast float %7437, %7434
  %7439 = fadd fast float %7438, -1.000000e+00
  %7440 = bitcast float %7433 to i32
  %7441 = sub nsw i32 2129859010, %7440
  %7442 = bitcast i32 %7441 to float
  %7443 = fmul fast float %7442, %7414
  %7444 = fadd fast float %7443, 1.000000e+00
  %7445 = fadd fast float %7425, %7415
  %7446 = fmul fast float %7445, %7396
  %7447 = fadd fast float %7439, %7416
  %7448 = fmul fast float %7447, %7397
  %7449 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7446, float %7448, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7450 = extractvalue %dx.types.ResRet.f32 %7449, 0
  %7451 = fmul fast float %7450, %7418
  %7452 = fadd fast float %7430, %7415
  %7453 = fmul fast float %7452, %7396
  %7454 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7453, float %7448, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7455 = extractvalue %dx.types.ResRet.f32 %7454, 0
  %7456 = fmul fast float %7455, %7419
  %7457 = fadd fast float %7444, %7416
  %7458 = fmul fast float %7457, %7397
  %7459 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7446, float %7458, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7460 = extractvalue %dx.types.ResRet.f32 %7459, 0
  %7461 = fmul fast float %7460, %7418
  %7462 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7453, float %7458, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7463 = extractvalue %dx.types.ResRet.f32 %7462, 0
  %7464 = fmul fast float %7463, %7419
  %7465 = fadd fast float %7464, %7461
  %7466 = fmul fast float %7465, %7433
  %7467 = fadd fast float %7456, %7451
  %7468 = fmul fast float %7467, %7432
  %7469 = fadd fast float %7468, %7466
  %7470 = fmul fast float %7469, 6.250000e-02
  br label %7709

; <label>:7471                                    ; preds = %7403
  %7472 = fmul fast float %305, 0x401921FB60000000
  %7473 = call float @dx.op.unary.f32(i32 13, float %7472)  ; Sin(value)
  %7474 = call float @dx.op.unary.f32(i32 12, float %7472)  ; Cos(value)
  %7475 = fsub fast float -0.000000e+00, %7473
  br label %7476

; <label>:7476                                    ; preds = %7525, %7471
  %7477 = phi float [ 0.000000e+00, %7471 ], [ %7520, %7525 ]
  %7478 = phi float [ 0.000000e+00, %7471 ], [ %7522, %7525 ]
  %7479 = phi i32 [ 0, %7471 ], [ %7526, %7525 ]
  %7480 = mul i32 %7479, 2
  %7481 = add i32 0, %7480
  %7482 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7481
  %7483 = load float, float* %7482, align 4
  %7484 = mul i32 %7479, 2
  %7485 = add i32 1, %7484
  %7486 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7485
  %7487 = load float, float* %7486, align 4
  %7488 = fmul fast float %7483, %7474
  %7489 = call float @dx.op.tertiary.f32(i32 46, float %7487, float %7475, float %7488)  ; FMad(a,b,c)
  %7490 = fmul fast float %7483, %7473
  %7491 = call float @dx.op.tertiary.f32(i32 46, float %7487, float %7474, float %7490)  ; FMad(a,b,c)
  %7492 = fmul fast float %7489, %7399
  %7493 = fmul fast float %7491, %7399
  %7494 = fadd fast float %7492, %6525
  %7495 = fadd fast float %7493, %6529
  %7496 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %46, float %7494, float %7495, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = extractvalue %dx.types.ResRet.f32 %7496, 1
  %7499 = extractvalue %dx.types.ResRet.f32 %7496, 2
  %7500 = extractvalue %dx.types.ResRet.f32 %7496, 3
  %7501 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7497, float* %7501, align 4
  %7502 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7498, float* %7502, align 4
  %7503 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7499, float* %7503, align 4
  %7504 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7500, float* %7504, align 4
  %7505 = fsub fast float %7497, %7401
  %7506 = fcmp fast olt float %7505, 0.000000e+00
  %7507 = select i1 %7506, float 0.000000e+00, float 1.000000e+00
  %7508 = fadd fast float %7507, %7477
  %7509 = fmul fast float %7507, %7505
  %7510 = fadd fast float %7509, %7478
  br label %7511

; <label>:7511                                    ; preds = %7511, %7476
  %7512 = phi i32 [ 1, %7476 ], [ %7523, %7511 ]
  %7513 = phi float [ %7510, %7476 ], [ %7522, %7511 ]
  %7514 = phi float [ %7508, %7476 ], [ %7520, %7511 ]
  %7515 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7512
  %7516 = load float, float* %7515, align 4, !tbaa !116, !noalias !106
  %7517 = fsub fast float %7516, %7401
  %7518 = fcmp fast olt float %7517, 0.000000e+00
  %7519 = select i1 %7518, float 0.000000e+00, float 1.000000e+00
  %7520 = fadd fast float %7519, %7514
  %7521 = fmul fast float %7519, %7517
  %7522 = fadd fast float %7521, %7513
  %7523 = add nuw nsw i32 %7512, 1
  %7524 = icmp eq i32 %7523, 4
  br i1 %7524, label %7525, label %7511, !llvm.loop !118

; <label>:7525                                    ; preds = %7511
  %7526 = add nuw nsw i32 %7479, 1
  %7527 = icmp eq i32 %7526, 8
  br i1 %7527, label %7528, label %7476, !llvm.loop !119

; <label>:7528                                    ; preds = %7525
  %7529 = fdiv fast float 1.000000e+00, %7520
  %7530 = fmul fast float %7529, %7522
  %7531 = fdiv fast float 1.000000e+00, %7401
  %7532 = fmul fast float %7530, %7531
  %7533 = call float @dx.op.unary.f32(i32 7, float %7532)  ; Saturate(value)
  %7534 = call float @dx.op.binary.f32(i32 35, float %7533, float 0.000000e+00)  ; FMax(a,b)
  %7535 = fmul fast float %7520, 3.125000e-02
  %7536 = call float @dx.op.unary.f32(i32 7, float %7535)  ; Saturate(value)
  %7537 = fmul fast float %7536, 2.000000e+00
  %7538 = fadd fast float %7537, -1.000000e+00
  %7539 = fcmp fast ogt float %7538, 0.000000e+00
  %7540 = fcmp fast olt float %7538, 0.000000e+00
  %7541 = zext i1 %7539 to i32
  %7542 = zext i1 %7540 to i32
  %7543 = sub nsw i32 %7541, %7542
  %7544 = sitofp i32 %7543 to float
  %7545 = fmul fast float %7544, %7538
  %7546 = fsub fast float 1.000000e+00, %7545
  %7547 = fmul fast float %7546, %7546
  %7548 = fmul fast float %7547, %7546
  %7549 = fsub fast float %7546, %7548
  %7550 = fmul fast float %7549, %7534
  %7551 = fsub fast float 1.000000e+00, %7548
  %7552 = fsub fast float %7551, %7550
  %7553 = fmul fast float %7544, 5.000000e-01
  %7554 = fmul fast float %7553, %7552
  %7555 = fsub fast float 5.000000e-01, %7554
  br label %7709

; <label>:7556                                    ; preds = %7391
  br i1 %7402, label %7557, label %7624

; <label>:7557                                    ; preds = %7556
  %7558 = extractvalue %dx.types.CBufRet.f32 %7395, 1
  %7559 = extractvalue %dx.types.CBufRet.f32 %7395, 0
  %7560 = fmul fast float %7559, %6525
  %7561 = fmul fast float %7558, %6529
  %7562 = fadd fast float %7560, 5.000000e-01
  %7563 = call float @dx.op.unary.f32(i32 27, float %7562)  ; Round_ni(value)
  %7564 = fadd fast float %7561, 5.000000e-01
  %7565 = call float @dx.op.unary.f32(i32 27, float %7564)  ; Round_ni(value)
  %7566 = fsub fast float %7562, %7563
  %7567 = fsub fast float %7564, %7565
  %7568 = fadd fast float %7563, -5.000000e-01
  %7569 = fadd fast float %7565, -5.000000e-01
  %7570 = fmul fast float %7566, 2.000000e+00
  %7571 = fsub fast float 3.000000e+00, %7570
  %7572 = fadd fast float %7570, 1.000000e+00
  %7573 = fsub fast float 2.000000e+00, %7566
  %7574 = bitcast float %7571 to i32
  %7575 = sub nsw i32 2129859010, %7574
  %7576 = bitcast i32 %7575 to float
  %7577 = fmul fast float %7576, %7573
  %7578 = fadd fast float %7577, -1.000000e+00
  %7579 = bitcast float %7572 to i32
  %7580 = sub nsw i32 2129859010, %7579
  %7581 = bitcast i32 %7580 to float
  %7582 = fmul fast float %7581, %7566
  %7583 = fadd fast float %7582, 1.000000e+00
  %7584 = fmul fast float %7567, 2.000000e+00
  %7585 = fsub fast float 3.000000e+00, %7584
  %7586 = fadd fast float %7584, 1.000000e+00
  %7587 = fsub fast float 2.000000e+00, %7567
  %7588 = bitcast float %7585 to i32
  %7589 = sub nsw i32 2129859010, %7588
  %7590 = bitcast i32 %7589 to float
  %7591 = fmul fast float %7590, %7587
  %7592 = fadd fast float %7591, -1.000000e+00
  %7593 = bitcast float %7586 to i32
  %7594 = sub nsw i32 2129859010, %7593
  %7595 = bitcast i32 %7594 to float
  %7596 = fmul fast float %7595, %7567
  %7597 = fadd fast float %7596, 1.000000e+00
  %7598 = fadd fast float %7578, %7568
  %7599 = fmul fast float %7598, %7396
  %7600 = fadd fast float %7592, %7569
  %7601 = fmul fast float %7600, %7397
  %7602 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %7599, float %7601, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7603 = extractvalue %dx.types.ResRet.f32 %7602, 0
  %7604 = fmul fast float %7603, %7571
  %7605 = fadd fast float %7583, %7568
  %7606 = fmul fast float %7605, %7396
  %7607 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %7606, float %7601, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7608 = extractvalue %dx.types.ResRet.f32 %7607, 0
  %7609 = fmul fast float %7608, %7572
  %7610 = fadd fast float %7597, %7569
  %7611 = fmul fast float %7610, %7397
  %7612 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %7599, float %7611, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7613 = extractvalue %dx.types.ResRet.f32 %7612, 0
  %7614 = fmul fast float %7613, %7571
  %7615 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %7606, float %7611, float undef, float undef, i32 0, i32 0, i32 undef, float %7401)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7616 = extractvalue %dx.types.ResRet.f32 %7615, 0
  %7617 = fmul fast float %7616, %7572
  %7618 = fadd fast float %7617, %7614
  %7619 = fmul fast float %7618, %7586
  %7620 = fadd fast float %7609, %7604
  %7621 = fmul fast float %7620, %7585
  %7622 = fadd fast float %7621, %7619
  %7623 = fmul fast float %7622, 6.250000e-02
  br label %7709

; <label>:7624                                    ; preds = %7556
  %7625 = fmul fast float %305, 0x401921FB60000000
  %7626 = call float @dx.op.unary.f32(i32 13, float %7625)  ; Sin(value)
  %7627 = call float @dx.op.unary.f32(i32 12, float %7625)  ; Cos(value)
  %7628 = fsub fast float -0.000000e+00, %7626
  br label %7629

; <label>:7629                                    ; preds = %7678, %7624
  %7630 = phi float [ 0.000000e+00, %7624 ], [ %7673, %7678 ]
  %7631 = phi float [ 0.000000e+00, %7624 ], [ %7675, %7678 ]
  %7632 = phi i32 [ 0, %7624 ], [ %7679, %7678 ]
  %7633 = mul i32 %7632, 2
  %7634 = add i32 0, %7633
  %7635 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7634
  %7636 = load float, float* %7635, align 4
  %7637 = mul i32 %7632, 2
  %7638 = add i32 1, %7637
  %7639 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7638
  %7640 = load float, float* %7639, align 4
  %7641 = fmul fast float %7636, %7627
  %7642 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7628, float %7641)  ; FMad(a,b,c)
  %7643 = fmul fast float %7636, %7626
  %7644 = call float @dx.op.tertiary.f32(i32 46, float %7640, float %7627, float %7643)  ; FMad(a,b,c)
  %7645 = fmul fast float %7642, %7399
  %7646 = fmul fast float %7644, %7399
  %7647 = fadd fast float %7645, %6525
  %7648 = fadd fast float %7646, %6529
  %7649 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %46, float %7647, float %7648, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7650 = extractvalue %dx.types.ResRet.f32 %7649, 0
  %7651 = extractvalue %dx.types.ResRet.f32 %7649, 1
  %7652 = extractvalue %dx.types.ResRet.f32 %7649, 2
  %7653 = extractvalue %dx.types.ResRet.f32 %7649, 3
  %7654 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7650, float* %7654, align 4
  %7655 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7651, float* %7655, align 4
  %7656 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7652, float* %7656, align 4
  %7657 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7653, float* %7657, align 4
  %7658 = fsub fast float %7650, %7401
  %7659 = fcmp fast olt float %7658, 0.000000e+00
  %7660 = select i1 %7659, float 0.000000e+00, float 1.000000e+00
  %7661 = fadd fast float %7660, %7630
  %7662 = fmul fast float %7660, %7658
  %7663 = fadd fast float %7662, %7631
  br label %7664

; <label>:7664                                    ; preds = %7664, %7629
  %7665 = phi i32 [ 1, %7629 ], [ %7676, %7664 ]
  %7666 = phi float [ %7663, %7629 ], [ %7675, %7664 ]
  %7667 = phi float [ %7661, %7629 ], [ %7673, %7664 ]
  %7668 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7665
  %7669 = load float, float* %7668, align 4, !tbaa !116, !noalias !106
  %7670 = fsub fast float %7669, %7401
  %7671 = fcmp fast olt float %7670, 0.000000e+00
  %7672 = select i1 %7671, float 0.000000e+00, float 1.000000e+00
  %7673 = fadd fast float %7672, %7667
  %7674 = fmul fast float %7672, %7670
  %7675 = fadd fast float %7674, %7666
  %7676 = add nuw nsw i32 %7665, 1
  %7677 = icmp eq i32 %7676, 4
  br i1 %7677, label %7678, label %7664, !llvm.loop !118

; <label>:7678                                    ; preds = %7664
  %7679 = add nuw nsw i32 %7632, 1
  %7680 = icmp eq i32 %7679, 8
  br i1 %7680, label %7681, label %7629, !llvm.loop !119

; <label>:7681                                    ; preds = %7678
  %7682 = fdiv fast float 1.000000e+00, %7673
  %7683 = fmul fast float %7682, %7675
  %7684 = fdiv fast float 1.000000e+00, %7401
  %7685 = fmul fast float %7683, %7684
  %7686 = call float @dx.op.unary.f32(i32 7, float %7685)  ; Saturate(value)
  %7687 = call float @dx.op.binary.f32(i32 35, float %7686, float 0.000000e+00)  ; FMax(a,b)
  %7688 = fmul fast float %7673, 3.125000e-02
  %7689 = call float @dx.op.unary.f32(i32 7, float %7688)  ; Saturate(value)
  %7690 = fmul fast float %7689, 2.000000e+00
  %7691 = fadd fast float %7690, -1.000000e+00
  %7692 = fcmp fast ogt float %7691, 0.000000e+00
  %7693 = fcmp fast olt float %7691, 0.000000e+00
  %7694 = zext i1 %7692 to i32
  %7695 = zext i1 %7693 to i32
  %7696 = sub nsw i32 %7694, %7695
  %7697 = sitofp i32 %7696 to float
  %7698 = fmul fast float %7697, %7691
  %7699 = fsub fast float 1.000000e+00, %7698
  %7700 = fmul fast float %7699, %7699
  %7701 = fmul fast float %7700, %7699
  %7702 = fsub fast float %7699, %7701
  %7703 = fmul fast float %7702, %7687
  %7704 = fsub fast float 1.000000e+00, %7701
  %7705 = fsub fast float %7704, %7703
  %7706 = fmul fast float %7697, 5.000000e-01
  %7707 = fmul fast float %7706, %7705
  %7708 = fsub fast float 5.000000e-01, %7707
  br label %7709

; <label>:7709                                    ; preds = %7681, %7557, %7528, %7404, %7388
  %7710 = phi float [ 1.000000e+00, %7388 ], [ %7470, %7404 ], [ %7555, %7528 ], [ %7623, %7557 ], [ %7708, %7681 ]
  %7711 = fsub fast float %7222, %7055
  %7712 = fmul fast float %7711, %6622
  %7713 = fadd fast float %7712, %7055
  %7714 = fsub fast float %7389, %7713
  %7715 = fmul fast float %7714, %6621
  %7716 = fadd fast float %7715, %7713
  %7717 = fsub fast float %7710, %7716
  %7718 = fmul fast float %7717, %6649
  %7719 = fadd fast float %7718, %7716
  %7720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7721 = extractvalue %dx.types.CBufRet.f32 %7720, 2
  %7722 = fcmp fast ogt float %7721, 0.000000e+00
  br i1 %7722, label %7723, label %7763, !dx.controlflow.hints !123

; <label>:7723                                    ; preds = %7709
  %7724 = fcmp fast ugt float %7721, 0.000000e+00
  br i1 %7724, label %7725, label %7760

; <label>:7725                                    ; preds = %7723
  %7726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7727 = extractvalue %dx.types.CBufRet.f32 %7726, 0
  %7728 = extractvalue %dx.types.CBufRet.f32 %7726, 1
  %7729 = extractvalue %dx.types.CBufRet.f32 %7726, 2
  %7730 = extractvalue %dx.types.CBufRet.f32 %7726, 3
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 0
  %7733 = extractvalue %dx.types.CBufRet.f32 %7731, 1
  %7734 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7735 = extractvalue %dx.types.CBufRet.f32 %7731, 3
  %7736 = extractvalue %dx.types.CBufRet.f32 %7720, 0
  %7737 = extractvalue %dx.types.CBufRet.f32 %7720, 1
  %7738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7739 = extractvalue %dx.types.CBufRet.f32 %7738, 0
  %7740 = extractvalue %dx.types.CBufRet.f32 %7738, 1
  %7741 = extractvalue %dx.types.CBufRet.f32 %7738, 2
  %7742 = fadd fast float %7739, %6502
  %7743 = fadd fast float %7740, %6503
  %7744 = fadd fast float %7741, %6504
  %7745 = fmul fast float %7742, %7727
  %7746 = call float @dx.op.tertiary.f32(i32 46, float %7728, float %7743, float %7745)  ; FMad(a,b,c)
  %7747 = call float @dx.op.tertiary.f32(i32 46, float %7729, float %7744, float %7746)  ; FMad(a,b,c)
  %7748 = fadd fast float %7747, %7730
  %7749 = fmul fast float %7742, %7732
  %7750 = call float @dx.op.tertiary.f32(i32 46, float %7733, float %7743, float %7749)  ; FMad(a,b,c)
  %7751 = call float @dx.op.tertiary.f32(i32 46, float %7734, float %7744, float %7750)  ; FMad(a,b,c)
  %7752 = fadd fast float %7751, %7735
  %7753 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %7748, float %7752, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7754 = extractvalue %dx.types.ResRet.f32 %7753, 0
  %7755 = fmul fast float %7754, %7737
  %7756 = fadd fast float %7755, %7736
  %7757 = call float @dx.op.unary.f32(i32 7, float %7756)  ; Saturate(value)
  %7758 = fmul fast float %7757, %7721
  %7759 = fsub fast float 1.000000e+00, %7758
  br label %7760

; <label>:7760                                    ; preds = %7725, %7723
  %7761 = phi float [ %7759, %7725 ], [ 1.000000e+00, %7723 ]
  %7762 = fmul fast float %7761, %7719
  br label %7763

; <label>:7763                                    ; preds = %7760, %7709, %6482
  %7764 = phi float [ 1.000000e+00, %6482 ], [ %7762, %7760 ], [ %7719, %7709 ]
  %7765 = call float @dx.op.binary.f32(i32 36, float %7764, float %7764)  ; FMin(a,b)
  %7766 = call float @dx.op.binary.f32(i32 36, float %7764, float %7765)  ; FMin(a,b)
  %7767 = fcmp fast ogt float %7766, 0.000000e+00
  br i1 %7767, label %7768, label %7934, !dx.controlflow.hints !124

; <label>:7768                                    ; preds = %7763
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 0
  %7771 = extractvalue %dx.types.CBufRet.f32 %7769, 1
  %7772 = extractvalue %dx.types.CBufRet.f32 %7769, 2
  %7773 = extractvalue %dx.types.CBufRet.f32 %7769, 3
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = extractvalue %dx.types.CBufRet.f32 %7774, 1
  %7777 = extractvalue %dx.types.CBufRet.f32 %7774, 2
  %7778 = extractvalue %dx.types.CBufRet.f32 %7774, 3
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7779, 3
  %7784 = fmul fast float %7770, %6502
  %7785 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %7771, float %7784)  ; FMad(a,b,c)
  %7786 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %7772, float %7785)  ; FMad(a,b,c)
  %7787 = fadd fast float %7786, %7773
  %7788 = fmul fast float %7775, %6502
  %7789 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %7776, float %7788)  ; FMad(a,b,c)
  %7790 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %7777, float %7789)  ; FMad(a,b,c)
  %7791 = fadd fast float %7790, %7778
  %7792 = fmul fast float %7780, %6502
  %7793 = call float @dx.op.tertiary.f32(i32 46, float %6503, float %7781, float %7792)  ; FMad(a,b,c)
  %7794 = call float @dx.op.tertiary.f32(i32 46, float %6504, float %7782, float %7793)  ; FMad(a,b,c)
  %7795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7796 = extractvalue %dx.types.CBufRet.f32 %7795, 0
  %7797 = extractvalue %dx.types.CBufRet.f32 %7795, 1
  %7798 = extractvalue %dx.types.CBufRet.f32 %7795, 3
  %7799 = fmul fast float %7798, %7787
  %7800 = fmul fast float %7798, %7791
  %7801 = fadd fast float %7799, %7796
  %7802 = fadd fast float %7800, %7797
  %7803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7804 = extractvalue %dx.types.CBufRet.f32 %7803, 0
  %7805 = extractvalue %dx.types.CBufRet.f32 %7803, 1
  %7806 = fsub fast float %7801, %7804
  %7807 = fsub fast float %7802, %7805
  %7808 = fcmp fast olt float %7806, 0.000000e+00
  %7809 = fcmp fast olt float %7807, 0.000000e+00
  %7810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7811 = extractvalue %dx.types.CBufRet.f32 %7810, 0
  %7812 = extractvalue %dx.types.CBufRet.f32 %7810, 1
  %7813 = extractvalue %dx.types.CBufRet.f32 %7810, 2
  %7814 = extractvalue %dx.types.CBufRet.f32 %7810, 3
  %7815 = select i1 %7808, float %7811, float %7813
  %7816 = select i1 %7809, float %7812, float %7814
  %7817 = fmul fast float %7815, %7806
  %7818 = fmul fast float %7816, %7807
  %7819 = call float @dx.op.unary.f32(i32 6, float %7817)  ; FAbs(value)
  %7820 = call float @dx.op.unary.f32(i32 6, float %7818)  ; FAbs(value)
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7823 = call float @dx.op.binary.f32(i32 35, float %7819, float %7820)  ; FMax(a,b)
  %7824 = fsub fast float %7822, %7823
  %7825 = call float @dx.op.unary.f32(i32 7, float %7824)  ; Saturate(value)
  %7826 = fcmp fast ogt float %7825, 0.000000e+00
  br i1 %7826, label %7827, label %7868, !dx.controlflow.hints !125

; <label>:7827                                    ; preds = %7768
  %7828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %7801, float %7802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7829 = extractvalue %dx.types.ResRet.f32 %7828, 1
  %7830 = fcmp fast ogt float %7829, 0.000000e+00
  br i1 %7830, label %7831, label %7863

; <label>:7831                                    ; preds = %7827
  %7832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %7801, float %7802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7833 = extractvalue %dx.types.ResRet.f32 %7832, 0
  %7834 = extractvalue %dx.types.ResRet.f32 %7832, 1
  %7835 = extractvalue %dx.types.ResRet.f32 %7832, 2
  %7836 = extractvalue %dx.types.ResRet.f32 %7832, 3
  %7837 = fsub fast float 1.000000e+00, %7783
  %7838 = fsub fast float %7837, %7794
  %7839 = fmul fast float %7838, 0x400921FB60000000
  %7840 = fadd fast float %7839, 0x3FF921FB60000000
  %7841 = call float @dx.op.unary.f32(i32 13, float %7840)  ; Sin(value)
  %7842 = fadd fast float %7841, -1.000000e+00
  %7843 = fmul fast float %7842, 0x3FD45F3060000000
  %7844 = fmul fast float %7838, 0x401921FB60000000
  %7845 = fadd fast float %7844, 0x400921FB60000000
  %7846 = call float @dx.op.unary.f32(i32 13, float %7845)  ; Sin(value)
  %7847 = fadd fast float %7846, 0x3E7777A5C0000000
  %7848 = fmul fast float %7847, 0x3FC45F3060000000
  %7849 = fmul fast float %7838, 0x4022D97C80000000
  %7850 = fadd fast float %7849, 0x4012D97C80000000
  %7851 = call float @dx.op.unary.f32(i32 13, float %7850)  ; Sin(value)
  %7852 = fadd fast float %7851, 1.000000e+00
  %7853 = fmul fast float %7852, 0x3FBB2995E0000000
  %7854 = fmul fast float %7838, 0x402921FB60000000
  %7855 = fadd fast float %7854, 0x401921FB60000000
  %7856 = call float @dx.op.unary.f32(i32 13, float %7855)  ; Sin(value)
  %7857 = fadd fast float %7856, 0xBE8777A5C0000000
  %7858 = fmul fast float %7857, 0x3FB45F3060000000
  %7859 = call float @dx.op.dot4.f32(i32 56, float %7833, float %7834, float %7835, float %7836, float %7843, float %7848, float %7853, float %7858)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7860 = fmul fast float %7859, 0xBFF7154760000000
  %7861 = call float @dx.op.unary.f32(i32 21, float %7860)  ; Exp(value)
  %7862 = call float @dx.op.unary.f32(i32 7, float %7861)  ; Saturate(value)
  br label %7863

; <label>:7863                                    ; preds = %7831, %7827
  %7864 = phi float [ %7862, %7831 ], [ 1.000000e+00, %7827 ]
  %7865 = fadd fast float %7864, -1.000000e+00
  %7866 = fmul fast float %7865, %7825
  %7867 = fadd fast float %7866, 1.000000e+00
  br label %7868

; <label>:7868                                    ; preds = %7863, %7768
  %7869 = phi float [ %7867, %7863 ], [ 1.000000e+00, %7768 ]
  %7870 = fmul fast float %7869, %7764
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 0
  %7873 = extractvalue %dx.types.CBufRet.f32 %7871, 1
  %7874 = extractvalue %dx.types.CBufRet.f32 %7871, 2
  %7875 = fadd fast float %7872, %190
  %7876 = fadd fast float %7873, %191
  %7877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7878 = extractvalue %dx.types.CBufRet.f32 %7877, 1
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.CBufRet.f32 %7879, 1
  %7882 = extractvalue %dx.types.CBufRet.f32 %7879, 2
  %7883 = fsub fast float -0.000000e+00, %7875
  %7884 = fsub fast float -0.000000e+00, %7876
  %7885 = fsub fast float -0.000000e+00, %192
  %7886 = fsub fast float %7885, %7874
  %7887 = fadd fast float %7886, %7878
  %7888 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7883, float %7884, float %7887)  ; Dot3(ax,ay,az,bx,by,bz)
  %7889 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7880, float %7881, float %7882)  ; Dot3(ax,ay,az,bx,by,bz)
  %7890 = fdiv fast float 1.000000e+00, %7889
  %7891 = fmul fast float %7890, %7888
  %7892 = fmul fast float %7880, %7891
  %7893 = fmul fast float %7881, %7891
  %7894 = fadd fast float %7892, %7875
  %7895 = fadd fast float %7893, %7876
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.CBufRet.f32 %7896, 1
  %7899 = fsub fast float %7894, %7897
  %7900 = fsub fast float %7895, %7898
  %7901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7902 = extractvalue %dx.types.CBufRet.f32 %7901, 2
  %7903 = extractvalue %dx.types.CBufRet.f32 %7901, 3
  %7904 = fmul fast float %7899, %7902
  %7905 = fmul fast float %7900, %7903
  %7906 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7907 = extractvalue %dx.types.CBufRet.i32 %7906, 3
  %7908 = icmp eq i32 %7907, 0
  br i1 %7908, label %7914, label %7909

; <label>:7909                                    ; preds = %7868
  %7910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %7904, float %7905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7911 = extractvalue %dx.types.ResRet.f32 %7910, 0
  %7912 = extractvalue %dx.types.ResRet.f32 %7910, 1
  %7913 = extractvalue %dx.types.ResRet.f32 %7910, 2
  br label %7919

; <label>:7914                                    ; preds = %7868
  %7915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %7904, float %7905, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7916 = extractvalue %dx.types.ResRet.f32 %7915, 0
  %7917 = extractvalue %dx.types.ResRet.f32 %7915, 1
  %7918 = extractvalue %dx.types.ResRet.f32 %7915, 2
  br label %7919

; <label>:7919                                    ; preds = %7914, %7909
  %7920 = phi float [ %7911, %7909 ], [ %7916, %7914 ]
  %7921 = phi float [ %7912, %7909 ], [ %7917, %7914 ]
  %7922 = phi float [ %7913, %7909 ], [ %7918, %7914 ]
  %7923 = extractvalue %dx.types.CBufRet.f32 %7877, 2
  %7924 = fmul fast float %7923, %7920
  %7925 = extractvalue %dx.types.CBufRet.f32 %7877, 0
  %7926 = fsub fast float %7891, %7925
  %7927 = fsub fast float %7926, %7924
  %7928 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7927)  ; FMax(a,b)
  %7929 = fmul fast float %7928, %7921
  %7930 = call float @dx.op.binary.f32(i32 36, float %7922, float %7929)  ; FMin(a,b)
  %7931 = fmul fast float %7930, 0xBFF7154760000000
  %7932 = call float @dx.op.unary.f32(i32 21, float %7931)  ; Exp(value)
  %7933 = fmul fast float %7870, %7932
  br label %7934

; <label>:7934                                    ; preds = %7919, %7763
  %7935 = phi float [ %7933, %7919 ], [ %7764, %7763 ]
  %7936 = call float @dx.op.binary.f32(i32 36, float %7935, float %7935)  ; FMin(a,b)
  %7937 = call float @dx.op.binary.f32(i32 36, float %7935, float %7936)  ; FMin(a,b)
  %7938 = fcmp fast ogt float %7937, 0.000000e+00
  br i1 %7938, label %7939, label %8165, !dx.controlflow.hints !126

; <label>:7939                                    ; preds = %7934
  %7940 = bitcast i32 %5654 to float
  %7941 = fmul fast float %7935, %6494
  %7942 = fmul fast float %7935, %6495
  %7943 = fmul fast float %7935, %6496
  %7944 = fsub fast float %6483, %221
  %7945 = fsub fast float %6484, %222
  %7946 = fsub fast float %6485, %223
  %7947 = call float @dx.op.dot3.f32(i32 55, float %7944, float %7945, float %7946, float %7944, float %7945, float %7946)  ; Dot3(ax,ay,az,bx,by,bz)
  %7948 = call float @dx.op.unary.f32(i32 25, float %7947)  ; Rsqrt(value)
  %7949 = fmul fast float %7948, %7944
  %7950 = fmul fast float %7948, %7945
  %7951 = fmul fast float %7948, %7946
  %7952 = call float @dx.op.dot3.f32(i32 55, float %6483, float %6484, float %6485, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %7953 = call float @dx.op.dot3.f32(i32 55, float %5259, float %5260, float %5261, float %7949, float %7950, float %7951)  ; Dot3(ax,ay,az,bx,by,bz)
  %7954 = call float @dx.op.unary.f32(i32 7, float %7952)  ; Saturate(value)
  %7955 = fmul fast float %7954, %7954
  %7956 = fmul fast float %7955, %7940
  %7957 = call float @dx.op.unary.f32(i32 7, float %7956)  ; Saturate(value)
  %7958 = fmul fast float %7957, %7954
  %7959 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %7949, float %7950, float %7951)  ; Dot3(ax,ay,az,bx,by,bz)
  %7960 = fmul fast float %7959, %7959
  %7961 = call float @dx.op.unary.f32(i32 6, float %7952)  ; FAbs(value)
  %7962 = fsub fast float 1.000000e+00, %5648
  %7963 = fmul fast float %5630, %5630
  %7964 = fmul fast float %7963, %7962
  %7965 = fadd fast float %7964, %5648
  %7966 = bitcast float %7965 to i32
  %7967 = ashr i32 %7966, 1
  %7968 = add nsw i32 %7967, 532487669
  %7969 = bitcast i32 %7968 to float
  %7970 = fadd fast float %7969, %5630
  %7971 = fmul fast float %5648, %7960
  %7972 = fsub fast float 1.000000e+00, %7960
  %7973 = fadd fast float %7972, %7971
  %7974 = fmul fast float %7961, %7961
  %7975 = fmul fast float %7974, %7962
  %7976 = fadd fast float %7975, %5648
  %7977 = bitcast float %7976 to i32
  %7978 = ashr i32 %7977, 1
  %7979 = add nsw i32 %7978, 532487669
  %7980 = bitcast i32 %7979 to float
  %7981 = fadd fast float %7980, %7961
  %7982 = fmul fast float %7973, %7973
  %7983 = fmul fast float %7982, %7970
  %7984 = fmul fast float %7983, %7981
  %7985 = fdiv fast float 0x3FF0A00000000000, %7984
  %7986 = fmul fast float %7985, %5648
  %7987 = call float @dx.op.unary.f32(i32 6, float %7953)  ; FAbs(value)
  %7988 = fsub fast float 1.000000e+00, %7987
  %7989 = bitcast float %7988 to i32
  %7990 = sitofp i32 %7989 to float
  %7991 = fmul fast float %7990, 5.000000e+00
  %7992 = fadd fast float %7991, 0xC1EFBF8940000000
  %7993 = fptosi float %7992 to i32
  %7994 = bitcast i32 %7993 to float
  %7995 = fsub fast float 1.000000e+00, %5620
  %7996 = fsub fast float 1.000000e+00, %5621
  %7997 = fsub fast float 1.000000e+00, %5628
  %7998 = fmul fast float %7994, %7995
  %7999 = fmul fast float %7994, %7996
  %8000 = fmul fast float %7994, %7997
  %8001 = fadd fast float %7998, %5620
  %8002 = fadd fast float %7999, %5621
  %8003 = fadd fast float %8000, %5628
  br i1 %5912, label %8004, label %8027

; <label>:8004                                    ; preds = %7939
  %8005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4288, float %7987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8006 = extractvalue %dx.types.ResRet.f32 %8005, 0
  %8007 = extractvalue %dx.types.ResRet.f32 %8005, 1
  %8008 = extractvalue %dx.types.ResRet.f32 %8005, 2
  %8009 = fadd fast float %8006, -5.000000e-01
  %8010 = fadd fast float %8007, -5.000000e-01
  %8011 = fadd fast float %8008, -5.000000e-01
  %8012 = fmul fast float %5620, 4.000000e+00
  %8013 = fmul fast float %8012, %7995
  %8014 = fmul fast float %8013, %8009
  %8015 = fmul fast float %5621, 4.000000e+00
  %8016 = fmul fast float %8015, %7996
  %8017 = fmul fast float %8016, %8010
  %8018 = fmul fast float %5628, 4.000000e+00
  %8019 = fmul fast float %8018, %7997
  %8020 = fmul fast float %8019, %8011
  %8021 = fadd fast float %8014, %8001
  %8022 = fadd fast float %8017, %8002
  %8023 = fadd fast float %8020, %8003
  %8024 = call float @dx.op.unary.f32(i32 7, float %8021)  ; Saturate(value)
  %8025 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8026 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  br label %8027

; <label>:8027                                    ; preds = %8004, %7939
  %8028 = phi float [ %8024, %8004 ], [ %8001, %7939 ]
  %8029 = phi float [ %8025, %8004 ], [ %8002, %7939 ]
  %8030 = phi float [ %8026, %8004 ], [ %8003, %7939 ]
  %8031 = fmul fast float %7952, 9.843750e-01
  %8032 = fadd fast float %8031, 7.812500e-03
  %8033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8032, float %5902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8034 = extractvalue %dx.types.ResRet.f32 %8033, 2
  %8035 = extractvalue %dx.types.ResRet.f32 %8033, 3
  %8036 = fmul fast float %8034, %5620
  %8037 = fmul fast float %8034, %5621
  %8038 = fmul fast float %8034, %5628
  %8039 = fadd fast float %8036, %8035
  %8040 = fadd fast float %8037, %8035
  %8041 = fadd fast float %8038, %8035
  br i1 %5912, label %8042, label %8065

; <label>:8042                                    ; preds = %8027
  %8043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4288, float %7952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8044 = extractvalue %dx.types.ResRet.f32 %8043, 0
  %8045 = extractvalue %dx.types.ResRet.f32 %8043, 1
  %8046 = extractvalue %dx.types.ResRet.f32 %8043, 2
  %8047 = fadd fast float %8044, -5.000000e-01
  %8048 = fadd fast float %8045, -5.000000e-01
  %8049 = fadd fast float %8046, -5.000000e-01
  %8050 = fmul fast float %5620, 4.000000e+00
  %8051 = fmul fast float %8050, %7995
  %8052 = fmul fast float %8051, %8047
  %8053 = fmul fast float %5621, 4.000000e+00
  %8054 = fmul fast float %8053, %7996
  %8055 = fmul fast float %8054, %8048
  %8056 = fmul fast float %5628, 4.000000e+00
  %8057 = fmul fast float %8056, %7997
  %8058 = fmul fast float %8057, %8049
  %8059 = fadd fast float %8052, %8039
  %8060 = fadd fast float %8055, %8040
  %8061 = fadd fast float %8058, %8041
  %8062 = call float @dx.op.unary.f32(i32 7, float %8059)  ; Saturate(value)
  %8063 = call float @dx.op.unary.f32(i32 7, float %8060)  ; Saturate(value)
  %8064 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  br label %8065

; <label>:8065                                    ; preds = %8042, %8027
  %8066 = phi float [ %8062, %8042 ], [ %8039, %8027 ]
  %8067 = phi float [ %8063, %8042 ], [ %8040, %8027 ]
  %8068 = phi float [ %8064, %8042 ], [ %8041, %8027 ]
  %8069 = call float @dx.op.binary.f32(i32 35, float %8067, float %8068)  ; FMax(a,b)
  %8070 = call float @dx.op.binary.f32(i32 35, float %8066, float %8069)  ; FMax(a,b)
  %8071 = fsub fast float 1.000000e+00, %8070
  %8072 = fsub fast float -0.000000e+00, %5617
  %8073 = fsub fast float -0.000000e+00, %5618
  %8074 = fsub fast float -0.000000e+00, %5619
  %8075 = call float @dx.op.dot3.f32(i32 55, float %6483, float %6484, float %6485, float %8072, float %8073, float %8074)  ; Dot3(ax,ay,az,bx,by,bz)
  %8076 = call float @dx.op.unary.f32(i32 7, float %8075)  ; Saturate(value)
  %8077 = fmul fast float %8076, 9.843750e-01
  %8078 = fadd fast float %8077, 7.812500e-03
  %8079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8078, float %5902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8080 = extractvalue %dx.types.ResRet.f32 %8079, 2
  %8081 = extractvalue %dx.types.ResRet.f32 %8079, 3
  %8082 = fmul fast float %8080, %5620
  %8083 = fmul fast float %8080, %5621
  %8084 = fmul fast float %8080, %5628
  %8085 = fadd fast float %8082, %8081
  %8086 = fadd fast float %8083, %8081
  %8087 = fadd fast float %8084, %8081
  br i1 %5912, label %8088, label %8111

; <label>:8088                                    ; preds = %8065
  %8089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4288, float %8076, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8090 = extractvalue %dx.types.ResRet.f32 %8089, 0
  %8091 = extractvalue %dx.types.ResRet.f32 %8089, 1
  %8092 = extractvalue %dx.types.ResRet.f32 %8089, 2
  %8093 = fadd fast float %8090, -5.000000e-01
  %8094 = fadd fast float %8091, -5.000000e-01
  %8095 = fadd fast float %8092, -5.000000e-01
  %8096 = fmul fast float %5620, 4.000000e+00
  %8097 = fmul fast float %8096, %7995
  %8098 = fmul fast float %8097, %8093
  %8099 = fmul fast float %5621, 4.000000e+00
  %8100 = fmul fast float %8099, %7996
  %8101 = fmul fast float %8100, %8094
  %8102 = fmul fast float %5628, 4.000000e+00
  %8103 = fmul fast float %8102, %7997
  %8104 = fmul fast float %8103, %8095
  %8105 = fadd fast float %8098, %8085
  %8106 = fadd fast float %8101, %8086
  %8107 = fadd fast float %8104, %8087
  %8108 = call float @dx.op.unary.f32(i32 7, float %8105)  ; Saturate(value)
  %8109 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8110 = call float @dx.op.unary.f32(i32 7, float %8107)  ; Saturate(value)
  br label %8111

; <label>:8111                                    ; preds = %8088, %8065
  %8112 = phi float [ %8108, %8088 ], [ %8085, %8065 ]
  %8113 = phi float [ %8109, %8088 ], [ %8086, %8065 ]
  %8114 = phi float [ %8110, %8088 ], [ %8087, %8065 ]
  %8115 = call float @dx.op.binary.f32(i32 35, float %8113, float %8114)  ; FMax(a,b)
  %8116 = call float @dx.op.binary.f32(i32 35, float %8112, float %8115)  ; FMax(a,b)
  %8117 = fsub fast float 1.000000e+00, %8116
  %8118 = fmul fast float %8117, %8076
  %8119 = fmul fast float %8118, %4400
  %8120 = fmul fast float %8118, %4401
  %8121 = fmul fast float %8118, %4402
  %8122 = fmul fast float %8028, %7986
  %8123 = fmul fast float %8029, %7986
  %8124 = fmul fast float %8030, %7986
  %8125 = fsub fast float 1.000000e+00, %7953
  %8126 = bitcast float %8125 to i32
  %8127 = sitofp i32 %8126 to float
  %8128 = fmul fast float %8127, 5.000000e+00
  %8129 = fadd fast float %8128, 0xC1EFBF8940000000
  %8130 = fptosi float %8129 to i32
  %8131 = bitcast i32 %8130 to float
  %8132 = fmul fast float %8131, %4289
  %8133 = fmul fast float %8071, %8132
  %8134 = fmul fast float %8133, %6423
  %8135 = fmul fast float %8133, %6424
  %8136 = fmul fast float %8133, %6425
  %8137 = fmul fast float %8071, %7958
  %8138 = fadd fast float %8134, %8122
  %8139 = fadd fast float %8135, %8123
  %8140 = fadd fast float %8136, %8124
  %8141 = fadd fast float %8119, %8137
  %8142 = fadd fast float %8120, %8137
  %8143 = fadd fast float %8121, %8137
  %8144 = fmul fast float %8141, %7941
  %8145 = fmul fast float %8142, %7942
  %8146 = fmul fast float %8143, %7943
  %8147 = fmul fast float %7958, %7941
  %8148 = fmul fast float %8147, %8138
  %8149 = fmul fast float %7958, %7942
  %8150 = fmul fast float %8149, %8139
  %8151 = fmul fast float %7958, %7943
  %8152 = fmul fast float %8151, %8140
  %8153 = fadd fast float %8144, %6473
  %8154 = fmul fast float %8153, %4314
  %8155 = fadd fast float %8145, %6475
  %8156 = fmul fast float %8155, %4314
  %8157 = fadd fast float %8146, %6477
  %8158 = fmul fast float %8157, %4314
  %8159 = fadd fast float %8148, %6456
  %8160 = fmul fast float %8159, %4314
  %8161 = fadd fast float %8150, %6459
  %8162 = fmul fast float %8161, %4314
  %8163 = fadd fast float %8152, %6462
  %8164 = fmul fast float %8163, %4314
  br label %8165

; <label>:8165                                    ; preds = %8111, %7934, %6406
  %8166 = phi float [ %6457, %6406 ], [ %6457, %7934 ], [ %8160, %8111 ]
  %8167 = phi float [ %6460, %6406 ], [ %6460, %7934 ], [ %8162, %8111 ]
  %8168 = phi float [ %6463, %6406 ], [ %6463, %7934 ], [ %8164, %8111 ]
  %8169 = phi float [ %6474, %6406 ], [ %6474, %7934 ], [ %8154, %8111 ]
  %8170 = phi float [ %6476, %6406 ], [ %6476, %7934 ], [ %8156, %8111 ]
  %8171 = phi float [ %6478, %6406 ], [ %6478, %7934 ], [ %8158, %8111 ]
  %8172 = fmul fast float %4314, %6432
  %8173 = fsub fast float -0.000000e+00, %8172
  %8174 = fmul fast float %4314, %6433
  %8175 = fsub fast float -0.000000e+00, %8174
  %8176 = fmul fast float %4314, %6434
  %8177 = fsub fast float -0.000000e+00, %8176
  %8178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8179 = extractvalue %dx.types.CBufRet.f32 %8178, 0
  %8180 = fmul fast float %8179, %6438
  %8181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8182 = extractvalue %dx.types.CBufRet.f32 %8181, 3
  %8183 = fsub fast float 1.000000e+00, %4292
  %8184 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8185 = fadd fast float %8171, %4291
  %8186 = fmul fast float %8185, %4292
  %8187 = fmul fast float %8184, %8182
  %8188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %8189 = extractvalue %dx.types.ResRet.i32 %8188, 3
  %8190 = bitcast i32 %8189 to float
  %8191 = fsub fast float %8173, %8190
  %8192 = fsub fast float %8175, %8190
  %8193 = fsub fast float %8177, %8190
  %8194 = fmul fast float %8191, %235
  %8195 = fmul fast float %8192, %235
  %8196 = fmul fast float %8193, %235
  %8197 = fadd fast float %8194, %8190
  %8198 = fadd fast float %8195, %8190
  %8199 = fadd fast float %8196, %8190
  %8200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8201 = extractvalue %dx.types.CBufRet.f32 %8200, 3
  %8202 = fmul fast float %8169, %5623
  %8203 = fmul fast float %8170, %5624
  %8204 = fmul fast float %8171, %5625
  %8205 = fcmp fast ogt float %98, %255
  %8206 = and i1 %8205, %4419
  %8207 = or i1 %4498, %8206
  %8208 = icmp eq i32 %4418, 2
  %8209 = fcmp fast ole float %98, %255
  %8210 = and i1 %8209, %8208
  %8211 = or i1 %8210, %8207
  br i1 %8206, label %8212, label %8469

; <label>:8212                                    ; preds = %8165
  %8213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.f32 %8213, 2
  %8215 = extractvalue %dx.types.CBufRet.f32 %8213, 3
  %8216 = fmul fast float %8214, %111
  %8217 = fmul fast float %8215, %112
  %8218 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8219 = call float @dx.op.unary.f32(i32 7, float %8217)  ; Saturate(value)
  %8220 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8218, float %8219, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8221 = extractvalue %dx.types.ResRet.f32 %8220, 0
  %8222 = extractvalue %dx.types.ResRet.f32 %8220, 1
  %8223 = extractvalue %dx.types.ResRet.f32 %8220, 2
  %8224 = extractvalue %dx.types.ResRet.f32 %8220, 3
  %8225 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8218, float %8219, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8226 = extractvalue %dx.types.ResRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.ResRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.ResRet.f32 %8225, 2
  %8229 = extractvalue %dx.types.ResRet.f32 %8225, 3
  %8230 = call float @dx.op.binary.f32(i32 35, float %8222, float %8223)  ; FMax(a,b)
  %8231 = call float @dx.op.binary.f32(i32 35, float %8221, float %8230)  ; FMax(a,b)
  %8232 = call float @dx.op.binary.f32(i32 35, float %8231, float %8224)  ; FMax(a,b)
  %8233 = call float @dx.op.binary.f32(i32 36, float %8227, float %8228)  ; FMin(a,b)
  %8234 = call float @dx.op.binary.f32(i32 36, float %8226, float %8233)  ; FMin(a,b)
  %8235 = call float @dx.op.binary.f32(i32 36, float %8234, float %8229)  ; FMin(a,b)
  %8236 = fmul fast float %8232, 2.550000e+02
  %8237 = fadd fast float %8236, 0x3F70101020000000
  %8238 = fptoui float %8237 to i32
  %8239 = fmul fast float %8235, 2.550000e+02
  %8240 = fadd fast float %8239, 0x3F70101020000000
  %8241 = fptoui float %8240 to i32
  %8242 = icmp ult i32 %8238, %8241
  br i1 %8242, label %8243, label %8411

; <label>:8243                                    ; preds = %8212
  %8244 = fcmp fast ogt float %97, 9.843750e-01
  %8245 = fadd fast float %98, -4.000000e+00
  %8246 = select i1 %8244, float -4.000000e+00, float %8245
  %8247 = call float @dx.op.binary.f32(i32 35, float %8246, float 0.000000e+00)  ; FMax(a,b)
  %8248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8249 = extractvalue %dx.types.CBufRet.f32 %8248, 0
  %8250 = fadd fast float %8249, %8247
  %8251 = extractvalue %dx.types.CBufRet.f32 %8248, 2
  %8252 = fmul fast float %8250, %8251
  %8253 = call float @dx.op.unary.f32(i32 23, float %8252)  ; Log(value)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8248, 3
  %8255 = fmul fast float %8254, %8253
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8258 = fmul fast float %8255, %8257
  %8259 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8260 = uitofp i32 %8238 to float
  %8261 = uitofp i32 %8241 to float
  %8262 = fadd fast float %8260, 5.000000e-01
  %8263 = fadd fast float %8261, 5.000000e-01
  %8264 = fmul fast float %8257, %8262
  %8265 = fmul fast float %8257, %8263
  %8266 = fadd fast float %8264, 0x3F0FFB4800000000
  %8267 = fadd fast float %8265, 0xBF0FFB4800000000
  %8268 = call float @dx.op.binary.f32(i32 35, float %8259, float %8266)  ; FMax(a,b)
  %8269 = call float @dx.op.binary.f32(i32 36, float %8268, float %8267)  ; FMin(a,b)
  %8270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8271 = extractvalue %dx.types.CBufRet.f32 %8270, 1
  %8272 = extractvalue %dx.types.CBufRet.f32 %8270, 2
  %8273 = extractvalue %dx.types.CBufRet.f32 %8270, 0
  %8274 = fmul fast float %8271, %8269
  %8275 = fadd fast float %8273, %8274
  %8276 = fadd fast float %8273, %8272
  %8277 = fsub fast float %8271, %8272
  %8278 = fadd fast float %8277, %8273
  %8279 = call float @dx.op.binary.f32(i32 35, float %8275, float %8276)  ; FMax(a,b)
  %8280 = call float @dx.op.binary.f32(i32 36, float %8279, float %8278)  ; FMin(a,b)
  %8281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8218, float %8219, float %8280, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8282 = extractvalue %dx.types.ResRet.f32 %8281, 0
  %8283 = extractvalue %dx.types.ResRet.f32 %8281, 1
  %8284 = extractvalue %dx.types.ResRet.f32 %8281, 2
  %8285 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8286 = extractvalue %dx.types.CBufRet.i32 %8285, 0
  %8287 = extractvalue %dx.types.CBufRet.i32 %8285, 1
  %8288 = uitofp i32 %8286 to float
  %8289 = uitofp i32 %8287 to float
  %8290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8291 = extractvalue %dx.types.CBufRet.f32 %8290, 0
  %8292 = extractvalue %dx.types.CBufRet.f32 %8290, 1
  %8293 = fmul fast float %8288, %8218
  %8294 = fmul fast float %8289, %8219
  %8295 = fadd fast float %8293, -5.000000e-01
  %8296 = fadd fast float %8294, -5.000000e-01
  %8297 = call float @dx.op.unary.f32(i32 22, float %8295)  ; Frc(value)
  %8298 = call float @dx.op.unary.f32(i32 22, float %8296)  ; Frc(value)
  %8299 = fmul fast float %8297, %8297
  %8300 = fmul fast float %8299, %8297
  %8301 = fsub fast float 3.000000e+00, %8297
  %8302 = fmul fast float %8299, %8301
  %8303 = fmul fast float %8297, 3.000000e+00
  %8304 = fmul fast float %8300, 3.000000e+00
  %8305 = fmul fast float %8299, 6.000000e+00
  %8306 = fsub fast float %8304, %8305
  %8307 = fadd fast float %8306, 4.000000e+00
  %8308 = fmul fast float %8307, 0x3FC5555560000000
  %8309 = fmul fast float %8300, -3.000000e+00
  %8310 = fadd fast float %8299, %8297
  %8311 = fmul fast float %8310, 3.000000e+00
  %8312 = fadd fast float %8309, 1.000000e+00
  %8313 = fadd fast float %8312, %8311
  %8314 = fmul fast float %8300, 0x3FC5555560000000
  %8315 = fmul fast float %8298, %8298
  %8316 = fmul fast float %8315, %8298
  %8317 = fsub fast float 3.000000e+00, %8298
  %8318 = fmul fast float %8315, %8317
  %8319 = fmul fast float %8298, 3.000000e+00
  %8320 = fmul fast float %8316, 3.000000e+00
  %8321 = fmul fast float %8315, 6.000000e+00
  %8322 = fsub fast float %8320, %8321
  %8323 = fadd fast float %8322, 4.000000e+00
  %8324 = fmul fast float %8323, 0x3FC5555560000000
  %8325 = fmul fast float %8316, -3.000000e+00
  %8326 = fadd fast float %8315, %8298
  %8327 = fmul fast float %8326, 3.000000e+00
  %8328 = fadd fast float %8325, 1.000000e+00
  %8329 = fadd fast float %8328, %8327
  %8330 = fmul fast float %8316, 0x3FC5555560000000
  %8331 = fadd fast float %8297, 1.000000e+00
  %8332 = fsub fast float 1.000000e+00, %8303
  %8333 = fadd fast float %8332, %8302
  %8334 = fadd fast float %8333, %8307
  %8335 = fmul fast float %8334, 0x3FC5555560000000
  %8336 = fdiv fast float %8308, %8335
  %8337 = fsub fast float %8331, %8336
  %8338 = fsub fast float 1.000000e+00, %8297
  %8339 = fadd fast float %8313, %8300
  %8340 = fmul fast float %8339, 0x3FC5555560000000
  %8341 = fdiv fast float %8314, %8340
  %8342 = fadd fast float %8338, %8341
  %8343 = fadd fast float %8298, 1.000000e+00
  %8344 = fsub fast float 1.000000e+00, %8319
  %8345 = fadd fast float %8344, %8318
  %8346 = fadd fast float %8345, %8323
  %8347 = fmul fast float %8346, 0x3FC5555560000000
  %8348 = fdiv fast float %8324, %8347
  %8349 = fsub fast float %8343, %8348
  %8350 = fsub fast float 1.000000e+00, %8298
  %8351 = fadd fast float %8329, %8316
  %8352 = fmul fast float %8351, 0x3FC5555560000000
  %8353 = fdiv fast float %8330, %8352
  %8354 = fadd fast float %8353, %8350
  %8355 = fmul fast float %8337, %8291
  %8356 = fsub fast float %8218, %8355
  %8357 = fmul fast float %8342, %8291
  %8358 = fadd fast float %8357, %8218
  %8359 = fmul fast float %8354, %8292
  %8360 = fadd fast float %8359, %8219
  %8361 = fmul fast float %8349, %8292
  %8362 = fsub fast float %8219, %8361
  %8363 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8356, float %8362, float %8280, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8364 = extractvalue %dx.types.ResRet.f32 %8363, 0
  %8365 = extractvalue %dx.types.ResRet.f32 %8363, 1
  %8366 = extractvalue %dx.types.ResRet.f32 %8363, 2
  %8367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8358, float %8362, float %8280, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8368 = extractvalue %dx.types.ResRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.ResRet.f32 %8367, 1
  %8370 = extractvalue %dx.types.ResRet.f32 %8367, 2
  %8371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8356, float %8360, float %8280, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8372 = extractvalue %dx.types.ResRet.f32 %8371, 0
  %8373 = extractvalue %dx.types.ResRet.f32 %8371, 1
  %8374 = extractvalue %dx.types.ResRet.f32 %8371, 2
  %8375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8358, float %8360, float %8280, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8376 = extractvalue %dx.types.ResRet.f32 %8375, 0
  %8377 = extractvalue %dx.types.ResRet.f32 %8375, 1
  %8378 = extractvalue %dx.types.ResRet.f32 %8375, 2
  %8379 = fsub fast float %8372, %8364
  %8380 = fsub fast float %8373, %8365
  %8381 = fsub fast float %8374, %8366
  %8382 = fmul fast float %8379, %8352
  %8383 = fmul fast float %8380, %8352
  %8384 = fmul fast float %8381, %8352
  %8385 = fadd fast float %8382, %8364
  %8386 = fadd fast float %8383, %8365
  %8387 = fadd fast float %8384, %8366
  %8388 = fsub fast float %8376, %8368
  %8389 = fsub fast float %8377, %8369
  %8390 = fsub fast float %8378, %8370
  %8391 = fmul fast float %8388, %8352
  %8392 = fmul fast float %8389, %8352
  %8393 = fmul fast float %8390, %8352
  %8394 = fsub fast float %8368, %8385
  %8395 = fadd fast float %8394, %8391
  %8396 = fsub fast float %8369, %8386
  %8397 = fadd fast float %8396, %8392
  %8398 = fsub fast float %8370, %8387
  %8399 = fadd fast float %8398, %8393
  %8400 = fmul fast float %8395, %8340
  %8401 = fmul fast float %8397, %8340
  %8402 = fmul fast float %8399, %8340
  %8403 = fadd fast float %8400, %8385
  %8404 = fadd fast float %8401, %8386
  %8405 = fadd fast float %8402, %8387
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 1
  %8408 = fmul fast float %8403, %8407
  %8409 = fmul fast float %8404, %8407
  %8410 = fmul fast float %8405, %8407
  br label %8411

; <label>:8411                                    ; preds = %8243, %8212
  %8412 = phi float [ %8282, %8243 ], [ 1.000000e+00, %8212 ]
  %8413 = phi float [ %8283, %8243 ], [ 1.000000e+00, %8212 ]
  %8414 = phi float [ %8284, %8243 ], [ 1.000000e+00, %8212 ]
  %8415 = phi float [ %8408, %8243 ], [ 0.000000e+00, %8212 ]
  %8416 = phi float [ %8409, %8243 ], [ 0.000000e+00, %8212 ]
  %8417 = phi float [ %8410, %8243 ], [ 0.000000e+00, %8212 ]
  %8418 = fmul fast float %8415, %8197
  %8419 = fmul fast float %8416, %8198
  %8420 = fmul fast float %8417, %8199
  %8421 = call float @dx.op.dot3.f32(i32 55, float %8412, float %8413, float %8414, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8422 = call float @dx.op.dot3.f32(i32 55, float %8418, float %8419, float %8420, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8423 = select i1 %294, float %8421, float %8412
  %8424 = select i1 %294, float %8421, float %8413
  %8425 = select i1 %294, float 1.000000e+00, float %8414
  %8426 = select i1 %294, float %8422, float %8418
  %8427 = select i1 %294, float 0.000000e+00, float %8419
  %8428 = select i1 %294, float 0.000000e+00, float %8420
  %8429 = fmul fast float %8423, %8202
  %8430 = fmul fast float %8424, %8203
  %8431 = fmul fast float %8425, %8204
  %8432 = fadd fast float %8429, %8426
  %8433 = fadd fast float %8430, %8427
  %8434 = fadd fast float %8428, %8431
  %8435 = fmul fast float %8423, %8166
  %8436 = fmul fast float %8424, %8167
  %8437 = fmul fast float %8425, %8168
  %8438 = fmul fast float %139, %8214
  %8439 = fmul fast float %141, %8215
  %8440 = fsub fast float 1.000000e+00, %8438
  %8441 = fsub fast float 1.000000e+00, %8439
  %8442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8443 = extractvalue %dx.types.CBufRet.f32 %8442, 0
  %8444 = extractvalue %dx.types.CBufRet.f32 %8442, 1
  %8445 = extractvalue %dx.types.CBufRet.f32 %8442, 2
  %8446 = fmul fast float %8440, %8443
  %8447 = fmul fast float %8440, %8444
  %8448 = fmul fast float %8440, %8445
  %8449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8450 = extractvalue %dx.types.CBufRet.f32 %8449, 0
  %8451 = extractvalue %dx.types.CBufRet.f32 %8449, 1
  %8452 = extractvalue %dx.types.CBufRet.f32 %8449, 2
  %8453 = fmul fast float %8441, %8450
  %8454 = fmul fast float %8441, %8451
  %8455 = fmul fast float %8441, %8452
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 0
  %8458 = extractvalue %dx.types.CBufRet.f32 %8456, 1
  %8459 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8460 = fadd fast float %8453, %8457
  %8461 = fadd fast float %8460, %8446
  %8462 = fadd fast float %8454, %8458
  %8463 = fadd fast float %8462, %8447
  %8464 = fadd fast float %8455, %8459
  %8465 = fadd fast float %8464, %8448
  %8466 = fmul fast float %8461, %255
  %8467 = fmul fast float %8463, %255
  %8468 = fmul fast float %8465, %255
  br label %8469

; <label>:8469                                    ; preds = %8411, %8165
  %8470 = phi float [ %8466, %8411 ], [ %190, %8165 ]
  %8471 = phi float [ %8467, %8411 ], [ %191, %8165 ]
  %8472 = phi float [ %8468, %8411 ], [ %192, %8165 ]
  %8473 = phi float [ %255, %8411 ], [ %98, %8165 ]
  %8474 = phi float [ %8432, %8411 ], [ %8202, %8165 ]
  %8475 = phi float [ %8433, %8411 ], [ %8203, %8165 ]
  %8476 = phi float [ %8434, %8411 ], [ %8204, %8165 ]
  %8477 = phi float [ %8435, %8411 ], [ %8166, %8165 ]
  %8478 = phi float [ %8436, %8411 ], [ %8167, %8165 ]
  %8479 = phi float [ %8437, %8411 ], [ %8168, %8165 ]
  %8480 = phi float [ %8412, %8411 ], [ 1.000000e+00, %8165 ]
  br i1 %8211, label %9635, label %8481

; <label>:8481                                    ; preds = %8469
  %8482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8483 = extractvalue %dx.types.CBufRet.f32 %8482, 0
  %8484 = extractvalue %dx.types.CBufRet.f32 %8482, 1
  %8485 = extractvalue %dx.types.CBufRet.f32 %8482, 2
  %8486 = extractvalue %dx.types.CBufRet.f32 %8482, 3
  %8487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8488 = extractvalue %dx.types.CBufRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.CBufRet.f32 %8487, 1
  %8490 = extractvalue %dx.types.CBufRet.f32 %8487, 2
  %8491 = extractvalue %dx.types.CBufRet.f32 %8487, 3
  %8492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8493 = extractvalue %dx.types.CBufRet.f32 %8492, 0
  %8494 = extractvalue %dx.types.CBufRet.f32 %8492, 1
  %8495 = extractvalue %dx.types.CBufRet.f32 %8492, 2
  %8496 = extractvalue %dx.types.CBufRet.f32 %8492, 3
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8501 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 3
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8507 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8508 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8509 = fcmp fast olt float %8508, -5.000000e-01
  %8510 = call float @dx.op.dot3.f32(i32 55, float %8470, float %8471, float %8472, float %8470, float %8471, float %8472)  ; Dot3(ax,ay,az,bx,by,bz)
  %8511 = call float @dx.op.unary.f32(i32 25, float %8510)  ; Rsqrt(value)
  %8512 = fmul fast float %8511, %8510
  %8513 = fmul fast float %8511, %8470
  %8514 = fmul fast float %8511, %8471
  %8515 = fmul fast float %8511, %8472
  %8516 = fadd fast float %8512, %8486
  %8517 = call float @dx.op.dot3.f32(i32 55, float %8513, float %8514, float %8515, float %8483, float %8484, float %8485)  ; Dot3(ax,ay,az,bx,by,bz)
  %8518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8519 = extractvalue %dx.types.CBufRet.i32 %8518, 1
  %8520 = and i32 %8519, 1
  %8521 = icmp ne i32 %8520, 0
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 2
  %8524 = fcmp fast ogt float %8523, 0.000000e+00
  %8525 = and i1 %8521, %8524
  br i1 %8525, label %8526, label %8932, !dx.controlflow.hints !127

; <label>:8526                                    ; preds = %8481
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 3
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 2
  %8531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8532 = extractvalue %dx.types.CBufRet.f32 %8531, 2
  %8533 = fsub fast float %8530, %8532
  %8534 = and i32 %8519, 2
  %8535 = extractvalue %dx.types.CBufRet.i32 %8518, 0
  %8536 = call i32 @dx.op.binary.i32(i32 40, i32 %8535, i32 3)  ; UMin(a,b)
  %8537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8538 = extractvalue %dx.types.CBufRet.f32 %8537, 0
  %8539 = extractvalue %dx.types.CBufRet.f32 %8537, 1
  %8540 = extractvalue %dx.types.CBufRet.f32 %8531, 0
  %8541 = extractvalue %dx.types.CBufRet.f32 %8531, 1
  %8542 = fsub fast float %8538, %8540
  %8543 = fsub fast float %8539, %8541
  %8544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8544, 0
  %8546 = fcmp fast ogt float %8545, 0.000000e+00
  %8547 = fsub fast float -0.000000e+00, %8542
  %8548 = fsub fast float -0.000000e+00, %8543
  %8549 = call float @dx.op.dot2.f32(i32 54, float %8513, float %8514, float %8513, float %8514)  ; Dot2(ax,ay,bx,by)
  %8550 = call float @dx.op.dot2.f32(i32 54, float %8513, float %8514, float %8547, float %8548)  ; Dot2(ax,ay,bx,by)
  %8551 = fmul fast float %8550, 2.000000e+00
  %8552 = call float @dx.op.dot2.f32(i32 54, float %8547, float %8548, float %8547, float %8548)  ; Dot2(ax,ay,bx,by)
  %8553 = fmul fast float %8545, %8545
  %8554 = fsub fast float %8552, %8553
  %8555 = fmul fast float %8551, %8551
  %8556 = fmul fast float %8549, 4.000000e+00
  %8557 = fmul fast float %8556, %8554
  %8558 = fsub fast float %8555, %8557
  %8559 = fcmp fast ogt float %8558, 0.000000e+00
  br i1 %8559, label %8560, label %8575

; <label>:8560                                    ; preds = %8526
  %8561 = fcmp fast ogt float %8551, 0.000000e+00
  %8562 = call float @dx.op.unary.f32(i32 24, float %8558)  ; Sqrt(value)
  %8563 = fsub fast float -0.000000e+00, %8562
  %8564 = select i1 %8561, float %8562, float %8563
  %8565 = fadd fast float %8564, %8551
  %8566 = fmul float %8565, -5.000000e-01
  %8567 = fdiv fast float %8566, %8549
  %8568 = call float @dx.op.binary.f32(i32 35, float %8567, float 0.000000e+00)  ; FMax(a,b)
  %8569 = call float @dx.op.binary.f32(i32 36, float %8512, float %8568)  ; FMin(a,b)
  %8570 = fdiv fast float %8554, %8566
  %8571 = call float @dx.op.binary.f32(i32 35, float %8570, float 0.000000e+00)  ; FMax(a,b)
  %8572 = call float @dx.op.binary.f32(i32 36, float %8512, float %8571)  ; FMin(a,b)
  %8573 = call float @dx.op.binary.f32(i32 36, float %8569, float %8572)  ; FMin(a,b)
  %8574 = call float @dx.op.binary.f32(i32 35, float %8569, float %8572)  ; FMax(a,b)
  br label %8575

; <label>:8575                                    ; preds = %8560, %8526
  %8576 = phi float [ %8574, %8560 ], [ -1.000000e+00, %8526 ]
  %8577 = phi float [ %8573, %8560 ], [ -1.000000e+00, %8526 ]
  %8578 = phi i1 [ true, %8560 ], [ false, %8526 ]
  %8579 = and i1 %8546, %8578
  br i1 %8579, label %8580, label %8582

; <label>:8580                                    ; preds = %8575
  %8581 = fcmp fast oeq float %8577, %8576
  br i1 %8581, label %8885, label %8583

; <label>:8582                                    ; preds = %8575
  br i1 %8546, label %8885, label %8583

; <label>:8583                                    ; preds = %8582, %8580
  %8584 = phi float [ %8512, %8582 ], [ %8576, %8580 ]
  %8585 = phi float [ 0.000000e+00, %8582 ], [ %8577, %8580 ]
  %8586 = icmp ne i32 %8534, 0
  %8587 = fmul fast float %8584, %8515
  %8588 = fadd fast float %8587, %8528
  %8589 = fmul fast float %8588, %8584
  %8590 = select i1 %8586, float 0.000000e+00, float %8589
  %8591 = fcmp fast oeq float %8515, 0.000000e+00
  %8592 = fdiv fast float %8533, %8515
  %8593 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8592)  ; FMax(a,b)
  %8594 = select i1 %8591, float %8584, float %8593
  %8595 = call float @dx.op.binary.f32(i32 36, float %8584, float %8594)  ; FMin(a,b)
  %8596 = fcmp fast ogt float %8515, 0.000000e+00
  %8597 = fcmp fast olt float %8533, 0.000000e+00
  br i1 %8596, label %8598, label %8655

; <label>:8598                                    ; preds = %8583
  %8599 = icmp eq i32 %8534, 0
  br i1 %8597, label %8600, label %8644

; <label>:8600                                    ; preds = %8598
  %8601 = select i1 %8599, float %8584, float 0.000000e+00
  %8602 = fsub fast float -0.000000e+00, %8601
  %8603 = call float @dx.op.unary.f32(i32 6, float %8602)  ; FAbs(value)
  %8604 = fmul fast float %8601, %8515
  %8605 = fadd fast float %8604, %8528
  %8606 = fmul fast float %8603, %8605
  %8607 = fsub fast float %8590, %8606
  %8608 = fsub fast float %8584, %8603
  %8609 = select i1 %8599, float %8608, float 0.000000e+00
  %8610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8611 = extractvalue %dx.types.CBufRet.f32 %8610, 0
  %8612 = extractvalue %dx.types.CBufRet.f32 %8610, 1
  %8613 = extractvalue %dx.types.CBufRet.f32 %8610, 2
  %8614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8615 = extractvalue %dx.types.CBufRet.f32 %8614, 0
  %8616 = extractvalue %dx.types.CBufRet.f32 %8614, 1
  %8617 = extractvalue %dx.types.CBufRet.f32 %8614, 2
  %8618 = extractvalue %dx.types.CBufRet.f32 %8614, 3
  %8619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8620 = extractvalue %dx.types.CBufRet.f32 %8619, 3
  %8621 = call float @dx.op.binary.f32(i32 36, float %8607, float %8620)  ; FMin(a,b)
  %8622 = fmul fast float %8618, %8609
  %8623 = call float @dx.op.unary.f32(i32 7, float %8622)  ; Saturate(value)
  %8624 = fsub fast float %8615, %8611
  %8625 = fsub fast float %8616, %8612
  %8626 = fsub fast float %8617, %8613
  %8627 = fmul fast float %8623, %8624
  %8628 = fmul fast float %8623, %8625
  %8629 = fmul fast float %8623, %8626
  %8630 = fadd fast float %8627, %8611
  %8631 = fadd fast float %8628, %8612
  %8632 = fadd fast float %8629, %8613
  %8633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8634 = extractvalue %dx.types.CBufRet.f32 %8633, 0
  %8635 = extractvalue %dx.types.CBufRet.f32 %8633, 1
  %8636 = fadd fast float %8635, %8634
  %8637 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8638 = extractvalue %dx.types.CBufRet.f32 %8633, 2
  %8639 = extractvalue %dx.types.CBufRet.f32 %8633, 3
  %8640 = fadd fast float %8639, %8638
  %8641 = call float @dx.op.unary.f32(i32 7, float %8640)  ; Saturate(value)
  %8642 = fmul fast float %8637, %8621
  %8643 = fmul fast float %8642, %8641
  br label %8885

; <label>:8644                                    ; preds = %8598
  br i1 %8599, label %8645, label %8666

; <label>:8645                                    ; preds = %8644
  %8646 = call float @dx.op.binary.f32(i32 36, float %8595, float %8585)  ; FMin(a,b)
  %8647 = fsub fast float %8595, %8646
  %8648 = fsub fast float %8647, %8584
  %8649 = call float @dx.op.unary.f32(i32 6, float %8648)  ; FAbs(value)
  %8650 = fadd fast float %8647, %8584
  %8651 = fmul fast float %8650, %8515
  %8652 = fadd fast float %8651, %8528
  %8653 = fmul fast float %8652, %8649
  %8654 = fsub fast float %8590, %8653
  br label %8666

; <label>:8655                                    ; preds = %8583
  br i1 %8597, label %8656, label %8666

; <label>:8656                                    ; preds = %8655
  %8657 = call float @dx.op.binary.f32(i32 35, float %8585, float %8595)  ; FMax(a,b)
  %8658 = icmp eq i32 %8534, 0
  %8659 = select i1 %8658, float %8595, float 0.000000e+00
  %8660 = fsub fast float -0.000000e+00, %8659
  %8661 = call float @dx.op.unary.f32(i32 6, float %8660)  ; FAbs(value)
  %8662 = fmul fast float %8659, %8515
  %8663 = fadd fast float %8662, %8528
  %8664 = fmul fast float %8661, %8663
  %8665 = fsub fast float %8590, %8664
  br label %8666

; <label>:8666                                    ; preds = %8656, %8655, %8645, %8644
  %8667 = phi float [ %8585, %8644 ], [ %8585, %8645 ], [ %8657, %8656 ], [ %8585, %8655 ]
  %8668 = phi float [ 0.000000e+00, %8644 ], [ %8649, %8645 ], [ %8661, %8656 ], [ 0.000000e+00, %8655 ]
  %8669 = phi float [ %8590, %8644 ], [ %8654, %8645 ], [ %8665, %8656 ], [ %8590, %8655 ]
  %8670 = phi float [ %8595, %8644 ], [ %8595, %8645 ], [ %8584, %8656 ], [ %8584, %8655 ]
  %8671 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %8671, align 4, !tbaa !116, !noalias !128
  %8672 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %8672, align 4, !tbaa !116, !noalias !128
  %8673 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %8673, align 4, !tbaa !116, !noalias !128
  %8674 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %8674, align 4, !tbaa !116, !noalias !128
  %8675 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %8675, align 4, !tbaa !116, !noalias !128
  %8676 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %8676, align 4, !tbaa !116, !noalias !128
  %8677 = icmp sgt i32 %8536, 0
  br i1 %8677, label %8678, label %8739

; <label>:8678                                    ; preds = %8666
  br label %8679

; <label>:8679                                    ; preds = %8728, %8678
  %8680 = phi i32 [ %8729, %8728 ], [ 0, %8678 ]
  %8681 = phi i32 [ %8730, %8728 ], [ 0, %8678 ]
  %8682 = add nuw i32 %8681, 171
  %8683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %8682)  ; CBufferLoadLegacy(handle,regIndex)
  %8684 = extractvalue %dx.types.CBufRet.f32 %8683, 0
  %8685 = extractvalue %dx.types.CBufRet.f32 %8683, 1
  %8686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8687 = extractvalue %dx.types.CBufRet.f32 %8686, 0
  %8688 = extractvalue %dx.types.CBufRet.f32 %8686, 1
  %8689 = fsub fast float %8684, %8687
  %8690 = fsub fast float %8685, %8688
  %8691 = extractvalue %dx.types.CBufRet.f32 %8683, 2
  %8692 = fsub fast float -0.000000e+00, %8689
  %8693 = fsub fast float -0.000000e+00, %8690
  %8694 = call float @dx.op.dot2.f32(i32 54, float %8513, float %8514, float %8692, float %8693)  ; Dot2(ax,ay,bx,by)
  %8695 = fmul fast float %8694, 2.000000e+00
  %8696 = call float @dx.op.dot2.f32(i32 54, float %8692, float %8693, float %8692, float %8693)  ; Dot2(ax,ay,bx,by)
  %8697 = fmul fast float %8691, %8691
  %8698 = fsub fast float %8696, %8697
  %8699 = fmul fast float %8695, %8695
  %8700 = fmul fast float %8556, %8698
  %8701 = fsub fast float %8699, %8700
  %8702 = fcmp fast ogt float %8701, 0.000000e+00
  br i1 %8702, label %8703, label %8718

; <label>:8703                                    ; preds = %8679
  %8704 = fcmp fast ogt float %8695, 0.000000e+00
  %8705 = call float @dx.op.unary.f32(i32 24, float %8701)  ; Sqrt(value)
  %8706 = fsub fast float -0.000000e+00, %8705
  %8707 = select i1 %8704, float %8705, float %8706
  %8708 = fadd fast float %8707, %8695
  %8709 = fmul float %8708, -5.000000e-01
  %8710 = fdiv fast float %8709, %8549
  %8711 = call float @dx.op.binary.f32(i32 35, float %8710, float 0.000000e+00)  ; FMax(a,b)
  %8712 = call float @dx.op.binary.f32(i32 36, float %8584, float %8711)  ; FMin(a,b)
  %8713 = fdiv fast float %8698, %8709
  %8714 = call float @dx.op.binary.f32(i32 35, float %8713, float 0.000000e+00)  ; FMax(a,b)
  %8715 = call float @dx.op.binary.f32(i32 36, float %8584, float %8714)  ; FMin(a,b)
  %8716 = call float @dx.op.binary.f32(i32 36, float %8712, float %8715)  ; FMin(a,b)
  %8717 = call float @dx.op.binary.f32(i32 35, float %8712, float %8715)  ; FMax(a,b)
  br label %8718

; <label>:8718                                    ; preds = %8703, %8679
  %8719 = phi float [ %8717, %8703 ], [ -1.000000e+00, %8679 ]
  %8720 = phi float [ %8716, %8703 ], [ -1.000000e+00, %8679 ]
  %8721 = phi i1 [ true, %8703 ], [ false, %8679 ]
  br i1 %8721, label %8722, label %8728

; <label>:8722                                    ; preds = %8718
  %8723 = call float @dx.op.binary.f32(i32 35, float %8667, float %8720)  ; FMax(a,b)
  %8724 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8681
  store float %8723, float* %8724, align 4, !tbaa !116, !noalias !128
  %8725 = call float @dx.op.binary.f32(i32 35, float %8667, float %8719)  ; FMax(a,b)
  %8726 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8681
  store float %8725, float* %8726, align 4, !tbaa !116, !noalias !128
  %8727 = add nsw i32 %8680, 1
  br label %8728

; <label>:8728                                    ; preds = %8722, %8718
  %8729 = phi i32 [ %8727, %8722 ], [ %8680, %8718 ]
  %8730 = add nuw nsw i32 %8681, 1
  %8731 = icmp eq i32 %8730, %8536
  br i1 %8731, label %8732, label %8679

; <label>:8732                                    ; preds = %8728
  %8733 = load float, float* %8673, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %8734 = load float, float* %8672, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %8735 = load float, float* %8671, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  %8736 = load float, float* %8676, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %8737 = load float, float* %8675, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  %8738 = load float, float* %8674, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  br label %8739

; <label>:8739                                    ; preds = %8732, %8666
  %8740 = phi float [ -1.000000e+00, %8666 ], [ %8738, %8732 ]
  %8741 = phi float [ -1.000000e+00, %8666 ], [ %8737, %8732 ]
  %8742 = phi float [ -1.000000e+00, %8666 ], [ %8736, %8732 ]
  %8743 = phi float [ -1.000000e+00, %8666 ], [ %8735, %8732 ]
  %8744 = phi float [ -1.000000e+00, %8666 ], [ %8734, %8732 ]
  %8745 = phi float [ -1.000000e+00, %8666 ], [ %8733, %8732 ]
  %8746 = phi i32 [ 0, %8666 ], [ %8729, %8732 ]
  %8747 = call float @dx.op.binary.f32(i32 36, float %8744, float %8745)  ; FMin(a,b)
  %8748 = call float @dx.op.binary.f32(i32 36, float %8743, float %8747)  ; FMin(a,b)
  %8749 = call float @dx.op.binary.f32(i32 35, float %8743, float %8744)  ; FMax(a,b)
  %8750 = call float @dx.op.binary.f32(i32 36, float %8749, float %8745)  ; FMin(a,b)
  %8751 = call float @dx.op.binary.f32(i32 36, float %8743, float %8744)  ; FMin(a,b)
  %8752 = call float @dx.op.binary.f32(i32 35, float %8751, float %8750)  ; FMax(a,b)
  %8753 = call float @dx.op.binary.f32(i32 35, float %8744, float %8745)  ; FMax(a,b)
  %8754 = call float @dx.op.binary.f32(i32 35, float %8743, float %8753)  ; FMax(a,b)
  store float %8748, float* %8671, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %8752, float* %8672, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %8754, float* %8673, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %8755 = call float @dx.op.binary.f32(i32 36, float %8741, float %8742)  ; FMin(a,b)
  %8756 = call float @dx.op.binary.f32(i32 36, float %8740, float %8755)  ; FMin(a,b)
  %8757 = call float @dx.op.binary.f32(i32 35, float %8740, float %8741)  ; FMax(a,b)
  %8758 = call float @dx.op.binary.f32(i32 36, float %8757, float %8742)  ; FMin(a,b)
  %8759 = call float @dx.op.binary.f32(i32 36, float %8740, float %8741)  ; FMin(a,b)
  %8760 = call float @dx.op.binary.f32(i32 35, float %8759, float %8758)  ; FMax(a,b)
  %8761 = call float @dx.op.binary.f32(i32 35, float %8741, float %8742)  ; FMax(a,b)
  %8762 = call float @dx.op.binary.f32(i32 35, float %8740, float %8761)  ; FMax(a,b)
  store float %8756, float* %8674, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  store float %8760, float* %8675, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  store float %8762, float* %8676, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %8763 = sub nsw i32 3, %8746
  %8764 = icmp sgt i32 %8763, 2
  br i1 %8764, label %8765, label %8803

; <label>:8765                                    ; preds = %8739
  %8766 = icmp eq i32 %8534, 0
  %8767 = fsub fast float %8584, %8668
  %8768 = select i1 %8766, float %8767, float %8668
  %8769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8770 = extractvalue %dx.types.CBufRet.f32 %8769, 0
  %8771 = extractvalue %dx.types.CBufRet.f32 %8769, 1
  %8772 = extractvalue %dx.types.CBufRet.f32 %8769, 2
  %8773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8774 = extractvalue %dx.types.CBufRet.f32 %8773, 0
  %8775 = extractvalue %dx.types.CBufRet.f32 %8773, 1
  %8776 = extractvalue %dx.types.CBufRet.f32 %8773, 2
  %8777 = extractvalue %dx.types.CBufRet.f32 %8773, 3
  %8778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8779 = extractvalue %dx.types.CBufRet.f32 %8778, 3
  %8780 = call float @dx.op.binary.f32(i32 36, float %8669, float %8779)  ; FMin(a,b)
  %8781 = fmul fast float %8777, %8768
  %8782 = call float @dx.op.unary.f32(i32 7, float %8781)  ; Saturate(value)
  %8783 = fsub fast float %8774, %8770
  %8784 = fsub fast float %8775, %8771
  %8785 = fsub fast float %8776, %8772
  %8786 = fmul fast float %8782, %8783
  %8787 = fmul fast float %8782, %8784
  %8788 = fmul fast float %8782, %8785
  %8789 = fadd fast float %8786, %8770
  %8790 = fadd fast float %8787, %8771
  %8791 = fadd fast float %8788, %8772
  %8792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8793 = extractvalue %dx.types.CBufRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.CBufRet.f32 %8792, 1
  %8795 = fadd fast float %8794, %8793
  %8796 = call float @dx.op.unary.f32(i32 7, float %8795)  ; Saturate(value)
  %8797 = extractvalue %dx.types.CBufRet.f32 %8792, 2
  %8798 = extractvalue %dx.types.CBufRet.f32 %8792, 3
  %8799 = fadd fast float %8798, %8797
  %8800 = call float @dx.op.unary.f32(i32 7, float %8799)  ; Saturate(value)
  %8801 = fmul fast float %8796, %8780
  %8802 = fmul fast float %8801, %8800
  br label %8885

; <label>:8803                                    ; preds = %8739
  %8804 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8763
  %8805 = load float, float* %8804, align 4, !tbaa !116, !noalias !128
  %8806 = fcmp fast olt float %8805, %8670
  %8807 = icmp sgt i32 %8746, 0
  %8808 = and i1 %8807, %8806
  br i1 %8808, label %8809, label %8846

; <label>:8809                                    ; preds = %8803
  br label %8810

; <label>:8810                                    ; preds = %8839, %8809
  %8811 = phi float [ %8840, %8839 ], [ %8668, %8809 ]
  %8812 = phi float [ %8841, %8839 ], [ %8669, %8809 ]
  %8813 = phi float [ %8821, %8839 ], [ %8805, %8809 ]
  %8814 = phi i32 [ %8818, %8839 ], [ %8763, %8809 ]
  %8815 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %8814
  %8816 = load float, float* %8815, align 4, !tbaa !116, !noalias !128
  %8817 = icmp slt i32 %8814, 2
  %8818 = add nsw i32 %8814, 1
  %8819 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %8818
  %8820 = load float, float* %8819, align 4, !tbaa !116, !noalias !128
  %8821 = select i1 %8817, float %8820, float %8584
  %8822 = call float @dx.op.binary.f32(i32 36, float %8821, float %8816)  ; FMin(a,b)
  %8823 = call float @dx.op.binary.f32(i32 36, float %8670, float %8822)  ; FMin(a,b)
  %8824 = icmp eq i32 %8534, 0
  %8825 = fadd fast float %8823, %8813
  %8826 = fmul fast float %8825, %8515
  %8827 = fadd fast float %8826, %8528
  br i1 %8824, label %8833, label %8828

; <label>:8828                                    ; preds = %8810
  %8829 = fsub fast float %8823, %8813
  %8830 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8829)  ; FMax(a,b)
  %8831 = fmul fast float %8830, %8827
  %8832 = fadd fast float %8831, %8812
  br label %8839

; <label>:8833                                    ; preds = %8810
  %8834 = fsub fast float %8813, %8823
  %8835 = call float @dx.op.unary.f32(i32 6, float %8834)  ; FAbs(value)
  %8836 = fadd fast float %8835, %8811
  %8837 = fmul fast float %8835, %8827
  %8838 = fsub fast float %8812, %8837
  br label %8839

; <label>:8839                                    ; preds = %8833, %8828
  %8840 = phi float [ %8830, %8828 ], [ %8836, %8833 ]
  %8841 = phi float [ %8832, %8828 ], [ %8838, %8833 ]
  %8842 = fcmp fast olt float %8821, %8670
  %8843 = icmp slt i32 %8818, 3
  %8844 = and i1 %8843, %8842
  br i1 %8844, label %8810, label %8845

; <label>:8845                                    ; preds = %8839
  br label %8846

; <label>:8846                                    ; preds = %8845, %8803
  %8847 = phi float [ %8668, %8803 ], [ %8840, %8845 ]
  %8848 = phi float [ %8669, %8803 ], [ %8841, %8845 ]
  %8849 = fsub fast float %8584, %8847
  %8850 = select i1 %8586, float %8847, float %8849
  %8851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8852 = extractvalue %dx.types.CBufRet.f32 %8851, 0
  %8853 = extractvalue %dx.types.CBufRet.f32 %8851, 1
  %8854 = extractvalue %dx.types.CBufRet.f32 %8851, 2
  %8855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8856 = extractvalue %dx.types.CBufRet.f32 %8855, 0
  %8857 = extractvalue %dx.types.CBufRet.f32 %8855, 1
  %8858 = extractvalue %dx.types.CBufRet.f32 %8855, 2
  %8859 = extractvalue %dx.types.CBufRet.f32 %8855, 3
  %8860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8861 = extractvalue %dx.types.CBufRet.f32 %8860, 3
  %8862 = call float @dx.op.binary.f32(i32 36, float %8848, float %8861)  ; FMin(a,b)
  %8863 = fmul fast float %8859, %8850
  %8864 = call float @dx.op.unary.f32(i32 7, float %8863)  ; Saturate(value)
  %8865 = fsub fast float %8856, %8852
  %8866 = fsub fast float %8857, %8853
  %8867 = fsub fast float %8858, %8854
  %8868 = fmul fast float %8864, %8865
  %8869 = fmul fast float %8864, %8866
  %8870 = fmul fast float %8864, %8867
  %8871 = fadd fast float %8868, %8852
  %8872 = fadd fast float %8869, %8853
  %8873 = fadd fast float %8870, %8854
  %8874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8875 = extractvalue %dx.types.CBufRet.f32 %8874, 0
  %8876 = extractvalue %dx.types.CBufRet.f32 %8874, 1
  %8877 = fadd fast float %8876, %8875
  %8878 = call float @dx.op.unary.f32(i32 7, float %8877)  ; Saturate(value)
  %8879 = extractvalue %dx.types.CBufRet.f32 %8874, 2
  %8880 = extractvalue %dx.types.CBufRet.f32 %8874, 3
  %8881 = fadd fast float %8880, %8879
  %8882 = call float @dx.op.unary.f32(i32 7, float %8881)  ; Saturate(value)
  %8883 = fmul fast float %8878, %8862
  %8884 = fmul fast float %8883, %8882
  br label %8885

; <label>:8885                                    ; preds = %8846, %8765, %8600, %8582, %8580
  %8886 = phi float [ %8609, %8600 ], [ %8768, %8765 ], [ %8850, %8846 ], [ 0.000000e+00, %8580 ], [ 0.000000e+00, %8582 ]
  %8887 = phi float [ %8643, %8600 ], [ %8802, %8765 ], [ %8884, %8846 ], [ 0.000000e+00, %8580 ], [ 0.000000e+00, %8582 ]
  %8888 = phi float [ %8630, %8600 ], [ %8789, %8765 ], [ %8871, %8846 ], [ 0.000000e+00, %8580 ], [ 0.000000e+00, %8582 ]
  %8889 = phi float [ %8631, %8600 ], [ %8790, %8765 ], [ %8872, %8846 ], [ 0.000000e+00, %8580 ], [ 0.000000e+00, %8582 ]
  %8890 = phi float [ %8632, %8600 ], [ %8791, %8765 ], [ %8873, %8846 ], [ 0.000000e+00, %8580 ], [ 0.000000e+00, %8582 ]
  %8891 = fmul fast float %8523, %8887
  %8892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8893 = extractvalue %dx.types.CBufRet.f32 %8892, 2
  %8894 = fsub fast float %8530, %8893
  %8895 = fcmp fast olt float %8891, -2.000000e+01
  %8896 = call float @dx.op.unary.f32(i32 21, float %8891)  ; Exp(value)
  %8897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8898 = extractvalue %dx.types.CBufRet.f32 %8897, 2
  %8899 = extractvalue %dx.types.CBufRet.f32 %8897, 3
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 2
  %8902 = fmul fast float %8899, %8894
  %8903 = call float @dx.op.unary.f32(i32 7, float %8902)  ; Saturate(value)
  %8904 = fsub fast float 1.000000e+00, %8903
  %8905 = fmul fast float %8515, 5.000000e-01
  %8906 = fadd fast float %8905, 5.000000e-01
  %8907 = call float @dx.op.unary.f32(i32 7, float %8906)  ; Saturate(value)
  %8908 = fsub fast float 1.000000e+00, %8907
  %8909 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8904)  ; FMax(a,b)
  %8910 = fdiv fast float %8908, %8909
  %8911 = fsub fast float %8894, %8472
  %8912 = call float @dx.op.unary.f32(i32 6, float %8911)  ; FAbs(value)
  %8913 = fmul fast float %8912, %8898
  %8914 = call float @dx.op.unary.f32(i32 7, float %8910)  ; Saturate(value)
  %8915 = fsub fast float 1.000000e+00, %8913
  %8916 = fmul fast float %8915, %8914
  %8917 = fadd fast float %8916, %8913
  %8918 = fmul fast float %8901, %8894
  %8919 = call float @dx.op.unary.f32(i32 7, float %8918)  ; Saturate(value)
  %8920 = fsub fast float 1.000000e+00, %8917
  %8921 = fmul fast float %8920, %8919
  %8922 = fadd fast float %8921, %8917
  %8923 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8924 = fadd fast float %8896, -1.000000e+00
  %8925 = select i1 %8895, float -1.000000e+00, float %8924
  %8926 = fmul fast float %8923, %8925
  %8927 = fadd fast float %8926, 1.000000e+00
  %8928 = fsub fast float -0.000000e+00, %8926
  %8929 = fmul fast float %8888, %8928
  %8930 = fmul fast float %8889, %8928
  %8931 = fmul fast float %8890, %8928
  br label %8932

; <label>:8932                                    ; preds = %8885, %8481
  %8933 = phi float [ %8886, %8885 ], [ 0.000000e+00, %8481 ]
  %8934 = phi float [ %8927, %8885 ], [ 1.000000e+00, %8481 ]
  %8935 = phi float [ %8929, %8885 ], [ 0.000000e+00, %8481 ]
  %8936 = phi float [ %8930, %8885 ], [ 0.000000e+00, %8481 ]
  %8937 = phi float [ %8931, %8885 ], [ 0.000000e+00, %8481 ]
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 1
  %8940 = fsub fast float 1.000000e+00, %8934
  %8941 = fmul fast float %8940, %8516
  %8942 = fmul fast float %8941, %8939
  %8943 = fsub fast float %8516, %8942
  br i1 %8509, label %8944, label %8973, !dx.controlflow.hints !164

; <label>:8944                                    ; preds = %8932
  %8945 = fmul fast float %8517, %8506
  %8946 = fadd fast float %8945, %8507
  %8947 = call float @dx.op.unary.f32(i32 7, float %8946)  ; Saturate(value)
  %8948 = fmul fast float %8488, %8943
  %8949 = fsub fast float -0.000000e+00, %8948
  %8950 = fmul fast float %8489, %8943
  %8951 = fsub fast float -0.000000e+00, %8950
  %8952 = call float @dx.op.unary.f32(i32 21, float %8949)  ; Exp(value)
  %8953 = call float @dx.op.unary.f32(i32 21, float %8951)  ; Exp(value)
  %8954 = call float @dx.op.binary.f32(i32 35, float %8496, float %8952)  ; FMax(a,b)
  %8955 = call float @dx.op.binary.f32(i32 35, float %8496, float %8953)  ; FMax(a,b)
  %8956 = fsub fast float %8955, %8954
  %8957 = fmul fast float %8956, %8947
  %8958 = fadd fast float %8957, %8954
  %8959 = call float @dx.op.unary.f32(i32 7, float %8958)  ; Saturate(value)
  %8960 = fsub fast float %8493, %8498
  %8961 = fsub fast float %8494, %8499
  %8962 = fsub fast float %8495, %8500
  %8963 = fmul fast float %8947, %8960
  %8964 = fmul fast float %8947, %8961
  %8965 = fmul fast float %8947, %8962
  %8966 = fadd fast float %8963, %8498
  %8967 = fadd fast float %8964, %8499
  %8968 = fadd fast float %8965, %8500
  %8969 = fsub fast float 1.000000e+00, %8959
  %8970 = fmul fast float %8969, %8966
  %8971 = fmul fast float %8969, %8967
  %8972 = fmul fast float %8969, %8968
  br label %9032

; <label>:8973                                    ; preds = %8932
  %8974 = fmul fast float %8943, %8505
  %8975 = call float @dx.op.unary.f32(i32 7, float %8974)  ; Saturate(value)
  %8976 = fsub fast float 2.000000e+00, %8975
  %8977 = fmul fast float %8975, 9.921875e-01
  %8978 = fmul fast float %8977, %8976
  %8979 = fadd fast float %8978, 3.906250e-03
  %8980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %8979, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8981 = extractvalue %dx.types.ResRet.f32 %8980, 0
  %8982 = fsub fast float %8975, %8981
  %8983 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8982)  ; FMax(a,b)
  %8984 = fmul fast float %8491, %8472
  %8985 = call float @dx.op.unary.f32(i32 6, float %8984)  ; FAbs(value)
  %8986 = fcmp fast ogt float %8985, 0x3EB0C6F7A0000000
  br i1 %8986, label %8987, label %8993, !dx.controlflow.hints !165

; <label>:8987                                    ; preds = %8973
  %8988 = fmul fast float %8984, 0xBFF7154760000000
  %8989 = call float @dx.op.unary.f32(i32 21, float %8988)  ; Exp(value)
  %8990 = fsub fast float 1.000000e+00, %8989
  %8991 = fdiv fast float %8990, %8984
  %8992 = fmul fast float %8991, %8501
  br label %8993

; <label>:8993                                    ; preds = %8987, %8973
  %8994 = phi float [ %8992, %8987 ], [ %8501, %8973 ]
  %8995 = fadd fast float %8994, %8503
  %8996 = fmul fast float %8995, %8983
  %8997 = fmul fast float %8488, %8996
  %8998 = fsub fast float -0.000000e+00, %8997
  %8999 = fmul fast float %8489, %8996
  %9000 = fsub fast float -0.000000e+00, %8999
  %9001 = fmul fast float %8490, %8996
  %9002 = fsub fast float -0.000000e+00, %9001
  %9003 = call float @dx.op.unary.f32(i32 21, float %8998)  ; Exp(value)
  %9004 = call float @dx.op.unary.f32(i32 21, float %9000)  ; Exp(value)
  %9005 = call float @dx.op.unary.f32(i32 21, float %9002)  ; Exp(value)
  %9006 = fmul fast float %8517, %8517
  %9007 = fadd fast float %9006, 1.000000e+00
  %9008 = fmul fast float %9007, 0x3FAE8EC8A0000000
  %9009 = fmul fast float %9008, %8498
  %9010 = fmul fast float %9008, %8499
  %9011 = fmul fast float %9008, %8500
  %9012 = fmul fast float %8517, %8496
  %9013 = fsub fast float 1.000000e+00, %9012
  %9014 = fmul fast float %8496, %8496
  %9015 = fsub fast float 1.000000e+00, %9014
  %9016 = fmul fast float %9015, 0x3FB45F3060000000
  %9017 = fmul fast float %9013, %9013
  %9018 = fdiv fast float 1.000000e+00, %9017
  %9019 = fmul fast float %9016, %9018
  %9020 = fmul fast float %9019, %8493
  %9021 = fmul fast float %9019, %8494
  %9022 = fmul fast float %9019, %8495
  %9023 = fadd fast float %9020, %9009
  %9024 = fadd fast float %9021, %9010
  %9025 = fadd fast float %9022, %9011
  %9026 = fsub fast float 1.000000e+00, %9003
  %9027 = fsub fast float 1.000000e+00, %9004
  %9028 = fsub fast float 1.000000e+00, %9005
  %9029 = fmul fast float %9023, %9026
  %9030 = fmul fast float %9024, %9027
  %9031 = fmul fast float %9025, %9028
  br label %9032

; <label>:9032                                    ; preds = %8993, %8944
  %9033 = phi float [ %8970, %8944 ], [ %9029, %8993 ]
  %9034 = phi float [ %8971, %8944 ], [ %9030, %8993 ]
  %9035 = phi float [ %8972, %8944 ], [ %9031, %8993 ]
  %9036 = phi float [ %8959, %8944 ], [ %9003, %8993 ]
  %9037 = phi float [ %8959, %8944 ], [ %9004, %8993 ]
  %9038 = phi float [ %8959, %8944 ], [ %9005, %8993 ]
  br i1 %8525, label %9039, label %9237, !dx.controlflow.hints !166

; <label>:9039                                    ; preds = %9032
  %9040 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %9041 = fmul fast float %9040, %8940
  %9042 = fsub fast float %8935, %9033
  %9043 = fsub fast float %8936, %9034
  %9044 = fsub fast float %8937, %9035
  %9045 = fmul fast float %9041, %9042
  %9046 = fmul fast float %9041, %9043
  %9047 = fmul fast float %9041, %9044
  %9048 = fadd fast float %9045, %9033
  %9049 = fadd fast float %9046, %9034
  %9050 = fadd fast float %9047, %9035
  %9051 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9036)  ; FMax(a,b)
  %9052 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9037)  ; FMax(a,b)
  %9053 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9038)  ; FMax(a,b)
  %9054 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8934)  ; FMax(a,b)
  %9055 = call float @dx.op.binary.f32(i32 35, float %8933, float %8943)  ; FMax(a,b)
  %9056 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9055)  ; FMax(a,b)
  %9057 = fdiv fast float %8933, %9056
  %9058 = call float @dx.op.unary.f32(i32 7, float %9057)  ; Saturate(value)
  %9059 = fdiv fast float %8943, %9056
  %9060 = call float @dx.op.unary.f32(i32 7, float %9059)  ; Saturate(value)
  %9061 = fcmp fast une float %9054, 1.000000e+00
  br i1 %9061, label %9062, label %9075, !dx.controlflow.hints !167

; <label>:9062                                    ; preds = %9039
  %9063 = call float @dx.op.unary.f32(i32 23, float %9054)  ; Log(value)
  %9064 = fmul fast float %9063, 0x3FE62E4300000000
  %9065 = fmul fast float %8935, %9064
  %9066 = fsub fast float -0.000000e+00, %9065
  %9067 = fmul fast float %8936, %9064
  %9068 = fsub fast float -0.000000e+00, %9067
  %9069 = fmul fast float %8937, %9064
  %9070 = fsub fast float -0.000000e+00, %9069
  %9071 = fsub fast float 1.000000e+00, %9054
  %9072 = fdiv fast float %9066, %9071
  %9073 = fdiv fast float %9068, %9071
  %9074 = fdiv fast float %9070, %9071
  br label %9075

; <label>:9075                                    ; preds = %9062, %9039
  %9076 = phi float [ %9072, %9062 ], [ %8935, %9039 ]
  %9077 = phi float [ %9073, %9062 ], [ %8936, %9039 ]
  %9078 = phi float [ %9074, %9062 ], [ %8937, %9039 ]
  %9079 = phi float [ %9064, %9062 ], [ 0.000000e+00, %9039 ]
  %9080 = fcmp fast une float %9051, 1.000000e+00
  br i1 %9080, label %9081, label %9088, !dx.controlflow.hints !168

; <label>:9081                                    ; preds = %9075
  %9082 = call float @dx.op.unary.f32(i32 23, float %9051)  ; Log(value)
  %9083 = fmul fast float %9082, 0x3FE62E4300000000
  %9084 = fmul fast float %9048, %9083
  %9085 = fsub fast float -0.000000e+00, %9084
  %9086 = fsub fast float 1.000000e+00, %9051
  %9087 = fdiv fast float %9085, %9086
  br label %9088

; <label>:9088                                    ; preds = %9081, %9075
  %9089 = phi float [ %9087, %9081 ], [ %9048, %9075 ]
  %9090 = phi float [ %9083, %9081 ], [ 0.000000e+00, %9075 ]
  %9091 = fcmp fast une float %9052, 1.000000e+00
  br i1 %9091, label %9092, label %9099, !dx.controlflow.hints !168

; <label>:9092                                    ; preds = %9088
  %9093 = call float @dx.op.unary.f32(i32 23, float %9052)  ; Log(value)
  %9094 = fmul fast float %9093, 0x3FE62E4300000000
  %9095 = fmul fast float %9049, %9094
  %9096 = fsub fast float -0.000000e+00, %9095
  %9097 = fsub fast float 1.000000e+00, %9052
  %9098 = fdiv fast float %9096, %9097
  br label %9099

; <label>:9099                                    ; preds = %9092, %9088
  %9100 = phi float [ %9098, %9092 ], [ %9049, %9088 ]
  %9101 = phi float [ %9094, %9092 ], [ 0.000000e+00, %9088 ]
  %9102 = fcmp fast une float %9053, 1.000000e+00
  br i1 %9102, label %9103, label %9110, !dx.controlflow.hints !168

; <label>:9103                                    ; preds = %9099
  %9104 = call float @dx.op.unary.f32(i32 23, float %9053)  ; Log(value)
  %9105 = fmul fast float %9104, 0x3FE62E4300000000
  %9106 = fmul fast float %9050, %9105
  %9107 = fsub fast float -0.000000e+00, %9106
  %9108 = fsub fast float 1.000000e+00, %9053
  %9109 = fdiv fast float %9107, %9108
  br label %9110

; <label>:9110                                    ; preds = %9103, %9099
  %9111 = phi float [ %9109, %9103 ], [ %9050, %9099 ]
  %9112 = phi float [ %9105, %9103 ], [ 0.000000e+00, %9099 ]
  %9113 = fmul fast float %9076, %9060
  %9114 = fmul fast float %9077, %9060
  %9115 = fmul fast float %9078, %9060
  %9116 = fmul fast float %9079, %9060
  %9117 = fmul fast float %9089, %9058
  %9118 = fmul fast float %9100, %9058
  %9119 = fmul fast float %9111, %9058
  %9120 = fmul fast float %9090, %9058
  %9121 = fmul fast float %9101, %9058
  %9122 = fmul fast float %9112, %9058
  %9123 = fadd fast float %9117, %9113
  %9124 = fadd fast float %9118, %9114
  %9125 = fadd fast float %9119, %9115
  %9126 = fadd fast float %9120, %9116
  %9127 = fadd fast float %9121, %9116
  %9128 = fadd fast float %9122, %9116
  %9129 = fcmp fast une float %9126, 0.000000e+00
  br i1 %9129, label %9130, label %9137, !dx.controlflow.hints !169

; <label>:9130                                    ; preds = %9110
  %9131 = fmul fast float %9126, 0x3FF7154760000000
  %9132 = call float @dx.op.unary.f32(i32 21, float %9131)  ; Exp(value)
  %9133 = fsub fast float 1.000000e+00, %9132
  %9134 = fmul fast float %9123, %9133
  %9135 = fsub fast float -0.000000e+00, %9134
  %9136 = fdiv fast float %9135, %9126
  br label %9137

; <label>:9137                                    ; preds = %9130, %9110
  %9138 = phi float [ %9132, %9130 ], [ 1.000000e+00, %9110 ]
  %9139 = phi float [ %9136, %9130 ], [ %9123, %9110 ]
  %9140 = fcmp fast une float %9127, 0.000000e+00
  br i1 %9140, label %9141, label %9148, !dx.controlflow.hints !169

; <label>:9141                                    ; preds = %9137
  %9142 = fmul fast float %9127, 0x3FF7154760000000
  %9143 = call float @dx.op.unary.f32(i32 21, float %9142)  ; Exp(value)
  %9144 = fsub fast float 1.000000e+00, %9143
  %9145 = fmul fast float %9124, %9144
  %9146 = fsub fast float -0.000000e+00, %9145
  %9147 = fdiv fast float %9146, %9127
  br label %9148

; <label>:9148                                    ; preds = %9141, %9137
  %9149 = phi float [ %9143, %9141 ], [ 1.000000e+00, %9137 ]
  %9150 = phi float [ %9147, %9141 ], [ %9124, %9137 ]
  %9151 = fcmp fast une float %9128, 0.000000e+00
  br i1 %9151, label %9152, label %9159, !dx.controlflow.hints !169

; <label>:9152                                    ; preds = %9148
  %9153 = fmul fast float %9128, 0x3FF7154760000000
  %9154 = call float @dx.op.unary.f32(i32 21, float %9153)  ; Exp(value)
  %9155 = fsub fast float 1.000000e+00, %9154
  %9156 = fmul fast float %9125, %9155
  %9157 = fsub fast float -0.000000e+00, %9156
  %9158 = fdiv fast float %9157, %9128
  br label %9159

; <label>:9159                                    ; preds = %9152, %9148
  %9160 = phi float [ %9154, %9152 ], [ 1.000000e+00, %9148 ]
  %9161 = phi float [ %9158, %9152 ], [ %9125, %9148 ]
  %9162 = fcmp fast ogt float %9058, %9060
  br i1 %9162, label %9163, label %9183

; <label>:9163                                    ; preds = %9159
  %9164 = fsub fast float 1.000000e+00, %9060
  %9165 = fmul fast float %9076, %9164
  %9166 = fmul fast float %9077, %9164
  %9167 = fmul fast float %9078, %9164
  %9168 = fmul fast float %9079, %9164
  %9169 = fcmp fast une float %9168, 0.000000e+00
  br i1 %9169, label %9170, label %9221, !dx.controlflow.hints !170

; <label>:9170                                    ; preds = %9163
  %9171 = fmul fast float %9168, 0x3FF7154760000000
  %9172 = call float @dx.op.unary.f32(i32 21, float %9171)  ; Exp(value)
  %9173 = fsub fast float 1.000000e+00, %9172
  %9174 = fmul fast float %9165, %9173
  %9175 = fsub fast float -0.000000e+00, %9174
  %9176 = fmul fast float %9166, %9173
  %9177 = fsub fast float -0.000000e+00, %9176
  %9178 = fmul fast float %9167, %9173
  %9179 = fsub fast float -0.000000e+00, %9178
  %9180 = fdiv fast float %9175, %9168
  %9181 = fdiv fast float %9177, %9168
  %9182 = fdiv fast float %9179, %9168
  br label %9221

; <label>:9183                                    ; preds = %9159
  %9184 = fsub fast float 1.000000e+00, %9058
  %9185 = fmul fast float %9089, %9184
  %9186 = fmul fast float %9100, %9184
  %9187 = fmul fast float %9111, %9184
  %9188 = fmul fast float %9090, %9184
  %9189 = fmul fast float %9101, %9184
  %9190 = fmul fast float %9112, %9184
  %9191 = fcmp fast une float %9188, 0.000000e+00
  br i1 %9191, label %9192, label %9199, !dx.controlflow.hints !169

; <label>:9192                                    ; preds = %9183
  %9193 = fmul fast float %9188, 0x3FF7154760000000
  %9194 = call float @dx.op.unary.f32(i32 21, float %9193)  ; Exp(value)
  %9195 = fsub fast float 1.000000e+00, %9194
  %9196 = fmul fast float %9185, %9195
  %9197 = fsub fast float -0.000000e+00, %9196
  %9198 = fdiv fast float %9197, %9188
  br label %9199

; <label>:9199                                    ; preds = %9192, %9183
  %9200 = phi float [ %9198, %9192 ], [ %9185, %9183 ]
  %9201 = phi float [ %9194, %9192 ], [ 1.000000e+00, %9183 ]
  %9202 = fcmp fast une float %9189, 0.000000e+00
  br i1 %9202, label %9203, label %9210, !dx.controlflow.hints !169

; <label>:9203                                    ; preds = %9199
  %9204 = fmul fast float %9189, 0x3FF7154760000000
  %9205 = call float @dx.op.unary.f32(i32 21, float %9204)  ; Exp(value)
  %9206 = fsub fast float 1.000000e+00, %9205
  %9207 = fmul fast float %9186, %9206
  %9208 = fsub fast float -0.000000e+00, %9207
  %9209 = fdiv fast float %9208, %9189
  br label %9210

; <label>:9210                                    ; preds = %9203, %9199
  %9211 = phi float [ %9209, %9203 ], [ %9186, %9199 ]
  %9212 = phi float [ %9205, %9203 ], [ 1.000000e+00, %9199 ]
  %9213 = fcmp fast une float %9190, 0.000000e+00
  br i1 %9213, label %9214, label %9221, !dx.controlflow.hints !169

; <label>:9214                                    ; preds = %9210
  %9215 = fmul fast float %9190, 0x3FF7154760000000
  %9216 = call float @dx.op.unary.f32(i32 21, float %9215)  ; Exp(value)
  %9217 = fsub fast float 1.000000e+00, %9216
  %9218 = fmul fast float %9187, %9217
  %9219 = fsub fast float -0.000000e+00, %9218
  %9220 = fdiv fast float %9219, %9190
  br label %9221

; <label>:9221                                    ; preds = %9214, %9210, %9170, %9163
  %9222 = phi float [ %9220, %9214 ], [ %9182, %9170 ], [ %9167, %9163 ], [ %9187, %9210 ]
  %9223 = phi float [ %9211, %9214 ], [ %9181, %9170 ], [ %9166, %9163 ], [ %9211, %9210 ]
  %9224 = phi float [ %9200, %9214 ], [ %9180, %9170 ], [ %9165, %9163 ], [ %9200, %9210 ]
  %9225 = phi float [ %9216, %9214 ], [ %9172, %9170 ], [ 1.000000e+00, %9163 ], [ 1.000000e+00, %9210 ]
  %9226 = phi float [ %9212, %9214 ], [ %9172, %9170 ], [ 1.000000e+00, %9163 ], [ %9212, %9210 ]
  %9227 = phi float [ %9201, %9214 ], [ %9172, %9170 ], [ 1.000000e+00, %9163 ], [ %9201, %9210 ]
  %9228 = fmul fast float %9227, %9139
  %9229 = fmul fast float %9226, %9150
  %9230 = fmul fast float %9225, %9161
  %9231 = fadd fast float %9228, %9224
  %9232 = fadd fast float %9229, %9223
  %9233 = fadd fast float %9230, %9222
  %9234 = fmul fast float %9227, %9138
  %9235 = fmul fast float %9226, %9149
  %9236 = fmul fast float %9225, %9160
  br label %9237

; <label>:9237                                    ; preds = %9221, %9032
  %9238 = phi float [ %9236, %9221 ], [ %9038, %9032 ]
  %9239 = phi float [ %9235, %9221 ], [ %9037, %9032 ]
  %9240 = phi float [ %9234, %9221 ], [ %9036, %9032 ]
  %9241 = phi float [ %9233, %9221 ], [ %9035, %9032 ]
  %9242 = phi float [ %9232, %9221 ], [ %9034, %9032 ]
  %9243 = phi float [ %9231, %9221 ], [ %9033, %9032 ]
  %9244 = fmul fast float %9243, %8197
  %9245 = fmul fast float %9242, %8198
  %9246 = fmul fast float %9241, %8199
  %9247 = fmul fast float %9240, %8480
  %9248 = call float @dx.op.dot3.f32(i32 55, float %9240, float %9239, float %9238, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9249 = call float @dx.op.dot3.f32(i32 55, float %9244, float %9245, float %9246, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9250 = select i1 %294, float %9248, float %9240
  %9251 = select i1 %294, float %9248, float %9239
  %9252 = select i1 %294, float 1.000000e+00, float %9238
  %9253 = select i1 %294, float %9249, float %9244
  %9254 = select i1 %294, float 0.000000e+00, float %9245
  %9255 = select i1 %294, float 0.000000e+00, float %9246
  %9256 = fmul fast float %9250, %8474
  %9257 = fmul fast float %9251, %8475
  %9258 = fmul fast float %9252, %8476
  %9259 = fadd fast float %9256, %9253
  %9260 = fadd fast float %9257, %9254
  %9261 = fadd fast float %9255, %9258
  %9262 = fmul fast float %9250, %8477
  %9263 = fmul fast float %9251, %8478
  %9264 = fmul fast float %9252, %8479
  %9265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9266 = extractvalue %dx.types.CBufRet.i32 %9265, 0
  %9267 = icmp eq i32 %9266, 0
  br i1 %9267, label %9635, label %9268, !dx.controlflow.hints !171

; <label>:9268                                    ; preds = %9237
  %9269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9270 = extractvalue %dx.types.CBufRet.f32 %9269, 2
  %9271 = extractvalue %dx.types.CBufRet.f32 %9269, 3
  %9272 = fmul fast float %9270, %111
  %9273 = fmul fast float %9271, %112
  %9274 = fmul fast float %9272, 2.000000e+00
  %9275 = fmul fast float %9273, 2.000000e+00
  %9276 = fsub fast float 1.000000e+00, %9274
  %9277 = fsub fast float 1.000000e+00, %9275
  %9278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9279 = extractvalue %dx.types.CBufRet.f32 %9278, 0
  %9280 = extractvalue %dx.types.CBufRet.f32 %9278, 1
  %9281 = extractvalue %dx.types.CBufRet.f32 %9278, 2
  %9282 = fmul fast float %9276, %9279
  %9283 = fmul fast float %9276, %9280
  %9284 = fmul fast float %9276, %9281
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 0
  %9287 = extractvalue %dx.types.CBufRet.f32 %9285, 1
  %9288 = extractvalue %dx.types.CBufRet.f32 %9285, 2
  %9289 = fmul fast float %9277, %9286
  %9290 = fmul fast float %9277, %9287
  %9291 = fmul fast float %9277, %9288
  %9292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9293 = extractvalue %dx.types.CBufRet.f32 %9292, 0
  %9294 = extractvalue %dx.types.CBufRet.f32 %9292, 1
  %9295 = extractvalue %dx.types.CBufRet.f32 %9292, 2
  %9296 = fadd fast float %9289, %9293
  %9297 = fadd fast float %9296, %9282
  %9298 = fadd fast float %9290, %9294
  %9299 = fadd fast float %9298, %9283
  %9300 = fadd fast float %9291, %9295
  %9301 = fadd fast float %9300, %9284
  %9302 = fmul fast float %9297, %8473
  %9303 = fmul fast float %9299, %8473
  %9304 = fmul fast float %9301, %8473
  %9305 = fmul fast float %9302, %9302
  %9306 = fmul fast float %9303, %9303
  %9307 = fadd fast float %9305, %9306
  %9308 = fmul fast float %9304, %9304
  %9309 = fadd fast float %9307, %9308
  %9310 = call float @dx.op.unary.f32(i32 24, float %9309)  ; Sqrt(value)
  %9311 = extractvalue %dx.types.CBufRet.f32 %8200, 0
  %9312 = fsub fast float %9310, %9311
  %9313 = extractvalue %dx.types.CBufRet.f32 %8200, 2
  %9314 = fmul fast float %9312, %9313
  %9315 = call float @dx.op.unary.f32(i32 7, float %9314)  ; Saturate(value)
  %9316 = fadd fast float %9315, -5.000000e-01
  %9317 = fmul fast float %9316, 2.000000e+00
  %9318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9319 = extractvalue %dx.types.CBufRet.f32 %9318, 2
  %9320 = call float @dx.op.binary.f32(i32 36, float %9319, float %9317)  ; FMin(a,b)
  %9321 = fsub fast float -0.000000e+00, %9319
  %9322 = fcmp fast ogt float %9320, %9321
  br i1 %9322, label %9323, label %9635, !dx.controlflow.hints !172

; <label>:9323                                    ; preds = %9268
  %9324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9325 = extractvalue %dx.types.CBufRet.f32 %9324, 3
  %9326 = fcmp fast ogt float %9325, 0.000000e+00
  br i1 %9326, label %9327, label %9402, !dx.controlflow.hints !173

; <label>:9327                                    ; preds = %9323
  %9328 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9329 = extractvalue %dx.types.Dimensions %9328, 0
  %9330 = sitofp i32 %9329 to float
  %9331 = extractvalue %dx.types.Dimensions %9328, 1
  %9332 = sitofp i32 %9331 to float
  %9333 = fmul fast float %9272, %9330
  %9334 = fmul fast float %9273, %9332
  %9335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9336 = extractvalue %dx.types.CBufRet.f32 %9335, 1
  %9337 = fsub fast float -0.000000e+00, %9336
  %9338 = fptoui float %9337 to i32
  %9339 = fptoui float %9333 to i32
  %9340 = fptoui float %9334 to i32
  %9341 = and i32 %9338, 31
  %9342 = lshr i32 %9339, %9341
  %9343 = lshr i32 %9340, %9341
  %9344 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9338, i32 %9342, i32 %9343, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9345 = extractvalue %dx.types.ResRet.f32 %9344, 0
  %9346 = fcmp fast olt float %9345, -1.000000e+00
  %9347 = fcmp fast ogt float %9345, -1.000000e+00
  %9348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9348, 1
  %9350 = select i1 %9347, float %9349, float 1.000000e+00
  %9351 = fadd fast float %9345, 1.000000e+00
  %9352 = fmul fast float %9350, %9351
  %9353 = call float @dx.op.unary.f32(i32 6, float %9352)  ; FAbs(value)
  %9354 = extractvalue %dx.types.CBufRet.f32 %9348, 3
  %9355 = fcmp fast oge float %9353, %9354
  %9356 = select i1 %9355, float 0x4197782600000000, float %9353
  %9357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9358 = extractvalue %dx.types.CBufRet.f32 %9357, 0
  %9359 = extractvalue %dx.types.CBufRet.f32 %9357, 1
  %9360 = extractvalue %dx.types.CBufRet.f32 %9357, 2
  %9361 = select i1 %9346, float %9358, float %9279
  %9362 = select i1 %9346, float %9359, float %9280
  %9363 = select i1 %9346, float %9360, float %9281
  %9364 = fmul fast float %9361, %9276
  %9365 = fmul fast float %9362, %9276
  %9366 = fmul fast float %9363, %9276
  %9367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9368 = extractvalue %dx.types.CBufRet.f32 %9367, 0
  %9369 = extractvalue %dx.types.CBufRet.f32 %9367, 1
  %9370 = extractvalue %dx.types.CBufRet.f32 %9367, 2
  %9371 = select i1 %9346, float %9368, float %9286
  %9372 = select i1 %9346, float %9369, float %9287
  %9373 = select i1 %9346, float %9370, float %9288
  %9374 = fmul fast float %9371, %9277
  %9375 = fmul fast float %9372, %9277
  %9376 = fmul fast float %9373, %9277
  %9377 = fadd fast float %9374, %9364
  %9378 = fadd fast float %9375, %9365
  %9379 = fadd fast float %9376, %9366
  %9380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9381 = extractvalue %dx.types.CBufRet.f32 %9380, 0
  %9382 = extractvalue %dx.types.CBufRet.f32 %9380, 1
  %9383 = extractvalue %dx.types.CBufRet.f32 %9380, 2
  %9384 = select i1 %9346, float %9381, float %9293
  %9385 = select i1 %9346, float %9382, float %9294
  %9386 = select i1 %9346, float %9383, float %9295
  %9387 = fadd fast float %9377, %9384
  %9388 = fadd fast float %9378, %9385
  %9389 = fadd fast float %9379, %9386
  %9390 = fmul fast float %9387, %9356
  %9391 = fmul fast float %9388, %9356
  %9392 = fmul fast float %9389, %9356
  %9393 = fmul fast float %9390, %9390
  %9394 = fmul fast float %9391, %9391
  %9395 = fadd fast float %9393, %9394
  %9396 = fmul fast float %9392, %9392
  %9397 = fadd fast float %9395, %9396
  %9398 = call float @dx.op.unary.f32(i32 24, float %9397)  ; Sqrt(value)
  %9399 = fsub fast float %9398, %9311
  %9400 = fmul fast float %9399, %9313
  %9401 = call float @dx.op.unary.f32(i32 7, float %9400)  ; Saturate(value)
  br label %9402

; <label>:9402                                    ; preds = %9327, %9323
  %9403 = phi float [ %9401, %9327 ], [ 1.000000e+00, %9323 ]
  %9404 = fmul fast float %9320, 5.000000e-01
  %9405 = fadd fast float %9404, 5.000000e-01
  %9406 = call float @dx.op.unary.f32(i32 22, float %9405)  ; Frc(value)
  %9407 = call float @dx.op.unary.f32(i32 27, float %9406)  ; Round_ni(value)
  %9408 = call float @dx.op.unary.f32(i32 22, float %9406)  ; Frc(value)
  %9409 = fmul fast float %9408, 2.000000e+00
  %9410 = fadd fast float %9409, -1.000000e+00
  %9411 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %9272, float %9273, float %9407, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9412 = extractvalue %dx.types.ResRet.f32 %9411, 0
  %9413 = extractvalue %dx.types.ResRet.f32 %9411, 1
  %9414 = extractvalue %dx.types.ResRet.f32 %9411, 2
  %9415 = extractvalue %dx.types.ResRet.f32 %9411, 3
  %9416 = fadd fast float %9412, -5.000000e-01
  %9417 = fadd fast float %9414, -5.000000e-01
  %9418 = fmul fast float %9416, 0xBFD5555560000000
  %9419 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9417, float %9418)  ; FMad(a,b,c)
  %9420 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9413, float 0.000000e+00)  ; FMad(a,b,c)
  %9421 = fadd fast float %9420, %9415
  %9422 = fmul fast float %9416, -7.500000e-01
  %9423 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9417, float %9422)  ; FMad(a,b,c)
  %9424 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9413, float 0.000000e+00)  ; FMad(a,b,c)
  %9425 = fadd fast float %9424, %9415
  %9426 = call float @dx.op.binary.f32(i32 35, float %9419, float -1.000000e+00)  ; FMax(a,b)
  %9427 = call float @dx.op.binary.f32(i32 35, float %9421, float -1.000000e+00)  ; FMax(a,b)
  %9428 = call float @dx.op.binary.f32(i32 35, float %9423, float -1.000000e+00)  ; FMax(a,b)
  %9429 = call float @dx.op.binary.f32(i32 35, float %9425, float -1.000000e+00)  ; FMax(a,b)
  %9430 = call float @dx.op.binary.f32(i32 36, float %9426, float 1.000000e+00)  ; FMin(a,b)
  %9431 = call float @dx.op.binary.f32(i32 36, float %9427, float 1.000000e+00)  ; FMin(a,b)
  %9432 = call float @dx.op.binary.f32(i32 36, float %9428, float 1.000000e+00)  ; FMin(a,b)
  %9433 = call float @dx.op.binary.f32(i32 36, float %9429, float 1.000000e+00)  ; FMin(a,b)
  %9434 = fcmp fast olt float %9430, 0x3FEFFF8020000000
  br i1 %9434, label %9435, label %9550, !dx.controlflow.hints !174

; <label>:9435                                    ; preds = %9402
  %9436 = extractvalue %dx.types.CBufRet.f32 %9318, 3
  %9437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9438 = extractvalue %dx.types.CBufRet.f32 %9437, 0
  %9439 = extractvalue %dx.types.CBufRet.f32 %9437, 1
  %9440 = extractvalue %dx.types.CBufRet.f32 %9437, 2
  %9441 = extractvalue %dx.types.CBufRet.f32 %9437, 3
  %9442 = fsub fast float %9438, %9430
  %9443 = fsub fast float %9439, %9431
  %9444 = fsub fast float %9440, %9432
  %9445 = fsub fast float %9441, %9433
  %9446 = fmul fast float %9442, %9436
  %9447 = fmul fast float %9443, %9436
  %9448 = fmul fast float %9444, %9436
  %9449 = fmul fast float %9445, %9436
  %9450 = fadd fast float %9446, %9430
  %9451 = fadd fast float %9447, %9431
  %9452 = fsub fast float -0.000000e+00, %9451
  %9453 = fadd fast float %9448, %9432
  %9454 = fadd fast float %9449, %9433
  %9455 = fmul fast float %9450, %9450
  %9456 = fsub fast float %9451, %9455
  %9457 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9456)  ; FMax(a,b)
  %9458 = fdiv fast float 1.000000e+00, %9457
  %9459 = fmul fast float %9451, %9450
  %9460 = fsub fast float %9453, %9459
  %9461 = fsub fast float %9410, %9450
  %9462 = fmul fast float %9410, %9410
  %9463 = fsub fast float %9462, %9451
  %9464 = fmul fast float %9461, %9458
  %9465 = fmul fast float %9464, %9460
  %9466 = fsub fast float %9463, %9465
  %9467 = fmul fast float %9451, %9451
  %9468 = fsub fast float %9454, %9467
  %9469 = fmul fast float %9460, %9460
  %9470 = fmul fast float %9469, %9458
  %9471 = fsub fast float %9468, %9470
  %9472 = fdiv fast float %9466, %9471
  %9473 = fmul fast float %9460, %9472
  %9474 = fsub fast float %9461, %9473
  %9475 = fmul fast float %9474, %9458
  %9476 = fmul fast float %9475, %9450
  %9477 = fsub fast float 1.000000e+00, %9476
  %9478 = fmul fast float %9451, %9472
  %9479 = fsub fast float %9477, %9478
  %9480 = fmul fast float %9475, %9475
  %9481 = fmul fast float %9472, 4.000000e+00
  %9482 = fmul fast float %9481, %9479
  %9483 = fsub fast float %9480, %9482
  %9484 = call float @dx.op.unary.f32(i32 24, float %9483)  ; Sqrt(value)
  %9485 = fcmp fast oge float %9475, 0.000000e+00
  %9486 = fsub fast float -0.000000e+00, %9484
  %9487 = select i1 %9485, float %9486, float %9484
  %9488 = fsub fast float %9487, %9475
  %9489 = fdiv fast float %9488, %9472
  %9490 = fdiv fast float %9479, %9488
  %9491 = fmul fast float %9489, 5.000000e-01
  %9492 = fmul fast float %9490, 2.000000e+00
  %9493 = select i1 %9485, float %9491, float %9492
  %9494 = select i1 %9485, float %9492, float %9491
  %9495 = call float @dx.op.binary.f32(i32 35, float %9493, float %9494)  ; FMax(a,b)
  %9496 = call float @dx.op.binary.f32(i32 36, float %9493, float %9494)  ; FMin(a,b)
  %9497 = fcmp fast ogt float %9410, %9496
  br i1 %9497, label %9498, label %9508

; <label>:9498                                    ; preds = %9435
  %9499 = fsub fast float %9410, %9496
  %9500 = fsub fast float %9495, %9496
  %9501 = fmul fast float %9499, %9500
  %9502 = fmul fast float %9495, %9410
  %9503 = fadd fast float %9495, %9410
  %9504 = fmul fast float %9503, %9450
  %9505 = fadd fast float %9502, %9451
  %9506 = fsub fast float %9505, %9504
  %9507 = fdiv fast float %9506, %9501
  br label %9508

; <label>:9508                                    ; preds = %9498, %9435
  %9509 = phi float [ %9507, %9498 ], [ 0.000000e+00, %9435 ]
  %9510 = fcmp fast ogt float %9410, %9495
  %9511 = fsub fast float %9410, %9495
  br i1 %9510, label %9512, label %9522

; <label>:9512                                    ; preds = %9508
  %9513 = fsub fast float %9495, %9496
  %9514 = fmul fast float %9513, %9511
  %9515 = fmul fast float %9496, %9410
  %9516 = fadd fast float %9496, %9410
  %9517 = fmul fast float %9516, %9450
  %9518 = fsub fast float %9452, %9515
  %9519 = fadd fast float %9518, %9517
  %9520 = fdiv fast float %9519, %9514
  %9521 = fadd fast float %9520, %9509
  br label %9522

; <label>:9522                                    ; preds = %9512, %9508
  %9523 = phi float [ %9521, %9512 ], [ %9509, %9508 ]
  %9524 = fsub fast float %9410, %9496
  %9525 = fmul fast float %9524, %9511
  %9526 = fmul fast float %9496, %9495
  %9527 = fadd fast float %9496, %9495
  %9528 = fmul fast float %9527, %9450
  %9529 = fadd fast float %9526, %9451
  %9530 = fsub fast float %9529, %9528
  %9531 = fdiv fast float %9530, %9525
  %9532 = call float @dx.op.unary.f32(i32 7, float %9523)  ; Saturate(value)
  %9533 = fcmp fast oeq float %8201, 0.000000e+00
  %9534 = extractvalue %dx.types.CBufRet.f32 %9318, 0
  %9535 = fcmp fast oeq float %9534, 0.000000e+00
  %9536 = or i1 %9533, %9535
  %9537 = fmul fast float %9534, 2.000000e+00
  %9538 = fadd fast float %9319, %9320
  %9539 = fdiv fast float %9538, %9537
  %9540 = call float @dx.op.unary.f32(i32 7, float %9539)  ; Saturate(value)
  %9541 = fmul fast float %9540, 2.000000e+00
  %9542 = fsub fast float 3.000000e+00, %9541
  %9543 = fmul fast float %9540, %9540
  %9544 = fmul fast float %9543, %9542
  %9545 = select i1 %9536, float 1.000000e+00, float %9544
  %9546 = fmul fast float %9531, %8201
  %9547 = fadd fast float %9532, %9546
  %9548 = call float @dx.op.unary.f32(i32 7, float %9547)  ; Saturate(value)
  %9549 = fmul fast float %9545, %9548
  br label %9550

; <label>:9550                                    ; preds = %9522, %9402
  %9551 = phi float [ %9549, %9522 ], [ 0.000000e+00, %9402 ]
  %9552 = fsub fast float 1.000000e+00, %9551
  %9553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %9272, float %9273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9554 = extractvalue %dx.types.ResRet.f32 %9553, 0
  %9555 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9556 = extractvalue %dx.types.CBufRet.i32 %9555, 2
  %9557 = icmp eq i32 %9556, 0
  br i1 %9557, label %9563, label %9558

; <label>:9558                                    ; preds = %9550
  %9559 = call float @dx.op.unary.f32(i32 7, float %9551)  ; Saturate(value)
  %9560 = fadd fast float %9554, -1.000000e+00
  %9561 = fmul fast float %9559, %9560
  %9562 = fadd fast float %9561, 1.000000e+00
  br label %9563

; <label>:9563                                    ; preds = %9558, %9550
  %9564 = phi float [ %9562, %9558 ], [ %9552, %9550 ]
  br i1 %9326, label %9565, label %9583

; <label>:9565                                    ; preds = %9563
  %9566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9567 = extractvalue %dx.types.CBufRet.f32 %9566, 1
  %9568 = fsub fast float %9403, %9567
  %9569 = call float @dx.op.unary.f32(i32 7, float %9568)  ; Saturate(value)
  %9570 = fsub fast float %9403, %9325
  %9571 = call float @dx.op.unary.f32(i32 7, float %9570)  ; Saturate(value)
  %9572 = fsub fast float %9569, %9571
  %9573 = fsub fast float %9405, %9571
  %9574 = fdiv fast float %9573, %9572
  %9575 = call float @dx.op.unary.f32(i32 7, float %9574)  ; Saturate(value)
  %9576 = fmul fast float %9575, 2.000000e+00
  %9577 = fsub fast float 3.000000e+00, %9576
  %9578 = fsub fast float %9554, %9564
  %9579 = fmul fast float %9575, %9575
  %9580 = fmul fast float %9579, %9578
  %9581 = fmul fast float %9580, %9577
  %9582 = fadd fast float %9581, %9564
  br label %9583

; <label>:9583                                    ; preds = %9565, %9563
  %9584 = phi float [ %9582, %9565 ], [ %9564, %9563 ]
  %9585 = call float @dx.op.binary.f32(i32 35, float %9554, float %9584)  ; FMax(a,b)
  %9586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9587 = extractvalue %dx.types.CBufRet.i32 %9586, 2
  %9588 = and i32 %9587, 1
  %9589 = icmp eq i32 %9588, 0
  %9590 = fcmp fast une float %9585, 1.000000e+00
  %9591 = and i1 %9590, %9589
  br i1 %9591, label %9592, label %9611

; <label>:9592                                    ; preds = %9583
  %9593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %9272, float %9273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9594 = extractvalue %dx.types.ResRet.f32 %9593, 0
  %9595 = extractvalue %dx.types.ResRet.f32 %9593, 1
  %9596 = extractvalue %dx.types.ResRet.f32 %9593, 2
  %9597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9598 = extractvalue %dx.types.CBufRet.f32 %9597, 1
  %9599 = fmul fast float %9598, %9594
  %9600 = fmul fast float %9598, %9595
  %9601 = fmul fast float %9598, %9596
  %9602 = fcmp fast ogt float %9554, 0x3FEFFF2E40000000
  %9603 = fsub fast float 1.000000e+00, %9585
  %9604 = fsub fast float 1.000000e+00, %9554
  %9605 = fdiv fast float %9603, %9604
  %9606 = call float @dx.op.unary.f32(i32 7, float %9605)  ; Saturate(value)
  %9607 = select i1 %9602, float 0.000000e+00, float %9606
  %9608 = fmul fast float %9599, %9607
  %9609 = fmul fast float %9600, %9607
  %9610 = fmul fast float %9601, %9607
  br label %9611

; <label>:9611                                    ; preds = %9592, %9583
  %9612 = phi float [ 0.000000e+00, %9583 ], [ %9608, %9592 ]
  %9613 = phi float [ 0.000000e+00, %9583 ], [ %9609, %9592 ]
  %9614 = phi float [ 0.000000e+00, %9583 ], [ %9610, %9592 ]
  %9615 = fmul fast float %9612, %8197
  %9616 = fmul fast float %9613, %8198
  %9617 = fmul fast float %9614, %8199
  %9618 = fmul fast float %9585, %9247
  %9619 = call float @dx.op.dot3.f32(i32 55, float %9585, float %9585, float %9585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9620 = call float @dx.op.dot3.f32(i32 55, float %9615, float %9616, float %9617, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9621 = select i1 %294, float %9619, float %9585
  %9622 = select i1 %294, float 1.000000e+00, float %9585
  %9623 = select i1 %294, float %9620, float %9615
  %9624 = select i1 %294, float 0.000000e+00, float %9616
  %9625 = select i1 %294, float 0.000000e+00, float %9617
  %9626 = fmul fast float %9621, %9259
  %9627 = fmul fast float %9621, %9260
  %9628 = fmul fast float %9622, %9261
  %9629 = fadd fast float %9626, %9623
  %9630 = fadd fast float %9627, %9624
  %9631 = fadd fast float %9625, %9628
  %9632 = fmul fast float %9621, %9262
  %9633 = fmul fast float %9621, %9263
  %9634 = fmul fast float %9622, %9264
  br label %9635

; <label>:9635                                    ; preds = %9611, %9268, %9237, %8469
  %9636 = phi float [ %8474, %8469 ], [ %9259, %9237 ], [ %9629, %9611 ], [ %9259, %9268 ]
  %9637 = phi float [ %8475, %8469 ], [ %9260, %9237 ], [ %9630, %9611 ], [ %9260, %9268 ]
  %9638 = phi float [ %8476, %8469 ], [ %9261, %9237 ], [ %9631, %9611 ], [ %9261, %9268 ]
  %9639 = phi float [ %8477, %8469 ], [ %9262, %9237 ], [ %9632, %9611 ], [ %9262, %9268 ]
  %9640 = phi float [ %8478, %8469 ], [ %9263, %9237 ], [ %9633, %9611 ], [ %9263, %9268 ]
  %9641 = phi float [ %8479, %8469 ], [ %9264, %9237 ], [ %9634, %9611 ], [ %9264, %9268 ]
  %9642 = phi float [ %8480, %8469 ], [ %9247, %9237 ], [ %9618, %9611 ], [ %9247, %9268 ]
  %9643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.f32 %9643, 2
  %9645 = extractvalue %dx.types.CBufRet.f32 %9643, 3
  %9646 = fmul fast float %9644, %111
  %9647 = fmul fast float %9645, %112
  %9648 = call float @dx.op.unary.f32(i32 7, float %9646)  ; Saturate(value)
  %9649 = call float @dx.op.unary.f32(i32 7, float %9647)  ; Saturate(value)
  %9650 = select i1 %8211, i32 2, i32 0
  %9651 = or i32 %9650, 1
  %9652 = uitofp i32 %9651 to float
  %9653 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %9648, float %9649, float %9652, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9654 = extractvalue %dx.types.ResRet.f32 %9653, 0
  %9655 = extractvalue %dx.types.ResRet.f32 %9653, 1
  %9656 = extractvalue %dx.types.ResRet.f32 %9653, 2
  %9657 = extractvalue %dx.types.ResRet.f32 %9653, 3
  %9658 = add nuw nsw i32 %9650, 2
  %9659 = uitofp i32 %9658 to float
  %9660 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %9648, float %9649, float %9659, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9661 = extractvalue %dx.types.ResRet.f32 %9660, 0
  %9662 = extractvalue %dx.types.ResRet.f32 %9660, 1
  %9663 = extractvalue %dx.types.ResRet.f32 %9660, 2
  %9664 = extractvalue %dx.types.ResRet.f32 %9660, 3
  %9665 = call float @dx.op.binary.f32(i32 35, float %9655, float %9656)  ; FMax(a,b)
  %9666 = call float @dx.op.binary.f32(i32 35, float %9654, float %9665)  ; FMax(a,b)
  %9667 = call float @dx.op.binary.f32(i32 35, float %9666, float %9657)  ; FMax(a,b)
  %9668 = call float @dx.op.binary.f32(i32 36, float %9662, float %9663)  ; FMin(a,b)
  %9669 = call float @dx.op.binary.f32(i32 36, float %9661, float %9668)  ; FMin(a,b)
  %9670 = call float @dx.op.binary.f32(i32 36, float %9669, float %9664)  ; FMin(a,b)
  %9671 = fmul fast float %9667, 2.550000e+02
  %9672 = fadd fast float %9671, 0x3F70101020000000
  %9673 = fptoui float %9672 to i32
  %9674 = fmul fast float %9670, 2.550000e+02
  %9675 = fadd fast float %9674, 0x3F70101020000000
  %9676 = fptoui float %9675 to i32
  %9677 = icmp ult i32 %9673, %9676
  br i1 %9677, label %9678, label %9847

; <label>:9678                                    ; preds = %9635
  %9679 = fcmp fast ogt float %97, 9.843750e-01
  %9680 = fadd fast float %8473, -4.000000e+00
  %9681 = select i1 %9679, float -4.000000e+00, float %9680
  %9682 = call float @dx.op.binary.f32(i32 35, float %9681, float 0.000000e+00)  ; FMax(a,b)
  %9683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9684 = extractvalue %dx.types.CBufRet.f32 %9683, 0
  %9685 = fadd fast float %9684, %9682
  %9686 = extractvalue %dx.types.CBufRet.f32 %9683, 2
  %9687 = fmul fast float %9685, %9686
  %9688 = call float @dx.op.unary.f32(i32 23, float %9687)  ; Log(value)
  %9689 = extractvalue %dx.types.CBufRet.f32 %9683, 3
  %9690 = fmul fast float %9689, %9688
  %9691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9692 = extractvalue %dx.types.CBufRet.f32 %9691, 2
  %9693 = fmul fast float %9690, %9692
  %9694 = call float @dx.op.unary.f32(i32 7, float %9693)  ; Saturate(value)
  %9695 = uitofp i32 %9673 to float
  %9696 = uitofp i32 %9676 to float
  %9697 = fadd fast float %9695, 5.000000e-01
  %9698 = fadd fast float %9696, 5.000000e-01
  %9699 = fmul fast float %9692, %9697
  %9700 = fmul fast float %9692, %9698
  %9701 = fadd fast float %9699, 0x3F0FFB4800000000
  %9702 = fadd fast float %9700, 0xBF0FFB4800000000
  %9703 = call float @dx.op.binary.f32(i32 35, float %9694, float %9701)  ; FMax(a,b)
  %9704 = call float @dx.op.binary.f32(i32 36, float %9703, float %9702)  ; FMin(a,b)
  %9705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9706 = extractvalue %dx.types.CBufRet.f32 %9705, 1
  %9707 = extractvalue %dx.types.CBufRet.f32 %9705, 2
  %9708 = extractvalue %dx.types.CBufRet.f32 %9705, 0
  %9709 = select i1 %8211, float %9708, float 0.000000e+00
  %9710 = fmul fast float %9706, %9704
  %9711 = fadd fast float %9709, %9710
  %9712 = fadd fast float %9709, %9707
  %9713 = fsub fast float %9706, %9707
  %9714 = fadd fast float %9713, %9709
  %9715 = call float @dx.op.binary.f32(i32 35, float %9711, float %9712)  ; FMax(a,b)
  %9716 = call float @dx.op.binary.f32(i32 36, float %9715, float %9714)  ; FMin(a,b)
  %9717 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %9648, float %9649, float %9716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9718 = extractvalue %dx.types.ResRet.f32 %9717, 0
  %9719 = extractvalue %dx.types.ResRet.f32 %9717, 1
  %9720 = extractvalue %dx.types.ResRet.f32 %9717, 2
  %9721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.i32 %9721, 0
  %9723 = extractvalue %dx.types.CBufRet.i32 %9721, 1
  %9724 = uitofp i32 %9722 to float
  %9725 = uitofp i32 %9723 to float
  %9726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9727 = extractvalue %dx.types.CBufRet.f32 %9726, 0
  %9728 = extractvalue %dx.types.CBufRet.f32 %9726, 1
  %9729 = fmul fast float %9724, %9648
  %9730 = fmul fast float %9725, %9649
  %9731 = fadd fast float %9729, -5.000000e-01
  %9732 = fadd fast float %9730, -5.000000e-01
  %9733 = call float @dx.op.unary.f32(i32 22, float %9731)  ; Frc(value)
  %9734 = call float @dx.op.unary.f32(i32 22, float %9732)  ; Frc(value)
  %9735 = fmul fast float %9733, %9733
  %9736 = fmul fast float %9735, %9733
  %9737 = fsub fast float 3.000000e+00, %9733
  %9738 = fmul fast float %9735, %9737
  %9739 = fmul fast float %9733, 3.000000e+00
  %9740 = fmul fast float %9736, 3.000000e+00
  %9741 = fmul fast float %9735, 6.000000e+00
  %9742 = fsub fast float %9740, %9741
  %9743 = fadd fast float %9742, 4.000000e+00
  %9744 = fmul fast float %9743, 0x3FC5555560000000
  %9745 = fmul fast float %9736, -3.000000e+00
  %9746 = fadd fast float %9735, %9733
  %9747 = fmul fast float %9746, 3.000000e+00
  %9748 = fadd fast float %9745, 1.000000e+00
  %9749 = fadd fast float %9748, %9747
  %9750 = fmul fast float %9736, 0x3FC5555560000000
  %9751 = fmul fast float %9734, %9734
  %9752 = fmul fast float %9751, %9734
  %9753 = fsub fast float 3.000000e+00, %9734
  %9754 = fmul fast float %9751, %9753
  %9755 = fmul fast float %9734, 3.000000e+00
  %9756 = fmul fast float %9752, 3.000000e+00
  %9757 = fmul fast float %9751, 6.000000e+00
  %9758 = fsub fast float %9756, %9757
  %9759 = fadd fast float %9758, 4.000000e+00
  %9760 = fmul fast float %9759, 0x3FC5555560000000
  %9761 = fmul fast float %9752, -3.000000e+00
  %9762 = fadd fast float %9751, %9734
  %9763 = fmul fast float %9762, 3.000000e+00
  %9764 = fadd fast float %9761, 1.000000e+00
  %9765 = fadd fast float %9764, %9763
  %9766 = fmul fast float %9752, 0x3FC5555560000000
  %9767 = fadd fast float %9733, 1.000000e+00
  %9768 = fsub fast float 1.000000e+00, %9739
  %9769 = fadd fast float %9768, %9738
  %9770 = fadd fast float %9769, %9743
  %9771 = fmul fast float %9770, 0x3FC5555560000000
  %9772 = fdiv fast float %9744, %9771
  %9773 = fsub fast float %9767, %9772
  %9774 = fsub fast float 1.000000e+00, %9733
  %9775 = fadd fast float %9749, %9736
  %9776 = fmul fast float %9775, 0x3FC5555560000000
  %9777 = fdiv fast float %9750, %9776
  %9778 = fadd fast float %9774, %9777
  %9779 = fadd fast float %9734, 1.000000e+00
  %9780 = fsub fast float 1.000000e+00, %9755
  %9781 = fadd fast float %9780, %9754
  %9782 = fadd fast float %9781, %9759
  %9783 = fmul fast float %9782, 0x3FC5555560000000
  %9784 = fdiv fast float %9760, %9783
  %9785 = fsub fast float %9779, %9784
  %9786 = fsub fast float 1.000000e+00, %9734
  %9787 = fadd fast float %9765, %9752
  %9788 = fmul fast float %9787, 0x3FC5555560000000
  %9789 = fdiv fast float %9766, %9788
  %9790 = fadd fast float %9789, %9786
  %9791 = fmul fast float %9773, %9727
  %9792 = fsub fast float %9648, %9791
  %9793 = fmul fast float %9778, %9727
  %9794 = fadd fast float %9793, %9648
  %9795 = fmul fast float %9790, %9728
  %9796 = fadd fast float %9795, %9649
  %9797 = fmul fast float %9785, %9728
  %9798 = fsub fast float %9649, %9797
  %9799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9792, float %9798, float %9716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9800 = extractvalue %dx.types.ResRet.f32 %9799, 0
  %9801 = extractvalue %dx.types.ResRet.f32 %9799, 1
  %9802 = extractvalue %dx.types.ResRet.f32 %9799, 2
  %9803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9794, float %9798, float %9716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9804 = extractvalue %dx.types.ResRet.f32 %9803, 0
  %9805 = extractvalue %dx.types.ResRet.f32 %9803, 1
  %9806 = extractvalue %dx.types.ResRet.f32 %9803, 2
  %9807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9792, float %9796, float %9716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9808 = extractvalue %dx.types.ResRet.f32 %9807, 0
  %9809 = extractvalue %dx.types.ResRet.f32 %9807, 1
  %9810 = extractvalue %dx.types.ResRet.f32 %9807, 2
  %9811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %9794, float %9796, float %9716, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9812 = extractvalue %dx.types.ResRet.f32 %9811, 0
  %9813 = extractvalue %dx.types.ResRet.f32 %9811, 1
  %9814 = extractvalue %dx.types.ResRet.f32 %9811, 2
  %9815 = fsub fast float %9808, %9800
  %9816 = fsub fast float %9809, %9801
  %9817 = fsub fast float %9810, %9802
  %9818 = fmul fast float %9815, %9788
  %9819 = fmul fast float %9816, %9788
  %9820 = fmul fast float %9817, %9788
  %9821 = fadd fast float %9818, %9800
  %9822 = fadd fast float %9819, %9801
  %9823 = fadd fast float %9820, %9802
  %9824 = fsub fast float %9812, %9804
  %9825 = fsub fast float %9813, %9805
  %9826 = fsub fast float %9814, %9806
  %9827 = fmul fast float %9824, %9788
  %9828 = fmul fast float %9825, %9788
  %9829 = fmul fast float %9826, %9788
  %9830 = fsub fast float %9804, %9821
  %9831 = fadd fast float %9830, %9827
  %9832 = fsub fast float %9805, %9822
  %9833 = fadd fast float %9832, %9828
  %9834 = fsub fast float %9806, %9823
  %9835 = fadd fast float %9834, %9829
  %9836 = fmul fast float %9831, %9776
  %9837 = fmul fast float %9833, %9776
  %9838 = fmul fast float %9835, %9776
  %9839 = fadd fast float %9836, %9821
  %9840 = fadd fast float %9837, %9822
  %9841 = fadd fast float %9838, %9823
  %9842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9843 = extractvalue %dx.types.CBufRet.f32 %9842, 1
  %9844 = fmul fast float %9839, %9843
  %9845 = fmul fast float %9840, %9843
  %9846 = fmul fast float %9841, %9843
  br label %9847

; <label>:9847                                    ; preds = %9678, %9635
  %9848 = phi float [ %9718, %9678 ], [ 1.000000e+00, %9635 ]
  %9849 = phi float [ %9719, %9678 ], [ 1.000000e+00, %9635 ]
  %9850 = phi float [ %9720, %9678 ], [ 1.000000e+00, %9635 ]
  %9851 = phi float [ %9844, %9678 ], [ 0.000000e+00, %9635 ]
  %9852 = phi float [ %9845, %9678 ], [ 0.000000e+00, %9635 ]
  %9853 = phi float [ %9846, %9678 ], [ 0.000000e+00, %9635 ]
  %9854 = fmul fast float %9851, %8197
  %9855 = fmul fast float %9852, %8198
  %9856 = fmul fast float %9853, %8199
  %9857 = fmul fast float %9848, %9642
  %9858 = call float @dx.op.dot3.f32(i32 55, float %9848, float %9849, float %9850, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9859 = call float @dx.op.dot3.f32(i32 55, float %9854, float %9855, float %9856, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9860 = select i1 %294, float %9858, float %9848
  %9861 = select i1 %294, float %9858, float %9849
  %9862 = select i1 %294, float 1.000000e+00, float %9850
  %9863 = select i1 %294, float %9859, float %9854
  %9864 = select i1 %294, float 0.000000e+00, float %9855
  %9865 = select i1 %294, float 0.000000e+00, float %9856
  %9866 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9867 = extractvalue %dx.types.CBufRet.i32 %9866, 3
  %9868 = and i32 %9867, 3
  %9869 = icmp ne i32 %9868, 0
  %9870 = and i32 %9867, 4
  %9871 = icmp ne i32 %9870, 0
  %9872 = and i1 %9869, %9871
  %9873 = and i1 %294, %9872
  br i1 %9873, label %9874, label %9880

; <label>:9874                                    ; preds = %9847
  %9875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9876 = extractvalue %dx.types.CBufRet.f32 %9875, 1
  %9877 = fadd fast float %9857, -1.000000e+00
  %9878 = fmul fast float %9876, %9877
  %9879 = fadd fast float %9878, 1.000000e+00
  br label %9880

; <label>:9880                                    ; preds = %9874, %9847
  %9881 = phi float [ %9879, %9874 ], [ %9857, %9847 ]
  %9882 = fadd fast float %9639, %9636
  %9883 = fmul fast float %9860, %9882
  %9884 = fadd fast float %9883, %9863
  %9885 = fadd fast float %9640, %9637
  %9886 = fmul fast float %9861, %9885
  %9887 = fadd fast float %9886, %9864
  %9888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9889 = extractvalue %dx.types.CBufRet.f32 %9888, 0
  br i1 %294, label %9890, label %9905

; <label>:9890                                    ; preds = %9880
  %9891 = fadd fast float %9884, %9887
  %9892 = fmul fast float %9889, %9891
  %9893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9894 = extractvalue %dx.types.CBufRet.f32 %9893, 3
  %9895 = extractvalue %dx.types.CBufRet.f32 %8181, 1
  %9896 = fsub fast float %8186, %8180
  %9897 = fadd fast float %9896, %8187
  %9898 = fsub fast float %9897, %9895
  %9899 = extractvalue %dx.types.CBufRet.f32 %8181, 2
  %9900 = fmul fast float %9898, %9899
  %9901 = call float @dx.op.unary.f32(i32 7, float %9900)  ; Saturate(value)
  %9902 = fsub fast float %9901, %9894
  %9903 = fmul fast float %9902, %9881
  %9904 = fadd fast float %9903, %9894
  br label %9931

; <label>:9905                                    ; preds = %9880
  %9906 = fadd fast float %9641, %9638
  %9907 = fmul fast float %9862, %9906
  %9908 = fadd fast float %9907, %9865
  %9909 = fmul fast float %9889, %9884
  %9910 = fmul fast float %9889, %9887
  %9911 = fmul fast float %9889, %9908
  %9912 = call float @dx.op.binary.f32(i32 35, float %9910, float %9911)  ; FMax(a,b)
  %9913 = call float @dx.op.binary.f32(i32 35, float %9909, float %9912)  ; FMax(a,b)
  %9914 = call float @dx.op.binary.f32(i32 35, float %8198, float %8199)  ; FMax(a,b)
  %9915 = call float @dx.op.binary.f32(i32 35, float %8197, float %9914)  ; FMax(a,b)
  %9916 = call float @dx.op.binary.f32(i32 35, float %9913, float %9915)  ; FMax(a,b)
  %9917 = fcmp fast ugt float %9916, 0x3F10000000000000
  br i1 %9917, label %9919, label %9918

; <label>:9918                                    ; preds = %9905
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9919

; <label>:9919                                    ; preds = %9918, %9905
  %9920 = add i32 %51, 356
  %9921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %9920, i32 undef)  ; BufferLoad(srv,index,wot)
  %9922 = extractvalue %dx.types.ResRet.i32 %9921, 0
  %9923 = and i32 %9922, 32
  %9924 = icmp eq i32 %9923, 0
  br i1 %9924, label %9931, label %9925

; <label>:9925                                    ; preds = %9919
  %9926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9927 = extractvalue %dx.types.CBufRet.f32 %9926, 0
  %9928 = fmul fast float %9927, 0x3FE99999A0000000
  %9929 = fadd fast float %9927, %9909
  %9930 = fadd fast float %9928, %9911
  br label %9931

; <label>:9931                                    ; preds = %9925, %9919, %9890
  %9932 = phi float [ 1.000000e+00, %9890 ], [ %8198, %9925 ], [ %8198, %9919 ]
  %9933 = phi float [ 1.000000e+00, %9890 ], [ %8199, %9925 ], [ %8199, %9919 ]
  %9934 = phi float [ %9892, %9890 ], [ %9929, %9925 ], [ %9909, %9919 ]
  %9935 = phi float [ %9904, %9890 ], [ %9910, %9925 ], [ %9910, %9919 ]
  %9936 = phi float [ 1.000000e+00, %9890 ], [ %9930, %9925 ], [ %9911, %9919 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9937 = call float @dx.op.binary.f32(i32 36, float %9934, float 3.225500e+04)  ; FMin(a,b)
  %9938 = call float @dx.op.binary.f32(i32 36, float %9935, float 3.225500e+04)  ; FMin(a,b)
  %9939 = call float @dx.op.binary.f32(i32 36, float %9936, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9937)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9938)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9939)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9940 = call float @dx.op.binary.f32(i32 36, float %8197, float 3.225500e+04)  ; FMin(a,b)
  %9941 = call float @dx.op.binary.f32(i32 36, float %9932, float 3.225500e+04)  ; FMin(a,b)
  %9942 = call float @dx.op.binary.f32(i32 36, float %9933, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9940)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9941)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9942)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

