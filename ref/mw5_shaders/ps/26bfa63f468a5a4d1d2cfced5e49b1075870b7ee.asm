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
; shader hash: 214af00fb49799df03345fc8dea9fef3
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
  %206 = fmul fast float %111, 5.000000e-01
  %207 = fmul fast float %112, 5.000000e-01
  %208 = fptosi float %206 to i32
  %209 = fptosi float %207 to i32
  %210 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %208, i32 %209, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 18
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F4C00EBA0000000
  %215 = call float @dx.op.unary.f32(i32 21, float %214)  ; Exp(value)
  %216 = fadd fast float %215, -1.000000e+00
  %217 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %23, i32 0)  ; GetDimensions(handle,mipLevel)
  %218 = extractvalue %dx.types.Dimensions %217, 0
  %219 = sitofp i32 %218 to float
  %220 = extractvalue %dx.types.Dimensions %217, 1
  %221 = sitofp i32 %220 to float
  %222 = fcmp fast oge float %206, %219
  %223 = fcmp fast oge float %207, %221
  %224 = or i1 %222, %223
  %225 = select i1 %224, float 0x4197782600000000, float %216
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %229 = fmul fast float %227, %111
  %230 = fmul fast float %228, %112
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 114688
  %234 = icmp ne i32 %233, 0
  %235 = select i1 %234, float %229, float 0.000000e+00
  %236 = select i1 %234, float %230, float 0.000000e+00
  %237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %46, float %235, float %236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %238 = extractvalue %dx.types.ResRet.f32 %237, 0
  %239 = fmul fast float %238, 2.550000e+02
  %240 = fptoui float %239 to i32
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
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
  %254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %45, float %253, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = fsub fast float 1.000000e+00, %255
  %257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.f32 %257, 0
  %259 = fcmp fast olt float %256, %258
  br label %263

; <label>:260                                     ; preds = %0
  %261 = icmp eq i32 %246, 0
  %262 = and i1 %245, %261
  br label %263

; <label>:263                                     ; preds = %260, %249
  %264 = phi i1 [ %259, %249 ], [ %262, %260 ]
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %267 = fmul fast float %266, 0x3FE3C6EF40000000
  %268 = frem fast float %111, 2.560000e+02
  %269 = frem fast float %112, 2.560000e+02
  %270 = fptoui float %268 to i32
  %271 = fptoui float %269 to i32
  %272 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %270, i32 %271, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %273 = extractvalue %dx.types.ResRet.f32 %272, 0
  %274 = fadd fast float %273, %267
  %275 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %276 = add i32 %51, 156
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %288 = add i32 %51, 216
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %302 = add i32 %51, 36
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 65535
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = lshr i32 %304, 16
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %51, 288
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 65535
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = lshr i32 %311, 16
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = fmul fast float %313, 0x3F50624DE0000000
  %317 = fmul fast float %315, 0x3F50624DE0000000
  %318 = add i32 %51, 172
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = shl i32 %320, 4
  %322 = and i32 %321, 32752
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %320, 7
  %325 = and i32 %324, 32752
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %320, 22
  %328 = shl nuw nsw i32 %327, 5
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %51, 232
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 255
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = lshr i32 %332, 8
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %332, 16
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = add i32 %51, 52
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 65535
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = lshr i32 %346, 16
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = add i32 %51, 304
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 65535
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = lshr i32 %353, 16
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = fmul fast float %355, 0x3F50624DE0000000
  %359 = fmul fast float %357, 0x3F50624DE0000000
  %360 = add i32 %51, 188
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = shl i32 %362, 4
  %364 = and i32 %363, 32752
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %362, 7
  %367 = and i32 %366, 32752
  %368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %367)  ; LegacyF16ToF32(value)
  %369 = lshr i32 %362, 22
  %370 = shl nuw nsw i32 %369, 5
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = add i32 %51, 248
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 255
  %376 = uitofp i32 %375 to float
  %377 = fmul fast float %376, 0x3F70101020000000
  %378 = lshr i32 %374, 8
  %379 = and i32 %378, 255
  %380 = uitofp i32 %379 to float
  %381 = fmul fast float %380, 0x3F70101020000000
  %382 = lshr i32 %374, 16
  %383 = and i32 %382, 255
  %384 = uitofp i32 %383 to float
  %385 = fmul fast float %384, 0x3F70101020000000
  %386 = add i32 %51, 68
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 65535
  %390 = call float @dx.op.legacyF16ToF32(i32 131, i32 %389)  ; LegacyF16ToF32(value)
  %391 = lshr i32 %388, 16
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = add i32 %51, 320
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 65535
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = lshr i32 %395, 16
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = fmul fast float %397, 0x3F50624DE0000000
  %401 = fmul fast float %399, 0x3F50624DE0000000
  %402 = add i32 %51, 204
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = shl i32 %404, 4
  %406 = and i32 %405, 32752
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %404, 7
  %409 = and i32 %408, 32752
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = lshr i32 %404, 22
  %412 = shl nuw nsw i32 %411, 5
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = add i32 %51, 264
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F70101020000000
  %420 = lshr i32 %416, 8
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = lshr i32 %416, 16
  %425 = and i32 %424, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F70101020000000
  %428 = add i32 %51, 84
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = add i32 %51, 336
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 65535
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = lshr i32 %437, 16
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = fmul fast float %439, 0x3F50624DE0000000
  %443 = fmul fast float %441, 0x3F50624DE0000000
  %444 = add i32 %51, 348
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 32
  %448 = icmp eq i32 %447, 0
  %449 = and i32 %446, 64
  %450 = icmp eq i32 %449, 0
  %451 = and i32 %446, 128
  %452 = icmp eq i32 %451, 0
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 2
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %472, label %457

; <label>:457                                     ; preds = %263
  %458 = add i32 %51, 508
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = add i32 %460, 0
  %462 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %461, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %463 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %462, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = extractvalue %dx.types.ResRet.f32 %463, 1
  %466 = extractvalue %dx.types.ResRet.f32 %463, 2
  %467 = extractvalue %dx.types.ResRet.f32 %463, 3
  %468 = fmul fast float %467, %91
  %469 = fmul fast float %464, %92
  %470 = fmul fast float %465, %93
  %471 = fmul fast float %466, %94
  br label %472

; <label>:472                                     ; preds = %457, %263
  %473 = phi float [ %94, %263 ], [ %471, %457 ]
  %474 = phi float [ %93, %263 ], [ %470, %457 ]
  %475 = phi float [ %92, %263 ], [ %469, %457 ]
  %476 = phi float [ %91, %263 ], [ %468, %457 ]
  %477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.i32 %477, 0
  %479 = and i32 %478, 2
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %500, label %481

; <label>:481                                     ; preds = %472
  %482 = add i32 %51, 44
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 1
  %486 = icmp ne i32 %485, 0
  %487 = select i1 %486, float %475, float 1.000000e+00
  %488 = add i32 %51, 60
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 1
  %492 = icmp ne i32 %491, 0
  %493 = select i1 %492, float %474, float 1.000000e+00
  %494 = add i32 %51, 76
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 1
  %498 = icmp ne i32 %497, 0
  %499 = select i1 %498, float %473, float 1.000000e+00
  br label %500

; <label>:500                                     ; preds = %481, %472
  %501 = phi float [ %473, %472 ], [ %499, %481 ]
  %502 = phi float [ %474, %472 ], [ %493, %481 ]
  %503 = phi float [ %475, %472 ], [ %487, %481 ]
  %504 = lshr i32 %478, 20
  %505 = and i32 %504, 3
  %506 = add nuw nsw i32 %505, 1
  %507 = add i32 %51, 24
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = add i32 %51, 28
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = or i32 %512, %509
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %1160, label %515

; <label>:515                                     ; preds = %500
  %516 = and i32 %509, 262144
  %517 = icmp ne i32 %516, 0
  %518 = select i1 %517, float %57, float 1.000000e+00
  %519 = select i1 %517, float %58, float 0.000000e+00
  %520 = select i1 %517, float %59, float 0.000000e+00
  %521 = select i1 %517, float %60, float 1.000000e+00
  %522 = select i1 %517, float %61, float %89
  %523 = select i1 %517, float %62, float %90
  %524 = add i32 %51, 284
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = lshr i32 %526, 16
  %528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %527)  ; LegacyF16ToF32(value)
  %529 = fmul fast float %528, 0x3F50624DE0000000
  %530 = add i32 %51, 88
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = lshr i32 %532, 16
  %534 = and i32 %533, 255
  %535 = lshr i32 %532, 24
  %536 = add i32 %51, 292
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = and i32 %538, 65535
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = lshr i32 %538, 16
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = add i32 %51, 32
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = lshr i32 %545, 22
  %547 = shl nuw nsw i32 %546, 5
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = shl i32 %545, 4
  %550 = and i32 %549, 32752
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %545, 7
  %553 = and i32 %552, 32752
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 3
  %557 = fmul fast float %556, 1.000000e+03
  %558 = fmul fast float %316, %557
  %559 = call float @dx.op.unary.f32(i32 22, float %558)  ; Frc(value)
  %560 = fadd fast float %559, %306
  %561 = fmul fast float %317, %557
  %562 = call float @dx.op.unary.f32(i32 22, float %561)  ; Frc(value)
  %563 = fadd fast float %562, %308
  %564 = fmul fast float %529, %557
  %565 = call float @dx.op.unary.f32(i32 22, float %564)  ; Frc(value)
  %566 = fmul fast float %565, 0x401921FB60000000
  %567 = fadd fast float %566, %548
  %568 = call float @dx.op.unary.f32(i32 13, float %567)  ; Sin(value)
  %569 = call float @dx.op.unary.f32(i32 12, float %567)  ; Cos(value)
  %570 = fsub fast float -0.000000e+00, %568
  %571 = fadd fast float %522, -5.000000e-01
  %572 = fadd fast float %523, -5.000000e-01
  %573 = fmul fast float %540, %571
  %574 = fmul fast float %542, %572
  %575 = fadd fast float %573, 5.000000e-01
  %576 = fadd fast float %574, 5.000000e-01
  %577 = fmul fast float %551, %575
  %578 = fmul fast float %554, %576
  %579 = fmul fast float %569, %577
  %580 = call float @dx.op.tertiary.f32(i32 46, float %570, float %578, float %579)  ; FMad(a,b,c)
  %581 = fmul fast float %568, %577
  %582 = call float @dx.op.tertiary.f32(i32 46, float %569, float %578, float %581)  ; FMad(a,b,c)
  %583 = fadd fast float %560, %580
  %584 = fadd fast float %563, %582
  %585 = icmp ugt i32 %534, 1
  %586 = icmp ugt i32 %532, 33554431
  %587 = or i1 %586, %585
  br i1 %587, label %588, label %613

; <label>:588                                     ; preds = %515
  %589 = add i32 %51, 228
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %591, 16
  %593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %592)  ; LegacyF16ToF32(value)
  %594 = fmul fast float %556, %593
  %595 = call float @dx.op.unary.f32(i32 22, float %594)  ; Frc(value)
  %596 = mul nuw nsw i32 %534, %535
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %595, %597
  %599 = call float @dx.op.unary.f32(i32 27, float %598)  ; Round_ni(value)
  %600 = fptoui float %599 to i32
  %601 = urem i32 %600, %534
  %602 = udiv i32 %600, %535
  %603 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %604 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %605 = uitofp i32 %601 to float
  %606 = uitofp i32 %602 to float
  %607 = fadd fast float %603, %605
  %608 = fadd fast float %604, %606
  %609 = uitofp i32 %534 to float
  %610 = uitofp i32 %535 to float
  %611 = fdiv fast float %607, %609
  %612 = fdiv fast float %608, %610
  br label %613

; <label>:613                                     ; preds = %588, %515
  %614 = phi float [ %611, %588 ], [ %583, %515 ]
  %615 = phi float [ %612, %588 ], [ %584, %515 ]
  %616 = and i32 %509, 256
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %664, label %618

; <label>:618                                     ; preds = %613
  %619 = add i32 %51, 440
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = add i32 %621, 0
  %623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %622, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %623, %dx.types.Handle %108, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = add i32 %51, 100
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = shl i32 %628, 4
  %630 = and i32 %629, 32752
  %631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %630)  ; LegacyF16ToF32(value)
  %632 = lshr i32 %628, 7
  %633 = and i32 %632, 32752
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = fsub fast float 1.000000e+00, %476
  %636 = call float @dx.op.binary.f32(i32 35, float %635, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %637 = bitcast float %476 to i32
  %638 = sitofp i32 %637 to float
  %639 = fadd fast float %638, 0xC1CFBF8940000000
  %640 = fmul fast float %634, %639
  %641 = fadd fast float %640, 0x41CFBF8940000000
  %642 = fptosi float %641 to i32
  %643 = bitcast i32 %642 to float
  %644 = bitcast float %636 to i32
  %645 = sitofp i32 %644 to float
  %646 = fadd fast float %645, 0xC1CFBF8940000000
  %647 = fmul fast float %646, %634
  %648 = fadd fast float %647, 0x41CFBF8940000000
  %649 = fptosi float %648 to i32
  %650 = bitcast i32 %649 to float
  %651 = fmul fast float %643, %631
  %652 = fmul fast float %650, %631
  %653 = fsub fast float %636, %651
  %654 = fadd fast float %652, %636
  %655 = call float @dx.op.unary.f32(i32 7, float %653)  ; Saturate(value)
  %656 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %657 = fsub fast float %625, %655
  %658 = fsub fast float %656, %655
  %659 = bitcast float %658 to i32
  %660 = sub nsw i32 2129859010, %659
  %661 = bitcast i32 %660 to float
  %662 = fmul fast float %661, %657
  %663 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  br label %664

; <label>:664                                     ; preds = %618, %613
  %665 = phi float [ %663, %618 ], [ %476, %613 ]
  %666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %667 = extractvalue %dx.types.ResRet.i32 %666, 0
  %668 = and i32 %667, 128
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %686, label %670

; <label>:670                                     ; preds = %664
  %671 = add i32 %51, 424
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = add i32 %673, 0
  %675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %674, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %676 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %675, %dx.types.Handle %108, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.i32 %678, 0
  %680 = and i32 %679, 524288
  %681 = icmp ne i32 %680, 0
  %682 = fcmp fast ogt float %677, 0x3FE0101020000000
  %683 = select i1 %682, float 1.000000e+00, float 0.000000e+00
  %684 = select i1 %681, float %683, float %677
  %685 = fmul fast float %684, %665
  br label %686

; <label>:686                                     ; preds = %670, %664
  %687 = phi float [ %685, %670 ], [ %665, %664 ]
  %688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.i32 %688, 0
  %690 = and i32 %689, 16
  %691 = icmp eq i32 %690, 0
  br i1 %691, label %890, label %692

; <label>:692                                     ; preds = %686
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = add i32 %51, 376
  %696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.i32 %696, 0
  %698 = add i32 %697, 0
  %699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %700 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %699, %dx.types.Handle %107, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = extractvalue %dx.types.ResRet.f32 %700, 1
  %703 = extractvalue %dx.types.ResRet.f32 %700, 2
  %704 = extractvalue %dx.types.ResRet.f32 %700, 3
  %705 = and i32 %694, 255
  %706 = uitofp i32 %705 to float
  %707 = lshr i32 %694, 8
  %708 = and i32 %707, 255
  %709 = uitofp i32 %708 to float
  %710 = fmul fast float %704, %706
  %711 = fadd fast float %710, %709
  %712 = fmul fast float %711, 0x3F70101000000000
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 512
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %725, label %717

; <label>:717                                     ; preds = %692
  %718 = add i32 %51, 460
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = add i32 %720, 0
  %722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %721, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %723 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %722, %dx.types.Handle %108, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  br label %725

; <label>:725                                     ; preds = %717, %692
  %726 = phi float [ %724, %717 ], [ 1.000000e+00, %692 ]
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = and i32 %728, 33554432
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %837, label %731

; <label>:731                                     ; preds = %725
  %732 = add i32 %51, 224
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = and i32 %734, 65535
  %736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %735)  ; LegacyF16ToF32(value)
  %737 = lshr i32 %734, 16
  %738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %737)  ; LegacyF16ToF32(value)
  %739 = add i32 %51, 228
  %740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %739, i32 undef)  ; BufferLoad(srv,index,wot)
  %741 = extractvalue %dx.types.ResRet.i32 %740, 0
  %742 = and i32 %741, 65535
  %743 = call float @dx.op.legacyF16ToF32(i32 131, i32 %742)  ; LegacyF16ToF32(value)
  %744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %760 = add i32 %51, 220
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = lshr i32 %762, 24
  %764 = uitofp i32 %763 to float
  %765 = fmul fast float %764, 0x3F70101020000000
  %766 = and i32 %762, 255
  %767 = uitofp i32 %766 to float
  %768 = fmul fast float %767, 0x3F70101020000000
  %769 = lshr i32 %762, 8
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = fmul fast float %771, 0x3F70101020000000
  %773 = lshr i32 %762, 16
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = bitcast float %701 to i32
  %778 = ashr i32 %777, 1
  %779 = sub nsw i32 1597463174, %778
  %780 = bitcast i32 %779 to float
  %781 = fmul fast float %701, 5.000000e-01
  %782 = fmul fast float %780, %780
  %783 = fmul fast float %782, %781
  %784 = fsub fast float 1.500000e+00, %783
  %785 = fmul fast float %780, %701
  %786 = fmul fast float %785, %784
  %787 = bitcast float %702 to i32
  %788 = ashr i32 %787, 1
  %789 = sub nsw i32 1597463174, %788
  %790 = bitcast i32 %789 to float
  %791 = fmul fast float %702, 5.000000e-01
  %792 = fmul fast float %790, %790
  %793 = fmul fast float %792, %791
  %794 = fsub fast float 1.500000e+00, %793
  %795 = fmul fast float %790, %702
  %796 = fmul fast float %795, %794
  %797 = bitcast float %703 to i32
  %798 = ashr i32 %797, 1
  %799 = sub nsw i32 1597463174, %798
  %800 = bitcast i32 %799 to float
  %801 = fmul fast float %703, 5.000000e-01
  %802 = fmul fast float %800, %800
  %803 = fmul fast float %802, %801
  %804 = fsub fast float 1.500000e+00, %803
  %805 = fmul fast float %800, %703
  %806 = fmul fast float %805, %804
  %807 = fsub fast float %786, %768
  %808 = fsub fast float %796, %772
  %809 = fsub fast float %806, %776
  %810 = fmul fast float %807, %736
  %811 = fmul fast float %808, %738
  %812 = fmul fast float %809, %743
  %813 = fadd fast float %810, %751
  %814 = fadd fast float %811, %755
  %815 = fadd fast float %812, %759
  %816 = call float @dx.op.unary.f32(i32 7, float %813)  ; Saturate(value)
  %817 = call float @dx.op.unary.f32(i32 7, float %814)  ; Saturate(value)
  %818 = call float @dx.op.unary.f32(i32 7, float %815)  ; Saturate(value)
  %819 = fmul fast float %816, %816
  %820 = fmul fast float %817, %817
  %821 = fmul fast float %818, %818
  %822 = fsub fast float %819, %701
  %823 = fsub fast float %820, %702
  %824 = fsub fast float %821, %703
  %825 = fmul fast float %822, %726
  %826 = fmul fast float %823, %726
  %827 = fmul fast float %824, %726
  %828 = fadd fast float %825, %701
  %829 = fadd fast float %826, %702
  %830 = fadd fast float %827, %703
  %831 = fadd fast float %748, %712
  %832 = fsub fast float %831, %765
  %833 = call float @dx.op.unary.f32(i32 7, float %832)  ; Saturate(value)
  %834 = fsub fast float %833, %712
  %835 = fmul fast float %834, %726
  %836 = fadd fast float %835, %712
  br label %890

; <label>:837                                     ; preds = %725
  %838 = and i32 %728, 134217728
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %874, label %840

; <label>:840                                     ; preds = %837
  %841 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %842 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %843 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %844 = fadd fast float %841, -5.000000e-01
  %845 = fadd fast float %842, -5.000000e-01
  %846 = fadd fast float %843, -5.000000e-01
  %847 = fmul fast float %844, %726
  %848 = fmul fast float %845, %726
  %849 = fmul fast float %846, %726
  %850 = fadd fast float %847, 5.000000e-01
  %851 = fadd fast float %848, 5.000000e-01
  %852 = fadd fast float %849, 5.000000e-01
  %853 = call float @dx.op.unary.f32(i32 24, float %701)  ; Sqrt(value)
  %854 = call float @dx.op.unary.f32(i32 24, float %702)  ; Sqrt(value)
  %855 = call float @dx.op.unary.f32(i32 24, float %703)  ; Sqrt(value)
  %856 = fmul fast float %850, 2.000000e+00
  %857 = fsub fast float 1.000000e+00, %856
  %858 = fmul fast float %857, %853
  %859 = fadd fast float %858, %856
  %860 = fmul fast float %859, %853
  %861 = fmul fast float %851, 2.000000e+00
  %862 = fsub fast float 1.000000e+00, %861
  %863 = fmul fast float %862, %854
  %864 = fadd fast float %863, %861
  %865 = fmul fast float %864, %854
  %866 = fmul fast float %852, 2.000000e+00
  %867 = fsub fast float 1.000000e+00, %866
  %868 = fmul fast float %867, %855
  %869 = fadd fast float %868, %866
  %870 = fmul fast float %869, %855
  %871 = fmul fast float %860, %860
  %872 = fmul fast float %865, %865
  %873 = fmul fast float %870, %870
  br label %890

; <label>:874                                     ; preds = %837
  %875 = fmul fast float %293, %293
  %876 = fmul fast float %297, %297
  %877 = fmul fast float %301, %301
  %878 = fadd fast float %875, -1.000000e+00
  %879 = fadd fast float %876, -1.000000e+00
  %880 = fadd fast float %877, -1.000000e+00
  %881 = fmul fast float %726, %878
  %882 = fmul fast float %726, %879
  %883 = fmul fast float %726, %880
  %884 = fadd fast float %881, 1.000000e+00
  %885 = fadd fast float %882, 1.000000e+00
  %886 = fadd fast float %883, 1.000000e+00
  %887 = fmul fast float %884, %701
  %888 = fmul fast float %885, %702
  %889 = fmul fast float %886, %703
  br label %890

; <label>:890                                     ; preds = %874, %840, %731, %686
  %891 = phi float [ %836, %731 ], [ %712, %840 ], [ %712, %874 ], [ 0x3FA23C0BE0000000, %686 ]
  %892 = phi float [ %828, %731 ], [ %871, %840 ], [ %887, %874 ], [ 1.000000e+00, %686 ]
  %893 = phi float [ %829, %731 ], [ %872, %840 ], [ %888, %874 ], [ 1.000000e+00, %686 ]
  %894 = phi float [ %830, %731 ], [ %873, %840 ], [ %889, %874 ], [ 1.000000e+00, %686 ]
  %895 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %896 = extractvalue %dx.types.CBufRet.i32 %895, 1
  %897 = and i32 %896, 1
  %898 = icmp ne i32 %897, 0
  %899 = add i32 %51, 356
  %900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %899, i32 undef)  ; BufferLoad(srv,index,wot)
  %901 = extractvalue %dx.types.ResRet.i32 %900, 0
  %902 = and i32 %901, 32
  %903 = icmp ne i32 %902, 0
  %904 = and i1 %898, %903
  %905 = select i1 %904, float 1.000000e+00, float %892
  %906 = select i1 %904, float 0x3FD3333340000000, float %893
  %907 = select i1 %904, float 0x3FD3333340000000, float %894
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 32
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %984, label %912

; <label>:912                                     ; preds = %890
  %913 = add i32 %51, 92
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = add i32 %51, 392
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = add i32 %918, 0
  %920 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %919, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %921 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %920, %dx.types.Handle %107, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %922 = extractvalue %dx.types.ResRet.f32 %921, 0
  %923 = extractvalue %dx.types.ResRet.f32 %921, 1
  %924 = extractvalue %dx.types.ResRet.f32 %921, 2
  %925 = extractvalue %dx.types.ResRet.f32 %921, 3
  %926 = and i32 %915, 255
  %927 = uitofp i32 %926 to float
  %928 = lshr i32 %915, 8
  %929 = and i32 %928, 255
  %930 = uitofp i32 %929 to float
  %931 = lshr i32 %915, 16
  %932 = and i32 %931, 255
  %933 = uitofp i32 %932 to float
  %934 = fmul fast float %933, 0x3F70101000000000
  %935 = fmul fast float %922, %927
  %936 = fadd fast float %935, %930
  %937 = fmul fast float %936, 0x3F70101000000000
  %938 = fadd fast float %923, -5.000000e-01
  %939 = fadd fast float %925, -5.000000e-01
  %940 = fmul fast float %938, %934
  %941 = fmul fast float %939, %934
  %942 = fadd fast float %940, 5.000000e-01
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fmul fast float %942, 2.000000e+00
  %945 = fadd fast float %944, -1.000000e+00
  %946 = fmul fast float %943, 2.000000e+00
  %947 = fadd fast float %946, -1.000000e+00
  %948 = fadd fast float %945, %947
  %949 = fmul fast float %948, 5.000000e-01
  %950 = fsub fast float %945, %947
  %951 = fmul fast float %950, 5.000000e-01
  %952 = call float @dx.op.unary.f32(i32 6, float %949)  ; FAbs(value)
  %953 = fsub fast float 1.000000e+00, %952
  %954 = call float @dx.op.unary.f32(i32 6, float %951)  ; FAbs(value)
  %955 = fsub fast float %953, %954
  %956 = call float @dx.op.dot3.f32(i32 55, float %949, float %951, float %955, float %949, float %951, float %955)  ; Dot3(ax,ay,az,bx,by,bz)
  %957 = call float @dx.op.unary.f32(i32 25, float %956)  ; Rsqrt(value)
  %958 = fmul fast float %949, %957
  %959 = fmul fast float %951, %957
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = and i32 %961, 67108864
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %980, label %964

; <label>:964                                     ; preds = %912
  %965 = add i32 %51, 280
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = and i32 %967, 65535
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 65535
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = lshr i32 %967, 16
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = fsub fast float %937, %975
  %977 = fmul fast float %976, %969
  %978 = fadd fast float %977, %973
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  br label %980

; <label>:980                                     ; preds = %964, %912
  %981 = phi float [ %979, %964 ], [ %937, %912 ]
  %982 = call float @dx.op.dot2.f32(i32 54, float %958, float %959, float %518, float %519)  ; Dot2(ax,ay,bx,by)
  %983 = call float @dx.op.dot2.f32(i32 54, float %958, float %959, float %520, float %521)  ; Dot2(ax,ay,bx,by)
  br label %984

; <label>:984                                     ; preds = %980, %890
  %985 = phi float [ %981, %980 ], [ 0x3FD6666660000000, %890 ]
  %986 = phi float [ %982, %980 ], [ 0.000000e+00, %890 ]
  %987 = phi float [ %983, %980 ], [ 0.000000e+00, %890 ]
  %988 = phi float [ %924, %980 ], [ 1.000000e+00, %890 ]
  %989 = add i32 %51, 160
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = lshr i32 %991, 22
  %993 = shl nuw nsw i32 %992, 5
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.i32 %995, 0
  %997 = and i32 %996, 64
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %1032, label %999

; <label>:999                                     ; preds = %984
  %1000 = add i32 %51, 408
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = add i32 %1002, 0
  %1004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = and i32 %1006, 131072
  %1008 = icmp eq i32 %1007, 0
  %1009 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1004, %dx.types.Handle %107, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.ResRet.f32 %1009, 1
  %1012 = extractvalue %dx.types.ResRet.f32 %1009, 2
  %1013 = fmul fast float %1010, %281
  %1014 = fmul fast float %1011, %284
  %1015 = fmul fast float %1012, %287
  br i1 %1008, label %1022, label %1016

; <label>:1016                                    ; preds = %999
  %1017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1018 = extractvalue %dx.types.CBufRet.f32 %1017, 0
  %1019 = fmul fast float %1018, %1013
  %1020 = fmul fast float %1018, %1014
  %1021 = fmul fast float %1018, %1015
  br label %1022

; <label>:1022                                    ; preds = %1016, %999
  %1023 = phi float [ %1019, %1016 ], [ %1013, %999 ]
  %1024 = phi float [ %1020, %1016 ], [ %1014, %999 ]
  %1025 = phi float [ %1021, %1016 ], [ %1015, %999 ]
  %1026 = fmul fast float %1023, %994
  %1027 = select i1 %264, float %1026, float %1023
  %1028 = call float @dx.op.dot3.f32(i32 55, float %1027, float %1024, float %1025, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = select i1 %264, float 0.000000e+00, float %1023
  %1030 = select i1 %264, float %1028, float %1024
  %1031 = select i1 %264, float 0.000000e+00, float %1025
  br label %1032

; <label>:1032                                    ; preds = %1022, %984
  %1033 = phi float [ %1029, %1022 ], [ 0.000000e+00, %984 ]
  %1034 = phi float [ %1030, %1022 ], [ 0.000000e+00, %984 ]
  %1035 = phi float [ %1031, %1022 ], [ 0.000000e+00, %984 ]
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %1037, 1024
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1070, label %1040

; <label>:1040                                    ; preds = %1032
  %1041 = add i32 %51, 152
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 255
  %1045 = uitofp i32 %1044 to float
  %1046 = fmul fast float %1045, 0x3F70101020000000
  %1047 = lshr i32 %1043, 8
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = fmul fast float %1049, 0x3F70101020000000
  %1051 = lshr i32 %1043, 16
  %1052 = and i32 %1051, 255
  %1053 = uitofp i32 %1052 to float
  %1054 = fmul fast float %1053, 0x3F70101020000000
  %1055 = fmul fast float %1046, %1046
  %1056 = fmul fast float %1050, %1050
  %1057 = fmul fast float %1054, %1054
  %1058 = add i32 %51, 476
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = add i32 %1060, 0
  %1062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1062, %dx.types.Handle %108, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1064 = extractvalue %dx.types.ResRet.f32 %1063, 0
  %1065 = extractvalue %dx.types.ResRet.f32 %1063, 1
  %1066 = extractvalue %dx.types.ResRet.f32 %1063, 2
  %1067 = fmul fast float %1055, %1064
  %1068 = fmul fast float %1056, %1065
  %1069 = fmul fast float %1057, %1066
  br label %1070

; <label>:1070                                    ; preds = %1040, %1032
  %1071 = phi float [ %1067, %1040 ], [ 0.000000e+00, %1032 ]
  %1072 = phi float [ %1068, %1040 ], [ 0.000000e+00, %1032 ]
  %1073 = phi float [ %1069, %1040 ], [ 0.000000e+00, %1032 ]
  %1074 = fcmp fast ogt float %1071, 0.000000e+00
  %1075 = fcmp fast ogt float %1072, 0.000000e+00
  %1076 = fcmp fast ogt float %1073, 0.000000e+00
  %1077 = call float @dx.op.unary.f32(i32 23, float %1071)  ; Log(value)
  %1078 = call float @dx.op.unary.f32(i32 23, float %1072)  ; Log(value)
  %1079 = call float @dx.op.unary.f32(i32 23, float %1073)  ; Log(value)
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = lshr i32 %1081, 7
  %1083 = and i32 %1082, 32752
  %1084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1083)  ; LegacyF16ToF32(value)
  %1085 = fmul fast float %1077, 0xBFE62E4300000000
  %1086 = fmul fast float %1085, %1084
  %1087 = fmul fast float %1078, 0xBFE62E4300000000
  %1088 = fmul fast float %1087, %1084
  %1089 = fmul fast float %1079, 0xBFE62E4300000000
  %1090 = fmul fast float %1089, %1084
  %1091 = select i1 %1074, float %1086, float 1.270000e+02
  %1092 = select i1 %1075, float %1088, float 1.270000e+02
  %1093 = select i1 %1076, float %1090, float 1.270000e+02
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 10240
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1142, label %1098

; <label>:1098                                    ; preds = %1070
  %1099 = add i32 %51, 492
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1103, %dx.types.Handle %108, float %614, float %615, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 1
  %1106 = extractvalue %dx.types.ResRet.f32 %1104, 3
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = and i32 %1108, 1048576
  %1110 = icmp ne i32 %1109, 0
  %1111 = and i32 %1108, 8192
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1128, label %1113

; <label>:1113                                    ; preds = %1098
  %1114 = extractvalue %dx.types.ResRet.f32 %1104, 2
  %1115 = select i1 %1110, float %1114, float %1105
  %1116 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1117 = select i1 %1110, float %1116, float %1105
  %1118 = add i32 %51, 96
  %1119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1118, i32 undef)  ; BufferLoad(srv,index,wot)
  %1120 = extractvalue %dx.types.ResRet.i32 %1119, 0
  %1121 = lshr i32 %1120, 16
  %1122 = and i32 %1121, 255
  %1123 = uitofp i32 %1122 to float
  %1124 = fmul fast float %1123, 0x3F80101020000000
  %1125 = fmul fast float %1124, %1117
  %1126 = fmul fast float %1124, %1105
  %1127 = fmul fast float %1124, %1115
  br label %1128

; <label>:1128                                    ; preds = %1113, %1098
  %1129 = phi float [ %1125, %1113 ], [ 0.000000e+00, %1098 ]
  %1130 = phi float [ %1126, %1113 ], [ 0.000000e+00, %1098 ]
  %1131 = phi float [ %1127, %1113 ], [ 0.000000e+00, %1098 ]
  %1132 = and i32 %1108, 2048
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1142, label %1134

; <label>:1134                                    ; preds = %1128
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = shl i32 %1136, 4
  %1138 = and i32 %1137, 32752
  %1139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1138)  ; LegacyF16ToF32(value)
  %1140 = fmul fast float %1139, %1106
  %1141 = call float @dx.op.binary.f32(i32 35, float %1140, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1142

; <label>:1142                                    ; preds = %1134, %1128, %1070
  %1143 = phi float [ %1129, %1134 ], [ %1129, %1128 ], [ 0.000000e+00, %1070 ]
  %1144 = phi float [ %1130, %1134 ], [ %1130, %1128 ], [ 0.000000e+00, %1070 ]
  %1145 = phi float [ %1131, %1134 ], [ %1131, %1128 ], [ 0.000000e+00, %1070 ]
  %1146 = phi float [ %1141, %1134 ], [ 0x3F70101020000000, %1128 ], [ 0x3F70101020000000, %1070 ]
  %1147 = add i32 %51, 96
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = and i32 %1149, 255
  %1151 = uitofp i32 %1150 to float
  %1152 = lshr i32 %1149, 8
  %1153 = and i32 %1152, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = call float @dx.op.dot3.f32(i32 55, float %905, float %906, float %907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1156 = fmul fast float %1154, %1155
  %1157 = fadd fast float %1156, %1151
  %1158 = fmul fast float %1157, 0x3F70101020000000
  %1159 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  br label %1160

; <label>:1160                                    ; preds = %1142, %500
  %1161 = phi float [ 0.000000e+00, %500 ], [ %986, %1142 ]
  %1162 = phi float [ 0.000000e+00, %500 ], [ %987, %1142 ]
  %1163 = phi float [ 0.000000e+00, %500 ], [ %905, %1142 ]
  %1164 = phi float [ 0.000000e+00, %500 ], [ %906, %1142 ]
  %1165 = phi float [ 0.000000e+00, %500 ], [ %907, %1142 ]
  %1166 = phi float [ 0.000000e+00, %500 ], [ %1143, %1142 ]
  %1167 = phi float [ 0.000000e+00, %500 ], [ %1144, %1142 ]
  %1168 = phi float [ 0.000000e+00, %500 ], [ %1145, %1142 ]
  %1169 = phi float [ 0.000000e+00, %500 ], [ %1091, %1142 ]
  %1170 = phi float [ 0.000000e+00, %500 ], [ %1092, %1142 ]
  %1171 = phi float [ 0.000000e+00, %500 ], [ %1093, %1142 ]
  %1172 = phi float [ 0.000000e+00, %500 ], [ %1033, %1142 ]
  %1173 = phi float [ 0.000000e+00, %500 ], [ %1034, %1142 ]
  %1174 = phi float [ 0.000000e+00, %500 ], [ %1035, %1142 ]
  %1175 = phi float [ 0.000000e+00, %500 ], [ %891, %1142 ]
  %1176 = phi float [ 0.000000e+00, %500 ], [ %687, %1142 ]
  %1177 = phi float [ 0.000000e+00, %500 ], [ %985, %1142 ]
  %1178 = phi float [ 0.000000e+00, %500 ], [ %988, %1142 ]
  %1179 = phi float [ 0.000000e+00, %500 ], [ %1146, %1142 ]
  %1180 = phi float [ 0.000000e+00, %500 ], [ %1159, %1142 ]
  br i1 %448, label %2103, label %1181

; <label>:1181                                    ; preds = %1160
  %1182 = icmp ult i32 %506, 2
  %1183 = add i32 %51, 40
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = add i32 %51, 44
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = or i32 %1188, %1185
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %2103, label %1191

; <label>:1191                                    ; preds = %1181
  %1192 = and i32 %1185, 262144
  %1193 = icmp ne i32 %1192, 0
  %1194 = select i1 %1193, float %57, float 1.000000e+00
  %1195 = select i1 %1193, float %58, float 0.000000e+00
  %1196 = select i1 %1193, float %59, float 0.000000e+00
  %1197 = select i1 %1193, float %60, float 1.000000e+00
  %1198 = select i1 %1193, float %61, float %89
  %1199 = select i1 %1193, float %62, float %90
  %1200 = add i32 %51, 300
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = lshr i32 %1202, 16
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = fmul fast float %1204, 0x3F50624DE0000000
  %1206 = add i32 %51, 104
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = lshr i32 %1208, 16
  %1210 = and i32 %1209, 255
  %1211 = lshr i32 %1208, 24
  %1212 = add i32 %51, 308
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = lshr i32 %1214, 16
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = add i32 %51, 48
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = lshr i32 %1221, 22
  %1223 = shl nuw nsw i32 %1222, 5
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = shl i32 %1221, 4
  %1226 = and i32 %1225, 32752
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = lshr i32 %1221, 7
  %1229 = and i32 %1228, 32752
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1232 = extractvalue %dx.types.CBufRet.f32 %1231, 3
  %1233 = fmul fast float %1232, 1.000000e+03
  %1234 = fmul fast float %358, %1233
  %1235 = call float @dx.op.unary.f32(i32 22, float %1234)  ; Frc(value)
  %1236 = fadd fast float %1235, %348
  %1237 = fmul fast float %359, %1233
  %1238 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1239 = fadd fast float %1238, %350
  %1240 = fmul fast float %1205, %1233
  %1241 = call float @dx.op.unary.f32(i32 22, float %1240)  ; Frc(value)
  %1242 = fmul fast float %1241, 0x401921FB60000000
  %1243 = fadd fast float %1242, %1224
  %1244 = call float @dx.op.unary.f32(i32 13, float %1243)  ; Sin(value)
  %1245 = call float @dx.op.unary.f32(i32 12, float %1243)  ; Cos(value)
  %1246 = fsub fast float -0.000000e+00, %1244
  %1247 = fadd fast float %1198, -5.000000e-01
  %1248 = fadd fast float %1199, -5.000000e-01
  %1249 = fmul fast float %1216, %1247
  %1250 = fmul fast float %1218, %1248
  %1251 = fadd fast float %1249, 5.000000e-01
  %1252 = fadd fast float %1250, 5.000000e-01
  %1253 = fmul fast float %1227, %1251
  %1254 = fmul fast float %1230, %1252
  %1255 = fmul fast float %1245, %1253
  %1256 = call float @dx.op.tertiary.f32(i32 46, float %1246, float %1254, float %1255)  ; FMad(a,b,c)
  %1257 = fmul fast float %1244, %1253
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %1245, float %1254, float %1257)  ; FMad(a,b,c)
  %1259 = fadd fast float %1236, %1256
  %1260 = fadd fast float %1239, %1258
  %1261 = icmp ugt i32 %1210, 1
  %1262 = icmp ugt i32 %1208, 33554431
  %1263 = or i1 %1262, %1261
  br i1 %1263, label %1264, label %1289

; <label>:1264                                    ; preds = %1191
  %1265 = add i32 %51, 244
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = lshr i32 %1267, 16
  %1269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1268)  ; LegacyF16ToF32(value)
  %1270 = fmul fast float %1232, %1269
  %1271 = call float @dx.op.unary.f32(i32 22, float %1270)  ; Frc(value)
  %1272 = mul nuw nsw i32 %1210, %1211
  %1273 = uitofp i32 %1272 to float
  %1274 = fmul fast float %1271, %1273
  %1275 = call float @dx.op.unary.f32(i32 27, float %1274)  ; Round_ni(value)
  %1276 = fptoui float %1275 to i32
  %1277 = urem i32 %1276, %1210
  %1278 = udiv i32 %1276, %1211
  %1279 = call float @dx.op.unary.f32(i32 22, float %1259)  ; Frc(value)
  %1280 = call float @dx.op.unary.f32(i32 22, float %1260)  ; Frc(value)
  %1281 = uitofp i32 %1277 to float
  %1282 = uitofp i32 %1278 to float
  %1283 = fadd fast float %1279, %1281
  %1284 = fadd fast float %1280, %1282
  %1285 = uitofp i32 %1210 to float
  %1286 = uitofp i32 %1211 to float
  %1287 = fdiv fast float %1283, %1285
  %1288 = fdiv fast float %1284, %1286
  br label %1289

; <label>:1289                                    ; preds = %1264, %1191
  %1290 = phi float [ %1287, %1264 ], [ %1259, %1191 ]
  %1291 = phi float [ %1288, %1264 ], [ %1260, %1191 ]
  %1292 = and i32 %1185, 256
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1340, label %1294

; <label>:1294                                    ; preds = %1289
  %1295 = add i32 %51, 444
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = add i32 %1297, 0
  %1299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1299, %dx.types.Handle %108, float %1290, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  %1302 = add i32 %51, 116
  %1303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1302, i32 undef)  ; BufferLoad(srv,index,wot)
  %1304 = extractvalue %dx.types.ResRet.i32 %1303, 0
  %1305 = shl i32 %1304, 4
  %1306 = and i32 %1305, 32752
  %1307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1306)  ; LegacyF16ToF32(value)
  %1308 = lshr i32 %1304, 7
  %1309 = and i32 %1308, 32752
  %1310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1309)  ; LegacyF16ToF32(value)
  %1311 = fsub fast float 1.000000e+00, %503
  %1312 = call float @dx.op.binary.f32(i32 35, float %1311, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1313 = bitcast float %503 to i32
  %1314 = sitofp i32 %1313 to float
  %1315 = fadd fast float %1314, 0xC1CFBF8940000000
  %1316 = fmul fast float %1310, %1315
  %1317 = fadd fast float %1316, 0x41CFBF8940000000
  %1318 = fptosi float %1317 to i32
  %1319 = bitcast i32 %1318 to float
  %1320 = bitcast float %1312 to i32
  %1321 = sitofp i32 %1320 to float
  %1322 = fadd fast float %1321, 0xC1CFBF8940000000
  %1323 = fmul fast float %1322, %1310
  %1324 = fadd fast float %1323, 0x41CFBF8940000000
  %1325 = fptosi float %1324 to i32
  %1326 = bitcast i32 %1325 to float
  %1327 = fmul fast float %1319, %1307
  %1328 = fmul fast float %1326, %1307
  %1329 = fsub fast float %1312, %1327
  %1330 = fadd fast float %1328, %1312
  %1331 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1332 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1333 = fsub fast float %1301, %1331
  %1334 = fsub fast float %1332, %1331
  %1335 = bitcast float %1334 to i32
  %1336 = sub nsw i32 2129859010, %1335
  %1337 = bitcast i32 %1336 to float
  %1338 = fmul fast float %1337, %1333
  %1339 = call float @dx.op.unary.f32(i32 7, float %1338)  ; Saturate(value)
  br label %1340

; <label>:1340                                    ; preds = %1294, %1289
  %1341 = phi float [ %1339, %1294 ], [ %503, %1289 ]
  %1342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.i32 %1342, 0
  %1344 = and i32 %1343, 128
  %1345 = icmp eq i32 %1344, 0
  br i1 %1345, label %1362, label %1346

; <label>:1346                                    ; preds = %1340
  %1347 = add i32 %51, 428
  %1348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1347, i32 undef)  ; BufferLoad(srv,index,wot)
  %1349 = extractvalue %dx.types.ResRet.i32 %1348, 0
  %1350 = add i32 %1349, 0
  %1351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1351, %dx.types.Handle %108, float %1290, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1355 = extractvalue %dx.types.ResRet.i32 %1354, 0
  %1356 = and i32 %1355, 524288
  %1357 = icmp ne i32 %1356, 0
  %1358 = fcmp fast ogt float %1353, 0x3FE0101020000000
  %1359 = select i1 %1358, float 1.000000e+00, float 0.000000e+00
  %1360 = select i1 %1357, float %1359, float %1353
  %1361 = fmul fast float %1360, %1341
  br label %1362

; <label>:1362                                    ; preds = %1346, %1340
  %1363 = phi float [ %1361, %1346 ], [ %1341, %1340 ]
  %1364 = fcmp fast ult float %1363, 0x3F70101020000000
  br i1 %1364, label %2103, label %1365

; <label>:1365                                    ; preds = %1362
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = and i32 %1367, 16
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1568, label %1370

; <label>:1370                                    ; preds = %1365
  %1371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.i32 %1371, 0
  %1373 = add i32 %51, 380
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = add i32 %1375, 0
  %1377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1376, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1378 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1377, %dx.types.Handle %107, float %1290, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1379 = extractvalue %dx.types.ResRet.f32 %1378, 0
  %1380 = extractvalue %dx.types.ResRet.f32 %1378, 1
  %1381 = extractvalue %dx.types.ResRet.f32 %1378, 2
  %1382 = extractvalue %dx.types.ResRet.f32 %1378, 3
  %1383 = and i32 %1372, 255
  %1384 = uitofp i32 %1383 to float
  %1385 = lshr i32 %1372, 8
  %1386 = and i32 %1385, 255
  %1387 = uitofp i32 %1386 to float
  %1388 = fmul fast float %1382, %1384
  %1389 = fadd fast float %1388, %1387
  %1390 = fmul fast float %1389, 0x3F70101000000000
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 512
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1403, label %1395

; <label>:1395                                    ; preds = %1370
  %1396 = add i32 %51, 464
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = add i32 %1398, 0
  %1400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1400, %dx.types.Handle %108, float %1290, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  br label %1403

; <label>:1403                                    ; preds = %1395, %1370
  %1404 = phi float [ %1402, %1395 ], [ 1.000000e+00, %1370 ]
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = and i32 %1406, 33554432
  %1408 = icmp eq i32 %1407, 0
  br i1 %1408, label %1515, label %1409

; <label>:1409                                    ; preds = %1403
  %1410 = add i32 %51, 240
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1410, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 65535
  %1414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1413)  ; LegacyF16ToF32(value)
  %1415 = lshr i32 %1412, 16
  %1416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1415)  ; LegacyF16ToF32(value)
  %1417 = add i32 %51, 244
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 65535
  %1421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1420)  ; LegacyF16ToF32(value)
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1438 = add i32 %51, 236
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = lshr i32 %1440, 24
  %1442 = uitofp i32 %1441 to float
  %1443 = fmul fast float %1442, 0x3F70101020000000
  %1444 = and i32 %1440, 255
  %1445 = uitofp i32 %1444 to float
  %1446 = fmul fast float %1445, 0x3F70101020000000
  %1447 = lshr i32 %1440, 8
  %1448 = and i32 %1447, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = fmul fast float %1449, 0x3F70101020000000
  %1451 = lshr i32 %1440, 16
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F70101020000000
  %1455 = bitcast float %1379 to i32
  %1456 = ashr i32 %1455, 1
  %1457 = sub nsw i32 1597463174, %1456
  %1458 = bitcast i32 %1457 to float
  %1459 = fmul fast float %1379, 5.000000e-01
  %1460 = fmul fast float %1458, %1458
  %1461 = fmul fast float %1460, %1459
  %1462 = fsub fast float 1.500000e+00, %1461
  %1463 = fmul fast float %1458, %1379
  %1464 = fmul fast float %1463, %1462
  %1465 = bitcast float %1380 to i32
  %1466 = ashr i32 %1465, 1
  %1467 = sub nsw i32 1597463174, %1466
  %1468 = bitcast i32 %1467 to float
  %1469 = fmul fast float %1380, 5.000000e-01
  %1470 = fmul fast float %1468, %1468
  %1471 = fmul fast float %1470, %1469
  %1472 = fsub fast float 1.500000e+00, %1471
  %1473 = fmul fast float %1468, %1380
  %1474 = fmul fast float %1473, %1472
  %1475 = bitcast float %1381 to i32
  %1476 = ashr i32 %1475, 1
  %1477 = sub nsw i32 1597463174, %1476
  %1478 = bitcast i32 %1477 to float
  %1479 = fmul fast float %1381, 5.000000e-01
  %1480 = fmul fast float %1478, %1478
  %1481 = fmul fast float %1480, %1479
  %1482 = fsub fast float 1.500000e+00, %1481
  %1483 = fmul fast float %1478, %1381
  %1484 = fmul fast float %1483, %1482
  %1485 = fsub fast float %1464, %1446
  %1486 = fsub fast float %1474, %1450
  %1487 = fsub fast float %1484, %1454
  %1488 = fmul fast float %1485, %1414
  %1489 = fmul fast float %1486, %1416
  %1490 = fmul fast float %1487, %1421
  %1491 = fadd fast float %1488, %1429
  %1492 = fadd fast float %1489, %1433
  %1493 = fadd fast float %1490, %1437
  %1494 = call float @dx.op.unary.f32(i32 7, float %1491)  ; Saturate(value)
  %1495 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  %1496 = call float @dx.op.unary.f32(i32 7, float %1493)  ; Saturate(value)
  %1497 = fmul fast float %1494, %1494
  %1498 = fmul fast float %1495, %1495
  %1499 = fmul fast float %1496, %1496
  %1500 = fsub fast float %1497, %1379
  %1501 = fsub fast float %1498, %1380
  %1502 = fsub fast float %1499, %1381
  %1503 = fmul fast float %1500, %1404
  %1504 = fmul fast float %1501, %1404
  %1505 = fmul fast float %1502, %1404
  %1506 = fadd fast float %1503, %1379
  %1507 = fadd fast float %1504, %1380
  %1508 = fadd fast float %1505, %1381
  %1509 = fadd fast float %1426, %1390
  %1510 = fsub fast float %1509, %1443
  %1511 = call float @dx.op.unary.f32(i32 7, float %1510)  ; Saturate(value)
  %1512 = fsub fast float %1511, %1390
  %1513 = fmul fast float %1512, %1404
  %1514 = fadd fast float %1513, %1390
  br label %1568

; <label>:1515                                    ; preds = %1403
  %1516 = and i32 %1406, 134217728
  %1517 = icmp eq i32 %1516, 0
  br i1 %1517, label %1552, label %1518

; <label>:1518                                    ; preds = %1515
  %1519 = call float @dx.op.unary.f32(i32 24, float %335)  ; Sqrt(value)
  %1520 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %1521 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %1522 = fadd fast float %1519, -5.000000e-01
  %1523 = fadd fast float %1520, -5.000000e-01
  %1524 = fadd fast float %1521, -5.000000e-01
  %1525 = fmul fast float %1522, %1404
  %1526 = fmul fast float %1523, %1404
  %1527 = fmul fast float %1524, %1404
  %1528 = fadd fast float %1525, 5.000000e-01
  %1529 = fadd fast float %1526, 5.000000e-01
  %1530 = fadd fast float %1527, 5.000000e-01
  %1531 = call float @dx.op.unary.f32(i32 24, float %1379)  ; Sqrt(value)
  %1532 = call float @dx.op.unary.f32(i32 24, float %1380)  ; Sqrt(value)
  %1533 = call float @dx.op.unary.f32(i32 24, float %1381)  ; Sqrt(value)
  %1534 = fmul fast float %1528, 2.000000e+00
  %1535 = fsub fast float 1.000000e+00, %1534
  %1536 = fmul fast float %1535, %1531
  %1537 = fadd fast float %1536, %1534
  %1538 = fmul fast float %1537, %1531
  %1539 = fmul fast float %1529, 2.000000e+00
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = fmul fast float %1540, %1532
  %1542 = fadd fast float %1541, %1539
  %1543 = fmul fast float %1542, %1532
  %1544 = fmul fast float %1530, 2.000000e+00
  %1545 = fsub fast float 1.000000e+00, %1544
  %1546 = fmul fast float %1545, %1533
  %1547 = fadd fast float %1546, %1544
  %1548 = fmul fast float %1547, %1533
  %1549 = fmul fast float %1538, %1538
  %1550 = fmul fast float %1543, %1543
  %1551 = fmul fast float %1548, %1548
  br label %1568

; <label>:1552                                    ; preds = %1515
  %1553 = fmul fast float %335, %335
  %1554 = fmul fast float %339, %339
  %1555 = fmul fast float %343, %343
  %1556 = fadd fast float %1553, -1.000000e+00
  %1557 = fadd fast float %1554, -1.000000e+00
  %1558 = fadd fast float %1555, -1.000000e+00
  %1559 = fmul fast float %1404, %1556
  %1560 = fmul fast float %1404, %1557
  %1561 = fmul fast float %1404, %1558
  %1562 = fadd fast float %1559, 1.000000e+00
  %1563 = fadd fast float %1560, 1.000000e+00
  %1564 = fadd fast float %1561, 1.000000e+00
  %1565 = fmul fast float %1562, %1379
  %1566 = fmul fast float %1563, %1380
  %1567 = fmul fast float %1564, %1381
  br label %1568

; <label>:1568                                    ; preds = %1552, %1518, %1409, %1365
  %1569 = phi float [ %1514, %1409 ], [ %1390, %1518 ], [ %1390, %1552 ], [ 0x3FA23C0BE0000000, %1365 ]
  %1570 = phi float [ %1506, %1409 ], [ %1549, %1518 ], [ %1565, %1552 ], [ 1.000000e+00, %1365 ]
  %1571 = phi float [ %1507, %1409 ], [ %1550, %1518 ], [ %1566, %1552 ], [ 1.000000e+00, %1365 ]
  %1572 = phi float [ %1508, %1409 ], [ %1551, %1518 ], [ %1567, %1552 ], [ 1.000000e+00, %1365 ]
  %1573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.i32 %1573, 1
  %1575 = and i32 %1574, 1
  %1576 = icmp ne i32 %1575, 0
  %1577 = add i32 %51, 356
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 32
  %1581 = icmp ne i32 %1580, 0
  %1582 = and i1 %1576, %1581
  %1583 = select i1 %1582, float 1.000000e+00, float %1570
  %1584 = select i1 %1582, float 0x3FD3333340000000, float %1571
  %1585 = select i1 %1582, float 0x3FD3333340000000, float %1572
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 32
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1662, label %1590

; <label>:1590                                    ; preds = %1568
  %1591 = add i32 %51, 108
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1591, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = add i32 %51, 396
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1594, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = add i32 %1596, 0
  %1598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1597, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1598, %dx.types.Handle %107, float %1290, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1600 = extractvalue %dx.types.ResRet.f32 %1599, 0
  %1601 = extractvalue %dx.types.ResRet.f32 %1599, 1
  %1602 = extractvalue %dx.types.ResRet.f32 %1599, 2
  %1603 = extractvalue %dx.types.ResRet.f32 %1599, 3
  %1604 = and i32 %1593, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = lshr i32 %1593, 8
  %1607 = and i32 %1606, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = lshr i32 %1593, 16
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1611, 0x3F70101000000000
  %1613 = fmul fast float %1600, %1605
  %1614 = fadd fast float %1613, %1608
  %1615 = fmul fast float %1614, 0x3F70101000000000
  %1616 = fadd fast float %1601, -5.000000e-01
  %1617 = fadd fast float %1603, -5.000000e-01
  %1618 = fmul fast float %1616, %1612
  %1619 = fmul fast float %1617, %1612
  %1620 = fadd fast float %1618, 5.000000e-01
  %1621 = fadd fast float %1619, 5.000000e-01
  %1622 = fmul fast float %1620, 2.000000e+00
  %1623 = fadd fast float %1622, -1.000000e+00
  %1624 = fmul fast float %1621, 2.000000e+00
  %1625 = fadd fast float %1624, -1.000000e+00
  %1626 = fadd fast float %1623, %1625
  %1627 = fmul fast float %1626, 5.000000e-01
  %1628 = fsub fast float %1623, %1625
  %1629 = fmul fast float %1628, 5.000000e-01
  %1630 = call float @dx.op.unary.f32(i32 6, float %1627)  ; FAbs(value)
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = call float @dx.op.unary.f32(i32 6, float %1629)  ; FAbs(value)
  %1633 = fsub fast float %1631, %1632
  %1634 = call float @dx.op.dot3.f32(i32 55, float %1627, float %1629, float %1633, float %1627, float %1629, float %1633)  ; Dot3(ax,ay,az,bx,by,bz)
  %1635 = call float @dx.op.unary.f32(i32 25, float %1634)  ; Rsqrt(value)
  %1636 = fmul fast float %1627, %1635
  %1637 = fmul fast float %1629, %1635
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = and i32 %1639, 67108864
  %1641 = icmp eq i32 %1640, 0
  br i1 %1641, label %1658, label %1642

; <label>:1642                                    ; preds = %1590
  %1643 = add i32 %51, 296
  %1644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1645 = extractvalue %dx.types.ResRet.i32 %1644, 0
  %1646 = and i32 %1645, 65535
  %1647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1646)  ; LegacyF16ToF32(value)
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = and i32 %1649, 65535
  %1651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1650)  ; LegacyF16ToF32(value)
  %1652 = lshr i32 %1645, 16
  %1653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1652)  ; LegacyF16ToF32(value)
  %1654 = fsub fast float %1615, %1653
  %1655 = fmul fast float %1654, %1647
  %1656 = fadd fast float %1655, %1651
  %1657 = call float @dx.op.unary.f32(i32 7, float %1656)  ; Saturate(value)
  br label %1658

; <label>:1658                                    ; preds = %1642, %1590
  %1659 = phi float [ %1657, %1642 ], [ %1615, %1590 ]
  %1660 = call float @dx.op.dot2.f32(i32 54, float %1636, float %1637, float %1194, float %1195)  ; Dot2(ax,ay,bx,by)
  %1661 = call float @dx.op.dot2.f32(i32 54, float %1636, float %1637, float %1196, float %1197)  ; Dot2(ax,ay,bx,by)
  br label %1662

; <label>:1662                                    ; preds = %1658, %1568
  %1663 = phi float [ %1659, %1658 ], [ 0x3FD6666660000000, %1568 ]
  %1664 = phi float [ %1660, %1658 ], [ 0.000000e+00, %1568 ]
  %1665 = phi float [ %1661, %1658 ], [ 0.000000e+00, %1568 ]
  %1666 = phi float [ %1602, %1658 ], [ 1.000000e+00, %1568 ]
  %1667 = add i32 %51, 176
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = lshr i32 %1669, 22
  %1671 = shl nuw nsw i32 %1670, 5
  %1672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1671)  ; LegacyF16ToF32(value)
  %1673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.i32 %1673, 0
  %1675 = and i32 %1674, 64
  %1676 = icmp eq i32 %1675, 0
  br i1 %1676, label %1710, label %1677

; <label>:1677                                    ; preds = %1662
  %1678 = add i32 %51, 412
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = add i32 %1680, 0
  %1682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = and i32 %1684, 131072
  %1686 = icmp eq i32 %1685, 0
  %1687 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1682, %dx.types.Handle %107, float %1290, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = fmul fast float %1688, %323
  %1692 = fmul fast float %1689, %326
  %1693 = fmul fast float %1690, %329
  br i1 %1686, label %1700, label %1694

; <label>:1694                                    ; preds = %1677
  %1695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1696 = extractvalue %dx.types.CBufRet.f32 %1695, 0
  %1697 = fmul fast float %1696, %1691
  %1698 = fmul fast float %1696, %1692
  %1699 = fmul fast float %1696, %1693
  br label %1700

; <label>:1700                                    ; preds = %1694, %1677
  %1701 = phi float [ %1697, %1694 ], [ %1691, %1677 ]
  %1702 = phi float [ %1698, %1694 ], [ %1692, %1677 ]
  %1703 = phi float [ %1699, %1694 ], [ %1693, %1677 ]
  %1704 = fmul fast float %1701, %1672
  %1705 = select i1 %264, float %1704, float %1701
  %1706 = call float @dx.op.dot3.f32(i32 55, float %1705, float %1702, float %1703, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1707 = select i1 %264, float 0.000000e+00, float %1701
  %1708 = select i1 %264, float %1706, float %1702
  %1709 = select i1 %264, float 0.000000e+00, float %1703
  br label %1710

; <label>:1710                                    ; preds = %1700, %1662
  %1711 = phi float [ %1707, %1700 ], [ 0.000000e+00, %1662 ]
  %1712 = phi float [ %1708, %1700 ], [ 0.000000e+00, %1662 ]
  %1713 = phi float [ %1709, %1700 ], [ 0.000000e+00, %1662 ]
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 1024
  %1717 = icmp eq i32 %1716, 0
  br i1 %1717, label %1748, label %1718

; <label>:1718                                    ; preds = %1710
  %1719 = add i32 %51, 168
  %1720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1719, i32 undef)  ; BufferLoad(srv,index,wot)
  %1721 = extractvalue %dx.types.ResRet.i32 %1720, 0
  %1722 = and i32 %1721, 255
  %1723 = uitofp i32 %1722 to float
  %1724 = fmul fast float %1723, 0x3F70101020000000
  %1725 = lshr i32 %1721, 8
  %1726 = and i32 %1725, 255
  %1727 = uitofp i32 %1726 to float
  %1728 = fmul fast float %1727, 0x3F70101020000000
  %1729 = lshr i32 %1721, 16
  %1730 = and i32 %1729, 255
  %1731 = uitofp i32 %1730 to float
  %1732 = fmul fast float %1731, 0x3F70101020000000
  %1733 = fmul fast float %1724, %1724
  %1734 = fmul fast float %1728, %1728
  %1735 = fmul fast float %1732, %1732
  %1736 = add i32 %51, 480
  %1737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1736, i32 undef)  ; BufferLoad(srv,index,wot)
  %1738 = extractvalue %dx.types.ResRet.i32 %1737, 0
  %1739 = add i32 %1738, 0
  %1740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1739, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1741 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1740, %dx.types.Handle %108, float %1290, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1742 = extractvalue %dx.types.ResRet.f32 %1741, 0
  %1743 = extractvalue %dx.types.ResRet.f32 %1741, 1
  %1744 = extractvalue %dx.types.ResRet.f32 %1741, 2
  %1745 = fmul fast float %1733, %1742
  %1746 = fmul fast float %1734, %1743
  %1747 = fmul fast float %1735, %1744
  br label %1748

; <label>:1748                                    ; preds = %1718, %1710
  %1749 = phi float [ %1745, %1718 ], [ 0.000000e+00, %1710 ]
  %1750 = phi float [ %1746, %1718 ], [ 0.000000e+00, %1710 ]
  %1751 = phi float [ %1747, %1718 ], [ 0.000000e+00, %1710 ]
  %1752 = fcmp fast ogt float %1749, 0.000000e+00
  %1753 = fcmp fast ogt float %1750, 0.000000e+00
  %1754 = fcmp fast ogt float %1751, 0.000000e+00
  %1755 = call float @dx.op.unary.f32(i32 23, float %1749)  ; Log(value)
  %1756 = call float @dx.op.unary.f32(i32 23, float %1750)  ; Log(value)
  %1757 = call float @dx.op.unary.f32(i32 23, float %1751)  ; Log(value)
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = lshr i32 %1759, 7
  %1761 = and i32 %1760, 32752
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = fmul fast float %1755, 0xBFE62E4300000000
  %1764 = fmul fast float %1763, %1762
  %1765 = fmul fast float %1756, 0xBFE62E4300000000
  %1766 = fmul fast float %1765, %1762
  %1767 = fmul fast float %1757, 0xBFE62E4300000000
  %1768 = fmul fast float %1767, %1762
  %1769 = select i1 %1752, float %1764, float 1.270000e+02
  %1770 = select i1 %1753, float %1766, float 1.270000e+02
  %1771 = select i1 %1754, float %1768, float 1.270000e+02
  %1772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1773 = extractvalue %dx.types.ResRet.i32 %1772, 0
  %1774 = and i32 %1773, 10240
  %1775 = icmp eq i32 %1774, 0
  br i1 %1775, label %1820, label %1776

; <label>:1776                                    ; preds = %1748
  %1777 = add i32 %51, 496
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = add i32 %1779, 0
  %1781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1780, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1782 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1781, %dx.types.Handle %108, float %1290, float %1291, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = and i32 %1786, 1048576
  %1788 = icmp ne i32 %1787, 0
  %1789 = and i32 %1786, 8192
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1806, label %1791

; <label>:1791                                    ; preds = %1776
  %1792 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1793 = select i1 %1788, float %1792, float %1783
  %1794 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1795 = select i1 %1788, float %1794, float %1783
  %1796 = add i32 %51, 112
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = lshr i32 %1798, 16
  %1800 = and i32 %1799, 255
  %1801 = uitofp i32 %1800 to float
  %1802 = fmul fast float %1801, 0x3F80101020000000
  %1803 = fmul fast float %1802, %1795
  %1804 = fmul fast float %1802, %1783
  %1805 = fmul fast float %1802, %1793
  br label %1806

; <label>:1806                                    ; preds = %1791, %1776
  %1807 = phi float [ %1803, %1791 ], [ 0.000000e+00, %1776 ]
  %1808 = phi float [ %1804, %1791 ], [ 0.000000e+00, %1776 ]
  %1809 = phi float [ %1805, %1791 ], [ 0.000000e+00, %1776 ]
  %1810 = and i32 %1786, 2048
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1820, label %1812

; <label>:1812                                    ; preds = %1806
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = shl i32 %1814, 4
  %1816 = and i32 %1815, 32752
  %1817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1816)  ; LegacyF16ToF32(value)
  %1818 = fmul fast float %1817, %1784
  %1819 = call float @dx.op.binary.f32(i32 35, float %1818, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1820

; <label>:1820                                    ; preds = %1812, %1806, %1748
  %1821 = phi float [ %1807, %1812 ], [ %1807, %1806 ], [ 0.000000e+00, %1748 ]
  %1822 = phi float [ %1808, %1812 ], [ %1808, %1806 ], [ 0.000000e+00, %1748 ]
  %1823 = phi float [ %1809, %1812 ], [ %1809, %1806 ], [ 0.000000e+00, %1748 ]
  %1824 = phi float [ %1819, %1812 ], [ 0x3F70101020000000, %1806 ], [ 0x3F70101020000000, %1748 ]
  %1825 = add i32 %51, 112
  %1826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1825, i32 undef)  ; BufferLoad(srv,index,wot)
  %1827 = extractvalue %dx.types.ResRet.i32 %1826, 0
  %1828 = and i32 %1827, 255
  %1829 = uitofp i32 %1828 to float
  %1830 = lshr i32 %1827, 8
  %1831 = and i32 %1830, 255
  %1832 = uitofp i32 %1831 to float
  %1833 = call float @dx.op.dot3.f32(i32 55, float %1583, float %1584, float %1585, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1834 = fmul fast float %1832, %1833
  %1835 = fadd fast float %1834, %1829
  %1836 = fmul fast float %1835, 0x3F70101020000000
  %1837 = call float @dx.op.unary.f32(i32 7, float %1836)  ; Saturate(value)
  br i1 %1182, label %1838, label %1873

; <label>:1838                                    ; preds = %1820
  %1839 = fmul fast float %1824, 2.000000e+00
  %1840 = fcmp fast olt float %1769, 1.270000e+02
  %1841 = fcmp fast olt float %1770, 1.270000e+02
  %1842 = fcmp fast olt float %1771, 1.270000e+02
  %1843 = fmul fast float %1769, 0xBFF7154760000000
  %1844 = fmul fast float %1843, %1839
  %1845 = fmul fast float %1770, 0xBFF7154760000000
  %1846 = fmul fast float %1845, %1839
  %1847 = fmul fast float %1771, 0xBFF7154760000000
  %1848 = fmul fast float %1847, %1839
  %1849 = call float @dx.op.unary.f32(i32 21, float %1844)  ; Exp(value)
  %1850 = call float @dx.op.unary.f32(i32 21, float %1846)  ; Exp(value)
  %1851 = call float @dx.op.unary.f32(i32 21, float %1848)  ; Exp(value)
  %1852 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1853 = call float @dx.op.unary.f32(i32 7, float %1850)  ; Saturate(value)
  %1854 = call float @dx.op.unary.f32(i32 7, float %1851)  ; Saturate(value)
  %1855 = fadd fast float %1852, -1.000000e+00
  %1856 = select i1 %1840, float %1855, float -1.000000e+00
  %1857 = fadd fast float %1853, -1.000000e+00
  %1858 = select i1 %1841, float %1857, float -1.000000e+00
  %1859 = fadd fast float %1854, -1.000000e+00
  %1860 = select i1 %1842, float %1859, float -1.000000e+00
  %1861 = fmul fast float %1856, %1363
  %1862 = fmul fast float %1858, %1363
  %1863 = fmul fast float %1860, %1363
  %1864 = fadd fast float %1861, 1.000000e+00
  %1865 = fadd fast float %1862, 1.000000e+00
  %1866 = fadd fast float %1863, 1.000000e+00
  %1867 = fmul fast float %1864, %1163
  %1868 = fmul fast float %1865, %1164
  %1869 = fmul fast float %1866, %1165
  %1870 = fmul fast float %1864, %1172
  %1871 = fmul fast float %1865, %1173
  %1872 = fmul fast float %1866, %1174
  br label %1873

; <label>:1873                                    ; preds = %1838, %1820
  %1874 = phi float [ %1867, %1838 ], [ %1163, %1820 ]
  %1875 = phi float [ %1868, %1838 ], [ %1164, %1820 ]
  %1876 = phi float [ %1869, %1838 ], [ %1165, %1820 ]
  %1877 = phi float [ %1870, %1838 ], [ %1172, %1820 ]
  %1878 = phi float [ %1871, %1838 ], [ %1173, %1820 ]
  %1879 = phi float [ %1872, %1838 ], [ %1174, %1820 ]
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = and i32 %1881, 3
  %1883 = icmp eq i32 %1882, 3
  br i1 %1883, label %1962, label %1884

; <label>:1884                                    ; preds = %1873
  %1885 = and i32 %1881, 16
  %1886 = icmp ne i32 %1885, 0
  %1887 = select i1 %1886, float %1363, float 0.000000e+00
  %1888 = icmp eq i32 %1882, 0
  br i1 %1888, label %1889, label %1917

; <label>:1889                                    ; preds = %1884
  %1890 = and i32 %1881, 64
  %1891 = icmp ne i32 %1890, 0
  %1892 = select i1 %1891, float %1363, float 0.000000e+00
  %1893 = fsub fast float %1583, %1874
  %1894 = fsub fast float %1584, %1875
  %1895 = fsub fast float %1585, %1876
  %1896 = fmul fast float %1887, %1893
  %1897 = fmul fast float %1887, %1894
  %1898 = fmul fast float %1887, %1895
  %1899 = fadd fast float %1896, %1874
  %1900 = fadd fast float %1897, %1875
  %1901 = fadd fast float %1898, %1876
  %1902 = fsub fast float %1569, %1175
  %1903 = fmul fast float %1887, %1902
  %1904 = fadd fast float %1903, %1175
  %1905 = fsub fast float %1711, %1877
  %1906 = fsub fast float %1712, %1878
  %1907 = fsub fast float %1713, %1879
  %1908 = fmul fast float %1892, %1905
  %1909 = fmul fast float %1892, %1906
  %1910 = fmul fast float %1892, %1907
  %1911 = fadd fast float %1908, %1877
  %1912 = fadd fast float %1909, %1878
  %1913 = fadd fast float %1910, %1879
  %1914 = fsub fast float %1837, %1180
  %1915 = fmul fast float %1887, %1914
  %1916 = fadd fast float %1915, %1180
  br label %1962

; <label>:1917                                    ; preds = %1884
  %1918 = icmp eq i32 %1882, 1
  br i1 %1918, label %1919, label %1932

; <label>:1919                                    ; preds = %1917
  %1920 = fadd fast float %1583, -1.000000e+00
  %1921 = fadd fast float %1584, -1.000000e+00
  %1922 = fadd fast float %1585, -1.000000e+00
  %1923 = fmul fast float %1887, %1920
  %1924 = fmul fast float %1887, %1921
  %1925 = fmul fast float %1887, %1922
  %1926 = fadd fast float %1923, 1.000000e+00
  %1927 = fadd fast float %1924, 1.000000e+00
  %1928 = fadd fast float %1925, 1.000000e+00
  %1929 = fmul fast float %1926, %1874
  %1930 = fmul fast float %1927, %1875
  %1931 = fmul fast float %1928, %1876
  br label %1962

; <label>:1932                                    ; preds = %1917
  %1933 = icmp eq i32 %1882, 2
  br i1 %1933, label %1934, label %1962

; <label>:1934                                    ; preds = %1932
  %1935 = call float @dx.op.unary.f32(i32 24, float %1583)  ; Sqrt(value)
  %1936 = call float @dx.op.unary.f32(i32 24, float %1584)  ; Sqrt(value)
  %1937 = call float @dx.op.unary.f32(i32 24, float %1585)  ; Sqrt(value)
  %1938 = fadd fast float %1935, -5.000000e-01
  %1939 = fadd fast float %1936, -5.000000e-01
  %1940 = fadd fast float %1937, -5.000000e-01
  %1941 = fmul fast float %1938, %1887
  %1942 = fmul fast float %1939, %1887
  %1943 = fmul fast float %1940, %1887
  %1944 = fadd fast float %1941, 5.000000e-01
  %1945 = fadd fast float %1942, 5.000000e-01
  %1946 = fadd fast float %1943, 5.000000e-01
  %1947 = fmul fast float %1944, 2.000000e+00
  %1948 = fsub fast float 1.000000e+00, %1947
  %1949 = fmul fast float %1948, %1874
  %1950 = fadd fast float %1949, %1947
  %1951 = fmul fast float %1950, %1874
  %1952 = fmul fast float %1945, 2.000000e+00
  %1953 = fsub fast float 1.000000e+00, %1952
  %1954 = fmul fast float %1953, %1875
  %1955 = fadd fast float %1954, %1952
  %1956 = fmul fast float %1955, %1875
  %1957 = fmul fast float %1946, 2.000000e+00
  %1958 = fsub fast float 1.000000e+00, %1957
  %1959 = fmul fast float %1958, %1876
  %1960 = fadd fast float %1959, %1957
  %1961 = fmul fast float %1960, %1876
  br label %1962

; <label>:1962                                    ; preds = %1934, %1932, %1919, %1889, %1873
  %1963 = phi float [ %1874, %1873 ], [ %1951, %1934 ], [ %1874, %1932 ], [ %1929, %1919 ], [ %1899, %1889 ]
  %1964 = phi float [ %1875, %1873 ], [ %1956, %1934 ], [ %1875, %1932 ], [ %1930, %1919 ], [ %1900, %1889 ]
  %1965 = phi float [ %1876, %1873 ], [ %1961, %1934 ], [ %1876, %1932 ], [ %1931, %1919 ], [ %1901, %1889 ]
  %1966 = phi float [ %1877, %1873 ], [ %1877, %1934 ], [ %1877, %1932 ], [ %1877, %1919 ], [ %1911, %1889 ]
  %1967 = phi float [ %1878, %1873 ], [ %1878, %1934 ], [ %1878, %1932 ], [ %1878, %1919 ], [ %1912, %1889 ]
  %1968 = phi float [ %1879, %1873 ], [ %1879, %1934 ], [ %1879, %1932 ], [ %1879, %1919 ], [ %1913, %1889 ]
  %1969 = phi float [ %1175, %1873 ], [ %1175, %1934 ], [ %1175, %1932 ], [ %1175, %1919 ], [ %1904, %1889 ]
  %1970 = phi float [ %1180, %1873 ], [ %1180, %1934 ], [ %1180, %1932 ], [ %1180, %1919 ], [ %1916, %1889 ]
  %1971 = and i32 %1881, 12
  %1972 = icmp eq i32 %1971, 12
  br i1 %1972, label %2103, label %1973

; <label>:1973                                    ; preds = %1962
  %1974 = and i32 %1881, 2097184
  %1975 = icmp eq i32 %1974, 2097184
  %1976 = select i1 %1975, float %1363, float 0.000000e+00
  %1977 = and i32 %1881, 4194336
  %1978 = icmp eq i32 %1977, 4194336
  %1979 = select i1 %1978, float %1363, float 0.000000e+00
  %1980 = and i32 %1881, 8388640
  %1981 = icmp eq i32 %1980, 8388640
  %1982 = select i1 %1981, float %1363, float 0.000000e+00
  %1983 = and i32 %1881, 1024
  %1984 = icmp ne i32 %1983, 0
  %1985 = select i1 %1984, float %1363, float 0.000000e+00
  %1986 = and i32 %1881, 2048
  %1987 = icmp ne i32 %1986, 0
  %1988 = select i1 %1987, float %1363, float 0.000000e+00
  %1989 = and i32 %1881, 8192
  %1990 = icmp ne i32 %1989, 0
  %1991 = select i1 %1990, float %1363, float 0.000000e+00
  %1992 = icmp eq i32 %1971, 0
  br i1 %1992, label %1993, label %2027

; <label>:1993                                    ; preds = %1973
  %1994 = fsub fast float %1664, %1161
  %1995 = fsub fast float %1665, %1162
  %1996 = fmul fast float %1976, %1994
  %1997 = fmul fast float %1976, %1995
  %1998 = fadd fast float %1996, %1161
  %1999 = fadd fast float %1997, %1162
  %2000 = fsub fast float %1666, %1178
  %2001 = fmul fast float %1979, %2000
  %2002 = fadd fast float %2001, %1178
  %2003 = fsub fast float %1663, %1177
  %2004 = fmul fast float %1982, %2003
  %2005 = fadd fast float %2004, %1177
  %2006 = fsub fast float %1769, %1169
  %2007 = fsub fast float %1770, %1170
  %2008 = fsub fast float %1771, %1171
  %2009 = fmul fast float %1985, %2006
  %2010 = fmul fast float %1985, %2007
  %2011 = fmul fast float %1985, %2008
  %2012 = fadd fast float %2009, %1169
  %2013 = fadd fast float %2010, %1170
  %2014 = fadd fast float %2011, %1171
  %2015 = fsub fast float %1824, %1179
  %2016 = fmul fast float %1988, %2015
  %2017 = fadd fast float %2016, %1179
  %2018 = fsub fast float %1821, %1166
  %2019 = fsub fast float %1822, %1167
  %2020 = fsub fast float %1823, %1168
  %2021 = fmul fast float %1991, %2018
  %2022 = fmul fast float %1991, %2019
  %2023 = fmul fast float %1991, %2020
  %2024 = fadd fast float %2021, %1166
  %2025 = fadd fast float %2022, %1167
  %2026 = fadd fast float %2023, %1168
  br label %2103

; <label>:2027                                    ; preds = %1973
  %2028 = icmp eq i32 %1971, 4
  br i1 %2028, label %2029, label %2075

; <label>:2029                                    ; preds = %2027
  %2030 = fmul fast float %1976, %1664
  %2031 = fmul fast float %1976, %1665
  %2032 = fadd fast float %2030, %1161
  %2033 = fadd fast float %2031, %1162
  %2034 = call float @dx.op.binary.f32(i32 36, float %1178, float %1666)  ; FMin(a,b)
  %2035 = fsub fast float %2034, %1178
  %2036 = fmul fast float %2035, %1979
  %2037 = fadd fast float %2036, %1178
  %2038 = fadd fast float %1663, %1177
  %2039 = fmul fast float %2038, 0x3FF337FAE0000000
  %2040 = fmul fast float %1177, %1177
  %2041 = fmul fast float %1663, %1663
  %2042 = fadd fast float %2041, %2040
  %2043 = fmul fast float %2042, 0x3FE5152B00000000
  %2044 = fmul fast float %1177, 0xBFCC1F85E0000000
  %2045 = fmul fast float %2044, %1663
  %2046 = fadd fast float %2045, 0xBFE1363700000000
  %2047 = fadd fast float %2046, %2039
  %2048 = fsub fast float %2047, %2043
  %2049 = fmul fast float %2038, 0x3FBA6F0D00000000
  %2050 = fmul fast float %2042, 0x3FD0432880000000
  %2051 = fmul fast float %1177, 0xBFEF110800000000
  %2052 = fmul fast float %2051, %1663
  %2053 = fadd fast float %2052, 1.000000e+00
  %2054 = fsub fast float %2053, %2049
  %2055 = fadd fast float %2054, %2050
  %2056 = fdiv fast float %2048, %2055
  %2057 = call float @dx.op.unary.f32(i32 7, float %2056)  ; Saturate(value)
  %2058 = fsub fast float %2057, %1177
  %2059 = fmul fast float %2058, %1982
  %2060 = fadd fast float %2059, %1177
  %2061 = fmul fast float %1985, %1769
  %2062 = fmul fast float %1985, %1770
  %2063 = fmul fast float %1985, %1771
  %2064 = fadd fast float %2061, %1169
  %2065 = fadd fast float %2062, %1170
  %2066 = fadd fast float %2063, %1171
  %2067 = fmul fast float %1988, %1824
  %2068 = fadd fast float %2067, %1179
  %2069 = fmul fast float %1991, %1821
  %2070 = fmul fast float %1991, %1822
  %2071 = fmul fast float %1991, %1823
  %2072 = fadd fast float %2069, %1166
  %2073 = fadd fast float %2070, %1167
  %2074 = fadd fast float %2071, %1168
  br label %2103

; <label>:2075                                    ; preds = %2027
  %2076 = icmp eq i32 %1971, 8
  br i1 %2076, label %2077, label %2103

; <label>:2077                                    ; preds = %2075
  %2078 = fmul fast float %1976, %1664
  %2079 = fmul fast float %1976, %1665
  %2080 = fadd fast float %2078, %1161
  %2081 = fadd fast float %2079, %1162
  %2082 = call float @dx.op.binary.f32(i32 36, float %1178, float %1666)  ; FMin(a,b)
  %2083 = fsub fast float %2082, %1178
  %2084 = fmul fast float %2083, %1979
  %2085 = fadd fast float %2084, %1178
  %2086 = fsub fast float %1663, %1177
  %2087 = fmul fast float %1982, %2086
  %2088 = fadd fast float %2087, %1177
  %2089 = fmul fast float %1985, %1769
  %2090 = fmul fast float %1985, %1770
  %2091 = fmul fast float %1985, %1771
  %2092 = fadd fast float %2089, %1169
  %2093 = fadd fast float %2090, %1170
  %2094 = fadd fast float %2091, %1171
  %2095 = fmul fast float %1988, %1824
  %2096 = fadd fast float %2095, %1179
  %2097 = fmul fast float %1991, %1821
  %2098 = fmul fast float %1991, %1822
  %2099 = fmul fast float %1991, %1823
  %2100 = fadd fast float %2097, %1166
  %2101 = fadd fast float %2098, %1167
  %2102 = fadd fast float %2099, %1168
  br label %2103

; <label>:2103                                    ; preds = %2077, %2075, %2029, %1993, %1962, %1362, %1181, %1160
  %2104 = phi float [ %1161, %1962 ], [ %1161, %1362 ], [ %1161, %1160 ], [ %2080, %2077 ], [ %1161, %2075 ], [ %2032, %2029 ], [ %1998, %1993 ], [ %1161, %1181 ]
  %2105 = phi float [ %1162, %1962 ], [ %1162, %1362 ], [ %1162, %1160 ], [ %2081, %2077 ], [ %1162, %2075 ], [ %2033, %2029 ], [ %1999, %1993 ], [ %1162, %1181 ]
  %2106 = phi float [ %1963, %1962 ], [ %1163, %1362 ], [ %1163, %1160 ], [ %1963, %2077 ], [ %1963, %2075 ], [ %1963, %2029 ], [ %1963, %1993 ], [ %1163, %1181 ]
  %2107 = phi float [ %1964, %1962 ], [ %1164, %1362 ], [ %1164, %1160 ], [ %1964, %2077 ], [ %1964, %2075 ], [ %1964, %2029 ], [ %1964, %1993 ], [ %1164, %1181 ]
  %2108 = phi float [ %1965, %1962 ], [ %1165, %1362 ], [ %1165, %1160 ], [ %1965, %2077 ], [ %1965, %2075 ], [ %1965, %2029 ], [ %1965, %1993 ], [ %1165, %1181 ]
  %2109 = phi float [ %1166, %1962 ], [ %1166, %1362 ], [ %1166, %1160 ], [ %2100, %2077 ], [ %1166, %2075 ], [ %2072, %2029 ], [ %2024, %1993 ], [ %1166, %1181 ]
  %2110 = phi float [ %1167, %1962 ], [ %1167, %1362 ], [ %1167, %1160 ], [ %2101, %2077 ], [ %1167, %2075 ], [ %2073, %2029 ], [ %2025, %1993 ], [ %1167, %1181 ]
  %2111 = phi float [ %1168, %1962 ], [ %1168, %1362 ], [ %1168, %1160 ], [ %2102, %2077 ], [ %1168, %2075 ], [ %2074, %2029 ], [ %2026, %1993 ], [ %1168, %1181 ]
  %2112 = phi float [ %1169, %1962 ], [ %1169, %1362 ], [ %1169, %1160 ], [ %2092, %2077 ], [ %1169, %2075 ], [ %2064, %2029 ], [ %2012, %1993 ], [ %1169, %1181 ]
  %2113 = phi float [ %1170, %1962 ], [ %1170, %1362 ], [ %1170, %1160 ], [ %2093, %2077 ], [ %1170, %2075 ], [ %2065, %2029 ], [ %2013, %1993 ], [ %1170, %1181 ]
  %2114 = phi float [ %1171, %1962 ], [ %1171, %1362 ], [ %1171, %1160 ], [ %2094, %2077 ], [ %1171, %2075 ], [ %2066, %2029 ], [ %2014, %1993 ], [ %1171, %1181 ]
  %2115 = phi float [ %1966, %1962 ], [ %1172, %1362 ], [ %1172, %1160 ], [ %1966, %2077 ], [ %1966, %2075 ], [ %1966, %2029 ], [ %1966, %1993 ], [ %1172, %1181 ]
  %2116 = phi float [ %1967, %1962 ], [ %1173, %1362 ], [ %1173, %1160 ], [ %1967, %2077 ], [ %1967, %2075 ], [ %1967, %2029 ], [ %1967, %1993 ], [ %1173, %1181 ]
  %2117 = phi float [ %1968, %1962 ], [ %1174, %1362 ], [ %1174, %1160 ], [ %1968, %2077 ], [ %1968, %2075 ], [ %1968, %2029 ], [ %1968, %1993 ], [ %1174, %1181 ]
  %2118 = phi float [ %1969, %1962 ], [ %1175, %1362 ], [ %1175, %1160 ], [ %1969, %2077 ], [ %1969, %2075 ], [ %1969, %2029 ], [ %1969, %1993 ], [ %1175, %1181 ]
  %2119 = phi float [ %1177, %1962 ], [ %1177, %1362 ], [ %1177, %1160 ], [ %2088, %2077 ], [ %1177, %2075 ], [ %2060, %2029 ], [ %2005, %1993 ], [ %1177, %1181 ]
  %2120 = phi float [ %1178, %1962 ], [ %1178, %1362 ], [ %1178, %1160 ], [ %2085, %2077 ], [ %1178, %2075 ], [ %2037, %2029 ], [ %2002, %1993 ], [ %1178, %1181 ]
  %2121 = phi float [ %1179, %1962 ], [ %1179, %1362 ], [ %1179, %1160 ], [ %2096, %2077 ], [ %1179, %2075 ], [ %2068, %2029 ], [ %2017, %1993 ], [ %1179, %1181 ]
  %2122 = phi float [ %1970, %1962 ], [ %1180, %1362 ], [ %1180, %1160 ], [ %1970, %2077 ], [ %1970, %2075 ], [ %1970, %2029 ], [ %1970, %1993 ], [ %1180, %1181 ]
  br i1 %450, label %3045, label %2123

; <label>:2123                                    ; preds = %2103
  %2124 = icmp ult i32 %506, 3
  %2125 = add i32 %51, 56
  %2126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2127 = extractvalue %dx.types.ResRet.i32 %2126, 0
  %2128 = add i32 %51, 60
  %2129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2128, i32 undef)  ; BufferLoad(srv,index,wot)
  %2130 = extractvalue %dx.types.ResRet.i32 %2129, 0
  %2131 = or i32 %2130, %2127
  %2132 = icmp eq i32 %2131, 0
  br i1 %2132, label %3045, label %2133

; <label>:2133                                    ; preds = %2123
  %2134 = and i32 %2127, 262144
  %2135 = icmp ne i32 %2134, 0
  %2136 = select i1 %2135, float %57, float 1.000000e+00
  %2137 = select i1 %2135, float %58, float 0.000000e+00
  %2138 = select i1 %2135, float %59, float 0.000000e+00
  %2139 = select i1 %2135, float %60, float 1.000000e+00
  %2140 = select i1 %2135, float %61, float %89
  %2141 = select i1 %2135, float %62, float %90
  %2142 = add i32 %51, 316
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = lshr i32 %2144, 16
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = fmul fast float %2146, 0x3F50624DE0000000
  %2148 = add i32 %51, 120
  %2149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.i32 %2149, 0
  %2151 = lshr i32 %2150, 16
  %2152 = and i32 %2151, 255
  %2153 = lshr i32 %2150, 24
  %2154 = add i32 %51, 324
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 65535
  %2158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2157)  ; LegacyF16ToF32(value)
  %2159 = lshr i32 %2156, 16
  %2160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2159)  ; LegacyF16ToF32(value)
  %2161 = add i32 %51, 64
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = lshr i32 %2163, 22
  %2165 = shl nuw nsw i32 %2164, 5
  %2166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2165)  ; LegacyF16ToF32(value)
  %2167 = shl i32 %2163, 4
  %2168 = and i32 %2167, 32752
  %2169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2168)  ; LegacyF16ToF32(value)
  %2170 = lshr i32 %2163, 7
  %2171 = and i32 %2170, 32752
  %2172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2171)  ; LegacyF16ToF32(value)
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 3
  %2175 = fmul fast float %2174, 1.000000e+03
  %2176 = fmul fast float %400, %2175
  %2177 = call float @dx.op.unary.f32(i32 22, float %2176)  ; Frc(value)
  %2178 = fadd fast float %2177, %390
  %2179 = fmul fast float %401, %2175
  %2180 = call float @dx.op.unary.f32(i32 22, float %2179)  ; Frc(value)
  %2181 = fadd fast float %2180, %392
  %2182 = fmul fast float %2147, %2175
  %2183 = call float @dx.op.unary.f32(i32 22, float %2182)  ; Frc(value)
  %2184 = fmul fast float %2183, 0x401921FB60000000
  %2185 = fadd fast float %2184, %2166
  %2186 = call float @dx.op.unary.f32(i32 13, float %2185)  ; Sin(value)
  %2187 = call float @dx.op.unary.f32(i32 12, float %2185)  ; Cos(value)
  %2188 = fsub fast float -0.000000e+00, %2186
  %2189 = fadd fast float %2140, -5.000000e-01
  %2190 = fadd fast float %2141, -5.000000e-01
  %2191 = fmul fast float %2158, %2189
  %2192 = fmul fast float %2160, %2190
  %2193 = fadd fast float %2191, 5.000000e-01
  %2194 = fadd fast float %2192, 5.000000e-01
  %2195 = fmul fast float %2169, %2193
  %2196 = fmul fast float %2172, %2194
  %2197 = fmul fast float %2187, %2195
  %2198 = call float @dx.op.tertiary.f32(i32 46, float %2188, float %2196, float %2197)  ; FMad(a,b,c)
  %2199 = fmul fast float %2186, %2195
  %2200 = call float @dx.op.tertiary.f32(i32 46, float %2187, float %2196, float %2199)  ; FMad(a,b,c)
  %2201 = fadd fast float %2178, %2198
  %2202 = fadd fast float %2181, %2200
  %2203 = icmp ugt i32 %2152, 1
  %2204 = icmp ugt i32 %2150, 33554431
  %2205 = or i1 %2204, %2203
  br i1 %2205, label %2206, label %2231

; <label>:2206                                    ; preds = %2133
  %2207 = add i32 %51, 260
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = lshr i32 %2209, 16
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = fmul fast float %2174, %2211
  %2213 = call float @dx.op.unary.f32(i32 22, float %2212)  ; Frc(value)
  %2214 = mul nuw nsw i32 %2152, %2153
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2213, %2215
  %2217 = call float @dx.op.unary.f32(i32 27, float %2216)  ; Round_ni(value)
  %2218 = fptoui float %2217 to i32
  %2219 = urem i32 %2218, %2152
  %2220 = udiv i32 %2218, %2153
  %2221 = call float @dx.op.unary.f32(i32 22, float %2201)  ; Frc(value)
  %2222 = call float @dx.op.unary.f32(i32 22, float %2202)  ; Frc(value)
  %2223 = uitofp i32 %2219 to float
  %2224 = uitofp i32 %2220 to float
  %2225 = fadd fast float %2221, %2223
  %2226 = fadd fast float %2222, %2224
  %2227 = uitofp i32 %2152 to float
  %2228 = uitofp i32 %2153 to float
  %2229 = fdiv fast float %2225, %2227
  %2230 = fdiv fast float %2226, %2228
  br label %2231

; <label>:2231                                    ; preds = %2206, %2133
  %2232 = phi float [ %2229, %2206 ], [ %2201, %2133 ]
  %2233 = phi float [ %2230, %2206 ], [ %2202, %2133 ]
  %2234 = and i32 %2127, 256
  %2235 = icmp eq i32 %2234, 0
  br i1 %2235, label %2282, label %2236

; <label>:2236                                    ; preds = %2231
  %2237 = add i32 %51, 448
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = add i32 %2239, 0
  %2241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2242 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2241, %dx.types.Handle %108, float %2232, float %2233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2243 = extractvalue %dx.types.ResRet.f32 %2242, 0
  %2244 = add i32 %51, 132
  %2245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2244, i32 undef)  ; BufferLoad(srv,index,wot)
  %2246 = extractvalue %dx.types.ResRet.i32 %2245, 0
  %2247 = shl i32 %2246, 4
  %2248 = and i32 %2247, 32752
  %2249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2248)  ; LegacyF16ToF32(value)
  %2250 = lshr i32 %2246, 7
  %2251 = and i32 %2250, 32752
  %2252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2251)  ; LegacyF16ToF32(value)
  %2253 = fsub fast float 1.000000e+00, %502
  %2254 = call float @dx.op.binary.f32(i32 35, float %2253, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2255 = bitcast float %502 to i32
  %2256 = sitofp i32 %2255 to float
  %2257 = fadd fast float %2256, 0xC1CFBF8940000000
  %2258 = fmul fast float %2252, %2257
  %2259 = fadd fast float %2258, 0x41CFBF8940000000
  %2260 = fptosi float %2259 to i32
  %2261 = bitcast i32 %2260 to float
  %2262 = bitcast float %2254 to i32
  %2263 = sitofp i32 %2262 to float
  %2264 = fadd fast float %2263, 0xC1CFBF8940000000
  %2265 = fmul fast float %2264, %2252
  %2266 = fadd fast float %2265, 0x41CFBF8940000000
  %2267 = fptosi float %2266 to i32
  %2268 = bitcast i32 %2267 to float
  %2269 = fmul fast float %2261, %2249
  %2270 = fmul fast float %2268, %2249
  %2271 = fsub fast float %2254, %2269
  %2272 = fadd fast float %2270, %2254
  %2273 = call float @dx.op.unary.f32(i32 7, float %2271)  ; Saturate(value)
  %2274 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  %2275 = fsub fast float %2243, %2273
  %2276 = fsub fast float %2274, %2273
  %2277 = bitcast float %2276 to i32
  %2278 = sub nsw i32 2129859010, %2277
  %2279 = bitcast i32 %2278 to float
  %2280 = fmul fast float %2279, %2275
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  br label %2282

; <label>:2282                                    ; preds = %2236, %2231
  %2283 = phi float [ %2281, %2236 ], [ %502, %2231 ]
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = and i32 %2285, 128
  %2287 = icmp eq i32 %2286, 0
  br i1 %2287, label %2304, label %2288

; <label>:2288                                    ; preds = %2282
  %2289 = add i32 %51, 432
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = add i32 %2291, 0
  %2293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2294 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2293, %dx.types.Handle %108, float %2232, float %2233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 524288
  %2299 = icmp ne i32 %2298, 0
  %2300 = fcmp fast ogt float %2295, 0x3FE0101020000000
  %2301 = select i1 %2300, float 1.000000e+00, float 0.000000e+00
  %2302 = select i1 %2299, float %2301, float %2295
  %2303 = fmul fast float %2302, %2283
  br label %2304

; <label>:2304                                    ; preds = %2288, %2282
  %2305 = phi float [ %2303, %2288 ], [ %2283, %2282 ]
  %2306 = fcmp fast ult float %2305, 0x3F70101020000000
  br i1 %2306, label %3045, label %2307

; <label>:2307                                    ; preds = %2304
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 16
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2510, label %2312

; <label>:2312                                    ; preds = %2307
  %2313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2314 = extractvalue %dx.types.ResRet.i32 %2313, 0
  %2315 = add i32 %51, 384
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = add i32 %2317, 0
  %2319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2320 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2319, %dx.types.Handle %107, float %2232, float %2233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2321 = extractvalue %dx.types.ResRet.f32 %2320, 0
  %2322 = extractvalue %dx.types.ResRet.f32 %2320, 1
  %2323 = extractvalue %dx.types.ResRet.f32 %2320, 2
  %2324 = extractvalue %dx.types.ResRet.f32 %2320, 3
  %2325 = and i32 %2314, 255
  %2326 = uitofp i32 %2325 to float
  %2327 = lshr i32 %2314, 8
  %2328 = and i32 %2327, 255
  %2329 = uitofp i32 %2328 to float
  %2330 = fmul fast float %2324, %2326
  %2331 = fadd fast float %2330, %2329
  %2332 = fmul fast float %2331, 0x3F70101000000000
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 512
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2345, label %2337

; <label>:2337                                    ; preds = %2312
  %2338 = add i32 %51, 468
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = add i32 %2340, 0
  %2342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2342, %dx.types.Handle %108, float %2232, float %2233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2344 = extractvalue %dx.types.ResRet.f32 %2343, 0
  br label %2345

; <label>:2345                                    ; preds = %2337, %2312
  %2346 = phi float [ %2344, %2337 ], [ 1.000000e+00, %2312 ]
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 33554432
  %2350 = icmp eq i32 %2349, 0
  br i1 %2350, label %2457, label %2351

; <label>:2351                                    ; preds = %2345
  %2352 = add i32 %51, 256
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2352, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 65535
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = lshr i32 %2354, 16
  %2358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2357)  ; LegacyF16ToF32(value)
  %2359 = add i32 %51, 260
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = and i32 %2361, 65535
  %2363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2362)  ; LegacyF16ToF32(value)
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2380 = add i32 %51, 252
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = lshr i32 %2382, 24
  %2384 = uitofp i32 %2383 to float
  %2385 = fmul fast float %2384, 0x3F70101020000000
  %2386 = and i32 %2382, 255
  %2387 = uitofp i32 %2386 to float
  %2388 = fmul fast float %2387, 0x3F70101020000000
  %2389 = lshr i32 %2382, 8
  %2390 = and i32 %2389, 255
  %2391 = uitofp i32 %2390 to float
  %2392 = fmul fast float %2391, 0x3F70101020000000
  %2393 = lshr i32 %2382, 16
  %2394 = and i32 %2393, 255
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = bitcast float %2321 to i32
  %2398 = ashr i32 %2397, 1
  %2399 = sub nsw i32 1597463174, %2398
  %2400 = bitcast i32 %2399 to float
  %2401 = fmul fast float %2321, 5.000000e-01
  %2402 = fmul fast float %2400, %2400
  %2403 = fmul fast float %2402, %2401
  %2404 = fsub fast float 1.500000e+00, %2403
  %2405 = fmul fast float %2400, %2321
  %2406 = fmul fast float %2405, %2404
  %2407 = bitcast float %2322 to i32
  %2408 = ashr i32 %2407, 1
  %2409 = sub nsw i32 1597463174, %2408
  %2410 = bitcast i32 %2409 to float
  %2411 = fmul fast float %2322, 5.000000e-01
  %2412 = fmul fast float %2410, %2410
  %2413 = fmul fast float %2412, %2411
  %2414 = fsub fast float 1.500000e+00, %2413
  %2415 = fmul fast float %2410, %2322
  %2416 = fmul fast float %2415, %2414
  %2417 = bitcast float %2323 to i32
  %2418 = ashr i32 %2417, 1
  %2419 = sub nsw i32 1597463174, %2418
  %2420 = bitcast i32 %2419 to float
  %2421 = fmul fast float %2323, 5.000000e-01
  %2422 = fmul fast float %2420, %2420
  %2423 = fmul fast float %2422, %2421
  %2424 = fsub fast float 1.500000e+00, %2423
  %2425 = fmul fast float %2420, %2323
  %2426 = fmul fast float %2425, %2424
  %2427 = fsub fast float %2406, %2388
  %2428 = fsub fast float %2416, %2392
  %2429 = fsub fast float %2426, %2396
  %2430 = fmul fast float %2427, %2356
  %2431 = fmul fast float %2428, %2358
  %2432 = fmul fast float %2429, %2363
  %2433 = fadd fast float %2430, %2371
  %2434 = fadd fast float %2431, %2375
  %2435 = fadd fast float %2432, %2379
  %2436 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2437 = call float @dx.op.unary.f32(i32 7, float %2434)  ; Saturate(value)
  %2438 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2439 = fmul fast float %2436, %2436
  %2440 = fmul fast float %2437, %2437
  %2441 = fmul fast float %2438, %2438
  %2442 = fsub fast float %2439, %2321
  %2443 = fsub fast float %2440, %2322
  %2444 = fsub fast float %2441, %2323
  %2445 = fmul fast float %2442, %2346
  %2446 = fmul fast float %2443, %2346
  %2447 = fmul fast float %2444, %2346
  %2448 = fadd fast float %2445, %2321
  %2449 = fadd fast float %2446, %2322
  %2450 = fadd fast float %2447, %2323
  %2451 = fadd fast float %2368, %2332
  %2452 = fsub fast float %2451, %2385
  %2453 = call float @dx.op.unary.f32(i32 7, float %2452)  ; Saturate(value)
  %2454 = fsub fast float %2453, %2332
  %2455 = fmul fast float %2454, %2346
  %2456 = fadd fast float %2455, %2332
  br label %2510

; <label>:2457                                    ; preds = %2345
  %2458 = and i32 %2348, 134217728
  %2459 = icmp eq i32 %2458, 0
  br i1 %2459, label %2494, label %2460

; <label>:2460                                    ; preds = %2457
  %2461 = call float @dx.op.unary.f32(i32 24, float %377)  ; Sqrt(value)
  %2462 = call float @dx.op.unary.f32(i32 24, float %381)  ; Sqrt(value)
  %2463 = call float @dx.op.unary.f32(i32 24, float %385)  ; Sqrt(value)
  %2464 = fadd fast float %2461, -5.000000e-01
  %2465 = fadd fast float %2462, -5.000000e-01
  %2466 = fadd fast float %2463, -5.000000e-01
  %2467 = fmul fast float %2464, %2346
  %2468 = fmul fast float %2465, %2346
  %2469 = fmul fast float %2466, %2346
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = call float @dx.op.unary.f32(i32 24, float %2321)  ; Sqrt(value)
  %2474 = call float @dx.op.unary.f32(i32 24, float %2322)  ; Sqrt(value)
  %2475 = call float @dx.op.unary.f32(i32 24, float %2323)  ; Sqrt(value)
  %2476 = fmul fast float %2470, 2.000000e+00
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = fmul fast float %2477, %2473
  %2479 = fadd fast float %2478, %2476
  %2480 = fmul fast float %2479, %2473
  %2481 = fmul fast float %2471, 2.000000e+00
  %2482 = fsub fast float 1.000000e+00, %2481
  %2483 = fmul fast float %2482, %2474
  %2484 = fadd fast float %2483, %2481
  %2485 = fmul fast float %2484, %2474
  %2486 = fmul fast float %2472, 2.000000e+00
  %2487 = fsub fast float 1.000000e+00, %2486
  %2488 = fmul fast float %2487, %2475
  %2489 = fadd fast float %2488, %2486
  %2490 = fmul fast float %2489, %2475
  %2491 = fmul fast float %2480, %2480
  %2492 = fmul fast float %2485, %2485
  %2493 = fmul fast float %2490, %2490
  br label %2510

; <label>:2494                                    ; preds = %2457
  %2495 = fmul fast float %377, %377
  %2496 = fmul fast float %381, %381
  %2497 = fmul fast float %385, %385
  %2498 = fadd fast float %2495, -1.000000e+00
  %2499 = fadd fast float %2496, -1.000000e+00
  %2500 = fadd fast float %2497, -1.000000e+00
  %2501 = fmul fast float %2346, %2498
  %2502 = fmul fast float %2346, %2499
  %2503 = fmul fast float %2346, %2500
  %2504 = fadd fast float %2501, 1.000000e+00
  %2505 = fadd fast float %2502, 1.000000e+00
  %2506 = fadd fast float %2503, 1.000000e+00
  %2507 = fmul fast float %2504, %2321
  %2508 = fmul fast float %2505, %2322
  %2509 = fmul fast float %2506, %2323
  br label %2510

; <label>:2510                                    ; preds = %2494, %2460, %2351, %2307
  %2511 = phi float [ %2456, %2351 ], [ %2332, %2460 ], [ %2332, %2494 ], [ 0x3FA23C0BE0000000, %2307 ]
  %2512 = phi float [ %2448, %2351 ], [ %2491, %2460 ], [ %2507, %2494 ], [ 1.000000e+00, %2307 ]
  %2513 = phi float [ %2449, %2351 ], [ %2492, %2460 ], [ %2508, %2494 ], [ 1.000000e+00, %2307 ]
  %2514 = phi float [ %2450, %2351 ], [ %2493, %2460 ], [ %2509, %2494 ], [ 1.000000e+00, %2307 ]
  %2515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.i32 %2515, 1
  %2517 = and i32 %2516, 1
  %2518 = icmp ne i32 %2517, 0
  %2519 = add i32 %51, 356
  %2520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2519, i32 undef)  ; BufferLoad(srv,index,wot)
  %2521 = extractvalue %dx.types.ResRet.i32 %2520, 0
  %2522 = and i32 %2521, 32
  %2523 = icmp ne i32 %2522, 0
  %2524 = and i1 %2518, %2523
  %2525 = select i1 %2524, float 1.000000e+00, float %2512
  %2526 = select i1 %2524, float 0x3FD3333340000000, float %2513
  %2527 = select i1 %2524, float 0x3FD3333340000000, float %2514
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = and i32 %2529, 32
  %2531 = icmp eq i32 %2530, 0
  br i1 %2531, label %2604, label %2532

; <label>:2532                                    ; preds = %2510
  %2533 = add i32 %51, 124
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = add i32 %51, 400
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2536, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = add i32 %2538, 0
  %2540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2540, %dx.types.Handle %107, float %2232, float %2233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.ResRet.f32 %2541, 2
  %2545 = extractvalue %dx.types.ResRet.f32 %2541, 3
  %2546 = and i32 %2535, 255
  %2547 = uitofp i32 %2546 to float
  %2548 = lshr i32 %2535, 8
  %2549 = and i32 %2548, 255
  %2550 = uitofp i32 %2549 to float
  %2551 = lshr i32 %2535, 16
  %2552 = and i32 %2551, 255
  %2553 = uitofp i32 %2552 to float
  %2554 = fmul fast float %2553, 0x3F70101000000000
  %2555 = fmul fast float %2542, %2547
  %2556 = fadd fast float %2555, %2550
  %2557 = fmul fast float %2556, 0x3F70101000000000
  %2558 = fadd fast float %2543, -5.000000e-01
  %2559 = fadd fast float %2545, -5.000000e-01
  %2560 = fmul fast float %2558, %2554
  %2561 = fmul fast float %2559, %2554
  %2562 = fadd fast float %2560, 5.000000e-01
  %2563 = fadd fast float %2561, 5.000000e-01
  %2564 = fmul fast float %2562, 2.000000e+00
  %2565 = fadd fast float %2564, -1.000000e+00
  %2566 = fmul fast float %2563, 2.000000e+00
  %2567 = fadd fast float %2566, -1.000000e+00
  %2568 = fadd fast float %2565, %2567
  %2569 = fmul fast float %2568, 5.000000e-01
  %2570 = fsub fast float %2565, %2567
  %2571 = fmul fast float %2570, 5.000000e-01
  %2572 = call float @dx.op.unary.f32(i32 6, float %2569)  ; FAbs(value)
  %2573 = fsub fast float 1.000000e+00, %2572
  %2574 = call float @dx.op.unary.f32(i32 6, float %2571)  ; FAbs(value)
  %2575 = fsub fast float %2573, %2574
  %2576 = call float @dx.op.dot3.f32(i32 55, float %2569, float %2571, float %2575, float %2569, float %2571, float %2575)  ; Dot3(ax,ay,az,bx,by,bz)
  %2577 = call float @dx.op.unary.f32(i32 25, float %2576)  ; Rsqrt(value)
  %2578 = fmul fast float %2569, %2577
  %2579 = fmul fast float %2571, %2577
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 67108864
  %2583 = icmp eq i32 %2582, 0
  br i1 %2583, label %2600, label %2584

; <label>:2584                                    ; preds = %2532
  %2585 = add i32 %51, 312
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = and i32 %2587, 65535
  %2589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2588)  ; LegacyF16ToF32(value)
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = and i32 %2591, 65535
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = lshr i32 %2587, 16
  %2595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2594)  ; LegacyF16ToF32(value)
  %2596 = fsub fast float %2557, %2595
  %2597 = fmul fast float %2596, %2589
  %2598 = fadd fast float %2597, %2593
  %2599 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  br label %2600

; <label>:2600                                    ; preds = %2584, %2532
  %2601 = phi float [ %2599, %2584 ], [ %2557, %2532 ]
  %2602 = call float @dx.op.dot2.f32(i32 54, float %2578, float %2579, float %2136, float %2137)  ; Dot2(ax,ay,bx,by)
  %2603 = call float @dx.op.dot2.f32(i32 54, float %2578, float %2579, float %2138, float %2139)  ; Dot2(ax,ay,bx,by)
  br label %2604

; <label>:2604                                    ; preds = %2600, %2510
  %2605 = phi float [ %2601, %2600 ], [ 0x3FD6666660000000, %2510 ]
  %2606 = phi float [ %2602, %2600 ], [ 0.000000e+00, %2510 ]
  %2607 = phi float [ %2603, %2600 ], [ 0.000000e+00, %2510 ]
  %2608 = phi float [ %2544, %2600 ], [ 1.000000e+00, %2510 ]
  %2609 = add i32 %51, 192
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = lshr i32 %2611, 22
  %2613 = shl nuw nsw i32 %2612, 5
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = and i32 %2616, 64
  %2618 = icmp eq i32 %2617, 0
  br i1 %2618, label %2652, label %2619

; <label>:2619                                    ; preds = %2604
  %2620 = add i32 %51, 416
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = add i32 %2622, 0
  %2624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = and i32 %2626, 131072
  %2628 = icmp eq i32 %2627, 0
  %2629 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2624, %dx.types.Handle %107, float %2232, float %2233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2630 = extractvalue %dx.types.ResRet.f32 %2629, 0
  %2631 = extractvalue %dx.types.ResRet.f32 %2629, 1
  %2632 = extractvalue %dx.types.ResRet.f32 %2629, 2
  %2633 = fmul fast float %2630, %365
  %2634 = fmul fast float %2631, %368
  %2635 = fmul fast float %2632, %371
  br i1 %2628, label %2642, label %2636

; <label>:2636                                    ; preds = %2619
  %2637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2638 = extractvalue %dx.types.CBufRet.f32 %2637, 0
  %2639 = fmul fast float %2638, %2633
  %2640 = fmul fast float %2638, %2634
  %2641 = fmul fast float %2638, %2635
  br label %2642

; <label>:2642                                    ; preds = %2636, %2619
  %2643 = phi float [ %2639, %2636 ], [ %2633, %2619 ]
  %2644 = phi float [ %2640, %2636 ], [ %2634, %2619 ]
  %2645 = phi float [ %2641, %2636 ], [ %2635, %2619 ]
  %2646 = fmul fast float %2643, %2614
  %2647 = select i1 %264, float %2646, float %2643
  %2648 = call float @dx.op.dot3.f32(i32 55, float %2647, float %2644, float %2645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2649 = select i1 %264, float 0.000000e+00, float %2643
  %2650 = select i1 %264, float %2648, float %2644
  %2651 = select i1 %264, float 0.000000e+00, float %2645
  br label %2652

; <label>:2652                                    ; preds = %2642, %2604
  %2653 = phi float [ %2649, %2642 ], [ 0.000000e+00, %2604 ]
  %2654 = phi float [ %2650, %2642 ], [ 0.000000e+00, %2604 ]
  %2655 = phi float [ %2651, %2642 ], [ 0.000000e+00, %2604 ]
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = and i32 %2657, 1024
  %2659 = icmp eq i32 %2658, 0
  br i1 %2659, label %2690, label %2660

; <label>:2660                                    ; preds = %2652
  %2661 = add i32 %51, 184
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = and i32 %2663, 255
  %2665 = uitofp i32 %2664 to float
  %2666 = fmul fast float %2665, 0x3F70101020000000
  %2667 = lshr i32 %2663, 8
  %2668 = and i32 %2667, 255
  %2669 = uitofp i32 %2668 to float
  %2670 = fmul fast float %2669, 0x3F70101020000000
  %2671 = lshr i32 %2663, 16
  %2672 = and i32 %2671, 255
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2673, 0x3F70101020000000
  %2675 = fmul fast float %2666, %2666
  %2676 = fmul fast float %2670, %2670
  %2677 = fmul fast float %2674, %2674
  %2678 = add i32 %51, 484
  %2679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.i32 %2679, 0
  %2681 = add i32 %2680, 0
  %2682 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2681, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2683 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2682, %dx.types.Handle %108, float %2232, float %2233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2684 = extractvalue %dx.types.ResRet.f32 %2683, 0
  %2685 = extractvalue %dx.types.ResRet.f32 %2683, 1
  %2686 = extractvalue %dx.types.ResRet.f32 %2683, 2
  %2687 = fmul fast float %2675, %2684
  %2688 = fmul fast float %2676, %2685
  %2689 = fmul fast float %2677, %2686
  br label %2690

; <label>:2690                                    ; preds = %2660, %2652
  %2691 = phi float [ %2687, %2660 ], [ 0.000000e+00, %2652 ]
  %2692 = phi float [ %2688, %2660 ], [ 0.000000e+00, %2652 ]
  %2693 = phi float [ %2689, %2660 ], [ 0.000000e+00, %2652 ]
  %2694 = fcmp fast ogt float %2691, 0.000000e+00
  %2695 = fcmp fast ogt float %2692, 0.000000e+00
  %2696 = fcmp fast ogt float %2693, 0.000000e+00
  %2697 = call float @dx.op.unary.f32(i32 23, float %2691)  ; Log(value)
  %2698 = call float @dx.op.unary.f32(i32 23, float %2692)  ; Log(value)
  %2699 = call float @dx.op.unary.f32(i32 23, float %2693)  ; Log(value)
  %2700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.i32 %2700, 0
  %2702 = lshr i32 %2701, 7
  %2703 = and i32 %2702, 32752
  %2704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2703)  ; LegacyF16ToF32(value)
  %2705 = fmul fast float %2697, 0xBFE62E4300000000
  %2706 = fmul fast float %2705, %2704
  %2707 = fmul fast float %2698, 0xBFE62E4300000000
  %2708 = fmul fast float %2707, %2704
  %2709 = fmul fast float %2699, 0xBFE62E4300000000
  %2710 = fmul fast float %2709, %2704
  %2711 = select i1 %2694, float %2706, float 1.270000e+02
  %2712 = select i1 %2695, float %2708, float 1.270000e+02
  %2713 = select i1 %2696, float %2710, float 1.270000e+02
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = and i32 %2715, 10240
  %2717 = icmp eq i32 %2716, 0
  br i1 %2717, label %2762, label %2718

; <label>:2718                                    ; preds = %2690
  %2719 = add i32 %51, 500
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = add i32 %2721, 0
  %2723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2723, %dx.types.Handle %108, float %2232, float %2233, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 3
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %2728, 1048576
  %2730 = icmp ne i32 %2729, 0
  %2731 = and i32 %2728, 8192
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2748, label %2733

; <label>:2733                                    ; preds = %2718
  %2734 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2735 = select i1 %2730, float %2734, float %2725
  %2736 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2737 = select i1 %2730, float %2736, float %2725
  %2738 = add i32 %51, 128
  %2739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.i32 %2739, 0
  %2741 = lshr i32 %2740, 16
  %2742 = and i32 %2741, 255
  %2743 = uitofp i32 %2742 to float
  %2744 = fmul fast float %2743, 0x3F80101020000000
  %2745 = fmul fast float %2744, %2737
  %2746 = fmul fast float %2744, %2725
  %2747 = fmul fast float %2744, %2735
  br label %2748

; <label>:2748                                    ; preds = %2733, %2718
  %2749 = phi float [ %2745, %2733 ], [ 0.000000e+00, %2718 ]
  %2750 = phi float [ %2746, %2733 ], [ 0.000000e+00, %2718 ]
  %2751 = phi float [ %2747, %2733 ], [ 0.000000e+00, %2718 ]
  %2752 = and i32 %2728, 2048
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %2762, label %2754

; <label>:2754                                    ; preds = %2748
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = shl i32 %2756, 4
  %2758 = and i32 %2757, 32752
  %2759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2758)  ; LegacyF16ToF32(value)
  %2760 = fmul fast float %2759, %2726
  %2761 = call float @dx.op.binary.f32(i32 35, float %2760, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2762

; <label>:2762                                    ; preds = %2754, %2748, %2690
  %2763 = phi float [ %2749, %2754 ], [ %2749, %2748 ], [ 0.000000e+00, %2690 ]
  %2764 = phi float [ %2750, %2754 ], [ %2750, %2748 ], [ 0.000000e+00, %2690 ]
  %2765 = phi float [ %2751, %2754 ], [ %2751, %2748 ], [ 0.000000e+00, %2690 ]
  %2766 = phi float [ %2761, %2754 ], [ 0x3F70101020000000, %2748 ], [ 0x3F70101020000000, %2690 ]
  %2767 = add i32 %51, 128
  %2768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2767, i32 undef)  ; BufferLoad(srv,index,wot)
  %2769 = extractvalue %dx.types.ResRet.i32 %2768, 0
  %2770 = and i32 %2769, 255
  %2771 = uitofp i32 %2770 to float
  %2772 = lshr i32 %2769, 8
  %2773 = and i32 %2772, 255
  %2774 = uitofp i32 %2773 to float
  %2775 = call float @dx.op.dot3.f32(i32 55, float %2525, float %2526, float %2527, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2776 = fmul fast float %2774, %2775
  %2777 = fadd fast float %2776, %2771
  %2778 = fmul fast float %2777, 0x3F70101020000000
  %2779 = call float @dx.op.unary.f32(i32 7, float %2778)  ; Saturate(value)
  br i1 %2124, label %2780, label %2815

; <label>:2780                                    ; preds = %2762
  %2781 = fmul fast float %2766, 2.000000e+00
  %2782 = fcmp fast olt float %2711, 1.270000e+02
  %2783 = fcmp fast olt float %2712, 1.270000e+02
  %2784 = fcmp fast olt float %2713, 1.270000e+02
  %2785 = fmul fast float %2711, 0xBFF7154760000000
  %2786 = fmul fast float %2785, %2781
  %2787 = fmul fast float %2712, 0xBFF7154760000000
  %2788 = fmul fast float %2787, %2781
  %2789 = fmul fast float %2713, 0xBFF7154760000000
  %2790 = fmul fast float %2789, %2781
  %2791 = call float @dx.op.unary.f32(i32 21, float %2786)  ; Exp(value)
  %2792 = call float @dx.op.unary.f32(i32 21, float %2788)  ; Exp(value)
  %2793 = call float @dx.op.unary.f32(i32 21, float %2790)  ; Exp(value)
  %2794 = call float @dx.op.unary.f32(i32 7, float %2791)  ; Saturate(value)
  %2795 = call float @dx.op.unary.f32(i32 7, float %2792)  ; Saturate(value)
  %2796 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  %2797 = fadd fast float %2794, -1.000000e+00
  %2798 = select i1 %2782, float %2797, float -1.000000e+00
  %2799 = fadd fast float %2795, -1.000000e+00
  %2800 = select i1 %2783, float %2799, float -1.000000e+00
  %2801 = fadd fast float %2796, -1.000000e+00
  %2802 = select i1 %2784, float %2801, float -1.000000e+00
  %2803 = fmul fast float %2798, %2305
  %2804 = fmul fast float %2800, %2305
  %2805 = fmul fast float %2802, %2305
  %2806 = fadd fast float %2803, 1.000000e+00
  %2807 = fadd fast float %2804, 1.000000e+00
  %2808 = fadd fast float %2805, 1.000000e+00
  %2809 = fmul fast float %2806, %2106
  %2810 = fmul fast float %2807, %2107
  %2811 = fmul fast float %2808, %2108
  %2812 = fmul fast float %2806, %2115
  %2813 = fmul fast float %2807, %2116
  %2814 = fmul fast float %2808, %2117
  br label %2815

; <label>:2815                                    ; preds = %2780, %2762
  %2816 = phi float [ %2809, %2780 ], [ %2106, %2762 ]
  %2817 = phi float [ %2810, %2780 ], [ %2107, %2762 ]
  %2818 = phi float [ %2811, %2780 ], [ %2108, %2762 ]
  %2819 = phi float [ %2812, %2780 ], [ %2115, %2762 ]
  %2820 = phi float [ %2813, %2780 ], [ %2116, %2762 ]
  %2821 = phi float [ %2814, %2780 ], [ %2117, %2762 ]
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %2125, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = and i32 %2823, 3
  %2825 = icmp eq i32 %2824, 3
  br i1 %2825, label %2904, label %2826

; <label>:2826                                    ; preds = %2815
  %2827 = and i32 %2823, 16
  %2828 = icmp ne i32 %2827, 0
  %2829 = select i1 %2828, float %2305, float 0.000000e+00
  %2830 = icmp eq i32 %2824, 0
  br i1 %2830, label %2831, label %2859

; <label>:2831                                    ; preds = %2826
  %2832 = and i32 %2823, 64
  %2833 = icmp ne i32 %2832, 0
  %2834 = select i1 %2833, float %2305, float 0.000000e+00
  %2835 = fsub fast float %2525, %2816
  %2836 = fsub fast float %2526, %2817
  %2837 = fsub fast float %2527, %2818
  %2838 = fmul fast float %2829, %2835
  %2839 = fmul fast float %2829, %2836
  %2840 = fmul fast float %2829, %2837
  %2841 = fadd fast float %2838, %2816
  %2842 = fadd fast float %2839, %2817
  %2843 = fadd fast float %2840, %2818
  %2844 = fsub fast float %2511, %2118
  %2845 = fmul fast float %2829, %2844
  %2846 = fadd fast float %2845, %2118
  %2847 = fsub fast float %2653, %2819
  %2848 = fsub fast float %2654, %2820
  %2849 = fsub fast float %2655, %2821
  %2850 = fmul fast float %2834, %2847
  %2851 = fmul fast float %2834, %2848
  %2852 = fmul fast float %2834, %2849
  %2853 = fadd fast float %2850, %2819
  %2854 = fadd fast float %2851, %2820
  %2855 = fadd fast float %2852, %2821
  %2856 = fsub fast float %2779, %2122
  %2857 = fmul fast float %2829, %2856
  %2858 = fadd fast float %2857, %2122
  br label %2904

; <label>:2859                                    ; preds = %2826
  %2860 = icmp eq i32 %2824, 1
  br i1 %2860, label %2861, label %2874

; <label>:2861                                    ; preds = %2859
  %2862 = fadd fast float %2525, -1.000000e+00
  %2863 = fadd fast float %2526, -1.000000e+00
  %2864 = fadd fast float %2527, -1.000000e+00
  %2865 = fmul fast float %2829, %2862
  %2866 = fmul fast float %2829, %2863
  %2867 = fmul fast float %2829, %2864
  %2868 = fadd fast float %2865, 1.000000e+00
  %2869 = fadd fast float %2866, 1.000000e+00
  %2870 = fadd fast float %2867, 1.000000e+00
  %2871 = fmul fast float %2868, %2816
  %2872 = fmul fast float %2869, %2817
  %2873 = fmul fast float %2870, %2818
  br label %2904

; <label>:2874                                    ; preds = %2859
  %2875 = icmp eq i32 %2824, 2
  br i1 %2875, label %2876, label %2904

; <label>:2876                                    ; preds = %2874
  %2877 = call float @dx.op.unary.f32(i32 24, float %2525)  ; Sqrt(value)
  %2878 = call float @dx.op.unary.f32(i32 24, float %2526)  ; Sqrt(value)
  %2879 = call float @dx.op.unary.f32(i32 24, float %2527)  ; Sqrt(value)
  %2880 = fadd fast float %2877, -5.000000e-01
  %2881 = fadd fast float %2878, -5.000000e-01
  %2882 = fadd fast float %2879, -5.000000e-01
  %2883 = fmul fast float %2880, %2829
  %2884 = fmul fast float %2881, %2829
  %2885 = fmul fast float %2882, %2829
  %2886 = fadd fast float %2883, 5.000000e-01
  %2887 = fadd fast float %2884, 5.000000e-01
  %2888 = fadd fast float %2885, 5.000000e-01
  %2889 = fmul fast float %2886, 2.000000e+00
  %2890 = fsub fast float 1.000000e+00, %2889
  %2891 = fmul fast float %2890, %2816
  %2892 = fadd fast float %2891, %2889
  %2893 = fmul fast float %2892, %2816
  %2894 = fmul fast float %2887, 2.000000e+00
  %2895 = fsub fast float 1.000000e+00, %2894
  %2896 = fmul fast float %2895, %2817
  %2897 = fadd fast float %2896, %2894
  %2898 = fmul fast float %2897, %2817
  %2899 = fmul fast float %2888, 2.000000e+00
  %2900 = fsub fast float 1.000000e+00, %2899
  %2901 = fmul fast float %2900, %2818
  %2902 = fadd fast float %2901, %2899
  %2903 = fmul fast float %2902, %2818
  br label %2904

; <label>:2904                                    ; preds = %2876, %2874, %2861, %2831, %2815
  %2905 = phi float [ %2816, %2815 ], [ %2893, %2876 ], [ %2816, %2874 ], [ %2871, %2861 ], [ %2841, %2831 ]
  %2906 = phi float [ %2817, %2815 ], [ %2898, %2876 ], [ %2817, %2874 ], [ %2872, %2861 ], [ %2842, %2831 ]
  %2907 = phi float [ %2818, %2815 ], [ %2903, %2876 ], [ %2818, %2874 ], [ %2873, %2861 ], [ %2843, %2831 ]
  %2908 = phi float [ %2819, %2815 ], [ %2819, %2876 ], [ %2819, %2874 ], [ %2819, %2861 ], [ %2853, %2831 ]
  %2909 = phi float [ %2820, %2815 ], [ %2820, %2876 ], [ %2820, %2874 ], [ %2820, %2861 ], [ %2854, %2831 ]
  %2910 = phi float [ %2821, %2815 ], [ %2821, %2876 ], [ %2821, %2874 ], [ %2821, %2861 ], [ %2855, %2831 ]
  %2911 = phi float [ %2118, %2815 ], [ %2118, %2876 ], [ %2118, %2874 ], [ %2118, %2861 ], [ %2846, %2831 ]
  %2912 = phi float [ %2122, %2815 ], [ %2122, %2876 ], [ %2122, %2874 ], [ %2122, %2861 ], [ %2858, %2831 ]
  %2913 = and i32 %2823, 12
  %2914 = icmp eq i32 %2913, 12
  br i1 %2914, label %3045, label %2915

; <label>:2915                                    ; preds = %2904
  %2916 = and i32 %2823, 2097184
  %2917 = icmp eq i32 %2916, 2097184
  %2918 = select i1 %2917, float %2305, float 0.000000e+00
  %2919 = and i32 %2823, 4194336
  %2920 = icmp eq i32 %2919, 4194336
  %2921 = select i1 %2920, float %2305, float 0.000000e+00
  %2922 = and i32 %2823, 8388640
  %2923 = icmp eq i32 %2922, 8388640
  %2924 = select i1 %2923, float %2305, float 0.000000e+00
  %2925 = and i32 %2823, 1024
  %2926 = icmp ne i32 %2925, 0
  %2927 = select i1 %2926, float %2305, float 0.000000e+00
  %2928 = and i32 %2823, 2048
  %2929 = icmp ne i32 %2928, 0
  %2930 = select i1 %2929, float %2305, float 0.000000e+00
  %2931 = and i32 %2823, 8192
  %2932 = icmp ne i32 %2931, 0
  %2933 = select i1 %2932, float %2305, float 0.000000e+00
  %2934 = icmp eq i32 %2913, 0
  br i1 %2934, label %2935, label %2969

; <label>:2935                                    ; preds = %2915
  %2936 = fsub fast float %2606, %2104
  %2937 = fsub fast float %2607, %2105
  %2938 = fmul fast float %2918, %2936
  %2939 = fmul fast float %2918, %2937
  %2940 = fadd fast float %2938, %2104
  %2941 = fadd fast float %2939, %2105
  %2942 = fsub fast float %2608, %2120
  %2943 = fmul fast float %2921, %2942
  %2944 = fadd fast float %2943, %2120
  %2945 = fsub fast float %2605, %2119
  %2946 = fmul fast float %2924, %2945
  %2947 = fadd fast float %2946, %2119
  %2948 = fsub fast float %2711, %2112
  %2949 = fsub fast float %2712, %2113
  %2950 = fsub fast float %2713, %2114
  %2951 = fmul fast float %2927, %2948
  %2952 = fmul fast float %2927, %2949
  %2953 = fmul fast float %2927, %2950
  %2954 = fadd fast float %2951, %2112
  %2955 = fadd fast float %2952, %2113
  %2956 = fadd fast float %2953, %2114
  %2957 = fsub fast float %2766, %2121
  %2958 = fmul fast float %2930, %2957
  %2959 = fadd fast float %2958, %2121
  %2960 = fsub fast float %2763, %2109
  %2961 = fsub fast float %2764, %2110
  %2962 = fsub fast float %2765, %2111
  %2963 = fmul fast float %2933, %2960
  %2964 = fmul fast float %2933, %2961
  %2965 = fmul fast float %2933, %2962
  %2966 = fadd fast float %2963, %2109
  %2967 = fadd fast float %2964, %2110
  %2968 = fadd fast float %2965, %2111
  br label %3045

; <label>:2969                                    ; preds = %2915
  %2970 = icmp eq i32 %2913, 4
  br i1 %2970, label %2971, label %3017

; <label>:2971                                    ; preds = %2969
  %2972 = fmul fast float %2918, %2606
  %2973 = fmul fast float %2918, %2607
  %2974 = fadd fast float %2972, %2104
  %2975 = fadd fast float %2973, %2105
  %2976 = call float @dx.op.binary.f32(i32 36, float %2120, float %2608)  ; FMin(a,b)
  %2977 = fsub fast float %2976, %2120
  %2978 = fmul fast float %2977, %2921
  %2979 = fadd fast float %2978, %2120
  %2980 = fadd fast float %2605, %2119
  %2981 = fmul fast float %2980, 0x3FF337FAE0000000
  %2982 = fmul fast float %2119, %2119
  %2983 = fmul fast float %2605, %2605
  %2984 = fadd fast float %2983, %2982
  %2985 = fmul fast float %2984, 0x3FE5152B00000000
  %2986 = fmul fast float %2119, 0xBFCC1F85E0000000
  %2987 = fmul fast float %2986, %2605
  %2988 = fadd fast float %2987, 0xBFE1363700000000
  %2989 = fadd fast float %2988, %2981
  %2990 = fsub fast float %2989, %2985
  %2991 = fmul fast float %2980, 0x3FBA6F0D00000000
  %2992 = fmul fast float %2984, 0x3FD0432880000000
  %2993 = fmul fast float %2119, 0xBFEF110800000000
  %2994 = fmul fast float %2993, %2605
  %2995 = fadd fast float %2994, 1.000000e+00
  %2996 = fsub fast float %2995, %2991
  %2997 = fadd fast float %2996, %2992
  %2998 = fdiv fast float %2990, %2997
  %2999 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  %3000 = fsub fast float %2999, %2119
  %3001 = fmul fast float %3000, %2924
  %3002 = fadd fast float %3001, %2119
  %3003 = fmul fast float %2927, %2711
  %3004 = fmul fast float %2927, %2712
  %3005 = fmul fast float %2927, %2713
  %3006 = fadd fast float %3003, %2112
  %3007 = fadd fast float %3004, %2113
  %3008 = fadd fast float %3005, %2114
  %3009 = fmul fast float %2930, %2766
  %3010 = fadd fast float %3009, %2121
  %3011 = fmul fast float %2933, %2763
  %3012 = fmul fast float %2933, %2764
  %3013 = fmul fast float %2933, %2765
  %3014 = fadd fast float %3011, %2109
  %3015 = fadd fast float %3012, %2110
  %3016 = fadd fast float %3013, %2111
  br label %3045

; <label>:3017                                    ; preds = %2969
  %3018 = icmp eq i32 %2913, 8
  br i1 %3018, label %3019, label %3045

; <label>:3019                                    ; preds = %3017
  %3020 = fmul fast float %2918, %2606
  %3021 = fmul fast float %2918, %2607
  %3022 = fadd fast float %3020, %2104
  %3023 = fadd fast float %3021, %2105
  %3024 = call float @dx.op.binary.f32(i32 36, float %2120, float %2608)  ; FMin(a,b)
  %3025 = fsub fast float %3024, %2120
  %3026 = fmul fast float %3025, %2921
  %3027 = fadd fast float %3026, %2120
  %3028 = fsub fast float %2605, %2119
  %3029 = fmul fast float %2924, %3028
  %3030 = fadd fast float %3029, %2119
  %3031 = fmul fast float %2927, %2711
  %3032 = fmul fast float %2927, %2712
  %3033 = fmul fast float %2927, %2713
  %3034 = fadd fast float %3031, %2112
  %3035 = fadd fast float %3032, %2113
  %3036 = fadd fast float %3033, %2114
  %3037 = fmul fast float %2930, %2766
  %3038 = fadd fast float %3037, %2121
  %3039 = fmul fast float %2933, %2763
  %3040 = fmul fast float %2933, %2764
  %3041 = fmul fast float %2933, %2765
  %3042 = fadd fast float %3039, %2109
  %3043 = fadd fast float %3040, %2110
  %3044 = fadd fast float %3041, %2111
  br label %3045

; <label>:3045                                    ; preds = %3019, %3017, %2971, %2935, %2904, %2304, %2123, %2103
  %3046 = phi float [ %2104, %2904 ], [ %2104, %2304 ], [ %2104, %2103 ], [ %3022, %3019 ], [ %2104, %3017 ], [ %2974, %2971 ], [ %2940, %2935 ], [ %2104, %2123 ]
  %3047 = phi float [ %2105, %2904 ], [ %2105, %2304 ], [ %2105, %2103 ], [ %3023, %3019 ], [ %2105, %3017 ], [ %2975, %2971 ], [ %2941, %2935 ], [ %2105, %2123 ]
  %3048 = phi float [ %2905, %2904 ], [ %2106, %2304 ], [ %2106, %2103 ], [ %2905, %3019 ], [ %2905, %3017 ], [ %2905, %2971 ], [ %2905, %2935 ], [ %2106, %2123 ]
  %3049 = phi float [ %2906, %2904 ], [ %2107, %2304 ], [ %2107, %2103 ], [ %2906, %3019 ], [ %2906, %3017 ], [ %2906, %2971 ], [ %2906, %2935 ], [ %2107, %2123 ]
  %3050 = phi float [ %2907, %2904 ], [ %2108, %2304 ], [ %2108, %2103 ], [ %2907, %3019 ], [ %2907, %3017 ], [ %2907, %2971 ], [ %2907, %2935 ], [ %2108, %2123 ]
  %3051 = phi float [ %2109, %2904 ], [ %2109, %2304 ], [ %2109, %2103 ], [ %3042, %3019 ], [ %2109, %3017 ], [ %3014, %2971 ], [ %2966, %2935 ], [ %2109, %2123 ]
  %3052 = phi float [ %2110, %2904 ], [ %2110, %2304 ], [ %2110, %2103 ], [ %3043, %3019 ], [ %2110, %3017 ], [ %3015, %2971 ], [ %2967, %2935 ], [ %2110, %2123 ]
  %3053 = phi float [ %2111, %2904 ], [ %2111, %2304 ], [ %2111, %2103 ], [ %3044, %3019 ], [ %2111, %3017 ], [ %3016, %2971 ], [ %2968, %2935 ], [ %2111, %2123 ]
  %3054 = phi float [ %2112, %2904 ], [ %2112, %2304 ], [ %2112, %2103 ], [ %3034, %3019 ], [ %2112, %3017 ], [ %3006, %2971 ], [ %2954, %2935 ], [ %2112, %2123 ]
  %3055 = phi float [ %2113, %2904 ], [ %2113, %2304 ], [ %2113, %2103 ], [ %3035, %3019 ], [ %2113, %3017 ], [ %3007, %2971 ], [ %2955, %2935 ], [ %2113, %2123 ]
  %3056 = phi float [ %2114, %2904 ], [ %2114, %2304 ], [ %2114, %2103 ], [ %3036, %3019 ], [ %2114, %3017 ], [ %3008, %2971 ], [ %2956, %2935 ], [ %2114, %2123 ]
  %3057 = phi float [ %2908, %2904 ], [ %2115, %2304 ], [ %2115, %2103 ], [ %2908, %3019 ], [ %2908, %3017 ], [ %2908, %2971 ], [ %2908, %2935 ], [ %2115, %2123 ]
  %3058 = phi float [ %2909, %2904 ], [ %2116, %2304 ], [ %2116, %2103 ], [ %2909, %3019 ], [ %2909, %3017 ], [ %2909, %2971 ], [ %2909, %2935 ], [ %2116, %2123 ]
  %3059 = phi float [ %2910, %2904 ], [ %2117, %2304 ], [ %2117, %2103 ], [ %2910, %3019 ], [ %2910, %3017 ], [ %2910, %2971 ], [ %2910, %2935 ], [ %2117, %2123 ]
  %3060 = phi float [ %2911, %2904 ], [ %2118, %2304 ], [ %2118, %2103 ], [ %2911, %3019 ], [ %2911, %3017 ], [ %2911, %2971 ], [ %2911, %2935 ], [ %2118, %2123 ]
  %3061 = phi float [ %2119, %2904 ], [ %2119, %2304 ], [ %2119, %2103 ], [ %3030, %3019 ], [ %2119, %3017 ], [ %3002, %2971 ], [ %2947, %2935 ], [ %2119, %2123 ]
  %3062 = phi float [ %2120, %2904 ], [ %2120, %2304 ], [ %2120, %2103 ], [ %3027, %3019 ], [ %2120, %3017 ], [ %2979, %2971 ], [ %2944, %2935 ], [ %2120, %2123 ]
  %3063 = phi float [ %2121, %2904 ], [ %2121, %2304 ], [ %2121, %2103 ], [ %3038, %3019 ], [ %2121, %3017 ], [ %3010, %2971 ], [ %2959, %2935 ], [ %2121, %2123 ]
  %3064 = phi float [ %2912, %2904 ], [ %2122, %2304 ], [ %2122, %2103 ], [ %2912, %3019 ], [ %2912, %3017 ], [ %2912, %2971 ], [ %2912, %2935 ], [ %2122, %2123 ]
  br i1 %452, label %3987, label %3065

; <label>:3065                                    ; preds = %3045
  %3066 = icmp ult i32 %506, 4
  %3067 = add i32 %51, 72
  %3068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3069 = extractvalue %dx.types.ResRet.i32 %3068, 0
  %3070 = add i32 %51, 76
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = or i32 %3072, %3069
  %3074 = icmp eq i32 %3073, 0
  br i1 %3074, label %3987, label %3075

; <label>:3075                                    ; preds = %3065
  %3076 = and i32 %3069, 262144
  %3077 = icmp ne i32 %3076, 0
  %3078 = select i1 %3077, float %57, float 1.000000e+00
  %3079 = select i1 %3077, float %58, float 0.000000e+00
  %3080 = select i1 %3077, float %59, float 0.000000e+00
  %3081 = select i1 %3077, float %60, float 1.000000e+00
  %3082 = select i1 %3077, float %61, float %89
  %3083 = select i1 %3077, float %62, float %90
  %3084 = add i32 %51, 332
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = lshr i32 %3086, 16
  %3088 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3087)  ; LegacyF16ToF32(value)
  %3089 = fmul fast float %3088, 0x3F50624DE0000000
  %3090 = add i32 %51, 136
  %3091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3090, i32 undef)  ; BufferLoad(srv,index,wot)
  %3092 = extractvalue %dx.types.ResRet.i32 %3091, 0
  %3093 = lshr i32 %3092, 16
  %3094 = and i32 %3093, 255
  %3095 = lshr i32 %3092, 24
  %3096 = add i32 %51, 340
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, 65535
  %3100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3099)  ; LegacyF16ToF32(value)
  %3101 = lshr i32 %3098, 16
  %3102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3101)  ; LegacyF16ToF32(value)
  %3103 = add i32 %51, 80
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = lshr i32 %3105, 22
  %3107 = shl nuw nsw i32 %3106, 5
  %3108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3107)  ; LegacyF16ToF32(value)
  %3109 = shl i32 %3105, 4
  %3110 = and i32 %3109, 32752
  %3111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3110)  ; LegacyF16ToF32(value)
  %3112 = lshr i32 %3105, 7
  %3113 = and i32 %3112, 32752
  %3114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3113)  ; LegacyF16ToF32(value)
  %3115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3116 = extractvalue %dx.types.CBufRet.f32 %3115, 3
  %3117 = fmul fast float %3116, 1.000000e+03
  %3118 = fmul fast float %442, %3117
  %3119 = call float @dx.op.unary.f32(i32 22, float %3118)  ; Frc(value)
  %3120 = fadd fast float %3119, %432
  %3121 = fmul fast float %443, %3117
  %3122 = call float @dx.op.unary.f32(i32 22, float %3121)  ; Frc(value)
  %3123 = fadd fast float %3122, %434
  %3124 = fmul fast float %3089, %3117
  %3125 = call float @dx.op.unary.f32(i32 22, float %3124)  ; Frc(value)
  %3126 = fmul fast float %3125, 0x401921FB60000000
  %3127 = fadd fast float %3126, %3108
  %3128 = call float @dx.op.unary.f32(i32 13, float %3127)  ; Sin(value)
  %3129 = call float @dx.op.unary.f32(i32 12, float %3127)  ; Cos(value)
  %3130 = fsub fast float -0.000000e+00, %3128
  %3131 = fadd fast float %3082, -5.000000e-01
  %3132 = fadd fast float %3083, -5.000000e-01
  %3133 = fmul fast float %3100, %3131
  %3134 = fmul fast float %3102, %3132
  %3135 = fadd fast float %3133, 5.000000e-01
  %3136 = fadd fast float %3134, 5.000000e-01
  %3137 = fmul fast float %3111, %3135
  %3138 = fmul fast float %3114, %3136
  %3139 = fmul fast float %3129, %3137
  %3140 = call float @dx.op.tertiary.f32(i32 46, float %3130, float %3138, float %3139)  ; FMad(a,b,c)
  %3141 = fmul fast float %3128, %3137
  %3142 = call float @dx.op.tertiary.f32(i32 46, float %3129, float %3138, float %3141)  ; FMad(a,b,c)
  %3143 = fadd fast float %3120, %3140
  %3144 = fadd fast float %3123, %3142
  %3145 = icmp ugt i32 %3094, 1
  %3146 = icmp ugt i32 %3092, 33554431
  %3147 = or i1 %3146, %3145
  br i1 %3147, label %3148, label %3173

; <label>:3148                                    ; preds = %3075
  %3149 = add i32 %51, 276
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = lshr i32 %3151, 16
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = fmul fast float %3116, %3153
  %3155 = call float @dx.op.unary.f32(i32 22, float %3154)  ; Frc(value)
  %3156 = mul nuw nsw i32 %3094, %3095
  %3157 = uitofp i32 %3156 to float
  %3158 = fmul fast float %3155, %3157
  %3159 = call float @dx.op.unary.f32(i32 27, float %3158)  ; Round_ni(value)
  %3160 = fptoui float %3159 to i32
  %3161 = urem i32 %3160, %3094
  %3162 = udiv i32 %3160, %3095
  %3163 = call float @dx.op.unary.f32(i32 22, float %3143)  ; Frc(value)
  %3164 = call float @dx.op.unary.f32(i32 22, float %3144)  ; Frc(value)
  %3165 = uitofp i32 %3161 to float
  %3166 = uitofp i32 %3162 to float
  %3167 = fadd fast float %3163, %3165
  %3168 = fadd fast float %3164, %3166
  %3169 = uitofp i32 %3094 to float
  %3170 = uitofp i32 %3095 to float
  %3171 = fdiv fast float %3167, %3169
  %3172 = fdiv fast float %3168, %3170
  br label %3173

; <label>:3173                                    ; preds = %3148, %3075
  %3174 = phi float [ %3171, %3148 ], [ %3143, %3075 ]
  %3175 = phi float [ %3172, %3148 ], [ %3144, %3075 ]
  %3176 = and i32 %3069, 256
  %3177 = icmp eq i32 %3176, 0
  br i1 %3177, label %3224, label %3178

; <label>:3178                                    ; preds = %3173
  %3179 = add i32 %51, 452
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = add i32 %3181, 0
  %3183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3183, %dx.types.Handle %108, float %3174, float %3175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3185 = extractvalue %dx.types.ResRet.f32 %3184, 0
  %3186 = add i32 %51, 148
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3186, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = shl i32 %3188, 4
  %3190 = and i32 %3189, 32752
  %3191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3190)  ; LegacyF16ToF32(value)
  %3192 = lshr i32 %3188, 7
  %3193 = and i32 %3192, 32752
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = fsub fast float 1.000000e+00, %501
  %3196 = call float @dx.op.binary.f32(i32 35, float %3195, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3197 = bitcast float %501 to i32
  %3198 = sitofp i32 %3197 to float
  %3199 = fadd fast float %3198, 0xC1CFBF8940000000
  %3200 = fmul fast float %3194, %3199
  %3201 = fadd fast float %3200, 0x41CFBF8940000000
  %3202 = fptosi float %3201 to i32
  %3203 = bitcast i32 %3202 to float
  %3204 = bitcast float %3196 to i32
  %3205 = sitofp i32 %3204 to float
  %3206 = fadd fast float %3205, 0xC1CFBF8940000000
  %3207 = fmul fast float %3206, %3194
  %3208 = fadd fast float %3207, 0x41CFBF8940000000
  %3209 = fptosi float %3208 to i32
  %3210 = bitcast i32 %3209 to float
  %3211 = fmul fast float %3203, %3191
  %3212 = fmul fast float %3210, %3191
  %3213 = fsub fast float %3196, %3211
  %3214 = fadd fast float %3212, %3196
  %3215 = call float @dx.op.unary.f32(i32 7, float %3213)  ; Saturate(value)
  %3216 = call float @dx.op.unary.f32(i32 7, float %3214)  ; Saturate(value)
  %3217 = fsub fast float %3185, %3215
  %3218 = fsub fast float %3216, %3215
  %3219 = bitcast float %3218 to i32
  %3220 = sub nsw i32 2129859010, %3219
  %3221 = bitcast i32 %3220 to float
  %3222 = fmul fast float %3221, %3217
  %3223 = call float @dx.op.unary.f32(i32 7, float %3222)  ; Saturate(value)
  br label %3224

; <label>:3224                                    ; preds = %3178, %3173
  %3225 = phi float [ %3223, %3178 ], [ %501, %3173 ]
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 128
  %3229 = icmp eq i32 %3228, 0
  br i1 %3229, label %3246, label %3230

; <label>:3230                                    ; preds = %3224
  %3231 = add i32 %51, 436
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = add i32 %3233, 0
  %3235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3235, %dx.types.Handle %108, float %3174, float %3175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 524288
  %3241 = icmp ne i32 %3240, 0
  %3242 = fcmp fast ogt float %3237, 0x3FE0101020000000
  %3243 = select i1 %3242, float 1.000000e+00, float 0.000000e+00
  %3244 = select i1 %3241, float %3243, float %3237
  %3245 = fmul fast float %3244, %3225
  br label %3246

; <label>:3246                                    ; preds = %3230, %3224
  %3247 = phi float [ %3245, %3230 ], [ %3225, %3224 ]
  %3248 = fcmp fast ult float %3247, 0x3F70101020000000
  br i1 %3248, label %3987, label %3249

; <label>:3249                                    ; preds = %3246
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 16
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3452, label %3254

; <label>:3254                                    ; preds = %3249
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3090, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = add i32 %51, 388
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3257, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = add i32 %3259, 0
  %3261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3262 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3261, %dx.types.Handle %107, float %3174, float %3175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3263 = extractvalue %dx.types.ResRet.f32 %3262, 0
  %3264 = extractvalue %dx.types.ResRet.f32 %3262, 1
  %3265 = extractvalue %dx.types.ResRet.f32 %3262, 2
  %3266 = extractvalue %dx.types.ResRet.f32 %3262, 3
  %3267 = and i32 %3256, 255
  %3268 = uitofp i32 %3267 to float
  %3269 = lshr i32 %3256, 8
  %3270 = and i32 %3269, 255
  %3271 = uitofp i32 %3270 to float
  %3272 = fmul fast float %3266, %3268
  %3273 = fadd fast float %3272, %3271
  %3274 = fmul fast float %3273, 0x3F70101000000000
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 512
  %3278 = icmp eq i32 %3277, 0
  br i1 %3278, label %3287, label %3279

; <label>:3279                                    ; preds = %3254
  %3280 = add i32 %51, 472
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = add i32 %3282, 0
  %3284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3283, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3285 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3284, %dx.types.Handle %108, float %3174, float %3175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  br label %3287

; <label>:3287                                    ; preds = %3279, %3254
  %3288 = phi float [ %3286, %3279 ], [ 1.000000e+00, %3254 ]
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, 33554432
  %3292 = icmp eq i32 %3291, 0
  br i1 %3292, label %3399, label %3293

; <label>:3293                                    ; preds = %3287
  %3294 = add i32 %51, 272
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = and i32 %3296, 65535
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = lshr i32 %3296, 16
  %3300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3299)  ; LegacyF16ToF32(value)
  %3301 = add i32 %51, 276
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 65535
  %3305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3304)  ; LegacyF16ToF32(value)
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3322 = add i32 %51, 268
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = lshr i32 %3324, 24
  %3326 = uitofp i32 %3325 to float
  %3327 = fmul fast float %3326, 0x3F70101020000000
  %3328 = and i32 %3324, 255
  %3329 = uitofp i32 %3328 to float
  %3330 = fmul fast float %3329, 0x3F70101020000000
  %3331 = lshr i32 %3324, 8
  %3332 = and i32 %3331, 255
  %3333 = uitofp i32 %3332 to float
  %3334 = fmul fast float %3333, 0x3F70101020000000
  %3335 = lshr i32 %3324, 16
  %3336 = and i32 %3335, 255
  %3337 = uitofp i32 %3336 to float
  %3338 = fmul fast float %3337, 0x3F70101020000000
  %3339 = bitcast float %3263 to i32
  %3340 = ashr i32 %3339, 1
  %3341 = sub nsw i32 1597463174, %3340
  %3342 = bitcast i32 %3341 to float
  %3343 = fmul fast float %3263, 5.000000e-01
  %3344 = fmul fast float %3342, %3342
  %3345 = fmul fast float %3344, %3343
  %3346 = fsub fast float 1.500000e+00, %3345
  %3347 = fmul fast float %3342, %3263
  %3348 = fmul fast float %3347, %3346
  %3349 = bitcast float %3264 to i32
  %3350 = ashr i32 %3349, 1
  %3351 = sub nsw i32 1597463174, %3350
  %3352 = bitcast i32 %3351 to float
  %3353 = fmul fast float %3264, 5.000000e-01
  %3354 = fmul fast float %3352, %3352
  %3355 = fmul fast float %3354, %3353
  %3356 = fsub fast float 1.500000e+00, %3355
  %3357 = fmul fast float %3352, %3264
  %3358 = fmul fast float %3357, %3356
  %3359 = bitcast float %3265 to i32
  %3360 = ashr i32 %3359, 1
  %3361 = sub nsw i32 1597463174, %3360
  %3362 = bitcast i32 %3361 to float
  %3363 = fmul fast float %3265, 5.000000e-01
  %3364 = fmul fast float %3362, %3362
  %3365 = fmul fast float %3364, %3363
  %3366 = fsub fast float 1.500000e+00, %3365
  %3367 = fmul fast float %3362, %3265
  %3368 = fmul fast float %3367, %3366
  %3369 = fsub fast float %3348, %3330
  %3370 = fsub fast float %3358, %3334
  %3371 = fsub fast float %3368, %3338
  %3372 = fmul fast float %3369, %3298
  %3373 = fmul fast float %3370, %3300
  %3374 = fmul fast float %3371, %3305
  %3375 = fadd fast float %3372, %3313
  %3376 = fadd fast float %3373, %3317
  %3377 = fadd fast float %3374, %3321
  %3378 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3379 = call float @dx.op.unary.f32(i32 7, float %3376)  ; Saturate(value)
  %3380 = call float @dx.op.unary.f32(i32 7, float %3377)  ; Saturate(value)
  %3381 = fmul fast float %3378, %3378
  %3382 = fmul fast float %3379, %3379
  %3383 = fmul fast float %3380, %3380
  %3384 = fsub fast float %3381, %3263
  %3385 = fsub fast float %3382, %3264
  %3386 = fsub fast float %3383, %3265
  %3387 = fmul fast float %3384, %3288
  %3388 = fmul fast float %3385, %3288
  %3389 = fmul fast float %3386, %3288
  %3390 = fadd fast float %3387, %3263
  %3391 = fadd fast float %3388, %3264
  %3392 = fadd fast float %3389, %3265
  %3393 = fadd fast float %3310, %3274
  %3394 = fsub fast float %3393, %3327
  %3395 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3396 = fsub fast float %3395, %3274
  %3397 = fmul fast float %3396, %3288
  %3398 = fadd fast float %3397, %3274
  br label %3452

; <label>:3399                                    ; preds = %3287
  %3400 = and i32 %3290, 134217728
  %3401 = icmp eq i32 %3400, 0
  br i1 %3401, label %3436, label %3402

; <label>:3402                                    ; preds = %3399
  %3403 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %3404 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %3405 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %3406 = fadd fast float %3403, -5.000000e-01
  %3407 = fadd fast float %3404, -5.000000e-01
  %3408 = fadd fast float %3405, -5.000000e-01
  %3409 = fmul fast float %3406, %3288
  %3410 = fmul fast float %3407, %3288
  %3411 = fmul fast float %3408, %3288
  %3412 = fadd fast float %3409, 5.000000e-01
  %3413 = fadd fast float %3410, 5.000000e-01
  %3414 = fadd fast float %3411, 5.000000e-01
  %3415 = call float @dx.op.unary.f32(i32 24, float %3263)  ; Sqrt(value)
  %3416 = call float @dx.op.unary.f32(i32 24, float %3264)  ; Sqrt(value)
  %3417 = call float @dx.op.unary.f32(i32 24, float %3265)  ; Sqrt(value)
  %3418 = fmul fast float %3412, 2.000000e+00
  %3419 = fsub fast float 1.000000e+00, %3418
  %3420 = fmul fast float %3419, %3415
  %3421 = fadd fast float %3420, %3418
  %3422 = fmul fast float %3421, %3415
  %3423 = fmul fast float %3413, 2.000000e+00
  %3424 = fsub fast float 1.000000e+00, %3423
  %3425 = fmul fast float %3424, %3416
  %3426 = fadd fast float %3425, %3423
  %3427 = fmul fast float %3426, %3416
  %3428 = fmul fast float %3414, 2.000000e+00
  %3429 = fsub fast float 1.000000e+00, %3428
  %3430 = fmul fast float %3429, %3417
  %3431 = fadd fast float %3430, %3428
  %3432 = fmul fast float %3431, %3417
  %3433 = fmul fast float %3422, %3422
  %3434 = fmul fast float %3427, %3427
  %3435 = fmul fast float %3432, %3432
  br label %3452

; <label>:3436                                    ; preds = %3399
  %3437 = fmul fast float %419, %419
  %3438 = fmul fast float %423, %423
  %3439 = fmul fast float %427, %427
  %3440 = fadd fast float %3437, -1.000000e+00
  %3441 = fadd fast float %3438, -1.000000e+00
  %3442 = fadd fast float %3439, -1.000000e+00
  %3443 = fmul fast float %3288, %3440
  %3444 = fmul fast float %3288, %3441
  %3445 = fmul fast float %3288, %3442
  %3446 = fadd fast float %3443, 1.000000e+00
  %3447 = fadd fast float %3444, 1.000000e+00
  %3448 = fadd fast float %3445, 1.000000e+00
  %3449 = fmul fast float %3446, %3263
  %3450 = fmul fast float %3447, %3264
  %3451 = fmul fast float %3448, %3265
  br label %3452

; <label>:3452                                    ; preds = %3436, %3402, %3293, %3249
  %3453 = phi float [ %3398, %3293 ], [ %3274, %3402 ], [ %3274, %3436 ], [ 0x3FA23C0BE0000000, %3249 ]
  %3454 = phi float [ %3390, %3293 ], [ %3433, %3402 ], [ %3449, %3436 ], [ 1.000000e+00, %3249 ]
  %3455 = phi float [ %3391, %3293 ], [ %3434, %3402 ], [ %3450, %3436 ], [ 1.000000e+00, %3249 ]
  %3456 = phi float [ %3392, %3293 ], [ %3435, %3402 ], [ %3451, %3436 ], [ 1.000000e+00, %3249 ]
  %3457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3458 = extractvalue %dx.types.CBufRet.i32 %3457, 1
  %3459 = and i32 %3458, 1
  %3460 = icmp ne i32 %3459, 0
  %3461 = add i32 %51, 356
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3461, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 32
  %3465 = icmp ne i32 %3464, 0
  %3466 = and i1 %3460, %3465
  %3467 = select i1 %3466, float 1.000000e+00, float %3454
  %3468 = select i1 %3466, float 0x3FD3333340000000, float %3455
  %3469 = select i1 %3466, float 0x3FD3333340000000, float %3456
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = and i32 %3471, 32
  %3473 = icmp eq i32 %3472, 0
  br i1 %3473, label %3546, label %3474

; <label>:3474                                    ; preds = %3452
  %3475 = add i32 %51, 140
  %3476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3475, i32 undef)  ; BufferLoad(srv,index,wot)
  %3477 = extractvalue %dx.types.ResRet.i32 %3476, 0
  %3478 = add i32 %51, 404
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %3480, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3482, %dx.types.Handle %107, float %3174, float %3175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3487 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3488 = and i32 %3477, 255
  %3489 = uitofp i32 %3488 to float
  %3490 = lshr i32 %3477, 8
  %3491 = and i32 %3490, 255
  %3492 = uitofp i32 %3491 to float
  %3493 = lshr i32 %3477, 16
  %3494 = and i32 %3493, 255
  %3495 = uitofp i32 %3494 to float
  %3496 = fmul fast float %3495, 0x3F70101000000000
  %3497 = fmul fast float %3484, %3489
  %3498 = fadd fast float %3497, %3492
  %3499 = fmul fast float %3498, 0x3F70101000000000
  %3500 = fadd fast float %3485, -5.000000e-01
  %3501 = fadd fast float %3487, -5.000000e-01
  %3502 = fmul fast float %3500, %3496
  %3503 = fmul fast float %3501, %3496
  %3504 = fadd fast float %3502, 5.000000e-01
  %3505 = fadd fast float %3503, 5.000000e-01
  %3506 = fmul fast float %3504, 2.000000e+00
  %3507 = fadd fast float %3506, -1.000000e+00
  %3508 = fmul fast float %3505, 2.000000e+00
  %3509 = fadd fast float %3508, -1.000000e+00
  %3510 = fadd fast float %3507, %3509
  %3511 = fmul fast float %3510, 5.000000e-01
  %3512 = fsub fast float %3507, %3509
  %3513 = fmul fast float %3512, 5.000000e-01
  %3514 = call float @dx.op.unary.f32(i32 6, float %3511)  ; FAbs(value)
  %3515 = fsub fast float 1.000000e+00, %3514
  %3516 = call float @dx.op.unary.f32(i32 6, float %3513)  ; FAbs(value)
  %3517 = fsub fast float %3515, %3516
  %3518 = call float @dx.op.dot3.f32(i32 55, float %3511, float %3513, float %3517, float %3511, float %3513, float %3517)  ; Dot3(ax,ay,az,bx,by,bz)
  %3519 = call float @dx.op.unary.f32(i32 25, float %3518)  ; Rsqrt(value)
  %3520 = fmul fast float %3511, %3519
  %3521 = fmul fast float %3513, %3519
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = and i32 %3523, 67108864
  %3525 = icmp eq i32 %3524, 0
  br i1 %3525, label %3542, label %3526

; <label>:3526                                    ; preds = %3474
  %3527 = add i32 %51, 328
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 65535
  %3531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3530)  ; LegacyF16ToF32(value)
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 65535
  %3535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3534)  ; LegacyF16ToF32(value)
  %3536 = lshr i32 %3529, 16
  %3537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3536)  ; LegacyF16ToF32(value)
  %3538 = fsub fast float %3499, %3537
  %3539 = fmul fast float %3538, %3531
  %3540 = fadd fast float %3539, %3535
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  br label %3542

; <label>:3542                                    ; preds = %3526, %3474
  %3543 = phi float [ %3541, %3526 ], [ %3499, %3474 ]
  %3544 = call float @dx.op.dot2.f32(i32 54, float %3520, float %3521, float %3078, float %3079)  ; Dot2(ax,ay,bx,by)
  %3545 = call float @dx.op.dot2.f32(i32 54, float %3520, float %3521, float %3080, float %3081)  ; Dot2(ax,ay,bx,by)
  br label %3546

; <label>:3546                                    ; preds = %3542, %3452
  %3547 = phi float [ %3543, %3542 ], [ 0x3FD6666660000000, %3452 ]
  %3548 = phi float [ %3544, %3542 ], [ 0.000000e+00, %3452 ]
  %3549 = phi float [ %3545, %3542 ], [ 0.000000e+00, %3452 ]
  %3550 = phi float [ %3486, %3542 ], [ 1.000000e+00, %3452 ]
  %3551 = add i32 %51, 208
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = lshr i32 %3553, 22
  %3555 = shl nuw nsw i32 %3554, 5
  %3556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3555)  ; LegacyF16ToF32(value)
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, 64
  %3560 = icmp eq i32 %3559, 0
  br i1 %3560, label %3594, label %3561

; <label>:3561                                    ; preds = %3546
  %3562 = add i32 %51, 420
  %3563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3562, i32 undef)  ; BufferLoad(srv,index,wot)
  %3564 = extractvalue %dx.types.ResRet.i32 %3563, 0
  %3565 = add i32 %3564, 0
  %3566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = and i32 %3568, 131072
  %3570 = icmp eq i32 %3569, 0
  %3571 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3566, %dx.types.Handle %107, float %3174, float %3175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.ResRet.f32 %3571, 1
  %3574 = extractvalue %dx.types.ResRet.f32 %3571, 2
  %3575 = fmul fast float %3572, %407
  %3576 = fmul fast float %3573, %410
  %3577 = fmul fast float %3574, %413
  br i1 %3570, label %3584, label %3578

; <label>:3578                                    ; preds = %3561
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 0
  %3581 = fmul fast float %3580, %3575
  %3582 = fmul fast float %3580, %3576
  %3583 = fmul fast float %3580, %3577
  br label %3584

; <label>:3584                                    ; preds = %3578, %3561
  %3585 = phi float [ %3581, %3578 ], [ %3575, %3561 ]
  %3586 = phi float [ %3582, %3578 ], [ %3576, %3561 ]
  %3587 = phi float [ %3583, %3578 ], [ %3577, %3561 ]
  %3588 = fmul fast float %3585, %3556
  %3589 = select i1 %264, float %3588, float %3585
  %3590 = call float @dx.op.dot3.f32(i32 55, float %3589, float %3586, float %3587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3591 = select i1 %264, float 0.000000e+00, float %3585
  %3592 = select i1 %264, float %3590, float %3586
  %3593 = select i1 %264, float 0.000000e+00, float %3587
  br label %3594

; <label>:3594                                    ; preds = %3584, %3546
  %3595 = phi float [ %3591, %3584 ], [ 0.000000e+00, %3546 ]
  %3596 = phi float [ %3592, %3584 ], [ 0.000000e+00, %3546 ]
  %3597 = phi float [ %3593, %3584 ], [ 0.000000e+00, %3546 ]
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = and i32 %3599, 1024
  %3601 = icmp eq i32 %3600, 0
  br i1 %3601, label %3632, label %3602

; <label>:3602                                    ; preds = %3594
  %3603 = add i32 %51, 200
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = and i32 %3605, 255
  %3607 = uitofp i32 %3606 to float
  %3608 = fmul fast float %3607, 0x3F70101020000000
  %3609 = lshr i32 %3605, 8
  %3610 = and i32 %3609, 255
  %3611 = uitofp i32 %3610 to float
  %3612 = fmul fast float %3611, 0x3F70101020000000
  %3613 = lshr i32 %3605, 16
  %3614 = and i32 %3613, 255
  %3615 = uitofp i32 %3614 to float
  %3616 = fmul fast float %3615, 0x3F70101020000000
  %3617 = fmul fast float %3608, %3608
  %3618 = fmul fast float %3612, %3612
  %3619 = fmul fast float %3616, %3616
  %3620 = add i32 %51, 488
  %3621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.i32 %3621, 0
  %3623 = add i32 %3622, 0
  %3624 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3623, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3625 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3624, %dx.types.Handle %108, float %3174, float %3175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = fmul fast float %3617, %3626
  %3630 = fmul fast float %3618, %3627
  %3631 = fmul fast float %3619, %3628
  br label %3632

; <label>:3632                                    ; preds = %3602, %3594
  %3633 = phi float [ %3629, %3602 ], [ 0.000000e+00, %3594 ]
  %3634 = phi float [ %3630, %3602 ], [ 0.000000e+00, %3594 ]
  %3635 = phi float [ %3631, %3602 ], [ 0.000000e+00, %3594 ]
  %3636 = fcmp fast ogt float %3633, 0.000000e+00
  %3637 = fcmp fast ogt float %3634, 0.000000e+00
  %3638 = fcmp fast ogt float %3635, 0.000000e+00
  %3639 = call float @dx.op.unary.f32(i32 23, float %3633)  ; Log(value)
  %3640 = call float @dx.op.unary.f32(i32 23, float %3634)  ; Log(value)
  %3641 = call float @dx.op.unary.f32(i32 23, float %3635)  ; Log(value)
  %3642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.i32 %3642, 0
  %3644 = lshr i32 %3643, 7
  %3645 = and i32 %3644, 32752
  %3646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3645)  ; LegacyF16ToF32(value)
  %3647 = fmul fast float %3639, 0xBFE62E4300000000
  %3648 = fmul fast float %3647, %3646
  %3649 = fmul fast float %3640, 0xBFE62E4300000000
  %3650 = fmul fast float %3649, %3646
  %3651 = fmul fast float %3641, 0xBFE62E4300000000
  %3652 = fmul fast float %3651, %3646
  %3653 = select i1 %3636, float %3648, float 1.270000e+02
  %3654 = select i1 %3637, float %3650, float 1.270000e+02
  %3655 = select i1 %3638, float %3652, float 1.270000e+02
  %3656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.i32 %3656, 0
  %3658 = and i32 %3657, 10240
  %3659 = icmp eq i32 %3658, 0
  br i1 %3659, label %3704, label %3660

; <label>:3660                                    ; preds = %3632
  %3661 = add i32 %51, 504
  %3662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3661, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.i32 %3662, 0
  %3664 = add i32 %3663, 0
  %3665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3666 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3665, %dx.types.Handle %108, float %3174, float %3175, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3667 = extractvalue %dx.types.ResRet.f32 %3666, 1
  %3668 = extractvalue %dx.types.ResRet.f32 %3666, 3
  %3669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3670 = extractvalue %dx.types.ResRet.i32 %3669, 0
  %3671 = and i32 %3670, 1048576
  %3672 = icmp ne i32 %3671, 0
  %3673 = and i32 %3670, 8192
  %3674 = icmp eq i32 %3673, 0
  br i1 %3674, label %3690, label %3675

; <label>:3675                                    ; preds = %3660
  %3676 = extractvalue %dx.types.ResRet.f32 %3666, 2
  %3677 = select i1 %3672, float %3676, float %3667
  %3678 = extractvalue %dx.types.ResRet.f32 %3666, 0
  %3679 = select i1 %3672, float %3678, float %3667
  %3680 = add i32 %51, 144
  %3681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.i32 %3681, 0
  %3683 = lshr i32 %3682, 16
  %3684 = and i32 %3683, 255
  %3685 = uitofp i32 %3684 to float
  %3686 = fmul fast float %3685, 0x3F80101020000000
  %3687 = fmul fast float %3686, %3679
  %3688 = fmul fast float %3686, %3667
  %3689 = fmul fast float %3686, %3677
  br label %3690

; <label>:3690                                    ; preds = %3675, %3660
  %3691 = phi float [ %3687, %3675 ], [ 0.000000e+00, %3660 ]
  %3692 = phi float [ %3688, %3675 ], [ 0.000000e+00, %3660 ]
  %3693 = phi float [ %3689, %3675 ], [ 0.000000e+00, %3660 ]
  %3694 = and i32 %3670, 2048
  %3695 = icmp eq i32 %3694, 0
  br i1 %3695, label %3704, label %3696

; <label>:3696                                    ; preds = %3690
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = shl i32 %3698, 4
  %3700 = and i32 %3699, 32752
  %3701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3700)  ; LegacyF16ToF32(value)
  %3702 = fmul fast float %3701, %3668
  %3703 = call float @dx.op.binary.f32(i32 35, float %3702, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3704

; <label>:3704                                    ; preds = %3696, %3690, %3632
  %3705 = phi float [ %3691, %3696 ], [ %3691, %3690 ], [ 0.000000e+00, %3632 ]
  %3706 = phi float [ %3692, %3696 ], [ %3692, %3690 ], [ 0.000000e+00, %3632 ]
  %3707 = phi float [ %3693, %3696 ], [ %3693, %3690 ], [ 0.000000e+00, %3632 ]
  %3708 = phi float [ %3703, %3696 ], [ 0x3F70101020000000, %3690 ], [ 0x3F70101020000000, %3632 ]
  %3709 = add i32 %51, 144
  %3710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.i32 %3710, 0
  %3712 = and i32 %3711, 255
  %3713 = uitofp i32 %3712 to float
  %3714 = lshr i32 %3711, 8
  %3715 = and i32 %3714, 255
  %3716 = uitofp i32 %3715 to float
  %3717 = call float @dx.op.dot3.f32(i32 55, float %3467, float %3468, float %3469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3718 = fmul fast float %3716, %3717
  %3719 = fadd fast float %3718, %3713
  %3720 = fmul fast float %3719, 0x3F70101020000000
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  br i1 %3066, label %3722, label %3757

; <label>:3722                                    ; preds = %3704
  %3723 = fmul fast float %3708, 2.000000e+00
  %3724 = fcmp fast olt float %3653, 1.270000e+02
  %3725 = fcmp fast olt float %3654, 1.270000e+02
  %3726 = fcmp fast olt float %3655, 1.270000e+02
  %3727 = fmul fast float %3653, 0xBFF7154760000000
  %3728 = fmul fast float %3727, %3723
  %3729 = fmul fast float %3654, 0xBFF7154760000000
  %3730 = fmul fast float %3729, %3723
  %3731 = fmul fast float %3655, 0xBFF7154760000000
  %3732 = fmul fast float %3731, %3723
  %3733 = call float @dx.op.unary.f32(i32 21, float %3728)  ; Exp(value)
  %3734 = call float @dx.op.unary.f32(i32 21, float %3730)  ; Exp(value)
  %3735 = call float @dx.op.unary.f32(i32 21, float %3732)  ; Exp(value)
  %3736 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3737 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3738 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3739 = fadd fast float %3736, -1.000000e+00
  %3740 = select i1 %3724, float %3739, float -1.000000e+00
  %3741 = fadd fast float %3737, -1.000000e+00
  %3742 = select i1 %3725, float %3741, float -1.000000e+00
  %3743 = fadd fast float %3738, -1.000000e+00
  %3744 = select i1 %3726, float %3743, float -1.000000e+00
  %3745 = fmul fast float %3740, %3247
  %3746 = fmul fast float %3742, %3247
  %3747 = fmul fast float %3744, %3247
  %3748 = fadd fast float %3745, 1.000000e+00
  %3749 = fadd fast float %3746, 1.000000e+00
  %3750 = fadd fast float %3747, 1.000000e+00
  %3751 = fmul fast float %3748, %3048
  %3752 = fmul fast float %3749, %3049
  %3753 = fmul fast float %3750, %3050
  %3754 = fmul fast float %3748, %3057
  %3755 = fmul fast float %3749, %3058
  %3756 = fmul fast float %3750, %3059
  br label %3757

; <label>:3757                                    ; preds = %3722, %3704
  %3758 = phi float [ %3751, %3722 ], [ %3048, %3704 ]
  %3759 = phi float [ %3752, %3722 ], [ %3049, %3704 ]
  %3760 = phi float [ %3753, %3722 ], [ %3050, %3704 ]
  %3761 = phi float [ %3754, %3722 ], [ %3057, %3704 ]
  %3762 = phi float [ %3755, %3722 ], [ %3058, %3704 ]
  %3763 = phi float [ %3756, %3722 ], [ %3059, %3704 ]
  %3764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %3067, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.i32 %3764, 0
  %3766 = and i32 %3765, 3
  %3767 = icmp eq i32 %3766, 3
  br i1 %3767, label %3846, label %3768

; <label>:3768                                    ; preds = %3757
  %3769 = and i32 %3765, 16
  %3770 = icmp ne i32 %3769, 0
  %3771 = select i1 %3770, float %3247, float 0.000000e+00
  %3772 = icmp eq i32 %3766, 0
  br i1 %3772, label %3773, label %3801

; <label>:3773                                    ; preds = %3768
  %3774 = and i32 %3765, 64
  %3775 = icmp ne i32 %3774, 0
  %3776 = select i1 %3775, float %3247, float 0.000000e+00
  %3777 = fsub fast float %3467, %3758
  %3778 = fsub fast float %3468, %3759
  %3779 = fsub fast float %3469, %3760
  %3780 = fmul fast float %3771, %3777
  %3781 = fmul fast float %3771, %3778
  %3782 = fmul fast float %3771, %3779
  %3783 = fadd fast float %3780, %3758
  %3784 = fadd fast float %3781, %3759
  %3785 = fadd fast float %3782, %3760
  %3786 = fsub fast float %3453, %3060
  %3787 = fmul fast float %3771, %3786
  %3788 = fadd fast float %3787, %3060
  %3789 = fsub fast float %3595, %3761
  %3790 = fsub fast float %3596, %3762
  %3791 = fsub fast float %3597, %3763
  %3792 = fmul fast float %3776, %3789
  %3793 = fmul fast float %3776, %3790
  %3794 = fmul fast float %3776, %3791
  %3795 = fadd fast float %3792, %3761
  %3796 = fadd fast float %3793, %3762
  %3797 = fadd fast float %3794, %3763
  %3798 = fsub fast float %3721, %3064
  %3799 = fmul fast float %3771, %3798
  %3800 = fadd fast float %3799, %3064
  br label %3846

; <label>:3801                                    ; preds = %3768
  %3802 = icmp eq i32 %3766, 1
  br i1 %3802, label %3803, label %3816

; <label>:3803                                    ; preds = %3801
  %3804 = fadd fast float %3467, -1.000000e+00
  %3805 = fadd fast float %3468, -1.000000e+00
  %3806 = fadd fast float %3469, -1.000000e+00
  %3807 = fmul fast float %3771, %3804
  %3808 = fmul fast float %3771, %3805
  %3809 = fmul fast float %3771, %3806
  %3810 = fadd fast float %3807, 1.000000e+00
  %3811 = fadd fast float %3808, 1.000000e+00
  %3812 = fadd fast float %3809, 1.000000e+00
  %3813 = fmul fast float %3810, %3758
  %3814 = fmul fast float %3811, %3759
  %3815 = fmul fast float %3812, %3760
  br label %3846

; <label>:3816                                    ; preds = %3801
  %3817 = icmp eq i32 %3766, 2
  br i1 %3817, label %3818, label %3846

; <label>:3818                                    ; preds = %3816
  %3819 = call float @dx.op.unary.f32(i32 24, float %3467)  ; Sqrt(value)
  %3820 = call float @dx.op.unary.f32(i32 24, float %3468)  ; Sqrt(value)
  %3821 = call float @dx.op.unary.f32(i32 24, float %3469)  ; Sqrt(value)
  %3822 = fadd fast float %3819, -5.000000e-01
  %3823 = fadd fast float %3820, -5.000000e-01
  %3824 = fadd fast float %3821, -5.000000e-01
  %3825 = fmul fast float %3822, %3771
  %3826 = fmul fast float %3823, %3771
  %3827 = fmul fast float %3824, %3771
  %3828 = fadd fast float %3825, 5.000000e-01
  %3829 = fadd fast float %3826, 5.000000e-01
  %3830 = fadd fast float %3827, 5.000000e-01
  %3831 = fmul fast float %3828, 2.000000e+00
  %3832 = fsub fast float 1.000000e+00, %3831
  %3833 = fmul fast float %3832, %3758
  %3834 = fadd fast float %3833, %3831
  %3835 = fmul fast float %3834, %3758
  %3836 = fmul fast float %3829, 2.000000e+00
  %3837 = fsub fast float 1.000000e+00, %3836
  %3838 = fmul fast float %3837, %3759
  %3839 = fadd fast float %3838, %3836
  %3840 = fmul fast float %3839, %3759
  %3841 = fmul fast float %3830, 2.000000e+00
  %3842 = fsub fast float 1.000000e+00, %3841
  %3843 = fmul fast float %3842, %3760
  %3844 = fadd fast float %3843, %3841
  %3845 = fmul fast float %3844, %3760
  br label %3846

; <label>:3846                                    ; preds = %3818, %3816, %3803, %3773, %3757
  %3847 = phi float [ %3758, %3757 ], [ %3835, %3818 ], [ %3758, %3816 ], [ %3813, %3803 ], [ %3783, %3773 ]
  %3848 = phi float [ %3759, %3757 ], [ %3840, %3818 ], [ %3759, %3816 ], [ %3814, %3803 ], [ %3784, %3773 ]
  %3849 = phi float [ %3760, %3757 ], [ %3845, %3818 ], [ %3760, %3816 ], [ %3815, %3803 ], [ %3785, %3773 ]
  %3850 = phi float [ %3761, %3757 ], [ %3761, %3818 ], [ %3761, %3816 ], [ %3761, %3803 ], [ %3795, %3773 ]
  %3851 = phi float [ %3762, %3757 ], [ %3762, %3818 ], [ %3762, %3816 ], [ %3762, %3803 ], [ %3796, %3773 ]
  %3852 = phi float [ %3763, %3757 ], [ %3763, %3818 ], [ %3763, %3816 ], [ %3763, %3803 ], [ %3797, %3773 ]
  %3853 = phi float [ %3060, %3757 ], [ %3060, %3818 ], [ %3060, %3816 ], [ %3060, %3803 ], [ %3788, %3773 ]
  %3854 = phi float [ %3064, %3757 ], [ %3064, %3818 ], [ %3064, %3816 ], [ %3064, %3803 ], [ %3800, %3773 ]
  %3855 = and i32 %3765, 12
  %3856 = icmp eq i32 %3855, 12
  br i1 %3856, label %3987, label %3857

; <label>:3857                                    ; preds = %3846
  %3858 = and i32 %3765, 2097184
  %3859 = icmp eq i32 %3858, 2097184
  %3860 = select i1 %3859, float %3247, float 0.000000e+00
  %3861 = and i32 %3765, 4194336
  %3862 = icmp eq i32 %3861, 4194336
  %3863 = select i1 %3862, float %3247, float 0.000000e+00
  %3864 = and i32 %3765, 8388640
  %3865 = icmp eq i32 %3864, 8388640
  %3866 = select i1 %3865, float %3247, float 0.000000e+00
  %3867 = and i32 %3765, 1024
  %3868 = icmp ne i32 %3867, 0
  %3869 = select i1 %3868, float %3247, float 0.000000e+00
  %3870 = and i32 %3765, 2048
  %3871 = icmp ne i32 %3870, 0
  %3872 = select i1 %3871, float %3247, float 0.000000e+00
  %3873 = and i32 %3765, 8192
  %3874 = icmp ne i32 %3873, 0
  %3875 = select i1 %3874, float %3247, float 0.000000e+00
  %3876 = icmp eq i32 %3855, 0
  br i1 %3876, label %3877, label %3911

; <label>:3877                                    ; preds = %3857
  %3878 = fsub fast float %3548, %3046
  %3879 = fsub fast float %3549, %3047
  %3880 = fmul fast float %3860, %3878
  %3881 = fmul fast float %3860, %3879
  %3882 = fadd fast float %3880, %3046
  %3883 = fadd fast float %3881, %3047
  %3884 = fsub fast float %3550, %3062
  %3885 = fmul fast float %3863, %3884
  %3886 = fadd fast float %3885, %3062
  %3887 = fsub fast float %3547, %3061
  %3888 = fmul fast float %3866, %3887
  %3889 = fadd fast float %3888, %3061
  %3890 = fsub fast float %3653, %3054
  %3891 = fsub fast float %3654, %3055
  %3892 = fsub fast float %3655, %3056
  %3893 = fmul fast float %3869, %3890
  %3894 = fmul fast float %3869, %3891
  %3895 = fmul fast float %3869, %3892
  %3896 = fadd fast float %3893, %3054
  %3897 = fadd fast float %3894, %3055
  %3898 = fadd fast float %3895, %3056
  %3899 = fsub fast float %3708, %3063
  %3900 = fmul fast float %3872, %3899
  %3901 = fadd fast float %3900, %3063
  %3902 = fsub fast float %3705, %3051
  %3903 = fsub fast float %3706, %3052
  %3904 = fsub fast float %3707, %3053
  %3905 = fmul fast float %3875, %3902
  %3906 = fmul fast float %3875, %3903
  %3907 = fmul fast float %3875, %3904
  %3908 = fadd fast float %3905, %3051
  %3909 = fadd fast float %3906, %3052
  %3910 = fadd fast float %3907, %3053
  br label %3987

; <label>:3911                                    ; preds = %3857
  %3912 = icmp eq i32 %3855, 4
  br i1 %3912, label %3913, label %3959

; <label>:3913                                    ; preds = %3911
  %3914 = fmul fast float %3860, %3548
  %3915 = fmul fast float %3860, %3549
  %3916 = fadd fast float %3914, %3046
  %3917 = fadd fast float %3915, %3047
  %3918 = call float @dx.op.binary.f32(i32 36, float %3062, float %3550)  ; FMin(a,b)
  %3919 = fsub fast float %3918, %3062
  %3920 = fmul fast float %3919, %3863
  %3921 = fadd fast float %3920, %3062
  %3922 = fadd fast float %3547, %3061
  %3923 = fmul fast float %3922, 0x3FF337FAE0000000
  %3924 = fmul fast float %3061, %3061
  %3925 = fmul fast float %3547, %3547
  %3926 = fadd fast float %3925, %3924
  %3927 = fmul fast float %3926, 0x3FE5152B00000000
  %3928 = fmul fast float %3061, 0xBFCC1F85E0000000
  %3929 = fmul fast float %3928, %3547
  %3930 = fadd fast float %3929, 0xBFE1363700000000
  %3931 = fadd fast float %3930, %3923
  %3932 = fsub fast float %3931, %3927
  %3933 = fmul fast float %3922, 0x3FBA6F0D00000000
  %3934 = fmul fast float %3926, 0x3FD0432880000000
  %3935 = fmul fast float %3061, 0xBFEF110800000000
  %3936 = fmul fast float %3935, %3547
  %3937 = fadd fast float %3936, 1.000000e+00
  %3938 = fsub fast float %3937, %3933
  %3939 = fadd fast float %3938, %3934
  %3940 = fdiv fast float %3932, %3939
  %3941 = call float @dx.op.unary.f32(i32 7, float %3940)  ; Saturate(value)
  %3942 = fsub fast float %3941, %3061
  %3943 = fmul fast float %3942, %3866
  %3944 = fadd fast float %3943, %3061
  %3945 = fmul fast float %3869, %3653
  %3946 = fmul fast float %3869, %3654
  %3947 = fmul fast float %3869, %3655
  %3948 = fadd fast float %3945, %3054
  %3949 = fadd fast float %3946, %3055
  %3950 = fadd fast float %3947, %3056
  %3951 = fmul fast float %3872, %3708
  %3952 = fadd fast float %3951, %3063
  %3953 = fmul fast float %3875, %3705
  %3954 = fmul fast float %3875, %3706
  %3955 = fmul fast float %3875, %3707
  %3956 = fadd fast float %3953, %3051
  %3957 = fadd fast float %3954, %3052
  %3958 = fadd fast float %3955, %3053
  br label %3987

; <label>:3959                                    ; preds = %3911
  %3960 = icmp eq i32 %3855, 8
  br i1 %3960, label %3961, label %3987

; <label>:3961                                    ; preds = %3959
  %3962 = fmul fast float %3860, %3548
  %3963 = fmul fast float %3860, %3549
  %3964 = fadd fast float %3962, %3046
  %3965 = fadd fast float %3963, %3047
  %3966 = call float @dx.op.binary.f32(i32 36, float %3062, float %3550)  ; FMin(a,b)
  %3967 = fsub fast float %3966, %3062
  %3968 = fmul fast float %3967, %3863
  %3969 = fadd fast float %3968, %3062
  %3970 = fsub fast float %3547, %3061
  %3971 = fmul fast float %3866, %3970
  %3972 = fadd fast float %3971, %3061
  %3973 = fmul fast float %3869, %3653
  %3974 = fmul fast float %3869, %3654
  %3975 = fmul fast float %3869, %3655
  %3976 = fadd fast float %3973, %3054
  %3977 = fadd fast float %3974, %3055
  %3978 = fadd fast float %3975, %3056
  %3979 = fmul fast float %3872, %3708
  %3980 = fadd fast float %3979, %3063
  %3981 = fmul fast float %3875, %3705
  %3982 = fmul fast float %3875, %3706
  %3983 = fmul fast float %3875, %3707
  %3984 = fadd fast float %3981, %3051
  %3985 = fadd fast float %3982, %3052
  %3986 = fadd fast float %3983, %3053
  br label %3987

; <label>:3987                                    ; preds = %3961, %3959, %3913, %3877, %3846, %3246, %3065, %3045
  %3988 = phi float [ %3046, %3846 ], [ %3046, %3246 ], [ %3046, %3045 ], [ %3046, %3065 ], [ %3882, %3877 ], [ %3916, %3913 ], [ %3046, %3959 ], [ %3964, %3961 ]
  %3989 = phi float [ %3047, %3846 ], [ %3047, %3246 ], [ %3047, %3045 ], [ %3047, %3065 ], [ %3883, %3877 ], [ %3917, %3913 ], [ %3047, %3959 ], [ %3965, %3961 ]
  %3990 = phi float [ %3847, %3846 ], [ %3048, %3246 ], [ %3048, %3045 ], [ %3048, %3065 ], [ %3847, %3877 ], [ %3847, %3913 ], [ %3847, %3959 ], [ %3847, %3961 ]
  %3991 = phi float [ %3848, %3846 ], [ %3049, %3246 ], [ %3049, %3045 ], [ %3049, %3065 ], [ %3848, %3877 ], [ %3848, %3913 ], [ %3848, %3959 ], [ %3848, %3961 ]
  %3992 = phi float [ %3849, %3846 ], [ %3050, %3246 ], [ %3050, %3045 ], [ %3050, %3065 ], [ %3849, %3877 ], [ %3849, %3913 ], [ %3849, %3959 ], [ %3849, %3961 ]
  %3993 = phi float [ %3051, %3846 ], [ %3051, %3246 ], [ %3051, %3045 ], [ %3051, %3065 ], [ %3908, %3877 ], [ %3956, %3913 ], [ %3051, %3959 ], [ %3984, %3961 ]
  %3994 = phi float [ %3052, %3846 ], [ %3052, %3246 ], [ %3052, %3045 ], [ %3052, %3065 ], [ %3909, %3877 ], [ %3957, %3913 ], [ %3052, %3959 ], [ %3985, %3961 ]
  %3995 = phi float [ %3053, %3846 ], [ %3053, %3246 ], [ %3053, %3045 ], [ %3053, %3065 ], [ %3910, %3877 ], [ %3958, %3913 ], [ %3053, %3959 ], [ %3986, %3961 ]
  %3996 = phi float [ %3054, %3846 ], [ %3054, %3246 ], [ %3054, %3045 ], [ %3054, %3065 ], [ %3896, %3877 ], [ %3948, %3913 ], [ %3054, %3959 ], [ %3976, %3961 ]
  %3997 = phi float [ %3055, %3846 ], [ %3055, %3246 ], [ %3055, %3045 ], [ %3055, %3065 ], [ %3897, %3877 ], [ %3949, %3913 ], [ %3055, %3959 ], [ %3977, %3961 ]
  %3998 = phi float [ %3056, %3846 ], [ %3056, %3246 ], [ %3056, %3045 ], [ %3056, %3065 ], [ %3898, %3877 ], [ %3950, %3913 ], [ %3056, %3959 ], [ %3978, %3961 ]
  %3999 = phi float [ %3850, %3846 ], [ %3057, %3246 ], [ %3057, %3045 ], [ %3057, %3065 ], [ %3850, %3877 ], [ %3850, %3913 ], [ %3850, %3959 ], [ %3850, %3961 ]
  %4000 = phi float [ %3851, %3846 ], [ %3058, %3246 ], [ %3058, %3045 ], [ %3058, %3065 ], [ %3851, %3877 ], [ %3851, %3913 ], [ %3851, %3959 ], [ %3851, %3961 ]
  %4001 = phi float [ %3852, %3846 ], [ %3059, %3246 ], [ %3059, %3045 ], [ %3059, %3065 ], [ %3852, %3877 ], [ %3852, %3913 ], [ %3852, %3959 ], [ %3852, %3961 ]
  %4002 = phi float [ %3853, %3846 ], [ %3060, %3246 ], [ %3060, %3045 ], [ %3060, %3065 ], [ %3853, %3877 ], [ %3853, %3913 ], [ %3853, %3959 ], [ %3853, %3961 ]
  %4003 = phi float [ %3061, %3846 ], [ %3061, %3246 ], [ %3061, %3045 ], [ %3061, %3065 ], [ %3889, %3877 ], [ %3944, %3913 ], [ %3061, %3959 ], [ %3972, %3961 ]
  %4004 = phi float [ %3062, %3846 ], [ %3062, %3246 ], [ %3062, %3045 ], [ %3062, %3065 ], [ %3886, %3877 ], [ %3921, %3913 ], [ %3062, %3959 ], [ %3969, %3961 ]
  %4005 = phi float [ %3063, %3846 ], [ %3063, %3246 ], [ %3063, %3045 ], [ %3063, %3065 ], [ %3901, %3877 ], [ %3952, %3913 ], [ %3063, %3959 ], [ %3980, %3961 ]
  %4006 = phi float [ %3854, %3846 ], [ %3064, %3246 ], [ %3064, %3045 ], [ %3064, %3065 ], [ %3854, %3877 ], [ %3854, %3913 ], [ %3854, %3959 ], [ %3854, %3961 ]
  %4007 = add i32 %51, 360
  %4008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4007, i32 undef)  ; BufferLoad(srv,index,wot)
  %4009 = extractvalue %dx.types.ResRet.i32 %4008, 0
  %4010 = extractvalue %dx.types.ResRet.i32 %4008, 1
  %4011 = bitcast i32 %4009 to float
  %4012 = bitcast i32 %4010 to float
  %4013 = fcmp fast oge float %4011, 0.000000e+00
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = select i1 %4013, float %4011, float %4015
  %4017 = fadd fast float %4016, %204
  %4018 = fmul fast float %4012, %205
  %4019 = add i32 %51, 456
  %4020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4019, i32 undef)  ; BufferLoad(srv,index,wot)
  %4021 = extractvalue %dx.types.ResRet.i32 %4020, 0
  %4022 = add i32 %4021, 0
  %4023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4022, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4024 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4023, %dx.types.Handle %108, float %89, float %90, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = fmul fast float %4018, %4025
  %4027 = fadd fast float %4017, %4026
  %4028 = and i32 %196, 65535
  %4029 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4028)  ; LegacyF16ToF32(value)
  %4030 = lshr i32 %196, 16
  %4031 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4030)  ; LegacyF16ToF32(value)
  %4032 = and i32 %197, 65535
  %4033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4032)  ; LegacyF16ToF32(value)
  %4034 = fmul fast float %4029, %3990
  %4035 = fmul fast float %4031, %3991
  %4036 = fmul fast float %4033, %3992
  %4037 = shl i32 %198, 4
  %4038 = and i32 %4037, 32752
  %4039 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4038)  ; LegacyF16ToF32(value)
  %4040 = lshr i32 %198, 7
  %4041 = and i32 %4040, 32752
  %4042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4041)  ; LegacyF16ToF32(value)
  %4043 = lshr i32 %198, 22
  %4044 = shl nuw nsw i32 %4043, 5
  %4045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4044)  ; LegacyF16ToF32(value)
  %4046 = and i32 %199, 65535
  %4047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4046)  ; LegacyF16ToF32(value)
  %4048 = fmul fast float %4039, %3999
  %4049 = fmul fast float %4048, %4047
  %4050 = fmul fast float %4042, %4000
  %4051 = fmul fast float %4050, %4047
  %4052 = fmul fast float %4045, %4001
  %4053 = fmul fast float %4052, %4047
  %4054 = call float @dx.op.dot2.f32(i32 54, float %3988, float %3989, float %3988, float %3989)  ; Dot2(ax,ay,bx,by)
  %4055 = fmul fast float %4054, 0x3FE3333340000000
  %4056 = fsub fast float 1.000000e+00, %4055
  %4057 = call float @dx.op.dot3.f32(i32 55, float %3988, float %3989, float %4056, float %3988, float %3989, float %4056)  ; Dot3(ax,ay,az,bx,by,bz)
  %4058 = call float @dx.op.unary.f32(i32 25, float %4057)  ; Rsqrt(value)
  %4059 = fmul fast float %4058, %3988
  %4060 = fmul fast float %4058, %3989
  %4061 = fmul fast float %4056, %4058
  %4062 = fmul fast float %4061, %118
  %4063 = fmul fast float %4061, %119
  %4064 = fmul fast float %4061, %120
  %4065 = fmul fast float %4059, %82
  %4066 = fmul fast float %4059, %83
  %4067 = fmul fast float %4059, %84
  %4068 = fadd fast float %4062, %4065
  %4069 = fadd fast float %4063, %4066
  %4070 = fadd fast float %4064, %4067
  %4071 = fmul fast float %130, %4060
  %4072 = fmul fast float %131, %4060
  %4073 = fmul fast float %132, %4060
  %4074 = fadd fast float %4068, %4071
  %4075 = fadd fast float %4069, %4072
  %4076 = fadd fast float %4070, %4073
  %4077 = call float @dx.op.dot3.f32(i32 55, float %4074, float %4075, float %4076, float %4074, float %4075, float %4076)  ; Dot3(ax,ay,az,bx,by,bz)
  %4078 = call float @dx.op.unary.f32(i32 25, float %4077)  ; Rsqrt(value)
  %4079 = fmul fast float %4074, %4078
  %4080 = fmul fast float %4075, %4078
  %4081 = fmul fast float %4076, %4078
  %4082 = icmp eq i32 %53, 65535
  br i1 %4082, label %4681, label %4083

; <label>:4083                                    ; preds = %3987
  %4084 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4085 = call float @dx.op.unary.f32(i32 83, float %55)  ; DerivCoarseX(value)
  %4086 = call float @dx.op.unary.f32(i32 83, float %56)  ; DerivCoarseX(value)
  %4087 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4088 = call float @dx.op.unary.f32(i32 84, float %55)  ; DerivCoarseY(value)
  %4089 = call float @dx.op.unary.f32(i32 84, float %56)  ; DerivCoarseY(value)
  %4090 = fadd fast float %4084, %54
  %4091 = fadd fast float %4085, %55
  %4092 = fadd fast float %4086, %56
  %4093 = fadd fast float %4087, %54
  %4094 = fadd fast float %4088, %55
  %4095 = fadd fast float %4089, %56
  %4096 = mul i32 %53, 48
  %4097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4096, i32 undef)  ; BufferLoad(srv,index,wot)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.ResRet.f32 %4097, 1
  %4100 = extractvalue %dx.types.ResRet.f32 %4097, 2
  %4101 = add i32 %4096, 16
  %4102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4101, i32 undef)  ; BufferLoad(srv,index,wot)
  %4103 = extractvalue %dx.types.ResRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.ResRet.f32 %4102, 1
  %4105 = extractvalue %dx.types.ResRet.f32 %4102, 2
  %4106 = add i32 %4096, 32
  %4107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4106, i32 undef)  ; BufferLoad(srv,index,wot)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4109 = extractvalue %dx.types.ResRet.f32 %4107, 1
  %4110 = extractvalue %dx.types.ResRet.f32 %4107, 2
  %4111 = extractvalue %dx.types.ResRet.f32 %4107, 3
  %4112 = bitcast float %4111 to i32
  %4113 = fmul fast float %4098, %54
  %4114 = fmul fast float %4099, %55
  %4115 = fmul fast float %4100, %56
  %4116 = fsub fast float %4113, %4103
  %4117 = fsub fast float %4114, %4104
  %4118 = fsub fast float %4115, %4105
  %4119 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4120 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4122 = fmul fast float %4119, %4108
  %4123 = fmul fast float %4120, %4109
  %4124 = fmul fast float %4121, %4110
  %4125 = fadd fast float %4108, -1.000000e+00
  %4126 = fadd fast float %4109, -1.000000e+00
  %4127 = fadd fast float %4110, -1.000000e+00
  %4128 = call float @dx.op.unary.f32(i32 27, float %4122)  ; Round_ni(value)
  %4129 = call float @dx.op.unary.f32(i32 27, float %4123)  ; Round_ni(value)
  %4130 = call float @dx.op.unary.f32(i32 27, float %4124)  ; Round_ni(value)
  %4131 = call float @dx.op.binary.f32(i32 36, float %4128, float %4125)  ; FMin(a,b)
  %4132 = call float @dx.op.binary.f32(i32 36, float %4129, float %4126)  ; FMin(a,b)
  %4133 = call float @dx.op.binary.f32(i32 36, float %4130, float %4127)  ; FMin(a,b)
  %4134 = fmul fast float %4133, %4109
  %4135 = fadd fast float %4134, %4132
  %4136 = fmul fast float %4135, %4108
  %4137 = fadd fast float %4136, %4131
  %4138 = fptosi float %4137 to i32
  %4139 = add nsw i32 %4138, %4112
  %4140 = shl nsw i32 %4139, 2
  %4141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.i32 %4141, 0
  %4143 = lshr i32 %4142, 16
  %4144 = icmp eq i32 %4143, 0
  br i1 %4144, label %4644, label %4145

; <label>:4145                                    ; preds = %4083
  br label %4146

; <label>:4146                                    ; preds = %4273, %4145
  %4147 = phi i32 [ %4175, %4273 ], [ %4143, %4145 ]
  %4148 = phi float [ %4274, %4273 ], [ 0.000000e+00, %4145 ]
  %4149 = phi float [ %4275, %4273 ], [ %4027, %4145 ]
  %4150 = phi float [ %4276, %4273 ], [ %4006, %4145 ]
  %4151 = phi float [ %4277, %4273 ], [ %3996, %4145 ]
  %4152 = phi float [ %4278, %4273 ], [ %3997, %4145 ]
  %4153 = phi float [ %4279, %4273 ], [ %3998, %4145 ]
  %4154 = phi float [ %4280, %4273 ], [ 0.000000e+00, %4145 ]
  %4155 = phi float [ %4281, %4273 ], [ 0.000000e+00, %4145 ]
  %4156 = phi float [ %4282, %4273 ], [ %3993, %4145 ]
  %4157 = phi float [ %4283, %4273 ], [ %3994, %4145 ]
  %4158 = phi float [ %4284, %4273 ], [ %3995, %4145 ]
  %4159 = phi float [ %4285, %4273 ], [ %4049, %4145 ]
  %4160 = phi float [ %4286, %4273 ], [ %4051, %4145 ]
  %4161 = phi float [ %4287, %4273 ], [ %4053, %4145 ]
  %4162 = phi float [ %4288, %4273 ], [ %4079, %4145 ]
  %4163 = phi float [ %4289, %4273 ], [ %4080, %4145 ]
  %4164 = phi float [ %4290, %4273 ], [ %4081, %4145 ]
  %4165 = phi float [ %4291, %4273 ], [ %4004, %4145 ]
  %4166 = phi float [ %4292, %4273 ], [ %4003, %4145 ]
  %4167 = phi float [ %4293, %4273 ], [ 0.000000e+00, %4145 ]
  %4168 = phi float [ %4294, %4273 ], [ %4002, %4145 ]
  %4169 = phi float [ %4295, %4273 ], [ %4034, %4145 ]
  %4170 = phi float [ %4296, %4273 ], [ %4035, %4145 ]
  %4171 = phi float [ %4297, %4273 ], [ %4036, %4145 ]
  %4172 = shl nuw nsw i32 %4147, 2
  %4173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4172, i32 undef)  ; BufferLoad(srv,index,wot)
  %4174 = extractvalue %dx.types.ResRet.i32 %4173, 0
  %4175 = lshr i32 %4174, 16
  %4176 = shl i32 %4174, 8
  %4177 = and i32 %4176, 16776960
  %4178 = or i32 %4177, 48
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = or i32 %4177, 64
  %4184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.i32 %4184, 0
  %4186 = extractvalue %dx.types.ResRet.i32 %4184, 1
  %4187 = or i32 %4177, 80
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 2
  %4190 = extractvalue %dx.types.ResRet.f32 %4188, 3
  %4191 = or i32 %4177, 96
  %4192 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.ResRet.f32 %4192, 1
  %4195 = extractvalue %dx.types.ResRet.f32 %4192, 2
  %4196 = extractvalue %dx.types.ResRet.f32 %4192, 3
  %4197 = or i32 %4177, 112
  %4198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4200 = or i32 %4177, 128
  %4201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4200, i32 undef)  ; BufferLoad(srv,index,wot)
  %4202 = extractvalue %dx.types.ResRet.f32 %4201, 0
  %4203 = extractvalue %dx.types.ResRet.f32 %4201, 1
  %4204 = extractvalue %dx.types.ResRet.f32 %4201, 2
  %4205 = extractvalue %dx.types.ResRet.f32 %4201, 3
  %4206 = or i32 %4177, 144
  %4207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4206, i32 undef)  ; BufferLoad(srv,index,wot)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.ResRet.f32 %4207, 3
  %4212 = or i32 %4177, 160
  %4213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = extractvalue %dx.types.ResRet.f32 %4213, 3
  %4218 = or i32 %4177, 192
  %4219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4218, i32 undef)  ; BufferLoad(srv,index,wot)
  %4220 = extractvalue %dx.types.ResRet.i32 %4219, 0
  %4221 = or i32 %4177, 208
  %4222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = or i32 %4177, 248
  %4225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4224, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.ResRet.f32 %4225, 1
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.ResRet.f32 %4228, 2
  %4232 = extractvalue %dx.types.ResRet.f32 %4228, 3
  %4233 = call float @dx.op.dot4.f32(i32 56, float %4229, float %4230, float %4231, float %4232, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4234 = or i32 %4177, 16
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.ResRet.f32 %4235, 1
  %4238 = extractvalue %dx.types.ResRet.f32 %4235, 2
  %4239 = extractvalue %dx.types.ResRet.f32 %4235, 3
  %4240 = call float @dx.op.dot4.f32(i32 56, float %4236, float %4237, float %4238, float %4239, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4241 = or i32 %4177, 32
  %4242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4241, i32 undef)  ; BufferLoad(srv,index,wot)
  %4243 = extractvalue %dx.types.ResRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.ResRet.f32 %4242, 1
  %4245 = extractvalue %dx.types.ResRet.f32 %4242, 2
  %4246 = extractvalue %dx.types.ResRet.f32 %4242, 3
  %4247 = call float @dx.op.dot4.f32(i32 56, float %4243, float %4244, float %4245, float %4246, float %54, float %55, float %56, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4248 = call float @dx.op.unary.f32(i32 27, float %4233)  ; Round_ni(value)
  %4249 = call float @dx.op.unary.f32(i32 6, float %4248)  ; FAbs(value)
  %4250 = call float @dx.op.unary.f32(i32 27, float %4240)  ; Round_ni(value)
  %4251 = call float @dx.op.unary.f32(i32 6, float %4250)  ; FAbs(value)
  %4252 = call float @dx.op.unary.f32(i32 6, float %4247)  ; FAbs(value)
  %4253 = call float @dx.op.unary.f32(i32 27, float %4252)  ; Round_ni(value)
  %4254 = fadd fast float %4251, %4249
  %4255 = fadd fast float %4254, %4253
  %4256 = fcmp fast oeq float %4255, 0.000000e+00
  %4257 = call float @dx.op.dot4.f32(i32 56, float %4229, float %4230, float %4231, float %4232, float %4090, float %4091, float %4092, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4258 = call float @dx.op.dot4.f32(i32 56, float %4236, float %4237, float %4238, float %4239, float %4090, float %4091, float %4092, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4259 = call float @dx.op.dot4.f32(i32 56, float %4229, float %4230, float %4231, float %4232, float %4093, float %4094, float %4095, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4260 = call float @dx.op.dot4.f32(i32 56, float %4236, float %4237, float %4238, float %4239, float %4093, float %4094, float %4095, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4261 = fsub fast float %4257, %4233
  %4262 = fsub fast float %4259, %4233
  %4263 = fsub fast float %4258, %4240
  %4264 = fsub fast float %4260, %4240
  %4265 = call float @dx.op.dot3.f32(i32 55, float %4180, float %4181, float %4182, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %4266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4267 = extractvalue %dx.types.CBufRet.f32 %4266, 2
  %4268 = fadd fast float %4267, %4265
  %4269 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4266, 0
  %4271 = fcmp fast ogt float %4269, %4270
  %4272 = and i1 %4256, %4271
  br i1 %4272, label %4299, label %4273

; <label>:4273                                    ; preds = %4630, %4382, %4299, %4146
  %4274 = phi float [ %4148, %4299 ], [ %4385, %4382 ], [ %4385, %4630 ], [ %4148, %4146 ]
  %4275 = phi float [ %4149, %4299 ], [ %4149, %4382 ], [ %4606, %4630 ], [ %4149, %4146 ]
  %4276 = phi float [ %4150, %4299 ], [ %4150, %4382 ], [ %4604, %4630 ], [ %4150, %4146 ]
  %4277 = phi float [ %4151, %4299 ], [ %4151, %4382 ], [ %4582, %4630 ], [ %4151, %4146 ]
  %4278 = phi float [ %4152, %4299 ], [ %4152, %4382 ], [ %4583, %4630 ], [ %4152, %4146 ]
  %4279 = phi float [ %4153, %4299 ], [ %4153, %4382 ], [ %4584, %4630 ], [ %4153, %4146 ]
  %4280 = phi float [ %4154, %4299 ], [ %4154, %4382 ], [ %4509, %4630 ], [ %4154, %4146 ]
  %4281 = phi float [ %4155, %4299 ], [ %4155, %4382 ], [ %4507, %4630 ], [ %4155, %4146 ]
  %4282 = phi float [ %4156, %4299 ], [ %4156, %4382 ], [ %4552, %4630 ], [ %4156, %4146 ]
  %4283 = phi float [ %4157, %4299 ], [ %4157, %4382 ], [ %4553, %4630 ], [ %4157, %4146 ]
  %4284 = phi float [ %4158, %4299 ], [ %4158, %4382 ], [ %4554, %4630 ], [ %4158, %4146 ]
  %4285 = phi float [ %4159, %4299 ], [ %4159, %4382 ], [ %4640, %4630 ], [ %4159, %4146 ]
  %4286 = phi float [ %4160, %4299 ], [ %4160, %4382 ], [ %4641, %4630 ], [ %4160, %4146 ]
  %4287 = phi float [ %4161, %4299 ], [ %4161, %4382 ], [ %4642, %4630 ], [ %4161, %4146 ]
  %4288 = phi float [ %4162, %4299 ], [ %4162, %4382 ], [ %4488, %4630 ], [ %4162, %4146 ]
  %4289 = phi float [ %4163, %4299 ], [ %4163, %4382 ], [ %4489, %4630 ], [ %4163, %4146 ]
  %4290 = phi float [ %4164, %4299 ], [ %4164, %4382 ], [ %4490, %4630 ], [ %4164, %4146 ]
  %4291 = phi float [ %4165, %4299 ], [ %4165, %4382 ], [ %4562, %4630 ], [ %4165, %4146 ]
  %4292 = phi float [ %4166, %4299 ], [ %4166, %4382 ], [ %4559, %4630 ], [ %4166, %4146 ]
  %4293 = phi float [ %4167, %4299 ], [ %4167, %4382 ], [ %4556, %4630 ], [ %4167, %4146 ]
  %4294 = phi float [ %4168, %4299 ], [ %4168, %4382 ], [ %4505, %4630 ], [ %4168, %4146 ]
  %4295 = phi float [ %4169, %4299 ], [ %4169, %4382 ], [ %4500, %4630 ], [ %4169, %4146 ]
  %4296 = phi float [ %4170, %4299 ], [ %4170, %4382 ], [ %4501, %4630 ], [ %4170, %4146 ]
  %4297 = phi float [ %4171, %4299 ], [ %4171, %4382 ], [ %4502, %4630 ], [ %4171, %4146 ]
  %4298 = icmp eq i32 %4175, 0
  br i1 %4298, label %4643, label %4146

; <label>:4299                                    ; preds = %4146
  %4300 = extractvalue %dx.types.ResRet.f32 %4179, 3
  %4301 = extractvalue %dx.types.ResRet.f32 %4198, 3
  %4302 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4303 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4304 = extractvalue %dx.types.ResRet.f32 %4188, 1
  %4305 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4306 = extractvalue %dx.types.ResRet.i32 %4184, 3
  %4307 = extractvalue %dx.types.ResRet.i32 %4184, 2
  %4308 = bitcast float %4300 to i32
  %4309 = add i32 %4306, 0
  %4310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4309, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4312 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4310, %dx.types.Handle %4311, float %4233, float %4240, float undef, float undef, i32 0, i32 0, i32 undef, float %4261, float %4263, float undef, float %4262, float %4264, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = fmul fast float %4313, %4305
  %4315 = fadd fast float %4314, %4304
  %4316 = call float @dx.op.unary.f32(i32 7, float %4315)  ; Saturate(value)
  %4317 = fmul fast float %4233, %4193
  %4318 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4240, float %4317)  ; FMad(a,b,c)
  %4319 = fadd fast float %4318, %4303
  %4320 = fmul fast float %4233, %4195
  %4321 = call float @dx.op.tertiary.f32(i32 46, float %4196, float %4240, float %4320)  ; FMad(a,b,c)
  %4322 = fadd fast float %4321, %4302
  %4323 = fmul fast float %4261, %4193
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4263, float %4323)  ; FMad(a,b,c)
  %4325 = fmul fast float %4261, %4195
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4196, float %4263, float %4325)  ; FMad(a,b,c)
  %4327 = fmul fast float %4262, %4193
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4264, float %4327)  ; FMad(a,b,c)
  %4329 = fmul fast float %4262, %4195
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4196, float %4264, float %4329)  ; FMad(a,b,c)
  %4331 = add i32 %4307, 0
  %4332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4332, %dx.types.Handle %4311, float %4319, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float %4324, float %4326, float undef, float %4328, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = and i32 %4308, 1024
  %4336 = icmp ne i32 %4335, 0
  %4337 = fcmp fast ogt float %4334, 0x3FE0101020000000
  %4338 = uitofp i1 %4337 to float
  %4339 = select i1 %4336, float %4338, float %4334
  %4340 = and i32 %4308, 8192
  %4341 = icmp ne i32 %4340, 0
  %4342 = select i1 %4341, float %4301, float 1.000000e+00
  %4343 = fmul fast float %4233, 2.000000e+00
  %4344 = fadd fast float %4343, -1.000000e+00
  %4345 = call float @dx.op.unary.f32(i32 6, float %4344)  ; FAbs(value)
  %4346 = fmul fast float %4345, %4226
  %4347 = fsub fast float %4346, %4226
  %4348 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4349 = fmul fast float %4240, 2.000000e+00
  %4350 = fadd fast float %4349, -1.000000e+00
  %4351 = call float @dx.op.unary.f32(i32 6, float %4350)  ; FAbs(value)
  %4352 = fmul fast float %4351, %4227
  %4353 = fsub fast float %4352, %4227
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fmul fast float %4252, %4189
  %4356 = fsub fast float %4355, %4189
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fmul fast float %4316, %4342
  %4359 = fmul fast float %4358, %4313
  %4360 = fmul fast float %4359, %4348
  %4361 = fmul fast float %4360, %4339
  %4362 = fmul fast float %4361, %4354
  %4363 = fmul fast float %4362, %4357
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 1
  %4366 = extractvalue %dx.types.CBufRet.f32 %4364, 0
  %4367 = fsub fast float %4269, %4366
  %4368 = fmul fast float %4367, %4365
  %4369 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4370 = fmul fast float %4363, %4190
  %4371 = fadd fast float %4363, %4190
  %4372 = fmul fast float %4371, %4199
  %4373 = fsub fast float %4372, %4199
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = and i32 %4308, 128
  %4376 = icmp ne i32 %4375, 0
  %4377 = select i1 %4376, float %4374, float %4370
  %4378 = fmul fast float %4377, %4369
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 0
  %4381 = fcmp fast ugt float %4378, %4380
  br i1 %4381, label %4382, label %4273

; <label>:4382                                    ; preds = %4299
  %4383 = select i1 %4341, float %4378, float 0.000000e+00
  %4384 = fadd fast float %4383, %4148
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  br i1 %4341, label %4273, label %4386

; <label>:4386                                    ; preds = %4382
  %4387 = and i32 %4308, 4
  %4388 = and i32 %4308, 8
  %4389 = add i32 %4185, 0
  %4390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4389, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4392 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4390, %dx.types.Handle %4391, float %4319, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float %4324, float %4326, float undef, float %4328, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = extractvalue %dx.types.ResRet.f32 %4392, 3
  %4397 = bitcast float %4211 to i32
  %4398 = and i32 %4397, 255
  %4399 = uitofp i32 %4398 to float
  %4400 = lshr i32 %4397, 8
  %4401 = and i32 %4400, 255
  %4402 = uitofp i32 %4401 to float
  %4403 = fmul fast float %4396, %4399
  %4404 = fadd fast float %4403, %4402
  %4405 = fmul fast float %4404, 0x3F70101000000000
  %4406 = add i32 %4186, 0
  %4407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4406, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4408 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4407, %dx.types.Handle %4391, float %4319, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float %4324, float %4326, float undef, float %4328, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.ResRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.ResRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.ResRet.f32 %4408, 3
  %4413 = bitcast float %4205 to i32
  %4414 = and i32 %4413, 255
  %4415 = uitofp i32 %4414 to float
  %4416 = lshr i32 %4413, 8
  %4417 = and i32 %4416, 255
  %4418 = uitofp i32 %4417 to float
  %4419 = lshr i32 %4413, 16
  %4420 = and i32 %4419, 255
  %4421 = uitofp i32 %4420 to float
  %4422 = fmul fast float %4421, 0x3F70101000000000
  %4423 = fmul fast float %4409, %4415
  %4424 = fadd fast float %4423, %4418
  %4425 = fmul fast float %4424, 0x3F70101000000000
  %4426 = fadd fast float %4410, -5.000000e-01
  %4427 = fadd fast float %4412, -5.000000e-01
  %4428 = fmul fast float %4426, %4422
  %4429 = fmul fast float %4427, %4422
  %4430 = fadd fast float %4428, 5.000000e-01
  %4431 = fadd fast float %4429, 5.000000e-01
  %4432 = fmul fast float %4393, %4214
  %4433 = fmul fast float %4394, %4215
  %4434 = fmul fast float %4395, %4216
  %4435 = fmul fast float %4430, 2.000000e+00
  %4436 = fadd fast float %4435, -1.000000e+00
  %4437 = fmul fast float %4431, 2.000000e+00
  %4438 = fadd fast float %4437, -1.000000e+00
  %4439 = fadd fast float %4436, %4438
  %4440 = fmul fast float %4439, 5.000000e-01
  %4441 = fsub fast float %4436, %4438
  %4442 = fmul fast float %4441, 5.000000e-01
  %4443 = call float @dx.op.unary.f32(i32 6, float %4440)  ; FAbs(value)
  %4444 = fsub fast float 1.000000e+00, %4443
  %4445 = call float @dx.op.unary.f32(i32 6, float %4442)  ; FAbs(value)
  %4446 = fsub fast float %4444, %4445
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4440, float %4442, float %4446, float %4440, float %4442, float %4446)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = call float @dx.op.unary.f32(i32 25, float %4447)  ; Rsqrt(value)
  %4449 = fmul fast float %4440, %4448
  %4450 = fmul fast float %4442, %4448
  %4451 = fmul fast float %4448, %4446
  %4452 = fmul fast float %4451, %4180
  %4453 = fmul fast float %4451, %4181
  %4454 = fmul fast float %4451, %4182
  %4455 = fmul fast float %4449, %4202
  %4456 = fmul fast float %4449, %4203
  %4457 = fmul fast float %4449, %4204
  %4458 = fadd fast float %4455, %4452
  %4459 = fadd fast float %4456, %4453
  %4460 = fadd fast float %4457, %4454
  %4461 = fmul fast float %4450, %4208
  %4462 = fmul fast float %4450, %4209
  %4463 = fmul fast float %4450, %4210
  %4464 = fadd fast float %4458, %4461
  %4465 = fadd fast float %4459, %4462
  %4466 = fadd fast float %4460, %4463
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4464, float %4465, float %4466, float %4464, float %4465, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = call float @dx.op.unary.f32(i32 25, float %4467)  ; Rsqrt(value)
  %4469 = fmul fast float %4464, %4468
  %4470 = fmul fast float %4465, %4468
  %4471 = fmul fast float %4466, %4468
  %4472 = icmp ne i32 %4388, 0
  %4473 = select i1 %4472, float 1.000000e+00, float 0.000000e+00
  %4474 = fmul fast float %4378, %4473
  %4475 = and i32 %4308, 1
  %4476 = icmp eq i32 %4475, 0
  br i1 %4476, label %4477, label %4481

; <label>:4477                                    ; preds = %4386
  %4478 = fsub fast float %4469, %4162
  %4479 = fsub fast float %4470, %4163
  %4480 = fsub fast float %4471, %4164
  br label %4481

; <label>:4481                                    ; preds = %4477, %4386
  %4482 = phi float [ %4478, %4477 ], [ %4469, %4386 ]
  %4483 = phi float [ %4479, %4477 ], [ %4470, %4386 ]
  %4484 = phi float [ %4480, %4477 ], [ %4471, %4386 ]
  %4485 = fmul float %4484, %4474
  %4486 = fmul float %4483, %4474
  %4487 = fmul float %4482, %4474
  %4488 = fadd fast float %4487, %4162
  %4489 = fadd fast float %4486, %4163
  %4490 = fadd fast float %4485, %4164
  %4491 = icmp ne i32 %4387, 0
  %4492 = select i1 %4491, float 1.000000e+00, float 0.000000e+00
  %4493 = fmul fast float %4378, %4492
  %4494 = fsub fast float %4432, %4169
  %4495 = fsub fast float %4433, %4170
  %4496 = fsub fast float %4434, %4171
  %4497 = fmul fast float %4494, %4493
  %4498 = fmul fast float %4495, %4493
  %4499 = fmul fast float %4496, %4493
  %4500 = fadd fast float %4497, %4169
  %4501 = fadd fast float %4498, %4170
  %4502 = fadd fast float %4499, %4171
  %4503 = fsub fast float %4405, %4168
  %4504 = fmul fast float %4503, %4493
  %4505 = fadd fast float %4504, %4168
  %4506 = fmul fast float %4493, %4155
  %4507 = fsub fast float %4155, %4506
  %4508 = fmul fast float %4493, %4154
  %4509 = fsub fast float %4154, %4508
  %4510 = bitcast float %4223 to i32
  %4511 = lshr i32 %4510, 16
  %4512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4511)  ; LegacyF16ToF32(value)
  %4513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.i32 %4513, 0
  %4515 = and i32 %4514, 1
  %4516 = icmp eq i32 %4515, 0
  br i1 %4516, label %4517, label %4542

; <label>:4517                                    ; preds = %4481
  %4518 = fadd fast float %4405, 0xBFB99999A0000000
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = fmul fast float %4519, 0x3FF1C71C80000000
  %4521 = fsub fast float 1.000000e+00, %4520
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = fmul fast float %4522, %4432
  %4524 = fmul fast float %4522, %4433
  %4525 = fmul fast float %4522, %4434
  %4526 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4528 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4529 = call float @dx.op.binary.f32(i32 35, float %4527, float %4528)  ; FMax(a,b)
  %4530 = call float @dx.op.binary.f32(i32 35, float %4526, float %4529)  ; FMax(a,b)
  %4531 = fcmp fast ogt float %4530, 0.000000e+00
  %4532 = bitcast float %4530 to i32
  %4533 = sub nsw i32 2129859010, %4532
  %4534 = bitcast i32 %4533 to float
  %4535 = select i1 %4531, float %4534, float 0.000000e+00
  %4536 = fmul fast float %4526, %4512
  %4537 = fmul fast float %4527, %4512
  %4538 = fmul fast float %4528, %4512
  %4539 = fmul fast float %4536, %4535
  %4540 = fmul fast float %4537, %4535
  %4541 = fmul fast float %4538, %4535
  br label %4542

; <label>:4542                                    ; preds = %4517, %4481
  %4543 = phi float [ %4512, %4481 ], [ %4539, %4517 ]
  %4544 = phi float [ %4512, %4481 ], [ %4540, %4517 ]
  %4545 = phi float [ %4512, %4481 ], [ %4541, %4517 ]
  %4546 = fsub fast float %4543, %4156
  %4547 = fsub fast float %4544, %4157
  %4548 = fsub fast float %4545, %4158
  %4549 = fmul fast float %4546, %4493
  %4550 = fmul fast float %4547, %4493
  %4551 = fmul fast float %4548, %4493
  %4552 = fadd fast float %4549, %4156
  %4553 = fadd fast float %4550, %4157
  %4554 = fadd fast float %4551, %4158
  %4555 = fadd fast float %4378, %4167
  %4556 = call float @dx.op.unary.f32(i32 7, float %4555)  ; Saturate(value)
  %4557 = fsub fast float %4425, %4166
  %4558 = fmul fast float %4557, %4474
  %4559 = fadd fast float %4558, %4166
  %4560 = fsub fast float %4411, %4165
  %4561 = fmul fast float %4560, %4474
  %4562 = fadd fast float %4561, %4165
  br i1 %4476, label %4571, label %4563

; <label>:4563                                    ; preds = %4542
  %4564 = and i32 %4308, 32768
  %4565 = icmp eq i32 %4564, 0
  br i1 %4565, label %4581, label %4566

; <label>:4566                                    ; preds = %4563
  %4567 = fmul fast float %4474, 1.270000e+02
  %4568 = fadd fast float %4567, %4151
  %4569 = fadd fast float %4567, %4152
  %4570 = fadd fast float %4567, %4153
  br label %4581

; <label>:4571                                    ; preds = %4542
  %4572 = fsub fast float 1.270000e+02, %4151
  %4573 = fsub fast float 1.270000e+02, %4152
  %4574 = fsub fast float 1.270000e+02, %4153
  %4575 = fmul fast float %4474, %4572
  %4576 = fmul fast float %4474, %4573
  %4577 = fmul fast float %4474, %4574
  %4578 = fadd fast float %4575, %4151
  %4579 = fadd fast float %4576, %4152
  %4580 = fadd fast float %4577, %4153
  br label %4581

; <label>:4581                                    ; preds = %4571, %4566, %4563
  %4582 = phi float [ %4568, %4566 ], [ %4151, %4563 ], [ %4578, %4571 ]
  %4583 = phi float [ %4569, %4566 ], [ %4152, %4563 ], [ %4579, %4571 ]
  %4584 = phi float [ %4570, %4566 ], [ %4153, %4563 ], [ %4580, %4571 ]
  %4585 = call float @dx.op.dot3.f32(i32 55, float %4432, float %4433, float %4434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4588 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4589 = fmul fast float %4588, %4585
  %4590 = fadd fast float %4589, %4587
  %4591 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4592 = bitcast float %4217 to i32
  %4593 = and i32 %4592, 65535
  %4594 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4593)  ; LegacyF16ToF32(value)
  %4595 = lshr i32 %4592, 16
  %4596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4595)  ; LegacyF16ToF32(value)
  %4597 = fcmp fast oge float %4594, 0.000000e+00
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = select i1 %4597, float %4594, float %4599
  %4601 = fadd fast float %4600, %4596
  %4602 = fsub fast float %4591, %4150
  %4603 = fmul fast float %4602, %4378
  %4604 = fadd fast float %4603, %4150
  %4605 = fmul fast float %4601, %4378
  %4606 = call float @dx.op.binary.f32(i32 35, float %4149, float %4605)  ; FMax(a,b)
  %4607 = and i32 %4308, 16
  %4608 = icmp eq i32 %4607, 0
  br i1 %4608, label %4630, label %4609

; <label>:4609                                    ; preds = %4581
  %4610 = add i32 %4220, 0
  %4611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4610, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4612 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4611, %dx.types.Handle %4391, float %4319, float %4322, float undef, float undef, i32 0, i32 0, i32 undef, float %4324, float %4326, float undef, float %4328, float %4330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = and i32 %4510, 65535
  %4617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4616)  ; LegacyF16ToF32(value)
  %4618 = fmul fast float %4613, %4214
  %4619 = fmul fast float %4614, %4215
  %4620 = fmul fast float %4615, %4216
  %4621 = and i32 %4308, 16384
  %4622 = icmp ne i32 %4621, 0
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = select i1 %4622, float %4624, float 1.000000e+00
  %4626 = fmul fast float %4625, %4617
  %4627 = fmul fast float %4618, %4626
  %4628 = fmul fast float %4619, %4626
  %4629 = fmul fast float %4620, %4626
  br label %4630

; <label>:4630                                    ; preds = %4609, %4581
  %4631 = phi float [ %4627, %4609 ], [ 0.000000e+00, %4581 ]
  %4632 = phi float [ %4628, %4609 ], [ 0.000000e+00, %4581 ]
  %4633 = phi float [ %4629, %4609 ], [ 0.000000e+00, %4581 ]
  %4634 = fsub fast float %4631, %4159
  %4635 = fsub fast float %4632, %4160
  %4636 = fsub fast float %4633, %4161
  %4637 = fmul fast float %4634, %4378
  %4638 = fmul fast float %4635, %4378
  %4639 = fmul fast float %4636, %4378
  %4640 = fadd fast float %4637, %4159
  %4641 = fadd fast float %4638, %4160
  %4642 = fadd fast float %4639, %4161
  br label %4273

; <label>:4643                                    ; preds = %4273
  br label %4644

; <label>:4644                                    ; preds = %4643, %4083
  %4645 = phi float [ 0.000000e+00, %4083 ], [ %4274, %4643 ]
  %4646 = phi float [ %4027, %4083 ], [ %4275, %4643 ]
  %4647 = phi float [ %4006, %4083 ], [ %4276, %4643 ]
  %4648 = phi float [ %3996, %4083 ], [ %4277, %4643 ]
  %4649 = phi float [ %3997, %4083 ], [ %4278, %4643 ]
  %4650 = phi float [ %3998, %4083 ], [ %4279, %4643 ]
  %4651 = phi float [ 0.000000e+00, %4083 ], [ %4280, %4643 ]
  %4652 = phi float [ 0.000000e+00, %4083 ], [ %4281, %4643 ]
  %4653 = phi float [ %3993, %4083 ], [ %4282, %4643 ]
  %4654 = phi float [ %3994, %4083 ], [ %4283, %4643 ]
  %4655 = phi float [ %3995, %4083 ], [ %4284, %4643 ]
  %4656 = phi float [ %4049, %4083 ], [ %4285, %4643 ]
  %4657 = phi float [ %4051, %4083 ], [ %4286, %4643 ]
  %4658 = phi float [ %4053, %4083 ], [ %4287, %4643 ]
  %4659 = phi float [ %4079, %4083 ], [ %4288, %4643 ]
  %4660 = phi float [ %4080, %4083 ], [ %4289, %4643 ]
  %4661 = phi float [ %4081, %4083 ], [ %4290, %4643 ]
  %4662 = phi float [ %4004, %4083 ], [ %4291, %4643 ]
  %4663 = phi float [ %4003, %4083 ], [ %4292, %4643 ]
  %4664 = phi float [ 0.000000e+00, %4083 ], [ %4293, %4643 ]
  %4665 = phi float [ %4002, %4083 ], [ %4294, %4643 ]
  %4666 = phi float [ %4034, %4083 ], [ %4295, %4643 ]
  %4667 = phi float [ %4035, %4083 ], [ %4296, %4643 ]
  %4668 = phi float [ %4036, %4083 ], [ %4297, %4643 ]
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4659, float %4660, float %4661, float %4659, float %4660, float %4661)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = call float @dx.op.unary.f32(i32 25, float %4669)  ; Rsqrt(value)
  %4671 = fmul fast float %4670, %4659
  %4672 = fmul fast float %4670, %4660
  %4673 = fmul fast float %4670, %4661
  %4674 = fadd fast float %4664, %1176
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %4671, float %4672, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.unary.f32(i32 25, float %4676)  ; Rsqrt(value)
  %4678 = fmul fast float %4677, %4671
  %4679 = fmul fast float %4677, %4672
  %4680 = fmul fast float %4677, %4673
  br label %4681

; <label>:4681                                    ; preds = %4644, %3987
  %4682 = phi float [ %4678, %4644 ], [ %4079, %3987 ]
  %4683 = phi float [ %4679, %4644 ], [ %4080, %3987 ]
  %4684 = phi float [ %4680, %4644 ], [ %4081, %3987 ]
  %4685 = phi float [ %4666, %4644 ], [ %4034, %3987 ]
  %4686 = phi float [ %4667, %4644 ], [ %4035, %3987 ]
  %4687 = phi float [ %4668, %4644 ], [ %4036, %3987 ]
  %4688 = phi float [ %4656, %4644 ], [ %4049, %3987 ]
  %4689 = phi float [ %4657, %4644 ], [ %4051, %3987 ]
  %4690 = phi float [ %4658, %4644 ], [ %4053, %3987 ]
  %4691 = phi float [ %4653, %4644 ], [ %3993, %3987 ]
  %4692 = phi float [ %4654, %4644 ], [ %3994, %3987 ]
  %4693 = phi float [ %4655, %4644 ], [ %3995, %3987 ]
  %4694 = phi float [ %4648, %4644 ], [ %3996, %3987 ]
  %4695 = phi float [ %4649, %4644 ], [ %3997, %3987 ]
  %4696 = phi float [ %4650, %4644 ], [ %3998, %3987 ]
  %4697 = phi float [ %4665, %4644 ], [ %4002, %3987 ]
  %4698 = phi float [ %4675, %4644 ], [ %1176, %3987 ]
  %4699 = phi float [ %4663, %4644 ], [ %4003, %3987 ]
  %4700 = phi float [ %4662, %4644 ], [ %4004, %3987 ]
  %4701 = phi float [ %4652, %4644 ], [ 0.000000e+00, %3987 ]
  %4702 = phi float [ %4651, %4644 ], [ 0.000000e+00, %3987 ]
  %4703 = phi float [ %4645, %4644 ], [ 0.000000e+00, %3987 ]
  %4704 = phi float [ %4646, %4644 ], [ %4027, %3987 ]
  %4705 = phi float [ %4647, %4644 ], [ %4006, %3987 ]
  %4706 = fadd fast float %4697, 0xBFB99999A0000000
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4707, 0x3FF1C71C80000000
  %4709 = call float @dx.op.binary.f32(i32 36, float %4697, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4710 = fsub fast float 1.000000e+00, %4708
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fmul fast float %4711, %4685
  %4713 = fmul fast float %4711, %4686
  %4714 = fmul fast float %4711, %4687
  %4715 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4717 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4718 = fmul fast float %4708, %4685
  %4719 = fmul fast float %4708, %4686
  %4720 = fmul fast float %4708, %4687
  %4721 = fadd fast float %4718, %4709
  %4722 = fadd fast float %4719, %4709
  %4723 = fadd fast float %4720, %4709
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4726 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4727 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %4729 = extractvalue %dx.types.ResRet.i32 %4728, 0
  %4730 = and i32 %4729, 1
  %4731 = icmp eq i32 %4730, 0
  br i1 %4731, label %4746, label %4732

; <label>:4732                                    ; preds = %4681
  %4733 = call float @dx.op.binary.f32(i32 35, float %4716, float %4717)  ; FMax(a,b)
  %4734 = call float @dx.op.binary.f32(i32 35, float %4715, float %4733)  ; FMax(a,b)
  %4735 = fcmp fast ogt float %4734, 0.000000e+00
  %4736 = bitcast float %4734 to i32
  %4737 = sub nsw i32 2129859010, %4736
  %4738 = bitcast i32 %4737 to float
  %4739 = select i1 %4735, float %4738, float 0.000000e+00
  %4740 = fmul fast float %4715, %4691
  %4741 = fmul fast float %4716, %4692
  %4742 = fmul fast float %4717, %4693
  %4743 = fmul fast float %4740, %4739
  %4744 = fmul fast float %4741, %4739
  %4745 = fmul fast float %4742, %4739
  br label %4746

; <label>:4746                                    ; preds = %4732, %4681
  %4747 = phi float [ %4743, %4732 ], [ %4691, %4681 ]
  %4748 = phi float [ %4744, %4732 ], [ %4692, %4681 ]
  %4749 = phi float [ %4745, %4732 ], [ %4693, %4681 ]
  %4750 = call float @dx.op.binary.f32(i32 36, float %4694, float 1.270000e+02)  ; FMin(a,b)
  %4751 = call float @dx.op.binary.f32(i32 36, float %4695, float 1.270000e+02)  ; FMin(a,b)
  %4752 = call float @dx.op.binary.f32(i32 36, float %4696, float 1.270000e+02)  ; FMin(a,b)
  %4753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4754 = extractvalue %dx.types.CBufRet.i32 %4753, 3
  %4755 = and i32 %4754, 8
  %4756 = icmp ne i32 %4755, 0
  %4757 = call float @dx.op.binary.f32(i32 35, float %4715, float %4685)  ; FMax(a,b)
  %4758 = call float @dx.op.binary.f32(i32 35, float %4716, float %4685)  ; FMax(a,b)
  %4759 = call float @dx.op.binary.f32(i32 35, float %4717, float %4685)  ; FMax(a,b)
  %4760 = call float @dx.op.dot3.f32(i32 55, float %4715, float %4716, float %4717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4761 = select i1 %264, float %4685, float %4715
  %4762 = select i1 %264, float %4760, float %4716
  %4763 = select i1 %264, float 1.000000e+00, float %4717
  %4764 = select i1 %4756, float %4757, float %4761
  %4765 = select i1 %4756, float %4758, float %4762
  %4766 = select i1 %4756, float %4759, float %4763
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4748, float %4749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = select i1 %264, float %4767, float %4747
  %4769 = select i1 %264, float %4767, float %4748
  %4770 = select i1 %264, float %4767, float %4749
  %4771 = and i32 %240, 3
  %4772 = select i1 %234, i32 %4771, i32 0
  %4773 = icmp eq i32 %4772, 1
  br i1 %4773, label %4774, label %4850

; <label>:4774                                    ; preds = %4746
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 0
  %4777 = extractvalue %dx.types.CBufRet.f32 %4775, 1
  %4778 = fadd fast float %4776, %190
  %4779 = fadd fast float %4777, %191
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 0
  %4782 = extractvalue %dx.types.CBufRet.f32 %4780, 1
  %4783 = fsub fast float %4778, %4781
  %4784 = fsub fast float %4779, %4782
  %4785 = fmul fast float %4783, %4783
  %4786 = fmul fast float %4784, %4784
  %4787 = fadd fast float %4785, %4786
  %4788 = call float @dx.op.unary.f32(i32 24, float %4787)  ; Sqrt(value)
  %4789 = extractvalue %dx.types.CBufRet.f32 %4780, 2
  %4790 = fcmp fast olt float %4788, %4789
  br i1 %4790, label %4791, label %4844

; <label>:4791                                    ; preds = %4774
  %4792 = extractvalue %dx.types.CBufRet.f32 %4775, 2
  %4793 = fadd fast float %4792, %192
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4801 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4802 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4803 = extractvalue %dx.types.CBufRet.f32 %4794, 3
  %4804 = extractvalue %dx.types.CBufRet.f32 %4796, 3
  %4805 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4806 = fadd fast float %4803, %4778
  %4807 = fadd fast float %4804, %4779
  %4808 = fadd fast float %4793, %4805
  %4809 = fmul fast float %4806, %4795
  %4810 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4797, float %4809)  ; FMad(a,b,c)
  %4811 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4799, float %4810)  ; FMad(a,b,c)
  %4812 = fmul fast float %4806, %4800
  %4813 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4801, float %4812)  ; FMad(a,b,c)
  %4814 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4802, float %4813)  ; FMad(a,b,c)
  %4815 = fsub fast float %4811, %4803
  %4816 = fsub fast float %4814, %4804
  %4817 = fsub fast float %4815, %4781
  %4818 = fadd fast float %4817, %4789
  %4819 = fsub fast float %4816, %4782
  %4820 = fadd fast float %4819, %4789
  %4821 = extractvalue %dx.types.CBufRet.f32 %4780, 3
  %4822 = fmul fast float %4818, %4821
  %4823 = fmul fast float %4820, %4821
  %4824 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4826 = fsub fast float 1.000000e+00, %4824
  %4827 = fsub fast float 1.000000e+00, %4825
  %4828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %4826, float %4827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = fcmp fast ugt float %4829, 0.000000e+00
  br i1 %4830, label %4831, label %4844

; <label>:4831                                    ; preds = %4791
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 2
  %4834 = fmul fast float %4833, %4829
  %4835 = extractvalue %dx.types.CBufRet.f32 %4832, 3
  %4836 = fadd fast float %4835, %4834
  %4837 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4838 = fadd fast float %4836, %4805
  %4839 = fmul fast float %4811, %4799
  %4840 = call float @dx.op.tertiary.f32(i32 46, float %4814, float %4802, float %4839)  ; FMad(a,b,c)
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %4838, float %4837, float %4840)  ; FMad(a,b,c)
  %4842 = fsub fast float %4841, %4805
  %4843 = fsub fast float %4842, %4792
  br label %4844

; <label>:4844                                    ; preds = %4831, %4791, %4774
  %4845 = phi i1 [ true, %4831 ], [ false, %4791 ], [ false, %4774 ]
  %4846 = phi float [ %4843, %4831 ], [ -1.310720e+05, %4791 ], [ -1.310720e+05, %4774 ]
  %4847 = fsub fast float %4846, %192
  %4848 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4849 = select i1 %4845, float %4848, float 1.000000e+00
  br label %4850

; <label>:4850                                    ; preds = %4844, %4746
  %4851 = phi float [ %4849, %4844 ], [ 0.000000e+00, %4746 ]
  %4852 = icmp eq i32 %4772, 3
  %4853 = select i1 %4852, float 1.000000e+00, float %4851
  %4854 = call float @dx.op.binary.f32(i32 35, float %4703, float %4853)  ; FMax(a,b)
  %4855 = fcmp fast olt float %4853, 1.000000e+00
  br i1 %4855, label %4856, label %5029

; <label>:4856                                    ; preds = %4850
  %4857 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.i32 %4857, 0
  %4859 = and i32 %4858, 7
  %4860 = icmp eq i32 %4859, 0
  br i1 %4860, label %4932, label %4861

; <label>:4861                                    ; preds = %4856
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.CBufRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.CBufRet.f32 %4862, 2
  %4866 = fadd fast float %4863, %190
  %4867 = fadd fast float %4864, %191
  %4868 = fadd fast float %4865, %192
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4873 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4878 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4883 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4884 = fmul fast float %4866, %4870
  %4885 = call float @dx.op.tertiary.f32(i32 46, float %4867, float %4871, float %4884)  ; FMad(a,b,c)
  %4886 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4872, float %4885)  ; FMad(a,b,c)
  %4887 = fadd fast float %4886, %4873
  %4888 = fmul fast float %4875, %4866
  %4889 = call float @dx.op.tertiary.f32(i32 46, float %4867, float %4876, float %4888)  ; FMad(a,b,c)
  %4890 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4877, float %4889)  ; FMad(a,b,c)
  %4891 = fadd fast float %4890, %4878
  %4892 = fmul fast float %4880, %4866
  %4893 = call float @dx.op.tertiary.f32(i32 46, float %4867, float %4881, float %4892)  ; FMad(a,b,c)
  %4894 = call float @dx.op.tertiary.f32(i32 46, float %4868, float %4882, float %4893)  ; FMad(a,b,c)
  %4895 = fadd fast float %4894, %4883
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 1
  %4898 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4899 = fmul fast float %4898, %275
  %4900 = fadd fast float %4895, %4899
  %4901 = fmul fast float %275, 0x401921FB60000000
  %4902 = call float @dx.op.unary.f32(i32 13, float %4901)  ; Sin(value)
  %4903 = call float @dx.op.unary.f32(i32 12, float %4901)  ; Cos(value)
  %4904 = fmul fast float %4903, %4897
  %4905 = call float @dx.op.tertiary.f32(i32 46, float %4902, float %4897, float 0.000000e+00)  ; FMad(a,b,c)
  %4906 = fmul fast float %4897, %4902
  %4907 = fsub fast float -0.000000e+00, %4906
  %4908 = call float @dx.op.tertiary.f32(i32 46, float %4903, float %4897, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4909

; <label>:4909                                    ; preds = %4909, %4861
  %4910 = phi float [ 0.000000e+00, %4861 ], [ %4924, %4909 ]
  %4911 = phi i32 [ 0, %4861 ], [ %4925, %4909 ]
  %4912 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4911
  %4913 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4911
  %4914 = load float, float* %4912, align 4
  %4915 = load float, float* %4913, align 4
  %4916 = fmul fast float %4904, %4914
  %4917 = call float @dx.op.tertiary.f32(i32 46, float %4915, float %4907, float %4916)  ; FMad(a,b,c)
  %4918 = fmul fast float %4914, %4905
  %4919 = call float @dx.op.tertiary.f32(i32 46, float %4915, float %4908, float %4918)  ; FMad(a,b,c)
  %4920 = fadd fast float %4887, %4917
  %4921 = fadd fast float %4891, %4919
  %4922 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %47, float %4920, float %4921, float undef, float undef, i32 0, i32 0, i32 undef, float %4900)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = fadd fast float %4923, %4910
  %4925 = add nuw nsw i32 %4911, 1
  %4926 = icmp eq i32 %4925, 4
  br i1 %4926, label %4927, label %4909

; <label>:4927                                    ; preds = %4909
  %4928 = fmul fast float %4924, 2.500000e-01
  %4929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4930 = extractvalue %dx.types.CBufRet.f32 %4929, 1
  %4931 = fmul fast float %4930, %4928
  br label %4932

; <label>:4932                                    ; preds = %4927, %4856
  %4933 = phi float [ %4928, %4927 ], [ 0.000000e+00, %4856 ]
  %4934 = phi float [ %4931, %4927 ], [ 0.000000e+00, %4856 ]
  %4935 = fcmp uge float %67, 0.000000e+00
  br i1 %4935, label %4936, label %4947

; <label>:4936                                    ; preds = %4932
  %4937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %43, float %67, float %68, float %69, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4938 = extractvalue %dx.types.ResRet.f32 %4937, 0
  %4939 = extractvalue %dx.types.ResRet.f32 %4937, 1
  %4940 = extractvalue %dx.types.ResRet.f32 %4937, 2
  %4941 = fadd fast float %4938, %4854
  %4942 = fcmp fast ogt float %66, 0.000000e+00
  %4943 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = select i1 %4942, float 1.000000e+00, float %4943
  %4945 = fmul fast float %4944, %4940
  %4946 = select i1 %4942, float 0.000000e+00, float %4934
  br label %5029

; <label>:4947                                    ; preds = %4932
  %4948 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.i32 %4948, 0
  %4950 = and i32 %4949, 7
  %4951 = icmp eq i32 %4950, 0
  br i1 %4951, label %5029, label %4952

; <label>:4952                                    ; preds = %4947
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 0
  %4955 = fmul fast float %4954, %4933
  %4956 = fadd fast float %4955, %4854
  %4957 = extractvalue %dx.types.CBufRet.f32 %4953, 2
  %4958 = fmul fast float %4957, %4933
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = fmul fast float %4960, %4933
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = and i32 %4949, 8
  %4964 = icmp eq i32 %4963, 0
  br i1 %4964, label %5029, label %4965

; <label>:4965                                    ; preds = %4952
  %4966 = extractvalue %dx.types.CBufRet.f32 %4962, 2
  %4967 = fadd fast float %4966, %192
  %4968 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4969 = fadd fast float %4968, %191
  %4970 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4971 = fadd fast float %4970, %190
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.CBufRet.f32 %4972, 1
  %4975 = extractvalue %dx.types.CBufRet.f32 %4972, 2
  %4976 = fsub fast float %4971, %4973
  %4977 = fsub fast float %4969, %4974
  %4978 = fsub fast float %4967, %4975
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4983 = fmul fast float %4976, %4980
  %4984 = fmul fast float %4977, %4981
  %4985 = fmul fast float %4978, %4982
  %4986 = fcmp fast oge float %4983, 0.000000e+00
  %4987 = fcmp fast oge float %4984, 0.000000e+00
  %4988 = fcmp fast oge float %4985, 0.000000e+00
  %4989 = and i1 %4986, %4987
  %4990 = and i1 %4988, %4989
  %4991 = fcmp fast ole float %4983, 1.000000e+00
  %4992 = fcmp fast ole float %4984, 1.000000e+00
  %4993 = fcmp fast ole float %4985, 1.000000e+00
  %4994 = and i1 %4991, %4992
  %4995 = and i1 %4993, %4994
  %4996 = and i1 %4990, %4995
  br i1 %4996, label %4997, label %5029

; <label>:4997                                    ; preds = %4965
  %4998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.i32 %4998, 0
  %5000 = icmp eq i32 %4999, 0
  br i1 %5000, label %5007, label %5001

; <label>:5001                                    ; preds = %4997
  %5002 = add i32 %4999, 0
  %5003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5004 = fsub fast float -0.000000e+00, %4984
  %5005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %5003, %dx.types.Handle %108, float %4983, float %5004, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  br label %5007

; <label>:5007                                    ; preds = %5001, %4997
  %5008 = phi float [ %5006, %5001 ], [ 1.000000e+00, %4997 ]
  %5009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.i32 %5009, 0
  %5011 = and i32 %5010, 32
  %5012 = icmp ne i32 %5011, 0
  %5013 = fmul fast float %5008, %4933
  %5014 = select i1 %5012, float %5008, float %5013
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5017 = fmul fast float %5014, %5016
  %5018 = fadd fast float %5017, %4956
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = fmul fast float %5014, %5020
  %5022 = fadd fast float %5021, %4934
  %5023 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5024 = fmul fast float %5014, %5023
  %5025 = fadd fast float %5024, %4958
  %5026 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5027 = fmul fast float %5026, %5014
  %5028 = fadd fast float %5027, %4961
  br label %5029

; <label>:5029                                    ; preds = %5007, %4965, %4952, %4947, %4936, %4850
  %5030 = phi float [ %4854, %4947 ], [ %4854, %4850 ], [ %4941, %4936 ], [ %5018, %5007 ], [ %4956, %4965 ], [ %4956, %4952 ]
  %5031 = phi float [ %4934, %4947 ], [ 0.000000e+00, %4850 ], [ %4946, %4936 ], [ %5022, %5007 ], [ %4934, %4965 ], [ %4934, %4952 ]
  %5032 = phi float [ 0.000000e+00, %4947 ], [ 0.000000e+00, %4850 ], [ %4939, %4936 ], [ %5025, %5007 ], [ %4958, %4965 ], [ %4958, %4952 ]
  %5033 = phi float [ 0.000000e+00, %4947 ], [ 0.000000e+00, %4850 ], [ %4945, %4936 ], [ %5028, %5007 ], [ %4961, %4965 ], [ %4961, %4952 ]
  %5034 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5035 = call float @dx.op.unary.f32(i32 7, float %5031)  ; Saturate(value)
  %5036 = call float @dx.op.unary.f32(i32 7, float %5032)  ; Saturate(value)
  %5037 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5038 = fcmp fast une float %5036, 0.000000e+00
  %5039 = fcmp fast une float %5037, 0.000000e+00
  %5040 = or i1 %5038, %5039
  br i1 %5040, label %5041, label %5616

; <label>:5041                                    ; preds = %5029
  br i1 %5038, label %5042, label %5315

; <label>:5042                                    ; preds = %5041
  %5043 = call float @dx.op.unary.f32(i32 23, float %4700)  ; Log(value)
  %5044 = fmul fast float %5043, 4.000000e+00
  %5045 = call float @dx.op.unary.f32(i32 21, float %5044)  ; Exp(value)
  %5046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = extractvalue %dx.types.CBufRet.f32 %5046, 0
  %5048 = fmul fast float %5047, %54
  %5049 = fmul fast float %5047, %55
  %5050 = fmul fast float %5047, %56
  %5051 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5052 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5053 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5054 = call float @dx.op.unary.f32(i32 23, float %5051)  ; Log(value)
  %5055 = call float @dx.op.unary.f32(i32 23, float %5052)  ; Log(value)
  %5056 = call float @dx.op.unary.f32(i32 23, float %5053)  ; Log(value)
  %5057 = fmul fast float %5054, 4.000000e+00
  %5058 = fmul fast float %5055, 4.000000e+00
  %5059 = fmul fast float %5056, 4.000000e+00
  %5060 = call float @dx.op.unary.f32(i32 21, float %5057)  ; Exp(value)
  %5061 = call float @dx.op.unary.f32(i32 21, float %5058)  ; Exp(value)
  %5062 = call float @dx.op.unary.f32(i32 21, float %5059)  ; Exp(value)
  %5063 = fadd fast float %5061, %5060
  %5064 = fadd fast float %5063, %5062
  %5065 = fdiv fast float 1.000000e+00, %5064
  %5066 = fmul fast float %5065, %5060
  %5067 = fcmp fast ogt float %63, 0.000000e+00
  %5068 = fcmp fast ogt float %64, 0.000000e+00
  %5069 = fcmp fast ogt float %65, 0.000000e+00
  %5070 = fcmp fast olt float %63, 0.000000e+00
  %5071 = fcmp fast olt float %64, 0.000000e+00
  %5072 = fcmp fast olt float %65, 0.000000e+00
  %5073 = zext i1 %5067 to i32
  %5074 = zext i1 %5068 to i32
  %5075 = zext i1 %5069 to i32
  %5076 = zext i1 %5070 to i32
  %5077 = zext i1 %5071 to i32
  %5078 = zext i1 %5072 to i32
  %5079 = sub nsw i32 %5073, %5076
  %5080 = sub nsw i32 %5074, %5077
  %5081 = sub nsw i32 %5075, %5078
  %5082 = call float @dx.op.unary.f32(i32 83, float %5048)  ; DerivCoarseX(value)
  %5083 = call float @dx.op.unary.f32(i32 83, float %5049)  ; DerivCoarseX(value)
  %5084 = call float @dx.op.unary.f32(i32 83, float %5050)  ; DerivCoarseX(value)
  %5085 = call float @dx.op.unary.f32(i32 84, float %5048)  ; DerivCoarseY(value)
  %5086 = call float @dx.op.unary.f32(i32 84, float %5049)  ; DerivCoarseY(value)
  %5087 = call float @dx.op.unary.f32(i32 84, float %5050)  ; DerivCoarseY(value)
  %5088 = fcmp fast ole float %275, %5066
  %5089 = fmul fast float %5065, %5063
  %5090 = fcmp fast ole float %275, %5089
  %5091 = select i1 %5090, float %5050, float %5048
  %5092 = select i1 %5090, float %5048, float %5049
  %5093 = select i1 %5088, float %5049, float %5091
  %5094 = select i1 %5088, float %5050, float %5092
  %5095 = select i1 %5090, float %5084, float %5082
  %5096 = select i1 %5090, float %5082, float %5083
  %5097 = select i1 %5088, float %5083, float %5095
  %5098 = select i1 %5088, float %5084, float %5096
  %5099 = select i1 %5090, float %5087, float %5085
  %5100 = select i1 %5090, float %5085, float %5086
  %5101 = select i1 %5088, float %5086, float %5099
  %5102 = select i1 %5088, float %5087, float %5100
  %5103 = call float @dx.op.unary.f32(i32 27, float %5093)  ; Round_ni(value)
  %5104 = call float @dx.op.unary.f32(i32 27, float %5094)  ; Round_ni(value)
  %5105 = fptosi float %5103 to i32
  %5106 = fptosi float %5104 to i32
  %5107 = xor i32 %5106, %5105
  %5108 = sitofp i32 %5107 to float
  %5109 = fptosi float %5108 to i32
  %5110 = sitofp i32 %5109 to float
  %5111 = fmul fast float %5110, 0x3FE3C6EF40000000
  %5112 = frem fast float %5103, 2.560000e+02
  %5113 = frem fast float %5104, 2.560000e+02
  %5114 = fptoui float %5112 to i32
  %5115 = fptoui float %5113 to i32
  %5116 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5114, i32 %5115, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5117 = extractvalue %dx.types.ResRet.f32 %5116, 0
  %5118 = extractvalue %dx.types.ResRet.f32 %5116, 1
  %5119 = extractvalue %dx.types.ResRet.f32 %5116, 2
  %5120 = fadd fast float %5117, %5111
  %5121 = fadd fast float %5118, %5111
  %5122 = fadd fast float %5119, %5111
  %5123 = call float @dx.op.unary.f32(i32 22, float %5120)  ; Frc(value)
  %5124 = call float @dx.op.unary.f32(i32 22, float %5121)  ; Frc(value)
  %5125 = call float @dx.op.unary.f32(i32 22, float %5122)  ; Frc(value)
  %5126 = fmul fast float %5125, 0x401921FB60000000
  %5127 = call float @dx.op.unary.f32(i32 13, float %5126)  ; Sin(value)
  %5128 = call float @dx.op.unary.f32(i32 12, float %5126)  ; Cos(value)
  %5129 = fsub fast float -0.000000e+00, %5128
  %5130 = fmul fast float %5128, %5093
  %5131 = call float @dx.op.tertiary.f32(i32 46, float %5127, float %5094, float %5130)  ; FMad(a,b,c)
  %5132 = fmul fast float %5127, %5093
  %5133 = call float @dx.op.tertiary.f32(i32 46, float %5129, float %5094, float %5132)  ; FMad(a,b,c)
  %5134 = fadd fast float %5131, %5123
  %5135 = fadd fast float %5133, %5124
  %5136 = extractvalue %dx.types.CBufRet.f32 %5046, 3
  %5137 = bitcast float %5136 to i32
  %5138 = icmp eq i32 %5137, 0
  br i1 %5138, label %5177, label %5139

; <label>:5139                                    ; preds = %5042
  %5140 = add i32 %5137, 0
  %5141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5142 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5141, %dx.types.Handle %108, float %5134, float %5135, float undef, float undef, i32 0, i32 0, i32 undef, float %5097, float %5098, float undef, float %5101, float %5102, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 0
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 1
  %5146 = extractvalue %dx.types.CBufRet.f32 %5144, 2
  %5147 = fsub fast float 1.000000e+00, %5036
  %5148 = call float @dx.op.binary.f32(i32 35, float %5147, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5149 = bitcast float %5036 to i32
  %5150 = sitofp i32 %5149 to float
  %5151 = fadd fast float %5150, 0xC1CFBF8940000000
  %5152 = fmul fast float %5146, %5151
  %5153 = fadd fast float %5152, 0x41CFBF8940000000
  %5154 = fptosi float %5153 to i32
  %5155 = bitcast i32 %5154 to float
  %5156 = bitcast float %5148 to i32
  %5157 = sitofp i32 %5156 to float
  %5158 = fadd fast float %5157, 0xC1CFBF8940000000
  %5159 = fmul fast float %5158, %5146
  %5160 = fadd fast float %5159, 0x41CFBF8940000000
  %5161 = fptosi float %5160 to i32
  %5162 = bitcast i32 %5161 to float
  %5163 = fmul fast float %5155, %5145
  %5164 = fmul fast float %5162, %5145
  %5165 = fsub fast float %5148, %5163
  %5166 = fadd fast float %5164, %5148
  %5167 = call float @dx.op.unary.f32(i32 7, float %5165)  ; Saturate(value)
  %5168 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5169 = fsub fast float %5143, %5167
  %5170 = fsub fast float %5168, %5167
  %5171 = bitcast float %5170 to i32
  %5172 = sub nsw i32 2129859010, %5171
  %5173 = bitcast i32 %5172 to float
  %5174 = fmul fast float %5173, %5169
  %5175 = call float @dx.op.unary.f32(i32 7, float %5174)  ; Saturate(value)
  %5176 = fcmp fast olt float %5175, 0x3F70101020000000
  br i1 %5176, label %5315, label %5177

; <label>:5177                                    ; preds = %5139, %5042
  %5178 = phi float [ %5175, %5139 ], [ %5036, %5042 ]
  %5179 = fmul fast float %5178, %5045
  %5180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5181 = extractvalue %dx.types.CBufRet.i32 %5180, 1
  %5182 = extractvalue %dx.types.CBufRet.i32 %5180, 0
  %5183 = add i32 %5182, 0
  %5184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5185 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5184, %dx.types.Handle %107, float %5134, float %5135, float undef, float undef, i32 0, i32 0, i32 undef, float %5097, float %5098, float undef, float %5101, float %5102, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = extractvalue %dx.types.ResRet.f32 %5185, 3
  %5190 = and i32 %5181, 255
  %5191 = uitofp i32 %5190 to float
  %5192 = lshr i32 %5181, 8
  %5193 = and i32 %5192, 255
  %5194 = uitofp i32 %5193 to float
  %5195 = fmul fast float %5189, %5191
  %5196 = fadd fast float %5195, %5194
  %5197 = fmul fast float %5196, 0x3F70101000000000
  %5198 = fadd fast float %5197, 0xBFB99999A0000000
  %5199 = call float @dx.op.unary.f32(i32 7, float %5198)  ; Saturate(value)
  %5200 = fmul fast float %5199, 0x3FF1C71C80000000
  %5201 = call float @dx.op.binary.f32(i32 36, float %5197, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5202 = fsub fast float 1.000000e+00, %5200
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = fmul fast float %5203, %5186
  %5205 = fmul fast float %5203, %5187
  %5206 = fmul fast float %5203, %5188
  %5207 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5208 = call float @dx.op.unary.f32(i32 7, float %5205)  ; Saturate(value)
  %5209 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5210 = fmul fast float %5200, %5186
  %5211 = fmul fast float %5200, %5187
  %5212 = fmul fast float %5200, %5188
  %5213 = fadd fast float %5210, %5201
  %5214 = fadd fast float %5211, %5201
  %5215 = fadd fast float %5212, %5201
  %5216 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5217 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5218 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.i32 %5219, 3
  %5221 = extractvalue %dx.types.CBufRet.i32 %5219, 2
  %5222 = add i32 %5221, 0
  %5223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5224 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5223, %dx.types.Handle %107, float %5134, float %5135, float undef, float undef, i32 0, i32 0, i32 undef, float %5097, float %5098, float undef, float %5101, float %5102, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = extractvalue %dx.types.ResRet.f32 %5224, 3
  %5229 = and i32 %5220, 255
  %5230 = uitofp i32 %5229 to float
  %5231 = lshr i32 %5220, 8
  %5232 = and i32 %5231, 255
  %5233 = uitofp i32 %5232 to float
  %5234 = lshr i32 %5220, 16
  %5235 = and i32 %5234, 255
  %5236 = uitofp i32 %5235 to float
  %5237 = fmul fast float %5236, 0x3F70101000000000
  %5238 = fmul fast float %5225, %5230
  %5239 = fadd fast float %5238, %5233
  %5240 = fmul fast float %5239, 0x3F70101000000000
  %5241 = fadd fast float %5226, -5.000000e-01
  %5242 = fadd fast float %5228, -5.000000e-01
  %5243 = fmul fast float %5241, %5237
  %5244 = fmul fast float %5242, %5237
  %5245 = fadd fast float %5243, 5.000000e-01
  %5246 = fadd fast float %5244, 5.000000e-01
  %5247 = fmul fast float %5245, 2.000000e+00
  %5248 = fadd fast float %5247, -1.000000e+00
  %5249 = fmul fast float %5246, 2.000000e+00
  %5250 = fadd fast float %5249, -1.000000e+00
  %5251 = fadd fast float %5248, %5250
  %5252 = fmul fast float %5251, 5.000000e-01
  %5253 = fsub fast float %5248, %5250
  %5254 = fmul fast float %5253, 5.000000e-01
  %5255 = call float @dx.op.unary.f32(i32 6, float %5252)  ; FAbs(value)
  %5256 = fsub fast float 1.000000e+00, %5255
  %5257 = call float @dx.op.unary.f32(i32 6, float %5254)  ; FAbs(value)
  %5258 = fsub fast float %5256, %5257
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5252, float %5254, float %5258, float %5252, float %5254, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = call float @dx.op.unary.f32(i32 25, float %5259)  ; Rsqrt(value)
  %5261 = fmul fast float %5252, %5260
  %5262 = fmul fast float %5254, %5260
  %5263 = select i1 %5090, i32 %5080, i32 %5081
  %5264 = select i1 %5088, i32 %5079, i32 %5263
  %5265 = sitofp i32 %5264 to float
  %5266 = fmul fast float %5258, %5265
  %5267 = fmul fast float %5266, %5260
  %5268 = select i1 %5090, float %5267, float %5262
  %5269 = select i1 %5090, float %5262, float %5267
  %5270 = select i1 %5088, float %5267, float %5261
  %5271 = select i1 %5088, float %5262, float %5268
  %5272 = select i1 %5088, float %5261, float %5269
  %5273 = fsub fast float %5207, %4764
  %5274 = fsub fast float %5208, %4765
  %5275 = fsub fast float %5209, %4766
  %5276 = fmul fast float %5273, %5179
  %5277 = fmul fast float %5274, %5179
  %5278 = fmul fast float %5275, %5179
  %5279 = fadd fast float %5276, %4764
  %5280 = fadd fast float %5277, %4765
  %5281 = fadd fast float %5278, %4766
  %5282 = fsub fast float %5216, %4724
  %5283 = fsub fast float %5217, %4725
  %5284 = fsub fast float %5218, %4726
  %5285 = fmul fast float %5282, %5179
  %5286 = fmul fast float %5283, %5179
  %5287 = fmul fast float %5284, %5179
  %5288 = fadd fast float %5285, %4724
  %5289 = fadd fast float %5286, %4725
  %5290 = fadd fast float %5287, %4726
  %5291 = fadd fast float %5270, %4682
  %5292 = fadd fast float %5271, %4683
  %5293 = fadd fast float %5272, %4684
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5291, float %5292, float %5293, float %5291, float %5292, float %5293)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = call float @dx.op.unary.f32(i32 25, float %5294)  ; Rsqrt(value)
  %5296 = fmul fast float %5291, %5295
  %5297 = fmul fast float %5292, %5295
  %5298 = fmul fast float %5293, %5295
  %5299 = fsub fast float %5296, %4682
  %5300 = fsub fast float %5297, %4683
  %5301 = fsub fast float %5298, %4684
  %5302 = fmul fast float %5299, %5179
  %5303 = fmul fast float %5300, %5179
  %5304 = fmul fast float %5301, %5179
  %5305 = fadd fast float %5302, %4682
  %5306 = fadd fast float %5303, %4683
  %5307 = fadd fast float %5304, %4684
  %5308 = call float @dx.op.binary.f32(i32 36, float %4700, float %5227)  ; FMin(a,b)
  %5309 = fsub fast float %5308, %4700
  %5310 = fmul fast float %5309, %5179
  %5311 = fadd fast float %5310, %4700
  %5312 = fsub fast float %5240, %4727
  %5313 = fmul fast float %5312, %5179
  %5314 = fadd fast float %5313, %4727
  br label %5315

; <label>:5315                                    ; preds = %5177, %5139, %5041
  %5316 = phi float [ %5279, %5177 ], [ %4764, %5139 ], [ %4764, %5041 ]
  %5317 = phi float [ %5280, %5177 ], [ %4765, %5139 ], [ %4765, %5041 ]
  %5318 = phi float [ %5281, %5177 ], [ %4766, %5139 ], [ %4766, %5041 ]
  %5319 = phi float [ %5288, %5177 ], [ %4724, %5139 ], [ %4724, %5041 ]
  %5320 = phi float [ %5289, %5177 ], [ %4725, %5139 ], [ %4725, %5041 ]
  %5321 = phi float [ %5290, %5177 ], [ %4726, %5139 ], [ %4726, %5041 ]
  %5322 = phi float [ %5305, %5177 ], [ %4682, %5139 ], [ %4682, %5041 ]
  %5323 = phi float [ %5306, %5177 ], [ %4683, %5139 ], [ %4683, %5041 ]
  %5324 = phi float [ %5307, %5177 ], [ %4684, %5139 ], [ %4684, %5041 ]
  %5325 = phi float [ %5314, %5177 ], [ %4727, %5139 ], [ %4727, %5041 ]
  %5326 = phi float [ %5311, %5177 ], [ %4700, %5139 ], [ %4700, %5041 ]
  br i1 %5039, label %5327, label %5616

; <label>:5327                                    ; preds = %5315
  %5328 = call float @dx.op.unary.f32(i32 23, float %5326)  ; Log(value)
  %5329 = fmul fast float %5328, 4.000000e+00
  %5330 = call float @dx.op.unary.f32(i32 21, float %5329)  ; Exp(value)
  %5331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5332 = extractvalue %dx.types.CBufRet.f32 %5331, 0
  %5333 = fmul fast float %5332, %54
  %5334 = fmul fast float %5332, %55
  %5335 = fmul fast float %5332, %56
  %5336 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5337 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %5338 = call float @dx.op.unary.f32(i32 6, float %65)  ; FAbs(value)
  %5339 = call float @dx.op.unary.f32(i32 23, float %5336)  ; Log(value)
  %5340 = call float @dx.op.unary.f32(i32 23, float %5337)  ; Log(value)
  %5341 = call float @dx.op.unary.f32(i32 23, float %5338)  ; Log(value)
  %5342 = fmul fast float %5339, 4.000000e+00
  %5343 = fmul fast float %5340, 4.000000e+00
  %5344 = fmul fast float %5341, 4.000000e+00
  %5345 = call float @dx.op.unary.f32(i32 21, float %5342)  ; Exp(value)
  %5346 = call float @dx.op.unary.f32(i32 21, float %5343)  ; Exp(value)
  %5347 = call float @dx.op.unary.f32(i32 21, float %5344)  ; Exp(value)
  %5348 = fadd fast float %5346, %5345
  %5349 = fadd fast float %5348, %5347
  %5350 = fdiv fast float 1.000000e+00, %5349
  %5351 = fmul fast float %5350, %5345
  %5352 = fcmp fast ogt float %63, 0.000000e+00
  %5353 = fcmp fast ogt float %64, 0.000000e+00
  %5354 = fcmp fast ogt float %65, 0.000000e+00
  %5355 = fcmp fast olt float %63, 0.000000e+00
  %5356 = fcmp fast olt float %64, 0.000000e+00
  %5357 = fcmp fast olt float %65, 0.000000e+00
  %5358 = zext i1 %5352 to i32
  %5359 = zext i1 %5353 to i32
  %5360 = zext i1 %5354 to i32
  %5361 = zext i1 %5355 to i32
  %5362 = zext i1 %5356 to i32
  %5363 = zext i1 %5357 to i32
  %5364 = sub nsw i32 %5358, %5361
  %5365 = sub nsw i32 %5359, %5362
  %5366 = sub nsw i32 %5360, %5363
  %5367 = call float @dx.op.unary.f32(i32 83, float %5333)  ; DerivCoarseX(value)
  %5368 = call float @dx.op.unary.f32(i32 83, float %5334)  ; DerivCoarseX(value)
  %5369 = call float @dx.op.unary.f32(i32 83, float %5335)  ; DerivCoarseX(value)
  %5370 = call float @dx.op.unary.f32(i32 84, float %5333)  ; DerivCoarseY(value)
  %5371 = call float @dx.op.unary.f32(i32 84, float %5334)  ; DerivCoarseY(value)
  %5372 = call float @dx.op.unary.f32(i32 84, float %5335)  ; DerivCoarseY(value)
  %5373 = fcmp fast ole float %275, %5351
  %5374 = fmul fast float %5350, %5348
  %5375 = fcmp fast ole float %275, %5374
  %5376 = select i1 %5375, float %5335, float %5333
  %5377 = select i1 %5375, float %5333, float %5334
  %5378 = select i1 %5373, float %5334, float %5376
  %5379 = select i1 %5373, float %5335, float %5377
  %5380 = select i1 %5375, float %5369, float %5367
  %5381 = select i1 %5375, float %5367, float %5368
  %5382 = select i1 %5373, float %5368, float %5380
  %5383 = select i1 %5373, float %5369, float %5381
  %5384 = select i1 %5375, float %5372, float %5370
  %5385 = select i1 %5375, float %5370, float %5371
  %5386 = select i1 %5373, float %5371, float %5384
  %5387 = select i1 %5373, float %5372, float %5385
  %5388 = call float @dx.op.unary.f32(i32 27, float %5378)  ; Round_ni(value)
  %5389 = call float @dx.op.unary.f32(i32 27, float %5379)  ; Round_ni(value)
  %5390 = fptosi float %5388 to i32
  %5391 = fptosi float %5389 to i32
  %5392 = xor i32 %5391, %5390
  %5393 = sitofp i32 %5392 to float
  %5394 = fptosi float %5393 to i32
  %5395 = sitofp i32 %5394 to float
  %5396 = fmul fast float %5395, 0x3FE3C6EF40000000
  %5397 = frem fast float %5388, 2.560000e+02
  %5398 = frem fast float %5389, 2.560000e+02
  %5399 = fptoui float %5397 to i32
  %5400 = fptoui float %5398 to i32
  %5401 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5399, i32 %5400, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5402 = extractvalue %dx.types.ResRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.ResRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.ResRet.f32 %5401, 2
  %5405 = fadd fast float %5402, %5396
  %5406 = fadd fast float %5403, %5396
  %5407 = fadd fast float %5404, %5396
  %5408 = call float @dx.op.unary.f32(i32 22, float %5405)  ; Frc(value)
  %5409 = call float @dx.op.unary.f32(i32 22, float %5406)  ; Frc(value)
  %5410 = call float @dx.op.unary.f32(i32 22, float %5407)  ; Frc(value)
  %5411 = fmul fast float %5410, 0x401921FB60000000
  %5412 = call float @dx.op.unary.f32(i32 13, float %5411)  ; Sin(value)
  %5413 = call float @dx.op.unary.f32(i32 12, float %5411)  ; Cos(value)
  %5414 = fsub fast float -0.000000e+00, %5413
  %5415 = fmul fast float %5413, %5378
  %5416 = call float @dx.op.tertiary.f32(i32 46, float %5412, float %5379, float %5415)  ; FMad(a,b,c)
  %5417 = fmul fast float %5412, %5378
  %5418 = call float @dx.op.tertiary.f32(i32 46, float %5414, float %5379, float %5417)  ; FMad(a,b,c)
  %5419 = fadd fast float %5416, %5408
  %5420 = fadd fast float %5418, %5409
  %5421 = extractvalue %dx.types.CBufRet.f32 %5331, 3
  %5422 = bitcast float %5421 to i32
  %5423 = icmp eq i32 %5422, 0
  br i1 %5423, label %5462, label %5424

; <label>:5424                                    ; preds = %5327
  %5425 = add i32 %5422, 0
  %5426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5425, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5427 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5426, %dx.types.Handle %108, float %5419, float %5420, float undef, float undef, i32 0, i32 0, i32 undef, float %5382, float %5383, float undef, float %5386, float %5387, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5429, 1
  %5431 = extractvalue %dx.types.CBufRet.f32 %5429, 2
  %5432 = fsub fast float 1.000000e+00, %5037
  %5433 = call float @dx.op.binary.f32(i32 35, float %5432, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5434 = bitcast float %5037 to i32
  %5435 = sitofp i32 %5434 to float
  %5436 = fadd fast float %5435, 0xC1CFBF8940000000
  %5437 = fmul fast float %5431, %5436
  %5438 = fadd fast float %5437, 0x41CFBF8940000000
  %5439 = fptosi float %5438 to i32
  %5440 = bitcast i32 %5439 to float
  %5441 = bitcast float %5433 to i32
  %5442 = sitofp i32 %5441 to float
  %5443 = fadd fast float %5442, 0xC1CFBF8940000000
  %5444 = fmul fast float %5443, %5431
  %5445 = fadd fast float %5444, 0x41CFBF8940000000
  %5446 = fptosi float %5445 to i32
  %5447 = bitcast i32 %5446 to float
  %5448 = fmul fast float %5440, %5430
  %5449 = fmul fast float %5447, %5430
  %5450 = fsub fast float %5433, %5448
  %5451 = fadd fast float %5449, %5433
  %5452 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5451)  ; Saturate(value)
  %5454 = fsub fast float %5428, %5452
  %5455 = fsub fast float %5453, %5452
  %5456 = bitcast float %5455 to i32
  %5457 = sub nsw i32 2129859010, %5456
  %5458 = bitcast i32 %5457 to float
  %5459 = fmul fast float %5458, %5454
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5461 = fcmp fast olt float %5460, 0x3F70101020000000
  br i1 %5461, label %5616, label %5462

; <label>:5462                                    ; preds = %5424, %5327
  %5463 = phi float [ %5460, %5424 ], [ %5037, %5327 ]
  %5464 = fmul fast float %5463, %5330
  %5465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5466 = extractvalue %dx.types.CBufRet.i32 %5465, 1
  %5467 = extractvalue %dx.types.CBufRet.i32 %5465, 0
  %5468 = add i32 %5467, 0
  %5469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5470 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5469, %dx.types.Handle %107, float %5419, float %5420, float undef, float undef, i32 0, i32 0, i32 undef, float %5382, float %5383, float undef, float %5386, float %5387, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5471 = extractvalue %dx.types.ResRet.f32 %5470, 0
  %5472 = extractvalue %dx.types.ResRet.f32 %5470, 1
  %5473 = extractvalue %dx.types.ResRet.f32 %5470, 2
  %5474 = extractvalue %dx.types.ResRet.f32 %5470, 3
  %5475 = and i32 %5466, 255
  %5476 = uitofp i32 %5475 to float
  %5477 = lshr i32 %5466, 8
  %5478 = and i32 %5477, 255
  %5479 = uitofp i32 %5478 to float
  %5480 = fmul fast float %5474, %5476
  %5481 = fadd fast float %5480, %5479
  %5482 = fmul fast float %5481, 0x3F70101000000000
  %5483 = fadd fast float %5482, 0xBFB99999A0000000
  %5484 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5485 = fmul fast float %5484, 0x3FF1C71C80000000
  %5486 = call float @dx.op.binary.f32(i32 36, float %5482, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5487 = fsub fast float 1.000000e+00, %5485
  %5488 = call float @dx.op.unary.f32(i32 7, float %5487)  ; Saturate(value)
  %5489 = fmul fast float %5488, %5471
  %5490 = fmul fast float %5488, %5472
  %5491 = fmul fast float %5488, %5473
  %5492 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5493 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5494 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5495 = fmul fast float %5485, %5471
  %5496 = fmul fast float %5485, %5472
  %5497 = fmul fast float %5485, %5473
  %5498 = fadd fast float %5495, %5486
  %5499 = fadd fast float %5496, %5486
  %5500 = fadd fast float %5497, %5486
  %5501 = call float @dx.op.unary.f32(i32 7, float %5498)  ; Saturate(value)
  %5502 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5503 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.i32 %5504, 3
  %5506 = extractvalue %dx.types.CBufRet.i32 %5504, 2
  %5507 = add i32 %5506, 0
  %5508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5509 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5508, %dx.types.Handle %107, float %5419, float %5420, float undef, float undef, i32 0, i32 0, i32 undef, float %5382, float %5383, float undef, float %5386, float %5387, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5510 = extractvalue %dx.types.ResRet.f32 %5509, 0
  %5511 = extractvalue %dx.types.ResRet.f32 %5509, 1
  %5512 = extractvalue %dx.types.ResRet.f32 %5509, 2
  %5513 = extractvalue %dx.types.ResRet.f32 %5509, 3
  %5514 = and i32 %5505, 255
  %5515 = uitofp i32 %5514 to float
  %5516 = lshr i32 %5505, 8
  %5517 = and i32 %5516, 255
  %5518 = uitofp i32 %5517 to float
  %5519 = lshr i32 %5505, 16
  %5520 = and i32 %5519, 255
  %5521 = uitofp i32 %5520 to float
  %5522 = fmul fast float %5521, 0x3F70101000000000
  %5523 = fmul fast float %5510, %5515
  %5524 = fadd fast float %5523, %5518
  %5525 = fmul fast float %5524, 0x3F70101000000000
  %5526 = fadd fast float %5511, -5.000000e-01
  %5527 = fadd fast float %5513, -5.000000e-01
  %5528 = fmul fast float %5526, %5522
  %5529 = fmul fast float %5527, %5522
  %5530 = fadd fast float %5528, 5.000000e-01
  %5531 = fadd fast float %5529, 5.000000e-01
  %5532 = fmul fast float %5530, 2.000000e+00
  %5533 = fadd fast float %5532, -1.000000e+00
  %5534 = fmul fast float %5531, 2.000000e+00
  %5535 = fadd fast float %5534, -1.000000e+00
  %5536 = fadd fast float %5533, %5535
  %5537 = fmul fast float %5536, 5.000000e-01
  %5538 = fsub fast float %5533, %5535
  %5539 = fmul fast float %5538, 5.000000e-01
  %5540 = call float @dx.op.unary.f32(i32 6, float %5537)  ; FAbs(value)
  %5541 = fsub fast float 1.000000e+00, %5540
  %5542 = call float @dx.op.unary.f32(i32 6, float %5539)  ; FAbs(value)
  %5543 = fsub fast float %5541, %5542
  %5544 = call float @dx.op.dot3.f32(i32 55, float %5537, float %5539, float %5543, float %5537, float %5539, float %5543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5545 = call float @dx.op.unary.f32(i32 25, float %5544)  ; Rsqrt(value)
  %5546 = fmul fast float %5537, %5545
  %5547 = fmul fast float %5539, %5545
  %5548 = select i1 %5375, i32 %5365, i32 %5366
  %5549 = select i1 %5373, i32 %5364, i32 %5548
  %5550 = sitofp i32 %5549 to float
  %5551 = fmul fast float %5543, %5550
  %5552 = fmul fast float %5551, %5545
  %5553 = select i1 %5375, float %5552, float %5547
  %5554 = select i1 %5375, float %5547, float %5552
  %5555 = select i1 %5373, float %5552, float %5546
  %5556 = select i1 %5373, float %5547, float %5553
  %5557 = select i1 %5373, float %5546, float %5554
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 0
  %5560 = fptoui float %5559 to i32
  %5561 = add i32 %5560, 0
  %5562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5563 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5562, %dx.types.Handle %107, float %5419, float %5420, float undef, float undef, i32 0, i32 0, i32 undef, float %5382, float %5383, float undef, float %5386, float %5387, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5564 = extractvalue %dx.types.ResRet.f32 %5563, 0
  %5565 = fsub fast float %5492, %5316
  %5566 = fsub fast float %5493, %5317
  %5567 = fsub fast float %5494, %5318
  %5568 = fmul fast float %5565, %5464
  %5569 = fmul fast float %5566, %5464
  %5570 = fmul fast float %5567, %5464
  %5571 = fadd fast float %5568, %5316
  %5572 = fadd fast float %5569, %5317
  %5573 = fadd fast float %5570, %5318
  %5574 = fsub fast float %5501, %5319
  %5575 = fsub fast float %5502, %5320
  %5576 = fsub fast float %5503, %5321
  %5577 = fmul fast float %5574, %5464
  %5578 = fmul fast float %5575, %5464
  %5579 = fmul fast float %5576, %5464
  %5580 = fadd fast float %5577, %5319
  %5581 = fadd fast float %5578, %5320
  %5582 = fadd fast float %5579, %5321
  %5583 = fadd fast float %5555, %5322
  %5584 = fadd fast float %5556, %5323
  %5585 = fadd fast float %5557, %5324
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float %5583, float %5584, float %5585)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = call float @dx.op.unary.f32(i32 25, float %5586)  ; Rsqrt(value)
  %5588 = fmul fast float %5587, %5583
  %5589 = fmul fast float %5587, %5584
  %5590 = fmul fast float %5587, %5585
  %5591 = fsub fast float %5588, %5322
  %5592 = fsub fast float %5589, %5323
  %5593 = fsub fast float %5590, %5324
  %5594 = fmul fast float %5591, %5464
  %5595 = fmul fast float %5592, %5464
  %5596 = fmul fast float %5593, %5464
  %5597 = fadd fast float %5594, %5322
  %5598 = fadd fast float %5595, %5323
  %5599 = fadd fast float %5596, %5324
  %5600 = call float @dx.op.binary.f32(i32 36, float %5326, float %5512)  ; FMin(a,b)
  %5601 = fsub fast float %5600, %5326
  %5602 = fmul fast float %5601, %5464
  %5603 = fadd fast float %5602, %5326
  %5604 = fsub fast float %5525, %5325
  %5605 = fmul fast float %5604, %5464
  %5606 = fadd fast float %5605, %5325
  %5607 = fsub fast float %5564, %4768
  %5608 = fsub fast float %5564, %4769
  %5609 = fsub fast float %5564, %4770
  %5610 = fmul fast float %5607, %5464
  %5611 = fmul fast float %5608, %5464
  %5612 = fmul fast float %5609, %5464
  %5613 = fadd fast float %5610, %4768
  %5614 = fadd fast float %5611, %4769
  %5615 = fadd fast float %5612, %4770
  br label %5616

; <label>:5616                                    ; preds = %5462, %5424, %5315, %5029
  %5617 = phi float [ %5571, %5462 ], [ %5316, %5424 ], [ %5316, %5315 ], [ %4764, %5029 ]
  %5618 = phi float [ %5572, %5462 ], [ %5317, %5424 ], [ %5317, %5315 ], [ %4765, %5029 ]
  %5619 = phi float [ %5573, %5462 ], [ %5318, %5424 ], [ %5318, %5315 ], [ %4766, %5029 ]
  %5620 = phi float [ %5580, %5462 ], [ %5319, %5424 ], [ %5319, %5315 ], [ %4724, %5029 ]
  %5621 = phi float [ %5581, %5462 ], [ %5320, %5424 ], [ %5320, %5315 ], [ %4725, %5029 ]
  %5622 = phi float [ %5582, %5462 ], [ %5321, %5424 ], [ %5321, %5315 ], [ %4726, %5029 ]
  %5623 = phi float [ %5597, %5462 ], [ %5322, %5424 ], [ %5322, %5315 ], [ %4682, %5029 ]
  %5624 = phi float [ %5598, %5462 ], [ %5323, %5424 ], [ %5323, %5315 ], [ %4683, %5029 ]
  %5625 = phi float [ %5599, %5462 ], [ %5324, %5424 ], [ %5324, %5315 ], [ %4684, %5029 ]
  %5626 = phi float [ %5613, %5462 ], [ %4768, %5424 ], [ %4768, %5315 ], [ %4768, %5029 ]
  %5627 = phi float [ %5614, %5462 ], [ %4769, %5424 ], [ %4769, %5315 ], [ %4769, %5029 ]
  %5628 = phi float [ %5615, %5462 ], [ %4770, %5424 ], [ %4770, %5315 ], [ %4770, %5029 ]
  %5629 = phi float [ %5606, %5462 ], [ %5325, %5424 ], [ %5325, %5315 ], [ %4727, %5029 ]
  %5630 = phi float [ %5603, %5462 ], [ %5326, %5424 ], [ %5326, %5315 ], [ %4700, %5029 ]
  %5631 = fcmp fast une float %5034, 0.000000e+00
  %5632 = call float @dx.op.dot3.f32(i32 55, float %190, float %191, float %192, float %190, float %191, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %5633 = call float @dx.op.unary.f32(i32 25, float %5632)  ; Rsqrt(value)
  br i1 %5631, label %5641, label %5634

; <label>:5634                                    ; preds = %5616
  %5635 = fmul fast float %5633, %190
  %5636 = fmul fast float %5633, %191
  %5637 = fmul fast float %5633, %192
  %5638 = fsub fast float -0.000000e+00, %5635
  %5639 = fsub fast float -0.000000e+00, %5636
  %5640 = fsub fast float -0.000000e+00, %5637
  br label %6001

; <label>:5641                                    ; preds = %5616
  %5642 = fmul fast float %190, %5633
  %5643 = fsub fast float -0.000000e+00, %5642
  %5644 = fmul fast float %191, %5633
  %5645 = fsub fast float -0.000000e+00, %5644
  %5646 = fmul fast float %192, %5633
  %5647 = fsub fast float -0.000000e+00, %5646
  %5648 = call float @dx.op.dot3.f32(i32 55, float %5643, float %5645, float %5647, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = fmul fast float %5034, 2.500000e+00
  %5651 = call float @dx.op.unary.f32(i32 7, float %5650)  ; Saturate(value)
  %5652 = fmul fast float %5034, 0x4013FFFFE0000000
  %5653 = fadd fast float %5652, 0xBFFFFFFFE0000000
  %5654 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5655 = fmul fast float %5034, 0x4004000020000000
  %5656 = fadd fast float %5655, 0xBFF8000040000000
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5658 = fmul fast float %4706, 1.000000e+01
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5659, 2.000000e+00
  %5661 = fsub fast float 3.000000e+00, %5660
  %5662 = fmul fast float %5659, %5659
  %5663 = fmul fast float %5662, %5661
  %5664 = fsub fast float 1.000000e+00, %5663
  %5665 = fsub fast float 0x3FE3333340000000, %5629
  %5666 = fmul fast float %5665, 0x400AAAAAA0000000
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5664, %5667
  %5669 = fmul fast float %5617, 0x3FEA2B8620000000
  %5670 = fmul fast float %5618, 0x3FEA2B8620000000
  %5671 = fmul fast float %5619, 0x3FEA2B8620000000
  %5672 = fadd fast float %5669, 0x3FC81DFBA0000000
  %5673 = fmul fast float %5672, %5617
  %5674 = fadd fast float %5673, 0x3F910E6020000000
  %5675 = fadd fast float %5670, 0x3FC81DFBA0000000
  %5676 = fmul fast float %5675, %5618
  %5677 = fadd fast float %5676, 0x3F910E6020000000
  %5678 = fadd fast float %5671, 0x3FC81DFBA0000000
  %5679 = fmul fast float %5678, %5619
  %5680 = fadd fast float %5679, 0x3F910E6020000000
  %5681 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5682 = call float @dx.op.unary.f32(i32 7, float %5677)  ; Saturate(value)
  %5683 = call float @dx.op.unary.f32(i32 7, float %5680)  ; Saturate(value)
  %5684 = fsub fast float %5681, %5617
  %5685 = fsub fast float %5682, %5618
  %5686 = fsub fast float %5683, %5619
  %5687 = fmul fast float %5684, %5651
  %5688 = fmul fast float %5687, %5668
  %5689 = fmul fast float %5685, %5651
  %5690 = fmul fast float %5689, %5668
  %5691 = fmul fast float %5686, %5651
  %5692 = fmul fast float %5691, %5668
  %5693 = fadd fast float %5688, %5617
  %5694 = fadd fast float %5690, %5618
  %5695 = fadd fast float %5692, %5619
  %5696 = fmul fast float %5630, %5630
  %5697 = fmul fast float %5696, %5696
  %5698 = fadd fast float %5654, 1.000000e+00
  %5699 = fsub fast float %5698, %5668
  %5700 = call float @dx.op.unary.f32(i32 7, float %5699)  ; Saturate(value)
  %5701 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = call float @dx.op.unary.f32(i32 7, float %5701)  ; Saturate(value)
  %5703 = fsub fast float 1.000000e+00, %5697
  %5704 = call float @dx.op.binary.f32(i32 36, float %5700, float %5703)  ; FMin(a,b)
  %5705 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5706 = call float @dx.op.binary.f32(i32 35, float %5704, float %5705)  ; FMax(a,b)
  %5707 = fadd fast float %5702, 0xBFE4CCCCC0000000
  %5708 = fmul fast float %5707, 0x4006DB6DA0000000
  %5709 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5710 = fmul fast float %5709, 2.000000e+00
  %5711 = fsub fast float 3.000000e+00, %5710
  %5712 = bitcast float %5620 to i32
  %5713 = ashr i32 %5712, 1
  %5714 = add nsw i32 %5713, 532487669
  %5715 = bitcast i32 %5714 to float
  %5716 = fsub fast float 1.000000e+00, %5715
  %5717 = bitcast float %5716 to i32
  %5718 = sub nsw i32 2129859010, %5717
  %5719 = bitcast i32 %5718 to float
  %5720 = fmul fast float %5719, 2.000000e+00
  %5721 = bitcast float %5621 to i32
  %5722 = ashr i32 %5721, 1
  %5723 = add nsw i32 %5722, 532487669
  %5724 = bitcast i32 %5723 to float
  %5725 = fsub fast float 1.000000e+00, %5724
  %5726 = bitcast float %5725 to i32
  %5727 = sub nsw i32 2129859010, %5726
  %5728 = bitcast i32 %5727 to float
  %5729 = fmul fast float %5728, 2.000000e+00
  %5730 = bitcast float %5622 to i32
  %5731 = ashr i32 %5730, 1
  %5732 = add nsw i32 %5731, 532487669
  %5733 = bitcast i32 %5732 to float
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = bitcast float %5734 to i32
  %5736 = sub nsw i32 2129859010, %5735
  %5737 = bitcast i32 %5736 to float
  %5738 = fmul fast float %5737, 2.000000e+00
  %5739 = fsub fast float 0x4002A9FBE0000000, %5720
  %5740 = fadd fast float %5720, 0x3FD54FDF00000000
  %5741 = bitcast float %5740 to i32
  %5742 = sub nsw i32 2129859010, %5741
  %5743 = bitcast i32 %5742 to float
  %5744 = fmul fast float %5743, %5739
  %5745 = fmul fast float %5744, %5744
  %5746 = fsub fast float 0x4002A9FBE0000000, %5729
  %5747 = fadd fast float %5729, 0x3FD54FDF00000000
  %5748 = bitcast float %5747 to i32
  %5749 = sub nsw i32 2129859010, %5748
  %5750 = bitcast i32 %5749 to float
  %5751 = fmul fast float %5750, %5746
  %5752 = fmul fast float %5751, %5751
  %5753 = fsub fast float 0x4002A9FBE0000000, %5738
  %5754 = fadd fast float %5738, 0x3FD54FDF00000000
  %5755 = bitcast float %5754 to i32
  %5756 = sub nsw i32 2129859010, %5755
  %5757 = bitcast i32 %5756 to float
  %5758 = fmul fast float %5757, %5753
  %5759 = fmul fast float %5758, %5758
  %5760 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5745)  ; FMax(a,b)
  %5761 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5752)  ; FMax(a,b)
  %5762 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5759)  ; FMax(a,b)
  %5763 = fsub fast float 1.000000e+00, %5648
  %5764 = fadd fast float %5763, %5664
  %5765 = call float @dx.op.unary.f32(i32 7, float %5764)  ; Saturate(value)
  %5766 = fsub fast float 1.000000e+00, %4853
  %5767 = fmul fast float %5706, %5766
  %5768 = fmul fast float %5709, %5709
  %5769 = fmul fast float %5768, %5767
  %5770 = fmul fast float %5769, %5711
  %5771 = fmul fast float %5766, 0xBFE99999A0000000
  %5772 = fmul fast float %5771, %5651
  %5773 = fmul fast float %5772, %5668
  %5774 = fadd fast float %5773, 1.000000e+00
  %5775 = fadd fast float %5629, -1.000000e+00
  %5776 = fmul fast float %5774, %5775
  %5777 = fadd fast float %5776, 1.000000e+00
  %5778 = fsub fast float %5760, %5620
  %5779 = fsub fast float %5761, %5621
  %5780 = fsub fast float %5762, %5622
  %5781 = fmul fast float %5770, %5778
  %5782 = fmul fast float %5770, %5779
  %5783 = fmul fast float %5770, %5780
  %5784 = fadd fast float %5781, %5620
  %5785 = fadd fast float %5782, %5621
  %5786 = fadd fast float %5783, %5622
  %5787 = fsub fast float %118, %5623
  %5788 = fsub fast float %119, %5624
  %5789 = fsub fast float %120, %5625
  %5790 = fmul fast float %5770, %5787
  %5791 = fmul fast float %5770, %5788
  %5792 = fmul fast float %5770, %5789
  %5793 = fadd fast float %5790, %5623
  %5794 = fadd fast float %5791, %5624
  %5795 = fadd fast float %5792, %5625
  %5796 = fmul fast float %5770, %5765
  %5797 = call float @dx.op.unary.f32(i32 7, float %5777)  ; Saturate(value)
  %5798 = fsub fast float 1.000000e+00, %5797
  %5799 = fmul fast float %5796, %5798
  %5800 = fadd fast float %5799, %5797
  %5801 = fsub fast float 1.000000e+00, %5630
  %5802 = fmul fast float %5770, %5801
  %5803 = fadd fast float %5802, %5630
  %5804 = fcmp fast une float %5035, 0.000000e+00
  %5805 = fcmp fast ogt float %5702, 0x3FE4CCCCC0000000
  %5806 = and i1 %5804, %5805
  br i1 %5806, label %5807, label %5993

; <label>:5807                                    ; preds = %5641
  %5808 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5809 = fadd fast float %5808, %191
  %5810 = extractvalue %dx.types.CBufRet.f32 %5649, 0
  %5811 = fadd fast float %5810, %190
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 3
  %5814 = fadd fast float %5813, 0x3FC0A3D700000000
  %5815 = fmul fast float %5814, 0x3FF6666660000000
  %5816 = fmul fast float %5813, 0x3FF2978D40000000
  %5817 = fmul fast float %5813, 0x3FF5BA5E40000000
  %5818 = fmul fast float %5813, 0x3FF94FDF40000000
  %5819 = call float @dx.op.unary.f32(i32 6, float %5811)  ; FAbs(value)
  %5820 = call float @dx.op.unary.f32(i32 6, float %5809)  ; FAbs(value)
  %5821 = fmul fast float %5819, 0x3F8EB851E0000000
  %5822 = fmul fast float %5820, 0x3F8EB851E0000000
  %5823 = fmul fast float %5035, 4.000000e+00
  %5824 = call float @dx.op.unary.f32(i32 7, float %5823)  ; Saturate(value)
  %5825 = fadd fast float %5821, 2.500000e-01
  %5826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5825, float %5822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.ResRet.f32 %5826, 2
  %5830 = extractvalue %dx.types.ResRet.f32 %5826, 3
  %5831 = fmul fast float %5828, 2.000000e+00
  %5832 = fmul fast float %5829, 2.000000e+00
  %5833 = fadd fast float %5831, -1.000000e+00
  %5834 = fadd fast float %5832, -1.000000e+00
  %5835 = fsub fast float 1.000000e+00, %5824
  %5836 = fmul fast float %5835, 8.000000e+00
  %5837 = call float @dx.op.unary.f32(i32 21, float %5836)  ; Exp(value)
  %5838 = fmul fast float %5830, %5837
  %5839 = fadd fast float %5815, -1.000000e+00
  %5840 = fadd fast float %5839, %5830
  %5841 = fadd fast float %5840, %5838
  %5842 = frem fast float %5841, %5837
  %5843 = fcmp fast ole float %5842, 1.000000e+00
  %5844 = call float @dx.op.unary.f32(i32 22, float %5842)  ; Frc(value)
  %5845 = select i1 %5843, float %5844, float 0.000000e+00
  %5846 = fadd fast float %5827, -1.000000e+00
  %5847 = fadd fast float %5846, %5845
  %5848 = fsub fast float 1.000000e+00, %5845
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5850 = fmul fast float %5849, %5827
  %5851 = fmul fast float %5847, 8.000000e+00
  %5852 = call float @dx.op.binary.f32(i32 35, float %5851, float 0.000000e+00)  ; FMax(a,b)
  %5853 = call float @dx.op.binary.f32(i32 36, float %5852, float 4.000000e+00)  ; FMin(a,b)
  %5854 = fmul fast float %5853, 0x400921FB60000000
  %5855 = call float @dx.op.unary.f32(i32 13, float %5854)  ; Sin(value)
  %5856 = fadd fast float %5845, -1.000000e+00
  %5857 = fmul fast float %5850, %5856
  %5858 = fmul fast float %5857, %5855
  %5859 = fmul fast float %5858, %5833
  %5860 = fmul fast float %5858, %5834
  %5861 = fadd fast float %5823, -1.000000e+00
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = fadd fast float %5821, 0xBFE19999A0000000
  %5864 = fadd fast float %5822, 0x3FD3D70A40000000
  %5865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5863, float %5864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5866 = extractvalue %dx.types.ResRet.f32 %5865, 0
  %5867 = extractvalue %dx.types.ResRet.f32 %5865, 1
  %5868 = extractvalue %dx.types.ResRet.f32 %5865, 2
  %5869 = extractvalue %dx.types.ResRet.f32 %5865, 3
  %5870 = fmul fast float %5867, 2.000000e+00
  %5871 = fmul fast float %5868, 2.000000e+00
  %5872 = fadd fast float %5870, -1.000000e+00
  %5873 = fadd fast float %5871, -1.000000e+00
  %5874 = fsub fast float 1.000000e+00, %5862
  %5875 = fmul fast float %5874, 8.000000e+00
  %5876 = call float @dx.op.unary.f32(i32 21, float %5875)  ; Exp(value)
  %5877 = fmul fast float %5869, %5876
  %5878 = fadd fast float %5816, 0xBFE5B22D00000000
  %5879 = fadd fast float %5878, %5869
  %5880 = fadd fast float %5879, %5877
  %5881 = frem fast float %5880, %5876
  %5882 = fcmp fast ole float %5881, 1.000000e+00
  %5883 = call float @dx.op.unary.f32(i32 22, float %5881)  ; Frc(value)
  %5884 = select i1 %5882, float %5883, float 0.000000e+00
  %5885 = fadd fast float %5866, -1.000000e+00
  %5886 = fadd fast float %5885, %5884
  %5887 = fsub fast float 1.000000e+00, %5884
  %5888 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5889 = fmul fast float %5888, %5866
  %5890 = fmul fast float %5886, 8.000000e+00
  %5891 = call float @dx.op.binary.f32(i32 35, float %5890, float 0.000000e+00)  ; FMax(a,b)
  %5892 = call float @dx.op.binary.f32(i32 36, float %5891, float 4.000000e+00)  ; FMin(a,b)
  %5893 = fmul fast float %5892, 0x400921FB60000000
  %5894 = call float @dx.op.unary.f32(i32 13, float %5893)  ; Sin(value)
  %5895 = fadd fast float %5884, -1.000000e+00
  %5896 = fmul fast float %5889, %5895
  %5897 = fmul fast float %5896, %5894
  %5898 = fmul fast float %5897, %5872
  %5899 = fmul fast float %5897, %5873
  %5900 = fadd fast float %5823, -2.000000e+00
  %5901 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  %5902 = fadd fast float %5821, 0x3FE3333340000000
  %5903 = fadd fast float %5822, 0x3FEB333340000000
  %5904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5902, float %5903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 0
  %5906 = extractvalue %dx.types.ResRet.f32 %5904, 1
  %5907 = extractvalue %dx.types.ResRet.f32 %5904, 2
  %5908 = extractvalue %dx.types.ResRet.f32 %5904, 3
  %5909 = fmul fast float %5906, 2.000000e+00
  %5910 = fmul fast float %5907, 2.000000e+00
  %5911 = fadd fast float %5909, -1.000000e+00
  %5912 = fadd fast float %5910, -1.000000e+00
  %5913 = fsub fast float 1.000000e+00, %5901
  %5914 = fmul fast float %5913, 8.000000e+00
  %5915 = call float @dx.op.unary.f32(i32 21, float %5914)  ; Exp(value)
  %5916 = fmul fast float %5908, %5915
  %5917 = fadd fast float %5817, 0xBFD5E35400000000
  %5918 = fadd fast float %5917, %5908
  %5919 = fadd fast float %5918, %5916
  %5920 = frem fast float %5919, %5915
  %5921 = fcmp fast ole float %5920, 1.000000e+00
  %5922 = call float @dx.op.unary.f32(i32 22, float %5920)  ; Frc(value)
  %5923 = select i1 %5921, float %5922, float 0.000000e+00
  %5924 = fadd fast float %5905, -1.000000e+00
  %5925 = fadd fast float %5924, %5923
  %5926 = fsub fast float 1.000000e+00, %5923
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = fmul fast float %5927, %5905
  %5929 = fmul fast float %5925, 8.000000e+00
  %5930 = call float @dx.op.binary.f32(i32 35, float %5929, float 0.000000e+00)  ; FMax(a,b)
  %5931 = call float @dx.op.binary.f32(i32 36, float %5930, float 4.000000e+00)  ; FMin(a,b)
  %5932 = fmul fast float %5931, 0x400921FB60000000
  %5933 = call float @dx.op.unary.f32(i32 13, float %5932)  ; Sin(value)
  %5934 = fadd fast float %5923, -1.000000e+00
  %5935 = fmul fast float %5928, %5934
  %5936 = fmul fast float %5935, %5933
  %5937 = fmul fast float %5936, %5911
  %5938 = fmul fast float %5936, %5912
  %5939 = fadd fast float %5823, -3.000000e+00
  %5940 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5941 = fadd fast float %5821, 5.000000e-01
  %5942 = fadd fast float %5822, -7.500000e-01
  %5943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %44, float %5941, float %5942, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.ResRet.f32 %5943, 2
  %5947 = extractvalue %dx.types.ResRet.f32 %5943, 3
  %5948 = fmul fast float %5945, 2.000000e+00
  %5949 = fmul fast float %5946, 2.000000e+00
  %5950 = fadd fast float %5948, -1.000000e+00
  %5951 = fadd fast float %5949, -1.000000e+00
  %5952 = fsub fast float 1.000000e+00, %5940
  %5953 = fmul fast float %5952, 8.000000e+00
  %5954 = call float @dx.op.unary.f32(i32 21, float %5953)  ; Exp(value)
  %5955 = fmul fast float %5947, %5954
  %5956 = fadd fast float %5818, 0xBF78938000000000
  %5957 = fadd fast float %5956, %5947
  %5958 = fadd fast float %5957, %5955
  %5959 = frem fast float %5958, %5954
  %5960 = fcmp fast ole float %5959, 1.000000e+00
  %5961 = call float @dx.op.unary.f32(i32 22, float %5959)  ; Frc(value)
  %5962 = select i1 %5960, float %5961, float 0.000000e+00
  %5963 = fadd fast float %5944, -1.000000e+00
  %5964 = fadd fast float %5963, %5962
  %5965 = fsub fast float 1.000000e+00, %5962
  %5966 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5967 = fmul fast float %5966, %5944
  %5968 = fmul fast float %5964, 8.000000e+00
  %5969 = call float @dx.op.binary.f32(i32 35, float %5968, float 0.000000e+00)  ; FMax(a,b)
  %5970 = call float @dx.op.binary.f32(i32 36, float %5969, float 4.000000e+00)  ; FMin(a,b)
  %5971 = fmul fast float %5970, 0x400921FB60000000
  %5972 = call float @dx.op.unary.f32(i32 13, float %5971)  ; Sin(value)
  %5973 = fadd fast float %5962, -1.000000e+00
  %5974 = fmul fast float %5967, %5973
  %5975 = fmul fast float %5974, %5972
  %5976 = fmul fast float %5975, %5950
  %5977 = fmul fast float %5975, %5951
  %5978 = fadd fast float %5898, %5859
  %5979 = fadd fast float %5899, %5860
  %5980 = fadd fast float %5978, %5937
  %5981 = fadd fast float %5979, %5938
  %5982 = fadd fast float %5980, %5976
  %5983 = fadd fast float %5981, %5977
  %5984 = fmul fast float %5702, 0x4006DB6DA0000000
  %5985 = fadd fast float %5984, 0xBFFDB6DB40000000
  %5986 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5987 = fmul fast float %5986, %5651
  %5988 = fmul fast float %5987, %5766
  %5989 = fmul fast float %5988, %5982
  %5990 = fmul fast float %5988, %5983
  %5991 = fadd fast float %5989, %5793
  %5992 = fadd fast float %5990, %5794
  br label %5993

; <label>:5993                                    ; preds = %5807, %5641
  %5994 = phi float [ %5793, %5641 ], [ %5991, %5807 ]
  %5995 = phi float [ %5794, %5641 ], [ %5992, %5807 ]
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5994, float %5995, float %5795, float %5994, float %5995, float %5795)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = call float @dx.op.unary.f32(i32 25, float %5996)  ; Rsqrt(value)
  %5998 = fmul fast float %5997, %5994
  %5999 = fmul fast float %5997, %5995
  %6000 = fmul fast float %5997, %5795
  br label %6001

; <label>:6001                                    ; preds = %5993, %5634
  %6002 = phi float [ %5640, %5634 ], [ %5647, %5993 ]
  %6003 = phi float [ %5639, %5634 ], [ %5645, %5993 ]
  %6004 = phi float [ %5638, %5634 ], [ %5643, %5993 ]
  %6005 = phi float [ %5637, %5634 ], [ %5646, %5993 ]
  %6006 = phi float [ %5636, %5634 ], [ %5644, %5993 ]
  %6007 = phi float [ %5635, %5634 ], [ %5642, %5993 ]
  %6008 = phi float [ %5617, %5634 ], [ %5693, %5993 ]
  %6009 = phi float [ %5618, %5634 ], [ %5694, %5993 ]
  %6010 = phi float [ %5619, %5634 ], [ %5695, %5993 ]
  %6011 = phi float [ %5620, %5634 ], [ %5784, %5993 ]
  %6012 = phi float [ %5621, %5634 ], [ %5785, %5993 ]
  %6013 = phi float [ %5622, %5634 ], [ %5786, %5993 ]
  %6014 = phi float [ %5623, %5634 ], [ %5998, %5993 ]
  %6015 = phi float [ %5624, %5634 ], [ %5999, %5993 ]
  %6016 = phi float [ %5625, %5634 ], [ %6000, %5993 ]
  %6017 = phi float [ %5629, %5634 ], [ %5800, %5993 ]
  %6018 = phi float [ %5630, %5634 ], [ %5803, %5993 ]
  %6019 = select i1 %264, float 0.000000e+00, float %6013
  %6020 = call float @dx.op.dot3.f32(i32 55, float %6014, float %6015, float %6016, float %6004, float %6003, float %6002)  ; Dot3(ax,ay,az,bx,by,bz)
  %6021 = call float @dx.op.unary.f32(i32 7, float %6020)  ; Saturate(value)
  %6022 = call float @dx.op.dot3.f32(i32 55, float %6007, float %6006, float %6005, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = fmul fast float %6022, 2.000000e+00
  %6024 = fmul fast float %6023, %6014
  %6025 = fmul fast float %6023, %6015
  %6026 = fmul fast float %6023, %6016
  %6027 = fsub fast float %6007, %6024
  %6028 = fsub fast float %6006, %6025
  %6029 = fsub fast float %6005, %6026
  %6030 = call float @dx.op.binary.f32(i32 36, float %6018, float 1.000000e+00)  ; FMin(a,b)
  %6031 = fsub fast float 1.000000e+00, %6030
  %6032 = bitcast float %6031 to i32
  %6033 = ashr i32 %6032, 1
  %6034 = add nsw i32 %6033, 532487669
  %6035 = bitcast i32 %6034 to float
  %6036 = fsub fast float 1.000000e+00, %6017
  %6037 = call float @dx.op.binary.f32(i32 35, float %6036, float 0x3F847AE140000000)  ; FMax(a,b)
  %6038 = fmul fast float %6037, %6037
  %6039 = fmul fast float %6038, %6038
  %6040 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %45, float %6035, float %6039, float %6040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6042 = extractvalue %dx.types.ResRet.f32 %6041, 0
  %6043 = fsub fast float 1.000000e+00, %6018
  %6044 = bitcast float %6043 to i32
  %6045 = sub nsw i32 2129859010, %6044
  %6046 = bitcast i32 %6045 to float
  %6047 = call float @dx.op.dot3.f32(i32 55, float %78, float %74, float %70, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = fmul fast float %6047, 0x3FD20DD760000000
  %6049 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %78)  ; FMax(a,b)
  %6050 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = fcmp fast oeq float %6050, 0.000000e+00
  %6052 = fcmp fast oeq float %6049, 0.000000e+00
  %6053 = or i1 %6052, %6051
  br i1 %6053, label %6083, label %6054

; <label>:6054                                    ; preds = %6001
  %6055 = fsub fast float -0.000000e+00, %81
  %6056 = fsub fast float -0.000000e+00, %79
  %6057 = call float @dx.op.unary.f32(i32 24, float %6050)  ; Sqrt(value)
  %6058 = fdiv fast float %6057, %6049
  %6059 = fcmp fast ogt float %6058, 0x3FFB6F8900000000
  %6060 = select i1 %6059, float 0x3FFB6F8900000000, float %6058
  %6061 = fmul fast float %6060, 0x3FE8A23460000000
  %6062 = call float @dx.op.unary.f32(i32 7, float %6061)  ; Saturate(value)
  %6063 = call float @dx.op.binary.f32(i32 35, float %6060, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6064 = fmul fast float %6062, %6049
  %6065 = fmul fast float %6063, 0x3FF279A740000000
  %6066 = fadd fast float %6065, -1.000000e+00
  %6067 = call float @dx.op.dot3.f32(i32 55, float %6055, float %6056, float %80, float %6055, float %6056, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = call float @dx.op.unary.f32(i32 25, float %6067)  ; Rsqrt(value)
  %6069 = fmul fast float %6068, %6055
  %6070 = fmul fast float %6068, %6056
  %6071 = fmul fast float %6068, %80
  %6072 = fmul fast float %6066, %6066
  %6073 = fsub fast float 1.000000e+00, %6072
  %6074 = fmul fast float %6063, 0x40005F8BE0000000
  %6075 = fsub fast float 0x400C5BF8A0000000, %6074
  %6076 = fdiv fast float %6064, %6075
  %6077 = fmul fast float %6076, 0x3FEE31C3C0000000
  %6078 = fmul fast float %6077, %6073
  %6079 = fmul fast float %6063, 0x3FDACB7480000000
  %6080 = fadd fast float %6079, 0xBFD7347680000000
  %6081 = fmul fast float %6080, %6076
  %6082 = fmul fast float %6081, %6073
  br label %6083

; <label>:6083                                    ; preds = %6054, %6001
  %6084 = phi float [ %6069, %6054 ], [ 0.000000e+00, %6001 ]
  %6085 = phi float [ %6070, %6054 ], [ 0.000000e+00, %6001 ]
  %6086 = phi float [ %6071, %6054 ], [ 0.000000e+00, %6001 ]
  %6087 = phi float [ %6078, %6054 ], [ 0.000000e+00, %6001 ]
  %6088 = phi float [ %6082, %6054 ], [ 0.000000e+00, %6001 ]
  %6089 = call float @dx.op.dot3.f32(i32 55, float %6084, float %6085, float %6086, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6090 = fmul fast float %6089, 0x3FDF454380000000
  %6091 = fmul fast float %6089, %6089
  %6092 = fmul fast float %6091, 0x3FEE471020000000
  %6093 = fadd fast float %6092, 0xBFD42F6020000000
  %6094 = fmul fast float %6049, 0x3FD20DD760000000
  %6095 = fmul fast float %6093, %6088
  %6096 = fadd fast float %6095, %6094
  %6097 = fmul fast float %6090, %6087
  %6098 = fadd fast float %6096, %6097
  %6099 = fsub fast float %6096, %6097
  %6100 = call float @dx.op.dot3.f32(i32 55, float %6084, float %6085, float %6086, float %6027, float %6028, float %6029)  ; Dot3(ax,ay,az,bx,by,bz)
  %6101 = fmul fast float %6100, 0x3FDF454380000000
  %6102 = fmul fast float %6100, %6100
  %6103 = fmul fast float %6102, 0x3FEE471020000000
  %6104 = fadd fast float %6103, 0xBFD42F6020000000
  %6105 = call float @dx.op.dot3.f32(i32 55, float %6049, float %6087, float %6088, float 0x3FD20DD760000000, float %6101, float %6104)  ; Dot3(ax,ay,az,bx,by,bz)
  %6106 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %6107 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %6108 = fcmp fast oeq float %6107, 0.000000e+00
  %6109 = fcmp fast oeq float %6106, 0.000000e+00
  %6110 = or i1 %6109, %6108
  br i1 %6110, label %6140, label %6111

; <label>:6111                                    ; preds = %6083
  %6112 = fsub fast float -0.000000e+00, %77
  %6113 = fsub fast float -0.000000e+00, %75
  %6114 = call float @dx.op.unary.f32(i32 24, float %6107)  ; Sqrt(value)
  %6115 = fdiv fast float %6114, %6106
  %6116 = fcmp fast ogt float %6115, 0x3FFB6F8900000000
  %6117 = select i1 %6116, float 0x3FFB6F8900000000, float %6115
  %6118 = fmul fast float %6117, 0x3FE8A23460000000
  %6119 = call float @dx.op.unary.f32(i32 7, float %6118)  ; Saturate(value)
  %6120 = call float @dx.op.binary.f32(i32 35, float %6117, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6121 = fmul fast float %6119, %6106
  %6122 = fmul fast float %6120, 0x3FF279A740000000
  %6123 = fadd fast float %6122, -1.000000e+00
  %6124 = call float @dx.op.dot3.f32(i32 55, float %6112, float %6113, float %76, float %6112, float %6113, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %6125 = call float @dx.op.unary.f32(i32 25, float %6124)  ; Rsqrt(value)
  %6126 = fmul fast float %6125, %6112
  %6127 = fmul fast float %6125, %6113
  %6128 = fmul fast float %6125, %76
  %6129 = fmul fast float %6123, %6123
  %6130 = fsub fast float 1.000000e+00, %6129
  %6131 = fmul fast float %6120, 0x40005F8BE0000000
  %6132 = fsub fast float 0x400C5BF8A0000000, %6131
  %6133 = fdiv fast float %6121, %6132
  %6134 = fmul fast float %6133, 0x3FEE31C3C0000000
  %6135 = fmul fast float %6134, %6130
  %6136 = fmul fast float %6120, 0x3FDACB7480000000
  %6137 = fadd fast float %6136, 0xBFD7347680000000
  %6138 = fmul fast float %6137, %6133
  %6139 = fmul fast float %6138, %6130
  br label %6140

; <label>:6140                                    ; preds = %6111, %6083
  %6141 = phi float [ %6126, %6111 ], [ 0.000000e+00, %6083 ]
  %6142 = phi float [ %6127, %6111 ], [ 0.000000e+00, %6083 ]
  %6143 = phi float [ %6128, %6111 ], [ 0.000000e+00, %6083 ]
  %6144 = phi float [ %6135, %6111 ], [ 0.000000e+00, %6083 ]
  %6145 = phi float [ %6139, %6111 ], [ 0.000000e+00, %6083 ]
  %6146 = call float @dx.op.dot3.f32(i32 55, float %6141, float %6142, float %6143, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6147 = fmul fast float %6146, 0x3FDF454380000000
  %6148 = fmul fast float %6146, %6146
  %6149 = fmul fast float %6148, 0x3FEE471020000000
  %6150 = fadd fast float %6149, 0xBFD42F6020000000
  %6151 = fmul fast float %6106, 0x3FD20DD760000000
  %6152 = fmul fast float %6150, %6145
  %6153 = fadd fast float %6152, %6151
  %6154 = fmul fast float %6147, %6144
  %6155 = fadd fast float %6153, %6154
  %6156 = fsub fast float %6153, %6154
  %6157 = call float @dx.op.dot3.f32(i32 55, float %6141, float %6142, float %6143, float %6027, float %6028, float %6029)  ; Dot3(ax,ay,az,bx,by,bz)
  %6158 = fmul fast float %6157, 0x3FDF454380000000
  %6159 = fmul fast float %6157, %6157
  %6160 = fmul fast float %6159, 0x3FEE471020000000
  %6161 = fadd fast float %6160, 0xBFD42F6020000000
  %6162 = call float @dx.op.dot3.f32(i32 55, float %6106, float %6144, float %6145, float 0x3FD20DD760000000, float %6158, float %6161)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %6164 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = fcmp fast oeq float %6164, 0.000000e+00
  %6166 = fcmp fast oeq float %6163, 0.000000e+00
  %6167 = or i1 %6166, %6165
  br i1 %6167, label %6197, label %6168

; <label>:6168                                    ; preds = %6140
  %6169 = fsub fast float -0.000000e+00, %73
  %6170 = fsub fast float -0.000000e+00, %71
  %6171 = call float @dx.op.unary.f32(i32 24, float %6164)  ; Sqrt(value)
  %6172 = fdiv fast float %6171, %6163
  %6173 = fcmp fast ogt float %6172, 0x3FFB6F8900000000
  %6174 = select i1 %6173, float 0x3FFB6F8900000000, float %6172
  %6175 = fmul fast float %6174, 0x3FE8A23460000000
  %6176 = call float @dx.op.unary.f32(i32 7, float %6175)  ; Saturate(value)
  %6177 = call float @dx.op.binary.f32(i32 35, float %6174, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6178 = fmul fast float %6176, %6163
  %6179 = fmul fast float %6177, 0x3FF279A740000000
  %6180 = fadd fast float %6179, -1.000000e+00
  %6181 = call float @dx.op.dot3.f32(i32 55, float %6169, float %6170, float %72, float %6169, float %6170, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %6182 = call float @dx.op.unary.f32(i32 25, float %6181)  ; Rsqrt(value)
  %6183 = fmul fast float %6182, %6169
  %6184 = fmul fast float %6182, %6170
  %6185 = fmul fast float %6182, %72
  %6186 = fmul fast float %6180, %6180
  %6187 = fsub fast float 1.000000e+00, %6186
  %6188 = fmul fast float %6177, 0x40005F8BE0000000
  %6189 = fsub fast float 0x400C5BF8A0000000, %6188
  %6190 = fdiv fast float %6178, %6189
  %6191 = fmul fast float %6190, 0x3FEE31C3C0000000
  %6192 = fmul fast float %6191, %6187
  %6193 = fmul fast float %6177, 0x3FDACB7480000000
  %6194 = fadd fast float %6193, 0xBFD7347680000000
  %6195 = fmul fast float %6194, %6190
  %6196 = fmul fast float %6195, %6187
  br label %6197

; <label>:6197                                    ; preds = %6168, %6140
  %6198 = phi float [ %6183, %6168 ], [ 0.000000e+00, %6140 ]
  %6199 = phi float [ %6184, %6168 ], [ 0.000000e+00, %6140 ]
  %6200 = phi float [ %6185, %6168 ], [ 0.000000e+00, %6140 ]
  %6201 = phi float [ %6192, %6168 ], [ 0.000000e+00, %6140 ]
  %6202 = phi float [ %6196, %6168 ], [ 0.000000e+00, %6140 ]
  %6203 = call float @dx.op.dot3.f32(i32 55, float %6198, float %6199, float %6200, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = fmul fast float %6203, 0x3FDF454380000000
  %6205 = fmul fast float %6203, %6203
  %6206 = fmul fast float %6205, 0x3FEE471020000000
  %6207 = fadd fast float %6206, 0xBFD42F6020000000
  %6208 = fmul fast float %6163, 0x3FD20DD760000000
  %6209 = fmul fast float %6207, %6202
  %6210 = fadd fast float %6209, %6208
  %6211 = fmul fast float %6204, %6201
  %6212 = fadd fast float %6210, %6211
  %6213 = fsub fast float %6210, %6211
  %6214 = call float @dx.op.dot3.f32(i32 55, float %6198, float %6199, float %6200, float %6027, float %6028, float %6029)  ; Dot3(ax,ay,az,bx,by,bz)
  %6215 = fmul fast float %6214, 0x3FDF454380000000
  %6216 = fmul fast float %6214, %6214
  %6217 = fmul fast float %6216, 0x3FEE471020000000
  %6218 = fadd fast float %6217, 0xBFD42F6020000000
  %6219 = call float @dx.op.dot3.f32(i32 55, float %6163, float %6201, float %6202, float 0x3FD20DD760000000, float %6215, float %6218)  ; Dot3(ax,ay,az,bx,by,bz)
  %6220 = call float @dx.op.binary.f32(i32 35, float %6098, float 0.000000e+00)  ; FMax(a,b)
  %6221 = call float @dx.op.binary.f32(i32 35, float %6155, float 0.000000e+00)  ; FMax(a,b)
  %6222 = call float @dx.op.binary.f32(i32 35, float %6212, float 0.000000e+00)  ; FMax(a,b)
  %6223 = call float @dx.op.binary.f32(i32 35, float %6099, float 0.000000e+00)  ; FMax(a,b)
  %6224 = call float @dx.op.binary.f32(i32 35, float %6156, float 0.000000e+00)  ; FMax(a,b)
  %6225 = call float @dx.op.binary.f32(i32 35, float %6213, float 0.000000e+00)  ; FMax(a,b)
  %6226 = call float @dx.op.binary.f32(i32 35, float %6105, float 0.000000e+00)  ; FMax(a,b)
  %6227 = call float @dx.op.binary.f32(i32 35, float %6162, float 0.000000e+00)  ; FMax(a,b)
  %6228 = call float @dx.op.binary.f32(i32 35, float %6219, float 0.000000e+00)  ; FMax(a,b)
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = call float @dx.op.binary.f32(i32 36, float %6008, float %6230)  ; FMin(a,b)
  %6232 = fmul fast float %6231, %6031
  %6233 = fsub fast float 1.000000e+00, %6232
  %6234 = bitcast float %6233 to i32
  %6235 = sub nsw i32 2129859010, %6234
  %6236 = bitcast i32 %6235 to float
  %6237 = call float @dx.op.binary.f32(i32 36, float %6009, float %6230)  ; FMin(a,b)
  %6238 = fmul fast float %6237, %6031
  %6239 = fsub fast float 1.000000e+00, %6238
  %6240 = bitcast float %6239 to i32
  %6241 = sub nsw i32 2129859010, %6240
  %6242 = bitcast i32 %6241 to float
  %6243 = call float @dx.op.binary.f32(i32 36, float %6010, float %6230)  ; FMin(a,b)
  %6244 = fmul fast float %6243, %6031
  %6245 = fsub fast float 1.000000e+00, %6244
  %6246 = bitcast float %6245 to i32
  %6247 = sub nsw i32 2129859010, %6246
  %6248 = bitcast i32 %6247 to float
  %6249 = fmul fast float %6220, %6030
  %6250 = fmul fast float %6249, %6236
  %6251 = fmul fast float %6221, %6030
  %6252 = fmul fast float %6251, %6242
  %6253 = fmul fast float %6222, %6030
  %6254 = fmul fast float %6253, %6248
  %6255 = call float @dx.op.binary.f32(i32 36, float %6011, float %6230)  ; FMin(a,b)
  %6256 = fmul fast float %6255, %6031
  %6257 = fsub fast float 1.000000e+00, %6256
  %6258 = bitcast float %6257 to i32
  %6259 = sub nsw i32 2129859010, %6258
  %6260 = bitcast i32 %6259 to float
  %6261 = call float @dx.op.binary.f32(i32 36, float %6012, float %6230)  ; FMin(a,b)
  %6262 = fmul fast float %6261, %6031
  %6263 = fsub fast float 1.000000e+00, %6262
  %6264 = bitcast float %6263 to i32
  %6265 = sub nsw i32 2129859010, %6264
  %6266 = bitcast i32 %6265 to float
  %6267 = call float @dx.op.binary.f32(i32 36, float %6019, float %6230)  ; FMin(a,b)
  %6268 = fmul fast float %6267, %6031
  %6269 = fsub fast float 1.000000e+00, %6268
  %6270 = bitcast float %6269 to i32
  %6271 = sub nsw i32 2129859010, %6270
  %6272 = bitcast i32 %6271 to float
  %6273 = fmul fast float %6226, %6030
  %6274 = fmul fast float %6273, %6260
  %6275 = fmul fast float %6227, %6030
  %6276 = fmul fast float %6275, %6266
  %6277 = fmul fast float %6228, %6030
  %6278 = fmul fast float %6277, %6272
  %6279 = call float @dx.op.dot3.f32(i32 55, float %6250, float %6252, float %6254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6280 = select i1 %264, float 0.000000e+00, float %6250
  %6281 = select i1 %264, float %6279, float %6252
  %6282 = select i1 %264, float 0.000000e+00, float %6254
  %6283 = call float @dx.op.dot3.f32(i32 55, float %6223, float %6224, float %6225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6284 = select i1 %264, float 0.000000e+00, float %6223
  %6285 = select i1 %264, float %6283, float %6224
  %6286 = select i1 %264, float 0.000000e+00, float %6225
  %6287 = call float @dx.op.dot3.f32(i32 55, float %6274, float %6276, float %6278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6288 = select i1 %264, float 0.000000e+00, float %6274
  %6289 = select i1 %264, float %6287, float %6276
  %6290 = select i1 %264, float 0.000000e+00, float %6278
  %6291 = fmul fast float %4005, %4005
  %6292 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6293 = fmul fast float %6021, 9.843750e-01
  %6294 = fmul fast float %6017, 9.843750e-01
  %6295 = fadd fast float %6293, 7.812500e-03
  %6296 = fadd fast float %6294, 7.812500e-03
  %6297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %6295, float %6296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6298 = extractvalue %dx.types.ResRet.f32 %6297, 0
  %6299 = extractvalue %dx.types.ResRet.f32 %6297, 1
  %6300 = extractvalue %dx.types.ResRet.f32 %6297, 2
  %6301 = extractvalue %dx.types.ResRet.f32 %6297, 3
  %6302 = fsub fast float 1.000000e+00, %6292
  %6303 = fsub fast float %6300, %6298
  %6304 = fsub fast float %6301, %6299
  %6305 = fmul fast float %6303, %6302
  %6306 = fmul fast float %6304, %6302
  %6307 = fadd fast float %6305, %6298
  %6308 = fadd fast float %6306, %6299
  %6309 = fmul fast float %6307, %6011
  %6310 = fmul fast float %6307, %6012
  %6311 = fmul fast float %6307, %6019
  %6312 = fadd fast float %6309, %6308
  %6313 = fadd fast float %6310, %6308
  %6314 = fadd fast float %6311, %6308
  %6315 = fcmp fast ogt float %4701, 0.000000e+00
  br i1 %6315, label %6316, label %6342

; <label>:6316                                    ; preds = %6197
  %6317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4701, float %6021, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6318 = extractvalue %dx.types.ResRet.f32 %6317, 0
  %6319 = extractvalue %dx.types.ResRet.f32 %6317, 1
  %6320 = extractvalue %dx.types.ResRet.f32 %6317, 2
  %6321 = fadd fast float %6318, -5.000000e-01
  %6322 = fadd fast float %6319, -5.000000e-01
  %6323 = fadd fast float %6320, -5.000000e-01
  %6324 = fsub fast float 1.000000e+00, %6011
  %6325 = fsub fast float 1.000000e+00, %6012
  %6326 = fsub fast float 1.000000e+00, %6019
  %6327 = fmul fast float %6011, 4.000000e+00
  %6328 = fmul fast float %6327, %6324
  %6329 = fmul fast float %6328, %6321
  %6330 = fmul fast float %6012, 4.000000e+00
  %6331 = fmul fast float %6330, %6325
  %6332 = fmul fast float %6331, %6322
  %6333 = fmul fast float %6019, 4.000000e+00
  %6334 = fmul fast float %6333, %6326
  %6335 = fmul fast float %6334, %6323
  %6336 = fadd fast float %6329, %6312
  %6337 = fadd fast float %6332, %6313
  %6338 = fadd fast float %6335, %6314
  %6339 = call float @dx.op.unary.f32(i32 7, float %6336)  ; Saturate(value)
  %6340 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  %6341 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  br label %6342

; <label>:6342                                    ; preds = %6316, %6197
  %6343 = phi float [ %6339, %6316 ], [ %6312, %6197 ]
  %6344 = phi float [ %6340, %6316 ], [ %6313, %6197 ]
  %6345 = phi float [ %6341, %6316 ], [ %6314, %6197 ]
  %6346 = call float @dx.op.binary.f32(i32 35, float %6344, float %6345)  ; FMax(a,b)
  %6347 = call float @dx.op.binary.f32(i32 35, float %6343, float %6346)  ; FMax(a,b)
  %6348 = fsub fast float 1.000000e+00, %6347
  %6349 = fmul fast float %6347, %6017
  %6350 = fadd fast float %6349, %6017
  %6351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6352 = extractvalue %dx.types.CBufRet.f32 %6351, 2
  %6353 = extractvalue %dx.types.CBufRet.f32 %6351, 3
  %6354 = fmul fast float %6350, %6352
  %6355 = fadd fast float %6354, %6353
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = fsub fast float 1.000000e+00, %6042
  %6358 = fadd fast float %6357, %6356
  %6359 = call float @dx.op.unary.f32(i32 7, float %6358)  ; Saturate(value)
  %6360 = fcmp fast olt float %6359, 1.000000e+00
  br i1 %6360, label %6361, label %6809

; <label>:6361                                    ; preds = %6342
  %6362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6363 = extractvalue %dx.types.CBufRet.f32 %6362, 2
  %6364 = extractvalue %dx.types.CBufRet.f32 %6362, 3
  %6365 = fmul fast float %6363, %111
  %6366 = fmul fast float %6364, %112
  %6367 = fptoui float %6365 to i32
  %6368 = fptoui float %6366 to i32
  %6369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6370 = extractvalue %dx.types.CBufRet.f32 %6369, 0
  %6371 = extractvalue %dx.types.CBufRet.f32 %6369, 2
  %6372 = extractvalue %dx.types.CBufRet.f32 %6369, 3
  %6373 = fadd fast float %98, -4.000000e+00
  %6374 = call float @dx.op.binary.f32(i32 35, float %6373, float 0.000000e+00)  ; FMax(a,b)
  %6375 = fadd fast float %6374, %6370
  %6376 = fmul fast float %6375, %6371
  %6377 = call float @dx.op.unary.f32(i32 23, float %6376)  ; Log(value)
  %6378 = fmul fast float %6377, %6372
  %6379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6380 = extractvalue %dx.types.CBufRet.f32 %6379, 2
  %6381 = fmul fast float %6378, %6380
  %6382 = call float @dx.op.unary.f32(i32 7, float %6381)  ; Saturate(value)
  %6383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6384 = extractvalue %dx.types.CBufRet.i32 %6383, 1
  %6385 = add i32 %6384, -1
  %6386 = uitofp i32 %6384 to float
  %6387 = fmul fast float %6386, %6382
  %6388 = fptoui float %6387 to i32
  %6389 = call i32 @dx.op.binary.i32(i32 40, i32 %6388, i32 %6385)  ; UMin(a,b)
  %6390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6391 = extractvalue %dx.types.CBufRet.i32 %6390, 2
  %6392 = extractvalue %dx.types.CBufRet.i32 %6390, 3
  %6393 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6368, i32 %6391, i32 %6367)  ; UMad(a,b,c)
  %6394 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6389, i32 %6392, i32 %6393)  ; UMad(a,b,c)
  %6395 = call float @dx.op.binary.f32(i32 35, float %98, float 0.000000e+00)  ; FMax(a,b)
  %6396 = fptoui float %6395 to i32
  %6397 = lshr i32 %6396, 5
  %6398 = call i32 @dx.op.binary.i32(i32 40, i32 %6397, i32 8191)  ; UMin(a,b)
  br i1 false, label %6399, label %6406

; <label>:6399                                    ; preds = %6361
  %6400 = fadd fast float 0.000000e+00, %6029
  %6401 = call float @dx.op.dot3.f32(i32 55, float %6027, float %6028, float %6400, float %6027, float %6028, float %6400)  ; Dot3(ax,ay,az,bx,by,bz)
  %6402 = call float @dx.op.unary.f32(i32 25, float %6401)  ; Rsqrt(value)
  %6403 = fmul fast float %6402, %6027
  %6404 = fmul fast float %6402, %6028
  %6405 = fmul fast float %6400, %6402
  br label %6406

; <label>:6406                                    ; preds = %6399, %6361
  %6407 = phi float [ %6403, %6399 ], [ %6027, %6361 ]
  %6408 = phi float [ %6404, %6399 ], [ %6028, %6361 ]
  %6409 = phi float [ %6405, %6399 ], [ %6029, %6361 ]
  %6410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.i32 %6410, 2
  %6412 = add nsw i32 %6411, -1
  %6413 = call i32 @dx.op.binary.i32(i32 37, i32 %6412, i32 0)  ; IMax(a,b)
  %6414 = shl i32 %6398, 2
  %6415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6414, i32 undef)  ; BufferLoad(srv,index,wot)
  %6416 = extractvalue %dx.types.ResRet.i32 %6415, 0
  %6417 = lshr i32 %6416, 16
  %6418 = and i32 %6416, 65535
  %6419 = lshr i32 %6416, 21
  %6420 = lshr i32 %6418, 5
  %6421 = call i32 @dx.op.binary.i32(i32 40, i32 %6420, i32 %6413)  ; UMin(a,b)
  %6422 = icmp ugt i32 %6419, %6421
  br i1 %6422, label %6785, label %6423

; <label>:6423                                    ; preds = %6406
  br label %6424

; <label>:6424                                    ; preds = %6777, %6423
  %6425 = phi float [ %6778, %6777 ], [ 0.000000e+00, %6423 ]
  %6426 = phi float [ %6779, %6777 ], [ 0.000000e+00, %6423 ]
  %6427 = phi float [ %6780, %6777 ], [ 0.000000e+00, %6423 ]
  %6428 = phi float [ %6781, %6777 ], [ 1.000000e+00, %6423 ]
  %6429 = phi i32 [ %6782, %6777 ], [ %6419, %6423 ]
  %6430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6431 = extractvalue %dx.types.CBufRet.i32 %6430, 2
  %6432 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6394, i32 %6431, i32 %6429)  ; UMad(a,b,c)
  %6433 = shl i32 %6432, 2
  %6434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6433, i32 undef)  ; BufferLoad(srv,index,wot)
  %6435 = extractvalue %dx.types.ResRet.i32 %6434, 0
  %6436 = shl i32 %6429, 5
  %6437 = sub nsw i32 %6417, %6436
  %6438 = call i32 @dx.op.binary.i32(i32 37, i32 %6437, i32 0)  ; IMax(a,b)
  %6439 = call i32 @dx.op.binary.i32(i32 38, i32 %6438, i32 31)  ; IMin(a,b)
  %6440 = sub nsw i32 1, %6417
  %6441 = add nsw i32 %6440, %6418
  %6442 = call i32 @dx.op.binary.i32(i32 37, i32 %6441, i32 0)  ; IMax(a,b)
  %6443 = call i32 @dx.op.binary.i32(i32 38, i32 %6442, i32 32)  ; IMin(a,b)
  %6444 = and i32 %6443, 31
  %6445 = shl i32 -1, %6444
  %6446 = xor i32 %6445, -1
  %6447 = and i32 %6439, 31
  %6448 = shl i32 %6446, %6447
  %6449 = icmp eq i32 %6443, 32
  %6450 = select i1 %6449, i32 -1, i32 %6448
  %6451 = and i32 %6450, %6435
  %6452 = icmp eq i32 %6451, 0
  br i1 %6452, label %6777, label %6453

; <label>:6453                                    ; preds = %6424
  br label %6454

; <label>:6454                                    ; preds = %6560, %6453
  %6455 = phi float [ %6561, %6560 ], [ %6425, %6453 ]
  %6456 = phi float [ %6562, %6560 ], [ %6426, %6453 ]
  %6457 = phi float [ %6563, %6560 ], [ %6427, %6453 ]
  %6458 = phi float [ %6564, %6560 ], [ %6428, %6453 ]
  %6459 = phi i32 [ %6464, %6560 ], [ %6451, %6453 ]
  %6460 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6459)  ; FirstbitLo(value)
  %6461 = add i32 %6460, %6436
  %6462 = and i32 %6460, 31
  %6463 = shl i32 1, %6462
  %6464 = xor i32 %6463, %6459
  %6465 = mul i32 %6461, 72
  %6466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6465, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.ResRet.f32 %6466, 2
  %6470 = add i32 %6465, 12
  %6471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6470, i32 undef)  ; BufferLoad(srv,index,wot)
  %6472 = extractvalue %dx.types.ResRet.i32 %6471, 0
  %6473 = add i32 %6465, 16
  %6474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6473, i32 undef)  ; BufferLoad(srv,index,wot)
  %6475 = extractvalue %dx.types.ResRet.f32 %6474, 0
  %6476 = extractvalue %dx.types.ResRet.f32 %6474, 1
  %6477 = extractvalue %dx.types.ResRet.f32 %6474, 2
  %6478 = add i32 %6465, 28
  %6479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6478, i32 undef)  ; BufferLoad(srv,index,wot)
  %6480 = extractvalue %dx.types.ResRet.f32 %6479, 0
  %6481 = add i32 %6465, 32
  %6482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6481, i32 undef)  ; BufferLoad(srv,index,wot)
  %6483 = extractvalue %dx.types.ResRet.f32 %6482, 0
  %6484 = extractvalue %dx.types.ResRet.f32 %6482, 1
  %6485 = extractvalue %dx.types.ResRet.f32 %6482, 2
  %6486 = extractvalue %dx.types.ResRet.f32 %6482, 3
  %6487 = add i32 %6465, 48
  %6488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6487, i32 undef)  ; BufferLoad(srv,index,wot)
  %6489 = extractvalue %dx.types.ResRet.f32 %6488, 0
  %6490 = extractvalue %dx.types.ResRet.f32 %6488, 1
  %6491 = add i32 %6465, 56
  %6492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6491, i32 undef)  ; BufferLoad(srv,index,wot)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.ResRet.f32 %6492, 1
  %6495 = add i32 %6465, 64
  %6496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6495, i32 undef)  ; BufferLoad(srv,index,wot)
  %6497 = extractvalue %dx.types.ResRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.ResRet.f32 %6496, 1
  %6499 = mul i32 %6461, 60
  %6500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6499, i32 undef)  ; BufferLoad(srv,index,wot)
  %6501 = extractvalue %dx.types.ResRet.f32 %6500, 0
  %6502 = extractvalue %dx.types.ResRet.f32 %6500, 1
  %6503 = extractvalue %dx.types.ResRet.f32 %6500, 2
  %6504 = add i32 %6499, 12
  %6505 = add i32 %6499, 48
  %6506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6505, i32 undef)  ; BufferLoad(srv,index,wot)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 0
  %6508 = extractvalue %dx.types.ResRet.f32 %6506, 1
  %6509 = extractvalue %dx.types.ResRet.f32 %6506, 2
  %6510 = and i32 %6472, 32767
  %6511 = bitcast float %6467 to i32
  %6512 = icmp eq i32 %6511, -1
  %6513 = bitcast float %6468 to i32
  %6514 = and i32 %6472, 32768
  %6515 = icmp ne i32 %6514, 0
  %6516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6517 = extractvalue %dx.types.CBufRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.CBufRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.CBufRet.f32 %6516, 2
  %6520 = fsub fast float %6501, %6517
  %6521 = fsub fast float %6502, %6518
  %6522 = fsub fast float %6503, %6519
  %6523 = fsub fast float %190, %6520
  %6524 = fsub fast float %191, %6521
  %6525 = fsub fast float %192, %6522
  %6526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6504, i32 undef)  ; BufferLoad(srv,index,wot)
  %6527 = extractvalue %dx.types.ResRet.f32 %6526, 0
  %6528 = extractvalue %dx.types.ResRet.f32 %6526, 1
  %6529 = extractvalue %dx.types.ResRet.f32 %6526, 2
  %6530 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6527, float %6528, float %6529)  ; Dot3(ax,ay,az,bx,by,bz)
  %6531 = add i32 %6499, 24
  %6532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6531, i32 undef)  ; BufferLoad(srv,index,wot)
  %6533 = extractvalue %dx.types.ResRet.f32 %6532, 0
  %6534 = extractvalue %dx.types.ResRet.f32 %6532, 1
  %6535 = extractvalue %dx.types.ResRet.f32 %6532, 2
  %6536 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6533, float %6534, float %6535)  ; Dot3(ax,ay,az,bx,by,bz)
  %6537 = add i32 %6499, 36
  %6538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6537, i32 undef)  ; BufferLoad(srv,index,wot)
  %6539 = extractvalue %dx.types.ResRet.f32 %6538, 0
  %6540 = extractvalue %dx.types.ResRet.f32 %6538, 1
  %6541 = extractvalue %dx.types.ResRet.f32 %6538, 2
  %6542 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6539, float %6540, float %6541)  ; Dot3(ax,ay,az,bx,by,bz)
  %6543 = call float @dx.op.unary.f32(i32 6, float %6530)  ; FAbs(value)
  %6544 = call float @dx.op.unary.f32(i32 6, float %6536)  ; FAbs(value)
  %6545 = call float @dx.op.unary.f32(i32 6, float %6542)  ; FAbs(value)
  %6546 = fsub fast float %6507, %6543
  %6547 = fsub fast float %6508, %6544
  %6548 = fsub fast float %6509, %6545
  %6549 = fmul fast float %6546, %6475
  %6550 = fmul fast float %6547, %6476
  %6551 = fmul fast float %6548, %6477
  %6552 = call float @dx.op.binary.f32(i32 36, float %6550, float %6551)  ; FMin(a,b)
  %6553 = call float @dx.op.binary.f32(i32 36, float %6549, float %6552)  ; FMin(a,b)
  %6554 = call float @dx.op.unary.f32(i32 7, float %6553)  ; Saturate(value)
  %6555 = call float @dx.op.binary.f32(i32 36, float %6458, float %6554)  ; FMin(a,b)
  %6556 = uitofp i1 %6515 to float
  %6557 = fsub fast float 1.000000e+00, %6556
  %6558 = fmul fast float %6555, %6557
  %6559 = fcmp fast ogt float %6558, 0.000000e+00
  br i1 %6559, label %6566, label %6560

; <label>:6560                                    ; preds = %6708, %6454
  %6561 = phi float [ %6772, %6708 ], [ %6455, %6454 ]
  %6562 = phi float [ %6773, %6708 ], [ %6456, %6454 ]
  %6563 = phi float [ %6774, %6708 ], [ %6457, %6454 ]
  %6564 = phi float [ %6775, %6708 ], [ %6458, %6454 ]
  %6565 = icmp eq i32 %6459, %6463
  br i1 %6565, label %6776, label %6454

; <label>:6566                                    ; preds = %6454
  br i1 %6512, label %6624, label %6567

; <label>:6567                                    ; preds = %6566
  %6568 = fsub fast float -0.000000e+00, %6527
  %6569 = fsub fast float -0.000000e+00, %6528
  %6570 = fsub fast float -0.000000e+00, %6529
  %6571 = call float @dx.op.dot3.f32(i32 55, float %6407, float %6408, float %6409, float %6568, float %6569, float %6570)  ; Dot3(ax,ay,az,bx,by,bz)
  %6572 = fsub fast float -0.000000e+00, %6571
  %6573 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6568, float %6569, float %6570)  ; Dot3(ax,ay,az,bx,by,bz)
  %6574 = fadd fast float %6573, %6490
  %6575 = fadd fast float %6489, %6573
  %6576 = fsub fast float -0.000000e+00, %6575
  %6577 = fcmp ogt float %6571, -0.000000e+00
  %6578 = select i1 %6577, float %6576, float %6574
  %6579 = call float @dx.op.unary.f32(i32 6, float %6572)  ; FAbs(value)
  %6580 = fdiv fast float 1.000000e+00, %6579
  %6581 = fmul fast float %6578, %6580
  %6582 = call float @dx.op.binary.f32(i32 35, float %6581, float 0.000000e+00)  ; FMax(a,b)
  %6583 = fsub fast float -0.000000e+00, %6533
  %6584 = fsub fast float -0.000000e+00, %6534
  %6585 = fsub fast float -0.000000e+00, %6535
  %6586 = call float @dx.op.dot3.f32(i32 55, float %6407, float %6408, float %6409, float %6583, float %6584, float %6585)  ; Dot3(ax,ay,az,bx,by,bz)
  %6587 = fsub fast float -0.000000e+00, %6586
  %6588 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6583, float %6584, float %6585)  ; Dot3(ax,ay,az,bx,by,bz)
  %6589 = fadd fast float %6588, %6494
  %6590 = fadd fast float %6493, %6588
  %6591 = fsub fast float -0.000000e+00, %6590
  %6592 = fcmp ogt float %6586, -0.000000e+00
  %6593 = select i1 %6592, float %6591, float %6589
  %6594 = call float @dx.op.unary.f32(i32 6, float %6587)  ; FAbs(value)
  %6595 = fdiv fast float 1.000000e+00, %6594
  %6596 = fmul fast float %6593, %6595
  %6597 = call float @dx.op.binary.f32(i32 35, float %6596, float 0.000000e+00)  ; FMax(a,b)
  %6598 = fsub fast float -0.000000e+00, %6539
  %6599 = fsub fast float -0.000000e+00, %6540
  %6600 = fsub fast float -0.000000e+00, %6541
  %6601 = call float @dx.op.dot3.f32(i32 55, float %6407, float %6408, float %6409, float %6598, float %6599, float %6600)  ; Dot3(ax,ay,az,bx,by,bz)
  %6602 = fsub fast float -0.000000e+00, %6601
  %6603 = call float @dx.op.dot3.f32(i32 55, float %6523, float %6524, float %6525, float %6598, float %6599, float %6600)  ; Dot3(ax,ay,az,bx,by,bz)
  %6604 = fadd fast float %6603, %6498
  %6605 = fadd fast float %6497, %6603
  %6606 = fsub fast float -0.000000e+00, %6605
  %6607 = fcmp ogt float %6601, -0.000000e+00
  %6608 = select i1 %6607, float %6606, float %6604
  %6609 = call float @dx.op.unary.f32(i32 6, float %6602)  ; FAbs(value)
  %6610 = fdiv fast float 1.000000e+00, %6609
  %6611 = fmul fast float %6608, %6610
  %6612 = call float @dx.op.binary.f32(i32 35, float %6611, float 0.000000e+00)  ; FMax(a,b)
  %6613 = call float @dx.op.binary.f32(i32 36, float %6597, float %6612)  ; FMin(a,b)
  %6614 = call float @dx.op.binary.f32(i32 36, float %6582, float %6613)  ; FMin(a,b)
  %6615 = fmul fast float %6614, %6407
  %6616 = fmul fast float %6614, %6408
  %6617 = fmul fast float %6614, %6409
  %6618 = fadd fast float %6615, %190
  %6619 = fadd fast float %6616, %191
  %6620 = fadd fast float %6617, %192
  %6621 = fsub fast float %6618, %6467
  %6622 = fsub fast float %6619, %6468
  %6623 = fsub fast float %6620, %6469
  br label %6631

; <label>:6624                                    ; preds = %6566
  %6625 = fmul fast float %6407, 8.096000e+03
  %6626 = fmul fast float %6408, 8.096000e+03
  %6627 = fmul fast float %6409, 8.096000e+03
  %6628 = fadd fast float %6625, %190
  %6629 = fadd fast float %6626, %191
  %6630 = fadd fast float %6627, %192
  br label %6631

; <label>:6631                                    ; preds = %6624, %6567
  %6632 = phi float [ %6407, %6624 ], [ %6621, %6567 ]
  %6633 = phi float [ %6408, %6624 ], [ %6622, %6567 ]
  %6634 = phi float [ %6409, %6624 ], [ %6623, %6567 ]
  %6635 = phi float [ %6628, %6624 ], [ %6618, %6567 ]
  %6636 = phi float [ %6629, %6624 ], [ %6619, %6567 ]
  %6637 = phi float [ %6630, %6624 ], [ %6620, %6567 ]
  %6638 = fcmp fast olt float %6486, 1.000000e+00
  br i1 %6638, label %6639, label %6670, !dx.controlflow.hints !94

; <label>:6639                                    ; preds = %6631
  %6640 = fmul fast float %6634, %6484
  %6641 = fmul fast float %6633, %6485
  %6642 = fsub fast float %6640, %6641
  %6643 = fmul fast float %6632, %6485
  %6644 = fmul fast float %6634, %6483
  %6645 = fsub fast float %6643, %6644
  %6646 = fmul fast float %6633, %6483
  %6647 = fmul fast float %6632, %6484
  %6648 = fsub fast float %6646, %6647
  %6649 = fmul fast float %6642, 2.000000e+00
  %6650 = fmul fast float %6645, 2.000000e+00
  %6651 = fmul fast float %6648, 2.000000e+00
  %6652 = fmul fast float %6649, %6486
  %6653 = fmul fast float %6650, %6486
  %6654 = fmul fast float %6651, %6486
  %6655 = fmul fast float %6651, %6484
  %6656 = fmul fast float %6650, %6485
  %6657 = fmul fast float %6649, %6485
  %6658 = fmul fast float %6651, %6483
  %6659 = fmul fast float %6650, %6483
  %6660 = fmul fast float %6649, %6484
  %6661 = fadd fast float %6655, %6632
  %6662 = fadd fast float %6661, %6652
  %6663 = fsub fast float %6662, %6656
  %6664 = fsub fast float %6633, %6658
  %6665 = fadd fast float %6664, %6653
  %6666 = fadd fast float %6665, %6657
  %6667 = fadd fast float %6654, %6634
  %6668 = fsub fast float %6667, %6660
  %6669 = fadd fast float %6668, %6659
  br label %6670

; <label>:6670                                    ; preds = %6639, %6631
  %6671 = phi float [ %6663, %6639 ], [ %6632, %6631 ]
  %6672 = phi float [ %6666, %6639 ], [ %6633, %6631 ]
  %6673 = phi float [ %6669, %6639 ], [ %6634, %6631 ]
  br i1 %6512, label %6705, label %6674

; <label>:6674                                    ; preds = %6670
  %6675 = fmul fast float %6017, 0x400187C840000000
  %6676 = fadd fast float %6675, 0xC00EFC2120000000
  %6677 = fmul fast float %6676, %6017
  %6678 = fadd fast float %6677, 0x3FE5D16340000000
  %6679 = fmul fast float %6678, %6017
  %6680 = fadd fast float %6679, 1.000000e+00
  %6681 = call float @dx.op.unary.f32(i32 7, float %6680)  ; Saturate(value)
  %6682 = fsub fast float %6635, %190
  %6683 = fsub fast float %6636, %191
  %6684 = fsub fast float %6637, %192
  %6685 = fsub fast float %6635, %6467
  %6686 = fsub fast float %6636, %6468
  %6687 = fsub fast float %6637, %6469
  %6688 = call float @dx.op.dot3.f32(i32 55, float %6682, float %6683, float %6684, float %6682, float %6683, float %6684)  ; Dot3(ax,ay,az,bx,by,bz)
  %6689 = call float @dx.op.dot3.f32(i32 55, float %6685, float %6686, float %6687, float %6685, float %6686, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6690 = fadd fast float %6689, 0x3EE4F8B580000000
  %6691 = fdiv fast float %6688, %6690
  %6692 = bitcast float %6691 to i32
  %6693 = ashr i32 %6692, 1
  %6694 = add nsw i32 %6693, 532487669
  %6695 = bitcast i32 %6694 to float
  %6696 = fmul fast float %6695, %6681
  %6697 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6698 = fmul fast float %6697, 0x4009981AE0000000
  %6699 = fsub fast float 0x40111BBD80000000, %6698
  %6700 = fmul fast float %6699, %6697
  %6701 = fadd fast float %6700, 0xC0009F6020000000
  %6702 = fmul fast float %6701, %6697
  %6703 = fadd fast float %6702, 1.000000e+00
  %6704 = call float @dx.op.unary.f32(i32 7, float %6703)  ; Saturate(value)
  br label %6708

; <label>:6705                                    ; preds = %6670
  %6706 = icmp ne i32 %6513, -1
  %6707 = zext i1 %6706 to i32
  br label %6708

; <label>:6708                                    ; preds = %6705, %6674
  %6709 = phi float [ %6017, %6705 ], [ %6704, %6674 ]
  %6710 = phi i32 [ %6707, %6705 ], [ 0, %6674 ]
  %6711 = fmul float %6709, 5.000000e+00
  %6712 = fsub float 5.000000e+00, %6711
  %6713 = icmp ne i32 %6710, 0
  %6714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6715 = extractvalue %dx.types.CBufRet.f32 %6714, 3
  %6716 = fadd fast float %6715, %6712
  %6717 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6716)  ; FMax(a,b)
  %6718 = call float @dx.op.unary.f32(i32 6, float %6671)  ; FAbs(value)
  %6719 = call float @dx.op.unary.f32(i32 6, float %6672)  ; FAbs(value)
  %6720 = fadd fast float %6719, %6718
  %6721 = call float @dx.op.unary.f32(i32 6, float %6673)  ; FAbs(value)
  %6722 = fadd fast float %6720, %6721
  %6723 = fcmp fast oeq float %6722, 0.000000e+00
  %6724 = fdiv fast float 1.000000e+00, %6722
  %6725 = select i1 %6723, float 1.000000e+00, float %6724
  %6726 = fmul fast float %6725, %6671
  %6727 = fmul fast float %6725, %6672
  %6728 = call float @dx.op.unary.f32(i32 6, float %6727)  ; FAbs(value)
  %6729 = call float @dx.op.unary.f32(i32 6, float %6726)  ; FAbs(value)
  %6730 = fsub fast float 1.000000e+00, %6728
  %6731 = fsub fast float 1.000000e+00, %6729
  %6732 = fcmp fast oge float %6726, 0.000000e+00
  %6733 = fcmp fast oge float %6727, 0.000000e+00
  %6734 = select i1 %6732, float 1.000000e+00, float -1.000000e+00
  %6735 = select i1 %6733, float 1.000000e+00, float -1.000000e+00
  %6736 = fcmp fast ole float %6673, 0.000000e+00
  %6737 = fmul fast float %6734, %6730
  %6738 = fmul fast float %6735, %6731
  %6739 = select i1 %6736, float %6737, float %6726
  %6740 = select i1 %6736, float %6738, float %6727
  %6741 = fmul fast float %6739, 5.000000e-01
  %6742 = fmul fast float %6740, 5.000000e-01
  %6743 = fadd fast float %6741, 5.000000e-01
  %6744 = fadd fast float %6742, 5.000000e-01
  %6745 = uitofp i32 %6510 to float
  %6746 = call float @dx.op.binary.f32(i32 36, float %6717, float 3.000000e+00)  ; FMin(a,b)
  %6747 = fadd fast float %6746, 2.000000e+00
  %6748 = call float @dx.op.unary.f32(i32 21, float %6747)  ; Exp(value)
  %6749 = extractvalue %dx.types.CBufRet.f32 %6714, 1
  %6750 = fmul fast float %6749, %6748
  %6751 = fmul fast float %6750, 2.000000e+00
  %6752 = fsub fast float 1.000000e+00, %6751
  %6753 = fmul fast float %6743, %6752
  %6754 = fmul fast float %6744, %6752
  %6755 = fadd fast float %6753, %6750
  %6756 = fadd fast float %6754, %6750
  %6757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %43, float %6755, float %6756, float %6745, float undef, i32 0, i32 0, i32 undef, float %6717)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6758 = extractvalue %dx.types.ResRet.f32 %6757, 0
  %6759 = extractvalue %dx.types.ResRet.f32 %6757, 1
  %6760 = extractvalue %dx.types.ResRet.f32 %6757, 2
  %6761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6762 = extractvalue %dx.types.CBufRet.f32 %6761, 3
  %6763 = fmul fast float %6762, %6480
  %6764 = call float @dx.op.binary.f32(i32 36, float %6048, float %6763)  ; FMin(a,b)
  %6765 = select i1 %6713, float %6764, float %6763
  %6766 = fmul fast float %6758, %6558
  %6767 = fmul fast float %6766, %6765
  %6768 = fmul fast float %6759, %6558
  %6769 = fmul fast float %6768, %6765
  %6770 = fmul fast float %6760, %6558
  %6771 = fmul fast float %6770, %6765
  %6772 = fadd fast float %6767, %6455
  %6773 = fadd fast float %6769, %6456
  %6774 = fadd fast float %6771, %6457
  %6775 = fsub fast float %6458, %6558
  br label %6560

; <label>:6776                                    ; preds = %6560
  br label %6777

; <label>:6777                                    ; preds = %6776, %6424
  %6778 = phi float [ %6425, %6424 ], [ %6561, %6776 ]
  %6779 = phi float [ %6426, %6424 ], [ %6562, %6776 ]
  %6780 = phi float [ %6427, %6424 ], [ %6563, %6776 ]
  %6781 = phi float [ %6428, %6424 ], [ %6564, %6776 ]
  %6782 = add i32 %6429, 1
  %6783 = icmp ugt i32 %6782, %6421
  br i1 %6783, label %6784, label %6424, !llvm.loop !95

; <label>:6784                                    ; preds = %6777
  br label %6785

; <label>:6785                                    ; preds = %6784, %6406
  %6786 = phi float [ 0.000000e+00, %6406 ], [ %6778, %6784 ]
  %6787 = phi float [ 0.000000e+00, %6406 ], [ %6779, %6784 ]
  %6788 = phi float [ 0.000000e+00, %6406 ], [ %6780, %6784 ]
  %6789 = call float @dx.op.dot3.f32(i32 55, float %6786, float %6787, float %6788, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6790 = select i1 %264, float 0.000000e+00, float %6786
  %6791 = select i1 %264, float %6789, float %6787
  %6792 = select i1 %264, float 0.000000e+00, float %6788
  %6793 = fcmp fast olt float %6359, 0.000000e+00
  %6794 = call float @dx.op.unary.f32(i32 6, float %6359)  ; FAbs(value)
  %6795 = fmul fast float %6794, %6288
  %6796 = fmul fast float %6794, %6289
  %6797 = fmul fast float %6794, %6290
  %6798 = select i1 %6793, float %6288, float %6795
  %6799 = select i1 %6793, float %6289, float %6796
  %6800 = select i1 %6793, float %6290, float %6797
  %6801 = fsub fast float 1.000000e+00, %6794
  %6802 = call float @dx.op.unary.f32(i32 7, float %6801)  ; Saturate(value)
  %6803 = fmul fast float %6802, %6790
  %6804 = fmul fast float %6802, %6791
  %6805 = fmul fast float %6802, %6792
  %6806 = fadd fast float %6798, %6803
  %6807 = fadd fast float %6799, %6804
  %6808 = fadd fast float %6800, %6805
  br label %6809

; <label>:6809                                    ; preds = %6785, %6342
  %6810 = phi float [ %6288, %6342 ], [ %6806, %6785 ]
  %6811 = phi float [ %6289, %6342 ], [ %6807, %6785 ]
  %6812 = phi float [ %6290, %6342 ], [ %6808, %6785 ]
  %6813 = call float @dx.op.dot3.f32(i32 55, float %6008, float %6009, float %6010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6814 = fcmp fast ogt float %6813, 0x3E7FF19E20000000
  %6815 = fdiv fast float 1.000000e+00, %6813
  %6816 = select i1 %6814, float %6815, float 0.000000e+00
  %6817 = fmul fast float %6816, %6008
  %6818 = fmul fast float %6816, %6009
  %6819 = fmul fast float %6816, %6010
  %6820 = fadd fast float %6817, -1.000000e+00
  %6821 = fadd fast float %6818, -1.000000e+00
  %6822 = fadd fast float %6819, -1.000000e+00
  %6823 = fmul fast float %6820, 5.000000e-01
  %6824 = fmul fast float %6821, 5.000000e-01
  %6825 = fmul fast float %6822, 5.000000e-01
  %6826 = fadd fast float %6823, 1.000000e+00
  %6827 = fadd fast float %6824, 1.000000e+00
  %6828 = fadd fast float %6825, 1.000000e+00
  %6829 = call float @dx.op.binary.f32(i32 35, float %6021, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6830 = fdiv fast float %4005, %6829
  %6831 = fcmp fast olt float %4750, 1.270000e+02
  %6832 = fcmp fast olt float %4751, 1.270000e+02
  %6833 = fcmp fast olt float %4752, 1.270000e+02
  %6834 = fmul fast float %4750, 0xBFF7154760000000
  %6835 = fmul fast float %6834, %6830
  %6836 = fmul fast float %4751, 0xBFF7154760000000
  %6837 = fmul fast float %6836, %6830
  %6838 = fmul fast float %4752, 0xBFF7154760000000
  %6839 = fmul fast float %6838, %6830
  %6840 = call float @dx.op.unary.f32(i32 21, float %6835)  ; Exp(value)
  %6841 = call float @dx.op.unary.f32(i32 21, float %6837)  ; Exp(value)
  %6842 = call float @dx.op.unary.f32(i32 21, float %6839)  ; Exp(value)
  %6843 = call float @dx.op.unary.f32(i32 7, float %6840)  ; Saturate(value)
  %6844 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6845 = call float @dx.op.unary.f32(i32 7, float %6842)  ; Saturate(value)
  %6846 = select i1 %6831, float %6843, float 0.000000e+00
  %6847 = select i1 %6832, float %6844, float 0.000000e+00
  %6848 = select i1 %6833, float %6845, float 0.000000e+00
  %6849 = fmul fast float %6846, %6348
  %6850 = fmul fast float %6847, %6348
  %6851 = fmul fast float %6848, %6348
  %6852 = fadd fast float %6849, -1.000000e+00
  %6853 = fadd fast float %6850, -1.000000e+00
  %6854 = fadd fast float %6851, -1.000000e+00
  %6855 = fmul fast float %6852, %4698
  %6856 = fmul fast float %6853, %4698
  %6857 = fmul fast float %6854, %4698
  %6858 = fmul fast float %6810, %6343
  %6859 = fmul fast float %6811, %6344
  %6860 = fmul fast float %6812, %6345
  %6861 = fsub fast float 1.000000e+00, %6021
  %6862 = bitcast float %6861 to i32
  %6863 = sitofp i32 %6862 to float
  %6864 = fmul fast float %6863, 5.000000e+00
  %6865 = fadd fast float %6864, 0xC1EFBF8940000000
  %6866 = fptosi float %6865 to i32
  %6867 = bitcast i32 %6866 to float
  %6868 = fmul fast float %6867, %4702
  %6869 = fmul fast float %6280, %6868
  %6870 = fmul fast float %6869, %6348
  %6871 = fmul fast float %6870, %6826
  %6872 = fmul fast float %6281, %6868
  %6873 = fmul fast float %6872, %6348
  %6874 = fmul fast float %6873, %6827
  %6875 = fmul fast float %6282, %6868
  %6876 = fmul fast float %6875, %6348
  %6877 = fmul fast float %6876, %6828
  %6878 = fadd fast float %6858, %4688
  %6879 = fadd fast float %6878, %6871
  %6880 = fmul fast float %6879, %4698
  %6881 = fadd fast float %6859, %4689
  %6882 = fadd fast float %6881, %6874
  %6883 = fmul fast float %6882, %4698
  %6884 = fadd fast float %6860, %4690
  %6885 = fadd fast float %6884, %6877
  %6886 = fmul fast float %6885, %4698
  %6887 = fmul fast float %6012, 0x4012D0A400000000
  %6888 = fadd fast float %6857, 1.000000e+00
  %6889 = fadd fast float %6856, 1.000000e+00
  %6890 = fadd fast float %6855, 1.000000e+00
  %6891 = fmul fast float %6348, %6282
  %6892 = fmul fast float %6348, %6281
  %6893 = fmul fast float %6348, %6280
  %6894 = fmul fast float %6036, %4698
  %6895 = fsub fast float 1.000000e+00, %6894
  %6896 = call float @dx.op.unary.f32(i32 7, float %6895)  ; Saturate(value)
  %6897 = fsub fast float 1.000000e+00, %6896
  %6898 = fadd fast float %6887, 0x3FDB6377A0000000
  %6899 = fmul fast float %6897, %6898
  %6900 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6901 = fadd fast float %6899, %6900
  %6902 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6903 = call float @dx.op.binary.f32(i32 35, float %6902, float 0x3F847AE140000000)  ; FMax(a,b)
  %6904 = fmul fast float %6903, %6903
  %6905 = fmul fast float %6904, %6904
  %6906 = fmul fast float %6905, 0xC00A935000000000
  %6907 = call float @dx.op.unary.f32(i32 21, float %6906)  ; Exp(value)
  %6908 = fsub fast float 1.000000e+00, %6907
  %6909 = fmul fast float %6890, %6284
  %6910 = fmul fast float %6909, %6908
  %6911 = fmul fast float %6889, %6285
  %6912 = fmul fast float %6911, %6908
  %6913 = fmul fast float %6888, %6286
  %6914 = fmul fast float %6913, %6908
  %6915 = fadd fast float %6910, %6893
  %6916 = fmul fast float %6915, %4698
  %6917 = fadd fast float %6912, %6892
  %6918 = fmul fast float %6917, %4698
  %6919 = fadd fast float %6914, %6891
  %6920 = fmul fast float %6919, %4698
  %6921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6922 = extractvalue %dx.types.CBufRet.f32 %6921, 3
  %6923 = fcmp fast oeq float %6922, 0.000000e+00
  br i1 %6923, label %8688, label %6924

; <label>:6924                                    ; preds = %6809
  %6925 = extractvalue %dx.types.CBufRet.f32 %6921, 0
  %6926 = extractvalue %dx.types.CBufRet.f32 %6921, 1
  %6927 = extractvalue %dx.types.CBufRet.f32 %6921, 2
  %6928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6929 = extractvalue %dx.types.CBufRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.CBufRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.CBufRet.f32 %6928, 2
  %6932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6933 = extractvalue %dx.types.CBufRet.f32 %6932, 0
  %6934 = extractvalue %dx.types.CBufRet.f32 %6932, 1
  %6935 = call float @dx.op.dot3.f32(i32 55, float %6929, float %6930, float %6931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6936 = select i1 %264, float %6933, float %6929
  %6937 = select i1 %264, float %6935, float %6930
  %6938 = select i1 %264, float %6934, float %6931
  %6939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6940 = extractvalue %dx.types.CBufRet.f32 %6939, 2
  %6941 = fmul fast float %6940, %118
  %6942 = fmul fast float %6940, %119
  %6943 = fmul fast float %6940, %120
  %6944 = fadd fast float %6941, %190
  %6945 = fadd fast float %6942, %191
  %6946 = fadd fast float %6943, %192
  %6947 = fcmp fast olt float %6922, 0.000000e+00
  br i1 %6947, label %8205, label %6948

; <label>:6948                                    ; preds = %6924
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.CBufRet.f32 %6949, 1
  %6952 = extractvalue %dx.types.CBufRet.f32 %6949, 2
  %6953 = extractvalue %dx.types.CBufRet.f32 %6949, 3
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6957 = extractvalue %dx.types.CBufRet.f32 %6954, 2
  %6958 = extractvalue %dx.types.CBufRet.f32 %6954, 3
  %6959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6960 = extractvalue %dx.types.CBufRet.f32 %6959, 0
  %6961 = extractvalue %dx.types.CBufRet.f32 %6959, 1
  %6962 = extractvalue %dx.types.CBufRet.f32 %6959, 2
  %6963 = extractvalue %dx.types.CBufRet.f32 %6959, 3
  %6964 = fmul fast float %6950, %6944
  %6965 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %6951, float %6964)  ; FMad(a,b,c)
  %6966 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %6952, float %6965)  ; FMad(a,b,c)
  %6967 = fadd fast float %6966, %6953
  %6968 = fmul fast float %6955, %6944
  %6969 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %6956, float %6968)  ; FMad(a,b,c)
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %6957, float %6969)  ; FMad(a,b,c)
  %6971 = fadd fast float %6970, %6958
  %6972 = fmul fast float %6960, %6944
  %6973 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %6961, float %6972)  ; FMad(a,b,c)
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %6962, float %6973)  ; FMad(a,b,c)
  %6975 = fadd fast float %6974, %6963
  %6976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6977 = extractvalue %dx.types.CBufRet.f32 %6976, 0
  %6978 = fcmp fast une float %6977, 0.000000e+00
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6982 = extractvalue %dx.types.CBufRet.f32 %6979, 3
  %6983 = fmul fast float %6982, %6967
  %6984 = fmul fast float %6982, %6971
  %6985 = fadd fast float %6983, %6980
  %6986 = fadd fast float %6984, %6981
  %6987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6988 = extractvalue %dx.types.CBufRet.f32 %6987, 0
  %6989 = extractvalue %dx.types.CBufRet.f32 %6987, 1
  %6990 = extractvalue %dx.types.CBufRet.f32 %6987, 3
  %6991 = fmul fast float %6990, %6967
  %6992 = fmul fast float %6990, %6971
  %6993 = fadd fast float %6991, %6988
  %6994 = fadd fast float %6992, %6989
  %6995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6996 = extractvalue %dx.types.CBufRet.f32 %6995, 1
  %6997 = fsub fast float %6996, %6975
  %6998 = extractvalue %dx.types.CBufRet.f32 %6995, 2
  %6999 = fmul fast float %6997, %6998
  %7000 = fsub fast float 1.000000e+00, %6999
  %7001 = call float @dx.op.unary.f32(i32 7, float %7000)  ; Saturate(value)
  br i1 %6978, label %7062, label %7002

; <label>:7002                                    ; preds = %6948
  %7003 = extractvalue %dx.types.CBufRet.f32 %6987, 2
  %7004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7005 = extractvalue %dx.types.CBufRet.f32 %7004, 2
  %7006 = fadd fast float %7005, %7003
  %7007 = fcmp fast ogt float %7006, 0.000000e+00
  br i1 %7007, label %7008, label %7032

; <label>:7008                                    ; preds = %7002
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = fsub fast float %6993, %7010
  %7013 = fsub fast float %6994, %7011
  %7014 = fcmp fast olt float %7012, 0.000000e+00
  %7015 = fcmp fast olt float %7013, 0.000000e+00
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7019 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7020 = extractvalue %dx.types.CBufRet.f32 %7016, 3
  %7021 = select i1 %7014, float %7017, float %7019
  %7022 = select i1 %7015, float %7018, float %7020
  %7023 = fmul fast float %7021, %7012
  %7024 = fmul fast float %7022, %7013
  %7025 = call float @dx.op.unary.f32(i32 6, float %7023)  ; FAbs(value)
  %7026 = call float @dx.op.unary.f32(i32 6, float %7024)  ; FAbs(value)
  %7027 = extractvalue %dx.types.CBufRet.f32 %6939, 0
  %7028 = call float @dx.op.binary.f32(i32 35, float %7025, float %7026)  ; FMax(a,b)
  %7029 = fsub fast float %7027, %7028
  %7030 = call float @dx.op.unary.f32(i32 7, float %7029)  ; Saturate(value)
  %7031 = fmul fast float %7030, %7001
  br label %7032

; <label>:7032                                    ; preds = %7008, %7002
  %7033 = phi float [ %7031, %7008 ], [ 0.000000e+00, %7002 ]
  %7034 = extractvalue %dx.types.CBufRet.f32 %6979, 2
  %7035 = extractvalue %dx.types.CBufRet.f32 %7004, 1
  %7036 = fadd fast float %7035, %7034
  %7037 = fcmp fast ogt float %7036, 0.000000e+00
  br i1 %7037, label %7038, label %7062

; <label>:7038                                    ; preds = %7032
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = extractvalue %dx.types.CBufRet.f32 %7039, 1
  %7042 = fsub fast float %6985, %7040
  %7043 = fsub fast float %6986, %7041
  %7044 = fcmp fast olt float %7042, 0.000000e+00
  %7045 = fcmp fast olt float %7043, 0.000000e+00
  %7046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %7047 = extractvalue %dx.types.CBufRet.f32 %7046, 0
  %7048 = extractvalue %dx.types.CBufRet.f32 %7046, 1
  %7049 = extractvalue %dx.types.CBufRet.f32 %7046, 2
  %7050 = extractvalue %dx.types.CBufRet.f32 %7046, 3
  %7051 = select i1 %7044, float %7047, float %7049
  %7052 = select i1 %7045, float %7048, float %7050
  %7053 = fmul fast float %7051, %7042
  %7054 = fmul fast float %7052, %7043
  %7055 = call float @dx.op.unary.f32(i32 6, float %7053)  ; FAbs(value)
  %7056 = call float @dx.op.unary.f32(i32 6, float %7054)  ; FAbs(value)
  %7057 = extractvalue %dx.types.CBufRet.f32 %6939, 0
  %7058 = call float @dx.op.binary.f32(i32 35, float %7055, float %7056)  ; FMax(a,b)
  %7059 = fsub fast float %7057, %7058
  %7060 = call float @dx.op.unary.f32(i32 7, float %7059)  ; Saturate(value)
  %7061 = fmul fast float %7060, %7001
  br label %7062

; <label>:7062                                    ; preds = %7038, %7032, %6948
  %7063 = phi float [ 0.000000e+00, %6948 ], [ %7061, %7038 ], [ 0.000000e+00, %7032 ]
  %7064 = phi float [ 0.000000e+00, %6948 ], [ %7033, %7038 ], [ %7033, %7032 ]
  %7065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7066 = extractvalue %dx.types.CBufRet.f32 %7065, 1
  %7067 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7069 = extractvalue %dx.types.CBufRet.f32 %7068, 0
  %7070 = extractvalue %dx.types.CBufRet.f32 %7068, 1
  %7071 = fsub fast float %6967, %7069
  %7072 = fsub fast float %6971, %7070
  %7073 = fcmp fast olt float %7071, 0.000000e+00
  %7074 = fcmp fast olt float %7072, 0.000000e+00
  %7075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7076 = extractvalue %dx.types.CBufRet.f32 %7075, 0
  %7077 = extractvalue %dx.types.CBufRet.f32 %7075, 1
  %7078 = extractvalue %dx.types.CBufRet.f32 %7075, 2
  %7079 = extractvalue %dx.types.CBufRet.f32 %7075, 3
  %7080 = select i1 %7073, float %7076, float %7078
  %7081 = select i1 %7074, float %7077, float %7079
  %7082 = fmul fast float %7080, %7071
  %7083 = fmul fast float %7081, %7072
  %7084 = call float @dx.op.unary.f32(i32 6, float %7082)  ; FAbs(value)
  %7085 = call float @dx.op.unary.f32(i32 6, float %7083)  ; FAbs(value)
  %7086 = extractvalue %dx.types.CBufRet.f32 %6939, 0
  %7087 = call float @dx.op.binary.f32(i32 35, float %7084, float %7085)  ; FMax(a,b)
  %7088 = fsub fast float %7086, %7087
  %7089 = call float @dx.op.unary.f32(i32 7, float %7088)  ; Saturate(value)
  %7090 = call float @dx.op.binary.f32(i32 36, float %7089, float %7067)  ; FMin(a,b)
  %7091 = fmul fast float %7090, %7001
  %7092 = fsub fast float %7063, %7091
  %7093 = fsub fast float %7064, %7063
  %7094 = fsub fast float %7093, %7091
  %7095 = call float @dx.op.binary.f32(i32 35, float %7063, float %7064)  ; FMax(a,b)
  %7096 = call float @dx.op.binary.f32(i32 35, float %7091, float %7095)  ; FMax(a,b)
  %7097 = fcmp fast olt float %7096, 1.000000e+00
  br i1 %7097, label %7098, label %7496, !dx.controlflow.hints !97

; <label>:7098                                    ; preds = %7062
  %7099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7100 = extractvalue %dx.types.CBufRet.f32 %7099, 0
  %7101 = fcmp fast une float %7100, 0.000000e+00
  br i1 %7101, label %7102, label %7496, !dx.controlflow.hints !98

; <label>:7102                                    ; preds = %7098
  %7103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7104 = extractvalue %dx.types.CBufRet.f32 %7103, 0
  %7105 = extractvalue %dx.types.CBufRet.f32 %7103, 1
  %7106 = extractvalue %dx.types.CBufRet.f32 %7103, 2
  %7107 = extractvalue %dx.types.CBufRet.f32 %7103, 3
  %7108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7109 = extractvalue %dx.types.CBufRet.f32 %7108, 0
  %7110 = extractvalue %dx.types.CBufRet.f32 %7108, 1
  %7111 = extractvalue %dx.types.CBufRet.f32 %7108, 2
  %7112 = extractvalue %dx.types.CBufRet.f32 %7108, 3
  %7113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7114 = extractvalue %dx.types.CBufRet.f32 %7113, 0
  %7115 = extractvalue %dx.types.CBufRet.f32 %7113, 1
  %7116 = extractvalue %dx.types.CBufRet.f32 %7113, 2
  %7117 = extractvalue %dx.types.CBufRet.f32 %7113, 3
  %7118 = fmul fast float %7104, %6944
  %7119 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %7105, float %7118)  ; FMad(a,b,c)
  %7120 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %7106, float %7119)  ; FMad(a,b,c)
  %7121 = fadd fast float %7120, %7107
  %7122 = fmul fast float %7109, %6944
  %7123 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %7110, float %7122)  ; FMad(a,b,c)
  %7124 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %7111, float %7123)  ; FMad(a,b,c)
  %7125 = fadd fast float %7124, %7112
  %7126 = fmul fast float %7114, %6944
  %7127 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %7115, float %7126)  ; FMad(a,b,c)
  %7128 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %7116, float %7127)  ; FMad(a,b,c)
  %7129 = fadd fast float %7128, %7117
  %7130 = fcmp fast oge float %7121, 1.000000e+00
  %7131 = fcmp fast oge float %7125, 1.000000e+00
  %7132 = or i1 %7130, %7131
  %7133 = fcmp fast olt float %7121, 0.000000e+00
  %7134 = fcmp fast olt float %7125, 0.000000e+00
  %7135 = or i1 %7133, %7134
  %7136 = or i1 %7132, %7135
  br i1 %7136, label %7496, label %7137, !dx.controlflow.hints !99

; <label>:7137                                    ; preds = %7102
  %7138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7139 = extractvalue %dx.types.CBufRet.f32 %7138, 0
  %7140 = extractvalue %dx.types.CBufRet.f32 %7138, 1
  %7141 = extractvalue %dx.types.CBufRet.f32 %7138, 2
  %7142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.i32 %7142, 2
  %7144 = uitofp i32 %7143 to float
  %7145 = extractvalue %dx.types.CBufRet.i32 %7142, 3
  %7146 = uitofp i32 %7145 to float
  %7147 = extractvalue %dx.types.CBufRet.f32 %7138, 3
  %7148 = fmul fast float %7147, 2.000000e+00
  %7149 = fsub fast float %7121, %7139
  %7150 = fsub fast float %7125, %7140
  %7151 = fmul fast float %7148, %7149
  %7152 = fmul fast float %7148, %7150
  %7153 = fdiv fast float 1.000000e+00, %6927
  %7154 = fmul fast float %7152, %7153
  %7155 = call float @dx.op.unary.f32(i32 6, float %7154)  ; FAbs(value)
  %7156 = fmul fast float %7141, %6946
  %7157 = fmul fast float %7156, %7148
  %7158 = call float @dx.op.unary.f32(i32 6, float %7157)  ; FAbs(value)
  %7159 = call float @dx.op.unary.f32(i32 6, float %7151)  ; FAbs(value)
  %7160 = call float @dx.op.binary.f32(i32 35, float %7158, float %7155)  ; FMax(a,b)
  %7161 = call float @dx.op.binary.f32(i32 35, float %7159, float %7160)  ; FMax(a,b)
  %7162 = fmul fast float %7161, 2.000000e+00
  %7163 = call float @dx.op.unary.f32(i32 23, float %7162)  ; Log(value)
  %7164 = call float @dx.op.binary.f32(i32 35, float %7163, float %7144)  ; FMax(a,b)
  %7165 = call float @dx.op.unary.f32(i32 22, float %7164)  ; Frc(value)
  %7166 = fadd fast float %7165, 0xBFEA666660000000
  %7167 = fmul fast float %7166, 8.000000e+00
  %7168 = call float @dx.op.unary.f32(i32 7, float %7167)  ; Saturate(value)
  %7169 = call float @dx.op.unary.f32(i32 27, float %7164)  ; Round_ni(value)
  %7170 = fadd fast float %7169, %7168
  %7171 = call float @dx.op.binary.f32(i32 36, float %7170, float %7146)  ; FMin(a,b)
  %7172 = call float @dx.op.unary.f32(i32 27, float %7171)  ; Round_ni(value)
  %7173 = fsub fast float -0.000000e+00, %7172
  %7174 = call float @dx.op.unary.f32(i32 21, float %7173)  ; Exp(value)
  %7175 = fmul fast float %7174, %7148
  %7176 = fmul fast float %7175, %7121
  %7177 = fmul fast float %7175, %7125
  %7178 = fmul fast float %7176, 2.500000e-01
  %7179 = fmul fast float %7177, 2.500000e-01
  %7180 = fadd fast float %7178, 5.000000e-01
  %7181 = fadd fast float %7179, 5.000000e-01
  %7182 = fsub fast float %7146, %7144
  %7183 = fptoui float %7182 to i32
  %7184 = add i32 %7183, 320
  %7185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7184)  ; CBufferLoadLegacy(handle,regIndex)
  %7186 = extractvalue %dx.types.CBufRet.f32 %7185, 0
  %7187 = extractvalue %dx.types.CBufRet.f32 %7185, 1
  %7188 = fcmp fast une float %7171, %7146
  %7189 = fsub fast float %7121, %7186
  %7190 = fsub fast float %7125, %7187
  %7191 = call float @dx.op.unary.f32(i32 6, float %7189)  ; FAbs(value)
  %7192 = call float @dx.op.unary.f32(i32 6, float %7190)  ; FAbs(value)
  %7193 = fmul fast float %7191, %7175
  %7194 = fmul fast float %7192, %7175
  %7195 = fcmp fast olt float %7193, 1.000000e+00
  %7196 = fcmp fast olt float %7194, 1.000000e+00
  %7197 = and i1 %7195, %7196
  %7198 = or i1 %7188, %7197
  br i1 %7198, label %7199, label %7496, !dx.controlflow.hints !100

; <label>:7199                                    ; preds = %7137
  %7200 = fmul fast float %7177, 5.000000e-01
  %7201 = fmul fast float %7176, 5.000000e-01
  %7202 = fadd fast float %7200, 5.000000e-01
  %7203 = fadd fast float %7201, 5.000000e-01
  %7204 = sitofp i32 %7143 to float
  %7205 = fsub fast float %7171, %7204
  %7206 = call float @dx.op.unary.f32(i32 27, float %7205)  ; Round_ni(value)
  %7207 = call float @dx.op.unary.f32(i32 22, float %7171)  ; Frc(value)
  %7208 = call float @dx.op.unary.f32(i32 22, float %7203)  ; Frc(value)
  %7209 = call float @dx.op.unary.f32(i32 22, float %7202)  ; Frc(value)
  %7210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %7208, float %7209, float %7206, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7211 = extractvalue %dx.types.ResRet.f32 %7210, 0
  %7212 = extractvalue %dx.types.ResRet.f32 %7210, 1
  %7213 = extractvalue %dx.types.ResRet.f32 %7210, 2
  %7214 = extractvalue %dx.types.ResRet.f32 %7210, 3
  %7215 = fcmp fast ogt float %7207, 0.000000e+00
  br i1 %7215, label %7216, label %7237, !dx.controlflow.hints !101

; <label>:7216                                    ; preds = %7199
  %7217 = fadd fast float %7206, 1.000000e+00
  %7218 = call float @dx.op.unary.f32(i32 22, float %7180)  ; Frc(value)
  %7219 = call float @dx.op.unary.f32(i32 22, float %7181)  ; Frc(value)
  %7220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %44, float %7218, float %7219, float %7217, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7221 = extractvalue %dx.types.ResRet.f32 %7220, 0
  %7222 = extractvalue %dx.types.ResRet.f32 %7220, 1
  %7223 = extractvalue %dx.types.ResRet.f32 %7220, 2
  %7224 = extractvalue %dx.types.ResRet.f32 %7220, 3
  %7225 = fsub fast float %7221, %7211
  %7226 = fsub fast float %7222, %7212
  %7227 = fsub fast float %7223, %7213
  %7228 = fsub fast float %7224, %7214
  %7229 = fmul fast float %7225, %7207
  %7230 = fmul fast float %7226, %7207
  %7231 = fmul fast float %7227, %7207
  %7232 = fmul fast float %7228, %7207
  %7233 = fadd fast float %7229, %7211
  %7234 = fadd fast float %7230, %7212
  %7235 = fadd fast float %7231, %7213
  %7236 = fadd fast float %7232, %7214
  br label %7237

; <label>:7237                                    ; preds = %7216, %7199
  %7238 = phi float [ %7233, %7216 ], [ %7211, %7199 ]
  %7239 = phi float [ %7234, %7216 ], [ %7212, %7199 ]
  %7240 = phi float [ %7235, %7216 ], [ %7213, %7199 ]
  %7241 = phi float [ %7236, %7216 ], [ %7214, %7199 ]
  %7242 = fadd fast float %7238, -5.000000e-01
  %7243 = fadd fast float %7240, -5.000000e-01
  %7244 = fmul fast float %7242, 0xBFD5555560000000
  %7245 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7243, float %7244)  ; FMad(a,b,c)
  %7246 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7239, float 0.000000e+00)  ; FMad(a,b,c)
  %7247 = fadd fast float %7246, %7241
  %7248 = fmul fast float %7242, -7.500000e-01
  %7249 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7243, float %7248)  ; FMad(a,b,c)
  %7250 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7239, float 0.000000e+00)  ; FMad(a,b,c)
  %7251 = fadd fast float %7250, %7241
  %7252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7253 = extractvalue %dx.types.CBufRet.f32 %7252, 0
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 0
  %7256 = extractvalue %dx.types.CBufRet.f32 %7254, 1
  %7257 = extractvalue %dx.types.CBufRet.f32 %7254, 2
  %7258 = extractvalue %dx.types.CBufRet.f32 %7254, 3
  %7259 = fsub fast float %7255, %7245
  %7260 = fsub fast float %7256, %7247
  %7261 = fsub fast float %7257, %7249
  %7262 = fsub fast float %7258, %7251
  %7263 = fmul fast float %7259, %7253
  %7264 = fmul fast float %7260, %7253
  %7265 = fmul fast float %7261, %7253
  %7266 = fmul fast float %7262, %7253
  %7267 = fadd fast float %7263, %7245
  %7268 = fadd fast float %7264, %7247
  %7269 = fadd fast float %7265, %7249
  %7270 = fadd fast float %7266, %7251
  %7271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7272 = extractvalue %dx.types.ResRet.i32 %7271, 0
  %7273 = and i32 %7272, 536870911
  %7274 = uitofp i32 %7273 to float
  %7275 = fmul fast float %7274, %7121
  %7276 = fmul fast float %7274, %7125
  %7277 = fptoui float %7275 to i32
  %7278 = fptoui float %7276 to i32
  %7279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7280 = extractvalue %dx.types.ResRet.i32 %7279, 0
  %7281 = and i32 %7280, 31
  %7282 = lshr i32 %7277, %7281
  %7283 = lshr i32 %7278, %7281
  %7284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7285 = extractvalue %dx.types.ResRet.i32 %7284, 0
  %7286 = and i32 %7285, 31
  %7287 = shl i32 1, %7286
  %7288 = call i32 @dx.op.binary.i32(i32 40, i32 %7287, i32 4)  ; UMin(a,b)
  %7289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7290 = extractvalue %dx.types.ResRet.i32 %7289, 0
  %7291 = extractvalue %dx.types.ResRet.i32 %7289, 1
  %7292 = icmp eq i32 %7288, 0
  br i1 %7292, label %7334, label %7293

; <label>:7293                                    ; preds = %7237
  br label %7294

; <label>:7294                                    ; preds = %7322, %7293
  %7295 = phi i32 [ %7325, %7322 ], [ 0, %7293 ]
  %7296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7297 = extractvalue %dx.types.ResRet.i32 %7296, 0
  %7298 = lshr i32 %7297, 16
  %7299 = and i32 %7298, 31
  %7300 = shl i32 %7283, %7299
  %7301 = add i32 %7300, %7282
  %7302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7303 = extractvalue %dx.types.ResRet.i32 %7302, 0
  %7304 = and i32 %7303, 31
  %7305 = shl i32 %7301, %7304
  %7306 = add i32 %7305, %7295
  %7307 = shl i32 %7306, 2
  %7308 = add i32 %7307, 32
  %7309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7308, i32 undef)  ; BufferLoad(srv,index,wot)
  %7310 = extractvalue %dx.types.ResRet.i32 %7309, 0
  %7311 = icmp slt i32 %7310, 0
  %7312 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7295
  %7313 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7295
  %7314 = bitcast float* %7312 to i32*
  %7315 = bitcast float* %7313 to i32*
  br i1 %7311, label %7316, label %7322

; <label>:7316                                    ; preds = %7294
  %7317 = and i32 %7310, 1073741823
  %7318 = add nuw nsw i32 %7317, 20
  %7319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7318, i32 undef)  ; BufferLoad(srv,index,wot)
  %7320 = extractvalue %dx.types.ResRet.i32 %7319, 0
  %7321 = extractvalue %dx.types.ResRet.i32 %7319, 1
  br label %7322

; <label>:7322                                    ; preds = %7316, %7294
  %7323 = phi i32 [ %7320, %7316 ], [ %7290, %7294 ]
  %7324 = phi i32 [ %7321, %7316 ], [ %7291, %7294 ]
  store i32 %7323, i32* %7314, align 4
  store i32 %7324, i32* %7315, align 4
  %7325 = add nuw i32 %7295, 1
  %7326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.i32 %7326, 2
  %7328 = icmp eq i32 %7327, 0
  %7329 = icmp ugt i32 %7310, -1073741825
  %7330 = and i1 %7329, %7328
  %7331 = icmp ult i32 %7325, %7288
  %7332 = and i1 %7330, %7331
  br i1 %7332, label %7294, label %7333

; <label>:7333                                    ; preds = %7322
  br label %7334

; <label>:7334                                    ; preds = %7333, %7237
  %7335 = phi i32 [ 0, %7237 ], [ %7325, %7333 ]
  %7336 = extractvalue %dx.types.CBufRet.f32 %7099, 2
  %7337 = fptoui float %7336 to i32
  %7338 = icmp eq i32 %7337, 0
  br i1 %7338, label %7390, label %7339

; <label>:7339                                    ; preds = %7334
  br label %7340

; <label>:7340                                    ; preds = %7385, %7339
  %7341 = phi i32 [ %7386, %7385 ], [ %7335, %7339 ]
  %7342 = phi i32 [ %7387, %7385 ], [ 0, %7339 ]
  %7343 = lshr i32 %7342, 2
  %7344 = and i32 %7342, 3
  %7345 = add nuw nsw i32 %7343, 83
  %7346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 %7345)  ; CBufferLoadLegacy(handle,regIndex)
  %7347 = extractvalue %dx.types.CBufRet.i32 %7346, 0
  %7348 = extractvalue %dx.types.CBufRet.i32 %7346, 1
  %7349 = extractvalue %dx.types.CBufRet.i32 %7346, 2
  %7350 = extractvalue %dx.types.CBufRet.i32 %7346, 3
  %7351 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 0
  store i32 %7347, i32* %7351, align 4
  %7352 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 1
  store i32 %7348, i32* %7352, align 4
  %7353 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 2
  store i32 %7349, i32* %7353, align 4
  %7354 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 3
  store i32 %7350, i32* %7354, align 4
  %7355 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i32 0, i32 %7344
  %7356 = load i32, i32* %7355, align 4, !tbaa !102, !noalias !106
  %7357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7358 = extractvalue %dx.types.ResRet.i32 %7357, 0
  %7359 = lshr i32 %7358, 16
  %7360 = and i32 %7359, 31
  %7361 = shl i32 %7283, %7360
  %7362 = add i32 %7361, %7282
  %7363 = shl i32 %7362, 2
  %7364 = add i32 %7363, %7356
  %7365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7364, i32 undef)  ; BufferLoad(srv,index,wot)
  %7366 = extractvalue %dx.types.ResRet.i32 %7365, 0
  %7367 = icmp eq i32 %7366, 0
  br i1 %7367, label %7385, label %7368

; <label>:7368                                    ; preds = %7340
  %7369 = icmp slt i32 %7366, 0
  %7370 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7341
  %7371 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7341
  %7372 = bitcast float* %7370 to i32*
  %7373 = bitcast float* %7371 to i32*
  br i1 %7369, label %7374, label %7381

; <label>:7374                                    ; preds = %7368
  %7375 = and i32 %7366, 1073741823
  %7376 = add i32 %7356, 20
  %7377 = add i32 %7376, %7375
  %7378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7377, i32 undef)  ; BufferLoad(srv,index,wot)
  %7379 = extractvalue %dx.types.ResRet.i32 %7378, 0
  %7380 = extractvalue %dx.types.ResRet.i32 %7378, 1
  br label %7381

; <label>:7381                                    ; preds = %7374, %7368
  %7382 = phi i32 [ %7379, %7374 ], [ %7290, %7368 ]
  %7383 = phi i32 [ %7380, %7374 ], [ %7291, %7368 ]
  store i32 %7382, i32* %7372, align 4
  store i32 %7383, i32* %7373, align 4
  %7384 = add i32 %7341, 1
  br label %7385

; <label>:7385                                    ; preds = %7381, %7340
  %7386 = phi i32 [ %7341, %7340 ], [ %7384, %7381 ]
  %7387 = add nuw i32 %7342, 1
  %7388 = icmp eq i32 %7387, %7337
  br i1 %7388, label %7389, label %7340

; <label>:7389                                    ; preds = %7385
  br label %7390

; <label>:7390                                    ; preds = %7389, %7334
  %7391 = phi i32 [ %7335, %7334 ], [ %7386, %7389 ]
  %7392 = icmp eq i32 %7391, 1
  %7393 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 0
  %7394 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 0
  br i1 %7392, label %7395, label %7398

; <label>:7395                                    ; preds = %7390
  %7396 = load float, float* %7393, align 4
  %7397 = load float, float* %7394, align 4
  br label %7425

; <label>:7398                                    ; preds = %7390
  %7399 = load float, float* %7393, align 4
  %7400 = load float, float* %7394, align 4
  %7401 = fdiv fast float 1.000000e+00, %7400
  %7402 = fsub fast float %7399, %7401
  %7403 = icmp ugt i32 %7391, 1
  br i1 %7403, label %7404, label %7420

; <label>:7404                                    ; preds = %7398
  br label %7405

; <label>:7405                                    ; preds = %7405, %7404
  %7406 = phi float [ %7415, %7405 ], [ %7402, %7404 ]
  %7407 = phi float [ %7416, %7405 ], [ %7399, %7404 ]
  %7408 = phi i32 [ %7417, %7405 ], [ 1, %7404 ]
  %7409 = getelementptr [12 x float], [12 x float]* %99, i32 0, i32 %7408
  %7410 = load float, float* %7409, align 4
  %7411 = getelementptr [12 x float], [12 x float]* %100, i32 0, i32 %7408
  %7412 = load float, float* %7411, align 4
  %7413 = fdiv fast float 1.000000e+00, %7412
  %7414 = fsub fast float %7410, %7413
  %7415 = call float @dx.op.binary.f32(i32 36, float %7406, float %7414)  ; FMin(a,b)
  %7416 = call float @dx.op.binary.f32(i32 35, float %7407, float %7410)  ; FMax(a,b)
  %7417 = add nuw i32 %7408, 1
  %7418 = icmp eq i32 %7417, %7391
  br i1 %7418, label %7419, label %7405

; <label>:7419                                    ; preds = %7405
  br label %7420

; <label>:7420                                    ; preds = %7419, %7398
  %7421 = phi float [ %7402, %7398 ], [ %7415, %7419 ]
  %7422 = phi float [ %7399, %7398 ], [ %7416, %7419 ]
  %7423 = fsub fast float %7422, %7421
  %7424 = fdiv fast float 1.000000e+00, %7423
  br label %7425

; <label>:7425                                    ; preds = %7420, %7395
  %7426 = phi float [ %7396, %7395 ], [ %7422, %7420 ]
  %7427 = phi float [ %7397, %7395 ], [ %7424, %7420 ]
  %7428 = fadd fast float %7129, %7426
  %7429 = fmul fast float %7428, %7427
  %7430 = call float @dx.op.unary.f32(i32 7, float %7429)  ; Saturate(value)
  %7431 = fmul fast float %7430, 2.000000e+00
  %7432 = fsub fast float 1.000000e+00, %7431
  %7433 = fmul fast float %7267, %7267
  %7434 = fsub fast float %7268, %7433
  %7435 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7434)  ; FMax(a,b)
  %7436 = fdiv fast float 1.000000e+00, %7435
  %7437 = fmul fast float %7268, %7267
  %7438 = fsub fast float %7269, %7437
  %7439 = fsub fast float %7432, %7267
  %7440 = fmul fast float %7432, %7432
  %7441 = fsub fast float %7440, %7268
  %7442 = fmul fast float %7436, %7438
  %7443 = fmul fast float %7442, %7439
  %7444 = fsub fast float %7441, %7443
  %7445 = fmul fast float %7268, %7268
  %7446 = fsub fast float %7270, %7445
  %7447 = fmul fast float %7438, %7438
  %7448 = fmul fast float %7447, %7436
  %7449 = fsub fast float %7446, %7448
  %7450 = fdiv fast float %7444, %7449
  %7451 = fmul fast float %7450, %7438
  %7452 = fsub fast float %7439, %7451
  %7453 = fmul fast float %7452, %7436
  %7454 = fmul fast float %7453, %7267
  %7455 = fsub fast float 1.000000e+00, %7454
  %7456 = fmul fast float %7450, %7268
  %7457 = fsub fast float %7455, %7456
  %7458 = fmul fast float %7453, %7453
  %7459 = fmul fast float %7450, 4.000000e+00
  %7460 = fmul fast float %7459, %7457
  %7461 = fsub fast float %7458, %7460
  %7462 = call float @dx.op.unary.f32(i32 24, float %7461)  ; Sqrt(value)
  %7463 = fcmp fast oge float %7453, 0.000000e+00
  %7464 = fsub fast float -0.000000e+00, %7462
  %7465 = select i1 %7463, float %7464, float %7462
  %7466 = fsub fast float %7465, %7453
  %7467 = fdiv fast float %7466, %7450
  %7468 = fdiv fast float %7457, %7466
  %7469 = fmul fast float %7467, 5.000000e-01
  %7470 = fmul fast float %7468, 2.000000e+00
  %7471 = select i1 %7463, float %7469, float %7470
  %7472 = select i1 %7463, float %7470, float %7469
  %7473 = call float @dx.op.binary.f32(i32 35, float %7471, float %7472)  ; FMax(a,b)
  %7474 = call float @dx.op.binary.f32(i32 36, float %7471, float %7472)  ; FMin(a,b)
  %7475 = fcmp fast ogt float %7432, %7473
  %7476 = fsub fast float %7432, %7474
  %7477 = fsub fast float %7432, %7473
  %7478 = fsub fast float %7473, %7474
  %7479 = select i1 %7475, float %7477, float %7478
  %7480 = fmul float %7476, %7479
  %7481 = select i1 %7475, float %7474, float %7432
  %7482 = fcmp fast ogt float %7432, %7474
  %7483 = fmul fast float %7481, %7473
  %7484 = fadd fast float %7481, %7473
  %7485 = fmul fast float %7484, %7267
  %7486 = fadd fast float %7483, %7268
  %7487 = fsub fast float %7486, %7485
  %7488 = fdiv fast float %7487, %7480
  %7489 = select i1 %7482, float %7488, float 0.000000e+00
  %7490 = fsub fast float 1.000000e+00, %7489
  %7491 = select i1 %7475, float %7490, float %7489
  %7492 = call float @dx.op.unary.f32(i32 7, float %7491)  ; Saturate(value)
  %7493 = extractvalue %dx.types.CBufRet.f32 %7252, 3
  %7494 = fmul fast float %7493, %7492
  %7495 = fsub fast float 1.000000e+00, %7494
  br label %7496

; <label>:7496                                    ; preds = %7425, %7137, %7102, %7098, %7062
  %7497 = phi float [ 1.000000e+00, %7062 ], [ %7495, %7425 ], [ 1.000000e+00, %7102 ], [ 1.000000e+00, %7137 ], [ 1.000000e+00, %7098 ]
  %7498 = fcmp fast ogt float %7094, 0.000000e+00
  br i1 %7498, label %7499, label %7663, !dx.controlflow.hints !115

; <label>:7499                                    ; preds = %7496
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 2
  %7502 = fadd fast float %7501, %6975
  %7503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7504 = extractvalue %dx.types.CBufRet.f32 %7503, 2
  %7505 = extractvalue %dx.types.CBufRet.f32 %7503, 3
  %7506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7507 = extractvalue %dx.types.CBufRet.f32 %7506, 2
  %7508 = call float @dx.op.binary.f32(i32 35, float %7502, float 0.000000e+00)  ; FMax(a,b)
  %7509 = fadd fast float %7508, 0x3F10000000000000
  %7510 = fcmp fast oeq float %7507, 0.000000e+00
  br i1 %7510, label %7511, label %7578

; <label>:7511                                    ; preds = %7499
  %7512 = extractvalue %dx.types.CBufRet.f32 %7503, 1
  %7513 = extractvalue %dx.types.CBufRet.f32 %7503, 0
  %7514 = fmul fast float %7513, %6993
  %7515 = fmul fast float %7512, %6994
  %7516 = fadd fast float %7514, 5.000000e-01
  %7517 = call float @dx.op.unary.f32(i32 27, float %7516)  ; Round_ni(value)
  %7518 = fadd fast float %7515, 5.000000e-01
  %7519 = call float @dx.op.unary.f32(i32 27, float %7518)  ; Round_ni(value)
  %7520 = fsub fast float %7516, %7517
  %7521 = fsub fast float %7518, %7519
  %7522 = fadd fast float %7517, -5.000000e-01
  %7523 = fadd fast float %7519, -5.000000e-01
  %7524 = fmul fast float %7520, 2.000000e+00
  %7525 = fsub fast float 3.000000e+00, %7524
  %7526 = fadd fast float %7524, 1.000000e+00
  %7527 = fsub fast float 2.000000e+00, %7520
  %7528 = bitcast float %7525 to i32
  %7529 = sub nsw i32 2129859010, %7528
  %7530 = bitcast i32 %7529 to float
  %7531 = fmul fast float %7530, %7527
  %7532 = fadd fast float %7531, -1.000000e+00
  %7533 = bitcast float %7526 to i32
  %7534 = sub nsw i32 2129859010, %7533
  %7535 = bitcast i32 %7534 to float
  %7536 = fmul fast float %7535, %7520
  %7537 = fadd fast float %7536, 1.000000e+00
  %7538 = fmul fast float %7521, 2.000000e+00
  %7539 = fsub fast float 3.000000e+00, %7538
  %7540 = fadd fast float %7538, 1.000000e+00
  %7541 = fsub fast float 2.000000e+00, %7521
  %7542 = bitcast float %7539 to i32
  %7543 = sub nsw i32 2129859010, %7542
  %7544 = bitcast i32 %7543 to float
  %7545 = fmul fast float %7544, %7541
  %7546 = fadd fast float %7545, -1.000000e+00
  %7547 = bitcast float %7540 to i32
  %7548 = sub nsw i32 2129859010, %7547
  %7549 = bitcast i32 %7548 to float
  %7550 = fmul fast float %7549, %7521
  %7551 = fadd fast float %7550, 1.000000e+00
  %7552 = fadd fast float %7532, %7522
  %7553 = fmul fast float %7552, %7504
  %7554 = fadd fast float %7546, %7523
  %7555 = fmul fast float %7554, %7505
  %7556 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7553, float %7555, float undef, float undef, i32 0, i32 0, i32 undef, float %7509)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7557 = extractvalue %dx.types.ResRet.f32 %7556, 0
  %7558 = fmul fast float %7557, %7525
  %7559 = fadd fast float %7537, %7522
  %7560 = fmul fast float %7559, %7504
  %7561 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7560, float %7555, float undef, float undef, i32 0, i32 0, i32 undef, float %7509)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7562 = extractvalue %dx.types.ResRet.f32 %7561, 0
  %7563 = fmul fast float %7562, %7526
  %7564 = fadd fast float %7551, %7523
  %7565 = fmul fast float %7564, %7505
  %7566 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7553, float %7565, float undef, float undef, i32 0, i32 0, i32 undef, float %7509)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7567 = extractvalue %dx.types.ResRet.f32 %7566, 0
  %7568 = fmul fast float %7567, %7525
  %7569 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %47, float %7560, float %7565, float undef, float undef, i32 0, i32 0, i32 undef, float %7509)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7570 = extractvalue %dx.types.ResRet.f32 %7569, 0
  %7571 = fmul fast float %7570, %7526
  %7572 = fadd fast float %7571, %7568
  %7573 = fmul fast float %7572, %7540
  %7574 = fadd fast float %7563, %7558
  %7575 = fmul fast float %7574, %7539
  %7576 = fadd fast float %7575, %7573
  %7577 = fmul fast float %7576, 6.250000e-02
  br label %7663

; <label>:7578                                    ; preds = %7499
  %7579 = fmul fast float %275, 0x401921FB60000000
  %7580 = call float @dx.op.unary.f32(i32 13, float %7579)  ; Sin(value)
  %7581 = call float @dx.op.unary.f32(i32 12, float %7579)  ; Cos(value)
  %7582 = fsub fast float -0.000000e+00, %7580
  br label %7583

; <label>:7583                                    ; preds = %7632, %7578
  %7584 = phi float [ 0.000000e+00, %7578 ], [ %7627, %7632 ]
  %7585 = phi float [ 0.000000e+00, %7578 ], [ %7629, %7632 ]
  %7586 = phi i32 [ 0, %7578 ], [ %7633, %7632 ]
  %7587 = mul i32 %7586, 2
  %7588 = add i32 0, %7587
  %7589 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7588
  %7590 = load float, float* %7589, align 4
  %7591 = mul i32 %7586, 2
  %7592 = add i32 1, %7591
  %7593 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7592
  %7594 = load float, float* %7593, align 4
  %7595 = fmul fast float %7590, %7581
  %7596 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7582, float %7595)  ; FMad(a,b,c)
  %7597 = fmul fast float %7590, %7580
  %7598 = call float @dx.op.tertiary.f32(i32 46, float %7594, float %7581, float %7597)  ; FMad(a,b,c)
  %7599 = fmul fast float %7596, %7507
  %7600 = fmul fast float %7598, %7507
  %7601 = fadd fast float %7599, %6993
  %7602 = fadd fast float %7600, %6994
  %7603 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %46, float %7601, float %7602, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7604 = extractvalue %dx.types.ResRet.f32 %7603, 0
  %7605 = extractvalue %dx.types.ResRet.f32 %7603, 1
  %7606 = extractvalue %dx.types.ResRet.f32 %7603, 2
  %7607 = extractvalue %dx.types.ResRet.f32 %7603, 3
  %7608 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 0
  store float %7604, float* %7608, align 4
  %7609 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 1
  store float %7605, float* %7609, align 4
  %7610 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 2
  store float %7606, float* %7610, align 4
  %7611 = getelementptr inbounds [4 x float], [4 x float]* %104, i32 0, i32 3
  store float %7607, float* %7611, align 4
  %7612 = fsub fast float %7604, %7509
  %7613 = fcmp fast olt float %7612, 0.000000e+00
  %7614 = select i1 %7613, float 0.000000e+00, float 1.000000e+00
  %7615 = fadd fast float %7614, %7584
  %7616 = fmul fast float %7614, %7612
  %7617 = fadd fast float %7616, %7585
  br label %7618

; <label>:7618                                    ; preds = %7618, %7583
  %7619 = phi i32 [ 1, %7583 ], [ %7630, %7618 ]
  %7620 = phi float [ %7617, %7583 ], [ %7629, %7618 ]
  %7621 = phi float [ %7615, %7583 ], [ %7627, %7618 ]
  %7622 = getelementptr [4 x float], [4 x float]* %104, i32 0, i32 %7619
  %7623 = load float, float* %7622, align 4, !tbaa !116, !noalias !106
  %7624 = fsub fast float %7623, %7509
  %7625 = fcmp fast olt float %7624, 0.000000e+00
  %7626 = select i1 %7625, float 0.000000e+00, float 1.000000e+00
  %7627 = fadd fast float %7626, %7621
  %7628 = fmul fast float %7626, %7624
  %7629 = fadd fast float %7628, %7620
  %7630 = add nuw nsw i32 %7619, 1
  %7631 = icmp eq i32 %7630, 4
  br i1 %7631, label %7632, label %7618, !llvm.loop !118

; <label>:7632                                    ; preds = %7618
  %7633 = add nuw nsw i32 %7586, 1
  %7634 = icmp eq i32 %7633, 8
  br i1 %7634, label %7635, label %7583, !llvm.loop !119

; <label>:7635                                    ; preds = %7632
  %7636 = fdiv fast float 1.000000e+00, %7627
  %7637 = fmul fast float %7636, %7629
  %7638 = fdiv fast float 1.000000e+00, %7509
  %7639 = fmul fast float %7637, %7638
  %7640 = call float @dx.op.unary.f32(i32 7, float %7639)  ; Saturate(value)
  %7641 = call float @dx.op.binary.f32(i32 35, float %7640, float 0.000000e+00)  ; FMax(a,b)
  %7642 = fmul fast float %7627, 3.125000e-02
  %7643 = call float @dx.op.unary.f32(i32 7, float %7642)  ; Saturate(value)
  %7644 = fmul fast float %7643, 2.000000e+00
  %7645 = fadd fast float %7644, -1.000000e+00
  %7646 = fcmp fast ogt float %7645, 0.000000e+00
  %7647 = fcmp fast olt float %7645, 0.000000e+00
  %7648 = zext i1 %7646 to i32
  %7649 = zext i1 %7647 to i32
  %7650 = sub nsw i32 %7648, %7649
  %7651 = sitofp i32 %7650 to float
  %7652 = fmul fast float %7651, %7645
  %7653 = fsub fast float 1.000000e+00, %7652
  %7654 = fmul fast float %7653, %7653
  %7655 = fmul fast float %7654, %7653
  %7656 = fsub fast float %7653, %7655
  %7657 = fmul fast float %7656, %7641
  %7658 = fsub fast float 1.000000e+00, %7655
  %7659 = fsub fast float %7658, %7657
  %7660 = fmul fast float %7651, 5.000000e-01
  %7661 = fmul fast float %7660, %7659
  %7662 = fsub fast float 5.000000e-01, %7661
  br label %7663

; <label>:7663                                    ; preds = %7635, %7511, %7496
  %7664 = phi float [ 1.000000e+00, %7496 ], [ %7577, %7511 ], [ %7662, %7635 ]
  %7665 = fcmp fast ogt float %7092, 0.000000e+00
  br i1 %7665, label %7666, label %7830, !dx.controlflow.hints !120

; <label>:7666                                    ; preds = %7663
  %7667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7668 = extractvalue %dx.types.CBufRet.f32 %7667, 1
  %7669 = fadd fast float %7668, %6975
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 1
  %7675 = call float @dx.op.binary.f32(i32 35, float %7669, float 0.000000e+00)  ; FMax(a,b)
  %7676 = fadd fast float %7675, 0x3F10000000000000
  %7677 = fcmp fast oeq float %7674, 0.000000e+00
  br i1 %7677, label %7678, label %7745

; <label>:7678                                    ; preds = %7666
  %7679 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7680 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7681 = fmul fast float %7680, %6985
  %7682 = fmul fast float %7679, %6986
  %7683 = fadd fast float %7681, 5.000000e-01
  %7684 = call float @dx.op.unary.f32(i32 27, float %7683)  ; Round_ni(value)
  %7685 = fadd fast float %7682, 5.000000e-01
  %7686 = call float @dx.op.unary.f32(i32 27, float %7685)  ; Round_ni(value)
  %7687 = fsub fast float %7683, %7684
  %7688 = fsub fast float %7685, %7686
  %7689 = fadd fast float %7684, -5.000000e-01
  %7690 = fadd fast float %7686, -5.000000e-01
  %7691 = fmul fast float %7687, 2.000000e+00
  %7692 = fsub fast float 3.000000e+00, %7691
  %7693 = fadd fast float %7691, 1.000000e+00
  %7694 = fsub fast float 2.000000e+00, %7687
  %7695 = bitcast float %7692 to i32
  %7696 = sub nsw i32 2129859010, %7695
  %7697 = bitcast i32 %7696 to float
  %7698 = fmul fast float %7697, %7694
  %7699 = fadd fast float %7698, -1.000000e+00
  %7700 = bitcast float %7693 to i32
  %7701 = sub nsw i32 2129859010, %7700
  %7702 = bitcast i32 %7701 to float
  %7703 = fmul fast float %7702, %7687
  %7704 = fadd fast float %7703, 1.000000e+00
  %7705 = fmul fast float %7688, 2.000000e+00
  %7706 = fsub fast float 3.000000e+00, %7705
  %7707 = fadd fast float %7705, 1.000000e+00
  %7708 = fsub fast float 2.000000e+00, %7688
  %7709 = bitcast float %7706 to i32
  %7710 = sub nsw i32 2129859010, %7709
  %7711 = bitcast i32 %7710 to float
  %7712 = fmul fast float %7711, %7708
  %7713 = fadd fast float %7712, -1.000000e+00
  %7714 = bitcast float %7707 to i32
  %7715 = sub nsw i32 2129859010, %7714
  %7716 = bitcast i32 %7715 to float
  %7717 = fmul fast float %7716, %7688
  %7718 = fadd fast float %7717, 1.000000e+00
  %7719 = fadd fast float %7699, %7689
  %7720 = fmul fast float %7719, %7671
  %7721 = fadd fast float %7713, %7690
  %7722 = fmul fast float %7721, %7672
  %7723 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7720, float %7722, float undef, float undef, i32 0, i32 0, i32 undef, float %7676)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7724 = extractvalue %dx.types.ResRet.f32 %7723, 0
  %7725 = fmul fast float %7724, %7692
  %7726 = fadd fast float %7704, %7689
  %7727 = fmul fast float %7726, %7671
  %7728 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7727, float %7722, float undef, float undef, i32 0, i32 0, i32 undef, float %7676)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7729 = extractvalue %dx.types.ResRet.f32 %7728, 0
  %7730 = fmul fast float %7729, %7693
  %7731 = fadd fast float %7718, %7690
  %7732 = fmul fast float %7731, %7672
  %7733 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7720, float %7732, float undef, float undef, i32 0, i32 0, i32 undef, float %7676)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7734 = extractvalue %dx.types.ResRet.f32 %7733, 0
  %7735 = fmul fast float %7734, %7692
  %7736 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %47, float %7727, float %7732, float undef, float undef, i32 0, i32 0, i32 undef, float %7676)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7737 = extractvalue %dx.types.ResRet.f32 %7736, 0
  %7738 = fmul fast float %7737, %7693
  %7739 = fadd fast float %7738, %7735
  %7740 = fmul fast float %7739, %7707
  %7741 = fadd fast float %7730, %7725
  %7742 = fmul fast float %7741, %7706
  %7743 = fadd fast float %7742, %7740
  %7744 = fmul fast float %7743, 6.250000e-02
  br label %7830

; <label>:7745                                    ; preds = %7666
  %7746 = fmul fast float %275, 0x401921FB60000000
  %7747 = call float @dx.op.unary.f32(i32 13, float %7746)  ; Sin(value)
  %7748 = call float @dx.op.unary.f32(i32 12, float %7746)  ; Cos(value)
  %7749 = fsub fast float -0.000000e+00, %7747
  br label %7750

; <label>:7750                                    ; preds = %7799, %7745
  %7751 = phi float [ 0.000000e+00, %7745 ], [ %7794, %7799 ]
  %7752 = phi float [ 0.000000e+00, %7745 ], [ %7796, %7799 ]
  %7753 = phi i32 [ 0, %7745 ], [ %7800, %7799 ]
  %7754 = mul i32 %7753, 2
  %7755 = add i32 0, %7754
  %7756 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7755
  %7757 = load float, float* %7756, align 4
  %7758 = mul i32 %7753, 2
  %7759 = add i32 1, %7758
  %7760 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7759
  %7761 = load float, float* %7760, align 4
  %7762 = fmul fast float %7757, %7748
  %7763 = call float @dx.op.tertiary.f32(i32 46, float %7761, float %7749, float %7762)  ; FMad(a,b,c)
  %7764 = fmul fast float %7757, %7747
  %7765 = call float @dx.op.tertiary.f32(i32 46, float %7761, float %7748, float %7764)  ; FMad(a,b,c)
  %7766 = fmul fast float %7763, %7674
  %7767 = fmul fast float %7765, %7674
  %7768 = fadd fast float %7766, %6985
  %7769 = fadd fast float %7767, %6986
  %7770 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %46, float %7768, float %7769, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7771 = extractvalue %dx.types.ResRet.f32 %7770, 0
  %7772 = extractvalue %dx.types.ResRet.f32 %7770, 1
  %7773 = extractvalue %dx.types.ResRet.f32 %7770, 2
  %7774 = extractvalue %dx.types.ResRet.f32 %7770, 3
  %7775 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 0
  store float %7771, float* %7775, align 4
  %7776 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 1
  store float %7772, float* %7776, align 4
  %7777 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 2
  store float %7773, float* %7777, align 4
  %7778 = getelementptr inbounds [4 x float], [4 x float]* %103, i32 0, i32 3
  store float %7774, float* %7778, align 4
  %7779 = fsub fast float %7771, %7676
  %7780 = fcmp fast olt float %7779, 0.000000e+00
  %7781 = select i1 %7780, float 0.000000e+00, float 1.000000e+00
  %7782 = fadd fast float %7781, %7751
  %7783 = fmul fast float %7781, %7779
  %7784 = fadd fast float %7783, %7752
  br label %7785

; <label>:7785                                    ; preds = %7785, %7750
  %7786 = phi i32 [ 1, %7750 ], [ %7797, %7785 ]
  %7787 = phi float [ %7784, %7750 ], [ %7796, %7785 ]
  %7788 = phi float [ %7782, %7750 ], [ %7794, %7785 ]
  %7789 = getelementptr [4 x float], [4 x float]* %103, i32 0, i32 %7786
  %7790 = load float, float* %7789, align 4, !tbaa !116, !noalias !106
  %7791 = fsub fast float %7790, %7676
  %7792 = fcmp fast olt float %7791, 0.000000e+00
  %7793 = select i1 %7792, float 0.000000e+00, float 1.000000e+00
  %7794 = fadd fast float %7793, %7788
  %7795 = fmul fast float %7793, %7791
  %7796 = fadd fast float %7795, %7787
  %7797 = add nuw nsw i32 %7786, 1
  %7798 = icmp eq i32 %7797, 4
  br i1 %7798, label %7799, label %7785, !llvm.loop !118

; <label>:7799                                    ; preds = %7785
  %7800 = add nuw nsw i32 %7753, 1
  %7801 = icmp eq i32 %7800, 8
  br i1 %7801, label %7802, label %7750, !llvm.loop !119

; <label>:7802                                    ; preds = %7799
  %7803 = fdiv fast float 1.000000e+00, %7794
  %7804 = fmul fast float %7803, %7796
  %7805 = fdiv fast float 1.000000e+00, %7676
  %7806 = fmul fast float %7804, %7805
  %7807 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7808 = call float @dx.op.binary.f32(i32 35, float %7807, float 0.000000e+00)  ; FMax(a,b)
  %7809 = fmul fast float %7794, 3.125000e-02
  %7810 = call float @dx.op.unary.f32(i32 7, float %7809)  ; Saturate(value)
  %7811 = fmul fast float %7810, 2.000000e+00
  %7812 = fadd fast float %7811, -1.000000e+00
  %7813 = fcmp fast ogt float %7812, 0.000000e+00
  %7814 = fcmp fast olt float %7812, 0.000000e+00
  %7815 = zext i1 %7813 to i32
  %7816 = zext i1 %7814 to i32
  %7817 = sub nsw i32 %7815, %7816
  %7818 = sitofp i32 %7817 to float
  %7819 = fmul fast float %7818, %7812
  %7820 = fsub fast float 1.000000e+00, %7819
  %7821 = fmul fast float %7820, %7820
  %7822 = fmul fast float %7821, %7820
  %7823 = fsub fast float %7820, %7822
  %7824 = fmul fast float %7823, %7808
  %7825 = fsub fast float 1.000000e+00, %7822
  %7826 = fsub fast float %7825, %7824
  %7827 = fmul fast float %7818, 5.000000e-01
  %7828 = fmul fast float %7827, %7826
  %7829 = fsub fast float 5.000000e-01, %7828
  br label %7830

; <label>:7830                                    ; preds = %7802, %7678, %7663
  %7831 = phi float [ 1.000000e+00, %7663 ], [ %7744, %7678 ], [ %7829, %7802 ]
  %7832 = fcmp fast ogt float %7091, 0.000000e+00
  br i1 %7832, label %7833, label %8151, !dx.controlflow.hints !121

; <label>:7833                                    ; preds = %7830
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 0
  %7836 = fadd fast float %7835, %6975
  %7837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7838 = extractvalue %dx.types.CBufRet.f32 %7837, 2
  %7839 = extractvalue %dx.types.CBufRet.f32 %7837, 3
  %7840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7841 = extractvalue %dx.types.CBufRet.f32 %7840, 0
  %7842 = call float @dx.op.binary.f32(i32 35, float %7836, float 0.000000e+00)  ; FMax(a,b)
  %7843 = fadd fast float %7842, 0x3F10000000000000
  %7844 = fcmp fast oeq float %7841, 0.000000e+00
  br i1 %6978, label %7845, label %7998, !dx.controlflow.hints !122

; <label>:7845                                    ; preds = %7833
  br i1 %7844, label %7846, label %7913

; <label>:7846                                    ; preds = %7845
  %7847 = extractvalue %dx.types.CBufRet.f32 %7837, 1
  %7848 = extractvalue %dx.types.CBufRet.f32 %7837, 0
  %7849 = fmul fast float %7848, %6967
  %7850 = fmul fast float %7847, %6971
  %7851 = fadd fast float %7849, 5.000000e-01
  %7852 = call float @dx.op.unary.f32(i32 27, float %7851)  ; Round_ni(value)
  %7853 = fadd fast float %7850, 5.000000e-01
  %7854 = call float @dx.op.unary.f32(i32 27, float %7853)  ; Round_ni(value)
  %7855 = fsub fast float %7851, %7852
  %7856 = fsub fast float %7853, %7854
  %7857 = fadd fast float %7852, -5.000000e-01
  %7858 = fadd fast float %7854, -5.000000e-01
  %7859 = fmul fast float %7855, 2.000000e+00
  %7860 = fsub fast float 3.000000e+00, %7859
  %7861 = fadd fast float %7859, 1.000000e+00
  %7862 = fsub fast float 2.000000e+00, %7855
  %7863 = bitcast float %7860 to i32
  %7864 = sub nsw i32 2129859010, %7863
  %7865 = bitcast i32 %7864 to float
  %7866 = fmul fast float %7865, %7862
  %7867 = fadd fast float %7866, -1.000000e+00
  %7868 = bitcast float %7861 to i32
  %7869 = sub nsw i32 2129859010, %7868
  %7870 = bitcast i32 %7869 to float
  %7871 = fmul fast float %7870, %7855
  %7872 = fadd fast float %7871, 1.000000e+00
  %7873 = fmul fast float %7856, 2.000000e+00
  %7874 = fsub fast float 3.000000e+00, %7873
  %7875 = fadd fast float %7873, 1.000000e+00
  %7876 = fsub fast float 2.000000e+00, %7856
  %7877 = bitcast float %7874 to i32
  %7878 = sub nsw i32 2129859010, %7877
  %7879 = bitcast i32 %7878 to float
  %7880 = fmul fast float %7879, %7876
  %7881 = fadd fast float %7880, -1.000000e+00
  %7882 = bitcast float %7875 to i32
  %7883 = sub nsw i32 2129859010, %7882
  %7884 = bitcast i32 %7883 to float
  %7885 = fmul fast float %7884, %7856
  %7886 = fadd fast float %7885, 1.000000e+00
  %7887 = fadd fast float %7867, %7857
  %7888 = fmul fast float %7887, %7838
  %7889 = fadd fast float %7881, %7858
  %7890 = fmul fast float %7889, %7839
  %7891 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7888, float %7890, float undef, float undef, i32 0, i32 0, i32 undef, float %7843)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7892 = extractvalue %dx.types.ResRet.f32 %7891, 0
  %7893 = fmul fast float %7892, %7860
  %7894 = fadd fast float %7872, %7857
  %7895 = fmul fast float %7894, %7838
  %7896 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7895, float %7890, float undef, float undef, i32 0, i32 0, i32 undef, float %7843)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7897 = extractvalue %dx.types.ResRet.f32 %7896, 0
  %7898 = fmul fast float %7897, %7861
  %7899 = fadd fast float %7886, %7858
  %7900 = fmul fast float %7899, %7839
  %7901 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7888, float %7900, float undef, float undef, i32 0, i32 0, i32 undef, float %7843)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7902 = extractvalue %dx.types.ResRet.f32 %7901, 0
  %7903 = fmul fast float %7902, %7860
  %7904 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %47, float %7895, float %7900, float undef, float undef, i32 0, i32 0, i32 undef, float %7843)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7905 = extractvalue %dx.types.ResRet.f32 %7904, 0
  %7906 = fmul fast float %7905, %7861
  %7907 = fadd fast float %7906, %7903
  %7908 = fmul fast float %7907, %7875
  %7909 = fadd fast float %7898, %7893
  %7910 = fmul fast float %7909, %7874
  %7911 = fadd fast float %7910, %7908
  %7912 = fmul fast float %7911, 6.250000e-02
  br label %8151

; <label>:7913                                    ; preds = %7845
  %7914 = fmul fast float %275, 0x401921FB60000000
  %7915 = call float @dx.op.unary.f32(i32 13, float %7914)  ; Sin(value)
  %7916 = call float @dx.op.unary.f32(i32 12, float %7914)  ; Cos(value)
  %7917 = fsub fast float -0.000000e+00, %7915
  br label %7918

; <label>:7918                                    ; preds = %7967, %7913
  %7919 = phi float [ 0.000000e+00, %7913 ], [ %7962, %7967 ]
  %7920 = phi float [ 0.000000e+00, %7913 ], [ %7964, %7967 ]
  %7921 = phi i32 [ 0, %7913 ], [ %7968, %7967 ]
  %7922 = mul i32 %7921, 2
  %7923 = add i32 0, %7922
  %7924 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7923
  %7925 = load float, float* %7924, align 4
  %7926 = mul i32 %7921, 2
  %7927 = add i32 1, %7926
  %7928 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7927
  %7929 = load float, float* %7928, align 4
  %7930 = fmul fast float %7925, %7916
  %7931 = call float @dx.op.tertiary.f32(i32 46, float %7929, float %7917, float %7930)  ; FMad(a,b,c)
  %7932 = fmul fast float %7925, %7915
  %7933 = call float @dx.op.tertiary.f32(i32 46, float %7929, float %7916, float %7932)  ; FMad(a,b,c)
  %7934 = fmul fast float %7931, %7841
  %7935 = fmul fast float %7933, %7841
  %7936 = fadd fast float %7934, %6967
  %7937 = fadd fast float %7935, %6971
  %7938 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %46, float %7936, float %7937, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7939 = extractvalue %dx.types.ResRet.f32 %7938, 0
  %7940 = extractvalue %dx.types.ResRet.f32 %7938, 1
  %7941 = extractvalue %dx.types.ResRet.f32 %7938, 2
  %7942 = extractvalue %dx.types.ResRet.f32 %7938, 3
  %7943 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7939, float* %7943, align 4
  %7944 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7940, float* %7944, align 4
  %7945 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7941, float* %7945, align 4
  %7946 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7942, float* %7946, align 4
  %7947 = fsub fast float %7939, %7843
  %7948 = fcmp fast olt float %7947, 0.000000e+00
  %7949 = select i1 %7948, float 0.000000e+00, float 1.000000e+00
  %7950 = fadd fast float %7949, %7919
  %7951 = fmul fast float %7949, %7947
  %7952 = fadd fast float %7951, %7920
  br label %7953

; <label>:7953                                    ; preds = %7953, %7918
  %7954 = phi i32 [ 1, %7918 ], [ %7965, %7953 ]
  %7955 = phi float [ %7952, %7918 ], [ %7964, %7953 ]
  %7956 = phi float [ %7950, %7918 ], [ %7962, %7953 ]
  %7957 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7954
  %7958 = load float, float* %7957, align 4, !tbaa !116, !noalias !106
  %7959 = fsub fast float %7958, %7843
  %7960 = fcmp fast olt float %7959, 0.000000e+00
  %7961 = select i1 %7960, float 0.000000e+00, float 1.000000e+00
  %7962 = fadd fast float %7961, %7956
  %7963 = fmul fast float %7961, %7959
  %7964 = fadd fast float %7963, %7955
  %7965 = add nuw nsw i32 %7954, 1
  %7966 = icmp eq i32 %7965, 4
  br i1 %7966, label %7967, label %7953, !llvm.loop !118

; <label>:7967                                    ; preds = %7953
  %7968 = add nuw nsw i32 %7921, 1
  %7969 = icmp eq i32 %7968, 8
  br i1 %7969, label %7970, label %7918, !llvm.loop !119

; <label>:7970                                    ; preds = %7967
  %7971 = fdiv fast float 1.000000e+00, %7962
  %7972 = fmul fast float %7971, %7964
  %7973 = fdiv fast float 1.000000e+00, %7843
  %7974 = fmul fast float %7972, %7973
  %7975 = call float @dx.op.unary.f32(i32 7, float %7974)  ; Saturate(value)
  %7976 = call float @dx.op.binary.f32(i32 35, float %7975, float 0.000000e+00)  ; FMax(a,b)
  %7977 = fmul fast float %7962, 3.125000e-02
  %7978 = call float @dx.op.unary.f32(i32 7, float %7977)  ; Saturate(value)
  %7979 = fmul fast float %7978, 2.000000e+00
  %7980 = fadd fast float %7979, -1.000000e+00
  %7981 = fcmp fast ogt float %7980, 0.000000e+00
  %7982 = fcmp fast olt float %7980, 0.000000e+00
  %7983 = zext i1 %7981 to i32
  %7984 = zext i1 %7982 to i32
  %7985 = sub nsw i32 %7983, %7984
  %7986 = sitofp i32 %7985 to float
  %7987 = fmul fast float %7986, %7980
  %7988 = fsub fast float 1.000000e+00, %7987
  %7989 = fmul fast float %7988, %7988
  %7990 = fmul fast float %7989, %7988
  %7991 = fsub fast float %7988, %7990
  %7992 = fmul fast float %7991, %7976
  %7993 = fsub fast float 1.000000e+00, %7990
  %7994 = fsub fast float %7993, %7992
  %7995 = fmul fast float %7986, 5.000000e-01
  %7996 = fmul fast float %7995, %7994
  %7997 = fsub fast float 5.000000e-01, %7996
  br label %8151

; <label>:7998                                    ; preds = %7833
  br i1 %7844, label %7999, label %8066

; <label>:7999                                    ; preds = %7998
  %8000 = extractvalue %dx.types.CBufRet.f32 %7837, 1
  %8001 = extractvalue %dx.types.CBufRet.f32 %7837, 0
  %8002 = fmul fast float %8001, %6967
  %8003 = fmul fast float %8000, %6971
  %8004 = fadd fast float %8002, 5.000000e-01
  %8005 = call float @dx.op.unary.f32(i32 27, float %8004)  ; Round_ni(value)
  %8006 = fadd fast float %8003, 5.000000e-01
  %8007 = call float @dx.op.unary.f32(i32 27, float %8006)  ; Round_ni(value)
  %8008 = fsub fast float %8004, %8005
  %8009 = fsub fast float %8006, %8007
  %8010 = fadd fast float %8005, -5.000000e-01
  %8011 = fadd fast float %8007, -5.000000e-01
  %8012 = fmul fast float %8008, 2.000000e+00
  %8013 = fsub fast float 3.000000e+00, %8012
  %8014 = fadd fast float %8012, 1.000000e+00
  %8015 = fsub fast float 2.000000e+00, %8008
  %8016 = bitcast float %8013 to i32
  %8017 = sub nsw i32 2129859010, %8016
  %8018 = bitcast i32 %8017 to float
  %8019 = fmul fast float %8018, %8015
  %8020 = fadd fast float %8019, -1.000000e+00
  %8021 = bitcast float %8014 to i32
  %8022 = sub nsw i32 2129859010, %8021
  %8023 = bitcast i32 %8022 to float
  %8024 = fmul fast float %8023, %8008
  %8025 = fadd fast float %8024, 1.000000e+00
  %8026 = fmul fast float %8009, 2.000000e+00
  %8027 = fsub fast float 3.000000e+00, %8026
  %8028 = fadd fast float %8026, 1.000000e+00
  %8029 = fsub fast float 2.000000e+00, %8009
  %8030 = bitcast float %8027 to i32
  %8031 = sub nsw i32 2129859010, %8030
  %8032 = bitcast i32 %8031 to float
  %8033 = fmul fast float %8032, %8029
  %8034 = fadd fast float %8033, -1.000000e+00
  %8035 = bitcast float %8028 to i32
  %8036 = sub nsw i32 2129859010, %8035
  %8037 = bitcast i32 %8036 to float
  %8038 = fmul fast float %8037, %8009
  %8039 = fadd fast float %8038, 1.000000e+00
  %8040 = fadd fast float %8020, %8010
  %8041 = fmul fast float %8040, %7838
  %8042 = fadd fast float %8034, %8011
  %8043 = fmul fast float %8042, %7839
  %8044 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8041, float %8043, float undef, float undef, i32 0, i32 0, i32 undef, float %7843)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8045 = extractvalue %dx.types.ResRet.f32 %8044, 0
  %8046 = fmul fast float %8045, %8013
  %8047 = fadd fast float %8025, %8010
  %8048 = fmul fast float %8047, %7838
  %8049 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8048, float %8043, float undef, float undef, i32 0, i32 0, i32 undef, float %7843)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8050 = extractvalue %dx.types.ResRet.f32 %8049, 0
  %8051 = fmul fast float %8050, %8014
  %8052 = fadd fast float %8039, %8011
  %8053 = fmul fast float %8052, %7839
  %8054 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8041, float %8053, float undef, float undef, i32 0, i32 0, i32 undef, float %7843)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8055 = extractvalue %dx.types.ResRet.f32 %8054, 0
  %8056 = fmul fast float %8055, %8013
  %8057 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %47, float %8048, float %8053, float undef, float undef, i32 0, i32 0, i32 undef, float %7843)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %8058 = extractvalue %dx.types.ResRet.f32 %8057, 0
  %8059 = fmul fast float %8058, %8014
  %8060 = fadd fast float %8059, %8056
  %8061 = fmul fast float %8060, %8028
  %8062 = fadd fast float %8051, %8046
  %8063 = fmul fast float %8062, %8027
  %8064 = fadd fast float %8063, %8061
  %8065 = fmul fast float %8064, 6.250000e-02
  br label %8151

; <label>:8066                                    ; preds = %7998
  %8067 = fmul fast float %275, 0x401921FB60000000
  %8068 = call float @dx.op.unary.f32(i32 13, float %8067)  ; Sin(value)
  %8069 = call float @dx.op.unary.f32(i32 12, float %8067)  ; Cos(value)
  %8070 = fsub fast float -0.000000e+00, %8068
  br label %8071

; <label>:8071                                    ; preds = %8120, %8066
  %8072 = phi float [ 0.000000e+00, %8066 ], [ %8115, %8120 ]
  %8073 = phi float [ 0.000000e+00, %8066 ], [ %8117, %8120 ]
  %8074 = phi i32 [ 0, %8066 ], [ %8121, %8120 ]
  %8075 = mul i32 %8074, 2
  %8076 = add i32 0, %8075
  %8077 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8076
  %8078 = load float, float* %8077, align 4
  %8079 = mul i32 %8074, 2
  %8080 = add i32 1, %8079
  %8081 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8080
  %8082 = load float, float* %8081, align 4
  %8083 = fmul fast float %8078, %8069
  %8084 = call float @dx.op.tertiary.f32(i32 46, float %8082, float %8070, float %8083)  ; FMad(a,b,c)
  %8085 = fmul fast float %8078, %8068
  %8086 = call float @dx.op.tertiary.f32(i32 46, float %8082, float %8069, float %8085)  ; FMad(a,b,c)
  %8087 = fmul fast float %8084, %7841
  %8088 = fmul fast float %8086, %7841
  %8089 = fadd fast float %8087, %6967
  %8090 = fadd fast float %8088, %6971
  %8091 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %46, float %8089, float %8090, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8092 = extractvalue %dx.types.ResRet.f32 %8091, 0
  %8093 = extractvalue %dx.types.ResRet.f32 %8091, 1
  %8094 = extractvalue %dx.types.ResRet.f32 %8091, 2
  %8095 = extractvalue %dx.types.ResRet.f32 %8091, 3
  %8096 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %8092, float* %8096, align 4
  %8097 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %8093, float* %8097, align 4
  %8098 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %8094, float* %8098, align 4
  %8099 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %8095, float* %8099, align 4
  %8100 = fsub fast float %8092, %7843
  %8101 = fcmp fast olt float %8100, 0.000000e+00
  %8102 = select i1 %8101, float 0.000000e+00, float 1.000000e+00
  %8103 = fadd fast float %8102, %8072
  %8104 = fmul fast float %8102, %8100
  %8105 = fadd fast float %8104, %8073
  br label %8106

; <label>:8106                                    ; preds = %8106, %8071
  %8107 = phi i32 [ 1, %8071 ], [ %8118, %8106 ]
  %8108 = phi float [ %8105, %8071 ], [ %8117, %8106 ]
  %8109 = phi float [ %8103, %8071 ], [ %8115, %8106 ]
  %8110 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %8107
  %8111 = load float, float* %8110, align 4, !tbaa !116, !noalias !106
  %8112 = fsub fast float %8111, %7843
  %8113 = fcmp fast olt float %8112, 0.000000e+00
  %8114 = select i1 %8113, float 0.000000e+00, float 1.000000e+00
  %8115 = fadd fast float %8114, %8109
  %8116 = fmul fast float %8114, %8112
  %8117 = fadd fast float %8116, %8108
  %8118 = add nuw nsw i32 %8107, 1
  %8119 = icmp eq i32 %8118, 4
  br i1 %8119, label %8120, label %8106, !llvm.loop !118

; <label>:8120                                    ; preds = %8106
  %8121 = add nuw nsw i32 %8074, 1
  %8122 = icmp eq i32 %8121, 8
  br i1 %8122, label %8123, label %8071, !llvm.loop !119

; <label>:8123                                    ; preds = %8120
  %8124 = fdiv fast float 1.000000e+00, %8115
  %8125 = fmul fast float %8124, %8117
  %8126 = fdiv fast float 1.000000e+00, %7843
  %8127 = fmul fast float %8125, %8126
  %8128 = call float @dx.op.unary.f32(i32 7, float %8127)  ; Saturate(value)
  %8129 = call float @dx.op.binary.f32(i32 35, float %8128, float 0.000000e+00)  ; FMax(a,b)
  %8130 = fmul fast float %8115, 3.125000e-02
  %8131 = call float @dx.op.unary.f32(i32 7, float %8130)  ; Saturate(value)
  %8132 = fmul fast float %8131, 2.000000e+00
  %8133 = fadd fast float %8132, -1.000000e+00
  %8134 = fcmp fast ogt float %8133, 0.000000e+00
  %8135 = fcmp fast olt float %8133, 0.000000e+00
  %8136 = zext i1 %8134 to i32
  %8137 = zext i1 %8135 to i32
  %8138 = sub nsw i32 %8136, %8137
  %8139 = sitofp i32 %8138 to float
  %8140 = fmul fast float %8139, %8133
  %8141 = fsub fast float 1.000000e+00, %8140
  %8142 = fmul fast float %8141, %8141
  %8143 = fmul fast float %8142, %8141
  %8144 = fsub fast float %8141, %8143
  %8145 = fmul fast float %8144, %8129
  %8146 = fsub fast float 1.000000e+00, %8143
  %8147 = fsub fast float %8146, %8145
  %8148 = fmul fast float %8139, 5.000000e-01
  %8149 = fmul fast float %8148, %8147
  %8150 = fsub fast float 5.000000e-01, %8149
  br label %8151

; <label>:8151                                    ; preds = %8123, %7999, %7970, %7846, %7830
  %8152 = phi float [ 1.000000e+00, %7830 ], [ %7912, %7846 ], [ %7997, %7970 ], [ %8065, %7999 ], [ %8150, %8123 ]
  %8153 = fsub fast float %7664, %7497
  %8154 = fmul fast float %8153, %7064
  %8155 = fadd fast float %8154, %7497
  %8156 = fsub fast float %7831, %8155
  %8157 = fmul fast float %8156, %7063
  %8158 = fadd fast float %8157, %8155
  %8159 = fsub fast float %8152, %8158
  %8160 = fmul fast float %8159, %7091
  %8161 = fadd fast float %8160, %8158
  %8162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8163 = extractvalue %dx.types.CBufRet.f32 %8162, 2
  %8164 = fcmp fast ogt float %8163, 0.000000e+00
  br i1 %8164, label %8165, label %8205, !dx.controlflow.hints !123

; <label>:8165                                    ; preds = %8151
  %8166 = fcmp fast ugt float %8163, 0.000000e+00
  br i1 %8166, label %8167, label %8202

; <label>:8167                                    ; preds = %8165
  %8168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8169 = extractvalue %dx.types.CBufRet.f32 %8168, 0
  %8170 = extractvalue %dx.types.CBufRet.f32 %8168, 1
  %8171 = extractvalue %dx.types.CBufRet.f32 %8168, 2
  %8172 = extractvalue %dx.types.CBufRet.f32 %8168, 3
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 0
  %8175 = extractvalue %dx.types.CBufRet.f32 %8173, 1
  %8176 = extractvalue %dx.types.CBufRet.f32 %8173, 2
  %8177 = extractvalue %dx.types.CBufRet.f32 %8173, 3
  %8178 = extractvalue %dx.types.CBufRet.f32 %8162, 0
  %8179 = extractvalue %dx.types.CBufRet.f32 %8162, 1
  %8180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8181 = extractvalue %dx.types.CBufRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.CBufRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.CBufRet.f32 %8180, 2
  %8184 = fadd fast float %8181, %6944
  %8185 = fadd fast float %8182, %6945
  %8186 = fadd fast float %8183, %6946
  %8187 = fmul fast float %8184, %8169
  %8188 = call float @dx.op.tertiary.f32(i32 46, float %8170, float %8185, float %8187)  ; FMad(a,b,c)
  %8189 = call float @dx.op.tertiary.f32(i32 46, float %8171, float %8186, float %8188)  ; FMad(a,b,c)
  %8190 = fadd fast float %8189, %8172
  %8191 = fmul fast float %8184, %8174
  %8192 = call float @dx.op.tertiary.f32(i32 46, float %8175, float %8185, float %8191)  ; FMad(a,b,c)
  %8193 = call float @dx.op.tertiary.f32(i32 46, float %8176, float %8186, float %8192)  ; FMad(a,b,c)
  %8194 = fadd fast float %8193, %8177
  %8195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %42, float %8190, float %8194, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8196 = extractvalue %dx.types.ResRet.f32 %8195, 0
  %8197 = fmul fast float %8196, %8179
  %8198 = fadd fast float %8197, %8178
  %8199 = call float @dx.op.unary.f32(i32 7, float %8198)  ; Saturate(value)
  %8200 = fmul fast float %8199, %8163
  %8201 = fsub fast float 1.000000e+00, %8200
  br label %8202

; <label>:8202                                    ; preds = %8167, %8165
  %8203 = phi float [ %8201, %8167 ], [ 1.000000e+00, %8165 ]
  %8204 = fmul fast float %8203, %8161
  br label %8205

; <label>:8205                                    ; preds = %8202, %8151, %6924
  %8206 = phi float [ 1.000000e+00, %6924 ], [ %8204, %8202 ], [ %8161, %8151 ]
  %8207 = call float @dx.op.binary.f32(i32 36, float %8206, float %8206)  ; FMin(a,b)
  %8208 = call float @dx.op.binary.f32(i32 36, float %8206, float %8207)  ; FMin(a,b)
  %8209 = fcmp fast ogt float %8208, 0.000000e+00
  br i1 %8209, label %8210, label %8376, !dx.controlflow.hints !124

; <label>:8210                                    ; preds = %8205
  %8211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8212 = extractvalue %dx.types.CBufRet.f32 %8211, 0
  %8213 = extractvalue %dx.types.CBufRet.f32 %8211, 1
  %8214 = extractvalue %dx.types.CBufRet.f32 %8211, 2
  %8215 = extractvalue %dx.types.CBufRet.f32 %8211, 3
  %8216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8217 = extractvalue %dx.types.CBufRet.f32 %8216, 0
  %8218 = extractvalue %dx.types.CBufRet.f32 %8216, 1
  %8219 = extractvalue %dx.types.CBufRet.f32 %8216, 2
  %8220 = extractvalue %dx.types.CBufRet.f32 %8216, 3
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8223 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8224 = extractvalue %dx.types.CBufRet.f32 %8221, 2
  %8225 = extractvalue %dx.types.CBufRet.f32 %8221, 3
  %8226 = fmul fast float %8212, %6944
  %8227 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %8213, float %8226)  ; FMad(a,b,c)
  %8228 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %8214, float %8227)  ; FMad(a,b,c)
  %8229 = fadd fast float %8228, %8215
  %8230 = fmul fast float %8217, %6944
  %8231 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %8218, float %8230)  ; FMad(a,b,c)
  %8232 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %8219, float %8231)  ; FMad(a,b,c)
  %8233 = fadd fast float %8232, %8220
  %8234 = fmul fast float %8222, %6944
  %8235 = call float @dx.op.tertiary.f32(i32 46, float %6945, float %8223, float %8234)  ; FMad(a,b,c)
  %8236 = call float @dx.op.tertiary.f32(i32 46, float %6946, float %8224, float %8235)  ; FMad(a,b,c)
  %8237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8238 = extractvalue %dx.types.CBufRet.f32 %8237, 0
  %8239 = extractvalue %dx.types.CBufRet.f32 %8237, 1
  %8240 = extractvalue %dx.types.CBufRet.f32 %8237, 3
  %8241 = fmul fast float %8240, %8229
  %8242 = fmul fast float %8240, %8233
  %8243 = fadd fast float %8241, %8238
  %8244 = fadd fast float %8242, %8239
  %8245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8246 = extractvalue %dx.types.CBufRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.CBufRet.f32 %8245, 1
  %8248 = fsub fast float %8243, %8246
  %8249 = fsub fast float %8244, %8247
  %8250 = fcmp fast olt float %8248, 0.000000e+00
  %8251 = fcmp fast olt float %8249, 0.000000e+00
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 0
  %8254 = extractvalue %dx.types.CBufRet.f32 %8252, 1
  %8255 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8256 = extractvalue %dx.types.CBufRet.f32 %8252, 3
  %8257 = select i1 %8250, float %8253, float %8255
  %8258 = select i1 %8251, float %8254, float %8256
  %8259 = fmul fast float %8257, %8248
  %8260 = fmul fast float %8258, %8249
  %8261 = call float @dx.op.unary.f32(i32 6, float %8259)  ; FAbs(value)
  %8262 = call float @dx.op.unary.f32(i32 6, float %8260)  ; FAbs(value)
  %8263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8263, 0
  %8265 = call float @dx.op.binary.f32(i32 35, float %8261, float %8262)  ; FMax(a,b)
  %8266 = fsub fast float %8264, %8265
  %8267 = call float @dx.op.unary.f32(i32 7, float %8266)  ; Saturate(value)
  %8268 = fcmp fast ogt float %8267, 0.000000e+00
  br i1 %8268, label %8269, label %8310, !dx.controlflow.hints !125

; <label>:8269                                    ; preds = %8210
  %8270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %8243, float %8244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8271 = extractvalue %dx.types.ResRet.f32 %8270, 1
  %8272 = fcmp fast ogt float %8271, 0.000000e+00
  br i1 %8272, label %8273, label %8305

; <label>:8273                                    ; preds = %8269
  %8274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %45, float %8243, float %8244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8275 = extractvalue %dx.types.ResRet.f32 %8274, 0
  %8276 = extractvalue %dx.types.ResRet.f32 %8274, 1
  %8277 = extractvalue %dx.types.ResRet.f32 %8274, 2
  %8278 = extractvalue %dx.types.ResRet.f32 %8274, 3
  %8279 = fsub fast float 1.000000e+00, %8225
  %8280 = fsub fast float %8279, %8236
  %8281 = fmul fast float %8280, 0x400921FB60000000
  %8282 = fadd fast float %8281, 0x3FF921FB60000000
  %8283 = call float @dx.op.unary.f32(i32 13, float %8282)  ; Sin(value)
  %8284 = fadd fast float %8283, -1.000000e+00
  %8285 = fmul fast float %8284, 0x3FD45F3060000000
  %8286 = fmul fast float %8280, 0x401921FB60000000
  %8287 = fadd fast float %8286, 0x400921FB60000000
  %8288 = call float @dx.op.unary.f32(i32 13, float %8287)  ; Sin(value)
  %8289 = fadd fast float %8288, 0x3E7777A5C0000000
  %8290 = fmul fast float %8289, 0x3FC45F3060000000
  %8291 = fmul fast float %8280, 0x4022D97C80000000
  %8292 = fadd fast float %8291, 0x4012D97C80000000
  %8293 = call float @dx.op.unary.f32(i32 13, float %8292)  ; Sin(value)
  %8294 = fadd fast float %8293, 1.000000e+00
  %8295 = fmul fast float %8294, 0x3FBB2995E0000000
  %8296 = fmul fast float %8280, 0x402921FB60000000
  %8297 = fadd fast float %8296, 0x401921FB60000000
  %8298 = call float @dx.op.unary.f32(i32 13, float %8297)  ; Sin(value)
  %8299 = fadd fast float %8298, 0xBE8777A5C0000000
  %8300 = fmul fast float %8299, 0x3FB45F3060000000
  %8301 = call float @dx.op.dot4.f32(i32 56, float %8275, float %8276, float %8277, float %8278, float %8285, float %8290, float %8295, float %8300)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8302 = fmul fast float %8301, 0xBFF7154760000000
  %8303 = call float @dx.op.unary.f32(i32 21, float %8302)  ; Exp(value)
  %8304 = call float @dx.op.unary.f32(i32 7, float %8303)  ; Saturate(value)
  br label %8305

; <label>:8305                                    ; preds = %8273, %8269
  %8306 = phi float [ %8304, %8273 ], [ 1.000000e+00, %8269 ]
  %8307 = fadd fast float %8306, -1.000000e+00
  %8308 = fmul fast float %8307, %8267
  %8309 = fadd fast float %8308, 1.000000e+00
  br label %8310

; <label>:8310                                    ; preds = %8305, %8210
  %8311 = phi float [ %8309, %8305 ], [ 1.000000e+00, %8210 ]
  %8312 = fmul fast float %8311, %8206
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8316 = extractvalue %dx.types.CBufRet.f32 %8313, 2
  %8317 = fadd fast float %8314, %190
  %8318 = fadd fast float %8315, %191
  %8319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8320 = extractvalue %dx.types.CBufRet.f32 %8319, 1
  %8321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8322 = extractvalue %dx.types.CBufRet.f32 %8321, 0
  %8323 = extractvalue %dx.types.CBufRet.f32 %8321, 1
  %8324 = extractvalue %dx.types.CBufRet.f32 %8321, 2
  %8325 = fsub fast float -0.000000e+00, %8317
  %8326 = fsub fast float -0.000000e+00, %8318
  %8327 = fsub fast float -0.000000e+00, %192
  %8328 = fsub fast float %8327, %8316
  %8329 = fadd fast float %8328, %8320
  %8330 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8325, float %8326, float %8329)  ; Dot3(ax,ay,az,bx,by,bz)
  %8331 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8322, float %8323, float %8324)  ; Dot3(ax,ay,az,bx,by,bz)
  %8332 = fdiv fast float 1.000000e+00, %8331
  %8333 = fmul fast float %8332, %8330
  %8334 = fmul fast float %8322, %8333
  %8335 = fmul fast float %8323, %8333
  %8336 = fadd fast float %8334, %8317
  %8337 = fadd fast float %8335, %8318
  %8338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8339 = extractvalue %dx.types.CBufRet.f32 %8338, 0
  %8340 = extractvalue %dx.types.CBufRet.f32 %8338, 1
  %8341 = fsub fast float %8336, %8339
  %8342 = fsub fast float %8337, %8340
  %8343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8344 = extractvalue %dx.types.CBufRet.f32 %8343, 2
  %8345 = extractvalue %dx.types.CBufRet.f32 %8343, 3
  %8346 = fmul fast float %8341, %8344
  %8347 = fmul fast float %8342, %8345
  %8348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8349 = extractvalue %dx.types.CBufRet.i32 %8348, 3
  %8350 = icmp eq i32 %8349, 0
  br i1 %8350, label %8356, label %8351

; <label>:8351                                    ; preds = %8310
  %8352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %8346, float %8347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8353 = extractvalue %dx.types.ResRet.f32 %8352, 0
  %8354 = extractvalue %dx.types.ResRet.f32 %8352, 1
  %8355 = extractvalue %dx.types.ResRet.f32 %8352, 2
  br label %8361

; <label>:8356                                    ; preds = %8310
  %8357 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %45, float %8346, float %8347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8358 = extractvalue %dx.types.ResRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.ResRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.ResRet.f32 %8357, 2
  br label %8361

; <label>:8361                                    ; preds = %8356, %8351
  %8362 = phi float [ %8353, %8351 ], [ %8358, %8356 ]
  %8363 = phi float [ %8354, %8351 ], [ %8359, %8356 ]
  %8364 = phi float [ %8355, %8351 ], [ %8360, %8356 ]
  %8365 = extractvalue %dx.types.CBufRet.f32 %8319, 2
  %8366 = fmul fast float %8365, %8362
  %8367 = extractvalue %dx.types.CBufRet.f32 %8319, 0
  %8368 = fsub fast float %8333, %8367
  %8369 = fsub fast float %8368, %8366
  %8370 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8369)  ; FMax(a,b)
  %8371 = fmul fast float %8370, %8363
  %8372 = call float @dx.op.binary.f32(i32 36, float %8364, float %8371)  ; FMin(a,b)
  %8373 = fmul fast float %8372, 0xBFF7154760000000
  %8374 = call float @dx.op.unary.f32(i32 21, float %8373)  ; Exp(value)
  %8375 = fmul fast float %8312, %8374
  br label %8376

; <label>:8376                                    ; preds = %8361, %8205
  %8377 = phi float [ %8375, %8361 ], [ %8206, %8205 ]
  %8378 = call float @dx.op.binary.f32(i32 36, float %8377, float %8377)  ; FMin(a,b)
  %8379 = call float @dx.op.binary.f32(i32 36, float %8377, float %8378)  ; FMin(a,b)
  %8380 = fcmp fast ogt float %8379, 0.000000e+00
  br i1 %8380, label %8381, label %8688, !dx.controlflow.hints !126

; <label>:8381                                    ; preds = %8376
  %8382 = fmul fast float %8377, %6936
  %8383 = fmul fast float %8377, %6937
  %8384 = fmul fast float %8377, %6938
  %8385 = fsub fast float %6925, %6007
  %8386 = fsub fast float %6926, %6006
  %8387 = fsub fast float %6927, %6005
  %8388 = call float @dx.op.dot3.f32(i32 55, float %8385, float %8386, float %8387, float %8385, float %8386, float %8387)  ; Dot3(ax,ay,az,bx,by,bz)
  %8389 = call float @dx.op.unary.f32(i32 25, float %8388)  ; Rsqrt(value)
  %8390 = fmul fast float %8389, %8385
  %8391 = fmul fast float %8389, %8386
  %8392 = fmul fast float %8389, %8387
  %8393 = call float @dx.op.dot3.f32(i32 55, float %6925, float %6926, float %6927, float %6014, float %6015, float %6016)  ; Dot3(ax,ay,az,bx,by,bz)
  %8394 = call float @dx.op.dot3.f32(i32 55, float %6004, float %6003, float %6002, float %8390, float %8391, float %8392)  ; Dot3(ax,ay,az,bx,by,bz)
  %8395 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8396 = fmul fast float %8395, %8395
  %8397 = fmul fast float %8396, %6046
  %8398 = call float @dx.op.unary.f32(i32 7, float %8397)  ; Saturate(value)
  %8399 = fmul fast float %8398, %8395
  %8400 = call float @dx.op.dot3.f32(i32 55, float %6014, float %6015, float %6016, float %8390, float %8391, float %8392)  ; Dot3(ax,ay,az,bx,by,bz)
  %8401 = fmul fast float %8400, %8400
  %8402 = call float @dx.op.unary.f32(i32 6, float %8393)  ; FAbs(value)
  %8403 = fsub fast float 1.000000e+00, %6039
  %8404 = fmul fast float %6021, %6021
  %8405 = fmul fast float %8404, %8403
  %8406 = fadd fast float %8405, %6039
  %8407 = bitcast float %8406 to i32
  %8408 = ashr i32 %8407, 1
  %8409 = add nsw i32 %8408, 532487669
  %8410 = bitcast i32 %8409 to float
  %8411 = fadd fast float %8410, %6021
  %8412 = fmul fast float %6039, %8401
  %8413 = fsub fast float 1.000000e+00, %8401
  %8414 = fadd fast float %8413, %8412
  %8415 = fmul fast float %8402, %8402
  %8416 = fmul fast float %8415, %8403
  %8417 = fadd fast float %8416, %6039
  %8418 = bitcast float %8417 to i32
  %8419 = ashr i32 %8418, 1
  %8420 = add nsw i32 %8419, 532487669
  %8421 = bitcast i32 %8420 to float
  %8422 = fadd fast float %8421, %8402
  %8423 = fmul fast float %8414, %8414
  %8424 = fmul fast float %8423, %8411
  %8425 = fmul fast float %8424, %8422
  %8426 = fdiv fast float 0x3FF0A00000000000, %8425
  %8427 = fmul fast float %8426, %6039
  %8428 = fmul fast float %6292, 0x3FF9999980000000
  %8429 = fsub fast float 5.000000e+00, %8428
  %8430 = call float @dx.op.unary.f32(i32 6, float %8394)  ; FAbs(value)
  %8431 = fsub fast float 1.000000e+00, %8430
  %8432 = fmul fast float %6292, 0x41D9660740000000
  %8433 = fadd fast float %8432, 0xC1EFBF8940000000
  %8434 = bitcast float %8431 to i32
  %8435 = sitofp i32 %8434 to float
  %8436 = fmul fast float %8435, %8429
  %8437 = fadd fast float %8433, %8436
  %8438 = fptosi float %8437 to i32
  %8439 = bitcast i32 %8438 to float
  %8440 = fsub fast float 1.000000e+00, %6011
  %8441 = fsub fast float 1.000000e+00, %6012
  %8442 = fsub fast float 1.000000e+00, %6019
  %8443 = fmul fast float %8439, %8440
  %8444 = fmul fast float %8439, %8441
  %8445 = fmul fast float %8439, %8442
  %8446 = fadd fast float %8443, %6011
  %8447 = fadd fast float %8444, %6012
  %8448 = fadd fast float %8445, %6019
  br i1 %6315, label %8449, label %8472

; <label>:8449                                    ; preds = %8381
  %8450 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4701, float %8430, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8451 = extractvalue %dx.types.ResRet.f32 %8450, 0
  %8452 = extractvalue %dx.types.ResRet.f32 %8450, 1
  %8453 = extractvalue %dx.types.ResRet.f32 %8450, 2
  %8454 = fadd fast float %8451, -5.000000e-01
  %8455 = fadd fast float %8452, -5.000000e-01
  %8456 = fadd fast float %8453, -5.000000e-01
  %8457 = fmul fast float %6011, 4.000000e+00
  %8458 = fmul fast float %8457, %8440
  %8459 = fmul fast float %8458, %8454
  %8460 = fmul fast float %6012, 4.000000e+00
  %8461 = fmul fast float %8460, %8441
  %8462 = fmul fast float %8461, %8455
  %8463 = fmul fast float %6019, 4.000000e+00
  %8464 = fmul fast float %8463, %8442
  %8465 = fmul fast float %8464, %8456
  %8466 = fadd fast float %8459, %8446
  %8467 = fadd fast float %8462, %8447
  %8468 = fadd fast float %8465, %8448
  %8469 = call float @dx.op.unary.f32(i32 7, float %8466)  ; Saturate(value)
  %8470 = call float @dx.op.unary.f32(i32 7, float %8467)  ; Saturate(value)
  %8471 = call float @dx.op.unary.f32(i32 7, float %8468)  ; Saturate(value)
  br label %8472

; <label>:8472                                    ; preds = %8449, %8381
  %8473 = phi float [ %8469, %8449 ], [ %8446, %8381 ]
  %8474 = phi float [ %8470, %8449 ], [ %8447, %8381 ]
  %8475 = phi float [ %8471, %8449 ], [ %8448, %8381 ]
  %8476 = fmul fast float %8393, 9.843750e-01
  %8477 = fadd fast float %8476, 7.812500e-03
  %8478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8477, float %6296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8479 = extractvalue %dx.types.ResRet.f32 %8478, 0
  %8480 = extractvalue %dx.types.ResRet.f32 %8478, 1
  %8481 = extractvalue %dx.types.ResRet.f32 %8478, 2
  %8482 = extractvalue %dx.types.ResRet.f32 %8478, 3
  %8483 = fsub fast float %8481, %8479
  %8484 = fsub fast float %8482, %8480
  %8485 = fmul fast float %8483, %6302
  %8486 = fmul fast float %8484, %6302
  %8487 = fadd fast float %8485, %8479
  %8488 = fadd fast float %8486, %8480
  %8489 = fmul fast float %8487, %6011
  %8490 = fmul fast float %8487, %6012
  %8491 = fmul fast float %8487, %6019
  %8492 = fadd fast float %8489, %8488
  %8493 = fadd fast float %8490, %8488
  %8494 = fadd fast float %8491, %8488
  br i1 %6315, label %8495, label %8518

; <label>:8495                                    ; preds = %8472
  %8496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4701, float %8393, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8497 = extractvalue %dx.types.ResRet.f32 %8496, 0
  %8498 = extractvalue %dx.types.ResRet.f32 %8496, 1
  %8499 = extractvalue %dx.types.ResRet.f32 %8496, 2
  %8500 = fadd fast float %8497, -5.000000e-01
  %8501 = fadd fast float %8498, -5.000000e-01
  %8502 = fadd fast float %8499, -5.000000e-01
  %8503 = fmul fast float %6011, 4.000000e+00
  %8504 = fmul fast float %8503, %8440
  %8505 = fmul fast float %8504, %8500
  %8506 = fmul fast float %6012, 4.000000e+00
  %8507 = fmul fast float %8506, %8441
  %8508 = fmul fast float %8507, %8501
  %8509 = fmul fast float %6019, 4.000000e+00
  %8510 = fmul fast float %8509, %8442
  %8511 = fmul fast float %8510, %8502
  %8512 = fadd fast float %8505, %8492
  %8513 = fadd fast float %8508, %8493
  %8514 = fadd fast float %8511, %8494
  %8515 = call float @dx.op.unary.f32(i32 7, float %8512)  ; Saturate(value)
  %8516 = call float @dx.op.unary.f32(i32 7, float %8513)  ; Saturate(value)
  %8517 = call float @dx.op.unary.f32(i32 7, float %8514)  ; Saturate(value)
  br label %8518

; <label>:8518                                    ; preds = %8495, %8472
  %8519 = phi float [ %8515, %8495 ], [ %8492, %8472 ]
  %8520 = phi float [ %8516, %8495 ], [ %8493, %8472 ]
  %8521 = phi float [ %8517, %8495 ], [ %8494, %8472 ]
  %8522 = call float @dx.op.binary.f32(i32 35, float %8520, float %8521)  ; FMax(a,b)
  %8523 = call float @dx.op.binary.f32(i32 35, float %8519, float %8522)  ; FMax(a,b)
  %8524 = fsub fast float 1.000000e+00, %8523
  %8525 = call float @dx.op.binary.f32(i32 35, float %8402, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8526 = fdiv fast float %4005, %8525
  %8527 = fmul fast float %6834, %8526
  %8528 = fmul fast float %6836, %8526
  %8529 = fmul fast float %6838, %8526
  %8530 = call float @dx.op.unary.f32(i32 21, float %8527)  ; Exp(value)
  %8531 = call float @dx.op.unary.f32(i32 21, float %8528)  ; Exp(value)
  %8532 = call float @dx.op.unary.f32(i32 21, float %8529)  ; Exp(value)
  %8533 = call float @dx.op.unary.f32(i32 7, float %8530)  ; Saturate(value)
  %8534 = call float @dx.op.unary.f32(i32 7, float %8531)  ; Saturate(value)
  %8535 = call float @dx.op.unary.f32(i32 7, float %8532)  ; Saturate(value)
  %8536 = select i1 %6831, float %8533, float 0.000000e+00
  %8537 = select i1 %6832, float %8534, float 0.000000e+00
  %8538 = select i1 %6833, float %8535, float 0.000000e+00
  %8539 = fsub fast float -0.000000e+00, %6014
  %8540 = fsub fast float -0.000000e+00, %6015
  %8541 = fsub fast float -0.000000e+00, %6016
  %8542 = call float @dx.op.dot3.f32(i32 55, float %6925, float %6926, float %6927, float %8539, float %8540, float %8541)  ; Dot3(ax,ay,az,bx,by,bz)
  %8543 = call float @dx.op.unary.f32(i32 7, float %8542)  ; Saturate(value)
  %8544 = fmul fast float %8543, 9.843750e-01
  %8545 = fadd fast float %8544, 7.812500e-03
  %8546 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %8545, float %6296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8547 = extractvalue %dx.types.ResRet.f32 %8546, 0
  %8548 = extractvalue %dx.types.ResRet.f32 %8546, 1
  %8549 = extractvalue %dx.types.ResRet.f32 %8546, 2
  %8550 = extractvalue %dx.types.ResRet.f32 %8546, 3
  %8551 = fsub fast float %8549, %8547
  %8552 = fsub fast float %8550, %8548
  %8553 = fmul fast float %8551, %6302
  %8554 = fmul fast float %8552, %6302
  %8555 = fadd fast float %8553, %8547
  %8556 = fadd fast float %8554, %8548
  %8557 = fmul fast float %8555, %6011
  %8558 = fmul fast float %8555, %6012
  %8559 = fmul fast float %8555, %6019
  %8560 = fadd fast float %8557, %8556
  %8561 = fadd fast float %8558, %8556
  %8562 = fadd fast float %8559, %8556
  br i1 %6315, label %8563, label %8586

; <label>:8563                                    ; preds = %8518
  %8564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %45, float %4701, float %8543, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8565 = extractvalue %dx.types.ResRet.f32 %8564, 0
  %8566 = extractvalue %dx.types.ResRet.f32 %8564, 1
  %8567 = extractvalue %dx.types.ResRet.f32 %8564, 2
  %8568 = fadd fast float %8565, -5.000000e-01
  %8569 = fadd fast float %8566, -5.000000e-01
  %8570 = fadd fast float %8567, -5.000000e-01
  %8571 = fmul fast float %6011, 4.000000e+00
  %8572 = fmul fast float %8571, %8440
  %8573 = fmul fast float %8572, %8568
  %8574 = fmul fast float %6012, 4.000000e+00
  %8575 = fmul fast float %8574, %8441
  %8576 = fmul fast float %8575, %8569
  %8577 = fmul fast float %6019, 4.000000e+00
  %8578 = fmul fast float %8577, %8442
  %8579 = fmul fast float %8578, %8570
  %8580 = fadd fast float %8573, %8560
  %8581 = fadd fast float %8576, %8561
  %8582 = fadd fast float %8579, %8562
  %8583 = call float @dx.op.unary.f32(i32 7, float %8580)  ; Saturate(value)
  %8584 = call float @dx.op.unary.f32(i32 7, float %8581)  ; Saturate(value)
  %8585 = call float @dx.op.unary.f32(i32 7, float %8582)  ; Saturate(value)
  br label %8586

; <label>:8586                                    ; preds = %8563, %8518
  %8587 = phi float [ %8583, %8563 ], [ %8560, %8518 ]
  %8588 = phi float [ %8584, %8563 ], [ %8561, %8518 ]
  %8589 = phi float [ %8585, %8563 ], [ %8562, %8518 ]
  %8590 = call float @dx.op.binary.f32(i32 35, float %8588, float %8589)  ; FMax(a,b)
  %8591 = call float @dx.op.binary.f32(i32 35, float %8587, float %8590)  ; FMax(a,b)
  %8592 = fsub fast float 1.000000e+00, %8591
  %8593 = fmul fast float %6036, %6898
  %8594 = fadd fast float %6900, %8593
  %8595 = call float @dx.op.unary.f32(i32 7, float %8594)  ; Saturate(value)
  %8596 = fsub fast float %6925, %6027
  %8597 = fsub fast float %6926, %6028
  %8598 = fsub fast float %6927, %6029
  %8599 = call float @dx.op.dot3.f32(i32 55, float %8596, float %8597, float %8598, float %8596, float %8597, float %8598)  ; Dot3(ax,ay,az,bx,by,bz)
  %8600 = call float @dx.op.unary.f32(i32 25, float %8599)  ; Rsqrt(value)
  %8601 = fmul fast float %8600, %8596
  %8602 = fmul fast float %8600, %8597
  %8603 = fmul fast float %8600, %8598
  %8604 = call float @dx.op.dot3.f32(i32 55, float %8539, float %8540, float %8541, float %8601, float %8602, float %8603)  ; Dot3(ax,ay,az,bx,by,bz)
  %8605 = fmul fast float %8604, %8604
  %8606 = call float @dx.op.unary.f32(i32 6, float %8543)  ; FAbs(value)
  %8607 = call float @dx.op.binary.f32(i32 35, float %8595, float 0x3F847AE140000000)  ; FMax(a,b)
  %8608 = fmul fast float %8607, %8607
  %8609 = fmul fast float %8608, %8608
  %8610 = fsub fast float 1.000000e+00, %8609
  %8611 = fmul fast float %8404, %8610
  %8612 = fadd fast float %8611, %8609
  %8613 = bitcast float %8612 to i32
  %8614 = ashr i32 %8613, 1
  %8615 = add nsw i32 %8614, 532487669
  %8616 = bitcast i32 %8615 to float
  %8617 = fadd fast float %8616, %6021
  %8618 = fmul fast float %8609, %8605
  %8619 = fsub fast float 1.000000e+00, %8605
  %8620 = fadd fast float %8619, %8618
  %8621 = fmul fast float %8606, %8606
  %8622 = fmul fast float %8621, %8610
  %8623 = fadd fast float %8622, %8609
  %8624 = bitcast float %8623 to i32
  %8625 = ashr i32 %8624, 1
  %8626 = add nsw i32 %8625, 532487669
  %8627 = bitcast i32 %8626 to float
  %8628 = fadd fast float %8627, %8606
  %8629 = fmul fast float %8620, %8620
  %8630 = fmul fast float %8629, %8617
  %8631 = fmul fast float %8630, %8628
  %8632 = fdiv fast float 0x3FF0A00000000000, %8631
  %8633 = fmul fast float %8632, %8609
  %8634 = fmul fast float %8543, %8536
  %8635 = fmul fast float %8543, %8537
  %8636 = fmul fast float %8543, %8538
  %8637 = fmul fast float %8634, %8592
  %8638 = fmul fast float %8637, %8633
  %8639 = fmul fast float %8635, %8592
  %8640 = fmul fast float %8639, %8633
  %8641 = fmul fast float %8636, %8592
  %8642 = fmul fast float %8641, %8633
  %8643 = fmul fast float %8473, %8427
  %8644 = fmul fast float %8474, %8427
  %8645 = fmul fast float %8475, %8427
  %8646 = fsub fast float 1.000000e+00, %8394
  %8647 = bitcast float %8646 to i32
  %8648 = sitofp i32 %8647 to float
  %8649 = fmul fast float %8648, 5.000000e+00
  %8650 = fadd fast float %8649, 0xC1EFBF8940000000
  %8651 = fptosi float %8650 to i32
  %8652 = bitcast i32 %8651 to float
  %8653 = fmul fast float %8652, %4702
  %8654 = fmul fast float %8524, %8653
  %8655 = fmul fast float %8654, %6826
  %8656 = fmul fast float %8654, %6827
  %8657 = fmul fast float %8654, %6828
  %8658 = fadd fast float %8655, %8643
  %8659 = fadd fast float %8656, %8644
  %8660 = fadd fast float %8657, %8645
  %8661 = fmul fast float %8658, %8399
  %8662 = fmul fast float %8659, %8399
  %8663 = fmul fast float %8660, %8399
  %8664 = fmul fast float %8399, %8382
  %8665 = fmul fast float %8664, %8524
  %8666 = fmul fast float %8399, %8383
  %8667 = fmul fast float %8666, %8524
  %8668 = fmul fast float %8399, %8384
  %8669 = fmul fast float %8668, %8524
  %8670 = fadd fast float %8661, %8638
  %8671 = fadd fast float %8662, %8640
  %8672 = fadd fast float %8663, %8642
  %8673 = fmul fast float %8670, %8382
  %8674 = fmul fast float %8671, %8383
  %8675 = fmul fast float %8672, %8384
  %8676 = fadd fast float %8665, %6915
  %8677 = fmul fast float %8676, %4698
  %8678 = fadd fast float %8667, %6917
  %8679 = fmul fast float %8678, %4698
  %8680 = fadd fast float %8669, %6919
  %8681 = fmul fast float %8680, %4698
  %8682 = fadd fast float %8673, %6879
  %8683 = fmul fast float %8682, %4698
  %8684 = fadd fast float %8674, %6882
  %8685 = fmul fast float %8684, %4698
  %8686 = fadd fast float %8675, %6885
  %8687 = fmul fast float %8686, %4698
  br label %8688

; <label>:8688                                    ; preds = %8586, %8376, %6809
  %8689 = phi float [ %6880, %6809 ], [ %6880, %8376 ], [ %8683, %8586 ]
  %8690 = phi float [ %6883, %6809 ], [ %6883, %8376 ], [ %8685, %8586 ]
  %8691 = phi float [ %6886, %6809 ], [ %6886, %8376 ], [ %8687, %8586 ]
  %8692 = phi float [ %6916, %6809 ], [ %6916, %8376 ], [ %8677, %8586 ]
  %8693 = phi float [ %6918, %6809 ], [ %6918, %8376 ], [ %8679, %8586 ]
  %8694 = phi float [ %6920, %6809 ], [ %6920, %8376 ], [ %8681, %8586 ]
  %8695 = fmul fast float %4698, %6855
  %8696 = fsub fast float -0.000000e+00, %8695
  %8697 = fmul fast float %4698, %6856
  %8698 = fsub fast float -0.000000e+00, %8697
  %8699 = fmul fast float %4698, %6857
  %8700 = fsub fast float -0.000000e+00, %8699
  %8701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8702 = extractvalue %dx.types.CBufRet.f32 %8701, 0
  %8703 = fmul fast float %8702, %6861
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 3
  %8706 = fsub fast float 1.000000e+00, %4705
  %8707 = call float @dx.op.unary.f32(i32 7, float %8706)  ; Saturate(value)
  %8708 = fadd fast float %8694, %4704
  %8709 = fmul fast float %8708, %4705
  %8710 = fmul fast float %8707, %8705
  %8711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8712 = extractvalue %dx.types.CBufRet.f32 %8711, 3
  %8713 = fmul fast float %8692, %6008
  %8714 = fmul fast float %8693, %6009
  %8715 = fmul fast float %8694, %6010
  %8716 = fcmp fast ogt float %98, %225
  %8717 = and i1 %8716, %4773
  %8718 = or i1 %4852, %8717
  %8719 = icmp eq i32 %4772, 2
  %8720 = fcmp fast ole float %98, %225
  %8721 = and i1 %8720, %8719
  %8722 = or i1 %8721, %8718
  br i1 %8717, label %8723, label %8980

; <label>:8723                                    ; preds = %8688
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 2
  %8726 = extractvalue %dx.types.CBufRet.f32 %8724, 3
  %8727 = fmul fast float %8725, %111
  %8728 = fmul fast float %8726, %112
  %8729 = call float @dx.op.unary.f32(i32 7, float %8727)  ; Saturate(value)
  %8730 = call float @dx.op.unary.f32(i32 7, float %8728)  ; Saturate(value)
  %8731 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8729, float %8730, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8732 = extractvalue %dx.types.ResRet.f32 %8731, 0
  %8733 = extractvalue %dx.types.ResRet.f32 %8731, 1
  %8734 = extractvalue %dx.types.ResRet.f32 %8731, 2
  %8735 = extractvalue %dx.types.ResRet.f32 %8731, 3
  %8736 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %8729, float %8730, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8737 = extractvalue %dx.types.ResRet.f32 %8736, 0
  %8738 = extractvalue %dx.types.ResRet.f32 %8736, 1
  %8739 = extractvalue %dx.types.ResRet.f32 %8736, 2
  %8740 = extractvalue %dx.types.ResRet.f32 %8736, 3
  %8741 = call float @dx.op.binary.f32(i32 35, float %8733, float %8734)  ; FMax(a,b)
  %8742 = call float @dx.op.binary.f32(i32 35, float %8732, float %8741)  ; FMax(a,b)
  %8743 = call float @dx.op.binary.f32(i32 35, float %8742, float %8735)  ; FMax(a,b)
  %8744 = call float @dx.op.binary.f32(i32 36, float %8738, float %8739)  ; FMin(a,b)
  %8745 = call float @dx.op.binary.f32(i32 36, float %8737, float %8744)  ; FMin(a,b)
  %8746 = call float @dx.op.binary.f32(i32 36, float %8745, float %8740)  ; FMin(a,b)
  %8747 = fmul fast float %8743, 2.550000e+02
  %8748 = fadd fast float %8747, 0x3F70101020000000
  %8749 = fptoui float %8748 to i32
  %8750 = fmul fast float %8746, 2.550000e+02
  %8751 = fadd fast float %8750, 0x3F70101020000000
  %8752 = fptoui float %8751 to i32
  %8753 = icmp ult i32 %8749, %8752
  br i1 %8753, label %8754, label %8922

; <label>:8754                                    ; preds = %8723
  %8755 = fcmp fast ogt float %97, 9.843750e-01
  %8756 = fadd fast float %98, -4.000000e+00
  %8757 = select i1 %8755, float -4.000000e+00, float %8756
  %8758 = call float @dx.op.binary.f32(i32 35, float %8757, float 0.000000e+00)  ; FMax(a,b)
  %8759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8760 = extractvalue %dx.types.CBufRet.f32 %8759, 0
  %8761 = fadd fast float %8760, %8758
  %8762 = extractvalue %dx.types.CBufRet.f32 %8759, 2
  %8763 = fmul fast float %8761, %8762
  %8764 = call float @dx.op.unary.f32(i32 23, float %8763)  ; Log(value)
  %8765 = extractvalue %dx.types.CBufRet.f32 %8759, 3
  %8766 = fmul fast float %8765, %8764
  %8767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8768 = extractvalue %dx.types.CBufRet.f32 %8767, 2
  %8769 = fmul fast float %8766, %8768
  %8770 = call float @dx.op.unary.f32(i32 7, float %8769)  ; Saturate(value)
  %8771 = uitofp i32 %8749 to float
  %8772 = uitofp i32 %8752 to float
  %8773 = fadd fast float %8771, 5.000000e-01
  %8774 = fadd fast float %8772, 5.000000e-01
  %8775 = fmul fast float %8768, %8773
  %8776 = fmul fast float %8768, %8774
  %8777 = fadd fast float %8775, 0x3F0FFB4800000000
  %8778 = fadd fast float %8776, 0xBF0FFB4800000000
  %8779 = call float @dx.op.binary.f32(i32 35, float %8770, float %8777)  ; FMax(a,b)
  %8780 = call float @dx.op.binary.f32(i32 36, float %8779, float %8778)  ; FMin(a,b)
  %8781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8782 = extractvalue %dx.types.CBufRet.f32 %8781, 1
  %8783 = extractvalue %dx.types.CBufRet.f32 %8781, 2
  %8784 = extractvalue %dx.types.CBufRet.f32 %8781, 0
  %8785 = fmul fast float %8782, %8780
  %8786 = fadd fast float %8784, %8785
  %8787 = fadd fast float %8784, %8783
  %8788 = fsub fast float %8782, %8783
  %8789 = fadd fast float %8788, %8784
  %8790 = call float @dx.op.binary.f32(i32 35, float %8786, float %8787)  ; FMax(a,b)
  %8791 = call float @dx.op.binary.f32(i32 36, float %8790, float %8789)  ; FMin(a,b)
  %8792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8729, float %8730, float %8791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8793 = extractvalue %dx.types.ResRet.f32 %8792, 0
  %8794 = extractvalue %dx.types.ResRet.f32 %8792, 1
  %8795 = extractvalue %dx.types.ResRet.f32 %8792, 2
  %8796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8797 = extractvalue %dx.types.CBufRet.i32 %8796, 0
  %8798 = extractvalue %dx.types.CBufRet.i32 %8796, 1
  %8799 = uitofp i32 %8797 to float
  %8800 = uitofp i32 %8798 to float
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 0
  %8803 = extractvalue %dx.types.CBufRet.f32 %8801, 1
  %8804 = fmul fast float %8799, %8729
  %8805 = fmul fast float %8800, %8730
  %8806 = fadd fast float %8804, -5.000000e-01
  %8807 = fadd fast float %8805, -5.000000e-01
  %8808 = call float @dx.op.unary.f32(i32 22, float %8806)  ; Frc(value)
  %8809 = call float @dx.op.unary.f32(i32 22, float %8807)  ; Frc(value)
  %8810 = fmul fast float %8808, %8808
  %8811 = fmul fast float %8810, %8808
  %8812 = fsub fast float 3.000000e+00, %8808
  %8813 = fmul fast float %8810, %8812
  %8814 = fmul fast float %8808, 3.000000e+00
  %8815 = fmul fast float %8811, 3.000000e+00
  %8816 = fmul fast float %8810, 6.000000e+00
  %8817 = fsub fast float %8815, %8816
  %8818 = fadd fast float %8817, 4.000000e+00
  %8819 = fmul fast float %8818, 0x3FC5555560000000
  %8820 = fmul fast float %8811, -3.000000e+00
  %8821 = fadd fast float %8810, %8808
  %8822 = fmul fast float %8821, 3.000000e+00
  %8823 = fadd fast float %8820, 1.000000e+00
  %8824 = fadd fast float %8823, %8822
  %8825 = fmul fast float %8811, 0x3FC5555560000000
  %8826 = fmul fast float %8809, %8809
  %8827 = fmul fast float %8826, %8809
  %8828 = fsub fast float 3.000000e+00, %8809
  %8829 = fmul fast float %8826, %8828
  %8830 = fmul fast float %8809, 3.000000e+00
  %8831 = fmul fast float %8827, 3.000000e+00
  %8832 = fmul fast float %8826, 6.000000e+00
  %8833 = fsub fast float %8831, %8832
  %8834 = fadd fast float %8833, 4.000000e+00
  %8835 = fmul fast float %8834, 0x3FC5555560000000
  %8836 = fmul fast float %8827, -3.000000e+00
  %8837 = fadd fast float %8826, %8809
  %8838 = fmul fast float %8837, 3.000000e+00
  %8839 = fadd fast float %8836, 1.000000e+00
  %8840 = fadd fast float %8839, %8838
  %8841 = fmul fast float %8827, 0x3FC5555560000000
  %8842 = fadd fast float %8808, 1.000000e+00
  %8843 = fsub fast float 1.000000e+00, %8814
  %8844 = fadd fast float %8843, %8813
  %8845 = fadd fast float %8844, %8818
  %8846 = fmul fast float %8845, 0x3FC5555560000000
  %8847 = fdiv fast float %8819, %8846
  %8848 = fsub fast float %8842, %8847
  %8849 = fsub fast float 1.000000e+00, %8808
  %8850 = fadd fast float %8824, %8811
  %8851 = fmul fast float %8850, 0x3FC5555560000000
  %8852 = fdiv fast float %8825, %8851
  %8853 = fadd fast float %8849, %8852
  %8854 = fadd fast float %8809, 1.000000e+00
  %8855 = fsub fast float 1.000000e+00, %8830
  %8856 = fadd fast float %8855, %8829
  %8857 = fadd fast float %8856, %8834
  %8858 = fmul fast float %8857, 0x3FC5555560000000
  %8859 = fdiv fast float %8835, %8858
  %8860 = fsub fast float %8854, %8859
  %8861 = fsub fast float 1.000000e+00, %8809
  %8862 = fadd fast float %8840, %8827
  %8863 = fmul fast float %8862, 0x3FC5555560000000
  %8864 = fdiv fast float %8841, %8863
  %8865 = fadd fast float %8864, %8861
  %8866 = fmul fast float %8848, %8802
  %8867 = fsub fast float %8729, %8866
  %8868 = fmul fast float %8853, %8802
  %8869 = fadd fast float %8868, %8729
  %8870 = fmul fast float %8865, %8803
  %8871 = fadd fast float %8870, %8730
  %8872 = fmul fast float %8860, %8803
  %8873 = fsub fast float %8730, %8872
  %8874 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8867, float %8873, float %8791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8875 = extractvalue %dx.types.ResRet.f32 %8874, 0
  %8876 = extractvalue %dx.types.ResRet.f32 %8874, 1
  %8877 = extractvalue %dx.types.ResRet.f32 %8874, 2
  %8878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8869, float %8873, float %8791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8879 = extractvalue %dx.types.ResRet.f32 %8878, 0
  %8880 = extractvalue %dx.types.ResRet.f32 %8878, 1
  %8881 = extractvalue %dx.types.ResRet.f32 %8878, 2
  %8882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8867, float %8871, float %8791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8883 = extractvalue %dx.types.ResRet.f32 %8882, 0
  %8884 = extractvalue %dx.types.ResRet.f32 %8882, 1
  %8885 = extractvalue %dx.types.ResRet.f32 %8882, 2
  %8886 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8869, float %8871, float %8791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8887 = extractvalue %dx.types.ResRet.f32 %8886, 0
  %8888 = extractvalue %dx.types.ResRet.f32 %8886, 1
  %8889 = extractvalue %dx.types.ResRet.f32 %8886, 2
  %8890 = fsub fast float %8883, %8875
  %8891 = fsub fast float %8884, %8876
  %8892 = fsub fast float %8885, %8877
  %8893 = fmul fast float %8890, %8863
  %8894 = fmul fast float %8891, %8863
  %8895 = fmul fast float %8892, %8863
  %8896 = fadd fast float %8893, %8875
  %8897 = fadd fast float %8894, %8876
  %8898 = fadd fast float %8895, %8877
  %8899 = fsub fast float %8887, %8879
  %8900 = fsub fast float %8888, %8880
  %8901 = fsub fast float %8889, %8881
  %8902 = fmul fast float %8899, %8863
  %8903 = fmul fast float %8900, %8863
  %8904 = fmul fast float %8901, %8863
  %8905 = fsub fast float %8879, %8896
  %8906 = fadd fast float %8905, %8902
  %8907 = fsub fast float %8880, %8897
  %8908 = fadd fast float %8907, %8903
  %8909 = fsub fast float %8881, %8898
  %8910 = fadd fast float %8909, %8904
  %8911 = fmul fast float %8906, %8851
  %8912 = fmul fast float %8908, %8851
  %8913 = fmul fast float %8910, %8851
  %8914 = fadd fast float %8911, %8896
  %8915 = fadd fast float %8912, %8897
  %8916 = fadd fast float %8913, %8898
  %8917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8918 = extractvalue %dx.types.CBufRet.f32 %8917, 1
  %8919 = fmul fast float %8914, %8918
  %8920 = fmul fast float %8915, %8918
  %8921 = fmul fast float %8916, %8918
  br label %8922

; <label>:8922                                    ; preds = %8754, %8723
  %8923 = phi float [ %8793, %8754 ], [ 1.000000e+00, %8723 ]
  %8924 = phi float [ %8794, %8754 ], [ 1.000000e+00, %8723 ]
  %8925 = phi float [ %8795, %8754 ], [ 1.000000e+00, %8723 ]
  %8926 = phi float [ %8919, %8754 ], [ 0.000000e+00, %8723 ]
  %8927 = phi float [ %8920, %8754 ], [ 0.000000e+00, %8723 ]
  %8928 = phi float [ %8921, %8754 ], [ 0.000000e+00, %8723 ]
  %8929 = fmul fast float %8926, %8696
  %8930 = fmul fast float %8927, %8698
  %8931 = fmul fast float %8928, %8700
  %8932 = call float @dx.op.dot3.f32(i32 55, float %8923, float %8924, float %8925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8933 = call float @dx.op.dot3.f32(i32 55, float %8929, float %8930, float %8931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8934 = select i1 %264, float %8932, float %8923
  %8935 = select i1 %264, float %8932, float %8924
  %8936 = select i1 %264, float 1.000000e+00, float %8925
  %8937 = select i1 %264, float %8933, float %8929
  %8938 = select i1 %264, float 0.000000e+00, float %8930
  %8939 = select i1 %264, float 0.000000e+00, float %8931
  %8940 = fmul fast float %8934, %8713
  %8941 = fmul fast float %8935, %8714
  %8942 = fmul fast float %8936, %8715
  %8943 = fadd fast float %8940, %8937
  %8944 = fadd fast float %8941, %8938
  %8945 = fadd fast float %8939, %8942
  %8946 = fmul fast float %8934, %8689
  %8947 = fmul fast float %8935, %8690
  %8948 = fmul fast float %8936, %8691
  %8949 = fmul fast float %139, %8725
  %8950 = fmul fast float %141, %8726
  %8951 = fsub fast float 1.000000e+00, %8949
  %8952 = fsub fast float 1.000000e+00, %8950
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.CBufRet.f32 %8953, 1
  %8956 = extractvalue %dx.types.CBufRet.f32 %8953, 2
  %8957 = fmul fast float %8951, %8954
  %8958 = fmul fast float %8951, %8955
  %8959 = fmul fast float %8951, %8956
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.CBufRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8964 = fmul fast float %8952, %8961
  %8965 = fmul fast float %8952, %8962
  %8966 = fmul fast float %8952, %8963
  %8967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8968 = extractvalue %dx.types.CBufRet.f32 %8967, 0
  %8969 = extractvalue %dx.types.CBufRet.f32 %8967, 1
  %8970 = extractvalue %dx.types.CBufRet.f32 %8967, 2
  %8971 = fadd fast float %8964, %8968
  %8972 = fadd fast float %8971, %8957
  %8973 = fadd fast float %8965, %8969
  %8974 = fadd fast float %8973, %8958
  %8975 = fadd fast float %8966, %8970
  %8976 = fadd fast float %8975, %8959
  %8977 = fmul fast float %8972, %225
  %8978 = fmul fast float %8974, %225
  %8979 = fmul fast float %8976, %225
  br label %8980

; <label>:8980                                    ; preds = %8922, %8688
  %8981 = phi float [ %8977, %8922 ], [ %190, %8688 ]
  %8982 = phi float [ %8978, %8922 ], [ %191, %8688 ]
  %8983 = phi float [ %8979, %8922 ], [ %192, %8688 ]
  %8984 = phi float [ %225, %8922 ], [ %98, %8688 ]
  %8985 = phi float [ %8943, %8922 ], [ %8713, %8688 ]
  %8986 = phi float [ %8944, %8922 ], [ %8714, %8688 ]
  %8987 = phi float [ %8945, %8922 ], [ %8715, %8688 ]
  %8988 = phi float [ %8946, %8922 ], [ %8689, %8688 ]
  %8989 = phi float [ %8947, %8922 ], [ %8690, %8688 ]
  %8990 = phi float [ %8948, %8922 ], [ %8691, %8688 ]
  %8991 = phi float [ %8923, %8922 ], [ 1.000000e+00, %8688 ]
  br i1 %8722, label %10146, label %8992

; <label>:8992                                    ; preds = %8980
  %8993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8993, 0
  %8995 = extractvalue %dx.types.CBufRet.f32 %8993, 1
  %8996 = extractvalue %dx.types.CBufRet.f32 %8993, 2
  %8997 = extractvalue %dx.types.CBufRet.f32 %8993, 3
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 0
  %9000 = extractvalue %dx.types.CBufRet.f32 %8998, 1
  %9001 = extractvalue %dx.types.CBufRet.f32 %8998, 2
  %9002 = extractvalue %dx.types.CBufRet.f32 %8998, 3
  %9003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9004 = extractvalue %dx.types.CBufRet.f32 %9003, 0
  %9005 = extractvalue %dx.types.CBufRet.f32 %9003, 1
  %9006 = extractvalue %dx.types.CBufRet.f32 %9003, 2
  %9007 = extractvalue %dx.types.CBufRet.f32 %9003, 3
  %9008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9009 = extractvalue %dx.types.CBufRet.f32 %9008, 0
  %9010 = extractvalue %dx.types.CBufRet.f32 %9008, 1
  %9011 = extractvalue %dx.types.CBufRet.f32 %9008, 2
  %9012 = extractvalue %dx.types.CBufRet.f32 %9008, 3
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 3
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 3
  %9017 = extractvalue %dx.types.CBufRet.f32 %9015, 0
  %9018 = extractvalue %dx.types.CBufRet.f32 %9015, 1
  %9019 = extractvalue %dx.types.CBufRet.f32 %9015, 2
  %9020 = fcmp fast olt float %9019, -5.000000e-01
  %9021 = call float @dx.op.dot3.f32(i32 55, float %8981, float %8982, float %8983, float %8981, float %8982, float %8983)  ; Dot3(ax,ay,az,bx,by,bz)
  %9022 = call float @dx.op.unary.f32(i32 25, float %9021)  ; Rsqrt(value)
  %9023 = fmul fast float %9022, %9021
  %9024 = fmul fast float %9022, %8981
  %9025 = fmul fast float %9022, %8982
  %9026 = fmul fast float %9022, %8983
  %9027 = fadd fast float %9023, %8997
  %9028 = call float @dx.op.dot3.f32(i32 55, float %9024, float %9025, float %9026, float %8994, float %8995, float %8996)  ; Dot3(ax,ay,az,bx,by,bz)
  %9029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9030 = extractvalue %dx.types.CBufRet.i32 %9029, 1
  %9031 = and i32 %9030, 1
  %9032 = icmp ne i32 %9031, 0
  %9033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9034 = extractvalue %dx.types.CBufRet.f32 %9033, 2
  %9035 = fcmp fast ogt float %9034, 0.000000e+00
  %9036 = and i1 %9032, %9035
  br i1 %9036, label %9037, label %9443, !dx.controlflow.hints !127

; <label>:9037                                    ; preds = %8992
  %9038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9039 = extractvalue %dx.types.CBufRet.f32 %9038, 3
  %9040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9041 = extractvalue %dx.types.CBufRet.f32 %9040, 2
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 2
  %9044 = fsub fast float %9041, %9043
  %9045 = and i32 %9030, 2
  %9046 = extractvalue %dx.types.CBufRet.i32 %9029, 0
  %9047 = call i32 @dx.op.binary.i32(i32 40, i32 %9046, i32 3)  ; UMin(a,b)
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 0
  %9050 = extractvalue %dx.types.CBufRet.f32 %9048, 1
  %9051 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9052 = extractvalue %dx.types.CBufRet.f32 %9042, 1
  %9053 = fsub fast float %9049, %9051
  %9054 = fsub fast float %9050, %9052
  %9055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9055, 0
  %9057 = fcmp fast ogt float %9056, 0.000000e+00
  %9058 = fsub fast float -0.000000e+00, %9053
  %9059 = fsub fast float -0.000000e+00, %9054
  %9060 = call float @dx.op.dot2.f32(i32 54, float %9024, float %9025, float %9024, float %9025)  ; Dot2(ax,ay,bx,by)
  %9061 = call float @dx.op.dot2.f32(i32 54, float %9024, float %9025, float %9058, float %9059)  ; Dot2(ax,ay,bx,by)
  %9062 = fmul fast float %9061, 2.000000e+00
  %9063 = call float @dx.op.dot2.f32(i32 54, float %9058, float %9059, float %9058, float %9059)  ; Dot2(ax,ay,bx,by)
  %9064 = fmul fast float %9056, %9056
  %9065 = fsub fast float %9063, %9064
  %9066 = fmul fast float %9062, %9062
  %9067 = fmul fast float %9060, 4.000000e+00
  %9068 = fmul fast float %9067, %9065
  %9069 = fsub fast float %9066, %9068
  %9070 = fcmp fast ogt float %9069, 0.000000e+00
  br i1 %9070, label %9071, label %9086

; <label>:9071                                    ; preds = %9037
  %9072 = fcmp fast ogt float %9062, 0.000000e+00
  %9073 = call float @dx.op.unary.f32(i32 24, float %9069)  ; Sqrt(value)
  %9074 = fsub fast float -0.000000e+00, %9073
  %9075 = select i1 %9072, float %9073, float %9074
  %9076 = fadd fast float %9075, %9062
  %9077 = fmul float %9076, -5.000000e-01
  %9078 = fdiv fast float %9077, %9060
  %9079 = call float @dx.op.binary.f32(i32 35, float %9078, float 0.000000e+00)  ; FMax(a,b)
  %9080 = call float @dx.op.binary.f32(i32 36, float %9023, float %9079)  ; FMin(a,b)
  %9081 = fdiv fast float %9065, %9077
  %9082 = call float @dx.op.binary.f32(i32 35, float %9081, float 0.000000e+00)  ; FMax(a,b)
  %9083 = call float @dx.op.binary.f32(i32 36, float %9023, float %9082)  ; FMin(a,b)
  %9084 = call float @dx.op.binary.f32(i32 36, float %9080, float %9083)  ; FMin(a,b)
  %9085 = call float @dx.op.binary.f32(i32 35, float %9080, float %9083)  ; FMax(a,b)
  br label %9086

; <label>:9086                                    ; preds = %9071, %9037
  %9087 = phi float [ %9085, %9071 ], [ -1.000000e+00, %9037 ]
  %9088 = phi float [ %9084, %9071 ], [ -1.000000e+00, %9037 ]
  %9089 = phi i1 [ true, %9071 ], [ false, %9037 ]
  %9090 = and i1 %9057, %9089
  br i1 %9090, label %9091, label %9093

; <label>:9091                                    ; preds = %9086
  %9092 = fcmp fast oeq float %9088, %9087
  br i1 %9092, label %9396, label %9094

; <label>:9093                                    ; preds = %9086
  br i1 %9057, label %9396, label %9094

; <label>:9094                                    ; preds = %9093, %9091
  %9095 = phi float [ %9023, %9093 ], [ %9087, %9091 ]
  %9096 = phi float [ 0.000000e+00, %9093 ], [ %9088, %9091 ]
  %9097 = icmp ne i32 %9045, 0
  %9098 = fmul fast float %9095, %9026
  %9099 = fadd fast float %9098, %9039
  %9100 = fmul fast float %9099, %9095
  %9101 = select i1 %9097, float 0.000000e+00, float %9100
  %9102 = fcmp fast oeq float %9026, 0.000000e+00
  %9103 = fdiv fast float %9044, %9026
  %9104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9103)  ; FMax(a,b)
  %9105 = select i1 %9102, float %9095, float %9104
  %9106 = call float @dx.op.binary.f32(i32 36, float %9095, float %9105)  ; FMin(a,b)
  %9107 = fcmp fast ogt float %9026, 0.000000e+00
  %9108 = fcmp fast olt float %9044, 0.000000e+00
  br i1 %9107, label %9109, label %9166

; <label>:9109                                    ; preds = %9094
  %9110 = icmp eq i32 %9045, 0
  br i1 %9108, label %9111, label %9155

; <label>:9111                                    ; preds = %9109
  %9112 = select i1 %9110, float %9095, float 0.000000e+00
  %9113 = fsub fast float -0.000000e+00, %9112
  %9114 = call float @dx.op.unary.f32(i32 6, float %9113)  ; FAbs(value)
  %9115 = fmul fast float %9112, %9026
  %9116 = fadd fast float %9115, %9039
  %9117 = fmul fast float %9114, %9116
  %9118 = fsub fast float %9101, %9117
  %9119 = fsub fast float %9095, %9114
  %9120 = select i1 %9110, float %9119, float 0.000000e+00
  %9121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9122 = extractvalue %dx.types.CBufRet.f32 %9121, 0
  %9123 = extractvalue %dx.types.CBufRet.f32 %9121, 1
  %9124 = extractvalue %dx.types.CBufRet.f32 %9121, 2
  %9125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9126 = extractvalue %dx.types.CBufRet.f32 %9125, 0
  %9127 = extractvalue %dx.types.CBufRet.f32 %9125, 1
  %9128 = extractvalue %dx.types.CBufRet.f32 %9125, 2
  %9129 = extractvalue %dx.types.CBufRet.f32 %9125, 3
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 3
  %9132 = call float @dx.op.binary.f32(i32 36, float %9118, float %9131)  ; FMin(a,b)
  %9133 = fmul fast float %9129, %9120
  %9134 = call float @dx.op.unary.f32(i32 7, float %9133)  ; Saturate(value)
  %9135 = fsub fast float %9126, %9122
  %9136 = fsub fast float %9127, %9123
  %9137 = fsub fast float %9128, %9124
  %9138 = fmul fast float %9134, %9135
  %9139 = fmul fast float %9134, %9136
  %9140 = fmul fast float %9134, %9137
  %9141 = fadd fast float %9138, %9122
  %9142 = fadd fast float %9139, %9123
  %9143 = fadd fast float %9140, %9124
  %9144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9145 = extractvalue %dx.types.CBufRet.f32 %9144, 0
  %9146 = extractvalue %dx.types.CBufRet.f32 %9144, 1
  %9147 = fadd fast float %9146, %9145
  %9148 = call float @dx.op.unary.f32(i32 7, float %9147)  ; Saturate(value)
  %9149 = extractvalue %dx.types.CBufRet.f32 %9144, 2
  %9150 = extractvalue %dx.types.CBufRet.f32 %9144, 3
  %9151 = fadd fast float %9150, %9149
  %9152 = call float @dx.op.unary.f32(i32 7, float %9151)  ; Saturate(value)
  %9153 = fmul fast float %9148, %9132
  %9154 = fmul fast float %9153, %9152
  br label %9396

; <label>:9155                                    ; preds = %9109
  br i1 %9110, label %9156, label %9177

; <label>:9156                                    ; preds = %9155
  %9157 = call float @dx.op.binary.f32(i32 36, float %9106, float %9096)  ; FMin(a,b)
  %9158 = fsub fast float %9106, %9157
  %9159 = fsub fast float %9158, %9095
  %9160 = call float @dx.op.unary.f32(i32 6, float %9159)  ; FAbs(value)
  %9161 = fadd fast float %9158, %9095
  %9162 = fmul fast float %9161, %9026
  %9163 = fadd fast float %9162, %9039
  %9164 = fmul fast float %9163, %9160
  %9165 = fsub fast float %9101, %9164
  br label %9177

; <label>:9166                                    ; preds = %9094
  br i1 %9108, label %9167, label %9177

; <label>:9167                                    ; preds = %9166
  %9168 = call float @dx.op.binary.f32(i32 35, float %9096, float %9106)  ; FMax(a,b)
  %9169 = icmp eq i32 %9045, 0
  %9170 = select i1 %9169, float %9106, float 0.000000e+00
  %9171 = fsub fast float -0.000000e+00, %9170
  %9172 = call float @dx.op.unary.f32(i32 6, float %9171)  ; FAbs(value)
  %9173 = fmul fast float %9170, %9026
  %9174 = fadd fast float %9173, %9039
  %9175 = fmul fast float %9172, %9174
  %9176 = fsub fast float %9101, %9175
  br label %9177

; <label>:9177                                    ; preds = %9167, %9166, %9156, %9155
  %9178 = phi float [ %9096, %9155 ], [ %9096, %9156 ], [ %9168, %9167 ], [ %9096, %9166 ]
  %9179 = phi float [ 0.000000e+00, %9155 ], [ %9160, %9156 ], [ %9172, %9167 ], [ 0.000000e+00, %9166 ]
  %9180 = phi float [ %9101, %9155 ], [ %9165, %9156 ], [ %9176, %9167 ], [ %9101, %9166 ]
  %9181 = phi float [ %9106, %9155 ], [ %9106, %9156 ], [ %9095, %9167 ], [ %9095, %9166 ]
  %9182 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 0
  store float -1.000000e+00, float* %9182, align 4, !tbaa !116, !noalias !128
  %9183 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 1
  store float -1.000000e+00, float* %9183, align 4, !tbaa !116, !noalias !128
  %9184 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 2
  store float -1.000000e+00, float* %9184, align 4, !tbaa !116, !noalias !128
  %9185 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 0
  store float -1.000000e+00, float* %9185, align 4, !tbaa !116, !noalias !128
  %9186 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 1
  store float -1.000000e+00, float* %9186, align 4, !tbaa !116, !noalias !128
  %9187 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 2
  store float -1.000000e+00, float* %9187, align 4, !tbaa !116, !noalias !128
  %9188 = icmp sgt i32 %9047, 0
  br i1 %9188, label %9189, label %9250

; <label>:9189                                    ; preds = %9177
  br label %9190

; <label>:9190                                    ; preds = %9239, %9189
  %9191 = phi i32 [ %9240, %9239 ], [ 0, %9189 ]
  %9192 = phi i32 [ %9241, %9239 ], [ 0, %9189 ]
  %9193 = add nuw i32 %9192, 171
  %9194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %9193)  ; CBufferLoadLegacy(handle,regIndex)
  %9195 = extractvalue %dx.types.CBufRet.f32 %9194, 0
  %9196 = extractvalue %dx.types.CBufRet.f32 %9194, 1
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 0
  %9199 = extractvalue %dx.types.CBufRet.f32 %9197, 1
  %9200 = fsub fast float %9195, %9198
  %9201 = fsub fast float %9196, %9199
  %9202 = extractvalue %dx.types.CBufRet.f32 %9194, 2
  %9203 = fsub fast float -0.000000e+00, %9200
  %9204 = fsub fast float -0.000000e+00, %9201
  %9205 = call float @dx.op.dot2.f32(i32 54, float %9024, float %9025, float %9203, float %9204)  ; Dot2(ax,ay,bx,by)
  %9206 = fmul fast float %9205, 2.000000e+00
  %9207 = call float @dx.op.dot2.f32(i32 54, float %9203, float %9204, float %9203, float %9204)  ; Dot2(ax,ay,bx,by)
  %9208 = fmul fast float %9202, %9202
  %9209 = fsub fast float %9207, %9208
  %9210 = fmul fast float %9206, %9206
  %9211 = fmul fast float %9067, %9209
  %9212 = fsub fast float %9210, %9211
  %9213 = fcmp fast ogt float %9212, 0.000000e+00
  br i1 %9213, label %9214, label %9229

; <label>:9214                                    ; preds = %9190
  %9215 = fcmp fast ogt float %9206, 0.000000e+00
  %9216 = call float @dx.op.unary.f32(i32 24, float %9212)  ; Sqrt(value)
  %9217 = fsub fast float -0.000000e+00, %9216
  %9218 = select i1 %9215, float %9216, float %9217
  %9219 = fadd fast float %9218, %9206
  %9220 = fmul float %9219, -5.000000e-01
  %9221 = fdiv fast float %9220, %9060
  %9222 = call float @dx.op.binary.f32(i32 35, float %9221, float 0.000000e+00)  ; FMax(a,b)
  %9223 = call float @dx.op.binary.f32(i32 36, float %9095, float %9222)  ; FMin(a,b)
  %9224 = fdiv fast float %9209, %9220
  %9225 = call float @dx.op.binary.f32(i32 35, float %9224, float 0.000000e+00)  ; FMax(a,b)
  %9226 = call float @dx.op.binary.f32(i32 36, float %9095, float %9225)  ; FMin(a,b)
  %9227 = call float @dx.op.binary.f32(i32 36, float %9223, float %9226)  ; FMin(a,b)
  %9228 = call float @dx.op.binary.f32(i32 35, float %9223, float %9226)  ; FMax(a,b)
  br label %9229

; <label>:9229                                    ; preds = %9214, %9190
  %9230 = phi float [ %9228, %9214 ], [ -1.000000e+00, %9190 ]
  %9231 = phi float [ %9227, %9214 ], [ -1.000000e+00, %9190 ]
  %9232 = phi i1 [ true, %9214 ], [ false, %9190 ]
  br i1 %9232, label %9233, label %9239

; <label>:9233                                    ; preds = %9229
  %9234 = call float @dx.op.binary.f32(i32 35, float %9178, float %9231)  ; FMax(a,b)
  %9235 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9192
  store float %9234, float* %9235, align 4, !tbaa !116, !noalias !128
  %9236 = call float @dx.op.binary.f32(i32 35, float %9178, float %9230)  ; FMax(a,b)
  %9237 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9192
  store float %9236, float* %9237, align 4, !tbaa !116, !noalias !128
  %9238 = add nsw i32 %9191, 1
  br label %9239

; <label>:9239                                    ; preds = %9233, %9229
  %9240 = phi i32 [ %9238, %9233 ], [ %9191, %9229 ]
  %9241 = add nuw nsw i32 %9192, 1
  %9242 = icmp eq i32 %9241, %9047
  br i1 %9242, label %9243, label %9190

; <label>:9243                                    ; preds = %9239
  %9244 = load float, float* %9184, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %9245 = load float, float* %9183, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  %9246 = load float, float* %9182, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  %9247 = load float, float* %9187, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %9248 = load float, float* %9186, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  %9249 = load float, float* %9185, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  br label %9250

; <label>:9250                                    ; preds = %9243, %9177
  %9251 = phi float [ -1.000000e+00, %9177 ], [ %9249, %9243 ]
  %9252 = phi float [ -1.000000e+00, %9177 ], [ %9248, %9243 ]
  %9253 = phi float [ -1.000000e+00, %9177 ], [ %9247, %9243 ]
  %9254 = phi float [ -1.000000e+00, %9177 ], [ %9246, %9243 ]
  %9255 = phi float [ -1.000000e+00, %9177 ], [ %9245, %9243 ]
  %9256 = phi float [ -1.000000e+00, %9177 ], [ %9244, %9243 ]
  %9257 = phi i32 [ 0, %9177 ], [ %9240, %9243 ]
  %9258 = call float @dx.op.binary.f32(i32 36, float %9255, float %9256)  ; FMin(a,b)
  %9259 = call float @dx.op.binary.f32(i32 36, float %9254, float %9258)  ; FMin(a,b)
  %9260 = call float @dx.op.binary.f32(i32 35, float %9254, float %9255)  ; FMax(a,b)
  %9261 = call float @dx.op.binary.f32(i32 36, float %9260, float %9256)  ; FMin(a,b)
  %9262 = call float @dx.op.binary.f32(i32 36, float %9254, float %9255)  ; FMin(a,b)
  %9263 = call float @dx.op.binary.f32(i32 35, float %9262, float %9261)  ; FMax(a,b)
  %9264 = call float @dx.op.binary.f32(i32 35, float %9255, float %9256)  ; FMax(a,b)
  %9265 = call float @dx.op.binary.f32(i32 35, float %9254, float %9264)  ; FMax(a,b)
  store float %9259, float* %9182, align 4, !tbaa !116, !alias.scope !152, !noalias !153
  store float %9263, float* %9183, align 4, !tbaa !116, !alias.scope !150, !noalias !151
  store float %9265, float* %9184, align 4, !tbaa !116, !alias.scope !144, !noalias !147
  %9266 = call float @dx.op.binary.f32(i32 36, float %9252, float %9253)  ; FMin(a,b)
  %9267 = call float @dx.op.binary.f32(i32 36, float %9251, float %9266)  ; FMin(a,b)
  %9268 = call float @dx.op.binary.f32(i32 35, float %9251, float %9252)  ; FMax(a,b)
  %9269 = call float @dx.op.binary.f32(i32 36, float %9268, float %9253)  ; FMin(a,b)
  %9270 = call float @dx.op.binary.f32(i32 36, float %9251, float %9252)  ; FMin(a,b)
  %9271 = call float @dx.op.binary.f32(i32 35, float %9270, float %9269)  ; FMax(a,b)
  %9272 = call float @dx.op.binary.f32(i32 35, float %9252, float %9253)  ; FMax(a,b)
  %9273 = call float @dx.op.binary.f32(i32 35, float %9251, float %9272)  ; FMax(a,b)
  store float %9267, float* %9185, align 4, !tbaa !116, !alias.scope !162, !noalias !163
  store float %9271, float* %9186, align 4, !tbaa !116, !alias.scope !160, !noalias !161
  store float %9273, float* %9187, align 4, !tbaa !116, !alias.scope !154, !noalias !157
  %9274 = sub nsw i32 3, %9257
  %9275 = icmp sgt i32 %9274, 2
  br i1 %9275, label %9276, label %9314

; <label>:9276                                    ; preds = %9250
  %9277 = icmp eq i32 %9045, 0
  %9278 = fsub fast float %9095, %9179
  %9279 = select i1 %9277, float %9278, float %9179
  %9280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9281 = extractvalue %dx.types.CBufRet.f32 %9280, 0
  %9282 = extractvalue %dx.types.CBufRet.f32 %9280, 1
  %9283 = extractvalue %dx.types.CBufRet.f32 %9280, 2
  %9284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9285 = extractvalue %dx.types.CBufRet.f32 %9284, 0
  %9286 = extractvalue %dx.types.CBufRet.f32 %9284, 1
  %9287 = extractvalue %dx.types.CBufRet.f32 %9284, 2
  %9288 = extractvalue %dx.types.CBufRet.f32 %9284, 3
  %9289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9290 = extractvalue %dx.types.CBufRet.f32 %9289, 3
  %9291 = call float @dx.op.binary.f32(i32 36, float %9180, float %9290)  ; FMin(a,b)
  %9292 = fmul fast float %9288, %9279
  %9293 = call float @dx.op.unary.f32(i32 7, float %9292)  ; Saturate(value)
  %9294 = fsub fast float %9285, %9281
  %9295 = fsub fast float %9286, %9282
  %9296 = fsub fast float %9287, %9283
  %9297 = fmul fast float %9293, %9294
  %9298 = fmul fast float %9293, %9295
  %9299 = fmul fast float %9293, %9296
  %9300 = fadd fast float %9297, %9281
  %9301 = fadd fast float %9298, %9282
  %9302 = fadd fast float %9299, %9283
  %9303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9304 = extractvalue %dx.types.CBufRet.f32 %9303, 0
  %9305 = extractvalue %dx.types.CBufRet.f32 %9303, 1
  %9306 = fadd fast float %9305, %9304
  %9307 = call float @dx.op.unary.f32(i32 7, float %9306)  ; Saturate(value)
  %9308 = extractvalue %dx.types.CBufRet.f32 %9303, 2
  %9309 = extractvalue %dx.types.CBufRet.f32 %9303, 3
  %9310 = fadd fast float %9309, %9308
  %9311 = call float @dx.op.unary.f32(i32 7, float %9310)  ; Saturate(value)
  %9312 = fmul fast float %9307, %9291
  %9313 = fmul fast float %9312, %9311
  br label %9396

; <label>:9314                                    ; preds = %9250
  %9315 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9274
  %9316 = load float, float* %9315, align 4, !tbaa !116, !noalias !128
  %9317 = fcmp fast olt float %9316, %9181
  %9318 = icmp sgt i32 %9257, 0
  %9319 = and i1 %9318, %9317
  br i1 %9319, label %9320, label %9357

; <label>:9320                                    ; preds = %9314
  br label %9321

; <label>:9321                                    ; preds = %9350, %9320
  %9322 = phi float [ %9351, %9350 ], [ %9179, %9320 ]
  %9323 = phi float [ %9352, %9350 ], [ %9180, %9320 ]
  %9324 = phi float [ %9332, %9350 ], [ %9316, %9320 ]
  %9325 = phi i32 [ %9329, %9350 ], [ %9274, %9320 ]
  %9326 = getelementptr inbounds [3 x float], [3 x float]* %106, i32 0, i32 %9325
  %9327 = load float, float* %9326, align 4, !tbaa !116, !noalias !128
  %9328 = icmp slt i32 %9325, 2
  %9329 = add nsw i32 %9325, 1
  %9330 = getelementptr inbounds [3 x float], [3 x float]* %105, i32 0, i32 %9329
  %9331 = load float, float* %9330, align 4, !tbaa !116, !noalias !128
  %9332 = select i1 %9328, float %9331, float %9095
  %9333 = call float @dx.op.binary.f32(i32 36, float %9332, float %9327)  ; FMin(a,b)
  %9334 = call float @dx.op.binary.f32(i32 36, float %9181, float %9333)  ; FMin(a,b)
  %9335 = icmp eq i32 %9045, 0
  %9336 = fadd fast float %9334, %9324
  %9337 = fmul fast float %9336, %9026
  %9338 = fadd fast float %9337, %9039
  br i1 %9335, label %9344, label %9339

; <label>:9339                                    ; preds = %9321
  %9340 = fsub fast float %9334, %9324
  %9341 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9340)  ; FMax(a,b)
  %9342 = fmul fast float %9341, %9338
  %9343 = fadd fast float %9342, %9323
  br label %9350

; <label>:9344                                    ; preds = %9321
  %9345 = fsub fast float %9324, %9334
  %9346 = call float @dx.op.unary.f32(i32 6, float %9345)  ; FAbs(value)
  %9347 = fadd fast float %9346, %9322
  %9348 = fmul fast float %9346, %9338
  %9349 = fsub fast float %9323, %9348
  br label %9350

; <label>:9350                                    ; preds = %9344, %9339
  %9351 = phi float [ %9341, %9339 ], [ %9347, %9344 ]
  %9352 = phi float [ %9343, %9339 ], [ %9349, %9344 ]
  %9353 = fcmp fast olt float %9332, %9181
  %9354 = icmp slt i32 %9329, 3
  %9355 = and i1 %9354, %9353
  br i1 %9355, label %9321, label %9356

; <label>:9356                                    ; preds = %9350
  br label %9357

; <label>:9357                                    ; preds = %9356, %9314
  %9358 = phi float [ %9179, %9314 ], [ %9351, %9356 ]
  %9359 = phi float [ %9180, %9314 ], [ %9352, %9356 ]
  %9360 = fsub fast float %9095, %9358
  %9361 = select i1 %9097, float %9358, float %9360
  %9362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9363 = extractvalue %dx.types.CBufRet.f32 %9362, 0
  %9364 = extractvalue %dx.types.CBufRet.f32 %9362, 1
  %9365 = extractvalue %dx.types.CBufRet.f32 %9362, 2
  %9366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9367 = extractvalue %dx.types.CBufRet.f32 %9366, 0
  %9368 = extractvalue %dx.types.CBufRet.f32 %9366, 1
  %9369 = extractvalue %dx.types.CBufRet.f32 %9366, 2
  %9370 = extractvalue %dx.types.CBufRet.f32 %9366, 3
  %9371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9372 = extractvalue %dx.types.CBufRet.f32 %9371, 3
  %9373 = call float @dx.op.binary.f32(i32 36, float %9359, float %9372)  ; FMin(a,b)
  %9374 = fmul fast float %9370, %9361
  %9375 = call float @dx.op.unary.f32(i32 7, float %9374)  ; Saturate(value)
  %9376 = fsub fast float %9367, %9363
  %9377 = fsub fast float %9368, %9364
  %9378 = fsub fast float %9369, %9365
  %9379 = fmul fast float %9375, %9376
  %9380 = fmul fast float %9375, %9377
  %9381 = fmul fast float %9375, %9378
  %9382 = fadd fast float %9379, %9363
  %9383 = fadd fast float %9380, %9364
  %9384 = fadd fast float %9381, %9365
  %9385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9386 = extractvalue %dx.types.CBufRet.f32 %9385, 0
  %9387 = extractvalue %dx.types.CBufRet.f32 %9385, 1
  %9388 = fadd fast float %9387, %9386
  %9389 = call float @dx.op.unary.f32(i32 7, float %9388)  ; Saturate(value)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9385, 2
  %9391 = extractvalue %dx.types.CBufRet.f32 %9385, 3
  %9392 = fadd fast float %9391, %9390
  %9393 = call float @dx.op.unary.f32(i32 7, float %9392)  ; Saturate(value)
  %9394 = fmul fast float %9389, %9373
  %9395 = fmul fast float %9394, %9393
  br label %9396

; <label>:9396                                    ; preds = %9357, %9276, %9111, %9093, %9091
  %9397 = phi float [ %9120, %9111 ], [ %9279, %9276 ], [ %9361, %9357 ], [ 0.000000e+00, %9091 ], [ 0.000000e+00, %9093 ]
  %9398 = phi float [ %9154, %9111 ], [ %9313, %9276 ], [ %9395, %9357 ], [ 0.000000e+00, %9091 ], [ 0.000000e+00, %9093 ]
  %9399 = phi float [ %9141, %9111 ], [ %9300, %9276 ], [ %9382, %9357 ], [ 0.000000e+00, %9091 ], [ 0.000000e+00, %9093 ]
  %9400 = phi float [ %9142, %9111 ], [ %9301, %9276 ], [ %9383, %9357 ], [ 0.000000e+00, %9091 ], [ 0.000000e+00, %9093 ]
  %9401 = phi float [ %9143, %9111 ], [ %9302, %9276 ], [ %9384, %9357 ], [ 0.000000e+00, %9091 ], [ 0.000000e+00, %9093 ]
  %9402 = fmul fast float %9034, %9398
  %9403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9404 = extractvalue %dx.types.CBufRet.f32 %9403, 2
  %9405 = fsub fast float %9041, %9404
  %9406 = fcmp fast olt float %9402, -2.000000e+01
  %9407 = call float @dx.op.unary.f32(i32 21, float %9402)  ; Exp(value)
  %9408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9409 = extractvalue %dx.types.CBufRet.f32 %9408, 2
  %9410 = extractvalue %dx.types.CBufRet.f32 %9408, 3
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 2
  %9413 = fmul fast float %9410, %9405
  %9414 = call float @dx.op.unary.f32(i32 7, float %9413)  ; Saturate(value)
  %9415 = fsub fast float 1.000000e+00, %9414
  %9416 = fmul fast float %9026, 5.000000e-01
  %9417 = fadd fast float %9416, 5.000000e-01
  %9418 = call float @dx.op.unary.f32(i32 7, float %9417)  ; Saturate(value)
  %9419 = fsub fast float 1.000000e+00, %9418
  %9420 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9415)  ; FMax(a,b)
  %9421 = fdiv fast float %9419, %9420
  %9422 = fsub fast float %9405, %8983
  %9423 = call float @dx.op.unary.f32(i32 6, float %9422)  ; FAbs(value)
  %9424 = fmul fast float %9423, %9409
  %9425 = call float @dx.op.unary.f32(i32 7, float %9421)  ; Saturate(value)
  %9426 = fsub fast float 1.000000e+00, %9424
  %9427 = fmul fast float %9426, %9425
  %9428 = fadd fast float %9427, %9424
  %9429 = fmul fast float %9412, %9405
  %9430 = call float @dx.op.unary.f32(i32 7, float %9429)  ; Saturate(value)
  %9431 = fsub fast float 1.000000e+00, %9428
  %9432 = fmul fast float %9431, %9430
  %9433 = fadd fast float %9432, %9428
  %9434 = call float @dx.op.unary.f32(i32 7, float %9433)  ; Saturate(value)
  %9435 = fadd fast float %9407, -1.000000e+00
  %9436 = select i1 %9406, float -1.000000e+00, float %9435
  %9437 = fmul fast float %9434, %9436
  %9438 = fadd fast float %9437, 1.000000e+00
  %9439 = fsub fast float -0.000000e+00, %9437
  %9440 = fmul fast float %9399, %9439
  %9441 = fmul fast float %9400, %9439
  %9442 = fmul fast float %9401, %9439
  br label %9443

; <label>:9443                                    ; preds = %9396, %8992
  %9444 = phi float [ %9397, %9396 ], [ 0.000000e+00, %8992 ]
  %9445 = phi float [ %9438, %9396 ], [ 1.000000e+00, %8992 ]
  %9446 = phi float [ %9440, %9396 ], [ 0.000000e+00, %8992 ]
  %9447 = phi float [ %9441, %9396 ], [ 0.000000e+00, %8992 ]
  %9448 = phi float [ %9442, %9396 ], [ 0.000000e+00, %8992 ]
  %9449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9450 = extractvalue %dx.types.CBufRet.f32 %9449, 1
  %9451 = fsub fast float 1.000000e+00, %9445
  %9452 = fmul fast float %9451, %9027
  %9453 = fmul fast float %9452, %9450
  %9454 = fsub fast float %9027, %9453
  br i1 %9020, label %9455, label %9484, !dx.controlflow.hints !164

; <label>:9455                                    ; preds = %9443
  %9456 = fmul fast float %9028, %9017
  %9457 = fadd fast float %9456, %9018
  %9458 = call float @dx.op.unary.f32(i32 7, float %9457)  ; Saturate(value)
  %9459 = fmul fast float %8999, %9454
  %9460 = fsub fast float -0.000000e+00, %9459
  %9461 = fmul fast float %9000, %9454
  %9462 = fsub fast float -0.000000e+00, %9461
  %9463 = call float @dx.op.unary.f32(i32 21, float %9460)  ; Exp(value)
  %9464 = call float @dx.op.unary.f32(i32 21, float %9462)  ; Exp(value)
  %9465 = call float @dx.op.binary.f32(i32 35, float %9007, float %9463)  ; FMax(a,b)
  %9466 = call float @dx.op.binary.f32(i32 35, float %9007, float %9464)  ; FMax(a,b)
  %9467 = fsub fast float %9466, %9465
  %9468 = fmul fast float %9467, %9458
  %9469 = fadd fast float %9468, %9465
  %9470 = call float @dx.op.unary.f32(i32 7, float %9469)  ; Saturate(value)
  %9471 = fsub fast float %9004, %9009
  %9472 = fsub fast float %9005, %9010
  %9473 = fsub fast float %9006, %9011
  %9474 = fmul fast float %9458, %9471
  %9475 = fmul fast float %9458, %9472
  %9476 = fmul fast float %9458, %9473
  %9477 = fadd fast float %9474, %9009
  %9478 = fadd fast float %9475, %9010
  %9479 = fadd fast float %9476, %9011
  %9480 = fsub fast float 1.000000e+00, %9470
  %9481 = fmul fast float %9480, %9477
  %9482 = fmul fast float %9480, %9478
  %9483 = fmul fast float %9480, %9479
  br label %9543

; <label>:9484                                    ; preds = %9443
  %9485 = fmul fast float %9454, %9016
  %9486 = call float @dx.op.unary.f32(i32 7, float %9485)  ; Saturate(value)
  %9487 = fsub fast float 2.000000e+00, %9486
  %9488 = fmul fast float %9486, 9.921875e-01
  %9489 = fmul fast float %9488, %9487
  %9490 = fadd fast float %9489, 3.906250e-03
  %9491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %45, float %9490, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9492 = extractvalue %dx.types.ResRet.f32 %9491, 0
  %9493 = fsub fast float %9486, %9492
  %9494 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9493)  ; FMax(a,b)
  %9495 = fmul fast float %9002, %8983
  %9496 = call float @dx.op.unary.f32(i32 6, float %9495)  ; FAbs(value)
  %9497 = fcmp fast ogt float %9496, 0x3EB0C6F7A0000000
  br i1 %9497, label %9498, label %9504, !dx.controlflow.hints !165

; <label>:9498                                    ; preds = %9484
  %9499 = fmul fast float %9495, 0xBFF7154760000000
  %9500 = call float @dx.op.unary.f32(i32 21, float %9499)  ; Exp(value)
  %9501 = fsub fast float 1.000000e+00, %9500
  %9502 = fdiv fast float %9501, %9495
  %9503 = fmul fast float %9502, %9012
  br label %9504

; <label>:9504                                    ; preds = %9498, %9484
  %9505 = phi float [ %9503, %9498 ], [ %9012, %9484 ]
  %9506 = fadd fast float %9505, %9014
  %9507 = fmul fast float %9506, %9494
  %9508 = fmul fast float %8999, %9507
  %9509 = fsub fast float -0.000000e+00, %9508
  %9510 = fmul fast float %9000, %9507
  %9511 = fsub fast float -0.000000e+00, %9510
  %9512 = fmul fast float %9001, %9507
  %9513 = fsub fast float -0.000000e+00, %9512
  %9514 = call float @dx.op.unary.f32(i32 21, float %9509)  ; Exp(value)
  %9515 = call float @dx.op.unary.f32(i32 21, float %9511)  ; Exp(value)
  %9516 = call float @dx.op.unary.f32(i32 21, float %9513)  ; Exp(value)
  %9517 = fmul fast float %9028, %9028
  %9518 = fadd fast float %9517, 1.000000e+00
  %9519 = fmul fast float %9518, 0x3FAE8EC8A0000000
  %9520 = fmul fast float %9519, %9009
  %9521 = fmul fast float %9519, %9010
  %9522 = fmul fast float %9519, %9011
  %9523 = fmul fast float %9028, %9007
  %9524 = fsub fast float 1.000000e+00, %9523
  %9525 = fmul fast float %9007, %9007
  %9526 = fsub fast float 1.000000e+00, %9525
  %9527 = fmul fast float %9526, 0x3FB45F3060000000
  %9528 = fmul fast float %9524, %9524
  %9529 = fdiv fast float 1.000000e+00, %9528
  %9530 = fmul fast float %9527, %9529
  %9531 = fmul fast float %9530, %9004
  %9532 = fmul fast float %9530, %9005
  %9533 = fmul fast float %9530, %9006
  %9534 = fadd fast float %9531, %9520
  %9535 = fadd fast float %9532, %9521
  %9536 = fadd fast float %9533, %9522
  %9537 = fsub fast float 1.000000e+00, %9514
  %9538 = fsub fast float 1.000000e+00, %9515
  %9539 = fsub fast float 1.000000e+00, %9516
  %9540 = fmul fast float %9534, %9537
  %9541 = fmul fast float %9535, %9538
  %9542 = fmul fast float %9536, %9539
  br label %9543

; <label>:9543                                    ; preds = %9504, %9455
  %9544 = phi float [ %9481, %9455 ], [ %9540, %9504 ]
  %9545 = phi float [ %9482, %9455 ], [ %9541, %9504 ]
  %9546 = phi float [ %9483, %9455 ], [ %9542, %9504 ]
  %9547 = phi float [ %9470, %9455 ], [ %9514, %9504 ]
  %9548 = phi float [ %9470, %9455 ], [ %9515, %9504 ]
  %9549 = phi float [ %9470, %9455 ], [ %9516, %9504 ]
  br i1 %9036, label %9550, label %9748, !dx.controlflow.hints !166

; <label>:9550                                    ; preds = %9543
  %9551 = extractvalue %dx.types.CBufRet.f32 %9449, 0
  %9552 = fmul fast float %9551, %9451
  %9553 = fsub fast float %9446, %9544
  %9554 = fsub fast float %9447, %9545
  %9555 = fsub fast float %9448, %9546
  %9556 = fmul fast float %9552, %9553
  %9557 = fmul fast float %9552, %9554
  %9558 = fmul fast float %9552, %9555
  %9559 = fadd fast float %9556, %9544
  %9560 = fadd fast float %9557, %9545
  %9561 = fadd fast float %9558, %9546
  %9562 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9547)  ; FMax(a,b)
  %9563 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9548)  ; FMax(a,b)
  %9564 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9549)  ; FMax(a,b)
  %9565 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9445)  ; FMax(a,b)
  %9566 = call float @dx.op.binary.f32(i32 35, float %9444, float %9454)  ; FMax(a,b)
  %9567 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9566)  ; FMax(a,b)
  %9568 = fdiv fast float %9444, %9567
  %9569 = call float @dx.op.unary.f32(i32 7, float %9568)  ; Saturate(value)
  %9570 = fdiv fast float %9454, %9567
  %9571 = call float @dx.op.unary.f32(i32 7, float %9570)  ; Saturate(value)
  %9572 = fcmp fast une float %9565, 1.000000e+00
  br i1 %9572, label %9573, label %9586, !dx.controlflow.hints !167

; <label>:9573                                    ; preds = %9550
  %9574 = call float @dx.op.unary.f32(i32 23, float %9565)  ; Log(value)
  %9575 = fmul fast float %9574, 0x3FE62E4300000000
  %9576 = fmul fast float %9446, %9575
  %9577 = fsub fast float -0.000000e+00, %9576
  %9578 = fmul fast float %9447, %9575
  %9579 = fsub fast float -0.000000e+00, %9578
  %9580 = fmul fast float %9448, %9575
  %9581 = fsub fast float -0.000000e+00, %9580
  %9582 = fsub fast float 1.000000e+00, %9565
  %9583 = fdiv fast float %9577, %9582
  %9584 = fdiv fast float %9579, %9582
  %9585 = fdiv fast float %9581, %9582
  br label %9586

; <label>:9586                                    ; preds = %9573, %9550
  %9587 = phi float [ %9583, %9573 ], [ %9446, %9550 ]
  %9588 = phi float [ %9584, %9573 ], [ %9447, %9550 ]
  %9589 = phi float [ %9585, %9573 ], [ %9448, %9550 ]
  %9590 = phi float [ %9575, %9573 ], [ 0.000000e+00, %9550 ]
  %9591 = fcmp fast une float %9562, 1.000000e+00
  br i1 %9591, label %9592, label %9599, !dx.controlflow.hints !168

; <label>:9592                                    ; preds = %9586
  %9593 = call float @dx.op.unary.f32(i32 23, float %9562)  ; Log(value)
  %9594 = fmul fast float %9593, 0x3FE62E4300000000
  %9595 = fmul fast float %9559, %9594
  %9596 = fsub fast float -0.000000e+00, %9595
  %9597 = fsub fast float 1.000000e+00, %9562
  %9598 = fdiv fast float %9596, %9597
  br label %9599

; <label>:9599                                    ; preds = %9592, %9586
  %9600 = phi float [ %9598, %9592 ], [ %9559, %9586 ]
  %9601 = phi float [ %9594, %9592 ], [ 0.000000e+00, %9586 ]
  %9602 = fcmp fast une float %9563, 1.000000e+00
  br i1 %9602, label %9603, label %9610, !dx.controlflow.hints !168

; <label>:9603                                    ; preds = %9599
  %9604 = call float @dx.op.unary.f32(i32 23, float %9563)  ; Log(value)
  %9605 = fmul fast float %9604, 0x3FE62E4300000000
  %9606 = fmul fast float %9560, %9605
  %9607 = fsub fast float -0.000000e+00, %9606
  %9608 = fsub fast float 1.000000e+00, %9563
  %9609 = fdiv fast float %9607, %9608
  br label %9610

; <label>:9610                                    ; preds = %9603, %9599
  %9611 = phi float [ %9609, %9603 ], [ %9560, %9599 ]
  %9612 = phi float [ %9605, %9603 ], [ 0.000000e+00, %9599 ]
  %9613 = fcmp fast une float %9564, 1.000000e+00
  br i1 %9613, label %9614, label %9621, !dx.controlflow.hints !168

; <label>:9614                                    ; preds = %9610
  %9615 = call float @dx.op.unary.f32(i32 23, float %9564)  ; Log(value)
  %9616 = fmul fast float %9615, 0x3FE62E4300000000
  %9617 = fmul fast float %9561, %9616
  %9618 = fsub fast float -0.000000e+00, %9617
  %9619 = fsub fast float 1.000000e+00, %9564
  %9620 = fdiv fast float %9618, %9619
  br label %9621

; <label>:9621                                    ; preds = %9614, %9610
  %9622 = phi float [ %9620, %9614 ], [ %9561, %9610 ]
  %9623 = phi float [ %9616, %9614 ], [ 0.000000e+00, %9610 ]
  %9624 = fmul fast float %9587, %9571
  %9625 = fmul fast float %9588, %9571
  %9626 = fmul fast float %9589, %9571
  %9627 = fmul fast float %9590, %9571
  %9628 = fmul fast float %9600, %9569
  %9629 = fmul fast float %9611, %9569
  %9630 = fmul fast float %9622, %9569
  %9631 = fmul fast float %9601, %9569
  %9632 = fmul fast float %9612, %9569
  %9633 = fmul fast float %9623, %9569
  %9634 = fadd fast float %9628, %9624
  %9635 = fadd fast float %9629, %9625
  %9636 = fadd fast float %9630, %9626
  %9637 = fadd fast float %9631, %9627
  %9638 = fadd fast float %9632, %9627
  %9639 = fadd fast float %9633, %9627
  %9640 = fcmp fast une float %9637, 0.000000e+00
  br i1 %9640, label %9641, label %9648, !dx.controlflow.hints !169

; <label>:9641                                    ; preds = %9621
  %9642 = fmul fast float %9637, 0x3FF7154760000000
  %9643 = call float @dx.op.unary.f32(i32 21, float %9642)  ; Exp(value)
  %9644 = fsub fast float 1.000000e+00, %9643
  %9645 = fmul fast float %9634, %9644
  %9646 = fsub fast float -0.000000e+00, %9645
  %9647 = fdiv fast float %9646, %9637
  br label %9648

; <label>:9648                                    ; preds = %9641, %9621
  %9649 = phi float [ %9643, %9641 ], [ 1.000000e+00, %9621 ]
  %9650 = phi float [ %9647, %9641 ], [ %9634, %9621 ]
  %9651 = fcmp fast une float %9638, 0.000000e+00
  br i1 %9651, label %9652, label %9659, !dx.controlflow.hints !169

; <label>:9652                                    ; preds = %9648
  %9653 = fmul fast float %9638, 0x3FF7154760000000
  %9654 = call float @dx.op.unary.f32(i32 21, float %9653)  ; Exp(value)
  %9655 = fsub fast float 1.000000e+00, %9654
  %9656 = fmul fast float %9635, %9655
  %9657 = fsub fast float -0.000000e+00, %9656
  %9658 = fdiv fast float %9657, %9638
  br label %9659

; <label>:9659                                    ; preds = %9652, %9648
  %9660 = phi float [ %9654, %9652 ], [ 1.000000e+00, %9648 ]
  %9661 = phi float [ %9658, %9652 ], [ %9635, %9648 ]
  %9662 = fcmp fast une float %9639, 0.000000e+00
  br i1 %9662, label %9663, label %9670, !dx.controlflow.hints !169

; <label>:9663                                    ; preds = %9659
  %9664 = fmul fast float %9639, 0x3FF7154760000000
  %9665 = call float @dx.op.unary.f32(i32 21, float %9664)  ; Exp(value)
  %9666 = fsub fast float 1.000000e+00, %9665
  %9667 = fmul fast float %9636, %9666
  %9668 = fsub fast float -0.000000e+00, %9667
  %9669 = fdiv fast float %9668, %9639
  br label %9670

; <label>:9670                                    ; preds = %9663, %9659
  %9671 = phi float [ %9665, %9663 ], [ 1.000000e+00, %9659 ]
  %9672 = phi float [ %9669, %9663 ], [ %9636, %9659 ]
  %9673 = fcmp fast ogt float %9569, %9571
  br i1 %9673, label %9674, label %9694

; <label>:9674                                    ; preds = %9670
  %9675 = fsub fast float 1.000000e+00, %9571
  %9676 = fmul fast float %9587, %9675
  %9677 = fmul fast float %9588, %9675
  %9678 = fmul fast float %9589, %9675
  %9679 = fmul fast float %9590, %9675
  %9680 = fcmp fast une float %9679, 0.000000e+00
  br i1 %9680, label %9681, label %9732, !dx.controlflow.hints !170

; <label>:9681                                    ; preds = %9674
  %9682 = fmul fast float %9679, 0x3FF7154760000000
  %9683 = call float @dx.op.unary.f32(i32 21, float %9682)  ; Exp(value)
  %9684 = fsub fast float 1.000000e+00, %9683
  %9685 = fmul fast float %9676, %9684
  %9686 = fsub fast float -0.000000e+00, %9685
  %9687 = fmul fast float %9677, %9684
  %9688 = fsub fast float -0.000000e+00, %9687
  %9689 = fmul fast float %9678, %9684
  %9690 = fsub fast float -0.000000e+00, %9689
  %9691 = fdiv fast float %9686, %9679
  %9692 = fdiv fast float %9688, %9679
  %9693 = fdiv fast float %9690, %9679
  br label %9732

; <label>:9694                                    ; preds = %9670
  %9695 = fsub fast float 1.000000e+00, %9569
  %9696 = fmul fast float %9600, %9695
  %9697 = fmul fast float %9611, %9695
  %9698 = fmul fast float %9622, %9695
  %9699 = fmul fast float %9601, %9695
  %9700 = fmul fast float %9612, %9695
  %9701 = fmul fast float %9623, %9695
  %9702 = fcmp fast une float %9699, 0.000000e+00
  br i1 %9702, label %9703, label %9710, !dx.controlflow.hints !169

; <label>:9703                                    ; preds = %9694
  %9704 = fmul fast float %9699, 0x3FF7154760000000
  %9705 = call float @dx.op.unary.f32(i32 21, float %9704)  ; Exp(value)
  %9706 = fsub fast float 1.000000e+00, %9705
  %9707 = fmul fast float %9696, %9706
  %9708 = fsub fast float -0.000000e+00, %9707
  %9709 = fdiv fast float %9708, %9699
  br label %9710

; <label>:9710                                    ; preds = %9703, %9694
  %9711 = phi float [ %9709, %9703 ], [ %9696, %9694 ]
  %9712 = phi float [ %9705, %9703 ], [ 1.000000e+00, %9694 ]
  %9713 = fcmp fast une float %9700, 0.000000e+00
  br i1 %9713, label %9714, label %9721, !dx.controlflow.hints !169

; <label>:9714                                    ; preds = %9710
  %9715 = fmul fast float %9700, 0x3FF7154760000000
  %9716 = call float @dx.op.unary.f32(i32 21, float %9715)  ; Exp(value)
  %9717 = fsub fast float 1.000000e+00, %9716
  %9718 = fmul fast float %9697, %9717
  %9719 = fsub fast float -0.000000e+00, %9718
  %9720 = fdiv fast float %9719, %9700
  br label %9721

; <label>:9721                                    ; preds = %9714, %9710
  %9722 = phi float [ %9720, %9714 ], [ %9697, %9710 ]
  %9723 = phi float [ %9716, %9714 ], [ 1.000000e+00, %9710 ]
  %9724 = fcmp fast une float %9701, 0.000000e+00
  br i1 %9724, label %9725, label %9732, !dx.controlflow.hints !169

; <label>:9725                                    ; preds = %9721
  %9726 = fmul fast float %9701, 0x3FF7154760000000
  %9727 = call float @dx.op.unary.f32(i32 21, float %9726)  ; Exp(value)
  %9728 = fsub fast float 1.000000e+00, %9727
  %9729 = fmul fast float %9698, %9728
  %9730 = fsub fast float -0.000000e+00, %9729
  %9731 = fdiv fast float %9730, %9701
  br label %9732

; <label>:9732                                    ; preds = %9725, %9721, %9681, %9674
  %9733 = phi float [ %9731, %9725 ], [ %9693, %9681 ], [ %9678, %9674 ], [ %9698, %9721 ]
  %9734 = phi float [ %9722, %9725 ], [ %9692, %9681 ], [ %9677, %9674 ], [ %9722, %9721 ]
  %9735 = phi float [ %9711, %9725 ], [ %9691, %9681 ], [ %9676, %9674 ], [ %9711, %9721 ]
  %9736 = phi float [ %9727, %9725 ], [ %9683, %9681 ], [ 1.000000e+00, %9674 ], [ 1.000000e+00, %9721 ]
  %9737 = phi float [ %9723, %9725 ], [ %9683, %9681 ], [ 1.000000e+00, %9674 ], [ %9723, %9721 ]
  %9738 = phi float [ %9712, %9725 ], [ %9683, %9681 ], [ 1.000000e+00, %9674 ], [ %9712, %9721 ]
  %9739 = fmul fast float %9738, %9650
  %9740 = fmul fast float %9737, %9661
  %9741 = fmul fast float %9736, %9672
  %9742 = fadd fast float %9739, %9735
  %9743 = fadd fast float %9740, %9734
  %9744 = fadd fast float %9741, %9733
  %9745 = fmul fast float %9738, %9649
  %9746 = fmul fast float %9737, %9660
  %9747 = fmul fast float %9736, %9671
  br label %9748

; <label>:9748                                    ; preds = %9732, %9543
  %9749 = phi float [ %9747, %9732 ], [ %9549, %9543 ]
  %9750 = phi float [ %9746, %9732 ], [ %9548, %9543 ]
  %9751 = phi float [ %9745, %9732 ], [ %9547, %9543 ]
  %9752 = phi float [ %9744, %9732 ], [ %9546, %9543 ]
  %9753 = phi float [ %9743, %9732 ], [ %9545, %9543 ]
  %9754 = phi float [ %9742, %9732 ], [ %9544, %9543 ]
  %9755 = fmul fast float %9754, %8696
  %9756 = fmul fast float %9753, %8698
  %9757 = fmul fast float %9752, %8700
  %9758 = fmul fast float %9751, %8991
  %9759 = call float @dx.op.dot3.f32(i32 55, float %9751, float %9750, float %9749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9760 = call float @dx.op.dot3.f32(i32 55, float %9755, float %9756, float %9757, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9761 = select i1 %264, float %9759, float %9751
  %9762 = select i1 %264, float %9759, float %9750
  %9763 = select i1 %264, float 1.000000e+00, float %9749
  %9764 = select i1 %264, float %9760, float %9755
  %9765 = select i1 %264, float 0.000000e+00, float %9756
  %9766 = select i1 %264, float 0.000000e+00, float %9757
  %9767 = fmul fast float %9761, %8985
  %9768 = fmul fast float %9762, %8986
  %9769 = fmul fast float %9763, %8987
  %9770 = fadd fast float %9767, %9764
  %9771 = fadd fast float %9768, %9765
  %9772 = fadd fast float %9766, %9769
  %9773 = fmul fast float %9761, %8988
  %9774 = fmul fast float %9762, %8989
  %9775 = fmul fast float %9763, %8990
  %9776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9777 = extractvalue %dx.types.CBufRet.i32 %9776, 0
  %9778 = icmp eq i32 %9777, 0
  br i1 %9778, label %10146, label %9779, !dx.controlflow.hints !171

; <label>:9779                                    ; preds = %9748
  %9780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9781 = extractvalue %dx.types.CBufRet.f32 %9780, 2
  %9782 = extractvalue %dx.types.CBufRet.f32 %9780, 3
  %9783 = fmul fast float %9781, %111
  %9784 = fmul fast float %9782, %112
  %9785 = fmul fast float %9783, 2.000000e+00
  %9786 = fmul fast float %9784, 2.000000e+00
  %9787 = fsub fast float 1.000000e+00, %9785
  %9788 = fsub fast float 1.000000e+00, %9786
  %9789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9790 = extractvalue %dx.types.CBufRet.f32 %9789, 0
  %9791 = extractvalue %dx.types.CBufRet.f32 %9789, 1
  %9792 = extractvalue %dx.types.CBufRet.f32 %9789, 2
  %9793 = fmul fast float %9787, %9790
  %9794 = fmul fast float %9787, %9791
  %9795 = fmul fast float %9787, %9792
  %9796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9797 = extractvalue %dx.types.CBufRet.f32 %9796, 0
  %9798 = extractvalue %dx.types.CBufRet.f32 %9796, 1
  %9799 = extractvalue %dx.types.CBufRet.f32 %9796, 2
  %9800 = fmul fast float %9788, %9797
  %9801 = fmul fast float %9788, %9798
  %9802 = fmul fast float %9788, %9799
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 0
  %9805 = extractvalue %dx.types.CBufRet.f32 %9803, 1
  %9806 = extractvalue %dx.types.CBufRet.f32 %9803, 2
  %9807 = fadd fast float %9800, %9804
  %9808 = fadd fast float %9807, %9793
  %9809 = fadd fast float %9801, %9805
  %9810 = fadd fast float %9809, %9794
  %9811 = fadd fast float %9802, %9806
  %9812 = fadd fast float %9811, %9795
  %9813 = fmul fast float %9808, %8984
  %9814 = fmul fast float %9810, %8984
  %9815 = fmul fast float %9812, %8984
  %9816 = fmul fast float %9813, %9813
  %9817 = fmul fast float %9814, %9814
  %9818 = fadd fast float %9816, %9817
  %9819 = fmul fast float %9815, %9815
  %9820 = fadd fast float %9818, %9819
  %9821 = call float @dx.op.unary.f32(i32 24, float %9820)  ; Sqrt(value)
  %9822 = extractvalue %dx.types.CBufRet.f32 %8711, 0
  %9823 = fsub fast float %9821, %9822
  %9824 = extractvalue %dx.types.CBufRet.f32 %8711, 2
  %9825 = fmul fast float %9823, %9824
  %9826 = call float @dx.op.unary.f32(i32 7, float %9825)  ; Saturate(value)
  %9827 = fadd fast float %9826, -5.000000e-01
  %9828 = fmul fast float %9827, 2.000000e+00
  %9829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9830 = extractvalue %dx.types.CBufRet.f32 %9829, 2
  %9831 = call float @dx.op.binary.f32(i32 36, float %9830, float %9828)  ; FMin(a,b)
  %9832 = fsub fast float -0.000000e+00, %9830
  %9833 = fcmp fast ogt float %9831, %9832
  br i1 %9833, label %9834, label %10146, !dx.controlflow.hints !172

; <label>:9834                                    ; preds = %9779
  %9835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9836 = extractvalue %dx.types.CBufRet.f32 %9835, 3
  %9837 = fcmp fast ogt float %9836, 0.000000e+00
  br i1 %9837, label %9838, label %9913, !dx.controlflow.hints !173

; <label>:9838                                    ; preds = %9834
  %9839 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9840 = extractvalue %dx.types.Dimensions %9839, 0
  %9841 = sitofp i32 %9840 to float
  %9842 = extractvalue %dx.types.Dimensions %9839, 1
  %9843 = sitofp i32 %9842 to float
  %9844 = fmul fast float %9783, %9841
  %9845 = fmul fast float %9784, %9843
  %9846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9847 = extractvalue %dx.types.CBufRet.f32 %9846, 1
  %9848 = fsub fast float -0.000000e+00, %9847
  %9849 = fptoui float %9848 to i32
  %9850 = fptoui float %9844 to i32
  %9851 = fptoui float %9845 to i32
  %9852 = and i32 %9849, 31
  %9853 = lshr i32 %9850, %9852
  %9854 = lshr i32 %9851, %9852
  %9855 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9849, i32 %9853, i32 %9854, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9856 = extractvalue %dx.types.ResRet.f32 %9855, 0
  %9857 = fcmp fast olt float %9856, -1.000000e+00
  %9858 = fcmp fast ogt float %9856, -1.000000e+00
  %9859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9860 = extractvalue %dx.types.CBufRet.f32 %9859, 1
  %9861 = select i1 %9858, float %9860, float 1.000000e+00
  %9862 = fadd fast float %9856, 1.000000e+00
  %9863 = fmul fast float %9861, %9862
  %9864 = call float @dx.op.unary.f32(i32 6, float %9863)  ; FAbs(value)
  %9865 = extractvalue %dx.types.CBufRet.f32 %9859, 3
  %9866 = fcmp fast oge float %9864, %9865
  %9867 = select i1 %9866, float 0x4197782600000000, float %9864
  %9868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9869 = extractvalue %dx.types.CBufRet.f32 %9868, 0
  %9870 = extractvalue %dx.types.CBufRet.f32 %9868, 1
  %9871 = extractvalue %dx.types.CBufRet.f32 %9868, 2
  %9872 = select i1 %9857, float %9869, float %9790
  %9873 = select i1 %9857, float %9870, float %9791
  %9874 = select i1 %9857, float %9871, float %9792
  %9875 = fmul fast float %9872, %9787
  %9876 = fmul fast float %9873, %9787
  %9877 = fmul fast float %9874, %9787
  %9878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9879 = extractvalue %dx.types.CBufRet.f32 %9878, 0
  %9880 = extractvalue %dx.types.CBufRet.f32 %9878, 1
  %9881 = extractvalue %dx.types.CBufRet.f32 %9878, 2
  %9882 = select i1 %9857, float %9879, float %9797
  %9883 = select i1 %9857, float %9880, float %9798
  %9884 = select i1 %9857, float %9881, float %9799
  %9885 = fmul fast float %9882, %9788
  %9886 = fmul fast float %9883, %9788
  %9887 = fmul fast float %9884, %9788
  %9888 = fadd fast float %9885, %9875
  %9889 = fadd fast float %9886, %9876
  %9890 = fadd fast float %9887, %9877
  %9891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9892 = extractvalue %dx.types.CBufRet.f32 %9891, 0
  %9893 = extractvalue %dx.types.CBufRet.f32 %9891, 1
  %9894 = extractvalue %dx.types.CBufRet.f32 %9891, 2
  %9895 = select i1 %9857, float %9892, float %9804
  %9896 = select i1 %9857, float %9893, float %9805
  %9897 = select i1 %9857, float %9894, float %9806
  %9898 = fadd fast float %9888, %9895
  %9899 = fadd fast float %9889, %9896
  %9900 = fadd fast float %9890, %9897
  %9901 = fmul fast float %9898, %9867
  %9902 = fmul fast float %9899, %9867
  %9903 = fmul fast float %9900, %9867
  %9904 = fmul fast float %9901, %9901
  %9905 = fmul fast float %9902, %9902
  %9906 = fadd fast float %9904, %9905
  %9907 = fmul fast float %9903, %9903
  %9908 = fadd fast float %9906, %9907
  %9909 = call float @dx.op.unary.f32(i32 24, float %9908)  ; Sqrt(value)
  %9910 = fsub fast float %9909, %9822
  %9911 = fmul fast float %9910, %9824
  %9912 = call float @dx.op.unary.f32(i32 7, float %9911)  ; Saturate(value)
  br label %9913

; <label>:9913                                    ; preds = %9838, %9834
  %9914 = phi float [ %9912, %9838 ], [ 1.000000e+00, %9834 ]
  %9915 = fmul fast float %9831, 5.000000e-01
  %9916 = fadd fast float %9915, 5.000000e-01
  %9917 = call float @dx.op.unary.f32(i32 22, float %9916)  ; Frc(value)
  %9918 = call float @dx.op.unary.f32(i32 27, float %9917)  ; Round_ni(value)
  %9919 = call float @dx.op.unary.f32(i32 22, float %9917)  ; Frc(value)
  %9920 = fmul fast float %9919, 2.000000e+00
  %9921 = fadd fast float %9920, -1.000000e+00
  %9922 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %45, float %9783, float %9784, float %9918, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9923 = extractvalue %dx.types.ResRet.f32 %9922, 0
  %9924 = extractvalue %dx.types.ResRet.f32 %9922, 1
  %9925 = extractvalue %dx.types.ResRet.f32 %9922, 2
  %9926 = extractvalue %dx.types.ResRet.f32 %9922, 3
  %9927 = fadd fast float %9923, -5.000000e-01
  %9928 = fadd fast float %9925, -5.000000e-01
  %9929 = fmul fast float %9927, 0xBFD5555560000000
  %9930 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9928, float %9929)  ; FMad(a,b,c)
  %9931 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9924, float 0.000000e+00)  ; FMad(a,b,c)
  %9932 = fadd fast float %9931, %9926
  %9933 = fmul fast float %9927, -7.500000e-01
  %9934 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9928, float %9933)  ; FMad(a,b,c)
  %9935 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9924, float 0.000000e+00)  ; FMad(a,b,c)
  %9936 = fadd fast float %9935, %9926
  %9937 = call float @dx.op.binary.f32(i32 35, float %9930, float -1.000000e+00)  ; FMax(a,b)
  %9938 = call float @dx.op.binary.f32(i32 35, float %9932, float -1.000000e+00)  ; FMax(a,b)
  %9939 = call float @dx.op.binary.f32(i32 35, float %9934, float -1.000000e+00)  ; FMax(a,b)
  %9940 = call float @dx.op.binary.f32(i32 35, float %9936, float -1.000000e+00)  ; FMax(a,b)
  %9941 = call float @dx.op.binary.f32(i32 36, float %9937, float 1.000000e+00)  ; FMin(a,b)
  %9942 = call float @dx.op.binary.f32(i32 36, float %9938, float 1.000000e+00)  ; FMin(a,b)
  %9943 = call float @dx.op.binary.f32(i32 36, float %9939, float 1.000000e+00)  ; FMin(a,b)
  %9944 = call float @dx.op.binary.f32(i32 36, float %9940, float 1.000000e+00)  ; FMin(a,b)
  %9945 = fcmp fast olt float %9941, 0x3FEFFF8020000000
  br i1 %9945, label %9946, label %10061, !dx.controlflow.hints !174

; <label>:9946                                    ; preds = %9913
  %9947 = extractvalue %dx.types.CBufRet.f32 %9829, 3
  %9948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9949 = extractvalue %dx.types.CBufRet.f32 %9948, 0
  %9950 = extractvalue %dx.types.CBufRet.f32 %9948, 1
  %9951 = extractvalue %dx.types.CBufRet.f32 %9948, 2
  %9952 = extractvalue %dx.types.CBufRet.f32 %9948, 3
  %9953 = fsub fast float %9949, %9941
  %9954 = fsub fast float %9950, %9942
  %9955 = fsub fast float %9951, %9943
  %9956 = fsub fast float %9952, %9944
  %9957 = fmul fast float %9953, %9947
  %9958 = fmul fast float %9954, %9947
  %9959 = fmul fast float %9955, %9947
  %9960 = fmul fast float %9956, %9947
  %9961 = fadd fast float %9957, %9941
  %9962 = fadd fast float %9958, %9942
  %9963 = fsub fast float -0.000000e+00, %9962
  %9964 = fadd fast float %9959, %9943
  %9965 = fadd fast float %9960, %9944
  %9966 = fmul fast float %9961, %9961
  %9967 = fsub fast float %9962, %9966
  %9968 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9967)  ; FMax(a,b)
  %9969 = fdiv fast float 1.000000e+00, %9968
  %9970 = fmul fast float %9962, %9961
  %9971 = fsub fast float %9964, %9970
  %9972 = fsub fast float %9921, %9961
  %9973 = fmul fast float %9921, %9921
  %9974 = fsub fast float %9973, %9962
  %9975 = fmul fast float %9972, %9969
  %9976 = fmul fast float %9975, %9971
  %9977 = fsub fast float %9974, %9976
  %9978 = fmul fast float %9962, %9962
  %9979 = fsub fast float %9965, %9978
  %9980 = fmul fast float %9971, %9971
  %9981 = fmul fast float %9980, %9969
  %9982 = fsub fast float %9979, %9981
  %9983 = fdiv fast float %9977, %9982
  %9984 = fmul fast float %9971, %9983
  %9985 = fsub fast float %9972, %9984
  %9986 = fmul fast float %9985, %9969
  %9987 = fmul fast float %9986, %9961
  %9988 = fsub fast float 1.000000e+00, %9987
  %9989 = fmul fast float %9962, %9983
  %9990 = fsub fast float %9988, %9989
  %9991 = fmul fast float %9986, %9986
  %9992 = fmul fast float %9983, 4.000000e+00
  %9993 = fmul fast float %9992, %9990
  %9994 = fsub fast float %9991, %9993
  %9995 = call float @dx.op.unary.f32(i32 24, float %9994)  ; Sqrt(value)
  %9996 = fcmp fast oge float %9986, 0.000000e+00
  %9997 = fsub fast float -0.000000e+00, %9995
  %9998 = select i1 %9996, float %9997, float %9995
  %9999 = fsub fast float %9998, %9986
  %10000 = fdiv fast float %9999, %9983
  %10001 = fdiv fast float %9990, %9999
  %10002 = fmul fast float %10000, 5.000000e-01
  %10003 = fmul fast float %10001, 2.000000e+00
  %10004 = select i1 %9996, float %10002, float %10003
  %10005 = select i1 %9996, float %10003, float %10002
  %10006 = call float @dx.op.binary.f32(i32 35, float %10004, float %10005)  ; FMax(a,b)
  %10007 = call float @dx.op.binary.f32(i32 36, float %10004, float %10005)  ; FMin(a,b)
  %10008 = fcmp fast ogt float %9921, %10007
  br i1 %10008, label %10009, label %10019

; <label>:10009                                   ; preds = %9946
  %10010 = fsub fast float %9921, %10007
  %10011 = fsub fast float %10006, %10007
  %10012 = fmul fast float %10010, %10011
  %10013 = fmul fast float %10006, %9921
  %10014 = fadd fast float %10006, %9921
  %10015 = fmul fast float %10014, %9961
  %10016 = fadd fast float %10013, %9962
  %10017 = fsub fast float %10016, %10015
  %10018 = fdiv fast float %10017, %10012
  br label %10019

; <label>:10019                                   ; preds = %10009, %9946
  %10020 = phi float [ %10018, %10009 ], [ 0.000000e+00, %9946 ]
  %10021 = fcmp fast ogt float %9921, %10006
  %10022 = fsub fast float %9921, %10006
  br i1 %10021, label %10023, label %10033

; <label>:10023                                   ; preds = %10019
  %10024 = fsub fast float %10006, %10007
  %10025 = fmul fast float %10024, %10022
  %10026 = fmul fast float %10007, %9921
  %10027 = fadd fast float %10007, %9921
  %10028 = fmul fast float %10027, %9961
  %10029 = fsub fast float %9963, %10026
  %10030 = fadd fast float %10029, %10028
  %10031 = fdiv fast float %10030, %10025
  %10032 = fadd fast float %10031, %10020
  br label %10033

; <label>:10033                                   ; preds = %10023, %10019
  %10034 = phi float [ %10032, %10023 ], [ %10020, %10019 ]
  %10035 = fsub fast float %9921, %10007
  %10036 = fmul fast float %10035, %10022
  %10037 = fmul fast float %10007, %10006
  %10038 = fadd fast float %10007, %10006
  %10039 = fmul fast float %10038, %9961
  %10040 = fadd fast float %10037, %9962
  %10041 = fsub fast float %10040, %10039
  %10042 = fdiv fast float %10041, %10036
  %10043 = call float @dx.op.unary.f32(i32 7, float %10034)  ; Saturate(value)
  %10044 = fcmp fast oeq float %8712, 0.000000e+00
  %10045 = extractvalue %dx.types.CBufRet.f32 %9829, 0
  %10046 = fcmp fast oeq float %10045, 0.000000e+00
  %10047 = or i1 %10044, %10046
  %10048 = fmul fast float %10045, 2.000000e+00
  %10049 = fadd fast float %9830, %9831
  %10050 = fdiv fast float %10049, %10048
  %10051 = call float @dx.op.unary.f32(i32 7, float %10050)  ; Saturate(value)
  %10052 = fmul fast float %10051, 2.000000e+00
  %10053 = fsub fast float 3.000000e+00, %10052
  %10054 = fmul fast float %10051, %10051
  %10055 = fmul fast float %10054, %10053
  %10056 = select i1 %10047, float 1.000000e+00, float %10055
  %10057 = fmul fast float %10042, %8712
  %10058 = fadd fast float %10043, %10057
  %10059 = call float @dx.op.unary.f32(i32 7, float %10058)  ; Saturate(value)
  %10060 = fmul fast float %10056, %10059
  br label %10061

; <label>:10061                                   ; preds = %10033, %9913
  %10062 = phi float [ %10060, %10033 ], [ 0.000000e+00, %9913 ]
  %10063 = fsub fast float 1.000000e+00, %10062
  %10064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %45, float %9783, float %9784, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10065 = extractvalue %dx.types.ResRet.f32 %10064, 0
  %10066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10067 = extractvalue %dx.types.CBufRet.i32 %10066, 2
  %10068 = icmp eq i32 %10067, 0
  br i1 %10068, label %10074, label %10069

; <label>:10069                                   ; preds = %10061
  %10070 = call float @dx.op.unary.f32(i32 7, float %10062)  ; Saturate(value)
  %10071 = fadd fast float %10065, -1.000000e+00
  %10072 = fmul fast float %10070, %10071
  %10073 = fadd fast float %10072, 1.000000e+00
  br label %10074

; <label>:10074                                   ; preds = %10069, %10061
  %10075 = phi float [ %10073, %10069 ], [ %10063, %10061 ]
  br i1 %9837, label %10076, label %10094

; <label>:10076                                   ; preds = %10074
  %10077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10078 = extractvalue %dx.types.CBufRet.f32 %10077, 1
  %10079 = fsub fast float %9914, %10078
  %10080 = call float @dx.op.unary.f32(i32 7, float %10079)  ; Saturate(value)
  %10081 = fsub fast float %9914, %9836
  %10082 = call float @dx.op.unary.f32(i32 7, float %10081)  ; Saturate(value)
  %10083 = fsub fast float %10080, %10082
  %10084 = fsub fast float %9916, %10082
  %10085 = fdiv fast float %10084, %10083
  %10086 = call float @dx.op.unary.f32(i32 7, float %10085)  ; Saturate(value)
  %10087 = fmul fast float %10086, 2.000000e+00
  %10088 = fsub fast float 3.000000e+00, %10087
  %10089 = fsub fast float %10065, %10075
  %10090 = fmul fast float %10086, %10086
  %10091 = fmul fast float %10090, %10089
  %10092 = fmul fast float %10091, %10088
  %10093 = fadd fast float %10092, %10075
  br label %10094

; <label>:10094                                   ; preds = %10076, %10074
  %10095 = phi float [ %10093, %10076 ], [ %10075, %10074 ]
  %10096 = call float @dx.op.binary.f32(i32 35, float %10065, float %10095)  ; FMax(a,b)
  %10097 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10098 = extractvalue %dx.types.CBufRet.i32 %10097, 2
  %10099 = and i32 %10098, 1
  %10100 = icmp eq i32 %10099, 0
  %10101 = fcmp fast une float %10096, 1.000000e+00
  %10102 = and i1 %10101, %10100
  br i1 %10102, label %10103, label %10122

; <label>:10103                                   ; preds = %10094
  %10104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %45, float %9783, float %9784, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10105 = extractvalue %dx.types.ResRet.f32 %10104, 0
  %10106 = extractvalue %dx.types.ResRet.f32 %10104, 1
  %10107 = extractvalue %dx.types.ResRet.f32 %10104, 2
  %10108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10109 = extractvalue %dx.types.CBufRet.f32 %10108, 1
  %10110 = fmul fast float %10109, %10105
  %10111 = fmul fast float %10109, %10106
  %10112 = fmul fast float %10109, %10107
  %10113 = fcmp fast ogt float %10065, 0x3FEFFF2E40000000
  %10114 = fsub fast float 1.000000e+00, %10096
  %10115 = fsub fast float 1.000000e+00, %10065
  %10116 = fdiv fast float %10114, %10115
  %10117 = call float @dx.op.unary.f32(i32 7, float %10116)  ; Saturate(value)
  %10118 = select i1 %10113, float 0.000000e+00, float %10117
  %10119 = fmul fast float %10110, %10118
  %10120 = fmul fast float %10111, %10118
  %10121 = fmul fast float %10112, %10118
  br label %10122

; <label>:10122                                   ; preds = %10103, %10094
  %10123 = phi float [ 0.000000e+00, %10094 ], [ %10119, %10103 ]
  %10124 = phi float [ 0.000000e+00, %10094 ], [ %10120, %10103 ]
  %10125 = phi float [ 0.000000e+00, %10094 ], [ %10121, %10103 ]
  %10126 = fmul fast float %10123, %8696
  %10127 = fmul fast float %10124, %8698
  %10128 = fmul fast float %10125, %8700
  %10129 = fmul fast float %10096, %9758
  %10130 = call float @dx.op.dot3.f32(i32 55, float %10096, float %10096, float %10096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10131 = call float @dx.op.dot3.f32(i32 55, float %10126, float %10127, float %10128, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10132 = select i1 %264, float %10130, float %10096
  %10133 = select i1 %264, float 1.000000e+00, float %10096
  %10134 = select i1 %264, float %10131, float %10126
  %10135 = select i1 %264, float 0.000000e+00, float %10127
  %10136 = select i1 %264, float 0.000000e+00, float %10128
  %10137 = fmul fast float %10132, %9770
  %10138 = fmul fast float %10132, %9771
  %10139 = fmul fast float %10133, %9772
  %10140 = fadd fast float %10137, %10134
  %10141 = fadd fast float %10138, %10135
  %10142 = fadd fast float %10136, %10139
  %10143 = fmul fast float %10132, %9773
  %10144 = fmul fast float %10132, %9774
  %10145 = fmul fast float %10133, %9775
  br label %10146

; <label>:10146                                   ; preds = %10122, %9779, %9748, %8980
  %10147 = phi float [ %8985, %8980 ], [ %9770, %9748 ], [ %10140, %10122 ], [ %9770, %9779 ]
  %10148 = phi float [ %8986, %8980 ], [ %9771, %9748 ], [ %10141, %10122 ], [ %9771, %9779 ]
  %10149 = phi float [ %8987, %8980 ], [ %9772, %9748 ], [ %10142, %10122 ], [ %9772, %9779 ]
  %10150 = phi float [ %8988, %8980 ], [ %9773, %9748 ], [ %10143, %10122 ], [ %9773, %9779 ]
  %10151 = phi float [ %8989, %8980 ], [ %9774, %9748 ], [ %10144, %10122 ], [ %9774, %9779 ]
  %10152 = phi float [ %8990, %8980 ], [ %9775, %9748 ], [ %10145, %10122 ], [ %9775, %9779 ]
  %10153 = phi float [ %8991, %8980 ], [ %9758, %9748 ], [ %10129, %10122 ], [ %9758, %9779 ]
  %10154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10155 = extractvalue %dx.types.CBufRet.f32 %10154, 2
  %10156 = extractvalue %dx.types.CBufRet.f32 %10154, 3
  %10157 = fmul fast float %10155, %111
  %10158 = fmul fast float %10156, %112
  %10159 = call float @dx.op.unary.f32(i32 7, float %10157)  ; Saturate(value)
  %10160 = call float @dx.op.unary.f32(i32 7, float %10158)  ; Saturate(value)
  %10161 = select i1 %8722, i32 2, i32 0
  %10162 = or i32 %10161, 1
  %10163 = uitofp i32 %10162 to float
  %10164 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %10159, float %10160, float %10163, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10165 = extractvalue %dx.types.ResRet.f32 %10164, 0
  %10166 = extractvalue %dx.types.ResRet.f32 %10164, 1
  %10167 = extractvalue %dx.types.ResRet.f32 %10164, 2
  %10168 = extractvalue %dx.types.ResRet.f32 %10164, 3
  %10169 = add nuw nsw i32 %10161, 2
  %10170 = uitofp i32 %10169 to float
  %10171 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %45, float %10159, float %10160, float %10170, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10172 = extractvalue %dx.types.ResRet.f32 %10171, 0
  %10173 = extractvalue %dx.types.ResRet.f32 %10171, 1
  %10174 = extractvalue %dx.types.ResRet.f32 %10171, 2
  %10175 = extractvalue %dx.types.ResRet.f32 %10171, 3
  %10176 = call float @dx.op.binary.f32(i32 35, float %10166, float %10167)  ; FMax(a,b)
  %10177 = call float @dx.op.binary.f32(i32 35, float %10165, float %10176)  ; FMax(a,b)
  %10178 = call float @dx.op.binary.f32(i32 35, float %10177, float %10168)  ; FMax(a,b)
  %10179 = call float @dx.op.binary.f32(i32 36, float %10173, float %10174)  ; FMin(a,b)
  %10180 = call float @dx.op.binary.f32(i32 36, float %10172, float %10179)  ; FMin(a,b)
  %10181 = call float @dx.op.binary.f32(i32 36, float %10180, float %10175)  ; FMin(a,b)
  %10182 = fmul fast float %10178, 2.550000e+02
  %10183 = fadd fast float %10182, 0x3F70101020000000
  %10184 = fptoui float %10183 to i32
  %10185 = fmul fast float %10181, 2.550000e+02
  %10186 = fadd fast float %10185, 0x3F70101020000000
  %10187 = fptoui float %10186 to i32
  %10188 = icmp ult i32 %10184, %10187
  br i1 %10188, label %10189, label %10358

; <label>:10189                                   ; preds = %10146
  %10190 = fcmp fast ogt float %97, 9.843750e-01
  %10191 = fadd fast float %8984, -4.000000e+00
  %10192 = select i1 %10190, float -4.000000e+00, float %10191
  %10193 = call float @dx.op.binary.f32(i32 35, float %10192, float 0.000000e+00)  ; FMax(a,b)
  %10194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10195 = extractvalue %dx.types.CBufRet.f32 %10194, 0
  %10196 = fadd fast float %10195, %10193
  %10197 = extractvalue %dx.types.CBufRet.f32 %10194, 2
  %10198 = fmul fast float %10196, %10197
  %10199 = call float @dx.op.unary.f32(i32 23, float %10198)  ; Log(value)
  %10200 = extractvalue %dx.types.CBufRet.f32 %10194, 3
  %10201 = fmul fast float %10200, %10199
  %10202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10203 = extractvalue %dx.types.CBufRet.f32 %10202, 2
  %10204 = fmul fast float %10201, %10203
  %10205 = call float @dx.op.unary.f32(i32 7, float %10204)  ; Saturate(value)
  %10206 = uitofp i32 %10184 to float
  %10207 = uitofp i32 %10187 to float
  %10208 = fadd fast float %10206, 5.000000e-01
  %10209 = fadd fast float %10207, 5.000000e-01
  %10210 = fmul fast float %10203, %10208
  %10211 = fmul fast float %10203, %10209
  %10212 = fadd fast float %10210, 0x3F0FFB4800000000
  %10213 = fadd fast float %10211, 0xBF0FFB4800000000
  %10214 = call float @dx.op.binary.f32(i32 35, float %10205, float %10212)  ; FMax(a,b)
  %10215 = call float @dx.op.binary.f32(i32 36, float %10214, float %10213)  ; FMin(a,b)
  %10216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10217 = extractvalue %dx.types.CBufRet.f32 %10216, 1
  %10218 = extractvalue %dx.types.CBufRet.f32 %10216, 2
  %10219 = extractvalue %dx.types.CBufRet.f32 %10216, 0
  %10220 = select i1 %8722, float %10219, float 0.000000e+00
  %10221 = fmul fast float %10217, %10215
  %10222 = fadd fast float %10220, %10221
  %10223 = fadd fast float %10220, %10218
  %10224 = fsub fast float %10217, %10218
  %10225 = fadd fast float %10224, %10220
  %10226 = call float @dx.op.binary.f32(i32 35, float %10222, float %10223)  ; FMax(a,b)
  %10227 = call float @dx.op.binary.f32(i32 36, float %10226, float %10225)  ; FMin(a,b)
  %10228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %10159, float %10160, float %10227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10229 = extractvalue %dx.types.ResRet.f32 %10228, 0
  %10230 = extractvalue %dx.types.ResRet.f32 %10228, 1
  %10231 = extractvalue %dx.types.ResRet.f32 %10228, 2
  %10232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10233 = extractvalue %dx.types.CBufRet.i32 %10232, 0
  %10234 = extractvalue %dx.types.CBufRet.i32 %10232, 1
  %10235 = uitofp i32 %10233 to float
  %10236 = uitofp i32 %10234 to float
  %10237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10238 = extractvalue %dx.types.CBufRet.f32 %10237, 0
  %10239 = extractvalue %dx.types.CBufRet.f32 %10237, 1
  %10240 = fmul fast float %10235, %10159
  %10241 = fmul fast float %10236, %10160
  %10242 = fadd fast float %10240, -5.000000e-01
  %10243 = fadd fast float %10241, -5.000000e-01
  %10244 = call float @dx.op.unary.f32(i32 22, float %10242)  ; Frc(value)
  %10245 = call float @dx.op.unary.f32(i32 22, float %10243)  ; Frc(value)
  %10246 = fmul fast float %10244, %10244
  %10247 = fmul fast float %10246, %10244
  %10248 = fsub fast float 3.000000e+00, %10244
  %10249 = fmul fast float %10246, %10248
  %10250 = fmul fast float %10244, 3.000000e+00
  %10251 = fmul fast float %10247, 3.000000e+00
  %10252 = fmul fast float %10246, 6.000000e+00
  %10253 = fsub fast float %10251, %10252
  %10254 = fadd fast float %10253, 4.000000e+00
  %10255 = fmul fast float %10254, 0x3FC5555560000000
  %10256 = fmul fast float %10247, -3.000000e+00
  %10257 = fadd fast float %10246, %10244
  %10258 = fmul fast float %10257, 3.000000e+00
  %10259 = fadd fast float %10256, 1.000000e+00
  %10260 = fadd fast float %10259, %10258
  %10261 = fmul fast float %10247, 0x3FC5555560000000
  %10262 = fmul fast float %10245, %10245
  %10263 = fmul fast float %10262, %10245
  %10264 = fsub fast float 3.000000e+00, %10245
  %10265 = fmul fast float %10262, %10264
  %10266 = fmul fast float %10245, 3.000000e+00
  %10267 = fmul fast float %10263, 3.000000e+00
  %10268 = fmul fast float %10262, 6.000000e+00
  %10269 = fsub fast float %10267, %10268
  %10270 = fadd fast float %10269, 4.000000e+00
  %10271 = fmul fast float %10270, 0x3FC5555560000000
  %10272 = fmul fast float %10263, -3.000000e+00
  %10273 = fadd fast float %10262, %10245
  %10274 = fmul fast float %10273, 3.000000e+00
  %10275 = fadd fast float %10272, 1.000000e+00
  %10276 = fadd fast float %10275, %10274
  %10277 = fmul fast float %10263, 0x3FC5555560000000
  %10278 = fadd fast float %10244, 1.000000e+00
  %10279 = fsub fast float 1.000000e+00, %10250
  %10280 = fadd fast float %10279, %10249
  %10281 = fadd fast float %10280, %10254
  %10282 = fmul fast float %10281, 0x3FC5555560000000
  %10283 = fdiv fast float %10255, %10282
  %10284 = fsub fast float %10278, %10283
  %10285 = fsub fast float 1.000000e+00, %10244
  %10286 = fadd fast float %10260, %10247
  %10287 = fmul fast float %10286, 0x3FC5555560000000
  %10288 = fdiv fast float %10261, %10287
  %10289 = fadd fast float %10285, %10288
  %10290 = fadd fast float %10245, 1.000000e+00
  %10291 = fsub fast float 1.000000e+00, %10266
  %10292 = fadd fast float %10291, %10265
  %10293 = fadd fast float %10292, %10270
  %10294 = fmul fast float %10293, 0x3FC5555560000000
  %10295 = fdiv fast float %10271, %10294
  %10296 = fsub fast float %10290, %10295
  %10297 = fsub fast float 1.000000e+00, %10245
  %10298 = fadd fast float %10276, %10263
  %10299 = fmul fast float %10298, 0x3FC5555560000000
  %10300 = fdiv fast float %10277, %10299
  %10301 = fadd fast float %10300, %10297
  %10302 = fmul fast float %10284, %10238
  %10303 = fsub fast float %10159, %10302
  %10304 = fmul fast float %10289, %10238
  %10305 = fadd fast float %10304, %10159
  %10306 = fmul fast float %10301, %10239
  %10307 = fadd fast float %10306, %10160
  %10308 = fmul fast float %10296, %10239
  %10309 = fsub fast float %10160, %10308
  %10310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10303, float %10309, float %10227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10311 = extractvalue %dx.types.ResRet.f32 %10310, 0
  %10312 = extractvalue %dx.types.ResRet.f32 %10310, 1
  %10313 = extractvalue %dx.types.ResRet.f32 %10310, 2
  %10314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10305, float %10309, float %10227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10315 = extractvalue %dx.types.ResRet.f32 %10314, 0
  %10316 = extractvalue %dx.types.ResRet.f32 %10314, 1
  %10317 = extractvalue %dx.types.ResRet.f32 %10314, 2
  %10318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10303, float %10307, float %10227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10319 = extractvalue %dx.types.ResRet.f32 %10318, 0
  %10320 = extractvalue %dx.types.ResRet.f32 %10318, 1
  %10321 = extractvalue %dx.types.ResRet.f32 %10318, 2
  %10322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %10305, float %10307, float %10227, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10323 = extractvalue %dx.types.ResRet.f32 %10322, 0
  %10324 = extractvalue %dx.types.ResRet.f32 %10322, 1
  %10325 = extractvalue %dx.types.ResRet.f32 %10322, 2
  %10326 = fsub fast float %10319, %10311
  %10327 = fsub fast float %10320, %10312
  %10328 = fsub fast float %10321, %10313
  %10329 = fmul fast float %10326, %10299
  %10330 = fmul fast float %10327, %10299
  %10331 = fmul fast float %10328, %10299
  %10332 = fadd fast float %10329, %10311
  %10333 = fadd fast float %10330, %10312
  %10334 = fadd fast float %10331, %10313
  %10335 = fsub fast float %10323, %10315
  %10336 = fsub fast float %10324, %10316
  %10337 = fsub fast float %10325, %10317
  %10338 = fmul fast float %10335, %10299
  %10339 = fmul fast float %10336, %10299
  %10340 = fmul fast float %10337, %10299
  %10341 = fsub fast float %10315, %10332
  %10342 = fadd fast float %10341, %10338
  %10343 = fsub fast float %10316, %10333
  %10344 = fadd fast float %10343, %10339
  %10345 = fsub fast float %10317, %10334
  %10346 = fadd fast float %10345, %10340
  %10347 = fmul fast float %10342, %10287
  %10348 = fmul fast float %10344, %10287
  %10349 = fmul fast float %10346, %10287
  %10350 = fadd fast float %10347, %10332
  %10351 = fadd fast float %10348, %10333
  %10352 = fadd fast float %10349, %10334
  %10353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10354 = extractvalue %dx.types.CBufRet.f32 %10353, 1
  %10355 = fmul fast float %10350, %10354
  %10356 = fmul fast float %10351, %10354
  %10357 = fmul fast float %10352, %10354
  br label %10358

; <label>:10358                                   ; preds = %10189, %10146
  %10359 = phi float [ %10229, %10189 ], [ 1.000000e+00, %10146 ]
  %10360 = phi float [ %10230, %10189 ], [ 1.000000e+00, %10146 ]
  %10361 = phi float [ %10231, %10189 ], [ 1.000000e+00, %10146 ]
  %10362 = phi float [ %10355, %10189 ], [ 0.000000e+00, %10146 ]
  %10363 = phi float [ %10356, %10189 ], [ 0.000000e+00, %10146 ]
  %10364 = phi float [ %10357, %10189 ], [ 0.000000e+00, %10146 ]
  %10365 = fmul fast float %10362, %8696
  %10366 = fmul fast float %10363, %8698
  %10367 = fmul fast float %10364, %8700
  %10368 = fmul fast float %10359, %10153
  %10369 = call float @dx.op.dot3.f32(i32 55, float %10359, float %10360, float %10361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10370 = call float @dx.op.dot3.f32(i32 55, float %10365, float %10366, float %10367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10371 = select i1 %264, float %10369, float %10359
  %10372 = select i1 %264, float %10369, float %10360
  %10373 = select i1 %264, float 1.000000e+00, float %10361
  %10374 = select i1 %264, float %10370, float %10365
  %10375 = select i1 %264, float 0.000000e+00, float %10366
  %10376 = select i1 %264, float 0.000000e+00, float %10367
  %10377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10378 = extractvalue %dx.types.CBufRet.i32 %10377, 3
  %10379 = and i32 %10378, 3
  %10380 = icmp ne i32 %10379, 0
  %10381 = and i32 %10378, 4
  %10382 = icmp ne i32 %10381, 0
  %10383 = and i1 %10380, %10382
  %10384 = and i1 %264, %10383
  br i1 %10384, label %10385, label %10391

; <label>:10385                                   ; preds = %10358
  %10386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10387 = extractvalue %dx.types.CBufRet.f32 %10386, 1
  %10388 = fadd fast float %10368, -1.000000e+00
  %10389 = fmul fast float %10387, %10388
  %10390 = fadd fast float %10389, 1.000000e+00
  br label %10391

; <label>:10391                                   ; preds = %10385, %10358
  %10392 = phi float [ %10390, %10385 ], [ %10368, %10358 ]
  %10393 = fadd fast float %10150, %10147
  %10394 = fmul fast float %10371, %10393
  %10395 = fadd fast float %10394, %10374
  %10396 = fadd fast float %10151, %10148
  %10397 = fmul fast float %10372, %10396
  %10398 = fadd fast float %10397, %10375
  %10399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10400 = extractvalue %dx.types.CBufRet.f32 %10399, 0
  br i1 %264, label %10401, label %10416

; <label>:10401                                   ; preds = %10391
  %10402 = fadd fast float %10395, %10398
  %10403 = fmul fast float %10400, %10402
  %10404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10405 = extractvalue %dx.types.CBufRet.f32 %10404, 3
  %10406 = extractvalue %dx.types.CBufRet.f32 %8704, 1
  %10407 = fsub fast float %8709, %8703
  %10408 = fadd fast float %10407, %8710
  %10409 = fsub fast float %10408, %10406
  %10410 = extractvalue %dx.types.CBufRet.f32 %8704, 2
  %10411 = fmul fast float %10409, %10410
  %10412 = call float @dx.op.unary.f32(i32 7, float %10411)  ; Saturate(value)
  %10413 = fsub fast float %10412, %10405
  %10414 = fmul fast float %10413, %10392
  %10415 = fadd fast float %10414, %10405
  br label %10442

; <label>:10416                                   ; preds = %10391
  %10417 = fadd fast float %10152, %10149
  %10418 = fmul fast float %10373, %10417
  %10419 = fadd fast float %10418, %10376
  %10420 = fmul fast float %10400, %10395
  %10421 = fmul fast float %10400, %10398
  %10422 = fmul fast float %10400, %10419
  %10423 = call float @dx.op.binary.f32(i32 35, float %10421, float %10422)  ; FMax(a,b)
  %10424 = call float @dx.op.binary.f32(i32 35, float %10420, float %10423)  ; FMax(a,b)
  %10425 = call float @dx.op.binary.f32(i32 35, float %8698, float %8700)  ; FMax(a,b)
  %10426 = call float @dx.op.binary.f32(i32 35, float %8696, float %10425)  ; FMax(a,b)
  %10427 = call float @dx.op.binary.f32(i32 35, float %10424, float %10426)  ; FMax(a,b)
  %10428 = fcmp fast ugt float %10427, 0x3F10000000000000
  br i1 %10428, label %10430, label %10429

; <label>:10429                                   ; preds = %10416
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10430

; <label>:10430                                   ; preds = %10429, %10416
  %10431 = add i32 %51, 356
  %10432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %10431, i32 undef)  ; BufferLoad(srv,index,wot)
  %10433 = extractvalue %dx.types.ResRet.i32 %10432, 0
  %10434 = and i32 %10433, 32
  %10435 = icmp eq i32 %10434, 0
  br i1 %10435, label %10442, label %10436

; <label>:10436                                   ; preds = %10430
  %10437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10438 = extractvalue %dx.types.CBufRet.f32 %10437, 0
  %10439 = fmul fast float %10438, 0x3FE99999A0000000
  %10440 = fadd fast float %10438, %10420
  %10441 = fadd fast float %10439, %10422
  br label %10442

; <label>:10442                                   ; preds = %10436, %10430, %10401
  %10443 = phi float [ 1.000000e+00, %10401 ], [ %8698, %10436 ], [ %8698, %10430 ]
  %10444 = phi float [ 1.000000e+00, %10401 ], [ %8700, %10436 ], [ %8700, %10430 ]
  %10445 = phi float [ %10403, %10401 ], [ %10440, %10436 ], [ %10420, %10430 ]
  %10446 = phi float [ %10415, %10401 ], [ %10421, %10436 ], [ %10421, %10430 ]
  %10447 = phi float [ 1.000000e+00, %10401 ], [ %10441, %10436 ], [ %10422, %10430 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10448 = call float @dx.op.binary.f32(i32 36, float %10445, float 3.225500e+04)  ; FMin(a,b)
  %10449 = call float @dx.op.binary.f32(i32 36, float %10446, float 3.225500e+04)  ; FMin(a,b)
  %10450 = call float @dx.op.binary.f32(i32 36, float %10447, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10448)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10449)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10450)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10451 = call float @dx.op.binary.f32(i32 36, float %8696, float 3.225500e+04)  ; FMin(a,b)
  %10452 = call float @dx.op.binary.f32(i32 36, float %10443, float 3.225500e+04)  ; FMin(a,b)
  %10453 = call float @dx.op.binary.f32(i32 36, float %10444, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10451)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10452)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10453)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

