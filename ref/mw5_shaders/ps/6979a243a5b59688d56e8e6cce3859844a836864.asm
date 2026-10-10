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
; shader hash: 8e76041b61d55975c9063cd120a6b667
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
  %201 = bitcast i32 %200 to float
  %202 = add i32 %49, 360
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = extractvalue %dx.types.ResRet.i32 %203, 1
  %206 = extractvalue %dx.types.ResRet.i32 %203, 2
  %207 = extractvalue %dx.types.ResRet.i32 %203, 3
  %208 = bitcast i32 %204 to float
  %209 = bitcast i32 %205 to float
  %210 = bitcast i32 %206 to float
  %211 = bitcast i32 %207 to float
  %212 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %213 = call float @dx.op.unary.f32(i32 25, float %212)  ; Rsqrt(value)
  %214 = fmul fast float %213, %116
  %215 = fmul fast float %213, %117
  %216 = fmul fast float %213, %118
  %217 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %218 = call float @dx.op.unary.f32(i32 25, float %217)  ; Rsqrt(value)
  %219 = fmul fast float %218, %188
  %220 = fmul fast float %218, %189
  %221 = fmul fast float %218, %190
  %222 = call float @dx.op.dot3.f32(i32 55, float %219, float %220, float %221, float %214, float %215, float %216)  ; Dot3(ax,ay,az,bx,by,bz)
  %223 = fmul fast float %222, %222
  %224 = fmul fast float %223, %210
  %225 = fadd fast float %224, %211
  %226 = call float @dx.op.unary.f32(i32 7, float %225)  ; Saturate(value)
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 3
  %229 = fmul fast float %228, %217
  %230 = fsub fast float %208, %229
  %231 = fmul fast float %230, %209
  %232 = call float @dx.op.unary.f32(i32 7, float %231)  ; Saturate(value)
  %233 = fmul fast float %232, %226
  %234 = fmul fast float %109, 5.000000e-01
  %235 = fmul fast float %110, 5.000000e-01
  %236 = fptosi float %234 to i32
  %237 = fptosi float %235 to i32
  %238 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %236, i32 %237, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = lshr i32 %239, 18
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F4C00EBA0000000
  %243 = call float @dx.op.unary.f32(i32 21, float %242)  ; Exp(value)
  %244 = fadd fast float %243, -1.000000e+00
  %245 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %246 = extractvalue %dx.types.Dimensions %245, 0
  %247 = sitofp i32 %246 to float
  %248 = extractvalue %dx.types.Dimensions %245, 1
  %249 = sitofp i32 %248 to float
  %250 = fcmp fast oge float %234, %247
  %251 = fcmp fast oge float %235, %249
  %252 = or i1 %250, %251
  %253 = select i1 %252, float 0x4197782600000000, float %244
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 2
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 3
  %257 = fmul fast float %255, %109
  %258 = fmul fast float %256, %110
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 114688
  %262 = icmp ne i32 %261, 0
  %263 = select i1 %262, float %257, float 0.000000e+00
  %264 = select i1 %262, float %258, float 0.000000e+00
  %265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %44, float %263, float %264, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = fmul fast float %266, 2.550000e+02
  %268 = fptoui float %267 to i32
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %271 = extractvalue %dx.types.CBufRet.i32 %270, 3
  %272 = and i32 %271, 3
  %273 = icmp ne i32 %272, 0
  %274 = and i32 %271, 4
  %275 = icmp ne i32 %274, 0
  %276 = and i1 %273, %275
  br i1 %276, label %277, label %288

; <label>:277                                     ; preds = %0
  %278 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %279 = fmul fast float %278, %110
  %280 = extractvalue %dx.types.CBufRet.f32 %269, 2
  %281 = fmul fast float %280, %109
  %282 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %43, float %281, float %279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fsub fast float 1.000000e+00, %283
  %285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %286 = extractvalue %dx.types.CBufRet.f32 %285, 0
  %287 = fcmp fast olt float %284, %286
  br label %291

; <label>:288                                     ; preds = %0
  %289 = icmp eq i32 %274, 0
  %290 = and i1 %273, %289
  br label %291

; <label>:291                                     ; preds = %288, %277
  %292 = phi i1 [ %287, %277 ], [ %290, %288 ]
  %293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.f32 %293, 2
  %295 = fmul fast float %294, 0x3FE3C6EF40000000
  %296 = frem fast float %109, 2.560000e+02
  %297 = frem fast float %110, 2.560000e+02
  %298 = fptoui float %296 to i32
  %299 = fptoui float %297 to i32
  %300 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %298, i32 %299, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fadd fast float %301, %295
  %303 = call float @dx.op.unary.f32(i32 22, float %302)  ; Frc(value)
  %304 = add i32 %49, 156
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = shl i32 %306, 4
  %308 = and i32 %307, 32752
  %309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %308)  ; LegacyF16ToF32(value)
  %310 = lshr i32 %306, 7
  %311 = and i32 %310, 32752
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %306, 22
  %314 = shl nuw nsw i32 %313, 5
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = add i32 %49, 216
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = lshr i32 %318, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %324, 0x3F70101020000000
  %326 = lshr i32 %318, 16
  %327 = and i32 %326, 255
  %328 = uitofp i32 %327 to float
  %329 = fmul fast float %328, 0x3F70101020000000
  %330 = add i32 %49, 36
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = add i32 %49, 288
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %337, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 65535
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %339, 16
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = fmul fast float %341, 0x3F50624DE0000000
  %345 = fmul fast float %343, 0x3F50624DE0000000
  %346 = add i32 %49, 172
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = shl i32 %348, 4
  %350 = and i32 %349, 32752
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %348, 7
  %353 = and i32 %352, 32752
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %348, 22
  %356 = shl nuw nsw i32 %355, 5
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = add i32 %49, 232
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = lshr i32 %360, 8
  %365 = and i32 %364, 255
  %366 = uitofp i32 %365 to float
  %367 = fmul fast float %366, 0x3F70101020000000
  %368 = lshr i32 %360, 16
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %370, 0x3F70101020000000
  %372 = add i32 %49, 52
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 65535
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %374, 16
  %378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %377)  ; LegacyF16ToF32(value)
  %379 = add i32 %49, 304
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 65535
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %381, 16
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = fmul fast float %383, 0x3F50624DE0000000
  %387 = fmul fast float %385, 0x3F50624DE0000000
  %388 = add i32 %49, 188
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = shl i32 %390, 4
  %392 = and i32 %391, 32752
  %393 = call float @dx.op.legacyF16ToF32(i32 131, i32 %392)  ; LegacyF16ToF32(value)
  %394 = lshr i32 %390, 7
  %395 = and i32 %394, 32752
  %396 = call float @dx.op.legacyF16ToF32(i32 131, i32 %395)  ; LegacyF16ToF32(value)
  %397 = lshr i32 %390, 22
  %398 = shl nuw nsw i32 %397, 5
  %399 = call float @dx.op.legacyF16ToF32(i32 131, i32 %398)  ; LegacyF16ToF32(value)
  %400 = add i32 %49, 248
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 255
  %404 = uitofp i32 %403 to float
  %405 = fmul fast float %404, 0x3F70101020000000
  %406 = lshr i32 %402, 8
  %407 = and i32 %406, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %402, 16
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = add i32 %49, 68
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 65535
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %416, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = add i32 %49, 320
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = fmul fast float %425, 0x3F50624DE0000000
  %429 = fmul fast float %427, 0x3F50624DE0000000
  %430 = add i32 %49, 204
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
  %442 = add i32 %49, 264
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
  %456 = add i32 %49, 84
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 65535
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %458, 16
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = add i32 %49, 336
  %464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.i32 %464, 0
  %466 = and i32 %465, 65535
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = lshr i32 %465, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = fmul fast float %467, 0x3F50624DE0000000
  %471 = fmul fast float %469, 0x3F50624DE0000000
  %472 = add i32 %49, 348
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = and i32 %474, 32
  %476 = icmp eq i32 %475, 0
  %477 = and i32 %474, 64
  %478 = icmp eq i32 %477, 0
  %479 = and i32 %474, 128
  %480 = icmp eq i32 %479, 0
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = and i32 %482, 2
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %500, label %485

; <label>:485                                     ; preds = %291
  %486 = add i32 %49, 552
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = add i32 %488, 0
  %490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %490, %dx.types.Handle %106, float %87, float %88, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = extractvalue %dx.types.ResRet.f32 %491, 2
  %495 = extractvalue %dx.types.ResRet.f32 %491, 3
  %496 = fmul fast float %495, %89
  %497 = fmul fast float %492, %90
  %498 = fmul fast float %493, %91
  %499 = fmul fast float %494, %92
  br label %500

; <label>:500                                     ; preds = %485, %291
  %501 = phi float [ %92, %291 ], [ %499, %485 ]
  %502 = phi float [ %91, %291 ], [ %498, %485 ]
  %503 = phi float [ %90, %291 ], [ %497, %485 ]
  %504 = phi float [ %89, %291 ], [ %496, %485 ]
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = and i32 %506, 2
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %528, label %509

; <label>:509                                     ; preds = %500
  %510 = add i32 %49, 44
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = and i32 %512, 1
  %514 = icmp ne i32 %513, 0
  %515 = select i1 %514, float %503, float 1.000000e+00
  %516 = add i32 %49, 60
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = and i32 %518, 1
  %520 = icmp ne i32 %519, 0
  %521 = select i1 %520, float %502, float 1.000000e+00
  %522 = add i32 %49, 76
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 1
  %526 = icmp ne i32 %525, 0
  %527 = select i1 %526, float %501, float 1.000000e+00
  br label %528

; <label>:528                                     ; preds = %509, %500
  %529 = phi float [ %501, %500 ], [ %527, %509 ]
  %530 = phi float [ %502, %500 ], [ %521, %509 ]
  %531 = phi float [ %503, %500 ], [ %515, %509 ]
  %532 = lshr i32 %506, 20
  %533 = and i32 %532, 3
  %534 = add nuw nsw i32 %533, 1
  %535 = add i32 %49, 24
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = add i32 %49, 28
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = or i32 %540, %537
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %1188, label %543

; <label>:543                                     ; preds = %528
  %544 = and i32 %537, 262144
  %545 = icmp ne i32 %544, 0
  %546 = select i1 %545, float %55, float 1.000000e+00
  %547 = select i1 %545, float %56, float 0.000000e+00
  %548 = select i1 %545, float %57, float 0.000000e+00
  %549 = select i1 %545, float %58, float 1.000000e+00
  %550 = select i1 %545, float %59, float %87
  %551 = select i1 %545, float %60, float %88
  %552 = add i32 %49, 284
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = lshr i32 %554, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = fmul fast float %556, 0x3F50624DE0000000
  %558 = add i32 %49, 88
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = lshr i32 %560, 16
  %562 = and i32 %561, 255
  %563 = lshr i32 %560, 24
  %564 = add i32 %49, 292
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = and i32 %566, 65535
  %568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %567)  ; LegacyF16ToF32(value)
  %569 = lshr i32 %566, 16
  %570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %569)  ; LegacyF16ToF32(value)
  %571 = add i32 %49, 32
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = lshr i32 %573, 22
  %575 = shl nuw nsw i32 %574, 5
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = shl i32 %573, 4
  %578 = and i32 %577, 32752
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %573, 7
  %581 = and i32 %580, 32752
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 3
  %585 = fmul fast float %584, 1.000000e+03
  %586 = fmul fast float %344, %585
  %587 = call float @dx.op.unary.f32(i32 22, float %586)  ; Frc(value)
  %588 = fadd fast float %587, %334
  %589 = fmul fast float %345, %585
  %590 = call float @dx.op.unary.f32(i32 22, float %589)  ; Frc(value)
  %591 = fadd fast float %590, %336
  %592 = fmul fast float %557, %585
  %593 = call float @dx.op.unary.f32(i32 22, float %592)  ; Frc(value)
  %594 = fmul fast float %593, 0x401921FB60000000
  %595 = fadd fast float %594, %576
  %596 = call float @dx.op.unary.f32(i32 13, float %595)  ; Sin(value)
  %597 = call float @dx.op.unary.f32(i32 12, float %595)  ; Cos(value)
  %598 = fsub fast float -0.000000e+00, %596
  %599 = fadd fast float %550, -5.000000e-01
  %600 = fadd fast float %551, -5.000000e-01
  %601 = fmul fast float %568, %599
  %602 = fmul fast float %570, %600
  %603 = fadd fast float %601, 5.000000e-01
  %604 = fadd fast float %602, 5.000000e-01
  %605 = fmul fast float %579, %603
  %606 = fmul fast float %582, %604
  %607 = fmul fast float %597, %605
  %608 = call float @dx.op.tertiary.f32(i32 46, float %598, float %606, float %607)  ; FMad(a,b,c)
  %609 = fmul fast float %596, %605
  %610 = call float @dx.op.tertiary.f32(i32 46, float %597, float %606, float %609)  ; FMad(a,b,c)
  %611 = fadd fast float %588, %608
  %612 = fadd fast float %591, %610
  %613 = icmp ugt i32 %562, 1
  %614 = icmp ugt i32 %560, 33554431
  %615 = or i1 %614, %613
  br i1 %615, label %616, label %641

; <label>:616                                     ; preds = %543
  %617 = add i32 %49, 228
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 16
  %621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %620)  ; LegacyF16ToF32(value)
  %622 = fmul fast float %584, %621
  %623 = call float @dx.op.unary.f32(i32 22, float %622)  ; Frc(value)
  %624 = mul nuw nsw i32 %562, %563
  %625 = uitofp i32 %624 to float
  %626 = fmul fast float %623, %625
  %627 = call float @dx.op.unary.f32(i32 27, float %626)  ; Round_ni(value)
  %628 = fptoui float %627 to i32
  %629 = urem i32 %628, %562
  %630 = udiv i32 %628, %563
  %631 = call float @dx.op.unary.f32(i32 22, float %611)  ; Frc(value)
  %632 = call float @dx.op.unary.f32(i32 22, float %612)  ; Frc(value)
  %633 = uitofp i32 %629 to float
  %634 = uitofp i32 %630 to float
  %635 = fadd fast float %631, %633
  %636 = fadd fast float %632, %634
  %637 = uitofp i32 %562 to float
  %638 = uitofp i32 %563 to float
  %639 = fdiv fast float %635, %637
  %640 = fdiv fast float %636, %638
  br label %641

; <label>:641                                     ; preds = %616, %543
  %642 = phi float [ %639, %616 ], [ %611, %543 ]
  %643 = phi float [ %640, %616 ], [ %612, %543 ]
  %644 = and i32 %537, 256
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %692, label %646

; <label>:646                                     ; preds = %641
  %647 = add i32 %49, 488
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = add i32 %649, 0
  %651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %650, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %652 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %651, %dx.types.Handle %106, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = add i32 %49, 100
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = shl i32 %656, 4
  %658 = and i32 %657, 32752
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = lshr i32 %656, 7
  %661 = and i32 %660, 32752
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = fsub fast float 1.000000e+00, %504
  %664 = call float @dx.op.binary.f32(i32 35, float %663, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %665 = bitcast float %504 to i32
  %666 = sitofp i32 %665 to float
  %667 = fadd fast float %666, 0xC1CFBF8940000000
  %668 = fmul fast float %662, %667
  %669 = fadd fast float %668, 0x41CFBF8940000000
  %670 = fptosi float %669 to i32
  %671 = bitcast i32 %670 to float
  %672 = bitcast float %664 to i32
  %673 = sitofp i32 %672 to float
  %674 = fadd fast float %673, 0xC1CFBF8940000000
  %675 = fmul fast float %674, %662
  %676 = fadd fast float %675, 0x41CFBF8940000000
  %677 = fptosi float %676 to i32
  %678 = bitcast i32 %677 to float
  %679 = fmul fast float %671, %659
  %680 = fmul fast float %678, %659
  %681 = fsub fast float %664, %679
  %682 = fadd fast float %680, %664
  %683 = call float @dx.op.unary.f32(i32 7, float %681)  ; Saturate(value)
  %684 = call float @dx.op.unary.f32(i32 7, float %682)  ; Saturate(value)
  %685 = fsub fast float %653, %683
  %686 = fsub fast float %684, %683
  %687 = bitcast float %686 to i32
  %688 = sub nsw i32 2129859010, %687
  %689 = bitcast i32 %688 to float
  %690 = fmul fast float %689, %685
  %691 = call float @dx.op.unary.f32(i32 7, float %690)  ; Saturate(value)
  br label %692

; <label>:692                                     ; preds = %646, %641
  %693 = phi float [ %691, %646 ], [ %504, %641 ]
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 128
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %714, label %698

; <label>:698                                     ; preds = %692
  %699 = add i32 %49, 472
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = add i32 %701, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %702, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %703, %dx.types.Handle %106, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %705 = extractvalue %dx.types.ResRet.f32 %704, 0
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 524288
  %709 = icmp ne i32 %708, 0
  %710 = fcmp fast ogt float %705, 0x3FE0101020000000
  %711 = select i1 %710, float 1.000000e+00, float 0.000000e+00
  %712 = select i1 %709, float %711, float %705
  %713 = fmul fast float %712, %693
  br label %714

; <label>:714                                     ; preds = %698, %692
  %715 = phi float [ %713, %698 ], [ %693, %692 ]
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 16
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %918, label %720

; <label>:720                                     ; preds = %714
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %49, 424
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %725, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %105, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 2
  %732 = extractvalue %dx.types.ResRet.f32 %728, 3
  %733 = and i32 %722, 255
  %734 = uitofp i32 %733 to float
  %735 = lshr i32 %722, 8
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = fmul fast float %732, %734
  %739 = fadd fast float %738, %737
  %740 = fmul fast float %739, 0x3F70101000000000
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 512
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %753, label %745

; <label>:745                                     ; preds = %720
  %746 = add i32 %49, 504
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = add i32 %748, 0
  %750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %749, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %751 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %750, %dx.types.Handle %106, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  br label %753

; <label>:753                                     ; preds = %745, %720
  %754 = phi float [ %752, %745 ], [ 1.000000e+00, %720 ]
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 33554432
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %865, label %759

; <label>:759                                     ; preds = %753
  %760 = add i32 %49, 224
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = and i32 %762, 65535
  %764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %763)  ; LegacyF16ToF32(value)
  %765 = lshr i32 %762, 16
  %766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %765)  ; LegacyF16ToF32(value)
  %767 = add i32 %49, 228
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 65535
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = lshr i32 %773, 24
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101020000000
  %777 = and i32 %773, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101020000000
  %780 = lshr i32 %773, 8
  %781 = and i32 %780, 255
  %782 = uitofp i32 %781 to float
  %783 = fmul fast float %782, 0x3F70101020000000
  %784 = lshr i32 %773, 16
  %785 = and i32 %784, 255
  %786 = uitofp i32 %785 to float
  %787 = fmul fast float %786, 0x3F70101020000000
  %788 = add i32 %49, 220
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = lshr i32 %790, 24
  %792 = uitofp i32 %791 to float
  %793 = fmul fast float %792, 0x3F70101020000000
  %794 = and i32 %790, 255
  %795 = uitofp i32 %794 to float
  %796 = fmul fast float %795, 0x3F70101020000000
  %797 = lshr i32 %790, 8
  %798 = and i32 %797, 255
  %799 = uitofp i32 %798 to float
  %800 = fmul fast float %799, 0x3F70101020000000
  %801 = lshr i32 %790, 16
  %802 = and i32 %801, 255
  %803 = uitofp i32 %802 to float
  %804 = fmul fast float %803, 0x3F70101020000000
  %805 = bitcast float %729 to i32
  %806 = ashr i32 %805, 1
  %807 = sub nsw i32 1597463174, %806
  %808 = bitcast i32 %807 to float
  %809 = fmul fast float %729, 5.000000e-01
  %810 = fmul fast float %808, %808
  %811 = fmul fast float %810, %809
  %812 = fsub fast float 1.500000e+00, %811
  %813 = fmul fast float %808, %729
  %814 = fmul fast float %813, %812
  %815 = bitcast float %730 to i32
  %816 = ashr i32 %815, 1
  %817 = sub nsw i32 1597463174, %816
  %818 = bitcast i32 %817 to float
  %819 = fmul fast float %730, 5.000000e-01
  %820 = fmul fast float %818, %818
  %821 = fmul fast float %820, %819
  %822 = fsub fast float 1.500000e+00, %821
  %823 = fmul fast float %818, %730
  %824 = fmul fast float %823, %822
  %825 = bitcast float %731 to i32
  %826 = ashr i32 %825, 1
  %827 = sub nsw i32 1597463174, %826
  %828 = bitcast i32 %827 to float
  %829 = fmul fast float %731, 5.000000e-01
  %830 = fmul fast float %828, %828
  %831 = fmul fast float %830, %829
  %832 = fsub fast float 1.500000e+00, %831
  %833 = fmul fast float %828, %731
  %834 = fmul fast float %833, %832
  %835 = fsub fast float %814, %796
  %836 = fsub fast float %824, %800
  %837 = fsub fast float %834, %804
  %838 = fmul fast float %835, %764
  %839 = fmul fast float %836, %766
  %840 = fmul fast float %837, %771
  %841 = fadd fast float %838, %779
  %842 = fadd fast float %839, %783
  %843 = fadd fast float %840, %787
  %844 = call float @dx.op.unary.f32(i32 7, float %841)  ; Saturate(value)
  %845 = call float @dx.op.unary.f32(i32 7, float %842)  ; Saturate(value)
  %846 = call float @dx.op.unary.f32(i32 7, float %843)  ; Saturate(value)
  %847 = fmul fast float %844, %844
  %848 = fmul fast float %845, %845
  %849 = fmul fast float %846, %846
  %850 = fsub fast float %847, %729
  %851 = fsub fast float %848, %730
  %852 = fsub fast float %849, %731
  %853 = fmul fast float %850, %754
  %854 = fmul fast float %851, %754
  %855 = fmul fast float %852, %754
  %856 = fadd fast float %853, %729
  %857 = fadd fast float %854, %730
  %858 = fadd fast float %855, %731
  %859 = fadd fast float %776, %740
  %860 = fsub fast float %859, %793
  %861 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %862 = fsub fast float %861, %740
  %863 = fmul fast float %862, %754
  %864 = fadd fast float %863, %740
  br label %918

; <label>:865                                     ; preds = %753
  %866 = and i32 %756, 134217728
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %902, label %868

; <label>:868                                     ; preds = %865
  %869 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %870 = call float @dx.op.unary.f32(i32 24, float %325)  ; Sqrt(value)
  %871 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %872 = fadd fast float %869, -5.000000e-01
  %873 = fadd fast float %870, -5.000000e-01
  %874 = fadd fast float %871, -5.000000e-01
  %875 = fmul fast float %872, %754
  %876 = fmul fast float %873, %754
  %877 = fmul fast float %874, %754
  %878 = fadd fast float %875, 5.000000e-01
  %879 = fadd fast float %876, 5.000000e-01
  %880 = fadd fast float %877, 5.000000e-01
  %881 = call float @dx.op.unary.f32(i32 24, float %729)  ; Sqrt(value)
  %882 = call float @dx.op.unary.f32(i32 24, float %730)  ; Sqrt(value)
  %883 = call float @dx.op.unary.f32(i32 24, float %731)  ; Sqrt(value)
  %884 = fmul fast float %878, 2.000000e+00
  %885 = fsub fast float 1.000000e+00, %884
  %886 = fmul fast float %885, %881
  %887 = fadd fast float %886, %884
  %888 = fmul fast float %887, %881
  %889 = fmul fast float %879, 2.000000e+00
  %890 = fsub fast float 1.000000e+00, %889
  %891 = fmul fast float %890, %882
  %892 = fadd fast float %891, %889
  %893 = fmul fast float %892, %882
  %894 = fmul fast float %880, 2.000000e+00
  %895 = fsub fast float 1.000000e+00, %894
  %896 = fmul fast float %895, %883
  %897 = fadd fast float %896, %894
  %898 = fmul fast float %897, %883
  %899 = fmul fast float %888, %888
  %900 = fmul fast float %893, %893
  %901 = fmul fast float %898, %898
  br label %918

; <label>:902                                     ; preds = %865
  %903 = fmul fast float %321, %321
  %904 = fmul fast float %325, %325
  %905 = fmul fast float %329, %329
  %906 = fadd fast float %903, -1.000000e+00
  %907 = fadd fast float %904, -1.000000e+00
  %908 = fadd fast float %905, -1.000000e+00
  %909 = fmul fast float %754, %906
  %910 = fmul fast float %754, %907
  %911 = fmul fast float %754, %908
  %912 = fadd fast float %909, 1.000000e+00
  %913 = fadd fast float %910, 1.000000e+00
  %914 = fadd fast float %911, 1.000000e+00
  %915 = fmul fast float %912, %729
  %916 = fmul fast float %913, %730
  %917 = fmul fast float %914, %731
  br label %918

; <label>:918                                     ; preds = %902, %868, %759, %714
  %919 = phi float [ %864, %759 ], [ %740, %868 ], [ %740, %902 ], [ 0x3FA23C0BE0000000, %714 ]
  %920 = phi float [ %856, %759 ], [ %899, %868 ], [ %915, %902 ], [ 1.000000e+00, %714 ]
  %921 = phi float [ %857, %759 ], [ %900, %868 ], [ %916, %902 ], [ 1.000000e+00, %714 ]
  %922 = phi float [ %858, %759 ], [ %901, %868 ], [ %917, %902 ], [ 1.000000e+00, %714 ]
  %923 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.i32 %923, 1
  %925 = and i32 %924, 1
  %926 = icmp ne i32 %925, 0
  %927 = add i32 %49, 356
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 32
  %931 = icmp ne i32 %930, 0
  %932 = and i1 %926, %931
  %933 = select i1 %932, float 1.000000e+00, float %920
  %934 = select i1 %932, float 0x3FD3333340000000, float %921
  %935 = select i1 %932, float 0x3FD3333340000000, float %922
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 32
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %1012, label %940

; <label>:940                                     ; preds = %918
  %941 = add i32 %49, 92
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = add i32 %49, 440
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = add i32 %946, 0
  %948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %948, %dx.types.Handle %105, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %950 = extractvalue %dx.types.ResRet.f32 %949, 0
  %951 = extractvalue %dx.types.ResRet.f32 %949, 1
  %952 = extractvalue %dx.types.ResRet.f32 %949, 2
  %953 = extractvalue %dx.types.ResRet.f32 %949, 3
  %954 = and i32 %943, 255
  %955 = uitofp i32 %954 to float
  %956 = lshr i32 %943, 8
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = lshr i32 %943, 16
  %960 = and i32 %959, 255
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %961, 0x3F70101000000000
  %963 = fmul fast float %950, %955
  %964 = fadd fast float %963, %958
  %965 = fmul fast float %964, 0x3F70101000000000
  %966 = fadd fast float %951, -5.000000e-01
  %967 = fadd fast float %953, -5.000000e-01
  %968 = fmul fast float %966, %962
  %969 = fmul fast float %967, %962
  %970 = fadd fast float %968, 5.000000e-01
  %971 = fadd fast float %969, 5.000000e-01
  %972 = fmul fast float %970, 2.000000e+00
  %973 = fadd fast float %972, -1.000000e+00
  %974 = fmul fast float %971, 2.000000e+00
  %975 = fadd fast float %974, -1.000000e+00
  %976 = fadd fast float %973, %975
  %977 = fmul fast float %976, 5.000000e-01
  %978 = fsub fast float %973, %975
  %979 = fmul fast float %978, 5.000000e-01
  %980 = call float @dx.op.unary.f32(i32 6, float %977)  ; FAbs(value)
  %981 = fsub fast float 1.000000e+00, %980
  %982 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %983 = fsub fast float %981, %982
  %984 = call float @dx.op.dot3.f32(i32 55, float %977, float %979, float %983, float %977, float %979, float %983)  ; Dot3(ax,ay,az,bx,by,bz)
  %985 = call float @dx.op.unary.f32(i32 25, float %984)  ; Rsqrt(value)
  %986 = fmul fast float %977, %985
  %987 = fmul fast float %979, %985
  %988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %989 = extractvalue %dx.types.ResRet.i32 %988, 0
  %990 = and i32 %989, 67108864
  %991 = icmp eq i32 %990, 0
  br i1 %991, label %1008, label %992

; <label>:992                                     ; preds = %940
  %993 = add i32 %49, 280
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = and i32 %995, 65535
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %999, 65535
  %1001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1000)  ; LegacyF16ToF32(value)
  %1002 = lshr i32 %995, 16
  %1003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1002)  ; LegacyF16ToF32(value)
  %1004 = fsub fast float %965, %1003
  %1005 = fmul fast float %1004, %997
  %1006 = fadd fast float %1005, %1001
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  br label %1008

; <label>:1008                                    ; preds = %992, %940
  %1009 = phi float [ %1007, %992 ], [ %965, %940 ]
  %1010 = call float @dx.op.dot2.f32(i32 54, float %986, float %987, float %546, float %547)  ; Dot2(ax,ay,bx,by)
  %1011 = call float @dx.op.dot2.f32(i32 54, float %986, float %987, float %548, float %549)  ; Dot2(ax,ay,bx,by)
  br label %1012

; <label>:1012                                    ; preds = %1008, %918
  %1013 = phi float [ %1009, %1008 ], [ 0x3FD6666660000000, %918 ]
  %1014 = phi float [ %1010, %1008 ], [ 0.000000e+00, %918 ]
  %1015 = phi float [ %1011, %1008 ], [ 0.000000e+00, %918 ]
  %1016 = phi float [ %952, %1008 ], [ 1.000000e+00, %918 ]
  %1017 = add i32 %49, 160
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = lshr i32 %1019, 22
  %1021 = shl nuw nsw i32 %1020, 5
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = and i32 %1024, 64
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1060, label %1027

; <label>:1027                                    ; preds = %1012
  %1028 = add i32 %49, 456
  %1029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.i32 %1029, 0
  %1031 = add i32 %1030, 0
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %1034, 131072
  %1036 = icmp eq i32 %1035, 0
  %1037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1032, %dx.types.Handle %105, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1038 = extractvalue %dx.types.ResRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.ResRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.ResRet.f32 %1037, 2
  %1041 = fmul fast float %1038, %309
  %1042 = fmul fast float %1039, %312
  %1043 = fmul fast float %1040, %315
  br i1 %1036, label %1050, label %1044

; <label>:1044                                    ; preds = %1027
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 0
  %1047 = fmul fast float %1046, %1041
  %1048 = fmul fast float %1046, %1042
  %1049 = fmul fast float %1046, %1043
  br label %1050

; <label>:1050                                    ; preds = %1044, %1027
  %1051 = phi float [ %1047, %1044 ], [ %1041, %1027 ]
  %1052 = phi float [ %1048, %1044 ], [ %1042, %1027 ]
  %1053 = phi float [ %1049, %1044 ], [ %1043, %1027 ]
  %1054 = fmul fast float %1051, %1022
  %1055 = select i1 %292, float %1054, float %1051
  %1056 = call float @dx.op.dot3.f32(i32 55, float %1055, float %1052, float %1053, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1057 = select i1 %292, float 0.000000e+00, float %1051
  %1058 = select i1 %292, float %1056, float %1052
  %1059 = select i1 %292, float 0.000000e+00, float %1053
  br label %1060

; <label>:1060                                    ; preds = %1050, %1012
  %1061 = phi float [ %1057, %1050 ], [ 0.000000e+00, %1012 ]
  %1062 = phi float [ %1058, %1050 ], [ 0.000000e+00, %1012 ]
  %1063 = phi float [ %1059, %1050 ], [ 0.000000e+00, %1012 ]
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %1065, 1024
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1098, label %1068

; <label>:1068                                    ; preds = %1060
  %1069 = add i32 %49, 152
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = and i32 %1071, 255
  %1073 = uitofp i32 %1072 to float
  %1074 = fmul fast float %1073, 0x3F70101020000000
  %1075 = lshr i32 %1071, 8
  %1076 = and i32 %1075, 255
  %1077 = uitofp i32 %1076 to float
  %1078 = fmul fast float %1077, 0x3F70101020000000
  %1079 = lshr i32 %1071, 16
  %1080 = and i32 %1079, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = fmul fast float %1081, 0x3F70101020000000
  %1083 = fmul fast float %1074, %1074
  %1084 = fmul fast float %1078, %1078
  %1085 = fmul fast float %1082, %1082
  %1086 = add i32 %49, 520
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = add i32 %1088, 0
  %1090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1090, %dx.types.Handle %106, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = extractvalue %dx.types.ResRet.f32 %1091, 1
  %1094 = extractvalue %dx.types.ResRet.f32 %1091, 2
  %1095 = fmul fast float %1083, %1092
  %1096 = fmul fast float %1084, %1093
  %1097 = fmul fast float %1085, %1094
  br label %1098

; <label>:1098                                    ; preds = %1068, %1060
  %1099 = phi float [ %1095, %1068 ], [ 0.000000e+00, %1060 ]
  %1100 = phi float [ %1096, %1068 ], [ 0.000000e+00, %1060 ]
  %1101 = phi float [ %1097, %1068 ], [ 0.000000e+00, %1060 ]
  %1102 = fcmp fast ogt float %1099, 0.000000e+00
  %1103 = fcmp fast ogt float %1100, 0.000000e+00
  %1104 = fcmp fast ogt float %1101, 0.000000e+00
  %1105 = call float @dx.op.unary.f32(i32 23, float %1099)  ; Log(value)
  %1106 = call float @dx.op.unary.f32(i32 23, float %1100)  ; Log(value)
  %1107 = call float @dx.op.unary.f32(i32 23, float %1101)  ; Log(value)
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = lshr i32 %1109, 7
  %1111 = and i32 %1110, 32752
  %1112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1111)  ; LegacyF16ToF32(value)
  %1113 = fmul fast float %1105, 0xBFE62E4300000000
  %1114 = fmul fast float %1113, %1112
  %1115 = fmul fast float %1106, 0xBFE62E4300000000
  %1116 = fmul fast float %1115, %1112
  %1117 = fmul fast float %1107, 0xBFE62E4300000000
  %1118 = fmul fast float %1117, %1112
  %1119 = select i1 %1102, float %1114, float 1.270000e+02
  %1120 = select i1 %1103, float %1116, float 1.270000e+02
  %1121 = select i1 %1104, float %1118, float 1.270000e+02
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 10240
  %1125 = icmp eq i32 %1124, 0
  br i1 %1125, label %1170, label %1126

; <label>:1126                                    ; preds = %1098
  %1127 = add i32 %49, 536
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = add i32 %1129, 0
  %1131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1131, %dx.types.Handle %106, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1133 = extractvalue %dx.types.ResRet.f32 %1132, 1
  %1134 = extractvalue %dx.types.ResRet.f32 %1132, 3
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = and i32 %1136, 1048576
  %1138 = icmp ne i32 %1137, 0
  %1139 = and i32 %1136, 8192
  %1140 = icmp eq i32 %1139, 0
  br i1 %1140, label %1156, label %1141

; <label>:1141                                    ; preds = %1126
  %1142 = extractvalue %dx.types.ResRet.f32 %1132, 2
  %1143 = select i1 %1138, float %1142, float %1133
  %1144 = extractvalue %dx.types.ResRet.f32 %1132, 0
  %1145 = select i1 %1138, float %1144, float %1133
  %1146 = add i32 %49, 96
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1146, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = lshr i32 %1148, 16
  %1150 = and i32 %1149, 255
  %1151 = uitofp i32 %1150 to float
  %1152 = fmul fast float %1151, 0x3F80101020000000
  %1153 = fmul fast float %1152, %1145
  %1154 = fmul fast float %1152, %1133
  %1155 = fmul fast float %1152, %1143
  br label %1156

; <label>:1156                                    ; preds = %1141, %1126
  %1157 = phi float [ %1153, %1141 ], [ 0.000000e+00, %1126 ]
  %1158 = phi float [ %1154, %1141 ], [ 0.000000e+00, %1126 ]
  %1159 = phi float [ %1155, %1141 ], [ 0.000000e+00, %1126 ]
  %1160 = and i32 %1136, 2048
  %1161 = icmp eq i32 %1160, 0
  br i1 %1161, label %1170, label %1162

; <label>:1162                                    ; preds = %1156
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = shl i32 %1164, 4
  %1166 = and i32 %1165, 32752
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = fmul fast float %1167, %1134
  %1169 = call float @dx.op.binary.f32(i32 35, float %1168, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1170

; <label>:1170                                    ; preds = %1162, %1156, %1098
  %1171 = phi float [ %1157, %1162 ], [ %1157, %1156 ], [ 0.000000e+00, %1098 ]
  %1172 = phi float [ %1158, %1162 ], [ %1158, %1156 ], [ 0.000000e+00, %1098 ]
  %1173 = phi float [ %1159, %1162 ], [ %1159, %1156 ], [ 0.000000e+00, %1098 ]
  %1174 = phi float [ %1169, %1162 ], [ 0x3F70101020000000, %1156 ], [ 0x3F70101020000000, %1098 ]
  %1175 = add i32 %49, 96
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1175, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 255
  %1179 = uitofp i32 %1178 to float
  %1180 = lshr i32 %1177, 8
  %1181 = and i32 %1180, 255
  %1182 = uitofp i32 %1181 to float
  %1183 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1184 = fmul fast float %1182, %1183
  %1185 = fadd fast float %1184, %1179
  %1186 = fmul fast float %1185, 0x3F70101020000000
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  br label %1188

; <label>:1188                                    ; preds = %1170, %528
  %1189 = phi float [ 0.000000e+00, %528 ], [ %1014, %1170 ]
  %1190 = phi float [ 0.000000e+00, %528 ], [ %1015, %1170 ]
  %1191 = phi float [ 0.000000e+00, %528 ], [ %933, %1170 ]
  %1192 = phi float [ 0.000000e+00, %528 ], [ %934, %1170 ]
  %1193 = phi float [ 0.000000e+00, %528 ], [ %935, %1170 ]
  %1194 = phi float [ 0.000000e+00, %528 ], [ %1061, %1170 ]
  %1195 = phi float [ 0.000000e+00, %528 ], [ %1062, %1170 ]
  %1196 = phi float [ 0.000000e+00, %528 ], [ %1063, %1170 ]
  %1197 = phi float [ 0.000000e+00, %528 ], [ %1119, %1170 ]
  %1198 = phi float [ 0.000000e+00, %528 ], [ %1120, %1170 ]
  %1199 = phi float [ 0.000000e+00, %528 ], [ %1121, %1170 ]
  %1200 = phi float [ 0.000000e+00, %528 ], [ %1171, %1170 ]
  %1201 = phi float [ 0.000000e+00, %528 ], [ %1172, %1170 ]
  %1202 = phi float [ 0.000000e+00, %528 ], [ %1173, %1170 ]
  %1203 = phi float [ 0.000000e+00, %528 ], [ %919, %1170 ]
  %1204 = phi float [ 0.000000e+00, %528 ], [ %715, %1170 ]
  %1205 = phi float [ 0.000000e+00, %528 ], [ %1013, %1170 ]
  %1206 = phi float [ 0.000000e+00, %528 ], [ %1016, %1170 ]
  %1207 = phi float [ 0.000000e+00, %528 ], [ %1174, %1170 ]
  %1208 = phi float [ 0.000000e+00, %528 ], [ %1187, %1170 ]
  br i1 %476, label %2131, label %1209

; <label>:1209                                    ; preds = %1188
  %1210 = icmp ult i32 %534, 2
  %1211 = add i32 %49, 40
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %49, 44
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = or i32 %1216, %1213
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %2131, label %1219

; <label>:1219                                    ; preds = %1209
  %1220 = and i32 %1213, 262144
  %1221 = icmp ne i32 %1220, 0
  %1222 = select i1 %1221, float %55, float 1.000000e+00
  %1223 = select i1 %1221, float %56, float 0.000000e+00
  %1224 = select i1 %1221, float %57, float 0.000000e+00
  %1225 = select i1 %1221, float %58, float 1.000000e+00
  %1226 = select i1 %1221, float %59, float %87
  %1227 = select i1 %1221, float %60, float %88
  %1228 = add i32 %49, 300
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 16
  %1232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1231)  ; LegacyF16ToF32(value)
  %1233 = fmul fast float %1232, 0x3F50624DE0000000
  %1234 = add i32 %49, 104
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = lshr i32 %1236, 16
  %1238 = and i32 %1237, 255
  %1239 = lshr i32 %1236, 24
  %1240 = add i32 %49, 308
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 65535
  %1244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1243)  ; LegacyF16ToF32(value)
  %1245 = lshr i32 %1242, 16
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = add i32 %49, 48
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = lshr i32 %1249, 22
  %1251 = shl nuw nsw i32 %1250, 5
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = shl i32 %1249, 4
  %1254 = and i32 %1253, 32752
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = lshr i32 %1249, 7
  %1257 = and i32 %1256, 32752
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1261 = fmul fast float %1260, 1.000000e+03
  %1262 = fmul fast float %386, %1261
  %1263 = call float @dx.op.unary.f32(i32 22, float %1262)  ; Frc(value)
  %1264 = fadd fast float %1263, %376
  %1265 = fmul fast float %387, %1261
  %1266 = call float @dx.op.unary.f32(i32 22, float %1265)  ; Frc(value)
  %1267 = fadd fast float %1266, %378
  %1268 = fmul fast float %1233, %1261
  %1269 = call float @dx.op.unary.f32(i32 22, float %1268)  ; Frc(value)
  %1270 = fmul fast float %1269, 0x401921FB60000000
  %1271 = fadd fast float %1270, %1252
  %1272 = call float @dx.op.unary.f32(i32 13, float %1271)  ; Sin(value)
  %1273 = call float @dx.op.unary.f32(i32 12, float %1271)  ; Cos(value)
  %1274 = fsub fast float -0.000000e+00, %1272
  %1275 = fadd fast float %1226, -5.000000e-01
  %1276 = fadd fast float %1227, -5.000000e-01
  %1277 = fmul fast float %1244, %1275
  %1278 = fmul fast float %1246, %1276
  %1279 = fadd fast float %1277, 5.000000e-01
  %1280 = fadd fast float %1278, 5.000000e-01
  %1281 = fmul fast float %1255, %1279
  %1282 = fmul fast float %1258, %1280
  %1283 = fmul fast float %1273, %1281
  %1284 = call float @dx.op.tertiary.f32(i32 46, float %1274, float %1282, float %1283)  ; FMad(a,b,c)
  %1285 = fmul fast float %1272, %1281
  %1286 = call float @dx.op.tertiary.f32(i32 46, float %1273, float %1282, float %1285)  ; FMad(a,b,c)
  %1287 = fadd fast float %1264, %1284
  %1288 = fadd fast float %1267, %1286
  %1289 = icmp ugt i32 %1238, 1
  %1290 = icmp ugt i32 %1236, 33554431
  %1291 = or i1 %1290, %1289
  br i1 %1291, label %1292, label %1317

; <label>:1292                                    ; preds = %1219
  %1293 = add i32 %49, 244
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 16
  %1297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1296)  ; LegacyF16ToF32(value)
  %1298 = fmul fast float %1260, %1297
  %1299 = call float @dx.op.unary.f32(i32 22, float %1298)  ; Frc(value)
  %1300 = mul nuw nsw i32 %1238, %1239
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1299, %1301
  %1303 = call float @dx.op.unary.f32(i32 27, float %1302)  ; Round_ni(value)
  %1304 = fptoui float %1303 to i32
  %1305 = urem i32 %1304, %1238
  %1306 = udiv i32 %1304, %1239
  %1307 = call float @dx.op.unary.f32(i32 22, float %1287)  ; Frc(value)
  %1308 = call float @dx.op.unary.f32(i32 22, float %1288)  ; Frc(value)
  %1309 = uitofp i32 %1305 to float
  %1310 = uitofp i32 %1306 to float
  %1311 = fadd fast float %1307, %1309
  %1312 = fadd fast float %1308, %1310
  %1313 = uitofp i32 %1238 to float
  %1314 = uitofp i32 %1239 to float
  %1315 = fdiv fast float %1311, %1313
  %1316 = fdiv fast float %1312, %1314
  br label %1317

; <label>:1317                                    ; preds = %1292, %1219
  %1318 = phi float [ %1315, %1292 ], [ %1287, %1219 ]
  %1319 = phi float [ %1316, %1292 ], [ %1288, %1219 ]
  %1320 = and i32 %1213, 256
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1368, label %1322

; <label>:1322                                    ; preds = %1317
  %1323 = add i32 %49, 492
  %1324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1323, i32 undef)  ; BufferLoad(srv,index,wot)
  %1325 = extractvalue %dx.types.ResRet.i32 %1324, 0
  %1326 = add i32 %1325, 0
  %1327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1327, %dx.types.Handle %106, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = add i32 %49, 116
  %1331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1330, i32 undef)  ; BufferLoad(srv,index,wot)
  %1332 = extractvalue %dx.types.ResRet.i32 %1331, 0
  %1333 = shl i32 %1332, 4
  %1334 = and i32 %1333, 32752
  %1335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1334)  ; LegacyF16ToF32(value)
  %1336 = lshr i32 %1332, 7
  %1337 = and i32 %1336, 32752
  %1338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1337)  ; LegacyF16ToF32(value)
  %1339 = fsub fast float 1.000000e+00, %531
  %1340 = call float @dx.op.binary.f32(i32 35, float %1339, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1341 = bitcast float %531 to i32
  %1342 = sitofp i32 %1341 to float
  %1343 = fadd fast float %1342, 0xC1CFBF8940000000
  %1344 = fmul fast float %1338, %1343
  %1345 = fadd fast float %1344, 0x41CFBF8940000000
  %1346 = fptosi float %1345 to i32
  %1347 = bitcast i32 %1346 to float
  %1348 = bitcast float %1340 to i32
  %1349 = sitofp i32 %1348 to float
  %1350 = fadd fast float %1349, 0xC1CFBF8940000000
  %1351 = fmul fast float %1350, %1338
  %1352 = fadd fast float %1351, 0x41CFBF8940000000
  %1353 = fptosi float %1352 to i32
  %1354 = bitcast i32 %1353 to float
  %1355 = fmul fast float %1347, %1335
  %1356 = fmul fast float %1354, %1335
  %1357 = fsub fast float %1340, %1355
  %1358 = fadd fast float %1356, %1340
  %1359 = call float @dx.op.unary.f32(i32 7, float %1357)  ; Saturate(value)
  %1360 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1361 = fsub fast float %1329, %1359
  %1362 = fsub fast float %1360, %1359
  %1363 = bitcast float %1362 to i32
  %1364 = sub nsw i32 2129859010, %1363
  %1365 = bitcast i32 %1364 to float
  %1366 = fmul fast float %1365, %1361
  %1367 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  br label %1368

; <label>:1368                                    ; preds = %1322, %1317
  %1369 = phi float [ %1367, %1322 ], [ %531, %1317 ]
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1371, 128
  %1373 = icmp eq i32 %1372, 0
  br i1 %1373, label %1390, label %1374

; <label>:1374                                    ; preds = %1368
  %1375 = add i32 %49, 476
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = add i32 %1377, 0
  %1379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1379, %dx.types.Handle %106, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 524288
  %1385 = icmp ne i32 %1384, 0
  %1386 = fcmp fast ogt float %1381, 0x3FE0101020000000
  %1387 = select i1 %1386, float 1.000000e+00, float 0.000000e+00
  %1388 = select i1 %1385, float %1387, float %1381
  %1389 = fmul fast float %1388, %1369
  br label %1390

; <label>:1390                                    ; preds = %1374, %1368
  %1391 = phi float [ %1389, %1374 ], [ %1369, %1368 ]
  %1392 = fcmp fast ult float %1391, 0x3F70101020000000
  br i1 %1392, label %2131, label %1393

; <label>:1393                                    ; preds = %1390
  %1394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1395 = extractvalue %dx.types.ResRet.i32 %1394, 0
  %1396 = and i32 %1395, 16
  %1397 = icmp eq i32 %1396, 0
  br i1 %1397, label %1596, label %1398

; <label>:1398                                    ; preds = %1393
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %49, 428
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %1403, 0
  %1405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1405, %dx.types.Handle %105, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = extractvalue %dx.types.ResRet.f32 %1406, 3
  %1411 = and i32 %1400, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1400, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1410, %1412
  %1417 = fadd fast float %1416, %1415
  %1418 = fmul fast float %1417, 0x3F70101000000000
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = and i32 %1420, 512
  %1422 = icmp eq i32 %1421, 0
  br i1 %1422, label %1431, label %1423

; <label>:1423                                    ; preds = %1398
  %1424 = add i32 %49, 508
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1424, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = add i32 %1426, 0
  %1428 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1427, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1429 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1428, %dx.types.Handle %106, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  br label %1431

; <label>:1431                                    ; preds = %1423, %1398
  %1432 = phi float [ %1430, %1423 ], [ 1.000000e+00, %1398 ]
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 33554432
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1543, label %1437

; <label>:1437                                    ; preds = %1431
  %1438 = add i32 %49, 240
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 65535
  %1442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1441)  ; LegacyF16ToF32(value)
  %1443 = lshr i32 %1440, 16
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = add i32 %49, 244
  %1446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.i32 %1446, 0
  %1448 = and i32 %1447, 65535
  %1449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1448)  ; LegacyF16ToF32(value)
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = lshr i32 %1451, 24
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F70101020000000
  %1455 = and i32 %1451, 255
  %1456 = uitofp i32 %1455 to float
  %1457 = fmul fast float %1456, 0x3F70101020000000
  %1458 = lshr i32 %1451, 8
  %1459 = and i32 %1458, 255
  %1460 = uitofp i32 %1459 to float
  %1461 = fmul fast float %1460, 0x3F70101020000000
  %1462 = lshr i32 %1451, 16
  %1463 = and i32 %1462, 255
  %1464 = uitofp i32 %1463 to float
  %1465 = fmul fast float %1464, 0x3F70101020000000
  %1466 = add i32 %49, 236
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = lshr i32 %1468, 24
  %1470 = uitofp i32 %1469 to float
  %1471 = fmul fast float %1470, 0x3F70101020000000
  %1472 = and i32 %1468, 255
  %1473 = uitofp i32 %1472 to float
  %1474 = fmul fast float %1473, 0x3F70101020000000
  %1475 = lshr i32 %1468, 8
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = fmul fast float %1477, 0x3F70101020000000
  %1479 = lshr i32 %1468, 16
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, 0x3F70101020000000
  %1483 = bitcast float %1407 to i32
  %1484 = ashr i32 %1483, 1
  %1485 = sub nsw i32 1597463174, %1484
  %1486 = bitcast i32 %1485 to float
  %1487 = fmul fast float %1407, 5.000000e-01
  %1488 = fmul fast float %1486, %1486
  %1489 = fmul fast float %1488, %1487
  %1490 = fsub fast float 1.500000e+00, %1489
  %1491 = fmul fast float %1486, %1407
  %1492 = fmul fast float %1491, %1490
  %1493 = bitcast float %1408 to i32
  %1494 = ashr i32 %1493, 1
  %1495 = sub nsw i32 1597463174, %1494
  %1496 = bitcast i32 %1495 to float
  %1497 = fmul fast float %1408, 5.000000e-01
  %1498 = fmul fast float %1496, %1496
  %1499 = fmul fast float %1498, %1497
  %1500 = fsub fast float 1.500000e+00, %1499
  %1501 = fmul fast float %1496, %1408
  %1502 = fmul fast float %1501, %1500
  %1503 = bitcast float %1409 to i32
  %1504 = ashr i32 %1503, 1
  %1505 = sub nsw i32 1597463174, %1504
  %1506 = bitcast i32 %1505 to float
  %1507 = fmul fast float %1409, 5.000000e-01
  %1508 = fmul fast float %1506, %1506
  %1509 = fmul fast float %1508, %1507
  %1510 = fsub fast float 1.500000e+00, %1509
  %1511 = fmul fast float %1506, %1409
  %1512 = fmul fast float %1511, %1510
  %1513 = fsub fast float %1492, %1474
  %1514 = fsub fast float %1502, %1478
  %1515 = fsub fast float %1512, %1482
  %1516 = fmul fast float %1513, %1442
  %1517 = fmul fast float %1514, %1444
  %1518 = fmul fast float %1515, %1449
  %1519 = fadd fast float %1516, %1457
  %1520 = fadd fast float %1517, %1461
  %1521 = fadd fast float %1518, %1465
  %1522 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  %1523 = call float @dx.op.unary.f32(i32 7, float %1520)  ; Saturate(value)
  %1524 = call float @dx.op.unary.f32(i32 7, float %1521)  ; Saturate(value)
  %1525 = fmul fast float %1522, %1522
  %1526 = fmul fast float %1523, %1523
  %1527 = fmul fast float %1524, %1524
  %1528 = fsub fast float %1525, %1407
  %1529 = fsub fast float %1526, %1408
  %1530 = fsub fast float %1527, %1409
  %1531 = fmul fast float %1528, %1432
  %1532 = fmul fast float %1529, %1432
  %1533 = fmul fast float %1530, %1432
  %1534 = fadd fast float %1531, %1407
  %1535 = fadd fast float %1532, %1408
  %1536 = fadd fast float %1533, %1409
  %1537 = fadd fast float %1454, %1418
  %1538 = fsub fast float %1537, %1471
  %1539 = call float @dx.op.unary.f32(i32 7, float %1538)  ; Saturate(value)
  %1540 = fsub fast float %1539, %1418
  %1541 = fmul fast float %1540, %1432
  %1542 = fadd fast float %1541, %1418
  br label %1596

; <label>:1543                                    ; preds = %1431
  %1544 = and i32 %1434, 134217728
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1580, label %1546

; <label>:1546                                    ; preds = %1543
  %1547 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %1548 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %1549 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %1550 = fadd fast float %1547, -5.000000e-01
  %1551 = fadd fast float %1548, -5.000000e-01
  %1552 = fadd fast float %1549, -5.000000e-01
  %1553 = fmul fast float %1550, %1432
  %1554 = fmul fast float %1551, %1432
  %1555 = fmul fast float %1552, %1432
  %1556 = fadd fast float %1553, 5.000000e-01
  %1557 = fadd fast float %1554, 5.000000e-01
  %1558 = fadd fast float %1555, 5.000000e-01
  %1559 = call float @dx.op.unary.f32(i32 24, float %1407)  ; Sqrt(value)
  %1560 = call float @dx.op.unary.f32(i32 24, float %1408)  ; Sqrt(value)
  %1561 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1562 = fmul fast float %1556, 2.000000e+00
  %1563 = fsub fast float 1.000000e+00, %1562
  %1564 = fmul fast float %1563, %1559
  %1565 = fadd fast float %1564, %1562
  %1566 = fmul fast float %1565, %1559
  %1567 = fmul fast float %1557, 2.000000e+00
  %1568 = fsub fast float 1.000000e+00, %1567
  %1569 = fmul fast float %1568, %1560
  %1570 = fadd fast float %1569, %1567
  %1571 = fmul fast float %1570, %1560
  %1572 = fmul fast float %1558, 2.000000e+00
  %1573 = fsub fast float 1.000000e+00, %1572
  %1574 = fmul fast float %1573, %1561
  %1575 = fadd fast float %1574, %1572
  %1576 = fmul fast float %1575, %1561
  %1577 = fmul fast float %1566, %1566
  %1578 = fmul fast float %1571, %1571
  %1579 = fmul fast float %1576, %1576
  br label %1596

; <label>:1580                                    ; preds = %1543
  %1581 = fmul fast float %363, %363
  %1582 = fmul fast float %367, %367
  %1583 = fmul fast float %371, %371
  %1584 = fadd fast float %1581, -1.000000e+00
  %1585 = fadd fast float %1582, -1.000000e+00
  %1586 = fadd fast float %1583, -1.000000e+00
  %1587 = fmul fast float %1432, %1584
  %1588 = fmul fast float %1432, %1585
  %1589 = fmul fast float %1432, %1586
  %1590 = fadd fast float %1587, 1.000000e+00
  %1591 = fadd fast float %1588, 1.000000e+00
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fmul fast float %1590, %1407
  %1594 = fmul fast float %1591, %1408
  %1595 = fmul fast float %1592, %1409
  br label %1596

; <label>:1596                                    ; preds = %1580, %1546, %1437, %1393
  %1597 = phi float [ %1542, %1437 ], [ %1418, %1546 ], [ %1418, %1580 ], [ 0x3FA23C0BE0000000, %1393 ]
  %1598 = phi float [ %1534, %1437 ], [ %1577, %1546 ], [ %1593, %1580 ], [ 1.000000e+00, %1393 ]
  %1599 = phi float [ %1535, %1437 ], [ %1578, %1546 ], [ %1594, %1580 ], [ 1.000000e+00, %1393 ]
  %1600 = phi float [ %1536, %1437 ], [ %1579, %1546 ], [ %1595, %1580 ], [ 1.000000e+00, %1393 ]
  %1601 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.i32 %1601, 1
  %1603 = and i32 %1602, 1
  %1604 = icmp ne i32 %1603, 0
  %1605 = add i32 %49, 356
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = and i32 %1607, 32
  %1609 = icmp ne i32 %1608, 0
  %1610 = and i1 %1604, %1609
  %1611 = select i1 %1610, float 1.000000e+00, float %1598
  %1612 = select i1 %1610, float 0x3FD3333340000000, float %1599
  %1613 = select i1 %1610, float 0x3FD3333340000000, float %1600
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 32
  %1617 = icmp eq i32 %1616, 0
  br i1 %1617, label %1690, label %1618

; <label>:1618                                    ; preds = %1596
  %1619 = add i32 %49, 108
  %1620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1619, i32 undef)  ; BufferLoad(srv,index,wot)
  %1621 = extractvalue %dx.types.ResRet.i32 %1620, 0
  %1622 = add i32 %49, 444
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = add i32 %1624, 0
  %1626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1626, %dx.types.Handle %105, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1628 = extractvalue %dx.types.ResRet.f32 %1627, 0
  %1629 = extractvalue %dx.types.ResRet.f32 %1627, 1
  %1630 = extractvalue %dx.types.ResRet.f32 %1627, 2
  %1631 = extractvalue %dx.types.ResRet.f32 %1627, 3
  %1632 = and i32 %1621, 255
  %1633 = uitofp i32 %1632 to float
  %1634 = lshr i32 %1621, 8
  %1635 = and i32 %1634, 255
  %1636 = uitofp i32 %1635 to float
  %1637 = lshr i32 %1621, 16
  %1638 = and i32 %1637, 255
  %1639 = uitofp i32 %1638 to float
  %1640 = fmul fast float %1639, 0x3F70101000000000
  %1641 = fmul fast float %1628, %1633
  %1642 = fadd fast float %1641, %1636
  %1643 = fmul fast float %1642, 0x3F70101000000000
  %1644 = fadd fast float %1629, -5.000000e-01
  %1645 = fadd fast float %1631, -5.000000e-01
  %1646 = fmul fast float %1644, %1640
  %1647 = fmul fast float %1645, %1640
  %1648 = fadd fast float %1646, 5.000000e-01
  %1649 = fadd fast float %1647, 5.000000e-01
  %1650 = fmul fast float %1648, 2.000000e+00
  %1651 = fadd fast float %1650, -1.000000e+00
  %1652 = fmul fast float %1649, 2.000000e+00
  %1653 = fadd fast float %1652, -1.000000e+00
  %1654 = fadd fast float %1651, %1653
  %1655 = fmul fast float %1654, 5.000000e-01
  %1656 = fsub fast float %1651, %1653
  %1657 = fmul fast float %1656, 5.000000e-01
  %1658 = call float @dx.op.unary.f32(i32 6, float %1655)  ; FAbs(value)
  %1659 = fsub fast float 1.000000e+00, %1658
  %1660 = call float @dx.op.unary.f32(i32 6, float %1657)  ; FAbs(value)
  %1661 = fsub fast float %1659, %1660
  %1662 = call float @dx.op.dot3.f32(i32 55, float %1655, float %1657, float %1661, float %1655, float %1657, float %1661)  ; Dot3(ax,ay,az,bx,by,bz)
  %1663 = call float @dx.op.unary.f32(i32 25, float %1662)  ; Rsqrt(value)
  %1664 = fmul fast float %1655, %1663
  %1665 = fmul fast float %1657, %1663
  %1666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1667 = extractvalue %dx.types.ResRet.i32 %1666, 0
  %1668 = and i32 %1667, 67108864
  %1669 = icmp eq i32 %1668, 0
  br i1 %1669, label %1686, label %1670

; <label>:1670                                    ; preds = %1618
  %1671 = add i32 %49, 296
  %1672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1671, i32 undef)  ; BufferLoad(srv,index,wot)
  %1673 = extractvalue %dx.types.ResRet.i32 %1672, 0
  %1674 = and i32 %1673, 65535
  %1675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1674)  ; LegacyF16ToF32(value)
  %1676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1677 = extractvalue %dx.types.ResRet.i32 %1676, 0
  %1678 = and i32 %1677, 65535
  %1679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1678)  ; LegacyF16ToF32(value)
  %1680 = lshr i32 %1673, 16
  %1681 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1680)  ; LegacyF16ToF32(value)
  %1682 = fsub fast float %1643, %1681
  %1683 = fmul fast float %1682, %1675
  %1684 = fadd fast float %1683, %1679
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  br label %1686

; <label>:1686                                    ; preds = %1670, %1618
  %1687 = phi float [ %1685, %1670 ], [ %1643, %1618 ]
  %1688 = call float @dx.op.dot2.f32(i32 54, float %1664, float %1665, float %1222, float %1223)  ; Dot2(ax,ay,bx,by)
  %1689 = call float @dx.op.dot2.f32(i32 54, float %1664, float %1665, float %1224, float %1225)  ; Dot2(ax,ay,bx,by)
  br label %1690

; <label>:1690                                    ; preds = %1686, %1596
  %1691 = phi float [ %1687, %1686 ], [ 0x3FD6666660000000, %1596 ]
  %1692 = phi float [ %1688, %1686 ], [ 0.000000e+00, %1596 ]
  %1693 = phi float [ %1689, %1686 ], [ 0.000000e+00, %1596 ]
  %1694 = phi float [ %1630, %1686 ], [ 1.000000e+00, %1596 ]
  %1695 = add i32 %49, 176
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = lshr i32 %1697, 22
  %1699 = shl nuw nsw i32 %1698, 5
  %1700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1699)  ; LegacyF16ToF32(value)
  %1701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1702 = extractvalue %dx.types.ResRet.i32 %1701, 0
  %1703 = and i32 %1702, 64
  %1704 = icmp eq i32 %1703, 0
  br i1 %1704, label %1738, label %1705

; <label>:1705                                    ; preds = %1690
  %1706 = add i32 %49, 460
  %1707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1706, i32 undef)  ; BufferLoad(srv,index,wot)
  %1708 = extractvalue %dx.types.ResRet.i32 %1707, 0
  %1709 = add i32 %1708, 0
  %1710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = and i32 %1712, 131072
  %1714 = icmp eq i32 %1713, 0
  %1715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1710, %dx.types.Handle %105, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1716 = extractvalue %dx.types.ResRet.f32 %1715, 0
  %1717 = extractvalue %dx.types.ResRet.f32 %1715, 1
  %1718 = extractvalue %dx.types.ResRet.f32 %1715, 2
  %1719 = fmul fast float %1716, %351
  %1720 = fmul fast float %1717, %354
  %1721 = fmul fast float %1718, %357
  br i1 %1714, label %1728, label %1722

; <label>:1722                                    ; preds = %1705
  %1723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1724 = extractvalue %dx.types.CBufRet.f32 %1723, 0
  %1725 = fmul fast float %1724, %1719
  %1726 = fmul fast float %1724, %1720
  %1727 = fmul fast float %1724, %1721
  br label %1728

; <label>:1728                                    ; preds = %1722, %1705
  %1729 = phi float [ %1725, %1722 ], [ %1719, %1705 ]
  %1730 = phi float [ %1726, %1722 ], [ %1720, %1705 ]
  %1731 = phi float [ %1727, %1722 ], [ %1721, %1705 ]
  %1732 = fmul fast float %1729, %1700
  %1733 = select i1 %292, float %1732, float %1729
  %1734 = call float @dx.op.dot3.f32(i32 55, float %1733, float %1730, float %1731, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1735 = select i1 %292, float 0.000000e+00, float %1729
  %1736 = select i1 %292, float %1734, float %1730
  %1737 = select i1 %292, float 0.000000e+00, float %1731
  br label %1738

; <label>:1738                                    ; preds = %1728, %1690
  %1739 = phi float [ %1735, %1728 ], [ 0.000000e+00, %1690 ]
  %1740 = phi float [ %1736, %1728 ], [ 0.000000e+00, %1690 ]
  %1741 = phi float [ %1737, %1728 ], [ 0.000000e+00, %1690 ]
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = and i32 %1743, 1024
  %1745 = icmp eq i32 %1744, 0
  br i1 %1745, label %1776, label %1746

; <label>:1746                                    ; preds = %1738
  %1747 = add i32 %49, 168
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = and i32 %1749, 255
  %1751 = uitofp i32 %1750 to float
  %1752 = fmul fast float %1751, 0x3F70101020000000
  %1753 = lshr i32 %1749, 8
  %1754 = and i32 %1753, 255
  %1755 = uitofp i32 %1754 to float
  %1756 = fmul fast float %1755, 0x3F70101020000000
  %1757 = lshr i32 %1749, 16
  %1758 = and i32 %1757, 255
  %1759 = uitofp i32 %1758 to float
  %1760 = fmul fast float %1759, 0x3F70101020000000
  %1761 = fmul fast float %1752, %1752
  %1762 = fmul fast float %1756, %1756
  %1763 = fmul fast float %1760, %1760
  %1764 = add i32 %49, 524
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = add i32 %1766, 0
  %1768 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1767, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1769 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1768, %dx.types.Handle %106, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1770 = extractvalue %dx.types.ResRet.f32 %1769, 0
  %1771 = extractvalue %dx.types.ResRet.f32 %1769, 1
  %1772 = extractvalue %dx.types.ResRet.f32 %1769, 2
  %1773 = fmul fast float %1761, %1770
  %1774 = fmul fast float %1762, %1771
  %1775 = fmul fast float %1763, %1772
  br label %1776

; <label>:1776                                    ; preds = %1746, %1738
  %1777 = phi float [ %1773, %1746 ], [ 0.000000e+00, %1738 ]
  %1778 = phi float [ %1774, %1746 ], [ 0.000000e+00, %1738 ]
  %1779 = phi float [ %1775, %1746 ], [ 0.000000e+00, %1738 ]
  %1780 = fcmp fast ogt float %1777, 0.000000e+00
  %1781 = fcmp fast ogt float %1778, 0.000000e+00
  %1782 = fcmp fast ogt float %1779, 0.000000e+00
  %1783 = call float @dx.op.unary.f32(i32 23, float %1777)  ; Log(value)
  %1784 = call float @dx.op.unary.f32(i32 23, float %1778)  ; Log(value)
  %1785 = call float @dx.op.unary.f32(i32 23, float %1779)  ; Log(value)
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 7
  %1789 = and i32 %1788, 32752
  %1790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1789)  ; LegacyF16ToF32(value)
  %1791 = fmul fast float %1783, 0xBFE62E4300000000
  %1792 = fmul fast float %1791, %1790
  %1793 = fmul fast float %1784, 0xBFE62E4300000000
  %1794 = fmul fast float %1793, %1790
  %1795 = fmul fast float %1785, 0xBFE62E4300000000
  %1796 = fmul fast float %1795, %1790
  %1797 = select i1 %1780, float %1792, float 1.270000e+02
  %1798 = select i1 %1781, float %1794, float 1.270000e+02
  %1799 = select i1 %1782, float %1796, float 1.270000e+02
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 10240
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1848, label %1804

; <label>:1804                                    ; preds = %1776
  %1805 = add i32 %49, 540
  %1806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1805, i32 undef)  ; BufferLoad(srv,index,wot)
  %1807 = extractvalue %dx.types.ResRet.i32 %1806, 0
  %1808 = add i32 %1807, 0
  %1809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1808, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1810 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1809, %dx.types.Handle %106, float %1318, float %1319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1811 = extractvalue %dx.types.ResRet.f32 %1810, 1
  %1812 = extractvalue %dx.types.ResRet.f32 %1810, 3
  %1813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1814 = extractvalue %dx.types.ResRet.i32 %1813, 0
  %1815 = and i32 %1814, 1048576
  %1816 = icmp ne i32 %1815, 0
  %1817 = and i32 %1814, 8192
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %1834, label %1819

; <label>:1819                                    ; preds = %1804
  %1820 = extractvalue %dx.types.ResRet.f32 %1810, 2
  %1821 = select i1 %1816, float %1820, float %1811
  %1822 = extractvalue %dx.types.ResRet.f32 %1810, 0
  %1823 = select i1 %1816, float %1822, float %1811
  %1824 = add i32 %49, 112
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1824, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = lshr i32 %1826, 16
  %1828 = and i32 %1827, 255
  %1829 = uitofp i32 %1828 to float
  %1830 = fmul fast float %1829, 0x3F80101020000000
  %1831 = fmul fast float %1830, %1823
  %1832 = fmul fast float %1830, %1811
  %1833 = fmul fast float %1830, %1821
  br label %1834

; <label>:1834                                    ; preds = %1819, %1804
  %1835 = phi float [ %1831, %1819 ], [ 0.000000e+00, %1804 ]
  %1836 = phi float [ %1832, %1819 ], [ 0.000000e+00, %1804 ]
  %1837 = phi float [ %1833, %1819 ], [ 0.000000e+00, %1804 ]
  %1838 = and i32 %1814, 2048
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %1848, label %1840

; <label>:1840                                    ; preds = %1834
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = shl i32 %1842, 4
  %1844 = and i32 %1843, 32752
  %1845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1844)  ; LegacyF16ToF32(value)
  %1846 = fmul fast float %1845, %1812
  %1847 = call float @dx.op.binary.f32(i32 35, float %1846, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1848

; <label>:1848                                    ; preds = %1840, %1834, %1776
  %1849 = phi float [ %1835, %1840 ], [ %1835, %1834 ], [ 0.000000e+00, %1776 ]
  %1850 = phi float [ %1836, %1840 ], [ %1836, %1834 ], [ 0.000000e+00, %1776 ]
  %1851 = phi float [ %1837, %1840 ], [ %1837, %1834 ], [ 0.000000e+00, %1776 ]
  %1852 = phi float [ %1847, %1840 ], [ 0x3F70101020000000, %1834 ], [ 0x3F70101020000000, %1776 ]
  %1853 = add i32 %49, 112
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %1855, 255
  %1857 = uitofp i32 %1856 to float
  %1858 = lshr i32 %1855, 8
  %1859 = and i32 %1858, 255
  %1860 = uitofp i32 %1859 to float
  %1861 = call float @dx.op.dot3.f32(i32 55, float %1611, float %1612, float %1613, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1862 = fmul fast float %1860, %1861
  %1863 = fadd fast float %1862, %1857
  %1864 = fmul fast float %1863, 0x3F70101020000000
  %1865 = call float @dx.op.unary.f32(i32 7, float %1864)  ; Saturate(value)
  br i1 %1210, label %1866, label %1901

; <label>:1866                                    ; preds = %1848
  %1867 = fmul fast float %1852, 2.000000e+00
  %1868 = fcmp fast olt float %1797, 1.270000e+02
  %1869 = fcmp fast olt float %1798, 1.270000e+02
  %1870 = fcmp fast olt float %1799, 1.270000e+02
  %1871 = fmul fast float %1797, 0xBFF7154760000000
  %1872 = fmul fast float %1871, %1867
  %1873 = fmul fast float %1798, 0xBFF7154760000000
  %1874 = fmul fast float %1873, %1867
  %1875 = fmul fast float %1799, 0xBFF7154760000000
  %1876 = fmul fast float %1875, %1867
  %1877 = call float @dx.op.unary.f32(i32 21, float %1872)  ; Exp(value)
  %1878 = call float @dx.op.unary.f32(i32 21, float %1874)  ; Exp(value)
  %1879 = call float @dx.op.unary.f32(i32 21, float %1876)  ; Exp(value)
  %1880 = call float @dx.op.unary.f32(i32 7, float %1877)  ; Saturate(value)
  %1881 = call float @dx.op.unary.f32(i32 7, float %1878)  ; Saturate(value)
  %1882 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1883 = fadd fast float %1880, -1.000000e+00
  %1884 = select i1 %1868, float %1883, float -1.000000e+00
  %1885 = fadd fast float %1881, -1.000000e+00
  %1886 = select i1 %1869, float %1885, float -1.000000e+00
  %1887 = fadd fast float %1882, -1.000000e+00
  %1888 = select i1 %1870, float %1887, float -1.000000e+00
  %1889 = fmul fast float %1884, %1391
  %1890 = fmul fast float %1886, %1391
  %1891 = fmul fast float %1888, %1391
  %1892 = fadd fast float %1889, 1.000000e+00
  %1893 = fadd fast float %1890, 1.000000e+00
  %1894 = fadd fast float %1891, 1.000000e+00
  %1895 = fmul fast float %1892, %1191
  %1896 = fmul fast float %1893, %1192
  %1897 = fmul fast float %1894, %1193
  %1898 = fmul fast float %1892, %1194
  %1899 = fmul fast float %1893, %1195
  %1900 = fmul fast float %1894, %1196
  br label %1901

; <label>:1901                                    ; preds = %1866, %1848
  %1902 = phi float [ %1895, %1866 ], [ %1191, %1848 ]
  %1903 = phi float [ %1896, %1866 ], [ %1192, %1848 ]
  %1904 = phi float [ %1897, %1866 ], [ %1193, %1848 ]
  %1905 = phi float [ %1898, %1866 ], [ %1194, %1848 ]
  %1906 = phi float [ %1899, %1866 ], [ %1195, %1848 ]
  %1907 = phi float [ %1900, %1866 ], [ %1196, %1848 ]
  %1908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.i32 %1908, 0
  %1910 = and i32 %1909, 3
  %1911 = icmp eq i32 %1910, 3
  br i1 %1911, label %1990, label %1912

; <label>:1912                                    ; preds = %1901
  %1913 = and i32 %1909, 16
  %1914 = icmp ne i32 %1913, 0
  %1915 = select i1 %1914, float %1391, float 0.000000e+00
  %1916 = icmp eq i32 %1910, 0
  br i1 %1916, label %1917, label %1945

; <label>:1917                                    ; preds = %1912
  %1918 = and i32 %1909, 64
  %1919 = icmp ne i32 %1918, 0
  %1920 = select i1 %1919, float %1391, float 0.000000e+00
  %1921 = fsub fast float %1611, %1902
  %1922 = fsub fast float %1612, %1903
  %1923 = fsub fast float %1613, %1904
  %1924 = fmul fast float %1915, %1921
  %1925 = fmul fast float %1915, %1922
  %1926 = fmul fast float %1915, %1923
  %1927 = fadd fast float %1924, %1902
  %1928 = fadd fast float %1925, %1903
  %1929 = fadd fast float %1926, %1904
  %1930 = fsub fast float %1597, %1203
  %1931 = fmul fast float %1915, %1930
  %1932 = fadd fast float %1931, %1203
  %1933 = fsub fast float %1739, %1905
  %1934 = fsub fast float %1740, %1906
  %1935 = fsub fast float %1741, %1907
  %1936 = fmul fast float %1920, %1933
  %1937 = fmul fast float %1920, %1934
  %1938 = fmul fast float %1920, %1935
  %1939 = fadd fast float %1936, %1905
  %1940 = fadd fast float %1937, %1906
  %1941 = fadd fast float %1938, %1907
  %1942 = fsub fast float %1865, %1208
  %1943 = fmul fast float %1915, %1942
  %1944 = fadd fast float %1943, %1208
  br label %1990

; <label>:1945                                    ; preds = %1912
  %1946 = icmp eq i32 %1910, 1
  br i1 %1946, label %1947, label %1960

; <label>:1947                                    ; preds = %1945
  %1948 = fadd fast float %1611, -1.000000e+00
  %1949 = fadd fast float %1612, -1.000000e+00
  %1950 = fadd fast float %1613, -1.000000e+00
  %1951 = fmul fast float %1915, %1948
  %1952 = fmul fast float %1915, %1949
  %1953 = fmul fast float %1915, %1950
  %1954 = fadd fast float %1951, 1.000000e+00
  %1955 = fadd fast float %1952, 1.000000e+00
  %1956 = fadd fast float %1953, 1.000000e+00
  %1957 = fmul fast float %1954, %1902
  %1958 = fmul fast float %1955, %1903
  %1959 = fmul fast float %1956, %1904
  br label %1990

; <label>:1960                                    ; preds = %1945
  %1961 = icmp eq i32 %1910, 2
  br i1 %1961, label %1962, label %1990

; <label>:1962                                    ; preds = %1960
  %1963 = call float @dx.op.unary.f32(i32 24, float %1611)  ; Sqrt(value)
  %1964 = call float @dx.op.unary.f32(i32 24, float %1612)  ; Sqrt(value)
  %1965 = call float @dx.op.unary.f32(i32 24, float %1613)  ; Sqrt(value)
  %1966 = fadd fast float %1963, -5.000000e-01
  %1967 = fadd fast float %1964, -5.000000e-01
  %1968 = fadd fast float %1965, -5.000000e-01
  %1969 = fmul fast float %1966, %1915
  %1970 = fmul fast float %1967, %1915
  %1971 = fmul fast float %1968, %1915
  %1972 = fadd fast float %1969, 5.000000e-01
  %1973 = fadd fast float %1970, 5.000000e-01
  %1974 = fadd fast float %1971, 5.000000e-01
  %1975 = fmul fast float %1972, 2.000000e+00
  %1976 = fsub fast float 1.000000e+00, %1975
  %1977 = fmul fast float %1976, %1902
  %1978 = fadd fast float %1977, %1975
  %1979 = fmul fast float %1978, %1902
  %1980 = fmul fast float %1973, 2.000000e+00
  %1981 = fsub fast float 1.000000e+00, %1980
  %1982 = fmul fast float %1981, %1903
  %1983 = fadd fast float %1982, %1980
  %1984 = fmul fast float %1983, %1903
  %1985 = fmul fast float %1974, 2.000000e+00
  %1986 = fsub fast float 1.000000e+00, %1985
  %1987 = fmul fast float %1986, %1904
  %1988 = fadd fast float %1987, %1985
  %1989 = fmul fast float %1988, %1904
  br label %1990

; <label>:1990                                    ; preds = %1962, %1960, %1947, %1917, %1901
  %1991 = phi float [ %1902, %1901 ], [ %1979, %1962 ], [ %1902, %1960 ], [ %1957, %1947 ], [ %1927, %1917 ]
  %1992 = phi float [ %1903, %1901 ], [ %1984, %1962 ], [ %1903, %1960 ], [ %1958, %1947 ], [ %1928, %1917 ]
  %1993 = phi float [ %1904, %1901 ], [ %1989, %1962 ], [ %1904, %1960 ], [ %1959, %1947 ], [ %1929, %1917 ]
  %1994 = phi float [ %1905, %1901 ], [ %1905, %1962 ], [ %1905, %1960 ], [ %1905, %1947 ], [ %1939, %1917 ]
  %1995 = phi float [ %1906, %1901 ], [ %1906, %1962 ], [ %1906, %1960 ], [ %1906, %1947 ], [ %1940, %1917 ]
  %1996 = phi float [ %1907, %1901 ], [ %1907, %1962 ], [ %1907, %1960 ], [ %1907, %1947 ], [ %1941, %1917 ]
  %1997 = phi float [ %1203, %1901 ], [ %1203, %1962 ], [ %1203, %1960 ], [ %1203, %1947 ], [ %1932, %1917 ]
  %1998 = phi float [ %1208, %1901 ], [ %1208, %1962 ], [ %1208, %1960 ], [ %1208, %1947 ], [ %1944, %1917 ]
  %1999 = and i32 %1909, 12
  %2000 = icmp eq i32 %1999, 12
  br i1 %2000, label %2131, label %2001

; <label>:2001                                    ; preds = %1990
  %2002 = and i32 %1909, 2097184
  %2003 = icmp eq i32 %2002, 2097184
  %2004 = select i1 %2003, float %1391, float 0.000000e+00
  %2005 = and i32 %1909, 4194336
  %2006 = icmp eq i32 %2005, 4194336
  %2007 = select i1 %2006, float %1391, float 0.000000e+00
  %2008 = and i32 %1909, 8388640
  %2009 = icmp eq i32 %2008, 8388640
  %2010 = select i1 %2009, float %1391, float 0.000000e+00
  %2011 = and i32 %1909, 1024
  %2012 = icmp ne i32 %2011, 0
  %2013 = select i1 %2012, float %1391, float 0.000000e+00
  %2014 = and i32 %1909, 2048
  %2015 = icmp ne i32 %2014, 0
  %2016 = select i1 %2015, float %1391, float 0.000000e+00
  %2017 = and i32 %1909, 8192
  %2018 = icmp ne i32 %2017, 0
  %2019 = select i1 %2018, float %1391, float 0.000000e+00
  %2020 = icmp eq i32 %1999, 0
  br i1 %2020, label %2021, label %2055

; <label>:2021                                    ; preds = %2001
  %2022 = fsub fast float %1692, %1189
  %2023 = fsub fast float %1693, %1190
  %2024 = fmul fast float %2004, %2022
  %2025 = fmul fast float %2004, %2023
  %2026 = fadd fast float %2024, %1189
  %2027 = fadd fast float %2025, %1190
  %2028 = fsub fast float %1694, %1206
  %2029 = fmul fast float %2007, %2028
  %2030 = fadd fast float %2029, %1206
  %2031 = fsub fast float %1691, %1205
  %2032 = fmul fast float %2010, %2031
  %2033 = fadd fast float %2032, %1205
  %2034 = fsub fast float %1797, %1197
  %2035 = fsub fast float %1798, %1198
  %2036 = fsub fast float %1799, %1199
  %2037 = fmul fast float %2013, %2034
  %2038 = fmul fast float %2013, %2035
  %2039 = fmul fast float %2013, %2036
  %2040 = fadd fast float %2037, %1197
  %2041 = fadd fast float %2038, %1198
  %2042 = fadd fast float %2039, %1199
  %2043 = fsub fast float %1852, %1207
  %2044 = fmul fast float %2016, %2043
  %2045 = fadd fast float %2044, %1207
  %2046 = fsub fast float %1849, %1200
  %2047 = fsub fast float %1850, %1201
  %2048 = fsub fast float %1851, %1202
  %2049 = fmul fast float %2019, %2046
  %2050 = fmul fast float %2019, %2047
  %2051 = fmul fast float %2019, %2048
  %2052 = fadd fast float %2049, %1200
  %2053 = fadd fast float %2050, %1201
  %2054 = fadd fast float %2051, %1202
  br label %2131

; <label>:2055                                    ; preds = %2001
  %2056 = icmp eq i32 %1999, 4
  br i1 %2056, label %2057, label %2103

; <label>:2057                                    ; preds = %2055
  %2058 = fmul fast float %2004, %1692
  %2059 = fmul fast float %2004, %1693
  %2060 = fadd fast float %2058, %1189
  %2061 = fadd fast float %2059, %1190
  %2062 = call float @dx.op.binary.f32(i32 36, float %1206, float %1694)  ; FMin(a,b)
  %2063 = fsub fast float %2062, %1206
  %2064 = fmul fast float %2063, %2007
  %2065 = fadd fast float %2064, %1206
  %2066 = fadd fast float %1691, %1205
  %2067 = fmul fast float %2066, 0x3FF337FAE0000000
  %2068 = fmul fast float %1205, %1205
  %2069 = fmul fast float %1691, %1691
  %2070 = fadd fast float %2069, %2068
  %2071 = fmul fast float %2070, 0x3FE5152B00000000
  %2072 = fmul fast float %1205, 0xBFCC1F85E0000000
  %2073 = fmul fast float %2072, %1691
  %2074 = fadd fast float %2073, 0xBFE1363700000000
  %2075 = fadd fast float %2074, %2067
  %2076 = fsub fast float %2075, %2071
  %2077 = fmul fast float %2066, 0x3FBA6F0D00000000
  %2078 = fmul fast float %2070, 0x3FD0432880000000
  %2079 = fmul fast float %1205, 0xBFEF110800000000
  %2080 = fmul fast float %2079, %1691
  %2081 = fadd fast float %2080, 1.000000e+00
  %2082 = fsub fast float %2081, %2077
  %2083 = fadd fast float %2082, %2078
  %2084 = fdiv fast float %2076, %2083
  %2085 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2086 = fsub fast float %2085, %1205
  %2087 = fmul fast float %2086, %2010
  %2088 = fadd fast float %2087, %1205
  %2089 = fmul fast float %2013, %1797
  %2090 = fmul fast float %2013, %1798
  %2091 = fmul fast float %2013, %1799
  %2092 = fadd fast float %2089, %1197
  %2093 = fadd fast float %2090, %1198
  %2094 = fadd fast float %2091, %1199
  %2095 = fmul fast float %2016, %1852
  %2096 = fadd fast float %2095, %1207
  %2097 = fmul fast float %2019, %1849
  %2098 = fmul fast float %2019, %1850
  %2099 = fmul fast float %2019, %1851
  %2100 = fadd fast float %2097, %1200
  %2101 = fadd fast float %2098, %1201
  %2102 = fadd fast float %2099, %1202
  br label %2131

; <label>:2103                                    ; preds = %2055
  %2104 = icmp eq i32 %1999, 8
  br i1 %2104, label %2105, label %2131

; <label>:2105                                    ; preds = %2103
  %2106 = fmul fast float %2004, %1692
  %2107 = fmul fast float %2004, %1693
  %2108 = fadd fast float %2106, %1189
  %2109 = fadd fast float %2107, %1190
  %2110 = call float @dx.op.binary.f32(i32 36, float %1206, float %1694)  ; FMin(a,b)
  %2111 = fsub fast float %2110, %1206
  %2112 = fmul fast float %2111, %2007
  %2113 = fadd fast float %2112, %1206
  %2114 = fsub fast float %1691, %1205
  %2115 = fmul fast float %2010, %2114
  %2116 = fadd fast float %2115, %1205
  %2117 = fmul fast float %2013, %1797
  %2118 = fmul fast float %2013, %1798
  %2119 = fmul fast float %2013, %1799
  %2120 = fadd fast float %2117, %1197
  %2121 = fadd fast float %2118, %1198
  %2122 = fadd fast float %2119, %1199
  %2123 = fmul fast float %2016, %1852
  %2124 = fadd fast float %2123, %1207
  %2125 = fmul fast float %2019, %1849
  %2126 = fmul fast float %2019, %1850
  %2127 = fmul fast float %2019, %1851
  %2128 = fadd fast float %2125, %1200
  %2129 = fadd fast float %2126, %1201
  %2130 = fadd fast float %2127, %1202
  br label %2131

; <label>:2131                                    ; preds = %2105, %2103, %2057, %2021, %1990, %1390, %1209, %1188
  %2132 = phi float [ %1189, %1990 ], [ %1189, %1390 ], [ %1189, %1188 ], [ %2108, %2105 ], [ %1189, %2103 ], [ %2060, %2057 ], [ %2026, %2021 ], [ %1189, %1209 ]
  %2133 = phi float [ %1190, %1990 ], [ %1190, %1390 ], [ %1190, %1188 ], [ %2109, %2105 ], [ %1190, %2103 ], [ %2061, %2057 ], [ %2027, %2021 ], [ %1190, %1209 ]
  %2134 = phi float [ %1991, %1990 ], [ %1191, %1390 ], [ %1191, %1188 ], [ %1991, %2105 ], [ %1991, %2103 ], [ %1991, %2057 ], [ %1991, %2021 ], [ %1191, %1209 ]
  %2135 = phi float [ %1992, %1990 ], [ %1192, %1390 ], [ %1192, %1188 ], [ %1992, %2105 ], [ %1992, %2103 ], [ %1992, %2057 ], [ %1992, %2021 ], [ %1192, %1209 ]
  %2136 = phi float [ %1993, %1990 ], [ %1193, %1390 ], [ %1193, %1188 ], [ %1993, %2105 ], [ %1993, %2103 ], [ %1993, %2057 ], [ %1993, %2021 ], [ %1193, %1209 ]
  %2137 = phi float [ %1994, %1990 ], [ %1194, %1390 ], [ %1194, %1188 ], [ %1994, %2105 ], [ %1994, %2103 ], [ %1994, %2057 ], [ %1994, %2021 ], [ %1194, %1209 ]
  %2138 = phi float [ %1995, %1990 ], [ %1195, %1390 ], [ %1195, %1188 ], [ %1995, %2105 ], [ %1995, %2103 ], [ %1995, %2057 ], [ %1995, %2021 ], [ %1195, %1209 ]
  %2139 = phi float [ %1996, %1990 ], [ %1196, %1390 ], [ %1196, %1188 ], [ %1996, %2105 ], [ %1996, %2103 ], [ %1996, %2057 ], [ %1996, %2021 ], [ %1196, %1209 ]
  %2140 = phi float [ %1197, %1990 ], [ %1197, %1390 ], [ %1197, %1188 ], [ %2120, %2105 ], [ %1197, %2103 ], [ %2092, %2057 ], [ %2040, %2021 ], [ %1197, %1209 ]
  %2141 = phi float [ %1198, %1990 ], [ %1198, %1390 ], [ %1198, %1188 ], [ %2121, %2105 ], [ %1198, %2103 ], [ %2093, %2057 ], [ %2041, %2021 ], [ %1198, %1209 ]
  %2142 = phi float [ %1199, %1990 ], [ %1199, %1390 ], [ %1199, %1188 ], [ %2122, %2105 ], [ %1199, %2103 ], [ %2094, %2057 ], [ %2042, %2021 ], [ %1199, %1209 ]
  %2143 = phi float [ %1200, %1990 ], [ %1200, %1390 ], [ %1200, %1188 ], [ %2128, %2105 ], [ %1200, %2103 ], [ %2100, %2057 ], [ %2052, %2021 ], [ %1200, %1209 ]
  %2144 = phi float [ %1201, %1990 ], [ %1201, %1390 ], [ %1201, %1188 ], [ %2129, %2105 ], [ %1201, %2103 ], [ %2101, %2057 ], [ %2053, %2021 ], [ %1201, %1209 ]
  %2145 = phi float [ %1202, %1990 ], [ %1202, %1390 ], [ %1202, %1188 ], [ %2130, %2105 ], [ %1202, %2103 ], [ %2102, %2057 ], [ %2054, %2021 ], [ %1202, %1209 ]
  %2146 = phi float [ %1997, %1990 ], [ %1203, %1390 ], [ %1203, %1188 ], [ %1997, %2105 ], [ %1997, %2103 ], [ %1997, %2057 ], [ %1997, %2021 ], [ %1203, %1209 ]
  %2147 = phi float [ %1205, %1990 ], [ %1205, %1390 ], [ %1205, %1188 ], [ %2116, %2105 ], [ %1205, %2103 ], [ %2088, %2057 ], [ %2033, %2021 ], [ %1205, %1209 ]
  %2148 = phi float [ %1206, %1990 ], [ %1206, %1390 ], [ %1206, %1188 ], [ %2113, %2105 ], [ %1206, %2103 ], [ %2065, %2057 ], [ %2030, %2021 ], [ %1206, %1209 ]
  %2149 = phi float [ %1207, %1990 ], [ %1207, %1390 ], [ %1207, %1188 ], [ %2124, %2105 ], [ %1207, %2103 ], [ %2096, %2057 ], [ %2045, %2021 ], [ %1207, %1209 ]
  %2150 = phi float [ %1998, %1990 ], [ %1208, %1390 ], [ %1208, %1188 ], [ %1998, %2105 ], [ %1998, %2103 ], [ %1998, %2057 ], [ %1998, %2021 ], [ %1208, %1209 ]
  br i1 %478, label %3073, label %2151

; <label>:2151                                    ; preds = %2131
  %2152 = icmp ult i32 %534, 3
  %2153 = add i32 %49, 56
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = add i32 %49, 60
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = or i32 %2158, %2155
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %3073, label %2161

; <label>:2161                                    ; preds = %2151
  %2162 = and i32 %2155, 262144
  %2163 = icmp ne i32 %2162, 0
  %2164 = select i1 %2163, float %55, float 1.000000e+00
  %2165 = select i1 %2163, float %56, float 0.000000e+00
  %2166 = select i1 %2163, float %57, float 0.000000e+00
  %2167 = select i1 %2163, float %58, float 1.000000e+00
  %2168 = select i1 %2163, float %59, float %87
  %2169 = select i1 %2163, float %60, float %88
  %2170 = add i32 %49, 316
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = lshr i32 %2172, 16
  %2174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2173)  ; LegacyF16ToF32(value)
  %2175 = fmul fast float %2174, 0x3F50624DE0000000
  %2176 = add i32 %49, 120
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = lshr i32 %2178, 16
  %2180 = and i32 %2179, 255
  %2181 = lshr i32 %2178, 24
  %2182 = add i32 %49, 324
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2182, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = and i32 %2184, 65535
  %2186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2185)  ; LegacyF16ToF32(value)
  %2187 = lshr i32 %2184, 16
  %2188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2187)  ; LegacyF16ToF32(value)
  %2189 = add i32 %49, 64
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2189, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = lshr i32 %2191, 22
  %2193 = shl nuw nsw i32 %2192, 5
  %2194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2193)  ; LegacyF16ToF32(value)
  %2195 = shl i32 %2191, 4
  %2196 = and i32 %2195, 32752
  %2197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2196)  ; LegacyF16ToF32(value)
  %2198 = lshr i32 %2191, 7
  %2199 = and i32 %2198, 32752
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 3
  %2203 = fmul fast float %2202, 1.000000e+03
  %2204 = fmul fast float %428, %2203
  %2205 = call float @dx.op.unary.f32(i32 22, float %2204)  ; Frc(value)
  %2206 = fadd fast float %2205, %418
  %2207 = fmul fast float %429, %2203
  %2208 = call float @dx.op.unary.f32(i32 22, float %2207)  ; Frc(value)
  %2209 = fadd fast float %2208, %420
  %2210 = fmul fast float %2175, %2203
  %2211 = call float @dx.op.unary.f32(i32 22, float %2210)  ; Frc(value)
  %2212 = fmul fast float %2211, 0x401921FB60000000
  %2213 = fadd fast float %2212, %2194
  %2214 = call float @dx.op.unary.f32(i32 13, float %2213)  ; Sin(value)
  %2215 = call float @dx.op.unary.f32(i32 12, float %2213)  ; Cos(value)
  %2216 = fsub fast float -0.000000e+00, %2214
  %2217 = fadd fast float %2168, -5.000000e-01
  %2218 = fadd fast float %2169, -5.000000e-01
  %2219 = fmul fast float %2186, %2217
  %2220 = fmul fast float %2188, %2218
  %2221 = fadd fast float %2219, 5.000000e-01
  %2222 = fadd fast float %2220, 5.000000e-01
  %2223 = fmul fast float %2197, %2221
  %2224 = fmul fast float %2200, %2222
  %2225 = fmul fast float %2215, %2223
  %2226 = call float @dx.op.tertiary.f32(i32 46, float %2216, float %2224, float %2225)  ; FMad(a,b,c)
  %2227 = fmul fast float %2214, %2223
  %2228 = call float @dx.op.tertiary.f32(i32 46, float %2215, float %2224, float %2227)  ; FMad(a,b,c)
  %2229 = fadd fast float %2206, %2226
  %2230 = fadd fast float %2209, %2228
  %2231 = icmp ugt i32 %2180, 1
  %2232 = icmp ugt i32 %2178, 33554431
  %2233 = or i1 %2232, %2231
  br i1 %2233, label %2234, label %2259

; <label>:2234                                    ; preds = %2161
  %2235 = add i32 %49, 260
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = lshr i32 %2237, 16
  %2239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2238)  ; LegacyF16ToF32(value)
  %2240 = fmul fast float %2202, %2239
  %2241 = call float @dx.op.unary.f32(i32 22, float %2240)  ; Frc(value)
  %2242 = mul nuw nsw i32 %2180, %2181
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2241, %2243
  %2245 = call float @dx.op.unary.f32(i32 27, float %2244)  ; Round_ni(value)
  %2246 = fptoui float %2245 to i32
  %2247 = urem i32 %2246, %2180
  %2248 = udiv i32 %2246, %2181
  %2249 = call float @dx.op.unary.f32(i32 22, float %2229)  ; Frc(value)
  %2250 = call float @dx.op.unary.f32(i32 22, float %2230)  ; Frc(value)
  %2251 = uitofp i32 %2247 to float
  %2252 = uitofp i32 %2248 to float
  %2253 = fadd fast float %2249, %2251
  %2254 = fadd fast float %2250, %2252
  %2255 = uitofp i32 %2180 to float
  %2256 = uitofp i32 %2181 to float
  %2257 = fdiv fast float %2253, %2255
  %2258 = fdiv fast float %2254, %2256
  br label %2259

; <label>:2259                                    ; preds = %2234, %2161
  %2260 = phi float [ %2257, %2234 ], [ %2229, %2161 ]
  %2261 = phi float [ %2258, %2234 ], [ %2230, %2161 ]
  %2262 = and i32 %2155, 256
  %2263 = icmp eq i32 %2262, 0
  br i1 %2263, label %2310, label %2264

; <label>:2264                                    ; preds = %2259
  %2265 = add i32 %49, 496
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = add i32 %2267, 0
  %2269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2269, %dx.types.Handle %106, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2271 = extractvalue %dx.types.ResRet.f32 %2270, 0
  %2272 = add i32 %49, 132
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2272, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = shl i32 %2274, 4
  %2276 = and i32 %2275, 32752
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = lshr i32 %2274, 7
  %2279 = and i32 %2278, 32752
  %2280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2279)  ; LegacyF16ToF32(value)
  %2281 = fsub fast float 1.000000e+00, %530
  %2282 = call float @dx.op.binary.f32(i32 35, float %2281, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2283 = bitcast float %530 to i32
  %2284 = sitofp i32 %2283 to float
  %2285 = fadd fast float %2284, 0xC1CFBF8940000000
  %2286 = fmul fast float %2280, %2285
  %2287 = fadd fast float %2286, 0x41CFBF8940000000
  %2288 = fptosi float %2287 to i32
  %2289 = bitcast i32 %2288 to float
  %2290 = bitcast float %2282 to i32
  %2291 = sitofp i32 %2290 to float
  %2292 = fadd fast float %2291, 0xC1CFBF8940000000
  %2293 = fmul fast float %2292, %2280
  %2294 = fadd fast float %2293, 0x41CFBF8940000000
  %2295 = fptosi float %2294 to i32
  %2296 = bitcast i32 %2295 to float
  %2297 = fmul fast float %2289, %2277
  %2298 = fmul fast float %2296, %2277
  %2299 = fsub fast float %2282, %2297
  %2300 = fadd fast float %2298, %2282
  %2301 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2302 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2303 = fsub fast float %2271, %2301
  %2304 = fsub fast float %2302, %2301
  %2305 = bitcast float %2304 to i32
  %2306 = sub nsw i32 2129859010, %2305
  %2307 = bitcast i32 %2306 to float
  %2308 = fmul fast float %2307, %2303
  %2309 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  br label %2310

; <label>:2310                                    ; preds = %2264, %2259
  %2311 = phi float [ %2309, %2264 ], [ %530, %2259 ]
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 128
  %2315 = icmp eq i32 %2314, 0
  br i1 %2315, label %2332, label %2316

; <label>:2316                                    ; preds = %2310
  %2317 = add i32 %49, 480
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = add i32 %2319, 0
  %2321 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2320, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2321, %dx.types.Handle %106, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.i32 %2324, 0
  %2326 = and i32 %2325, 524288
  %2327 = icmp ne i32 %2326, 0
  %2328 = fcmp fast ogt float %2323, 0x3FE0101020000000
  %2329 = select i1 %2328, float 1.000000e+00, float 0.000000e+00
  %2330 = select i1 %2327, float %2329, float %2323
  %2331 = fmul fast float %2330, %2311
  br label %2332

; <label>:2332                                    ; preds = %2316, %2310
  %2333 = phi float [ %2331, %2316 ], [ %2311, %2310 ]
  %2334 = fcmp fast ult float %2333, 0x3F70101020000000
  br i1 %2334, label %3073, label %2335

; <label>:2335                                    ; preds = %2332
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 16
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2538, label %2340

; <label>:2340                                    ; preds = %2335
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = add i32 %49, 432
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = add i32 %2345, 0
  %2347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2347, %dx.types.Handle %105, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2348, 2
  %2352 = extractvalue %dx.types.ResRet.f32 %2348, 3
  %2353 = and i32 %2342, 255
  %2354 = uitofp i32 %2353 to float
  %2355 = lshr i32 %2342, 8
  %2356 = and i32 %2355, 255
  %2357 = uitofp i32 %2356 to float
  %2358 = fmul fast float %2352, %2354
  %2359 = fadd fast float %2358, %2357
  %2360 = fmul fast float %2359, 0x3F70101000000000
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = and i32 %2362, 512
  %2364 = icmp eq i32 %2363, 0
  br i1 %2364, label %2373, label %2365

; <label>:2365                                    ; preds = %2340
  %2366 = add i32 %49, 512
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2366, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = add i32 %2368, 0
  %2370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2369, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2371 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2370, %dx.types.Handle %106, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2372 = extractvalue %dx.types.ResRet.f32 %2371, 0
  br label %2373

; <label>:2373                                    ; preds = %2365, %2340
  %2374 = phi float [ %2372, %2365 ], [ 1.000000e+00, %2340 ]
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 33554432
  %2378 = icmp eq i32 %2377, 0
  br i1 %2378, label %2485, label %2379

; <label>:2379                                    ; preds = %2373
  %2380 = add i32 %49, 256
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 65535
  %2384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2383)  ; LegacyF16ToF32(value)
  %2385 = lshr i32 %2382, 16
  %2386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2385)  ; LegacyF16ToF32(value)
  %2387 = add i32 %49, 260
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 65535
  %2391 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2390)  ; LegacyF16ToF32(value)
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = lshr i32 %2393, 24
  %2395 = uitofp i32 %2394 to float
  %2396 = fmul fast float %2395, 0x3F70101020000000
  %2397 = and i32 %2393, 255
  %2398 = uitofp i32 %2397 to float
  %2399 = fmul fast float %2398, 0x3F70101020000000
  %2400 = lshr i32 %2393, 8
  %2401 = and i32 %2400, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = fmul fast float %2402, 0x3F70101020000000
  %2404 = lshr i32 %2393, 16
  %2405 = and i32 %2404, 255
  %2406 = uitofp i32 %2405 to float
  %2407 = fmul fast float %2406, 0x3F70101020000000
  %2408 = add i32 %49, 252
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = lshr i32 %2410, 24
  %2412 = uitofp i32 %2411 to float
  %2413 = fmul fast float %2412, 0x3F70101020000000
  %2414 = and i32 %2410, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = fmul fast float %2415, 0x3F70101020000000
  %2417 = lshr i32 %2410, 8
  %2418 = and i32 %2417, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101020000000
  %2421 = lshr i32 %2410, 16
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = fmul fast float %2423, 0x3F70101020000000
  %2425 = bitcast float %2349 to i32
  %2426 = ashr i32 %2425, 1
  %2427 = sub nsw i32 1597463174, %2426
  %2428 = bitcast i32 %2427 to float
  %2429 = fmul fast float %2349, 5.000000e-01
  %2430 = fmul fast float %2428, %2428
  %2431 = fmul fast float %2430, %2429
  %2432 = fsub fast float 1.500000e+00, %2431
  %2433 = fmul fast float %2428, %2349
  %2434 = fmul fast float %2433, %2432
  %2435 = bitcast float %2350 to i32
  %2436 = ashr i32 %2435, 1
  %2437 = sub nsw i32 1597463174, %2436
  %2438 = bitcast i32 %2437 to float
  %2439 = fmul fast float %2350, 5.000000e-01
  %2440 = fmul fast float %2438, %2438
  %2441 = fmul fast float %2440, %2439
  %2442 = fsub fast float 1.500000e+00, %2441
  %2443 = fmul fast float %2438, %2350
  %2444 = fmul fast float %2443, %2442
  %2445 = bitcast float %2351 to i32
  %2446 = ashr i32 %2445, 1
  %2447 = sub nsw i32 1597463174, %2446
  %2448 = bitcast i32 %2447 to float
  %2449 = fmul fast float %2351, 5.000000e-01
  %2450 = fmul fast float %2448, %2448
  %2451 = fmul fast float %2450, %2449
  %2452 = fsub fast float 1.500000e+00, %2451
  %2453 = fmul fast float %2448, %2351
  %2454 = fmul fast float %2453, %2452
  %2455 = fsub fast float %2434, %2416
  %2456 = fsub fast float %2444, %2420
  %2457 = fsub fast float %2454, %2424
  %2458 = fmul fast float %2455, %2384
  %2459 = fmul fast float %2456, %2386
  %2460 = fmul fast float %2457, %2391
  %2461 = fadd fast float %2458, %2399
  %2462 = fadd fast float %2459, %2403
  %2463 = fadd fast float %2460, %2407
  %2464 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  %2465 = call float @dx.op.unary.f32(i32 7, float %2462)  ; Saturate(value)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2467 = fmul fast float %2464, %2464
  %2468 = fmul fast float %2465, %2465
  %2469 = fmul fast float %2466, %2466
  %2470 = fsub fast float %2467, %2349
  %2471 = fsub fast float %2468, %2350
  %2472 = fsub fast float %2469, %2351
  %2473 = fmul fast float %2470, %2374
  %2474 = fmul fast float %2471, %2374
  %2475 = fmul fast float %2472, %2374
  %2476 = fadd fast float %2473, %2349
  %2477 = fadd fast float %2474, %2350
  %2478 = fadd fast float %2475, %2351
  %2479 = fadd fast float %2396, %2360
  %2480 = fsub fast float %2479, %2413
  %2481 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  %2482 = fsub fast float %2481, %2360
  %2483 = fmul fast float %2482, %2374
  %2484 = fadd fast float %2483, %2360
  br label %2538

; <label>:2485                                    ; preds = %2373
  %2486 = and i32 %2376, 134217728
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2522, label %2488

; <label>:2488                                    ; preds = %2485
  %2489 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %2490 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %2491 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %2492 = fadd fast float %2489, -5.000000e-01
  %2493 = fadd fast float %2490, -5.000000e-01
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fmul fast float %2492, %2374
  %2496 = fmul fast float %2493, %2374
  %2497 = fmul fast float %2494, %2374
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2502 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2503 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2504 = fmul fast float %2498, 2.000000e+00
  %2505 = fsub fast float 1.000000e+00, %2504
  %2506 = fmul fast float %2505, %2501
  %2507 = fadd fast float %2506, %2504
  %2508 = fmul fast float %2507, %2501
  %2509 = fmul fast float %2499, 2.000000e+00
  %2510 = fsub fast float 1.000000e+00, %2509
  %2511 = fmul fast float %2510, %2502
  %2512 = fadd fast float %2511, %2509
  %2513 = fmul fast float %2512, %2502
  %2514 = fmul fast float %2500, 2.000000e+00
  %2515 = fsub fast float 1.000000e+00, %2514
  %2516 = fmul fast float %2515, %2503
  %2517 = fadd fast float %2516, %2514
  %2518 = fmul fast float %2517, %2503
  %2519 = fmul fast float %2508, %2508
  %2520 = fmul fast float %2513, %2513
  %2521 = fmul fast float %2518, %2518
  br label %2538

; <label>:2522                                    ; preds = %2485
  %2523 = fmul fast float %405, %405
  %2524 = fmul fast float %409, %409
  %2525 = fmul fast float %413, %413
  %2526 = fadd fast float %2523, -1.000000e+00
  %2527 = fadd fast float %2524, -1.000000e+00
  %2528 = fadd fast float %2525, -1.000000e+00
  %2529 = fmul fast float %2374, %2526
  %2530 = fmul fast float %2374, %2527
  %2531 = fmul fast float %2374, %2528
  %2532 = fadd fast float %2529, 1.000000e+00
  %2533 = fadd fast float %2530, 1.000000e+00
  %2534 = fadd fast float %2531, 1.000000e+00
  %2535 = fmul fast float %2532, %2349
  %2536 = fmul fast float %2533, %2350
  %2537 = fmul fast float %2534, %2351
  br label %2538

; <label>:2538                                    ; preds = %2522, %2488, %2379, %2335
  %2539 = phi float [ %2484, %2379 ], [ %2360, %2488 ], [ %2360, %2522 ], [ 0x3FA23C0BE0000000, %2335 ]
  %2540 = phi float [ %2476, %2379 ], [ %2519, %2488 ], [ %2535, %2522 ], [ 1.000000e+00, %2335 ]
  %2541 = phi float [ %2477, %2379 ], [ %2520, %2488 ], [ %2536, %2522 ], [ 1.000000e+00, %2335 ]
  %2542 = phi float [ %2478, %2379 ], [ %2521, %2488 ], [ %2537, %2522 ], [ 1.000000e+00, %2335 ]
  %2543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.i32 %2543, 1
  %2545 = and i32 %2544, 1
  %2546 = icmp ne i32 %2545, 0
  %2547 = add i32 %49, 356
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2547, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 32
  %2551 = icmp ne i32 %2550, 0
  %2552 = and i1 %2546, %2551
  %2553 = select i1 %2552, float 1.000000e+00, float %2540
  %2554 = select i1 %2552, float 0x3FD3333340000000, float %2541
  %2555 = select i1 %2552, float 0x3FD3333340000000, float %2542
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = and i32 %2557, 32
  %2559 = icmp eq i32 %2558, 0
  br i1 %2559, label %2632, label %2560

; <label>:2560                                    ; preds = %2538
  %2561 = add i32 %49, 124
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = add i32 %49, 448
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = add i32 %2566, 0
  %2568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2568, %dx.types.Handle %105, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2570 = extractvalue %dx.types.ResRet.f32 %2569, 0
  %2571 = extractvalue %dx.types.ResRet.f32 %2569, 1
  %2572 = extractvalue %dx.types.ResRet.f32 %2569, 2
  %2573 = extractvalue %dx.types.ResRet.f32 %2569, 3
  %2574 = and i32 %2563, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = lshr i32 %2563, 8
  %2577 = and i32 %2576, 255
  %2578 = uitofp i32 %2577 to float
  %2579 = lshr i32 %2563, 16
  %2580 = and i32 %2579, 255
  %2581 = uitofp i32 %2580 to float
  %2582 = fmul fast float %2581, 0x3F70101000000000
  %2583 = fmul fast float %2570, %2575
  %2584 = fadd fast float %2583, %2578
  %2585 = fmul fast float %2584, 0x3F70101000000000
  %2586 = fadd fast float %2571, -5.000000e-01
  %2587 = fadd fast float %2573, -5.000000e-01
  %2588 = fmul fast float %2586, %2582
  %2589 = fmul fast float %2587, %2582
  %2590 = fadd fast float %2588, 5.000000e-01
  %2591 = fadd fast float %2589, 5.000000e-01
  %2592 = fmul fast float %2590, 2.000000e+00
  %2593 = fadd fast float %2592, -1.000000e+00
  %2594 = fmul fast float %2591, 2.000000e+00
  %2595 = fadd fast float %2594, -1.000000e+00
  %2596 = fadd fast float %2593, %2595
  %2597 = fmul fast float %2596, 5.000000e-01
  %2598 = fsub fast float %2593, %2595
  %2599 = fmul fast float %2598, 5.000000e-01
  %2600 = call float @dx.op.unary.f32(i32 6, float %2597)  ; FAbs(value)
  %2601 = fsub fast float 1.000000e+00, %2600
  %2602 = call float @dx.op.unary.f32(i32 6, float %2599)  ; FAbs(value)
  %2603 = fsub fast float %2601, %2602
  %2604 = call float @dx.op.dot3.f32(i32 55, float %2597, float %2599, float %2603, float %2597, float %2599, float %2603)  ; Dot3(ax,ay,az,bx,by,bz)
  %2605 = call float @dx.op.unary.f32(i32 25, float %2604)  ; Rsqrt(value)
  %2606 = fmul fast float %2597, %2605
  %2607 = fmul fast float %2599, %2605
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 67108864
  %2611 = icmp eq i32 %2610, 0
  br i1 %2611, label %2628, label %2612

; <label>:2612                                    ; preds = %2560
  %2613 = add i32 %49, 312
  %2614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2613, i32 undef)  ; BufferLoad(srv,index,wot)
  %2615 = extractvalue %dx.types.ResRet.i32 %2614, 0
  %2616 = and i32 %2615, 65535
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = and i32 %2619, 65535
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = lshr i32 %2615, 16
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = fsub fast float %2585, %2623
  %2625 = fmul fast float %2624, %2617
  %2626 = fadd fast float %2625, %2621
  %2627 = call float @dx.op.unary.f32(i32 7, float %2626)  ; Saturate(value)
  br label %2628

; <label>:2628                                    ; preds = %2612, %2560
  %2629 = phi float [ %2627, %2612 ], [ %2585, %2560 ]
  %2630 = call float @dx.op.dot2.f32(i32 54, float %2606, float %2607, float %2164, float %2165)  ; Dot2(ax,ay,bx,by)
  %2631 = call float @dx.op.dot2.f32(i32 54, float %2606, float %2607, float %2166, float %2167)  ; Dot2(ax,ay,bx,by)
  br label %2632

; <label>:2632                                    ; preds = %2628, %2538
  %2633 = phi float [ %2629, %2628 ], [ 0x3FD6666660000000, %2538 ]
  %2634 = phi float [ %2630, %2628 ], [ 0.000000e+00, %2538 ]
  %2635 = phi float [ %2631, %2628 ], [ 0.000000e+00, %2538 ]
  %2636 = phi float [ %2572, %2628 ], [ 1.000000e+00, %2538 ]
  %2637 = add i32 %49, 192
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 22
  %2641 = shl nuw nsw i32 %2640, 5
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = and i32 %2644, 64
  %2646 = icmp eq i32 %2645, 0
  br i1 %2646, label %2680, label %2647

; <label>:2647                                    ; preds = %2632
  %2648 = add i32 %49, 464
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = add i32 %2650, 0
  %2652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 131072
  %2656 = icmp eq i32 %2655, 0
  %2657 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2652, %dx.types.Handle %105, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2658 = extractvalue %dx.types.ResRet.f32 %2657, 0
  %2659 = extractvalue %dx.types.ResRet.f32 %2657, 1
  %2660 = extractvalue %dx.types.ResRet.f32 %2657, 2
  %2661 = fmul fast float %2658, %393
  %2662 = fmul fast float %2659, %396
  %2663 = fmul fast float %2660, %399
  br i1 %2656, label %2670, label %2664

; <label>:2664                                    ; preds = %2647
  %2665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2666 = extractvalue %dx.types.CBufRet.f32 %2665, 0
  %2667 = fmul fast float %2666, %2661
  %2668 = fmul fast float %2666, %2662
  %2669 = fmul fast float %2666, %2663
  br label %2670

; <label>:2670                                    ; preds = %2664, %2647
  %2671 = phi float [ %2667, %2664 ], [ %2661, %2647 ]
  %2672 = phi float [ %2668, %2664 ], [ %2662, %2647 ]
  %2673 = phi float [ %2669, %2664 ], [ %2663, %2647 ]
  %2674 = fmul fast float %2671, %2642
  %2675 = select i1 %292, float %2674, float %2671
  %2676 = call float @dx.op.dot3.f32(i32 55, float %2675, float %2672, float %2673, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2677 = select i1 %292, float 0.000000e+00, float %2671
  %2678 = select i1 %292, float %2676, float %2672
  %2679 = select i1 %292, float 0.000000e+00, float %2673
  br label %2680

; <label>:2680                                    ; preds = %2670, %2632
  %2681 = phi float [ %2677, %2670 ], [ 0.000000e+00, %2632 ]
  %2682 = phi float [ %2678, %2670 ], [ 0.000000e+00, %2632 ]
  %2683 = phi float [ %2679, %2670 ], [ 0.000000e+00, %2632 ]
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = and i32 %2685, 1024
  %2687 = icmp eq i32 %2686, 0
  br i1 %2687, label %2718, label %2688

; <label>:2688                                    ; preds = %2680
  %2689 = add i32 %49, 184
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 255
  %2693 = uitofp i32 %2692 to float
  %2694 = fmul fast float %2693, 0x3F70101020000000
  %2695 = lshr i32 %2691, 8
  %2696 = and i32 %2695, 255
  %2697 = uitofp i32 %2696 to float
  %2698 = fmul fast float %2697, 0x3F70101020000000
  %2699 = lshr i32 %2691, 16
  %2700 = and i32 %2699, 255
  %2701 = uitofp i32 %2700 to float
  %2702 = fmul fast float %2701, 0x3F70101020000000
  %2703 = fmul fast float %2694, %2694
  %2704 = fmul fast float %2698, %2698
  %2705 = fmul fast float %2702, %2702
  %2706 = add i32 %49, 528
  %2707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2708 = extractvalue %dx.types.ResRet.i32 %2707, 0
  %2709 = add i32 %2708, 0
  %2710 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2709, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2711 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2710, %dx.types.Handle %106, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2712 = extractvalue %dx.types.ResRet.f32 %2711, 0
  %2713 = extractvalue %dx.types.ResRet.f32 %2711, 1
  %2714 = extractvalue %dx.types.ResRet.f32 %2711, 2
  %2715 = fmul fast float %2703, %2712
  %2716 = fmul fast float %2704, %2713
  %2717 = fmul fast float %2705, %2714
  br label %2718

; <label>:2718                                    ; preds = %2688, %2680
  %2719 = phi float [ %2715, %2688 ], [ 0.000000e+00, %2680 ]
  %2720 = phi float [ %2716, %2688 ], [ 0.000000e+00, %2680 ]
  %2721 = phi float [ %2717, %2688 ], [ 0.000000e+00, %2680 ]
  %2722 = fcmp fast ogt float %2719, 0.000000e+00
  %2723 = fcmp fast ogt float %2720, 0.000000e+00
  %2724 = fcmp fast ogt float %2721, 0.000000e+00
  %2725 = call float @dx.op.unary.f32(i32 23, float %2719)  ; Log(value)
  %2726 = call float @dx.op.unary.f32(i32 23, float %2720)  ; Log(value)
  %2727 = call float @dx.op.unary.f32(i32 23, float %2721)  ; Log(value)
  %2728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.i32 %2728, 0
  %2730 = lshr i32 %2729, 7
  %2731 = and i32 %2730, 32752
  %2732 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2731)  ; LegacyF16ToF32(value)
  %2733 = fmul fast float %2725, 0xBFE62E4300000000
  %2734 = fmul fast float %2733, %2732
  %2735 = fmul fast float %2726, 0xBFE62E4300000000
  %2736 = fmul fast float %2735, %2732
  %2737 = fmul fast float %2727, 0xBFE62E4300000000
  %2738 = fmul fast float %2737, %2732
  %2739 = select i1 %2722, float %2734, float 1.270000e+02
  %2740 = select i1 %2723, float %2736, float 1.270000e+02
  %2741 = select i1 %2724, float %2738, float 1.270000e+02
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 10240
  %2745 = icmp eq i32 %2744, 0
  br i1 %2745, label %2790, label %2746

; <label>:2746                                    ; preds = %2718
  %2747 = add i32 %49, 544
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = add i32 %2749, 0
  %2751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2752 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2751, %dx.types.Handle %106, float %2260, float %2261, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 3
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = and i32 %2756, 1048576
  %2758 = icmp ne i32 %2757, 0
  %2759 = and i32 %2756, 8192
  %2760 = icmp eq i32 %2759, 0
  br i1 %2760, label %2776, label %2761

; <label>:2761                                    ; preds = %2746
  %2762 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2763 = select i1 %2758, float %2762, float %2753
  %2764 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2765 = select i1 %2758, float %2764, float %2753
  %2766 = add i32 %49, 128
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = lshr i32 %2768, 16
  %2770 = and i32 %2769, 255
  %2771 = uitofp i32 %2770 to float
  %2772 = fmul fast float %2771, 0x3F80101020000000
  %2773 = fmul fast float %2772, %2765
  %2774 = fmul fast float %2772, %2753
  %2775 = fmul fast float %2772, %2763
  br label %2776

; <label>:2776                                    ; preds = %2761, %2746
  %2777 = phi float [ %2773, %2761 ], [ 0.000000e+00, %2746 ]
  %2778 = phi float [ %2774, %2761 ], [ 0.000000e+00, %2746 ]
  %2779 = phi float [ %2775, %2761 ], [ 0.000000e+00, %2746 ]
  %2780 = and i32 %2756, 2048
  %2781 = icmp eq i32 %2780, 0
  br i1 %2781, label %2790, label %2782

; <label>:2782                                    ; preds = %2776
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = shl i32 %2784, 4
  %2786 = and i32 %2785, 32752
  %2787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2786)  ; LegacyF16ToF32(value)
  %2788 = fmul fast float %2787, %2754
  %2789 = call float @dx.op.binary.f32(i32 35, float %2788, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2790

; <label>:2790                                    ; preds = %2782, %2776, %2718
  %2791 = phi float [ %2777, %2782 ], [ %2777, %2776 ], [ 0.000000e+00, %2718 ]
  %2792 = phi float [ %2778, %2782 ], [ %2778, %2776 ], [ 0.000000e+00, %2718 ]
  %2793 = phi float [ %2779, %2782 ], [ %2779, %2776 ], [ 0.000000e+00, %2718 ]
  %2794 = phi float [ %2789, %2782 ], [ 0x3F70101020000000, %2776 ], [ 0x3F70101020000000, %2718 ]
  %2795 = add i32 %49, 128
  %2796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2795, i32 undef)  ; BufferLoad(srv,index,wot)
  %2797 = extractvalue %dx.types.ResRet.i32 %2796, 0
  %2798 = and i32 %2797, 255
  %2799 = uitofp i32 %2798 to float
  %2800 = lshr i32 %2797, 8
  %2801 = and i32 %2800, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = call float @dx.op.dot3.f32(i32 55, float %2553, float %2554, float %2555, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2804 = fmul fast float %2802, %2803
  %2805 = fadd fast float %2804, %2799
  %2806 = fmul fast float %2805, 0x3F70101020000000
  %2807 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  br i1 %2152, label %2808, label %2843

; <label>:2808                                    ; preds = %2790
  %2809 = fmul fast float %2794, 2.000000e+00
  %2810 = fcmp fast olt float %2739, 1.270000e+02
  %2811 = fcmp fast olt float %2740, 1.270000e+02
  %2812 = fcmp fast olt float %2741, 1.270000e+02
  %2813 = fmul fast float %2739, 0xBFF7154760000000
  %2814 = fmul fast float %2813, %2809
  %2815 = fmul fast float %2740, 0xBFF7154760000000
  %2816 = fmul fast float %2815, %2809
  %2817 = fmul fast float %2741, 0xBFF7154760000000
  %2818 = fmul fast float %2817, %2809
  %2819 = call float @dx.op.unary.f32(i32 21, float %2814)  ; Exp(value)
  %2820 = call float @dx.op.unary.f32(i32 21, float %2816)  ; Exp(value)
  %2821 = call float @dx.op.unary.f32(i32 21, float %2818)  ; Exp(value)
  %2822 = call float @dx.op.unary.f32(i32 7, float %2819)  ; Saturate(value)
  %2823 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  %2824 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  %2825 = fadd fast float %2822, -1.000000e+00
  %2826 = select i1 %2810, float %2825, float -1.000000e+00
  %2827 = fadd fast float %2823, -1.000000e+00
  %2828 = select i1 %2811, float %2827, float -1.000000e+00
  %2829 = fadd fast float %2824, -1.000000e+00
  %2830 = select i1 %2812, float %2829, float -1.000000e+00
  %2831 = fmul fast float %2826, %2333
  %2832 = fmul fast float %2828, %2333
  %2833 = fmul fast float %2830, %2333
  %2834 = fadd fast float %2831, 1.000000e+00
  %2835 = fadd fast float %2832, 1.000000e+00
  %2836 = fadd fast float %2833, 1.000000e+00
  %2837 = fmul fast float %2834, %2134
  %2838 = fmul fast float %2835, %2135
  %2839 = fmul fast float %2836, %2136
  %2840 = fmul fast float %2834, %2137
  %2841 = fmul fast float %2835, %2138
  %2842 = fmul fast float %2836, %2139
  br label %2843

; <label>:2843                                    ; preds = %2808, %2790
  %2844 = phi float [ %2837, %2808 ], [ %2134, %2790 ]
  %2845 = phi float [ %2838, %2808 ], [ %2135, %2790 ]
  %2846 = phi float [ %2839, %2808 ], [ %2136, %2790 ]
  %2847 = phi float [ %2840, %2808 ], [ %2137, %2790 ]
  %2848 = phi float [ %2841, %2808 ], [ %2138, %2790 ]
  %2849 = phi float [ %2842, %2808 ], [ %2139, %2790 ]
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = and i32 %2851, 3
  %2853 = icmp eq i32 %2852, 3
  br i1 %2853, label %2932, label %2854

; <label>:2854                                    ; preds = %2843
  %2855 = and i32 %2851, 16
  %2856 = icmp ne i32 %2855, 0
  %2857 = select i1 %2856, float %2333, float 0.000000e+00
  %2858 = icmp eq i32 %2852, 0
  br i1 %2858, label %2859, label %2887

; <label>:2859                                    ; preds = %2854
  %2860 = and i32 %2851, 64
  %2861 = icmp ne i32 %2860, 0
  %2862 = select i1 %2861, float %2333, float 0.000000e+00
  %2863 = fsub fast float %2553, %2844
  %2864 = fsub fast float %2554, %2845
  %2865 = fsub fast float %2555, %2846
  %2866 = fmul fast float %2857, %2863
  %2867 = fmul fast float %2857, %2864
  %2868 = fmul fast float %2857, %2865
  %2869 = fadd fast float %2866, %2844
  %2870 = fadd fast float %2867, %2845
  %2871 = fadd fast float %2868, %2846
  %2872 = fsub fast float %2539, %2146
  %2873 = fmul fast float %2857, %2872
  %2874 = fadd fast float %2873, %2146
  %2875 = fsub fast float %2681, %2847
  %2876 = fsub fast float %2682, %2848
  %2877 = fsub fast float %2683, %2849
  %2878 = fmul fast float %2862, %2875
  %2879 = fmul fast float %2862, %2876
  %2880 = fmul fast float %2862, %2877
  %2881 = fadd fast float %2878, %2847
  %2882 = fadd fast float %2879, %2848
  %2883 = fadd fast float %2880, %2849
  %2884 = fsub fast float %2807, %2150
  %2885 = fmul fast float %2857, %2884
  %2886 = fadd fast float %2885, %2150
  br label %2932

; <label>:2887                                    ; preds = %2854
  %2888 = icmp eq i32 %2852, 1
  br i1 %2888, label %2889, label %2902

; <label>:2889                                    ; preds = %2887
  %2890 = fadd fast float %2553, -1.000000e+00
  %2891 = fadd fast float %2554, -1.000000e+00
  %2892 = fadd fast float %2555, -1.000000e+00
  %2893 = fmul fast float %2857, %2890
  %2894 = fmul fast float %2857, %2891
  %2895 = fmul fast float %2857, %2892
  %2896 = fadd fast float %2893, 1.000000e+00
  %2897 = fadd fast float %2894, 1.000000e+00
  %2898 = fadd fast float %2895, 1.000000e+00
  %2899 = fmul fast float %2896, %2844
  %2900 = fmul fast float %2897, %2845
  %2901 = fmul fast float %2898, %2846
  br label %2932

; <label>:2902                                    ; preds = %2887
  %2903 = icmp eq i32 %2852, 2
  br i1 %2903, label %2904, label %2932

; <label>:2904                                    ; preds = %2902
  %2905 = call float @dx.op.unary.f32(i32 24, float %2553)  ; Sqrt(value)
  %2906 = call float @dx.op.unary.f32(i32 24, float %2554)  ; Sqrt(value)
  %2907 = call float @dx.op.unary.f32(i32 24, float %2555)  ; Sqrt(value)
  %2908 = fadd fast float %2905, -5.000000e-01
  %2909 = fadd fast float %2906, -5.000000e-01
  %2910 = fadd fast float %2907, -5.000000e-01
  %2911 = fmul fast float %2908, %2857
  %2912 = fmul fast float %2909, %2857
  %2913 = fmul fast float %2910, %2857
  %2914 = fadd fast float %2911, 5.000000e-01
  %2915 = fadd fast float %2912, 5.000000e-01
  %2916 = fadd fast float %2913, 5.000000e-01
  %2917 = fmul fast float %2914, 2.000000e+00
  %2918 = fsub fast float 1.000000e+00, %2917
  %2919 = fmul fast float %2918, %2844
  %2920 = fadd fast float %2919, %2917
  %2921 = fmul fast float %2920, %2844
  %2922 = fmul fast float %2915, 2.000000e+00
  %2923 = fsub fast float 1.000000e+00, %2922
  %2924 = fmul fast float %2923, %2845
  %2925 = fadd fast float %2924, %2922
  %2926 = fmul fast float %2925, %2845
  %2927 = fmul fast float %2916, 2.000000e+00
  %2928 = fsub fast float 1.000000e+00, %2927
  %2929 = fmul fast float %2928, %2846
  %2930 = fadd fast float %2929, %2927
  %2931 = fmul fast float %2930, %2846
  br label %2932

; <label>:2932                                    ; preds = %2904, %2902, %2889, %2859, %2843
  %2933 = phi float [ %2844, %2843 ], [ %2921, %2904 ], [ %2844, %2902 ], [ %2899, %2889 ], [ %2869, %2859 ]
  %2934 = phi float [ %2845, %2843 ], [ %2926, %2904 ], [ %2845, %2902 ], [ %2900, %2889 ], [ %2870, %2859 ]
  %2935 = phi float [ %2846, %2843 ], [ %2931, %2904 ], [ %2846, %2902 ], [ %2901, %2889 ], [ %2871, %2859 ]
  %2936 = phi float [ %2847, %2843 ], [ %2847, %2904 ], [ %2847, %2902 ], [ %2847, %2889 ], [ %2881, %2859 ]
  %2937 = phi float [ %2848, %2843 ], [ %2848, %2904 ], [ %2848, %2902 ], [ %2848, %2889 ], [ %2882, %2859 ]
  %2938 = phi float [ %2849, %2843 ], [ %2849, %2904 ], [ %2849, %2902 ], [ %2849, %2889 ], [ %2883, %2859 ]
  %2939 = phi float [ %2146, %2843 ], [ %2146, %2904 ], [ %2146, %2902 ], [ %2146, %2889 ], [ %2874, %2859 ]
  %2940 = phi float [ %2150, %2843 ], [ %2150, %2904 ], [ %2150, %2902 ], [ %2150, %2889 ], [ %2886, %2859 ]
  %2941 = and i32 %2851, 12
  %2942 = icmp eq i32 %2941, 12
  br i1 %2942, label %3073, label %2943

; <label>:2943                                    ; preds = %2932
  %2944 = and i32 %2851, 2097184
  %2945 = icmp eq i32 %2944, 2097184
  %2946 = select i1 %2945, float %2333, float 0.000000e+00
  %2947 = and i32 %2851, 4194336
  %2948 = icmp eq i32 %2947, 4194336
  %2949 = select i1 %2948, float %2333, float 0.000000e+00
  %2950 = and i32 %2851, 8388640
  %2951 = icmp eq i32 %2950, 8388640
  %2952 = select i1 %2951, float %2333, float 0.000000e+00
  %2953 = and i32 %2851, 1024
  %2954 = icmp ne i32 %2953, 0
  %2955 = select i1 %2954, float %2333, float 0.000000e+00
  %2956 = and i32 %2851, 2048
  %2957 = icmp ne i32 %2956, 0
  %2958 = select i1 %2957, float %2333, float 0.000000e+00
  %2959 = and i32 %2851, 8192
  %2960 = icmp ne i32 %2959, 0
  %2961 = select i1 %2960, float %2333, float 0.000000e+00
  %2962 = icmp eq i32 %2941, 0
  br i1 %2962, label %2963, label %2997

; <label>:2963                                    ; preds = %2943
  %2964 = fsub fast float %2634, %2132
  %2965 = fsub fast float %2635, %2133
  %2966 = fmul fast float %2946, %2964
  %2967 = fmul fast float %2946, %2965
  %2968 = fadd fast float %2966, %2132
  %2969 = fadd fast float %2967, %2133
  %2970 = fsub fast float %2636, %2148
  %2971 = fmul fast float %2949, %2970
  %2972 = fadd fast float %2971, %2148
  %2973 = fsub fast float %2633, %2147
  %2974 = fmul fast float %2952, %2973
  %2975 = fadd fast float %2974, %2147
  %2976 = fsub fast float %2739, %2140
  %2977 = fsub fast float %2740, %2141
  %2978 = fsub fast float %2741, %2142
  %2979 = fmul fast float %2955, %2976
  %2980 = fmul fast float %2955, %2977
  %2981 = fmul fast float %2955, %2978
  %2982 = fadd fast float %2979, %2140
  %2983 = fadd fast float %2980, %2141
  %2984 = fadd fast float %2981, %2142
  %2985 = fsub fast float %2794, %2149
  %2986 = fmul fast float %2958, %2985
  %2987 = fadd fast float %2986, %2149
  %2988 = fsub fast float %2791, %2143
  %2989 = fsub fast float %2792, %2144
  %2990 = fsub fast float %2793, %2145
  %2991 = fmul fast float %2961, %2988
  %2992 = fmul fast float %2961, %2989
  %2993 = fmul fast float %2961, %2990
  %2994 = fadd fast float %2991, %2143
  %2995 = fadd fast float %2992, %2144
  %2996 = fadd fast float %2993, %2145
  br label %3073

; <label>:2997                                    ; preds = %2943
  %2998 = icmp eq i32 %2941, 4
  br i1 %2998, label %2999, label %3045

; <label>:2999                                    ; preds = %2997
  %3000 = fmul fast float %2946, %2634
  %3001 = fmul fast float %2946, %2635
  %3002 = fadd fast float %3000, %2132
  %3003 = fadd fast float %3001, %2133
  %3004 = call float @dx.op.binary.f32(i32 36, float %2148, float %2636)  ; FMin(a,b)
  %3005 = fsub fast float %3004, %2148
  %3006 = fmul fast float %3005, %2949
  %3007 = fadd fast float %3006, %2148
  %3008 = fadd fast float %2633, %2147
  %3009 = fmul fast float %3008, 0x3FF337FAE0000000
  %3010 = fmul fast float %2147, %2147
  %3011 = fmul fast float %2633, %2633
  %3012 = fadd fast float %3011, %3010
  %3013 = fmul fast float %3012, 0x3FE5152B00000000
  %3014 = fmul fast float %2147, 0xBFCC1F85E0000000
  %3015 = fmul fast float %3014, %2633
  %3016 = fadd fast float %3015, 0xBFE1363700000000
  %3017 = fadd fast float %3016, %3009
  %3018 = fsub fast float %3017, %3013
  %3019 = fmul fast float %3008, 0x3FBA6F0D00000000
  %3020 = fmul fast float %3012, 0x3FD0432880000000
  %3021 = fmul fast float %2147, 0xBFEF110800000000
  %3022 = fmul fast float %3021, %2633
  %3023 = fadd fast float %3022, 1.000000e+00
  %3024 = fsub fast float %3023, %3019
  %3025 = fadd fast float %3024, %3020
  %3026 = fdiv fast float %3018, %3025
  %3027 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3028 = fsub fast float %3027, %2147
  %3029 = fmul fast float %3028, %2952
  %3030 = fadd fast float %3029, %2147
  %3031 = fmul fast float %2955, %2739
  %3032 = fmul fast float %2955, %2740
  %3033 = fmul fast float %2955, %2741
  %3034 = fadd fast float %3031, %2140
  %3035 = fadd fast float %3032, %2141
  %3036 = fadd fast float %3033, %2142
  %3037 = fmul fast float %2958, %2794
  %3038 = fadd fast float %3037, %2149
  %3039 = fmul fast float %2961, %2791
  %3040 = fmul fast float %2961, %2792
  %3041 = fmul fast float %2961, %2793
  %3042 = fadd fast float %3039, %2143
  %3043 = fadd fast float %3040, %2144
  %3044 = fadd fast float %3041, %2145
  br label %3073

; <label>:3045                                    ; preds = %2997
  %3046 = icmp eq i32 %2941, 8
  br i1 %3046, label %3047, label %3073

; <label>:3047                                    ; preds = %3045
  %3048 = fmul fast float %2946, %2634
  %3049 = fmul fast float %2946, %2635
  %3050 = fadd fast float %3048, %2132
  %3051 = fadd fast float %3049, %2133
  %3052 = call float @dx.op.binary.f32(i32 36, float %2148, float %2636)  ; FMin(a,b)
  %3053 = fsub fast float %3052, %2148
  %3054 = fmul fast float %3053, %2949
  %3055 = fadd fast float %3054, %2148
  %3056 = fsub fast float %2633, %2147
  %3057 = fmul fast float %2952, %3056
  %3058 = fadd fast float %3057, %2147
  %3059 = fmul fast float %2955, %2739
  %3060 = fmul fast float %2955, %2740
  %3061 = fmul fast float %2955, %2741
  %3062 = fadd fast float %3059, %2140
  %3063 = fadd fast float %3060, %2141
  %3064 = fadd fast float %3061, %2142
  %3065 = fmul fast float %2958, %2794
  %3066 = fadd fast float %3065, %2149
  %3067 = fmul fast float %2961, %2791
  %3068 = fmul fast float %2961, %2792
  %3069 = fmul fast float %2961, %2793
  %3070 = fadd fast float %3067, %2143
  %3071 = fadd fast float %3068, %2144
  %3072 = fadd fast float %3069, %2145
  br label %3073

; <label>:3073                                    ; preds = %3047, %3045, %2999, %2963, %2932, %2332, %2151, %2131
  %3074 = phi float [ %2132, %2932 ], [ %2132, %2332 ], [ %2132, %2131 ], [ %3050, %3047 ], [ %2132, %3045 ], [ %3002, %2999 ], [ %2968, %2963 ], [ %2132, %2151 ]
  %3075 = phi float [ %2133, %2932 ], [ %2133, %2332 ], [ %2133, %2131 ], [ %3051, %3047 ], [ %2133, %3045 ], [ %3003, %2999 ], [ %2969, %2963 ], [ %2133, %2151 ]
  %3076 = phi float [ %2933, %2932 ], [ %2134, %2332 ], [ %2134, %2131 ], [ %2933, %3047 ], [ %2933, %3045 ], [ %2933, %2999 ], [ %2933, %2963 ], [ %2134, %2151 ]
  %3077 = phi float [ %2934, %2932 ], [ %2135, %2332 ], [ %2135, %2131 ], [ %2934, %3047 ], [ %2934, %3045 ], [ %2934, %2999 ], [ %2934, %2963 ], [ %2135, %2151 ]
  %3078 = phi float [ %2935, %2932 ], [ %2136, %2332 ], [ %2136, %2131 ], [ %2935, %3047 ], [ %2935, %3045 ], [ %2935, %2999 ], [ %2935, %2963 ], [ %2136, %2151 ]
  %3079 = phi float [ %2936, %2932 ], [ %2137, %2332 ], [ %2137, %2131 ], [ %2936, %3047 ], [ %2936, %3045 ], [ %2936, %2999 ], [ %2936, %2963 ], [ %2137, %2151 ]
  %3080 = phi float [ %2937, %2932 ], [ %2138, %2332 ], [ %2138, %2131 ], [ %2937, %3047 ], [ %2937, %3045 ], [ %2937, %2999 ], [ %2937, %2963 ], [ %2138, %2151 ]
  %3081 = phi float [ %2938, %2932 ], [ %2139, %2332 ], [ %2139, %2131 ], [ %2938, %3047 ], [ %2938, %3045 ], [ %2938, %2999 ], [ %2938, %2963 ], [ %2139, %2151 ]
  %3082 = phi float [ %2140, %2932 ], [ %2140, %2332 ], [ %2140, %2131 ], [ %3062, %3047 ], [ %2140, %3045 ], [ %3034, %2999 ], [ %2982, %2963 ], [ %2140, %2151 ]
  %3083 = phi float [ %2141, %2932 ], [ %2141, %2332 ], [ %2141, %2131 ], [ %3063, %3047 ], [ %2141, %3045 ], [ %3035, %2999 ], [ %2983, %2963 ], [ %2141, %2151 ]
  %3084 = phi float [ %2142, %2932 ], [ %2142, %2332 ], [ %2142, %2131 ], [ %3064, %3047 ], [ %2142, %3045 ], [ %3036, %2999 ], [ %2984, %2963 ], [ %2142, %2151 ]
  %3085 = phi float [ %2143, %2932 ], [ %2143, %2332 ], [ %2143, %2131 ], [ %3070, %3047 ], [ %2143, %3045 ], [ %3042, %2999 ], [ %2994, %2963 ], [ %2143, %2151 ]
  %3086 = phi float [ %2144, %2932 ], [ %2144, %2332 ], [ %2144, %2131 ], [ %3071, %3047 ], [ %2144, %3045 ], [ %3043, %2999 ], [ %2995, %2963 ], [ %2144, %2151 ]
  %3087 = phi float [ %2145, %2932 ], [ %2145, %2332 ], [ %2145, %2131 ], [ %3072, %3047 ], [ %2145, %3045 ], [ %3044, %2999 ], [ %2996, %2963 ], [ %2145, %2151 ]
  %3088 = phi float [ %2939, %2932 ], [ %2146, %2332 ], [ %2146, %2131 ], [ %2939, %3047 ], [ %2939, %3045 ], [ %2939, %2999 ], [ %2939, %2963 ], [ %2146, %2151 ]
  %3089 = phi float [ %2147, %2932 ], [ %2147, %2332 ], [ %2147, %2131 ], [ %3058, %3047 ], [ %2147, %3045 ], [ %3030, %2999 ], [ %2975, %2963 ], [ %2147, %2151 ]
  %3090 = phi float [ %2148, %2932 ], [ %2148, %2332 ], [ %2148, %2131 ], [ %3055, %3047 ], [ %2148, %3045 ], [ %3007, %2999 ], [ %2972, %2963 ], [ %2148, %2151 ]
  %3091 = phi float [ %2149, %2932 ], [ %2149, %2332 ], [ %2149, %2131 ], [ %3066, %3047 ], [ %2149, %3045 ], [ %3038, %2999 ], [ %2987, %2963 ], [ %2149, %2151 ]
  %3092 = phi float [ %2940, %2932 ], [ %2150, %2332 ], [ %2150, %2131 ], [ %2940, %3047 ], [ %2940, %3045 ], [ %2940, %2999 ], [ %2940, %2963 ], [ %2150, %2151 ]
  br i1 %480, label %4015, label %3093

; <label>:3093                                    ; preds = %3073
  %3094 = icmp ult i32 %534, 4
  %3095 = add i32 %49, 72
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = add i32 %49, 76
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = or i32 %3100, %3097
  %3102 = icmp eq i32 %3101, 0
  br i1 %3102, label %4015, label %3103

; <label>:3103                                    ; preds = %3093
  %3104 = and i32 %3097, 262144
  %3105 = icmp ne i32 %3104, 0
  %3106 = select i1 %3105, float %55, float 1.000000e+00
  %3107 = select i1 %3105, float %56, float 0.000000e+00
  %3108 = select i1 %3105, float %57, float 0.000000e+00
  %3109 = select i1 %3105, float %58, float 1.000000e+00
  %3110 = select i1 %3105, float %59, float %87
  %3111 = select i1 %3105, float %60, float %88
  %3112 = add i32 %49, 332
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = lshr i32 %3114, 16
  %3116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3115)  ; LegacyF16ToF32(value)
  %3117 = fmul fast float %3116, 0x3F50624DE0000000
  %3118 = add i32 %49, 136
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = lshr i32 %3120, 16
  %3122 = and i32 %3121, 255
  %3123 = lshr i32 %3120, 24
  %3124 = add i32 %49, 340
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 65535
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = lshr i32 %3126, 16
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = add i32 %49, 80
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3131, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = lshr i32 %3133, 22
  %3135 = shl nuw nsw i32 %3134, 5
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = shl i32 %3133, 4
  %3138 = and i32 %3137, 32752
  %3139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3138)  ; LegacyF16ToF32(value)
  %3140 = lshr i32 %3133, 7
  %3141 = and i32 %3140, 32752
  %3142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3141)  ; LegacyF16ToF32(value)
  %3143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3144 = extractvalue %dx.types.CBufRet.f32 %3143, 3
  %3145 = fmul fast float %3144, 1.000000e+03
  %3146 = fmul fast float %470, %3145
  %3147 = call float @dx.op.unary.f32(i32 22, float %3146)  ; Frc(value)
  %3148 = fadd fast float %3147, %460
  %3149 = fmul fast float %471, %3145
  %3150 = call float @dx.op.unary.f32(i32 22, float %3149)  ; Frc(value)
  %3151 = fadd fast float %3150, %462
  %3152 = fmul fast float %3117, %3145
  %3153 = call float @dx.op.unary.f32(i32 22, float %3152)  ; Frc(value)
  %3154 = fmul fast float %3153, 0x401921FB60000000
  %3155 = fadd fast float %3154, %3136
  %3156 = call float @dx.op.unary.f32(i32 13, float %3155)  ; Sin(value)
  %3157 = call float @dx.op.unary.f32(i32 12, float %3155)  ; Cos(value)
  %3158 = fsub fast float -0.000000e+00, %3156
  %3159 = fadd fast float %3110, -5.000000e-01
  %3160 = fadd fast float %3111, -5.000000e-01
  %3161 = fmul fast float %3128, %3159
  %3162 = fmul fast float %3130, %3160
  %3163 = fadd fast float %3161, 5.000000e-01
  %3164 = fadd fast float %3162, 5.000000e-01
  %3165 = fmul fast float %3139, %3163
  %3166 = fmul fast float %3142, %3164
  %3167 = fmul fast float %3157, %3165
  %3168 = call float @dx.op.tertiary.f32(i32 46, float %3158, float %3166, float %3167)  ; FMad(a,b,c)
  %3169 = fmul fast float %3156, %3165
  %3170 = call float @dx.op.tertiary.f32(i32 46, float %3157, float %3166, float %3169)  ; FMad(a,b,c)
  %3171 = fadd fast float %3148, %3168
  %3172 = fadd fast float %3151, %3170
  %3173 = icmp ugt i32 %3122, 1
  %3174 = icmp ugt i32 %3120, 33554431
  %3175 = or i1 %3174, %3173
  br i1 %3175, label %3176, label %3201

; <label>:3176                                    ; preds = %3103
  %3177 = add i32 %49, 276
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = lshr i32 %3179, 16
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = fmul fast float %3144, %3181
  %3183 = call float @dx.op.unary.f32(i32 22, float %3182)  ; Frc(value)
  %3184 = mul nuw nsw i32 %3122, %3123
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3183, %3185
  %3187 = call float @dx.op.unary.f32(i32 27, float %3186)  ; Round_ni(value)
  %3188 = fptoui float %3187 to i32
  %3189 = urem i32 %3188, %3122
  %3190 = udiv i32 %3188, %3123
  %3191 = call float @dx.op.unary.f32(i32 22, float %3171)  ; Frc(value)
  %3192 = call float @dx.op.unary.f32(i32 22, float %3172)  ; Frc(value)
  %3193 = uitofp i32 %3189 to float
  %3194 = uitofp i32 %3190 to float
  %3195 = fadd fast float %3191, %3193
  %3196 = fadd fast float %3192, %3194
  %3197 = uitofp i32 %3122 to float
  %3198 = uitofp i32 %3123 to float
  %3199 = fdiv fast float %3195, %3197
  %3200 = fdiv fast float %3196, %3198
  br label %3201

; <label>:3201                                    ; preds = %3176, %3103
  %3202 = phi float [ %3199, %3176 ], [ %3171, %3103 ]
  %3203 = phi float [ %3200, %3176 ], [ %3172, %3103 ]
  %3204 = and i32 %3097, 256
  %3205 = icmp eq i32 %3204, 0
  br i1 %3205, label %3252, label %3206

; <label>:3206                                    ; preds = %3201
  %3207 = add i32 %49, 500
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = add i32 %3209, 0
  %3211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3210, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3212 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3211, %dx.types.Handle %106, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3213 = extractvalue %dx.types.ResRet.f32 %3212, 0
  %3214 = add i32 %49, 148
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = shl i32 %3216, 4
  %3218 = and i32 %3217, 32752
  %3219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3218)  ; LegacyF16ToF32(value)
  %3220 = lshr i32 %3216, 7
  %3221 = and i32 %3220, 32752
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = fsub fast float 1.000000e+00, %529
  %3224 = call float @dx.op.binary.f32(i32 35, float %3223, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3225 = bitcast float %529 to i32
  %3226 = sitofp i32 %3225 to float
  %3227 = fadd fast float %3226, 0xC1CFBF8940000000
  %3228 = fmul fast float %3222, %3227
  %3229 = fadd fast float %3228, 0x41CFBF8940000000
  %3230 = fptosi float %3229 to i32
  %3231 = bitcast i32 %3230 to float
  %3232 = bitcast float %3224 to i32
  %3233 = sitofp i32 %3232 to float
  %3234 = fadd fast float %3233, 0xC1CFBF8940000000
  %3235 = fmul fast float %3234, %3222
  %3236 = fadd fast float %3235, 0x41CFBF8940000000
  %3237 = fptosi float %3236 to i32
  %3238 = bitcast i32 %3237 to float
  %3239 = fmul fast float %3231, %3219
  %3240 = fmul fast float %3238, %3219
  %3241 = fsub fast float %3224, %3239
  %3242 = fadd fast float %3240, %3224
  %3243 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3244 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3245 = fsub fast float %3213, %3243
  %3246 = fsub fast float %3244, %3243
  %3247 = bitcast float %3246 to i32
  %3248 = sub nsw i32 2129859010, %3247
  %3249 = bitcast i32 %3248 to float
  %3250 = fmul fast float %3249, %3245
  %3251 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  br label %3252

; <label>:3252                                    ; preds = %3206, %3201
  %3253 = phi float [ %3251, %3206 ], [ %529, %3201 ]
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 128
  %3257 = icmp eq i32 %3256, 0
  br i1 %3257, label %3274, label %3258

; <label>:3258                                    ; preds = %3252
  %3259 = add i32 %49, 484
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = add i32 %3261, 0
  %3263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3263, %dx.types.Handle %106, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3265 = extractvalue %dx.types.ResRet.f32 %3264, 0
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 524288
  %3269 = icmp ne i32 %3268, 0
  %3270 = fcmp fast ogt float %3265, 0x3FE0101020000000
  %3271 = select i1 %3270, float 1.000000e+00, float 0.000000e+00
  %3272 = select i1 %3269, float %3271, float %3265
  %3273 = fmul fast float %3272, %3253
  br label %3274

; <label>:3274                                    ; preds = %3258, %3252
  %3275 = phi float [ %3273, %3258 ], [ %3253, %3252 ]
  %3276 = fcmp fast ult float %3275, 0x3F70101020000000
  br i1 %3276, label %4015, label %3277

; <label>:3277                                    ; preds = %3274
  %3278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3279 = extractvalue %dx.types.ResRet.i32 %3278, 0
  %3280 = and i32 %3279, 16
  %3281 = icmp eq i32 %3280, 0
  br i1 %3281, label %3480, label %3282

; <label>:3282                                    ; preds = %3277
  %3283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3284 = extractvalue %dx.types.ResRet.i32 %3283, 0
  %3285 = add i32 %49, 436
  %3286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3285, i32 undef)  ; BufferLoad(srv,index,wot)
  %3287 = extractvalue %dx.types.ResRet.i32 %3286, 0
  %3288 = add i32 %3287, 0
  %3289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3288, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3290 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3289, %dx.types.Handle %105, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3291 = extractvalue %dx.types.ResRet.f32 %3290, 0
  %3292 = extractvalue %dx.types.ResRet.f32 %3290, 1
  %3293 = extractvalue %dx.types.ResRet.f32 %3290, 2
  %3294 = extractvalue %dx.types.ResRet.f32 %3290, 3
  %3295 = and i32 %3284, 255
  %3296 = uitofp i32 %3295 to float
  %3297 = lshr i32 %3284, 8
  %3298 = and i32 %3297, 255
  %3299 = uitofp i32 %3298 to float
  %3300 = fmul fast float %3294, %3296
  %3301 = fadd fast float %3300, %3299
  %3302 = fmul fast float %3301, 0x3F70101000000000
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = and i32 %3304, 512
  %3306 = icmp eq i32 %3305, 0
  br i1 %3306, label %3315, label %3307

; <label>:3307                                    ; preds = %3282
  %3308 = add i32 %49, 516
  %3309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3310 = extractvalue %dx.types.ResRet.i32 %3309, 0
  %3311 = add i32 %3310, 0
  %3312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3312, %dx.types.Handle %106, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3314 = extractvalue %dx.types.ResRet.f32 %3313, 0
  br label %3315

; <label>:3315                                    ; preds = %3307, %3282
  %3316 = phi float [ %3314, %3307 ], [ 1.000000e+00, %3282 ]
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 33554432
  %3320 = icmp eq i32 %3319, 0
  br i1 %3320, label %3427, label %3321

; <label>:3321                                    ; preds = %3315
  %3322 = add i32 %49, 272
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3322, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = and i32 %3324, 65535
  %3326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3325)  ; LegacyF16ToF32(value)
  %3327 = lshr i32 %3324, 16
  %3328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3327)  ; LegacyF16ToF32(value)
  %3329 = add i32 %49, 276
  %3330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.i32 %3330, 0
  %3332 = and i32 %3331, 65535
  %3333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3332)  ; LegacyF16ToF32(value)
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = lshr i32 %3335, 24
  %3337 = uitofp i32 %3336 to float
  %3338 = fmul fast float %3337, 0x3F70101020000000
  %3339 = and i32 %3335, 255
  %3340 = uitofp i32 %3339 to float
  %3341 = fmul fast float %3340, 0x3F70101020000000
  %3342 = lshr i32 %3335, 8
  %3343 = and i32 %3342, 255
  %3344 = uitofp i32 %3343 to float
  %3345 = fmul fast float %3344, 0x3F70101020000000
  %3346 = lshr i32 %3335, 16
  %3347 = and i32 %3346, 255
  %3348 = uitofp i32 %3347 to float
  %3349 = fmul fast float %3348, 0x3F70101020000000
  %3350 = add i32 %49, 268
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = lshr i32 %3352, 24
  %3354 = uitofp i32 %3353 to float
  %3355 = fmul fast float %3354, 0x3F70101020000000
  %3356 = and i32 %3352, 255
  %3357 = uitofp i32 %3356 to float
  %3358 = fmul fast float %3357, 0x3F70101020000000
  %3359 = lshr i32 %3352, 8
  %3360 = and i32 %3359, 255
  %3361 = uitofp i32 %3360 to float
  %3362 = fmul fast float %3361, 0x3F70101020000000
  %3363 = lshr i32 %3352, 16
  %3364 = and i32 %3363, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = fmul fast float %3365, 0x3F70101020000000
  %3367 = bitcast float %3291 to i32
  %3368 = ashr i32 %3367, 1
  %3369 = sub nsw i32 1597463174, %3368
  %3370 = bitcast i32 %3369 to float
  %3371 = fmul fast float %3291, 5.000000e-01
  %3372 = fmul fast float %3370, %3370
  %3373 = fmul fast float %3372, %3371
  %3374 = fsub fast float 1.500000e+00, %3373
  %3375 = fmul fast float %3370, %3291
  %3376 = fmul fast float %3375, %3374
  %3377 = bitcast float %3292 to i32
  %3378 = ashr i32 %3377, 1
  %3379 = sub nsw i32 1597463174, %3378
  %3380 = bitcast i32 %3379 to float
  %3381 = fmul fast float %3292, 5.000000e-01
  %3382 = fmul fast float %3380, %3380
  %3383 = fmul fast float %3382, %3381
  %3384 = fsub fast float 1.500000e+00, %3383
  %3385 = fmul fast float %3380, %3292
  %3386 = fmul fast float %3385, %3384
  %3387 = bitcast float %3293 to i32
  %3388 = ashr i32 %3387, 1
  %3389 = sub nsw i32 1597463174, %3388
  %3390 = bitcast i32 %3389 to float
  %3391 = fmul fast float %3293, 5.000000e-01
  %3392 = fmul fast float %3390, %3390
  %3393 = fmul fast float %3392, %3391
  %3394 = fsub fast float 1.500000e+00, %3393
  %3395 = fmul fast float %3390, %3293
  %3396 = fmul fast float %3395, %3394
  %3397 = fsub fast float %3376, %3358
  %3398 = fsub fast float %3386, %3362
  %3399 = fsub fast float %3396, %3366
  %3400 = fmul fast float %3397, %3326
  %3401 = fmul fast float %3398, %3328
  %3402 = fmul fast float %3399, %3333
  %3403 = fadd fast float %3400, %3341
  %3404 = fadd fast float %3401, %3345
  %3405 = fadd fast float %3402, %3349
  %3406 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  %3407 = call float @dx.op.unary.f32(i32 7, float %3404)  ; Saturate(value)
  %3408 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  %3409 = fmul fast float %3406, %3406
  %3410 = fmul fast float %3407, %3407
  %3411 = fmul fast float %3408, %3408
  %3412 = fsub fast float %3409, %3291
  %3413 = fsub fast float %3410, %3292
  %3414 = fsub fast float %3411, %3293
  %3415 = fmul fast float %3412, %3316
  %3416 = fmul fast float %3413, %3316
  %3417 = fmul fast float %3414, %3316
  %3418 = fadd fast float %3415, %3291
  %3419 = fadd fast float %3416, %3292
  %3420 = fadd fast float %3417, %3293
  %3421 = fadd fast float %3338, %3302
  %3422 = fsub fast float %3421, %3355
  %3423 = call float @dx.op.unary.f32(i32 7, float %3422)  ; Saturate(value)
  %3424 = fsub fast float %3423, %3302
  %3425 = fmul fast float %3424, %3316
  %3426 = fadd fast float %3425, %3302
  br label %3480

; <label>:3427                                    ; preds = %3315
  %3428 = and i32 %3318, 134217728
  %3429 = icmp eq i32 %3428, 0
  br i1 %3429, label %3464, label %3430

; <label>:3430                                    ; preds = %3427
  %3431 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %3432 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %3433 = call float @dx.op.unary.f32(i32 24, float %455)  ; Sqrt(value)
  %3434 = fadd fast float %3431, -5.000000e-01
  %3435 = fadd fast float %3432, -5.000000e-01
  %3436 = fadd fast float %3433, -5.000000e-01
  %3437 = fmul fast float %3434, %3316
  %3438 = fmul fast float %3435, %3316
  %3439 = fmul fast float %3436, %3316
  %3440 = fadd fast float %3437, 5.000000e-01
  %3441 = fadd fast float %3438, 5.000000e-01
  %3442 = fadd fast float %3439, 5.000000e-01
  %3443 = call float @dx.op.unary.f32(i32 24, float %3291)  ; Sqrt(value)
  %3444 = call float @dx.op.unary.f32(i32 24, float %3292)  ; Sqrt(value)
  %3445 = call float @dx.op.unary.f32(i32 24, float %3293)  ; Sqrt(value)
  %3446 = fmul fast float %3440, 2.000000e+00
  %3447 = fsub fast float 1.000000e+00, %3446
  %3448 = fmul fast float %3447, %3443
  %3449 = fadd fast float %3448, %3446
  %3450 = fmul fast float %3449, %3443
  %3451 = fmul fast float %3441, 2.000000e+00
  %3452 = fsub fast float 1.000000e+00, %3451
  %3453 = fmul fast float %3452, %3444
  %3454 = fadd fast float %3453, %3451
  %3455 = fmul fast float %3454, %3444
  %3456 = fmul fast float %3442, 2.000000e+00
  %3457 = fsub fast float 1.000000e+00, %3456
  %3458 = fmul fast float %3457, %3445
  %3459 = fadd fast float %3458, %3456
  %3460 = fmul fast float %3459, %3445
  %3461 = fmul fast float %3450, %3450
  %3462 = fmul fast float %3455, %3455
  %3463 = fmul fast float %3460, %3460
  br label %3480

; <label>:3464                                    ; preds = %3427
  %3465 = fmul fast float %447, %447
  %3466 = fmul fast float %451, %451
  %3467 = fmul fast float %455, %455
  %3468 = fadd fast float %3465, -1.000000e+00
  %3469 = fadd fast float %3466, -1.000000e+00
  %3470 = fadd fast float %3467, -1.000000e+00
  %3471 = fmul fast float %3316, %3468
  %3472 = fmul fast float %3316, %3469
  %3473 = fmul fast float %3316, %3470
  %3474 = fadd fast float %3471, 1.000000e+00
  %3475 = fadd fast float %3472, 1.000000e+00
  %3476 = fadd fast float %3473, 1.000000e+00
  %3477 = fmul fast float %3474, %3291
  %3478 = fmul fast float %3475, %3292
  %3479 = fmul fast float %3476, %3293
  br label %3480

; <label>:3480                                    ; preds = %3464, %3430, %3321, %3277
  %3481 = phi float [ %3426, %3321 ], [ %3302, %3430 ], [ %3302, %3464 ], [ 0x3FA23C0BE0000000, %3277 ]
  %3482 = phi float [ %3418, %3321 ], [ %3461, %3430 ], [ %3477, %3464 ], [ 1.000000e+00, %3277 ]
  %3483 = phi float [ %3419, %3321 ], [ %3462, %3430 ], [ %3478, %3464 ], [ 1.000000e+00, %3277 ]
  %3484 = phi float [ %3420, %3321 ], [ %3463, %3430 ], [ %3479, %3464 ], [ 1.000000e+00, %3277 ]
  %3485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3486 = extractvalue %dx.types.CBufRet.i32 %3485, 1
  %3487 = and i32 %3486, 1
  %3488 = icmp ne i32 %3487, 0
  %3489 = add i32 %49, 356
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = and i32 %3491, 32
  %3493 = icmp ne i32 %3492, 0
  %3494 = and i1 %3488, %3493
  %3495 = select i1 %3494, float 1.000000e+00, float %3482
  %3496 = select i1 %3494, float 0x3FD3333340000000, float %3483
  %3497 = select i1 %3494, float 0x3FD3333340000000, float %3484
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = and i32 %3499, 32
  %3501 = icmp eq i32 %3500, 0
  br i1 %3501, label %3574, label %3502

; <label>:3502                                    ; preds = %3480
  %3503 = add i32 %49, 140
  %3504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.i32 %3504, 0
  %3506 = add i32 %49, 452
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = add i32 %3508, 0
  %3510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3510, %dx.types.Handle %105, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = extractvalue %dx.types.ResRet.f32 %3511, 3
  %3516 = and i32 %3505, 255
  %3517 = uitofp i32 %3516 to float
  %3518 = lshr i32 %3505, 8
  %3519 = and i32 %3518, 255
  %3520 = uitofp i32 %3519 to float
  %3521 = lshr i32 %3505, 16
  %3522 = and i32 %3521, 255
  %3523 = uitofp i32 %3522 to float
  %3524 = fmul fast float %3523, 0x3F70101000000000
  %3525 = fmul fast float %3512, %3517
  %3526 = fadd fast float %3525, %3520
  %3527 = fmul fast float %3526, 0x3F70101000000000
  %3528 = fadd fast float %3513, -5.000000e-01
  %3529 = fadd fast float %3515, -5.000000e-01
  %3530 = fmul fast float %3528, %3524
  %3531 = fmul fast float %3529, %3524
  %3532 = fadd fast float %3530, 5.000000e-01
  %3533 = fadd fast float %3531, 5.000000e-01
  %3534 = fmul fast float %3532, 2.000000e+00
  %3535 = fadd fast float %3534, -1.000000e+00
  %3536 = fmul fast float %3533, 2.000000e+00
  %3537 = fadd fast float %3536, -1.000000e+00
  %3538 = fadd fast float %3535, %3537
  %3539 = fmul fast float %3538, 5.000000e-01
  %3540 = fsub fast float %3535, %3537
  %3541 = fmul fast float %3540, 5.000000e-01
  %3542 = call float @dx.op.unary.f32(i32 6, float %3539)  ; FAbs(value)
  %3543 = fsub fast float 1.000000e+00, %3542
  %3544 = call float @dx.op.unary.f32(i32 6, float %3541)  ; FAbs(value)
  %3545 = fsub fast float %3543, %3544
  %3546 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3541, float %3545, float %3539, float %3541, float %3545)  ; Dot3(ax,ay,az,bx,by,bz)
  %3547 = call float @dx.op.unary.f32(i32 25, float %3546)  ; Rsqrt(value)
  %3548 = fmul fast float %3539, %3547
  %3549 = fmul fast float %3541, %3547
  %3550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.i32 %3550, 0
  %3552 = and i32 %3551, 67108864
  %3553 = icmp eq i32 %3552, 0
  br i1 %3553, label %3570, label %3554

; <label>:3554                                    ; preds = %3502
  %3555 = add i32 %49, 328
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = and i32 %3557, 65535
  %3559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3558)  ; LegacyF16ToF32(value)
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 65535
  %3563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3562)  ; LegacyF16ToF32(value)
  %3564 = lshr i32 %3557, 16
  %3565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3564)  ; LegacyF16ToF32(value)
  %3566 = fsub fast float %3527, %3565
  %3567 = fmul fast float %3566, %3559
  %3568 = fadd fast float %3567, %3563
  %3569 = call float @dx.op.unary.f32(i32 7, float %3568)  ; Saturate(value)
  br label %3570

; <label>:3570                                    ; preds = %3554, %3502
  %3571 = phi float [ %3569, %3554 ], [ %3527, %3502 ]
  %3572 = call float @dx.op.dot2.f32(i32 54, float %3548, float %3549, float %3106, float %3107)  ; Dot2(ax,ay,bx,by)
  %3573 = call float @dx.op.dot2.f32(i32 54, float %3548, float %3549, float %3108, float %3109)  ; Dot2(ax,ay,bx,by)
  br label %3574

; <label>:3574                                    ; preds = %3570, %3480
  %3575 = phi float [ %3571, %3570 ], [ 0x3FD6666660000000, %3480 ]
  %3576 = phi float [ %3572, %3570 ], [ 0.000000e+00, %3480 ]
  %3577 = phi float [ %3573, %3570 ], [ 0.000000e+00, %3480 ]
  %3578 = phi float [ %3514, %3570 ], [ 1.000000e+00, %3480 ]
  %3579 = add i32 %49, 208
  %3580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.i32 %3580, 0
  %3582 = lshr i32 %3581, 22
  %3583 = shl nuw nsw i32 %3582, 5
  %3584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3583)  ; LegacyF16ToF32(value)
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = and i32 %3586, 64
  %3588 = icmp eq i32 %3587, 0
  br i1 %3588, label %3622, label %3589

; <label>:3589                                    ; preds = %3574
  %3590 = add i32 %49, 468
  %3591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.i32 %3591, 0
  %3593 = add i32 %3592, 0
  %3594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3593, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = and i32 %3596, 131072
  %3598 = icmp eq i32 %3597, 0
  %3599 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3594, %dx.types.Handle %105, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = fmul fast float %3600, %435
  %3604 = fmul fast float %3601, %438
  %3605 = fmul fast float %3602, %441
  br i1 %3598, label %3612, label %3606

; <label>:3606                                    ; preds = %3589
  %3607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3608 = extractvalue %dx.types.CBufRet.f32 %3607, 0
  %3609 = fmul fast float %3608, %3603
  %3610 = fmul fast float %3608, %3604
  %3611 = fmul fast float %3608, %3605
  br label %3612

; <label>:3612                                    ; preds = %3606, %3589
  %3613 = phi float [ %3609, %3606 ], [ %3603, %3589 ]
  %3614 = phi float [ %3610, %3606 ], [ %3604, %3589 ]
  %3615 = phi float [ %3611, %3606 ], [ %3605, %3589 ]
  %3616 = fmul fast float %3613, %3584
  %3617 = select i1 %292, float %3616, float %3613
  %3618 = call float @dx.op.dot3.f32(i32 55, float %3617, float %3614, float %3615, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = select i1 %292, float 0.000000e+00, float %3613
  %3620 = select i1 %292, float %3618, float %3614
  %3621 = select i1 %292, float 0.000000e+00, float %3615
  br label %3622

; <label>:3622                                    ; preds = %3612, %3574
  %3623 = phi float [ %3619, %3612 ], [ 0.000000e+00, %3574 ]
  %3624 = phi float [ %3620, %3612 ], [ 0.000000e+00, %3574 ]
  %3625 = phi float [ %3621, %3612 ], [ 0.000000e+00, %3574 ]
  %3626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.i32 %3626, 0
  %3628 = and i32 %3627, 1024
  %3629 = icmp eq i32 %3628, 0
  br i1 %3629, label %3660, label %3630

; <label>:3630                                    ; preds = %3622
  %3631 = add i32 %49, 200
  %3632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.i32 %3632, 0
  %3634 = and i32 %3633, 255
  %3635 = uitofp i32 %3634 to float
  %3636 = fmul fast float %3635, 0x3F70101020000000
  %3637 = lshr i32 %3633, 8
  %3638 = and i32 %3637, 255
  %3639 = uitofp i32 %3638 to float
  %3640 = fmul fast float %3639, 0x3F70101020000000
  %3641 = lshr i32 %3633, 16
  %3642 = and i32 %3641, 255
  %3643 = uitofp i32 %3642 to float
  %3644 = fmul fast float %3643, 0x3F70101020000000
  %3645 = fmul fast float %3636, %3636
  %3646 = fmul fast float %3640, %3640
  %3647 = fmul fast float %3644, %3644
  %3648 = add i32 %49, 532
  %3649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.i32 %3649, 0
  %3651 = add i32 %3650, 0
  %3652 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3651, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3653 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3652, %dx.types.Handle %106, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = fmul fast float %3645, %3654
  %3658 = fmul fast float %3646, %3655
  %3659 = fmul fast float %3647, %3656
  br label %3660

; <label>:3660                                    ; preds = %3630, %3622
  %3661 = phi float [ %3657, %3630 ], [ 0.000000e+00, %3622 ]
  %3662 = phi float [ %3658, %3630 ], [ 0.000000e+00, %3622 ]
  %3663 = phi float [ %3659, %3630 ], [ 0.000000e+00, %3622 ]
  %3664 = fcmp fast ogt float %3661, 0.000000e+00
  %3665 = fcmp fast ogt float %3662, 0.000000e+00
  %3666 = fcmp fast ogt float %3663, 0.000000e+00
  %3667 = call float @dx.op.unary.f32(i32 23, float %3661)  ; Log(value)
  %3668 = call float @dx.op.unary.f32(i32 23, float %3662)  ; Log(value)
  %3669 = call float @dx.op.unary.f32(i32 23, float %3663)  ; Log(value)
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = lshr i32 %3671, 7
  %3673 = and i32 %3672, 32752
  %3674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3673)  ; LegacyF16ToF32(value)
  %3675 = fmul fast float %3667, 0xBFE62E4300000000
  %3676 = fmul fast float %3675, %3674
  %3677 = fmul fast float %3668, 0xBFE62E4300000000
  %3678 = fmul fast float %3677, %3674
  %3679 = fmul fast float %3669, 0xBFE62E4300000000
  %3680 = fmul fast float %3679, %3674
  %3681 = select i1 %3664, float %3676, float 1.270000e+02
  %3682 = select i1 %3665, float %3678, float 1.270000e+02
  %3683 = select i1 %3666, float %3680, float 1.270000e+02
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = and i32 %3685, 10240
  %3687 = icmp eq i32 %3686, 0
  br i1 %3687, label %3732, label %3688

; <label>:3688                                    ; preds = %3660
  %3689 = add i32 %49, 548
  %3690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.i32 %3690, 0
  %3692 = add i32 %3691, 0
  %3693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3694 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3693, %dx.types.Handle %106, float %3202, float %3203, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3695 = extractvalue %dx.types.ResRet.f32 %3694, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3694, 3
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = and i32 %3698, 1048576
  %3700 = icmp ne i32 %3699, 0
  %3701 = and i32 %3698, 8192
  %3702 = icmp eq i32 %3701, 0
  br i1 %3702, label %3718, label %3703

; <label>:3703                                    ; preds = %3688
  %3704 = extractvalue %dx.types.ResRet.f32 %3694, 2
  %3705 = select i1 %3700, float %3704, float %3695
  %3706 = extractvalue %dx.types.ResRet.f32 %3694, 0
  %3707 = select i1 %3700, float %3706, float %3695
  %3708 = add i32 %49, 144
  %3709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.i32 %3709, 0
  %3711 = lshr i32 %3710, 16
  %3712 = and i32 %3711, 255
  %3713 = uitofp i32 %3712 to float
  %3714 = fmul fast float %3713, 0x3F80101020000000
  %3715 = fmul fast float %3714, %3707
  %3716 = fmul fast float %3714, %3695
  %3717 = fmul fast float %3714, %3705
  br label %3718

; <label>:3718                                    ; preds = %3703, %3688
  %3719 = phi float [ %3715, %3703 ], [ 0.000000e+00, %3688 ]
  %3720 = phi float [ %3716, %3703 ], [ 0.000000e+00, %3688 ]
  %3721 = phi float [ %3717, %3703 ], [ 0.000000e+00, %3688 ]
  %3722 = and i32 %3698, 2048
  %3723 = icmp eq i32 %3722, 0
  br i1 %3723, label %3732, label %3724

; <label>:3724                                    ; preds = %3718
  %3725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.i32 %3725, 0
  %3727 = shl i32 %3726, 4
  %3728 = and i32 %3727, 32752
  %3729 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3728)  ; LegacyF16ToF32(value)
  %3730 = fmul fast float %3729, %3696
  %3731 = call float @dx.op.binary.f32(i32 35, float %3730, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3732

; <label>:3732                                    ; preds = %3724, %3718, %3660
  %3733 = phi float [ %3719, %3724 ], [ %3719, %3718 ], [ 0.000000e+00, %3660 ]
  %3734 = phi float [ %3720, %3724 ], [ %3720, %3718 ], [ 0.000000e+00, %3660 ]
  %3735 = phi float [ %3721, %3724 ], [ %3721, %3718 ], [ 0.000000e+00, %3660 ]
  %3736 = phi float [ %3731, %3724 ], [ 0x3F70101020000000, %3718 ], [ 0x3F70101020000000, %3660 ]
  %3737 = add i32 %49, 144
  %3738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.i32 %3738, 0
  %3740 = and i32 %3739, 255
  %3741 = uitofp i32 %3740 to float
  %3742 = lshr i32 %3739, 8
  %3743 = and i32 %3742, 255
  %3744 = uitofp i32 %3743 to float
  %3745 = call float @dx.op.dot3.f32(i32 55, float %3495, float %3496, float %3497, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3746 = fmul fast float %3744, %3745
  %3747 = fadd fast float %3746, %3741
  %3748 = fmul fast float %3747, 0x3F70101020000000
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  br i1 %3094, label %3750, label %3785

; <label>:3750                                    ; preds = %3732
  %3751 = fmul fast float %3736, 2.000000e+00
  %3752 = fcmp fast olt float %3681, 1.270000e+02
  %3753 = fcmp fast olt float %3682, 1.270000e+02
  %3754 = fcmp fast olt float %3683, 1.270000e+02
  %3755 = fmul fast float %3681, 0xBFF7154760000000
  %3756 = fmul fast float %3755, %3751
  %3757 = fmul fast float %3682, 0xBFF7154760000000
  %3758 = fmul fast float %3757, %3751
  %3759 = fmul fast float %3683, 0xBFF7154760000000
  %3760 = fmul fast float %3759, %3751
  %3761 = call float @dx.op.unary.f32(i32 21, float %3756)  ; Exp(value)
  %3762 = call float @dx.op.unary.f32(i32 21, float %3758)  ; Exp(value)
  %3763 = call float @dx.op.unary.f32(i32 21, float %3760)  ; Exp(value)
  %3764 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3765 = call float @dx.op.unary.f32(i32 7, float %3762)  ; Saturate(value)
  %3766 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3767 = fadd fast float %3764, -1.000000e+00
  %3768 = select i1 %3752, float %3767, float -1.000000e+00
  %3769 = fadd fast float %3765, -1.000000e+00
  %3770 = select i1 %3753, float %3769, float -1.000000e+00
  %3771 = fadd fast float %3766, -1.000000e+00
  %3772 = select i1 %3754, float %3771, float -1.000000e+00
  %3773 = fmul fast float %3768, %3275
  %3774 = fmul fast float %3770, %3275
  %3775 = fmul fast float %3772, %3275
  %3776 = fadd fast float %3773, 1.000000e+00
  %3777 = fadd fast float %3774, 1.000000e+00
  %3778 = fadd fast float %3775, 1.000000e+00
  %3779 = fmul fast float %3776, %3076
  %3780 = fmul fast float %3777, %3077
  %3781 = fmul fast float %3778, %3078
  %3782 = fmul fast float %3776, %3079
  %3783 = fmul fast float %3777, %3080
  %3784 = fmul fast float %3778, %3081
  br label %3785

; <label>:3785                                    ; preds = %3750, %3732
  %3786 = phi float [ %3779, %3750 ], [ %3076, %3732 ]
  %3787 = phi float [ %3780, %3750 ], [ %3077, %3732 ]
  %3788 = phi float [ %3781, %3750 ], [ %3078, %3732 ]
  %3789 = phi float [ %3782, %3750 ], [ %3079, %3732 ]
  %3790 = phi float [ %3783, %3750 ], [ %3080, %3732 ]
  %3791 = phi float [ %3784, %3750 ], [ %3081, %3732 ]
  %3792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.i32 %3792, 0
  %3794 = and i32 %3793, 3
  %3795 = icmp eq i32 %3794, 3
  br i1 %3795, label %3874, label %3796

; <label>:3796                                    ; preds = %3785
  %3797 = and i32 %3793, 16
  %3798 = icmp ne i32 %3797, 0
  %3799 = select i1 %3798, float %3275, float 0.000000e+00
  %3800 = icmp eq i32 %3794, 0
  br i1 %3800, label %3801, label %3829

; <label>:3801                                    ; preds = %3796
  %3802 = and i32 %3793, 64
  %3803 = icmp ne i32 %3802, 0
  %3804 = select i1 %3803, float %3275, float 0.000000e+00
  %3805 = fsub fast float %3495, %3786
  %3806 = fsub fast float %3496, %3787
  %3807 = fsub fast float %3497, %3788
  %3808 = fmul fast float %3799, %3805
  %3809 = fmul fast float %3799, %3806
  %3810 = fmul fast float %3799, %3807
  %3811 = fadd fast float %3808, %3786
  %3812 = fadd fast float %3809, %3787
  %3813 = fadd fast float %3810, %3788
  %3814 = fsub fast float %3481, %3088
  %3815 = fmul fast float %3799, %3814
  %3816 = fadd fast float %3815, %3088
  %3817 = fsub fast float %3623, %3789
  %3818 = fsub fast float %3624, %3790
  %3819 = fsub fast float %3625, %3791
  %3820 = fmul fast float %3804, %3817
  %3821 = fmul fast float %3804, %3818
  %3822 = fmul fast float %3804, %3819
  %3823 = fadd fast float %3820, %3789
  %3824 = fadd fast float %3821, %3790
  %3825 = fadd fast float %3822, %3791
  %3826 = fsub fast float %3749, %3092
  %3827 = fmul fast float %3799, %3826
  %3828 = fadd fast float %3827, %3092
  br label %3874

; <label>:3829                                    ; preds = %3796
  %3830 = icmp eq i32 %3794, 1
  br i1 %3830, label %3831, label %3844

; <label>:3831                                    ; preds = %3829
  %3832 = fadd fast float %3495, -1.000000e+00
  %3833 = fadd fast float %3496, -1.000000e+00
  %3834 = fadd fast float %3497, -1.000000e+00
  %3835 = fmul fast float %3799, %3832
  %3836 = fmul fast float %3799, %3833
  %3837 = fmul fast float %3799, %3834
  %3838 = fadd fast float %3835, 1.000000e+00
  %3839 = fadd fast float %3836, 1.000000e+00
  %3840 = fadd fast float %3837, 1.000000e+00
  %3841 = fmul fast float %3838, %3786
  %3842 = fmul fast float %3839, %3787
  %3843 = fmul fast float %3840, %3788
  br label %3874

; <label>:3844                                    ; preds = %3829
  %3845 = icmp eq i32 %3794, 2
  br i1 %3845, label %3846, label %3874

; <label>:3846                                    ; preds = %3844
  %3847 = call float @dx.op.unary.f32(i32 24, float %3495)  ; Sqrt(value)
  %3848 = call float @dx.op.unary.f32(i32 24, float %3496)  ; Sqrt(value)
  %3849 = call float @dx.op.unary.f32(i32 24, float %3497)  ; Sqrt(value)
  %3850 = fadd fast float %3847, -5.000000e-01
  %3851 = fadd fast float %3848, -5.000000e-01
  %3852 = fadd fast float %3849, -5.000000e-01
  %3853 = fmul fast float %3850, %3799
  %3854 = fmul fast float %3851, %3799
  %3855 = fmul fast float %3852, %3799
  %3856 = fadd fast float %3853, 5.000000e-01
  %3857 = fadd fast float %3854, 5.000000e-01
  %3858 = fadd fast float %3855, 5.000000e-01
  %3859 = fmul fast float %3856, 2.000000e+00
  %3860 = fsub fast float 1.000000e+00, %3859
  %3861 = fmul fast float %3860, %3786
  %3862 = fadd fast float %3861, %3859
  %3863 = fmul fast float %3862, %3786
  %3864 = fmul fast float %3857, 2.000000e+00
  %3865 = fsub fast float 1.000000e+00, %3864
  %3866 = fmul fast float %3865, %3787
  %3867 = fadd fast float %3866, %3864
  %3868 = fmul fast float %3867, %3787
  %3869 = fmul fast float %3858, 2.000000e+00
  %3870 = fsub fast float 1.000000e+00, %3869
  %3871 = fmul fast float %3870, %3788
  %3872 = fadd fast float %3871, %3869
  %3873 = fmul fast float %3872, %3788
  br label %3874

; <label>:3874                                    ; preds = %3846, %3844, %3831, %3801, %3785
  %3875 = phi float [ %3786, %3785 ], [ %3863, %3846 ], [ %3786, %3844 ], [ %3841, %3831 ], [ %3811, %3801 ]
  %3876 = phi float [ %3787, %3785 ], [ %3868, %3846 ], [ %3787, %3844 ], [ %3842, %3831 ], [ %3812, %3801 ]
  %3877 = phi float [ %3788, %3785 ], [ %3873, %3846 ], [ %3788, %3844 ], [ %3843, %3831 ], [ %3813, %3801 ]
  %3878 = phi float [ %3789, %3785 ], [ %3789, %3846 ], [ %3789, %3844 ], [ %3789, %3831 ], [ %3823, %3801 ]
  %3879 = phi float [ %3790, %3785 ], [ %3790, %3846 ], [ %3790, %3844 ], [ %3790, %3831 ], [ %3824, %3801 ]
  %3880 = phi float [ %3791, %3785 ], [ %3791, %3846 ], [ %3791, %3844 ], [ %3791, %3831 ], [ %3825, %3801 ]
  %3881 = phi float [ %3088, %3785 ], [ %3088, %3846 ], [ %3088, %3844 ], [ %3088, %3831 ], [ %3816, %3801 ]
  %3882 = phi float [ %3092, %3785 ], [ %3092, %3846 ], [ %3092, %3844 ], [ %3092, %3831 ], [ %3828, %3801 ]
  %3883 = and i32 %3793, 12
  %3884 = icmp eq i32 %3883, 12
  br i1 %3884, label %4015, label %3885

; <label>:3885                                    ; preds = %3874
  %3886 = and i32 %3793, 2097184
  %3887 = icmp eq i32 %3886, 2097184
  %3888 = select i1 %3887, float %3275, float 0.000000e+00
  %3889 = and i32 %3793, 4194336
  %3890 = icmp eq i32 %3889, 4194336
  %3891 = select i1 %3890, float %3275, float 0.000000e+00
  %3892 = and i32 %3793, 8388640
  %3893 = icmp eq i32 %3892, 8388640
  %3894 = select i1 %3893, float %3275, float 0.000000e+00
  %3895 = and i32 %3793, 1024
  %3896 = icmp ne i32 %3895, 0
  %3897 = select i1 %3896, float %3275, float 0.000000e+00
  %3898 = and i32 %3793, 2048
  %3899 = icmp ne i32 %3898, 0
  %3900 = select i1 %3899, float %3275, float 0.000000e+00
  %3901 = and i32 %3793, 8192
  %3902 = icmp ne i32 %3901, 0
  %3903 = select i1 %3902, float %3275, float 0.000000e+00
  %3904 = icmp eq i32 %3883, 0
  br i1 %3904, label %3905, label %3939

; <label>:3905                                    ; preds = %3885
  %3906 = fsub fast float %3576, %3074
  %3907 = fsub fast float %3577, %3075
  %3908 = fmul fast float %3888, %3906
  %3909 = fmul fast float %3888, %3907
  %3910 = fadd fast float %3908, %3074
  %3911 = fadd fast float %3909, %3075
  %3912 = fsub fast float %3578, %3090
  %3913 = fmul fast float %3891, %3912
  %3914 = fadd fast float %3913, %3090
  %3915 = fsub fast float %3575, %3089
  %3916 = fmul fast float %3894, %3915
  %3917 = fadd fast float %3916, %3089
  %3918 = fsub fast float %3681, %3082
  %3919 = fsub fast float %3682, %3083
  %3920 = fsub fast float %3683, %3084
  %3921 = fmul fast float %3897, %3918
  %3922 = fmul fast float %3897, %3919
  %3923 = fmul fast float %3897, %3920
  %3924 = fadd fast float %3921, %3082
  %3925 = fadd fast float %3922, %3083
  %3926 = fadd fast float %3923, %3084
  %3927 = fsub fast float %3736, %3091
  %3928 = fmul fast float %3900, %3927
  %3929 = fadd fast float %3928, %3091
  %3930 = fsub fast float %3733, %3085
  %3931 = fsub fast float %3734, %3086
  %3932 = fsub fast float %3735, %3087
  %3933 = fmul fast float %3903, %3930
  %3934 = fmul fast float %3903, %3931
  %3935 = fmul fast float %3903, %3932
  %3936 = fadd fast float %3933, %3085
  %3937 = fadd fast float %3934, %3086
  %3938 = fadd fast float %3935, %3087
  br label %4015

; <label>:3939                                    ; preds = %3885
  %3940 = icmp eq i32 %3883, 4
  br i1 %3940, label %3941, label %3987

; <label>:3941                                    ; preds = %3939
  %3942 = fmul fast float %3888, %3576
  %3943 = fmul fast float %3888, %3577
  %3944 = fadd fast float %3942, %3074
  %3945 = fadd fast float %3943, %3075
  %3946 = call float @dx.op.binary.f32(i32 36, float %3090, float %3578)  ; FMin(a,b)
  %3947 = fsub fast float %3946, %3090
  %3948 = fmul fast float %3947, %3891
  %3949 = fadd fast float %3948, %3090
  %3950 = fadd fast float %3575, %3089
  %3951 = fmul fast float %3950, 0x3FF337FAE0000000
  %3952 = fmul fast float %3089, %3089
  %3953 = fmul fast float %3575, %3575
  %3954 = fadd fast float %3953, %3952
  %3955 = fmul fast float %3954, 0x3FE5152B00000000
  %3956 = fmul fast float %3089, 0xBFCC1F85E0000000
  %3957 = fmul fast float %3956, %3575
  %3958 = fadd fast float %3957, 0xBFE1363700000000
  %3959 = fadd fast float %3958, %3951
  %3960 = fsub fast float %3959, %3955
  %3961 = fmul fast float %3950, 0x3FBA6F0D00000000
  %3962 = fmul fast float %3954, 0x3FD0432880000000
  %3963 = fmul fast float %3089, 0xBFEF110800000000
  %3964 = fmul fast float %3963, %3575
  %3965 = fadd fast float %3964, 1.000000e+00
  %3966 = fsub fast float %3965, %3961
  %3967 = fadd fast float %3966, %3962
  %3968 = fdiv fast float %3960, %3967
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3970 = fsub fast float %3969, %3089
  %3971 = fmul fast float %3970, %3894
  %3972 = fadd fast float %3971, %3089
  %3973 = fmul fast float %3897, %3681
  %3974 = fmul fast float %3897, %3682
  %3975 = fmul fast float %3897, %3683
  %3976 = fadd fast float %3973, %3082
  %3977 = fadd fast float %3974, %3083
  %3978 = fadd fast float %3975, %3084
  %3979 = fmul fast float %3900, %3736
  %3980 = fadd fast float %3979, %3091
  %3981 = fmul fast float %3903, %3733
  %3982 = fmul fast float %3903, %3734
  %3983 = fmul fast float %3903, %3735
  %3984 = fadd fast float %3981, %3085
  %3985 = fadd fast float %3982, %3086
  %3986 = fadd fast float %3983, %3087
  br label %4015

; <label>:3987                                    ; preds = %3939
  %3988 = icmp eq i32 %3883, 8
  br i1 %3988, label %3989, label %4015

; <label>:3989                                    ; preds = %3987
  %3990 = fmul fast float %3888, %3576
  %3991 = fmul fast float %3888, %3577
  %3992 = fadd fast float %3990, %3074
  %3993 = fadd fast float %3991, %3075
  %3994 = call float @dx.op.binary.f32(i32 36, float %3090, float %3578)  ; FMin(a,b)
  %3995 = fsub fast float %3994, %3090
  %3996 = fmul fast float %3995, %3891
  %3997 = fadd fast float %3996, %3090
  %3998 = fsub fast float %3575, %3089
  %3999 = fmul fast float %3894, %3998
  %4000 = fadd fast float %3999, %3089
  %4001 = fmul fast float %3897, %3681
  %4002 = fmul fast float %3897, %3682
  %4003 = fmul fast float %3897, %3683
  %4004 = fadd fast float %4001, %3082
  %4005 = fadd fast float %4002, %3083
  %4006 = fadd fast float %4003, %3084
  %4007 = fmul fast float %3900, %3736
  %4008 = fadd fast float %4007, %3091
  %4009 = fmul fast float %3903, %3733
  %4010 = fmul fast float %3903, %3734
  %4011 = fmul fast float %3903, %3735
  %4012 = fadd fast float %4009, %3085
  %4013 = fadd fast float %4010, %3086
  %4014 = fadd fast float %4011, %3087
  br label %4015

; <label>:4015                                    ; preds = %3989, %3987, %3941, %3905, %3874, %3274, %3093, %3073
  %4016 = phi float [ %3074, %3874 ], [ %3074, %3274 ], [ %3074, %3073 ], [ %3074, %3093 ], [ %3910, %3905 ], [ %3944, %3941 ], [ %3074, %3987 ], [ %3992, %3989 ]
  %4017 = phi float [ %3075, %3874 ], [ %3075, %3274 ], [ %3075, %3073 ], [ %3075, %3093 ], [ %3911, %3905 ], [ %3945, %3941 ], [ %3075, %3987 ], [ %3993, %3989 ]
  %4018 = phi float [ %3875, %3874 ], [ %3076, %3274 ], [ %3076, %3073 ], [ %3076, %3093 ], [ %3875, %3905 ], [ %3875, %3941 ], [ %3875, %3987 ], [ %3875, %3989 ]
  %4019 = phi float [ %3876, %3874 ], [ %3077, %3274 ], [ %3077, %3073 ], [ %3077, %3093 ], [ %3876, %3905 ], [ %3876, %3941 ], [ %3876, %3987 ], [ %3876, %3989 ]
  %4020 = phi float [ %3877, %3874 ], [ %3078, %3274 ], [ %3078, %3073 ], [ %3078, %3093 ], [ %3877, %3905 ], [ %3877, %3941 ], [ %3877, %3987 ], [ %3877, %3989 ]
  %4021 = phi float [ %3878, %3874 ], [ %3079, %3274 ], [ %3079, %3073 ], [ %3079, %3093 ], [ %3878, %3905 ], [ %3878, %3941 ], [ %3878, %3987 ], [ %3878, %3989 ]
  %4022 = phi float [ %3879, %3874 ], [ %3080, %3274 ], [ %3080, %3073 ], [ %3080, %3093 ], [ %3879, %3905 ], [ %3879, %3941 ], [ %3879, %3987 ], [ %3879, %3989 ]
  %4023 = phi float [ %3880, %3874 ], [ %3081, %3274 ], [ %3081, %3073 ], [ %3081, %3093 ], [ %3880, %3905 ], [ %3880, %3941 ], [ %3880, %3987 ], [ %3880, %3989 ]
  %4024 = phi float [ %3082, %3874 ], [ %3082, %3274 ], [ %3082, %3073 ], [ %3082, %3093 ], [ %3924, %3905 ], [ %3976, %3941 ], [ %3082, %3987 ], [ %4004, %3989 ]
  %4025 = phi float [ %3083, %3874 ], [ %3083, %3274 ], [ %3083, %3073 ], [ %3083, %3093 ], [ %3925, %3905 ], [ %3977, %3941 ], [ %3083, %3987 ], [ %4005, %3989 ]
  %4026 = phi float [ %3084, %3874 ], [ %3084, %3274 ], [ %3084, %3073 ], [ %3084, %3093 ], [ %3926, %3905 ], [ %3978, %3941 ], [ %3084, %3987 ], [ %4006, %3989 ]
  %4027 = phi float [ %3085, %3874 ], [ %3085, %3274 ], [ %3085, %3073 ], [ %3085, %3093 ], [ %3936, %3905 ], [ %3984, %3941 ], [ %3085, %3987 ], [ %4012, %3989 ]
  %4028 = phi float [ %3086, %3874 ], [ %3086, %3274 ], [ %3086, %3073 ], [ %3086, %3093 ], [ %3937, %3905 ], [ %3985, %3941 ], [ %3086, %3987 ], [ %4013, %3989 ]
  %4029 = phi float [ %3087, %3874 ], [ %3087, %3274 ], [ %3087, %3073 ], [ %3087, %3093 ], [ %3938, %3905 ], [ %3986, %3941 ], [ %3087, %3987 ], [ %4014, %3989 ]
  %4030 = phi float [ %3881, %3874 ], [ %3088, %3274 ], [ %3088, %3073 ], [ %3088, %3093 ], [ %3881, %3905 ], [ %3881, %3941 ], [ %3881, %3987 ], [ %3881, %3989 ]
  %4031 = phi float [ %3089, %3874 ], [ %3089, %3274 ], [ %3089, %3073 ], [ %3089, %3093 ], [ %3917, %3905 ], [ %3972, %3941 ], [ %3089, %3987 ], [ %4000, %3989 ]
  %4032 = phi float [ %3090, %3874 ], [ %3090, %3274 ], [ %3090, %3073 ], [ %3090, %3093 ], [ %3914, %3905 ], [ %3949, %3941 ], [ %3090, %3987 ], [ %3997, %3989 ]
  %4033 = phi float [ %3091, %3874 ], [ %3091, %3274 ], [ %3091, %3073 ], [ %3091, %3093 ], [ %3929, %3905 ], [ %3980, %3941 ], [ %3091, %3987 ], [ %4008, %3989 ]
  %4034 = phi float [ %3882, %3874 ], [ %3092, %3274 ], [ %3092, %3073 ], [ %3092, %3093 ], [ %3882, %3905 ], [ %3882, %3941 ], [ %3882, %3987 ], [ %3882, %3989 ]
  %4035 = add i32 %49, 408
  %4036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.i32 %4036, 0
  %4038 = bitcast i32 %4037 to float
  %4039 = fcmp fast oge float %4038, 0.000000e+00
  %4040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.f32 %4040, 0
  %4042 = select i1 %4039, float %4038, float %4041
  %4043 = fadd fast float %4042, %201
  %4044 = and i32 %194, 65535
  %4045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4044)  ; LegacyF16ToF32(value)
  %4046 = lshr i32 %194, 16
  %4047 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4046)  ; LegacyF16ToF32(value)
  %4048 = and i32 %195, 65535
  %4049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4048)  ; LegacyF16ToF32(value)
  %4050 = fmul fast float %4045, %4018
  %4051 = fmul fast float %4047, %4019
  %4052 = fmul fast float %4049, %4020
  %4053 = shl i32 %196, 4
  %4054 = and i32 %4053, 32752
  %4055 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4054)  ; LegacyF16ToF32(value)
  %4056 = lshr i32 %196, 7
  %4057 = and i32 %4056, 32752
  %4058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4057)  ; LegacyF16ToF32(value)
  %4059 = lshr i32 %196, 22
  %4060 = shl nuw nsw i32 %4059, 5
  %4061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4060)  ; LegacyF16ToF32(value)
  %4062 = and i32 %197, 65535
  %4063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4062)  ; LegacyF16ToF32(value)
  %4064 = fmul fast float %4055, %4021
  %4065 = fmul fast float %4064, %4063
  %4066 = fmul fast float %4058, %4022
  %4067 = fmul fast float %4066, %4063
  %4068 = fmul fast float %4061, %4023
  %4069 = fmul fast float %4068, %4063
  %4070 = call float @dx.op.dot2.f32(i32 54, float %4016, float %4017, float %4016, float %4017)  ; Dot2(ax,ay,bx,by)
  %4071 = fmul fast float %4070, 0x3FE3333340000000
  %4072 = fsub fast float 1.000000e+00, %4071
  %4073 = call float @dx.op.dot3.f32(i32 55, float %4016, float %4017, float %4072, float %4016, float %4017, float %4072)  ; Dot3(ax,ay,az,bx,by,bz)
  %4074 = call float @dx.op.unary.f32(i32 25, float %4073)  ; Rsqrt(value)
  %4075 = fmul fast float %4074, %4016
  %4076 = fmul fast float %4074, %4017
  %4077 = fmul fast float %4072, %4074
  %4078 = fmul fast float %4077, %116
  %4079 = fmul fast float %4077, %117
  %4080 = fmul fast float %4077, %118
  %4081 = fmul fast float %4075, %80
  %4082 = fmul fast float %4075, %81
  %4083 = fmul fast float %4075, %82
  %4084 = fadd fast float %4078, %4081
  %4085 = fadd fast float %4079, %4082
  %4086 = fadd fast float %4080, %4083
  %4087 = fmul fast float %128, %4076
  %4088 = fmul fast float %129, %4076
  %4089 = fmul fast float %130, %4076
  %4090 = fadd fast float %4084, %4087
  %4091 = fadd fast float %4085, %4088
  %4092 = fadd fast float %4086, %4089
  %4093 = call float @dx.op.dot3.f32(i32 55, float %4090, float %4091, float %4092, float %4090, float %4091, float %4092)  ; Dot3(ax,ay,az,bx,by,bz)
  %4094 = call float @dx.op.unary.f32(i32 25, float %4093)  ; Rsqrt(value)
  %4095 = fmul fast float %4090, %4094
  %4096 = fmul fast float %4091, %4094
  %4097 = fmul fast float %4092, %4094
  %4098 = icmp eq i32 %51, 65535
  br i1 %4098, label %4697, label %4099

; <label>:4099                                    ; preds = %4015
  %4100 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4101 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %4102 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4103 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4104 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %4105 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4106 = fadd fast float %4100, %52
  %4107 = fadd fast float %4101, %53
  %4108 = fadd fast float %4102, %54
  %4109 = fadd fast float %4103, %52
  %4110 = fadd fast float %4104, %53
  %4111 = fadd fast float %4105, %54
  %4112 = mul i32 %51, 48
  %4113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4112, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = extractvalue %dx.types.ResRet.f32 %4113, 1
  %4116 = extractvalue %dx.types.ResRet.f32 %4113, 2
  %4117 = add i32 %4112, 16
  %4118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = extractvalue %dx.types.ResRet.f32 %4118, 1
  %4121 = extractvalue %dx.types.ResRet.f32 %4118, 2
  %4122 = add i32 %4112, 32
  %4123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.ResRet.f32 %4123, 1
  %4126 = extractvalue %dx.types.ResRet.f32 %4123, 2
  %4127 = extractvalue %dx.types.ResRet.f32 %4123, 3
  %4128 = bitcast float %4127 to i32
  %4129 = fmul fast float %4114, %52
  %4130 = fmul fast float %4115, %53
  %4131 = fmul fast float %4116, %54
  %4132 = fsub fast float %4129, %4119
  %4133 = fsub fast float %4130, %4120
  %4134 = fsub fast float %4131, %4121
  %4135 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4136 = call float @dx.op.unary.f32(i32 7, float %4133)  ; Saturate(value)
  %4137 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4138 = fmul fast float %4135, %4124
  %4139 = fmul fast float %4136, %4125
  %4140 = fmul fast float %4137, %4126
  %4141 = fadd fast float %4124, -1.000000e+00
  %4142 = fadd fast float %4125, -1.000000e+00
  %4143 = fadd fast float %4126, -1.000000e+00
  %4144 = call float @dx.op.unary.f32(i32 27, float %4138)  ; Round_ni(value)
  %4145 = call float @dx.op.unary.f32(i32 27, float %4139)  ; Round_ni(value)
  %4146 = call float @dx.op.unary.f32(i32 27, float %4140)  ; Round_ni(value)
  %4147 = call float @dx.op.binary.f32(i32 36, float %4144, float %4141)  ; FMin(a,b)
  %4148 = call float @dx.op.binary.f32(i32 36, float %4145, float %4142)  ; FMin(a,b)
  %4149 = call float @dx.op.binary.f32(i32 36, float %4146, float %4143)  ; FMin(a,b)
  %4150 = fmul fast float %4149, %4125
  %4151 = fadd fast float %4150, %4148
  %4152 = fmul fast float %4151, %4124
  %4153 = fadd fast float %4152, %4147
  %4154 = fptosi float %4153 to i32
  %4155 = add nsw i32 %4154, %4128
  %4156 = shl nsw i32 %4155, 2
  %4157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4156, i32 undef)  ; BufferLoad(srv,index,wot)
  %4158 = extractvalue %dx.types.ResRet.i32 %4157, 0
  %4159 = lshr i32 %4158, 16
  %4160 = icmp eq i32 %4159, 0
  br i1 %4160, label %4660, label %4161

; <label>:4161                                    ; preds = %4099
  br label %4162

; <label>:4162                                    ; preds = %4289, %4161
  %4163 = phi i32 [ %4191, %4289 ], [ %4159, %4161 ]
  %4164 = phi float [ %4290, %4289 ], [ 0.000000e+00, %4161 ]
  %4165 = phi float [ %4291, %4289 ], [ %4043, %4161 ]
  %4166 = phi float [ %4292, %4289 ], [ %4034, %4161 ]
  %4167 = phi float [ %4293, %4289 ], [ %4024, %4161 ]
  %4168 = phi float [ %4294, %4289 ], [ %4025, %4161 ]
  %4169 = phi float [ %4295, %4289 ], [ %4026, %4161 ]
  %4170 = phi float [ %4296, %4289 ], [ 0.000000e+00, %4161 ]
  %4171 = phi float [ %4297, %4289 ], [ 0.000000e+00, %4161 ]
  %4172 = phi float [ %4298, %4289 ], [ %4027, %4161 ]
  %4173 = phi float [ %4299, %4289 ], [ %4028, %4161 ]
  %4174 = phi float [ %4300, %4289 ], [ %4029, %4161 ]
  %4175 = phi float [ %4301, %4289 ], [ %4065, %4161 ]
  %4176 = phi float [ %4302, %4289 ], [ %4067, %4161 ]
  %4177 = phi float [ %4303, %4289 ], [ %4069, %4161 ]
  %4178 = phi float [ %4304, %4289 ], [ %4095, %4161 ]
  %4179 = phi float [ %4305, %4289 ], [ %4096, %4161 ]
  %4180 = phi float [ %4306, %4289 ], [ %4097, %4161 ]
  %4181 = phi float [ %4307, %4289 ], [ %4032, %4161 ]
  %4182 = phi float [ %4308, %4289 ], [ %4031, %4161 ]
  %4183 = phi float [ %4309, %4289 ], [ 0.000000e+00, %4161 ]
  %4184 = phi float [ %4310, %4289 ], [ %4030, %4161 ]
  %4185 = phi float [ %4311, %4289 ], [ %4050, %4161 ]
  %4186 = phi float [ %4312, %4289 ], [ %4051, %4161 ]
  %4187 = phi float [ %4313, %4289 ], [ %4052, %4161 ]
  %4188 = shl nuw nsw i32 %4163, 2
  %4189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.i32 %4189, 0
  %4191 = lshr i32 %4190, 16
  %4192 = shl i32 %4190, 8
  %4193 = and i32 %4192, 16776960
  %4194 = or i32 %4193, 48
  %4195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4194, i32 undef)  ; BufferLoad(srv,index,wot)
  %4196 = extractvalue %dx.types.ResRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.ResRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.ResRet.f32 %4195, 2
  %4199 = or i32 %4193, 64
  %4200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.i32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.i32 %4200, 1
  %4203 = or i32 %4193, 80
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 3
  %4207 = or i32 %4193, 96
  %4208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4207, i32 undef)  ; BufferLoad(srv,index,wot)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4213 = or i32 %4193, 112
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 2
  %4216 = or i32 %4193, 128
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.ResRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.ResRet.f32 %4217, 2
  %4221 = extractvalue %dx.types.ResRet.f32 %4217, 3
  %4222 = or i32 %4193, 144
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = extractvalue %dx.types.ResRet.f32 %4223, 1
  %4226 = extractvalue %dx.types.ResRet.f32 %4223, 2
  %4227 = extractvalue %dx.types.ResRet.f32 %4223, 3
  %4228 = or i32 %4193, 160
  %4229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.ResRet.f32 %4229, 1
  %4232 = extractvalue %dx.types.ResRet.f32 %4229, 2
  %4233 = extractvalue %dx.types.ResRet.f32 %4229, 3
  %4234 = or i32 %4193, 192
  %4235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.i32 %4235, 0
  %4237 = or i32 %4193, 208
  %4238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = or i32 %4193, 248
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.ResRet.f32 %4241, 1
  %4244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = extractvalue %dx.types.ResRet.f32 %4244, 1
  %4247 = extractvalue %dx.types.ResRet.f32 %4244, 2
  %4248 = extractvalue %dx.types.ResRet.f32 %4244, 3
  %4249 = call float @dx.op.dot4.f32(i32 56, float %4245, float %4246, float %4247, float %4248, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4250 = or i32 %4193, 16
  %4251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4250, i32 undef)  ; BufferLoad(srv,index,wot)
  %4252 = extractvalue %dx.types.ResRet.f32 %4251, 0
  %4253 = extractvalue %dx.types.ResRet.f32 %4251, 1
  %4254 = extractvalue %dx.types.ResRet.f32 %4251, 2
  %4255 = extractvalue %dx.types.ResRet.f32 %4251, 3
  %4256 = call float @dx.op.dot4.f32(i32 56, float %4252, float %4253, float %4254, float %4255, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4257 = or i32 %4193, 32
  %4258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4257, i32 undef)  ; BufferLoad(srv,index,wot)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.ResRet.f32 %4258, 2
  %4262 = extractvalue %dx.types.ResRet.f32 %4258, 3
  %4263 = call float @dx.op.dot4.f32(i32 56, float %4259, float %4260, float %4261, float %4262, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4264 = call float @dx.op.unary.f32(i32 27, float %4249)  ; Round_ni(value)
  %4265 = call float @dx.op.unary.f32(i32 6, float %4264)  ; FAbs(value)
  %4266 = call float @dx.op.unary.f32(i32 27, float %4256)  ; Round_ni(value)
  %4267 = call float @dx.op.unary.f32(i32 6, float %4266)  ; FAbs(value)
  %4268 = call float @dx.op.unary.f32(i32 6, float %4263)  ; FAbs(value)
  %4269 = call float @dx.op.unary.f32(i32 27, float %4268)  ; Round_ni(value)
  %4270 = fadd fast float %4267, %4265
  %4271 = fadd fast float %4270, %4269
  %4272 = fcmp fast oeq float %4271, 0.000000e+00
  %4273 = call float @dx.op.dot4.f32(i32 56, float %4245, float %4246, float %4247, float %4248, float %4106, float %4107, float %4108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4274 = call float @dx.op.dot4.f32(i32 56, float %4252, float %4253, float %4254, float %4255, float %4106, float %4107, float %4108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4275 = call float @dx.op.dot4.f32(i32 56, float %4245, float %4246, float %4247, float %4248, float %4109, float %4110, float %4111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4276 = call float @dx.op.dot4.f32(i32 56, float %4252, float %4253, float %4254, float %4255, float %4109, float %4110, float %4111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4277 = fsub fast float %4273, %4249
  %4278 = fsub fast float %4275, %4249
  %4279 = fsub fast float %4274, %4256
  %4280 = fsub fast float %4276, %4256
  %4281 = call float @dx.op.dot3.f32(i32 55, float %4196, float %4197, float %4198, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4283 = extractvalue %dx.types.CBufRet.f32 %4282, 2
  %4284 = fadd fast float %4283, %4281
  %4285 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4282, 0
  %4287 = fcmp fast ogt float %4285, %4286
  %4288 = and i1 %4272, %4287
  br i1 %4288, label %4315, label %4289

; <label>:4289                                    ; preds = %4646, %4398, %4315, %4162
  %4290 = phi float [ %4164, %4315 ], [ %4401, %4398 ], [ %4401, %4646 ], [ %4164, %4162 ]
  %4291 = phi float [ %4165, %4315 ], [ %4165, %4398 ], [ %4622, %4646 ], [ %4165, %4162 ]
  %4292 = phi float [ %4166, %4315 ], [ %4166, %4398 ], [ %4620, %4646 ], [ %4166, %4162 ]
  %4293 = phi float [ %4167, %4315 ], [ %4167, %4398 ], [ %4598, %4646 ], [ %4167, %4162 ]
  %4294 = phi float [ %4168, %4315 ], [ %4168, %4398 ], [ %4599, %4646 ], [ %4168, %4162 ]
  %4295 = phi float [ %4169, %4315 ], [ %4169, %4398 ], [ %4600, %4646 ], [ %4169, %4162 ]
  %4296 = phi float [ %4170, %4315 ], [ %4170, %4398 ], [ %4525, %4646 ], [ %4170, %4162 ]
  %4297 = phi float [ %4171, %4315 ], [ %4171, %4398 ], [ %4523, %4646 ], [ %4171, %4162 ]
  %4298 = phi float [ %4172, %4315 ], [ %4172, %4398 ], [ %4568, %4646 ], [ %4172, %4162 ]
  %4299 = phi float [ %4173, %4315 ], [ %4173, %4398 ], [ %4569, %4646 ], [ %4173, %4162 ]
  %4300 = phi float [ %4174, %4315 ], [ %4174, %4398 ], [ %4570, %4646 ], [ %4174, %4162 ]
  %4301 = phi float [ %4175, %4315 ], [ %4175, %4398 ], [ %4656, %4646 ], [ %4175, %4162 ]
  %4302 = phi float [ %4176, %4315 ], [ %4176, %4398 ], [ %4657, %4646 ], [ %4176, %4162 ]
  %4303 = phi float [ %4177, %4315 ], [ %4177, %4398 ], [ %4658, %4646 ], [ %4177, %4162 ]
  %4304 = phi float [ %4178, %4315 ], [ %4178, %4398 ], [ %4504, %4646 ], [ %4178, %4162 ]
  %4305 = phi float [ %4179, %4315 ], [ %4179, %4398 ], [ %4505, %4646 ], [ %4179, %4162 ]
  %4306 = phi float [ %4180, %4315 ], [ %4180, %4398 ], [ %4506, %4646 ], [ %4180, %4162 ]
  %4307 = phi float [ %4181, %4315 ], [ %4181, %4398 ], [ %4578, %4646 ], [ %4181, %4162 ]
  %4308 = phi float [ %4182, %4315 ], [ %4182, %4398 ], [ %4575, %4646 ], [ %4182, %4162 ]
  %4309 = phi float [ %4183, %4315 ], [ %4183, %4398 ], [ %4572, %4646 ], [ %4183, %4162 ]
  %4310 = phi float [ %4184, %4315 ], [ %4184, %4398 ], [ %4521, %4646 ], [ %4184, %4162 ]
  %4311 = phi float [ %4185, %4315 ], [ %4185, %4398 ], [ %4516, %4646 ], [ %4185, %4162 ]
  %4312 = phi float [ %4186, %4315 ], [ %4186, %4398 ], [ %4517, %4646 ], [ %4186, %4162 ]
  %4313 = phi float [ %4187, %4315 ], [ %4187, %4398 ], [ %4518, %4646 ], [ %4187, %4162 ]
  %4314 = icmp eq i32 %4191, 0
  br i1 %4314, label %4659, label %4162

; <label>:4315                                    ; preds = %4162
  %4316 = extractvalue %dx.types.ResRet.f32 %4195, 3
  %4317 = extractvalue %dx.types.ResRet.f32 %4214, 3
  %4318 = extractvalue %dx.types.ResRet.f32 %4214, 1
  %4319 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4320 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4321 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4322 = extractvalue %dx.types.ResRet.i32 %4200, 3
  %4323 = extractvalue %dx.types.ResRet.i32 %4200, 2
  %4324 = bitcast float %4316 to i32
  %4325 = add i32 %4322, 0
  %4326 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4325, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4326, %dx.types.Handle %4327, float %4249, float %4256, float undef, float undef, i32 0, i32 0, i32 undef, float %4277, float %4279, float undef, float %4278, float %4280, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = fmul fast float %4329, %4321
  %4331 = fadd fast float %4330, %4320
  %4332 = call float @dx.op.unary.f32(i32 7, float %4331)  ; Saturate(value)
  %4333 = fmul fast float %4249, %4209
  %4334 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4256, float %4333)  ; FMad(a,b,c)
  %4335 = fadd fast float %4334, %4319
  %4336 = fmul fast float %4249, %4211
  %4337 = call float @dx.op.tertiary.f32(i32 46, float %4212, float %4256, float %4336)  ; FMad(a,b,c)
  %4338 = fadd fast float %4337, %4318
  %4339 = fmul fast float %4277, %4209
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4279, float %4339)  ; FMad(a,b,c)
  %4341 = fmul fast float %4277, %4211
  %4342 = call float @dx.op.tertiary.f32(i32 46, float %4212, float %4279, float %4341)  ; FMad(a,b,c)
  %4343 = fmul fast float %4278, %4209
  %4344 = call float @dx.op.tertiary.f32(i32 46, float %4210, float %4280, float %4343)  ; FMad(a,b,c)
  %4345 = fmul fast float %4278, %4211
  %4346 = call float @dx.op.tertiary.f32(i32 46, float %4212, float %4280, float %4345)  ; FMad(a,b,c)
  %4347 = add i32 %4323, 0
  %4348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4347, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4349 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4348, %dx.types.Handle %4327, float %4335, float %4338, float undef, float undef, i32 0, i32 0, i32 undef, float %4340, float %4342, float undef, float %4344, float %4346, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = and i32 %4324, 1024
  %4352 = icmp ne i32 %4351, 0
  %4353 = fcmp fast ogt float %4350, 0x3FE0101020000000
  %4354 = uitofp i1 %4353 to float
  %4355 = select i1 %4352, float %4354, float %4350
  %4356 = and i32 %4324, 8192
  %4357 = icmp ne i32 %4356, 0
  %4358 = select i1 %4357, float %4317, float 1.000000e+00
  %4359 = fmul fast float %4249, 2.000000e+00
  %4360 = fadd fast float %4359, -1.000000e+00
  %4361 = call float @dx.op.unary.f32(i32 6, float %4360)  ; FAbs(value)
  %4362 = fmul fast float %4361, %4242
  %4363 = fsub fast float %4362, %4242
  %4364 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4365 = fmul fast float %4256, 2.000000e+00
  %4366 = fadd fast float %4365, -1.000000e+00
  %4367 = call float @dx.op.unary.f32(i32 6, float %4366)  ; FAbs(value)
  %4368 = fmul fast float %4367, %4243
  %4369 = fsub fast float %4368, %4243
  %4370 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4371 = fmul fast float %4268, %4205
  %4372 = fsub fast float %4371, %4205
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = fmul fast float %4332, %4358
  %4375 = fmul fast float %4374, %4329
  %4376 = fmul fast float %4375, %4364
  %4377 = fmul fast float %4376, %4355
  %4378 = fmul fast float %4377, %4370
  %4379 = fmul fast float %4378, %4373
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4382 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4383 = fsub fast float %4285, %4382
  %4384 = fmul fast float %4383, %4381
  %4385 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4386 = fmul fast float %4379, %4206
  %4387 = fadd fast float %4379, %4206
  %4388 = fmul fast float %4387, %4215
  %4389 = fsub fast float %4388, %4215
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = and i32 %4324, 128
  %4392 = icmp ne i32 %4391, 0
  %4393 = select i1 %4392, float %4390, float %4386
  %4394 = fmul fast float %4393, %4385
  %4395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4396 = extractvalue %dx.types.CBufRet.f32 %4395, 0
  %4397 = fcmp fast ugt float %4394, %4396
  br i1 %4397, label %4398, label %4289

; <label>:4398                                    ; preds = %4315
  %4399 = select i1 %4357, float %4394, float 0.000000e+00
  %4400 = fadd fast float %4399, %4164
  %4401 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  br i1 %4357, label %4289, label %4402

; <label>:4402                                    ; preds = %4398
  %4403 = and i32 %4324, 4
  %4404 = and i32 %4324, 8
  %4405 = add i32 %4201, 0
  %4406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4405, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4408 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4406, %dx.types.Handle %4407, float %4335, float %4338, float undef, float undef, i32 0, i32 0, i32 undef, float %4340, float %4342, float undef, float %4344, float %4346, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.ResRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.ResRet.f32 %4408, 2
  %4412 = extractvalue %dx.types.ResRet.f32 %4408, 3
  %4413 = bitcast float %4227 to i32
  %4414 = and i32 %4413, 255
  %4415 = uitofp i32 %4414 to float
  %4416 = lshr i32 %4413, 8
  %4417 = and i32 %4416, 255
  %4418 = uitofp i32 %4417 to float
  %4419 = fmul fast float %4412, %4415
  %4420 = fadd fast float %4419, %4418
  %4421 = fmul fast float %4420, 0x3F70101000000000
  %4422 = add i32 %4202, 0
  %4423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4422, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4424 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4423, %dx.types.Handle %4407, float %4335, float %4338, float undef, float undef, i32 0, i32 0, i32 undef, float %4340, float %4342, float undef, float %4344, float %4346, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4425 = extractvalue %dx.types.ResRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.ResRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.ResRet.f32 %4424, 2
  %4428 = extractvalue %dx.types.ResRet.f32 %4424, 3
  %4429 = bitcast float %4221 to i32
  %4430 = and i32 %4429, 255
  %4431 = uitofp i32 %4430 to float
  %4432 = lshr i32 %4429, 8
  %4433 = and i32 %4432, 255
  %4434 = uitofp i32 %4433 to float
  %4435 = lshr i32 %4429, 16
  %4436 = and i32 %4435, 255
  %4437 = uitofp i32 %4436 to float
  %4438 = fmul fast float %4437, 0x3F70101000000000
  %4439 = fmul fast float %4425, %4431
  %4440 = fadd fast float %4439, %4434
  %4441 = fmul fast float %4440, 0x3F70101000000000
  %4442 = fadd fast float %4426, -5.000000e-01
  %4443 = fadd fast float %4428, -5.000000e-01
  %4444 = fmul fast float %4442, %4438
  %4445 = fmul fast float %4443, %4438
  %4446 = fadd fast float %4444, 5.000000e-01
  %4447 = fadd fast float %4445, 5.000000e-01
  %4448 = fmul fast float %4409, %4230
  %4449 = fmul fast float %4410, %4231
  %4450 = fmul fast float %4411, %4232
  %4451 = fmul fast float %4446, 2.000000e+00
  %4452 = fadd fast float %4451, -1.000000e+00
  %4453 = fmul fast float %4447, 2.000000e+00
  %4454 = fadd fast float %4453, -1.000000e+00
  %4455 = fadd fast float %4452, %4454
  %4456 = fmul fast float %4455, 5.000000e-01
  %4457 = fsub fast float %4452, %4454
  %4458 = fmul fast float %4457, 5.000000e-01
  %4459 = call float @dx.op.unary.f32(i32 6, float %4456)  ; FAbs(value)
  %4460 = fsub fast float 1.000000e+00, %4459
  %4461 = call float @dx.op.unary.f32(i32 6, float %4458)  ; FAbs(value)
  %4462 = fsub fast float %4460, %4461
  %4463 = call float @dx.op.dot3.f32(i32 55, float %4456, float %4458, float %4462, float %4456, float %4458, float %4462)  ; Dot3(ax,ay,az,bx,by,bz)
  %4464 = call float @dx.op.unary.f32(i32 25, float %4463)  ; Rsqrt(value)
  %4465 = fmul fast float %4456, %4464
  %4466 = fmul fast float %4458, %4464
  %4467 = fmul fast float %4464, %4462
  %4468 = fmul fast float %4467, %4196
  %4469 = fmul fast float %4467, %4197
  %4470 = fmul fast float %4467, %4198
  %4471 = fmul fast float %4465, %4218
  %4472 = fmul fast float %4465, %4219
  %4473 = fmul fast float %4465, %4220
  %4474 = fadd fast float %4471, %4468
  %4475 = fadd fast float %4472, %4469
  %4476 = fadd fast float %4473, %4470
  %4477 = fmul fast float %4466, %4224
  %4478 = fmul fast float %4466, %4225
  %4479 = fmul fast float %4466, %4226
  %4480 = fadd fast float %4474, %4477
  %4481 = fadd fast float %4475, %4478
  %4482 = fadd fast float %4476, %4479
  %4483 = call float @dx.op.dot3.f32(i32 55, float %4480, float %4481, float %4482, float %4480, float %4481, float %4482)  ; Dot3(ax,ay,az,bx,by,bz)
  %4484 = call float @dx.op.unary.f32(i32 25, float %4483)  ; Rsqrt(value)
  %4485 = fmul fast float %4480, %4484
  %4486 = fmul fast float %4481, %4484
  %4487 = fmul fast float %4482, %4484
  %4488 = icmp ne i32 %4404, 0
  %4489 = select i1 %4488, float 1.000000e+00, float 0.000000e+00
  %4490 = fmul fast float %4394, %4489
  %4491 = and i32 %4324, 1
  %4492 = icmp eq i32 %4491, 0
  br i1 %4492, label %4493, label %4497

; <label>:4493                                    ; preds = %4402
  %4494 = fsub fast float %4485, %4178
  %4495 = fsub fast float %4486, %4179
  %4496 = fsub fast float %4487, %4180
  br label %4497

; <label>:4497                                    ; preds = %4493, %4402
  %4498 = phi float [ %4494, %4493 ], [ %4485, %4402 ]
  %4499 = phi float [ %4495, %4493 ], [ %4486, %4402 ]
  %4500 = phi float [ %4496, %4493 ], [ %4487, %4402 ]
  %4501 = fmul float %4500, %4490
  %4502 = fmul float %4499, %4490
  %4503 = fmul float %4498, %4490
  %4504 = fadd fast float %4503, %4178
  %4505 = fadd fast float %4502, %4179
  %4506 = fadd fast float %4501, %4180
  %4507 = icmp ne i32 %4403, 0
  %4508 = select i1 %4507, float 1.000000e+00, float 0.000000e+00
  %4509 = fmul fast float %4394, %4508
  %4510 = fsub fast float %4448, %4185
  %4511 = fsub fast float %4449, %4186
  %4512 = fsub fast float %4450, %4187
  %4513 = fmul fast float %4510, %4509
  %4514 = fmul fast float %4511, %4509
  %4515 = fmul fast float %4512, %4509
  %4516 = fadd fast float %4513, %4185
  %4517 = fadd fast float %4514, %4186
  %4518 = fadd fast float %4515, %4187
  %4519 = fsub fast float %4421, %4184
  %4520 = fmul fast float %4519, %4509
  %4521 = fadd fast float %4520, %4184
  %4522 = fmul fast float %4509, %4171
  %4523 = fsub fast float %4171, %4522
  %4524 = fmul fast float %4509, %4170
  %4525 = fsub fast float %4170, %4524
  %4526 = bitcast float %4239 to i32
  %4527 = lshr i32 %4526, 16
  %4528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4527)  ; LegacyF16ToF32(value)
  %4529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4530 = extractvalue %dx.types.ResRet.i32 %4529, 0
  %4531 = and i32 %4530, 1
  %4532 = icmp eq i32 %4531, 0
  br i1 %4532, label %4533, label %4558

; <label>:4533                                    ; preds = %4497
  %4534 = fadd fast float %4421, 0xBFB99999A0000000
  %4535 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4536 = fmul fast float %4535, 0x3FF1C71C80000000
  %4537 = fsub fast float 1.000000e+00, %4536
  %4538 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4539 = fmul fast float %4538, %4448
  %4540 = fmul fast float %4538, %4449
  %4541 = fmul fast float %4538, %4450
  %4542 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4543 = call float @dx.op.unary.f32(i32 7, float %4540)  ; Saturate(value)
  %4544 = call float @dx.op.unary.f32(i32 7, float %4541)  ; Saturate(value)
  %4545 = call float @dx.op.binary.f32(i32 35, float %4543, float %4544)  ; FMax(a,b)
  %4546 = call float @dx.op.binary.f32(i32 35, float %4542, float %4545)  ; FMax(a,b)
  %4547 = fcmp fast ogt float %4546, 0.000000e+00
  %4548 = bitcast float %4546 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = select i1 %4547, float %4550, float 0.000000e+00
  %4552 = fmul fast float %4542, %4528
  %4553 = fmul fast float %4543, %4528
  %4554 = fmul fast float %4544, %4528
  %4555 = fmul fast float %4552, %4551
  %4556 = fmul fast float %4553, %4551
  %4557 = fmul fast float %4554, %4551
  br label %4558

; <label>:4558                                    ; preds = %4533, %4497
  %4559 = phi float [ %4528, %4497 ], [ %4555, %4533 ]
  %4560 = phi float [ %4528, %4497 ], [ %4556, %4533 ]
  %4561 = phi float [ %4528, %4497 ], [ %4557, %4533 ]
  %4562 = fsub fast float %4559, %4172
  %4563 = fsub fast float %4560, %4173
  %4564 = fsub fast float %4561, %4174
  %4565 = fmul fast float %4562, %4509
  %4566 = fmul fast float %4563, %4509
  %4567 = fmul fast float %4564, %4509
  %4568 = fadd fast float %4565, %4172
  %4569 = fadd fast float %4566, %4173
  %4570 = fadd fast float %4567, %4174
  %4571 = fadd fast float %4394, %4183
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = fsub fast float %4441, %4182
  %4574 = fmul fast float %4573, %4490
  %4575 = fadd fast float %4574, %4182
  %4576 = fsub fast float %4427, %4181
  %4577 = fmul fast float %4576, %4490
  %4578 = fadd fast float %4577, %4181
  br i1 %4492, label %4587, label %4579

; <label>:4579                                    ; preds = %4558
  %4580 = and i32 %4324, 32768
  %4581 = icmp eq i32 %4580, 0
  br i1 %4581, label %4597, label %4582

; <label>:4582                                    ; preds = %4579
  %4583 = fmul fast float %4490, 1.270000e+02
  %4584 = fadd fast float %4583, %4167
  %4585 = fadd fast float %4583, %4168
  %4586 = fadd fast float %4583, %4169
  br label %4597

; <label>:4587                                    ; preds = %4558
  %4588 = fsub fast float 1.270000e+02, %4167
  %4589 = fsub fast float 1.270000e+02, %4168
  %4590 = fsub fast float 1.270000e+02, %4169
  %4591 = fmul fast float %4490, %4588
  %4592 = fmul fast float %4490, %4589
  %4593 = fmul fast float %4490, %4590
  %4594 = fadd fast float %4591, %4167
  %4595 = fadd fast float %4592, %4168
  %4596 = fadd fast float %4593, %4169
  br label %4597

; <label>:4597                                    ; preds = %4587, %4582, %4579
  %4598 = phi float [ %4584, %4582 ], [ %4167, %4579 ], [ %4594, %4587 ]
  %4599 = phi float [ %4585, %4582 ], [ %4168, %4579 ], [ %4595, %4587 ]
  %4600 = phi float [ %4586, %4582 ], [ %4169, %4579 ], [ %4596, %4587 ]
  %4601 = call float @dx.op.dot3.f32(i32 55, float %4448, float %4449, float %4450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4603 = extractvalue %dx.types.CBufRet.f32 %4602, 0
  %4604 = extractvalue %dx.types.CBufRet.f32 %4602, 1
  %4605 = fmul fast float %4604, %4601
  %4606 = fadd fast float %4605, %4603
  %4607 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4608 = bitcast float %4233 to i32
  %4609 = and i32 %4608, 65535
  %4610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4609)  ; LegacyF16ToF32(value)
  %4611 = lshr i32 %4608, 16
  %4612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4611)  ; LegacyF16ToF32(value)
  %4613 = fcmp fast oge float %4610, 0.000000e+00
  %4614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4615 = extractvalue %dx.types.CBufRet.f32 %4614, 0
  %4616 = select i1 %4613, float %4610, float %4615
  %4617 = fadd fast float %4616, %4612
  %4618 = fsub fast float %4607, %4166
  %4619 = fmul fast float %4618, %4394
  %4620 = fadd fast float %4619, %4166
  %4621 = fmul fast float %4617, %4394
  %4622 = call float @dx.op.binary.f32(i32 35, float %4165, float %4621)  ; FMax(a,b)
  %4623 = and i32 %4324, 16
  %4624 = icmp eq i32 %4623, 0
  br i1 %4624, label %4646, label %4625

; <label>:4625                                    ; preds = %4597
  %4626 = add i32 %4236, 0
  %4627 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4626, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4628 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4627, %dx.types.Handle %4407, float %4335, float %4338, float undef, float undef, i32 0, i32 0, i32 undef, float %4340, float %4342, float undef, float %4344, float %4346, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4629 = extractvalue %dx.types.ResRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.ResRet.f32 %4628, 1
  %4631 = extractvalue %dx.types.ResRet.f32 %4628, 2
  %4632 = and i32 %4526, 65535
  %4633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4632)  ; LegacyF16ToF32(value)
  %4634 = fmul fast float %4629, %4230
  %4635 = fmul fast float %4630, %4231
  %4636 = fmul fast float %4631, %4232
  %4637 = and i32 %4324, 16384
  %4638 = icmp ne i32 %4637, 0
  %4639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.f32 %4639, 0
  %4641 = select i1 %4638, float %4640, float 1.000000e+00
  %4642 = fmul fast float %4641, %4633
  %4643 = fmul fast float %4634, %4642
  %4644 = fmul fast float %4635, %4642
  %4645 = fmul fast float %4636, %4642
  br label %4646

; <label>:4646                                    ; preds = %4625, %4597
  %4647 = phi float [ %4643, %4625 ], [ 0.000000e+00, %4597 ]
  %4648 = phi float [ %4644, %4625 ], [ 0.000000e+00, %4597 ]
  %4649 = phi float [ %4645, %4625 ], [ 0.000000e+00, %4597 ]
  %4650 = fsub fast float %4647, %4175
  %4651 = fsub fast float %4648, %4176
  %4652 = fsub fast float %4649, %4177
  %4653 = fmul fast float %4650, %4394
  %4654 = fmul fast float %4651, %4394
  %4655 = fmul fast float %4652, %4394
  %4656 = fadd fast float %4653, %4175
  %4657 = fadd fast float %4654, %4176
  %4658 = fadd fast float %4655, %4177
  br label %4289

; <label>:4659                                    ; preds = %4289
  br label %4660

; <label>:4660                                    ; preds = %4659, %4099
  %4661 = phi float [ 0.000000e+00, %4099 ], [ %4290, %4659 ]
  %4662 = phi float [ %4043, %4099 ], [ %4291, %4659 ]
  %4663 = phi float [ %4034, %4099 ], [ %4292, %4659 ]
  %4664 = phi float [ %4024, %4099 ], [ %4293, %4659 ]
  %4665 = phi float [ %4025, %4099 ], [ %4294, %4659 ]
  %4666 = phi float [ %4026, %4099 ], [ %4295, %4659 ]
  %4667 = phi float [ 0.000000e+00, %4099 ], [ %4296, %4659 ]
  %4668 = phi float [ 0.000000e+00, %4099 ], [ %4297, %4659 ]
  %4669 = phi float [ %4027, %4099 ], [ %4298, %4659 ]
  %4670 = phi float [ %4028, %4099 ], [ %4299, %4659 ]
  %4671 = phi float [ %4029, %4099 ], [ %4300, %4659 ]
  %4672 = phi float [ %4065, %4099 ], [ %4301, %4659 ]
  %4673 = phi float [ %4067, %4099 ], [ %4302, %4659 ]
  %4674 = phi float [ %4069, %4099 ], [ %4303, %4659 ]
  %4675 = phi float [ %4095, %4099 ], [ %4304, %4659 ]
  %4676 = phi float [ %4096, %4099 ], [ %4305, %4659 ]
  %4677 = phi float [ %4097, %4099 ], [ %4306, %4659 ]
  %4678 = phi float [ %4032, %4099 ], [ %4307, %4659 ]
  %4679 = phi float [ %4031, %4099 ], [ %4308, %4659 ]
  %4680 = phi float [ 0.000000e+00, %4099 ], [ %4309, %4659 ]
  %4681 = phi float [ %4030, %4099 ], [ %4310, %4659 ]
  %4682 = phi float [ %4050, %4099 ], [ %4311, %4659 ]
  %4683 = phi float [ %4051, %4099 ], [ %4312, %4659 ]
  %4684 = phi float [ %4052, %4099 ], [ %4313, %4659 ]
  %4685 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %4677, float %4675, float %4676, float %4677)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = call float @dx.op.unary.f32(i32 25, float %4685)  ; Rsqrt(value)
  %4687 = fmul fast float %4686, %4675
  %4688 = fmul fast float %4686, %4676
  %4689 = fmul fast float %4686, %4677
  %4690 = fadd fast float %4680, %1204
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4687, float %4688, float %4689, float %4687, float %4688, float %4689)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call float @dx.op.unary.f32(i32 25, float %4692)  ; Rsqrt(value)
  %4694 = fmul fast float %4693, %4687
  %4695 = fmul fast float %4693, %4688
  %4696 = fmul fast float %4693, %4689
  br label %4697

; <label>:4697                                    ; preds = %4660, %4015
  %4698 = phi float [ %4694, %4660 ], [ %4095, %4015 ]
  %4699 = phi float [ %4695, %4660 ], [ %4096, %4015 ]
  %4700 = phi float [ %4696, %4660 ], [ %4097, %4015 ]
  %4701 = phi float [ %4682, %4660 ], [ %4050, %4015 ]
  %4702 = phi float [ %4683, %4660 ], [ %4051, %4015 ]
  %4703 = phi float [ %4684, %4660 ], [ %4052, %4015 ]
  %4704 = phi float [ %4672, %4660 ], [ %4065, %4015 ]
  %4705 = phi float [ %4673, %4660 ], [ %4067, %4015 ]
  %4706 = phi float [ %4674, %4660 ], [ %4069, %4015 ]
  %4707 = phi float [ %4669, %4660 ], [ %4027, %4015 ]
  %4708 = phi float [ %4670, %4660 ], [ %4028, %4015 ]
  %4709 = phi float [ %4671, %4660 ], [ %4029, %4015 ]
  %4710 = phi float [ %4664, %4660 ], [ %4024, %4015 ]
  %4711 = phi float [ %4665, %4660 ], [ %4025, %4015 ]
  %4712 = phi float [ %4666, %4660 ], [ %4026, %4015 ]
  %4713 = phi float [ %4681, %4660 ], [ %4030, %4015 ]
  %4714 = phi float [ %4691, %4660 ], [ %1204, %4015 ]
  %4715 = phi float [ %4679, %4660 ], [ %4031, %4015 ]
  %4716 = phi float [ %4678, %4660 ], [ %4032, %4015 ]
  %4717 = phi float [ %4668, %4660 ], [ 0.000000e+00, %4015 ]
  %4718 = phi float [ %4667, %4660 ], [ 0.000000e+00, %4015 ]
  %4719 = phi float [ %4661, %4660 ], [ 0.000000e+00, %4015 ]
  %4720 = phi float [ %4662, %4660 ], [ %4043, %4015 ]
  %4721 = phi float [ %4663, %4660 ], [ %4034, %4015 ]
  %4722 = add i32 %49, 392
  %4723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4722, i32 undef)  ; BufferLoad(srv,index,wot)
  %4724 = extractvalue %dx.types.ResRet.i32 %4723, 0
  %4725 = extractvalue %dx.types.ResRet.i32 %4723, 1
  %4726 = extractvalue %dx.types.ResRet.i32 %4723, 2
  %4727 = extractvalue %dx.types.ResRet.i32 %4723, 3
  %4728 = bitcast i32 %4724 to float
  %4729 = bitcast i32 %4725 to float
  %4730 = bitcast i32 %4726 to float
  %4731 = bitcast i32 %4727 to float
  %4732 = fsub fast float %4701, %4728
  %4733 = fsub fast float %4702, %4729
  %4734 = fsub fast float %4703, %4730
  %4735 = fmul fast float %4732, %233
  %4736 = fmul fast float %4733, %233
  %4737 = fmul fast float %4734, %233
  %4738 = fadd fast float %4735, %4728
  %4739 = fadd fast float %4736, %4729
  %4740 = fadd fast float %4737, %4730
  %4741 = fsub fast float %4714, %4731
  %4742 = fmul fast float %4741, %233
  %4743 = fadd fast float %4742, %4731
  %4744 = fadd fast float %4713, 0xBFB99999A0000000
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4745, 0x3FF1C71C80000000
  %4747 = call float @dx.op.binary.f32(i32 36, float %4713, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4748 = fsub fast float 1.000000e+00, %4746
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = fmul fast float %4738, %4749
  %4751 = fmul fast float %4739, %4749
  %4752 = fmul fast float %4740, %4749
  %4753 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4755 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4756 = fmul fast float %4738, %4746
  %4757 = fmul fast float %4739, %4746
  %4758 = fmul fast float %4740, %4746
  %4759 = fadd fast float %4756, %4747
  %4760 = fadd fast float %4757, %4747
  %4761 = fadd fast float %4758, %4747
  %4762 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4763 = call float @dx.op.unary.f32(i32 7, float %4760)  ; Saturate(value)
  %4764 = call float @dx.op.unary.f32(i32 7, float %4761)  ; Saturate(value)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4767 = extractvalue %dx.types.ResRet.i32 %4766, 0
  %4768 = and i32 %4767, 1
  %4769 = icmp eq i32 %4768, 0
  br i1 %4769, label %4784, label %4770

; <label>:4770                                    ; preds = %4697
  %4771 = call float @dx.op.binary.f32(i32 35, float %4754, float %4755)  ; FMax(a,b)
  %4772 = call float @dx.op.binary.f32(i32 35, float %4753, float %4771)  ; FMax(a,b)
  %4773 = fcmp fast ogt float %4772, 0.000000e+00
  %4774 = bitcast float %4772 to i32
  %4775 = sub nsw i32 2129859010, %4774
  %4776 = bitcast i32 %4775 to float
  %4777 = select i1 %4773, float %4776, float 0.000000e+00
  %4778 = fmul fast float %4753, %4707
  %4779 = fmul fast float %4754, %4708
  %4780 = fmul fast float %4755, %4709
  %4781 = fmul fast float %4778, %4777
  %4782 = fmul fast float %4779, %4777
  %4783 = fmul fast float %4780, %4777
  br label %4784

; <label>:4784                                    ; preds = %4770, %4697
  %4785 = phi float [ %4781, %4770 ], [ %4707, %4697 ]
  %4786 = phi float [ %4782, %4770 ], [ %4708, %4697 ]
  %4787 = phi float [ %4783, %4770 ], [ %4709, %4697 ]
  %4788 = call float @dx.op.binary.f32(i32 36, float %4710, float 1.270000e+02)  ; FMin(a,b)
  %4789 = call float @dx.op.binary.f32(i32 36, float %4711, float 1.270000e+02)  ; FMin(a,b)
  %4790 = call float @dx.op.binary.f32(i32 36, float %4712, float 1.270000e+02)  ; FMin(a,b)
  %4791 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.i32 %4791, 3
  %4793 = and i32 %4792, 8
  %4794 = icmp ne i32 %4793, 0
  %4795 = call float @dx.op.binary.f32(i32 35, float %4753, float %4738)  ; FMax(a,b)
  %4796 = call float @dx.op.binary.f32(i32 35, float %4754, float %4738)  ; FMax(a,b)
  %4797 = call float @dx.op.binary.f32(i32 35, float %4755, float %4738)  ; FMax(a,b)
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4753, float %4754, float %4755, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = select i1 %292, float %4738, float %4753
  %4800 = select i1 %292, float %4798, float %4754
  %4801 = select i1 %292, float 1.000000e+00, float %4755
  %4802 = select i1 %4794, float %4795, float %4799
  %4803 = select i1 %4794, float %4796, float %4800
  %4804 = select i1 %4794, float %4797, float %4801
  %4805 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = select i1 %292, float %4805, float %4785
  %4807 = select i1 %292, float %4805, float %4786
  %4808 = select i1 %292, float %4805, float %4787
  %4809 = and i32 %268, 3
  %4810 = select i1 %262, i32 %4809, i32 0
  %4811 = icmp eq i32 %4810, 1
  br i1 %4811, label %4812, label %4888

; <label>:4812                                    ; preds = %4784
  %4813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4814 = extractvalue %dx.types.CBufRet.f32 %4813, 0
  %4815 = extractvalue %dx.types.CBufRet.f32 %4813, 1
  %4816 = fadd fast float %4814, %188
  %4817 = fadd fast float %4815, %189
  %4818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4819 = extractvalue %dx.types.CBufRet.f32 %4818, 0
  %4820 = extractvalue %dx.types.CBufRet.f32 %4818, 1
  %4821 = fsub fast float %4816, %4819
  %4822 = fsub fast float %4817, %4820
  %4823 = fmul fast float %4821, %4821
  %4824 = fmul fast float %4822, %4822
  %4825 = fadd fast float %4823, %4824
  %4826 = call float @dx.op.unary.f32(i32 24, float %4825)  ; Sqrt(value)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4818, 2
  %4828 = fcmp fast olt float %4826, %4827
  br i1 %4828, label %4829, label %4882

; <label>:4829                                    ; preds = %4812
  %4830 = extractvalue %dx.types.CBufRet.f32 %4813, 2
  %4831 = fadd fast float %4830, %190
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4835 = extractvalue %dx.types.CBufRet.f32 %4834, 0
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4838 = extractvalue %dx.types.CBufRet.f32 %4832, 1
  %4839 = extractvalue %dx.types.CBufRet.f32 %4834, 1
  %4840 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4841 = extractvalue %dx.types.CBufRet.f32 %4832, 3
  %4842 = extractvalue %dx.types.CBufRet.f32 %4834, 3
  %4843 = extractvalue %dx.types.CBufRet.f32 %4836, 3
  %4844 = fadd fast float %4841, %4816
  %4845 = fadd fast float %4842, %4817
  %4846 = fadd fast float %4831, %4843
  %4847 = fmul fast float %4844, %4833
  %4848 = call float @dx.op.tertiary.f32(i32 46, float %4845, float %4835, float %4847)  ; FMad(a,b,c)
  %4849 = call float @dx.op.tertiary.f32(i32 46, float %4846, float %4837, float %4848)  ; FMad(a,b,c)
  %4850 = fmul fast float %4844, %4838
  %4851 = call float @dx.op.tertiary.f32(i32 46, float %4845, float %4839, float %4850)  ; FMad(a,b,c)
  %4852 = call float @dx.op.tertiary.f32(i32 46, float %4846, float %4840, float %4851)  ; FMad(a,b,c)
  %4853 = fsub fast float %4849, %4841
  %4854 = fsub fast float %4852, %4842
  %4855 = fsub fast float %4853, %4819
  %4856 = fadd fast float %4855, %4827
  %4857 = fsub fast float %4854, %4820
  %4858 = fadd fast float %4857, %4827
  %4859 = extractvalue %dx.types.CBufRet.f32 %4818, 3
  %4860 = fmul fast float %4856, %4859
  %4861 = fmul fast float %4858, %4859
  %4862 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4863 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4864 = fsub fast float 1.000000e+00, %4862
  %4865 = fsub fast float 1.000000e+00, %4863
  %4866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4864, float %4865, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4867 = extractvalue %dx.types.ResRet.f32 %4866, 0
  %4868 = fcmp fast ugt float %4867, 0.000000e+00
  br i1 %4868, label %4869, label %4882

; <label>:4869                                    ; preds = %4829
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4872 = fmul fast float %4871, %4867
  %4873 = extractvalue %dx.types.CBufRet.f32 %4870, 3
  %4874 = fadd fast float %4873, %4872
  %4875 = extractvalue %dx.types.CBufRet.f32 %4836, 2
  %4876 = fadd fast float %4874, %4843
  %4877 = fmul fast float %4849, %4837
  %4878 = call float @dx.op.tertiary.f32(i32 46, float %4852, float %4840, float %4877)  ; FMad(a,b,c)
  %4879 = call float @dx.op.tertiary.f32(i32 46, float %4876, float %4875, float %4878)  ; FMad(a,b,c)
  %4880 = fsub fast float %4879, %4843
  %4881 = fsub fast float %4880, %4830
  br label %4882

; <label>:4882                                    ; preds = %4869, %4829, %4812
  %4883 = phi i1 [ true, %4869 ], [ false, %4829 ], [ false, %4812 ]
  %4884 = phi float [ %4881, %4869 ], [ -1.310720e+05, %4829 ], [ -1.310720e+05, %4812 ]
  %4885 = fsub fast float %4884, %190
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = select i1 %4883, float %4886, float 1.000000e+00
  br label %4888

; <label>:4888                                    ; preds = %4882, %4784
  %4889 = phi float [ %4887, %4882 ], [ 0.000000e+00, %4784 ]
  %4890 = icmp eq i32 %4810, 3
  %4891 = select i1 %4890, float 1.000000e+00, float %4889
  %4892 = call float @dx.op.binary.f32(i32 35, float %4719, float %4891)  ; FMax(a,b)
  %4893 = fcmp fast olt float %4891, 1.000000e+00
  %4894 = fcmp uge float %65, 0.000000e+00
  %4895 = and i1 %4894, %4893
  br i1 %4895, label %4896, label %4906

; <label>:4896                                    ; preds = %4888
  %4897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %41, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4898 = extractvalue %dx.types.ResRet.f32 %4897, 0
  %4899 = extractvalue %dx.types.ResRet.f32 %4897, 1
  %4900 = extractvalue %dx.types.ResRet.f32 %4897, 2
  %4901 = fadd fast float %4898, %4892
  %4902 = fcmp ule float %64, 0.000000e+00
  %4903 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4904 = select i1 %4902, float %4903, float 1.000000e+00
  %4905 = fmul fast float %4904, %4900
  br label %4906

; <label>:4906                                    ; preds = %4896, %4888
  %4907 = phi float [ %4901, %4896 ], [ %4892, %4888 ]
  %4908 = phi float [ %4899, %4896 ], [ 0.000000e+00, %4888 ]
  %4909 = phi float [ %4905, %4896 ], [ 0.000000e+00, %4888 ]
  %4910 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4911 = call float @dx.op.unary.f32(i32 7, float %4908)  ; Saturate(value)
  %4912 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4913 = fcmp fast une float %4911, 0.000000e+00
  %4914 = fcmp fast une float %4912, 0.000000e+00
  %4915 = or i1 %4913, %4914
  br i1 %4915, label %4916, label %5491

; <label>:4916                                    ; preds = %4906
  br i1 %4913, label %4917, label %5190

; <label>:4917                                    ; preds = %4916
  %4918 = call float @dx.op.unary.f32(i32 23, float %4716)  ; Log(value)
  %4919 = fmul fast float %4918, 4.000000e+00
  %4920 = call float @dx.op.unary.f32(i32 21, float %4919)  ; Exp(value)
  %4921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4922 = extractvalue %dx.types.CBufRet.f32 %4921, 0
  %4923 = fmul fast float %4922, %52
  %4924 = fmul fast float %4922, %53
  %4925 = fmul fast float %4922, %54
  %4926 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4927 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4928 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4929 = call float @dx.op.unary.f32(i32 23, float %4926)  ; Log(value)
  %4930 = call float @dx.op.unary.f32(i32 23, float %4927)  ; Log(value)
  %4931 = call float @dx.op.unary.f32(i32 23, float %4928)  ; Log(value)
  %4932 = fmul fast float %4929, 4.000000e+00
  %4933 = fmul fast float %4930, 4.000000e+00
  %4934 = fmul fast float %4931, 4.000000e+00
  %4935 = call float @dx.op.unary.f32(i32 21, float %4932)  ; Exp(value)
  %4936 = call float @dx.op.unary.f32(i32 21, float %4933)  ; Exp(value)
  %4937 = call float @dx.op.unary.f32(i32 21, float %4934)  ; Exp(value)
  %4938 = fadd fast float %4936, %4935
  %4939 = fadd fast float %4938, %4937
  %4940 = fdiv fast float 1.000000e+00, %4939
  %4941 = fmul fast float %4940, %4935
  %4942 = fcmp fast ogt float %61, 0.000000e+00
  %4943 = fcmp fast ogt float %62, 0.000000e+00
  %4944 = fcmp fast ogt float %63, 0.000000e+00
  %4945 = fcmp fast olt float %61, 0.000000e+00
  %4946 = fcmp fast olt float %62, 0.000000e+00
  %4947 = fcmp fast olt float %63, 0.000000e+00
  %4948 = zext i1 %4942 to i32
  %4949 = zext i1 %4943 to i32
  %4950 = zext i1 %4944 to i32
  %4951 = zext i1 %4945 to i32
  %4952 = zext i1 %4946 to i32
  %4953 = zext i1 %4947 to i32
  %4954 = sub nsw i32 %4948, %4951
  %4955 = sub nsw i32 %4949, %4952
  %4956 = sub nsw i32 %4950, %4953
  %4957 = call float @dx.op.unary.f32(i32 83, float %4923)  ; DerivCoarseX(value)
  %4958 = call float @dx.op.unary.f32(i32 83, float %4924)  ; DerivCoarseX(value)
  %4959 = call float @dx.op.unary.f32(i32 83, float %4925)  ; DerivCoarseX(value)
  %4960 = call float @dx.op.unary.f32(i32 84, float %4923)  ; DerivCoarseY(value)
  %4961 = call float @dx.op.unary.f32(i32 84, float %4924)  ; DerivCoarseY(value)
  %4962 = call float @dx.op.unary.f32(i32 84, float %4925)  ; DerivCoarseY(value)
  %4963 = fcmp fast ole float %303, %4941
  %4964 = fmul fast float %4940, %4938
  %4965 = fcmp fast ole float %303, %4964
  %4966 = select i1 %4965, float %4925, float %4923
  %4967 = select i1 %4965, float %4923, float %4924
  %4968 = select i1 %4963, float %4924, float %4966
  %4969 = select i1 %4963, float %4925, float %4967
  %4970 = select i1 %4965, float %4959, float %4957
  %4971 = select i1 %4965, float %4957, float %4958
  %4972 = select i1 %4963, float %4958, float %4970
  %4973 = select i1 %4963, float %4959, float %4971
  %4974 = select i1 %4965, float %4962, float %4960
  %4975 = select i1 %4965, float %4960, float %4961
  %4976 = select i1 %4963, float %4961, float %4974
  %4977 = select i1 %4963, float %4962, float %4975
  %4978 = call float @dx.op.unary.f32(i32 27, float %4968)  ; Round_ni(value)
  %4979 = call float @dx.op.unary.f32(i32 27, float %4969)  ; Round_ni(value)
  %4980 = fptosi float %4978 to i32
  %4981 = fptosi float %4979 to i32
  %4982 = xor i32 %4981, %4980
  %4983 = sitofp i32 %4982 to float
  %4984 = fptosi float %4983 to i32
  %4985 = sitofp i32 %4984 to float
  %4986 = fmul fast float %4985, 0x3FE3C6EF40000000
  %4987 = frem fast float %4978, 2.560000e+02
  %4988 = frem fast float %4979, 2.560000e+02
  %4989 = fptoui float %4987 to i32
  %4990 = fptoui float %4988 to i32
  %4991 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4989, i32 %4990, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4992 = extractvalue %dx.types.ResRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.ResRet.f32 %4991, 1
  %4994 = extractvalue %dx.types.ResRet.f32 %4991, 2
  %4995 = fadd fast float %4992, %4986
  %4996 = fadd fast float %4993, %4986
  %4997 = fadd fast float %4994, %4986
  %4998 = call float @dx.op.unary.f32(i32 22, float %4995)  ; Frc(value)
  %4999 = call float @dx.op.unary.f32(i32 22, float %4996)  ; Frc(value)
  %5000 = call float @dx.op.unary.f32(i32 22, float %4997)  ; Frc(value)
  %5001 = fmul fast float %5000, 0x401921FB60000000
  %5002 = call float @dx.op.unary.f32(i32 13, float %5001)  ; Sin(value)
  %5003 = call float @dx.op.unary.f32(i32 12, float %5001)  ; Cos(value)
  %5004 = fsub fast float -0.000000e+00, %5003
  %5005 = fmul fast float %5003, %4968
  %5006 = call float @dx.op.tertiary.f32(i32 46, float %5002, float %4969, float %5005)  ; FMad(a,b,c)
  %5007 = fmul fast float %5002, %4968
  %5008 = call float @dx.op.tertiary.f32(i32 46, float %5004, float %4969, float %5007)  ; FMad(a,b,c)
  %5009 = fadd fast float %5006, %4998
  %5010 = fadd fast float %5008, %4999
  %5011 = extractvalue %dx.types.CBufRet.f32 %4921, 3
  %5012 = bitcast float %5011 to i32
  %5013 = icmp eq i32 %5012, 0
  br i1 %5013, label %5052, label %5014

; <label>:5014                                    ; preds = %4917
  %5015 = add i32 %5012, 0
  %5016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5017 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5016, %dx.types.Handle %106, float %5009, float %5010, float undef, float undef, i32 0, i32 0, i32 undef, float %4972, float %4973, float undef, float %4976, float %4977, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5018 = extractvalue %dx.types.ResRet.f32 %5017, 0
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5022 = fsub fast float 1.000000e+00, %4911
  %5023 = call float @dx.op.binary.f32(i32 35, float %5022, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5024 = bitcast float %4911 to i32
  %5025 = sitofp i32 %5024 to float
  %5026 = fadd fast float %5025, 0xC1CFBF8940000000
  %5027 = fmul fast float %5021, %5026
  %5028 = fadd fast float %5027, 0x41CFBF8940000000
  %5029 = fptosi float %5028 to i32
  %5030 = bitcast i32 %5029 to float
  %5031 = bitcast float %5023 to i32
  %5032 = sitofp i32 %5031 to float
  %5033 = fadd fast float %5032, 0xC1CFBF8940000000
  %5034 = fmul fast float %5033, %5021
  %5035 = fadd fast float %5034, 0x41CFBF8940000000
  %5036 = fptosi float %5035 to i32
  %5037 = bitcast i32 %5036 to float
  %5038 = fmul fast float %5030, %5020
  %5039 = fmul fast float %5037, %5020
  %5040 = fsub fast float %5023, %5038
  %5041 = fadd fast float %5039, %5023
  %5042 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5044 = fsub fast float %5018, %5042
  %5045 = fsub fast float %5043, %5042
  %5046 = bitcast float %5045 to i32
  %5047 = sub nsw i32 2129859010, %5046
  %5048 = bitcast i32 %5047 to float
  %5049 = fmul fast float %5048, %5044
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = fcmp fast olt float %5050, 0x3F70101020000000
  br i1 %5051, label %5190, label %5052

; <label>:5052                                    ; preds = %5014, %4917
  %5053 = phi float [ %5050, %5014 ], [ %4911, %4917 ]
  %5054 = fmul fast float %5053, %4920
  %5055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.i32 %5055, 1
  %5057 = extractvalue %dx.types.CBufRet.i32 %5055, 0
  %5058 = add i32 %5057, 0
  %5059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5060 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5059, %dx.types.Handle %105, float %5009, float %5010, float undef, float undef, i32 0, i32 0, i32 undef, float %4972, float %4973, float undef, float %4976, float %4977, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5061 = extractvalue %dx.types.ResRet.f32 %5060, 0
  %5062 = extractvalue %dx.types.ResRet.f32 %5060, 1
  %5063 = extractvalue %dx.types.ResRet.f32 %5060, 2
  %5064 = extractvalue %dx.types.ResRet.f32 %5060, 3
  %5065 = and i32 %5056, 255
  %5066 = uitofp i32 %5065 to float
  %5067 = lshr i32 %5056, 8
  %5068 = and i32 %5067, 255
  %5069 = uitofp i32 %5068 to float
  %5070 = fmul fast float %5064, %5066
  %5071 = fadd fast float %5070, %5069
  %5072 = fmul fast float %5071, 0x3F70101000000000
  %5073 = fadd fast float %5072, 0xBFB99999A0000000
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fmul fast float %5074, 0x3FF1C71C80000000
  %5076 = call float @dx.op.binary.f32(i32 36, float %5072, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5077 = fsub fast float 1.000000e+00, %5075
  %5078 = call float @dx.op.unary.f32(i32 7, float %5077)  ; Saturate(value)
  %5079 = fmul fast float %5078, %5061
  %5080 = fmul fast float %5078, %5062
  %5081 = fmul fast float %5078, %5063
  %5082 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5083 = call float @dx.op.unary.f32(i32 7, float %5080)  ; Saturate(value)
  %5084 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5085 = fmul fast float %5075, %5061
  %5086 = fmul fast float %5075, %5062
  %5087 = fmul fast float %5075, %5063
  %5088 = fadd fast float %5085, %5076
  %5089 = fadd fast float %5086, %5076
  %5090 = fadd fast float %5087, %5076
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5094 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.i32 %5094, 3
  %5096 = extractvalue %dx.types.CBufRet.i32 %5094, 2
  %5097 = add i32 %5096, 0
  %5098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5098, %dx.types.Handle %105, float %5009, float %5010, float undef, float undef, i32 0, i32 0, i32 undef, float %4972, float %4973, float undef, float %4976, float %4977, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5100 = extractvalue %dx.types.ResRet.f32 %5099, 0
  %5101 = extractvalue %dx.types.ResRet.f32 %5099, 1
  %5102 = extractvalue %dx.types.ResRet.f32 %5099, 2
  %5103 = extractvalue %dx.types.ResRet.f32 %5099, 3
  %5104 = and i32 %5095, 255
  %5105 = uitofp i32 %5104 to float
  %5106 = lshr i32 %5095, 8
  %5107 = and i32 %5106, 255
  %5108 = uitofp i32 %5107 to float
  %5109 = lshr i32 %5095, 16
  %5110 = and i32 %5109, 255
  %5111 = uitofp i32 %5110 to float
  %5112 = fmul fast float %5111, 0x3F70101000000000
  %5113 = fmul fast float %5100, %5105
  %5114 = fadd fast float %5113, %5108
  %5115 = fmul fast float %5114, 0x3F70101000000000
  %5116 = fadd fast float %5101, -5.000000e-01
  %5117 = fadd fast float %5103, -5.000000e-01
  %5118 = fmul fast float %5116, %5112
  %5119 = fmul fast float %5117, %5112
  %5120 = fadd fast float %5118, 5.000000e-01
  %5121 = fadd fast float %5119, 5.000000e-01
  %5122 = fmul fast float %5120, 2.000000e+00
  %5123 = fadd fast float %5122, -1.000000e+00
  %5124 = fmul fast float %5121, 2.000000e+00
  %5125 = fadd fast float %5124, -1.000000e+00
  %5126 = fadd fast float %5123, %5125
  %5127 = fmul fast float %5126, 5.000000e-01
  %5128 = fsub fast float %5123, %5125
  %5129 = fmul fast float %5128, 5.000000e-01
  %5130 = call float @dx.op.unary.f32(i32 6, float %5127)  ; FAbs(value)
  %5131 = fsub fast float 1.000000e+00, %5130
  %5132 = call float @dx.op.unary.f32(i32 6, float %5129)  ; FAbs(value)
  %5133 = fsub fast float %5131, %5132
  %5134 = call float @dx.op.dot3.f32(i32 55, float %5127, float %5129, float %5133, float %5127, float %5129, float %5133)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = call float @dx.op.unary.f32(i32 25, float %5134)  ; Rsqrt(value)
  %5136 = fmul fast float %5127, %5135
  %5137 = fmul fast float %5129, %5135
  %5138 = select i1 %4965, i32 %4955, i32 %4956
  %5139 = select i1 %4963, i32 %4954, i32 %5138
  %5140 = sitofp i32 %5139 to float
  %5141 = fmul fast float %5133, %5140
  %5142 = fmul fast float %5141, %5135
  %5143 = select i1 %4965, float %5142, float %5137
  %5144 = select i1 %4965, float %5137, float %5142
  %5145 = select i1 %4963, float %5142, float %5136
  %5146 = select i1 %4963, float %5137, float %5143
  %5147 = select i1 %4963, float %5136, float %5144
  %5148 = fsub fast float %5082, %4802
  %5149 = fsub fast float %5083, %4803
  %5150 = fsub fast float %5084, %4804
  %5151 = fmul fast float %5148, %5054
  %5152 = fmul fast float %5149, %5054
  %5153 = fmul fast float %5150, %5054
  %5154 = fadd fast float %5151, %4802
  %5155 = fadd fast float %5152, %4803
  %5156 = fadd fast float %5153, %4804
  %5157 = fsub fast float %5091, %4762
  %5158 = fsub fast float %5092, %4763
  %5159 = fsub fast float %5093, %4764
  %5160 = fmul fast float %5157, %5054
  %5161 = fmul fast float %5158, %5054
  %5162 = fmul fast float %5159, %5054
  %5163 = fadd fast float %5160, %4762
  %5164 = fadd fast float %5161, %4763
  %5165 = fadd fast float %5162, %4764
  %5166 = fadd fast float %5145, %4698
  %5167 = fadd fast float %5146, %4699
  %5168 = fadd fast float %5147, %4700
  %5169 = call float @dx.op.dot3.f32(i32 55, float %5166, float %5167, float %5168, float %5166, float %5167, float %5168)  ; Dot3(ax,ay,az,bx,by,bz)
  %5170 = call float @dx.op.unary.f32(i32 25, float %5169)  ; Rsqrt(value)
  %5171 = fmul fast float %5166, %5170
  %5172 = fmul fast float %5167, %5170
  %5173 = fmul fast float %5168, %5170
  %5174 = fsub fast float %5171, %4698
  %5175 = fsub fast float %5172, %4699
  %5176 = fsub fast float %5173, %4700
  %5177 = fmul fast float %5174, %5054
  %5178 = fmul fast float %5175, %5054
  %5179 = fmul fast float %5176, %5054
  %5180 = fadd fast float %5177, %4698
  %5181 = fadd fast float %5178, %4699
  %5182 = fadd fast float %5179, %4700
  %5183 = call float @dx.op.binary.f32(i32 36, float %4716, float %5102)  ; FMin(a,b)
  %5184 = fsub fast float %5183, %4716
  %5185 = fmul fast float %5184, %5054
  %5186 = fadd fast float %5185, %4716
  %5187 = fsub fast float %5115, %4765
  %5188 = fmul fast float %5187, %5054
  %5189 = fadd fast float %5188, %4765
  br label %5190

; <label>:5190                                    ; preds = %5052, %5014, %4916
  %5191 = phi float [ %5163, %5052 ], [ %4762, %5014 ], [ %4762, %4916 ]
  %5192 = phi float [ %5164, %5052 ], [ %4763, %5014 ], [ %4763, %4916 ]
  %5193 = phi float [ %5165, %5052 ], [ %4764, %5014 ], [ %4764, %4916 ]
  %5194 = phi float [ %5180, %5052 ], [ %4698, %5014 ], [ %4698, %4916 ]
  %5195 = phi float [ %5181, %5052 ], [ %4699, %5014 ], [ %4699, %4916 ]
  %5196 = phi float [ %5182, %5052 ], [ %4700, %5014 ], [ %4700, %4916 ]
  %5197 = phi float [ %5154, %5052 ], [ %4802, %5014 ], [ %4802, %4916 ]
  %5198 = phi float [ %5155, %5052 ], [ %4803, %5014 ], [ %4803, %4916 ]
  %5199 = phi float [ %5156, %5052 ], [ %4804, %5014 ], [ %4804, %4916 ]
  %5200 = phi float [ %5189, %5052 ], [ %4765, %5014 ], [ %4765, %4916 ]
  %5201 = phi float [ %5186, %5052 ], [ %4716, %5014 ], [ %4716, %4916 ]
  br i1 %4914, label %5202, label %5491

; <label>:5202                                    ; preds = %5190
  %5203 = call float @dx.op.unary.f32(i32 23, float %5201)  ; Log(value)
  %5204 = fmul fast float %5203, 4.000000e+00
  %5205 = call float @dx.op.unary.f32(i32 21, float %5204)  ; Exp(value)
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 0
  %5208 = fmul fast float %5207, %52
  %5209 = fmul fast float %5207, %53
  %5210 = fmul fast float %5207, %54
  %5211 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5212 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5213 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5214 = call float @dx.op.unary.f32(i32 23, float %5211)  ; Log(value)
  %5215 = call float @dx.op.unary.f32(i32 23, float %5212)  ; Log(value)
  %5216 = call float @dx.op.unary.f32(i32 23, float %5213)  ; Log(value)
  %5217 = fmul fast float %5214, 4.000000e+00
  %5218 = fmul fast float %5215, 4.000000e+00
  %5219 = fmul fast float %5216, 4.000000e+00
  %5220 = call float @dx.op.unary.f32(i32 21, float %5217)  ; Exp(value)
  %5221 = call float @dx.op.unary.f32(i32 21, float %5218)  ; Exp(value)
  %5222 = call float @dx.op.unary.f32(i32 21, float %5219)  ; Exp(value)
  %5223 = fadd fast float %5221, %5220
  %5224 = fadd fast float %5223, %5222
  %5225 = fdiv fast float 1.000000e+00, %5224
  %5226 = fmul fast float %5225, %5220
  %5227 = fcmp fast ogt float %61, 0.000000e+00
  %5228 = fcmp fast ogt float %62, 0.000000e+00
  %5229 = fcmp fast ogt float %63, 0.000000e+00
  %5230 = fcmp fast olt float %61, 0.000000e+00
  %5231 = fcmp fast olt float %62, 0.000000e+00
  %5232 = fcmp fast olt float %63, 0.000000e+00
  %5233 = zext i1 %5227 to i32
  %5234 = zext i1 %5228 to i32
  %5235 = zext i1 %5229 to i32
  %5236 = zext i1 %5230 to i32
  %5237 = zext i1 %5231 to i32
  %5238 = zext i1 %5232 to i32
  %5239 = sub nsw i32 %5233, %5236
  %5240 = sub nsw i32 %5234, %5237
  %5241 = sub nsw i32 %5235, %5238
  %5242 = call float @dx.op.unary.f32(i32 83, float %5208)  ; DerivCoarseX(value)
  %5243 = call float @dx.op.unary.f32(i32 83, float %5209)  ; DerivCoarseX(value)
  %5244 = call float @dx.op.unary.f32(i32 83, float %5210)  ; DerivCoarseX(value)
  %5245 = call float @dx.op.unary.f32(i32 84, float %5208)  ; DerivCoarseY(value)
  %5246 = call float @dx.op.unary.f32(i32 84, float %5209)  ; DerivCoarseY(value)
  %5247 = call float @dx.op.unary.f32(i32 84, float %5210)  ; DerivCoarseY(value)
  %5248 = fcmp fast ole float %303, %5226
  %5249 = fmul fast float %5225, %5223
  %5250 = fcmp fast ole float %303, %5249
  %5251 = select i1 %5250, float %5210, float %5208
  %5252 = select i1 %5250, float %5208, float %5209
  %5253 = select i1 %5248, float %5209, float %5251
  %5254 = select i1 %5248, float %5210, float %5252
  %5255 = select i1 %5250, float %5244, float %5242
  %5256 = select i1 %5250, float %5242, float %5243
  %5257 = select i1 %5248, float %5243, float %5255
  %5258 = select i1 %5248, float %5244, float %5256
  %5259 = select i1 %5250, float %5247, float %5245
  %5260 = select i1 %5250, float %5245, float %5246
  %5261 = select i1 %5248, float %5246, float %5259
  %5262 = select i1 %5248, float %5247, float %5260
  %5263 = call float @dx.op.unary.f32(i32 27, float %5253)  ; Round_ni(value)
  %5264 = call float @dx.op.unary.f32(i32 27, float %5254)  ; Round_ni(value)
  %5265 = fptosi float %5263 to i32
  %5266 = fptosi float %5264 to i32
  %5267 = xor i32 %5266, %5265
  %5268 = sitofp i32 %5267 to float
  %5269 = fptosi float %5268 to i32
  %5270 = sitofp i32 %5269 to float
  %5271 = fmul fast float %5270, 0x3FE3C6EF40000000
  %5272 = frem fast float %5263, 2.560000e+02
  %5273 = frem fast float %5264, 2.560000e+02
  %5274 = fptoui float %5272 to i32
  %5275 = fptoui float %5273 to i32
  %5276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5274, i32 %5275, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.ResRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.ResRet.f32 %5276, 2
  %5280 = fadd fast float %5277, %5271
  %5281 = fadd fast float %5278, %5271
  %5282 = fadd fast float %5279, %5271
  %5283 = call float @dx.op.unary.f32(i32 22, float %5280)  ; Frc(value)
  %5284 = call float @dx.op.unary.f32(i32 22, float %5281)  ; Frc(value)
  %5285 = call float @dx.op.unary.f32(i32 22, float %5282)  ; Frc(value)
  %5286 = fmul fast float %5285, 0x401921FB60000000
  %5287 = call float @dx.op.unary.f32(i32 13, float %5286)  ; Sin(value)
  %5288 = call float @dx.op.unary.f32(i32 12, float %5286)  ; Cos(value)
  %5289 = fsub fast float -0.000000e+00, %5288
  %5290 = fmul fast float %5288, %5253
  %5291 = call float @dx.op.tertiary.f32(i32 46, float %5287, float %5254, float %5290)  ; FMad(a,b,c)
  %5292 = fmul fast float %5287, %5253
  %5293 = call float @dx.op.tertiary.f32(i32 46, float %5289, float %5254, float %5292)  ; FMad(a,b,c)
  %5294 = fadd fast float %5291, %5283
  %5295 = fadd fast float %5293, %5284
  %5296 = extractvalue %dx.types.CBufRet.f32 %5206, 3
  %5297 = bitcast float %5296 to i32
  %5298 = icmp eq i32 %5297, 0
  br i1 %5298, label %5337, label %5299

; <label>:5299                                    ; preds = %5202
  %5300 = add i32 %5297, 0
  %5301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5300, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5302 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5301, %dx.types.Handle %106, float %5294, float %5295, float undef, float undef, i32 0, i32 0, i32 undef, float %5257, float %5258, float undef, float %5261, float %5262, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5303 = extractvalue %dx.types.ResRet.f32 %5302, 0
  %5304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5305 = extractvalue %dx.types.CBufRet.f32 %5304, 1
  %5306 = extractvalue %dx.types.CBufRet.f32 %5304, 2
  %5307 = fsub fast float 1.000000e+00, %4912
  %5308 = call float @dx.op.binary.f32(i32 35, float %5307, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5309 = bitcast float %4912 to i32
  %5310 = sitofp i32 %5309 to float
  %5311 = fadd fast float %5310, 0xC1CFBF8940000000
  %5312 = fmul fast float %5306, %5311
  %5313 = fadd fast float %5312, 0x41CFBF8940000000
  %5314 = fptosi float %5313 to i32
  %5315 = bitcast i32 %5314 to float
  %5316 = bitcast float %5308 to i32
  %5317 = sitofp i32 %5316 to float
  %5318 = fadd fast float %5317, 0xC1CFBF8940000000
  %5319 = fmul fast float %5318, %5306
  %5320 = fadd fast float %5319, 0x41CFBF8940000000
  %5321 = fptosi float %5320 to i32
  %5322 = bitcast i32 %5321 to float
  %5323 = fmul fast float %5315, %5305
  %5324 = fmul fast float %5322, %5305
  %5325 = fsub fast float %5308, %5323
  %5326 = fadd fast float %5324, %5308
  %5327 = call float @dx.op.unary.f32(i32 7, float %5325)  ; Saturate(value)
  %5328 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5329 = fsub fast float %5303, %5327
  %5330 = fsub fast float %5328, %5327
  %5331 = bitcast float %5330 to i32
  %5332 = sub nsw i32 2129859010, %5331
  %5333 = bitcast i32 %5332 to float
  %5334 = fmul fast float %5333, %5329
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = fcmp fast olt float %5335, 0x3F70101020000000
  br i1 %5336, label %5491, label %5337

; <label>:5337                                    ; preds = %5299, %5202
  %5338 = phi float [ %5335, %5299 ], [ %4912, %5202 ]
  %5339 = fmul fast float %5338, %5205
  %5340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5341 = extractvalue %dx.types.CBufRet.i32 %5340, 1
  %5342 = extractvalue %dx.types.CBufRet.i32 %5340, 0
  %5343 = add i32 %5342, 0
  %5344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5345 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5344, %dx.types.Handle %105, float %5294, float %5295, float undef, float undef, i32 0, i32 0, i32 undef, float %5257, float %5258, float undef, float %5261, float %5262, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5346 = extractvalue %dx.types.ResRet.f32 %5345, 0
  %5347 = extractvalue %dx.types.ResRet.f32 %5345, 1
  %5348 = extractvalue %dx.types.ResRet.f32 %5345, 2
  %5349 = extractvalue %dx.types.ResRet.f32 %5345, 3
  %5350 = and i32 %5341, 255
  %5351 = uitofp i32 %5350 to float
  %5352 = lshr i32 %5341, 8
  %5353 = and i32 %5352, 255
  %5354 = uitofp i32 %5353 to float
  %5355 = fmul fast float %5349, %5351
  %5356 = fadd fast float %5355, %5354
  %5357 = fmul fast float %5356, 0x3F70101000000000
  %5358 = fadd fast float %5357, 0xBFB99999A0000000
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fmul fast float %5359, 0x3FF1C71C80000000
  %5361 = call float @dx.op.binary.f32(i32 36, float %5357, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5362 = fsub fast float 1.000000e+00, %5360
  %5363 = call float @dx.op.unary.f32(i32 7, float %5362)  ; Saturate(value)
  %5364 = fmul fast float %5363, %5346
  %5365 = fmul fast float %5363, %5347
  %5366 = fmul fast float %5363, %5348
  %5367 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5369 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  %5370 = fmul fast float %5360, %5346
  %5371 = fmul fast float %5360, %5347
  %5372 = fmul fast float %5360, %5348
  %5373 = fadd fast float %5370, %5361
  %5374 = fadd fast float %5371, %5361
  %5375 = fadd fast float %5372, %5361
  %5376 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5377 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5378 = call float @dx.op.unary.f32(i32 7, float %5375)  ; Saturate(value)
  %5379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.i32 %5379, 3
  %5381 = extractvalue %dx.types.CBufRet.i32 %5379, 2
  %5382 = add i32 %5381, 0
  %5383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5384 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5383, %dx.types.Handle %105, float %5294, float %5295, float undef, float undef, i32 0, i32 0, i32 undef, float %5257, float %5258, float undef, float %5261, float %5262, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5385 = extractvalue %dx.types.ResRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.ResRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.ResRet.f32 %5384, 2
  %5388 = extractvalue %dx.types.ResRet.f32 %5384, 3
  %5389 = and i32 %5380, 255
  %5390 = uitofp i32 %5389 to float
  %5391 = lshr i32 %5380, 8
  %5392 = and i32 %5391, 255
  %5393 = uitofp i32 %5392 to float
  %5394 = lshr i32 %5380, 16
  %5395 = and i32 %5394, 255
  %5396 = uitofp i32 %5395 to float
  %5397 = fmul fast float %5396, 0x3F70101000000000
  %5398 = fmul fast float %5385, %5390
  %5399 = fadd fast float %5398, %5393
  %5400 = fmul fast float %5399, 0x3F70101000000000
  %5401 = fadd fast float %5386, -5.000000e-01
  %5402 = fadd fast float %5388, -5.000000e-01
  %5403 = fmul fast float %5401, %5397
  %5404 = fmul fast float %5402, %5397
  %5405 = fadd fast float %5403, 5.000000e-01
  %5406 = fadd fast float %5404, 5.000000e-01
  %5407 = fmul fast float %5405, 2.000000e+00
  %5408 = fadd fast float %5407, -1.000000e+00
  %5409 = fmul fast float %5406, 2.000000e+00
  %5410 = fadd fast float %5409, -1.000000e+00
  %5411 = fadd fast float %5408, %5410
  %5412 = fmul fast float %5411, 5.000000e-01
  %5413 = fsub fast float %5408, %5410
  %5414 = fmul fast float %5413, 5.000000e-01
  %5415 = call float @dx.op.unary.f32(i32 6, float %5412)  ; FAbs(value)
  %5416 = fsub fast float 1.000000e+00, %5415
  %5417 = call float @dx.op.unary.f32(i32 6, float %5414)  ; FAbs(value)
  %5418 = fsub fast float %5416, %5417
  %5419 = call float @dx.op.dot3.f32(i32 55, float %5412, float %5414, float %5418, float %5412, float %5414, float %5418)  ; Dot3(ax,ay,az,bx,by,bz)
  %5420 = call float @dx.op.unary.f32(i32 25, float %5419)  ; Rsqrt(value)
  %5421 = fmul fast float %5412, %5420
  %5422 = fmul fast float %5414, %5420
  %5423 = select i1 %5250, i32 %5240, i32 %5241
  %5424 = select i1 %5248, i32 %5239, i32 %5423
  %5425 = sitofp i32 %5424 to float
  %5426 = fmul fast float %5418, %5425
  %5427 = fmul fast float %5426, %5420
  %5428 = select i1 %5250, float %5427, float %5422
  %5429 = select i1 %5250, float %5422, float %5427
  %5430 = select i1 %5248, float %5427, float %5421
  %5431 = select i1 %5248, float %5422, float %5428
  %5432 = select i1 %5248, float %5421, float %5429
  %5433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5434 = extractvalue %dx.types.CBufRet.f32 %5433, 0
  %5435 = fptoui float %5434 to i32
  %5436 = add i32 %5435, 0
  %5437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5438 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5437, %dx.types.Handle %105, float %5294, float %5295, float undef, float undef, i32 0, i32 0, i32 undef, float %5257, float %5258, float undef, float %5261, float %5262, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5439 = extractvalue %dx.types.ResRet.f32 %5438, 0
  %5440 = fsub fast float %5367, %5197
  %5441 = fsub fast float %5368, %5198
  %5442 = fsub fast float %5369, %5199
  %5443 = fmul fast float %5440, %5339
  %5444 = fmul fast float %5441, %5339
  %5445 = fmul fast float %5442, %5339
  %5446 = fadd fast float %5443, %5197
  %5447 = fadd fast float %5444, %5198
  %5448 = fadd fast float %5445, %5199
  %5449 = fsub fast float %5376, %5191
  %5450 = fsub fast float %5377, %5192
  %5451 = fsub fast float %5378, %5193
  %5452 = fmul fast float %5449, %5339
  %5453 = fmul fast float %5450, %5339
  %5454 = fmul fast float %5451, %5339
  %5455 = fadd fast float %5452, %5191
  %5456 = fadd fast float %5453, %5192
  %5457 = fadd fast float %5454, %5193
  %5458 = fadd fast float %5430, %5194
  %5459 = fadd fast float %5431, %5195
  %5460 = fadd fast float %5432, %5196
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5460, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 25, float %5461)  ; Rsqrt(value)
  %5463 = fmul fast float %5462, %5458
  %5464 = fmul fast float %5462, %5459
  %5465 = fmul fast float %5462, %5460
  %5466 = fsub fast float %5463, %5194
  %5467 = fsub fast float %5464, %5195
  %5468 = fsub fast float %5465, %5196
  %5469 = fmul fast float %5466, %5339
  %5470 = fmul fast float %5467, %5339
  %5471 = fmul fast float %5468, %5339
  %5472 = fadd fast float %5469, %5194
  %5473 = fadd fast float %5470, %5195
  %5474 = fadd fast float %5471, %5196
  %5475 = call float @dx.op.binary.f32(i32 36, float %5201, float %5387)  ; FMin(a,b)
  %5476 = fsub fast float %5475, %5201
  %5477 = fmul fast float %5476, %5339
  %5478 = fadd fast float %5477, %5201
  %5479 = fsub fast float %5400, %5200
  %5480 = fmul fast float %5479, %5339
  %5481 = fadd fast float %5480, %5200
  %5482 = fsub fast float %5439, %4806
  %5483 = fsub fast float %5439, %4807
  %5484 = fsub fast float %5439, %4808
  %5485 = fmul fast float %5482, %5339
  %5486 = fmul fast float %5483, %5339
  %5487 = fmul fast float %5484, %5339
  %5488 = fadd fast float %5485, %4806
  %5489 = fadd fast float %5486, %4807
  %5490 = fadd fast float %5487, %4808
  br label %5491

; <label>:5491                                    ; preds = %5337, %5299, %5190, %4906
  %5492 = phi float [ %5455, %5337 ], [ %5191, %5299 ], [ %5191, %5190 ], [ %4762, %4906 ]
  %5493 = phi float [ %5456, %5337 ], [ %5192, %5299 ], [ %5192, %5190 ], [ %4763, %4906 ]
  %5494 = phi float [ %5457, %5337 ], [ %5193, %5299 ], [ %5193, %5190 ], [ %4764, %4906 ]
  %5495 = phi float [ %5472, %5337 ], [ %5194, %5299 ], [ %5194, %5190 ], [ %4698, %4906 ]
  %5496 = phi float [ %5473, %5337 ], [ %5195, %5299 ], [ %5195, %5190 ], [ %4699, %4906 ]
  %5497 = phi float [ %5474, %5337 ], [ %5196, %5299 ], [ %5196, %5190 ], [ %4700, %4906 ]
  %5498 = phi float [ %5488, %5337 ], [ %4806, %5299 ], [ %4806, %5190 ], [ %4806, %4906 ]
  %5499 = phi float [ %5489, %5337 ], [ %4807, %5299 ], [ %4807, %5190 ], [ %4807, %4906 ]
  %5500 = phi float [ %5490, %5337 ], [ %4808, %5299 ], [ %4808, %5190 ], [ %4808, %4906 ]
  %5501 = phi float [ %5446, %5337 ], [ %5197, %5299 ], [ %5197, %5190 ], [ %4802, %4906 ]
  %5502 = phi float [ %5447, %5337 ], [ %5198, %5299 ], [ %5198, %5190 ], [ %4803, %4906 ]
  %5503 = phi float [ %5448, %5337 ], [ %5199, %5299 ], [ %5199, %5190 ], [ %4804, %4906 ]
  %5504 = phi float [ %5481, %5337 ], [ %5200, %5299 ], [ %5200, %5190 ], [ %4765, %4906 ]
  %5505 = phi float [ %5478, %5337 ], [ %5201, %5299 ], [ %5201, %5190 ], [ %4716, %4906 ]
  %5506 = fcmp fast une float %4910, 0.000000e+00
  %5507 = fsub fast float -0.000000e+00, %219
  %5508 = fsub fast float -0.000000e+00, %220
  %5509 = fsub fast float -0.000000e+00, %221
  br i1 %5506, label %5510, label %5671

; <label>:5510                                    ; preds = %5491
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = fmul fast float %4910, 2.500000e+00
  %5513 = call float @dx.op.unary.f32(i32 7, float %5512)  ; Saturate(value)
  %5514 = fmul fast float %4910, 0x4013FFFFE0000000
  %5515 = fadd fast float %5514, 0xBFFFFFFFE0000000
  %5516 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5517 = fmul fast float %4910, 0x4004000020000000
  %5518 = fadd fast float %5517, 0xBFF8000040000000
  %5519 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5520 = fmul fast float %4744, 1.000000e+01
  %5521 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5522 = fmul fast float %5521, 2.000000e+00
  %5523 = fsub fast float 3.000000e+00, %5522
  %5524 = fmul fast float %5521, %5521
  %5525 = fmul fast float %5524, %5523
  %5526 = fsub fast float 1.000000e+00, %5525
  %5527 = fsub fast float 0x3FE3333340000000, %5504
  %5528 = fmul fast float %5527, 0x400AAAAAA0000000
  %5529 = call float @dx.op.unary.f32(i32 7, float %5528)  ; Saturate(value)
  %5530 = fmul fast float %5526, %5529
  %5531 = fmul fast float %5501, 0x3FEA2B8620000000
  %5532 = fmul fast float %5502, 0x3FEA2B8620000000
  %5533 = fmul fast float %5503, 0x3FEA2B8620000000
  %5534 = fadd fast float %5531, 0x3FC81DFBA0000000
  %5535 = fmul fast float %5534, %5501
  %5536 = fadd fast float %5535, 0x3F910E6020000000
  %5537 = fadd fast float %5532, 0x3FC81DFBA0000000
  %5538 = fmul fast float %5537, %5502
  %5539 = fadd fast float %5538, 0x3F910E6020000000
  %5540 = fadd fast float %5533, 0x3FC81DFBA0000000
  %5541 = fmul fast float %5540, %5503
  %5542 = fadd fast float %5541, 0x3F910E6020000000
  %5543 = call float @dx.op.unary.f32(i32 7, float %5536)  ; Saturate(value)
  %5544 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5545 = call float @dx.op.unary.f32(i32 7, float %5542)  ; Saturate(value)
  %5546 = fsub fast float %5543, %5501
  %5547 = fsub fast float %5544, %5502
  %5548 = fsub fast float %5545, %5503
  %5549 = fmul fast float %5546, %5513
  %5550 = fmul fast float %5549, %5530
  %5551 = fmul fast float %5547, %5513
  %5552 = fmul fast float %5551, %5530
  %5553 = fmul fast float %5548, %5513
  %5554 = fmul fast float %5553, %5530
  %5555 = fadd fast float %5550, %5501
  %5556 = fadd fast float %5552, %5502
  %5557 = fadd fast float %5554, %5503
  %5558 = fmul fast float %5505, %5505
  %5559 = fmul fast float %5558, %5558
  %5560 = fadd fast float %5516, 1.000000e+00
  %5561 = fsub fast float %5560, %5530
  %5562 = call float @dx.op.unary.f32(i32 7, float %5561)  ; Saturate(value)
  %5563 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5564 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5565 = fsub fast float 1.000000e+00, %5559
  %5566 = call float @dx.op.binary.f32(i32 36, float %5562, float %5565)  ; FMin(a,b)
  %5567 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5566, float %5567)  ; FMax(a,b)
  %5569 = fadd fast float %5564, 0xBFE4CCCCC0000000
  %5570 = fmul fast float %5569, 0x4006DB6DA0000000
  %5571 = call float @dx.op.unary.f32(i32 7, float %5570)  ; Saturate(value)
  %5572 = fmul fast float %5571, 2.000000e+00
  %5573 = fsub fast float 3.000000e+00, %5572
  %5574 = bitcast float %5492 to i32
  %5575 = ashr i32 %5574, 1
  %5576 = add nsw i32 %5575, 532487669
  %5577 = bitcast i32 %5576 to float
  %5578 = fsub fast float 1.000000e+00, %5577
  %5579 = bitcast float %5578 to i32
  %5580 = sub nsw i32 2129859010, %5579
  %5581 = bitcast i32 %5580 to float
  %5582 = fmul fast float %5581, 2.000000e+00
  %5583 = bitcast float %5493 to i32
  %5584 = ashr i32 %5583, 1
  %5585 = add nsw i32 %5584, 532487669
  %5586 = bitcast i32 %5585 to float
  %5587 = fsub fast float 1.000000e+00, %5586
  %5588 = bitcast float %5587 to i32
  %5589 = sub nsw i32 2129859010, %5588
  %5590 = bitcast i32 %5589 to float
  %5591 = fmul fast float %5590, 2.000000e+00
  %5592 = bitcast float %5494 to i32
  %5593 = ashr i32 %5592, 1
  %5594 = add nsw i32 %5593, 532487669
  %5595 = bitcast i32 %5594 to float
  %5596 = fsub fast float 1.000000e+00, %5595
  %5597 = bitcast float %5596 to i32
  %5598 = sub nsw i32 2129859010, %5597
  %5599 = bitcast i32 %5598 to float
  %5600 = fmul fast float %5599, 2.000000e+00
  %5601 = fsub fast float 0x4002A9FBE0000000, %5582
  %5602 = fadd fast float %5582, 0x3FD54FDF00000000
  %5603 = bitcast float %5602 to i32
  %5604 = sub nsw i32 2129859010, %5603
  %5605 = bitcast i32 %5604 to float
  %5606 = fmul fast float %5605, %5601
  %5607 = fmul fast float %5606, %5606
  %5608 = fsub fast float 0x4002A9FBE0000000, %5591
  %5609 = fadd fast float %5591, 0x3FD54FDF00000000
  %5610 = bitcast float %5609 to i32
  %5611 = sub nsw i32 2129859010, %5610
  %5612 = bitcast i32 %5611 to float
  %5613 = fmul fast float %5612, %5608
  %5614 = fmul fast float %5613, %5613
  %5615 = fsub fast float 0x4002A9FBE0000000, %5600
  %5616 = fadd fast float %5600, 0x3FD54FDF00000000
  %5617 = bitcast float %5616 to i32
  %5618 = sub nsw i32 2129859010, %5617
  %5619 = bitcast i32 %5618 to float
  %5620 = fmul fast float %5619, %5615
  %5621 = fmul fast float %5620, %5620
  %5622 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5607)  ; FMax(a,b)
  %5623 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5614)  ; FMax(a,b)
  %5624 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5621)  ; FMax(a,b)
  %5625 = fsub fast float 1.000000e+00, %5511
  %5626 = fadd fast float %5625, %5526
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  %5628 = fsub fast float 1.000000e+00, %4891
  %5629 = fmul fast float %5568, %5628
  %5630 = fmul fast float %5571, %5571
  %5631 = fmul fast float %5630, %5629
  %5632 = fmul fast float %5631, %5573
  %5633 = fmul fast float %5628, 0xBFE99999A0000000
  %5634 = fmul fast float %5633, %5513
  %5635 = fmul fast float %5634, %5530
  %5636 = fadd fast float %5635, 1.000000e+00
  %5637 = fadd fast float %5504, -1.000000e+00
  %5638 = fmul fast float %5636, %5637
  %5639 = fadd fast float %5638, 1.000000e+00
  %5640 = fsub fast float %5622, %5492
  %5641 = fsub fast float %5623, %5493
  %5642 = fsub fast float %5624, %5494
  %5643 = fmul fast float %5632, %5640
  %5644 = fmul fast float %5632, %5641
  %5645 = fmul fast float %5632, %5642
  %5646 = fadd fast float %5643, %5492
  %5647 = fadd fast float %5644, %5493
  %5648 = fadd fast float %5645, %5494
  %5649 = fsub fast float %116, %5495
  %5650 = fsub fast float %117, %5496
  %5651 = fsub fast float %118, %5497
  %5652 = fmul fast float %5632, %5649
  %5653 = fmul fast float %5632, %5650
  %5654 = fmul fast float %5632, %5651
  %5655 = fadd fast float %5652, %5495
  %5656 = fadd fast float %5653, %5496
  %5657 = fadd fast float %5654, %5497
  %5658 = fmul fast float %5632, %5627
  %5659 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = fmul fast float %5658, %5660
  %5662 = fadd fast float %5661, %5659
  %5663 = fsub fast float 1.000000e+00, %5505
  %5664 = fmul fast float %5632, %5663
  %5665 = fadd fast float %5664, %5505
  %5666 = call float @dx.op.dot3.f32(i32 55, float %5655, float %5656, float %5657, float %5655, float %5656, float %5657)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = call float @dx.op.unary.f32(i32 25, float %5666)  ; Rsqrt(value)
  %5668 = fmul fast float %5655, %5667
  %5669 = fmul fast float %5656, %5667
  %5670 = fmul fast float %5657, %5667
  br label %5671

; <label>:5671                                    ; preds = %5510, %5491
  %5672 = phi float [ %5646, %5510 ], [ %5492, %5491 ]
  %5673 = phi float [ %5647, %5510 ], [ %5493, %5491 ]
  %5674 = phi float [ %5648, %5510 ], [ %5494, %5491 ]
  %5675 = phi float [ %5668, %5510 ], [ %5495, %5491 ]
  %5676 = phi float [ %5669, %5510 ], [ %5496, %5491 ]
  %5677 = phi float [ %5670, %5510 ], [ %5497, %5491 ]
  %5678 = phi float [ %5555, %5510 ], [ %5501, %5491 ]
  %5679 = phi float [ %5556, %5510 ], [ %5502, %5491 ]
  %5680 = phi float [ %5557, %5510 ], [ %5503, %5491 ]
  %5681 = phi float [ %5662, %5510 ], [ %5504, %5491 ]
  %5682 = phi float [ %5665, %5510 ], [ %5505, %5491 ]
  %5683 = select i1 %292, float 0.000000e+00, float %5674
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float %5507, float %5508, float %5509)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = call float @dx.op.dot3.f32(i32 55, float %219, float %220, float %221, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = fmul fast float %5686, 2.000000e+00
  %5688 = fmul fast float %5687, %5675
  %5689 = fmul fast float %5687, %5676
  %5690 = fmul fast float %5687, %5677
  %5691 = fsub fast float %219, %5688
  %5692 = fsub fast float %220, %5689
  %5693 = fsub fast float %221, %5690
  %5694 = call float @dx.op.binary.f32(i32 36, float %5682, float 1.000000e+00)  ; FMin(a,b)
  %5695 = fsub fast float 1.000000e+00, %5694
  %5696 = bitcast float %5695 to i32
  %5697 = ashr i32 %5696, 1
  %5698 = add nsw i32 %5697, 532487669
  %5699 = bitcast i32 %5698 to float
  %5700 = fsub fast float 1.000000e+00, %5681
  %5701 = call float @dx.op.binary.f32(i32 35, float %5700, float 0x3F847AE140000000)  ; FMax(a,b)
  %5702 = fmul fast float %5701, %5701
  %5703 = fmul fast float %5702, %5702
  %5704 = call float @dx.op.unary.f32(i32 7, float %5685)  ; Saturate(value)
  %5705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5699, float %5703, float %5704, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5706 = extractvalue %dx.types.ResRet.f32 %5705, 0
  %5707 = fsub fast float 1.000000e+00, %5682
  %5708 = bitcast float %5707 to i32
  %5709 = sub nsw i32 2129859010, %5708
  %5710 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5711 = fmul fast float %5710, 0x3FD20DD760000000
  %5712 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5713 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = fcmp fast oeq float %5713, 0.000000e+00
  %5715 = fcmp fast oeq float %5712, 0.000000e+00
  %5716 = or i1 %5715, %5714
  br i1 %5716, label %5746, label %5717

; <label>:5717                                    ; preds = %5671
  %5718 = fsub fast float -0.000000e+00, %79
  %5719 = fsub fast float -0.000000e+00, %77
  %5720 = call float @dx.op.unary.f32(i32 24, float %5713)  ; Sqrt(value)
  %5721 = fdiv fast float %5720, %5712
  %5722 = fcmp fast ogt float %5721, 0x3FFB6F8900000000
  %5723 = select i1 %5722, float 0x3FFB6F8900000000, float %5721
  %5724 = fmul fast float %5723, 0x3FE8A23460000000
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = call float @dx.op.binary.f32(i32 35, float %5723, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5727 = fmul fast float %5725, %5712
  %5728 = fmul fast float %5726, 0x3FF279A740000000
  %5729 = fadd fast float %5728, -1.000000e+00
  %5730 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %78, float %5718, float %5719, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = call float @dx.op.unary.f32(i32 25, float %5730)  ; Rsqrt(value)
  %5732 = fmul fast float %5731, %5718
  %5733 = fmul fast float %5731, %5719
  %5734 = fmul fast float %5731, %78
  %5735 = fmul fast float %5729, %5729
  %5736 = fsub fast float 1.000000e+00, %5735
  %5737 = fmul fast float %5726, 0x40005F8BE0000000
  %5738 = fsub fast float 0x400C5BF8A0000000, %5737
  %5739 = fdiv fast float %5727, %5738
  %5740 = fmul fast float %5739, 0x3FEE31C3C0000000
  %5741 = fmul fast float %5740, %5736
  %5742 = fmul fast float %5726, 0x3FDACB7480000000
  %5743 = fadd fast float %5742, 0xBFD7347680000000
  %5744 = fmul fast float %5743, %5739
  %5745 = fmul fast float %5744, %5736
  br label %5746

; <label>:5746                                    ; preds = %5717, %5671
  %5747 = phi float [ %5732, %5717 ], [ 0.000000e+00, %5671 ]
  %5748 = phi float [ %5733, %5717 ], [ 0.000000e+00, %5671 ]
  %5749 = phi float [ %5734, %5717 ], [ 0.000000e+00, %5671 ]
  %5750 = phi float [ %5741, %5717 ], [ 0.000000e+00, %5671 ]
  %5751 = phi float [ %5745, %5717 ], [ 0.000000e+00, %5671 ]
  %5752 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5753 = fmul fast float %5752, 0x3FDF454380000000
  %5754 = fmul fast float %5752, %5752
  %5755 = fmul fast float %5754, 0x3FEE471020000000
  %5756 = fadd fast float %5755, 0xBFD42F6020000000
  %5757 = fmul fast float %5712, 0x3FD20DD760000000
  %5758 = fmul fast float %5756, %5751
  %5759 = fadd fast float %5758, %5757
  %5760 = fmul fast float %5753, %5750
  %5761 = fadd fast float %5759, %5760
  %5762 = fsub fast float %5759, %5760
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %5691, float %5692, float %5693)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fmul fast float %5763, 0x3FDF454380000000
  %5765 = fmul fast float %5763, %5763
  %5766 = fmul fast float %5765, 0x3FEE471020000000
  %5767 = fadd fast float %5766, 0xBFD42F6020000000
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5712, float %5750, float %5751, float 0x3FD20DD760000000, float %5764, float %5767)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5770 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = fcmp fast oeq float %5770, 0.000000e+00
  %5772 = fcmp fast oeq float %5769, 0.000000e+00
  %5773 = or i1 %5772, %5771
  br i1 %5773, label %5803, label %5774

; <label>:5774                                    ; preds = %5746
  %5775 = fsub fast float -0.000000e+00, %75
  %5776 = fsub fast float -0.000000e+00, %73
  %5777 = call float @dx.op.unary.f32(i32 24, float %5770)  ; Sqrt(value)
  %5778 = fdiv fast float %5777, %5769
  %5779 = fcmp fast ogt float %5778, 0x3FFB6F8900000000
  %5780 = select i1 %5779, float 0x3FFB6F8900000000, float %5778
  %5781 = fmul fast float %5780, 0x3FE8A23460000000
  %5782 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5783 = call float @dx.op.binary.f32(i32 35, float %5780, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5784 = fmul fast float %5782, %5769
  %5785 = fmul fast float %5783, 0x3FF279A740000000
  %5786 = fadd fast float %5785, -1.000000e+00
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5776, float %74, float %5775, float %5776, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = call float @dx.op.unary.f32(i32 25, float %5787)  ; Rsqrt(value)
  %5789 = fmul fast float %5788, %5775
  %5790 = fmul fast float %5788, %5776
  %5791 = fmul fast float %5788, %74
  %5792 = fmul fast float %5786, %5786
  %5793 = fsub fast float 1.000000e+00, %5792
  %5794 = fmul fast float %5783, 0x40005F8BE0000000
  %5795 = fsub fast float 0x400C5BF8A0000000, %5794
  %5796 = fdiv fast float %5784, %5795
  %5797 = fmul fast float %5796, 0x3FEE31C3C0000000
  %5798 = fmul fast float %5797, %5793
  %5799 = fmul fast float %5783, 0x3FDACB7480000000
  %5800 = fadd fast float %5799, 0xBFD7347680000000
  %5801 = fmul fast float %5800, %5796
  %5802 = fmul fast float %5801, %5793
  br label %5803

; <label>:5803                                    ; preds = %5774, %5746
  %5804 = phi float [ %5789, %5774 ], [ 0.000000e+00, %5746 ]
  %5805 = phi float [ %5790, %5774 ], [ 0.000000e+00, %5746 ]
  %5806 = phi float [ %5791, %5774 ], [ 0.000000e+00, %5746 ]
  %5807 = phi float [ %5798, %5774 ], [ 0.000000e+00, %5746 ]
  %5808 = phi float [ %5802, %5774 ], [ 0.000000e+00, %5746 ]
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = fmul fast float %5809, 0x3FDF454380000000
  %5811 = fmul fast float %5809, %5809
  %5812 = fmul fast float %5811, 0x3FEE471020000000
  %5813 = fadd fast float %5812, 0xBFD42F6020000000
  %5814 = fmul fast float %5769, 0x3FD20DD760000000
  %5815 = fmul fast float %5813, %5808
  %5816 = fadd fast float %5815, %5814
  %5817 = fmul fast float %5810, %5807
  %5818 = fadd fast float %5816, %5817
  %5819 = fsub fast float %5816, %5817
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %5691, float %5692, float %5693)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = fmul fast float %5820, 0x3FDF454380000000
  %5822 = fmul fast float %5820, %5820
  %5823 = fmul fast float %5822, 0x3FEE471020000000
  %5824 = fadd fast float %5823, 0xBFD42F6020000000
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5807, float %5808, float 0x3FD20DD760000000, float %5821, float %5824)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5827 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = fcmp fast oeq float %5827, 0.000000e+00
  %5829 = fcmp fast oeq float %5826, 0.000000e+00
  %5830 = or i1 %5829, %5828
  br i1 %5830, label %5860, label %5831

; <label>:5831                                    ; preds = %5803
  %5832 = fsub fast float -0.000000e+00, %71
  %5833 = fsub fast float -0.000000e+00, %69
  %5834 = call float @dx.op.unary.f32(i32 24, float %5827)  ; Sqrt(value)
  %5835 = fdiv fast float %5834, %5826
  %5836 = fcmp fast ogt float %5835, 0x3FFB6F8900000000
  %5837 = select i1 %5836, float 0x3FFB6F8900000000, float %5835
  %5838 = fmul fast float %5837, 0x3FE8A23460000000
  %5839 = call float @dx.op.unary.f32(i32 7, float %5838)  ; Saturate(value)
  %5840 = call float @dx.op.binary.f32(i32 35, float %5837, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5841 = fmul fast float %5839, %5826
  %5842 = fmul fast float %5840, 0x3FF279A740000000
  %5843 = fadd fast float %5842, -1.000000e+00
  %5844 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %70, float %5832, float %5833, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = call float @dx.op.unary.f32(i32 25, float %5844)  ; Rsqrt(value)
  %5846 = fmul fast float %5845, %5832
  %5847 = fmul fast float %5845, %5833
  %5848 = fmul fast float %5845, %70
  %5849 = fmul fast float %5843, %5843
  %5850 = fsub fast float 1.000000e+00, %5849
  %5851 = fmul fast float %5840, 0x40005F8BE0000000
  %5852 = fsub fast float 0x400C5BF8A0000000, %5851
  %5853 = fdiv fast float %5841, %5852
  %5854 = fmul fast float %5853, 0x3FEE31C3C0000000
  %5855 = fmul fast float %5854, %5850
  %5856 = fmul fast float %5840, 0x3FDACB7480000000
  %5857 = fadd fast float %5856, 0xBFD7347680000000
  %5858 = fmul fast float %5857, %5853
  %5859 = fmul fast float %5858, %5850
  br label %5860

; <label>:5860                                    ; preds = %5831, %5803
  %5861 = phi float [ %5846, %5831 ], [ 0.000000e+00, %5803 ]
  %5862 = phi float [ %5847, %5831 ], [ 0.000000e+00, %5803 ]
  %5863 = phi float [ %5848, %5831 ], [ 0.000000e+00, %5803 ]
  %5864 = phi float [ %5855, %5831 ], [ 0.000000e+00, %5803 ]
  %5865 = phi float [ %5859, %5831 ], [ 0.000000e+00, %5803 ]
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5861, float %5862, float %5863, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fmul fast float %5866, 0x3FDF454380000000
  %5868 = fmul fast float %5866, %5866
  %5869 = fmul fast float %5868, 0x3FEE471020000000
  %5870 = fadd fast float %5869, 0xBFD42F6020000000
  %5871 = fmul fast float %5826, 0x3FD20DD760000000
  %5872 = fmul fast float %5870, %5865
  %5873 = fadd fast float %5872, %5871
  %5874 = fmul fast float %5867, %5864
  %5875 = fadd fast float %5873, %5874
  %5876 = fsub fast float %5873, %5874
  %5877 = call float @dx.op.dot3.f32(i32 55, float %5861, float %5862, float %5863, float %5691, float %5692, float %5693)  ; Dot3(ax,ay,az,bx,by,bz)
  %5878 = fmul fast float %5877, 0x3FDF454380000000
  %5879 = fmul fast float %5877, %5877
  %5880 = fmul fast float %5879, 0x3FEE471020000000
  %5881 = fadd fast float %5880, 0xBFD42F6020000000
  %5882 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5864, float %5865, float 0x3FD20DD760000000, float %5878, float %5881)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = call float @dx.op.binary.f32(i32 35, float %5761, float 0.000000e+00)  ; FMax(a,b)
  %5884 = call float @dx.op.binary.f32(i32 35, float %5818, float 0.000000e+00)  ; FMax(a,b)
  %5885 = call float @dx.op.binary.f32(i32 35, float %5875, float 0.000000e+00)  ; FMax(a,b)
  %5886 = call float @dx.op.binary.f32(i32 35, float %5762, float 0.000000e+00)  ; FMax(a,b)
  %5887 = call float @dx.op.binary.f32(i32 35, float %5819, float 0.000000e+00)  ; FMax(a,b)
  %5888 = call float @dx.op.binary.f32(i32 35, float %5876, float 0.000000e+00)  ; FMax(a,b)
  %5889 = call float @dx.op.binary.f32(i32 35, float %5768, float 0.000000e+00)  ; FMax(a,b)
  %5890 = call float @dx.op.binary.f32(i32 35, float %5825, float 0.000000e+00)  ; FMax(a,b)
  %5891 = call float @dx.op.binary.f32(i32 35, float %5882, float 0.000000e+00)  ; FMax(a,b)
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5894 = call float @dx.op.binary.f32(i32 36, float %5678, float %5893)  ; FMin(a,b)
  %5895 = fmul fast float %5894, %5695
  %5896 = fsub fast float 1.000000e+00, %5895
  %5897 = bitcast float %5896 to i32
  %5898 = sub nsw i32 2129859010, %5897
  %5899 = bitcast i32 %5898 to float
  %5900 = call float @dx.op.binary.f32(i32 36, float %5679, float %5893)  ; FMin(a,b)
  %5901 = fmul fast float %5900, %5695
  %5902 = fsub fast float 1.000000e+00, %5901
  %5903 = bitcast float %5902 to i32
  %5904 = sub nsw i32 2129859010, %5903
  %5905 = bitcast i32 %5904 to float
  %5906 = call float @dx.op.binary.f32(i32 36, float %5680, float %5893)  ; FMin(a,b)
  %5907 = fmul fast float %5906, %5695
  %5908 = fsub fast float 1.000000e+00, %5907
  %5909 = bitcast float %5908 to i32
  %5910 = sub nsw i32 2129859010, %5909
  %5911 = bitcast i32 %5910 to float
  %5912 = fmul fast float %5883, %5694
  %5913 = fmul fast float %5912, %5899
  %5914 = fmul fast float %5884, %5694
  %5915 = fmul fast float %5914, %5905
  %5916 = fmul fast float %5885, %5694
  %5917 = fmul fast float %5916, %5911
  %5918 = call float @dx.op.binary.f32(i32 36, float %5672, float %5893)  ; FMin(a,b)
  %5919 = fmul fast float %5918, %5695
  %5920 = fsub fast float 1.000000e+00, %5919
  %5921 = bitcast float %5920 to i32
  %5922 = sub nsw i32 2129859010, %5921
  %5923 = bitcast i32 %5922 to float
  %5924 = call float @dx.op.binary.f32(i32 36, float %5673, float %5893)  ; FMin(a,b)
  %5925 = fmul fast float %5924, %5695
  %5926 = fsub fast float 1.000000e+00, %5925
  %5927 = bitcast float %5926 to i32
  %5928 = sub nsw i32 2129859010, %5927
  %5929 = bitcast i32 %5928 to float
  %5930 = call float @dx.op.binary.f32(i32 36, float %5683, float %5893)  ; FMin(a,b)
  %5931 = fmul fast float %5930, %5695
  %5932 = fsub fast float 1.000000e+00, %5931
  %5933 = bitcast float %5932 to i32
  %5934 = sub nsw i32 2129859010, %5933
  %5935 = bitcast i32 %5934 to float
  %5936 = fmul fast float %5889, %5694
  %5937 = fmul fast float %5936, %5923
  %5938 = fmul fast float %5890, %5694
  %5939 = fmul fast float %5938, %5929
  %5940 = fmul fast float %5891, %5694
  %5941 = fmul fast float %5940, %5935
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5913, float %5915, float %5917, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = select i1 %292, float 0.000000e+00, float %5913
  %5944 = select i1 %292, float %5942, float %5915
  %5945 = select i1 %292, float 0.000000e+00, float %5917
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5886, float %5887, float %5888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = select i1 %292, float 0.000000e+00, float %5886
  %5948 = select i1 %292, float %5946, float %5887
  %5949 = select i1 %292, float 0.000000e+00, float %5888
  %5950 = call float @dx.op.dot3.f32(i32 55, float %5937, float %5939, float %5941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = select i1 %292, float 0.000000e+00, float %5937
  %5952 = select i1 %292, float %5950, float %5939
  %5953 = select i1 %292, float 0.000000e+00, float %5941
  %5954 = fmul fast float %4033, %4033
  %5955 = call float @dx.op.unary.f32(i32 7, float %5954)  ; Saturate(value)
  %5956 = fmul fast float %5685, 9.843750e-01
  %5957 = fmul fast float %5681, 9.843750e-01
  %5958 = fadd fast float %5956, 7.812500e-03
  %5959 = fadd fast float %5957, 7.812500e-03
  %5960 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %5958, float %5959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5961 = extractvalue %dx.types.ResRet.f32 %5960, 0
  %5962 = extractvalue %dx.types.ResRet.f32 %5960, 1
  %5963 = extractvalue %dx.types.ResRet.f32 %5960, 2
  %5964 = extractvalue %dx.types.ResRet.f32 %5960, 3
  %5965 = fsub fast float 1.000000e+00, %5955
  %5966 = fsub fast float %5963, %5961
  %5967 = fsub fast float %5964, %5962
  %5968 = fmul fast float %5966, %5965
  %5969 = fmul fast float %5967, %5965
  %5970 = fadd fast float %5968, %5961
  %5971 = fadd fast float %5969, %5962
  %5972 = fmul fast float %5970, %5672
  %5973 = fmul fast float %5970, %5673
  %5974 = fmul fast float %5970, %5683
  %5975 = fadd fast float %5972, %5971
  %5976 = fadd fast float %5973, %5971
  %5977 = fadd fast float %5974, %5971
  %5978 = fcmp fast ogt float %4717, 0.000000e+00
  br i1 %5978, label %5979, label %6005

; <label>:5979                                    ; preds = %5860
  %5980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4717, float %5685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5981 = extractvalue %dx.types.ResRet.f32 %5980, 0
  %5982 = extractvalue %dx.types.ResRet.f32 %5980, 1
  %5983 = extractvalue %dx.types.ResRet.f32 %5980, 2
  %5984 = fadd fast float %5981, -5.000000e-01
  %5985 = fadd fast float %5982, -5.000000e-01
  %5986 = fadd fast float %5983, -5.000000e-01
  %5987 = fsub fast float 1.000000e+00, %5672
  %5988 = fsub fast float 1.000000e+00, %5673
  %5989 = fsub fast float 1.000000e+00, %5683
  %5990 = fmul fast float %5672, 4.000000e+00
  %5991 = fmul fast float %5990, %5987
  %5992 = fmul fast float %5991, %5984
  %5993 = fmul fast float %5673, 4.000000e+00
  %5994 = fmul fast float %5993, %5988
  %5995 = fmul fast float %5994, %5985
  %5996 = fmul fast float %5683, 4.000000e+00
  %5997 = fmul fast float %5996, %5989
  %5998 = fmul fast float %5997, %5986
  %5999 = fadd fast float %5992, %5975
  %6000 = fadd fast float %5995, %5976
  %6001 = fadd fast float %5998, %5977
  %6002 = call float @dx.op.unary.f32(i32 7, float %5999)  ; Saturate(value)
  %6003 = call float @dx.op.unary.f32(i32 7, float %6000)  ; Saturate(value)
  %6004 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  br label %6005

; <label>:6005                                    ; preds = %5979, %5860
  %6006 = phi float [ %6002, %5979 ], [ %5975, %5860 ]
  %6007 = phi float [ %6003, %5979 ], [ %5976, %5860 ]
  %6008 = phi float [ %6004, %5979 ], [ %5977, %5860 ]
  %6009 = call float @dx.op.binary.f32(i32 35, float %6007, float %6008)  ; FMax(a,b)
  %6010 = call float @dx.op.binary.f32(i32 35, float %6006, float %6009)  ; FMax(a,b)
  %6011 = fsub fast float 1.000000e+00, %6010
  %6012 = fmul fast float %6010, %5681
  %6013 = fadd fast float %6012, %5681
  %6014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6015 = extractvalue %dx.types.CBufRet.f32 %6014, 2
  %6016 = extractvalue %dx.types.CBufRet.f32 %6014, 3
  %6017 = fmul fast float %6013, %6015
  %6018 = fadd fast float %6017, %6016
  %6019 = call float @dx.op.unary.f32(i32 7, float %6018)  ; Saturate(value)
  %6020 = fsub fast float 1.000000e+00, %5706
  %6021 = fadd fast float %6020, %6019
  %6022 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6023 = fcmp fast olt float %6022, 1.000000e+00
  br i1 %6023, label %6024, label %6472

; <label>:6024                                    ; preds = %6005
  %6025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6026 = extractvalue %dx.types.CBufRet.f32 %6025, 2
  %6027 = extractvalue %dx.types.CBufRet.f32 %6025, 3
  %6028 = fmul fast float %6026, %109
  %6029 = fmul fast float %6027, %110
  %6030 = fptoui float %6028 to i32
  %6031 = fptoui float %6029 to i32
  %6032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6033 = extractvalue %dx.types.CBufRet.f32 %6032, 0
  %6034 = extractvalue %dx.types.CBufRet.f32 %6032, 2
  %6035 = extractvalue %dx.types.CBufRet.f32 %6032, 3
  %6036 = fadd fast float %96, -4.000000e+00
  %6037 = call float @dx.op.binary.f32(i32 35, float %6036, float 0.000000e+00)  ; FMax(a,b)
  %6038 = fadd fast float %6037, %6033
  %6039 = fmul fast float %6038, %6034
  %6040 = call float @dx.op.unary.f32(i32 23, float %6039)  ; Log(value)
  %6041 = fmul fast float %6040, %6035
  %6042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6043 = extractvalue %dx.types.CBufRet.f32 %6042, 2
  %6044 = fmul fast float %6041, %6043
  %6045 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  %6046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.i32 %6046, 1
  %6048 = add i32 %6047, -1
  %6049 = uitofp i32 %6047 to float
  %6050 = fmul fast float %6049, %6045
  %6051 = fptoui float %6050 to i32
  %6052 = call i32 @dx.op.binary.i32(i32 40, i32 %6051, i32 %6048)  ; UMin(a,b)
  %6053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6054 = extractvalue %dx.types.CBufRet.i32 %6053, 2
  %6055 = extractvalue %dx.types.CBufRet.i32 %6053, 3
  %6056 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6031, i32 %6054, i32 %6030)  ; UMad(a,b,c)
  %6057 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6052, i32 %6055, i32 %6056)  ; UMad(a,b,c)
  %6058 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6059 = fptoui float %6058 to i32
  %6060 = lshr i32 %6059, 5
  %6061 = call i32 @dx.op.binary.i32(i32 40, i32 %6060, i32 8191)  ; UMin(a,b)
  br i1 false, label %6062, label %6069

; <label>:6062                                    ; preds = %6024
  %6063 = fadd fast float 0.000000e+00, %5693
  %6064 = call float @dx.op.dot3.f32(i32 55, float %5691, float %5692, float %6063, float %5691, float %5692, float %6063)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = call float @dx.op.unary.f32(i32 25, float %6064)  ; Rsqrt(value)
  %6066 = fmul fast float %6065, %5691
  %6067 = fmul fast float %6065, %5692
  %6068 = fmul fast float %6063, %6065
  br label %6069

; <label>:6069                                    ; preds = %6062, %6024
  %6070 = phi float [ %6066, %6062 ], [ %5691, %6024 ]
  %6071 = phi float [ %6067, %6062 ], [ %5692, %6024 ]
  %6072 = phi float [ %6068, %6062 ], [ %5693, %6024 ]
  %6073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.i32 %6073, 2
  %6075 = add nsw i32 %6074, -1
  %6076 = call i32 @dx.op.binary.i32(i32 37, i32 %6075, i32 0)  ; IMax(a,b)
  %6077 = shl i32 %6061, 2
  %6078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %6077, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.i32 %6078, 0
  %6080 = lshr i32 %6079, 16
  %6081 = and i32 %6079, 65535
  %6082 = lshr i32 %6079, 21
  %6083 = lshr i32 %6081, 5
  %6084 = call i32 @dx.op.binary.i32(i32 40, i32 %6083, i32 %6076)  ; UMin(a,b)
  %6085 = icmp ugt i32 %6082, %6084
  br i1 %6085, label %6448, label %6086

; <label>:6086                                    ; preds = %6069
  br label %6087

; <label>:6087                                    ; preds = %6440, %6086
  %6088 = phi float [ %6441, %6440 ], [ 0.000000e+00, %6086 ]
  %6089 = phi float [ %6442, %6440 ], [ 0.000000e+00, %6086 ]
  %6090 = phi float [ %6443, %6440 ], [ 0.000000e+00, %6086 ]
  %6091 = phi float [ %6444, %6440 ], [ 1.000000e+00, %6086 ]
  %6092 = phi i32 [ %6445, %6440 ], [ %6082, %6086 ]
  %6093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6094 = extractvalue %dx.types.CBufRet.i32 %6093, 2
  %6095 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6057, i32 %6094, i32 %6092)  ; UMad(a,b,c)
  %6096 = shl i32 %6095, 2
  %6097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6096, i32 undef)  ; BufferLoad(srv,index,wot)
  %6098 = extractvalue %dx.types.ResRet.i32 %6097, 0
  %6099 = shl i32 %6092, 5
  %6100 = sub nsw i32 %6080, %6099
  %6101 = call i32 @dx.op.binary.i32(i32 37, i32 %6100, i32 0)  ; IMax(a,b)
  %6102 = call i32 @dx.op.binary.i32(i32 38, i32 %6101, i32 31)  ; IMin(a,b)
  %6103 = sub nsw i32 1, %6080
  %6104 = add nsw i32 %6103, %6081
  %6105 = call i32 @dx.op.binary.i32(i32 37, i32 %6104, i32 0)  ; IMax(a,b)
  %6106 = call i32 @dx.op.binary.i32(i32 38, i32 %6105, i32 32)  ; IMin(a,b)
  %6107 = and i32 %6106, 31
  %6108 = shl i32 -1, %6107
  %6109 = xor i32 %6108, -1
  %6110 = and i32 %6102, 31
  %6111 = shl i32 %6109, %6110
  %6112 = icmp eq i32 %6106, 32
  %6113 = select i1 %6112, i32 -1, i32 %6111
  %6114 = and i32 %6113, %6098
  %6115 = icmp eq i32 %6114, 0
  br i1 %6115, label %6440, label %6116

; <label>:6116                                    ; preds = %6087
  br label %6117

; <label>:6117                                    ; preds = %6223, %6116
  %6118 = phi float [ %6224, %6223 ], [ %6088, %6116 ]
  %6119 = phi float [ %6225, %6223 ], [ %6089, %6116 ]
  %6120 = phi float [ %6226, %6223 ], [ %6090, %6116 ]
  %6121 = phi float [ %6227, %6223 ], [ %6091, %6116 ]
  %6122 = phi i32 [ %6127, %6223 ], [ %6114, %6116 ]
  %6123 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6122)  ; FirstbitLo(value)
  %6124 = add i32 %6123, %6099
  %6125 = and i32 %6123, 31
  %6126 = shl i32 1, %6125
  %6127 = xor i32 %6126, %6122
  %6128 = mul i32 %6124, 72
  %6129 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6128, i32 undef)  ; BufferLoad(srv,index,wot)
  %6130 = extractvalue %dx.types.ResRet.f32 %6129, 0
  %6131 = extractvalue %dx.types.ResRet.f32 %6129, 1
  %6132 = extractvalue %dx.types.ResRet.f32 %6129, 2
  %6133 = add i32 %6128, 12
  %6134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6133, i32 undef)  ; BufferLoad(srv,index,wot)
  %6135 = extractvalue %dx.types.ResRet.i32 %6134, 0
  %6136 = add i32 %6128, 16
  %6137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6136, i32 undef)  ; BufferLoad(srv,index,wot)
  %6138 = extractvalue %dx.types.ResRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.ResRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.ResRet.f32 %6137, 2
  %6141 = add i32 %6128, 28
  %6142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6141, i32 undef)  ; BufferLoad(srv,index,wot)
  %6143 = extractvalue %dx.types.ResRet.f32 %6142, 0
  %6144 = add i32 %6128, 32
  %6145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6144, i32 undef)  ; BufferLoad(srv,index,wot)
  %6146 = extractvalue %dx.types.ResRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.ResRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.ResRet.f32 %6145, 2
  %6149 = extractvalue %dx.types.ResRet.f32 %6145, 3
  %6150 = add i32 %6128, 48
  %6151 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6150, i32 undef)  ; BufferLoad(srv,index,wot)
  %6152 = extractvalue %dx.types.ResRet.f32 %6151, 0
  %6153 = extractvalue %dx.types.ResRet.f32 %6151, 1
  %6154 = add i32 %6128, 56
  %6155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6154, i32 undef)  ; BufferLoad(srv,index,wot)
  %6156 = extractvalue %dx.types.ResRet.f32 %6155, 0
  %6157 = extractvalue %dx.types.ResRet.f32 %6155, 1
  %6158 = add i32 %6128, 64
  %6159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6158, i32 undef)  ; BufferLoad(srv,index,wot)
  %6160 = extractvalue %dx.types.ResRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.ResRet.f32 %6159, 1
  %6162 = mul i32 %6124, 60
  %6163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6162, i32 undef)  ; BufferLoad(srv,index,wot)
  %6164 = extractvalue %dx.types.ResRet.f32 %6163, 0
  %6165 = extractvalue %dx.types.ResRet.f32 %6163, 1
  %6166 = extractvalue %dx.types.ResRet.f32 %6163, 2
  %6167 = add i32 %6162, 12
  %6168 = add i32 %6162, 48
  %6169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6168, i32 undef)  ; BufferLoad(srv,index,wot)
  %6170 = extractvalue %dx.types.ResRet.f32 %6169, 0
  %6171 = extractvalue %dx.types.ResRet.f32 %6169, 1
  %6172 = extractvalue %dx.types.ResRet.f32 %6169, 2
  %6173 = and i32 %6135, 32767
  %6174 = bitcast float %6130 to i32
  %6175 = icmp eq i32 %6174, -1
  %6176 = bitcast float %6131 to i32
  %6177 = and i32 %6135, 32768
  %6178 = icmp ne i32 %6177, 0
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6183 = fsub fast float %6164, %6180
  %6184 = fsub fast float %6165, %6181
  %6185 = fsub fast float %6166, %6182
  %6186 = fsub fast float %188, %6183
  %6187 = fsub fast float %189, %6184
  %6188 = fsub fast float %190, %6185
  %6189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6167, i32 undef)  ; BufferLoad(srv,index,wot)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 0
  %6191 = extractvalue %dx.types.ResRet.f32 %6189, 1
  %6192 = extractvalue %dx.types.ResRet.f32 %6189, 2
  %6193 = call float @dx.op.dot3.f32(i32 55, float %6186, float %6187, float %6188, float %6190, float %6191, float %6192)  ; Dot3(ax,ay,az,bx,by,bz)
  %6194 = add i32 %6162, 24
  %6195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6194, i32 undef)  ; BufferLoad(srv,index,wot)
  %6196 = extractvalue %dx.types.ResRet.f32 %6195, 0
  %6197 = extractvalue %dx.types.ResRet.f32 %6195, 1
  %6198 = extractvalue %dx.types.ResRet.f32 %6195, 2
  %6199 = call float @dx.op.dot3.f32(i32 55, float %6186, float %6187, float %6188, float %6196, float %6197, float %6198)  ; Dot3(ax,ay,az,bx,by,bz)
  %6200 = add i32 %6162, 36
  %6201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.ResRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.ResRet.f32 %6201, 2
  %6205 = call float @dx.op.dot3.f32(i32 55, float %6186, float %6187, float %6188, float %6202, float %6203, float %6204)  ; Dot3(ax,ay,az,bx,by,bz)
  %6206 = call float @dx.op.unary.f32(i32 6, float %6193)  ; FAbs(value)
  %6207 = call float @dx.op.unary.f32(i32 6, float %6199)  ; FAbs(value)
  %6208 = call float @dx.op.unary.f32(i32 6, float %6205)  ; FAbs(value)
  %6209 = fsub fast float %6170, %6206
  %6210 = fsub fast float %6171, %6207
  %6211 = fsub fast float %6172, %6208
  %6212 = fmul fast float %6209, %6138
  %6213 = fmul fast float %6210, %6139
  %6214 = fmul fast float %6211, %6140
  %6215 = call float @dx.op.binary.f32(i32 36, float %6213, float %6214)  ; FMin(a,b)
  %6216 = call float @dx.op.binary.f32(i32 36, float %6212, float %6215)  ; FMin(a,b)
  %6217 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6218 = call float @dx.op.binary.f32(i32 36, float %6121, float %6217)  ; FMin(a,b)
  %6219 = uitofp i1 %6178 to float
  %6220 = fsub fast float 1.000000e+00, %6219
  %6221 = fmul fast float %6218, %6220
  %6222 = fcmp fast ogt float %6221, 0.000000e+00
  br i1 %6222, label %6229, label %6223

; <label>:6223                                    ; preds = %6371, %6117
  %6224 = phi float [ %6435, %6371 ], [ %6118, %6117 ]
  %6225 = phi float [ %6436, %6371 ], [ %6119, %6117 ]
  %6226 = phi float [ %6437, %6371 ], [ %6120, %6117 ]
  %6227 = phi float [ %6438, %6371 ], [ %6121, %6117 ]
  %6228 = icmp eq i32 %6122, %6126
  br i1 %6228, label %6439, label %6117

; <label>:6229                                    ; preds = %6117
  br i1 %6175, label %6287, label %6230

; <label>:6230                                    ; preds = %6229
  %6231 = fsub fast float -0.000000e+00, %6190
  %6232 = fsub fast float -0.000000e+00, %6191
  %6233 = fsub fast float -0.000000e+00, %6192
  %6234 = call float @dx.op.dot3.f32(i32 55, float %6070, float %6071, float %6072, float %6231, float %6232, float %6233)  ; Dot3(ax,ay,az,bx,by,bz)
  %6235 = fsub fast float -0.000000e+00, %6234
  %6236 = call float @dx.op.dot3.f32(i32 55, float %6186, float %6187, float %6188, float %6231, float %6232, float %6233)  ; Dot3(ax,ay,az,bx,by,bz)
  %6237 = fadd fast float %6236, %6153
  %6238 = fadd fast float %6152, %6236
  %6239 = fsub fast float -0.000000e+00, %6238
  %6240 = fcmp ogt float %6234, -0.000000e+00
  %6241 = select i1 %6240, float %6239, float %6237
  %6242 = call float @dx.op.unary.f32(i32 6, float %6235)  ; FAbs(value)
  %6243 = fdiv fast float 1.000000e+00, %6242
  %6244 = fmul fast float %6241, %6243
  %6245 = call float @dx.op.binary.f32(i32 35, float %6244, float 0.000000e+00)  ; FMax(a,b)
  %6246 = fsub fast float -0.000000e+00, %6196
  %6247 = fsub fast float -0.000000e+00, %6197
  %6248 = fsub fast float -0.000000e+00, %6198
  %6249 = call float @dx.op.dot3.f32(i32 55, float %6070, float %6071, float %6072, float %6246, float %6247, float %6248)  ; Dot3(ax,ay,az,bx,by,bz)
  %6250 = fsub fast float -0.000000e+00, %6249
  %6251 = call float @dx.op.dot3.f32(i32 55, float %6186, float %6187, float %6188, float %6246, float %6247, float %6248)  ; Dot3(ax,ay,az,bx,by,bz)
  %6252 = fadd fast float %6251, %6157
  %6253 = fadd fast float %6156, %6251
  %6254 = fsub fast float -0.000000e+00, %6253
  %6255 = fcmp ogt float %6249, -0.000000e+00
  %6256 = select i1 %6255, float %6254, float %6252
  %6257 = call float @dx.op.unary.f32(i32 6, float %6250)  ; FAbs(value)
  %6258 = fdiv fast float 1.000000e+00, %6257
  %6259 = fmul fast float %6256, %6258
  %6260 = call float @dx.op.binary.f32(i32 35, float %6259, float 0.000000e+00)  ; FMax(a,b)
  %6261 = fsub fast float -0.000000e+00, %6202
  %6262 = fsub fast float -0.000000e+00, %6203
  %6263 = fsub fast float -0.000000e+00, %6204
  %6264 = call float @dx.op.dot3.f32(i32 55, float %6070, float %6071, float %6072, float %6261, float %6262, float %6263)  ; Dot3(ax,ay,az,bx,by,bz)
  %6265 = fsub fast float -0.000000e+00, %6264
  %6266 = call float @dx.op.dot3.f32(i32 55, float %6186, float %6187, float %6188, float %6261, float %6262, float %6263)  ; Dot3(ax,ay,az,bx,by,bz)
  %6267 = fadd fast float %6266, %6161
  %6268 = fadd fast float %6160, %6266
  %6269 = fsub fast float -0.000000e+00, %6268
  %6270 = fcmp ogt float %6264, -0.000000e+00
  %6271 = select i1 %6270, float %6269, float %6267
  %6272 = call float @dx.op.unary.f32(i32 6, float %6265)  ; FAbs(value)
  %6273 = fdiv fast float 1.000000e+00, %6272
  %6274 = fmul fast float %6271, %6273
  %6275 = call float @dx.op.binary.f32(i32 35, float %6274, float 0.000000e+00)  ; FMax(a,b)
  %6276 = call float @dx.op.binary.f32(i32 36, float %6260, float %6275)  ; FMin(a,b)
  %6277 = call float @dx.op.binary.f32(i32 36, float %6245, float %6276)  ; FMin(a,b)
  %6278 = fmul fast float %6277, %6070
  %6279 = fmul fast float %6277, %6071
  %6280 = fmul fast float %6277, %6072
  %6281 = fadd fast float %6278, %188
  %6282 = fadd fast float %6279, %189
  %6283 = fadd fast float %6280, %190
  %6284 = fsub fast float %6281, %6130
  %6285 = fsub fast float %6282, %6131
  %6286 = fsub fast float %6283, %6132
  br label %6294

; <label>:6287                                    ; preds = %6229
  %6288 = fmul fast float %6070, 8.096000e+03
  %6289 = fmul fast float %6071, 8.096000e+03
  %6290 = fmul fast float %6072, 8.096000e+03
  %6291 = fadd fast float %6288, %188
  %6292 = fadd fast float %6289, %189
  %6293 = fadd fast float %6290, %190
  br label %6294

; <label>:6294                                    ; preds = %6287, %6230
  %6295 = phi float [ %6070, %6287 ], [ %6284, %6230 ]
  %6296 = phi float [ %6071, %6287 ], [ %6285, %6230 ]
  %6297 = phi float [ %6072, %6287 ], [ %6286, %6230 ]
  %6298 = phi float [ %6291, %6287 ], [ %6281, %6230 ]
  %6299 = phi float [ %6292, %6287 ], [ %6282, %6230 ]
  %6300 = phi float [ %6293, %6287 ], [ %6283, %6230 ]
  %6301 = fcmp fast olt float %6149, 1.000000e+00
  br i1 %6301, label %6302, label %6333, !dx.controlflow.hints !92

; <label>:6302                                    ; preds = %6294
  %6303 = fmul fast float %6297, %6147
  %6304 = fmul fast float %6296, %6148
  %6305 = fsub fast float %6303, %6304
  %6306 = fmul fast float %6295, %6148
  %6307 = fmul fast float %6297, %6146
  %6308 = fsub fast float %6306, %6307
  %6309 = fmul fast float %6296, %6146
  %6310 = fmul fast float %6295, %6147
  %6311 = fsub fast float %6309, %6310
  %6312 = fmul fast float %6305, 2.000000e+00
  %6313 = fmul fast float %6308, 2.000000e+00
  %6314 = fmul fast float %6311, 2.000000e+00
  %6315 = fmul fast float %6312, %6149
  %6316 = fmul fast float %6313, %6149
  %6317 = fmul fast float %6314, %6149
  %6318 = fmul fast float %6314, %6147
  %6319 = fmul fast float %6313, %6148
  %6320 = fmul fast float %6312, %6148
  %6321 = fmul fast float %6314, %6146
  %6322 = fmul fast float %6313, %6146
  %6323 = fmul fast float %6312, %6147
  %6324 = fadd fast float %6318, %6295
  %6325 = fadd fast float %6324, %6315
  %6326 = fsub fast float %6325, %6319
  %6327 = fsub fast float %6296, %6321
  %6328 = fadd fast float %6327, %6316
  %6329 = fadd fast float %6328, %6320
  %6330 = fadd fast float %6317, %6297
  %6331 = fsub fast float %6330, %6323
  %6332 = fadd fast float %6331, %6322
  br label %6333

; <label>:6333                                    ; preds = %6302, %6294
  %6334 = phi float [ %6326, %6302 ], [ %6295, %6294 ]
  %6335 = phi float [ %6329, %6302 ], [ %6296, %6294 ]
  %6336 = phi float [ %6332, %6302 ], [ %6297, %6294 ]
  br i1 %6175, label %6368, label %6337

; <label>:6337                                    ; preds = %6333
  %6338 = fmul fast float %5681, 0x400187C840000000
  %6339 = fadd fast float %6338, 0xC00EFC2120000000
  %6340 = fmul fast float %6339, %5681
  %6341 = fadd fast float %6340, 0x3FE5D16340000000
  %6342 = fmul fast float %6341, %5681
  %6343 = fadd fast float %6342, 1.000000e+00
  %6344 = call float @dx.op.unary.f32(i32 7, float %6343)  ; Saturate(value)
  %6345 = fsub fast float %6298, %188
  %6346 = fsub fast float %6299, %189
  %6347 = fsub fast float %6300, %190
  %6348 = fsub fast float %6298, %6130
  %6349 = fsub fast float %6299, %6131
  %6350 = fsub fast float %6300, %6132
  %6351 = call float @dx.op.dot3.f32(i32 55, float %6345, float %6346, float %6347, float %6345, float %6346, float %6347)  ; Dot3(ax,ay,az,bx,by,bz)
  %6352 = call float @dx.op.dot3.f32(i32 55, float %6348, float %6349, float %6350, float %6348, float %6349, float %6350)  ; Dot3(ax,ay,az,bx,by,bz)
  %6353 = fadd fast float %6352, 0x3EE4F8B580000000
  %6354 = fdiv fast float %6351, %6353
  %6355 = bitcast float %6354 to i32
  %6356 = ashr i32 %6355, 1
  %6357 = add nsw i32 %6356, 532487669
  %6358 = bitcast i32 %6357 to float
  %6359 = fmul fast float %6358, %6344
  %6360 = call float @dx.op.unary.f32(i32 7, float %6359)  ; Saturate(value)
  %6361 = fmul fast float %6360, 0x4009981AE0000000
  %6362 = fsub fast float 0x40111BBD80000000, %6361
  %6363 = fmul fast float %6362, %6360
  %6364 = fadd fast float %6363, 0xC0009F6020000000
  %6365 = fmul fast float %6364, %6360
  %6366 = fadd fast float %6365, 1.000000e+00
  %6367 = call float @dx.op.unary.f32(i32 7, float %6366)  ; Saturate(value)
  br label %6371

; <label>:6368                                    ; preds = %6333
  %6369 = icmp ne i32 %6176, -1
  %6370 = zext i1 %6369 to i32
  br label %6371

; <label>:6371                                    ; preds = %6368, %6337
  %6372 = phi float [ %5681, %6368 ], [ %6367, %6337 ]
  %6373 = phi i32 [ %6370, %6368 ], [ 0, %6337 ]
  %6374 = fmul float %6372, 5.000000e+00
  %6375 = fsub float 5.000000e+00, %6374
  %6376 = icmp ne i32 %6373, 0
  %6377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6378 = extractvalue %dx.types.CBufRet.f32 %6377, 3
  %6379 = fadd fast float %6378, %6375
  %6380 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6379)  ; FMax(a,b)
  %6381 = call float @dx.op.unary.f32(i32 6, float %6334)  ; FAbs(value)
  %6382 = call float @dx.op.unary.f32(i32 6, float %6335)  ; FAbs(value)
  %6383 = fadd fast float %6382, %6381
  %6384 = call float @dx.op.unary.f32(i32 6, float %6336)  ; FAbs(value)
  %6385 = fadd fast float %6383, %6384
  %6386 = fcmp fast oeq float %6385, 0.000000e+00
  %6387 = fdiv fast float 1.000000e+00, %6385
  %6388 = select i1 %6386, float 1.000000e+00, float %6387
  %6389 = fmul fast float %6388, %6334
  %6390 = fmul fast float %6388, %6335
  %6391 = call float @dx.op.unary.f32(i32 6, float %6390)  ; FAbs(value)
  %6392 = call float @dx.op.unary.f32(i32 6, float %6389)  ; FAbs(value)
  %6393 = fsub fast float 1.000000e+00, %6391
  %6394 = fsub fast float 1.000000e+00, %6392
  %6395 = fcmp fast oge float %6389, 0.000000e+00
  %6396 = fcmp fast oge float %6390, 0.000000e+00
  %6397 = select i1 %6395, float 1.000000e+00, float -1.000000e+00
  %6398 = select i1 %6396, float 1.000000e+00, float -1.000000e+00
  %6399 = fcmp fast ole float %6336, 0.000000e+00
  %6400 = fmul fast float %6397, %6393
  %6401 = fmul fast float %6398, %6394
  %6402 = select i1 %6399, float %6400, float %6389
  %6403 = select i1 %6399, float %6401, float %6390
  %6404 = fmul fast float %6402, 5.000000e-01
  %6405 = fmul fast float %6403, 5.000000e-01
  %6406 = fadd fast float %6404, 5.000000e-01
  %6407 = fadd fast float %6405, 5.000000e-01
  %6408 = uitofp i32 %6173 to float
  %6409 = call float @dx.op.binary.f32(i32 36, float %6380, float 3.000000e+00)  ; FMin(a,b)
  %6410 = fadd fast float %6409, 2.000000e+00
  %6411 = call float @dx.op.unary.f32(i32 21, float %6410)  ; Exp(value)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6377, 1
  %6413 = fmul fast float %6412, %6411
  %6414 = fmul fast float %6413, 2.000000e+00
  %6415 = fsub fast float 1.000000e+00, %6414
  %6416 = fmul fast float %6406, %6415
  %6417 = fmul fast float %6407, %6415
  %6418 = fadd fast float %6416, %6413
  %6419 = fadd fast float %6417, %6413
  %6420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %6418, float %6419, float %6408, float undef, i32 0, i32 0, i32 undef, float %6380)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6421 = extractvalue %dx.types.ResRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.ResRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.ResRet.f32 %6420, 2
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 3
  %6426 = fmul fast float %6425, %6143
  %6427 = call float @dx.op.binary.f32(i32 36, float %5711, float %6426)  ; FMin(a,b)
  %6428 = select i1 %6376, float %6427, float %6426
  %6429 = fmul fast float %6421, %6221
  %6430 = fmul fast float %6429, %6428
  %6431 = fmul fast float %6422, %6221
  %6432 = fmul fast float %6431, %6428
  %6433 = fmul fast float %6423, %6221
  %6434 = fmul fast float %6433, %6428
  %6435 = fadd fast float %6430, %6118
  %6436 = fadd fast float %6432, %6119
  %6437 = fadd fast float %6434, %6120
  %6438 = fsub fast float %6121, %6221
  br label %6223

; <label>:6439                                    ; preds = %6223
  br label %6440

; <label>:6440                                    ; preds = %6439, %6087
  %6441 = phi float [ %6088, %6087 ], [ %6224, %6439 ]
  %6442 = phi float [ %6089, %6087 ], [ %6225, %6439 ]
  %6443 = phi float [ %6090, %6087 ], [ %6226, %6439 ]
  %6444 = phi float [ %6091, %6087 ], [ %6227, %6439 ]
  %6445 = add i32 %6092, 1
  %6446 = icmp ugt i32 %6445, %6084
  br i1 %6446, label %6447, label %6087, !llvm.loop !93

; <label>:6447                                    ; preds = %6440
  br label %6448

; <label>:6448                                    ; preds = %6447, %6069
  %6449 = phi float [ 0.000000e+00, %6069 ], [ %6441, %6447 ]
  %6450 = phi float [ 0.000000e+00, %6069 ], [ %6442, %6447 ]
  %6451 = phi float [ 0.000000e+00, %6069 ], [ %6443, %6447 ]
  %6452 = call float @dx.op.dot3.f32(i32 55, float %6449, float %6450, float %6451, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6453 = select i1 %292, float 0.000000e+00, float %6449
  %6454 = select i1 %292, float %6452, float %6450
  %6455 = select i1 %292, float 0.000000e+00, float %6451
  %6456 = fcmp fast olt float %6022, 0.000000e+00
  %6457 = call float @dx.op.unary.f32(i32 6, float %6022)  ; FAbs(value)
  %6458 = fmul fast float %6457, %5951
  %6459 = fmul fast float %6457, %5952
  %6460 = fmul fast float %6457, %5953
  %6461 = select i1 %6456, float %5951, float %6458
  %6462 = select i1 %6456, float %5952, float %6459
  %6463 = select i1 %6456, float %5953, float %6460
  %6464 = fsub fast float 1.000000e+00, %6457
  %6465 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  %6466 = fmul fast float %6465, %6453
  %6467 = fmul fast float %6465, %6454
  %6468 = fmul fast float %6465, %6455
  %6469 = fadd fast float %6461, %6466
  %6470 = fadd fast float %6462, %6467
  %6471 = fadd fast float %6463, %6468
  br label %6472

; <label>:6472                                    ; preds = %6448, %6005
  %6473 = phi float [ %5951, %6005 ], [ %6469, %6448 ]
  %6474 = phi float [ %5952, %6005 ], [ %6470, %6448 ]
  %6475 = phi float [ %5953, %6005 ], [ %6471, %6448 ]
  %6476 = call float @dx.op.dot3.f32(i32 55, float %5678, float %5679, float %5680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6477 = fcmp fast ogt float %6476, 0x3E7FF19E20000000
  %6478 = fdiv fast float 1.000000e+00, %6476
  %6479 = select i1 %6477, float %6478, float 0.000000e+00
  %6480 = fmul fast float %6479, %5678
  %6481 = fmul fast float %6479, %5679
  %6482 = fmul fast float %6479, %5680
  %6483 = fadd fast float %6480, -1.000000e+00
  %6484 = fadd fast float %6481, -1.000000e+00
  %6485 = fadd fast float %6482, -1.000000e+00
  %6486 = fmul fast float %6483, 5.000000e-01
  %6487 = fmul fast float %6484, 5.000000e-01
  %6488 = fmul fast float %6485, 5.000000e-01
  %6489 = fadd fast float %6486, 1.000000e+00
  %6490 = fadd fast float %6487, 1.000000e+00
  %6491 = fadd fast float %6488, 1.000000e+00
  %6492 = call float @dx.op.binary.f32(i32 35, float %5685, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6493 = fdiv fast float %4033, %6492
  %6494 = fcmp fast olt float %4788, 1.270000e+02
  %6495 = fcmp fast olt float %4789, 1.270000e+02
  %6496 = fcmp fast olt float %4790, 1.270000e+02
  %6497 = fmul fast float %4788, 0xBFF7154760000000
  %6498 = fmul fast float %6497, %6493
  %6499 = fmul fast float %4789, 0xBFF7154760000000
  %6500 = fmul fast float %6499, %6493
  %6501 = fmul fast float %4790, 0xBFF7154760000000
  %6502 = fmul fast float %6501, %6493
  %6503 = call float @dx.op.unary.f32(i32 21, float %6498)  ; Exp(value)
  %6504 = call float @dx.op.unary.f32(i32 21, float %6500)  ; Exp(value)
  %6505 = call float @dx.op.unary.f32(i32 21, float %6502)  ; Exp(value)
  %6506 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  %6507 = call float @dx.op.unary.f32(i32 7, float %6504)  ; Saturate(value)
  %6508 = call float @dx.op.unary.f32(i32 7, float %6505)  ; Saturate(value)
  %6509 = select i1 %6494, float %6506, float 0.000000e+00
  %6510 = select i1 %6495, float %6507, float 0.000000e+00
  %6511 = select i1 %6496, float %6508, float 0.000000e+00
  %6512 = fmul fast float %6509, %6011
  %6513 = fmul fast float %6510, %6011
  %6514 = fmul fast float %6511, %6011
  %6515 = fadd fast float %6512, -1.000000e+00
  %6516 = fadd fast float %6513, -1.000000e+00
  %6517 = fadd fast float %6514, -1.000000e+00
  %6518 = fmul fast float %6515, %4743
  %6519 = fmul fast float %6516, %4743
  %6520 = fmul fast float %6517, %4743
  %6521 = fmul fast float %6473, %6006
  %6522 = fmul fast float %6474, %6007
  %6523 = fmul fast float %6475, %6008
  %6524 = fsub fast float 1.000000e+00, %5685
  %6525 = bitcast float %6524 to i32
  %6526 = sitofp i32 %6525 to float
  %6527 = fmul fast float %6526, 5.000000e+00
  %6528 = fadd fast float %6527, 0xC1EFBF8940000000
  %6529 = fptosi float %6528 to i32
  %6530 = bitcast i32 %6529 to float
  %6531 = fmul fast float %6530, %4718
  %6532 = fmul fast float %5943, %6531
  %6533 = fmul fast float %6532, %6011
  %6534 = fmul fast float %6533, %6489
  %6535 = fmul fast float %5944, %6531
  %6536 = fmul fast float %6535, %6011
  %6537 = fmul fast float %6536, %6490
  %6538 = fmul fast float %5945, %6531
  %6539 = fmul fast float %6538, %6011
  %6540 = fmul fast float %6539, %6491
  %6541 = fadd fast float %6521, %4704
  %6542 = fadd fast float %6541, %6534
  %6543 = fmul fast float %6542, %4743
  %6544 = fadd fast float %6522, %4705
  %6545 = fadd fast float %6544, %6537
  %6546 = fmul fast float %6545, %4743
  %6547 = fadd fast float %6523, %4706
  %6548 = fadd fast float %6547, %6540
  %6549 = fmul fast float %6548, %4743
  %6550 = fmul fast float %5673, 0x4012D0A400000000
  %6551 = fadd fast float %6520, 1.000000e+00
  %6552 = fadd fast float %6519, 1.000000e+00
  %6553 = fadd fast float %6518, 1.000000e+00
  %6554 = fmul fast float %6011, %5945
  %6555 = fmul fast float %6011, %5944
  %6556 = fmul fast float %6011, %5943
  %6557 = fmul fast float %5700, %4743
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  %6560 = fsub fast float 1.000000e+00, %6559
  %6561 = fadd fast float %6550, 0x3FDB6377A0000000
  %6562 = fmul fast float %6560, %6561
  %6563 = call float @dx.op.dot3.f32(i32 55, float %5498, float %5499, float %5500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6564 = fadd fast float %6562, %6563
  %6565 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6566 = call float @dx.op.binary.f32(i32 35, float %6565, float 0x3F847AE140000000)  ; FMax(a,b)
  %6567 = fmul fast float %6566, %6566
  %6568 = fmul fast float %6567, %6567
  %6569 = fmul fast float %6568, 0xC00A935000000000
  %6570 = call float @dx.op.unary.f32(i32 21, float %6569)  ; Exp(value)
  %6571 = fsub fast float 1.000000e+00, %6570
  %6572 = fmul fast float %6553, %5947
  %6573 = fmul fast float %6572, %6571
  %6574 = fmul fast float %6552, %5948
  %6575 = fmul fast float %6574, %6571
  %6576 = fmul fast float %6551, %5949
  %6577 = fmul fast float %6576, %6571
  %6578 = fadd fast float %6573, %6556
  %6579 = fmul fast float %6578, %4743
  %6580 = fadd fast float %6575, %6555
  %6581 = fmul fast float %6580, %4743
  %6582 = fadd fast float %6577, %6554
  %6583 = fmul fast float %6582, %4743
  %6584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6585 = extractvalue %dx.types.CBufRet.f32 %6584, 3
  %6586 = fcmp fast oeq float %6585, 0.000000e+00
  br i1 %6586, label %8352, label %6587

; <label>:6587                                    ; preds = %6472
  %6588 = extractvalue %dx.types.CBufRet.f32 %6584, 0
  %6589 = extractvalue %dx.types.CBufRet.f32 %6584, 1
  %6590 = extractvalue %dx.types.CBufRet.f32 %6584, 2
  %6591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6592 = extractvalue %dx.types.CBufRet.f32 %6591, 0
  %6593 = extractvalue %dx.types.CBufRet.f32 %6591, 1
  %6594 = extractvalue %dx.types.CBufRet.f32 %6591, 2
  %6595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.f32 %6595, 0
  %6597 = extractvalue %dx.types.CBufRet.f32 %6595, 1
  %6598 = call float @dx.op.dot3.f32(i32 55, float %6592, float %6593, float %6594, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6599 = select i1 %292, float %6596, float %6592
  %6600 = select i1 %292, float %6598, float %6593
  %6601 = select i1 %292, float %6597, float %6594
  %6602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6603 = extractvalue %dx.types.CBufRet.f32 %6602, 2
  %6604 = fmul fast float %6603, %116
  %6605 = fmul fast float %6603, %117
  %6606 = fmul fast float %6603, %118
  %6607 = fadd fast float %6604, %188
  %6608 = fadd fast float %6605, %189
  %6609 = fadd fast float %6606, %190
  %6610 = fcmp fast olt float %6585, 0.000000e+00
  br i1 %6610, label %7868, label %6611

; <label>:6611                                    ; preds = %6587
  %6612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6613 = extractvalue %dx.types.CBufRet.f32 %6612, 0
  %6614 = extractvalue %dx.types.CBufRet.f32 %6612, 1
  %6615 = extractvalue %dx.types.CBufRet.f32 %6612, 2
  %6616 = extractvalue %dx.types.CBufRet.f32 %6612, 3
  %6617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6618 = extractvalue %dx.types.CBufRet.f32 %6617, 0
  %6619 = extractvalue %dx.types.CBufRet.f32 %6617, 1
  %6620 = extractvalue %dx.types.CBufRet.f32 %6617, 2
  %6621 = extractvalue %dx.types.CBufRet.f32 %6617, 3
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 0
  %6624 = extractvalue %dx.types.CBufRet.f32 %6622, 1
  %6625 = extractvalue %dx.types.CBufRet.f32 %6622, 2
  %6626 = extractvalue %dx.types.CBufRet.f32 %6622, 3
  %6627 = fmul fast float %6613, %6607
  %6628 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %6614, float %6627)  ; FMad(a,b,c)
  %6629 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %6615, float %6628)  ; FMad(a,b,c)
  %6630 = fadd fast float %6629, %6616
  %6631 = fmul fast float %6618, %6607
  %6632 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %6619, float %6631)  ; FMad(a,b,c)
  %6633 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %6620, float %6632)  ; FMad(a,b,c)
  %6634 = fadd fast float %6633, %6621
  %6635 = fmul fast float %6623, %6607
  %6636 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %6624, float %6635)  ; FMad(a,b,c)
  %6637 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %6625, float %6636)  ; FMad(a,b,c)
  %6638 = fadd fast float %6637, %6626
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = fcmp fast une float %6640, 0.000000e+00
  %6642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.CBufRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.CBufRet.f32 %6642, 3
  %6646 = fmul fast float %6645, %6630
  %6647 = fmul fast float %6645, %6634
  %6648 = fadd fast float %6646, %6643
  %6649 = fadd fast float %6647, %6644
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.CBufRet.f32 %6650, 3
  %6654 = fmul fast float %6653, %6630
  %6655 = fmul fast float %6653, %6634
  %6656 = fadd fast float %6654, %6651
  %6657 = fadd fast float %6655, %6652
  %6658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6659 = extractvalue %dx.types.CBufRet.f32 %6658, 1
  %6660 = fsub fast float %6659, %6638
  %6661 = extractvalue %dx.types.CBufRet.f32 %6658, 2
  %6662 = fmul fast float %6660, %6661
  %6663 = fsub fast float 1.000000e+00, %6662
  %6664 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  br i1 %6641, label %6725, label %6665

; <label>:6665                                    ; preds = %6611
  %6666 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6668 = extractvalue %dx.types.CBufRet.f32 %6667, 2
  %6669 = fadd fast float %6668, %6666
  %6670 = fcmp fast ogt float %6669, 0.000000e+00
  br i1 %6670, label %6671, label %6695

; <label>:6671                                    ; preds = %6665
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 0
  %6674 = extractvalue %dx.types.CBufRet.f32 %6672, 1
  %6675 = fsub fast float %6656, %6673
  %6676 = fsub fast float %6657, %6674
  %6677 = fcmp fast olt float %6675, 0.000000e+00
  %6678 = fcmp fast olt float %6676, 0.000000e+00
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = extractvalue %dx.types.CBufRet.f32 %6679, 1
  %6682 = extractvalue %dx.types.CBufRet.f32 %6679, 2
  %6683 = extractvalue %dx.types.CBufRet.f32 %6679, 3
  %6684 = select i1 %6677, float %6680, float %6682
  %6685 = select i1 %6678, float %6681, float %6683
  %6686 = fmul fast float %6684, %6675
  %6687 = fmul fast float %6685, %6676
  %6688 = call float @dx.op.unary.f32(i32 6, float %6686)  ; FAbs(value)
  %6689 = call float @dx.op.unary.f32(i32 6, float %6687)  ; FAbs(value)
  %6690 = extractvalue %dx.types.CBufRet.f32 %6602, 0
  %6691 = call float @dx.op.binary.f32(i32 35, float %6688, float %6689)  ; FMax(a,b)
  %6692 = fsub fast float %6690, %6691
  %6693 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6694 = fmul fast float %6693, %6664
  br label %6695

; <label>:6695                                    ; preds = %6671, %6665
  %6696 = phi float [ %6694, %6671 ], [ 0.000000e+00, %6665 ]
  %6697 = extractvalue %dx.types.CBufRet.f32 %6642, 2
  %6698 = extractvalue %dx.types.CBufRet.f32 %6667, 1
  %6699 = fadd fast float %6698, %6697
  %6700 = fcmp fast ogt float %6699, 0.000000e+00
  br i1 %6700, label %6701, label %6725

; <label>:6701                                    ; preds = %6695
  %6702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.CBufRet.f32 %6702, 1
  %6705 = fsub fast float %6648, %6703
  %6706 = fsub fast float %6649, %6704
  %6707 = fcmp fast olt float %6705, 0.000000e+00
  %6708 = fcmp fast olt float %6706, 0.000000e+00
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6710 = extractvalue %dx.types.CBufRet.f32 %6709, 0
  %6711 = extractvalue %dx.types.CBufRet.f32 %6709, 1
  %6712 = extractvalue %dx.types.CBufRet.f32 %6709, 2
  %6713 = extractvalue %dx.types.CBufRet.f32 %6709, 3
  %6714 = select i1 %6707, float %6710, float %6712
  %6715 = select i1 %6708, float %6711, float %6713
  %6716 = fmul fast float %6714, %6705
  %6717 = fmul fast float %6715, %6706
  %6718 = call float @dx.op.unary.f32(i32 6, float %6716)  ; FAbs(value)
  %6719 = call float @dx.op.unary.f32(i32 6, float %6717)  ; FAbs(value)
  %6720 = extractvalue %dx.types.CBufRet.f32 %6602, 0
  %6721 = call float @dx.op.binary.f32(i32 35, float %6718, float %6719)  ; FMax(a,b)
  %6722 = fsub fast float %6720, %6721
  %6723 = call float @dx.op.unary.f32(i32 7, float %6722)  ; Saturate(value)
  %6724 = fmul fast float %6723, %6664
  br label %6725

; <label>:6725                                    ; preds = %6701, %6695, %6611
  %6726 = phi float [ 0.000000e+00, %6611 ], [ %6724, %6701 ], [ 0.000000e+00, %6695 ]
  %6727 = phi float [ 0.000000e+00, %6611 ], [ %6696, %6701 ], [ %6696, %6695 ]
  %6728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6729 = extractvalue %dx.types.CBufRet.f32 %6728, 1
  %6730 = call float @dx.op.unary.f32(i32 7, float %6729)  ; Saturate(value)
  %6731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6732 = extractvalue %dx.types.CBufRet.f32 %6731, 0
  %6733 = extractvalue %dx.types.CBufRet.f32 %6731, 1
  %6734 = fsub fast float %6630, %6732
  %6735 = fsub fast float %6634, %6733
  %6736 = fcmp fast olt float %6734, 0.000000e+00
  %6737 = fcmp fast olt float %6735, 0.000000e+00
  %6738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6739 = extractvalue %dx.types.CBufRet.f32 %6738, 0
  %6740 = extractvalue %dx.types.CBufRet.f32 %6738, 1
  %6741 = extractvalue %dx.types.CBufRet.f32 %6738, 2
  %6742 = extractvalue %dx.types.CBufRet.f32 %6738, 3
  %6743 = select i1 %6736, float %6739, float %6741
  %6744 = select i1 %6737, float %6740, float %6742
  %6745 = fmul fast float %6743, %6734
  %6746 = fmul fast float %6744, %6735
  %6747 = call float @dx.op.unary.f32(i32 6, float %6745)  ; FAbs(value)
  %6748 = call float @dx.op.unary.f32(i32 6, float %6746)  ; FAbs(value)
  %6749 = extractvalue %dx.types.CBufRet.f32 %6602, 0
  %6750 = call float @dx.op.binary.f32(i32 35, float %6747, float %6748)  ; FMax(a,b)
  %6751 = fsub fast float %6749, %6750
  %6752 = call float @dx.op.unary.f32(i32 7, float %6751)  ; Saturate(value)
  %6753 = call float @dx.op.binary.f32(i32 36, float %6752, float %6730)  ; FMin(a,b)
  %6754 = fmul fast float %6753, %6664
  %6755 = fsub fast float %6726, %6754
  %6756 = fsub fast float %6727, %6726
  %6757 = fsub fast float %6756, %6754
  %6758 = call float @dx.op.binary.f32(i32 35, float %6726, float %6727)  ; FMax(a,b)
  %6759 = call float @dx.op.binary.f32(i32 35, float %6754, float %6758)  ; FMax(a,b)
  %6760 = fcmp fast olt float %6759, 1.000000e+00
  br i1 %6760, label %6761, label %7159, !dx.controlflow.hints !95

; <label>:6761                                    ; preds = %6725
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 0
  %6764 = fcmp fast une float %6763, 0.000000e+00
  br i1 %6764, label %6765, label %7159, !dx.controlflow.hints !96

; <label>:6765                                    ; preds = %6761
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6770 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6772 = extractvalue %dx.types.CBufRet.f32 %6771, 0
  %6773 = extractvalue %dx.types.CBufRet.f32 %6771, 1
  %6774 = extractvalue %dx.types.CBufRet.f32 %6771, 2
  %6775 = extractvalue %dx.types.CBufRet.f32 %6771, 3
  %6776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.f32 %6776, 0
  %6778 = extractvalue %dx.types.CBufRet.f32 %6776, 1
  %6779 = extractvalue %dx.types.CBufRet.f32 %6776, 2
  %6780 = extractvalue %dx.types.CBufRet.f32 %6776, 3
  %6781 = fmul fast float %6767, %6607
  %6782 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %6768, float %6781)  ; FMad(a,b,c)
  %6783 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %6769, float %6782)  ; FMad(a,b,c)
  %6784 = fadd fast float %6783, %6770
  %6785 = fmul fast float %6772, %6607
  %6786 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %6773, float %6785)  ; FMad(a,b,c)
  %6787 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %6774, float %6786)  ; FMad(a,b,c)
  %6788 = fadd fast float %6787, %6775
  %6789 = fmul fast float %6777, %6607
  %6790 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %6778, float %6789)  ; FMad(a,b,c)
  %6791 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %6779, float %6790)  ; FMad(a,b,c)
  %6792 = fadd fast float %6791, %6780
  %6793 = fcmp fast oge float %6784, 1.000000e+00
  %6794 = fcmp fast oge float %6788, 1.000000e+00
  %6795 = or i1 %6793, %6794
  %6796 = fcmp fast olt float %6784, 0.000000e+00
  %6797 = fcmp fast olt float %6788, 0.000000e+00
  %6798 = or i1 %6796, %6797
  %6799 = or i1 %6795, %6798
  br i1 %6799, label %7159, label %6800, !dx.controlflow.hints !97

; <label>:6800                                    ; preds = %6765
  %6801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6802 = extractvalue %dx.types.CBufRet.f32 %6801, 0
  %6803 = extractvalue %dx.types.CBufRet.f32 %6801, 1
  %6804 = extractvalue %dx.types.CBufRet.f32 %6801, 2
  %6805 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.i32 %6805, 2
  %6807 = uitofp i32 %6806 to float
  %6808 = extractvalue %dx.types.CBufRet.i32 %6805, 3
  %6809 = uitofp i32 %6808 to float
  %6810 = extractvalue %dx.types.CBufRet.f32 %6801, 3
  %6811 = fmul fast float %6810, 2.000000e+00
  %6812 = fsub fast float %6784, %6802
  %6813 = fsub fast float %6788, %6803
  %6814 = fmul fast float %6811, %6812
  %6815 = fmul fast float %6811, %6813
  %6816 = fdiv fast float 1.000000e+00, %6590
  %6817 = fmul fast float %6815, %6816
  %6818 = call float @dx.op.unary.f32(i32 6, float %6817)  ; FAbs(value)
  %6819 = fmul fast float %6804, %6609
  %6820 = fmul fast float %6819, %6811
  %6821 = call float @dx.op.unary.f32(i32 6, float %6820)  ; FAbs(value)
  %6822 = call float @dx.op.unary.f32(i32 6, float %6814)  ; FAbs(value)
  %6823 = call float @dx.op.binary.f32(i32 35, float %6821, float %6818)  ; FMax(a,b)
  %6824 = call float @dx.op.binary.f32(i32 35, float %6822, float %6823)  ; FMax(a,b)
  %6825 = fmul fast float %6824, 2.000000e+00
  %6826 = call float @dx.op.unary.f32(i32 23, float %6825)  ; Log(value)
  %6827 = call float @dx.op.binary.f32(i32 35, float %6826, float %6807)  ; FMax(a,b)
  %6828 = call float @dx.op.unary.f32(i32 22, float %6827)  ; Frc(value)
  %6829 = fadd fast float %6828, 0xBFEA666660000000
  %6830 = fmul fast float %6829, 8.000000e+00
  %6831 = call float @dx.op.unary.f32(i32 7, float %6830)  ; Saturate(value)
  %6832 = call float @dx.op.unary.f32(i32 27, float %6827)  ; Round_ni(value)
  %6833 = fadd fast float %6832, %6831
  %6834 = call float @dx.op.binary.f32(i32 36, float %6833, float %6809)  ; FMin(a,b)
  %6835 = call float @dx.op.unary.f32(i32 27, float %6834)  ; Round_ni(value)
  %6836 = fsub fast float -0.000000e+00, %6835
  %6837 = call float @dx.op.unary.f32(i32 21, float %6836)  ; Exp(value)
  %6838 = fmul fast float %6837, %6811
  %6839 = fmul fast float %6838, %6784
  %6840 = fmul fast float %6838, %6788
  %6841 = fmul fast float %6839, 2.500000e-01
  %6842 = fmul fast float %6840, 2.500000e-01
  %6843 = fadd fast float %6841, 5.000000e-01
  %6844 = fadd fast float %6842, 5.000000e-01
  %6845 = fsub fast float %6809, %6807
  %6846 = fptoui float %6845 to i32
  %6847 = add i32 %6846, 320
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6847)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 0
  %6850 = extractvalue %dx.types.CBufRet.f32 %6848, 1
  %6851 = fcmp fast une float %6834, %6809
  %6852 = fsub fast float %6784, %6849
  %6853 = fsub fast float %6788, %6850
  %6854 = call float @dx.op.unary.f32(i32 6, float %6852)  ; FAbs(value)
  %6855 = call float @dx.op.unary.f32(i32 6, float %6853)  ; FAbs(value)
  %6856 = fmul fast float %6854, %6838
  %6857 = fmul fast float %6855, %6838
  %6858 = fcmp fast olt float %6856, 1.000000e+00
  %6859 = fcmp fast olt float %6857, 1.000000e+00
  %6860 = and i1 %6858, %6859
  %6861 = or i1 %6851, %6860
  br i1 %6861, label %6862, label %7159, !dx.controlflow.hints !98

; <label>:6862                                    ; preds = %6800
  %6863 = fmul fast float %6840, 5.000000e-01
  %6864 = fmul fast float %6839, 5.000000e-01
  %6865 = fadd fast float %6863, 5.000000e-01
  %6866 = fadd fast float %6864, 5.000000e-01
  %6867 = sitofp i32 %6806 to float
  %6868 = fsub fast float %6834, %6867
  %6869 = call float @dx.op.unary.f32(i32 27, float %6868)  ; Round_ni(value)
  %6870 = call float @dx.op.unary.f32(i32 22, float %6834)  ; Frc(value)
  %6871 = call float @dx.op.unary.f32(i32 22, float %6866)  ; Frc(value)
  %6872 = call float @dx.op.unary.f32(i32 22, float %6865)  ; Frc(value)
  %6873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6871, float %6872, float %6869, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6874 = extractvalue %dx.types.ResRet.f32 %6873, 0
  %6875 = extractvalue %dx.types.ResRet.f32 %6873, 1
  %6876 = extractvalue %dx.types.ResRet.f32 %6873, 2
  %6877 = extractvalue %dx.types.ResRet.f32 %6873, 3
  %6878 = fcmp fast ogt float %6870, 0.000000e+00
  br i1 %6878, label %6879, label %6900, !dx.controlflow.hints !99

; <label>:6879                                    ; preds = %6862
  %6880 = fadd fast float %6869, 1.000000e+00
  %6881 = call float @dx.op.unary.f32(i32 22, float %6843)  ; Frc(value)
  %6882 = call float @dx.op.unary.f32(i32 22, float %6844)  ; Frc(value)
  %6883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6881, float %6882, float %6880, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6884 = extractvalue %dx.types.ResRet.f32 %6883, 0
  %6885 = extractvalue %dx.types.ResRet.f32 %6883, 1
  %6886 = extractvalue %dx.types.ResRet.f32 %6883, 2
  %6887 = extractvalue %dx.types.ResRet.f32 %6883, 3
  %6888 = fsub fast float %6884, %6874
  %6889 = fsub fast float %6885, %6875
  %6890 = fsub fast float %6886, %6876
  %6891 = fsub fast float %6887, %6877
  %6892 = fmul fast float %6888, %6870
  %6893 = fmul fast float %6889, %6870
  %6894 = fmul fast float %6890, %6870
  %6895 = fmul fast float %6891, %6870
  %6896 = fadd fast float %6892, %6874
  %6897 = fadd fast float %6893, %6875
  %6898 = fadd fast float %6894, %6876
  %6899 = fadd fast float %6895, %6877
  br label %6900

; <label>:6900                                    ; preds = %6879, %6862
  %6901 = phi float [ %6896, %6879 ], [ %6874, %6862 ]
  %6902 = phi float [ %6897, %6879 ], [ %6875, %6862 ]
  %6903 = phi float [ %6898, %6879 ], [ %6876, %6862 ]
  %6904 = phi float [ %6899, %6879 ], [ %6877, %6862 ]
  %6905 = fadd fast float %6901, -5.000000e-01
  %6906 = fadd fast float %6903, -5.000000e-01
  %6907 = fmul fast float %6905, 0xBFD5555560000000
  %6908 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6906, float %6907)  ; FMad(a,b,c)
  %6909 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6902, float 0.000000e+00)  ; FMad(a,b,c)
  %6910 = fadd fast float %6909, %6904
  %6911 = fmul fast float %6905, -7.500000e-01
  %6912 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6906, float %6911)  ; FMad(a,b,c)
  %6913 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6902, float 0.000000e+00)  ; FMad(a,b,c)
  %6914 = fadd fast float %6913, %6904
  %6915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6916 = extractvalue %dx.types.CBufRet.f32 %6915, 0
  %6917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6918 = extractvalue %dx.types.CBufRet.f32 %6917, 0
  %6919 = extractvalue %dx.types.CBufRet.f32 %6917, 1
  %6920 = extractvalue %dx.types.CBufRet.f32 %6917, 2
  %6921 = extractvalue %dx.types.CBufRet.f32 %6917, 3
  %6922 = fsub fast float %6918, %6908
  %6923 = fsub fast float %6919, %6910
  %6924 = fsub fast float %6920, %6912
  %6925 = fsub fast float %6921, %6914
  %6926 = fmul fast float %6922, %6916
  %6927 = fmul fast float %6923, %6916
  %6928 = fmul fast float %6924, %6916
  %6929 = fmul fast float %6925, %6916
  %6930 = fadd fast float %6926, %6908
  %6931 = fadd fast float %6927, %6910
  %6932 = fadd fast float %6928, %6912
  %6933 = fadd fast float %6929, %6914
  %6934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6935 = extractvalue %dx.types.ResRet.i32 %6934, 0
  %6936 = and i32 %6935, 536870911
  %6937 = uitofp i32 %6936 to float
  %6938 = fmul fast float %6937, %6784
  %6939 = fmul fast float %6937, %6788
  %6940 = fptoui float %6938 to i32
  %6941 = fptoui float %6939 to i32
  %6942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6943 = extractvalue %dx.types.ResRet.i32 %6942, 0
  %6944 = and i32 %6943, 31
  %6945 = lshr i32 %6940, %6944
  %6946 = lshr i32 %6941, %6944
  %6947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6948 = extractvalue %dx.types.ResRet.i32 %6947, 0
  %6949 = and i32 %6948, 31
  %6950 = shl i32 1, %6949
  %6951 = call i32 @dx.op.binary.i32(i32 40, i32 %6950, i32 4)  ; UMin(a,b)
  %6952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6953 = extractvalue %dx.types.ResRet.i32 %6952, 0
  %6954 = extractvalue %dx.types.ResRet.i32 %6952, 1
  %6955 = icmp eq i32 %6951, 0
  br i1 %6955, label %6997, label %6956

; <label>:6956                                    ; preds = %6900
  br label %6957

; <label>:6957                                    ; preds = %6985, %6956
  %6958 = phi i32 [ %6988, %6985 ], [ 0, %6956 ]
  %6959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6960 = extractvalue %dx.types.ResRet.i32 %6959, 0
  %6961 = lshr i32 %6960, 16
  %6962 = and i32 %6961, 31
  %6963 = shl i32 %6946, %6962
  %6964 = add i32 %6963, %6945
  %6965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6966 = extractvalue %dx.types.ResRet.i32 %6965, 0
  %6967 = and i32 %6966, 31
  %6968 = shl i32 %6964, %6967
  %6969 = add i32 %6968, %6958
  %6970 = shl i32 %6969, 2
  %6971 = add i32 %6970, 32
  %6972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6971, i32 undef)  ; BufferLoad(srv,index,wot)
  %6973 = extractvalue %dx.types.ResRet.i32 %6972, 0
  %6974 = icmp slt i32 %6973, 0
  %6975 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6958
  %6976 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6958
  %6977 = bitcast float* %6975 to i32*
  %6978 = bitcast float* %6976 to i32*
  br i1 %6974, label %6979, label %6985

; <label>:6979                                    ; preds = %6957
  %6980 = and i32 %6973, 1073741823
  %6981 = add nuw nsw i32 %6980, 20
  %6982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6981, i32 undef)  ; BufferLoad(srv,index,wot)
  %6983 = extractvalue %dx.types.ResRet.i32 %6982, 0
  %6984 = extractvalue %dx.types.ResRet.i32 %6982, 1
  br label %6985

; <label>:6985                                    ; preds = %6979, %6957
  %6986 = phi i32 [ %6983, %6979 ], [ %6953, %6957 ]
  %6987 = phi i32 [ %6984, %6979 ], [ %6954, %6957 ]
  store i32 %6986, i32* %6977, align 4
  store i32 %6987, i32* %6978, align 4
  %6988 = add nuw i32 %6958, 1
  %6989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6990 = extractvalue %dx.types.CBufRet.i32 %6989, 2
  %6991 = icmp eq i32 %6990, 0
  %6992 = icmp ugt i32 %6973, -1073741825
  %6993 = and i1 %6992, %6991
  %6994 = icmp ult i32 %6988, %6951
  %6995 = and i1 %6993, %6994
  br i1 %6995, label %6957, label %6996

; <label>:6996                                    ; preds = %6985
  br label %6997

; <label>:6997                                    ; preds = %6996, %6900
  %6998 = phi i32 [ 0, %6900 ], [ %6988, %6996 ]
  %6999 = extractvalue %dx.types.CBufRet.f32 %6762, 2
  %7000 = fptoui float %6999 to i32
  %7001 = icmp eq i32 %7000, 0
  br i1 %7001, label %7053, label %7002

; <label>:7002                                    ; preds = %6997
  br label %7003

; <label>:7003                                    ; preds = %7048, %7002
  %7004 = phi i32 [ %7049, %7048 ], [ %6998, %7002 ]
  %7005 = phi i32 [ %7050, %7048 ], [ 0, %7002 ]
  %7006 = lshr i32 %7005, 2
  %7007 = and i32 %7005, 3
  %7008 = add nuw nsw i32 %7006, 83
  %7009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %7008)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.i32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.i32 %7009, 1
  %7012 = extractvalue %dx.types.CBufRet.i32 %7009, 2
  %7013 = extractvalue %dx.types.CBufRet.i32 %7009, 3
  %7014 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %7010, i32* %7014, align 4
  %7015 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %7011, i32* %7015, align 4
  %7016 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %7012, i32* %7016, align 4
  %7017 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %7013, i32* %7017, align 4
  %7018 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %7007
  %7019 = load i32, i32* %7018, align 4, !tbaa !100, !noalias !104
  %7020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7021 = extractvalue %dx.types.ResRet.i32 %7020, 0
  %7022 = lshr i32 %7021, 16
  %7023 = and i32 %7022, 31
  %7024 = shl i32 %6946, %7023
  %7025 = add i32 %7024, %6945
  %7026 = shl i32 %7025, 2
  %7027 = add i32 %7026, %7019
  %7028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7027, i32 undef)  ; BufferLoad(srv,index,wot)
  %7029 = extractvalue %dx.types.ResRet.i32 %7028, 0
  %7030 = icmp eq i32 %7029, 0
  br i1 %7030, label %7048, label %7031

; <label>:7031                                    ; preds = %7003
  %7032 = icmp slt i32 %7029, 0
  %7033 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7004
  %7034 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7004
  %7035 = bitcast float* %7033 to i32*
  %7036 = bitcast float* %7034 to i32*
  br i1 %7032, label %7037, label %7044

; <label>:7037                                    ; preds = %7031
  %7038 = and i32 %7029, 1073741823
  %7039 = add i32 %7019, 20
  %7040 = add i32 %7039, %7038
  %7041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7040, i32 undef)  ; BufferLoad(srv,index,wot)
  %7042 = extractvalue %dx.types.ResRet.i32 %7041, 0
  %7043 = extractvalue %dx.types.ResRet.i32 %7041, 1
  br label %7044

; <label>:7044                                    ; preds = %7037, %7031
  %7045 = phi i32 [ %7042, %7037 ], [ %6953, %7031 ]
  %7046 = phi i32 [ %7043, %7037 ], [ %6954, %7031 ]
  store i32 %7045, i32* %7035, align 4
  store i32 %7046, i32* %7036, align 4
  %7047 = add i32 %7004, 1
  br label %7048

; <label>:7048                                    ; preds = %7044, %7003
  %7049 = phi i32 [ %7004, %7003 ], [ %7047, %7044 ]
  %7050 = add nuw i32 %7005, 1
  %7051 = icmp eq i32 %7050, %7000
  br i1 %7051, label %7052, label %7003

; <label>:7052                                    ; preds = %7048
  br label %7053

; <label>:7053                                    ; preds = %7052, %6997
  %7054 = phi i32 [ %6998, %6997 ], [ %7049, %7052 ]
  %7055 = icmp eq i32 %7054, 1
  %7056 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %7057 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %7055, label %7058, label %7061

; <label>:7058                                    ; preds = %7053
  %7059 = load float, float* %7056, align 4
  %7060 = load float, float* %7057, align 4
  br label %7088

; <label>:7061                                    ; preds = %7053
  %7062 = load float, float* %7056, align 4
  %7063 = load float, float* %7057, align 4
  %7064 = fdiv fast float 1.000000e+00, %7063
  %7065 = fsub fast float %7062, %7064
  %7066 = icmp ugt i32 %7054, 1
  br i1 %7066, label %7067, label %7083

; <label>:7067                                    ; preds = %7061
  br label %7068

; <label>:7068                                    ; preds = %7068, %7067
  %7069 = phi float [ %7078, %7068 ], [ %7065, %7067 ]
  %7070 = phi float [ %7079, %7068 ], [ %7062, %7067 ]
  %7071 = phi i32 [ %7080, %7068 ], [ 1, %7067 ]
  %7072 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7071
  %7073 = load float, float* %7072, align 4
  %7074 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7071
  %7075 = load float, float* %7074, align 4
  %7076 = fdiv fast float 1.000000e+00, %7075
  %7077 = fsub fast float %7073, %7076
  %7078 = call float @dx.op.binary.f32(i32 36, float %7069, float %7077)  ; FMin(a,b)
  %7079 = call float @dx.op.binary.f32(i32 35, float %7070, float %7073)  ; FMax(a,b)
  %7080 = add nuw i32 %7071, 1
  %7081 = icmp eq i32 %7080, %7054
  br i1 %7081, label %7082, label %7068

; <label>:7082                                    ; preds = %7068
  br label %7083

; <label>:7083                                    ; preds = %7082, %7061
  %7084 = phi float [ %7065, %7061 ], [ %7078, %7082 ]
  %7085 = phi float [ %7062, %7061 ], [ %7079, %7082 ]
  %7086 = fsub fast float %7085, %7084
  %7087 = fdiv fast float 1.000000e+00, %7086
  br label %7088

; <label>:7088                                    ; preds = %7083, %7058
  %7089 = phi float [ %7059, %7058 ], [ %7085, %7083 ]
  %7090 = phi float [ %7060, %7058 ], [ %7087, %7083 ]
  %7091 = fadd fast float %6792, %7089
  %7092 = fmul fast float %7091, %7090
  %7093 = call float @dx.op.unary.f32(i32 7, float %7092)  ; Saturate(value)
  %7094 = fmul fast float %7093, 2.000000e+00
  %7095 = fsub fast float 1.000000e+00, %7094
  %7096 = fmul fast float %6930, %6930
  %7097 = fsub fast float %6931, %7096
  %7098 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7097)  ; FMax(a,b)
  %7099 = fdiv fast float 1.000000e+00, %7098
  %7100 = fmul fast float %6931, %6930
  %7101 = fsub fast float %6932, %7100
  %7102 = fsub fast float %7095, %6930
  %7103 = fmul fast float %7095, %7095
  %7104 = fsub fast float %7103, %6931
  %7105 = fmul fast float %7099, %7101
  %7106 = fmul fast float %7105, %7102
  %7107 = fsub fast float %7104, %7106
  %7108 = fmul fast float %6931, %6931
  %7109 = fsub fast float %6933, %7108
  %7110 = fmul fast float %7101, %7101
  %7111 = fmul fast float %7110, %7099
  %7112 = fsub fast float %7109, %7111
  %7113 = fdiv fast float %7107, %7112
  %7114 = fmul fast float %7113, %7101
  %7115 = fsub fast float %7102, %7114
  %7116 = fmul fast float %7115, %7099
  %7117 = fmul fast float %7116, %6930
  %7118 = fsub fast float 1.000000e+00, %7117
  %7119 = fmul fast float %7113, %6931
  %7120 = fsub fast float %7118, %7119
  %7121 = fmul fast float %7116, %7116
  %7122 = fmul fast float %7113, 4.000000e+00
  %7123 = fmul fast float %7122, %7120
  %7124 = fsub fast float %7121, %7123
  %7125 = call float @dx.op.unary.f32(i32 24, float %7124)  ; Sqrt(value)
  %7126 = fcmp fast oge float %7116, 0.000000e+00
  %7127 = fsub fast float -0.000000e+00, %7125
  %7128 = select i1 %7126, float %7127, float %7125
  %7129 = fsub fast float %7128, %7116
  %7130 = fdiv fast float %7129, %7113
  %7131 = fdiv fast float %7120, %7129
  %7132 = fmul fast float %7130, 5.000000e-01
  %7133 = fmul fast float %7131, 2.000000e+00
  %7134 = select i1 %7126, float %7132, float %7133
  %7135 = select i1 %7126, float %7133, float %7132
  %7136 = call float @dx.op.binary.f32(i32 35, float %7134, float %7135)  ; FMax(a,b)
  %7137 = call float @dx.op.binary.f32(i32 36, float %7134, float %7135)  ; FMin(a,b)
  %7138 = fcmp fast ogt float %7095, %7136
  %7139 = fsub fast float %7095, %7137
  %7140 = fsub fast float %7095, %7136
  %7141 = fsub fast float %7136, %7137
  %7142 = select i1 %7138, float %7140, float %7141
  %7143 = fmul float %7139, %7142
  %7144 = select i1 %7138, float %7137, float %7095
  %7145 = fcmp fast ogt float %7095, %7137
  %7146 = fmul fast float %7144, %7136
  %7147 = fadd fast float %7144, %7136
  %7148 = fmul fast float %7147, %6930
  %7149 = fadd fast float %7146, %6931
  %7150 = fsub fast float %7149, %7148
  %7151 = fdiv fast float %7150, %7143
  %7152 = select i1 %7145, float %7151, float 0.000000e+00
  %7153 = fsub fast float 1.000000e+00, %7152
  %7154 = select i1 %7138, float %7153, float %7152
  %7155 = call float @dx.op.unary.f32(i32 7, float %7154)  ; Saturate(value)
  %7156 = extractvalue %dx.types.CBufRet.f32 %6915, 3
  %7157 = fmul fast float %7156, %7155
  %7158 = fsub fast float 1.000000e+00, %7157
  br label %7159

; <label>:7159                                    ; preds = %7088, %6800, %6765, %6761, %6725
  %7160 = phi float [ 1.000000e+00, %6725 ], [ %7158, %7088 ], [ 1.000000e+00, %6765 ], [ 1.000000e+00, %6800 ], [ 1.000000e+00, %6761 ]
  %7161 = fcmp fast ogt float %6757, 0.000000e+00
  br i1 %7161, label %7162, label %7326, !dx.controlflow.hints !113

; <label>:7162                                    ; preds = %7159
  %7163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7164 = extractvalue %dx.types.CBufRet.f32 %7163, 2
  %7165 = fadd fast float %7164, %6638
  %7166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7167 = extractvalue %dx.types.CBufRet.f32 %7166, 2
  %7168 = extractvalue %dx.types.CBufRet.f32 %7166, 3
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 2
  %7171 = call float @dx.op.binary.f32(i32 35, float %7165, float 0.000000e+00)  ; FMax(a,b)
  %7172 = fadd fast float %7171, 0x3F10000000000000
  %7173 = fcmp fast oeq float %7170, 0.000000e+00
  br i1 %7173, label %7174, label %7241

; <label>:7174                                    ; preds = %7162
  %7175 = extractvalue %dx.types.CBufRet.f32 %7166, 1
  %7176 = extractvalue %dx.types.CBufRet.f32 %7166, 0
  %7177 = fmul fast float %7176, %6656
  %7178 = fmul fast float %7175, %6657
  %7179 = fadd fast float %7177, 5.000000e-01
  %7180 = call float @dx.op.unary.f32(i32 27, float %7179)  ; Round_ni(value)
  %7181 = fadd fast float %7178, 5.000000e-01
  %7182 = call float @dx.op.unary.f32(i32 27, float %7181)  ; Round_ni(value)
  %7183 = fsub fast float %7179, %7180
  %7184 = fsub fast float %7181, %7182
  %7185 = fadd fast float %7180, -5.000000e-01
  %7186 = fadd fast float %7182, -5.000000e-01
  %7187 = fmul fast float %7183, 2.000000e+00
  %7188 = fsub fast float 3.000000e+00, %7187
  %7189 = fadd fast float %7187, 1.000000e+00
  %7190 = fsub fast float 2.000000e+00, %7183
  %7191 = bitcast float %7188 to i32
  %7192 = sub nsw i32 2129859010, %7191
  %7193 = bitcast i32 %7192 to float
  %7194 = fmul fast float %7193, %7190
  %7195 = fadd fast float %7194, -1.000000e+00
  %7196 = bitcast float %7189 to i32
  %7197 = sub nsw i32 2129859010, %7196
  %7198 = bitcast i32 %7197 to float
  %7199 = fmul fast float %7198, %7183
  %7200 = fadd fast float %7199, 1.000000e+00
  %7201 = fmul fast float %7184, 2.000000e+00
  %7202 = fsub fast float 3.000000e+00, %7201
  %7203 = fadd fast float %7201, 1.000000e+00
  %7204 = fsub fast float 2.000000e+00, %7184
  %7205 = bitcast float %7202 to i32
  %7206 = sub nsw i32 2129859010, %7205
  %7207 = bitcast i32 %7206 to float
  %7208 = fmul fast float %7207, %7204
  %7209 = fadd fast float %7208, -1.000000e+00
  %7210 = bitcast float %7203 to i32
  %7211 = sub nsw i32 2129859010, %7210
  %7212 = bitcast i32 %7211 to float
  %7213 = fmul fast float %7212, %7184
  %7214 = fadd fast float %7213, 1.000000e+00
  %7215 = fadd fast float %7195, %7185
  %7216 = fmul fast float %7215, %7167
  %7217 = fadd fast float %7209, %7186
  %7218 = fmul fast float %7217, %7168
  %7219 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7216, float %7218, float undef, float undef, i32 0, i32 0, i32 undef, float %7172)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7220 = extractvalue %dx.types.ResRet.f32 %7219, 0
  %7221 = fmul fast float %7220, %7188
  %7222 = fadd fast float %7200, %7185
  %7223 = fmul fast float %7222, %7167
  %7224 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7223, float %7218, float undef, float undef, i32 0, i32 0, i32 undef, float %7172)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7225 = extractvalue %dx.types.ResRet.f32 %7224, 0
  %7226 = fmul fast float %7225, %7189
  %7227 = fadd fast float %7214, %7186
  %7228 = fmul fast float %7227, %7168
  %7229 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7216, float %7228, float undef, float undef, i32 0, i32 0, i32 undef, float %7172)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7230 = extractvalue %dx.types.ResRet.f32 %7229, 0
  %7231 = fmul fast float %7230, %7188
  %7232 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %7223, float %7228, float undef, float undef, i32 0, i32 0, i32 undef, float %7172)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7233 = extractvalue %dx.types.ResRet.f32 %7232, 0
  %7234 = fmul fast float %7233, %7189
  %7235 = fadd fast float %7234, %7231
  %7236 = fmul fast float %7235, %7203
  %7237 = fadd fast float %7226, %7221
  %7238 = fmul fast float %7237, %7202
  %7239 = fadd fast float %7238, %7236
  %7240 = fmul fast float %7239, 6.250000e-02
  br label %7326

; <label>:7241                                    ; preds = %7162
  %7242 = fmul fast float %303, 0x401921FB60000000
  %7243 = call float @dx.op.unary.f32(i32 13, float %7242)  ; Sin(value)
  %7244 = call float @dx.op.unary.f32(i32 12, float %7242)  ; Cos(value)
  %7245 = fsub fast float -0.000000e+00, %7243
  br label %7246

; <label>:7246                                    ; preds = %7295, %7241
  %7247 = phi float [ 0.000000e+00, %7241 ], [ %7290, %7295 ]
  %7248 = phi float [ 0.000000e+00, %7241 ], [ %7292, %7295 ]
  %7249 = phi i32 [ 0, %7241 ], [ %7296, %7295 ]
  %7250 = mul i32 %7249, 2
  %7251 = add i32 0, %7250
  %7252 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7251
  %7253 = load float, float* %7252, align 4
  %7254 = mul i32 %7249, 2
  %7255 = add i32 1, %7254
  %7256 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7255
  %7257 = load float, float* %7256, align 4
  %7258 = fmul fast float %7253, %7244
  %7259 = call float @dx.op.tertiary.f32(i32 46, float %7257, float %7245, float %7258)  ; FMad(a,b,c)
  %7260 = fmul fast float %7253, %7243
  %7261 = call float @dx.op.tertiary.f32(i32 46, float %7257, float %7244, float %7260)  ; FMad(a,b,c)
  %7262 = fmul fast float %7259, %7170
  %7263 = fmul fast float %7261, %7170
  %7264 = fadd fast float %7262, %6656
  %7265 = fadd fast float %7263, %6657
  %7266 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %7264, float %7265, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7267 = extractvalue %dx.types.ResRet.f32 %7266, 0
  %7268 = extractvalue %dx.types.ResRet.f32 %7266, 1
  %7269 = extractvalue %dx.types.ResRet.f32 %7266, 2
  %7270 = extractvalue %dx.types.ResRet.f32 %7266, 3
  %7271 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7267, float* %7271, align 4
  %7272 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7268, float* %7272, align 4
  %7273 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7269, float* %7273, align 4
  %7274 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7270, float* %7274, align 4
  %7275 = fsub fast float %7267, %7172
  %7276 = fcmp fast olt float %7275, 0.000000e+00
  %7277 = select i1 %7276, float 0.000000e+00, float 1.000000e+00
  %7278 = fadd fast float %7277, %7247
  %7279 = fmul fast float %7277, %7275
  %7280 = fadd fast float %7279, %7248
  br label %7281

; <label>:7281                                    ; preds = %7281, %7246
  %7282 = phi i32 [ 1, %7246 ], [ %7293, %7281 ]
  %7283 = phi float [ %7280, %7246 ], [ %7292, %7281 ]
  %7284 = phi float [ %7278, %7246 ], [ %7290, %7281 ]
  %7285 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7282
  %7286 = load float, float* %7285, align 4, !tbaa !114, !noalias !104
  %7287 = fsub fast float %7286, %7172
  %7288 = fcmp fast olt float %7287, 0.000000e+00
  %7289 = select i1 %7288, float 0.000000e+00, float 1.000000e+00
  %7290 = fadd fast float %7289, %7284
  %7291 = fmul fast float %7289, %7287
  %7292 = fadd fast float %7291, %7283
  %7293 = add nuw nsw i32 %7282, 1
  %7294 = icmp eq i32 %7293, 4
  br i1 %7294, label %7295, label %7281, !llvm.loop !116

; <label>:7295                                    ; preds = %7281
  %7296 = add nuw nsw i32 %7249, 1
  %7297 = icmp eq i32 %7296, 8
  br i1 %7297, label %7298, label %7246, !llvm.loop !117

; <label>:7298                                    ; preds = %7295
  %7299 = fdiv fast float 1.000000e+00, %7290
  %7300 = fmul fast float %7299, %7292
  %7301 = fdiv fast float 1.000000e+00, %7172
  %7302 = fmul fast float %7300, %7301
  %7303 = call float @dx.op.unary.f32(i32 7, float %7302)  ; Saturate(value)
  %7304 = call float @dx.op.binary.f32(i32 35, float %7303, float 0.000000e+00)  ; FMax(a,b)
  %7305 = fmul fast float %7290, 3.125000e-02
  %7306 = call float @dx.op.unary.f32(i32 7, float %7305)  ; Saturate(value)
  %7307 = fmul fast float %7306, 2.000000e+00
  %7308 = fadd fast float %7307, -1.000000e+00
  %7309 = fcmp fast ogt float %7308, 0.000000e+00
  %7310 = fcmp fast olt float %7308, 0.000000e+00
  %7311 = zext i1 %7309 to i32
  %7312 = zext i1 %7310 to i32
  %7313 = sub nsw i32 %7311, %7312
  %7314 = sitofp i32 %7313 to float
  %7315 = fmul fast float %7314, %7308
  %7316 = fsub fast float 1.000000e+00, %7315
  %7317 = fmul fast float %7316, %7316
  %7318 = fmul fast float %7317, %7316
  %7319 = fsub fast float %7316, %7318
  %7320 = fmul fast float %7319, %7304
  %7321 = fsub fast float 1.000000e+00, %7318
  %7322 = fsub fast float %7321, %7320
  %7323 = fmul fast float %7314, 5.000000e-01
  %7324 = fmul fast float %7323, %7322
  %7325 = fsub fast float 5.000000e-01, %7324
  br label %7326

; <label>:7326                                    ; preds = %7298, %7174, %7159
  %7327 = phi float [ 1.000000e+00, %7159 ], [ %7240, %7174 ], [ %7325, %7298 ]
  %7328 = fcmp fast ogt float %6755, 0.000000e+00
  br i1 %7328, label %7329, label %7493, !dx.controlflow.hints !118

; <label>:7329                                    ; preds = %7326
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 1
  %7332 = fadd fast float %7331, %6638
  %7333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7334 = extractvalue %dx.types.CBufRet.f32 %7333, 2
  %7335 = extractvalue %dx.types.CBufRet.f32 %7333, 3
  %7336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7337 = extractvalue %dx.types.CBufRet.f32 %7336, 1
  %7338 = call float @dx.op.binary.f32(i32 35, float %7332, float 0.000000e+00)  ; FMax(a,b)
  %7339 = fadd fast float %7338, 0x3F10000000000000
  %7340 = fcmp fast oeq float %7337, 0.000000e+00
  br i1 %7340, label %7341, label %7408

; <label>:7341                                    ; preds = %7329
  %7342 = extractvalue %dx.types.CBufRet.f32 %7333, 1
  %7343 = extractvalue %dx.types.CBufRet.f32 %7333, 0
  %7344 = fmul fast float %7343, %6648
  %7345 = fmul fast float %7342, %6649
  %7346 = fadd fast float %7344, 5.000000e-01
  %7347 = call float @dx.op.unary.f32(i32 27, float %7346)  ; Round_ni(value)
  %7348 = fadd fast float %7345, 5.000000e-01
  %7349 = call float @dx.op.unary.f32(i32 27, float %7348)  ; Round_ni(value)
  %7350 = fsub fast float %7346, %7347
  %7351 = fsub fast float %7348, %7349
  %7352 = fadd fast float %7347, -5.000000e-01
  %7353 = fadd fast float %7349, -5.000000e-01
  %7354 = fmul fast float %7350, 2.000000e+00
  %7355 = fsub fast float 3.000000e+00, %7354
  %7356 = fadd fast float %7354, 1.000000e+00
  %7357 = fsub fast float 2.000000e+00, %7350
  %7358 = bitcast float %7355 to i32
  %7359 = sub nsw i32 2129859010, %7358
  %7360 = bitcast i32 %7359 to float
  %7361 = fmul fast float %7360, %7357
  %7362 = fadd fast float %7361, -1.000000e+00
  %7363 = bitcast float %7356 to i32
  %7364 = sub nsw i32 2129859010, %7363
  %7365 = bitcast i32 %7364 to float
  %7366 = fmul fast float %7365, %7350
  %7367 = fadd fast float %7366, 1.000000e+00
  %7368 = fmul fast float %7351, 2.000000e+00
  %7369 = fsub fast float 3.000000e+00, %7368
  %7370 = fadd fast float %7368, 1.000000e+00
  %7371 = fsub fast float 2.000000e+00, %7351
  %7372 = bitcast float %7369 to i32
  %7373 = sub nsw i32 2129859010, %7372
  %7374 = bitcast i32 %7373 to float
  %7375 = fmul fast float %7374, %7371
  %7376 = fadd fast float %7375, -1.000000e+00
  %7377 = bitcast float %7370 to i32
  %7378 = sub nsw i32 2129859010, %7377
  %7379 = bitcast i32 %7378 to float
  %7380 = fmul fast float %7379, %7351
  %7381 = fadd fast float %7380, 1.000000e+00
  %7382 = fadd fast float %7362, %7352
  %7383 = fmul fast float %7382, %7334
  %7384 = fadd fast float %7376, %7353
  %7385 = fmul fast float %7384, %7335
  %7386 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7383, float %7385, float undef, float undef, i32 0, i32 0, i32 undef, float %7339)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7387 = extractvalue %dx.types.ResRet.f32 %7386, 0
  %7388 = fmul fast float %7387, %7355
  %7389 = fadd fast float %7367, %7352
  %7390 = fmul fast float %7389, %7334
  %7391 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7390, float %7385, float undef, float undef, i32 0, i32 0, i32 undef, float %7339)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7392 = extractvalue %dx.types.ResRet.f32 %7391, 0
  %7393 = fmul fast float %7392, %7356
  %7394 = fadd fast float %7381, %7353
  %7395 = fmul fast float %7394, %7335
  %7396 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7383, float %7395, float undef, float undef, i32 0, i32 0, i32 undef, float %7339)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7397 = extractvalue %dx.types.ResRet.f32 %7396, 0
  %7398 = fmul fast float %7397, %7355
  %7399 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %7390, float %7395, float undef, float undef, i32 0, i32 0, i32 undef, float %7339)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7400 = extractvalue %dx.types.ResRet.f32 %7399, 0
  %7401 = fmul fast float %7400, %7356
  %7402 = fadd fast float %7401, %7398
  %7403 = fmul fast float %7402, %7370
  %7404 = fadd fast float %7393, %7388
  %7405 = fmul fast float %7404, %7369
  %7406 = fadd fast float %7405, %7403
  %7407 = fmul fast float %7406, 6.250000e-02
  br label %7493

; <label>:7408                                    ; preds = %7329
  %7409 = fmul fast float %303, 0x401921FB60000000
  %7410 = call float @dx.op.unary.f32(i32 13, float %7409)  ; Sin(value)
  %7411 = call float @dx.op.unary.f32(i32 12, float %7409)  ; Cos(value)
  %7412 = fsub fast float -0.000000e+00, %7410
  br label %7413

; <label>:7413                                    ; preds = %7462, %7408
  %7414 = phi float [ 0.000000e+00, %7408 ], [ %7457, %7462 ]
  %7415 = phi float [ 0.000000e+00, %7408 ], [ %7459, %7462 ]
  %7416 = phi i32 [ 0, %7408 ], [ %7463, %7462 ]
  %7417 = mul i32 %7416, 2
  %7418 = add i32 0, %7417
  %7419 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7418
  %7420 = load float, float* %7419, align 4
  %7421 = mul i32 %7416, 2
  %7422 = add i32 1, %7421
  %7423 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7422
  %7424 = load float, float* %7423, align 4
  %7425 = fmul fast float %7420, %7411
  %7426 = call float @dx.op.tertiary.f32(i32 46, float %7424, float %7412, float %7425)  ; FMad(a,b,c)
  %7427 = fmul fast float %7420, %7410
  %7428 = call float @dx.op.tertiary.f32(i32 46, float %7424, float %7411, float %7427)  ; FMad(a,b,c)
  %7429 = fmul fast float %7426, %7337
  %7430 = fmul fast float %7428, %7337
  %7431 = fadd fast float %7429, %6648
  %7432 = fadd fast float %7430, %6649
  %7433 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %7431, float %7432, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7434 = extractvalue %dx.types.ResRet.f32 %7433, 0
  %7435 = extractvalue %dx.types.ResRet.f32 %7433, 1
  %7436 = extractvalue %dx.types.ResRet.f32 %7433, 2
  %7437 = extractvalue %dx.types.ResRet.f32 %7433, 3
  %7438 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7434, float* %7438, align 4
  %7439 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7435, float* %7439, align 4
  %7440 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7436, float* %7440, align 4
  %7441 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7437, float* %7441, align 4
  %7442 = fsub fast float %7434, %7339
  %7443 = fcmp fast olt float %7442, 0.000000e+00
  %7444 = select i1 %7443, float 0.000000e+00, float 1.000000e+00
  %7445 = fadd fast float %7444, %7414
  %7446 = fmul fast float %7444, %7442
  %7447 = fadd fast float %7446, %7415
  br label %7448

; <label>:7448                                    ; preds = %7448, %7413
  %7449 = phi i32 [ 1, %7413 ], [ %7460, %7448 ]
  %7450 = phi float [ %7447, %7413 ], [ %7459, %7448 ]
  %7451 = phi float [ %7445, %7413 ], [ %7457, %7448 ]
  %7452 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7449
  %7453 = load float, float* %7452, align 4, !tbaa !114, !noalias !104
  %7454 = fsub fast float %7453, %7339
  %7455 = fcmp fast olt float %7454, 0.000000e+00
  %7456 = select i1 %7455, float 0.000000e+00, float 1.000000e+00
  %7457 = fadd fast float %7456, %7451
  %7458 = fmul fast float %7456, %7454
  %7459 = fadd fast float %7458, %7450
  %7460 = add nuw nsw i32 %7449, 1
  %7461 = icmp eq i32 %7460, 4
  br i1 %7461, label %7462, label %7448, !llvm.loop !116

; <label>:7462                                    ; preds = %7448
  %7463 = add nuw nsw i32 %7416, 1
  %7464 = icmp eq i32 %7463, 8
  br i1 %7464, label %7465, label %7413, !llvm.loop !117

; <label>:7465                                    ; preds = %7462
  %7466 = fdiv fast float 1.000000e+00, %7457
  %7467 = fmul fast float %7466, %7459
  %7468 = fdiv fast float 1.000000e+00, %7339
  %7469 = fmul fast float %7467, %7468
  %7470 = call float @dx.op.unary.f32(i32 7, float %7469)  ; Saturate(value)
  %7471 = call float @dx.op.binary.f32(i32 35, float %7470, float 0.000000e+00)  ; FMax(a,b)
  %7472 = fmul fast float %7457, 3.125000e-02
  %7473 = call float @dx.op.unary.f32(i32 7, float %7472)  ; Saturate(value)
  %7474 = fmul fast float %7473, 2.000000e+00
  %7475 = fadd fast float %7474, -1.000000e+00
  %7476 = fcmp fast ogt float %7475, 0.000000e+00
  %7477 = fcmp fast olt float %7475, 0.000000e+00
  %7478 = zext i1 %7476 to i32
  %7479 = zext i1 %7477 to i32
  %7480 = sub nsw i32 %7478, %7479
  %7481 = sitofp i32 %7480 to float
  %7482 = fmul fast float %7481, %7475
  %7483 = fsub fast float 1.000000e+00, %7482
  %7484 = fmul fast float %7483, %7483
  %7485 = fmul fast float %7484, %7483
  %7486 = fsub fast float %7483, %7485
  %7487 = fmul fast float %7486, %7471
  %7488 = fsub fast float 1.000000e+00, %7485
  %7489 = fsub fast float %7488, %7487
  %7490 = fmul fast float %7481, 5.000000e-01
  %7491 = fmul fast float %7490, %7489
  %7492 = fsub fast float 5.000000e-01, %7491
  br label %7493

; <label>:7493                                    ; preds = %7465, %7341, %7326
  %7494 = phi float [ 1.000000e+00, %7326 ], [ %7407, %7341 ], [ %7492, %7465 ]
  %7495 = fcmp fast ogt float %6754, 0.000000e+00
  br i1 %7495, label %7496, label %7814, !dx.controlflow.hints !119

; <label>:7496                                    ; preds = %7493
  %7497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7498 = extractvalue %dx.types.CBufRet.f32 %7497, 0
  %7499 = fadd fast float %7498, %6638
  %7500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7501 = extractvalue %dx.types.CBufRet.f32 %7500, 2
  %7502 = extractvalue %dx.types.CBufRet.f32 %7500, 3
  %7503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7504 = extractvalue %dx.types.CBufRet.f32 %7503, 0
  %7505 = call float @dx.op.binary.f32(i32 35, float %7499, float 0.000000e+00)  ; FMax(a,b)
  %7506 = fadd fast float %7505, 0x3F10000000000000
  %7507 = fcmp fast oeq float %7504, 0.000000e+00
  br i1 %6641, label %7508, label %7661, !dx.controlflow.hints !120

; <label>:7508                                    ; preds = %7496
  br i1 %7507, label %7509, label %7576

; <label>:7509                                    ; preds = %7508
  %7510 = extractvalue %dx.types.CBufRet.f32 %7500, 1
  %7511 = extractvalue %dx.types.CBufRet.f32 %7500, 0
  %7512 = fmul fast float %7511, %6630
  %7513 = fmul fast float %7510, %6634
  %7514 = fadd fast float %7512, 5.000000e-01
  %7515 = call float @dx.op.unary.f32(i32 27, float %7514)  ; Round_ni(value)
  %7516 = fadd fast float %7513, 5.000000e-01
  %7517 = call float @dx.op.unary.f32(i32 27, float %7516)  ; Round_ni(value)
  %7518 = fsub fast float %7514, %7515
  %7519 = fsub fast float %7516, %7517
  %7520 = fadd fast float %7515, -5.000000e-01
  %7521 = fadd fast float %7517, -5.000000e-01
  %7522 = fmul fast float %7518, 2.000000e+00
  %7523 = fsub fast float 3.000000e+00, %7522
  %7524 = fadd fast float %7522, 1.000000e+00
  %7525 = fsub fast float 2.000000e+00, %7518
  %7526 = bitcast float %7523 to i32
  %7527 = sub nsw i32 2129859010, %7526
  %7528 = bitcast i32 %7527 to float
  %7529 = fmul fast float %7528, %7525
  %7530 = fadd fast float %7529, -1.000000e+00
  %7531 = bitcast float %7524 to i32
  %7532 = sub nsw i32 2129859010, %7531
  %7533 = bitcast i32 %7532 to float
  %7534 = fmul fast float %7533, %7518
  %7535 = fadd fast float %7534, 1.000000e+00
  %7536 = fmul fast float %7519, 2.000000e+00
  %7537 = fsub fast float 3.000000e+00, %7536
  %7538 = fadd fast float %7536, 1.000000e+00
  %7539 = fsub fast float 2.000000e+00, %7519
  %7540 = bitcast float %7537 to i32
  %7541 = sub nsw i32 2129859010, %7540
  %7542 = bitcast i32 %7541 to float
  %7543 = fmul fast float %7542, %7539
  %7544 = fadd fast float %7543, -1.000000e+00
  %7545 = bitcast float %7538 to i32
  %7546 = sub nsw i32 2129859010, %7545
  %7547 = bitcast i32 %7546 to float
  %7548 = fmul fast float %7547, %7519
  %7549 = fadd fast float %7548, 1.000000e+00
  %7550 = fadd fast float %7530, %7520
  %7551 = fmul fast float %7550, %7501
  %7552 = fadd fast float %7544, %7521
  %7553 = fmul fast float %7552, %7502
  %7554 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7551, float %7553, float undef, float undef, i32 0, i32 0, i32 undef, float %7506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7555 = extractvalue %dx.types.ResRet.f32 %7554, 0
  %7556 = fmul fast float %7555, %7523
  %7557 = fadd fast float %7535, %7520
  %7558 = fmul fast float %7557, %7501
  %7559 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7558, float %7553, float undef, float undef, i32 0, i32 0, i32 undef, float %7506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7560 = extractvalue %dx.types.ResRet.f32 %7559, 0
  %7561 = fmul fast float %7560, %7524
  %7562 = fadd fast float %7549, %7521
  %7563 = fmul fast float %7562, %7502
  %7564 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7551, float %7563, float undef, float undef, i32 0, i32 0, i32 undef, float %7506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7565 = extractvalue %dx.types.ResRet.f32 %7564, 0
  %7566 = fmul fast float %7565, %7523
  %7567 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7558, float %7563, float undef, float undef, i32 0, i32 0, i32 undef, float %7506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7568 = extractvalue %dx.types.ResRet.f32 %7567, 0
  %7569 = fmul fast float %7568, %7524
  %7570 = fadd fast float %7569, %7566
  %7571 = fmul fast float %7570, %7538
  %7572 = fadd fast float %7561, %7556
  %7573 = fmul fast float %7572, %7537
  %7574 = fadd fast float %7573, %7571
  %7575 = fmul fast float %7574, 6.250000e-02
  br label %7814

; <label>:7576                                    ; preds = %7508
  %7577 = fmul fast float %303, 0x401921FB60000000
  %7578 = call float @dx.op.unary.f32(i32 13, float %7577)  ; Sin(value)
  %7579 = call float @dx.op.unary.f32(i32 12, float %7577)  ; Cos(value)
  %7580 = fsub fast float -0.000000e+00, %7578
  br label %7581

; <label>:7581                                    ; preds = %7630, %7576
  %7582 = phi float [ 0.000000e+00, %7576 ], [ %7625, %7630 ]
  %7583 = phi float [ 0.000000e+00, %7576 ], [ %7627, %7630 ]
  %7584 = phi i32 [ 0, %7576 ], [ %7631, %7630 ]
  %7585 = mul i32 %7584, 2
  %7586 = add i32 0, %7585
  %7587 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7586
  %7588 = load float, float* %7587, align 4
  %7589 = mul i32 %7584, 2
  %7590 = add i32 1, %7589
  %7591 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7590
  %7592 = load float, float* %7591, align 4
  %7593 = fmul fast float %7588, %7579
  %7594 = call float @dx.op.tertiary.f32(i32 46, float %7592, float %7580, float %7593)  ; FMad(a,b,c)
  %7595 = fmul fast float %7588, %7578
  %7596 = call float @dx.op.tertiary.f32(i32 46, float %7592, float %7579, float %7595)  ; FMad(a,b,c)
  %7597 = fmul fast float %7594, %7504
  %7598 = fmul fast float %7596, %7504
  %7599 = fadd fast float %7597, %6630
  %7600 = fadd fast float %7598, %6634
  %7601 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %7599, float %7600, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7602 = extractvalue %dx.types.ResRet.f32 %7601, 0
  %7603 = extractvalue %dx.types.ResRet.f32 %7601, 1
  %7604 = extractvalue %dx.types.ResRet.f32 %7601, 2
  %7605 = extractvalue %dx.types.ResRet.f32 %7601, 3
  %7606 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7602, float* %7606, align 4
  %7607 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7603, float* %7607, align 4
  %7608 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7604, float* %7608, align 4
  %7609 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7605, float* %7609, align 4
  %7610 = fsub fast float %7602, %7506
  %7611 = fcmp fast olt float %7610, 0.000000e+00
  %7612 = select i1 %7611, float 0.000000e+00, float 1.000000e+00
  %7613 = fadd fast float %7612, %7582
  %7614 = fmul fast float %7612, %7610
  %7615 = fadd fast float %7614, %7583
  br label %7616

; <label>:7616                                    ; preds = %7616, %7581
  %7617 = phi i32 [ 1, %7581 ], [ %7628, %7616 ]
  %7618 = phi float [ %7615, %7581 ], [ %7627, %7616 ]
  %7619 = phi float [ %7613, %7581 ], [ %7625, %7616 ]
  %7620 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7617
  %7621 = load float, float* %7620, align 4, !tbaa !114, !noalias !104
  %7622 = fsub fast float %7621, %7506
  %7623 = fcmp fast olt float %7622, 0.000000e+00
  %7624 = select i1 %7623, float 0.000000e+00, float 1.000000e+00
  %7625 = fadd fast float %7624, %7619
  %7626 = fmul fast float %7624, %7622
  %7627 = fadd fast float %7626, %7618
  %7628 = add nuw nsw i32 %7617, 1
  %7629 = icmp eq i32 %7628, 4
  br i1 %7629, label %7630, label %7616, !llvm.loop !116

; <label>:7630                                    ; preds = %7616
  %7631 = add nuw nsw i32 %7584, 1
  %7632 = icmp eq i32 %7631, 8
  br i1 %7632, label %7633, label %7581, !llvm.loop !117

; <label>:7633                                    ; preds = %7630
  %7634 = fdiv fast float 1.000000e+00, %7625
  %7635 = fmul fast float %7634, %7627
  %7636 = fdiv fast float 1.000000e+00, %7506
  %7637 = fmul fast float %7635, %7636
  %7638 = call float @dx.op.unary.f32(i32 7, float %7637)  ; Saturate(value)
  %7639 = call float @dx.op.binary.f32(i32 35, float %7638, float 0.000000e+00)  ; FMax(a,b)
  %7640 = fmul fast float %7625, 3.125000e-02
  %7641 = call float @dx.op.unary.f32(i32 7, float %7640)  ; Saturate(value)
  %7642 = fmul fast float %7641, 2.000000e+00
  %7643 = fadd fast float %7642, -1.000000e+00
  %7644 = fcmp fast ogt float %7643, 0.000000e+00
  %7645 = fcmp fast olt float %7643, 0.000000e+00
  %7646 = zext i1 %7644 to i32
  %7647 = zext i1 %7645 to i32
  %7648 = sub nsw i32 %7646, %7647
  %7649 = sitofp i32 %7648 to float
  %7650 = fmul fast float %7649, %7643
  %7651 = fsub fast float 1.000000e+00, %7650
  %7652 = fmul fast float %7651, %7651
  %7653 = fmul fast float %7652, %7651
  %7654 = fsub fast float %7651, %7653
  %7655 = fmul fast float %7654, %7639
  %7656 = fsub fast float 1.000000e+00, %7653
  %7657 = fsub fast float %7656, %7655
  %7658 = fmul fast float %7649, 5.000000e-01
  %7659 = fmul fast float %7658, %7657
  %7660 = fsub fast float 5.000000e-01, %7659
  br label %7814

; <label>:7661                                    ; preds = %7496
  br i1 %7507, label %7662, label %7729

; <label>:7662                                    ; preds = %7661
  %7663 = extractvalue %dx.types.CBufRet.f32 %7500, 1
  %7664 = extractvalue %dx.types.CBufRet.f32 %7500, 0
  %7665 = fmul fast float %7664, %6630
  %7666 = fmul fast float %7663, %6634
  %7667 = fadd fast float %7665, 5.000000e-01
  %7668 = call float @dx.op.unary.f32(i32 27, float %7667)  ; Round_ni(value)
  %7669 = fadd fast float %7666, 5.000000e-01
  %7670 = call float @dx.op.unary.f32(i32 27, float %7669)  ; Round_ni(value)
  %7671 = fsub fast float %7667, %7668
  %7672 = fsub fast float %7669, %7670
  %7673 = fadd fast float %7668, -5.000000e-01
  %7674 = fadd fast float %7670, -5.000000e-01
  %7675 = fmul fast float %7671, 2.000000e+00
  %7676 = fsub fast float 3.000000e+00, %7675
  %7677 = fadd fast float %7675, 1.000000e+00
  %7678 = fsub fast float 2.000000e+00, %7671
  %7679 = bitcast float %7676 to i32
  %7680 = sub nsw i32 2129859010, %7679
  %7681 = bitcast i32 %7680 to float
  %7682 = fmul fast float %7681, %7678
  %7683 = fadd fast float %7682, -1.000000e+00
  %7684 = bitcast float %7677 to i32
  %7685 = sub nsw i32 2129859010, %7684
  %7686 = bitcast i32 %7685 to float
  %7687 = fmul fast float %7686, %7671
  %7688 = fadd fast float %7687, 1.000000e+00
  %7689 = fmul fast float %7672, 2.000000e+00
  %7690 = fsub fast float 3.000000e+00, %7689
  %7691 = fadd fast float %7689, 1.000000e+00
  %7692 = fsub fast float 2.000000e+00, %7672
  %7693 = bitcast float %7690 to i32
  %7694 = sub nsw i32 2129859010, %7693
  %7695 = bitcast i32 %7694 to float
  %7696 = fmul fast float %7695, %7692
  %7697 = fadd fast float %7696, -1.000000e+00
  %7698 = bitcast float %7691 to i32
  %7699 = sub nsw i32 2129859010, %7698
  %7700 = bitcast i32 %7699 to float
  %7701 = fmul fast float %7700, %7672
  %7702 = fadd fast float %7701, 1.000000e+00
  %7703 = fadd fast float %7683, %7673
  %7704 = fmul fast float %7703, %7501
  %7705 = fadd fast float %7697, %7674
  %7706 = fmul fast float %7705, %7502
  %7707 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7704, float %7706, float undef, float undef, i32 0, i32 0, i32 undef, float %7506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7708 = extractvalue %dx.types.ResRet.f32 %7707, 0
  %7709 = fmul fast float %7708, %7676
  %7710 = fadd fast float %7688, %7673
  %7711 = fmul fast float %7710, %7501
  %7712 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7711, float %7706, float undef, float undef, i32 0, i32 0, i32 undef, float %7506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7713 = extractvalue %dx.types.ResRet.f32 %7712, 0
  %7714 = fmul fast float %7713, %7677
  %7715 = fadd fast float %7702, %7674
  %7716 = fmul fast float %7715, %7502
  %7717 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7704, float %7716, float undef, float undef, i32 0, i32 0, i32 undef, float %7506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7718 = extractvalue %dx.types.ResRet.f32 %7717, 0
  %7719 = fmul fast float %7718, %7676
  %7720 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7711, float %7716, float undef, float undef, i32 0, i32 0, i32 undef, float %7506)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7721 = extractvalue %dx.types.ResRet.f32 %7720, 0
  %7722 = fmul fast float %7721, %7677
  %7723 = fadd fast float %7722, %7719
  %7724 = fmul fast float %7723, %7691
  %7725 = fadd fast float %7714, %7709
  %7726 = fmul fast float %7725, %7690
  %7727 = fadd fast float %7726, %7724
  %7728 = fmul fast float %7727, 6.250000e-02
  br label %7814

; <label>:7729                                    ; preds = %7661
  %7730 = fmul fast float %303, 0x401921FB60000000
  %7731 = call float @dx.op.unary.f32(i32 13, float %7730)  ; Sin(value)
  %7732 = call float @dx.op.unary.f32(i32 12, float %7730)  ; Cos(value)
  %7733 = fsub fast float -0.000000e+00, %7731
  br label %7734

; <label>:7734                                    ; preds = %7783, %7729
  %7735 = phi float [ 0.000000e+00, %7729 ], [ %7778, %7783 ]
  %7736 = phi float [ 0.000000e+00, %7729 ], [ %7780, %7783 ]
  %7737 = phi i32 [ 0, %7729 ], [ %7784, %7783 ]
  %7738 = mul i32 %7737, 2
  %7739 = add i32 0, %7738
  %7740 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7739
  %7741 = load float, float* %7740, align 4
  %7742 = mul i32 %7737, 2
  %7743 = add i32 1, %7742
  %7744 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7743
  %7745 = load float, float* %7744, align 4
  %7746 = fmul fast float %7741, %7732
  %7747 = call float @dx.op.tertiary.f32(i32 46, float %7745, float %7733, float %7746)  ; FMad(a,b,c)
  %7748 = fmul fast float %7741, %7731
  %7749 = call float @dx.op.tertiary.f32(i32 46, float %7745, float %7732, float %7748)  ; FMad(a,b,c)
  %7750 = fmul fast float %7747, %7504
  %7751 = fmul fast float %7749, %7504
  %7752 = fadd fast float %7750, %6630
  %7753 = fadd fast float %7751, %6634
  %7754 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7752, float %7753, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7755 = extractvalue %dx.types.ResRet.f32 %7754, 0
  %7756 = extractvalue %dx.types.ResRet.f32 %7754, 1
  %7757 = extractvalue %dx.types.ResRet.f32 %7754, 2
  %7758 = extractvalue %dx.types.ResRet.f32 %7754, 3
  %7759 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7755, float* %7759, align 4
  %7760 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7756, float* %7760, align 4
  %7761 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7757, float* %7761, align 4
  %7762 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7758, float* %7762, align 4
  %7763 = fsub fast float %7755, %7506
  %7764 = fcmp fast olt float %7763, 0.000000e+00
  %7765 = select i1 %7764, float 0.000000e+00, float 1.000000e+00
  %7766 = fadd fast float %7765, %7735
  %7767 = fmul fast float %7765, %7763
  %7768 = fadd fast float %7767, %7736
  br label %7769

; <label>:7769                                    ; preds = %7769, %7734
  %7770 = phi i32 [ 1, %7734 ], [ %7781, %7769 ]
  %7771 = phi float [ %7768, %7734 ], [ %7780, %7769 ]
  %7772 = phi float [ %7766, %7734 ], [ %7778, %7769 ]
  %7773 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7770
  %7774 = load float, float* %7773, align 4, !tbaa !114, !noalias !104
  %7775 = fsub fast float %7774, %7506
  %7776 = fcmp fast olt float %7775, 0.000000e+00
  %7777 = select i1 %7776, float 0.000000e+00, float 1.000000e+00
  %7778 = fadd fast float %7777, %7772
  %7779 = fmul fast float %7777, %7775
  %7780 = fadd fast float %7779, %7771
  %7781 = add nuw nsw i32 %7770, 1
  %7782 = icmp eq i32 %7781, 4
  br i1 %7782, label %7783, label %7769, !llvm.loop !116

; <label>:7783                                    ; preds = %7769
  %7784 = add nuw nsw i32 %7737, 1
  %7785 = icmp eq i32 %7784, 8
  br i1 %7785, label %7786, label %7734, !llvm.loop !117

; <label>:7786                                    ; preds = %7783
  %7787 = fdiv fast float 1.000000e+00, %7778
  %7788 = fmul fast float %7787, %7780
  %7789 = fdiv fast float 1.000000e+00, %7506
  %7790 = fmul fast float %7788, %7789
  %7791 = call float @dx.op.unary.f32(i32 7, float %7790)  ; Saturate(value)
  %7792 = call float @dx.op.binary.f32(i32 35, float %7791, float 0.000000e+00)  ; FMax(a,b)
  %7793 = fmul fast float %7778, 3.125000e-02
  %7794 = call float @dx.op.unary.f32(i32 7, float %7793)  ; Saturate(value)
  %7795 = fmul fast float %7794, 2.000000e+00
  %7796 = fadd fast float %7795, -1.000000e+00
  %7797 = fcmp fast ogt float %7796, 0.000000e+00
  %7798 = fcmp fast olt float %7796, 0.000000e+00
  %7799 = zext i1 %7797 to i32
  %7800 = zext i1 %7798 to i32
  %7801 = sub nsw i32 %7799, %7800
  %7802 = sitofp i32 %7801 to float
  %7803 = fmul fast float %7802, %7796
  %7804 = fsub fast float 1.000000e+00, %7803
  %7805 = fmul fast float %7804, %7804
  %7806 = fmul fast float %7805, %7804
  %7807 = fsub fast float %7804, %7806
  %7808 = fmul fast float %7807, %7792
  %7809 = fsub fast float 1.000000e+00, %7806
  %7810 = fsub fast float %7809, %7808
  %7811 = fmul fast float %7802, 5.000000e-01
  %7812 = fmul fast float %7811, %7810
  %7813 = fsub fast float 5.000000e-01, %7812
  br label %7814

; <label>:7814                                    ; preds = %7786, %7662, %7633, %7509, %7493
  %7815 = phi float [ 1.000000e+00, %7493 ], [ %7575, %7509 ], [ %7660, %7633 ], [ %7728, %7662 ], [ %7813, %7786 ]
  %7816 = fsub fast float %7327, %7160
  %7817 = fmul fast float %7816, %6727
  %7818 = fadd fast float %7817, %7160
  %7819 = fsub fast float %7494, %7818
  %7820 = fmul fast float %7819, %6726
  %7821 = fadd fast float %7820, %7818
  %7822 = fsub fast float %7815, %7821
  %7823 = fmul fast float %7822, %6754
  %7824 = fadd fast float %7823, %7821
  %7825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7826 = extractvalue %dx.types.CBufRet.f32 %7825, 2
  %7827 = fcmp fast ogt float %7826, 0.000000e+00
  br i1 %7827, label %7828, label %7868, !dx.controlflow.hints !121

; <label>:7828                                    ; preds = %7814
  %7829 = fcmp fast ugt float %7826, 0.000000e+00
  br i1 %7829, label %7830, label %7865

; <label>:7830                                    ; preds = %7828
  %7831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7832 = extractvalue %dx.types.CBufRet.f32 %7831, 0
  %7833 = extractvalue %dx.types.CBufRet.f32 %7831, 1
  %7834 = extractvalue %dx.types.CBufRet.f32 %7831, 2
  %7835 = extractvalue %dx.types.CBufRet.f32 %7831, 3
  %7836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7837 = extractvalue %dx.types.CBufRet.f32 %7836, 0
  %7838 = extractvalue %dx.types.CBufRet.f32 %7836, 1
  %7839 = extractvalue %dx.types.CBufRet.f32 %7836, 2
  %7840 = extractvalue %dx.types.CBufRet.f32 %7836, 3
  %7841 = extractvalue %dx.types.CBufRet.f32 %7825, 0
  %7842 = extractvalue %dx.types.CBufRet.f32 %7825, 1
  %7843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7844 = extractvalue %dx.types.CBufRet.f32 %7843, 0
  %7845 = extractvalue %dx.types.CBufRet.f32 %7843, 1
  %7846 = extractvalue %dx.types.CBufRet.f32 %7843, 2
  %7847 = fadd fast float %7844, %6607
  %7848 = fadd fast float %7845, %6608
  %7849 = fadd fast float %7846, %6609
  %7850 = fmul fast float %7847, %7832
  %7851 = call float @dx.op.tertiary.f32(i32 46, float %7833, float %7848, float %7850)  ; FMad(a,b,c)
  %7852 = call float @dx.op.tertiary.f32(i32 46, float %7834, float %7849, float %7851)  ; FMad(a,b,c)
  %7853 = fadd fast float %7852, %7835
  %7854 = fmul fast float %7847, %7837
  %7855 = call float @dx.op.tertiary.f32(i32 46, float %7838, float %7848, float %7854)  ; FMad(a,b,c)
  %7856 = call float @dx.op.tertiary.f32(i32 46, float %7839, float %7849, float %7855)  ; FMad(a,b,c)
  %7857 = fadd fast float %7856, %7840
  %7858 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7853, float %7857, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7859 = extractvalue %dx.types.ResRet.f32 %7858, 0
  %7860 = fmul fast float %7859, %7842
  %7861 = fadd fast float %7860, %7841
  %7862 = call float @dx.op.unary.f32(i32 7, float %7861)  ; Saturate(value)
  %7863 = fmul fast float %7862, %7826
  %7864 = fsub fast float 1.000000e+00, %7863
  br label %7865

; <label>:7865                                    ; preds = %7830, %7828
  %7866 = phi float [ %7864, %7830 ], [ 1.000000e+00, %7828 ]
  %7867 = fmul fast float %7866, %7824
  br label %7868

; <label>:7868                                    ; preds = %7865, %7814, %6587
  %7869 = phi float [ 1.000000e+00, %6587 ], [ %7867, %7865 ], [ %7824, %7814 ]
  %7870 = call float @dx.op.binary.f32(i32 36, float %7869, float %7869)  ; FMin(a,b)
  %7871 = call float @dx.op.binary.f32(i32 36, float %7869, float %7870)  ; FMin(a,b)
  %7872 = fcmp fast ogt float %7871, 0.000000e+00
  br i1 %7872, label %7873, label %8039, !dx.controlflow.hints !122

; <label>:7873                                    ; preds = %7868
  %7874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7875 = extractvalue %dx.types.CBufRet.f32 %7874, 0
  %7876 = extractvalue %dx.types.CBufRet.f32 %7874, 1
  %7877 = extractvalue %dx.types.CBufRet.f32 %7874, 2
  %7878 = extractvalue %dx.types.CBufRet.f32 %7874, 3
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.CBufRet.f32 %7879, 1
  %7882 = extractvalue %dx.types.CBufRet.f32 %7879, 2
  %7883 = extractvalue %dx.types.CBufRet.f32 %7879, 3
  %7884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7885 = extractvalue %dx.types.CBufRet.f32 %7884, 0
  %7886 = extractvalue %dx.types.CBufRet.f32 %7884, 1
  %7887 = extractvalue %dx.types.CBufRet.f32 %7884, 2
  %7888 = extractvalue %dx.types.CBufRet.f32 %7884, 3
  %7889 = fmul fast float %7875, %6607
  %7890 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %7876, float %7889)  ; FMad(a,b,c)
  %7891 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %7877, float %7890)  ; FMad(a,b,c)
  %7892 = fadd fast float %7891, %7878
  %7893 = fmul fast float %7880, %6607
  %7894 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %7881, float %7893)  ; FMad(a,b,c)
  %7895 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %7882, float %7894)  ; FMad(a,b,c)
  %7896 = fadd fast float %7895, %7883
  %7897 = fmul fast float %7885, %6607
  %7898 = call float @dx.op.tertiary.f32(i32 46, float %6608, float %7886, float %7897)  ; FMad(a,b,c)
  %7899 = call float @dx.op.tertiary.f32(i32 46, float %6609, float %7887, float %7898)  ; FMad(a,b,c)
  %7900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.f32 %7900, 0
  %7902 = extractvalue %dx.types.CBufRet.f32 %7900, 1
  %7903 = extractvalue %dx.types.CBufRet.f32 %7900, 3
  %7904 = fmul fast float %7903, %7892
  %7905 = fmul fast float %7903, %7896
  %7906 = fadd fast float %7904, %7901
  %7907 = fadd fast float %7905, %7902
  %7908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7909 = extractvalue %dx.types.CBufRet.f32 %7908, 0
  %7910 = extractvalue %dx.types.CBufRet.f32 %7908, 1
  %7911 = fsub fast float %7906, %7909
  %7912 = fsub fast float %7907, %7910
  %7913 = fcmp fast olt float %7911, 0.000000e+00
  %7914 = fcmp fast olt float %7912, 0.000000e+00
  %7915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7916 = extractvalue %dx.types.CBufRet.f32 %7915, 0
  %7917 = extractvalue %dx.types.CBufRet.f32 %7915, 1
  %7918 = extractvalue %dx.types.CBufRet.f32 %7915, 2
  %7919 = extractvalue %dx.types.CBufRet.f32 %7915, 3
  %7920 = select i1 %7913, float %7916, float %7918
  %7921 = select i1 %7914, float %7917, float %7919
  %7922 = fmul fast float %7920, %7911
  %7923 = fmul fast float %7921, %7912
  %7924 = call float @dx.op.unary.f32(i32 6, float %7922)  ; FAbs(value)
  %7925 = call float @dx.op.unary.f32(i32 6, float %7923)  ; FAbs(value)
  %7926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7927 = extractvalue %dx.types.CBufRet.f32 %7926, 0
  %7928 = call float @dx.op.binary.f32(i32 35, float %7924, float %7925)  ; FMax(a,b)
  %7929 = fsub fast float %7927, %7928
  %7930 = call float @dx.op.unary.f32(i32 7, float %7929)  ; Saturate(value)
  %7931 = fcmp fast ogt float %7930, 0.000000e+00
  br i1 %7931, label %7932, label %7973, !dx.controlflow.hints !123

; <label>:7932                                    ; preds = %7873
  %7933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7906, float %7907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7934 = extractvalue %dx.types.ResRet.f32 %7933, 1
  %7935 = fcmp fast ogt float %7934, 0.000000e+00
  br i1 %7935, label %7936, label %7968

; <label>:7936                                    ; preds = %7932
  %7937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7906, float %7907, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7938 = extractvalue %dx.types.ResRet.f32 %7937, 0
  %7939 = extractvalue %dx.types.ResRet.f32 %7937, 1
  %7940 = extractvalue %dx.types.ResRet.f32 %7937, 2
  %7941 = extractvalue %dx.types.ResRet.f32 %7937, 3
  %7942 = fsub fast float 1.000000e+00, %7888
  %7943 = fsub fast float %7942, %7899
  %7944 = fmul fast float %7943, 0x400921FB60000000
  %7945 = fadd fast float %7944, 0x3FF921FB60000000
  %7946 = call float @dx.op.unary.f32(i32 13, float %7945)  ; Sin(value)
  %7947 = fadd fast float %7946, -1.000000e+00
  %7948 = fmul fast float %7947, 0x3FD45F3060000000
  %7949 = fmul fast float %7943, 0x401921FB60000000
  %7950 = fadd fast float %7949, 0x400921FB60000000
  %7951 = call float @dx.op.unary.f32(i32 13, float %7950)  ; Sin(value)
  %7952 = fadd fast float %7951, 0x3E7777A5C0000000
  %7953 = fmul fast float %7952, 0x3FC45F3060000000
  %7954 = fmul fast float %7943, 0x4022D97C80000000
  %7955 = fadd fast float %7954, 0x4012D97C80000000
  %7956 = call float @dx.op.unary.f32(i32 13, float %7955)  ; Sin(value)
  %7957 = fadd fast float %7956, 1.000000e+00
  %7958 = fmul fast float %7957, 0x3FBB2995E0000000
  %7959 = fmul fast float %7943, 0x402921FB60000000
  %7960 = fadd fast float %7959, 0x401921FB60000000
  %7961 = call float @dx.op.unary.f32(i32 13, float %7960)  ; Sin(value)
  %7962 = fadd fast float %7961, 0xBE8777A5C0000000
  %7963 = fmul fast float %7962, 0x3FB45F3060000000
  %7964 = call float @dx.op.dot4.f32(i32 56, float %7938, float %7939, float %7940, float %7941, float %7948, float %7953, float %7958, float %7963)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7965 = fmul fast float %7964, 0xBFF7154760000000
  %7966 = call float @dx.op.unary.f32(i32 21, float %7965)  ; Exp(value)
  %7967 = call float @dx.op.unary.f32(i32 7, float %7966)  ; Saturate(value)
  br label %7968

; <label>:7968                                    ; preds = %7936, %7932
  %7969 = phi float [ %7967, %7936 ], [ 1.000000e+00, %7932 ]
  %7970 = fadd fast float %7969, -1.000000e+00
  %7971 = fmul fast float %7970, %7930
  %7972 = fadd fast float %7971, 1.000000e+00
  br label %7973

; <label>:7973                                    ; preds = %7968, %7873
  %7974 = phi float [ %7972, %7968 ], [ 1.000000e+00, %7873 ]
  %7975 = fmul fast float %7974, %7869
  %7976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.f32 %7976, 0
  %7978 = extractvalue %dx.types.CBufRet.f32 %7976, 1
  %7979 = extractvalue %dx.types.CBufRet.f32 %7976, 2
  %7980 = fadd fast float %7977, %188
  %7981 = fadd fast float %7978, %189
  %7982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7983 = extractvalue %dx.types.CBufRet.f32 %7982, 1
  %7984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7985 = extractvalue %dx.types.CBufRet.f32 %7984, 0
  %7986 = extractvalue %dx.types.CBufRet.f32 %7984, 1
  %7987 = extractvalue %dx.types.CBufRet.f32 %7984, 2
  %7988 = fsub fast float -0.000000e+00, %7980
  %7989 = fsub fast float -0.000000e+00, %7981
  %7990 = fsub fast float -0.000000e+00, %190
  %7991 = fsub fast float %7990, %7979
  %7992 = fadd fast float %7991, %7983
  %7993 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7988, float %7989, float %7992)  ; Dot3(ax,ay,az,bx,by,bz)
  %7994 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7985, float %7986, float %7987)  ; Dot3(ax,ay,az,bx,by,bz)
  %7995 = fdiv fast float 1.000000e+00, %7994
  %7996 = fmul fast float %7995, %7993
  %7997 = fmul fast float %7985, %7996
  %7998 = fmul fast float %7986, %7996
  %7999 = fadd fast float %7997, %7980
  %8000 = fadd fast float %7998, %7981
  %8001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8002 = extractvalue %dx.types.CBufRet.f32 %8001, 0
  %8003 = extractvalue %dx.types.CBufRet.f32 %8001, 1
  %8004 = fsub fast float %7999, %8002
  %8005 = fsub fast float %8000, %8003
  %8006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8007 = extractvalue %dx.types.CBufRet.f32 %8006, 2
  %8008 = extractvalue %dx.types.CBufRet.f32 %8006, 3
  %8009 = fmul fast float %8004, %8007
  %8010 = fmul fast float %8005, %8008
  %8011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.i32 %8011, 3
  %8013 = icmp eq i32 %8012, 0
  br i1 %8013, label %8019, label %8014

; <label>:8014                                    ; preds = %7973
  %8015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8009, float %8010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8016 = extractvalue %dx.types.ResRet.f32 %8015, 0
  %8017 = extractvalue %dx.types.ResRet.f32 %8015, 1
  %8018 = extractvalue %dx.types.ResRet.f32 %8015, 2
  br label %8024

; <label>:8019                                    ; preds = %7973
  %8020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %8009, float %8010, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8021 = extractvalue %dx.types.ResRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.ResRet.f32 %8020, 1
  %8023 = extractvalue %dx.types.ResRet.f32 %8020, 2
  br label %8024

; <label>:8024                                    ; preds = %8019, %8014
  %8025 = phi float [ %8016, %8014 ], [ %8021, %8019 ]
  %8026 = phi float [ %8017, %8014 ], [ %8022, %8019 ]
  %8027 = phi float [ %8018, %8014 ], [ %8023, %8019 ]
  %8028 = extractvalue %dx.types.CBufRet.f32 %7982, 2
  %8029 = fmul fast float %8028, %8025
  %8030 = extractvalue %dx.types.CBufRet.f32 %7982, 0
  %8031 = fsub fast float %7996, %8030
  %8032 = fsub fast float %8031, %8029
  %8033 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8032)  ; FMax(a,b)
  %8034 = fmul fast float %8033, %8026
  %8035 = call float @dx.op.binary.f32(i32 36, float %8027, float %8034)  ; FMin(a,b)
  %8036 = fmul fast float %8035, 0xBFF7154760000000
  %8037 = call float @dx.op.unary.f32(i32 21, float %8036)  ; Exp(value)
  %8038 = fmul fast float %7975, %8037
  br label %8039

; <label>:8039                                    ; preds = %8024, %7868
  %8040 = phi float [ %8038, %8024 ], [ %7869, %7868 ]
  %8041 = call float @dx.op.binary.f32(i32 36, float %8040, float %8040)  ; FMin(a,b)
  %8042 = call float @dx.op.binary.f32(i32 36, float %8040, float %8041)  ; FMin(a,b)
  %8043 = fcmp fast ogt float %8042, 0.000000e+00
  br i1 %8043, label %8044, label %8352, !dx.controlflow.hints !124

; <label>:8044                                    ; preds = %8039
  %8045 = bitcast i32 %5709 to float
  %8046 = fmul fast float %8040, %6599
  %8047 = fmul fast float %8040, %6600
  %8048 = fmul fast float %8040, %6601
  %8049 = fsub fast float %6588, %219
  %8050 = fsub fast float %6589, %220
  %8051 = fsub fast float %6590, %221
  %8052 = call float @dx.op.dot3.f32(i32 55, float %8049, float %8050, float %8051, float %8049, float %8050, float %8051)  ; Dot3(ax,ay,az,bx,by,bz)
  %8053 = call float @dx.op.unary.f32(i32 25, float %8052)  ; Rsqrt(value)
  %8054 = fmul fast float %8053, %8049
  %8055 = fmul fast float %8053, %8050
  %8056 = fmul fast float %8053, %8051
  %8057 = call float @dx.op.dot3.f32(i32 55, float %6588, float %6589, float %6590, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %8058 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %8054, float %8055, float %8056)  ; Dot3(ax,ay,az,bx,by,bz)
  %8059 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8060 = fmul fast float %8059, %8059
  %8061 = fmul fast float %8060, %8045
  %8062 = call float @dx.op.unary.f32(i32 7, float %8061)  ; Saturate(value)
  %8063 = fmul fast float %8062, %8059
  %8064 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float %8054, float %8055, float %8056)  ; Dot3(ax,ay,az,bx,by,bz)
  %8065 = fmul fast float %8064, %8064
  %8066 = call float @dx.op.unary.f32(i32 6, float %8057)  ; FAbs(value)
  %8067 = fsub fast float 1.000000e+00, %5703
  %8068 = fmul fast float %5685, %5685
  %8069 = fmul fast float %8068, %8067
  %8070 = fadd fast float %8069, %5703
  %8071 = bitcast float %8070 to i32
  %8072 = ashr i32 %8071, 1
  %8073 = add nsw i32 %8072, 532487669
  %8074 = bitcast i32 %8073 to float
  %8075 = fadd fast float %8074, %5685
  %8076 = fmul fast float %5703, %8065
  %8077 = fsub fast float 1.000000e+00, %8065
  %8078 = fadd fast float %8077, %8076
  %8079 = fmul fast float %8066, %8066
  %8080 = fmul fast float %8079, %8067
  %8081 = fadd fast float %8080, %5703
  %8082 = bitcast float %8081 to i32
  %8083 = ashr i32 %8082, 1
  %8084 = add nsw i32 %8083, 532487669
  %8085 = bitcast i32 %8084 to float
  %8086 = fadd fast float %8085, %8066
  %8087 = fmul fast float %8078, %8078
  %8088 = fmul fast float %8087, %8075
  %8089 = fmul fast float %8088, %8086
  %8090 = fdiv fast float 0x3FF0A00000000000, %8089
  %8091 = fmul fast float %8090, %5703
  %8092 = fmul fast float %5955, 0x3FF9999980000000
  %8093 = fsub fast float 5.000000e+00, %8092
  %8094 = call float @dx.op.unary.f32(i32 6, float %8058)  ; FAbs(value)
  %8095 = fsub fast float 1.000000e+00, %8094
  %8096 = fmul fast float %5955, 0x41D9660740000000
  %8097 = fadd fast float %8096, 0xC1EFBF8940000000
  %8098 = bitcast float %8095 to i32
  %8099 = sitofp i32 %8098 to float
  %8100 = fmul fast float %8099, %8093
  %8101 = fadd fast float %8097, %8100
  %8102 = fptosi float %8101 to i32
  %8103 = bitcast i32 %8102 to float
  %8104 = fsub fast float 1.000000e+00, %5672
  %8105 = fsub fast float 1.000000e+00, %5673
  %8106 = fsub fast float 1.000000e+00, %5683
  %8107 = fmul fast float %8103, %8104
  %8108 = fmul fast float %8103, %8105
  %8109 = fmul fast float %8103, %8106
  %8110 = fadd fast float %8107, %5672
  %8111 = fadd fast float %8108, %5673
  %8112 = fadd fast float %8109, %5683
  br i1 %5978, label %8113, label %8136

; <label>:8113                                    ; preds = %8044
  %8114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4717, float %8094, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8115 = extractvalue %dx.types.ResRet.f32 %8114, 0
  %8116 = extractvalue %dx.types.ResRet.f32 %8114, 1
  %8117 = extractvalue %dx.types.ResRet.f32 %8114, 2
  %8118 = fadd fast float %8115, -5.000000e-01
  %8119 = fadd fast float %8116, -5.000000e-01
  %8120 = fadd fast float %8117, -5.000000e-01
  %8121 = fmul fast float %5672, 4.000000e+00
  %8122 = fmul fast float %8121, %8104
  %8123 = fmul fast float %8122, %8118
  %8124 = fmul fast float %5673, 4.000000e+00
  %8125 = fmul fast float %8124, %8105
  %8126 = fmul fast float %8125, %8119
  %8127 = fmul fast float %5683, 4.000000e+00
  %8128 = fmul fast float %8127, %8106
  %8129 = fmul fast float %8128, %8120
  %8130 = fadd fast float %8123, %8110
  %8131 = fadd fast float %8126, %8111
  %8132 = fadd fast float %8129, %8112
  %8133 = call float @dx.op.unary.f32(i32 7, float %8130)  ; Saturate(value)
  %8134 = call float @dx.op.unary.f32(i32 7, float %8131)  ; Saturate(value)
  %8135 = call float @dx.op.unary.f32(i32 7, float %8132)  ; Saturate(value)
  br label %8136

; <label>:8136                                    ; preds = %8113, %8044
  %8137 = phi float [ %8133, %8113 ], [ %8110, %8044 ]
  %8138 = phi float [ %8134, %8113 ], [ %8111, %8044 ]
  %8139 = phi float [ %8135, %8113 ], [ %8112, %8044 ]
  %8140 = fmul fast float %8057, 9.843750e-01
  %8141 = fadd fast float %8140, 7.812500e-03
  %8142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %8141, float %5959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8143 = extractvalue %dx.types.ResRet.f32 %8142, 0
  %8144 = extractvalue %dx.types.ResRet.f32 %8142, 1
  %8145 = extractvalue %dx.types.ResRet.f32 %8142, 2
  %8146 = extractvalue %dx.types.ResRet.f32 %8142, 3
  %8147 = fsub fast float %8145, %8143
  %8148 = fsub fast float %8146, %8144
  %8149 = fmul fast float %8147, %5965
  %8150 = fmul fast float %8148, %5965
  %8151 = fadd fast float %8149, %8143
  %8152 = fadd fast float %8150, %8144
  %8153 = fmul fast float %8151, %5672
  %8154 = fmul fast float %8151, %5673
  %8155 = fmul fast float %8151, %5683
  %8156 = fadd fast float %8153, %8152
  %8157 = fadd fast float %8154, %8152
  %8158 = fadd fast float %8155, %8152
  br i1 %5978, label %8159, label %8182

; <label>:8159                                    ; preds = %8136
  %8160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4717, float %8057, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8161 = extractvalue %dx.types.ResRet.f32 %8160, 0
  %8162 = extractvalue %dx.types.ResRet.f32 %8160, 1
  %8163 = extractvalue %dx.types.ResRet.f32 %8160, 2
  %8164 = fadd fast float %8161, -5.000000e-01
  %8165 = fadd fast float %8162, -5.000000e-01
  %8166 = fadd fast float %8163, -5.000000e-01
  %8167 = fmul fast float %5672, 4.000000e+00
  %8168 = fmul fast float %8167, %8104
  %8169 = fmul fast float %8168, %8164
  %8170 = fmul fast float %5673, 4.000000e+00
  %8171 = fmul fast float %8170, %8105
  %8172 = fmul fast float %8171, %8165
  %8173 = fmul fast float %5683, 4.000000e+00
  %8174 = fmul fast float %8173, %8106
  %8175 = fmul fast float %8174, %8166
  %8176 = fadd fast float %8169, %8156
  %8177 = fadd fast float %8172, %8157
  %8178 = fadd fast float %8175, %8158
  %8179 = call float @dx.op.unary.f32(i32 7, float %8176)  ; Saturate(value)
  %8180 = call float @dx.op.unary.f32(i32 7, float %8177)  ; Saturate(value)
  %8181 = call float @dx.op.unary.f32(i32 7, float %8178)  ; Saturate(value)
  br label %8182

; <label>:8182                                    ; preds = %8159, %8136
  %8183 = phi float [ %8179, %8159 ], [ %8156, %8136 ]
  %8184 = phi float [ %8180, %8159 ], [ %8157, %8136 ]
  %8185 = phi float [ %8181, %8159 ], [ %8158, %8136 ]
  %8186 = call float @dx.op.binary.f32(i32 35, float %8184, float %8185)  ; FMax(a,b)
  %8187 = call float @dx.op.binary.f32(i32 35, float %8183, float %8186)  ; FMax(a,b)
  %8188 = fsub fast float 1.000000e+00, %8187
  %8189 = call float @dx.op.binary.f32(i32 35, float %8066, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8190 = fdiv fast float %4033, %8189
  %8191 = fmul fast float %6497, %8190
  %8192 = fmul fast float %6499, %8190
  %8193 = fmul fast float %6501, %8190
  %8194 = call float @dx.op.unary.f32(i32 21, float %8191)  ; Exp(value)
  %8195 = call float @dx.op.unary.f32(i32 21, float %8192)  ; Exp(value)
  %8196 = call float @dx.op.unary.f32(i32 21, float %8193)  ; Exp(value)
  %8197 = call float @dx.op.unary.f32(i32 7, float %8194)  ; Saturate(value)
  %8198 = call float @dx.op.unary.f32(i32 7, float %8195)  ; Saturate(value)
  %8199 = call float @dx.op.unary.f32(i32 7, float %8196)  ; Saturate(value)
  %8200 = select i1 %6494, float %8197, float 0.000000e+00
  %8201 = select i1 %6495, float %8198, float 0.000000e+00
  %8202 = select i1 %6496, float %8199, float 0.000000e+00
  %8203 = fsub fast float -0.000000e+00, %5675
  %8204 = fsub fast float -0.000000e+00, %5676
  %8205 = fsub fast float -0.000000e+00, %5677
  %8206 = call float @dx.op.dot3.f32(i32 55, float %6588, float %6589, float %6590, float %8203, float %8204, float %8205)  ; Dot3(ax,ay,az,bx,by,bz)
  %8207 = call float @dx.op.unary.f32(i32 7, float %8206)  ; Saturate(value)
  %8208 = fmul fast float %8207, 9.843750e-01
  %8209 = fadd fast float %8208, 7.812500e-03
  %8210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %8209, float %5959, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8211 = extractvalue %dx.types.ResRet.f32 %8210, 0
  %8212 = extractvalue %dx.types.ResRet.f32 %8210, 1
  %8213 = extractvalue %dx.types.ResRet.f32 %8210, 2
  %8214 = extractvalue %dx.types.ResRet.f32 %8210, 3
  %8215 = fsub fast float %8213, %8211
  %8216 = fsub fast float %8214, %8212
  %8217 = fmul fast float %8215, %5965
  %8218 = fmul fast float %8216, %5965
  %8219 = fadd fast float %8217, %8211
  %8220 = fadd fast float %8218, %8212
  %8221 = fmul fast float %8219, %5672
  %8222 = fmul fast float %8219, %5673
  %8223 = fmul fast float %8219, %5683
  %8224 = fadd fast float %8221, %8220
  %8225 = fadd fast float %8222, %8220
  %8226 = fadd fast float %8223, %8220
  br i1 %5978, label %8227, label %8250

; <label>:8227                                    ; preds = %8182
  %8228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4717, float %8207, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8229 = extractvalue %dx.types.ResRet.f32 %8228, 0
  %8230 = extractvalue %dx.types.ResRet.f32 %8228, 1
  %8231 = extractvalue %dx.types.ResRet.f32 %8228, 2
  %8232 = fadd fast float %8229, -5.000000e-01
  %8233 = fadd fast float %8230, -5.000000e-01
  %8234 = fadd fast float %8231, -5.000000e-01
  %8235 = fmul fast float %5672, 4.000000e+00
  %8236 = fmul fast float %8235, %8104
  %8237 = fmul fast float %8236, %8232
  %8238 = fmul fast float %5673, 4.000000e+00
  %8239 = fmul fast float %8238, %8105
  %8240 = fmul fast float %8239, %8233
  %8241 = fmul fast float %5683, 4.000000e+00
  %8242 = fmul fast float %8241, %8106
  %8243 = fmul fast float %8242, %8234
  %8244 = fadd fast float %8237, %8224
  %8245 = fadd fast float %8240, %8225
  %8246 = fadd fast float %8243, %8226
  %8247 = call float @dx.op.unary.f32(i32 7, float %8244)  ; Saturate(value)
  %8248 = call float @dx.op.unary.f32(i32 7, float %8245)  ; Saturate(value)
  %8249 = call float @dx.op.unary.f32(i32 7, float %8246)  ; Saturate(value)
  br label %8250

; <label>:8250                                    ; preds = %8227, %8182
  %8251 = phi float [ %8247, %8227 ], [ %8224, %8182 ]
  %8252 = phi float [ %8248, %8227 ], [ %8225, %8182 ]
  %8253 = phi float [ %8249, %8227 ], [ %8226, %8182 ]
  %8254 = call float @dx.op.binary.f32(i32 35, float %8252, float %8253)  ; FMax(a,b)
  %8255 = call float @dx.op.binary.f32(i32 35, float %8251, float %8254)  ; FMax(a,b)
  %8256 = fsub fast float 1.000000e+00, %8255
  %8257 = fmul fast float %5700, %6561
  %8258 = fadd fast float %6563, %8257
  %8259 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8260 = fsub fast float %6588, %5691
  %8261 = fsub fast float %6589, %5692
  %8262 = fsub fast float %6590, %5693
  %8263 = call float @dx.op.dot3.f32(i32 55, float %8260, float %8261, float %8262, float %8260, float %8261, float %8262)  ; Dot3(ax,ay,az,bx,by,bz)
  %8264 = call float @dx.op.unary.f32(i32 25, float %8263)  ; Rsqrt(value)
  %8265 = fmul fast float %8264, %8260
  %8266 = fmul fast float %8264, %8261
  %8267 = fmul fast float %8264, %8262
  %8268 = call float @dx.op.dot3.f32(i32 55, float %8203, float %8204, float %8205, float %8265, float %8266, float %8267)  ; Dot3(ax,ay,az,bx,by,bz)
  %8269 = fmul fast float %8268, %8268
  %8270 = call float @dx.op.unary.f32(i32 6, float %8207)  ; FAbs(value)
  %8271 = call float @dx.op.binary.f32(i32 35, float %8259, float 0x3F847AE140000000)  ; FMax(a,b)
  %8272 = fmul fast float %8271, %8271
  %8273 = fmul fast float %8272, %8272
  %8274 = fsub fast float 1.000000e+00, %8273
  %8275 = fmul fast float %8068, %8274
  %8276 = fadd fast float %8275, %8273
  %8277 = bitcast float %8276 to i32
  %8278 = ashr i32 %8277, 1
  %8279 = add nsw i32 %8278, 532487669
  %8280 = bitcast i32 %8279 to float
  %8281 = fadd fast float %8280, %5685
  %8282 = fmul fast float %8273, %8269
  %8283 = fsub fast float 1.000000e+00, %8269
  %8284 = fadd fast float %8283, %8282
  %8285 = fmul fast float %8270, %8270
  %8286 = fmul fast float %8285, %8274
  %8287 = fadd fast float %8286, %8273
  %8288 = bitcast float %8287 to i32
  %8289 = ashr i32 %8288, 1
  %8290 = add nsw i32 %8289, 532487669
  %8291 = bitcast i32 %8290 to float
  %8292 = fadd fast float %8291, %8270
  %8293 = fmul fast float %8284, %8284
  %8294 = fmul fast float %8293, %8281
  %8295 = fmul fast float %8294, %8292
  %8296 = fdiv fast float 0x3FF0A00000000000, %8295
  %8297 = fmul fast float %8296, %8273
  %8298 = fmul fast float %8207, %8200
  %8299 = fmul fast float %8207, %8201
  %8300 = fmul fast float %8207, %8202
  %8301 = fmul fast float %8298, %8256
  %8302 = fmul fast float %8301, %8297
  %8303 = fmul fast float %8299, %8256
  %8304 = fmul fast float %8303, %8297
  %8305 = fmul fast float %8300, %8256
  %8306 = fmul fast float %8305, %8297
  %8307 = fmul fast float %8137, %8091
  %8308 = fmul fast float %8138, %8091
  %8309 = fmul fast float %8139, %8091
  %8310 = fsub fast float 1.000000e+00, %8058
  %8311 = bitcast float %8310 to i32
  %8312 = sitofp i32 %8311 to float
  %8313 = fmul fast float %8312, 5.000000e+00
  %8314 = fadd fast float %8313, 0xC1EFBF8940000000
  %8315 = fptosi float %8314 to i32
  %8316 = bitcast i32 %8315 to float
  %8317 = fmul fast float %8316, %4718
  %8318 = fmul fast float %8188, %8317
  %8319 = fmul fast float %8318, %6489
  %8320 = fmul fast float %8318, %6490
  %8321 = fmul fast float %8318, %6491
  %8322 = fadd fast float %8319, %8307
  %8323 = fadd fast float %8320, %8308
  %8324 = fadd fast float %8321, %8309
  %8325 = fmul fast float %8322, %8063
  %8326 = fmul fast float %8323, %8063
  %8327 = fmul fast float %8324, %8063
  %8328 = fmul fast float %8063, %8046
  %8329 = fmul fast float %8328, %8188
  %8330 = fmul fast float %8063, %8047
  %8331 = fmul fast float %8330, %8188
  %8332 = fmul fast float %8063, %8048
  %8333 = fmul fast float %8332, %8188
  %8334 = fadd fast float %8325, %8302
  %8335 = fadd fast float %8326, %8304
  %8336 = fadd fast float %8327, %8306
  %8337 = fmul fast float %8334, %8046
  %8338 = fmul fast float %8335, %8047
  %8339 = fmul fast float %8336, %8048
  %8340 = fadd fast float %8329, %6578
  %8341 = fmul fast float %8340, %4743
  %8342 = fadd fast float %8331, %6580
  %8343 = fmul fast float %8342, %4743
  %8344 = fadd fast float %8333, %6582
  %8345 = fmul fast float %8344, %4743
  %8346 = fadd fast float %8337, %6542
  %8347 = fmul fast float %8346, %4743
  %8348 = fadd fast float %8338, %6545
  %8349 = fmul fast float %8348, %4743
  %8350 = fadd fast float %8339, %6548
  %8351 = fmul fast float %8350, %4743
  br label %8352

; <label>:8352                                    ; preds = %8250, %8039, %6472
  %8353 = phi float [ %6543, %6472 ], [ %6543, %8039 ], [ %8347, %8250 ]
  %8354 = phi float [ %6546, %6472 ], [ %6546, %8039 ], [ %8349, %8250 ]
  %8355 = phi float [ %6549, %6472 ], [ %6549, %8039 ], [ %8351, %8250 ]
  %8356 = phi float [ %6579, %6472 ], [ %6579, %8039 ], [ %8341, %8250 ]
  %8357 = phi float [ %6581, %6472 ], [ %6581, %8039 ], [ %8343, %8250 ]
  %8358 = phi float [ %6583, %6472 ], [ %6583, %8039 ], [ %8345, %8250 ]
  %8359 = fmul fast float %4743, %6518
  %8360 = fsub fast float -0.000000e+00, %8359
  %8361 = fmul fast float %4743, %6519
  %8362 = fsub fast float -0.000000e+00, %8361
  %8363 = fmul fast float %4743, %6520
  %8364 = fsub fast float -0.000000e+00, %8363
  %8365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8366 = extractvalue %dx.types.CBufRet.f32 %8365, 0
  %8367 = fmul fast float %8366, %6524
  %8368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8369 = extractvalue %dx.types.CBufRet.f32 %8368, 3
  %8370 = fsub fast float 1.000000e+00, %4721
  %8371 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8372 = fadd fast float %8358, %4720
  %8373 = fmul fast float %8372, %4721
  %8374 = fmul fast float %8371, %8369
  %8375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4722, i32 undef)  ; BufferLoad(srv,index,wot)
  %8376 = extractvalue %dx.types.ResRet.i32 %8375, 3
  %8377 = bitcast i32 %8376 to float
  %8378 = fsub fast float %8360, %8377
  %8379 = fsub fast float %8362, %8377
  %8380 = fsub fast float %8364, %8377
  %8381 = fmul fast float %8378, %233
  %8382 = fmul fast float %8379, %233
  %8383 = fmul fast float %8380, %233
  %8384 = fadd fast float %8381, %8377
  %8385 = fadd fast float %8382, %8377
  %8386 = fadd fast float %8383, %8377
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 3
  %8389 = fmul fast float %8356, %5678
  %8390 = fmul fast float %8357, %5679
  %8391 = fmul fast float %8358, %5680
  %8392 = fcmp fast ogt float %96, %253
  %8393 = and i1 %8392, %4811
  %8394 = or i1 %4890, %8393
  %8395 = icmp eq i32 %4810, 2
  %8396 = fcmp fast ole float %96, %253
  %8397 = and i1 %8396, %8395
  %8398 = or i1 %8397, %8394
  br i1 %8393, label %8399, label %8656

; <label>:8399                                    ; preds = %8352
  %8400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8401 = extractvalue %dx.types.CBufRet.f32 %8400, 2
  %8402 = extractvalue %dx.types.CBufRet.f32 %8400, 3
  %8403 = fmul fast float %8401, %109
  %8404 = fmul fast float %8402, %110
  %8405 = call float @dx.op.unary.f32(i32 7, float %8403)  ; Saturate(value)
  %8406 = call float @dx.op.unary.f32(i32 7, float %8404)  ; Saturate(value)
  %8407 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8405, float %8406, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8408 = extractvalue %dx.types.ResRet.f32 %8407, 0
  %8409 = extractvalue %dx.types.ResRet.f32 %8407, 1
  %8410 = extractvalue %dx.types.ResRet.f32 %8407, 2
  %8411 = extractvalue %dx.types.ResRet.f32 %8407, 3
  %8412 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %8405, float %8406, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8413 = extractvalue %dx.types.ResRet.f32 %8412, 0
  %8414 = extractvalue %dx.types.ResRet.f32 %8412, 1
  %8415 = extractvalue %dx.types.ResRet.f32 %8412, 2
  %8416 = extractvalue %dx.types.ResRet.f32 %8412, 3
  %8417 = call float @dx.op.binary.f32(i32 35, float %8409, float %8410)  ; FMax(a,b)
  %8418 = call float @dx.op.binary.f32(i32 35, float %8408, float %8417)  ; FMax(a,b)
  %8419 = call float @dx.op.binary.f32(i32 35, float %8418, float %8411)  ; FMax(a,b)
  %8420 = call float @dx.op.binary.f32(i32 36, float %8414, float %8415)  ; FMin(a,b)
  %8421 = call float @dx.op.binary.f32(i32 36, float %8413, float %8420)  ; FMin(a,b)
  %8422 = call float @dx.op.binary.f32(i32 36, float %8421, float %8416)  ; FMin(a,b)
  %8423 = fmul fast float %8419, 2.550000e+02
  %8424 = fadd fast float %8423, 0x3F70101020000000
  %8425 = fptoui float %8424 to i32
  %8426 = fmul fast float %8422, 2.550000e+02
  %8427 = fadd fast float %8426, 0x3F70101020000000
  %8428 = fptoui float %8427 to i32
  %8429 = icmp ult i32 %8425, %8428
  br i1 %8429, label %8430, label %8598

; <label>:8430                                    ; preds = %8399
  %8431 = fcmp fast ogt float %95, 9.843750e-01
  %8432 = fadd fast float %96, -4.000000e+00
  %8433 = select i1 %8431, float -4.000000e+00, float %8432
  %8434 = call float @dx.op.binary.f32(i32 35, float %8433, float 0.000000e+00)  ; FMax(a,b)
  %8435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8436 = extractvalue %dx.types.CBufRet.f32 %8435, 0
  %8437 = fadd fast float %8436, %8434
  %8438 = extractvalue %dx.types.CBufRet.f32 %8435, 2
  %8439 = fmul fast float %8437, %8438
  %8440 = call float @dx.op.unary.f32(i32 23, float %8439)  ; Log(value)
  %8441 = extractvalue %dx.types.CBufRet.f32 %8435, 3
  %8442 = fmul fast float %8441, %8440
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 2
  %8445 = fmul fast float %8442, %8444
  %8446 = call float @dx.op.unary.f32(i32 7, float %8445)  ; Saturate(value)
  %8447 = uitofp i32 %8425 to float
  %8448 = uitofp i32 %8428 to float
  %8449 = fadd fast float %8447, 5.000000e-01
  %8450 = fadd fast float %8448, 5.000000e-01
  %8451 = fmul fast float %8444, %8449
  %8452 = fmul fast float %8444, %8450
  %8453 = fadd fast float %8451, 0x3F0FFB4800000000
  %8454 = fadd fast float %8452, 0xBF0FFB4800000000
  %8455 = call float @dx.op.binary.f32(i32 35, float %8446, float %8453)  ; FMax(a,b)
  %8456 = call float @dx.op.binary.f32(i32 36, float %8455, float %8454)  ; FMin(a,b)
  %8457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8458 = extractvalue %dx.types.CBufRet.f32 %8457, 1
  %8459 = extractvalue %dx.types.CBufRet.f32 %8457, 2
  %8460 = extractvalue %dx.types.CBufRet.f32 %8457, 0
  %8461 = fmul fast float %8458, %8456
  %8462 = fadd fast float %8460, %8461
  %8463 = fadd fast float %8460, %8459
  %8464 = fsub fast float %8458, %8459
  %8465 = fadd fast float %8464, %8460
  %8466 = call float @dx.op.binary.f32(i32 35, float %8462, float %8463)  ; FMax(a,b)
  %8467 = call float @dx.op.binary.f32(i32 36, float %8466, float %8465)  ; FMin(a,b)
  %8468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %8405, float %8406, float %8467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8469 = extractvalue %dx.types.ResRet.f32 %8468, 0
  %8470 = extractvalue %dx.types.ResRet.f32 %8468, 1
  %8471 = extractvalue %dx.types.ResRet.f32 %8468, 2
  %8472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8473 = extractvalue %dx.types.CBufRet.i32 %8472, 0
  %8474 = extractvalue %dx.types.CBufRet.i32 %8472, 1
  %8475 = uitofp i32 %8473 to float
  %8476 = uitofp i32 %8474 to float
  %8477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8478 = extractvalue %dx.types.CBufRet.f32 %8477, 0
  %8479 = extractvalue %dx.types.CBufRet.f32 %8477, 1
  %8480 = fmul fast float %8475, %8405
  %8481 = fmul fast float %8476, %8406
  %8482 = fadd fast float %8480, -5.000000e-01
  %8483 = fadd fast float %8481, -5.000000e-01
  %8484 = call float @dx.op.unary.f32(i32 22, float %8482)  ; Frc(value)
  %8485 = call float @dx.op.unary.f32(i32 22, float %8483)  ; Frc(value)
  %8486 = fmul fast float %8484, %8484
  %8487 = fmul fast float %8486, %8484
  %8488 = fsub fast float 3.000000e+00, %8484
  %8489 = fmul fast float %8486, %8488
  %8490 = fmul fast float %8484, 3.000000e+00
  %8491 = fmul fast float %8487, 3.000000e+00
  %8492 = fmul fast float %8486, 6.000000e+00
  %8493 = fsub fast float %8491, %8492
  %8494 = fadd fast float %8493, 4.000000e+00
  %8495 = fmul fast float %8494, 0x3FC5555560000000
  %8496 = fmul fast float %8487, -3.000000e+00
  %8497 = fadd fast float %8486, %8484
  %8498 = fmul fast float %8497, 3.000000e+00
  %8499 = fadd fast float %8496, 1.000000e+00
  %8500 = fadd fast float %8499, %8498
  %8501 = fmul fast float %8487, 0x3FC5555560000000
  %8502 = fmul fast float %8485, %8485
  %8503 = fmul fast float %8502, %8485
  %8504 = fsub fast float 3.000000e+00, %8485
  %8505 = fmul fast float %8502, %8504
  %8506 = fmul fast float %8485, 3.000000e+00
  %8507 = fmul fast float %8503, 3.000000e+00
  %8508 = fmul fast float %8502, 6.000000e+00
  %8509 = fsub fast float %8507, %8508
  %8510 = fadd fast float %8509, 4.000000e+00
  %8511 = fmul fast float %8510, 0x3FC5555560000000
  %8512 = fmul fast float %8503, -3.000000e+00
  %8513 = fadd fast float %8502, %8485
  %8514 = fmul fast float %8513, 3.000000e+00
  %8515 = fadd fast float %8512, 1.000000e+00
  %8516 = fadd fast float %8515, %8514
  %8517 = fmul fast float %8503, 0x3FC5555560000000
  %8518 = fadd fast float %8484, 1.000000e+00
  %8519 = fsub fast float 1.000000e+00, %8490
  %8520 = fadd fast float %8519, %8489
  %8521 = fadd fast float %8520, %8494
  %8522 = fmul fast float %8521, 0x3FC5555560000000
  %8523 = fdiv fast float %8495, %8522
  %8524 = fsub fast float %8518, %8523
  %8525 = fsub fast float 1.000000e+00, %8484
  %8526 = fadd fast float %8500, %8487
  %8527 = fmul fast float %8526, 0x3FC5555560000000
  %8528 = fdiv fast float %8501, %8527
  %8529 = fadd fast float %8525, %8528
  %8530 = fadd fast float %8485, 1.000000e+00
  %8531 = fsub fast float 1.000000e+00, %8506
  %8532 = fadd fast float %8531, %8505
  %8533 = fadd fast float %8532, %8510
  %8534 = fmul fast float %8533, 0x3FC5555560000000
  %8535 = fdiv fast float %8511, %8534
  %8536 = fsub fast float %8530, %8535
  %8537 = fsub fast float 1.000000e+00, %8485
  %8538 = fadd fast float %8516, %8503
  %8539 = fmul fast float %8538, 0x3FC5555560000000
  %8540 = fdiv fast float %8517, %8539
  %8541 = fadd fast float %8540, %8537
  %8542 = fmul fast float %8524, %8478
  %8543 = fsub fast float %8405, %8542
  %8544 = fmul fast float %8529, %8478
  %8545 = fadd fast float %8544, %8405
  %8546 = fmul fast float %8541, %8479
  %8547 = fadd fast float %8546, %8406
  %8548 = fmul fast float %8536, %8479
  %8549 = fsub fast float %8406, %8548
  %8550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8543, float %8549, float %8467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8551 = extractvalue %dx.types.ResRet.f32 %8550, 0
  %8552 = extractvalue %dx.types.ResRet.f32 %8550, 1
  %8553 = extractvalue %dx.types.ResRet.f32 %8550, 2
  %8554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8545, float %8549, float %8467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8555 = extractvalue %dx.types.ResRet.f32 %8554, 0
  %8556 = extractvalue %dx.types.ResRet.f32 %8554, 1
  %8557 = extractvalue %dx.types.ResRet.f32 %8554, 2
  %8558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8543, float %8547, float %8467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8559 = extractvalue %dx.types.ResRet.f32 %8558, 0
  %8560 = extractvalue %dx.types.ResRet.f32 %8558, 1
  %8561 = extractvalue %dx.types.ResRet.f32 %8558, 2
  %8562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8545, float %8547, float %8467, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8563 = extractvalue %dx.types.ResRet.f32 %8562, 0
  %8564 = extractvalue %dx.types.ResRet.f32 %8562, 1
  %8565 = extractvalue %dx.types.ResRet.f32 %8562, 2
  %8566 = fsub fast float %8559, %8551
  %8567 = fsub fast float %8560, %8552
  %8568 = fsub fast float %8561, %8553
  %8569 = fmul fast float %8566, %8539
  %8570 = fmul fast float %8567, %8539
  %8571 = fmul fast float %8568, %8539
  %8572 = fadd fast float %8569, %8551
  %8573 = fadd fast float %8570, %8552
  %8574 = fadd fast float %8571, %8553
  %8575 = fsub fast float %8563, %8555
  %8576 = fsub fast float %8564, %8556
  %8577 = fsub fast float %8565, %8557
  %8578 = fmul fast float %8575, %8539
  %8579 = fmul fast float %8576, %8539
  %8580 = fmul fast float %8577, %8539
  %8581 = fsub fast float %8555, %8572
  %8582 = fadd fast float %8581, %8578
  %8583 = fsub fast float %8556, %8573
  %8584 = fadd fast float %8583, %8579
  %8585 = fsub fast float %8557, %8574
  %8586 = fadd fast float %8585, %8580
  %8587 = fmul fast float %8582, %8527
  %8588 = fmul fast float %8584, %8527
  %8589 = fmul fast float %8586, %8527
  %8590 = fadd fast float %8587, %8572
  %8591 = fadd fast float %8588, %8573
  %8592 = fadd fast float %8589, %8574
  %8593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8594 = extractvalue %dx.types.CBufRet.f32 %8593, 1
  %8595 = fmul fast float %8590, %8594
  %8596 = fmul fast float %8591, %8594
  %8597 = fmul fast float %8592, %8594
  br label %8598

; <label>:8598                                    ; preds = %8430, %8399
  %8599 = phi float [ %8469, %8430 ], [ 1.000000e+00, %8399 ]
  %8600 = phi float [ %8470, %8430 ], [ 1.000000e+00, %8399 ]
  %8601 = phi float [ %8471, %8430 ], [ 1.000000e+00, %8399 ]
  %8602 = phi float [ %8595, %8430 ], [ 0.000000e+00, %8399 ]
  %8603 = phi float [ %8596, %8430 ], [ 0.000000e+00, %8399 ]
  %8604 = phi float [ %8597, %8430 ], [ 0.000000e+00, %8399 ]
  %8605 = fmul fast float %8602, %8384
  %8606 = fmul fast float %8603, %8385
  %8607 = fmul fast float %8604, %8386
  %8608 = call float @dx.op.dot3.f32(i32 55, float %8599, float %8600, float %8601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8609 = call float @dx.op.dot3.f32(i32 55, float %8605, float %8606, float %8607, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8610 = select i1 %292, float %8608, float %8599
  %8611 = select i1 %292, float %8608, float %8600
  %8612 = select i1 %292, float 1.000000e+00, float %8601
  %8613 = select i1 %292, float %8609, float %8605
  %8614 = select i1 %292, float 0.000000e+00, float %8606
  %8615 = select i1 %292, float 0.000000e+00, float %8607
  %8616 = fmul fast float %8610, %8389
  %8617 = fmul fast float %8611, %8390
  %8618 = fmul fast float %8612, %8391
  %8619 = fadd fast float %8616, %8613
  %8620 = fadd fast float %8617, %8614
  %8621 = fadd fast float %8615, %8618
  %8622 = fmul fast float %8610, %8353
  %8623 = fmul fast float %8611, %8354
  %8624 = fmul fast float %8612, %8355
  %8625 = fmul fast float %137, %8401
  %8626 = fmul fast float %139, %8402
  %8627 = fsub fast float 1.000000e+00, %8625
  %8628 = fsub fast float 1.000000e+00, %8626
  %8629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8630 = extractvalue %dx.types.CBufRet.f32 %8629, 0
  %8631 = extractvalue %dx.types.CBufRet.f32 %8629, 1
  %8632 = extractvalue %dx.types.CBufRet.f32 %8629, 2
  %8633 = fmul fast float %8627, %8630
  %8634 = fmul fast float %8627, %8631
  %8635 = fmul fast float %8627, %8632
  %8636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8637 = extractvalue %dx.types.CBufRet.f32 %8636, 0
  %8638 = extractvalue %dx.types.CBufRet.f32 %8636, 1
  %8639 = extractvalue %dx.types.CBufRet.f32 %8636, 2
  %8640 = fmul fast float %8628, %8637
  %8641 = fmul fast float %8628, %8638
  %8642 = fmul fast float %8628, %8639
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 0
  %8645 = extractvalue %dx.types.CBufRet.f32 %8643, 1
  %8646 = extractvalue %dx.types.CBufRet.f32 %8643, 2
  %8647 = fadd fast float %8640, %8644
  %8648 = fadd fast float %8647, %8633
  %8649 = fadd fast float %8641, %8645
  %8650 = fadd fast float %8649, %8634
  %8651 = fadd fast float %8642, %8646
  %8652 = fadd fast float %8651, %8635
  %8653 = fmul fast float %8648, %253
  %8654 = fmul fast float %8650, %253
  %8655 = fmul fast float %8652, %253
  br label %8656

; <label>:8656                                    ; preds = %8598, %8352
  %8657 = phi float [ %8653, %8598 ], [ %188, %8352 ]
  %8658 = phi float [ %8654, %8598 ], [ %189, %8352 ]
  %8659 = phi float [ %8655, %8598 ], [ %190, %8352 ]
  %8660 = phi float [ %253, %8598 ], [ %96, %8352 ]
  %8661 = phi float [ %8619, %8598 ], [ %8389, %8352 ]
  %8662 = phi float [ %8620, %8598 ], [ %8390, %8352 ]
  %8663 = phi float [ %8621, %8598 ], [ %8391, %8352 ]
  %8664 = phi float [ %8622, %8598 ], [ %8353, %8352 ]
  %8665 = phi float [ %8623, %8598 ], [ %8354, %8352 ]
  %8666 = phi float [ %8624, %8598 ], [ %8355, %8352 ]
  %8667 = phi float [ %8599, %8598 ], [ 1.000000e+00, %8352 ]
  br i1 %8398, label %9822, label %8668

; <label>:8668                                    ; preds = %8656
  %8669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8670 = extractvalue %dx.types.CBufRet.f32 %8669, 0
  %8671 = extractvalue %dx.types.CBufRet.f32 %8669, 1
  %8672 = extractvalue %dx.types.CBufRet.f32 %8669, 2
  %8673 = extractvalue %dx.types.CBufRet.f32 %8669, 3
  %8674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8675 = extractvalue %dx.types.CBufRet.f32 %8674, 0
  %8676 = extractvalue %dx.types.CBufRet.f32 %8674, 1
  %8677 = extractvalue %dx.types.CBufRet.f32 %8674, 2
  %8678 = extractvalue %dx.types.CBufRet.f32 %8674, 3
  %8679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8680 = extractvalue %dx.types.CBufRet.f32 %8679, 0
  %8681 = extractvalue %dx.types.CBufRet.f32 %8679, 1
  %8682 = extractvalue %dx.types.CBufRet.f32 %8679, 2
  %8683 = extractvalue %dx.types.CBufRet.f32 %8679, 3
  %8684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.f32 %8684, 0
  %8686 = extractvalue %dx.types.CBufRet.f32 %8684, 1
  %8687 = extractvalue %dx.types.CBufRet.f32 %8684, 2
  %8688 = extractvalue %dx.types.CBufRet.f32 %8684, 3
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 3
  %8691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8692 = extractvalue %dx.types.CBufRet.f32 %8691, 3
  %8693 = extractvalue %dx.types.CBufRet.f32 %8691, 0
  %8694 = extractvalue %dx.types.CBufRet.f32 %8691, 1
  %8695 = extractvalue %dx.types.CBufRet.f32 %8691, 2
  %8696 = fcmp fast olt float %8695, -5.000000e-01
  %8697 = call float @dx.op.dot3.f32(i32 55, float %8657, float %8658, float %8659, float %8657, float %8658, float %8659)  ; Dot3(ax,ay,az,bx,by,bz)
  %8698 = call float @dx.op.unary.f32(i32 25, float %8697)  ; Rsqrt(value)
  %8699 = fmul fast float %8698, %8697
  %8700 = fmul fast float %8698, %8657
  %8701 = fmul fast float %8698, %8658
  %8702 = fmul fast float %8698, %8659
  %8703 = fadd fast float %8699, %8673
  %8704 = call float @dx.op.dot3.f32(i32 55, float %8700, float %8701, float %8702, float %8670, float %8671, float %8672)  ; Dot3(ax,ay,az,bx,by,bz)
  %8705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8706 = extractvalue %dx.types.CBufRet.i32 %8705, 1
  %8707 = and i32 %8706, 1
  %8708 = icmp ne i32 %8707, 0
  %8709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8710 = extractvalue %dx.types.CBufRet.f32 %8709, 2
  %8711 = fcmp fast ogt float %8710, 0.000000e+00
  %8712 = and i1 %8708, %8711
  br i1 %8712, label %8713, label %9119, !dx.controlflow.hints !125

; <label>:8713                                    ; preds = %8668
  %8714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8715 = extractvalue %dx.types.CBufRet.f32 %8714, 3
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 2
  %8718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8719 = extractvalue %dx.types.CBufRet.f32 %8718, 2
  %8720 = fsub fast float %8717, %8719
  %8721 = and i32 %8706, 2
  %8722 = extractvalue %dx.types.CBufRet.i32 %8705, 0
  %8723 = call i32 @dx.op.binary.i32(i32 40, i32 %8722, i32 3)  ; UMin(a,b)
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 0
  %8726 = extractvalue %dx.types.CBufRet.f32 %8724, 1
  %8727 = extractvalue %dx.types.CBufRet.f32 %8718, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8718, 1
  %8729 = fsub fast float %8725, %8727
  %8730 = fsub fast float %8726, %8728
  %8731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8732 = extractvalue %dx.types.CBufRet.f32 %8731, 0
  %8733 = fcmp fast ogt float %8732, 0.000000e+00
  %8734 = fsub fast float -0.000000e+00, %8729
  %8735 = fsub fast float -0.000000e+00, %8730
  %8736 = call float @dx.op.dot2.f32(i32 54, float %8700, float %8701, float %8700, float %8701)  ; Dot2(ax,ay,bx,by)
  %8737 = call float @dx.op.dot2.f32(i32 54, float %8700, float %8701, float %8734, float %8735)  ; Dot2(ax,ay,bx,by)
  %8738 = fmul fast float %8737, 2.000000e+00
  %8739 = call float @dx.op.dot2.f32(i32 54, float %8734, float %8735, float %8734, float %8735)  ; Dot2(ax,ay,bx,by)
  %8740 = fmul fast float %8732, %8732
  %8741 = fsub fast float %8739, %8740
  %8742 = fmul fast float %8738, %8738
  %8743 = fmul fast float %8736, 4.000000e+00
  %8744 = fmul fast float %8743, %8741
  %8745 = fsub fast float %8742, %8744
  %8746 = fcmp fast ogt float %8745, 0.000000e+00
  br i1 %8746, label %8747, label %8762

; <label>:8747                                    ; preds = %8713
  %8748 = fcmp fast ogt float %8738, 0.000000e+00
  %8749 = call float @dx.op.unary.f32(i32 24, float %8745)  ; Sqrt(value)
  %8750 = fsub fast float -0.000000e+00, %8749
  %8751 = select i1 %8748, float %8749, float %8750
  %8752 = fadd fast float %8751, %8738
  %8753 = fmul float %8752, -5.000000e-01
  %8754 = fdiv fast float %8753, %8736
  %8755 = call float @dx.op.binary.f32(i32 35, float %8754, float 0.000000e+00)  ; FMax(a,b)
  %8756 = call float @dx.op.binary.f32(i32 36, float %8699, float %8755)  ; FMin(a,b)
  %8757 = fdiv fast float %8741, %8753
  %8758 = call float @dx.op.binary.f32(i32 35, float %8757, float 0.000000e+00)  ; FMax(a,b)
  %8759 = call float @dx.op.binary.f32(i32 36, float %8699, float %8758)  ; FMin(a,b)
  %8760 = call float @dx.op.binary.f32(i32 36, float %8756, float %8759)  ; FMin(a,b)
  %8761 = call float @dx.op.binary.f32(i32 35, float %8756, float %8759)  ; FMax(a,b)
  br label %8762

; <label>:8762                                    ; preds = %8747, %8713
  %8763 = phi float [ %8761, %8747 ], [ -1.000000e+00, %8713 ]
  %8764 = phi float [ %8760, %8747 ], [ -1.000000e+00, %8713 ]
  %8765 = phi i1 [ true, %8747 ], [ false, %8713 ]
  %8766 = and i1 %8733, %8765
  br i1 %8766, label %8767, label %8769

; <label>:8767                                    ; preds = %8762
  %8768 = fcmp fast oeq float %8764, %8763
  br i1 %8768, label %9072, label %8770

; <label>:8769                                    ; preds = %8762
  br i1 %8733, label %9072, label %8770

; <label>:8770                                    ; preds = %8769, %8767
  %8771 = phi float [ %8699, %8769 ], [ %8763, %8767 ]
  %8772 = phi float [ 0.000000e+00, %8769 ], [ %8764, %8767 ]
  %8773 = icmp ne i32 %8721, 0
  %8774 = fmul fast float %8771, %8702
  %8775 = fadd fast float %8774, %8715
  %8776 = fmul fast float %8775, %8771
  %8777 = select i1 %8773, float 0.000000e+00, float %8776
  %8778 = fcmp fast oeq float %8702, 0.000000e+00
  %8779 = fdiv fast float %8720, %8702
  %8780 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8779)  ; FMax(a,b)
  %8781 = select i1 %8778, float %8771, float %8780
  %8782 = call float @dx.op.binary.f32(i32 36, float %8771, float %8781)  ; FMin(a,b)
  %8783 = fcmp fast ogt float %8702, 0.000000e+00
  %8784 = fcmp fast olt float %8720, 0.000000e+00
  br i1 %8783, label %8785, label %8842

; <label>:8785                                    ; preds = %8770
  %8786 = icmp eq i32 %8721, 0
  br i1 %8784, label %8787, label %8831

; <label>:8787                                    ; preds = %8785
  %8788 = select i1 %8786, float %8771, float 0.000000e+00
  %8789 = fsub fast float -0.000000e+00, %8788
  %8790 = call float @dx.op.unary.f32(i32 6, float %8789)  ; FAbs(value)
  %8791 = fmul fast float %8788, %8702
  %8792 = fadd fast float %8791, %8715
  %8793 = fmul fast float %8790, %8792
  %8794 = fsub fast float %8777, %8793
  %8795 = fsub fast float %8771, %8790
  %8796 = select i1 %8786, float %8795, float 0.000000e+00
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 0
  %8799 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8800 = extractvalue %dx.types.CBufRet.f32 %8797, 2
  %8801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8802 = extractvalue %dx.types.CBufRet.f32 %8801, 0
  %8803 = extractvalue %dx.types.CBufRet.f32 %8801, 1
  %8804 = extractvalue %dx.types.CBufRet.f32 %8801, 2
  %8805 = extractvalue %dx.types.CBufRet.f32 %8801, 3
  %8806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8807 = extractvalue %dx.types.CBufRet.f32 %8806, 3
  %8808 = call float @dx.op.binary.f32(i32 36, float %8794, float %8807)  ; FMin(a,b)
  %8809 = fmul fast float %8805, %8796
  %8810 = call float @dx.op.unary.f32(i32 7, float %8809)  ; Saturate(value)
  %8811 = fsub fast float %8802, %8798
  %8812 = fsub fast float %8803, %8799
  %8813 = fsub fast float %8804, %8800
  %8814 = fmul fast float %8810, %8811
  %8815 = fmul fast float %8810, %8812
  %8816 = fmul fast float %8810, %8813
  %8817 = fadd fast float %8814, %8798
  %8818 = fadd fast float %8815, %8799
  %8819 = fadd fast float %8816, %8800
  %8820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8821 = extractvalue %dx.types.CBufRet.f32 %8820, 0
  %8822 = extractvalue %dx.types.CBufRet.f32 %8820, 1
  %8823 = fadd fast float %8822, %8821
  %8824 = call float @dx.op.unary.f32(i32 7, float %8823)  ; Saturate(value)
  %8825 = extractvalue %dx.types.CBufRet.f32 %8820, 2
  %8826 = extractvalue %dx.types.CBufRet.f32 %8820, 3
  %8827 = fadd fast float %8826, %8825
  %8828 = call float @dx.op.unary.f32(i32 7, float %8827)  ; Saturate(value)
  %8829 = fmul fast float %8824, %8808
  %8830 = fmul fast float %8829, %8828
  br label %9072

; <label>:8831                                    ; preds = %8785
  br i1 %8786, label %8832, label %8853

; <label>:8832                                    ; preds = %8831
  %8833 = call float @dx.op.binary.f32(i32 36, float %8782, float %8772)  ; FMin(a,b)
  %8834 = fsub fast float %8782, %8833
  %8835 = fsub fast float %8834, %8771
  %8836 = call float @dx.op.unary.f32(i32 6, float %8835)  ; FAbs(value)
  %8837 = fadd fast float %8834, %8771
  %8838 = fmul fast float %8837, %8702
  %8839 = fadd fast float %8838, %8715
  %8840 = fmul fast float %8839, %8836
  %8841 = fsub fast float %8777, %8840
  br label %8853

; <label>:8842                                    ; preds = %8770
  br i1 %8784, label %8843, label %8853

; <label>:8843                                    ; preds = %8842
  %8844 = call float @dx.op.binary.f32(i32 35, float %8772, float %8782)  ; FMax(a,b)
  %8845 = icmp eq i32 %8721, 0
  %8846 = select i1 %8845, float %8782, float 0.000000e+00
  %8847 = fsub fast float -0.000000e+00, %8846
  %8848 = call float @dx.op.unary.f32(i32 6, float %8847)  ; FAbs(value)
  %8849 = fmul fast float %8846, %8702
  %8850 = fadd fast float %8849, %8715
  %8851 = fmul fast float %8848, %8850
  %8852 = fsub fast float %8777, %8851
  br label %8853

; <label>:8853                                    ; preds = %8843, %8842, %8832, %8831
  %8854 = phi float [ %8772, %8831 ], [ %8772, %8832 ], [ %8844, %8843 ], [ %8772, %8842 ]
  %8855 = phi float [ 0.000000e+00, %8831 ], [ %8836, %8832 ], [ %8848, %8843 ], [ 0.000000e+00, %8842 ]
  %8856 = phi float [ %8777, %8831 ], [ %8841, %8832 ], [ %8852, %8843 ], [ %8777, %8842 ]
  %8857 = phi float [ %8782, %8831 ], [ %8782, %8832 ], [ %8771, %8843 ], [ %8771, %8842 ]
  %8858 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8858, align 4, !tbaa !114, !noalias !126
  %8859 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8859, align 4, !tbaa !114, !noalias !126
  %8860 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8860, align 4, !tbaa !114, !noalias !126
  %8861 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8861, align 4, !tbaa !114, !noalias !126
  %8862 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8862, align 4, !tbaa !114, !noalias !126
  %8863 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8863, align 4, !tbaa !114, !noalias !126
  %8864 = icmp sgt i32 %8723, 0
  br i1 %8864, label %8865, label %8926

; <label>:8865                                    ; preds = %8853
  br label %8866

; <label>:8866                                    ; preds = %8915, %8865
  %8867 = phi i32 [ %8916, %8915 ], [ 0, %8865 ]
  %8868 = phi i32 [ %8917, %8915 ], [ 0, %8865 ]
  %8869 = add nuw i32 %8868, 171
  %8870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8869)  ; CBufferLoadLegacy(handle,regIndex)
  %8871 = extractvalue %dx.types.CBufRet.f32 %8870, 0
  %8872 = extractvalue %dx.types.CBufRet.f32 %8870, 1
  %8873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8874 = extractvalue %dx.types.CBufRet.f32 %8873, 0
  %8875 = extractvalue %dx.types.CBufRet.f32 %8873, 1
  %8876 = fsub fast float %8871, %8874
  %8877 = fsub fast float %8872, %8875
  %8878 = extractvalue %dx.types.CBufRet.f32 %8870, 2
  %8879 = fsub fast float -0.000000e+00, %8876
  %8880 = fsub fast float -0.000000e+00, %8877
  %8881 = call float @dx.op.dot2.f32(i32 54, float %8700, float %8701, float %8879, float %8880)  ; Dot2(ax,ay,bx,by)
  %8882 = fmul fast float %8881, 2.000000e+00
  %8883 = call float @dx.op.dot2.f32(i32 54, float %8879, float %8880, float %8879, float %8880)  ; Dot2(ax,ay,bx,by)
  %8884 = fmul fast float %8878, %8878
  %8885 = fsub fast float %8883, %8884
  %8886 = fmul fast float %8882, %8882
  %8887 = fmul fast float %8743, %8885
  %8888 = fsub fast float %8886, %8887
  %8889 = fcmp fast ogt float %8888, 0.000000e+00
  br i1 %8889, label %8890, label %8905

; <label>:8890                                    ; preds = %8866
  %8891 = fcmp fast ogt float %8882, 0.000000e+00
  %8892 = call float @dx.op.unary.f32(i32 24, float %8888)  ; Sqrt(value)
  %8893 = fsub fast float -0.000000e+00, %8892
  %8894 = select i1 %8891, float %8892, float %8893
  %8895 = fadd fast float %8894, %8882
  %8896 = fmul float %8895, -5.000000e-01
  %8897 = fdiv fast float %8896, %8736
  %8898 = call float @dx.op.binary.f32(i32 35, float %8897, float 0.000000e+00)  ; FMax(a,b)
  %8899 = call float @dx.op.binary.f32(i32 36, float %8771, float %8898)  ; FMin(a,b)
  %8900 = fdiv fast float %8885, %8896
  %8901 = call float @dx.op.binary.f32(i32 35, float %8900, float 0.000000e+00)  ; FMax(a,b)
  %8902 = call float @dx.op.binary.f32(i32 36, float %8771, float %8901)  ; FMin(a,b)
  %8903 = call float @dx.op.binary.f32(i32 36, float %8899, float %8902)  ; FMin(a,b)
  %8904 = call float @dx.op.binary.f32(i32 35, float %8899, float %8902)  ; FMax(a,b)
  br label %8905

; <label>:8905                                    ; preds = %8890, %8866
  %8906 = phi float [ %8904, %8890 ], [ -1.000000e+00, %8866 ]
  %8907 = phi float [ %8903, %8890 ], [ -1.000000e+00, %8866 ]
  %8908 = phi i1 [ true, %8890 ], [ false, %8866 ]
  br i1 %8908, label %8909, label %8915

; <label>:8909                                    ; preds = %8905
  %8910 = call float @dx.op.binary.f32(i32 35, float %8854, float %8907)  ; FMax(a,b)
  %8911 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8868
  store float %8910, float* %8911, align 4, !tbaa !114, !noalias !126
  %8912 = call float @dx.op.binary.f32(i32 35, float %8854, float %8906)  ; FMax(a,b)
  %8913 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8868
  store float %8912, float* %8913, align 4, !tbaa !114, !noalias !126
  %8914 = add nsw i32 %8867, 1
  br label %8915

; <label>:8915                                    ; preds = %8909, %8905
  %8916 = phi i32 [ %8914, %8909 ], [ %8867, %8905 ]
  %8917 = add nuw nsw i32 %8868, 1
  %8918 = icmp eq i32 %8917, %8723
  br i1 %8918, label %8919, label %8866

; <label>:8919                                    ; preds = %8915
  %8920 = load float, float* %8860, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8921 = load float, float* %8859, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %8922 = load float, float* %8858, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %8923 = load float, float* %8863, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8924 = load float, float* %8862, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %8925 = load float, float* %8861, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %8926

; <label>:8926                                    ; preds = %8919, %8853
  %8927 = phi float [ -1.000000e+00, %8853 ], [ %8925, %8919 ]
  %8928 = phi float [ -1.000000e+00, %8853 ], [ %8924, %8919 ]
  %8929 = phi float [ -1.000000e+00, %8853 ], [ %8923, %8919 ]
  %8930 = phi float [ -1.000000e+00, %8853 ], [ %8922, %8919 ]
  %8931 = phi float [ -1.000000e+00, %8853 ], [ %8921, %8919 ]
  %8932 = phi float [ -1.000000e+00, %8853 ], [ %8920, %8919 ]
  %8933 = phi i32 [ 0, %8853 ], [ %8916, %8919 ]
  %8934 = call float @dx.op.binary.f32(i32 36, float %8931, float %8932)  ; FMin(a,b)
  %8935 = call float @dx.op.binary.f32(i32 36, float %8930, float %8934)  ; FMin(a,b)
  %8936 = call float @dx.op.binary.f32(i32 35, float %8930, float %8931)  ; FMax(a,b)
  %8937 = call float @dx.op.binary.f32(i32 36, float %8936, float %8932)  ; FMin(a,b)
  %8938 = call float @dx.op.binary.f32(i32 36, float %8930, float %8931)  ; FMin(a,b)
  %8939 = call float @dx.op.binary.f32(i32 35, float %8938, float %8937)  ; FMax(a,b)
  %8940 = call float @dx.op.binary.f32(i32 35, float %8931, float %8932)  ; FMax(a,b)
  %8941 = call float @dx.op.binary.f32(i32 35, float %8930, float %8940)  ; FMax(a,b)
  store float %8935, float* %8858, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %8939, float* %8859, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %8941, float* %8860, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8942 = call float @dx.op.binary.f32(i32 36, float %8928, float %8929)  ; FMin(a,b)
  %8943 = call float @dx.op.binary.f32(i32 36, float %8927, float %8942)  ; FMin(a,b)
  %8944 = call float @dx.op.binary.f32(i32 35, float %8927, float %8928)  ; FMax(a,b)
  %8945 = call float @dx.op.binary.f32(i32 36, float %8944, float %8929)  ; FMin(a,b)
  %8946 = call float @dx.op.binary.f32(i32 36, float %8927, float %8928)  ; FMin(a,b)
  %8947 = call float @dx.op.binary.f32(i32 35, float %8946, float %8945)  ; FMax(a,b)
  %8948 = call float @dx.op.binary.f32(i32 35, float %8928, float %8929)  ; FMax(a,b)
  %8949 = call float @dx.op.binary.f32(i32 35, float %8927, float %8948)  ; FMax(a,b)
  store float %8943, float* %8861, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %8947, float* %8862, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %8949, float* %8863, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8950 = sub nsw i32 3, %8933
  %8951 = icmp sgt i32 %8950, 2
  br i1 %8951, label %8952, label %8990

; <label>:8952                                    ; preds = %8926
  %8953 = icmp eq i32 %8721, 0
  %8954 = fsub fast float %8771, %8855
  %8955 = select i1 %8953, float %8954, float %8855
  %8956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8957 = extractvalue %dx.types.CBufRet.f32 %8956, 0
  %8958 = extractvalue %dx.types.CBufRet.f32 %8956, 1
  %8959 = extractvalue %dx.types.CBufRet.f32 %8956, 2
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %8962 = extractvalue %dx.types.CBufRet.f32 %8960, 1
  %8963 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8964 = extractvalue %dx.types.CBufRet.f32 %8960, 3
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 3
  %8967 = call float @dx.op.binary.f32(i32 36, float %8856, float %8966)  ; FMin(a,b)
  %8968 = fmul fast float %8964, %8955
  %8969 = call float @dx.op.unary.f32(i32 7, float %8968)  ; Saturate(value)
  %8970 = fsub fast float %8961, %8957
  %8971 = fsub fast float %8962, %8958
  %8972 = fsub fast float %8963, %8959
  %8973 = fmul fast float %8969, %8970
  %8974 = fmul fast float %8969, %8971
  %8975 = fmul fast float %8969, %8972
  %8976 = fadd fast float %8973, %8957
  %8977 = fadd fast float %8974, %8958
  %8978 = fadd fast float %8975, %8959
  %8979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8980 = extractvalue %dx.types.CBufRet.f32 %8979, 0
  %8981 = extractvalue %dx.types.CBufRet.f32 %8979, 1
  %8982 = fadd fast float %8981, %8980
  %8983 = call float @dx.op.unary.f32(i32 7, float %8982)  ; Saturate(value)
  %8984 = extractvalue %dx.types.CBufRet.f32 %8979, 2
  %8985 = extractvalue %dx.types.CBufRet.f32 %8979, 3
  %8986 = fadd fast float %8985, %8984
  %8987 = call float @dx.op.unary.f32(i32 7, float %8986)  ; Saturate(value)
  %8988 = fmul fast float %8983, %8967
  %8989 = fmul fast float %8988, %8987
  br label %9072

; <label>:8990                                    ; preds = %8926
  %8991 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8950
  %8992 = load float, float* %8991, align 4, !tbaa !114, !noalias !126
  %8993 = fcmp fast olt float %8992, %8857
  %8994 = icmp sgt i32 %8933, 0
  %8995 = and i1 %8994, %8993
  br i1 %8995, label %8996, label %9033

; <label>:8996                                    ; preds = %8990
  br label %8997

; <label>:8997                                    ; preds = %9026, %8996
  %8998 = phi float [ %9027, %9026 ], [ %8855, %8996 ]
  %8999 = phi float [ %9028, %9026 ], [ %8856, %8996 ]
  %9000 = phi float [ %9008, %9026 ], [ %8992, %8996 ]
  %9001 = phi i32 [ %9005, %9026 ], [ %8950, %8996 ]
  %9002 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9001
  %9003 = load float, float* %9002, align 4, !tbaa !114, !noalias !126
  %9004 = icmp slt i32 %9001, 2
  %9005 = add nsw i32 %9001, 1
  %9006 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9005
  %9007 = load float, float* %9006, align 4, !tbaa !114, !noalias !126
  %9008 = select i1 %9004, float %9007, float %8771
  %9009 = call float @dx.op.binary.f32(i32 36, float %9008, float %9003)  ; FMin(a,b)
  %9010 = call float @dx.op.binary.f32(i32 36, float %8857, float %9009)  ; FMin(a,b)
  %9011 = icmp eq i32 %8721, 0
  %9012 = fadd fast float %9010, %9000
  %9013 = fmul fast float %9012, %8702
  %9014 = fadd fast float %9013, %8715
  br i1 %9011, label %9020, label %9015

; <label>:9015                                    ; preds = %8997
  %9016 = fsub fast float %9010, %9000
  %9017 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9016)  ; FMax(a,b)
  %9018 = fmul fast float %9017, %9014
  %9019 = fadd fast float %9018, %8999
  br label %9026

; <label>:9020                                    ; preds = %8997
  %9021 = fsub fast float %9000, %9010
  %9022 = call float @dx.op.unary.f32(i32 6, float %9021)  ; FAbs(value)
  %9023 = fadd fast float %9022, %8998
  %9024 = fmul fast float %9022, %9014
  %9025 = fsub fast float %8999, %9024
  br label %9026

; <label>:9026                                    ; preds = %9020, %9015
  %9027 = phi float [ %9017, %9015 ], [ %9023, %9020 ]
  %9028 = phi float [ %9019, %9015 ], [ %9025, %9020 ]
  %9029 = fcmp fast olt float %9008, %8857
  %9030 = icmp slt i32 %9005, 3
  %9031 = and i1 %9030, %9029
  br i1 %9031, label %8997, label %9032

; <label>:9032                                    ; preds = %9026
  br label %9033

; <label>:9033                                    ; preds = %9032, %8990
  %9034 = phi float [ %8855, %8990 ], [ %9027, %9032 ]
  %9035 = phi float [ %8856, %8990 ], [ %9028, %9032 ]
  %9036 = fsub fast float %8771, %9034
  %9037 = select i1 %8773, float %9034, float %9036
  %9038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9039 = extractvalue %dx.types.CBufRet.f32 %9038, 0
  %9040 = extractvalue %dx.types.CBufRet.f32 %9038, 1
  %9041 = extractvalue %dx.types.CBufRet.f32 %9038, 2
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9044 = extractvalue %dx.types.CBufRet.f32 %9042, 1
  %9045 = extractvalue %dx.types.CBufRet.f32 %9042, 2
  %9046 = extractvalue %dx.types.CBufRet.f32 %9042, 3
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 3
  %9049 = call float @dx.op.binary.f32(i32 36, float %9035, float %9048)  ; FMin(a,b)
  %9050 = fmul fast float %9046, %9037
  %9051 = call float @dx.op.unary.f32(i32 7, float %9050)  ; Saturate(value)
  %9052 = fsub fast float %9043, %9039
  %9053 = fsub fast float %9044, %9040
  %9054 = fsub fast float %9045, %9041
  %9055 = fmul fast float %9051, %9052
  %9056 = fmul fast float %9051, %9053
  %9057 = fmul fast float %9051, %9054
  %9058 = fadd fast float %9055, %9039
  %9059 = fadd fast float %9056, %9040
  %9060 = fadd fast float %9057, %9041
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9064 = fadd fast float %9063, %9062
  %9065 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9067 = extractvalue %dx.types.CBufRet.f32 %9061, 3
  %9068 = fadd fast float %9067, %9066
  %9069 = call float @dx.op.unary.f32(i32 7, float %9068)  ; Saturate(value)
  %9070 = fmul fast float %9065, %9049
  %9071 = fmul fast float %9070, %9069
  br label %9072

; <label>:9072                                    ; preds = %9033, %8952, %8787, %8769, %8767
  %9073 = phi float [ %8796, %8787 ], [ %8955, %8952 ], [ %9037, %9033 ], [ 0.000000e+00, %8767 ], [ 0.000000e+00, %8769 ]
  %9074 = phi float [ %8830, %8787 ], [ %8989, %8952 ], [ %9071, %9033 ], [ 0.000000e+00, %8767 ], [ 0.000000e+00, %8769 ]
  %9075 = phi float [ %8817, %8787 ], [ %8976, %8952 ], [ %9058, %9033 ], [ 0.000000e+00, %8767 ], [ 0.000000e+00, %8769 ]
  %9076 = phi float [ %8818, %8787 ], [ %8977, %8952 ], [ %9059, %9033 ], [ 0.000000e+00, %8767 ], [ 0.000000e+00, %8769 ]
  %9077 = phi float [ %8819, %8787 ], [ %8978, %8952 ], [ %9060, %9033 ], [ 0.000000e+00, %8767 ], [ 0.000000e+00, %8769 ]
  %9078 = fmul fast float %8710, %9074
  %9079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9080 = extractvalue %dx.types.CBufRet.f32 %9079, 2
  %9081 = fsub fast float %8717, %9080
  %9082 = fcmp fast olt float %9078, -2.000000e+01
  %9083 = call float @dx.op.unary.f32(i32 21, float %9078)  ; Exp(value)
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 3
  %9087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9087, 2
  %9089 = fmul fast float %9086, %9081
  %9090 = call float @dx.op.unary.f32(i32 7, float %9089)  ; Saturate(value)
  %9091 = fsub fast float 1.000000e+00, %9090
  %9092 = fmul fast float %8702, 5.000000e-01
  %9093 = fadd fast float %9092, 5.000000e-01
  %9094 = call float @dx.op.unary.f32(i32 7, float %9093)  ; Saturate(value)
  %9095 = fsub fast float 1.000000e+00, %9094
  %9096 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9091)  ; FMax(a,b)
  %9097 = fdiv fast float %9095, %9096
  %9098 = fsub fast float %9081, %8659
  %9099 = call float @dx.op.unary.f32(i32 6, float %9098)  ; FAbs(value)
  %9100 = fmul fast float %9099, %9085
  %9101 = call float @dx.op.unary.f32(i32 7, float %9097)  ; Saturate(value)
  %9102 = fsub fast float 1.000000e+00, %9100
  %9103 = fmul fast float %9102, %9101
  %9104 = fadd fast float %9103, %9100
  %9105 = fmul fast float %9088, %9081
  %9106 = call float @dx.op.unary.f32(i32 7, float %9105)  ; Saturate(value)
  %9107 = fsub fast float 1.000000e+00, %9104
  %9108 = fmul fast float %9107, %9106
  %9109 = fadd fast float %9108, %9104
  %9110 = call float @dx.op.unary.f32(i32 7, float %9109)  ; Saturate(value)
  %9111 = fadd fast float %9083, -1.000000e+00
  %9112 = select i1 %9082, float -1.000000e+00, float %9111
  %9113 = fmul fast float %9110, %9112
  %9114 = fadd fast float %9113, 1.000000e+00
  %9115 = fsub fast float -0.000000e+00, %9113
  %9116 = fmul fast float %9075, %9115
  %9117 = fmul fast float %9076, %9115
  %9118 = fmul fast float %9077, %9115
  br label %9119

; <label>:9119                                    ; preds = %9072, %8668
  %9120 = phi float [ %9073, %9072 ], [ 0.000000e+00, %8668 ]
  %9121 = phi float [ %9114, %9072 ], [ 1.000000e+00, %8668 ]
  %9122 = phi float [ %9116, %9072 ], [ 0.000000e+00, %8668 ]
  %9123 = phi float [ %9117, %9072 ], [ 0.000000e+00, %8668 ]
  %9124 = phi float [ %9118, %9072 ], [ 0.000000e+00, %8668 ]
  %9125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9126 = extractvalue %dx.types.CBufRet.f32 %9125, 1
  %9127 = fsub fast float 1.000000e+00, %9121
  %9128 = fmul fast float %9127, %8703
  %9129 = fmul fast float %9128, %9126
  %9130 = fsub fast float %8703, %9129
  br i1 %8696, label %9131, label %9160, !dx.controlflow.hints !162

; <label>:9131                                    ; preds = %9119
  %9132 = fmul fast float %8704, %8693
  %9133 = fadd fast float %9132, %8694
  %9134 = call float @dx.op.unary.f32(i32 7, float %9133)  ; Saturate(value)
  %9135 = fmul fast float %8675, %9130
  %9136 = fsub fast float -0.000000e+00, %9135
  %9137 = fmul fast float %8676, %9130
  %9138 = fsub fast float -0.000000e+00, %9137
  %9139 = call float @dx.op.unary.f32(i32 21, float %9136)  ; Exp(value)
  %9140 = call float @dx.op.unary.f32(i32 21, float %9138)  ; Exp(value)
  %9141 = call float @dx.op.binary.f32(i32 35, float %8683, float %9139)  ; FMax(a,b)
  %9142 = call float @dx.op.binary.f32(i32 35, float %8683, float %9140)  ; FMax(a,b)
  %9143 = fsub fast float %9142, %9141
  %9144 = fmul fast float %9143, %9134
  %9145 = fadd fast float %9144, %9141
  %9146 = call float @dx.op.unary.f32(i32 7, float %9145)  ; Saturate(value)
  %9147 = fsub fast float %8680, %8685
  %9148 = fsub fast float %8681, %8686
  %9149 = fsub fast float %8682, %8687
  %9150 = fmul fast float %9134, %9147
  %9151 = fmul fast float %9134, %9148
  %9152 = fmul fast float %9134, %9149
  %9153 = fadd fast float %9150, %8685
  %9154 = fadd fast float %9151, %8686
  %9155 = fadd fast float %9152, %8687
  %9156 = fsub fast float 1.000000e+00, %9146
  %9157 = fmul fast float %9156, %9153
  %9158 = fmul fast float %9156, %9154
  %9159 = fmul fast float %9156, %9155
  br label %9219

; <label>:9160                                    ; preds = %9119
  %9161 = fmul fast float %9130, %8692
  %9162 = call float @dx.op.unary.f32(i32 7, float %9161)  ; Saturate(value)
  %9163 = fsub fast float 2.000000e+00, %9162
  %9164 = fmul fast float %9162, 9.921875e-01
  %9165 = fmul fast float %9164, %9163
  %9166 = fadd fast float %9165, 3.906250e-03
  %9167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %9166, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9168 = extractvalue %dx.types.ResRet.f32 %9167, 0
  %9169 = fsub fast float %9162, %9168
  %9170 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9169)  ; FMax(a,b)
  %9171 = fmul fast float %8678, %8659
  %9172 = call float @dx.op.unary.f32(i32 6, float %9171)  ; FAbs(value)
  %9173 = fcmp fast ogt float %9172, 0x3EB0C6F7A0000000
  br i1 %9173, label %9174, label %9180, !dx.controlflow.hints !163

; <label>:9174                                    ; preds = %9160
  %9175 = fmul fast float %9171, 0xBFF7154760000000
  %9176 = call float @dx.op.unary.f32(i32 21, float %9175)  ; Exp(value)
  %9177 = fsub fast float 1.000000e+00, %9176
  %9178 = fdiv fast float %9177, %9171
  %9179 = fmul fast float %9178, %8688
  br label %9180

; <label>:9180                                    ; preds = %9174, %9160
  %9181 = phi float [ %9179, %9174 ], [ %8688, %9160 ]
  %9182 = fadd fast float %9181, %8690
  %9183 = fmul fast float %9182, %9170
  %9184 = fmul fast float %8675, %9183
  %9185 = fsub fast float -0.000000e+00, %9184
  %9186 = fmul fast float %8676, %9183
  %9187 = fsub fast float -0.000000e+00, %9186
  %9188 = fmul fast float %8677, %9183
  %9189 = fsub fast float -0.000000e+00, %9188
  %9190 = call float @dx.op.unary.f32(i32 21, float %9185)  ; Exp(value)
  %9191 = call float @dx.op.unary.f32(i32 21, float %9187)  ; Exp(value)
  %9192 = call float @dx.op.unary.f32(i32 21, float %9189)  ; Exp(value)
  %9193 = fmul fast float %8704, %8704
  %9194 = fadd fast float %9193, 1.000000e+00
  %9195 = fmul fast float %9194, 0x3FAE8EC8A0000000
  %9196 = fmul fast float %9195, %8685
  %9197 = fmul fast float %9195, %8686
  %9198 = fmul fast float %9195, %8687
  %9199 = fmul fast float %8704, %8683
  %9200 = fsub fast float 1.000000e+00, %9199
  %9201 = fmul fast float %8683, %8683
  %9202 = fsub fast float 1.000000e+00, %9201
  %9203 = fmul fast float %9202, 0x3FB45F3060000000
  %9204 = fmul fast float %9200, %9200
  %9205 = fdiv fast float 1.000000e+00, %9204
  %9206 = fmul fast float %9203, %9205
  %9207 = fmul fast float %9206, %8680
  %9208 = fmul fast float %9206, %8681
  %9209 = fmul fast float %9206, %8682
  %9210 = fadd fast float %9207, %9196
  %9211 = fadd fast float %9208, %9197
  %9212 = fadd fast float %9209, %9198
  %9213 = fsub fast float 1.000000e+00, %9190
  %9214 = fsub fast float 1.000000e+00, %9191
  %9215 = fsub fast float 1.000000e+00, %9192
  %9216 = fmul fast float %9210, %9213
  %9217 = fmul fast float %9211, %9214
  %9218 = fmul fast float %9212, %9215
  br label %9219

; <label>:9219                                    ; preds = %9180, %9131
  %9220 = phi float [ %9157, %9131 ], [ %9216, %9180 ]
  %9221 = phi float [ %9158, %9131 ], [ %9217, %9180 ]
  %9222 = phi float [ %9159, %9131 ], [ %9218, %9180 ]
  %9223 = phi float [ %9146, %9131 ], [ %9190, %9180 ]
  %9224 = phi float [ %9146, %9131 ], [ %9191, %9180 ]
  %9225 = phi float [ %9146, %9131 ], [ %9192, %9180 ]
  br i1 %8712, label %9226, label %9424, !dx.controlflow.hints !164

; <label>:9226                                    ; preds = %9219
  %9227 = extractvalue %dx.types.CBufRet.f32 %9125, 0
  %9228 = fmul fast float %9227, %9127
  %9229 = fsub fast float %9122, %9220
  %9230 = fsub fast float %9123, %9221
  %9231 = fsub fast float %9124, %9222
  %9232 = fmul fast float %9228, %9229
  %9233 = fmul fast float %9228, %9230
  %9234 = fmul fast float %9228, %9231
  %9235 = fadd fast float %9232, %9220
  %9236 = fadd fast float %9233, %9221
  %9237 = fadd fast float %9234, %9222
  %9238 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9223)  ; FMax(a,b)
  %9239 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9224)  ; FMax(a,b)
  %9240 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9225)  ; FMax(a,b)
  %9241 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9121)  ; FMax(a,b)
  %9242 = call float @dx.op.binary.f32(i32 35, float %9120, float %9130)  ; FMax(a,b)
  %9243 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9242)  ; FMax(a,b)
  %9244 = fdiv fast float %9120, %9243
  %9245 = call float @dx.op.unary.f32(i32 7, float %9244)  ; Saturate(value)
  %9246 = fdiv fast float %9130, %9243
  %9247 = call float @dx.op.unary.f32(i32 7, float %9246)  ; Saturate(value)
  %9248 = fcmp fast une float %9241, 1.000000e+00
  br i1 %9248, label %9249, label %9262, !dx.controlflow.hints !165

; <label>:9249                                    ; preds = %9226
  %9250 = call float @dx.op.unary.f32(i32 23, float %9241)  ; Log(value)
  %9251 = fmul fast float %9250, 0x3FE62E4300000000
  %9252 = fmul fast float %9122, %9251
  %9253 = fsub fast float -0.000000e+00, %9252
  %9254 = fmul fast float %9123, %9251
  %9255 = fsub fast float -0.000000e+00, %9254
  %9256 = fmul fast float %9124, %9251
  %9257 = fsub fast float -0.000000e+00, %9256
  %9258 = fsub fast float 1.000000e+00, %9241
  %9259 = fdiv fast float %9253, %9258
  %9260 = fdiv fast float %9255, %9258
  %9261 = fdiv fast float %9257, %9258
  br label %9262

; <label>:9262                                    ; preds = %9249, %9226
  %9263 = phi float [ %9259, %9249 ], [ %9122, %9226 ]
  %9264 = phi float [ %9260, %9249 ], [ %9123, %9226 ]
  %9265 = phi float [ %9261, %9249 ], [ %9124, %9226 ]
  %9266 = phi float [ %9251, %9249 ], [ 0.000000e+00, %9226 ]
  %9267 = fcmp fast une float %9238, 1.000000e+00
  br i1 %9267, label %9268, label %9275, !dx.controlflow.hints !166

; <label>:9268                                    ; preds = %9262
  %9269 = call float @dx.op.unary.f32(i32 23, float %9238)  ; Log(value)
  %9270 = fmul fast float %9269, 0x3FE62E4300000000
  %9271 = fmul fast float %9235, %9270
  %9272 = fsub fast float -0.000000e+00, %9271
  %9273 = fsub fast float 1.000000e+00, %9238
  %9274 = fdiv fast float %9272, %9273
  br label %9275

; <label>:9275                                    ; preds = %9268, %9262
  %9276 = phi float [ %9274, %9268 ], [ %9235, %9262 ]
  %9277 = phi float [ %9270, %9268 ], [ 0.000000e+00, %9262 ]
  %9278 = fcmp fast une float %9239, 1.000000e+00
  br i1 %9278, label %9279, label %9286, !dx.controlflow.hints !166

; <label>:9279                                    ; preds = %9275
  %9280 = call float @dx.op.unary.f32(i32 23, float %9239)  ; Log(value)
  %9281 = fmul fast float %9280, 0x3FE62E4300000000
  %9282 = fmul fast float %9236, %9281
  %9283 = fsub fast float -0.000000e+00, %9282
  %9284 = fsub fast float 1.000000e+00, %9239
  %9285 = fdiv fast float %9283, %9284
  br label %9286

; <label>:9286                                    ; preds = %9279, %9275
  %9287 = phi float [ %9285, %9279 ], [ %9236, %9275 ]
  %9288 = phi float [ %9281, %9279 ], [ 0.000000e+00, %9275 ]
  %9289 = fcmp fast une float %9240, 1.000000e+00
  br i1 %9289, label %9290, label %9297, !dx.controlflow.hints !166

; <label>:9290                                    ; preds = %9286
  %9291 = call float @dx.op.unary.f32(i32 23, float %9240)  ; Log(value)
  %9292 = fmul fast float %9291, 0x3FE62E4300000000
  %9293 = fmul fast float %9237, %9292
  %9294 = fsub fast float -0.000000e+00, %9293
  %9295 = fsub fast float 1.000000e+00, %9240
  %9296 = fdiv fast float %9294, %9295
  br label %9297

; <label>:9297                                    ; preds = %9290, %9286
  %9298 = phi float [ %9296, %9290 ], [ %9237, %9286 ]
  %9299 = phi float [ %9292, %9290 ], [ 0.000000e+00, %9286 ]
  %9300 = fmul fast float %9263, %9247
  %9301 = fmul fast float %9264, %9247
  %9302 = fmul fast float %9265, %9247
  %9303 = fmul fast float %9266, %9247
  %9304 = fmul fast float %9276, %9245
  %9305 = fmul fast float %9287, %9245
  %9306 = fmul fast float %9298, %9245
  %9307 = fmul fast float %9277, %9245
  %9308 = fmul fast float %9288, %9245
  %9309 = fmul fast float %9299, %9245
  %9310 = fadd fast float %9304, %9300
  %9311 = fadd fast float %9305, %9301
  %9312 = fadd fast float %9306, %9302
  %9313 = fadd fast float %9307, %9303
  %9314 = fadd fast float %9308, %9303
  %9315 = fadd fast float %9309, %9303
  %9316 = fcmp fast une float %9313, 0.000000e+00
  br i1 %9316, label %9317, label %9324, !dx.controlflow.hints !167

; <label>:9317                                    ; preds = %9297
  %9318 = fmul fast float %9313, 0x3FF7154760000000
  %9319 = call float @dx.op.unary.f32(i32 21, float %9318)  ; Exp(value)
  %9320 = fsub fast float 1.000000e+00, %9319
  %9321 = fmul fast float %9310, %9320
  %9322 = fsub fast float -0.000000e+00, %9321
  %9323 = fdiv fast float %9322, %9313
  br label %9324

; <label>:9324                                    ; preds = %9317, %9297
  %9325 = phi float [ %9319, %9317 ], [ 1.000000e+00, %9297 ]
  %9326 = phi float [ %9323, %9317 ], [ %9310, %9297 ]
  %9327 = fcmp fast une float %9314, 0.000000e+00
  br i1 %9327, label %9328, label %9335, !dx.controlflow.hints !167

; <label>:9328                                    ; preds = %9324
  %9329 = fmul fast float %9314, 0x3FF7154760000000
  %9330 = call float @dx.op.unary.f32(i32 21, float %9329)  ; Exp(value)
  %9331 = fsub fast float 1.000000e+00, %9330
  %9332 = fmul fast float %9311, %9331
  %9333 = fsub fast float -0.000000e+00, %9332
  %9334 = fdiv fast float %9333, %9314
  br label %9335

; <label>:9335                                    ; preds = %9328, %9324
  %9336 = phi float [ %9330, %9328 ], [ 1.000000e+00, %9324 ]
  %9337 = phi float [ %9334, %9328 ], [ %9311, %9324 ]
  %9338 = fcmp fast une float %9315, 0.000000e+00
  br i1 %9338, label %9339, label %9346, !dx.controlflow.hints !167

; <label>:9339                                    ; preds = %9335
  %9340 = fmul fast float %9315, 0x3FF7154760000000
  %9341 = call float @dx.op.unary.f32(i32 21, float %9340)  ; Exp(value)
  %9342 = fsub fast float 1.000000e+00, %9341
  %9343 = fmul fast float %9312, %9342
  %9344 = fsub fast float -0.000000e+00, %9343
  %9345 = fdiv fast float %9344, %9315
  br label %9346

; <label>:9346                                    ; preds = %9339, %9335
  %9347 = phi float [ %9341, %9339 ], [ 1.000000e+00, %9335 ]
  %9348 = phi float [ %9345, %9339 ], [ %9312, %9335 ]
  %9349 = fcmp fast ogt float %9245, %9247
  br i1 %9349, label %9350, label %9370

; <label>:9350                                    ; preds = %9346
  %9351 = fsub fast float 1.000000e+00, %9247
  %9352 = fmul fast float %9263, %9351
  %9353 = fmul fast float %9264, %9351
  %9354 = fmul fast float %9265, %9351
  %9355 = fmul fast float %9266, %9351
  %9356 = fcmp fast une float %9355, 0.000000e+00
  br i1 %9356, label %9357, label %9408, !dx.controlflow.hints !168

; <label>:9357                                    ; preds = %9350
  %9358 = fmul fast float %9355, 0x3FF7154760000000
  %9359 = call float @dx.op.unary.f32(i32 21, float %9358)  ; Exp(value)
  %9360 = fsub fast float 1.000000e+00, %9359
  %9361 = fmul fast float %9352, %9360
  %9362 = fsub fast float -0.000000e+00, %9361
  %9363 = fmul fast float %9353, %9360
  %9364 = fsub fast float -0.000000e+00, %9363
  %9365 = fmul fast float %9354, %9360
  %9366 = fsub fast float -0.000000e+00, %9365
  %9367 = fdiv fast float %9362, %9355
  %9368 = fdiv fast float %9364, %9355
  %9369 = fdiv fast float %9366, %9355
  br label %9408

; <label>:9370                                    ; preds = %9346
  %9371 = fsub fast float 1.000000e+00, %9245
  %9372 = fmul fast float %9276, %9371
  %9373 = fmul fast float %9287, %9371
  %9374 = fmul fast float %9298, %9371
  %9375 = fmul fast float %9277, %9371
  %9376 = fmul fast float %9288, %9371
  %9377 = fmul fast float %9299, %9371
  %9378 = fcmp fast une float %9375, 0.000000e+00
  br i1 %9378, label %9379, label %9386, !dx.controlflow.hints !167

; <label>:9379                                    ; preds = %9370
  %9380 = fmul fast float %9375, 0x3FF7154760000000
  %9381 = call float @dx.op.unary.f32(i32 21, float %9380)  ; Exp(value)
  %9382 = fsub fast float 1.000000e+00, %9381
  %9383 = fmul fast float %9372, %9382
  %9384 = fsub fast float -0.000000e+00, %9383
  %9385 = fdiv fast float %9384, %9375
  br label %9386

; <label>:9386                                    ; preds = %9379, %9370
  %9387 = phi float [ %9385, %9379 ], [ %9372, %9370 ]
  %9388 = phi float [ %9381, %9379 ], [ 1.000000e+00, %9370 ]
  %9389 = fcmp fast une float %9376, 0.000000e+00
  br i1 %9389, label %9390, label %9397, !dx.controlflow.hints !167

; <label>:9390                                    ; preds = %9386
  %9391 = fmul fast float %9376, 0x3FF7154760000000
  %9392 = call float @dx.op.unary.f32(i32 21, float %9391)  ; Exp(value)
  %9393 = fsub fast float 1.000000e+00, %9392
  %9394 = fmul fast float %9373, %9393
  %9395 = fsub fast float -0.000000e+00, %9394
  %9396 = fdiv fast float %9395, %9376
  br label %9397

; <label>:9397                                    ; preds = %9390, %9386
  %9398 = phi float [ %9396, %9390 ], [ %9373, %9386 ]
  %9399 = phi float [ %9392, %9390 ], [ 1.000000e+00, %9386 ]
  %9400 = fcmp fast une float %9377, 0.000000e+00
  br i1 %9400, label %9401, label %9408, !dx.controlflow.hints !167

; <label>:9401                                    ; preds = %9397
  %9402 = fmul fast float %9377, 0x3FF7154760000000
  %9403 = call float @dx.op.unary.f32(i32 21, float %9402)  ; Exp(value)
  %9404 = fsub fast float 1.000000e+00, %9403
  %9405 = fmul fast float %9374, %9404
  %9406 = fsub fast float -0.000000e+00, %9405
  %9407 = fdiv fast float %9406, %9377
  br label %9408

; <label>:9408                                    ; preds = %9401, %9397, %9357, %9350
  %9409 = phi float [ %9407, %9401 ], [ %9369, %9357 ], [ %9354, %9350 ], [ %9374, %9397 ]
  %9410 = phi float [ %9398, %9401 ], [ %9368, %9357 ], [ %9353, %9350 ], [ %9398, %9397 ]
  %9411 = phi float [ %9387, %9401 ], [ %9367, %9357 ], [ %9352, %9350 ], [ %9387, %9397 ]
  %9412 = phi float [ %9403, %9401 ], [ %9359, %9357 ], [ 1.000000e+00, %9350 ], [ 1.000000e+00, %9397 ]
  %9413 = phi float [ %9399, %9401 ], [ %9359, %9357 ], [ 1.000000e+00, %9350 ], [ %9399, %9397 ]
  %9414 = phi float [ %9388, %9401 ], [ %9359, %9357 ], [ 1.000000e+00, %9350 ], [ %9388, %9397 ]
  %9415 = fmul fast float %9414, %9326
  %9416 = fmul fast float %9413, %9337
  %9417 = fmul fast float %9412, %9348
  %9418 = fadd fast float %9415, %9411
  %9419 = fadd fast float %9416, %9410
  %9420 = fadd fast float %9417, %9409
  %9421 = fmul fast float %9414, %9325
  %9422 = fmul fast float %9413, %9336
  %9423 = fmul fast float %9412, %9347
  br label %9424

; <label>:9424                                    ; preds = %9408, %9219
  %9425 = phi float [ %9423, %9408 ], [ %9225, %9219 ]
  %9426 = phi float [ %9422, %9408 ], [ %9224, %9219 ]
  %9427 = phi float [ %9421, %9408 ], [ %9223, %9219 ]
  %9428 = phi float [ %9420, %9408 ], [ %9222, %9219 ]
  %9429 = phi float [ %9419, %9408 ], [ %9221, %9219 ]
  %9430 = phi float [ %9418, %9408 ], [ %9220, %9219 ]
  %9431 = fmul fast float %9430, %8384
  %9432 = fmul fast float %9429, %8385
  %9433 = fmul fast float %9428, %8386
  %9434 = fmul fast float %9427, %8667
  %9435 = call float @dx.op.dot3.f32(i32 55, float %9427, float %9426, float %9425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9436 = call float @dx.op.dot3.f32(i32 55, float %9431, float %9432, float %9433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9437 = select i1 %292, float %9435, float %9427
  %9438 = select i1 %292, float %9435, float %9426
  %9439 = select i1 %292, float 1.000000e+00, float %9425
  %9440 = select i1 %292, float %9436, float %9431
  %9441 = select i1 %292, float 0.000000e+00, float %9432
  %9442 = select i1 %292, float 0.000000e+00, float %9433
  %9443 = fmul fast float %9437, %8661
  %9444 = fmul fast float %9438, %8662
  %9445 = fmul fast float %9439, %8663
  %9446 = fadd fast float %9443, %9440
  %9447 = fadd fast float %9444, %9441
  %9448 = fadd fast float %9442, %9445
  %9449 = fmul fast float %9437, %8664
  %9450 = fmul fast float %9438, %8665
  %9451 = fmul fast float %9439, %8666
  %9452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9453 = extractvalue %dx.types.CBufRet.i32 %9452, 0
  %9454 = icmp eq i32 %9453, 0
  br i1 %9454, label %9822, label %9455, !dx.controlflow.hints !169

; <label>:9455                                    ; preds = %9424
  %9456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9457 = extractvalue %dx.types.CBufRet.f32 %9456, 2
  %9458 = extractvalue %dx.types.CBufRet.f32 %9456, 3
  %9459 = fmul fast float %9457, %109
  %9460 = fmul fast float %9458, %110
  %9461 = fmul fast float %9459, 2.000000e+00
  %9462 = fmul fast float %9460, 2.000000e+00
  %9463 = fsub fast float 1.000000e+00, %9461
  %9464 = fsub fast float 1.000000e+00, %9462
  %9465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9466 = extractvalue %dx.types.CBufRet.f32 %9465, 0
  %9467 = extractvalue %dx.types.CBufRet.f32 %9465, 1
  %9468 = extractvalue %dx.types.CBufRet.f32 %9465, 2
  %9469 = fmul fast float %9463, %9466
  %9470 = fmul fast float %9463, %9467
  %9471 = fmul fast float %9463, %9468
  %9472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9472, 0
  %9474 = extractvalue %dx.types.CBufRet.f32 %9472, 1
  %9475 = extractvalue %dx.types.CBufRet.f32 %9472, 2
  %9476 = fmul fast float %9464, %9473
  %9477 = fmul fast float %9464, %9474
  %9478 = fmul fast float %9464, %9475
  %9479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9480 = extractvalue %dx.types.CBufRet.f32 %9479, 0
  %9481 = extractvalue %dx.types.CBufRet.f32 %9479, 1
  %9482 = extractvalue %dx.types.CBufRet.f32 %9479, 2
  %9483 = fadd fast float %9476, %9480
  %9484 = fadd fast float %9483, %9469
  %9485 = fadd fast float %9477, %9481
  %9486 = fadd fast float %9485, %9470
  %9487 = fadd fast float %9478, %9482
  %9488 = fadd fast float %9487, %9471
  %9489 = fmul fast float %9484, %8660
  %9490 = fmul fast float %9486, %8660
  %9491 = fmul fast float %9488, %8660
  %9492 = fmul fast float %9489, %9489
  %9493 = fmul fast float %9490, %9490
  %9494 = fadd fast float %9492, %9493
  %9495 = fmul fast float %9491, %9491
  %9496 = fadd fast float %9494, %9495
  %9497 = call float @dx.op.unary.f32(i32 24, float %9496)  ; Sqrt(value)
  %9498 = extractvalue %dx.types.CBufRet.f32 %8387, 0
  %9499 = fsub fast float %9497, %9498
  %9500 = extractvalue %dx.types.CBufRet.f32 %8387, 2
  %9501 = fmul fast float %9499, %9500
  %9502 = call float @dx.op.unary.f32(i32 7, float %9501)  ; Saturate(value)
  %9503 = fadd fast float %9502, -5.000000e-01
  %9504 = fmul fast float %9503, 2.000000e+00
  %9505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9506 = extractvalue %dx.types.CBufRet.f32 %9505, 2
  %9507 = call float @dx.op.binary.f32(i32 36, float %9506, float %9504)  ; FMin(a,b)
  %9508 = fsub fast float -0.000000e+00, %9506
  %9509 = fcmp fast ogt float %9507, %9508
  br i1 %9509, label %9510, label %9822, !dx.controlflow.hints !170

; <label>:9510                                    ; preds = %9455
  %9511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9511, 3
  %9513 = fcmp fast ogt float %9512, 0.000000e+00
  br i1 %9513, label %9514, label %9589, !dx.controlflow.hints !171

; <label>:9514                                    ; preds = %9510
  %9515 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9516 = extractvalue %dx.types.Dimensions %9515, 0
  %9517 = sitofp i32 %9516 to float
  %9518 = extractvalue %dx.types.Dimensions %9515, 1
  %9519 = sitofp i32 %9518 to float
  %9520 = fmul fast float %9459, %9517
  %9521 = fmul fast float %9460, %9519
  %9522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.f32 %9522, 1
  %9524 = fsub fast float -0.000000e+00, %9523
  %9525 = fptoui float %9524 to i32
  %9526 = fptoui float %9520 to i32
  %9527 = fptoui float %9521 to i32
  %9528 = and i32 %9525, 31
  %9529 = lshr i32 %9526, %9528
  %9530 = lshr i32 %9527, %9528
  %9531 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9525, i32 %9529, i32 %9530, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9532 = extractvalue %dx.types.ResRet.f32 %9531, 0
  %9533 = fcmp fast olt float %9532, -1.000000e+00
  %9534 = fcmp fast ogt float %9532, -1.000000e+00
  %9535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9536 = extractvalue %dx.types.CBufRet.f32 %9535, 1
  %9537 = select i1 %9534, float %9536, float 1.000000e+00
  %9538 = fadd fast float %9532, 1.000000e+00
  %9539 = fmul fast float %9537, %9538
  %9540 = call float @dx.op.unary.f32(i32 6, float %9539)  ; FAbs(value)
  %9541 = extractvalue %dx.types.CBufRet.f32 %9535, 3
  %9542 = fcmp fast oge float %9540, %9541
  %9543 = select i1 %9542, float 0x4197782600000000, float %9540
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 0
  %9546 = extractvalue %dx.types.CBufRet.f32 %9544, 1
  %9547 = extractvalue %dx.types.CBufRet.f32 %9544, 2
  %9548 = select i1 %9533, float %9545, float %9466
  %9549 = select i1 %9533, float %9546, float %9467
  %9550 = select i1 %9533, float %9547, float %9468
  %9551 = fmul fast float %9548, %9463
  %9552 = fmul fast float %9549, %9463
  %9553 = fmul fast float %9550, %9463
  %9554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9555 = extractvalue %dx.types.CBufRet.f32 %9554, 0
  %9556 = extractvalue %dx.types.CBufRet.f32 %9554, 1
  %9557 = extractvalue %dx.types.CBufRet.f32 %9554, 2
  %9558 = select i1 %9533, float %9555, float %9473
  %9559 = select i1 %9533, float %9556, float %9474
  %9560 = select i1 %9533, float %9557, float %9475
  %9561 = fmul fast float %9558, %9464
  %9562 = fmul fast float %9559, %9464
  %9563 = fmul fast float %9560, %9464
  %9564 = fadd fast float %9561, %9551
  %9565 = fadd fast float %9562, %9552
  %9566 = fadd fast float %9563, %9553
  %9567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9568 = extractvalue %dx.types.CBufRet.f32 %9567, 0
  %9569 = extractvalue %dx.types.CBufRet.f32 %9567, 1
  %9570 = extractvalue %dx.types.CBufRet.f32 %9567, 2
  %9571 = select i1 %9533, float %9568, float %9480
  %9572 = select i1 %9533, float %9569, float %9481
  %9573 = select i1 %9533, float %9570, float %9482
  %9574 = fadd fast float %9564, %9571
  %9575 = fadd fast float %9565, %9572
  %9576 = fadd fast float %9566, %9573
  %9577 = fmul fast float %9574, %9543
  %9578 = fmul fast float %9575, %9543
  %9579 = fmul fast float %9576, %9543
  %9580 = fmul fast float %9577, %9577
  %9581 = fmul fast float %9578, %9578
  %9582 = fadd fast float %9580, %9581
  %9583 = fmul fast float %9579, %9579
  %9584 = fadd fast float %9582, %9583
  %9585 = call float @dx.op.unary.f32(i32 24, float %9584)  ; Sqrt(value)
  %9586 = fsub fast float %9585, %9498
  %9587 = fmul fast float %9586, %9500
  %9588 = call float @dx.op.unary.f32(i32 7, float %9587)  ; Saturate(value)
  br label %9589

; <label>:9589                                    ; preds = %9514, %9510
  %9590 = phi float [ %9588, %9514 ], [ 1.000000e+00, %9510 ]
  %9591 = fmul fast float %9507, 5.000000e-01
  %9592 = fadd fast float %9591, 5.000000e-01
  %9593 = call float @dx.op.unary.f32(i32 22, float %9592)  ; Frc(value)
  %9594 = call float @dx.op.unary.f32(i32 27, float %9593)  ; Round_ni(value)
  %9595 = call float @dx.op.unary.f32(i32 22, float %9593)  ; Frc(value)
  %9596 = fmul fast float %9595, 2.000000e+00
  %9597 = fadd fast float %9596, -1.000000e+00
  %9598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %9459, float %9460, float %9594, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9599 = extractvalue %dx.types.ResRet.f32 %9598, 0
  %9600 = extractvalue %dx.types.ResRet.f32 %9598, 1
  %9601 = extractvalue %dx.types.ResRet.f32 %9598, 2
  %9602 = extractvalue %dx.types.ResRet.f32 %9598, 3
  %9603 = fadd fast float %9599, -5.000000e-01
  %9604 = fadd fast float %9601, -5.000000e-01
  %9605 = fmul fast float %9603, 0xBFD5555560000000
  %9606 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9604, float %9605)  ; FMad(a,b,c)
  %9607 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9600, float 0.000000e+00)  ; FMad(a,b,c)
  %9608 = fadd fast float %9607, %9602
  %9609 = fmul fast float %9603, -7.500000e-01
  %9610 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9604, float %9609)  ; FMad(a,b,c)
  %9611 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9600, float 0.000000e+00)  ; FMad(a,b,c)
  %9612 = fadd fast float %9611, %9602
  %9613 = call float @dx.op.binary.f32(i32 35, float %9606, float -1.000000e+00)  ; FMax(a,b)
  %9614 = call float @dx.op.binary.f32(i32 35, float %9608, float -1.000000e+00)  ; FMax(a,b)
  %9615 = call float @dx.op.binary.f32(i32 35, float %9610, float -1.000000e+00)  ; FMax(a,b)
  %9616 = call float @dx.op.binary.f32(i32 35, float %9612, float -1.000000e+00)  ; FMax(a,b)
  %9617 = call float @dx.op.binary.f32(i32 36, float %9613, float 1.000000e+00)  ; FMin(a,b)
  %9618 = call float @dx.op.binary.f32(i32 36, float %9614, float 1.000000e+00)  ; FMin(a,b)
  %9619 = call float @dx.op.binary.f32(i32 36, float %9615, float 1.000000e+00)  ; FMin(a,b)
  %9620 = call float @dx.op.binary.f32(i32 36, float %9616, float 1.000000e+00)  ; FMin(a,b)
  %9621 = fcmp fast olt float %9617, 0x3FEFFF8020000000
  br i1 %9621, label %9622, label %9737, !dx.controlflow.hints !172

; <label>:9622                                    ; preds = %9589
  %9623 = extractvalue %dx.types.CBufRet.f32 %9505, 3
  %9624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9625 = extractvalue %dx.types.CBufRet.f32 %9624, 0
  %9626 = extractvalue %dx.types.CBufRet.f32 %9624, 1
  %9627 = extractvalue %dx.types.CBufRet.f32 %9624, 2
  %9628 = extractvalue %dx.types.CBufRet.f32 %9624, 3
  %9629 = fsub fast float %9625, %9617
  %9630 = fsub fast float %9626, %9618
  %9631 = fsub fast float %9627, %9619
  %9632 = fsub fast float %9628, %9620
  %9633 = fmul fast float %9629, %9623
  %9634 = fmul fast float %9630, %9623
  %9635 = fmul fast float %9631, %9623
  %9636 = fmul fast float %9632, %9623
  %9637 = fadd fast float %9633, %9617
  %9638 = fadd fast float %9634, %9618
  %9639 = fsub fast float -0.000000e+00, %9638
  %9640 = fadd fast float %9635, %9619
  %9641 = fadd fast float %9636, %9620
  %9642 = fmul fast float %9637, %9637
  %9643 = fsub fast float %9638, %9642
  %9644 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9643)  ; FMax(a,b)
  %9645 = fdiv fast float 1.000000e+00, %9644
  %9646 = fmul fast float %9638, %9637
  %9647 = fsub fast float %9640, %9646
  %9648 = fsub fast float %9597, %9637
  %9649 = fmul fast float %9597, %9597
  %9650 = fsub fast float %9649, %9638
  %9651 = fmul fast float %9648, %9645
  %9652 = fmul fast float %9651, %9647
  %9653 = fsub fast float %9650, %9652
  %9654 = fmul fast float %9638, %9638
  %9655 = fsub fast float %9641, %9654
  %9656 = fmul fast float %9647, %9647
  %9657 = fmul fast float %9656, %9645
  %9658 = fsub fast float %9655, %9657
  %9659 = fdiv fast float %9653, %9658
  %9660 = fmul fast float %9647, %9659
  %9661 = fsub fast float %9648, %9660
  %9662 = fmul fast float %9661, %9645
  %9663 = fmul fast float %9662, %9637
  %9664 = fsub fast float 1.000000e+00, %9663
  %9665 = fmul fast float %9638, %9659
  %9666 = fsub fast float %9664, %9665
  %9667 = fmul fast float %9662, %9662
  %9668 = fmul fast float %9659, 4.000000e+00
  %9669 = fmul fast float %9668, %9666
  %9670 = fsub fast float %9667, %9669
  %9671 = call float @dx.op.unary.f32(i32 24, float %9670)  ; Sqrt(value)
  %9672 = fcmp fast oge float %9662, 0.000000e+00
  %9673 = fsub fast float -0.000000e+00, %9671
  %9674 = select i1 %9672, float %9673, float %9671
  %9675 = fsub fast float %9674, %9662
  %9676 = fdiv fast float %9675, %9659
  %9677 = fdiv fast float %9666, %9675
  %9678 = fmul fast float %9676, 5.000000e-01
  %9679 = fmul fast float %9677, 2.000000e+00
  %9680 = select i1 %9672, float %9678, float %9679
  %9681 = select i1 %9672, float %9679, float %9678
  %9682 = call float @dx.op.binary.f32(i32 35, float %9680, float %9681)  ; FMax(a,b)
  %9683 = call float @dx.op.binary.f32(i32 36, float %9680, float %9681)  ; FMin(a,b)
  %9684 = fcmp fast ogt float %9597, %9683
  br i1 %9684, label %9685, label %9695

; <label>:9685                                    ; preds = %9622
  %9686 = fsub fast float %9597, %9683
  %9687 = fsub fast float %9682, %9683
  %9688 = fmul fast float %9686, %9687
  %9689 = fmul fast float %9682, %9597
  %9690 = fadd fast float %9682, %9597
  %9691 = fmul fast float %9690, %9637
  %9692 = fadd fast float %9689, %9638
  %9693 = fsub fast float %9692, %9691
  %9694 = fdiv fast float %9693, %9688
  br label %9695

; <label>:9695                                    ; preds = %9685, %9622
  %9696 = phi float [ %9694, %9685 ], [ 0.000000e+00, %9622 ]
  %9697 = fcmp fast ogt float %9597, %9682
  %9698 = fsub fast float %9597, %9682
  br i1 %9697, label %9699, label %9709

; <label>:9699                                    ; preds = %9695
  %9700 = fsub fast float %9682, %9683
  %9701 = fmul fast float %9700, %9698
  %9702 = fmul fast float %9683, %9597
  %9703 = fadd fast float %9683, %9597
  %9704 = fmul fast float %9703, %9637
  %9705 = fsub fast float %9639, %9702
  %9706 = fadd fast float %9705, %9704
  %9707 = fdiv fast float %9706, %9701
  %9708 = fadd fast float %9707, %9696
  br label %9709

; <label>:9709                                    ; preds = %9699, %9695
  %9710 = phi float [ %9708, %9699 ], [ %9696, %9695 ]
  %9711 = fsub fast float %9597, %9683
  %9712 = fmul fast float %9711, %9698
  %9713 = fmul fast float %9683, %9682
  %9714 = fadd fast float %9683, %9682
  %9715 = fmul fast float %9714, %9637
  %9716 = fadd fast float %9713, %9638
  %9717 = fsub fast float %9716, %9715
  %9718 = fdiv fast float %9717, %9712
  %9719 = call float @dx.op.unary.f32(i32 7, float %9710)  ; Saturate(value)
  %9720 = fcmp fast oeq float %8388, 0.000000e+00
  %9721 = extractvalue %dx.types.CBufRet.f32 %9505, 0
  %9722 = fcmp fast oeq float %9721, 0.000000e+00
  %9723 = or i1 %9720, %9722
  %9724 = fmul fast float %9721, 2.000000e+00
  %9725 = fadd fast float %9506, %9507
  %9726 = fdiv fast float %9725, %9724
  %9727 = call float @dx.op.unary.f32(i32 7, float %9726)  ; Saturate(value)
  %9728 = fmul fast float %9727, 2.000000e+00
  %9729 = fsub fast float 3.000000e+00, %9728
  %9730 = fmul fast float %9727, %9727
  %9731 = fmul fast float %9730, %9729
  %9732 = select i1 %9723, float 1.000000e+00, float %9731
  %9733 = fmul fast float %9718, %8388
  %9734 = fadd fast float %9719, %9733
  %9735 = call float @dx.op.unary.f32(i32 7, float %9734)  ; Saturate(value)
  %9736 = fmul fast float %9732, %9735
  br label %9737

; <label>:9737                                    ; preds = %9709, %9589
  %9738 = phi float [ %9736, %9709 ], [ 0.000000e+00, %9589 ]
  %9739 = fsub fast float 1.000000e+00, %9738
  %9740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %9459, float %9460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9741 = extractvalue %dx.types.ResRet.f32 %9740, 0
  %9742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9743 = extractvalue %dx.types.CBufRet.i32 %9742, 2
  %9744 = icmp eq i32 %9743, 0
  br i1 %9744, label %9750, label %9745

; <label>:9745                                    ; preds = %9737
  %9746 = call float @dx.op.unary.f32(i32 7, float %9738)  ; Saturate(value)
  %9747 = fadd fast float %9741, -1.000000e+00
  %9748 = fmul fast float %9746, %9747
  %9749 = fadd fast float %9748, 1.000000e+00
  br label %9750

; <label>:9750                                    ; preds = %9745, %9737
  %9751 = phi float [ %9749, %9745 ], [ %9739, %9737 ]
  br i1 %9513, label %9752, label %9770

; <label>:9752                                    ; preds = %9750
  %9753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9754 = extractvalue %dx.types.CBufRet.f32 %9753, 1
  %9755 = fsub fast float %9590, %9754
  %9756 = call float @dx.op.unary.f32(i32 7, float %9755)  ; Saturate(value)
  %9757 = fsub fast float %9590, %9512
  %9758 = call float @dx.op.unary.f32(i32 7, float %9757)  ; Saturate(value)
  %9759 = fsub fast float %9756, %9758
  %9760 = fsub fast float %9592, %9758
  %9761 = fdiv fast float %9760, %9759
  %9762 = call float @dx.op.unary.f32(i32 7, float %9761)  ; Saturate(value)
  %9763 = fmul fast float %9762, 2.000000e+00
  %9764 = fsub fast float 3.000000e+00, %9763
  %9765 = fsub fast float %9741, %9751
  %9766 = fmul fast float %9762, %9762
  %9767 = fmul fast float %9766, %9765
  %9768 = fmul fast float %9767, %9764
  %9769 = fadd fast float %9768, %9751
  br label %9770

; <label>:9770                                    ; preds = %9752, %9750
  %9771 = phi float [ %9769, %9752 ], [ %9751, %9750 ]
  %9772 = call float @dx.op.binary.f32(i32 35, float %9741, float %9771)  ; FMax(a,b)
  %9773 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9774 = extractvalue %dx.types.CBufRet.i32 %9773, 2
  %9775 = and i32 %9774, 1
  %9776 = icmp eq i32 %9775, 0
  %9777 = fcmp fast une float %9772, 1.000000e+00
  %9778 = and i1 %9777, %9776
  br i1 %9778, label %9779, label %9798

; <label>:9779                                    ; preds = %9770
  %9780 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %9459, float %9460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9781 = extractvalue %dx.types.ResRet.f32 %9780, 0
  %9782 = extractvalue %dx.types.ResRet.f32 %9780, 1
  %9783 = extractvalue %dx.types.ResRet.f32 %9780, 2
  %9784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9785 = extractvalue %dx.types.CBufRet.f32 %9784, 1
  %9786 = fmul fast float %9785, %9781
  %9787 = fmul fast float %9785, %9782
  %9788 = fmul fast float %9785, %9783
  %9789 = fcmp fast ogt float %9741, 0x3FEFFF2E40000000
  %9790 = fsub fast float 1.000000e+00, %9772
  %9791 = fsub fast float 1.000000e+00, %9741
  %9792 = fdiv fast float %9790, %9791
  %9793 = call float @dx.op.unary.f32(i32 7, float %9792)  ; Saturate(value)
  %9794 = select i1 %9789, float 0.000000e+00, float %9793
  %9795 = fmul fast float %9786, %9794
  %9796 = fmul fast float %9787, %9794
  %9797 = fmul fast float %9788, %9794
  br label %9798

; <label>:9798                                    ; preds = %9779, %9770
  %9799 = phi float [ 0.000000e+00, %9770 ], [ %9795, %9779 ]
  %9800 = phi float [ 0.000000e+00, %9770 ], [ %9796, %9779 ]
  %9801 = phi float [ 0.000000e+00, %9770 ], [ %9797, %9779 ]
  %9802 = fmul fast float %9799, %8384
  %9803 = fmul fast float %9800, %8385
  %9804 = fmul fast float %9801, %8386
  %9805 = fmul fast float %9772, %9434
  %9806 = call float @dx.op.dot3.f32(i32 55, float %9772, float %9772, float %9772, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9807 = call float @dx.op.dot3.f32(i32 55, float %9802, float %9803, float %9804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9808 = select i1 %292, float %9806, float %9772
  %9809 = select i1 %292, float 1.000000e+00, float %9772
  %9810 = select i1 %292, float %9807, float %9802
  %9811 = select i1 %292, float 0.000000e+00, float %9803
  %9812 = select i1 %292, float 0.000000e+00, float %9804
  %9813 = fmul fast float %9808, %9446
  %9814 = fmul fast float %9808, %9447
  %9815 = fmul fast float %9809, %9448
  %9816 = fadd fast float %9813, %9810
  %9817 = fadd fast float %9814, %9811
  %9818 = fadd fast float %9812, %9815
  %9819 = fmul fast float %9808, %9449
  %9820 = fmul fast float %9808, %9450
  %9821 = fmul fast float %9809, %9451
  br label %9822

; <label>:9822                                    ; preds = %9798, %9455, %9424, %8656
  %9823 = phi float [ %8661, %8656 ], [ %9446, %9424 ], [ %9816, %9798 ], [ %9446, %9455 ]
  %9824 = phi float [ %8662, %8656 ], [ %9447, %9424 ], [ %9817, %9798 ], [ %9447, %9455 ]
  %9825 = phi float [ %8663, %8656 ], [ %9448, %9424 ], [ %9818, %9798 ], [ %9448, %9455 ]
  %9826 = phi float [ %8664, %8656 ], [ %9449, %9424 ], [ %9819, %9798 ], [ %9449, %9455 ]
  %9827 = phi float [ %8665, %8656 ], [ %9450, %9424 ], [ %9820, %9798 ], [ %9450, %9455 ]
  %9828 = phi float [ %8666, %8656 ], [ %9451, %9424 ], [ %9821, %9798 ], [ %9451, %9455 ]
  %9829 = phi float [ %8667, %8656 ], [ %9434, %9424 ], [ %9805, %9798 ], [ %9434, %9455 ]
  %9830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9831 = extractvalue %dx.types.CBufRet.f32 %9830, 2
  %9832 = extractvalue %dx.types.CBufRet.f32 %9830, 3
  %9833 = fmul fast float %9831, %109
  %9834 = fmul fast float %9832, %110
  %9835 = call float @dx.op.unary.f32(i32 7, float %9833)  ; Saturate(value)
  %9836 = call float @dx.op.unary.f32(i32 7, float %9834)  ; Saturate(value)
  %9837 = select i1 %8398, i32 2, i32 0
  %9838 = or i32 %9837, 1
  %9839 = uitofp i32 %9838 to float
  %9840 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9835, float %9836, float %9839, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9841 = extractvalue %dx.types.ResRet.f32 %9840, 0
  %9842 = extractvalue %dx.types.ResRet.f32 %9840, 1
  %9843 = extractvalue %dx.types.ResRet.f32 %9840, 2
  %9844 = extractvalue %dx.types.ResRet.f32 %9840, 3
  %9845 = add nuw nsw i32 %9837, 2
  %9846 = uitofp i32 %9845 to float
  %9847 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9835, float %9836, float %9846, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9848 = extractvalue %dx.types.ResRet.f32 %9847, 0
  %9849 = extractvalue %dx.types.ResRet.f32 %9847, 1
  %9850 = extractvalue %dx.types.ResRet.f32 %9847, 2
  %9851 = extractvalue %dx.types.ResRet.f32 %9847, 3
  %9852 = call float @dx.op.binary.f32(i32 35, float %9842, float %9843)  ; FMax(a,b)
  %9853 = call float @dx.op.binary.f32(i32 35, float %9841, float %9852)  ; FMax(a,b)
  %9854 = call float @dx.op.binary.f32(i32 35, float %9853, float %9844)  ; FMax(a,b)
  %9855 = call float @dx.op.binary.f32(i32 36, float %9849, float %9850)  ; FMin(a,b)
  %9856 = call float @dx.op.binary.f32(i32 36, float %9848, float %9855)  ; FMin(a,b)
  %9857 = call float @dx.op.binary.f32(i32 36, float %9856, float %9851)  ; FMin(a,b)
  %9858 = fmul fast float %9854, 2.550000e+02
  %9859 = fadd fast float %9858, 0x3F70101020000000
  %9860 = fptoui float %9859 to i32
  %9861 = fmul fast float %9857, 2.550000e+02
  %9862 = fadd fast float %9861, 0x3F70101020000000
  %9863 = fptoui float %9862 to i32
  %9864 = icmp ult i32 %9860, %9863
  br i1 %9864, label %9865, label %10034

; <label>:9865                                    ; preds = %9822
  %9866 = fcmp fast ogt float %95, 9.843750e-01
  %9867 = fadd fast float %8660, -4.000000e+00
  %9868 = select i1 %9866, float -4.000000e+00, float %9867
  %9869 = call float @dx.op.binary.f32(i32 35, float %9868, float 0.000000e+00)  ; FMax(a,b)
  %9870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9871 = extractvalue %dx.types.CBufRet.f32 %9870, 0
  %9872 = fadd fast float %9871, %9869
  %9873 = extractvalue %dx.types.CBufRet.f32 %9870, 2
  %9874 = fmul fast float %9872, %9873
  %9875 = call float @dx.op.unary.f32(i32 23, float %9874)  ; Log(value)
  %9876 = extractvalue %dx.types.CBufRet.f32 %9870, 3
  %9877 = fmul fast float %9876, %9875
  %9878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9879 = extractvalue %dx.types.CBufRet.f32 %9878, 2
  %9880 = fmul fast float %9877, %9879
  %9881 = call float @dx.op.unary.f32(i32 7, float %9880)  ; Saturate(value)
  %9882 = uitofp i32 %9860 to float
  %9883 = uitofp i32 %9863 to float
  %9884 = fadd fast float %9882, 5.000000e-01
  %9885 = fadd fast float %9883, 5.000000e-01
  %9886 = fmul fast float %9879, %9884
  %9887 = fmul fast float %9879, %9885
  %9888 = fadd fast float %9886, 0x3F0FFB4800000000
  %9889 = fadd fast float %9887, 0xBF0FFB4800000000
  %9890 = call float @dx.op.binary.f32(i32 35, float %9881, float %9888)  ; FMax(a,b)
  %9891 = call float @dx.op.binary.f32(i32 36, float %9890, float %9889)  ; FMin(a,b)
  %9892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9893 = extractvalue %dx.types.CBufRet.f32 %9892, 1
  %9894 = extractvalue %dx.types.CBufRet.f32 %9892, 2
  %9895 = extractvalue %dx.types.CBufRet.f32 %9892, 0
  %9896 = select i1 %8398, float %9895, float 0.000000e+00
  %9897 = fmul fast float %9893, %9891
  %9898 = fadd fast float %9896, %9897
  %9899 = fadd fast float %9896, %9894
  %9900 = fsub fast float %9893, %9894
  %9901 = fadd fast float %9900, %9896
  %9902 = call float @dx.op.binary.f32(i32 35, float %9898, float %9899)  ; FMax(a,b)
  %9903 = call float @dx.op.binary.f32(i32 36, float %9902, float %9901)  ; FMin(a,b)
  %9904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9835, float %9836, float %9903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9905 = extractvalue %dx.types.ResRet.f32 %9904, 0
  %9906 = extractvalue %dx.types.ResRet.f32 %9904, 1
  %9907 = extractvalue %dx.types.ResRet.f32 %9904, 2
  %9908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9909 = extractvalue %dx.types.CBufRet.i32 %9908, 0
  %9910 = extractvalue %dx.types.CBufRet.i32 %9908, 1
  %9911 = uitofp i32 %9909 to float
  %9912 = uitofp i32 %9910 to float
  %9913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9914 = extractvalue %dx.types.CBufRet.f32 %9913, 0
  %9915 = extractvalue %dx.types.CBufRet.f32 %9913, 1
  %9916 = fmul fast float %9911, %9835
  %9917 = fmul fast float %9912, %9836
  %9918 = fadd fast float %9916, -5.000000e-01
  %9919 = fadd fast float %9917, -5.000000e-01
  %9920 = call float @dx.op.unary.f32(i32 22, float %9918)  ; Frc(value)
  %9921 = call float @dx.op.unary.f32(i32 22, float %9919)  ; Frc(value)
  %9922 = fmul fast float %9920, %9920
  %9923 = fmul fast float %9922, %9920
  %9924 = fsub fast float 3.000000e+00, %9920
  %9925 = fmul fast float %9922, %9924
  %9926 = fmul fast float %9920, 3.000000e+00
  %9927 = fmul fast float %9923, 3.000000e+00
  %9928 = fmul fast float %9922, 6.000000e+00
  %9929 = fsub fast float %9927, %9928
  %9930 = fadd fast float %9929, 4.000000e+00
  %9931 = fmul fast float %9930, 0x3FC5555560000000
  %9932 = fmul fast float %9923, -3.000000e+00
  %9933 = fadd fast float %9922, %9920
  %9934 = fmul fast float %9933, 3.000000e+00
  %9935 = fadd fast float %9932, 1.000000e+00
  %9936 = fadd fast float %9935, %9934
  %9937 = fmul fast float %9923, 0x3FC5555560000000
  %9938 = fmul fast float %9921, %9921
  %9939 = fmul fast float %9938, %9921
  %9940 = fsub fast float 3.000000e+00, %9921
  %9941 = fmul fast float %9938, %9940
  %9942 = fmul fast float %9921, 3.000000e+00
  %9943 = fmul fast float %9939, 3.000000e+00
  %9944 = fmul fast float %9938, 6.000000e+00
  %9945 = fsub fast float %9943, %9944
  %9946 = fadd fast float %9945, 4.000000e+00
  %9947 = fmul fast float %9946, 0x3FC5555560000000
  %9948 = fmul fast float %9939, -3.000000e+00
  %9949 = fadd fast float %9938, %9921
  %9950 = fmul fast float %9949, 3.000000e+00
  %9951 = fadd fast float %9948, 1.000000e+00
  %9952 = fadd fast float %9951, %9950
  %9953 = fmul fast float %9939, 0x3FC5555560000000
  %9954 = fadd fast float %9920, 1.000000e+00
  %9955 = fsub fast float 1.000000e+00, %9926
  %9956 = fadd fast float %9955, %9925
  %9957 = fadd fast float %9956, %9930
  %9958 = fmul fast float %9957, 0x3FC5555560000000
  %9959 = fdiv fast float %9931, %9958
  %9960 = fsub fast float %9954, %9959
  %9961 = fsub fast float 1.000000e+00, %9920
  %9962 = fadd fast float %9936, %9923
  %9963 = fmul fast float %9962, 0x3FC5555560000000
  %9964 = fdiv fast float %9937, %9963
  %9965 = fadd fast float %9961, %9964
  %9966 = fadd fast float %9921, 1.000000e+00
  %9967 = fsub fast float 1.000000e+00, %9942
  %9968 = fadd fast float %9967, %9941
  %9969 = fadd fast float %9968, %9946
  %9970 = fmul fast float %9969, 0x3FC5555560000000
  %9971 = fdiv fast float %9947, %9970
  %9972 = fsub fast float %9966, %9971
  %9973 = fsub fast float 1.000000e+00, %9921
  %9974 = fadd fast float %9952, %9939
  %9975 = fmul fast float %9974, 0x3FC5555560000000
  %9976 = fdiv fast float %9953, %9975
  %9977 = fadd fast float %9976, %9973
  %9978 = fmul fast float %9960, %9914
  %9979 = fsub fast float %9835, %9978
  %9980 = fmul fast float %9965, %9914
  %9981 = fadd fast float %9980, %9835
  %9982 = fmul fast float %9977, %9915
  %9983 = fadd fast float %9982, %9836
  %9984 = fmul fast float %9972, %9915
  %9985 = fsub fast float %9836, %9984
  %9986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9979, float %9985, float %9903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9987 = extractvalue %dx.types.ResRet.f32 %9986, 0
  %9988 = extractvalue %dx.types.ResRet.f32 %9986, 1
  %9989 = extractvalue %dx.types.ResRet.f32 %9986, 2
  %9990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9981, float %9985, float %9903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9991 = extractvalue %dx.types.ResRet.f32 %9990, 0
  %9992 = extractvalue %dx.types.ResRet.f32 %9990, 1
  %9993 = extractvalue %dx.types.ResRet.f32 %9990, 2
  %9994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9979, float %9983, float %9903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9995 = extractvalue %dx.types.ResRet.f32 %9994, 0
  %9996 = extractvalue %dx.types.ResRet.f32 %9994, 1
  %9997 = extractvalue %dx.types.ResRet.f32 %9994, 2
  %9998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9981, float %9983, float %9903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9999 = extractvalue %dx.types.ResRet.f32 %9998, 0
  %10000 = extractvalue %dx.types.ResRet.f32 %9998, 1
  %10001 = extractvalue %dx.types.ResRet.f32 %9998, 2
  %10002 = fsub fast float %9995, %9987
  %10003 = fsub fast float %9996, %9988
  %10004 = fsub fast float %9997, %9989
  %10005 = fmul fast float %10002, %9975
  %10006 = fmul fast float %10003, %9975
  %10007 = fmul fast float %10004, %9975
  %10008 = fadd fast float %10005, %9987
  %10009 = fadd fast float %10006, %9988
  %10010 = fadd fast float %10007, %9989
  %10011 = fsub fast float %9999, %9991
  %10012 = fsub fast float %10000, %9992
  %10013 = fsub fast float %10001, %9993
  %10014 = fmul fast float %10011, %9975
  %10015 = fmul fast float %10012, %9975
  %10016 = fmul fast float %10013, %9975
  %10017 = fsub fast float %9991, %10008
  %10018 = fadd fast float %10017, %10014
  %10019 = fsub fast float %9992, %10009
  %10020 = fadd fast float %10019, %10015
  %10021 = fsub fast float %9993, %10010
  %10022 = fadd fast float %10021, %10016
  %10023 = fmul fast float %10018, %9963
  %10024 = fmul fast float %10020, %9963
  %10025 = fmul fast float %10022, %9963
  %10026 = fadd fast float %10023, %10008
  %10027 = fadd fast float %10024, %10009
  %10028 = fadd fast float %10025, %10010
  %10029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10030 = extractvalue %dx.types.CBufRet.f32 %10029, 1
  %10031 = fmul fast float %10026, %10030
  %10032 = fmul fast float %10027, %10030
  %10033 = fmul fast float %10028, %10030
  br label %10034

; <label>:10034                                   ; preds = %9865, %9822
  %10035 = phi float [ %9905, %9865 ], [ 1.000000e+00, %9822 ]
  %10036 = phi float [ %9906, %9865 ], [ 1.000000e+00, %9822 ]
  %10037 = phi float [ %9907, %9865 ], [ 1.000000e+00, %9822 ]
  %10038 = phi float [ %10031, %9865 ], [ 0.000000e+00, %9822 ]
  %10039 = phi float [ %10032, %9865 ], [ 0.000000e+00, %9822 ]
  %10040 = phi float [ %10033, %9865 ], [ 0.000000e+00, %9822 ]
  %10041 = fmul fast float %10038, %8384
  %10042 = fmul fast float %10039, %8385
  %10043 = fmul fast float %10040, %8386
  %10044 = fmul fast float %10035, %9829
  %10045 = call float @dx.op.dot3.f32(i32 55, float %10035, float %10036, float %10037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10046 = call float @dx.op.dot3.f32(i32 55, float %10041, float %10042, float %10043, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10047 = select i1 %292, float %10045, float %10035
  %10048 = select i1 %292, float %10045, float %10036
  %10049 = select i1 %292, float 1.000000e+00, float %10037
  %10050 = select i1 %292, float %10046, float %10041
  %10051 = select i1 %292, float 0.000000e+00, float %10042
  %10052 = select i1 %292, float 0.000000e+00, float %10043
  %10053 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10054 = extractvalue %dx.types.CBufRet.i32 %10053, 3
  %10055 = and i32 %10054, 3
  %10056 = icmp ne i32 %10055, 0
  %10057 = and i32 %10054, 4
  %10058 = icmp ne i32 %10057, 0
  %10059 = and i1 %10056, %10058
  %10060 = and i1 %292, %10059
  br i1 %10060, label %10061, label %10067

; <label>:10061                                   ; preds = %10034
  %10062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10063 = extractvalue %dx.types.CBufRet.f32 %10062, 1
  %10064 = fadd fast float %10044, -1.000000e+00
  %10065 = fmul fast float %10063, %10064
  %10066 = fadd fast float %10065, 1.000000e+00
  br label %10067

; <label>:10067                                   ; preds = %10061, %10034
  %10068 = phi float [ %10066, %10061 ], [ %10044, %10034 ]
  %10069 = fadd fast float %9826, %9823
  %10070 = fmul fast float %10047, %10069
  %10071 = fadd fast float %10070, %10050
  %10072 = fadd fast float %9827, %9824
  %10073 = fmul fast float %10048, %10072
  %10074 = fadd fast float %10073, %10051
  %10075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10076 = extractvalue %dx.types.CBufRet.f32 %10075, 0
  br i1 %292, label %10077, label %10092

; <label>:10077                                   ; preds = %10067
  %10078 = fadd fast float %10071, %10074
  %10079 = fmul fast float %10076, %10078
  %10080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10081 = extractvalue %dx.types.CBufRet.f32 %10080, 3
  %10082 = extractvalue %dx.types.CBufRet.f32 %8368, 1
  %10083 = fsub fast float %8373, %8367
  %10084 = fadd fast float %10083, %8374
  %10085 = fsub fast float %10084, %10082
  %10086 = extractvalue %dx.types.CBufRet.f32 %8368, 2
  %10087 = fmul fast float %10085, %10086
  %10088 = call float @dx.op.unary.f32(i32 7, float %10087)  ; Saturate(value)
  %10089 = fsub fast float %10088, %10081
  %10090 = fmul fast float %10089, %10068
  %10091 = fadd fast float %10090, %10081
  br label %10118

; <label>:10092                                   ; preds = %10067
  %10093 = fadd fast float %9828, %9825
  %10094 = fmul fast float %10049, %10093
  %10095 = fadd fast float %10094, %10052
  %10096 = fmul fast float %10076, %10071
  %10097 = fmul fast float %10076, %10074
  %10098 = fmul fast float %10076, %10095
  %10099 = call float @dx.op.binary.f32(i32 35, float %10097, float %10098)  ; FMax(a,b)
  %10100 = call float @dx.op.binary.f32(i32 35, float %10096, float %10099)  ; FMax(a,b)
  %10101 = call float @dx.op.binary.f32(i32 35, float %8385, float %8386)  ; FMax(a,b)
  %10102 = call float @dx.op.binary.f32(i32 35, float %8384, float %10101)  ; FMax(a,b)
  %10103 = call float @dx.op.binary.f32(i32 35, float %10100, float %10102)  ; FMax(a,b)
  %10104 = fcmp fast ugt float %10103, 0x3F10000000000000
  br i1 %10104, label %10106, label %10105

; <label>:10105                                   ; preds = %10092
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10106

; <label>:10106                                   ; preds = %10105, %10092
  %10107 = add i32 %49, 356
  %10108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %10107, i32 undef)  ; BufferLoad(srv,index,wot)
  %10109 = extractvalue %dx.types.ResRet.i32 %10108, 0
  %10110 = and i32 %10109, 32
  %10111 = icmp eq i32 %10110, 0
  br i1 %10111, label %10118, label %10112

; <label>:10112                                   ; preds = %10106
  %10113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10114 = extractvalue %dx.types.CBufRet.f32 %10113, 0
  %10115 = fmul fast float %10114, 0x3FE99999A0000000
  %10116 = fadd fast float %10114, %10096
  %10117 = fadd fast float %10115, %10098
  br label %10118

; <label>:10118                                   ; preds = %10112, %10106, %10077
  %10119 = phi float [ 1.000000e+00, %10077 ], [ %8385, %10112 ], [ %8385, %10106 ]
  %10120 = phi float [ 1.000000e+00, %10077 ], [ %8386, %10112 ], [ %8386, %10106 ]
  %10121 = phi float [ %10079, %10077 ], [ %10116, %10112 ], [ %10096, %10106 ]
  %10122 = phi float [ %10091, %10077 ], [ %10097, %10112 ], [ %10097, %10106 ]
  %10123 = phi float [ 1.000000e+00, %10077 ], [ %10117, %10112 ], [ %10098, %10106 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10124 = call float @dx.op.binary.f32(i32 36, float %10121, float 3.225500e+04)  ; FMin(a,b)
  %10125 = call float @dx.op.binary.f32(i32 36, float %10122, float 3.225500e+04)  ; FMin(a,b)
  %10126 = call float @dx.op.binary.f32(i32 36, float %10123, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10124)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10125)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10126)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10127 = call float @dx.op.binary.f32(i32 36, float %8384, float 3.225500e+04)  ; FMin(a,b)
  %10128 = call float @dx.op.binary.f32(i32 36, float %10119, float 3.225500e+04)  ; FMin(a,b)
  %10129 = call float @dx.op.binary.f32(i32 36, float %10120, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10127)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10128)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10129)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

