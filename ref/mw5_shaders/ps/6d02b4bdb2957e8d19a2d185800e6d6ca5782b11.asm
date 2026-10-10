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
; shader hash: 8ca5993d1a4163d934f00dcf8858d7fe
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
  %486 = add i32 %49, 536
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
  br i1 %542, label %1130, label %543

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
  %1066 = and i32 %1065, 10240
  %1067 = icmp eq i32 %1066, 0
  br i1 %1067, label %1112, label %1068

; <label>:1068                                    ; preds = %1060
  %1069 = add i32 %49, 520
  %1070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1069, i32 undef)  ; BufferLoad(srv,index,wot)
  %1071 = extractvalue %dx.types.ResRet.i32 %1070, 0
  %1072 = add i32 %1071, 0
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1073, %dx.types.Handle %106, float %642, float %643, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 3
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = and i32 %1078, 1048576
  %1080 = icmp ne i32 %1079, 0
  %1081 = and i32 %1078, 8192
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1098, label %1083

; <label>:1083                                    ; preds = %1068
  %1084 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1085 = select i1 %1080, float %1084, float %1075
  %1086 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1087 = select i1 %1080, float %1086, float %1075
  %1088 = add i32 %49, 96
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = lshr i32 %1090, 16
  %1092 = and i32 %1091, 255
  %1093 = uitofp i32 %1092 to float
  %1094 = fmul fast float %1093, 0x3F80101020000000
  %1095 = fmul fast float %1094, %1087
  %1096 = fmul fast float %1094, %1075
  %1097 = fmul fast float %1094, %1085
  br label %1098

; <label>:1098                                    ; preds = %1083, %1068
  %1099 = phi float [ %1095, %1083 ], [ 0.000000e+00, %1068 ]
  %1100 = phi float [ %1096, %1083 ], [ 0.000000e+00, %1068 ]
  %1101 = phi float [ %1097, %1083 ], [ 0.000000e+00, %1068 ]
  %1102 = and i32 %1078, 2048
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1112, label %1104

; <label>:1104                                    ; preds = %1098
  %1105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1106 = extractvalue %dx.types.ResRet.i32 %1105, 0
  %1107 = shl i32 %1106, 4
  %1108 = and i32 %1107, 32752
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = fmul fast float %1109, %1076
  %1111 = call float @dx.op.binary.f32(i32 35, float %1110, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1112

; <label>:1112                                    ; preds = %1104, %1098, %1060
  %1113 = phi float [ %1099, %1104 ], [ %1099, %1098 ], [ 0.000000e+00, %1060 ]
  %1114 = phi float [ %1100, %1104 ], [ %1100, %1098 ], [ 0.000000e+00, %1060 ]
  %1115 = phi float [ %1101, %1104 ], [ %1101, %1098 ], [ 0.000000e+00, %1060 ]
  %1116 = phi float [ %1111, %1104 ], [ 0x3F70101020000000, %1098 ], [ 0x3F70101020000000, %1060 ]
  %1117 = add i32 %49, 96
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = and i32 %1119, 255
  %1121 = uitofp i32 %1120 to float
  %1122 = lshr i32 %1119, 8
  %1123 = and i32 %1122, 255
  %1124 = uitofp i32 %1123 to float
  %1125 = call float @dx.op.dot3.f32(i32 55, float %933, float %934, float %935, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1126 = fmul fast float %1124, %1125
  %1127 = fadd fast float %1126, %1121
  %1128 = fmul fast float %1127, 0x3F70101020000000
  %1129 = call float @dx.op.unary.f32(i32 7, float %1128)  ; Saturate(value)
  br label %1130

; <label>:1130                                    ; preds = %1112, %528
  %1131 = phi float [ 0.000000e+00, %528 ], [ %1014, %1112 ]
  %1132 = phi float [ 0.000000e+00, %528 ], [ %1015, %1112 ]
  %1133 = phi float [ 0.000000e+00, %528 ], [ %933, %1112 ]
  %1134 = phi float [ 0.000000e+00, %528 ], [ %934, %1112 ]
  %1135 = phi float [ 0.000000e+00, %528 ], [ %935, %1112 ]
  %1136 = phi float [ 0.000000e+00, %528 ], [ %1061, %1112 ]
  %1137 = phi float [ 0.000000e+00, %528 ], [ %1062, %1112 ]
  %1138 = phi float [ 0.000000e+00, %528 ], [ %1063, %1112 ]
  %1139 = phi float [ 0.000000e+00, %528 ], [ %1113, %1112 ]
  %1140 = phi float [ 0.000000e+00, %528 ], [ %1114, %1112 ]
  %1141 = phi float [ 0.000000e+00, %528 ], [ %1115, %1112 ]
  %1142 = phi float [ 0.000000e+00, %528 ], [ %919, %1112 ]
  %1143 = phi float [ 0.000000e+00, %528 ], [ %715, %1112 ]
  %1144 = phi float [ 0.000000e+00, %528 ], [ %1013, %1112 ]
  %1145 = phi float [ 0.000000e+00, %528 ], [ %1016, %1112 ]
  %1146 = phi float [ 0.000000e+00, %528 ], [ %1116, %1112 ]
  %1147 = phi float [ 0.000000e+00, %528 ], [ %1129, %1112 ]
  br i1 %476, label %1961, label %1148

; <label>:1148                                    ; preds = %1130
  %1149 = icmp ult i32 %534, 2
  %1150 = add i32 %49, 40
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %49, 44
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = or i32 %1155, %1152
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1961, label %1158

; <label>:1158                                    ; preds = %1148
  %1159 = and i32 %1152, 262144
  %1160 = icmp ne i32 %1159, 0
  %1161 = select i1 %1160, float %55, float 1.000000e+00
  %1162 = select i1 %1160, float %56, float 0.000000e+00
  %1163 = select i1 %1160, float %57, float 0.000000e+00
  %1164 = select i1 %1160, float %58, float 1.000000e+00
  %1165 = select i1 %1160, float %59, float %87
  %1166 = select i1 %1160, float %60, float %88
  %1167 = add i32 %49, 300
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = lshr i32 %1169, 16
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = fmul fast float %1171, 0x3F50624DE0000000
  %1173 = add i32 %49, 104
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = lshr i32 %1175, 16
  %1177 = and i32 %1176, 255
  %1178 = lshr i32 %1175, 24
  %1179 = add i32 %49, 308
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 65535
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = lshr i32 %1181, 16
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = add i32 %49, 48
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = lshr i32 %1188, 22
  %1190 = shl nuw nsw i32 %1189, 5
  %1191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1190)  ; LegacyF16ToF32(value)
  %1192 = shl i32 %1188, 4
  %1193 = and i32 %1192, 32752
  %1194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1193)  ; LegacyF16ToF32(value)
  %1195 = lshr i32 %1188, 7
  %1196 = and i32 %1195, 32752
  %1197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1196)  ; LegacyF16ToF32(value)
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 3
  %1200 = fmul fast float %1199, 1.000000e+03
  %1201 = fmul fast float %386, %1200
  %1202 = call float @dx.op.unary.f32(i32 22, float %1201)  ; Frc(value)
  %1203 = fadd fast float %1202, %376
  %1204 = fmul fast float %387, %1200
  %1205 = call float @dx.op.unary.f32(i32 22, float %1204)  ; Frc(value)
  %1206 = fadd fast float %1205, %378
  %1207 = fmul fast float %1172, %1200
  %1208 = call float @dx.op.unary.f32(i32 22, float %1207)  ; Frc(value)
  %1209 = fmul fast float %1208, 0x401921FB60000000
  %1210 = fadd fast float %1209, %1191
  %1211 = call float @dx.op.unary.f32(i32 13, float %1210)  ; Sin(value)
  %1212 = call float @dx.op.unary.f32(i32 12, float %1210)  ; Cos(value)
  %1213 = fsub fast float -0.000000e+00, %1211
  %1214 = fadd fast float %1165, -5.000000e-01
  %1215 = fadd fast float %1166, -5.000000e-01
  %1216 = fmul fast float %1183, %1214
  %1217 = fmul fast float %1185, %1215
  %1218 = fadd fast float %1216, 5.000000e-01
  %1219 = fadd fast float %1217, 5.000000e-01
  %1220 = fmul fast float %1194, %1218
  %1221 = fmul fast float %1197, %1219
  %1222 = fmul fast float %1212, %1220
  %1223 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1221, float %1222)  ; FMad(a,b,c)
  %1224 = fmul fast float %1211, %1220
  %1225 = call float @dx.op.tertiary.f32(i32 46, float %1212, float %1221, float %1224)  ; FMad(a,b,c)
  %1226 = fadd fast float %1203, %1223
  %1227 = fadd fast float %1206, %1225
  %1228 = icmp ugt i32 %1177, 1
  %1229 = icmp ugt i32 %1175, 33554431
  %1230 = or i1 %1229, %1228
  br i1 %1230, label %1231, label %1256

; <label>:1231                                    ; preds = %1158
  %1232 = add i32 %49, 244
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = lshr i32 %1234, 16
  %1236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1235)  ; LegacyF16ToF32(value)
  %1237 = fmul fast float %1199, %1236
  %1238 = call float @dx.op.unary.f32(i32 22, float %1237)  ; Frc(value)
  %1239 = mul nuw nsw i32 %1177, %1178
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1238, %1240
  %1242 = call float @dx.op.unary.f32(i32 27, float %1241)  ; Round_ni(value)
  %1243 = fptoui float %1242 to i32
  %1244 = urem i32 %1243, %1177
  %1245 = udiv i32 %1243, %1178
  %1246 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1247 = call float @dx.op.unary.f32(i32 22, float %1227)  ; Frc(value)
  %1248 = uitofp i32 %1244 to float
  %1249 = uitofp i32 %1245 to float
  %1250 = fadd fast float %1246, %1248
  %1251 = fadd fast float %1247, %1249
  %1252 = uitofp i32 %1177 to float
  %1253 = uitofp i32 %1178 to float
  %1254 = fdiv fast float %1250, %1252
  %1255 = fdiv fast float %1251, %1253
  br label %1256

; <label>:1256                                    ; preds = %1231, %1158
  %1257 = phi float [ %1254, %1231 ], [ %1226, %1158 ]
  %1258 = phi float [ %1255, %1231 ], [ %1227, %1158 ]
  %1259 = and i32 %1152, 256
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1307, label %1261

; <label>:1261                                    ; preds = %1256
  %1262 = add i32 %49, 492
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1262, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = add i32 %1264, 0
  %1266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1265, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1267 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1266, %dx.types.Handle %106, float %1257, float %1258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1268 = extractvalue %dx.types.ResRet.f32 %1267, 0
  %1269 = add i32 %49, 116
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = shl i32 %1271, 4
  %1273 = and i32 %1272, 32752
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = lshr i32 %1271, 7
  %1276 = and i32 %1275, 32752
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = fsub fast float 1.000000e+00, %531
  %1279 = call float @dx.op.binary.f32(i32 35, float %1278, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1280 = bitcast float %531 to i32
  %1281 = sitofp i32 %1280 to float
  %1282 = fadd fast float %1281, 0xC1CFBF8940000000
  %1283 = fmul fast float %1277, %1282
  %1284 = fadd fast float %1283, 0x41CFBF8940000000
  %1285 = fptosi float %1284 to i32
  %1286 = bitcast i32 %1285 to float
  %1287 = bitcast float %1279 to i32
  %1288 = sitofp i32 %1287 to float
  %1289 = fadd fast float %1288, 0xC1CFBF8940000000
  %1290 = fmul fast float %1289, %1277
  %1291 = fadd fast float %1290, 0x41CFBF8940000000
  %1292 = fptosi float %1291 to i32
  %1293 = bitcast i32 %1292 to float
  %1294 = fmul fast float %1286, %1274
  %1295 = fmul fast float %1293, %1274
  %1296 = fsub fast float %1279, %1294
  %1297 = fadd fast float %1295, %1279
  %1298 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1299 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1300 = fsub fast float %1268, %1298
  %1301 = fsub fast float %1299, %1298
  %1302 = bitcast float %1301 to i32
  %1303 = sub nsw i32 2129859010, %1302
  %1304 = bitcast i32 %1303 to float
  %1305 = fmul fast float %1304, %1300
  %1306 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  br label %1307

; <label>:1307                                    ; preds = %1261, %1256
  %1308 = phi float [ %1306, %1261 ], [ %531, %1256 ]
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = and i32 %1310, 128
  %1312 = icmp eq i32 %1311, 0
  br i1 %1312, label %1329, label %1313

; <label>:1313                                    ; preds = %1307
  %1314 = add i32 %49, 476
  %1315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.i32 %1315, 0
  %1317 = add i32 %1316, 0
  %1318 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1317, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1319 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1318, %dx.types.Handle %106, float %1257, float %1258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 524288
  %1324 = icmp ne i32 %1323, 0
  %1325 = fcmp fast ogt float %1320, 0x3FE0101020000000
  %1326 = select i1 %1325, float 1.000000e+00, float 0.000000e+00
  %1327 = select i1 %1324, float %1326, float %1320
  %1328 = fmul fast float %1327, %1308
  br label %1329

; <label>:1329                                    ; preds = %1313, %1307
  %1330 = phi float [ %1328, %1313 ], [ %1308, %1307 ]
  %1331 = fcmp fast ult float %1330, 0x3F70101020000000
  br i1 %1331, label %1961, label %1332

; <label>:1332                                    ; preds = %1329
  %1333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.i32 %1333, 0
  %1335 = and i32 %1334, 16
  %1336 = icmp eq i32 %1335, 0
  br i1 %1336, label %1535, label %1337

; <label>:1337                                    ; preds = %1332
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = add i32 %49, 428
  %1341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.i32 %1341, 0
  %1343 = add i32 %1342, 0
  %1344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1344, %dx.types.Handle %105, float %1257, float %1258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = extractvalue %dx.types.ResRet.f32 %1345, 2
  %1349 = extractvalue %dx.types.ResRet.f32 %1345, 3
  %1350 = and i32 %1339, 255
  %1351 = uitofp i32 %1350 to float
  %1352 = lshr i32 %1339, 8
  %1353 = and i32 %1352, 255
  %1354 = uitofp i32 %1353 to float
  %1355 = fmul fast float %1349, %1351
  %1356 = fadd fast float %1355, %1354
  %1357 = fmul fast float %1356, 0x3F70101000000000
  %1358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.i32 %1358, 0
  %1360 = and i32 %1359, 512
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1370, label %1362

; <label>:1362                                    ; preds = %1337
  %1363 = add i32 %49, 508
  %1364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1363, i32 undef)  ; BufferLoad(srv,index,wot)
  %1365 = extractvalue %dx.types.ResRet.i32 %1364, 0
  %1366 = add i32 %1365, 0
  %1367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1368 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1367, %dx.types.Handle %106, float %1257, float %1258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  br label %1370

; <label>:1370                                    ; preds = %1362, %1337
  %1371 = phi float [ %1369, %1362 ], [ 1.000000e+00, %1337 ]
  %1372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.i32 %1372, 0
  %1374 = and i32 %1373, 33554432
  %1375 = icmp eq i32 %1374, 0
  br i1 %1375, label %1482, label %1376

; <label>:1376                                    ; preds = %1370
  %1377 = add i32 %49, 240
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = and i32 %1379, 65535
  %1381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1380)  ; LegacyF16ToF32(value)
  %1382 = lshr i32 %1379, 16
  %1383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1382)  ; LegacyF16ToF32(value)
  %1384 = add i32 %49, 244
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 65535
  %1388 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1387)  ; LegacyF16ToF32(value)
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = lshr i32 %1390, 24
  %1392 = uitofp i32 %1391 to float
  %1393 = fmul fast float %1392, 0x3F70101020000000
  %1394 = and i32 %1390, 255
  %1395 = uitofp i32 %1394 to float
  %1396 = fmul fast float %1395, 0x3F70101020000000
  %1397 = lshr i32 %1390, 8
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101020000000
  %1401 = lshr i32 %1390, 16
  %1402 = and i32 %1401, 255
  %1403 = uitofp i32 %1402 to float
  %1404 = fmul fast float %1403, 0x3F70101020000000
  %1405 = add i32 %49, 236
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1405, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = lshr i32 %1407, 24
  %1409 = uitofp i32 %1408 to float
  %1410 = fmul fast float %1409, 0x3F70101020000000
  %1411 = and i32 %1407, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = fmul fast float %1412, 0x3F70101020000000
  %1414 = lshr i32 %1407, 8
  %1415 = and i32 %1414, 255
  %1416 = uitofp i32 %1415 to float
  %1417 = fmul fast float %1416, 0x3F70101020000000
  %1418 = lshr i32 %1407, 16
  %1419 = and i32 %1418, 255
  %1420 = uitofp i32 %1419 to float
  %1421 = fmul fast float %1420, 0x3F70101020000000
  %1422 = bitcast float %1346 to i32
  %1423 = ashr i32 %1422, 1
  %1424 = sub nsw i32 1597463174, %1423
  %1425 = bitcast i32 %1424 to float
  %1426 = fmul fast float %1346, 5.000000e-01
  %1427 = fmul fast float %1425, %1425
  %1428 = fmul fast float %1427, %1426
  %1429 = fsub fast float 1.500000e+00, %1428
  %1430 = fmul fast float %1425, %1346
  %1431 = fmul fast float %1430, %1429
  %1432 = bitcast float %1347 to i32
  %1433 = ashr i32 %1432, 1
  %1434 = sub nsw i32 1597463174, %1433
  %1435 = bitcast i32 %1434 to float
  %1436 = fmul fast float %1347, 5.000000e-01
  %1437 = fmul fast float %1435, %1435
  %1438 = fmul fast float %1437, %1436
  %1439 = fsub fast float 1.500000e+00, %1438
  %1440 = fmul fast float %1435, %1347
  %1441 = fmul fast float %1440, %1439
  %1442 = bitcast float %1348 to i32
  %1443 = ashr i32 %1442, 1
  %1444 = sub nsw i32 1597463174, %1443
  %1445 = bitcast i32 %1444 to float
  %1446 = fmul fast float %1348, 5.000000e-01
  %1447 = fmul fast float %1445, %1445
  %1448 = fmul fast float %1447, %1446
  %1449 = fsub fast float 1.500000e+00, %1448
  %1450 = fmul fast float %1445, %1348
  %1451 = fmul fast float %1450, %1449
  %1452 = fsub fast float %1431, %1413
  %1453 = fsub fast float %1441, %1417
  %1454 = fsub fast float %1451, %1421
  %1455 = fmul fast float %1452, %1381
  %1456 = fmul fast float %1453, %1383
  %1457 = fmul fast float %1454, %1388
  %1458 = fadd fast float %1455, %1396
  %1459 = fadd fast float %1456, %1400
  %1460 = fadd fast float %1457, %1404
  %1461 = call float @dx.op.unary.f32(i32 7, float %1458)  ; Saturate(value)
  %1462 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1463 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1464 = fmul fast float %1461, %1461
  %1465 = fmul fast float %1462, %1462
  %1466 = fmul fast float %1463, %1463
  %1467 = fsub fast float %1464, %1346
  %1468 = fsub fast float %1465, %1347
  %1469 = fsub fast float %1466, %1348
  %1470 = fmul fast float %1467, %1371
  %1471 = fmul fast float %1468, %1371
  %1472 = fmul fast float %1469, %1371
  %1473 = fadd fast float %1470, %1346
  %1474 = fadd fast float %1471, %1347
  %1475 = fadd fast float %1472, %1348
  %1476 = fadd fast float %1393, %1357
  %1477 = fsub fast float %1476, %1410
  %1478 = call float @dx.op.unary.f32(i32 7, float %1477)  ; Saturate(value)
  %1479 = fsub fast float %1478, %1357
  %1480 = fmul fast float %1479, %1371
  %1481 = fadd fast float %1480, %1357
  br label %1535

; <label>:1482                                    ; preds = %1370
  %1483 = and i32 %1373, 134217728
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1519, label %1485

; <label>:1485                                    ; preds = %1482
  %1486 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %1487 = call float @dx.op.unary.f32(i32 24, float %367)  ; Sqrt(value)
  %1488 = call float @dx.op.unary.f32(i32 24, float %371)  ; Sqrt(value)
  %1489 = fadd fast float %1486, -5.000000e-01
  %1490 = fadd fast float %1487, -5.000000e-01
  %1491 = fadd fast float %1488, -5.000000e-01
  %1492 = fmul fast float %1489, %1371
  %1493 = fmul fast float %1490, %1371
  %1494 = fmul fast float %1491, %1371
  %1495 = fadd fast float %1492, 5.000000e-01
  %1496 = fadd fast float %1493, 5.000000e-01
  %1497 = fadd fast float %1494, 5.000000e-01
  %1498 = call float @dx.op.unary.f32(i32 24, float %1346)  ; Sqrt(value)
  %1499 = call float @dx.op.unary.f32(i32 24, float %1347)  ; Sqrt(value)
  %1500 = call float @dx.op.unary.f32(i32 24, float %1348)  ; Sqrt(value)
  %1501 = fmul fast float %1495, 2.000000e+00
  %1502 = fsub fast float 1.000000e+00, %1501
  %1503 = fmul fast float %1502, %1498
  %1504 = fadd fast float %1503, %1501
  %1505 = fmul fast float %1504, %1498
  %1506 = fmul fast float %1496, 2.000000e+00
  %1507 = fsub fast float 1.000000e+00, %1506
  %1508 = fmul fast float %1507, %1499
  %1509 = fadd fast float %1508, %1506
  %1510 = fmul fast float %1509, %1499
  %1511 = fmul fast float %1497, 2.000000e+00
  %1512 = fsub fast float 1.000000e+00, %1511
  %1513 = fmul fast float %1512, %1500
  %1514 = fadd fast float %1513, %1511
  %1515 = fmul fast float %1514, %1500
  %1516 = fmul fast float %1505, %1505
  %1517 = fmul fast float %1510, %1510
  %1518 = fmul fast float %1515, %1515
  br label %1535

; <label>:1519                                    ; preds = %1482
  %1520 = fmul fast float %363, %363
  %1521 = fmul fast float %367, %367
  %1522 = fmul fast float %371, %371
  %1523 = fadd fast float %1520, -1.000000e+00
  %1524 = fadd fast float %1521, -1.000000e+00
  %1525 = fadd fast float %1522, -1.000000e+00
  %1526 = fmul fast float %1371, %1523
  %1527 = fmul fast float %1371, %1524
  %1528 = fmul fast float %1371, %1525
  %1529 = fadd fast float %1526, 1.000000e+00
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fadd fast float %1528, 1.000000e+00
  %1532 = fmul fast float %1529, %1346
  %1533 = fmul fast float %1530, %1347
  %1534 = fmul fast float %1531, %1348
  br label %1535

; <label>:1535                                    ; preds = %1519, %1485, %1376, %1332
  %1536 = phi float [ %1481, %1376 ], [ %1357, %1485 ], [ %1357, %1519 ], [ 0x3FA23C0BE0000000, %1332 ]
  %1537 = phi float [ %1473, %1376 ], [ %1516, %1485 ], [ %1532, %1519 ], [ 1.000000e+00, %1332 ]
  %1538 = phi float [ %1474, %1376 ], [ %1517, %1485 ], [ %1533, %1519 ], [ 1.000000e+00, %1332 ]
  %1539 = phi float [ %1475, %1376 ], [ %1518, %1485 ], [ %1534, %1519 ], [ 1.000000e+00, %1332 ]
  %1540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1541 = extractvalue %dx.types.CBufRet.i32 %1540, 1
  %1542 = and i32 %1541, 1
  %1543 = icmp ne i32 %1542, 0
  %1544 = add i32 %49, 356
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 32
  %1548 = icmp ne i32 %1547, 0
  %1549 = and i1 %1543, %1548
  %1550 = select i1 %1549, float 1.000000e+00, float %1537
  %1551 = select i1 %1549, float 0x3FD3333340000000, float %1538
  %1552 = select i1 %1549, float 0x3FD3333340000000, float %1539
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 32
  %1556 = icmp eq i32 %1555, 0
  br i1 %1556, label %1629, label %1557

; <label>:1557                                    ; preds = %1535
  %1558 = add i32 %49, 108
  %1559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1558, i32 undef)  ; BufferLoad(srv,index,wot)
  %1560 = extractvalue %dx.types.ResRet.i32 %1559, 0
  %1561 = add i32 %49, 444
  %1562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1561, i32 undef)  ; BufferLoad(srv,index,wot)
  %1563 = extractvalue %dx.types.ResRet.i32 %1562, 0
  %1564 = add i32 %1563, 0
  %1565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1565, %dx.types.Handle %105, float %1257, float %1258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = extractvalue %dx.types.ResRet.f32 %1566, 3
  %1571 = and i32 %1560, 255
  %1572 = uitofp i32 %1571 to float
  %1573 = lshr i32 %1560, 8
  %1574 = and i32 %1573, 255
  %1575 = uitofp i32 %1574 to float
  %1576 = lshr i32 %1560, 16
  %1577 = and i32 %1576, 255
  %1578 = uitofp i32 %1577 to float
  %1579 = fmul fast float %1578, 0x3F70101000000000
  %1580 = fmul fast float %1567, %1572
  %1581 = fadd fast float %1580, %1575
  %1582 = fmul fast float %1581, 0x3F70101000000000
  %1583 = fadd fast float %1568, -5.000000e-01
  %1584 = fadd fast float %1570, -5.000000e-01
  %1585 = fmul fast float %1583, %1579
  %1586 = fmul fast float %1584, %1579
  %1587 = fadd fast float %1585, 5.000000e-01
  %1588 = fadd fast float %1586, 5.000000e-01
  %1589 = fmul fast float %1587, 2.000000e+00
  %1590 = fadd fast float %1589, -1.000000e+00
  %1591 = fmul fast float %1588, 2.000000e+00
  %1592 = fadd fast float %1591, -1.000000e+00
  %1593 = fadd fast float %1590, %1592
  %1594 = fmul fast float %1593, 5.000000e-01
  %1595 = fsub fast float %1590, %1592
  %1596 = fmul fast float %1595, 5.000000e-01
  %1597 = call float @dx.op.unary.f32(i32 6, float %1594)  ; FAbs(value)
  %1598 = fsub fast float 1.000000e+00, %1597
  %1599 = call float @dx.op.unary.f32(i32 6, float %1596)  ; FAbs(value)
  %1600 = fsub fast float %1598, %1599
  %1601 = call float @dx.op.dot3.f32(i32 55, float %1594, float %1596, float %1600, float %1594, float %1596, float %1600)  ; Dot3(ax,ay,az,bx,by,bz)
  %1602 = call float @dx.op.unary.f32(i32 25, float %1601)  ; Rsqrt(value)
  %1603 = fmul fast float %1594, %1602
  %1604 = fmul fast float %1596, %1602
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 67108864
  %1608 = icmp eq i32 %1607, 0
  br i1 %1608, label %1625, label %1609

; <label>:1609                                    ; preds = %1557
  %1610 = add i32 %49, 296
  %1611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1610, i32 undef)  ; BufferLoad(srv,index,wot)
  %1612 = extractvalue %dx.types.ResRet.i32 %1611, 0
  %1613 = and i32 %1612, 65535
  %1614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1613)  ; LegacyF16ToF32(value)
  %1615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.i32 %1615, 0
  %1617 = and i32 %1616, 65535
  %1618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1617)  ; LegacyF16ToF32(value)
  %1619 = lshr i32 %1612, 16
  %1620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1619)  ; LegacyF16ToF32(value)
  %1621 = fsub fast float %1582, %1620
  %1622 = fmul fast float %1621, %1614
  %1623 = fadd fast float %1622, %1618
  %1624 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  br label %1625

; <label>:1625                                    ; preds = %1609, %1557
  %1626 = phi float [ %1624, %1609 ], [ %1582, %1557 ]
  %1627 = call float @dx.op.dot2.f32(i32 54, float %1603, float %1604, float %1161, float %1162)  ; Dot2(ax,ay,bx,by)
  %1628 = call float @dx.op.dot2.f32(i32 54, float %1603, float %1604, float %1163, float %1164)  ; Dot2(ax,ay,bx,by)
  br label %1629

; <label>:1629                                    ; preds = %1625, %1535
  %1630 = phi float [ %1626, %1625 ], [ 0x3FD6666660000000, %1535 ]
  %1631 = phi float [ %1627, %1625 ], [ 0.000000e+00, %1535 ]
  %1632 = phi float [ %1628, %1625 ], [ 0.000000e+00, %1535 ]
  %1633 = phi float [ %1569, %1625 ], [ 1.000000e+00, %1535 ]
  %1634 = add i32 %49, 176
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = lshr i32 %1636, 22
  %1638 = shl nuw nsw i32 %1637, 5
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1641 = extractvalue %dx.types.ResRet.i32 %1640, 0
  %1642 = and i32 %1641, 64
  %1643 = icmp eq i32 %1642, 0
  br i1 %1643, label %1677, label %1644

; <label>:1644                                    ; preds = %1629
  %1645 = add i32 %49, 460
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = add i32 %1647, 0
  %1649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1648, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 131072
  %1653 = icmp eq i32 %1652, 0
  %1654 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1649, %dx.types.Handle %105, float %1257, float %1258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1655 = extractvalue %dx.types.ResRet.f32 %1654, 0
  %1656 = extractvalue %dx.types.ResRet.f32 %1654, 1
  %1657 = extractvalue %dx.types.ResRet.f32 %1654, 2
  %1658 = fmul fast float %1655, %351
  %1659 = fmul fast float %1656, %354
  %1660 = fmul fast float %1657, %357
  br i1 %1653, label %1667, label %1661

; <label>:1661                                    ; preds = %1644
  %1662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1663 = extractvalue %dx.types.CBufRet.f32 %1662, 0
  %1664 = fmul fast float %1663, %1658
  %1665 = fmul fast float %1663, %1659
  %1666 = fmul fast float %1663, %1660
  br label %1667

; <label>:1667                                    ; preds = %1661, %1644
  %1668 = phi float [ %1664, %1661 ], [ %1658, %1644 ]
  %1669 = phi float [ %1665, %1661 ], [ %1659, %1644 ]
  %1670 = phi float [ %1666, %1661 ], [ %1660, %1644 ]
  %1671 = fmul fast float %1668, %1639
  %1672 = select i1 %292, float %1671, float %1668
  %1673 = call float @dx.op.dot3.f32(i32 55, float %1672, float %1669, float %1670, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1674 = select i1 %292, float 0.000000e+00, float %1668
  %1675 = select i1 %292, float %1673, float %1669
  %1676 = select i1 %292, float 0.000000e+00, float %1670
  br label %1677

; <label>:1677                                    ; preds = %1667, %1629
  %1678 = phi float [ %1674, %1667 ], [ 0.000000e+00, %1629 ]
  %1679 = phi float [ %1675, %1667 ], [ 0.000000e+00, %1629 ]
  %1680 = phi float [ %1676, %1667 ], [ 0.000000e+00, %1629 ]
  %1681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1682 = extractvalue %dx.types.ResRet.i32 %1681, 0
  %1683 = and i32 %1682, 10240
  %1684 = icmp eq i32 %1683, 0
  br i1 %1684, label %1729, label %1685

; <label>:1685                                    ; preds = %1677
  %1686 = add i32 %49, 524
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1686, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = add i32 %1688, 0
  %1690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1690, %dx.types.Handle %106, float %1257, float %1258, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1692 = extractvalue %dx.types.ResRet.f32 %1691, 1
  %1693 = extractvalue %dx.types.ResRet.f32 %1691, 3
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = and i32 %1695, 1048576
  %1697 = icmp ne i32 %1696, 0
  %1698 = and i32 %1695, 8192
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %1715, label %1700

; <label>:1700                                    ; preds = %1685
  %1701 = extractvalue %dx.types.ResRet.f32 %1691, 2
  %1702 = select i1 %1697, float %1701, float %1692
  %1703 = extractvalue %dx.types.ResRet.f32 %1691, 0
  %1704 = select i1 %1697, float %1703, float %1692
  %1705 = add i32 %49, 112
  %1706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1705, i32 undef)  ; BufferLoad(srv,index,wot)
  %1707 = extractvalue %dx.types.ResRet.i32 %1706, 0
  %1708 = lshr i32 %1707, 16
  %1709 = and i32 %1708, 255
  %1710 = uitofp i32 %1709 to float
  %1711 = fmul fast float %1710, 0x3F80101020000000
  %1712 = fmul fast float %1711, %1704
  %1713 = fmul fast float %1711, %1692
  %1714 = fmul fast float %1711, %1702
  br label %1715

; <label>:1715                                    ; preds = %1700, %1685
  %1716 = phi float [ %1712, %1700 ], [ 0.000000e+00, %1685 ]
  %1717 = phi float [ %1713, %1700 ], [ 0.000000e+00, %1685 ]
  %1718 = phi float [ %1714, %1700 ], [ 0.000000e+00, %1685 ]
  %1719 = and i32 %1695, 2048
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1729, label %1721

; <label>:1721                                    ; preds = %1715
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = shl i32 %1723, 4
  %1725 = and i32 %1724, 32752
  %1726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1725)  ; LegacyF16ToF32(value)
  %1727 = fmul fast float %1726, %1693
  %1728 = call float @dx.op.binary.f32(i32 35, float %1727, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1729

; <label>:1729                                    ; preds = %1721, %1715, %1677
  %1730 = phi float [ %1716, %1721 ], [ %1716, %1715 ], [ 0.000000e+00, %1677 ]
  %1731 = phi float [ %1717, %1721 ], [ %1717, %1715 ], [ 0.000000e+00, %1677 ]
  %1732 = phi float [ %1718, %1721 ], [ %1718, %1715 ], [ 0.000000e+00, %1677 ]
  %1733 = phi float [ %1728, %1721 ], [ 0x3F70101020000000, %1715 ], [ 0x3F70101020000000, %1677 ]
  %1734 = add i32 %49, 112
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = and i32 %1736, 255
  %1738 = uitofp i32 %1737 to float
  %1739 = lshr i32 %1736, 8
  %1740 = and i32 %1739, 255
  %1741 = uitofp i32 %1740 to float
  %1742 = call float @dx.op.dot3.f32(i32 55, float %1550, float %1551, float %1552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1743 = fmul fast float %1741, %1742
  %1744 = fadd fast float %1743, %1738
  %1745 = fmul fast float %1744, 0x3F70101020000000
  %1746 = call float @dx.op.unary.f32(i32 7, float %1745)  ; Saturate(value)
  br i1 %1149, label %1747, label %1755

; <label>:1747                                    ; preds = %1729
  %1748 = fsub fast float 1.000000e+00, %1330
  %1749 = fmul fast float %1748, %1133
  %1750 = fmul fast float %1748, %1134
  %1751 = fmul fast float %1748, %1135
  %1752 = fmul fast float %1748, %1136
  %1753 = fmul fast float %1748, %1137
  %1754 = fmul fast float %1748, %1138
  br label %1755

; <label>:1755                                    ; preds = %1747, %1729
  %1756 = phi float [ %1749, %1747 ], [ %1133, %1729 ]
  %1757 = phi float [ %1750, %1747 ], [ %1134, %1729 ]
  %1758 = phi float [ %1751, %1747 ], [ %1135, %1729 ]
  %1759 = phi float [ %1752, %1747 ], [ %1136, %1729 ]
  %1760 = phi float [ %1753, %1747 ], [ %1137, %1729 ]
  %1761 = phi float [ %1754, %1747 ], [ %1138, %1729 ]
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 3
  %1765 = icmp eq i32 %1764, 3
  br i1 %1765, label %1844, label %1766

; <label>:1766                                    ; preds = %1755
  %1767 = and i32 %1763, 16
  %1768 = icmp ne i32 %1767, 0
  %1769 = select i1 %1768, float %1330, float 0.000000e+00
  %1770 = icmp eq i32 %1764, 0
  br i1 %1770, label %1771, label %1799

; <label>:1771                                    ; preds = %1766
  %1772 = and i32 %1763, 64
  %1773 = icmp ne i32 %1772, 0
  %1774 = select i1 %1773, float %1330, float 0.000000e+00
  %1775 = fsub fast float %1550, %1756
  %1776 = fsub fast float %1551, %1757
  %1777 = fsub fast float %1552, %1758
  %1778 = fmul fast float %1769, %1775
  %1779 = fmul fast float %1769, %1776
  %1780 = fmul fast float %1769, %1777
  %1781 = fadd fast float %1778, %1756
  %1782 = fadd fast float %1779, %1757
  %1783 = fadd fast float %1780, %1758
  %1784 = fsub fast float %1536, %1142
  %1785 = fmul fast float %1769, %1784
  %1786 = fadd fast float %1785, %1142
  %1787 = fsub fast float %1678, %1759
  %1788 = fsub fast float %1679, %1760
  %1789 = fsub fast float %1680, %1761
  %1790 = fmul fast float %1774, %1787
  %1791 = fmul fast float %1774, %1788
  %1792 = fmul fast float %1774, %1789
  %1793 = fadd fast float %1790, %1759
  %1794 = fadd fast float %1791, %1760
  %1795 = fadd fast float %1792, %1761
  %1796 = fsub fast float %1746, %1147
  %1797 = fmul fast float %1769, %1796
  %1798 = fadd fast float %1797, %1147
  br label %1844

; <label>:1799                                    ; preds = %1766
  %1800 = icmp eq i32 %1764, 1
  br i1 %1800, label %1801, label %1814

; <label>:1801                                    ; preds = %1799
  %1802 = fadd fast float %1550, -1.000000e+00
  %1803 = fadd fast float %1551, -1.000000e+00
  %1804 = fadd fast float %1552, -1.000000e+00
  %1805 = fmul fast float %1769, %1802
  %1806 = fmul fast float %1769, %1803
  %1807 = fmul fast float %1769, %1804
  %1808 = fadd fast float %1805, 1.000000e+00
  %1809 = fadd fast float %1806, 1.000000e+00
  %1810 = fadd fast float %1807, 1.000000e+00
  %1811 = fmul fast float %1808, %1756
  %1812 = fmul fast float %1809, %1757
  %1813 = fmul fast float %1810, %1758
  br label %1844

; <label>:1814                                    ; preds = %1799
  %1815 = icmp eq i32 %1764, 2
  br i1 %1815, label %1816, label %1844

; <label>:1816                                    ; preds = %1814
  %1817 = call float @dx.op.unary.f32(i32 24, float %1550)  ; Sqrt(value)
  %1818 = call float @dx.op.unary.f32(i32 24, float %1551)  ; Sqrt(value)
  %1819 = call float @dx.op.unary.f32(i32 24, float %1552)  ; Sqrt(value)
  %1820 = fadd fast float %1817, -5.000000e-01
  %1821 = fadd fast float %1818, -5.000000e-01
  %1822 = fadd fast float %1819, -5.000000e-01
  %1823 = fmul fast float %1820, %1769
  %1824 = fmul fast float %1821, %1769
  %1825 = fmul fast float %1822, %1769
  %1826 = fadd fast float %1823, 5.000000e-01
  %1827 = fadd fast float %1824, 5.000000e-01
  %1828 = fadd fast float %1825, 5.000000e-01
  %1829 = fmul fast float %1826, 2.000000e+00
  %1830 = fsub fast float 1.000000e+00, %1829
  %1831 = fmul fast float %1830, %1756
  %1832 = fadd fast float %1831, %1829
  %1833 = fmul fast float %1832, %1756
  %1834 = fmul fast float %1827, 2.000000e+00
  %1835 = fsub fast float 1.000000e+00, %1834
  %1836 = fmul fast float %1835, %1757
  %1837 = fadd fast float %1836, %1834
  %1838 = fmul fast float %1837, %1757
  %1839 = fmul fast float %1828, 2.000000e+00
  %1840 = fsub fast float 1.000000e+00, %1839
  %1841 = fmul fast float %1840, %1758
  %1842 = fadd fast float %1841, %1839
  %1843 = fmul fast float %1842, %1758
  br label %1844

; <label>:1844                                    ; preds = %1816, %1814, %1801, %1771, %1755
  %1845 = phi float [ %1756, %1755 ], [ %1833, %1816 ], [ %1756, %1814 ], [ %1811, %1801 ], [ %1781, %1771 ]
  %1846 = phi float [ %1757, %1755 ], [ %1838, %1816 ], [ %1757, %1814 ], [ %1812, %1801 ], [ %1782, %1771 ]
  %1847 = phi float [ %1758, %1755 ], [ %1843, %1816 ], [ %1758, %1814 ], [ %1813, %1801 ], [ %1783, %1771 ]
  %1848 = phi float [ %1759, %1755 ], [ %1759, %1816 ], [ %1759, %1814 ], [ %1759, %1801 ], [ %1793, %1771 ]
  %1849 = phi float [ %1760, %1755 ], [ %1760, %1816 ], [ %1760, %1814 ], [ %1760, %1801 ], [ %1794, %1771 ]
  %1850 = phi float [ %1761, %1755 ], [ %1761, %1816 ], [ %1761, %1814 ], [ %1761, %1801 ], [ %1795, %1771 ]
  %1851 = phi float [ %1142, %1755 ], [ %1142, %1816 ], [ %1142, %1814 ], [ %1142, %1801 ], [ %1786, %1771 ]
  %1852 = phi float [ %1147, %1755 ], [ %1147, %1816 ], [ %1147, %1814 ], [ %1147, %1801 ], [ %1798, %1771 ]
  %1853 = and i32 %1763, 12
  %1854 = icmp eq i32 %1853, 12
  br i1 %1854, label %1961, label %1855

; <label>:1855                                    ; preds = %1844
  %1856 = and i32 %1763, 2097184
  %1857 = icmp eq i32 %1856, 2097184
  %1858 = select i1 %1857, float %1330, float 0.000000e+00
  %1859 = and i32 %1763, 4194336
  %1860 = icmp eq i32 %1859, 4194336
  %1861 = select i1 %1860, float %1330, float 0.000000e+00
  %1862 = and i32 %1763, 8388640
  %1863 = icmp eq i32 %1862, 8388640
  %1864 = select i1 %1863, float %1330, float 0.000000e+00
  %1865 = and i32 %1763, 2048
  %1866 = icmp ne i32 %1865, 0
  %1867 = select i1 %1866, float %1330, float 0.000000e+00
  %1868 = and i32 %1763, 8192
  %1869 = icmp ne i32 %1868, 0
  %1870 = select i1 %1869, float %1330, float 0.000000e+00
  %1871 = icmp eq i32 %1853, 0
  br i1 %1871, label %1872, label %1897

; <label>:1872                                    ; preds = %1855
  %1873 = fsub fast float %1631, %1131
  %1874 = fsub fast float %1632, %1132
  %1875 = fmul fast float %1858, %1873
  %1876 = fmul fast float %1858, %1874
  %1877 = fadd fast float %1875, %1131
  %1878 = fadd fast float %1876, %1132
  %1879 = fsub fast float %1633, %1145
  %1880 = fmul fast float %1861, %1879
  %1881 = fadd fast float %1880, %1145
  %1882 = fsub fast float %1630, %1144
  %1883 = fmul fast float %1864, %1882
  %1884 = fadd fast float %1883, %1144
  %1885 = fsub fast float %1733, %1146
  %1886 = fmul fast float %1867, %1885
  %1887 = fadd fast float %1886, %1146
  %1888 = fsub fast float %1730, %1139
  %1889 = fsub fast float %1731, %1140
  %1890 = fsub fast float %1732, %1141
  %1891 = fmul fast float %1870, %1888
  %1892 = fmul fast float %1870, %1889
  %1893 = fmul fast float %1870, %1890
  %1894 = fadd fast float %1891, %1139
  %1895 = fadd fast float %1892, %1140
  %1896 = fadd fast float %1893, %1141
  br label %1961

; <label>:1897                                    ; preds = %1855
  %1898 = icmp eq i32 %1853, 4
  br i1 %1898, label %1899, label %1939

; <label>:1899                                    ; preds = %1897
  %1900 = fmul fast float %1858, %1631
  %1901 = fmul fast float %1858, %1632
  %1902 = fadd fast float %1900, %1131
  %1903 = fadd fast float %1901, %1132
  %1904 = call float @dx.op.binary.f32(i32 36, float %1145, float %1633)  ; FMin(a,b)
  %1905 = fsub fast float %1904, %1145
  %1906 = fmul fast float %1905, %1861
  %1907 = fadd fast float %1906, %1145
  %1908 = fadd fast float %1630, %1144
  %1909 = fmul fast float %1908, 0x3FF337FAE0000000
  %1910 = fmul fast float %1144, %1144
  %1911 = fmul fast float %1630, %1630
  %1912 = fadd fast float %1911, %1910
  %1913 = fmul fast float %1912, 0x3FE5152B00000000
  %1914 = fmul fast float %1144, 0xBFCC1F85E0000000
  %1915 = fmul fast float %1914, %1630
  %1916 = fadd fast float %1915, 0xBFE1363700000000
  %1917 = fadd fast float %1916, %1909
  %1918 = fsub fast float %1917, %1913
  %1919 = fmul fast float %1908, 0x3FBA6F0D00000000
  %1920 = fmul fast float %1912, 0x3FD0432880000000
  %1921 = fmul fast float %1144, 0xBFEF110800000000
  %1922 = fmul fast float %1921, %1630
  %1923 = fadd fast float %1922, 1.000000e+00
  %1924 = fsub fast float %1923, %1919
  %1925 = fadd fast float %1924, %1920
  %1926 = fdiv fast float %1918, %1925
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = fsub fast float %1927, %1144
  %1929 = fmul fast float %1928, %1864
  %1930 = fadd fast float %1929, %1144
  %1931 = fmul fast float %1867, %1733
  %1932 = fadd fast float %1931, %1146
  %1933 = fmul fast float %1870, %1730
  %1934 = fmul fast float %1870, %1731
  %1935 = fmul fast float %1870, %1732
  %1936 = fadd fast float %1933, %1139
  %1937 = fadd fast float %1934, %1140
  %1938 = fadd fast float %1935, %1141
  br label %1961

; <label>:1939                                    ; preds = %1897
  %1940 = icmp eq i32 %1853, 8
  br i1 %1940, label %1941, label %1961

; <label>:1941                                    ; preds = %1939
  %1942 = fmul fast float %1858, %1631
  %1943 = fmul fast float %1858, %1632
  %1944 = fadd fast float %1942, %1131
  %1945 = fadd fast float %1943, %1132
  %1946 = call float @dx.op.binary.f32(i32 36, float %1145, float %1633)  ; FMin(a,b)
  %1947 = fsub fast float %1946, %1145
  %1948 = fmul fast float %1947, %1861
  %1949 = fadd fast float %1948, %1145
  %1950 = fsub fast float %1630, %1144
  %1951 = fmul fast float %1864, %1950
  %1952 = fadd fast float %1951, %1144
  %1953 = fmul fast float %1867, %1733
  %1954 = fadd fast float %1953, %1146
  %1955 = fmul fast float %1870, %1730
  %1956 = fmul fast float %1870, %1731
  %1957 = fmul fast float %1870, %1732
  %1958 = fadd fast float %1955, %1139
  %1959 = fadd fast float %1956, %1140
  %1960 = fadd fast float %1957, %1141
  br label %1961

; <label>:1961                                    ; preds = %1941, %1939, %1899, %1872, %1844, %1329, %1148, %1130
  %1962 = phi float [ %1131, %1844 ], [ %1131, %1329 ], [ %1131, %1130 ], [ %1944, %1941 ], [ %1131, %1939 ], [ %1902, %1899 ], [ %1877, %1872 ], [ %1131, %1148 ]
  %1963 = phi float [ %1132, %1844 ], [ %1132, %1329 ], [ %1132, %1130 ], [ %1945, %1941 ], [ %1132, %1939 ], [ %1903, %1899 ], [ %1878, %1872 ], [ %1132, %1148 ]
  %1964 = phi float [ %1845, %1844 ], [ %1133, %1329 ], [ %1133, %1130 ], [ %1845, %1941 ], [ %1845, %1939 ], [ %1845, %1899 ], [ %1845, %1872 ], [ %1133, %1148 ]
  %1965 = phi float [ %1846, %1844 ], [ %1134, %1329 ], [ %1134, %1130 ], [ %1846, %1941 ], [ %1846, %1939 ], [ %1846, %1899 ], [ %1846, %1872 ], [ %1134, %1148 ]
  %1966 = phi float [ %1847, %1844 ], [ %1135, %1329 ], [ %1135, %1130 ], [ %1847, %1941 ], [ %1847, %1939 ], [ %1847, %1899 ], [ %1847, %1872 ], [ %1135, %1148 ]
  %1967 = phi float [ %1848, %1844 ], [ %1136, %1329 ], [ %1136, %1130 ], [ %1848, %1941 ], [ %1848, %1939 ], [ %1848, %1899 ], [ %1848, %1872 ], [ %1136, %1148 ]
  %1968 = phi float [ %1849, %1844 ], [ %1137, %1329 ], [ %1137, %1130 ], [ %1849, %1941 ], [ %1849, %1939 ], [ %1849, %1899 ], [ %1849, %1872 ], [ %1137, %1148 ]
  %1969 = phi float [ %1850, %1844 ], [ %1138, %1329 ], [ %1138, %1130 ], [ %1850, %1941 ], [ %1850, %1939 ], [ %1850, %1899 ], [ %1850, %1872 ], [ %1138, %1148 ]
  %1970 = phi float [ %1139, %1844 ], [ %1139, %1329 ], [ %1139, %1130 ], [ %1958, %1941 ], [ %1139, %1939 ], [ %1936, %1899 ], [ %1894, %1872 ], [ %1139, %1148 ]
  %1971 = phi float [ %1140, %1844 ], [ %1140, %1329 ], [ %1140, %1130 ], [ %1959, %1941 ], [ %1140, %1939 ], [ %1937, %1899 ], [ %1895, %1872 ], [ %1140, %1148 ]
  %1972 = phi float [ %1141, %1844 ], [ %1141, %1329 ], [ %1141, %1130 ], [ %1960, %1941 ], [ %1141, %1939 ], [ %1938, %1899 ], [ %1896, %1872 ], [ %1141, %1148 ]
  %1973 = phi float [ %1851, %1844 ], [ %1142, %1329 ], [ %1142, %1130 ], [ %1851, %1941 ], [ %1851, %1939 ], [ %1851, %1899 ], [ %1851, %1872 ], [ %1142, %1148 ]
  %1974 = phi float [ %1144, %1844 ], [ %1144, %1329 ], [ %1144, %1130 ], [ %1952, %1941 ], [ %1144, %1939 ], [ %1930, %1899 ], [ %1884, %1872 ], [ %1144, %1148 ]
  %1975 = phi float [ %1145, %1844 ], [ %1145, %1329 ], [ %1145, %1130 ], [ %1949, %1941 ], [ %1145, %1939 ], [ %1907, %1899 ], [ %1881, %1872 ], [ %1145, %1148 ]
  %1976 = phi float [ %1146, %1844 ], [ %1146, %1329 ], [ %1146, %1130 ], [ %1954, %1941 ], [ %1146, %1939 ], [ %1932, %1899 ], [ %1887, %1872 ], [ %1146, %1148 ]
  %1977 = phi float [ %1852, %1844 ], [ %1147, %1329 ], [ %1147, %1130 ], [ %1852, %1941 ], [ %1852, %1939 ], [ %1852, %1899 ], [ %1852, %1872 ], [ %1147, %1148 ]
  br i1 %478, label %2791, label %1978

; <label>:1978                                    ; preds = %1961
  %1979 = icmp ult i32 %534, 3
  %1980 = add i32 %49, 56
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = add i32 %49, 60
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1983, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = or i32 %1985, %1982
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %2791, label %1988

; <label>:1988                                    ; preds = %1978
  %1989 = and i32 %1982, 262144
  %1990 = icmp ne i32 %1989, 0
  %1991 = select i1 %1990, float %55, float 1.000000e+00
  %1992 = select i1 %1990, float %56, float 0.000000e+00
  %1993 = select i1 %1990, float %57, float 0.000000e+00
  %1994 = select i1 %1990, float %58, float 1.000000e+00
  %1995 = select i1 %1990, float %59, float %87
  %1996 = select i1 %1990, float %60, float %88
  %1997 = add i32 %49, 316
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = lshr i32 %1999, 16
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = fmul fast float %2001, 0x3F50624DE0000000
  %2003 = add i32 %49, 120
  %2004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2005 = extractvalue %dx.types.ResRet.i32 %2004, 0
  %2006 = lshr i32 %2005, 16
  %2007 = and i32 %2006, 255
  %2008 = lshr i32 %2005, 24
  %2009 = add i32 %49, 324
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2009, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 65535
  %2013 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2012)  ; LegacyF16ToF32(value)
  %2014 = lshr i32 %2011, 16
  %2015 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2014)  ; LegacyF16ToF32(value)
  %2016 = add i32 %49, 64
  %2017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.i32 %2017, 0
  %2019 = lshr i32 %2018, 22
  %2020 = shl nuw nsw i32 %2019, 5
  %2021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2020)  ; LegacyF16ToF32(value)
  %2022 = shl i32 %2018, 4
  %2023 = and i32 %2022, 32752
  %2024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2023)  ; LegacyF16ToF32(value)
  %2025 = lshr i32 %2018, 7
  %2026 = and i32 %2025, 32752
  %2027 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2026)  ; LegacyF16ToF32(value)
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 3
  %2030 = fmul fast float %2029, 1.000000e+03
  %2031 = fmul fast float %428, %2030
  %2032 = call float @dx.op.unary.f32(i32 22, float %2031)  ; Frc(value)
  %2033 = fadd fast float %2032, %418
  %2034 = fmul fast float %429, %2030
  %2035 = call float @dx.op.unary.f32(i32 22, float %2034)  ; Frc(value)
  %2036 = fadd fast float %2035, %420
  %2037 = fmul fast float %2002, %2030
  %2038 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2039 = fmul fast float %2038, 0x401921FB60000000
  %2040 = fadd fast float %2039, %2021
  %2041 = call float @dx.op.unary.f32(i32 13, float %2040)  ; Sin(value)
  %2042 = call float @dx.op.unary.f32(i32 12, float %2040)  ; Cos(value)
  %2043 = fsub fast float -0.000000e+00, %2041
  %2044 = fadd fast float %1995, -5.000000e-01
  %2045 = fadd fast float %1996, -5.000000e-01
  %2046 = fmul fast float %2013, %2044
  %2047 = fmul fast float %2015, %2045
  %2048 = fadd fast float %2046, 5.000000e-01
  %2049 = fadd fast float %2047, 5.000000e-01
  %2050 = fmul fast float %2024, %2048
  %2051 = fmul fast float %2027, %2049
  %2052 = fmul fast float %2042, %2050
  %2053 = call float @dx.op.tertiary.f32(i32 46, float %2043, float %2051, float %2052)  ; FMad(a,b,c)
  %2054 = fmul fast float %2041, %2050
  %2055 = call float @dx.op.tertiary.f32(i32 46, float %2042, float %2051, float %2054)  ; FMad(a,b,c)
  %2056 = fadd fast float %2033, %2053
  %2057 = fadd fast float %2036, %2055
  %2058 = icmp ugt i32 %2007, 1
  %2059 = icmp ugt i32 %2005, 33554431
  %2060 = or i1 %2059, %2058
  br i1 %2060, label %2061, label %2086

; <label>:2061                                    ; preds = %1988
  %2062 = add i32 %49, 260
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = lshr i32 %2064, 16
  %2066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2065)  ; LegacyF16ToF32(value)
  %2067 = fmul fast float %2029, %2066
  %2068 = call float @dx.op.unary.f32(i32 22, float %2067)  ; Frc(value)
  %2069 = mul nuw nsw i32 %2007, %2008
  %2070 = uitofp i32 %2069 to float
  %2071 = fmul fast float %2068, %2070
  %2072 = call float @dx.op.unary.f32(i32 27, float %2071)  ; Round_ni(value)
  %2073 = fptoui float %2072 to i32
  %2074 = urem i32 %2073, %2007
  %2075 = udiv i32 %2073, %2008
  %2076 = call float @dx.op.unary.f32(i32 22, float %2056)  ; Frc(value)
  %2077 = call float @dx.op.unary.f32(i32 22, float %2057)  ; Frc(value)
  %2078 = uitofp i32 %2074 to float
  %2079 = uitofp i32 %2075 to float
  %2080 = fadd fast float %2076, %2078
  %2081 = fadd fast float %2077, %2079
  %2082 = uitofp i32 %2007 to float
  %2083 = uitofp i32 %2008 to float
  %2084 = fdiv fast float %2080, %2082
  %2085 = fdiv fast float %2081, %2083
  br label %2086

; <label>:2086                                    ; preds = %2061, %1988
  %2087 = phi float [ %2084, %2061 ], [ %2056, %1988 ]
  %2088 = phi float [ %2085, %2061 ], [ %2057, %1988 ]
  %2089 = and i32 %1982, 256
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %2137, label %2091

; <label>:2091                                    ; preds = %2086
  %2092 = add i32 %49, 496
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = add i32 %2094, 0
  %2096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2096, %dx.types.Handle %106, float %2087, float %2088, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  %2099 = add i32 %49, 132
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = shl i32 %2101, 4
  %2103 = and i32 %2102, 32752
  %2104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2103)  ; LegacyF16ToF32(value)
  %2105 = lshr i32 %2101, 7
  %2106 = and i32 %2105, 32752
  %2107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2106)  ; LegacyF16ToF32(value)
  %2108 = fsub fast float 1.000000e+00, %530
  %2109 = call float @dx.op.binary.f32(i32 35, float %2108, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2110 = bitcast float %530 to i32
  %2111 = sitofp i32 %2110 to float
  %2112 = fadd fast float %2111, 0xC1CFBF8940000000
  %2113 = fmul fast float %2107, %2112
  %2114 = fadd fast float %2113, 0x41CFBF8940000000
  %2115 = fptosi float %2114 to i32
  %2116 = bitcast i32 %2115 to float
  %2117 = bitcast float %2109 to i32
  %2118 = sitofp i32 %2117 to float
  %2119 = fadd fast float %2118, 0xC1CFBF8940000000
  %2120 = fmul fast float %2119, %2107
  %2121 = fadd fast float %2120, 0x41CFBF8940000000
  %2122 = fptosi float %2121 to i32
  %2123 = bitcast i32 %2122 to float
  %2124 = fmul fast float %2116, %2104
  %2125 = fmul fast float %2123, %2104
  %2126 = fsub fast float %2109, %2124
  %2127 = fadd fast float %2125, %2109
  %2128 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2129 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2130 = fsub fast float %2098, %2128
  %2131 = fsub fast float %2129, %2128
  %2132 = bitcast float %2131 to i32
  %2133 = sub nsw i32 2129859010, %2132
  %2134 = bitcast i32 %2133 to float
  %2135 = fmul fast float %2134, %2130
  %2136 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  br label %2137

; <label>:2137                                    ; preds = %2091, %2086
  %2138 = phi float [ %2136, %2091 ], [ %530, %2086 ]
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = and i32 %2140, 128
  %2142 = icmp eq i32 %2141, 0
  br i1 %2142, label %2159, label %2143

; <label>:2143                                    ; preds = %2137
  %2144 = add i32 %49, 480
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = add i32 %2146, 0
  %2148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2148, %dx.types.Handle %106, float %2087, float %2088, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = and i32 %2152, 524288
  %2154 = icmp ne i32 %2153, 0
  %2155 = fcmp fast ogt float %2150, 0x3FE0101020000000
  %2156 = select i1 %2155, float 1.000000e+00, float 0.000000e+00
  %2157 = select i1 %2154, float %2156, float %2150
  %2158 = fmul fast float %2157, %2138
  br label %2159

; <label>:2159                                    ; preds = %2143, %2137
  %2160 = phi float [ %2158, %2143 ], [ %2138, %2137 ]
  %2161 = fcmp fast ult float %2160, 0x3F70101020000000
  br i1 %2161, label %2791, label %2162

; <label>:2162                                    ; preds = %2159
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = and i32 %2164, 16
  %2166 = icmp eq i32 %2165, 0
  br i1 %2166, label %2365, label %2167

; <label>:2167                                    ; preds = %2162
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2003, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %49, 432
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2170, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = add i32 %2172, 0
  %2174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2173, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2175 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2174, %dx.types.Handle %105, float %2087, float %2088, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = extractvalue %dx.types.ResRet.f32 %2175, 1
  %2178 = extractvalue %dx.types.ResRet.f32 %2175, 2
  %2179 = extractvalue %dx.types.ResRet.f32 %2175, 3
  %2180 = and i32 %2169, 255
  %2181 = uitofp i32 %2180 to float
  %2182 = lshr i32 %2169, 8
  %2183 = and i32 %2182, 255
  %2184 = uitofp i32 %2183 to float
  %2185 = fmul fast float %2179, %2181
  %2186 = fadd fast float %2185, %2184
  %2187 = fmul fast float %2186, 0x3F70101000000000
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = and i32 %2189, 512
  %2191 = icmp eq i32 %2190, 0
  br i1 %2191, label %2200, label %2192

; <label>:2192                                    ; preds = %2167
  %2193 = add i32 %49, 512
  %2194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2193, i32 undef)  ; BufferLoad(srv,index,wot)
  %2195 = extractvalue %dx.types.ResRet.i32 %2194, 0
  %2196 = add i32 %2195, 0
  %2197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2197, %dx.types.Handle %106, float %2087, float %2088, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2199 = extractvalue %dx.types.ResRet.f32 %2198, 0
  br label %2200

; <label>:2200                                    ; preds = %2192, %2167
  %2201 = phi float [ %2199, %2192 ], [ 1.000000e+00, %2167 ]
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = and i32 %2203, 33554432
  %2205 = icmp eq i32 %2204, 0
  br i1 %2205, label %2312, label %2206

; <label>:2206                                    ; preds = %2200
  %2207 = add i32 %49, 256
  %2208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2207, i32 undef)  ; BufferLoad(srv,index,wot)
  %2209 = extractvalue %dx.types.ResRet.i32 %2208, 0
  %2210 = and i32 %2209, 65535
  %2211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2210)  ; LegacyF16ToF32(value)
  %2212 = lshr i32 %2209, 16
  %2213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2212)  ; LegacyF16ToF32(value)
  %2214 = add i32 %49, 260
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 65535
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = lshr i32 %2220, 24
  %2222 = uitofp i32 %2221 to float
  %2223 = fmul fast float %2222, 0x3F70101020000000
  %2224 = and i32 %2220, 255
  %2225 = uitofp i32 %2224 to float
  %2226 = fmul fast float %2225, 0x3F70101020000000
  %2227 = lshr i32 %2220, 8
  %2228 = and i32 %2227, 255
  %2229 = uitofp i32 %2228 to float
  %2230 = fmul fast float %2229, 0x3F70101020000000
  %2231 = lshr i32 %2220, 16
  %2232 = and i32 %2231, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101020000000
  %2235 = add i32 %49, 252
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = lshr i32 %2237, 24
  %2239 = uitofp i32 %2238 to float
  %2240 = fmul fast float %2239, 0x3F70101020000000
  %2241 = and i32 %2237, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2242, 0x3F70101020000000
  %2244 = lshr i32 %2237, 8
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101020000000
  %2248 = lshr i32 %2237, 16
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = bitcast float %2176 to i32
  %2253 = ashr i32 %2252, 1
  %2254 = sub nsw i32 1597463174, %2253
  %2255 = bitcast i32 %2254 to float
  %2256 = fmul fast float %2176, 5.000000e-01
  %2257 = fmul fast float %2255, %2255
  %2258 = fmul fast float %2257, %2256
  %2259 = fsub fast float 1.500000e+00, %2258
  %2260 = fmul fast float %2255, %2176
  %2261 = fmul fast float %2260, %2259
  %2262 = bitcast float %2177 to i32
  %2263 = ashr i32 %2262, 1
  %2264 = sub nsw i32 1597463174, %2263
  %2265 = bitcast i32 %2264 to float
  %2266 = fmul fast float %2177, 5.000000e-01
  %2267 = fmul fast float %2265, %2265
  %2268 = fmul fast float %2267, %2266
  %2269 = fsub fast float 1.500000e+00, %2268
  %2270 = fmul fast float %2265, %2177
  %2271 = fmul fast float %2270, %2269
  %2272 = bitcast float %2178 to i32
  %2273 = ashr i32 %2272, 1
  %2274 = sub nsw i32 1597463174, %2273
  %2275 = bitcast i32 %2274 to float
  %2276 = fmul fast float %2178, 5.000000e-01
  %2277 = fmul fast float %2275, %2275
  %2278 = fmul fast float %2277, %2276
  %2279 = fsub fast float 1.500000e+00, %2278
  %2280 = fmul fast float %2275, %2178
  %2281 = fmul fast float %2280, %2279
  %2282 = fsub fast float %2261, %2243
  %2283 = fsub fast float %2271, %2247
  %2284 = fsub fast float %2281, %2251
  %2285 = fmul fast float %2282, %2211
  %2286 = fmul fast float %2283, %2213
  %2287 = fmul fast float %2284, %2218
  %2288 = fadd fast float %2285, %2226
  %2289 = fadd fast float %2286, %2230
  %2290 = fadd fast float %2287, %2234
  %2291 = call float @dx.op.unary.f32(i32 7, float %2288)  ; Saturate(value)
  %2292 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2293 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2294 = fmul fast float %2291, %2291
  %2295 = fmul fast float %2292, %2292
  %2296 = fmul fast float %2293, %2293
  %2297 = fsub fast float %2294, %2176
  %2298 = fsub fast float %2295, %2177
  %2299 = fsub fast float %2296, %2178
  %2300 = fmul fast float %2297, %2201
  %2301 = fmul fast float %2298, %2201
  %2302 = fmul fast float %2299, %2201
  %2303 = fadd fast float %2300, %2176
  %2304 = fadd fast float %2301, %2177
  %2305 = fadd fast float %2302, %2178
  %2306 = fadd fast float %2223, %2187
  %2307 = fsub fast float %2306, %2240
  %2308 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2309 = fsub fast float %2308, %2187
  %2310 = fmul fast float %2309, %2201
  %2311 = fadd fast float %2310, %2187
  br label %2365

; <label>:2312                                    ; preds = %2200
  %2313 = and i32 %2203, 134217728
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %2349, label %2315

; <label>:2315                                    ; preds = %2312
  %2316 = call float @dx.op.unary.f32(i32 24, float %405)  ; Sqrt(value)
  %2317 = call float @dx.op.unary.f32(i32 24, float %409)  ; Sqrt(value)
  %2318 = call float @dx.op.unary.f32(i32 24, float %413)  ; Sqrt(value)
  %2319 = fadd fast float %2316, -5.000000e-01
  %2320 = fadd fast float %2317, -5.000000e-01
  %2321 = fadd fast float %2318, -5.000000e-01
  %2322 = fmul fast float %2319, %2201
  %2323 = fmul fast float %2320, %2201
  %2324 = fmul fast float %2321, %2201
  %2325 = fadd fast float %2322, 5.000000e-01
  %2326 = fadd fast float %2323, 5.000000e-01
  %2327 = fadd fast float %2324, 5.000000e-01
  %2328 = call float @dx.op.unary.f32(i32 24, float %2176)  ; Sqrt(value)
  %2329 = call float @dx.op.unary.f32(i32 24, float %2177)  ; Sqrt(value)
  %2330 = call float @dx.op.unary.f32(i32 24, float %2178)  ; Sqrt(value)
  %2331 = fmul fast float %2325, 2.000000e+00
  %2332 = fsub fast float 1.000000e+00, %2331
  %2333 = fmul fast float %2332, %2328
  %2334 = fadd fast float %2333, %2331
  %2335 = fmul fast float %2334, %2328
  %2336 = fmul fast float %2326, 2.000000e+00
  %2337 = fsub fast float 1.000000e+00, %2336
  %2338 = fmul fast float %2337, %2329
  %2339 = fadd fast float %2338, %2336
  %2340 = fmul fast float %2339, %2329
  %2341 = fmul fast float %2327, 2.000000e+00
  %2342 = fsub fast float 1.000000e+00, %2341
  %2343 = fmul fast float %2342, %2330
  %2344 = fadd fast float %2343, %2341
  %2345 = fmul fast float %2344, %2330
  %2346 = fmul fast float %2335, %2335
  %2347 = fmul fast float %2340, %2340
  %2348 = fmul fast float %2345, %2345
  br label %2365

; <label>:2349                                    ; preds = %2312
  %2350 = fmul fast float %405, %405
  %2351 = fmul fast float %409, %409
  %2352 = fmul fast float %413, %413
  %2353 = fadd fast float %2350, -1.000000e+00
  %2354 = fadd fast float %2351, -1.000000e+00
  %2355 = fadd fast float %2352, -1.000000e+00
  %2356 = fmul fast float %2201, %2353
  %2357 = fmul fast float %2201, %2354
  %2358 = fmul fast float %2201, %2355
  %2359 = fadd fast float %2356, 1.000000e+00
  %2360 = fadd fast float %2357, 1.000000e+00
  %2361 = fadd fast float %2358, 1.000000e+00
  %2362 = fmul fast float %2359, %2176
  %2363 = fmul fast float %2360, %2177
  %2364 = fmul fast float %2361, %2178
  br label %2365

; <label>:2365                                    ; preds = %2349, %2315, %2206, %2162
  %2366 = phi float [ %2311, %2206 ], [ %2187, %2315 ], [ %2187, %2349 ], [ 0x3FA23C0BE0000000, %2162 ]
  %2367 = phi float [ %2303, %2206 ], [ %2346, %2315 ], [ %2362, %2349 ], [ 1.000000e+00, %2162 ]
  %2368 = phi float [ %2304, %2206 ], [ %2347, %2315 ], [ %2363, %2349 ], [ 1.000000e+00, %2162 ]
  %2369 = phi float [ %2305, %2206 ], [ %2348, %2315 ], [ %2364, %2349 ], [ 1.000000e+00, %2162 ]
  %2370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2371 = extractvalue %dx.types.CBufRet.i32 %2370, 1
  %2372 = and i32 %2371, 1
  %2373 = icmp ne i32 %2372, 0
  %2374 = add i32 %49, 356
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 32
  %2378 = icmp ne i32 %2377, 0
  %2379 = and i1 %2373, %2378
  %2380 = select i1 %2379, float 1.000000e+00, float %2367
  %2381 = select i1 %2379, float 0x3FD3333340000000, float %2368
  %2382 = select i1 %2379, float 0x3FD3333340000000, float %2369
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 32
  %2386 = icmp eq i32 %2385, 0
  br i1 %2386, label %2459, label %2387

; <label>:2387                                    ; preds = %2365
  %2388 = add i32 %49, 124
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = add i32 %49, 448
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = add i32 %2393, 0
  %2395 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2394, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2396 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2395, %dx.types.Handle %105, float %2087, float %2088, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2397 = extractvalue %dx.types.ResRet.f32 %2396, 0
  %2398 = extractvalue %dx.types.ResRet.f32 %2396, 1
  %2399 = extractvalue %dx.types.ResRet.f32 %2396, 2
  %2400 = extractvalue %dx.types.ResRet.f32 %2396, 3
  %2401 = and i32 %2390, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = lshr i32 %2390, 8
  %2404 = and i32 %2403, 255
  %2405 = uitofp i32 %2404 to float
  %2406 = lshr i32 %2390, 16
  %2407 = and i32 %2406, 255
  %2408 = uitofp i32 %2407 to float
  %2409 = fmul fast float %2408, 0x3F70101000000000
  %2410 = fmul fast float %2397, %2402
  %2411 = fadd fast float %2410, %2405
  %2412 = fmul fast float %2411, 0x3F70101000000000
  %2413 = fadd fast float %2398, -5.000000e-01
  %2414 = fadd fast float %2400, -5.000000e-01
  %2415 = fmul fast float %2413, %2409
  %2416 = fmul fast float %2414, %2409
  %2417 = fadd fast float %2415, 5.000000e-01
  %2418 = fadd fast float %2416, 5.000000e-01
  %2419 = fmul fast float %2417, 2.000000e+00
  %2420 = fadd fast float %2419, -1.000000e+00
  %2421 = fmul fast float %2418, 2.000000e+00
  %2422 = fadd fast float %2421, -1.000000e+00
  %2423 = fadd fast float %2420, %2422
  %2424 = fmul fast float %2423, 5.000000e-01
  %2425 = fsub fast float %2420, %2422
  %2426 = fmul fast float %2425, 5.000000e-01
  %2427 = call float @dx.op.unary.f32(i32 6, float %2424)  ; FAbs(value)
  %2428 = fsub fast float 1.000000e+00, %2427
  %2429 = call float @dx.op.unary.f32(i32 6, float %2426)  ; FAbs(value)
  %2430 = fsub fast float %2428, %2429
  %2431 = call float @dx.op.dot3.f32(i32 55, float %2424, float %2426, float %2430, float %2424, float %2426, float %2430)  ; Dot3(ax,ay,az,bx,by,bz)
  %2432 = call float @dx.op.unary.f32(i32 25, float %2431)  ; Rsqrt(value)
  %2433 = fmul fast float %2424, %2432
  %2434 = fmul fast float %2426, %2432
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 67108864
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2455, label %2439

; <label>:2439                                    ; preds = %2387
  %2440 = add i32 %49, 312
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 65535
  %2444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2443)  ; LegacyF16ToF32(value)
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 65535
  %2448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2447)  ; LegacyF16ToF32(value)
  %2449 = lshr i32 %2442, 16
  %2450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2449)  ; LegacyF16ToF32(value)
  %2451 = fsub fast float %2412, %2450
  %2452 = fmul fast float %2451, %2444
  %2453 = fadd fast float %2452, %2448
  %2454 = call float @dx.op.unary.f32(i32 7, float %2453)  ; Saturate(value)
  br label %2455

; <label>:2455                                    ; preds = %2439, %2387
  %2456 = phi float [ %2454, %2439 ], [ %2412, %2387 ]
  %2457 = call float @dx.op.dot2.f32(i32 54, float %2433, float %2434, float %1991, float %1992)  ; Dot2(ax,ay,bx,by)
  %2458 = call float @dx.op.dot2.f32(i32 54, float %2433, float %2434, float %1993, float %1994)  ; Dot2(ax,ay,bx,by)
  br label %2459

; <label>:2459                                    ; preds = %2455, %2365
  %2460 = phi float [ %2456, %2455 ], [ 0x3FD6666660000000, %2365 ]
  %2461 = phi float [ %2457, %2455 ], [ 0.000000e+00, %2365 ]
  %2462 = phi float [ %2458, %2455 ], [ 0.000000e+00, %2365 ]
  %2463 = phi float [ %2399, %2455 ], [ 1.000000e+00, %2365 ]
  %2464 = add i32 %49, 192
  %2465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2466 = extractvalue %dx.types.ResRet.i32 %2465, 0
  %2467 = lshr i32 %2466, 22
  %2468 = shl nuw nsw i32 %2467, 5
  %2469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2468)  ; LegacyF16ToF32(value)
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = and i32 %2471, 64
  %2473 = icmp eq i32 %2472, 0
  br i1 %2473, label %2507, label %2474

; <label>:2474                                    ; preds = %2459
  %2475 = add i32 %49, 464
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = add i32 %2477, 0
  %2479 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2478, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 131072
  %2483 = icmp eq i32 %2482, 0
  %2484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2479, %dx.types.Handle %105, float %2087, float %2088, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2485 = extractvalue %dx.types.ResRet.f32 %2484, 0
  %2486 = extractvalue %dx.types.ResRet.f32 %2484, 1
  %2487 = extractvalue %dx.types.ResRet.f32 %2484, 2
  %2488 = fmul fast float %2485, %393
  %2489 = fmul fast float %2486, %396
  %2490 = fmul fast float %2487, %399
  br i1 %2483, label %2497, label %2491

; <label>:2491                                    ; preds = %2474
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 0
  %2494 = fmul fast float %2493, %2488
  %2495 = fmul fast float %2493, %2489
  %2496 = fmul fast float %2493, %2490
  br label %2497

; <label>:2497                                    ; preds = %2491, %2474
  %2498 = phi float [ %2494, %2491 ], [ %2488, %2474 ]
  %2499 = phi float [ %2495, %2491 ], [ %2489, %2474 ]
  %2500 = phi float [ %2496, %2491 ], [ %2490, %2474 ]
  %2501 = fmul fast float %2498, %2469
  %2502 = select i1 %292, float %2501, float %2498
  %2503 = call float @dx.op.dot3.f32(i32 55, float %2502, float %2499, float %2500, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2504 = select i1 %292, float 0.000000e+00, float %2498
  %2505 = select i1 %292, float %2503, float %2499
  %2506 = select i1 %292, float 0.000000e+00, float %2500
  br label %2507

; <label>:2507                                    ; preds = %2497, %2459
  %2508 = phi float [ %2504, %2497 ], [ 0.000000e+00, %2459 ]
  %2509 = phi float [ %2505, %2497 ], [ 0.000000e+00, %2459 ]
  %2510 = phi float [ %2506, %2497 ], [ 0.000000e+00, %2459 ]
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = and i32 %2512, 10240
  %2514 = icmp eq i32 %2513, 0
  br i1 %2514, label %2559, label %2515

; <label>:2515                                    ; preds = %2507
  %2516 = add i32 %49, 528
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2516, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = add i32 %2518, 0
  %2520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2521 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2520, %dx.types.Handle %106, float %2087, float %2088, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2522 = extractvalue %dx.types.ResRet.f32 %2521, 1
  %2523 = extractvalue %dx.types.ResRet.f32 %2521, 3
  %2524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.i32 %2524, 0
  %2526 = and i32 %2525, 1048576
  %2527 = icmp ne i32 %2526, 0
  %2528 = and i32 %2525, 8192
  %2529 = icmp eq i32 %2528, 0
  br i1 %2529, label %2545, label %2530

; <label>:2530                                    ; preds = %2515
  %2531 = extractvalue %dx.types.ResRet.f32 %2521, 2
  %2532 = select i1 %2527, float %2531, float %2522
  %2533 = extractvalue %dx.types.ResRet.f32 %2521, 0
  %2534 = select i1 %2527, float %2533, float %2522
  %2535 = add i32 %49, 128
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = lshr i32 %2537, 16
  %2539 = and i32 %2538, 255
  %2540 = uitofp i32 %2539 to float
  %2541 = fmul fast float %2540, 0x3F80101020000000
  %2542 = fmul fast float %2541, %2534
  %2543 = fmul fast float %2541, %2522
  %2544 = fmul fast float %2541, %2532
  br label %2545

; <label>:2545                                    ; preds = %2530, %2515
  %2546 = phi float [ %2542, %2530 ], [ 0.000000e+00, %2515 ]
  %2547 = phi float [ %2543, %2530 ], [ 0.000000e+00, %2515 ]
  %2548 = phi float [ %2544, %2530 ], [ 0.000000e+00, %2515 ]
  %2549 = and i32 %2525, 2048
  %2550 = icmp eq i32 %2549, 0
  br i1 %2550, label %2559, label %2551

; <label>:2551                                    ; preds = %2545
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2464, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = shl i32 %2553, 4
  %2555 = and i32 %2554, 32752
  %2556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2555)  ; LegacyF16ToF32(value)
  %2557 = fmul fast float %2556, %2523
  %2558 = call float @dx.op.binary.f32(i32 35, float %2557, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2559

; <label>:2559                                    ; preds = %2551, %2545, %2507
  %2560 = phi float [ %2546, %2551 ], [ %2546, %2545 ], [ 0.000000e+00, %2507 ]
  %2561 = phi float [ %2547, %2551 ], [ %2547, %2545 ], [ 0.000000e+00, %2507 ]
  %2562 = phi float [ %2548, %2551 ], [ %2548, %2545 ], [ 0.000000e+00, %2507 ]
  %2563 = phi float [ %2558, %2551 ], [ 0x3F70101020000000, %2545 ], [ 0x3F70101020000000, %2507 ]
  %2564 = add i32 %49, 128
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = and i32 %2566, 255
  %2568 = uitofp i32 %2567 to float
  %2569 = lshr i32 %2566, 8
  %2570 = and i32 %2569, 255
  %2571 = uitofp i32 %2570 to float
  %2572 = call float @dx.op.dot3.f32(i32 55, float %2380, float %2381, float %2382, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2573 = fmul fast float %2571, %2572
  %2574 = fadd fast float %2573, %2568
  %2575 = fmul fast float %2574, 0x3F70101020000000
  %2576 = call float @dx.op.unary.f32(i32 7, float %2575)  ; Saturate(value)
  br i1 %1979, label %2577, label %2585

; <label>:2577                                    ; preds = %2559
  %2578 = fsub fast float 1.000000e+00, %2160
  %2579 = fmul fast float %2578, %1964
  %2580 = fmul fast float %2578, %1965
  %2581 = fmul fast float %2578, %1966
  %2582 = fmul fast float %2578, %1967
  %2583 = fmul fast float %2578, %1968
  %2584 = fmul fast float %2578, %1969
  br label %2585

; <label>:2585                                    ; preds = %2577, %2559
  %2586 = phi float [ %2579, %2577 ], [ %1964, %2559 ]
  %2587 = phi float [ %2580, %2577 ], [ %1965, %2559 ]
  %2588 = phi float [ %2581, %2577 ], [ %1966, %2559 ]
  %2589 = phi float [ %2582, %2577 ], [ %1967, %2559 ]
  %2590 = phi float [ %2583, %2577 ], [ %1968, %2559 ]
  %2591 = phi float [ %2584, %2577 ], [ %1969, %2559 ]
  %2592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %2593 = extractvalue %dx.types.ResRet.i32 %2592, 0
  %2594 = and i32 %2593, 3
  %2595 = icmp eq i32 %2594, 3
  br i1 %2595, label %2674, label %2596

; <label>:2596                                    ; preds = %2585
  %2597 = and i32 %2593, 16
  %2598 = icmp ne i32 %2597, 0
  %2599 = select i1 %2598, float %2160, float 0.000000e+00
  %2600 = icmp eq i32 %2594, 0
  br i1 %2600, label %2601, label %2629

; <label>:2601                                    ; preds = %2596
  %2602 = and i32 %2593, 64
  %2603 = icmp ne i32 %2602, 0
  %2604 = select i1 %2603, float %2160, float 0.000000e+00
  %2605 = fsub fast float %2380, %2586
  %2606 = fsub fast float %2381, %2587
  %2607 = fsub fast float %2382, %2588
  %2608 = fmul fast float %2599, %2605
  %2609 = fmul fast float %2599, %2606
  %2610 = fmul fast float %2599, %2607
  %2611 = fadd fast float %2608, %2586
  %2612 = fadd fast float %2609, %2587
  %2613 = fadd fast float %2610, %2588
  %2614 = fsub fast float %2366, %1973
  %2615 = fmul fast float %2599, %2614
  %2616 = fadd fast float %2615, %1973
  %2617 = fsub fast float %2508, %2589
  %2618 = fsub fast float %2509, %2590
  %2619 = fsub fast float %2510, %2591
  %2620 = fmul fast float %2604, %2617
  %2621 = fmul fast float %2604, %2618
  %2622 = fmul fast float %2604, %2619
  %2623 = fadd fast float %2620, %2589
  %2624 = fadd fast float %2621, %2590
  %2625 = fadd fast float %2622, %2591
  %2626 = fsub fast float %2576, %1977
  %2627 = fmul fast float %2599, %2626
  %2628 = fadd fast float %2627, %1977
  br label %2674

; <label>:2629                                    ; preds = %2596
  %2630 = icmp eq i32 %2594, 1
  br i1 %2630, label %2631, label %2644

; <label>:2631                                    ; preds = %2629
  %2632 = fadd fast float %2380, -1.000000e+00
  %2633 = fadd fast float %2381, -1.000000e+00
  %2634 = fadd fast float %2382, -1.000000e+00
  %2635 = fmul fast float %2599, %2632
  %2636 = fmul fast float %2599, %2633
  %2637 = fmul fast float %2599, %2634
  %2638 = fadd fast float %2635, 1.000000e+00
  %2639 = fadd fast float %2636, 1.000000e+00
  %2640 = fadd fast float %2637, 1.000000e+00
  %2641 = fmul fast float %2638, %2586
  %2642 = fmul fast float %2639, %2587
  %2643 = fmul fast float %2640, %2588
  br label %2674

; <label>:2644                                    ; preds = %2629
  %2645 = icmp eq i32 %2594, 2
  br i1 %2645, label %2646, label %2674

; <label>:2646                                    ; preds = %2644
  %2647 = call float @dx.op.unary.f32(i32 24, float %2380)  ; Sqrt(value)
  %2648 = call float @dx.op.unary.f32(i32 24, float %2381)  ; Sqrt(value)
  %2649 = call float @dx.op.unary.f32(i32 24, float %2382)  ; Sqrt(value)
  %2650 = fadd fast float %2647, -5.000000e-01
  %2651 = fadd fast float %2648, -5.000000e-01
  %2652 = fadd fast float %2649, -5.000000e-01
  %2653 = fmul fast float %2650, %2599
  %2654 = fmul fast float %2651, %2599
  %2655 = fmul fast float %2652, %2599
  %2656 = fadd fast float %2653, 5.000000e-01
  %2657 = fadd fast float %2654, 5.000000e-01
  %2658 = fadd fast float %2655, 5.000000e-01
  %2659 = fmul fast float %2656, 2.000000e+00
  %2660 = fsub fast float 1.000000e+00, %2659
  %2661 = fmul fast float %2660, %2586
  %2662 = fadd fast float %2661, %2659
  %2663 = fmul fast float %2662, %2586
  %2664 = fmul fast float %2657, 2.000000e+00
  %2665 = fsub fast float 1.000000e+00, %2664
  %2666 = fmul fast float %2665, %2587
  %2667 = fadd fast float %2666, %2664
  %2668 = fmul fast float %2667, %2587
  %2669 = fmul fast float %2658, 2.000000e+00
  %2670 = fsub fast float 1.000000e+00, %2669
  %2671 = fmul fast float %2670, %2588
  %2672 = fadd fast float %2671, %2669
  %2673 = fmul fast float %2672, %2588
  br label %2674

; <label>:2674                                    ; preds = %2646, %2644, %2631, %2601, %2585
  %2675 = phi float [ %2586, %2585 ], [ %2663, %2646 ], [ %2586, %2644 ], [ %2641, %2631 ], [ %2611, %2601 ]
  %2676 = phi float [ %2587, %2585 ], [ %2668, %2646 ], [ %2587, %2644 ], [ %2642, %2631 ], [ %2612, %2601 ]
  %2677 = phi float [ %2588, %2585 ], [ %2673, %2646 ], [ %2588, %2644 ], [ %2643, %2631 ], [ %2613, %2601 ]
  %2678 = phi float [ %2589, %2585 ], [ %2589, %2646 ], [ %2589, %2644 ], [ %2589, %2631 ], [ %2623, %2601 ]
  %2679 = phi float [ %2590, %2585 ], [ %2590, %2646 ], [ %2590, %2644 ], [ %2590, %2631 ], [ %2624, %2601 ]
  %2680 = phi float [ %2591, %2585 ], [ %2591, %2646 ], [ %2591, %2644 ], [ %2591, %2631 ], [ %2625, %2601 ]
  %2681 = phi float [ %1973, %2585 ], [ %1973, %2646 ], [ %1973, %2644 ], [ %1973, %2631 ], [ %2616, %2601 ]
  %2682 = phi float [ %1977, %2585 ], [ %1977, %2646 ], [ %1977, %2644 ], [ %1977, %2631 ], [ %2628, %2601 ]
  %2683 = and i32 %2593, 12
  %2684 = icmp eq i32 %2683, 12
  br i1 %2684, label %2791, label %2685

; <label>:2685                                    ; preds = %2674
  %2686 = and i32 %2593, 2097184
  %2687 = icmp eq i32 %2686, 2097184
  %2688 = select i1 %2687, float %2160, float 0.000000e+00
  %2689 = and i32 %2593, 4194336
  %2690 = icmp eq i32 %2689, 4194336
  %2691 = select i1 %2690, float %2160, float 0.000000e+00
  %2692 = and i32 %2593, 8388640
  %2693 = icmp eq i32 %2692, 8388640
  %2694 = select i1 %2693, float %2160, float 0.000000e+00
  %2695 = and i32 %2593, 2048
  %2696 = icmp ne i32 %2695, 0
  %2697 = select i1 %2696, float %2160, float 0.000000e+00
  %2698 = and i32 %2593, 8192
  %2699 = icmp ne i32 %2698, 0
  %2700 = select i1 %2699, float %2160, float 0.000000e+00
  %2701 = icmp eq i32 %2683, 0
  br i1 %2701, label %2702, label %2727

; <label>:2702                                    ; preds = %2685
  %2703 = fsub fast float %2461, %1962
  %2704 = fsub fast float %2462, %1963
  %2705 = fmul fast float %2688, %2703
  %2706 = fmul fast float %2688, %2704
  %2707 = fadd fast float %2705, %1962
  %2708 = fadd fast float %2706, %1963
  %2709 = fsub fast float %2463, %1975
  %2710 = fmul fast float %2691, %2709
  %2711 = fadd fast float %2710, %1975
  %2712 = fsub fast float %2460, %1974
  %2713 = fmul fast float %2694, %2712
  %2714 = fadd fast float %2713, %1974
  %2715 = fsub fast float %2563, %1976
  %2716 = fmul fast float %2697, %2715
  %2717 = fadd fast float %2716, %1976
  %2718 = fsub fast float %2560, %1970
  %2719 = fsub fast float %2561, %1971
  %2720 = fsub fast float %2562, %1972
  %2721 = fmul fast float %2700, %2718
  %2722 = fmul fast float %2700, %2719
  %2723 = fmul fast float %2700, %2720
  %2724 = fadd fast float %2721, %1970
  %2725 = fadd fast float %2722, %1971
  %2726 = fadd fast float %2723, %1972
  br label %2791

; <label>:2727                                    ; preds = %2685
  %2728 = icmp eq i32 %2683, 4
  br i1 %2728, label %2729, label %2769

; <label>:2729                                    ; preds = %2727
  %2730 = fmul fast float %2688, %2461
  %2731 = fmul fast float %2688, %2462
  %2732 = fadd fast float %2730, %1962
  %2733 = fadd fast float %2731, %1963
  %2734 = call float @dx.op.binary.f32(i32 36, float %1975, float %2463)  ; FMin(a,b)
  %2735 = fsub fast float %2734, %1975
  %2736 = fmul fast float %2735, %2691
  %2737 = fadd fast float %2736, %1975
  %2738 = fadd fast float %2460, %1974
  %2739 = fmul fast float %2738, 0x3FF337FAE0000000
  %2740 = fmul fast float %1974, %1974
  %2741 = fmul fast float %2460, %2460
  %2742 = fadd fast float %2741, %2740
  %2743 = fmul fast float %2742, 0x3FE5152B00000000
  %2744 = fmul fast float %1974, 0xBFCC1F85E0000000
  %2745 = fmul fast float %2744, %2460
  %2746 = fadd fast float %2745, 0xBFE1363700000000
  %2747 = fadd fast float %2746, %2739
  %2748 = fsub fast float %2747, %2743
  %2749 = fmul fast float %2738, 0x3FBA6F0D00000000
  %2750 = fmul fast float %2742, 0x3FD0432880000000
  %2751 = fmul fast float %1974, 0xBFEF110800000000
  %2752 = fmul fast float %2751, %2460
  %2753 = fadd fast float %2752, 1.000000e+00
  %2754 = fsub fast float %2753, %2749
  %2755 = fadd fast float %2754, %2750
  %2756 = fdiv fast float %2748, %2755
  %2757 = call float @dx.op.unary.f32(i32 7, float %2756)  ; Saturate(value)
  %2758 = fsub fast float %2757, %1974
  %2759 = fmul fast float %2758, %2694
  %2760 = fadd fast float %2759, %1974
  %2761 = fmul fast float %2697, %2563
  %2762 = fadd fast float %2761, %1976
  %2763 = fmul fast float %2700, %2560
  %2764 = fmul fast float %2700, %2561
  %2765 = fmul fast float %2700, %2562
  %2766 = fadd fast float %2763, %1970
  %2767 = fadd fast float %2764, %1971
  %2768 = fadd fast float %2765, %1972
  br label %2791

; <label>:2769                                    ; preds = %2727
  %2770 = icmp eq i32 %2683, 8
  br i1 %2770, label %2771, label %2791

; <label>:2771                                    ; preds = %2769
  %2772 = fmul fast float %2688, %2461
  %2773 = fmul fast float %2688, %2462
  %2774 = fadd fast float %2772, %1962
  %2775 = fadd fast float %2773, %1963
  %2776 = call float @dx.op.binary.f32(i32 36, float %1975, float %2463)  ; FMin(a,b)
  %2777 = fsub fast float %2776, %1975
  %2778 = fmul fast float %2777, %2691
  %2779 = fadd fast float %2778, %1975
  %2780 = fsub fast float %2460, %1974
  %2781 = fmul fast float %2694, %2780
  %2782 = fadd fast float %2781, %1974
  %2783 = fmul fast float %2697, %2563
  %2784 = fadd fast float %2783, %1976
  %2785 = fmul fast float %2700, %2560
  %2786 = fmul fast float %2700, %2561
  %2787 = fmul fast float %2700, %2562
  %2788 = fadd fast float %2785, %1970
  %2789 = fadd fast float %2786, %1971
  %2790 = fadd fast float %2787, %1972
  br label %2791

; <label>:2791                                    ; preds = %2771, %2769, %2729, %2702, %2674, %2159, %1978, %1961
  %2792 = phi float [ %1962, %2674 ], [ %1962, %2159 ], [ %1962, %1961 ], [ %2774, %2771 ], [ %1962, %2769 ], [ %2732, %2729 ], [ %2707, %2702 ], [ %1962, %1978 ]
  %2793 = phi float [ %1963, %2674 ], [ %1963, %2159 ], [ %1963, %1961 ], [ %2775, %2771 ], [ %1963, %2769 ], [ %2733, %2729 ], [ %2708, %2702 ], [ %1963, %1978 ]
  %2794 = phi float [ %2675, %2674 ], [ %1964, %2159 ], [ %1964, %1961 ], [ %2675, %2771 ], [ %2675, %2769 ], [ %2675, %2729 ], [ %2675, %2702 ], [ %1964, %1978 ]
  %2795 = phi float [ %2676, %2674 ], [ %1965, %2159 ], [ %1965, %1961 ], [ %2676, %2771 ], [ %2676, %2769 ], [ %2676, %2729 ], [ %2676, %2702 ], [ %1965, %1978 ]
  %2796 = phi float [ %2677, %2674 ], [ %1966, %2159 ], [ %1966, %1961 ], [ %2677, %2771 ], [ %2677, %2769 ], [ %2677, %2729 ], [ %2677, %2702 ], [ %1966, %1978 ]
  %2797 = phi float [ %2678, %2674 ], [ %1967, %2159 ], [ %1967, %1961 ], [ %2678, %2771 ], [ %2678, %2769 ], [ %2678, %2729 ], [ %2678, %2702 ], [ %1967, %1978 ]
  %2798 = phi float [ %2679, %2674 ], [ %1968, %2159 ], [ %1968, %1961 ], [ %2679, %2771 ], [ %2679, %2769 ], [ %2679, %2729 ], [ %2679, %2702 ], [ %1968, %1978 ]
  %2799 = phi float [ %2680, %2674 ], [ %1969, %2159 ], [ %1969, %1961 ], [ %2680, %2771 ], [ %2680, %2769 ], [ %2680, %2729 ], [ %2680, %2702 ], [ %1969, %1978 ]
  %2800 = phi float [ %1970, %2674 ], [ %1970, %2159 ], [ %1970, %1961 ], [ %2788, %2771 ], [ %1970, %2769 ], [ %2766, %2729 ], [ %2724, %2702 ], [ %1970, %1978 ]
  %2801 = phi float [ %1971, %2674 ], [ %1971, %2159 ], [ %1971, %1961 ], [ %2789, %2771 ], [ %1971, %2769 ], [ %2767, %2729 ], [ %2725, %2702 ], [ %1971, %1978 ]
  %2802 = phi float [ %1972, %2674 ], [ %1972, %2159 ], [ %1972, %1961 ], [ %2790, %2771 ], [ %1972, %2769 ], [ %2768, %2729 ], [ %2726, %2702 ], [ %1972, %1978 ]
  %2803 = phi float [ %2681, %2674 ], [ %1973, %2159 ], [ %1973, %1961 ], [ %2681, %2771 ], [ %2681, %2769 ], [ %2681, %2729 ], [ %2681, %2702 ], [ %1973, %1978 ]
  %2804 = phi float [ %1974, %2674 ], [ %1974, %2159 ], [ %1974, %1961 ], [ %2782, %2771 ], [ %1974, %2769 ], [ %2760, %2729 ], [ %2714, %2702 ], [ %1974, %1978 ]
  %2805 = phi float [ %1975, %2674 ], [ %1975, %2159 ], [ %1975, %1961 ], [ %2779, %2771 ], [ %1975, %2769 ], [ %2737, %2729 ], [ %2711, %2702 ], [ %1975, %1978 ]
  %2806 = phi float [ %1976, %2674 ], [ %1976, %2159 ], [ %1976, %1961 ], [ %2784, %2771 ], [ %1976, %2769 ], [ %2762, %2729 ], [ %2717, %2702 ], [ %1976, %1978 ]
  %2807 = phi float [ %2682, %2674 ], [ %1977, %2159 ], [ %1977, %1961 ], [ %2682, %2771 ], [ %2682, %2769 ], [ %2682, %2729 ], [ %2682, %2702 ], [ %1977, %1978 ]
  br i1 %480, label %3621, label %2808

; <label>:2808                                    ; preds = %2791
  %2809 = icmp ult i32 %534, 4
  %2810 = add i32 %49, 72
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = add i32 %49, 76
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = or i32 %2815, %2812
  %2817 = icmp eq i32 %2816, 0
  br i1 %2817, label %3621, label %2818

; <label>:2818                                    ; preds = %2808
  %2819 = and i32 %2812, 262144
  %2820 = icmp ne i32 %2819, 0
  %2821 = select i1 %2820, float %55, float 1.000000e+00
  %2822 = select i1 %2820, float %56, float 0.000000e+00
  %2823 = select i1 %2820, float %57, float 0.000000e+00
  %2824 = select i1 %2820, float %58, float 1.000000e+00
  %2825 = select i1 %2820, float %59, float %87
  %2826 = select i1 %2820, float %60, float %88
  %2827 = add i32 %49, 332
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = lshr i32 %2829, 16
  %2831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2830)  ; LegacyF16ToF32(value)
  %2832 = fmul fast float %2831, 0x3F50624DE0000000
  %2833 = add i32 %49, 136
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = lshr i32 %2835, 16
  %2837 = and i32 %2836, 255
  %2838 = lshr i32 %2835, 24
  %2839 = add i32 %49, 340
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = and i32 %2841, 65535
  %2843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2842)  ; LegacyF16ToF32(value)
  %2844 = lshr i32 %2841, 16
  %2845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2844)  ; LegacyF16ToF32(value)
  %2846 = add i32 %49, 80
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = lshr i32 %2848, 22
  %2850 = shl nuw nsw i32 %2849, 5
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = shl i32 %2848, 4
  %2853 = and i32 %2852, 32752
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = lshr i32 %2848, 7
  %2856 = and i32 %2855, 32752
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2859 = extractvalue %dx.types.CBufRet.f32 %2858, 3
  %2860 = fmul fast float %2859, 1.000000e+03
  %2861 = fmul fast float %470, %2860
  %2862 = call float @dx.op.unary.f32(i32 22, float %2861)  ; Frc(value)
  %2863 = fadd fast float %2862, %460
  %2864 = fmul fast float %471, %2860
  %2865 = call float @dx.op.unary.f32(i32 22, float %2864)  ; Frc(value)
  %2866 = fadd fast float %2865, %462
  %2867 = fmul fast float %2832, %2860
  %2868 = call float @dx.op.unary.f32(i32 22, float %2867)  ; Frc(value)
  %2869 = fmul fast float %2868, 0x401921FB60000000
  %2870 = fadd fast float %2869, %2851
  %2871 = call float @dx.op.unary.f32(i32 13, float %2870)  ; Sin(value)
  %2872 = call float @dx.op.unary.f32(i32 12, float %2870)  ; Cos(value)
  %2873 = fsub fast float -0.000000e+00, %2871
  %2874 = fadd fast float %2825, -5.000000e-01
  %2875 = fadd fast float %2826, -5.000000e-01
  %2876 = fmul fast float %2843, %2874
  %2877 = fmul fast float %2845, %2875
  %2878 = fadd fast float %2876, 5.000000e-01
  %2879 = fadd fast float %2877, 5.000000e-01
  %2880 = fmul fast float %2854, %2878
  %2881 = fmul fast float %2857, %2879
  %2882 = fmul fast float %2872, %2880
  %2883 = call float @dx.op.tertiary.f32(i32 46, float %2873, float %2881, float %2882)  ; FMad(a,b,c)
  %2884 = fmul fast float %2871, %2880
  %2885 = call float @dx.op.tertiary.f32(i32 46, float %2872, float %2881, float %2884)  ; FMad(a,b,c)
  %2886 = fadd fast float %2863, %2883
  %2887 = fadd fast float %2866, %2885
  %2888 = icmp ugt i32 %2837, 1
  %2889 = icmp ugt i32 %2835, 33554431
  %2890 = or i1 %2889, %2888
  br i1 %2890, label %2891, label %2916

; <label>:2891                                    ; preds = %2818
  %2892 = add i32 %49, 276
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2892, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = lshr i32 %2894, 16
  %2896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2895)  ; LegacyF16ToF32(value)
  %2897 = fmul fast float %2859, %2896
  %2898 = call float @dx.op.unary.f32(i32 22, float %2897)  ; Frc(value)
  %2899 = mul nuw nsw i32 %2837, %2838
  %2900 = uitofp i32 %2899 to float
  %2901 = fmul fast float %2898, %2900
  %2902 = call float @dx.op.unary.f32(i32 27, float %2901)  ; Round_ni(value)
  %2903 = fptoui float %2902 to i32
  %2904 = urem i32 %2903, %2837
  %2905 = udiv i32 %2903, %2838
  %2906 = call float @dx.op.unary.f32(i32 22, float %2886)  ; Frc(value)
  %2907 = call float @dx.op.unary.f32(i32 22, float %2887)  ; Frc(value)
  %2908 = uitofp i32 %2904 to float
  %2909 = uitofp i32 %2905 to float
  %2910 = fadd fast float %2906, %2908
  %2911 = fadd fast float %2907, %2909
  %2912 = uitofp i32 %2837 to float
  %2913 = uitofp i32 %2838 to float
  %2914 = fdiv fast float %2910, %2912
  %2915 = fdiv fast float %2911, %2913
  br label %2916

; <label>:2916                                    ; preds = %2891, %2818
  %2917 = phi float [ %2914, %2891 ], [ %2886, %2818 ]
  %2918 = phi float [ %2915, %2891 ], [ %2887, %2818 ]
  %2919 = and i32 %2812, 256
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %2967, label %2921

; <label>:2921                                    ; preds = %2916
  %2922 = add i32 %49, 500
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = add i32 %2924, 0
  %2926 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2925, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2927 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2926, %dx.types.Handle %106, float %2917, float %2918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2928 = extractvalue %dx.types.ResRet.f32 %2927, 0
  %2929 = add i32 %49, 148
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = shl i32 %2931, 4
  %2933 = and i32 %2932, 32752
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = lshr i32 %2931, 7
  %2936 = and i32 %2935, 32752
  %2937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2936)  ; LegacyF16ToF32(value)
  %2938 = fsub fast float 1.000000e+00, %529
  %2939 = call float @dx.op.binary.f32(i32 35, float %2938, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2940 = bitcast float %529 to i32
  %2941 = sitofp i32 %2940 to float
  %2942 = fadd fast float %2941, 0xC1CFBF8940000000
  %2943 = fmul fast float %2937, %2942
  %2944 = fadd fast float %2943, 0x41CFBF8940000000
  %2945 = fptosi float %2944 to i32
  %2946 = bitcast i32 %2945 to float
  %2947 = bitcast float %2939 to i32
  %2948 = sitofp i32 %2947 to float
  %2949 = fadd fast float %2948, 0xC1CFBF8940000000
  %2950 = fmul fast float %2949, %2937
  %2951 = fadd fast float %2950, 0x41CFBF8940000000
  %2952 = fptosi float %2951 to i32
  %2953 = bitcast i32 %2952 to float
  %2954 = fmul fast float %2946, %2934
  %2955 = fmul fast float %2953, %2934
  %2956 = fsub fast float %2939, %2954
  %2957 = fadd fast float %2955, %2939
  %2958 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2959 = call float @dx.op.unary.f32(i32 7, float %2957)  ; Saturate(value)
  %2960 = fsub fast float %2928, %2958
  %2961 = fsub fast float %2959, %2958
  %2962 = bitcast float %2961 to i32
  %2963 = sub nsw i32 2129859010, %2962
  %2964 = bitcast i32 %2963 to float
  %2965 = fmul fast float %2964, %2960
  %2966 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  br label %2967

; <label>:2967                                    ; preds = %2921, %2916
  %2968 = phi float [ %2966, %2921 ], [ %529, %2916 ]
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 128
  %2972 = icmp eq i32 %2971, 0
  br i1 %2972, label %2989, label %2973

; <label>:2973                                    ; preds = %2967
  %2974 = add i32 %49, 484
  %2975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2974, i32 undef)  ; BufferLoad(srv,index,wot)
  %2976 = extractvalue %dx.types.ResRet.i32 %2975, 0
  %2977 = add i32 %2976, 0
  %2978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2979 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2978, %dx.types.Handle %106, float %2917, float %2918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2982 = extractvalue %dx.types.ResRet.i32 %2981, 0
  %2983 = and i32 %2982, 524288
  %2984 = icmp ne i32 %2983, 0
  %2985 = fcmp fast ogt float %2980, 0x3FE0101020000000
  %2986 = select i1 %2985, float 1.000000e+00, float 0.000000e+00
  %2987 = select i1 %2984, float %2986, float %2980
  %2988 = fmul fast float %2987, %2968
  br label %2989

; <label>:2989                                    ; preds = %2973, %2967
  %2990 = phi float [ %2988, %2973 ], [ %2968, %2967 ]
  %2991 = fcmp fast ult float %2990, 0x3F70101020000000
  br i1 %2991, label %3621, label %2992

; <label>:2992                                    ; preds = %2989
  %2993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.i32 %2993, 0
  %2995 = and i32 %2994, 16
  %2996 = icmp eq i32 %2995, 0
  br i1 %2996, label %3195, label %2997

; <label>:2997                                    ; preds = %2992
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = add i32 %49, 436
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3000, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = add i32 %3002, 0
  %3004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3005 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3004, %dx.types.Handle %105, float %2917, float %2918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3006 = extractvalue %dx.types.ResRet.f32 %3005, 0
  %3007 = extractvalue %dx.types.ResRet.f32 %3005, 1
  %3008 = extractvalue %dx.types.ResRet.f32 %3005, 2
  %3009 = extractvalue %dx.types.ResRet.f32 %3005, 3
  %3010 = and i32 %2999, 255
  %3011 = uitofp i32 %3010 to float
  %3012 = lshr i32 %2999, 8
  %3013 = and i32 %3012, 255
  %3014 = uitofp i32 %3013 to float
  %3015 = fmul fast float %3009, %3011
  %3016 = fadd fast float %3015, %3014
  %3017 = fmul fast float %3016, 0x3F70101000000000
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = and i32 %3019, 512
  %3021 = icmp eq i32 %3020, 0
  br i1 %3021, label %3030, label %3022

; <label>:3022                                    ; preds = %2997
  %3023 = add i32 %49, 516
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3023, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = add i32 %3025, 0
  %3027 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3026, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3028 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3027, %dx.types.Handle %106, float %2917, float %2918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3029 = extractvalue %dx.types.ResRet.f32 %3028, 0
  br label %3030

; <label>:3030                                    ; preds = %3022, %2997
  %3031 = phi float [ %3029, %3022 ], [ 1.000000e+00, %2997 ]
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = and i32 %3033, 33554432
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3142, label %3036

; <label>:3036                                    ; preds = %3030
  %3037 = add i32 %49, 272
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = and i32 %3039, 65535
  %3041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3040)  ; LegacyF16ToF32(value)
  %3042 = lshr i32 %3039, 16
  %3043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3042)  ; LegacyF16ToF32(value)
  %3044 = add i32 %49, 276
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = and i32 %3046, 65535
  %3048 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3047)  ; LegacyF16ToF32(value)
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = lshr i32 %3050, 24
  %3052 = uitofp i32 %3051 to float
  %3053 = fmul fast float %3052, 0x3F70101020000000
  %3054 = and i32 %3050, 255
  %3055 = uitofp i32 %3054 to float
  %3056 = fmul fast float %3055, 0x3F70101020000000
  %3057 = lshr i32 %3050, 8
  %3058 = and i32 %3057, 255
  %3059 = uitofp i32 %3058 to float
  %3060 = fmul fast float %3059, 0x3F70101020000000
  %3061 = lshr i32 %3050, 16
  %3062 = and i32 %3061, 255
  %3063 = uitofp i32 %3062 to float
  %3064 = fmul fast float %3063, 0x3F70101020000000
  %3065 = add i32 %49, 268
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = lshr i32 %3067, 24
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3069, 0x3F70101020000000
  %3071 = and i32 %3067, 255
  %3072 = uitofp i32 %3071 to float
  %3073 = fmul fast float %3072, 0x3F70101020000000
  %3074 = lshr i32 %3067, 8
  %3075 = and i32 %3074, 255
  %3076 = uitofp i32 %3075 to float
  %3077 = fmul fast float %3076, 0x3F70101020000000
  %3078 = lshr i32 %3067, 16
  %3079 = and i32 %3078, 255
  %3080 = uitofp i32 %3079 to float
  %3081 = fmul fast float %3080, 0x3F70101020000000
  %3082 = bitcast float %3006 to i32
  %3083 = ashr i32 %3082, 1
  %3084 = sub nsw i32 1597463174, %3083
  %3085 = bitcast i32 %3084 to float
  %3086 = fmul fast float %3006, 5.000000e-01
  %3087 = fmul fast float %3085, %3085
  %3088 = fmul fast float %3087, %3086
  %3089 = fsub fast float 1.500000e+00, %3088
  %3090 = fmul fast float %3085, %3006
  %3091 = fmul fast float %3090, %3089
  %3092 = bitcast float %3007 to i32
  %3093 = ashr i32 %3092, 1
  %3094 = sub nsw i32 1597463174, %3093
  %3095 = bitcast i32 %3094 to float
  %3096 = fmul fast float %3007, 5.000000e-01
  %3097 = fmul fast float %3095, %3095
  %3098 = fmul fast float %3097, %3096
  %3099 = fsub fast float 1.500000e+00, %3098
  %3100 = fmul fast float %3095, %3007
  %3101 = fmul fast float %3100, %3099
  %3102 = bitcast float %3008 to i32
  %3103 = ashr i32 %3102, 1
  %3104 = sub nsw i32 1597463174, %3103
  %3105 = bitcast i32 %3104 to float
  %3106 = fmul fast float %3008, 5.000000e-01
  %3107 = fmul fast float %3105, %3105
  %3108 = fmul fast float %3107, %3106
  %3109 = fsub fast float 1.500000e+00, %3108
  %3110 = fmul fast float %3105, %3008
  %3111 = fmul fast float %3110, %3109
  %3112 = fsub fast float %3091, %3073
  %3113 = fsub fast float %3101, %3077
  %3114 = fsub fast float %3111, %3081
  %3115 = fmul fast float %3112, %3041
  %3116 = fmul fast float %3113, %3043
  %3117 = fmul fast float %3114, %3048
  %3118 = fadd fast float %3115, %3056
  %3119 = fadd fast float %3116, %3060
  %3120 = fadd fast float %3117, %3064
  %3121 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3122 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3123 = call float @dx.op.unary.f32(i32 7, float %3120)  ; Saturate(value)
  %3124 = fmul fast float %3121, %3121
  %3125 = fmul fast float %3122, %3122
  %3126 = fmul fast float %3123, %3123
  %3127 = fsub fast float %3124, %3006
  %3128 = fsub fast float %3125, %3007
  %3129 = fsub fast float %3126, %3008
  %3130 = fmul fast float %3127, %3031
  %3131 = fmul fast float %3128, %3031
  %3132 = fmul fast float %3129, %3031
  %3133 = fadd fast float %3130, %3006
  %3134 = fadd fast float %3131, %3007
  %3135 = fadd fast float %3132, %3008
  %3136 = fadd fast float %3053, %3017
  %3137 = fsub fast float %3136, %3070
  %3138 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3139 = fsub fast float %3138, %3017
  %3140 = fmul fast float %3139, %3031
  %3141 = fadd fast float %3140, %3017
  br label %3195

; <label>:3142                                    ; preds = %3030
  %3143 = and i32 %3033, 134217728
  %3144 = icmp eq i32 %3143, 0
  br i1 %3144, label %3179, label %3145

; <label>:3145                                    ; preds = %3142
  %3146 = call float @dx.op.unary.f32(i32 24, float %447)  ; Sqrt(value)
  %3147 = call float @dx.op.unary.f32(i32 24, float %451)  ; Sqrt(value)
  %3148 = call float @dx.op.unary.f32(i32 24, float %455)  ; Sqrt(value)
  %3149 = fadd fast float %3146, -5.000000e-01
  %3150 = fadd fast float %3147, -5.000000e-01
  %3151 = fadd fast float %3148, -5.000000e-01
  %3152 = fmul fast float %3149, %3031
  %3153 = fmul fast float %3150, %3031
  %3154 = fmul fast float %3151, %3031
  %3155 = fadd fast float %3152, 5.000000e-01
  %3156 = fadd fast float %3153, 5.000000e-01
  %3157 = fadd fast float %3154, 5.000000e-01
  %3158 = call float @dx.op.unary.f32(i32 24, float %3006)  ; Sqrt(value)
  %3159 = call float @dx.op.unary.f32(i32 24, float %3007)  ; Sqrt(value)
  %3160 = call float @dx.op.unary.f32(i32 24, float %3008)  ; Sqrt(value)
  %3161 = fmul fast float %3155, 2.000000e+00
  %3162 = fsub fast float 1.000000e+00, %3161
  %3163 = fmul fast float %3162, %3158
  %3164 = fadd fast float %3163, %3161
  %3165 = fmul fast float %3164, %3158
  %3166 = fmul fast float %3156, 2.000000e+00
  %3167 = fsub fast float 1.000000e+00, %3166
  %3168 = fmul fast float %3167, %3159
  %3169 = fadd fast float %3168, %3166
  %3170 = fmul fast float %3169, %3159
  %3171 = fmul fast float %3157, 2.000000e+00
  %3172 = fsub fast float 1.000000e+00, %3171
  %3173 = fmul fast float %3172, %3160
  %3174 = fadd fast float %3173, %3171
  %3175 = fmul fast float %3174, %3160
  %3176 = fmul fast float %3165, %3165
  %3177 = fmul fast float %3170, %3170
  %3178 = fmul fast float %3175, %3175
  br label %3195

; <label>:3179                                    ; preds = %3142
  %3180 = fmul fast float %447, %447
  %3181 = fmul fast float %451, %451
  %3182 = fmul fast float %455, %455
  %3183 = fadd fast float %3180, -1.000000e+00
  %3184 = fadd fast float %3181, -1.000000e+00
  %3185 = fadd fast float %3182, -1.000000e+00
  %3186 = fmul fast float %3031, %3183
  %3187 = fmul fast float %3031, %3184
  %3188 = fmul fast float %3031, %3185
  %3189 = fadd fast float %3186, 1.000000e+00
  %3190 = fadd fast float %3187, 1.000000e+00
  %3191 = fadd fast float %3188, 1.000000e+00
  %3192 = fmul fast float %3189, %3006
  %3193 = fmul fast float %3190, %3007
  %3194 = fmul fast float %3191, %3008
  br label %3195

; <label>:3195                                    ; preds = %3179, %3145, %3036, %2992
  %3196 = phi float [ %3141, %3036 ], [ %3017, %3145 ], [ %3017, %3179 ], [ 0x3FA23C0BE0000000, %2992 ]
  %3197 = phi float [ %3133, %3036 ], [ %3176, %3145 ], [ %3192, %3179 ], [ 1.000000e+00, %2992 ]
  %3198 = phi float [ %3134, %3036 ], [ %3177, %3145 ], [ %3193, %3179 ], [ 1.000000e+00, %2992 ]
  %3199 = phi float [ %3135, %3036 ], [ %3178, %3145 ], [ %3194, %3179 ], [ 1.000000e+00, %2992 ]
  %3200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.i32 %3200, 1
  %3202 = and i32 %3201, 1
  %3203 = icmp ne i32 %3202, 0
  %3204 = add i32 %49, 356
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = and i32 %3206, 32
  %3208 = icmp ne i32 %3207, 0
  %3209 = and i1 %3203, %3208
  %3210 = select i1 %3209, float 1.000000e+00, float %3197
  %3211 = select i1 %3209, float 0x3FD3333340000000, float %3198
  %3212 = select i1 %3209, float 0x3FD3333340000000, float %3199
  %3213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.i32 %3213, 0
  %3215 = and i32 %3214, 32
  %3216 = icmp eq i32 %3215, 0
  br i1 %3216, label %3289, label %3217

; <label>:3217                                    ; preds = %3195
  %3218 = add i32 %49, 140
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = add i32 %49, 452
  %3222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3221, i32 undef)  ; BufferLoad(srv,index,wot)
  %3223 = extractvalue %dx.types.ResRet.i32 %3222, 0
  %3224 = add i32 %3223, 0
  %3225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3225, %dx.types.Handle %105, float %2917, float %2918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3227 = extractvalue %dx.types.ResRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.ResRet.f32 %3226, 1
  %3229 = extractvalue %dx.types.ResRet.f32 %3226, 2
  %3230 = extractvalue %dx.types.ResRet.f32 %3226, 3
  %3231 = and i32 %3220, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = lshr i32 %3220, 8
  %3234 = and i32 %3233, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = lshr i32 %3220, 16
  %3237 = and i32 %3236, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = fmul fast float %3238, 0x3F70101000000000
  %3240 = fmul fast float %3227, %3232
  %3241 = fadd fast float %3240, %3235
  %3242 = fmul fast float %3241, 0x3F70101000000000
  %3243 = fadd fast float %3228, -5.000000e-01
  %3244 = fadd fast float %3230, -5.000000e-01
  %3245 = fmul fast float %3243, %3239
  %3246 = fmul fast float %3244, %3239
  %3247 = fadd fast float %3245, 5.000000e-01
  %3248 = fadd fast float %3246, 5.000000e-01
  %3249 = fmul fast float %3247, 2.000000e+00
  %3250 = fadd fast float %3249, -1.000000e+00
  %3251 = fmul fast float %3248, 2.000000e+00
  %3252 = fadd fast float %3251, -1.000000e+00
  %3253 = fadd fast float %3250, %3252
  %3254 = fmul fast float %3253, 5.000000e-01
  %3255 = fsub fast float %3250, %3252
  %3256 = fmul fast float %3255, 5.000000e-01
  %3257 = call float @dx.op.unary.f32(i32 6, float %3254)  ; FAbs(value)
  %3258 = fsub fast float 1.000000e+00, %3257
  %3259 = call float @dx.op.unary.f32(i32 6, float %3256)  ; FAbs(value)
  %3260 = fsub fast float %3258, %3259
  %3261 = call float @dx.op.dot3.f32(i32 55, float %3254, float %3256, float %3260, float %3254, float %3256, float %3260)  ; Dot3(ax,ay,az,bx,by,bz)
  %3262 = call float @dx.op.unary.f32(i32 25, float %3261)  ; Rsqrt(value)
  %3263 = fmul fast float %3254, %3262
  %3264 = fmul fast float %3256, %3262
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 67108864
  %3268 = icmp eq i32 %3267, 0
  br i1 %3268, label %3285, label %3269

; <label>:3269                                    ; preds = %3217
  %3270 = add i32 %49, 328
  %3271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3270, i32 undef)  ; BufferLoad(srv,index,wot)
  %3272 = extractvalue %dx.types.ResRet.i32 %3271, 0
  %3273 = and i32 %3272, 65535
  %3274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3273)  ; LegacyF16ToF32(value)
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 65535
  %3278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3277)  ; LegacyF16ToF32(value)
  %3279 = lshr i32 %3272, 16
  %3280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3279)  ; LegacyF16ToF32(value)
  %3281 = fsub fast float %3242, %3280
  %3282 = fmul fast float %3281, %3274
  %3283 = fadd fast float %3282, %3278
  %3284 = call float @dx.op.unary.f32(i32 7, float %3283)  ; Saturate(value)
  br label %3285

; <label>:3285                                    ; preds = %3269, %3217
  %3286 = phi float [ %3284, %3269 ], [ %3242, %3217 ]
  %3287 = call float @dx.op.dot2.f32(i32 54, float %3263, float %3264, float %2821, float %2822)  ; Dot2(ax,ay,bx,by)
  %3288 = call float @dx.op.dot2.f32(i32 54, float %3263, float %3264, float %2823, float %2824)  ; Dot2(ax,ay,bx,by)
  br label %3289

; <label>:3289                                    ; preds = %3285, %3195
  %3290 = phi float [ %3286, %3285 ], [ 0x3FD6666660000000, %3195 ]
  %3291 = phi float [ %3287, %3285 ], [ 0.000000e+00, %3195 ]
  %3292 = phi float [ %3288, %3285 ], [ 0.000000e+00, %3195 ]
  %3293 = phi float [ %3229, %3285 ], [ 1.000000e+00, %3195 ]
  %3294 = add i32 %49, 208
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = lshr i32 %3296, 22
  %3298 = shl nuw nsw i32 %3297, 5
  %3299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3298)  ; LegacyF16ToF32(value)
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 64
  %3303 = icmp eq i32 %3302, 0
  br i1 %3303, label %3337, label %3304

; <label>:3304                                    ; preds = %3289
  %3305 = add i32 %49, 468
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = add i32 %3307, 0
  %3309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 131072
  %3313 = icmp eq i32 %3312, 0
  %3314 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3309, %dx.types.Handle %105, float %2917, float %2918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3315 = extractvalue %dx.types.ResRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.ResRet.f32 %3314, 1
  %3317 = extractvalue %dx.types.ResRet.f32 %3314, 2
  %3318 = fmul fast float %3315, %435
  %3319 = fmul fast float %3316, %438
  %3320 = fmul fast float %3317, %441
  br i1 %3313, label %3327, label %3321

; <label>:3321                                    ; preds = %3304
  %3322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3323 = extractvalue %dx.types.CBufRet.f32 %3322, 0
  %3324 = fmul fast float %3323, %3318
  %3325 = fmul fast float %3323, %3319
  %3326 = fmul fast float %3323, %3320
  br label %3327

; <label>:3327                                    ; preds = %3321, %3304
  %3328 = phi float [ %3324, %3321 ], [ %3318, %3304 ]
  %3329 = phi float [ %3325, %3321 ], [ %3319, %3304 ]
  %3330 = phi float [ %3326, %3321 ], [ %3320, %3304 ]
  %3331 = fmul fast float %3328, %3299
  %3332 = select i1 %292, float %3331, float %3328
  %3333 = call float @dx.op.dot3.f32(i32 55, float %3332, float %3329, float %3330, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3334 = select i1 %292, float 0.000000e+00, float %3328
  %3335 = select i1 %292, float %3333, float %3329
  %3336 = select i1 %292, float 0.000000e+00, float %3330
  br label %3337

; <label>:3337                                    ; preds = %3327, %3289
  %3338 = phi float [ %3334, %3327 ], [ 0.000000e+00, %3289 ]
  %3339 = phi float [ %3335, %3327 ], [ 0.000000e+00, %3289 ]
  %3340 = phi float [ %3336, %3327 ], [ 0.000000e+00, %3289 ]
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = and i32 %3342, 10240
  %3344 = icmp eq i32 %3343, 0
  br i1 %3344, label %3389, label %3345

; <label>:3345                                    ; preds = %3337
  %3346 = add i32 %49, 532
  %3347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3346, i32 undef)  ; BufferLoad(srv,index,wot)
  %3348 = extractvalue %dx.types.ResRet.i32 %3347, 0
  %3349 = add i32 %3348, 0
  %3350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3350, %dx.types.Handle %106, float %2917, float %2918, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3352 = extractvalue %dx.types.ResRet.f32 %3351, 1
  %3353 = extractvalue %dx.types.ResRet.f32 %3351, 3
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = and i32 %3355, 1048576
  %3357 = icmp ne i32 %3356, 0
  %3358 = and i32 %3355, 8192
  %3359 = icmp eq i32 %3358, 0
  br i1 %3359, label %3375, label %3360

; <label>:3360                                    ; preds = %3345
  %3361 = extractvalue %dx.types.ResRet.f32 %3351, 2
  %3362 = select i1 %3357, float %3361, float %3352
  %3363 = extractvalue %dx.types.ResRet.f32 %3351, 0
  %3364 = select i1 %3357, float %3363, float %3352
  %3365 = add i32 %49, 144
  %3366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3365, i32 undef)  ; BufferLoad(srv,index,wot)
  %3367 = extractvalue %dx.types.ResRet.i32 %3366, 0
  %3368 = lshr i32 %3367, 16
  %3369 = and i32 %3368, 255
  %3370 = uitofp i32 %3369 to float
  %3371 = fmul fast float %3370, 0x3F80101020000000
  %3372 = fmul fast float %3371, %3364
  %3373 = fmul fast float %3371, %3352
  %3374 = fmul fast float %3371, %3362
  br label %3375

; <label>:3375                                    ; preds = %3360, %3345
  %3376 = phi float [ %3372, %3360 ], [ 0.000000e+00, %3345 ]
  %3377 = phi float [ %3373, %3360 ], [ 0.000000e+00, %3345 ]
  %3378 = phi float [ %3374, %3360 ], [ 0.000000e+00, %3345 ]
  %3379 = and i32 %3355, 2048
  %3380 = icmp eq i32 %3379, 0
  br i1 %3380, label %3389, label %3381

; <label>:3381                                    ; preds = %3375
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = shl i32 %3383, 4
  %3385 = and i32 %3384, 32752
  %3386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3385)  ; LegacyF16ToF32(value)
  %3387 = fmul fast float %3386, %3353
  %3388 = call float @dx.op.binary.f32(i32 35, float %3387, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3389

; <label>:3389                                    ; preds = %3381, %3375, %3337
  %3390 = phi float [ %3376, %3381 ], [ %3376, %3375 ], [ 0.000000e+00, %3337 ]
  %3391 = phi float [ %3377, %3381 ], [ %3377, %3375 ], [ 0.000000e+00, %3337 ]
  %3392 = phi float [ %3378, %3381 ], [ %3378, %3375 ], [ 0.000000e+00, %3337 ]
  %3393 = phi float [ %3388, %3381 ], [ 0x3F70101020000000, %3375 ], [ 0x3F70101020000000, %3337 ]
  %3394 = add i32 %49, 144
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3394, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 255
  %3398 = uitofp i32 %3397 to float
  %3399 = lshr i32 %3396, 8
  %3400 = and i32 %3399, 255
  %3401 = uitofp i32 %3400 to float
  %3402 = call float @dx.op.dot3.f32(i32 55, float %3210, float %3211, float %3212, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3403 = fmul fast float %3401, %3402
  %3404 = fadd fast float %3403, %3398
  %3405 = fmul fast float %3404, 0x3F70101020000000
  %3406 = call float @dx.op.unary.f32(i32 7, float %3405)  ; Saturate(value)
  br i1 %2809, label %3407, label %3415

; <label>:3407                                    ; preds = %3389
  %3408 = fsub fast float 1.000000e+00, %2990
  %3409 = fmul fast float %3408, %2794
  %3410 = fmul fast float %3408, %2795
  %3411 = fmul fast float %3408, %2796
  %3412 = fmul fast float %3408, %2797
  %3413 = fmul fast float %3408, %2798
  %3414 = fmul fast float %3408, %2799
  br label %3415

; <label>:3415                                    ; preds = %3407, %3389
  %3416 = phi float [ %3409, %3407 ], [ %2794, %3389 ]
  %3417 = phi float [ %3410, %3407 ], [ %2795, %3389 ]
  %3418 = phi float [ %3411, %3407 ], [ %2796, %3389 ]
  %3419 = phi float [ %3412, %3407 ], [ %2797, %3389 ]
  %3420 = phi float [ %3413, %3407 ], [ %2798, %3389 ]
  %3421 = phi float [ %3414, %3407 ], [ %2799, %3389 ]
  %3422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %3423 = extractvalue %dx.types.ResRet.i32 %3422, 0
  %3424 = and i32 %3423, 3
  %3425 = icmp eq i32 %3424, 3
  br i1 %3425, label %3504, label %3426

; <label>:3426                                    ; preds = %3415
  %3427 = and i32 %3423, 16
  %3428 = icmp ne i32 %3427, 0
  %3429 = select i1 %3428, float %2990, float 0.000000e+00
  %3430 = icmp eq i32 %3424, 0
  br i1 %3430, label %3431, label %3459

; <label>:3431                                    ; preds = %3426
  %3432 = and i32 %3423, 64
  %3433 = icmp ne i32 %3432, 0
  %3434 = select i1 %3433, float %2990, float 0.000000e+00
  %3435 = fsub fast float %3210, %3416
  %3436 = fsub fast float %3211, %3417
  %3437 = fsub fast float %3212, %3418
  %3438 = fmul fast float %3429, %3435
  %3439 = fmul fast float %3429, %3436
  %3440 = fmul fast float %3429, %3437
  %3441 = fadd fast float %3438, %3416
  %3442 = fadd fast float %3439, %3417
  %3443 = fadd fast float %3440, %3418
  %3444 = fsub fast float %3196, %2803
  %3445 = fmul fast float %3429, %3444
  %3446 = fadd fast float %3445, %2803
  %3447 = fsub fast float %3338, %3419
  %3448 = fsub fast float %3339, %3420
  %3449 = fsub fast float %3340, %3421
  %3450 = fmul fast float %3434, %3447
  %3451 = fmul fast float %3434, %3448
  %3452 = fmul fast float %3434, %3449
  %3453 = fadd fast float %3450, %3419
  %3454 = fadd fast float %3451, %3420
  %3455 = fadd fast float %3452, %3421
  %3456 = fsub fast float %3406, %2807
  %3457 = fmul fast float %3429, %3456
  %3458 = fadd fast float %3457, %2807
  br label %3504

; <label>:3459                                    ; preds = %3426
  %3460 = icmp eq i32 %3424, 1
  br i1 %3460, label %3461, label %3474

; <label>:3461                                    ; preds = %3459
  %3462 = fadd fast float %3210, -1.000000e+00
  %3463 = fadd fast float %3211, -1.000000e+00
  %3464 = fadd fast float %3212, -1.000000e+00
  %3465 = fmul fast float %3429, %3462
  %3466 = fmul fast float %3429, %3463
  %3467 = fmul fast float %3429, %3464
  %3468 = fadd fast float %3465, 1.000000e+00
  %3469 = fadd fast float %3466, 1.000000e+00
  %3470 = fadd fast float %3467, 1.000000e+00
  %3471 = fmul fast float %3468, %3416
  %3472 = fmul fast float %3469, %3417
  %3473 = fmul fast float %3470, %3418
  br label %3504

; <label>:3474                                    ; preds = %3459
  %3475 = icmp eq i32 %3424, 2
  br i1 %3475, label %3476, label %3504

; <label>:3476                                    ; preds = %3474
  %3477 = call float @dx.op.unary.f32(i32 24, float %3210)  ; Sqrt(value)
  %3478 = call float @dx.op.unary.f32(i32 24, float %3211)  ; Sqrt(value)
  %3479 = call float @dx.op.unary.f32(i32 24, float %3212)  ; Sqrt(value)
  %3480 = fadd fast float %3477, -5.000000e-01
  %3481 = fadd fast float %3478, -5.000000e-01
  %3482 = fadd fast float %3479, -5.000000e-01
  %3483 = fmul fast float %3480, %3429
  %3484 = fmul fast float %3481, %3429
  %3485 = fmul fast float %3482, %3429
  %3486 = fadd fast float %3483, 5.000000e-01
  %3487 = fadd fast float %3484, 5.000000e-01
  %3488 = fadd fast float %3485, 5.000000e-01
  %3489 = fmul fast float %3486, 2.000000e+00
  %3490 = fsub fast float 1.000000e+00, %3489
  %3491 = fmul fast float %3490, %3416
  %3492 = fadd fast float %3491, %3489
  %3493 = fmul fast float %3492, %3416
  %3494 = fmul fast float %3487, 2.000000e+00
  %3495 = fsub fast float 1.000000e+00, %3494
  %3496 = fmul fast float %3495, %3417
  %3497 = fadd fast float %3496, %3494
  %3498 = fmul fast float %3497, %3417
  %3499 = fmul fast float %3488, 2.000000e+00
  %3500 = fsub fast float 1.000000e+00, %3499
  %3501 = fmul fast float %3500, %3418
  %3502 = fadd fast float %3501, %3499
  %3503 = fmul fast float %3502, %3418
  br label %3504

; <label>:3504                                    ; preds = %3476, %3474, %3461, %3431, %3415
  %3505 = phi float [ %3416, %3415 ], [ %3493, %3476 ], [ %3416, %3474 ], [ %3471, %3461 ], [ %3441, %3431 ]
  %3506 = phi float [ %3417, %3415 ], [ %3498, %3476 ], [ %3417, %3474 ], [ %3472, %3461 ], [ %3442, %3431 ]
  %3507 = phi float [ %3418, %3415 ], [ %3503, %3476 ], [ %3418, %3474 ], [ %3473, %3461 ], [ %3443, %3431 ]
  %3508 = phi float [ %3419, %3415 ], [ %3419, %3476 ], [ %3419, %3474 ], [ %3419, %3461 ], [ %3453, %3431 ]
  %3509 = phi float [ %3420, %3415 ], [ %3420, %3476 ], [ %3420, %3474 ], [ %3420, %3461 ], [ %3454, %3431 ]
  %3510 = phi float [ %3421, %3415 ], [ %3421, %3476 ], [ %3421, %3474 ], [ %3421, %3461 ], [ %3455, %3431 ]
  %3511 = phi float [ %2803, %3415 ], [ %2803, %3476 ], [ %2803, %3474 ], [ %2803, %3461 ], [ %3446, %3431 ]
  %3512 = phi float [ %2807, %3415 ], [ %2807, %3476 ], [ %2807, %3474 ], [ %2807, %3461 ], [ %3458, %3431 ]
  %3513 = and i32 %3423, 12
  %3514 = icmp eq i32 %3513, 12
  br i1 %3514, label %3621, label %3515

; <label>:3515                                    ; preds = %3504
  %3516 = and i32 %3423, 2097184
  %3517 = icmp eq i32 %3516, 2097184
  %3518 = select i1 %3517, float %2990, float 0.000000e+00
  %3519 = and i32 %3423, 4194336
  %3520 = icmp eq i32 %3519, 4194336
  %3521 = select i1 %3520, float %2990, float 0.000000e+00
  %3522 = and i32 %3423, 8388640
  %3523 = icmp eq i32 %3522, 8388640
  %3524 = select i1 %3523, float %2990, float 0.000000e+00
  %3525 = and i32 %3423, 2048
  %3526 = icmp ne i32 %3525, 0
  %3527 = select i1 %3526, float %2990, float 0.000000e+00
  %3528 = and i32 %3423, 8192
  %3529 = icmp ne i32 %3528, 0
  %3530 = select i1 %3529, float %2990, float 0.000000e+00
  %3531 = icmp eq i32 %3513, 0
  br i1 %3531, label %3532, label %3557

; <label>:3532                                    ; preds = %3515
  %3533 = fsub fast float %3291, %2792
  %3534 = fsub fast float %3292, %2793
  %3535 = fmul fast float %3518, %3533
  %3536 = fmul fast float %3518, %3534
  %3537 = fadd fast float %3535, %2792
  %3538 = fadd fast float %3536, %2793
  %3539 = fsub fast float %3293, %2805
  %3540 = fmul fast float %3521, %3539
  %3541 = fadd fast float %3540, %2805
  %3542 = fsub fast float %3290, %2804
  %3543 = fmul fast float %3524, %3542
  %3544 = fadd fast float %3543, %2804
  %3545 = fsub fast float %3393, %2806
  %3546 = fmul fast float %3527, %3545
  %3547 = fadd fast float %3546, %2806
  %3548 = fsub fast float %3390, %2800
  %3549 = fsub fast float %3391, %2801
  %3550 = fsub fast float %3392, %2802
  %3551 = fmul fast float %3530, %3548
  %3552 = fmul fast float %3530, %3549
  %3553 = fmul fast float %3530, %3550
  %3554 = fadd fast float %3551, %2800
  %3555 = fadd fast float %3552, %2801
  %3556 = fadd fast float %3553, %2802
  br label %3621

; <label>:3557                                    ; preds = %3515
  %3558 = icmp eq i32 %3513, 4
  br i1 %3558, label %3559, label %3599

; <label>:3559                                    ; preds = %3557
  %3560 = fmul fast float %3518, %3291
  %3561 = fmul fast float %3518, %3292
  %3562 = fadd fast float %3560, %2792
  %3563 = fadd fast float %3561, %2793
  %3564 = call float @dx.op.binary.f32(i32 36, float %2805, float %3293)  ; FMin(a,b)
  %3565 = fsub fast float %3564, %2805
  %3566 = fmul fast float %3565, %3521
  %3567 = fadd fast float %3566, %2805
  %3568 = fadd fast float %3290, %2804
  %3569 = fmul fast float %3568, 0x3FF337FAE0000000
  %3570 = fmul fast float %2804, %2804
  %3571 = fmul fast float %3290, %3290
  %3572 = fadd fast float %3571, %3570
  %3573 = fmul fast float %3572, 0x3FE5152B00000000
  %3574 = fmul fast float %2804, 0xBFCC1F85E0000000
  %3575 = fmul fast float %3574, %3290
  %3576 = fadd fast float %3575, 0xBFE1363700000000
  %3577 = fadd fast float %3576, %3569
  %3578 = fsub fast float %3577, %3573
  %3579 = fmul fast float %3568, 0x3FBA6F0D00000000
  %3580 = fmul fast float %3572, 0x3FD0432880000000
  %3581 = fmul fast float %2804, 0xBFEF110800000000
  %3582 = fmul fast float %3581, %3290
  %3583 = fadd fast float %3582, 1.000000e+00
  %3584 = fsub fast float %3583, %3579
  %3585 = fadd fast float %3584, %3580
  %3586 = fdiv fast float %3578, %3585
  %3587 = call float @dx.op.unary.f32(i32 7, float %3586)  ; Saturate(value)
  %3588 = fsub fast float %3587, %2804
  %3589 = fmul fast float %3588, %3524
  %3590 = fadd fast float %3589, %2804
  %3591 = fmul fast float %3527, %3393
  %3592 = fadd fast float %3591, %2806
  %3593 = fmul fast float %3530, %3390
  %3594 = fmul fast float %3530, %3391
  %3595 = fmul fast float %3530, %3392
  %3596 = fadd fast float %3593, %2800
  %3597 = fadd fast float %3594, %2801
  %3598 = fadd fast float %3595, %2802
  br label %3621

; <label>:3599                                    ; preds = %3557
  %3600 = icmp eq i32 %3513, 8
  br i1 %3600, label %3601, label %3621

; <label>:3601                                    ; preds = %3599
  %3602 = fmul fast float %3518, %3291
  %3603 = fmul fast float %3518, %3292
  %3604 = fadd fast float %3602, %2792
  %3605 = fadd fast float %3603, %2793
  %3606 = call float @dx.op.binary.f32(i32 36, float %2805, float %3293)  ; FMin(a,b)
  %3607 = fsub fast float %3606, %2805
  %3608 = fmul fast float %3607, %3521
  %3609 = fadd fast float %3608, %2805
  %3610 = fsub fast float %3290, %2804
  %3611 = fmul fast float %3524, %3610
  %3612 = fadd fast float %3611, %2804
  %3613 = fmul fast float %3527, %3393
  %3614 = fadd fast float %3613, %2806
  %3615 = fmul fast float %3530, %3390
  %3616 = fmul fast float %3530, %3391
  %3617 = fmul fast float %3530, %3392
  %3618 = fadd fast float %3615, %2800
  %3619 = fadd fast float %3616, %2801
  %3620 = fadd fast float %3617, %2802
  br label %3621

; <label>:3621                                    ; preds = %3601, %3599, %3559, %3532, %3504, %2989, %2808, %2791
  %3622 = phi float [ %2792, %3504 ], [ %2792, %2989 ], [ %2792, %2791 ], [ %2792, %2808 ], [ %3537, %3532 ], [ %3562, %3559 ], [ %2792, %3599 ], [ %3604, %3601 ]
  %3623 = phi float [ %2793, %3504 ], [ %2793, %2989 ], [ %2793, %2791 ], [ %2793, %2808 ], [ %3538, %3532 ], [ %3563, %3559 ], [ %2793, %3599 ], [ %3605, %3601 ]
  %3624 = phi float [ %3505, %3504 ], [ %2794, %2989 ], [ %2794, %2791 ], [ %2794, %2808 ], [ %3505, %3532 ], [ %3505, %3559 ], [ %3505, %3599 ], [ %3505, %3601 ]
  %3625 = phi float [ %3506, %3504 ], [ %2795, %2989 ], [ %2795, %2791 ], [ %2795, %2808 ], [ %3506, %3532 ], [ %3506, %3559 ], [ %3506, %3599 ], [ %3506, %3601 ]
  %3626 = phi float [ %3507, %3504 ], [ %2796, %2989 ], [ %2796, %2791 ], [ %2796, %2808 ], [ %3507, %3532 ], [ %3507, %3559 ], [ %3507, %3599 ], [ %3507, %3601 ]
  %3627 = phi float [ %3508, %3504 ], [ %2797, %2989 ], [ %2797, %2791 ], [ %2797, %2808 ], [ %3508, %3532 ], [ %3508, %3559 ], [ %3508, %3599 ], [ %3508, %3601 ]
  %3628 = phi float [ %3509, %3504 ], [ %2798, %2989 ], [ %2798, %2791 ], [ %2798, %2808 ], [ %3509, %3532 ], [ %3509, %3559 ], [ %3509, %3599 ], [ %3509, %3601 ]
  %3629 = phi float [ %3510, %3504 ], [ %2799, %2989 ], [ %2799, %2791 ], [ %2799, %2808 ], [ %3510, %3532 ], [ %3510, %3559 ], [ %3510, %3599 ], [ %3510, %3601 ]
  %3630 = phi float [ %2800, %3504 ], [ %2800, %2989 ], [ %2800, %2791 ], [ %2800, %2808 ], [ %3554, %3532 ], [ %3596, %3559 ], [ %2800, %3599 ], [ %3618, %3601 ]
  %3631 = phi float [ %2801, %3504 ], [ %2801, %2989 ], [ %2801, %2791 ], [ %2801, %2808 ], [ %3555, %3532 ], [ %3597, %3559 ], [ %2801, %3599 ], [ %3619, %3601 ]
  %3632 = phi float [ %2802, %3504 ], [ %2802, %2989 ], [ %2802, %2791 ], [ %2802, %2808 ], [ %3556, %3532 ], [ %3598, %3559 ], [ %2802, %3599 ], [ %3620, %3601 ]
  %3633 = phi float [ %3511, %3504 ], [ %2803, %2989 ], [ %2803, %2791 ], [ %2803, %2808 ], [ %3511, %3532 ], [ %3511, %3559 ], [ %3511, %3599 ], [ %3511, %3601 ]
  %3634 = phi float [ %2804, %3504 ], [ %2804, %2989 ], [ %2804, %2791 ], [ %2804, %2808 ], [ %3544, %3532 ], [ %3590, %3559 ], [ %2804, %3599 ], [ %3612, %3601 ]
  %3635 = phi float [ %2805, %3504 ], [ %2805, %2989 ], [ %2805, %2791 ], [ %2805, %2808 ], [ %3541, %3532 ], [ %3567, %3559 ], [ %2805, %3599 ], [ %3609, %3601 ]
  %3636 = phi float [ %2806, %3504 ], [ %2806, %2989 ], [ %2806, %2791 ], [ %2806, %2808 ], [ %3547, %3532 ], [ %3592, %3559 ], [ %2806, %3599 ], [ %3614, %3601 ]
  %3637 = phi float [ %3512, %3504 ], [ %2807, %2989 ], [ %2807, %2791 ], [ %2807, %2808 ], [ %3512, %3532 ], [ %3512, %3559 ], [ %3512, %3599 ], [ %3512, %3601 ]
  %3638 = add i32 %49, 408
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = bitcast i32 %3640 to float
  %3642 = fcmp fast oge float %3641, 0.000000e+00
  %3643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3644 = extractvalue %dx.types.CBufRet.f32 %3643, 0
  %3645 = select i1 %3642, float %3641, float %3644
  %3646 = fadd fast float %3645, %201
  %3647 = and i32 %194, 65535
  %3648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3647)  ; LegacyF16ToF32(value)
  %3649 = lshr i32 %194, 16
  %3650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3649)  ; LegacyF16ToF32(value)
  %3651 = and i32 %195, 65535
  %3652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3651)  ; LegacyF16ToF32(value)
  %3653 = fmul fast float %3648, %3624
  %3654 = fmul fast float %3650, %3625
  %3655 = fmul fast float %3652, %3626
  %3656 = shl i32 %196, 4
  %3657 = and i32 %3656, 32752
  %3658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3657)  ; LegacyF16ToF32(value)
  %3659 = lshr i32 %196, 7
  %3660 = and i32 %3659, 32752
  %3661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3660)  ; LegacyF16ToF32(value)
  %3662 = lshr i32 %196, 22
  %3663 = shl nuw nsw i32 %3662, 5
  %3664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3663)  ; LegacyF16ToF32(value)
  %3665 = and i32 %197, 65535
  %3666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3665)  ; LegacyF16ToF32(value)
  %3667 = fmul fast float %3658, %3627
  %3668 = fmul fast float %3667, %3666
  %3669 = fmul fast float %3661, %3628
  %3670 = fmul fast float %3669, %3666
  %3671 = fmul fast float %3664, %3629
  %3672 = fmul fast float %3671, %3666
  %3673 = call float @dx.op.dot2.f32(i32 54, float %3622, float %3623, float %3622, float %3623)  ; Dot2(ax,ay,bx,by)
  %3674 = fmul fast float %3673, 0x3FE3333340000000
  %3675 = fsub fast float 1.000000e+00, %3674
  %3676 = call float @dx.op.dot3.f32(i32 55, float %3622, float %3623, float %3675, float %3622, float %3623, float %3675)  ; Dot3(ax,ay,az,bx,by,bz)
  %3677 = call float @dx.op.unary.f32(i32 25, float %3676)  ; Rsqrt(value)
  %3678 = fmul fast float %3677, %3622
  %3679 = fmul fast float %3677, %3623
  %3680 = fmul fast float %3675, %3677
  %3681 = fmul fast float %3680, %116
  %3682 = fmul fast float %3680, %117
  %3683 = fmul fast float %3680, %118
  %3684 = fmul fast float %3678, %80
  %3685 = fmul fast float %3678, %81
  %3686 = fmul fast float %3678, %82
  %3687 = fadd fast float %3681, %3684
  %3688 = fadd fast float %3682, %3685
  %3689 = fadd fast float %3683, %3686
  %3690 = fmul fast float %128, %3679
  %3691 = fmul fast float %129, %3679
  %3692 = fmul fast float %130, %3679
  %3693 = fadd fast float %3687, %3690
  %3694 = fadd fast float %3688, %3691
  %3695 = fadd fast float %3689, %3692
  %3696 = call float @dx.op.dot3.f32(i32 55, float %3693, float %3694, float %3695, float %3693, float %3694, float %3695)  ; Dot3(ax,ay,az,bx,by,bz)
  %3697 = call float @dx.op.unary.f32(i32 25, float %3696)  ; Rsqrt(value)
  %3698 = fmul fast float %3693, %3697
  %3699 = fmul fast float %3694, %3697
  %3700 = fmul fast float %3695, %3697
  %3701 = icmp eq i32 %51, 65535
  br i1 %3701, label %4269, label %3702

; <label>:3702                                    ; preds = %3621
  %3703 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %3704 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %3705 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %3706 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %3707 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %3708 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %3709 = fadd fast float %3703, %52
  %3710 = fadd fast float %3704, %53
  %3711 = fadd fast float %3705, %54
  %3712 = fadd fast float %3706, %52
  %3713 = fadd fast float %3707, %53
  %3714 = fadd fast float %3708, %54
  %3715 = mul i32 %51, 48
  %3716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3720 = add i32 %3715, 16
  %3721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.f32 %3721, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3721, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3721, 2
  %3725 = add i32 %3715, 32
  %3726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %3725, i32 undef)  ; BufferLoad(srv,index,wot)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.ResRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.ResRet.f32 %3726, 2
  %3730 = extractvalue %dx.types.ResRet.f32 %3726, 3
  %3731 = bitcast float %3730 to i32
  %3732 = fmul fast float %3717, %52
  %3733 = fmul fast float %3718, %53
  %3734 = fmul fast float %3719, %54
  %3735 = fsub fast float %3732, %3722
  %3736 = fsub fast float %3733, %3723
  %3737 = fsub fast float %3734, %3724
  %3738 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3739 = call float @dx.op.unary.f32(i32 7, float %3736)  ; Saturate(value)
  %3740 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3741 = fmul fast float %3738, %3727
  %3742 = fmul fast float %3739, %3728
  %3743 = fmul fast float %3740, %3729
  %3744 = fadd fast float %3727, -1.000000e+00
  %3745 = fadd fast float %3728, -1.000000e+00
  %3746 = fadd fast float %3729, -1.000000e+00
  %3747 = call float @dx.op.unary.f32(i32 27, float %3741)  ; Round_ni(value)
  %3748 = call float @dx.op.unary.f32(i32 27, float %3742)  ; Round_ni(value)
  %3749 = call float @dx.op.unary.f32(i32 27, float %3743)  ; Round_ni(value)
  %3750 = call float @dx.op.binary.f32(i32 36, float %3747, float %3744)  ; FMin(a,b)
  %3751 = call float @dx.op.binary.f32(i32 36, float %3748, float %3745)  ; FMin(a,b)
  %3752 = call float @dx.op.binary.f32(i32 36, float %3749, float %3746)  ; FMin(a,b)
  %3753 = fmul fast float %3752, %3728
  %3754 = fadd fast float %3753, %3751
  %3755 = fmul fast float %3754, %3727
  %3756 = fadd fast float %3755, %3750
  %3757 = fptosi float %3756 to i32
  %3758 = add nsw i32 %3757, %3731
  %3759 = shl nsw i32 %3758, 2
  %3760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.i32 %3760, 0
  %3762 = lshr i32 %3761, 16
  %3763 = icmp eq i32 %3762, 0
  br i1 %3763, label %4235, label %3764

; <label>:3764                                    ; preds = %3702
  br label %3765

; <label>:3765                                    ; preds = %3889, %3764
  %3766 = phi i32 [ %3791, %3889 ], [ %3762, %3764 ]
  %3767 = phi float [ %3890, %3889 ], [ 0.000000e+00, %3764 ]
  %3768 = phi float [ %3891, %3889 ], [ %3646, %3764 ]
  %3769 = phi float [ %3892, %3889 ], [ %3637, %3764 ]
  %3770 = phi float [ %3893, %3889 ], [ 0.000000e+00, %3764 ]
  %3771 = phi float [ %3894, %3889 ], [ 0.000000e+00, %3764 ]
  %3772 = phi float [ %3895, %3889 ], [ %3630, %3764 ]
  %3773 = phi float [ %3896, %3889 ], [ %3631, %3764 ]
  %3774 = phi float [ %3897, %3889 ], [ %3632, %3764 ]
  %3775 = phi float [ %3898, %3889 ], [ %3668, %3764 ]
  %3776 = phi float [ %3899, %3889 ], [ %3670, %3764 ]
  %3777 = phi float [ %3900, %3889 ], [ %3672, %3764 ]
  %3778 = phi float [ %3901, %3889 ], [ %3698, %3764 ]
  %3779 = phi float [ %3902, %3889 ], [ %3699, %3764 ]
  %3780 = phi float [ %3903, %3889 ], [ %3700, %3764 ]
  %3781 = phi float [ %3904, %3889 ], [ %3635, %3764 ]
  %3782 = phi float [ %3905, %3889 ], [ %3634, %3764 ]
  %3783 = phi float [ %3906, %3889 ], [ 0.000000e+00, %3764 ]
  %3784 = phi float [ %3907, %3889 ], [ %3633, %3764 ]
  %3785 = phi float [ %3908, %3889 ], [ %3653, %3764 ]
  %3786 = phi float [ %3909, %3889 ], [ %3654, %3764 ]
  %3787 = phi float [ %3910, %3889 ], [ %3655, %3764 ]
  %3788 = shl nuw nsw i32 %3766, 2
  %3789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.i32 %3789, 0
  %3791 = lshr i32 %3790, 16
  %3792 = shl i32 %3790, 8
  %3793 = and i32 %3792, 16776960
  %3794 = or i32 %3793, 48
  %3795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = or i32 %3793, 64
  %3800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3799, i32 undef)  ; BufferLoad(srv,index,wot)
  %3801 = extractvalue %dx.types.ResRet.i32 %3800, 0
  %3802 = extractvalue %dx.types.ResRet.i32 %3800, 1
  %3803 = or i32 %3793, 80
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3806 = extractvalue %dx.types.ResRet.f32 %3804, 3
  %3807 = or i32 %3793, 96
  %3808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = extractvalue %dx.types.ResRet.f32 %3808, 1
  %3811 = extractvalue %dx.types.ResRet.f32 %3808, 2
  %3812 = extractvalue %dx.types.ResRet.f32 %3808, 3
  %3813 = or i32 %3793, 112
  %3814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3816 = or i32 %3793, 128
  %3817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3816, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.f32 %3817, 0
  %3819 = extractvalue %dx.types.ResRet.f32 %3817, 1
  %3820 = extractvalue %dx.types.ResRet.f32 %3817, 2
  %3821 = extractvalue %dx.types.ResRet.f32 %3817, 3
  %3822 = or i32 %3793, 144
  %3823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3822, i32 undef)  ; BufferLoad(srv,index,wot)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 0
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 1
  %3826 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3827 = extractvalue %dx.types.ResRet.f32 %3823, 3
  %3828 = or i32 %3793, 160
  %3829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3830 = extractvalue %dx.types.ResRet.f32 %3829, 0
  %3831 = extractvalue %dx.types.ResRet.f32 %3829, 1
  %3832 = extractvalue %dx.types.ResRet.f32 %3829, 2
  %3833 = extractvalue %dx.types.ResRet.f32 %3829, 3
  %3834 = or i32 %3793, 192
  %3835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %3834, i32 undef)  ; BufferLoad(srv,index,wot)
  %3836 = extractvalue %dx.types.ResRet.i32 %3835, 0
  %3837 = or i32 %3793, 208
  %3838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3837, i32 undef)  ; BufferLoad(srv,index,wot)
  %3839 = extractvalue %dx.types.ResRet.f32 %3838, 0
  %3840 = or i32 %3793, 248
  %3841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3840, i32 undef)  ; BufferLoad(srv,index,wot)
  %3842 = extractvalue %dx.types.ResRet.f32 %3841, 0
  %3843 = extractvalue %dx.types.ResRet.f32 %3841, 1
  %3844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3793, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = extractvalue %dx.types.ResRet.f32 %3844, 2
  %3848 = extractvalue %dx.types.ResRet.f32 %3844, 3
  %3849 = call float @dx.op.dot4.f32(i32 56, float %3845, float %3846, float %3847, float %3848, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3850 = or i32 %3793, 16
  %3851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3852 = extractvalue %dx.types.ResRet.f32 %3851, 0
  %3853 = extractvalue %dx.types.ResRet.f32 %3851, 1
  %3854 = extractvalue %dx.types.ResRet.f32 %3851, 2
  %3855 = extractvalue %dx.types.ResRet.f32 %3851, 3
  %3856 = call float @dx.op.dot4.f32(i32 56, float %3852, float %3853, float %3854, float %3855, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3857 = or i32 %3793, 32
  %3858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %3857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3859 = extractvalue %dx.types.ResRet.f32 %3858, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3858, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3858, 2
  %3862 = extractvalue %dx.types.ResRet.f32 %3858, 3
  %3863 = call float @dx.op.dot4.f32(i32 56, float %3859, float %3860, float %3861, float %3862, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3864 = call float @dx.op.unary.f32(i32 27, float %3849)  ; Round_ni(value)
  %3865 = call float @dx.op.unary.f32(i32 6, float %3864)  ; FAbs(value)
  %3866 = call float @dx.op.unary.f32(i32 27, float %3856)  ; Round_ni(value)
  %3867 = call float @dx.op.unary.f32(i32 6, float %3866)  ; FAbs(value)
  %3868 = call float @dx.op.unary.f32(i32 6, float %3863)  ; FAbs(value)
  %3869 = call float @dx.op.unary.f32(i32 27, float %3868)  ; Round_ni(value)
  %3870 = fadd fast float %3867, %3865
  %3871 = fadd fast float %3870, %3869
  %3872 = fcmp fast oeq float %3871, 0.000000e+00
  %3873 = call float @dx.op.dot4.f32(i32 56, float %3845, float %3846, float %3847, float %3848, float %3709, float %3710, float %3711, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3874 = call float @dx.op.dot4.f32(i32 56, float %3852, float %3853, float %3854, float %3855, float %3709, float %3710, float %3711, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3875 = call float @dx.op.dot4.f32(i32 56, float %3845, float %3846, float %3847, float %3848, float %3712, float %3713, float %3714, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3876 = call float @dx.op.dot4.f32(i32 56, float %3852, float %3853, float %3854, float %3855, float %3712, float %3713, float %3714, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3877 = fsub fast float %3873, %3849
  %3878 = fsub fast float %3875, %3849
  %3879 = fsub fast float %3874, %3856
  %3880 = fsub fast float %3876, %3856
  %3881 = call float @dx.op.dot3.f32(i32 55, float %3796, float %3797, float %3798, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3883 = extractvalue %dx.types.CBufRet.f32 %3882, 2
  %3884 = fadd fast float %3883, %3881
  %3885 = call float @dx.op.unary.f32(i32 7, float %3884)  ; Saturate(value)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3882, 0
  %3887 = fcmp fast ogt float %3885, %3886
  %3888 = and i1 %3872, %3887
  br i1 %3888, label %3912, label %3889

; <label>:3889                                    ; preds = %4221, %3995, %3912, %3765
  %3890 = phi float [ %3767, %3912 ], [ %3998, %3995 ], [ %3998, %4221 ], [ %3767, %3765 ]
  %3891 = phi float [ %3768, %3912 ], [ %3768, %3995 ], [ %4197, %4221 ], [ %3768, %3765 ]
  %3892 = phi float [ %3769, %3912 ], [ %3769, %3995 ], [ %4195, %4221 ], [ %3769, %3765 ]
  %3893 = phi float [ %3770, %3912 ], [ %3770, %3995 ], [ %4122, %4221 ], [ %3770, %3765 ]
  %3894 = phi float [ %3771, %3912 ], [ %3771, %3995 ], [ %4120, %4221 ], [ %3771, %3765 ]
  %3895 = phi float [ %3772, %3912 ], [ %3772, %3995 ], [ %4165, %4221 ], [ %3772, %3765 ]
  %3896 = phi float [ %3773, %3912 ], [ %3773, %3995 ], [ %4166, %4221 ], [ %3773, %3765 ]
  %3897 = phi float [ %3774, %3912 ], [ %3774, %3995 ], [ %4167, %4221 ], [ %3774, %3765 ]
  %3898 = phi float [ %3775, %3912 ], [ %3775, %3995 ], [ %4231, %4221 ], [ %3775, %3765 ]
  %3899 = phi float [ %3776, %3912 ], [ %3776, %3995 ], [ %4232, %4221 ], [ %3776, %3765 ]
  %3900 = phi float [ %3777, %3912 ], [ %3777, %3995 ], [ %4233, %4221 ], [ %3777, %3765 ]
  %3901 = phi float [ %3778, %3912 ], [ %3778, %3995 ], [ %4101, %4221 ], [ %3778, %3765 ]
  %3902 = phi float [ %3779, %3912 ], [ %3779, %3995 ], [ %4102, %4221 ], [ %3779, %3765 ]
  %3903 = phi float [ %3780, %3912 ], [ %3780, %3995 ], [ %4103, %4221 ], [ %3780, %3765 ]
  %3904 = phi float [ %3781, %3912 ], [ %3781, %3995 ], [ %4175, %4221 ], [ %3781, %3765 ]
  %3905 = phi float [ %3782, %3912 ], [ %3782, %3995 ], [ %4172, %4221 ], [ %3782, %3765 ]
  %3906 = phi float [ %3783, %3912 ], [ %3783, %3995 ], [ %4169, %4221 ], [ %3783, %3765 ]
  %3907 = phi float [ %3784, %3912 ], [ %3784, %3995 ], [ %4118, %4221 ], [ %3784, %3765 ]
  %3908 = phi float [ %3785, %3912 ], [ %3785, %3995 ], [ %4113, %4221 ], [ %3785, %3765 ]
  %3909 = phi float [ %3786, %3912 ], [ %3786, %3995 ], [ %4114, %4221 ], [ %3786, %3765 ]
  %3910 = phi float [ %3787, %3912 ], [ %3787, %3995 ], [ %4115, %4221 ], [ %3787, %3765 ]
  %3911 = icmp eq i32 %3791, 0
  br i1 %3911, label %4234, label %3765

; <label>:3912                                    ; preds = %3765
  %3913 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3914 = extractvalue %dx.types.ResRet.f32 %3814, 3
  %3915 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3916 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3919 = extractvalue %dx.types.ResRet.i32 %3800, 3
  %3920 = extractvalue %dx.types.ResRet.i32 %3800, 2
  %3921 = bitcast float %3913 to i32
  %3922 = add i32 %3919, 0
  %3923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3922, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3925 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3923, %dx.types.Handle %3924, float %3849, float %3856, float undef, float undef, i32 0, i32 0, i32 undef, float %3877, float %3879, float undef, float %3878, float %3880, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = fmul fast float %3926, %3918
  %3928 = fadd fast float %3927, %3917
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = fmul fast float %3849, %3809
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3810, float %3856, float %3930)  ; FMad(a,b,c)
  %3932 = fadd fast float %3931, %3916
  %3933 = fmul fast float %3849, %3811
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3856, float %3933)  ; FMad(a,b,c)
  %3935 = fadd fast float %3934, %3915
  %3936 = fmul fast float %3877, %3809
  %3937 = call float @dx.op.tertiary.f32(i32 46, float %3810, float %3879, float %3936)  ; FMad(a,b,c)
  %3938 = fmul fast float %3877, %3811
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3879, float %3938)  ; FMad(a,b,c)
  %3940 = fmul fast float %3878, %3809
  %3941 = call float @dx.op.tertiary.f32(i32 46, float %3810, float %3880, float %3940)  ; FMad(a,b,c)
  %3942 = fmul fast float %3878, %3811
  %3943 = call float @dx.op.tertiary.f32(i32 46, float %3812, float %3880, float %3942)  ; FMad(a,b,c)
  %3944 = add i32 %3920, 0
  %3945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3944, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3946 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3945, %dx.types.Handle %3924, float %3932, float %3935, float undef, float undef, i32 0, i32 0, i32 undef, float %3937, float %3939, float undef, float %3941, float %3943, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = and i32 %3921, 1024
  %3949 = icmp ne i32 %3948, 0
  %3950 = fcmp fast ogt float %3947, 0x3FE0101020000000
  %3951 = uitofp i1 %3950 to float
  %3952 = select i1 %3949, float %3951, float %3947
  %3953 = and i32 %3921, 8192
  %3954 = icmp ne i32 %3953, 0
  %3955 = select i1 %3954, float %3914, float 1.000000e+00
  %3956 = fmul fast float %3849, 2.000000e+00
  %3957 = fadd fast float %3956, -1.000000e+00
  %3958 = call float @dx.op.unary.f32(i32 6, float %3957)  ; FAbs(value)
  %3959 = fmul fast float %3958, %3842
  %3960 = fsub fast float %3959, %3842
  %3961 = call float @dx.op.unary.f32(i32 7, float %3960)  ; Saturate(value)
  %3962 = fmul fast float %3856, 2.000000e+00
  %3963 = fadd fast float %3962, -1.000000e+00
  %3964 = call float @dx.op.unary.f32(i32 6, float %3963)  ; FAbs(value)
  %3965 = fmul fast float %3964, %3843
  %3966 = fsub fast float %3965, %3843
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = fmul fast float %3868, %3805
  %3969 = fsub fast float %3968, %3805
  %3970 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3971 = fmul fast float %3929, %3955
  %3972 = fmul fast float %3971, %3926
  %3973 = fmul fast float %3972, %3961
  %3974 = fmul fast float %3973, %3952
  %3975 = fmul fast float %3974, %3967
  %3976 = fmul fast float %3975, %3970
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3979 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3980 = fsub fast float %3885, %3979
  %3981 = fmul fast float %3980, %3978
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = fmul fast float %3976, %3806
  %3984 = fadd fast float %3976, %3806
  %3985 = fmul fast float %3984, %3815
  %3986 = fsub fast float %3985, %3815
  %3987 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %3988 = and i32 %3921, 128
  %3989 = icmp ne i32 %3988, 0
  %3990 = select i1 %3989, float %3987, float %3983
  %3991 = fmul fast float %3990, %3982
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = fcmp fast ugt float %3991, %3993
  br i1 %3994, label %3995, label %3889

; <label>:3995                                    ; preds = %3912
  %3996 = select i1 %3954, float %3991, float 0.000000e+00
  %3997 = fadd fast float %3996, %3767
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  br i1 %3954, label %3889, label %3999

; <label>:3999                                    ; preds = %3995
  %4000 = and i32 %3921, 4
  %4001 = and i32 %3921, 8
  %4002 = add i32 %3801, 0
  %4003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4002, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4005 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4003, %dx.types.Handle %4004, float %3932, float %3935, float undef, float undef, i32 0, i32 0, i32 undef, float %3937, float %3939, float undef, float %3941, float %3943, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4006 = extractvalue %dx.types.ResRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.ResRet.f32 %4005, 1
  %4008 = extractvalue %dx.types.ResRet.f32 %4005, 2
  %4009 = extractvalue %dx.types.ResRet.f32 %4005, 3
  %4010 = bitcast float %3827 to i32
  %4011 = and i32 %4010, 255
  %4012 = uitofp i32 %4011 to float
  %4013 = lshr i32 %4010, 8
  %4014 = and i32 %4013, 255
  %4015 = uitofp i32 %4014 to float
  %4016 = fmul fast float %4009, %4012
  %4017 = fadd fast float %4016, %4015
  %4018 = fmul fast float %4017, 0x3F70101000000000
  %4019 = add i32 %3802, 0
  %4020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4019, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4021 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4020, %dx.types.Handle %4004, float %3932, float %3935, float undef, float undef, i32 0, i32 0, i32 undef, float %3937, float %3939, float undef, float %3941, float %3943, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4022 = extractvalue %dx.types.ResRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.ResRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.ResRet.f32 %4021, 2
  %4025 = extractvalue %dx.types.ResRet.f32 %4021, 3
  %4026 = bitcast float %3821 to i32
  %4027 = and i32 %4026, 255
  %4028 = uitofp i32 %4027 to float
  %4029 = lshr i32 %4026, 8
  %4030 = and i32 %4029, 255
  %4031 = uitofp i32 %4030 to float
  %4032 = lshr i32 %4026, 16
  %4033 = and i32 %4032, 255
  %4034 = uitofp i32 %4033 to float
  %4035 = fmul fast float %4034, 0x3F70101000000000
  %4036 = fmul fast float %4022, %4028
  %4037 = fadd fast float %4036, %4031
  %4038 = fmul fast float %4037, 0x3F70101000000000
  %4039 = fadd fast float %4023, -5.000000e-01
  %4040 = fadd fast float %4025, -5.000000e-01
  %4041 = fmul fast float %4039, %4035
  %4042 = fmul fast float %4040, %4035
  %4043 = fadd fast float %4041, 5.000000e-01
  %4044 = fadd fast float %4042, 5.000000e-01
  %4045 = fmul fast float %4006, %3830
  %4046 = fmul fast float %4007, %3831
  %4047 = fmul fast float %4008, %3832
  %4048 = fmul fast float %4043, 2.000000e+00
  %4049 = fadd fast float %4048, -1.000000e+00
  %4050 = fmul fast float %4044, 2.000000e+00
  %4051 = fadd fast float %4050, -1.000000e+00
  %4052 = fadd fast float %4049, %4051
  %4053 = fmul fast float %4052, 5.000000e-01
  %4054 = fsub fast float %4049, %4051
  %4055 = fmul fast float %4054, 5.000000e-01
  %4056 = call float @dx.op.unary.f32(i32 6, float %4053)  ; FAbs(value)
  %4057 = fsub fast float 1.000000e+00, %4056
  %4058 = call float @dx.op.unary.f32(i32 6, float %4055)  ; FAbs(value)
  %4059 = fsub fast float %4057, %4058
  %4060 = call float @dx.op.dot3.f32(i32 55, float %4053, float %4055, float %4059, float %4053, float %4055, float %4059)  ; Dot3(ax,ay,az,bx,by,bz)
  %4061 = call float @dx.op.unary.f32(i32 25, float %4060)  ; Rsqrt(value)
  %4062 = fmul fast float %4053, %4061
  %4063 = fmul fast float %4055, %4061
  %4064 = fmul fast float %4061, %4059
  %4065 = fmul fast float %4064, %3796
  %4066 = fmul fast float %4064, %3797
  %4067 = fmul fast float %4064, %3798
  %4068 = fmul fast float %4062, %3818
  %4069 = fmul fast float %4062, %3819
  %4070 = fmul fast float %4062, %3820
  %4071 = fadd fast float %4068, %4065
  %4072 = fadd fast float %4069, %4066
  %4073 = fadd fast float %4070, %4067
  %4074 = fmul fast float %4063, %3824
  %4075 = fmul fast float %4063, %3825
  %4076 = fmul fast float %4063, %3826
  %4077 = fadd fast float %4071, %4074
  %4078 = fadd fast float %4072, %4075
  %4079 = fadd fast float %4073, %4076
  %4080 = call float @dx.op.dot3.f32(i32 55, float %4077, float %4078, float %4079, float %4077, float %4078, float %4079)  ; Dot3(ax,ay,az,bx,by,bz)
  %4081 = call float @dx.op.unary.f32(i32 25, float %4080)  ; Rsqrt(value)
  %4082 = fmul fast float %4077, %4081
  %4083 = fmul fast float %4078, %4081
  %4084 = fmul fast float %4079, %4081
  %4085 = icmp ne i32 %4001, 0
  %4086 = select i1 %4085, float 1.000000e+00, float 0.000000e+00
  %4087 = fmul fast float %3991, %4086
  %4088 = and i32 %3921, 1
  %4089 = icmp eq i32 %4088, 0
  br i1 %4089, label %4090, label %4094

; <label>:4090                                    ; preds = %3999
  %4091 = fsub fast float %4082, %3778
  %4092 = fsub fast float %4083, %3779
  %4093 = fsub fast float %4084, %3780
  br label %4094

; <label>:4094                                    ; preds = %4090, %3999
  %4095 = phi float [ %4091, %4090 ], [ %4082, %3999 ]
  %4096 = phi float [ %4092, %4090 ], [ %4083, %3999 ]
  %4097 = phi float [ %4093, %4090 ], [ %4084, %3999 ]
  %4098 = fmul float %4097, %4087
  %4099 = fmul float %4096, %4087
  %4100 = fmul float %4095, %4087
  %4101 = fadd fast float %4100, %3778
  %4102 = fadd fast float %4099, %3779
  %4103 = fadd fast float %4098, %3780
  %4104 = icmp ne i32 %4000, 0
  %4105 = select i1 %4104, float 1.000000e+00, float 0.000000e+00
  %4106 = fmul fast float %3991, %4105
  %4107 = fsub fast float %4045, %3785
  %4108 = fsub fast float %4046, %3786
  %4109 = fsub fast float %4047, %3787
  %4110 = fmul fast float %4107, %4106
  %4111 = fmul fast float %4108, %4106
  %4112 = fmul fast float %4109, %4106
  %4113 = fadd fast float %4110, %3785
  %4114 = fadd fast float %4111, %3786
  %4115 = fadd fast float %4112, %3787
  %4116 = fsub fast float %4018, %3784
  %4117 = fmul fast float %4116, %4106
  %4118 = fadd fast float %4117, %3784
  %4119 = fmul fast float %4106, %3771
  %4120 = fsub fast float %3771, %4119
  %4121 = fmul fast float %4106, %3770
  %4122 = fsub fast float %3770, %4121
  %4123 = bitcast float %3839 to i32
  %4124 = lshr i32 %4123, 16
  %4125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4124)  ; LegacyF16ToF32(value)
  %4126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.i32 %4126, 0
  %4128 = and i32 %4127, 1
  %4129 = icmp eq i32 %4128, 0
  br i1 %4129, label %4130, label %4155

; <label>:4130                                    ; preds = %4094
  %4131 = fadd fast float %4018, 0xBFB99999A0000000
  %4132 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4133 = fmul fast float %4132, 0x3FF1C71C80000000
  %4134 = fsub fast float 1.000000e+00, %4133
  %4135 = call float @dx.op.unary.f32(i32 7, float %4134)  ; Saturate(value)
  %4136 = fmul fast float %4135, %4045
  %4137 = fmul fast float %4135, %4046
  %4138 = fmul fast float %4135, %4047
  %4139 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4140 = call float @dx.op.unary.f32(i32 7, float %4137)  ; Saturate(value)
  %4141 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4142 = call float @dx.op.binary.f32(i32 35, float %4140, float %4141)  ; FMax(a,b)
  %4143 = call float @dx.op.binary.f32(i32 35, float %4139, float %4142)  ; FMax(a,b)
  %4144 = fcmp fast ogt float %4143, 0.000000e+00
  %4145 = bitcast float %4143 to i32
  %4146 = sub nsw i32 2129859010, %4145
  %4147 = bitcast i32 %4146 to float
  %4148 = select i1 %4144, float %4147, float 0.000000e+00
  %4149 = fmul fast float %4139, %4125
  %4150 = fmul fast float %4140, %4125
  %4151 = fmul fast float %4141, %4125
  %4152 = fmul fast float %4149, %4148
  %4153 = fmul fast float %4150, %4148
  %4154 = fmul fast float %4151, %4148
  br label %4155

; <label>:4155                                    ; preds = %4130, %4094
  %4156 = phi float [ %4125, %4094 ], [ %4152, %4130 ]
  %4157 = phi float [ %4125, %4094 ], [ %4153, %4130 ]
  %4158 = phi float [ %4125, %4094 ], [ %4154, %4130 ]
  %4159 = fsub fast float %4156, %3772
  %4160 = fsub fast float %4157, %3773
  %4161 = fsub fast float %4158, %3774
  %4162 = fmul fast float %4159, %4106
  %4163 = fmul fast float %4160, %4106
  %4164 = fmul fast float %4161, %4106
  %4165 = fadd fast float %4162, %3772
  %4166 = fadd fast float %4163, %3773
  %4167 = fadd fast float %4164, %3774
  %4168 = fadd fast float %3991, %3783
  %4169 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4170 = fsub fast float %4038, %3782
  %4171 = fmul fast float %4170, %4087
  %4172 = fadd fast float %4171, %3782
  %4173 = fsub fast float %4024, %3781
  %4174 = fmul fast float %4173, %4087
  %4175 = fadd fast float %4174, %3781
  %4176 = call float @dx.op.dot3.f32(i32 55, float %4045, float %4046, float %4047, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4180 = fmul fast float %4179, %4176
  %4181 = fadd fast float %4180, %4178
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = bitcast float %3833 to i32
  %4184 = and i32 %4183, 65535
  %4185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4184)  ; LegacyF16ToF32(value)
  %4186 = lshr i32 %4183, 16
  %4187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4186)  ; LegacyF16ToF32(value)
  %4188 = fcmp fast oge float %4185, 0.000000e+00
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = select i1 %4188, float %4185, float %4190
  %4192 = fadd fast float %4191, %4187
  %4193 = fsub fast float %4182, %3769
  %4194 = fmul fast float %4193, %3991
  %4195 = fadd fast float %4194, %3769
  %4196 = fmul fast float %4192, %3991
  %4197 = call float @dx.op.binary.f32(i32 35, float %3768, float %4196)  ; FMax(a,b)
  %4198 = and i32 %3921, 16
  %4199 = icmp eq i32 %4198, 0
  br i1 %4199, label %4221, label %4200

; <label>:4200                                    ; preds = %4155
  %4201 = add i32 %3836, 0
  %4202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4201, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4203 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4202, %dx.types.Handle %4004, float %3932, float %3935, float undef, float undef, i32 0, i32 0, i32 undef, float %3937, float %3939, float undef, float %3941, float %3943, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = extractvalue %dx.types.ResRet.f32 %4203, 1
  %4206 = extractvalue %dx.types.ResRet.f32 %4203, 2
  %4207 = and i32 %4123, 65535
  %4208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4207)  ; LegacyF16ToF32(value)
  %4209 = fmul fast float %4204, %3830
  %4210 = fmul fast float %4205, %3831
  %4211 = fmul fast float %4206, %3832
  %4212 = and i32 %3921, 16384
  %4213 = icmp ne i32 %4212, 0
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 0
  %4216 = select i1 %4213, float %4215, float 1.000000e+00
  %4217 = fmul fast float %4216, %4208
  %4218 = fmul fast float %4209, %4217
  %4219 = fmul fast float %4210, %4217
  %4220 = fmul fast float %4211, %4217
  br label %4221

; <label>:4221                                    ; preds = %4200, %4155
  %4222 = phi float [ %4218, %4200 ], [ 0.000000e+00, %4155 ]
  %4223 = phi float [ %4219, %4200 ], [ 0.000000e+00, %4155 ]
  %4224 = phi float [ %4220, %4200 ], [ 0.000000e+00, %4155 ]
  %4225 = fsub fast float %4222, %3775
  %4226 = fsub fast float %4223, %3776
  %4227 = fsub fast float %4224, %3777
  %4228 = fmul fast float %4225, %3991
  %4229 = fmul fast float %4226, %3991
  %4230 = fmul fast float %4227, %3991
  %4231 = fadd fast float %4228, %3775
  %4232 = fadd fast float %4229, %3776
  %4233 = fadd fast float %4230, %3777
  br label %3889

; <label>:4234                                    ; preds = %3889
  br label %4235

; <label>:4235                                    ; preds = %4234, %3702
  %4236 = phi float [ 0.000000e+00, %3702 ], [ %3890, %4234 ]
  %4237 = phi float [ %3646, %3702 ], [ %3891, %4234 ]
  %4238 = phi float [ %3637, %3702 ], [ %3892, %4234 ]
  %4239 = phi float [ 0.000000e+00, %3702 ], [ %3893, %4234 ]
  %4240 = phi float [ 0.000000e+00, %3702 ], [ %3894, %4234 ]
  %4241 = phi float [ %3630, %3702 ], [ %3895, %4234 ]
  %4242 = phi float [ %3631, %3702 ], [ %3896, %4234 ]
  %4243 = phi float [ %3632, %3702 ], [ %3897, %4234 ]
  %4244 = phi float [ %3668, %3702 ], [ %3898, %4234 ]
  %4245 = phi float [ %3670, %3702 ], [ %3899, %4234 ]
  %4246 = phi float [ %3672, %3702 ], [ %3900, %4234 ]
  %4247 = phi float [ %3698, %3702 ], [ %3901, %4234 ]
  %4248 = phi float [ %3699, %3702 ], [ %3902, %4234 ]
  %4249 = phi float [ %3700, %3702 ], [ %3903, %4234 ]
  %4250 = phi float [ %3635, %3702 ], [ %3904, %4234 ]
  %4251 = phi float [ %3634, %3702 ], [ %3905, %4234 ]
  %4252 = phi float [ 0.000000e+00, %3702 ], [ %3906, %4234 ]
  %4253 = phi float [ %3633, %3702 ], [ %3907, %4234 ]
  %4254 = phi float [ %3653, %3702 ], [ %3908, %4234 ]
  %4255 = phi float [ %3654, %3702 ], [ %3909, %4234 ]
  %4256 = phi float [ %3655, %3702 ], [ %3910, %4234 ]
  %4257 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %4247, float %4248, float %4249)  ; Dot3(ax,ay,az,bx,by,bz)
  %4258 = call float @dx.op.unary.f32(i32 25, float %4257)  ; Rsqrt(value)
  %4259 = fmul fast float %4258, %4247
  %4260 = fmul fast float %4258, %4248
  %4261 = fmul fast float %4258, %4249
  %4262 = fadd fast float %4252, %1143
  %4263 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4264 = call float @dx.op.dot3.f32(i32 55, float %4259, float %4260, float %4261, float %4259, float %4260, float %4261)  ; Dot3(ax,ay,az,bx,by,bz)
  %4265 = call float @dx.op.unary.f32(i32 25, float %4264)  ; Rsqrt(value)
  %4266 = fmul fast float %4265, %4259
  %4267 = fmul fast float %4265, %4260
  %4268 = fmul fast float %4265, %4261
  br label %4269

; <label>:4269                                    ; preds = %4235, %3621
  %4270 = phi float [ %4254, %4235 ], [ %3653, %3621 ]
  %4271 = phi float [ %4255, %4235 ], [ %3654, %3621 ]
  %4272 = phi float [ %4256, %4235 ], [ %3655, %3621 ]
  %4273 = phi float [ %4244, %4235 ], [ %3668, %3621 ]
  %4274 = phi float [ %4245, %4235 ], [ %3670, %3621 ]
  %4275 = phi float [ %4246, %4235 ], [ %3672, %3621 ]
  %4276 = phi float [ %4241, %4235 ], [ %3630, %3621 ]
  %4277 = phi float [ %4242, %4235 ], [ %3631, %3621 ]
  %4278 = phi float [ %4243, %4235 ], [ %3632, %3621 ]
  %4279 = phi float [ %4266, %4235 ], [ %3698, %3621 ]
  %4280 = phi float [ %4267, %4235 ], [ %3699, %3621 ]
  %4281 = phi float [ %4268, %4235 ], [ %3700, %3621 ]
  %4282 = phi float [ %4253, %4235 ], [ %3633, %3621 ]
  %4283 = phi float [ %4263, %4235 ], [ %1143, %3621 ]
  %4284 = phi float [ %4251, %4235 ], [ %3634, %3621 ]
  %4285 = phi float [ %4250, %4235 ], [ %3635, %3621 ]
  %4286 = phi float [ %4240, %4235 ], [ 0.000000e+00, %3621 ]
  %4287 = phi float [ %4239, %4235 ], [ 0.000000e+00, %3621 ]
  %4288 = phi float [ %4236, %4235 ], [ 0.000000e+00, %3621 ]
  %4289 = phi float [ %4237, %4235 ], [ %3646, %3621 ]
  %4290 = phi float [ %4238, %4235 ], [ %3637, %3621 ]
  %4291 = add i32 %49, 392
  %4292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %4293 = extractvalue %dx.types.ResRet.i32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.i32 %4292, 1
  %4295 = extractvalue %dx.types.ResRet.i32 %4292, 2
  %4296 = extractvalue %dx.types.ResRet.i32 %4292, 3
  %4297 = bitcast i32 %4293 to float
  %4298 = bitcast i32 %4294 to float
  %4299 = bitcast i32 %4295 to float
  %4300 = bitcast i32 %4296 to float
  %4301 = fsub fast float %4270, %4297
  %4302 = fsub fast float %4271, %4298
  %4303 = fsub fast float %4272, %4299
  %4304 = fmul fast float %4301, %233
  %4305 = fmul fast float %4302, %233
  %4306 = fmul fast float %4303, %233
  %4307 = fadd fast float %4304, %4297
  %4308 = fadd fast float %4305, %4298
  %4309 = fadd fast float %4306, %4299
  %4310 = fsub fast float %4283, %4300
  %4311 = fmul fast float %4310, %233
  %4312 = fadd fast float %4311, %4300
  %4313 = fadd fast float %4282, 0xBFB99999A0000000
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = fmul fast float %4314, 0x3FF1C71C80000000
  %4316 = call float @dx.op.binary.f32(i32 36, float %4282, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4317 = fsub fast float 1.000000e+00, %4315
  %4318 = call float @dx.op.unary.f32(i32 7, float %4317)  ; Saturate(value)
  %4319 = fmul fast float %4307, %4318
  %4320 = fmul fast float %4308, %4318
  %4321 = fmul fast float %4309, %4318
  %4322 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4323 = call float @dx.op.unary.f32(i32 7, float %4320)  ; Saturate(value)
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = fmul fast float %4307, %4315
  %4326 = fmul fast float %4308, %4315
  %4327 = fmul fast float %4309, %4315
  %4328 = fadd fast float %4325, %4316
  %4329 = fadd fast float %4326, %4316
  %4330 = fadd fast float %4327, %4316
  %4331 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4332 = call float @dx.op.unary.f32(i32 7, float %4329)  ; Saturate(value)
  %4333 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4334 = call float @dx.op.unary.f32(i32 7, float %4284)  ; Saturate(value)
  %4335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.i32 %4335, 0
  %4337 = and i32 %4336, 1
  %4338 = icmp eq i32 %4337, 0
  br i1 %4338, label %4353, label %4339

; <label>:4339                                    ; preds = %4269
  %4340 = call float @dx.op.binary.f32(i32 35, float %4323, float %4324)  ; FMax(a,b)
  %4341 = call float @dx.op.binary.f32(i32 35, float %4322, float %4340)  ; FMax(a,b)
  %4342 = fcmp fast ogt float %4341, 0.000000e+00
  %4343 = bitcast float %4341 to i32
  %4344 = sub nsw i32 2129859010, %4343
  %4345 = bitcast i32 %4344 to float
  %4346 = select i1 %4342, float %4345, float 0.000000e+00
  %4347 = fmul fast float %4322, %4276
  %4348 = fmul fast float %4323, %4277
  %4349 = fmul fast float %4324, %4278
  %4350 = fmul fast float %4347, %4346
  %4351 = fmul fast float %4348, %4346
  %4352 = fmul fast float %4349, %4346
  br label %4353

; <label>:4353                                    ; preds = %4339, %4269
  %4354 = phi float [ %4350, %4339 ], [ %4276, %4269 ]
  %4355 = phi float [ %4351, %4339 ], [ %4277, %4269 ]
  %4356 = phi float [ %4352, %4339 ], [ %4278, %4269 ]
  %4357 = fadd fast float %4322, 0xBFD51EB860000000
  %4358 = fadd fast float %4323, 0xBFD51EB860000000
  %4359 = fadd fast float %4324, 0xBFD51EB860000000
  %4360 = fmul fast float %4357, %4357
  %4361 = fmul fast float %4358, %4358
  %4362 = fmul fast float %4359, %4359
  %4363 = fmul fast float %4360, %4360
  %4364 = fmul fast float %4363, 1.000000e+02
  %4365 = fmul fast float %4361, %4361
  %4366 = fmul fast float %4365, 1.000000e+02
  %4367 = fmul fast float %4362, %4362
  %4368 = fmul fast float %4367, 1.000000e+02
  %4369 = fadd fast float %4364, 3.500000e+00
  %4370 = fadd fast float %4366, 3.500000e+00
  %4371 = fadd fast float %4368, 3.500000e+00
  %4372 = call float @dx.op.binary.f32(i32 35, float %4354, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4373 = call float @dx.op.binary.f32(i32 35, float %4355, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4374 = call float @dx.op.binary.f32(i32 35, float %4356, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4375 = fdiv fast float %4369, %4372
  %4376 = fdiv fast float %4370, %4373
  %4377 = fdiv fast float %4371, %4374
  %4378 = fmul fast float %3636, 0xBFF7154760000000
  %4379 = fmul fast float %4378, %4375
  %4380 = call float @dx.op.unary.f32(i32 21, float %4379)  ; Exp(value)
  %4381 = fmul fast float %4380, 2.500000e-01
  %4382 = fmul fast float %3636, 0xBFDEC709E0000000
  %4383 = fmul fast float %4382, %4375
  %4384 = call float @dx.op.unary.f32(i32 21, float %4383)  ; Exp(value)
  %4385 = fmul fast float %4384, 7.500000e-01
  %4386 = fmul fast float %4378, %4376
  %4387 = call float @dx.op.unary.f32(i32 21, float %4386)  ; Exp(value)
  %4388 = fmul fast float %4387, 2.500000e-01
  %4389 = fmul fast float %4382, %4376
  %4390 = call float @dx.op.unary.f32(i32 21, float %4389)  ; Exp(value)
  %4391 = fmul fast float %4390, 7.500000e-01
  %4392 = fmul fast float %4378, %4377
  %4393 = call float @dx.op.unary.f32(i32 21, float %4392)  ; Exp(value)
  %4394 = fmul fast float %4393, 2.500000e-01
  %4395 = fmul fast float %4382, %4377
  %4396 = call float @dx.op.unary.f32(i32 21, float %4395)  ; Exp(value)
  %4397 = fmul fast float %4396, 7.500000e-01
  %4398 = fadd fast float %4381, %4385
  %4399 = fadd fast float %4388, %4391
  %4400 = fadd fast float %4394, %4397
  %4401 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.i32 %4401, 3
  %4403 = and i32 %4402, 8
  %4404 = icmp ne i32 %4403, 0
  %4405 = call float @dx.op.binary.f32(i32 35, float %4322, float %4307)  ; FMax(a,b)
  %4406 = call float @dx.op.binary.f32(i32 35, float %4323, float %4307)  ; FMax(a,b)
  %4407 = call float @dx.op.binary.f32(i32 35, float %4324, float %4307)  ; FMax(a,b)
  %4408 = call float @dx.op.dot3.f32(i32 55, float %4322, float %4323, float %4324, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4409 = select i1 %292, float %4307, float %4322
  %4410 = select i1 %292, float %4408, float %4323
  %4411 = select i1 %292, float 1.000000e+00, float %4324
  %4412 = select i1 %4404, float %4405, float %4409
  %4413 = select i1 %4404, float %4406, float %4410
  %4414 = select i1 %4404, float %4407, float %4411
  %4415 = and i32 %268, 3
  %4416 = select i1 %262, i32 %4415, i32 0
  %4417 = icmp eq i32 %4416, 1
  br i1 %4417, label %4418, label %4494

; <label>:4418                                    ; preds = %4353
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 0
  %4421 = extractvalue %dx.types.CBufRet.f32 %4419, 1
  %4422 = fadd fast float %4420, %188
  %4423 = fadd fast float %4421, %189
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.f32 %4424, 1
  %4427 = fsub fast float %4422, %4425
  %4428 = fsub fast float %4423, %4426
  %4429 = fmul fast float %4427, %4427
  %4430 = fmul fast float %4428, %4428
  %4431 = fadd fast float %4429, %4430
  %4432 = call float @dx.op.unary.f32(i32 24, float %4431)  ; Sqrt(value)
  %4433 = extractvalue %dx.types.CBufRet.f32 %4424, 2
  %4434 = fcmp fast olt float %4432, %4433
  br i1 %4434, label %4435, label %4488

; <label>:4435                                    ; preds = %4418
  %4436 = extractvalue %dx.types.CBufRet.f32 %4419, 2
  %4437 = fadd fast float %4436, %190
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 0
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 0
  %4444 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4445 = extractvalue %dx.types.CBufRet.f32 %4440, 1
  %4446 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4447 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4448 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4449 = extractvalue %dx.types.CBufRet.f32 %4442, 3
  %4450 = fadd fast float %4447, %4422
  %4451 = fadd fast float %4448, %4423
  %4452 = fadd fast float %4437, %4449
  %4453 = fmul fast float %4450, %4439
  %4454 = call float @dx.op.tertiary.f32(i32 46, float %4451, float %4441, float %4453)  ; FMad(a,b,c)
  %4455 = call float @dx.op.tertiary.f32(i32 46, float %4452, float %4443, float %4454)  ; FMad(a,b,c)
  %4456 = fmul fast float %4450, %4444
  %4457 = call float @dx.op.tertiary.f32(i32 46, float %4451, float %4445, float %4456)  ; FMad(a,b,c)
  %4458 = call float @dx.op.tertiary.f32(i32 46, float %4452, float %4446, float %4457)  ; FMad(a,b,c)
  %4459 = fsub fast float %4455, %4447
  %4460 = fsub fast float %4458, %4448
  %4461 = fsub fast float %4459, %4425
  %4462 = fadd fast float %4461, %4433
  %4463 = fsub fast float %4460, %4426
  %4464 = fadd fast float %4463, %4433
  %4465 = extractvalue %dx.types.CBufRet.f32 %4424, 3
  %4466 = fmul fast float %4462, %4465
  %4467 = fmul fast float %4464, %4465
  %4468 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4469 = call float @dx.op.unary.f32(i32 7, float %4467)  ; Saturate(value)
  %4470 = fsub fast float 1.000000e+00, %4468
  %4471 = fsub fast float 1.000000e+00, %4469
  %4472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %43, float %4470, float %4471, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4473 = extractvalue %dx.types.ResRet.f32 %4472, 0
  %4474 = fcmp fast ugt float %4473, 0.000000e+00
  br i1 %4474, label %4475, label %4488

; <label>:4475                                    ; preds = %4435
  %4476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4477 = extractvalue %dx.types.CBufRet.f32 %4476, 2
  %4478 = fmul fast float %4477, %4473
  %4479 = extractvalue %dx.types.CBufRet.f32 %4476, 3
  %4480 = fadd fast float %4479, %4478
  %4481 = extractvalue %dx.types.CBufRet.f32 %4442, 2
  %4482 = fadd fast float %4480, %4449
  %4483 = fmul fast float %4455, %4443
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4458, float %4446, float %4483)  ; FMad(a,b,c)
  %4485 = call float @dx.op.tertiary.f32(i32 46, float %4482, float %4481, float %4484)  ; FMad(a,b,c)
  %4486 = fsub fast float %4485, %4449
  %4487 = fsub fast float %4486, %4436
  br label %4488

; <label>:4488                                    ; preds = %4475, %4435, %4418
  %4489 = phi i1 [ true, %4475 ], [ false, %4435 ], [ false, %4418 ]
  %4490 = phi float [ %4487, %4475 ], [ -1.310720e+05, %4435 ], [ -1.310720e+05, %4418 ]
  %4491 = fsub fast float %4490, %190
  %4492 = call float @dx.op.unary.f32(i32 7, float %4491)  ; Saturate(value)
  %4493 = select i1 %4489, float %4492, float 1.000000e+00
  br label %4494

; <label>:4494                                    ; preds = %4488, %4353
  %4495 = phi float [ %4493, %4488 ], [ 0.000000e+00, %4353 ]
  %4496 = icmp eq i32 %4416, 3
  %4497 = select i1 %4496, float 1.000000e+00, float %4495
  %4498 = call float @dx.op.binary.f32(i32 35, float %4288, float %4497)  ; FMax(a,b)
  %4499 = fcmp fast olt float %4497, 1.000000e+00
  %4500 = fcmp uge float %65, 0.000000e+00
  %4501 = and i1 %4500, %4499
  br i1 %4501, label %4502, label %4512

; <label>:4502                                    ; preds = %4494
  %4503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %41, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.ResRet.f32 %4503, 2
  %4507 = fadd fast float %4504, %4498
  %4508 = fcmp ule float %64, 0.000000e+00
  %4509 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = select i1 %4508, float %4509, float 1.000000e+00
  %4511 = fmul fast float %4510, %4506
  br label %4512

; <label>:4512                                    ; preds = %4502, %4494
  %4513 = phi float [ %4507, %4502 ], [ %4498, %4494 ]
  %4514 = phi float [ %4505, %4502 ], [ 0.000000e+00, %4494 ]
  %4515 = phi float [ %4511, %4502 ], [ 0.000000e+00, %4494 ]
  %4516 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4517 = call float @dx.op.unary.f32(i32 7, float %4514)  ; Saturate(value)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4519 = fcmp fast une float %4517, 0.000000e+00
  %4520 = fcmp fast une float %4518, 0.000000e+00
  %4521 = or i1 %4519, %4520
  br i1 %4521, label %4522, label %5081

; <label>:4522                                    ; preds = %4512
  br i1 %4519, label %4523, label %4796

; <label>:4523                                    ; preds = %4522
  %4524 = call float @dx.op.unary.f32(i32 23, float %4285)  ; Log(value)
  %4525 = fmul fast float %4524, 4.000000e+00
  %4526 = call float @dx.op.unary.f32(i32 21, float %4525)  ; Exp(value)
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = fmul fast float %4528, %52
  %4530 = fmul fast float %4528, %53
  %4531 = fmul fast float %4528, %54
  %4532 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4533 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4534 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4535 = call float @dx.op.unary.f32(i32 23, float %4532)  ; Log(value)
  %4536 = call float @dx.op.unary.f32(i32 23, float %4533)  ; Log(value)
  %4537 = call float @dx.op.unary.f32(i32 23, float %4534)  ; Log(value)
  %4538 = fmul fast float %4535, 4.000000e+00
  %4539 = fmul fast float %4536, 4.000000e+00
  %4540 = fmul fast float %4537, 4.000000e+00
  %4541 = call float @dx.op.unary.f32(i32 21, float %4538)  ; Exp(value)
  %4542 = call float @dx.op.unary.f32(i32 21, float %4539)  ; Exp(value)
  %4543 = call float @dx.op.unary.f32(i32 21, float %4540)  ; Exp(value)
  %4544 = fadd fast float %4542, %4541
  %4545 = fadd fast float %4544, %4543
  %4546 = fdiv fast float 1.000000e+00, %4545
  %4547 = fmul fast float %4546, %4541
  %4548 = fcmp fast ogt float %61, 0.000000e+00
  %4549 = fcmp fast ogt float %62, 0.000000e+00
  %4550 = fcmp fast ogt float %63, 0.000000e+00
  %4551 = fcmp fast olt float %61, 0.000000e+00
  %4552 = fcmp fast olt float %62, 0.000000e+00
  %4553 = fcmp fast olt float %63, 0.000000e+00
  %4554 = zext i1 %4548 to i32
  %4555 = zext i1 %4549 to i32
  %4556 = zext i1 %4550 to i32
  %4557 = zext i1 %4551 to i32
  %4558 = zext i1 %4552 to i32
  %4559 = zext i1 %4553 to i32
  %4560 = sub nsw i32 %4554, %4557
  %4561 = sub nsw i32 %4555, %4558
  %4562 = sub nsw i32 %4556, %4559
  %4563 = call float @dx.op.unary.f32(i32 83, float %4529)  ; DerivCoarseX(value)
  %4564 = call float @dx.op.unary.f32(i32 83, float %4530)  ; DerivCoarseX(value)
  %4565 = call float @dx.op.unary.f32(i32 83, float %4531)  ; DerivCoarseX(value)
  %4566 = call float @dx.op.unary.f32(i32 84, float %4529)  ; DerivCoarseY(value)
  %4567 = call float @dx.op.unary.f32(i32 84, float %4530)  ; DerivCoarseY(value)
  %4568 = call float @dx.op.unary.f32(i32 84, float %4531)  ; DerivCoarseY(value)
  %4569 = fcmp fast ole float %303, %4547
  %4570 = fmul fast float %4546, %4544
  %4571 = fcmp fast ole float %303, %4570
  %4572 = select i1 %4571, float %4531, float %4529
  %4573 = select i1 %4571, float %4529, float %4530
  %4574 = select i1 %4569, float %4530, float %4572
  %4575 = select i1 %4569, float %4531, float %4573
  %4576 = select i1 %4571, float %4565, float %4563
  %4577 = select i1 %4571, float %4563, float %4564
  %4578 = select i1 %4569, float %4564, float %4576
  %4579 = select i1 %4569, float %4565, float %4577
  %4580 = select i1 %4571, float %4568, float %4566
  %4581 = select i1 %4571, float %4566, float %4567
  %4582 = select i1 %4569, float %4567, float %4580
  %4583 = select i1 %4569, float %4568, float %4581
  %4584 = call float @dx.op.unary.f32(i32 27, float %4574)  ; Round_ni(value)
  %4585 = call float @dx.op.unary.f32(i32 27, float %4575)  ; Round_ni(value)
  %4586 = fptosi float %4584 to i32
  %4587 = fptosi float %4585 to i32
  %4588 = xor i32 %4587, %4586
  %4589 = sitofp i32 %4588 to float
  %4590 = fptosi float %4589 to i32
  %4591 = sitofp i32 %4590 to float
  %4592 = fmul fast float %4591, 0x3FE3C6EF40000000
  %4593 = frem fast float %4584, 2.560000e+02
  %4594 = frem fast float %4585, 2.560000e+02
  %4595 = fptoui float %4593 to i32
  %4596 = fptoui float %4594 to i32
  %4597 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4595, i32 %4596, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4598 = extractvalue %dx.types.ResRet.f32 %4597, 0
  %4599 = extractvalue %dx.types.ResRet.f32 %4597, 1
  %4600 = extractvalue %dx.types.ResRet.f32 %4597, 2
  %4601 = fadd fast float %4598, %4592
  %4602 = fadd fast float %4599, %4592
  %4603 = fadd fast float %4600, %4592
  %4604 = call float @dx.op.unary.f32(i32 22, float %4601)  ; Frc(value)
  %4605 = call float @dx.op.unary.f32(i32 22, float %4602)  ; Frc(value)
  %4606 = call float @dx.op.unary.f32(i32 22, float %4603)  ; Frc(value)
  %4607 = fmul fast float %4606, 0x401921FB60000000
  %4608 = call float @dx.op.unary.f32(i32 13, float %4607)  ; Sin(value)
  %4609 = call float @dx.op.unary.f32(i32 12, float %4607)  ; Cos(value)
  %4610 = fsub fast float -0.000000e+00, %4609
  %4611 = fmul fast float %4609, %4574
  %4612 = call float @dx.op.tertiary.f32(i32 46, float %4608, float %4575, float %4611)  ; FMad(a,b,c)
  %4613 = fmul fast float %4608, %4574
  %4614 = call float @dx.op.tertiary.f32(i32 46, float %4610, float %4575, float %4613)  ; FMad(a,b,c)
  %4615 = fadd fast float %4612, %4604
  %4616 = fadd fast float %4614, %4605
  %4617 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4618 = bitcast float %4617 to i32
  %4619 = icmp eq i32 %4618, 0
  br i1 %4619, label %4658, label %4620

; <label>:4620                                    ; preds = %4523
  %4621 = add i32 %4618, 0
  %4622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4623 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4622, %dx.types.Handle %106, float %4615, float %4616, float undef, float undef, i32 0, i32 0, i32 undef, float %4578, float %4579, float undef, float %4582, float %4583, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4624 = extractvalue %dx.types.ResRet.f32 %4623, 0
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4628 = fsub fast float 1.000000e+00, %4517
  %4629 = call float @dx.op.binary.f32(i32 35, float %4628, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4630 = bitcast float %4517 to i32
  %4631 = sitofp i32 %4630 to float
  %4632 = fadd fast float %4631, 0xC1CFBF8940000000
  %4633 = fmul fast float %4627, %4632
  %4634 = fadd fast float %4633, 0x41CFBF8940000000
  %4635 = fptosi float %4634 to i32
  %4636 = bitcast i32 %4635 to float
  %4637 = bitcast float %4629 to i32
  %4638 = sitofp i32 %4637 to float
  %4639 = fadd fast float %4638, 0xC1CFBF8940000000
  %4640 = fmul fast float %4639, %4627
  %4641 = fadd fast float %4640, 0x41CFBF8940000000
  %4642 = fptosi float %4641 to i32
  %4643 = bitcast i32 %4642 to float
  %4644 = fmul fast float %4636, %4626
  %4645 = fmul fast float %4643, %4626
  %4646 = fsub fast float %4629, %4644
  %4647 = fadd fast float %4645, %4629
  %4648 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4650 = fsub fast float %4624, %4648
  %4651 = fsub fast float %4649, %4648
  %4652 = bitcast float %4651 to i32
  %4653 = sub nsw i32 2129859010, %4652
  %4654 = bitcast i32 %4653 to float
  %4655 = fmul fast float %4654, %4650
  %4656 = call float @dx.op.unary.f32(i32 7, float %4655)  ; Saturate(value)
  %4657 = fcmp fast olt float %4656, 0x3F70101020000000
  br i1 %4657, label %4796, label %4658

; <label>:4658                                    ; preds = %4620, %4523
  %4659 = phi float [ %4656, %4620 ], [ %4517, %4523 ]
  %4660 = fmul fast float %4659, %4526
  %4661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4662 = extractvalue %dx.types.CBufRet.i32 %4661, 1
  %4663 = extractvalue %dx.types.CBufRet.i32 %4661, 0
  %4664 = add i32 %4663, 0
  %4665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4664, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4666 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4665, %dx.types.Handle %105, float %4615, float %4616, float undef, float undef, i32 0, i32 0, i32 undef, float %4578, float %4579, float undef, float %4582, float %4583, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4667 = extractvalue %dx.types.ResRet.f32 %4666, 0
  %4668 = extractvalue %dx.types.ResRet.f32 %4666, 1
  %4669 = extractvalue %dx.types.ResRet.f32 %4666, 2
  %4670 = extractvalue %dx.types.ResRet.f32 %4666, 3
  %4671 = and i32 %4662, 255
  %4672 = uitofp i32 %4671 to float
  %4673 = lshr i32 %4662, 8
  %4674 = and i32 %4673, 255
  %4675 = uitofp i32 %4674 to float
  %4676 = fmul fast float %4670, %4672
  %4677 = fadd fast float %4676, %4675
  %4678 = fmul fast float %4677, 0x3F70101000000000
  %4679 = fadd fast float %4678, 0xBFB99999A0000000
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = fmul fast float %4680, 0x3FF1C71C80000000
  %4682 = call float @dx.op.binary.f32(i32 36, float %4678, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4683 = fsub fast float 1.000000e+00, %4681
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4684, %4667
  %4686 = fmul fast float %4684, %4668
  %4687 = fmul fast float %4684, %4669
  %4688 = call float @dx.op.unary.f32(i32 7, float %4685)  ; Saturate(value)
  %4689 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4690 = call float @dx.op.unary.f32(i32 7, float %4687)  ; Saturate(value)
  %4691 = fmul fast float %4681, %4667
  %4692 = fmul fast float %4681, %4668
  %4693 = fmul fast float %4681, %4669
  %4694 = fadd fast float %4691, %4682
  %4695 = fadd fast float %4692, %4682
  %4696 = fadd fast float %4693, %4682
  %4697 = call float @dx.op.unary.f32(i32 7, float %4694)  ; Saturate(value)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %4701 = extractvalue %dx.types.CBufRet.i32 %4700, 3
  %4702 = extractvalue %dx.types.CBufRet.i32 %4700, 2
  %4703 = add i32 %4702, 0
  %4704 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4703, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4705 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4704, %dx.types.Handle %105, float %4615, float %4616, float undef, float undef, i32 0, i32 0, i32 undef, float %4578, float %4579, float undef, float %4582, float %4583, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = extractvalue %dx.types.ResRet.f32 %4705, 1
  %4708 = extractvalue %dx.types.ResRet.f32 %4705, 2
  %4709 = extractvalue %dx.types.ResRet.f32 %4705, 3
  %4710 = and i32 %4701, 255
  %4711 = uitofp i32 %4710 to float
  %4712 = lshr i32 %4701, 8
  %4713 = and i32 %4712, 255
  %4714 = uitofp i32 %4713 to float
  %4715 = lshr i32 %4701, 16
  %4716 = and i32 %4715, 255
  %4717 = uitofp i32 %4716 to float
  %4718 = fmul fast float %4717, 0x3F70101000000000
  %4719 = fmul fast float %4706, %4711
  %4720 = fadd fast float %4719, %4714
  %4721 = fmul fast float %4720, 0x3F70101000000000
  %4722 = fadd fast float %4707, -5.000000e-01
  %4723 = fadd fast float %4709, -5.000000e-01
  %4724 = fmul fast float %4722, %4718
  %4725 = fmul fast float %4723, %4718
  %4726 = fadd fast float %4724, 5.000000e-01
  %4727 = fadd fast float %4725, 5.000000e-01
  %4728 = fmul fast float %4726, 2.000000e+00
  %4729 = fadd fast float %4728, -1.000000e+00
  %4730 = fmul fast float %4727, 2.000000e+00
  %4731 = fadd fast float %4730, -1.000000e+00
  %4732 = fadd fast float %4729, %4731
  %4733 = fmul fast float %4732, 5.000000e-01
  %4734 = fsub fast float %4729, %4731
  %4735 = fmul fast float %4734, 5.000000e-01
  %4736 = call float @dx.op.unary.f32(i32 6, float %4733)  ; FAbs(value)
  %4737 = fsub fast float 1.000000e+00, %4736
  %4738 = call float @dx.op.unary.f32(i32 6, float %4735)  ; FAbs(value)
  %4739 = fsub fast float %4737, %4738
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4733, float %4735, float %4739, float %4733, float %4735, float %4739)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = call float @dx.op.unary.f32(i32 25, float %4740)  ; Rsqrt(value)
  %4742 = fmul fast float %4733, %4741
  %4743 = fmul fast float %4735, %4741
  %4744 = select i1 %4571, i32 %4561, i32 %4562
  %4745 = select i1 %4569, i32 %4560, i32 %4744
  %4746 = sitofp i32 %4745 to float
  %4747 = fmul fast float %4739, %4746
  %4748 = fmul fast float %4747, %4741
  %4749 = select i1 %4571, float %4748, float %4743
  %4750 = select i1 %4571, float %4743, float %4748
  %4751 = select i1 %4569, float %4748, float %4742
  %4752 = select i1 %4569, float %4743, float %4749
  %4753 = select i1 %4569, float %4742, float %4750
  %4754 = fsub fast float %4688, %4412
  %4755 = fsub fast float %4689, %4413
  %4756 = fsub fast float %4690, %4414
  %4757 = fmul fast float %4754, %4660
  %4758 = fmul fast float %4755, %4660
  %4759 = fmul fast float %4756, %4660
  %4760 = fadd fast float %4757, %4412
  %4761 = fadd fast float %4758, %4413
  %4762 = fadd fast float %4759, %4414
  %4763 = fsub fast float %4697, %4331
  %4764 = fsub fast float %4698, %4332
  %4765 = fsub fast float %4699, %4333
  %4766 = fmul fast float %4763, %4660
  %4767 = fmul fast float %4764, %4660
  %4768 = fmul fast float %4765, %4660
  %4769 = fadd fast float %4766, %4331
  %4770 = fadd fast float %4767, %4332
  %4771 = fadd fast float %4768, %4333
  %4772 = fadd fast float %4751, %4279
  %4773 = fadd fast float %4752, %4280
  %4774 = fadd fast float %4753, %4281
  %4775 = call float @dx.op.dot3.f32(i32 55, float %4772, float %4773, float %4774, float %4772, float %4773, float %4774)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = call float @dx.op.unary.f32(i32 25, float %4775)  ; Rsqrt(value)
  %4777 = fmul fast float %4772, %4776
  %4778 = fmul fast float %4773, %4776
  %4779 = fmul fast float %4774, %4776
  %4780 = fsub fast float %4777, %4279
  %4781 = fsub fast float %4778, %4280
  %4782 = fsub fast float %4779, %4281
  %4783 = fmul fast float %4780, %4660
  %4784 = fmul fast float %4781, %4660
  %4785 = fmul fast float %4782, %4660
  %4786 = fadd fast float %4783, %4279
  %4787 = fadd fast float %4784, %4280
  %4788 = fadd fast float %4785, %4281
  %4789 = call float @dx.op.binary.f32(i32 36, float %4285, float %4708)  ; FMin(a,b)
  %4790 = fsub fast float %4789, %4285
  %4791 = fmul fast float %4790, %4660
  %4792 = fadd fast float %4791, %4285
  %4793 = fsub fast float %4721, %4334
  %4794 = fmul fast float %4793, %4660
  %4795 = fadd fast float %4794, %4334
  br label %4796

; <label>:4796                                    ; preds = %4658, %4620, %4522
  %4797 = phi float [ %4760, %4658 ], [ %4412, %4620 ], [ %4412, %4522 ]
  %4798 = phi float [ %4761, %4658 ], [ %4413, %4620 ], [ %4413, %4522 ]
  %4799 = phi float [ %4762, %4658 ], [ %4414, %4620 ], [ %4414, %4522 ]
  %4800 = phi float [ %4769, %4658 ], [ %4331, %4620 ], [ %4331, %4522 ]
  %4801 = phi float [ %4770, %4658 ], [ %4332, %4620 ], [ %4332, %4522 ]
  %4802 = phi float [ %4771, %4658 ], [ %4333, %4620 ], [ %4333, %4522 ]
  %4803 = phi float [ %4786, %4658 ], [ %4279, %4620 ], [ %4279, %4522 ]
  %4804 = phi float [ %4787, %4658 ], [ %4280, %4620 ], [ %4280, %4522 ]
  %4805 = phi float [ %4788, %4658 ], [ %4281, %4620 ], [ %4281, %4522 ]
  %4806 = phi float [ %4795, %4658 ], [ %4334, %4620 ], [ %4334, %4522 ]
  %4807 = phi float [ %4792, %4658 ], [ %4285, %4620 ], [ %4285, %4522 ]
  br i1 %4520, label %4808, label %5081

; <label>:4808                                    ; preds = %4796
  %4809 = call float @dx.op.unary.f32(i32 23, float %4807)  ; Log(value)
  %4810 = fmul fast float %4809, 4.000000e+00
  %4811 = call float @dx.op.unary.f32(i32 21, float %4810)  ; Exp(value)
  %4812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.f32 %4812, 0
  %4814 = fmul fast float %4813, %52
  %4815 = fmul fast float %4813, %53
  %4816 = fmul fast float %4813, %54
  %4817 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4818 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4819 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4820 = call float @dx.op.unary.f32(i32 23, float %4817)  ; Log(value)
  %4821 = call float @dx.op.unary.f32(i32 23, float %4818)  ; Log(value)
  %4822 = call float @dx.op.unary.f32(i32 23, float %4819)  ; Log(value)
  %4823 = fmul fast float %4820, 4.000000e+00
  %4824 = fmul fast float %4821, 4.000000e+00
  %4825 = fmul fast float %4822, 4.000000e+00
  %4826 = call float @dx.op.unary.f32(i32 21, float %4823)  ; Exp(value)
  %4827 = call float @dx.op.unary.f32(i32 21, float %4824)  ; Exp(value)
  %4828 = call float @dx.op.unary.f32(i32 21, float %4825)  ; Exp(value)
  %4829 = fadd fast float %4827, %4826
  %4830 = fadd fast float %4829, %4828
  %4831 = fdiv fast float 1.000000e+00, %4830
  %4832 = fmul fast float %4831, %4826
  %4833 = fcmp fast ogt float %61, 0.000000e+00
  %4834 = fcmp fast ogt float %62, 0.000000e+00
  %4835 = fcmp fast ogt float %63, 0.000000e+00
  %4836 = fcmp fast olt float %61, 0.000000e+00
  %4837 = fcmp fast olt float %62, 0.000000e+00
  %4838 = fcmp fast olt float %63, 0.000000e+00
  %4839 = zext i1 %4833 to i32
  %4840 = zext i1 %4834 to i32
  %4841 = zext i1 %4835 to i32
  %4842 = zext i1 %4836 to i32
  %4843 = zext i1 %4837 to i32
  %4844 = zext i1 %4838 to i32
  %4845 = sub nsw i32 %4839, %4842
  %4846 = sub nsw i32 %4840, %4843
  %4847 = sub nsw i32 %4841, %4844
  %4848 = call float @dx.op.unary.f32(i32 83, float %4814)  ; DerivCoarseX(value)
  %4849 = call float @dx.op.unary.f32(i32 83, float %4815)  ; DerivCoarseX(value)
  %4850 = call float @dx.op.unary.f32(i32 83, float %4816)  ; DerivCoarseX(value)
  %4851 = call float @dx.op.unary.f32(i32 84, float %4814)  ; DerivCoarseY(value)
  %4852 = call float @dx.op.unary.f32(i32 84, float %4815)  ; DerivCoarseY(value)
  %4853 = call float @dx.op.unary.f32(i32 84, float %4816)  ; DerivCoarseY(value)
  %4854 = fcmp fast ole float %303, %4832
  %4855 = fmul fast float %4831, %4829
  %4856 = fcmp fast ole float %303, %4855
  %4857 = select i1 %4856, float %4816, float %4814
  %4858 = select i1 %4856, float %4814, float %4815
  %4859 = select i1 %4854, float %4815, float %4857
  %4860 = select i1 %4854, float %4816, float %4858
  %4861 = select i1 %4856, float %4850, float %4848
  %4862 = select i1 %4856, float %4848, float %4849
  %4863 = select i1 %4854, float %4849, float %4861
  %4864 = select i1 %4854, float %4850, float %4862
  %4865 = select i1 %4856, float %4853, float %4851
  %4866 = select i1 %4856, float %4851, float %4852
  %4867 = select i1 %4854, float %4852, float %4865
  %4868 = select i1 %4854, float %4853, float %4866
  %4869 = call float @dx.op.unary.f32(i32 27, float %4859)  ; Round_ni(value)
  %4870 = call float @dx.op.unary.f32(i32 27, float %4860)  ; Round_ni(value)
  %4871 = fptosi float %4869 to i32
  %4872 = fptosi float %4870 to i32
  %4873 = xor i32 %4872, %4871
  %4874 = sitofp i32 %4873 to float
  %4875 = fptosi float %4874 to i32
  %4876 = sitofp i32 %4875 to float
  %4877 = fmul fast float %4876, 0x3FE3C6EF40000000
  %4878 = frem fast float %4869, 2.560000e+02
  %4879 = frem fast float %4870, 2.560000e+02
  %4880 = fptoui float %4878 to i32
  %4881 = fptoui float %4879 to i32
  %4882 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4880, i32 %4881, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4883 = extractvalue %dx.types.ResRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.ResRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.ResRet.f32 %4882, 2
  %4886 = fadd fast float %4883, %4877
  %4887 = fadd fast float %4884, %4877
  %4888 = fadd fast float %4885, %4877
  %4889 = call float @dx.op.unary.f32(i32 22, float %4886)  ; Frc(value)
  %4890 = call float @dx.op.unary.f32(i32 22, float %4887)  ; Frc(value)
  %4891 = call float @dx.op.unary.f32(i32 22, float %4888)  ; Frc(value)
  %4892 = fmul fast float %4891, 0x401921FB60000000
  %4893 = call float @dx.op.unary.f32(i32 13, float %4892)  ; Sin(value)
  %4894 = call float @dx.op.unary.f32(i32 12, float %4892)  ; Cos(value)
  %4895 = fsub fast float -0.000000e+00, %4894
  %4896 = fmul fast float %4894, %4859
  %4897 = call float @dx.op.tertiary.f32(i32 46, float %4893, float %4860, float %4896)  ; FMad(a,b,c)
  %4898 = fmul fast float %4893, %4859
  %4899 = call float @dx.op.tertiary.f32(i32 46, float %4895, float %4860, float %4898)  ; FMad(a,b,c)
  %4900 = fadd fast float %4897, %4889
  %4901 = fadd fast float %4899, %4890
  %4902 = extractvalue %dx.types.CBufRet.f32 %4812, 3
  %4903 = bitcast float %4902 to i32
  %4904 = icmp eq i32 %4903, 0
  br i1 %4904, label %4943, label %4905

; <label>:4905                                    ; preds = %4808
  %4906 = add i32 %4903, 0
  %4907 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4906, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4908 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4907, %dx.types.Handle %106, float %4900, float %4901, float undef, float undef, i32 0, i32 0, i32 undef, float %4863, float %4864, float undef, float %4867, float %4868, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4909 = extractvalue %dx.types.ResRet.f32 %4908, 0
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4912 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4913 = fsub fast float 1.000000e+00, %4518
  %4914 = call float @dx.op.binary.f32(i32 35, float %4913, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4915 = bitcast float %4518 to i32
  %4916 = sitofp i32 %4915 to float
  %4917 = fadd fast float %4916, 0xC1CFBF8940000000
  %4918 = fmul fast float %4912, %4917
  %4919 = fadd fast float %4918, 0x41CFBF8940000000
  %4920 = fptosi float %4919 to i32
  %4921 = bitcast i32 %4920 to float
  %4922 = bitcast float %4914 to i32
  %4923 = sitofp i32 %4922 to float
  %4924 = fadd fast float %4923, 0xC1CFBF8940000000
  %4925 = fmul fast float %4924, %4912
  %4926 = fadd fast float %4925, 0x41CFBF8940000000
  %4927 = fptosi float %4926 to i32
  %4928 = bitcast i32 %4927 to float
  %4929 = fmul fast float %4921, %4911
  %4930 = fmul fast float %4928, %4911
  %4931 = fsub fast float %4914, %4929
  %4932 = fadd fast float %4930, %4914
  %4933 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4935 = fsub fast float %4909, %4933
  %4936 = fsub fast float %4934, %4933
  %4937 = bitcast float %4936 to i32
  %4938 = sub nsw i32 2129859010, %4937
  %4939 = bitcast i32 %4938 to float
  %4940 = fmul fast float %4939, %4935
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fcmp fast olt float %4941, 0x3F70101020000000
  br i1 %4942, label %5081, label %4943

; <label>:4943                                    ; preds = %4905, %4808
  %4944 = phi float [ %4941, %4905 ], [ %4518, %4808 ]
  %4945 = fmul fast float %4944, %4811
  %4946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.i32 %4946, 1
  %4948 = extractvalue %dx.types.CBufRet.i32 %4946, 0
  %4949 = add i32 %4948, 0
  %4950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4951 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4950, %dx.types.Handle %105, float %4900, float %4901, float undef, float undef, i32 0, i32 0, i32 undef, float %4863, float %4864, float undef, float %4867, float %4868, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4952 = extractvalue %dx.types.ResRet.f32 %4951, 0
  %4953 = extractvalue %dx.types.ResRet.f32 %4951, 1
  %4954 = extractvalue %dx.types.ResRet.f32 %4951, 2
  %4955 = extractvalue %dx.types.ResRet.f32 %4951, 3
  %4956 = and i32 %4947, 255
  %4957 = uitofp i32 %4956 to float
  %4958 = lshr i32 %4947, 8
  %4959 = and i32 %4958, 255
  %4960 = uitofp i32 %4959 to float
  %4961 = fmul fast float %4955, %4957
  %4962 = fadd fast float %4961, %4960
  %4963 = fmul fast float %4962, 0x3F70101000000000
  %4964 = fadd fast float %4963, 0xBFB99999A0000000
  %4965 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4966 = fmul fast float %4965, 0x3FF1C71C80000000
  %4967 = call float @dx.op.binary.f32(i32 36, float %4963, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4968 = fsub fast float 1.000000e+00, %4966
  %4969 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  %4970 = fmul fast float %4969, %4952
  %4971 = fmul fast float %4969, %4953
  %4972 = fmul fast float %4969, %4954
  %4973 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4974 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4975 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4976 = fmul fast float %4966, %4952
  %4977 = fmul fast float %4966, %4953
  %4978 = fmul fast float %4966, %4954
  %4979 = fadd fast float %4976, %4967
  %4980 = fadd fast float %4977, %4967
  %4981 = fadd fast float %4978, %4967
  %4982 = call float @dx.op.unary.f32(i32 7, float %4979)  ; Saturate(value)
  %4983 = call float @dx.op.unary.f32(i32 7, float %4980)  ; Saturate(value)
  %4984 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4985 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.i32 %4985, 3
  %4987 = extractvalue %dx.types.CBufRet.i32 %4985, 2
  %4988 = add i32 %4987, 0
  %4989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4988, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4989, %dx.types.Handle %105, float %4900, float %4901, float undef, float undef, i32 0, i32 0, i32 undef, float %4863, float %4864, float undef, float %4867, float %4868, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4991 = extractvalue %dx.types.ResRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.ResRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.ResRet.f32 %4990, 2
  %4994 = extractvalue %dx.types.ResRet.f32 %4990, 3
  %4995 = and i32 %4986, 255
  %4996 = uitofp i32 %4995 to float
  %4997 = lshr i32 %4986, 8
  %4998 = and i32 %4997, 255
  %4999 = uitofp i32 %4998 to float
  %5000 = lshr i32 %4986, 16
  %5001 = and i32 %5000, 255
  %5002 = uitofp i32 %5001 to float
  %5003 = fmul fast float %5002, 0x3F70101000000000
  %5004 = fmul fast float %4991, %4996
  %5005 = fadd fast float %5004, %4999
  %5006 = fmul fast float %5005, 0x3F70101000000000
  %5007 = fadd fast float %4992, -5.000000e-01
  %5008 = fadd fast float %4994, -5.000000e-01
  %5009 = fmul fast float %5007, %5003
  %5010 = fmul fast float %5008, %5003
  %5011 = fadd fast float %5009, 5.000000e-01
  %5012 = fadd fast float %5010, 5.000000e-01
  %5013 = fmul fast float %5011, 2.000000e+00
  %5014 = fadd fast float %5013, -1.000000e+00
  %5015 = fmul fast float %5012, 2.000000e+00
  %5016 = fadd fast float %5015, -1.000000e+00
  %5017 = fadd fast float %5014, %5016
  %5018 = fmul fast float %5017, 5.000000e-01
  %5019 = fsub fast float %5014, %5016
  %5020 = fmul fast float %5019, 5.000000e-01
  %5021 = call float @dx.op.unary.f32(i32 6, float %5018)  ; FAbs(value)
  %5022 = fsub fast float 1.000000e+00, %5021
  %5023 = call float @dx.op.unary.f32(i32 6, float %5020)  ; FAbs(value)
  %5024 = fsub fast float %5022, %5023
  %5025 = call float @dx.op.dot3.f32(i32 55, float %5018, float %5020, float %5024, float %5018, float %5020, float %5024)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.unary.f32(i32 25, float %5025)  ; Rsqrt(value)
  %5027 = fmul fast float %5018, %5026
  %5028 = fmul fast float %5020, %5026
  %5029 = select i1 %4856, i32 %4846, i32 %4847
  %5030 = select i1 %4854, i32 %4845, i32 %5029
  %5031 = sitofp i32 %5030 to float
  %5032 = fmul fast float %5024, %5031
  %5033 = fmul fast float %5032, %5026
  %5034 = select i1 %4856, float %5033, float %5028
  %5035 = select i1 %4856, float %5028, float %5033
  %5036 = select i1 %4854, float %5033, float %5027
  %5037 = select i1 %4854, float %5028, float %5034
  %5038 = select i1 %4854, float %5027, float %5035
  %5039 = fsub fast float %4973, %4797
  %5040 = fsub fast float %4974, %4798
  %5041 = fsub fast float %4975, %4799
  %5042 = fmul fast float %5039, %4945
  %5043 = fmul fast float %5040, %4945
  %5044 = fmul fast float %5041, %4945
  %5045 = fadd fast float %5042, %4797
  %5046 = fadd fast float %5043, %4798
  %5047 = fadd fast float %5044, %4799
  %5048 = fsub fast float %4982, %4800
  %5049 = fsub fast float %4983, %4801
  %5050 = fsub fast float %4984, %4802
  %5051 = fmul fast float %5048, %4945
  %5052 = fmul fast float %5049, %4945
  %5053 = fmul fast float %5050, %4945
  %5054 = fadd fast float %5051, %4800
  %5055 = fadd fast float %5052, %4801
  %5056 = fadd fast float %5053, %4802
  %5057 = fadd fast float %5036, %4803
  %5058 = fadd fast float %5037, %4804
  %5059 = fadd fast float %5038, %4805
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5057, float %5058, float %5059, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.unary.f32(i32 25, float %5060)  ; Rsqrt(value)
  %5062 = fmul fast float %5057, %5061
  %5063 = fmul fast float %5058, %5061
  %5064 = fmul fast float %5059, %5061
  %5065 = fsub fast float %5062, %4803
  %5066 = fsub fast float %5063, %4804
  %5067 = fsub fast float %5064, %4805
  %5068 = fmul fast float %5065, %4945
  %5069 = fmul fast float %5066, %4945
  %5070 = fmul fast float %5067, %4945
  %5071 = fadd fast float %5068, %4803
  %5072 = fadd fast float %5069, %4804
  %5073 = fadd fast float %5070, %4805
  %5074 = call float @dx.op.binary.f32(i32 36, float %4807, float %4993)  ; FMin(a,b)
  %5075 = fsub fast float %5074, %4807
  %5076 = fmul fast float %5075, %4945
  %5077 = fadd fast float %5076, %4807
  %5078 = fsub fast float %5006, %4806
  %5079 = fmul fast float %5078, %4945
  %5080 = fadd fast float %5079, %4806
  br label %5081

; <label>:5081                                    ; preds = %4943, %4905, %4796, %4512
  %5082 = phi float [ %5045, %4943 ], [ %4797, %4905 ], [ %4797, %4796 ], [ %4412, %4512 ]
  %5083 = phi float [ %5046, %4943 ], [ %4798, %4905 ], [ %4798, %4796 ], [ %4413, %4512 ]
  %5084 = phi float [ %5047, %4943 ], [ %4799, %4905 ], [ %4799, %4796 ], [ %4414, %4512 ]
  %5085 = phi float [ %5054, %4943 ], [ %4800, %4905 ], [ %4800, %4796 ], [ %4331, %4512 ]
  %5086 = phi float [ %5055, %4943 ], [ %4801, %4905 ], [ %4801, %4796 ], [ %4332, %4512 ]
  %5087 = phi float [ %5056, %4943 ], [ %4802, %4905 ], [ %4802, %4796 ], [ %4333, %4512 ]
  %5088 = phi float [ %5071, %4943 ], [ %4803, %4905 ], [ %4803, %4796 ], [ %4279, %4512 ]
  %5089 = phi float [ %5072, %4943 ], [ %4804, %4905 ], [ %4804, %4796 ], [ %4280, %4512 ]
  %5090 = phi float [ %5073, %4943 ], [ %4805, %4905 ], [ %4805, %4796 ], [ %4281, %4512 ]
  %5091 = phi float [ %5080, %4943 ], [ %4806, %4905 ], [ %4806, %4796 ], [ %4334, %4512 ]
  %5092 = phi float [ %5077, %4943 ], [ %4807, %4905 ], [ %4807, %4796 ], [ %4285, %4512 ]
  %5093 = fcmp fast une float %4516, 0.000000e+00
  %5094 = fsub fast float -0.000000e+00, %219
  %5095 = fsub fast float -0.000000e+00, %220
  %5096 = fsub fast float -0.000000e+00, %221
  br i1 %5093, label %5097, label %5258

; <label>:5097                                    ; preds = %5081
  %5098 = call float @dx.op.dot3.f32(i32 55, float %5094, float %5095, float %5096, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5099 = fmul fast float %4516, 2.500000e+00
  %5100 = call float @dx.op.unary.f32(i32 7, float %5099)  ; Saturate(value)
  %5101 = fmul fast float %4516, 0x4013FFFFE0000000
  %5102 = fadd fast float %5101, 0xBFFFFFFFE0000000
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = fmul fast float %4516, 0x4004000020000000
  %5105 = fadd fast float %5104, 0xBFF8000040000000
  %5106 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5107 = fmul fast float %4313, 1.000000e+01
  %5108 = call float @dx.op.unary.f32(i32 7, float %5107)  ; Saturate(value)
  %5109 = fmul fast float %5108, 2.000000e+00
  %5110 = fsub fast float 3.000000e+00, %5109
  %5111 = fmul fast float %5108, %5108
  %5112 = fmul fast float %5111, %5110
  %5113 = fsub fast float 1.000000e+00, %5112
  %5114 = fsub fast float 0x3FE3333340000000, %5091
  %5115 = fmul fast float %5114, 0x400AAAAAA0000000
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = fmul fast float %5113, %5116
  %5118 = fmul fast float %5082, 0x3FEA2B8620000000
  %5119 = fmul fast float %5083, 0x3FEA2B8620000000
  %5120 = fmul fast float %5084, 0x3FEA2B8620000000
  %5121 = fadd fast float %5118, 0x3FC81DFBA0000000
  %5122 = fmul fast float %5121, %5082
  %5123 = fadd fast float %5122, 0x3F910E6020000000
  %5124 = fadd fast float %5119, 0x3FC81DFBA0000000
  %5125 = fmul fast float %5124, %5083
  %5126 = fadd fast float %5125, 0x3F910E6020000000
  %5127 = fadd fast float %5120, 0x3FC81DFBA0000000
  %5128 = fmul fast float %5127, %5084
  %5129 = fadd fast float %5128, 0x3F910E6020000000
  %5130 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5131 = call float @dx.op.unary.f32(i32 7, float %5126)  ; Saturate(value)
  %5132 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5133 = fsub fast float %5130, %5082
  %5134 = fsub fast float %5131, %5083
  %5135 = fsub fast float %5132, %5084
  %5136 = fmul fast float %5133, %5100
  %5137 = fmul fast float %5136, %5117
  %5138 = fmul fast float %5134, %5100
  %5139 = fmul fast float %5138, %5117
  %5140 = fmul fast float %5135, %5100
  %5141 = fmul fast float %5140, %5117
  %5142 = fadd fast float %5137, %5082
  %5143 = fadd fast float %5139, %5083
  %5144 = fadd fast float %5141, %5084
  %5145 = fmul fast float %5092, %5092
  %5146 = fmul fast float %5145, %5145
  %5147 = fadd fast float %5103, 1.000000e+00
  %5148 = fsub fast float %5147, %5117
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5151 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5152 = fsub fast float 1.000000e+00, %5146
  %5153 = call float @dx.op.binary.f32(i32 36, float %5149, float %5152)  ; FMin(a,b)
  %5154 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5155 = call float @dx.op.binary.f32(i32 35, float %5153, float %5154)  ; FMax(a,b)
  %5156 = fadd fast float %5151, 0xBFE4CCCCC0000000
  %5157 = fmul fast float %5156, 0x4006DB6DA0000000
  %5158 = call float @dx.op.unary.f32(i32 7, float %5157)  ; Saturate(value)
  %5159 = fmul fast float %5158, 2.000000e+00
  %5160 = fsub fast float 3.000000e+00, %5159
  %5161 = bitcast float %5085 to i32
  %5162 = ashr i32 %5161, 1
  %5163 = add nsw i32 %5162, 532487669
  %5164 = bitcast i32 %5163 to float
  %5165 = fsub fast float 1.000000e+00, %5164
  %5166 = bitcast float %5165 to i32
  %5167 = sub nsw i32 2129859010, %5166
  %5168 = bitcast i32 %5167 to float
  %5169 = fmul fast float %5168, 2.000000e+00
  %5170 = bitcast float %5086 to i32
  %5171 = ashr i32 %5170, 1
  %5172 = add nsw i32 %5171, 532487669
  %5173 = bitcast i32 %5172 to float
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = bitcast float %5174 to i32
  %5176 = sub nsw i32 2129859010, %5175
  %5177 = bitcast i32 %5176 to float
  %5178 = fmul fast float %5177, 2.000000e+00
  %5179 = bitcast float %5087 to i32
  %5180 = ashr i32 %5179, 1
  %5181 = add nsw i32 %5180, 532487669
  %5182 = bitcast i32 %5181 to float
  %5183 = fsub fast float 1.000000e+00, %5182
  %5184 = bitcast float %5183 to i32
  %5185 = sub nsw i32 2129859010, %5184
  %5186 = bitcast i32 %5185 to float
  %5187 = fmul fast float %5186, 2.000000e+00
  %5188 = fsub fast float 0x4002A9FBE0000000, %5169
  %5189 = fadd fast float %5169, 0x3FD54FDF00000000
  %5190 = bitcast float %5189 to i32
  %5191 = sub nsw i32 2129859010, %5190
  %5192 = bitcast i32 %5191 to float
  %5193 = fmul fast float %5192, %5188
  %5194 = fmul fast float %5193, %5193
  %5195 = fsub fast float 0x4002A9FBE0000000, %5178
  %5196 = fadd fast float %5178, 0x3FD54FDF00000000
  %5197 = bitcast float %5196 to i32
  %5198 = sub nsw i32 2129859010, %5197
  %5199 = bitcast i32 %5198 to float
  %5200 = fmul fast float %5199, %5195
  %5201 = fmul fast float %5200, %5200
  %5202 = fsub fast float 0x4002A9FBE0000000, %5187
  %5203 = fadd fast float %5187, 0x3FD54FDF00000000
  %5204 = bitcast float %5203 to i32
  %5205 = sub nsw i32 2129859010, %5204
  %5206 = bitcast i32 %5205 to float
  %5207 = fmul fast float %5206, %5202
  %5208 = fmul fast float %5207, %5207
  %5209 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5194)  ; FMax(a,b)
  %5210 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5201)  ; FMax(a,b)
  %5211 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5208)  ; FMax(a,b)
  %5212 = fsub fast float 1.000000e+00, %5098
  %5213 = fadd fast float %5212, %5113
  %5214 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5215 = fsub fast float 1.000000e+00, %4497
  %5216 = fmul fast float %5155, %5215
  %5217 = fmul fast float %5158, %5158
  %5218 = fmul fast float %5217, %5216
  %5219 = fmul fast float %5218, %5160
  %5220 = fmul fast float %5215, 0xBFE99999A0000000
  %5221 = fmul fast float %5220, %5100
  %5222 = fmul fast float %5221, %5117
  %5223 = fadd fast float %5222, 1.000000e+00
  %5224 = fadd fast float %5091, -1.000000e+00
  %5225 = fmul fast float %5223, %5224
  %5226 = fadd fast float %5225, 1.000000e+00
  %5227 = fsub fast float %5209, %5085
  %5228 = fsub fast float %5210, %5086
  %5229 = fsub fast float %5211, %5087
  %5230 = fmul fast float %5219, %5227
  %5231 = fmul fast float %5219, %5228
  %5232 = fmul fast float %5219, %5229
  %5233 = fadd fast float %5230, %5085
  %5234 = fadd fast float %5231, %5086
  %5235 = fadd fast float %5232, %5087
  %5236 = fsub fast float %116, %5088
  %5237 = fsub fast float %117, %5089
  %5238 = fsub fast float %118, %5090
  %5239 = fmul fast float %5219, %5236
  %5240 = fmul fast float %5219, %5237
  %5241 = fmul fast float %5219, %5238
  %5242 = fadd fast float %5239, %5088
  %5243 = fadd fast float %5240, %5089
  %5244 = fadd fast float %5241, %5090
  %5245 = fmul fast float %5219, %5214
  %5246 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = fmul fast float %5245, %5247
  %5249 = fadd fast float %5248, %5246
  %5250 = fsub fast float 1.000000e+00, %5092
  %5251 = fmul fast float %5219, %5250
  %5252 = fadd fast float %5251, %5092
  %5253 = call float @dx.op.dot3.f32(i32 55, float %5242, float %5243, float %5244, float %5242, float %5243, float %5244)  ; Dot3(ax,ay,az,bx,by,bz)
  %5254 = call float @dx.op.unary.f32(i32 25, float %5253)  ; Rsqrt(value)
  %5255 = fmul fast float %5242, %5254
  %5256 = fmul fast float %5243, %5254
  %5257 = fmul fast float %5244, %5254
  br label %5258

; <label>:5258                                    ; preds = %5097, %5081
  %5259 = phi float [ %5142, %5097 ], [ %5082, %5081 ]
  %5260 = phi float [ %5143, %5097 ], [ %5083, %5081 ]
  %5261 = phi float [ %5144, %5097 ], [ %5084, %5081 ]
  %5262 = phi float [ %5233, %5097 ], [ %5085, %5081 ]
  %5263 = phi float [ %5234, %5097 ], [ %5086, %5081 ]
  %5264 = phi float [ %5235, %5097 ], [ %5087, %5081 ]
  %5265 = phi float [ %5255, %5097 ], [ %5088, %5081 ]
  %5266 = phi float [ %5256, %5097 ], [ %5089, %5081 ]
  %5267 = phi float [ %5257, %5097 ], [ %5090, %5081 ]
  %5268 = phi float [ %5249, %5097 ], [ %5091, %5081 ]
  %5269 = phi float [ %5252, %5097 ], [ %5092, %5081 ]
  %5270 = select i1 %292, float 0.000000e+00, float %5264
  %5271 = call float @dx.op.dot3.f32(i32 55, float %5265, float %5266, float %5267, float %5094, float %5095, float %5096)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = call float @dx.op.unary.f32(i32 7, float %5271)  ; Saturate(value)
  %5273 = call float @dx.op.dot3.f32(i32 55, float %219, float %220, float %221, float %5265, float %5266, float %5267)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = fmul fast float %5273, 2.000000e+00
  %5275 = fmul fast float %5274, %5265
  %5276 = fmul fast float %5274, %5266
  %5277 = fmul fast float %5274, %5267
  %5278 = fsub fast float %219, %5275
  %5279 = fsub fast float %220, %5276
  %5280 = fsub fast float %221, %5277
  %5281 = call float @dx.op.binary.f32(i32 36, float %5269, float 1.000000e+00)  ; FMin(a,b)
  %5282 = fsub fast float 1.000000e+00, %5281
  %5283 = bitcast float %5282 to i32
  %5284 = ashr i32 %5283, 1
  %5285 = add nsw i32 %5284, 532487669
  %5286 = bitcast i32 %5285 to float
  %5287 = fsub fast float 1.000000e+00, %5268
  %5288 = call float @dx.op.binary.f32(i32 35, float %5287, float 0x3F847AE140000000)  ; FMax(a,b)
  %5289 = fmul fast float %5288, %5288
  %5290 = fmul fast float %5289, %5289
  %5291 = call float @dx.op.unary.f32(i32 7, float %5272)  ; Saturate(value)
  %5292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %5286, float %5290, float %5291, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = fsub fast float 1.000000e+00, %5269
  %5295 = bitcast float %5294 to i32
  %5296 = sub nsw i32 2129859010, %5295
  %5297 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = fmul fast float %5297, 0x3FD20DD760000000
  %5299 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5300 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5301 = fcmp fast oeq float %5300, 0.000000e+00
  %5302 = fcmp fast oeq float %5299, 0.000000e+00
  %5303 = or i1 %5302, %5301
  br i1 %5303, label %5333, label %5304

; <label>:5304                                    ; preds = %5258
  %5305 = fsub fast float -0.000000e+00, %79
  %5306 = fsub fast float -0.000000e+00, %77
  %5307 = call float @dx.op.unary.f32(i32 24, float %5300)  ; Sqrt(value)
  %5308 = fdiv fast float %5307, %5299
  %5309 = fcmp fast ogt float %5308, 0x3FFB6F8900000000
  %5310 = select i1 %5309, float 0x3FFB6F8900000000, float %5308
  %5311 = fmul fast float %5310, 0x3FE8A23460000000
  %5312 = call float @dx.op.unary.f32(i32 7, float %5311)  ; Saturate(value)
  %5313 = call float @dx.op.binary.f32(i32 35, float %5310, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5314 = fmul fast float %5312, %5299
  %5315 = fmul fast float %5313, 0x3FF279A740000000
  %5316 = fadd fast float %5315, -1.000000e+00
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %78, float %5305, float %5306, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = call float @dx.op.unary.f32(i32 25, float %5317)  ; Rsqrt(value)
  %5319 = fmul fast float %5318, %5305
  %5320 = fmul fast float %5318, %5306
  %5321 = fmul fast float %5318, %78
  %5322 = fmul fast float %5316, %5316
  %5323 = fsub fast float 1.000000e+00, %5322
  %5324 = fmul fast float %5313, 0x40005F8BE0000000
  %5325 = fsub fast float 0x400C5BF8A0000000, %5324
  %5326 = fdiv fast float %5314, %5325
  %5327 = fmul fast float %5326, 0x3FEE31C3C0000000
  %5328 = fmul fast float %5327, %5323
  %5329 = fmul fast float %5313, 0x3FDACB7480000000
  %5330 = fadd fast float %5329, 0xBFD7347680000000
  %5331 = fmul fast float %5330, %5326
  %5332 = fmul fast float %5331, %5323
  br label %5333

; <label>:5333                                    ; preds = %5304, %5258
  %5334 = phi float [ %5319, %5304 ], [ 0.000000e+00, %5258 ]
  %5335 = phi float [ %5320, %5304 ], [ 0.000000e+00, %5258 ]
  %5336 = phi float [ %5321, %5304 ], [ 0.000000e+00, %5258 ]
  %5337 = phi float [ %5328, %5304 ], [ 0.000000e+00, %5258 ]
  %5338 = phi float [ %5332, %5304 ], [ 0.000000e+00, %5258 ]
  %5339 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5336, float %5265, float %5266, float %5267)  ; Dot3(ax,ay,az,bx,by,bz)
  %5340 = fmul fast float %5339, 0x3FDF454380000000
  %5341 = fmul fast float %5339, %5339
  %5342 = fmul fast float %5341, 0x3FEE471020000000
  %5343 = fadd fast float %5342, 0xBFD42F6020000000
  %5344 = fmul fast float %5299, 0x3FD20DD760000000
  %5345 = fmul fast float %5343, %5338
  %5346 = fadd fast float %5345, %5344
  %5347 = fmul fast float %5340, %5337
  %5348 = fadd fast float %5346, %5347
  %5349 = fsub fast float %5346, %5347
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5334, float %5335, float %5336, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = fmul fast float %5350, 0x3FDF454380000000
  %5352 = fmul fast float %5350, %5350
  %5353 = fmul fast float %5352, 0x3FEE471020000000
  %5354 = fadd fast float %5353, 0xBFD42F6020000000
  %5355 = call float @dx.op.dot3.f32(i32 55, float %5299, float %5337, float %5338, float 0x3FD20DD760000000, float %5351, float %5354)  ; Dot3(ax,ay,az,bx,by,bz)
  %5356 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %5357 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %5358 = fcmp fast oeq float %5357, 0.000000e+00
  %5359 = fcmp fast oeq float %5356, 0.000000e+00
  %5360 = or i1 %5359, %5358
  br i1 %5360, label %5390, label %5361

; <label>:5361                                    ; preds = %5333
  %5362 = fsub fast float -0.000000e+00, %75
  %5363 = fsub fast float -0.000000e+00, %73
  %5364 = call float @dx.op.unary.f32(i32 24, float %5357)  ; Sqrt(value)
  %5365 = fdiv fast float %5364, %5356
  %5366 = fcmp fast ogt float %5365, 0x3FFB6F8900000000
  %5367 = select i1 %5366, float 0x3FFB6F8900000000, float %5365
  %5368 = fmul fast float %5367, 0x3FE8A23460000000
  %5369 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5370 = call float @dx.op.binary.f32(i32 35, float %5367, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5371 = fmul fast float %5369, %5356
  %5372 = fmul fast float %5370, 0x3FF279A740000000
  %5373 = fadd fast float %5372, -1.000000e+00
  %5374 = call float @dx.op.dot3.f32(i32 55, float %5362, float %5363, float %74, float %5362, float %5363, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %5375 = call float @dx.op.unary.f32(i32 25, float %5374)  ; Rsqrt(value)
  %5376 = fmul fast float %5375, %5362
  %5377 = fmul fast float %5375, %5363
  %5378 = fmul fast float %5375, %74
  %5379 = fmul fast float %5373, %5373
  %5380 = fsub fast float 1.000000e+00, %5379
  %5381 = fmul fast float %5370, 0x40005F8BE0000000
  %5382 = fsub fast float 0x400C5BF8A0000000, %5381
  %5383 = fdiv fast float %5371, %5382
  %5384 = fmul fast float %5383, 0x3FEE31C3C0000000
  %5385 = fmul fast float %5384, %5380
  %5386 = fmul fast float %5370, 0x3FDACB7480000000
  %5387 = fadd fast float %5386, 0xBFD7347680000000
  %5388 = fmul fast float %5387, %5383
  %5389 = fmul fast float %5388, %5380
  br label %5390

; <label>:5390                                    ; preds = %5361, %5333
  %5391 = phi float [ %5376, %5361 ], [ 0.000000e+00, %5333 ]
  %5392 = phi float [ %5377, %5361 ], [ 0.000000e+00, %5333 ]
  %5393 = phi float [ %5378, %5361 ], [ 0.000000e+00, %5333 ]
  %5394 = phi float [ %5385, %5361 ], [ 0.000000e+00, %5333 ]
  %5395 = phi float [ %5389, %5361 ], [ 0.000000e+00, %5333 ]
  %5396 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5392, float %5393, float %5265, float %5266, float %5267)  ; Dot3(ax,ay,az,bx,by,bz)
  %5397 = fmul fast float %5396, 0x3FDF454380000000
  %5398 = fmul fast float %5396, %5396
  %5399 = fmul fast float %5398, 0x3FEE471020000000
  %5400 = fadd fast float %5399, 0xBFD42F6020000000
  %5401 = fmul fast float %5356, 0x3FD20DD760000000
  %5402 = fmul fast float %5400, %5395
  %5403 = fadd fast float %5402, %5401
  %5404 = fmul fast float %5397, %5394
  %5405 = fadd fast float %5403, %5404
  %5406 = fsub fast float %5403, %5404
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5391, float %5392, float %5393, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = fmul fast float %5407, 0x3FDF454380000000
  %5409 = fmul fast float %5407, %5407
  %5410 = fmul fast float %5409, 0x3FEE471020000000
  %5411 = fadd fast float %5410, 0xBFD42F6020000000
  %5412 = call float @dx.op.dot3.f32(i32 55, float %5356, float %5394, float %5395, float 0x3FD20DD760000000, float %5408, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %5414 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = fcmp fast oeq float %5414, 0.000000e+00
  %5416 = fcmp fast oeq float %5413, 0.000000e+00
  %5417 = or i1 %5416, %5415
  br i1 %5417, label %5447, label %5418

; <label>:5418                                    ; preds = %5390
  %5419 = fsub fast float -0.000000e+00, %71
  %5420 = fsub fast float -0.000000e+00, %69
  %5421 = call float @dx.op.unary.f32(i32 24, float %5414)  ; Sqrt(value)
  %5422 = fdiv fast float %5421, %5413
  %5423 = fcmp fast ogt float %5422, 0x3FFB6F8900000000
  %5424 = select i1 %5423, float 0x3FFB6F8900000000, float %5422
  %5425 = fmul fast float %5424, 0x3FE8A23460000000
  %5426 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5427 = call float @dx.op.binary.f32(i32 35, float %5424, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5428 = fmul fast float %5426, %5413
  %5429 = fmul fast float %5427, 0x3FF279A740000000
  %5430 = fadd fast float %5429, -1.000000e+00
  %5431 = call float @dx.op.dot3.f32(i32 55, float %5419, float %5420, float %70, float %5419, float %5420, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %5432 = call float @dx.op.unary.f32(i32 25, float %5431)  ; Rsqrt(value)
  %5433 = fmul fast float %5432, %5419
  %5434 = fmul fast float %5432, %5420
  %5435 = fmul fast float %5432, %70
  %5436 = fmul fast float %5430, %5430
  %5437 = fsub fast float 1.000000e+00, %5436
  %5438 = fmul fast float %5427, 0x40005F8BE0000000
  %5439 = fsub fast float 0x400C5BF8A0000000, %5438
  %5440 = fdiv fast float %5428, %5439
  %5441 = fmul fast float %5440, 0x3FEE31C3C0000000
  %5442 = fmul fast float %5441, %5437
  %5443 = fmul fast float %5427, 0x3FDACB7480000000
  %5444 = fadd fast float %5443, 0xBFD7347680000000
  %5445 = fmul fast float %5444, %5440
  %5446 = fmul fast float %5445, %5437
  br label %5447

; <label>:5447                                    ; preds = %5418, %5390
  %5448 = phi float [ %5433, %5418 ], [ 0.000000e+00, %5390 ]
  %5449 = phi float [ %5434, %5418 ], [ 0.000000e+00, %5390 ]
  %5450 = phi float [ %5435, %5418 ], [ 0.000000e+00, %5390 ]
  %5451 = phi float [ %5442, %5418 ], [ 0.000000e+00, %5390 ]
  %5452 = phi float [ %5446, %5418 ], [ 0.000000e+00, %5390 ]
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5265, float %5266, float %5267)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = fmul fast float %5453, 0x3FDF454380000000
  %5455 = fmul fast float %5453, %5453
  %5456 = fmul fast float %5455, 0x3FEE471020000000
  %5457 = fadd fast float %5456, 0xBFD42F6020000000
  %5458 = fmul fast float %5413, 0x3FD20DD760000000
  %5459 = fmul fast float %5457, %5452
  %5460 = fadd fast float %5459, %5458
  %5461 = fmul fast float %5454, %5451
  %5462 = fadd fast float %5460, %5461
  %5463 = fsub fast float %5460, %5461
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5278, float %5279, float %5280)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = fmul fast float %5464, 0x3FDF454380000000
  %5466 = fmul fast float %5464, %5464
  %5467 = fmul fast float %5466, 0x3FEE471020000000
  %5468 = fadd fast float %5467, 0xBFD42F6020000000
  %5469 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5451, float %5452, float 0x3FD20DD760000000, float %5465, float %5468)  ; Dot3(ax,ay,az,bx,by,bz)
  %5470 = call float @dx.op.binary.f32(i32 35, float %5348, float 0.000000e+00)  ; FMax(a,b)
  %5471 = call float @dx.op.binary.f32(i32 35, float %5405, float 0.000000e+00)  ; FMax(a,b)
  %5472 = call float @dx.op.binary.f32(i32 35, float %5462, float 0.000000e+00)  ; FMax(a,b)
  %5473 = call float @dx.op.binary.f32(i32 35, float %5349, float 0.000000e+00)  ; FMax(a,b)
  %5474 = call float @dx.op.binary.f32(i32 35, float %5406, float 0.000000e+00)  ; FMax(a,b)
  %5475 = call float @dx.op.binary.f32(i32 35, float %5463, float 0.000000e+00)  ; FMax(a,b)
  %5476 = call float @dx.op.binary.f32(i32 35, float %5355, float 0.000000e+00)  ; FMax(a,b)
  %5477 = call float @dx.op.binary.f32(i32 35, float %5412, float 0.000000e+00)  ; FMax(a,b)
  %5478 = call float @dx.op.binary.f32(i32 35, float %5469, float 0.000000e+00)  ; FMax(a,b)
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = call float @dx.op.binary.f32(i32 36, float %5259, float %5480)  ; FMin(a,b)
  %5482 = fmul fast float %5481, %5282
  %5483 = fsub fast float 1.000000e+00, %5482
  %5484 = bitcast float %5483 to i32
  %5485 = sub nsw i32 2129859010, %5484
  %5486 = bitcast i32 %5485 to float
  %5487 = call float @dx.op.binary.f32(i32 36, float %5260, float %5480)  ; FMin(a,b)
  %5488 = fmul fast float %5487, %5282
  %5489 = fsub fast float 1.000000e+00, %5488
  %5490 = bitcast float %5489 to i32
  %5491 = sub nsw i32 2129859010, %5490
  %5492 = bitcast i32 %5491 to float
  %5493 = call float @dx.op.binary.f32(i32 36, float %5261, float %5480)  ; FMin(a,b)
  %5494 = fmul fast float %5493, %5282
  %5495 = fsub fast float 1.000000e+00, %5494
  %5496 = bitcast float %5495 to i32
  %5497 = sub nsw i32 2129859010, %5496
  %5498 = bitcast i32 %5497 to float
  %5499 = fmul fast float %5470, %5281
  %5500 = fmul fast float %5499, %5486
  %5501 = fmul fast float %5471, %5281
  %5502 = fmul fast float %5501, %5492
  %5503 = fmul fast float %5472, %5281
  %5504 = fmul fast float %5503, %5498
  %5505 = call float @dx.op.binary.f32(i32 36, float %5262, float %5480)  ; FMin(a,b)
  %5506 = fmul fast float %5505, %5282
  %5507 = fsub fast float 1.000000e+00, %5506
  %5508 = bitcast float %5507 to i32
  %5509 = sub nsw i32 2129859010, %5508
  %5510 = bitcast i32 %5509 to float
  %5511 = call float @dx.op.binary.f32(i32 36, float %5263, float %5480)  ; FMin(a,b)
  %5512 = fmul fast float %5511, %5282
  %5513 = fsub fast float 1.000000e+00, %5512
  %5514 = bitcast float %5513 to i32
  %5515 = sub nsw i32 2129859010, %5514
  %5516 = bitcast i32 %5515 to float
  %5517 = call float @dx.op.binary.f32(i32 36, float %5270, float %5480)  ; FMin(a,b)
  %5518 = fmul fast float %5517, %5282
  %5519 = fsub fast float 1.000000e+00, %5518
  %5520 = bitcast float %5519 to i32
  %5521 = sub nsw i32 2129859010, %5520
  %5522 = bitcast i32 %5521 to float
  %5523 = fmul fast float %5476, %5281
  %5524 = fmul fast float %5523, %5510
  %5525 = fmul fast float %5477, %5281
  %5526 = fmul fast float %5525, %5516
  %5527 = fmul fast float %5478, %5281
  %5528 = fmul fast float %5527, %5522
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5500, float %5502, float %5504, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = select i1 %292, float 0.000000e+00, float %5500
  %5531 = select i1 %292, float %5529, float %5502
  %5532 = select i1 %292, float 0.000000e+00, float %5504
  %5533 = call float @dx.op.dot3.f32(i32 55, float %5473, float %5474, float %5475, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = select i1 %292, float 0.000000e+00, float %5473
  %5535 = select i1 %292, float %5533, float %5474
  %5536 = select i1 %292, float 0.000000e+00, float %5475
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5526, float %5528, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = select i1 %292, float 0.000000e+00, float %5524
  %5539 = select i1 %292, float %5537, float %5526
  %5540 = select i1 %292, float 0.000000e+00, float %5528
  %5541 = fmul fast float %5272, 9.843750e-01
  %5542 = fmul fast float %5268, 9.843750e-01
  %5543 = fadd fast float %5541, 7.812500e-03
  %5544 = fadd fast float %5542, 7.812500e-03
  %5545 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %5543, float %5544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5546 = extractvalue %dx.types.ResRet.f32 %5545, 2
  %5547 = extractvalue %dx.types.ResRet.f32 %5545, 3
  %5548 = fmul fast float %5546, %5262
  %5549 = fmul fast float %5546, %5263
  %5550 = fmul fast float %5546, %5270
  %5551 = fadd fast float %5548, %5547
  %5552 = fadd fast float %5549, %5547
  %5553 = fadd fast float %5550, %5547
  %5554 = fcmp fast ogt float %4286, 0.000000e+00
  br i1 %5554, label %5555, label %5581

; <label>:5555                                    ; preds = %5447
  %5556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4286, float %5272, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5557 = extractvalue %dx.types.ResRet.f32 %5556, 0
  %5558 = extractvalue %dx.types.ResRet.f32 %5556, 1
  %5559 = extractvalue %dx.types.ResRet.f32 %5556, 2
  %5560 = fadd fast float %5557, -5.000000e-01
  %5561 = fadd fast float %5558, -5.000000e-01
  %5562 = fadd fast float %5559, -5.000000e-01
  %5563 = fsub fast float 1.000000e+00, %5262
  %5564 = fsub fast float 1.000000e+00, %5263
  %5565 = fsub fast float 1.000000e+00, %5270
  %5566 = fmul fast float %5262, 4.000000e+00
  %5567 = fmul fast float %5566, %5563
  %5568 = fmul fast float %5567, %5560
  %5569 = fmul fast float %5263, 4.000000e+00
  %5570 = fmul fast float %5569, %5564
  %5571 = fmul fast float %5570, %5561
  %5572 = fmul fast float %5270, 4.000000e+00
  %5573 = fmul fast float %5572, %5565
  %5574 = fmul fast float %5573, %5562
  %5575 = fadd fast float %5568, %5551
  %5576 = fadd fast float %5571, %5552
  %5577 = fadd fast float %5574, %5553
  %5578 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5580 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  br label %5581

; <label>:5581                                    ; preds = %5555, %5447
  %5582 = phi float [ %5578, %5555 ], [ %5551, %5447 ]
  %5583 = phi float [ %5579, %5555 ], [ %5552, %5447 ]
  %5584 = phi float [ %5580, %5555 ], [ %5553, %5447 ]
  %5585 = call float @dx.op.binary.f32(i32 35, float %5583, float %5584)  ; FMax(a,b)
  %5586 = call float @dx.op.binary.f32(i32 35, float %5582, float %5585)  ; FMax(a,b)
  %5587 = fsub fast float 1.000000e+00, %5586
  %5588 = fmul fast float %5586, %5268
  %5589 = fadd fast float %5588, %5268
  %5590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5591 = extractvalue %dx.types.CBufRet.f32 %5590, 2
  %5592 = extractvalue %dx.types.CBufRet.f32 %5590, 3
  %5593 = fmul fast float %5589, %5591
  %5594 = fadd fast float %5593, %5592
  %5595 = call float @dx.op.unary.f32(i32 7, float %5594)  ; Saturate(value)
  %5596 = fsub fast float 1.000000e+00, %5293
  %5597 = fadd fast float %5596, %5595
  %5598 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5599 = fcmp fast olt float %5598, 1.000000e+00
  br i1 %5599, label %5600, label %6048

; <label>:5600                                    ; preds = %5581
  %5601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5602 = extractvalue %dx.types.CBufRet.f32 %5601, 2
  %5603 = extractvalue %dx.types.CBufRet.f32 %5601, 3
  %5604 = fmul fast float %5602, %109
  %5605 = fmul fast float %5603, %110
  %5606 = fptoui float %5604 to i32
  %5607 = fptoui float %5605 to i32
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5611 = extractvalue %dx.types.CBufRet.f32 %5608, 3
  %5612 = fadd fast float %96, -4.000000e+00
  %5613 = call float @dx.op.binary.f32(i32 35, float %5612, float 0.000000e+00)  ; FMax(a,b)
  %5614 = fadd fast float %5613, %5609
  %5615 = fmul fast float %5614, %5610
  %5616 = call float @dx.op.unary.f32(i32 23, float %5615)  ; Log(value)
  %5617 = fmul fast float %5616, %5611
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 2
  %5620 = fmul fast float %5617, %5619
  %5621 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5622 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.i32 %5622, 1
  %5624 = add i32 %5623, -1
  %5625 = uitofp i32 %5623 to float
  %5626 = fmul fast float %5625, %5621
  %5627 = fptoui float %5626 to i32
  %5628 = call i32 @dx.op.binary.i32(i32 40, i32 %5627, i32 %5624)  ; UMin(a,b)
  %5629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.i32 %5629, 2
  %5631 = extractvalue %dx.types.CBufRet.i32 %5629, 3
  %5632 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5607, i32 %5630, i32 %5606)  ; UMad(a,b,c)
  %5633 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5628, i32 %5631, i32 %5632)  ; UMad(a,b,c)
  %5634 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %5635 = fptoui float %5634 to i32
  %5636 = lshr i32 %5635, 5
  %5637 = call i32 @dx.op.binary.i32(i32 40, i32 %5636, i32 8191)  ; UMin(a,b)
  br i1 false, label %5638, label %5645

; <label>:5638                                    ; preds = %5600
  %5639 = fadd fast float 0.000000e+00, %5280
  %5640 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5279, float %5639, float %5278, float %5279, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = call float @dx.op.unary.f32(i32 25, float %5640)  ; Rsqrt(value)
  %5642 = fmul fast float %5641, %5278
  %5643 = fmul fast float %5641, %5279
  %5644 = fmul fast float %5639, %5641
  br label %5645

; <label>:5645                                    ; preds = %5638, %5600
  %5646 = phi float [ %5642, %5638 ], [ %5278, %5600 ]
  %5647 = phi float [ %5643, %5638 ], [ %5279, %5600 ]
  %5648 = phi float [ %5644, %5638 ], [ %5280, %5600 ]
  %5649 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.i32 %5649, 2
  %5651 = add nsw i32 %5650, -1
  %5652 = call i32 @dx.op.binary.i32(i32 37, i32 %5651, i32 0)  ; IMax(a,b)
  %5653 = shl i32 %5637, 2
  %5654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5653, i32 undef)  ; BufferLoad(srv,index,wot)
  %5655 = extractvalue %dx.types.ResRet.i32 %5654, 0
  %5656 = lshr i32 %5655, 16
  %5657 = and i32 %5655, 65535
  %5658 = lshr i32 %5655, 21
  %5659 = lshr i32 %5657, 5
  %5660 = call i32 @dx.op.binary.i32(i32 40, i32 %5659, i32 %5652)  ; UMin(a,b)
  %5661 = icmp ugt i32 %5658, %5660
  br i1 %5661, label %6024, label %5662

; <label>:5662                                    ; preds = %5645
  br label %5663

; <label>:5663                                    ; preds = %6016, %5662
  %5664 = phi float [ %6017, %6016 ], [ 0.000000e+00, %5662 ]
  %5665 = phi float [ %6018, %6016 ], [ 0.000000e+00, %5662 ]
  %5666 = phi float [ %6019, %6016 ], [ 0.000000e+00, %5662 ]
  %5667 = phi float [ %6020, %6016 ], [ 1.000000e+00, %5662 ]
  %5668 = phi i32 [ %6021, %6016 ], [ %5658, %5662 ]
  %5669 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.i32 %5669, 2
  %5671 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5633, i32 %5670, i32 %5668)  ; UMad(a,b,c)
  %5672 = shl i32 %5671, 2
  %5673 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5672, i32 undef)  ; BufferLoad(srv,index,wot)
  %5674 = extractvalue %dx.types.ResRet.i32 %5673, 0
  %5675 = shl i32 %5668, 5
  %5676 = sub nsw i32 %5656, %5675
  %5677 = call i32 @dx.op.binary.i32(i32 37, i32 %5676, i32 0)  ; IMax(a,b)
  %5678 = call i32 @dx.op.binary.i32(i32 38, i32 %5677, i32 31)  ; IMin(a,b)
  %5679 = sub nsw i32 1, %5656
  %5680 = add nsw i32 %5679, %5657
  %5681 = call i32 @dx.op.binary.i32(i32 37, i32 %5680, i32 0)  ; IMax(a,b)
  %5682 = call i32 @dx.op.binary.i32(i32 38, i32 %5681, i32 32)  ; IMin(a,b)
  %5683 = and i32 %5682, 31
  %5684 = shl i32 -1, %5683
  %5685 = xor i32 %5684, -1
  %5686 = and i32 %5678, 31
  %5687 = shl i32 %5685, %5686
  %5688 = icmp eq i32 %5682, 32
  %5689 = select i1 %5688, i32 -1, i32 %5687
  %5690 = and i32 %5689, %5674
  %5691 = icmp eq i32 %5690, 0
  br i1 %5691, label %6016, label %5692

; <label>:5692                                    ; preds = %5663
  br label %5693

; <label>:5693                                    ; preds = %5799, %5692
  %5694 = phi float [ %5800, %5799 ], [ %5664, %5692 ]
  %5695 = phi float [ %5801, %5799 ], [ %5665, %5692 ]
  %5696 = phi float [ %5802, %5799 ], [ %5666, %5692 ]
  %5697 = phi float [ %5803, %5799 ], [ %5667, %5692 ]
  %5698 = phi i32 [ %5703, %5799 ], [ %5690, %5692 ]
  %5699 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5698)  ; FirstbitLo(value)
  %5700 = add i32 %5699, %5675
  %5701 = and i32 %5699, 31
  %5702 = shl i32 1, %5701
  %5703 = xor i32 %5702, %5698
  %5704 = mul i32 %5700, 72
  %5705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5704, i32 undef)  ; BufferLoad(srv,index,wot)
  %5706 = extractvalue %dx.types.ResRet.f32 %5705, 0
  %5707 = extractvalue %dx.types.ResRet.f32 %5705, 1
  %5708 = extractvalue %dx.types.ResRet.f32 %5705, 2
  %5709 = add i32 %5704, 12
  %5710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %5709, i32 undef)  ; BufferLoad(srv,index,wot)
  %5711 = extractvalue %dx.types.ResRet.i32 %5710, 0
  %5712 = add i32 %5704, 16
  %5713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5712, i32 undef)  ; BufferLoad(srv,index,wot)
  %5714 = extractvalue %dx.types.ResRet.f32 %5713, 0
  %5715 = extractvalue %dx.types.ResRet.f32 %5713, 1
  %5716 = extractvalue %dx.types.ResRet.f32 %5713, 2
  %5717 = add i32 %5704, 28
  %5718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5717, i32 undef)  ; BufferLoad(srv,index,wot)
  %5719 = extractvalue %dx.types.ResRet.f32 %5718, 0
  %5720 = add i32 %5704, 32
  %5721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5720, i32 undef)  ; BufferLoad(srv,index,wot)
  %5722 = extractvalue %dx.types.ResRet.f32 %5721, 0
  %5723 = extractvalue %dx.types.ResRet.f32 %5721, 1
  %5724 = extractvalue %dx.types.ResRet.f32 %5721, 2
  %5725 = extractvalue %dx.types.ResRet.f32 %5721, 3
  %5726 = add i32 %5704, 48
  %5727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5726, i32 undef)  ; BufferLoad(srv,index,wot)
  %5728 = extractvalue %dx.types.ResRet.f32 %5727, 0
  %5729 = extractvalue %dx.types.ResRet.f32 %5727, 1
  %5730 = add i32 %5704, 56
  %5731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5730, i32 undef)  ; BufferLoad(srv,index,wot)
  %5732 = extractvalue %dx.types.ResRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.ResRet.f32 %5731, 1
  %5734 = add i32 %5704, 64
  %5735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5734, i32 undef)  ; BufferLoad(srv,index,wot)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 0
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 1
  %5738 = mul i32 %5700, 60
  %5739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5738, i32 undef)  ; BufferLoad(srv,index,wot)
  %5740 = extractvalue %dx.types.ResRet.f32 %5739, 0
  %5741 = extractvalue %dx.types.ResRet.f32 %5739, 1
  %5742 = extractvalue %dx.types.ResRet.f32 %5739, 2
  %5743 = add i32 %5738, 12
  %5744 = add i32 %5738, 48
  %5745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5744, i32 undef)  ; BufferLoad(srv,index,wot)
  %5746 = extractvalue %dx.types.ResRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.ResRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.ResRet.f32 %5745, 2
  %5749 = and i32 %5711, 32767
  %5750 = bitcast float %5706 to i32
  %5751 = icmp eq i32 %5750, -1
  %5752 = bitcast float %5707 to i32
  %5753 = and i32 %5711, 32768
  %5754 = icmp ne i32 %5753, 0
  %5755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.CBufRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.CBufRet.f32 %5755, 2
  %5759 = fsub fast float %5740, %5756
  %5760 = fsub fast float %5741, %5757
  %5761 = fsub fast float %5742, %5758
  %5762 = fsub fast float %188, %5759
  %5763 = fsub fast float %189, %5760
  %5764 = fsub fast float %190, %5761
  %5765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5743, i32 undef)  ; BufferLoad(srv,index,wot)
  %5766 = extractvalue %dx.types.ResRet.f32 %5765, 0
  %5767 = extractvalue %dx.types.ResRet.f32 %5765, 1
  %5768 = extractvalue %dx.types.ResRet.f32 %5765, 2
  %5769 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5766, float %5767, float %5768)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = add i32 %5738, 24
  %5771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5770, i32 undef)  ; BufferLoad(srv,index,wot)
  %5772 = extractvalue %dx.types.ResRet.f32 %5771, 0
  %5773 = extractvalue %dx.types.ResRet.f32 %5771, 1
  %5774 = extractvalue %dx.types.ResRet.f32 %5771, 2
  %5775 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5772, float %5773, float %5774)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = add i32 %5738, 36
  %5777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5776, i32 undef)  ; BufferLoad(srv,index,wot)
  %5778 = extractvalue %dx.types.ResRet.f32 %5777, 0
  %5779 = extractvalue %dx.types.ResRet.f32 %5777, 1
  %5780 = extractvalue %dx.types.ResRet.f32 %5777, 2
  %5781 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5778, float %5779, float %5780)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = call float @dx.op.unary.f32(i32 6, float %5769)  ; FAbs(value)
  %5783 = call float @dx.op.unary.f32(i32 6, float %5775)  ; FAbs(value)
  %5784 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5785 = fsub fast float %5746, %5782
  %5786 = fsub fast float %5747, %5783
  %5787 = fsub fast float %5748, %5784
  %5788 = fmul fast float %5785, %5714
  %5789 = fmul fast float %5786, %5715
  %5790 = fmul fast float %5787, %5716
  %5791 = call float @dx.op.binary.f32(i32 36, float %5789, float %5790)  ; FMin(a,b)
  %5792 = call float @dx.op.binary.f32(i32 36, float %5788, float %5791)  ; FMin(a,b)
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = call float @dx.op.binary.f32(i32 36, float %5697, float %5793)  ; FMin(a,b)
  %5795 = uitofp i1 %5754 to float
  %5796 = fsub fast float 1.000000e+00, %5795
  %5797 = fmul fast float %5794, %5796
  %5798 = fcmp fast ogt float %5797, 0.000000e+00
  br i1 %5798, label %5805, label %5799

; <label>:5799                                    ; preds = %5947, %5693
  %5800 = phi float [ %6011, %5947 ], [ %5694, %5693 ]
  %5801 = phi float [ %6012, %5947 ], [ %5695, %5693 ]
  %5802 = phi float [ %6013, %5947 ], [ %5696, %5693 ]
  %5803 = phi float [ %6014, %5947 ], [ %5697, %5693 ]
  %5804 = icmp eq i32 %5698, %5702
  br i1 %5804, label %6015, label %5693

; <label>:5805                                    ; preds = %5693
  br i1 %5751, label %5863, label %5806

; <label>:5806                                    ; preds = %5805
  %5807 = fsub fast float -0.000000e+00, %5766
  %5808 = fsub fast float -0.000000e+00, %5767
  %5809 = fsub fast float -0.000000e+00, %5768
  %5810 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5807, float %5808, float %5809)  ; Dot3(ax,ay,az,bx,by,bz)
  %5811 = fsub fast float -0.000000e+00, %5810
  %5812 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5807, float %5808, float %5809)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fadd fast float %5812, %5729
  %5814 = fadd fast float %5728, %5812
  %5815 = fsub fast float -0.000000e+00, %5814
  %5816 = fcmp ogt float %5810, -0.000000e+00
  %5817 = select i1 %5816, float %5815, float %5813
  %5818 = call float @dx.op.unary.f32(i32 6, float %5811)  ; FAbs(value)
  %5819 = fdiv fast float 1.000000e+00, %5818
  %5820 = fmul fast float %5817, %5819
  %5821 = call float @dx.op.binary.f32(i32 35, float %5820, float 0.000000e+00)  ; FMax(a,b)
  %5822 = fsub fast float -0.000000e+00, %5772
  %5823 = fsub fast float -0.000000e+00, %5773
  %5824 = fsub fast float -0.000000e+00, %5774
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5822, float %5823, float %5824)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = fsub fast float -0.000000e+00, %5825
  %5827 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5822, float %5823, float %5824)  ; Dot3(ax,ay,az,bx,by,bz)
  %5828 = fadd fast float %5827, %5733
  %5829 = fadd fast float %5732, %5827
  %5830 = fsub fast float -0.000000e+00, %5829
  %5831 = fcmp ogt float %5825, -0.000000e+00
  %5832 = select i1 %5831, float %5830, float %5828
  %5833 = call float @dx.op.unary.f32(i32 6, float %5826)  ; FAbs(value)
  %5834 = fdiv fast float 1.000000e+00, %5833
  %5835 = fmul fast float %5832, %5834
  %5836 = call float @dx.op.binary.f32(i32 35, float %5835, float 0.000000e+00)  ; FMax(a,b)
  %5837 = fsub fast float -0.000000e+00, %5778
  %5838 = fsub fast float -0.000000e+00, %5779
  %5839 = fsub fast float -0.000000e+00, %5780
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5837, float %5838, float %5839)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = fsub fast float -0.000000e+00, %5840
  %5842 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %5837, float %5838, float %5839)  ; Dot3(ax,ay,az,bx,by,bz)
  %5843 = fadd fast float %5842, %5737
  %5844 = fadd fast float %5736, %5842
  %5845 = fsub fast float -0.000000e+00, %5844
  %5846 = fcmp ogt float %5840, -0.000000e+00
  %5847 = select i1 %5846, float %5845, float %5843
  %5848 = call float @dx.op.unary.f32(i32 6, float %5841)  ; FAbs(value)
  %5849 = fdiv fast float 1.000000e+00, %5848
  %5850 = fmul fast float %5847, %5849
  %5851 = call float @dx.op.binary.f32(i32 35, float %5850, float 0.000000e+00)  ; FMax(a,b)
  %5852 = call float @dx.op.binary.f32(i32 36, float %5836, float %5851)  ; FMin(a,b)
  %5853 = call float @dx.op.binary.f32(i32 36, float %5821, float %5852)  ; FMin(a,b)
  %5854 = fmul fast float %5853, %5646
  %5855 = fmul fast float %5853, %5647
  %5856 = fmul fast float %5853, %5648
  %5857 = fadd fast float %5854, %188
  %5858 = fadd fast float %5855, %189
  %5859 = fadd fast float %5856, %190
  %5860 = fsub fast float %5857, %5706
  %5861 = fsub fast float %5858, %5707
  %5862 = fsub fast float %5859, %5708
  br label %5870

; <label>:5863                                    ; preds = %5805
  %5864 = fmul fast float %5646, 8.096000e+03
  %5865 = fmul fast float %5647, 8.096000e+03
  %5866 = fmul fast float %5648, 8.096000e+03
  %5867 = fadd fast float %5864, %188
  %5868 = fadd fast float %5865, %189
  %5869 = fadd fast float %5866, %190
  br label %5870

; <label>:5870                                    ; preds = %5863, %5806
  %5871 = phi float [ %5646, %5863 ], [ %5860, %5806 ]
  %5872 = phi float [ %5647, %5863 ], [ %5861, %5806 ]
  %5873 = phi float [ %5648, %5863 ], [ %5862, %5806 ]
  %5874 = phi float [ %5867, %5863 ], [ %5857, %5806 ]
  %5875 = phi float [ %5868, %5863 ], [ %5858, %5806 ]
  %5876 = phi float [ %5869, %5863 ], [ %5859, %5806 ]
  %5877 = fcmp fast olt float %5725, 1.000000e+00
  br i1 %5877, label %5878, label %5909, !dx.controlflow.hints !92

; <label>:5878                                    ; preds = %5870
  %5879 = fmul fast float %5873, %5723
  %5880 = fmul fast float %5872, %5724
  %5881 = fsub fast float %5879, %5880
  %5882 = fmul fast float %5871, %5724
  %5883 = fmul fast float %5873, %5722
  %5884 = fsub fast float %5882, %5883
  %5885 = fmul fast float %5872, %5722
  %5886 = fmul fast float %5871, %5723
  %5887 = fsub fast float %5885, %5886
  %5888 = fmul fast float %5881, 2.000000e+00
  %5889 = fmul fast float %5884, 2.000000e+00
  %5890 = fmul fast float %5887, 2.000000e+00
  %5891 = fmul fast float %5888, %5725
  %5892 = fmul fast float %5889, %5725
  %5893 = fmul fast float %5890, %5725
  %5894 = fmul fast float %5890, %5723
  %5895 = fmul fast float %5889, %5724
  %5896 = fmul fast float %5888, %5724
  %5897 = fmul fast float %5890, %5722
  %5898 = fmul fast float %5889, %5722
  %5899 = fmul fast float %5888, %5723
  %5900 = fadd fast float %5894, %5871
  %5901 = fadd fast float %5900, %5891
  %5902 = fsub fast float %5901, %5895
  %5903 = fsub fast float %5872, %5897
  %5904 = fadd fast float %5903, %5892
  %5905 = fadd fast float %5904, %5896
  %5906 = fadd fast float %5893, %5873
  %5907 = fsub fast float %5906, %5899
  %5908 = fadd fast float %5907, %5898
  br label %5909

; <label>:5909                                    ; preds = %5878, %5870
  %5910 = phi float [ %5902, %5878 ], [ %5871, %5870 ]
  %5911 = phi float [ %5905, %5878 ], [ %5872, %5870 ]
  %5912 = phi float [ %5908, %5878 ], [ %5873, %5870 ]
  br i1 %5751, label %5944, label %5913

; <label>:5913                                    ; preds = %5909
  %5914 = fmul fast float %5268, 0x400187C840000000
  %5915 = fadd fast float %5914, 0xC00EFC2120000000
  %5916 = fmul fast float %5915, %5268
  %5917 = fadd fast float %5916, 0x3FE5D16340000000
  %5918 = fmul fast float %5917, %5268
  %5919 = fadd fast float %5918, 1.000000e+00
  %5920 = call float @dx.op.unary.f32(i32 7, float %5919)  ; Saturate(value)
  %5921 = fsub fast float %5874, %188
  %5922 = fsub fast float %5875, %189
  %5923 = fsub fast float %5876, %190
  %5924 = fsub fast float %5874, %5706
  %5925 = fsub fast float %5875, %5707
  %5926 = fsub fast float %5876, %5708
  %5927 = call float @dx.op.dot3.f32(i32 55, float %5921, float %5922, float %5923, float %5921, float %5922, float %5923)  ; Dot3(ax,ay,az,bx,by,bz)
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5924, float %5925, float %5926, float %5924, float %5925, float %5926)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = fadd fast float %5928, 0x3EE4F8B580000000
  %5930 = fdiv fast float %5927, %5929
  %5931 = bitcast float %5930 to i32
  %5932 = ashr i32 %5931, 1
  %5933 = add nsw i32 %5932, 532487669
  %5934 = bitcast i32 %5933 to float
  %5935 = fmul fast float %5934, %5920
  %5936 = call float @dx.op.unary.f32(i32 7, float %5935)  ; Saturate(value)
  %5937 = fmul fast float %5936, 0x4009981AE0000000
  %5938 = fsub fast float 0x40111BBD80000000, %5937
  %5939 = fmul fast float %5938, %5936
  %5940 = fadd fast float %5939, 0xC0009F6020000000
  %5941 = fmul fast float %5940, %5936
  %5942 = fadd fast float %5941, 1.000000e+00
  %5943 = call float @dx.op.unary.f32(i32 7, float %5942)  ; Saturate(value)
  br label %5947

; <label>:5944                                    ; preds = %5909
  %5945 = icmp ne i32 %5752, -1
  %5946 = zext i1 %5945 to i32
  br label %5947

; <label>:5947                                    ; preds = %5944, %5913
  %5948 = phi float [ %5268, %5944 ], [ %5943, %5913 ]
  %5949 = phi i32 [ %5946, %5944 ], [ 0, %5913 ]
  %5950 = fmul float %5948, 5.000000e+00
  %5951 = fsub float 5.000000e+00, %5950
  %5952 = icmp ne i32 %5949, 0
  %5953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5954 = extractvalue %dx.types.CBufRet.f32 %5953, 3
  %5955 = fadd fast float %5954, %5951
  %5956 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5955)  ; FMax(a,b)
  %5957 = call float @dx.op.unary.f32(i32 6, float %5910)  ; FAbs(value)
  %5958 = call float @dx.op.unary.f32(i32 6, float %5911)  ; FAbs(value)
  %5959 = fadd fast float %5958, %5957
  %5960 = call float @dx.op.unary.f32(i32 6, float %5912)  ; FAbs(value)
  %5961 = fadd fast float %5959, %5960
  %5962 = fcmp fast oeq float %5961, 0.000000e+00
  %5963 = fdiv fast float 1.000000e+00, %5961
  %5964 = select i1 %5962, float 1.000000e+00, float %5963
  %5965 = fmul fast float %5964, %5910
  %5966 = fmul fast float %5964, %5911
  %5967 = call float @dx.op.unary.f32(i32 6, float %5966)  ; FAbs(value)
  %5968 = call float @dx.op.unary.f32(i32 6, float %5965)  ; FAbs(value)
  %5969 = fsub fast float 1.000000e+00, %5967
  %5970 = fsub fast float 1.000000e+00, %5968
  %5971 = fcmp fast oge float %5965, 0.000000e+00
  %5972 = fcmp fast oge float %5966, 0.000000e+00
  %5973 = select i1 %5971, float 1.000000e+00, float -1.000000e+00
  %5974 = select i1 %5972, float 1.000000e+00, float -1.000000e+00
  %5975 = fcmp fast ole float %5912, 0.000000e+00
  %5976 = fmul fast float %5973, %5969
  %5977 = fmul fast float %5974, %5970
  %5978 = select i1 %5975, float %5976, float %5965
  %5979 = select i1 %5975, float %5977, float %5966
  %5980 = fmul fast float %5978, 5.000000e-01
  %5981 = fmul fast float %5979, 5.000000e-01
  %5982 = fadd fast float %5980, 5.000000e-01
  %5983 = fadd fast float %5981, 5.000000e-01
  %5984 = uitofp i32 %5749 to float
  %5985 = call float @dx.op.binary.f32(i32 36, float %5956, float 3.000000e+00)  ; FMin(a,b)
  %5986 = fadd fast float %5985, 2.000000e+00
  %5987 = call float @dx.op.unary.f32(i32 21, float %5986)  ; Exp(value)
  %5988 = extractvalue %dx.types.CBufRet.f32 %5953, 1
  %5989 = fmul fast float %5988, %5987
  %5990 = fmul fast float %5989, 2.000000e+00
  %5991 = fsub fast float 1.000000e+00, %5990
  %5992 = fmul fast float %5982, %5991
  %5993 = fmul fast float %5983, %5991
  %5994 = fadd fast float %5992, %5989
  %5995 = fadd fast float %5993, %5989
  %5996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %41, float %5994, float %5995, float %5984, float undef, i32 0, i32 0, i32 undef, float %5956)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5997 = extractvalue %dx.types.ResRet.f32 %5996, 0
  %5998 = extractvalue %dx.types.ResRet.f32 %5996, 1
  %5999 = extractvalue %dx.types.ResRet.f32 %5996, 2
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 3
  %6002 = fmul fast float %6001, %5719
  %6003 = call float @dx.op.binary.f32(i32 36, float %5298, float %6002)  ; FMin(a,b)
  %6004 = select i1 %5952, float %6003, float %6002
  %6005 = fmul fast float %5997, %5797
  %6006 = fmul fast float %6005, %6004
  %6007 = fmul fast float %5998, %5797
  %6008 = fmul fast float %6007, %6004
  %6009 = fmul fast float %5999, %5797
  %6010 = fmul fast float %6009, %6004
  %6011 = fadd fast float %6006, %5694
  %6012 = fadd fast float %6008, %5695
  %6013 = fadd fast float %6010, %5696
  %6014 = fsub fast float %5697, %5797
  br label %5799

; <label>:6015                                    ; preds = %5799
  br label %6016

; <label>:6016                                    ; preds = %6015, %5663
  %6017 = phi float [ %5664, %5663 ], [ %5800, %6015 ]
  %6018 = phi float [ %5665, %5663 ], [ %5801, %6015 ]
  %6019 = phi float [ %5666, %5663 ], [ %5802, %6015 ]
  %6020 = phi float [ %5667, %5663 ], [ %5803, %6015 ]
  %6021 = add i32 %5668, 1
  %6022 = icmp ugt i32 %6021, %5660
  br i1 %6022, label %6023, label %5663, !llvm.loop !93

; <label>:6023                                    ; preds = %6016
  br label %6024

; <label>:6024                                    ; preds = %6023, %5645
  %6025 = phi float [ 0.000000e+00, %5645 ], [ %6017, %6023 ]
  %6026 = phi float [ 0.000000e+00, %5645 ], [ %6018, %6023 ]
  %6027 = phi float [ 0.000000e+00, %5645 ], [ %6019, %6023 ]
  %6028 = call float @dx.op.dot3.f32(i32 55, float %6025, float %6026, float %6027, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6029 = select i1 %292, float 0.000000e+00, float %6025
  %6030 = select i1 %292, float %6028, float %6026
  %6031 = select i1 %292, float 0.000000e+00, float %6027
  %6032 = fcmp fast olt float %5598, 0.000000e+00
  %6033 = call float @dx.op.unary.f32(i32 6, float %5598)  ; FAbs(value)
  %6034 = fmul fast float %6033, %5538
  %6035 = fmul fast float %6033, %5539
  %6036 = fmul fast float %6033, %5540
  %6037 = select i1 %6032, float %5538, float %6034
  %6038 = select i1 %6032, float %5539, float %6035
  %6039 = select i1 %6032, float %5540, float %6036
  %6040 = fsub fast float 1.000000e+00, %6033
  %6041 = call float @dx.op.unary.f32(i32 7, float %6040)  ; Saturate(value)
  %6042 = fmul fast float %6041, %6029
  %6043 = fmul fast float %6041, %6030
  %6044 = fmul fast float %6041, %6031
  %6045 = fadd fast float %6037, %6042
  %6046 = fadd fast float %6038, %6043
  %6047 = fadd fast float %6039, %6044
  br label %6048

; <label>:6048                                    ; preds = %6024, %5581
  %6049 = phi float [ %5538, %5581 ], [ %6045, %6024 ]
  %6050 = phi float [ %5539, %5581 ], [ %6046, %6024 ]
  %6051 = phi float [ %5540, %5581 ], [ %6047, %6024 ]
  %6052 = call float @dx.op.dot3.f32(i32 55, float %5259, float %5260, float %5261, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6053 = fcmp fast ogt float %6052, 0x3E7FF19E20000000
  %6054 = fdiv fast float 1.000000e+00, %6052
  %6055 = select i1 %6053, float %6054, float 0.000000e+00
  %6056 = fmul fast float %6055, %5259
  %6057 = fmul fast float %6055, %5260
  %6058 = fmul fast float %6055, %5261
  %6059 = fadd fast float %6056, -1.000000e+00
  %6060 = fadd fast float %6057, -1.000000e+00
  %6061 = fadd fast float %6058, -1.000000e+00
  %6062 = fmul fast float %6059, 5.000000e-01
  %6063 = fmul fast float %6060, 5.000000e-01
  %6064 = fmul fast float %6061, 5.000000e-01
  %6065 = fadd fast float %6062, 1.000000e+00
  %6066 = fadd fast float %6063, 1.000000e+00
  %6067 = fadd fast float %6064, 1.000000e+00
  %6068 = fmul fast float %5587, %4398
  %6069 = fmul fast float %5587, %4399
  %6070 = fmul fast float %5587, %4400
  %6071 = fadd fast float %6068, -1.000000e+00
  %6072 = fadd fast float %6069, -1.000000e+00
  %6073 = fadd fast float %6070, -1.000000e+00
  %6074 = fmul fast float %6071, %4312
  %6075 = fmul fast float %6072, %4312
  %6076 = fmul fast float %6073, %4312
  %6077 = fmul fast float %6049, %5582
  %6078 = fmul fast float %6050, %5583
  %6079 = fmul fast float %6051, %5584
  %6080 = fsub fast float 1.000000e+00, %5272
  %6081 = bitcast float %6080 to i32
  %6082 = sitofp i32 %6081 to float
  %6083 = fmul fast float %6082, 5.000000e+00
  %6084 = fadd fast float %6083, 0xC1EFBF8940000000
  %6085 = fptosi float %6084 to i32
  %6086 = bitcast i32 %6085 to float
  %6087 = fmul fast float %6086, %4287
  %6088 = fmul fast float %5530, %6087
  %6089 = fmul fast float %6088, %5587
  %6090 = fmul fast float %6089, %6065
  %6091 = fmul fast float %5531, %6087
  %6092 = fmul fast float %6091, %5587
  %6093 = fmul fast float %6092, %6066
  %6094 = fmul fast float %5532, %6087
  %6095 = fmul fast float %6094, %5587
  %6096 = fmul fast float %6095, %6067
  %6097 = fadd fast float %6077, %4273
  %6098 = fadd fast float %6097, %6090
  %6099 = fmul fast float %6098, %4312
  %6100 = fadd fast float %6078, %4274
  %6101 = fadd fast float %6100, %6093
  %6102 = fmul fast float %6101, %4312
  %6103 = fadd fast float %6079, %4275
  %6104 = fadd fast float %6103, %6096
  %6105 = fmul fast float %6104, %4312
  %6106 = fadd fast float %6076, 1.000000e+00
  %6107 = fadd fast float %6075, 1.000000e+00
  %6108 = fadd fast float %6074, 1.000000e+00
  %6109 = fmul fast float %5587, %5532
  %6110 = fmul fast float %5587, %5531
  %6111 = fmul fast float %5587, %5530
  %6112 = fmul fast float %6108, %5534
  %6113 = fmul fast float %6107, %5535
  %6114 = fmul fast float %6106, %5536
  %6115 = fadd fast float %6112, %6111
  %6116 = fmul fast float %6115, %4312
  %6117 = fadd fast float %6113, %6110
  %6118 = fmul fast float %6117, %4312
  %6119 = fadd fast float %6114, %6109
  %6120 = fmul fast float %6119, %4312
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 3
  %6123 = fcmp fast oeq float %6122, 0.000000e+00
  br i1 %6123, label %7807, label %6124

; <label>:6124                                    ; preds = %6048
  %6125 = extractvalue %dx.types.CBufRet.f32 %6121, 0
  %6126 = extractvalue %dx.types.CBufRet.f32 %6121, 1
  %6127 = extractvalue %dx.types.CBufRet.f32 %6121, 2
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6132, 0
  %6134 = extractvalue %dx.types.CBufRet.f32 %6132, 1
  %6135 = call float @dx.op.dot3.f32(i32 55, float %6129, float %6130, float %6131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = select i1 %292, float %6133, float %6129
  %6137 = select i1 %292, float %6135, float %6130
  %6138 = select i1 %292, float %6134, float %6131
  %6139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6140 = extractvalue %dx.types.CBufRet.f32 %6139, 2
  %6141 = fmul fast float %6140, %116
  %6142 = fmul fast float %6140, %117
  %6143 = fmul fast float %6140, %118
  %6144 = fadd fast float %6141, %188
  %6145 = fadd fast float %6142, %189
  %6146 = fadd fast float %6143, %190
  %6147 = fcmp fast olt float %6122, 0.000000e+00
  br i1 %6147, label %7405, label %6148

; <label>:6148                                    ; preds = %6124
  %6149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6150 = extractvalue %dx.types.CBufRet.f32 %6149, 0
  %6151 = extractvalue %dx.types.CBufRet.f32 %6149, 1
  %6152 = extractvalue %dx.types.CBufRet.f32 %6149, 2
  %6153 = extractvalue %dx.types.CBufRet.f32 %6149, 3
  %6154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6155 = extractvalue %dx.types.CBufRet.f32 %6154, 0
  %6156 = extractvalue %dx.types.CBufRet.f32 %6154, 1
  %6157 = extractvalue %dx.types.CBufRet.f32 %6154, 2
  %6158 = extractvalue %dx.types.CBufRet.f32 %6154, 3
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.CBufRet.f32 %6159, 2
  %6163 = extractvalue %dx.types.CBufRet.f32 %6159, 3
  %6164 = fmul fast float %6150, %6144
  %6165 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6151, float %6164)  ; FMad(a,b,c)
  %6166 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %6152, float %6165)  ; FMad(a,b,c)
  %6167 = fadd fast float %6166, %6153
  %6168 = fmul fast float %6155, %6144
  %6169 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6156, float %6168)  ; FMad(a,b,c)
  %6170 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %6157, float %6169)  ; FMad(a,b,c)
  %6171 = fadd fast float %6170, %6158
  %6172 = fmul fast float %6160, %6144
  %6173 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6161, float %6172)  ; FMad(a,b,c)
  %6174 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %6162, float %6173)  ; FMad(a,b,c)
  %6175 = fadd fast float %6174, %6163
  %6176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6177 = extractvalue %dx.types.CBufRet.f32 %6176, 0
  %6178 = fcmp fast une float %6177, 0.000000e+00
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6183 = fmul fast float %6182, %6167
  %6184 = fmul fast float %6182, %6171
  %6185 = fadd fast float %6183, %6180
  %6186 = fadd fast float %6184, %6181
  %6187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6188 = extractvalue %dx.types.CBufRet.f32 %6187, 0
  %6189 = extractvalue %dx.types.CBufRet.f32 %6187, 1
  %6190 = extractvalue %dx.types.CBufRet.f32 %6187, 3
  %6191 = fmul fast float %6190, %6167
  %6192 = fmul fast float %6190, %6171
  %6193 = fadd fast float %6191, %6188
  %6194 = fadd fast float %6192, %6189
  %6195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6196 = extractvalue %dx.types.CBufRet.f32 %6195, 1
  %6197 = fsub fast float %6196, %6175
  %6198 = extractvalue %dx.types.CBufRet.f32 %6195, 2
  %6199 = fmul fast float %6197, %6198
  %6200 = fsub fast float 1.000000e+00, %6199
  %6201 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  br i1 %6178, label %6262, label %6202

; <label>:6202                                    ; preds = %6148
  %6203 = extractvalue %dx.types.CBufRet.f32 %6187, 2
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6206 = fadd fast float %6205, %6203
  %6207 = fcmp fast ogt float %6206, 0.000000e+00
  br i1 %6207, label %6208, label %6232

; <label>:6208                                    ; preds = %6202
  %6209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6210 = extractvalue %dx.types.CBufRet.f32 %6209, 0
  %6211 = extractvalue %dx.types.CBufRet.f32 %6209, 1
  %6212 = fsub fast float %6193, %6210
  %6213 = fsub fast float %6194, %6211
  %6214 = fcmp fast olt float %6212, 0.000000e+00
  %6215 = fcmp fast olt float %6213, 0.000000e+00
  %6216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6217 = extractvalue %dx.types.CBufRet.f32 %6216, 0
  %6218 = extractvalue %dx.types.CBufRet.f32 %6216, 1
  %6219 = extractvalue %dx.types.CBufRet.f32 %6216, 2
  %6220 = extractvalue %dx.types.CBufRet.f32 %6216, 3
  %6221 = select i1 %6214, float %6217, float %6219
  %6222 = select i1 %6215, float %6218, float %6220
  %6223 = fmul fast float %6221, %6212
  %6224 = fmul fast float %6222, %6213
  %6225 = call float @dx.op.unary.f32(i32 6, float %6223)  ; FAbs(value)
  %6226 = call float @dx.op.unary.f32(i32 6, float %6224)  ; FAbs(value)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6228 = call float @dx.op.binary.f32(i32 35, float %6225, float %6226)  ; FMax(a,b)
  %6229 = fsub fast float %6227, %6228
  %6230 = call float @dx.op.unary.f32(i32 7, float %6229)  ; Saturate(value)
  %6231 = fmul fast float %6230, %6201
  br label %6232

; <label>:6232                                    ; preds = %6208, %6202
  %6233 = phi float [ %6231, %6208 ], [ 0.000000e+00, %6202 ]
  %6234 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6235 = extractvalue %dx.types.CBufRet.f32 %6204, 1
  %6236 = fadd fast float %6235, %6234
  %6237 = fcmp fast ogt float %6236, 0.000000e+00
  br i1 %6237, label %6238, label %6262

; <label>:6238                                    ; preds = %6232
  %6239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6240 = extractvalue %dx.types.CBufRet.f32 %6239, 0
  %6241 = extractvalue %dx.types.CBufRet.f32 %6239, 1
  %6242 = fsub fast float %6185, %6240
  %6243 = fsub fast float %6186, %6241
  %6244 = fcmp fast olt float %6242, 0.000000e+00
  %6245 = fcmp fast olt float %6243, 0.000000e+00
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6251 = select i1 %6244, float %6247, float %6249
  %6252 = select i1 %6245, float %6248, float %6250
  %6253 = fmul fast float %6251, %6242
  %6254 = fmul fast float %6252, %6243
  %6255 = call float @dx.op.unary.f32(i32 6, float %6253)  ; FAbs(value)
  %6256 = call float @dx.op.unary.f32(i32 6, float %6254)  ; FAbs(value)
  %6257 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6258 = call float @dx.op.binary.f32(i32 35, float %6255, float %6256)  ; FMax(a,b)
  %6259 = fsub fast float %6257, %6258
  %6260 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6261 = fmul fast float %6260, %6201
  br label %6262

; <label>:6262                                    ; preds = %6238, %6232, %6148
  %6263 = phi float [ 0.000000e+00, %6148 ], [ %6261, %6238 ], [ 0.000000e+00, %6232 ]
  %6264 = phi float [ 0.000000e+00, %6148 ], [ %6233, %6238 ], [ %6233, %6232 ]
  %6265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6266 = extractvalue %dx.types.CBufRet.f32 %6265, 1
  %6267 = call float @dx.op.unary.f32(i32 7, float %6266)  ; Saturate(value)
  %6268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6269 = extractvalue %dx.types.CBufRet.f32 %6268, 0
  %6270 = extractvalue %dx.types.CBufRet.f32 %6268, 1
  %6271 = fsub fast float %6167, %6269
  %6272 = fsub fast float %6171, %6270
  %6273 = fcmp fast olt float %6271, 0.000000e+00
  %6274 = fcmp fast olt float %6272, 0.000000e+00
  %6275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6276 = extractvalue %dx.types.CBufRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.CBufRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.CBufRet.f32 %6275, 2
  %6279 = extractvalue %dx.types.CBufRet.f32 %6275, 3
  %6280 = select i1 %6273, float %6276, float %6278
  %6281 = select i1 %6274, float %6277, float %6279
  %6282 = fmul fast float %6280, %6271
  %6283 = fmul fast float %6281, %6272
  %6284 = call float @dx.op.unary.f32(i32 6, float %6282)  ; FAbs(value)
  %6285 = call float @dx.op.unary.f32(i32 6, float %6283)  ; FAbs(value)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6139, 0
  %6287 = call float @dx.op.binary.f32(i32 35, float %6284, float %6285)  ; FMax(a,b)
  %6288 = fsub fast float %6286, %6287
  %6289 = call float @dx.op.unary.f32(i32 7, float %6288)  ; Saturate(value)
  %6290 = call float @dx.op.binary.f32(i32 36, float %6289, float %6267)  ; FMin(a,b)
  %6291 = fmul fast float %6290, %6201
  %6292 = fsub fast float %6263, %6291
  %6293 = fsub fast float %6264, %6263
  %6294 = fsub fast float %6293, %6291
  %6295 = call float @dx.op.binary.f32(i32 35, float %6263, float %6264)  ; FMax(a,b)
  %6296 = call float @dx.op.binary.f32(i32 35, float %6291, float %6295)  ; FMax(a,b)
  %6297 = fcmp fast olt float %6296, 1.000000e+00
  br i1 %6297, label %6298, label %6696, !dx.controlflow.hints !95

; <label>:6298                                    ; preds = %6262
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  %6301 = fcmp fast une float %6300, 0.000000e+00
  br i1 %6301, label %6302, label %6696, !dx.controlflow.hints !96

; <label>:6302                                    ; preds = %6298
  %6303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.f32 %6303, 0
  %6305 = extractvalue %dx.types.CBufRet.f32 %6303, 1
  %6306 = extractvalue %dx.types.CBufRet.f32 %6303, 2
  %6307 = extractvalue %dx.types.CBufRet.f32 %6303, 3
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6310 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6311 = extractvalue %dx.types.CBufRet.f32 %6308, 2
  %6312 = extractvalue %dx.types.CBufRet.f32 %6308, 3
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6315 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6316 = extractvalue %dx.types.CBufRet.f32 %6313, 2
  %6317 = extractvalue %dx.types.CBufRet.f32 %6313, 3
  %6318 = fmul fast float %6304, %6144
  %6319 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6305, float %6318)  ; FMad(a,b,c)
  %6320 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %6306, float %6319)  ; FMad(a,b,c)
  %6321 = fadd fast float %6320, %6307
  %6322 = fmul fast float %6309, %6144
  %6323 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6310, float %6322)  ; FMad(a,b,c)
  %6324 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %6311, float %6323)  ; FMad(a,b,c)
  %6325 = fadd fast float %6324, %6312
  %6326 = fmul fast float %6314, %6144
  %6327 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %6315, float %6326)  ; FMad(a,b,c)
  %6328 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %6316, float %6327)  ; FMad(a,b,c)
  %6329 = fadd fast float %6328, %6317
  %6330 = fcmp fast oge float %6321, 1.000000e+00
  %6331 = fcmp fast oge float %6325, 1.000000e+00
  %6332 = or i1 %6330, %6331
  %6333 = fcmp fast olt float %6321, 0.000000e+00
  %6334 = fcmp fast olt float %6325, 0.000000e+00
  %6335 = or i1 %6333, %6334
  %6336 = or i1 %6332, %6335
  br i1 %6336, label %6696, label %6337, !dx.controlflow.hints !97

; <label>:6337                                    ; preds = %6302
  %6338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6339 = extractvalue %dx.types.CBufRet.f32 %6338, 0
  %6340 = extractvalue %dx.types.CBufRet.f32 %6338, 1
  %6341 = extractvalue %dx.types.CBufRet.f32 %6338, 2
  %6342 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.i32 %6342, 2
  %6344 = uitofp i32 %6343 to float
  %6345 = extractvalue %dx.types.CBufRet.i32 %6342, 3
  %6346 = uitofp i32 %6345 to float
  %6347 = extractvalue %dx.types.CBufRet.f32 %6338, 3
  %6348 = fmul fast float %6347, 2.000000e+00
  %6349 = fsub fast float %6321, %6339
  %6350 = fsub fast float %6325, %6340
  %6351 = fmul fast float %6348, %6349
  %6352 = fmul fast float %6348, %6350
  %6353 = fdiv fast float 1.000000e+00, %6127
  %6354 = fmul fast float %6352, %6353
  %6355 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6356 = fmul fast float %6341, %6146
  %6357 = fmul fast float %6356, %6348
  %6358 = call float @dx.op.unary.f32(i32 6, float %6357)  ; FAbs(value)
  %6359 = call float @dx.op.unary.f32(i32 6, float %6351)  ; FAbs(value)
  %6360 = call float @dx.op.binary.f32(i32 35, float %6358, float %6355)  ; FMax(a,b)
  %6361 = call float @dx.op.binary.f32(i32 35, float %6359, float %6360)  ; FMax(a,b)
  %6362 = fmul fast float %6361, 2.000000e+00
  %6363 = call float @dx.op.unary.f32(i32 23, float %6362)  ; Log(value)
  %6364 = call float @dx.op.binary.f32(i32 35, float %6363, float %6344)  ; FMax(a,b)
  %6365 = call float @dx.op.unary.f32(i32 22, float %6364)  ; Frc(value)
  %6366 = fadd fast float %6365, 0xBFEA666660000000
  %6367 = fmul fast float %6366, 8.000000e+00
  %6368 = call float @dx.op.unary.f32(i32 7, float %6367)  ; Saturate(value)
  %6369 = call float @dx.op.unary.f32(i32 27, float %6364)  ; Round_ni(value)
  %6370 = fadd fast float %6369, %6368
  %6371 = call float @dx.op.binary.f32(i32 36, float %6370, float %6346)  ; FMin(a,b)
  %6372 = call float @dx.op.unary.f32(i32 27, float %6371)  ; Round_ni(value)
  %6373 = fsub fast float -0.000000e+00, %6372
  %6374 = call float @dx.op.unary.f32(i32 21, float %6373)  ; Exp(value)
  %6375 = fmul fast float %6374, %6348
  %6376 = fmul fast float %6375, %6321
  %6377 = fmul fast float %6375, %6325
  %6378 = fmul fast float %6376, 2.500000e-01
  %6379 = fmul fast float %6377, 2.500000e-01
  %6380 = fadd fast float %6378, 5.000000e-01
  %6381 = fadd fast float %6379, 5.000000e-01
  %6382 = fsub fast float %6346, %6344
  %6383 = fptoui float %6382 to i32
  %6384 = add i32 %6383, 320
  %6385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %6384)  ; CBufferLoadLegacy(handle,regIndex)
  %6386 = extractvalue %dx.types.CBufRet.f32 %6385, 0
  %6387 = extractvalue %dx.types.CBufRet.f32 %6385, 1
  %6388 = fcmp fast une float %6371, %6346
  %6389 = fsub fast float %6321, %6386
  %6390 = fsub fast float %6325, %6387
  %6391 = call float @dx.op.unary.f32(i32 6, float %6389)  ; FAbs(value)
  %6392 = call float @dx.op.unary.f32(i32 6, float %6390)  ; FAbs(value)
  %6393 = fmul fast float %6391, %6375
  %6394 = fmul fast float %6392, %6375
  %6395 = fcmp fast olt float %6393, 1.000000e+00
  %6396 = fcmp fast olt float %6394, 1.000000e+00
  %6397 = and i1 %6395, %6396
  %6398 = or i1 %6388, %6397
  br i1 %6398, label %6399, label %6696, !dx.controlflow.hints !98

; <label>:6399                                    ; preds = %6337
  %6400 = fmul fast float %6377, 5.000000e-01
  %6401 = fmul fast float %6376, 5.000000e-01
  %6402 = fadd fast float %6400, 5.000000e-01
  %6403 = fadd fast float %6401, 5.000000e-01
  %6404 = sitofp i32 %6343 to float
  %6405 = fsub fast float %6371, %6404
  %6406 = call float @dx.op.unary.f32(i32 27, float %6405)  ; Round_ni(value)
  %6407 = call float @dx.op.unary.f32(i32 22, float %6371)  ; Frc(value)
  %6408 = call float @dx.op.unary.f32(i32 22, float %6403)  ; Frc(value)
  %6409 = call float @dx.op.unary.f32(i32 22, float %6402)  ; Frc(value)
  %6410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6408, float %6409, float %6406, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6411 = extractvalue %dx.types.ResRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.ResRet.f32 %6410, 1
  %6413 = extractvalue %dx.types.ResRet.f32 %6410, 2
  %6414 = extractvalue %dx.types.ResRet.f32 %6410, 3
  %6415 = fcmp fast ogt float %6407, 0.000000e+00
  br i1 %6415, label %6416, label %6437, !dx.controlflow.hints !99

; <label>:6416                                    ; preds = %6399
  %6417 = fadd fast float %6406, 1.000000e+00
  %6418 = call float @dx.op.unary.f32(i32 22, float %6380)  ; Frc(value)
  %6419 = call float @dx.op.unary.f32(i32 22, float %6381)  ; Frc(value)
  %6420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %6418, float %6419, float %6417, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6421 = extractvalue %dx.types.ResRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.ResRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.ResRet.f32 %6420, 2
  %6424 = extractvalue %dx.types.ResRet.f32 %6420, 3
  %6425 = fsub fast float %6421, %6411
  %6426 = fsub fast float %6422, %6412
  %6427 = fsub fast float %6423, %6413
  %6428 = fsub fast float %6424, %6414
  %6429 = fmul fast float %6425, %6407
  %6430 = fmul fast float %6426, %6407
  %6431 = fmul fast float %6427, %6407
  %6432 = fmul fast float %6428, %6407
  %6433 = fadd fast float %6429, %6411
  %6434 = fadd fast float %6430, %6412
  %6435 = fadd fast float %6431, %6413
  %6436 = fadd fast float %6432, %6414
  br label %6437

; <label>:6437                                    ; preds = %6416, %6399
  %6438 = phi float [ %6433, %6416 ], [ %6411, %6399 ]
  %6439 = phi float [ %6434, %6416 ], [ %6412, %6399 ]
  %6440 = phi float [ %6435, %6416 ], [ %6413, %6399 ]
  %6441 = phi float [ %6436, %6416 ], [ %6414, %6399 ]
  %6442 = fadd fast float %6438, -5.000000e-01
  %6443 = fadd fast float %6440, -5.000000e-01
  %6444 = fmul fast float %6442, 0xBFD5555560000000
  %6445 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6443, float %6444)  ; FMad(a,b,c)
  %6446 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6439, float 0.000000e+00)  ; FMad(a,b,c)
  %6447 = fadd fast float %6446, %6441
  %6448 = fmul fast float %6442, -7.500000e-01
  %6449 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6443, float %6448)  ; FMad(a,b,c)
  %6450 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6439, float 0.000000e+00)  ; FMad(a,b,c)
  %6451 = fadd fast float %6450, %6441
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 0
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 0
  %6456 = extractvalue %dx.types.CBufRet.f32 %6454, 1
  %6457 = extractvalue %dx.types.CBufRet.f32 %6454, 2
  %6458 = extractvalue %dx.types.CBufRet.f32 %6454, 3
  %6459 = fsub fast float %6455, %6445
  %6460 = fsub fast float %6456, %6447
  %6461 = fsub fast float %6457, %6449
  %6462 = fsub fast float %6458, %6451
  %6463 = fmul fast float %6459, %6453
  %6464 = fmul fast float %6460, %6453
  %6465 = fmul fast float %6461, %6453
  %6466 = fmul fast float %6462, %6453
  %6467 = fadd fast float %6463, %6445
  %6468 = fadd fast float %6464, %6447
  %6469 = fadd fast float %6465, %6449
  %6470 = fadd fast float %6466, %6451
  %6471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6472 = extractvalue %dx.types.ResRet.i32 %6471, 0
  %6473 = and i32 %6472, 536870911
  %6474 = uitofp i32 %6473 to float
  %6475 = fmul fast float %6474, %6321
  %6476 = fmul fast float %6474, %6325
  %6477 = fptoui float %6475 to i32
  %6478 = fptoui float %6476 to i32
  %6479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6480 = extractvalue %dx.types.ResRet.i32 %6479, 0
  %6481 = and i32 %6480, 31
  %6482 = lshr i32 %6477, %6481
  %6483 = lshr i32 %6478, %6481
  %6484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6485 = extractvalue %dx.types.ResRet.i32 %6484, 0
  %6486 = and i32 %6485, 31
  %6487 = shl i32 1, %6486
  %6488 = call i32 @dx.op.binary.i32(i32 40, i32 %6487, i32 4)  ; UMin(a,b)
  %6489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6490 = extractvalue %dx.types.ResRet.i32 %6489, 0
  %6491 = extractvalue %dx.types.ResRet.i32 %6489, 1
  %6492 = icmp eq i32 %6488, 0
  br i1 %6492, label %6534, label %6493

; <label>:6493                                    ; preds = %6437
  br label %6494

; <label>:6494                                    ; preds = %6522, %6493
  %6495 = phi i32 [ %6525, %6522 ], [ 0, %6493 ]
  %6496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6497 = extractvalue %dx.types.ResRet.i32 %6496, 0
  %6498 = lshr i32 %6497, 16
  %6499 = and i32 %6498, 31
  %6500 = shl i32 %6483, %6499
  %6501 = add i32 %6500, %6482
  %6502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6503 = extractvalue %dx.types.ResRet.i32 %6502, 0
  %6504 = and i32 %6503, 31
  %6505 = shl i32 %6501, %6504
  %6506 = add i32 %6505, %6495
  %6507 = shl i32 %6506, 2
  %6508 = add i32 %6507, 32
  %6509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6508, i32 undef)  ; BufferLoad(srv,index,wot)
  %6510 = extractvalue %dx.types.ResRet.i32 %6509, 0
  %6511 = icmp slt i32 %6510, 0
  %6512 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6495
  %6513 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6495
  %6514 = bitcast float* %6512 to i32*
  %6515 = bitcast float* %6513 to i32*
  br i1 %6511, label %6516, label %6522

; <label>:6516                                    ; preds = %6494
  %6517 = and i32 %6510, 1073741823
  %6518 = add nuw nsw i32 %6517, 20
  %6519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6518, i32 undef)  ; BufferLoad(srv,index,wot)
  %6520 = extractvalue %dx.types.ResRet.i32 %6519, 0
  %6521 = extractvalue %dx.types.ResRet.i32 %6519, 1
  br label %6522

; <label>:6522                                    ; preds = %6516, %6494
  %6523 = phi i32 [ %6520, %6516 ], [ %6490, %6494 ]
  %6524 = phi i32 [ %6521, %6516 ], [ %6491, %6494 ]
  store i32 %6523, i32* %6514, align 4
  store i32 %6524, i32* %6515, align 4
  %6525 = add nuw i32 %6495, 1
  %6526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6527 = extractvalue %dx.types.CBufRet.i32 %6526, 2
  %6528 = icmp eq i32 %6527, 0
  %6529 = icmp ugt i32 %6510, -1073741825
  %6530 = and i1 %6529, %6528
  %6531 = icmp ult i32 %6525, %6488
  %6532 = and i1 %6530, %6531
  br i1 %6532, label %6494, label %6533

; <label>:6533                                    ; preds = %6522
  br label %6534

; <label>:6534                                    ; preds = %6533, %6437
  %6535 = phi i32 [ 0, %6437 ], [ %6525, %6533 ]
  %6536 = extractvalue %dx.types.CBufRet.f32 %6299, 2
  %6537 = fptoui float %6536 to i32
  %6538 = icmp eq i32 %6537, 0
  br i1 %6538, label %6590, label %6539

; <label>:6539                                    ; preds = %6534
  br label %6540

; <label>:6540                                    ; preds = %6585, %6539
  %6541 = phi i32 [ %6586, %6585 ], [ %6535, %6539 ]
  %6542 = phi i32 [ %6587, %6585 ], [ 0, %6539 ]
  %6543 = lshr i32 %6542, 2
  %6544 = and i32 %6542, 3
  %6545 = add nuw nsw i32 %6543, 83
  %6546 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 %6545)  ; CBufferLoadLegacy(handle,regIndex)
  %6547 = extractvalue %dx.types.CBufRet.i32 %6546, 0
  %6548 = extractvalue %dx.types.CBufRet.i32 %6546, 1
  %6549 = extractvalue %dx.types.CBufRet.i32 %6546, 2
  %6550 = extractvalue %dx.types.CBufRet.i32 %6546, 3
  %6551 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 0
  store i32 %6547, i32* %6551, align 4
  %6552 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 1
  store i32 %6548, i32* %6552, align 4
  %6553 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 2
  store i32 %6549, i32* %6553, align 4
  %6554 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 3
  store i32 %6550, i32* %6554, align 4
  %6555 = getelementptr inbounds [4 x i32], [4 x i32]* %48, i32 0, i32 %6544
  %6556 = load i32, i32* %6555, align 4, !tbaa !100, !noalias !104
  %6557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6558 = extractvalue %dx.types.ResRet.i32 %6557, 0
  %6559 = lshr i32 %6558, 16
  %6560 = and i32 %6559, 31
  %6561 = shl i32 %6483, %6560
  %6562 = add i32 %6561, %6482
  %6563 = shl i32 %6562, 2
  %6564 = add i32 %6563, %6556
  %6565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6564, i32 undef)  ; BufferLoad(srv,index,wot)
  %6566 = extractvalue %dx.types.ResRet.i32 %6565, 0
  %6567 = icmp eq i32 %6566, 0
  br i1 %6567, label %6585, label %6568

; <label>:6568                                    ; preds = %6540
  %6569 = icmp slt i32 %6566, 0
  %6570 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6541
  %6571 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6541
  %6572 = bitcast float* %6570 to i32*
  %6573 = bitcast float* %6571 to i32*
  br i1 %6569, label %6574, label %6581

; <label>:6574                                    ; preds = %6568
  %6575 = and i32 %6566, 1073741823
  %6576 = add i32 %6556, 20
  %6577 = add i32 %6576, %6575
  %6578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6577, i32 undef)  ; BufferLoad(srv,index,wot)
  %6579 = extractvalue %dx.types.ResRet.i32 %6578, 0
  %6580 = extractvalue %dx.types.ResRet.i32 %6578, 1
  br label %6581

; <label>:6581                                    ; preds = %6574, %6568
  %6582 = phi i32 [ %6579, %6574 ], [ %6490, %6568 ]
  %6583 = phi i32 [ %6580, %6574 ], [ %6491, %6568 ]
  store i32 %6582, i32* %6572, align 4
  store i32 %6583, i32* %6573, align 4
  %6584 = add i32 %6541, 1
  br label %6585

; <label>:6585                                    ; preds = %6581, %6540
  %6586 = phi i32 [ %6541, %6540 ], [ %6584, %6581 ]
  %6587 = add nuw i32 %6542, 1
  %6588 = icmp eq i32 %6587, %6537
  br i1 %6588, label %6589, label %6540

; <label>:6589                                    ; preds = %6585
  br label %6590

; <label>:6590                                    ; preds = %6589, %6534
  %6591 = phi i32 [ %6535, %6534 ], [ %6586, %6589 ]
  %6592 = icmp eq i32 %6591, 1
  %6593 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %6594 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %6592, label %6595, label %6598

; <label>:6595                                    ; preds = %6590
  %6596 = load float, float* %6593, align 4
  %6597 = load float, float* %6594, align 4
  br label %6625

; <label>:6598                                    ; preds = %6590
  %6599 = load float, float* %6593, align 4
  %6600 = load float, float* %6594, align 4
  %6601 = fdiv fast float 1.000000e+00, %6600
  %6602 = fsub fast float %6599, %6601
  %6603 = icmp ugt i32 %6591, 1
  br i1 %6603, label %6604, label %6620

; <label>:6604                                    ; preds = %6598
  br label %6605

; <label>:6605                                    ; preds = %6605, %6604
  %6606 = phi float [ %6615, %6605 ], [ %6602, %6604 ]
  %6607 = phi float [ %6616, %6605 ], [ %6599, %6604 ]
  %6608 = phi i32 [ %6617, %6605 ], [ 1, %6604 ]
  %6609 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %6608
  %6610 = load float, float* %6609, align 4
  %6611 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %6608
  %6612 = load float, float* %6611, align 4
  %6613 = fdiv fast float 1.000000e+00, %6612
  %6614 = fsub fast float %6610, %6613
  %6615 = call float @dx.op.binary.f32(i32 36, float %6606, float %6614)  ; FMin(a,b)
  %6616 = call float @dx.op.binary.f32(i32 35, float %6607, float %6610)  ; FMax(a,b)
  %6617 = add nuw i32 %6608, 1
  %6618 = icmp eq i32 %6617, %6591
  br i1 %6618, label %6619, label %6605

; <label>:6619                                    ; preds = %6605
  br label %6620

; <label>:6620                                    ; preds = %6619, %6598
  %6621 = phi float [ %6602, %6598 ], [ %6615, %6619 ]
  %6622 = phi float [ %6599, %6598 ], [ %6616, %6619 ]
  %6623 = fsub fast float %6622, %6621
  %6624 = fdiv fast float 1.000000e+00, %6623
  br label %6625

; <label>:6625                                    ; preds = %6620, %6595
  %6626 = phi float [ %6596, %6595 ], [ %6622, %6620 ]
  %6627 = phi float [ %6597, %6595 ], [ %6624, %6620 ]
  %6628 = fadd fast float %6329, %6626
  %6629 = fmul fast float %6628, %6627
  %6630 = call float @dx.op.unary.f32(i32 7, float %6629)  ; Saturate(value)
  %6631 = fmul fast float %6630, 2.000000e+00
  %6632 = fsub fast float 1.000000e+00, %6631
  %6633 = fmul fast float %6467, %6467
  %6634 = fsub fast float %6468, %6633
  %6635 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6634)  ; FMax(a,b)
  %6636 = fdiv fast float 1.000000e+00, %6635
  %6637 = fmul fast float %6468, %6467
  %6638 = fsub fast float %6469, %6637
  %6639 = fsub fast float %6632, %6467
  %6640 = fmul fast float %6632, %6632
  %6641 = fsub fast float %6640, %6468
  %6642 = fmul fast float %6636, %6638
  %6643 = fmul fast float %6642, %6639
  %6644 = fsub fast float %6641, %6643
  %6645 = fmul fast float %6468, %6468
  %6646 = fsub fast float %6470, %6645
  %6647 = fmul fast float %6638, %6638
  %6648 = fmul fast float %6647, %6636
  %6649 = fsub fast float %6646, %6648
  %6650 = fdiv fast float %6644, %6649
  %6651 = fmul fast float %6650, %6638
  %6652 = fsub fast float %6639, %6651
  %6653 = fmul fast float %6652, %6636
  %6654 = fmul fast float %6653, %6467
  %6655 = fsub fast float 1.000000e+00, %6654
  %6656 = fmul fast float %6650, %6468
  %6657 = fsub fast float %6655, %6656
  %6658 = fmul fast float %6653, %6653
  %6659 = fmul fast float %6650, 4.000000e+00
  %6660 = fmul fast float %6659, %6657
  %6661 = fsub fast float %6658, %6660
  %6662 = call float @dx.op.unary.f32(i32 24, float %6661)  ; Sqrt(value)
  %6663 = fcmp fast oge float %6653, 0.000000e+00
  %6664 = fsub fast float -0.000000e+00, %6662
  %6665 = select i1 %6663, float %6664, float %6662
  %6666 = fsub fast float %6665, %6653
  %6667 = fdiv fast float %6666, %6650
  %6668 = fdiv fast float %6657, %6666
  %6669 = fmul fast float %6667, 5.000000e-01
  %6670 = fmul fast float %6668, 2.000000e+00
  %6671 = select i1 %6663, float %6669, float %6670
  %6672 = select i1 %6663, float %6670, float %6669
  %6673 = call float @dx.op.binary.f32(i32 35, float %6671, float %6672)  ; FMax(a,b)
  %6674 = call float @dx.op.binary.f32(i32 36, float %6671, float %6672)  ; FMin(a,b)
  %6675 = fcmp fast ogt float %6632, %6673
  %6676 = fsub fast float %6632, %6674
  %6677 = fsub fast float %6632, %6673
  %6678 = fsub fast float %6673, %6674
  %6679 = select i1 %6675, float %6677, float %6678
  %6680 = fmul float %6676, %6679
  %6681 = select i1 %6675, float %6674, float %6632
  %6682 = fcmp fast ogt float %6632, %6674
  %6683 = fmul fast float %6681, %6673
  %6684 = fadd fast float %6681, %6673
  %6685 = fmul fast float %6684, %6467
  %6686 = fadd fast float %6683, %6468
  %6687 = fsub fast float %6686, %6685
  %6688 = fdiv fast float %6687, %6680
  %6689 = select i1 %6682, float %6688, float 0.000000e+00
  %6690 = fsub fast float 1.000000e+00, %6689
  %6691 = select i1 %6675, float %6690, float %6689
  %6692 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6693 = extractvalue %dx.types.CBufRet.f32 %6452, 3
  %6694 = fmul fast float %6693, %6692
  %6695 = fsub fast float 1.000000e+00, %6694
  br label %6696

; <label>:6696                                    ; preds = %6625, %6337, %6302, %6298, %6262
  %6697 = phi float [ 1.000000e+00, %6262 ], [ %6695, %6625 ], [ 1.000000e+00, %6302 ], [ 1.000000e+00, %6337 ], [ 1.000000e+00, %6298 ]
  %6698 = fcmp fast ogt float %6294, 0.000000e+00
  br i1 %6698, label %6699, label %6863, !dx.controlflow.hints !113

; <label>:6699                                    ; preds = %6696
  %6700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6701 = extractvalue %dx.types.CBufRet.f32 %6700, 2
  %6702 = fadd fast float %6701, %6175
  %6703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6704 = extractvalue %dx.types.CBufRet.f32 %6703, 2
  %6705 = extractvalue %dx.types.CBufRet.f32 %6703, 3
  %6706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6707 = extractvalue %dx.types.CBufRet.f32 %6706, 2
  %6708 = call float @dx.op.binary.f32(i32 35, float %6702, float 0.000000e+00)  ; FMax(a,b)
  %6709 = fadd fast float %6708, 0x3F10000000000000
  %6710 = fcmp fast oeq float %6707, 0.000000e+00
  br i1 %6710, label %6711, label %6778

; <label>:6711                                    ; preds = %6699
  %6712 = extractvalue %dx.types.CBufRet.f32 %6703, 1
  %6713 = extractvalue %dx.types.CBufRet.f32 %6703, 0
  %6714 = fmul fast float %6713, %6193
  %6715 = fmul fast float %6712, %6194
  %6716 = fadd fast float %6714, 5.000000e-01
  %6717 = call float @dx.op.unary.f32(i32 27, float %6716)  ; Round_ni(value)
  %6718 = fadd fast float %6715, 5.000000e-01
  %6719 = call float @dx.op.unary.f32(i32 27, float %6718)  ; Round_ni(value)
  %6720 = fsub fast float %6716, %6717
  %6721 = fsub fast float %6718, %6719
  %6722 = fadd fast float %6717, -5.000000e-01
  %6723 = fadd fast float %6719, -5.000000e-01
  %6724 = fmul fast float %6720, 2.000000e+00
  %6725 = fsub fast float 3.000000e+00, %6724
  %6726 = fadd fast float %6724, 1.000000e+00
  %6727 = fsub fast float 2.000000e+00, %6720
  %6728 = bitcast float %6725 to i32
  %6729 = sub nsw i32 2129859010, %6728
  %6730 = bitcast i32 %6729 to float
  %6731 = fmul fast float %6730, %6727
  %6732 = fadd fast float %6731, -1.000000e+00
  %6733 = bitcast float %6726 to i32
  %6734 = sub nsw i32 2129859010, %6733
  %6735 = bitcast i32 %6734 to float
  %6736 = fmul fast float %6735, %6720
  %6737 = fadd fast float %6736, 1.000000e+00
  %6738 = fmul fast float %6721, 2.000000e+00
  %6739 = fsub fast float 3.000000e+00, %6738
  %6740 = fadd fast float %6738, 1.000000e+00
  %6741 = fsub fast float 2.000000e+00, %6721
  %6742 = bitcast float %6739 to i32
  %6743 = sub nsw i32 2129859010, %6742
  %6744 = bitcast i32 %6743 to float
  %6745 = fmul fast float %6744, %6741
  %6746 = fadd fast float %6745, -1.000000e+00
  %6747 = bitcast float %6740 to i32
  %6748 = sub nsw i32 2129859010, %6747
  %6749 = bitcast i32 %6748 to float
  %6750 = fmul fast float %6749, %6721
  %6751 = fadd fast float %6750, 1.000000e+00
  %6752 = fadd fast float %6732, %6722
  %6753 = fmul fast float %6752, %6704
  %6754 = fadd fast float %6746, %6723
  %6755 = fmul fast float %6754, %6705
  %6756 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6753, float %6755, float undef, float undef, i32 0, i32 0, i32 undef, float %6709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6757 = extractvalue %dx.types.ResRet.f32 %6756, 0
  %6758 = fmul fast float %6757, %6725
  %6759 = fadd fast float %6737, %6722
  %6760 = fmul fast float %6759, %6704
  %6761 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6760, float %6755, float undef, float undef, i32 0, i32 0, i32 undef, float %6709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6762 = extractvalue %dx.types.ResRet.f32 %6761, 0
  %6763 = fmul fast float %6762, %6726
  %6764 = fadd fast float %6751, %6723
  %6765 = fmul fast float %6764, %6705
  %6766 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6753, float %6765, float undef, float undef, i32 0, i32 0, i32 undef, float %6709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6767 = extractvalue %dx.types.ResRet.f32 %6766, 0
  %6768 = fmul fast float %6767, %6725
  %6769 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %45, float %6760, float %6765, float undef, float undef, i32 0, i32 0, i32 undef, float %6709)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6770 = extractvalue %dx.types.ResRet.f32 %6769, 0
  %6771 = fmul fast float %6770, %6726
  %6772 = fadd fast float %6771, %6768
  %6773 = fmul fast float %6772, %6740
  %6774 = fadd fast float %6763, %6758
  %6775 = fmul fast float %6774, %6739
  %6776 = fadd fast float %6775, %6773
  %6777 = fmul fast float %6776, 6.250000e-02
  br label %6863

; <label>:6778                                    ; preds = %6699
  %6779 = fmul fast float %303, 0x401921FB60000000
  %6780 = call float @dx.op.unary.f32(i32 13, float %6779)  ; Sin(value)
  %6781 = call float @dx.op.unary.f32(i32 12, float %6779)  ; Cos(value)
  %6782 = fsub fast float -0.000000e+00, %6780
  br label %6783

; <label>:6783                                    ; preds = %6832, %6778
  %6784 = phi float [ 0.000000e+00, %6778 ], [ %6827, %6832 ]
  %6785 = phi float [ 0.000000e+00, %6778 ], [ %6829, %6832 ]
  %6786 = phi i32 [ 0, %6778 ], [ %6833, %6832 ]
  %6787 = mul i32 %6786, 2
  %6788 = add i32 0, %6787
  %6789 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6788
  %6790 = load float, float* %6789, align 4
  %6791 = mul i32 %6786, 2
  %6792 = add i32 1, %6791
  %6793 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6792
  %6794 = load float, float* %6793, align 4
  %6795 = fmul fast float %6790, %6781
  %6796 = call float @dx.op.tertiary.f32(i32 46, float %6794, float %6782, float %6795)  ; FMad(a,b,c)
  %6797 = fmul fast float %6790, %6780
  %6798 = call float @dx.op.tertiary.f32(i32 46, float %6794, float %6781, float %6797)  ; FMad(a,b,c)
  %6799 = fmul fast float %6796, %6707
  %6800 = fmul fast float %6798, %6707
  %6801 = fadd fast float %6799, %6193
  %6802 = fadd fast float %6800, %6194
  %6803 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %44, float %6801, float %6802, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6804 = extractvalue %dx.types.ResRet.f32 %6803, 0
  %6805 = extractvalue %dx.types.ResRet.f32 %6803, 1
  %6806 = extractvalue %dx.types.ResRet.f32 %6803, 2
  %6807 = extractvalue %dx.types.ResRet.f32 %6803, 3
  %6808 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %6804, float* %6808, align 4
  %6809 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %6805, float* %6809, align 4
  %6810 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %6806, float* %6810, align 4
  %6811 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %6807, float* %6811, align 4
  %6812 = fsub fast float %6804, %6709
  %6813 = fcmp fast olt float %6812, 0.000000e+00
  %6814 = select i1 %6813, float 0.000000e+00, float 1.000000e+00
  %6815 = fadd fast float %6814, %6784
  %6816 = fmul fast float %6814, %6812
  %6817 = fadd fast float %6816, %6785
  br label %6818

; <label>:6818                                    ; preds = %6818, %6783
  %6819 = phi i32 [ 1, %6783 ], [ %6830, %6818 ]
  %6820 = phi float [ %6817, %6783 ], [ %6829, %6818 ]
  %6821 = phi float [ %6815, %6783 ], [ %6827, %6818 ]
  %6822 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %6819
  %6823 = load float, float* %6822, align 4, !tbaa !114, !noalias !104
  %6824 = fsub fast float %6823, %6709
  %6825 = fcmp fast olt float %6824, 0.000000e+00
  %6826 = select i1 %6825, float 0.000000e+00, float 1.000000e+00
  %6827 = fadd fast float %6826, %6821
  %6828 = fmul fast float %6826, %6824
  %6829 = fadd fast float %6828, %6820
  %6830 = add nuw nsw i32 %6819, 1
  %6831 = icmp eq i32 %6830, 4
  br i1 %6831, label %6832, label %6818, !llvm.loop !116

; <label>:6832                                    ; preds = %6818
  %6833 = add nuw nsw i32 %6786, 1
  %6834 = icmp eq i32 %6833, 8
  br i1 %6834, label %6835, label %6783, !llvm.loop !117

; <label>:6835                                    ; preds = %6832
  %6836 = fdiv fast float 1.000000e+00, %6827
  %6837 = fmul fast float %6836, %6829
  %6838 = fdiv fast float 1.000000e+00, %6709
  %6839 = fmul fast float %6837, %6838
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = call float @dx.op.binary.f32(i32 35, float %6840, float 0.000000e+00)  ; FMax(a,b)
  %6842 = fmul fast float %6827, 3.125000e-02
  %6843 = call float @dx.op.unary.f32(i32 7, float %6842)  ; Saturate(value)
  %6844 = fmul fast float %6843, 2.000000e+00
  %6845 = fadd fast float %6844, -1.000000e+00
  %6846 = fcmp fast ogt float %6845, 0.000000e+00
  %6847 = fcmp fast olt float %6845, 0.000000e+00
  %6848 = zext i1 %6846 to i32
  %6849 = zext i1 %6847 to i32
  %6850 = sub nsw i32 %6848, %6849
  %6851 = sitofp i32 %6850 to float
  %6852 = fmul fast float %6851, %6845
  %6853 = fsub fast float 1.000000e+00, %6852
  %6854 = fmul fast float %6853, %6853
  %6855 = fmul fast float %6854, %6853
  %6856 = fsub fast float %6853, %6855
  %6857 = fmul fast float %6856, %6841
  %6858 = fsub fast float 1.000000e+00, %6855
  %6859 = fsub fast float %6858, %6857
  %6860 = fmul fast float %6851, 5.000000e-01
  %6861 = fmul fast float %6860, %6859
  %6862 = fsub fast float 5.000000e-01, %6861
  br label %6863

; <label>:6863                                    ; preds = %6835, %6711, %6696
  %6864 = phi float [ 1.000000e+00, %6696 ], [ %6777, %6711 ], [ %6862, %6835 ]
  %6865 = fcmp fast ogt float %6292, 0.000000e+00
  br i1 %6865, label %6866, label %7030, !dx.controlflow.hints !118

; <label>:6866                                    ; preds = %6863
  %6867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.f32 %6867, 1
  %6869 = fadd fast float %6868, %6175
  %6870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6871 = extractvalue %dx.types.CBufRet.f32 %6870, 2
  %6872 = extractvalue %dx.types.CBufRet.f32 %6870, 3
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 1
  %6875 = call float @dx.op.binary.f32(i32 35, float %6869, float 0.000000e+00)  ; FMax(a,b)
  %6876 = fadd fast float %6875, 0x3F10000000000000
  %6877 = fcmp fast oeq float %6874, 0.000000e+00
  br i1 %6877, label %6878, label %6945

; <label>:6878                                    ; preds = %6866
  %6879 = extractvalue %dx.types.CBufRet.f32 %6870, 1
  %6880 = extractvalue %dx.types.CBufRet.f32 %6870, 0
  %6881 = fmul fast float %6880, %6185
  %6882 = fmul fast float %6879, %6186
  %6883 = fadd fast float %6881, 5.000000e-01
  %6884 = call float @dx.op.unary.f32(i32 27, float %6883)  ; Round_ni(value)
  %6885 = fadd fast float %6882, 5.000000e-01
  %6886 = call float @dx.op.unary.f32(i32 27, float %6885)  ; Round_ni(value)
  %6887 = fsub fast float %6883, %6884
  %6888 = fsub fast float %6885, %6886
  %6889 = fadd fast float %6884, -5.000000e-01
  %6890 = fadd fast float %6886, -5.000000e-01
  %6891 = fmul fast float %6887, 2.000000e+00
  %6892 = fsub fast float 3.000000e+00, %6891
  %6893 = fadd fast float %6891, 1.000000e+00
  %6894 = fsub fast float 2.000000e+00, %6887
  %6895 = bitcast float %6892 to i32
  %6896 = sub nsw i32 2129859010, %6895
  %6897 = bitcast i32 %6896 to float
  %6898 = fmul fast float %6897, %6894
  %6899 = fadd fast float %6898, -1.000000e+00
  %6900 = bitcast float %6893 to i32
  %6901 = sub nsw i32 2129859010, %6900
  %6902 = bitcast i32 %6901 to float
  %6903 = fmul fast float %6902, %6887
  %6904 = fadd fast float %6903, 1.000000e+00
  %6905 = fmul fast float %6888, 2.000000e+00
  %6906 = fsub fast float 3.000000e+00, %6905
  %6907 = fadd fast float %6905, 1.000000e+00
  %6908 = fsub fast float 2.000000e+00, %6888
  %6909 = bitcast float %6906 to i32
  %6910 = sub nsw i32 2129859010, %6909
  %6911 = bitcast i32 %6910 to float
  %6912 = fmul fast float %6911, %6908
  %6913 = fadd fast float %6912, -1.000000e+00
  %6914 = bitcast float %6907 to i32
  %6915 = sub nsw i32 2129859010, %6914
  %6916 = bitcast i32 %6915 to float
  %6917 = fmul fast float %6916, %6888
  %6918 = fadd fast float %6917, 1.000000e+00
  %6919 = fadd fast float %6899, %6889
  %6920 = fmul fast float %6919, %6871
  %6921 = fadd fast float %6913, %6890
  %6922 = fmul fast float %6921, %6872
  %6923 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6920, float %6922, float undef, float undef, i32 0, i32 0, i32 undef, float %6876)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6924 = extractvalue %dx.types.ResRet.f32 %6923, 0
  %6925 = fmul fast float %6924, %6892
  %6926 = fadd fast float %6904, %6889
  %6927 = fmul fast float %6926, %6871
  %6928 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6927, float %6922, float undef, float undef, i32 0, i32 0, i32 undef, float %6876)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6929 = extractvalue %dx.types.ResRet.f32 %6928, 0
  %6930 = fmul fast float %6929, %6893
  %6931 = fadd fast float %6918, %6890
  %6932 = fmul fast float %6931, %6872
  %6933 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6920, float %6932, float undef, float undef, i32 0, i32 0, i32 undef, float %6876)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6934 = extractvalue %dx.types.ResRet.f32 %6933, 0
  %6935 = fmul fast float %6934, %6892
  %6936 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %45, float %6927, float %6932, float undef, float undef, i32 0, i32 0, i32 undef, float %6876)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6937 = extractvalue %dx.types.ResRet.f32 %6936, 0
  %6938 = fmul fast float %6937, %6893
  %6939 = fadd fast float %6938, %6935
  %6940 = fmul fast float %6939, %6907
  %6941 = fadd fast float %6930, %6925
  %6942 = fmul fast float %6941, %6906
  %6943 = fadd fast float %6942, %6940
  %6944 = fmul fast float %6943, 6.250000e-02
  br label %7030

; <label>:6945                                    ; preds = %6866
  %6946 = fmul fast float %303, 0x401921FB60000000
  %6947 = call float @dx.op.unary.f32(i32 13, float %6946)  ; Sin(value)
  %6948 = call float @dx.op.unary.f32(i32 12, float %6946)  ; Cos(value)
  %6949 = fsub fast float -0.000000e+00, %6947
  br label %6950

; <label>:6950                                    ; preds = %6999, %6945
  %6951 = phi float [ 0.000000e+00, %6945 ], [ %6994, %6999 ]
  %6952 = phi float [ 0.000000e+00, %6945 ], [ %6996, %6999 ]
  %6953 = phi i32 [ 0, %6945 ], [ %7000, %6999 ]
  %6954 = mul i32 %6953, 2
  %6955 = add i32 0, %6954
  %6956 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6955
  %6957 = load float, float* %6956, align 4
  %6958 = mul i32 %6953, 2
  %6959 = add i32 1, %6958
  %6960 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6959
  %6961 = load float, float* %6960, align 4
  %6962 = fmul fast float %6957, %6948
  %6963 = call float @dx.op.tertiary.f32(i32 46, float %6961, float %6949, float %6962)  ; FMad(a,b,c)
  %6964 = fmul fast float %6957, %6947
  %6965 = call float @dx.op.tertiary.f32(i32 46, float %6961, float %6948, float %6964)  ; FMad(a,b,c)
  %6966 = fmul fast float %6963, %6874
  %6967 = fmul fast float %6965, %6874
  %6968 = fadd fast float %6966, %6185
  %6969 = fadd fast float %6967, %6186
  %6970 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %44, float %6968, float %6969, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6971 = extractvalue %dx.types.ResRet.f32 %6970, 0
  %6972 = extractvalue %dx.types.ResRet.f32 %6970, 1
  %6973 = extractvalue %dx.types.ResRet.f32 %6970, 2
  %6974 = extractvalue %dx.types.ResRet.f32 %6970, 3
  %6975 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %6971, float* %6975, align 4
  %6976 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %6972, float* %6976, align 4
  %6977 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %6973, float* %6977, align 4
  %6978 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %6974, float* %6978, align 4
  %6979 = fsub fast float %6971, %6876
  %6980 = fcmp fast olt float %6979, 0.000000e+00
  %6981 = select i1 %6980, float 0.000000e+00, float 1.000000e+00
  %6982 = fadd fast float %6981, %6951
  %6983 = fmul fast float %6981, %6979
  %6984 = fadd fast float %6983, %6952
  br label %6985

; <label>:6985                                    ; preds = %6985, %6950
  %6986 = phi i32 [ 1, %6950 ], [ %6997, %6985 ]
  %6987 = phi float [ %6984, %6950 ], [ %6996, %6985 ]
  %6988 = phi float [ %6982, %6950 ], [ %6994, %6985 ]
  %6989 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %6986
  %6990 = load float, float* %6989, align 4, !tbaa !114, !noalias !104
  %6991 = fsub fast float %6990, %6876
  %6992 = fcmp fast olt float %6991, 0.000000e+00
  %6993 = select i1 %6992, float 0.000000e+00, float 1.000000e+00
  %6994 = fadd fast float %6993, %6988
  %6995 = fmul fast float %6993, %6991
  %6996 = fadd fast float %6995, %6987
  %6997 = add nuw nsw i32 %6986, 1
  %6998 = icmp eq i32 %6997, 4
  br i1 %6998, label %6999, label %6985, !llvm.loop !116

; <label>:6999                                    ; preds = %6985
  %7000 = add nuw nsw i32 %6953, 1
  %7001 = icmp eq i32 %7000, 8
  br i1 %7001, label %7002, label %6950, !llvm.loop !117

; <label>:7002                                    ; preds = %6999
  %7003 = fdiv fast float 1.000000e+00, %6994
  %7004 = fmul fast float %7003, %6996
  %7005 = fdiv fast float 1.000000e+00, %6876
  %7006 = fmul fast float %7004, %7005
  %7007 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7008 = call float @dx.op.binary.f32(i32 35, float %7007, float 0.000000e+00)  ; FMax(a,b)
  %7009 = fmul fast float %6994, 3.125000e-02
  %7010 = call float @dx.op.unary.f32(i32 7, float %7009)  ; Saturate(value)
  %7011 = fmul fast float %7010, 2.000000e+00
  %7012 = fadd fast float %7011, -1.000000e+00
  %7013 = fcmp fast ogt float %7012, 0.000000e+00
  %7014 = fcmp fast olt float %7012, 0.000000e+00
  %7015 = zext i1 %7013 to i32
  %7016 = zext i1 %7014 to i32
  %7017 = sub nsw i32 %7015, %7016
  %7018 = sitofp i32 %7017 to float
  %7019 = fmul fast float %7018, %7012
  %7020 = fsub fast float 1.000000e+00, %7019
  %7021 = fmul fast float %7020, %7020
  %7022 = fmul fast float %7021, %7020
  %7023 = fsub fast float %7020, %7022
  %7024 = fmul fast float %7023, %7008
  %7025 = fsub fast float 1.000000e+00, %7022
  %7026 = fsub fast float %7025, %7024
  %7027 = fmul fast float %7018, 5.000000e-01
  %7028 = fmul fast float %7027, %7026
  %7029 = fsub fast float 5.000000e-01, %7028
  br label %7030

; <label>:7030                                    ; preds = %7002, %6878, %6863
  %7031 = phi float [ 1.000000e+00, %6863 ], [ %6944, %6878 ], [ %7029, %7002 ]
  %7032 = fcmp fast ogt float %6291, 0.000000e+00
  br i1 %7032, label %7033, label %7351, !dx.controlflow.hints !119

; <label>:7033                                    ; preds = %7030
  %7034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7035 = extractvalue %dx.types.CBufRet.f32 %7034, 0
  %7036 = fadd fast float %7035, %6175
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 2
  %7039 = extractvalue %dx.types.CBufRet.f32 %7037, 3
  %7040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7041 = extractvalue %dx.types.CBufRet.f32 %7040, 0
  %7042 = call float @dx.op.binary.f32(i32 35, float %7036, float 0.000000e+00)  ; FMax(a,b)
  %7043 = fadd fast float %7042, 0x3F10000000000000
  %7044 = fcmp fast oeq float %7041, 0.000000e+00
  br i1 %6178, label %7045, label %7198, !dx.controlflow.hints !120

; <label>:7045                                    ; preds = %7033
  br i1 %7044, label %7046, label %7113

; <label>:7046                                    ; preds = %7045
  %7047 = extractvalue %dx.types.CBufRet.f32 %7037, 1
  %7048 = extractvalue %dx.types.CBufRet.f32 %7037, 0
  %7049 = fmul fast float %7048, %6167
  %7050 = fmul fast float %7047, %6171
  %7051 = fadd fast float %7049, 5.000000e-01
  %7052 = call float @dx.op.unary.f32(i32 27, float %7051)  ; Round_ni(value)
  %7053 = fadd fast float %7050, 5.000000e-01
  %7054 = call float @dx.op.unary.f32(i32 27, float %7053)  ; Round_ni(value)
  %7055 = fsub fast float %7051, %7052
  %7056 = fsub fast float %7053, %7054
  %7057 = fadd fast float %7052, -5.000000e-01
  %7058 = fadd fast float %7054, -5.000000e-01
  %7059 = fmul fast float %7055, 2.000000e+00
  %7060 = fsub fast float 3.000000e+00, %7059
  %7061 = fadd fast float %7059, 1.000000e+00
  %7062 = fsub fast float 2.000000e+00, %7055
  %7063 = bitcast float %7060 to i32
  %7064 = sub nsw i32 2129859010, %7063
  %7065 = bitcast i32 %7064 to float
  %7066 = fmul fast float %7065, %7062
  %7067 = fadd fast float %7066, -1.000000e+00
  %7068 = bitcast float %7061 to i32
  %7069 = sub nsw i32 2129859010, %7068
  %7070 = bitcast i32 %7069 to float
  %7071 = fmul fast float %7070, %7055
  %7072 = fadd fast float %7071, 1.000000e+00
  %7073 = fmul fast float %7056, 2.000000e+00
  %7074 = fsub fast float 3.000000e+00, %7073
  %7075 = fadd fast float %7073, 1.000000e+00
  %7076 = fsub fast float 2.000000e+00, %7056
  %7077 = bitcast float %7074 to i32
  %7078 = sub nsw i32 2129859010, %7077
  %7079 = bitcast i32 %7078 to float
  %7080 = fmul fast float %7079, %7076
  %7081 = fadd fast float %7080, -1.000000e+00
  %7082 = bitcast float %7075 to i32
  %7083 = sub nsw i32 2129859010, %7082
  %7084 = bitcast i32 %7083 to float
  %7085 = fmul fast float %7084, %7056
  %7086 = fadd fast float %7085, 1.000000e+00
  %7087 = fadd fast float %7067, %7057
  %7088 = fmul fast float %7087, %7038
  %7089 = fadd fast float %7081, %7058
  %7090 = fmul fast float %7089, %7039
  %7091 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7088, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float %7043)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7092 = extractvalue %dx.types.ResRet.f32 %7091, 0
  %7093 = fmul fast float %7092, %7060
  %7094 = fadd fast float %7072, %7057
  %7095 = fmul fast float %7094, %7038
  %7096 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7095, float %7090, float undef, float undef, i32 0, i32 0, i32 undef, float %7043)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7097 = extractvalue %dx.types.ResRet.f32 %7096, 0
  %7098 = fmul fast float %7097, %7061
  %7099 = fadd fast float %7086, %7058
  %7100 = fmul fast float %7099, %7039
  %7101 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7088, float %7100, float undef, float undef, i32 0, i32 0, i32 undef, float %7043)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7102 = extractvalue %dx.types.ResRet.f32 %7101, 0
  %7103 = fmul fast float %7102, %7060
  %7104 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %45, float %7095, float %7100, float undef, float undef, i32 0, i32 0, i32 undef, float %7043)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7105 = extractvalue %dx.types.ResRet.f32 %7104, 0
  %7106 = fmul fast float %7105, %7061
  %7107 = fadd fast float %7106, %7103
  %7108 = fmul fast float %7107, %7075
  %7109 = fadd fast float %7098, %7093
  %7110 = fmul fast float %7109, %7074
  %7111 = fadd fast float %7110, %7108
  %7112 = fmul fast float %7111, 6.250000e-02
  br label %7351

; <label>:7113                                    ; preds = %7045
  %7114 = fmul fast float %303, 0x401921FB60000000
  %7115 = call float @dx.op.unary.f32(i32 13, float %7114)  ; Sin(value)
  %7116 = call float @dx.op.unary.f32(i32 12, float %7114)  ; Cos(value)
  %7117 = fsub fast float -0.000000e+00, %7115
  br label %7118

; <label>:7118                                    ; preds = %7167, %7113
  %7119 = phi float [ 0.000000e+00, %7113 ], [ %7162, %7167 ]
  %7120 = phi float [ 0.000000e+00, %7113 ], [ %7164, %7167 ]
  %7121 = phi i32 [ 0, %7113 ], [ %7168, %7167 ]
  %7122 = mul i32 %7121, 2
  %7123 = add i32 0, %7122
  %7124 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7123
  %7125 = load float, float* %7124, align 4
  %7126 = mul i32 %7121, 2
  %7127 = add i32 1, %7126
  %7128 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7127
  %7129 = load float, float* %7128, align 4
  %7130 = fmul fast float %7125, %7116
  %7131 = call float @dx.op.tertiary.f32(i32 46, float %7129, float %7117, float %7130)  ; FMad(a,b,c)
  %7132 = fmul fast float %7125, %7115
  %7133 = call float @dx.op.tertiary.f32(i32 46, float %7129, float %7116, float %7132)  ; FMad(a,b,c)
  %7134 = fmul fast float %7131, %7041
  %7135 = fmul fast float %7133, %7041
  %7136 = fadd fast float %7134, %6167
  %7137 = fadd fast float %7135, %6171
  %7138 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %44, float %7136, float %7137, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7139 = extractvalue %dx.types.ResRet.f32 %7138, 0
  %7140 = extractvalue %dx.types.ResRet.f32 %7138, 1
  %7141 = extractvalue %dx.types.ResRet.f32 %7138, 2
  %7142 = extractvalue %dx.types.ResRet.f32 %7138, 3
  %7143 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7139, float* %7143, align 4
  %7144 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7140, float* %7144, align 4
  %7145 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7141, float* %7145, align 4
  %7146 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7142, float* %7146, align 4
  %7147 = fsub fast float %7139, %7043
  %7148 = fcmp fast olt float %7147, 0.000000e+00
  %7149 = select i1 %7148, float 0.000000e+00, float 1.000000e+00
  %7150 = fadd fast float %7149, %7119
  %7151 = fmul fast float %7149, %7147
  %7152 = fadd fast float %7151, %7120
  br label %7153

; <label>:7153                                    ; preds = %7153, %7118
  %7154 = phi i32 [ 1, %7118 ], [ %7165, %7153 ]
  %7155 = phi float [ %7152, %7118 ], [ %7164, %7153 ]
  %7156 = phi float [ %7150, %7118 ], [ %7162, %7153 ]
  %7157 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7154
  %7158 = load float, float* %7157, align 4, !tbaa !114, !noalias !104
  %7159 = fsub fast float %7158, %7043
  %7160 = fcmp fast olt float %7159, 0.000000e+00
  %7161 = select i1 %7160, float 0.000000e+00, float 1.000000e+00
  %7162 = fadd fast float %7161, %7156
  %7163 = fmul fast float %7161, %7159
  %7164 = fadd fast float %7163, %7155
  %7165 = add nuw nsw i32 %7154, 1
  %7166 = icmp eq i32 %7165, 4
  br i1 %7166, label %7167, label %7153, !llvm.loop !116

; <label>:7167                                    ; preds = %7153
  %7168 = add nuw nsw i32 %7121, 1
  %7169 = icmp eq i32 %7168, 8
  br i1 %7169, label %7170, label %7118, !llvm.loop !117

; <label>:7170                                    ; preds = %7167
  %7171 = fdiv fast float 1.000000e+00, %7162
  %7172 = fmul fast float %7171, %7164
  %7173 = fdiv fast float 1.000000e+00, %7043
  %7174 = fmul fast float %7172, %7173
  %7175 = call float @dx.op.unary.f32(i32 7, float %7174)  ; Saturate(value)
  %7176 = call float @dx.op.binary.f32(i32 35, float %7175, float 0.000000e+00)  ; FMax(a,b)
  %7177 = fmul fast float %7162, 3.125000e-02
  %7178 = call float @dx.op.unary.f32(i32 7, float %7177)  ; Saturate(value)
  %7179 = fmul fast float %7178, 2.000000e+00
  %7180 = fadd fast float %7179, -1.000000e+00
  %7181 = fcmp fast ogt float %7180, 0.000000e+00
  %7182 = fcmp fast olt float %7180, 0.000000e+00
  %7183 = zext i1 %7181 to i32
  %7184 = zext i1 %7182 to i32
  %7185 = sub nsw i32 %7183, %7184
  %7186 = sitofp i32 %7185 to float
  %7187 = fmul fast float %7186, %7180
  %7188 = fsub fast float 1.000000e+00, %7187
  %7189 = fmul fast float %7188, %7188
  %7190 = fmul fast float %7189, %7188
  %7191 = fsub fast float %7188, %7190
  %7192 = fmul fast float %7191, %7176
  %7193 = fsub fast float 1.000000e+00, %7190
  %7194 = fsub fast float %7193, %7192
  %7195 = fmul fast float %7186, 5.000000e-01
  %7196 = fmul fast float %7195, %7194
  %7197 = fsub fast float 5.000000e-01, %7196
  br label %7351

; <label>:7198                                    ; preds = %7033
  br i1 %7044, label %7199, label %7266

; <label>:7199                                    ; preds = %7198
  %7200 = extractvalue %dx.types.CBufRet.f32 %7037, 1
  %7201 = extractvalue %dx.types.CBufRet.f32 %7037, 0
  %7202 = fmul fast float %7201, %6167
  %7203 = fmul fast float %7200, %6171
  %7204 = fadd fast float %7202, 5.000000e-01
  %7205 = call float @dx.op.unary.f32(i32 27, float %7204)  ; Round_ni(value)
  %7206 = fadd fast float %7203, 5.000000e-01
  %7207 = call float @dx.op.unary.f32(i32 27, float %7206)  ; Round_ni(value)
  %7208 = fsub fast float %7204, %7205
  %7209 = fsub fast float %7206, %7207
  %7210 = fadd fast float %7205, -5.000000e-01
  %7211 = fadd fast float %7207, -5.000000e-01
  %7212 = fmul fast float %7208, 2.000000e+00
  %7213 = fsub fast float 3.000000e+00, %7212
  %7214 = fadd fast float %7212, 1.000000e+00
  %7215 = fsub fast float 2.000000e+00, %7208
  %7216 = bitcast float %7213 to i32
  %7217 = sub nsw i32 2129859010, %7216
  %7218 = bitcast i32 %7217 to float
  %7219 = fmul fast float %7218, %7215
  %7220 = fadd fast float %7219, -1.000000e+00
  %7221 = bitcast float %7214 to i32
  %7222 = sub nsw i32 2129859010, %7221
  %7223 = bitcast i32 %7222 to float
  %7224 = fmul fast float %7223, %7208
  %7225 = fadd fast float %7224, 1.000000e+00
  %7226 = fmul fast float %7209, 2.000000e+00
  %7227 = fsub fast float 3.000000e+00, %7226
  %7228 = fadd fast float %7226, 1.000000e+00
  %7229 = fsub fast float 2.000000e+00, %7209
  %7230 = bitcast float %7227 to i32
  %7231 = sub nsw i32 2129859010, %7230
  %7232 = bitcast i32 %7231 to float
  %7233 = fmul fast float %7232, %7229
  %7234 = fadd fast float %7233, -1.000000e+00
  %7235 = bitcast float %7228 to i32
  %7236 = sub nsw i32 2129859010, %7235
  %7237 = bitcast i32 %7236 to float
  %7238 = fmul fast float %7237, %7209
  %7239 = fadd fast float %7238, 1.000000e+00
  %7240 = fadd fast float %7220, %7210
  %7241 = fmul fast float %7240, %7038
  %7242 = fadd fast float %7234, %7211
  %7243 = fmul fast float %7242, %7039
  %7244 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7241, float %7243, float undef, float undef, i32 0, i32 0, i32 undef, float %7043)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7245 = extractvalue %dx.types.ResRet.f32 %7244, 0
  %7246 = fmul fast float %7245, %7213
  %7247 = fadd fast float %7225, %7210
  %7248 = fmul fast float %7247, %7038
  %7249 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7248, float %7243, float undef, float undef, i32 0, i32 0, i32 undef, float %7043)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = fmul fast float %7250, %7214
  %7252 = fadd fast float %7239, %7211
  %7253 = fmul fast float %7252, %7039
  %7254 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7241, float %7253, float undef, float undef, i32 0, i32 0, i32 undef, float %7043)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7255 = extractvalue %dx.types.ResRet.f32 %7254, 0
  %7256 = fmul fast float %7255, %7213
  %7257 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %45, float %7248, float %7253, float undef, float undef, i32 0, i32 0, i32 undef, float %7043)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7258 = extractvalue %dx.types.ResRet.f32 %7257, 0
  %7259 = fmul fast float %7258, %7214
  %7260 = fadd fast float %7259, %7256
  %7261 = fmul fast float %7260, %7228
  %7262 = fadd fast float %7251, %7246
  %7263 = fmul fast float %7262, %7227
  %7264 = fadd fast float %7263, %7261
  %7265 = fmul fast float %7264, 6.250000e-02
  br label %7351

; <label>:7266                                    ; preds = %7198
  %7267 = fmul fast float %303, 0x401921FB60000000
  %7268 = call float @dx.op.unary.f32(i32 13, float %7267)  ; Sin(value)
  %7269 = call float @dx.op.unary.f32(i32 12, float %7267)  ; Cos(value)
  %7270 = fsub fast float -0.000000e+00, %7268
  br label %7271

; <label>:7271                                    ; preds = %7320, %7266
  %7272 = phi float [ 0.000000e+00, %7266 ], [ %7315, %7320 ]
  %7273 = phi float [ 0.000000e+00, %7266 ], [ %7317, %7320 ]
  %7274 = phi i32 [ 0, %7266 ], [ %7321, %7320 ]
  %7275 = mul i32 %7274, 2
  %7276 = add i32 0, %7275
  %7277 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7276
  %7278 = load float, float* %7277, align 4
  %7279 = mul i32 %7274, 2
  %7280 = add i32 1, %7279
  %7281 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7280
  %7282 = load float, float* %7281, align 4
  %7283 = fmul fast float %7278, %7269
  %7284 = call float @dx.op.tertiary.f32(i32 46, float %7282, float %7270, float %7283)  ; FMad(a,b,c)
  %7285 = fmul fast float %7278, %7268
  %7286 = call float @dx.op.tertiary.f32(i32 46, float %7282, float %7269, float %7285)  ; FMad(a,b,c)
  %7287 = fmul fast float %7284, %7041
  %7288 = fmul fast float %7286, %7041
  %7289 = fadd fast float %7287, %6167
  %7290 = fadd fast float %7288, %6171
  %7291 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %44, float %7289, float %7290, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7292 = extractvalue %dx.types.ResRet.f32 %7291, 0
  %7293 = extractvalue %dx.types.ResRet.f32 %7291, 1
  %7294 = extractvalue %dx.types.ResRet.f32 %7291, 2
  %7295 = extractvalue %dx.types.ResRet.f32 %7291, 3
  %7296 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7292, float* %7296, align 4
  %7297 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7293, float* %7297, align 4
  %7298 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7294, float* %7298, align 4
  %7299 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7295, float* %7299, align 4
  %7300 = fsub fast float %7292, %7043
  %7301 = fcmp fast olt float %7300, 0.000000e+00
  %7302 = select i1 %7301, float 0.000000e+00, float 1.000000e+00
  %7303 = fadd fast float %7302, %7272
  %7304 = fmul fast float %7302, %7300
  %7305 = fadd fast float %7304, %7273
  br label %7306

; <label>:7306                                    ; preds = %7306, %7271
  %7307 = phi i32 [ 1, %7271 ], [ %7318, %7306 ]
  %7308 = phi float [ %7305, %7271 ], [ %7317, %7306 ]
  %7309 = phi float [ %7303, %7271 ], [ %7315, %7306 ]
  %7310 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7307
  %7311 = load float, float* %7310, align 4, !tbaa !114, !noalias !104
  %7312 = fsub fast float %7311, %7043
  %7313 = fcmp fast olt float %7312, 0.000000e+00
  %7314 = select i1 %7313, float 0.000000e+00, float 1.000000e+00
  %7315 = fadd fast float %7314, %7309
  %7316 = fmul fast float %7314, %7312
  %7317 = fadd fast float %7316, %7308
  %7318 = add nuw nsw i32 %7307, 1
  %7319 = icmp eq i32 %7318, 4
  br i1 %7319, label %7320, label %7306, !llvm.loop !116

; <label>:7320                                    ; preds = %7306
  %7321 = add nuw nsw i32 %7274, 1
  %7322 = icmp eq i32 %7321, 8
  br i1 %7322, label %7323, label %7271, !llvm.loop !117

; <label>:7323                                    ; preds = %7320
  %7324 = fdiv fast float 1.000000e+00, %7315
  %7325 = fmul fast float %7324, %7317
  %7326 = fdiv fast float 1.000000e+00, %7043
  %7327 = fmul fast float %7325, %7326
  %7328 = call float @dx.op.unary.f32(i32 7, float %7327)  ; Saturate(value)
  %7329 = call float @dx.op.binary.f32(i32 35, float %7328, float 0.000000e+00)  ; FMax(a,b)
  %7330 = fmul fast float %7315, 3.125000e-02
  %7331 = call float @dx.op.unary.f32(i32 7, float %7330)  ; Saturate(value)
  %7332 = fmul fast float %7331, 2.000000e+00
  %7333 = fadd fast float %7332, -1.000000e+00
  %7334 = fcmp fast ogt float %7333, 0.000000e+00
  %7335 = fcmp fast olt float %7333, 0.000000e+00
  %7336 = zext i1 %7334 to i32
  %7337 = zext i1 %7335 to i32
  %7338 = sub nsw i32 %7336, %7337
  %7339 = sitofp i32 %7338 to float
  %7340 = fmul fast float %7339, %7333
  %7341 = fsub fast float 1.000000e+00, %7340
  %7342 = fmul fast float %7341, %7341
  %7343 = fmul fast float %7342, %7341
  %7344 = fsub fast float %7341, %7343
  %7345 = fmul fast float %7344, %7329
  %7346 = fsub fast float 1.000000e+00, %7343
  %7347 = fsub fast float %7346, %7345
  %7348 = fmul fast float %7339, 5.000000e-01
  %7349 = fmul fast float %7348, %7347
  %7350 = fsub fast float 5.000000e-01, %7349
  br label %7351

; <label>:7351                                    ; preds = %7323, %7199, %7170, %7046, %7030
  %7352 = phi float [ 1.000000e+00, %7030 ], [ %7112, %7046 ], [ %7197, %7170 ], [ %7265, %7199 ], [ %7350, %7323 ]
  %7353 = fsub fast float %6864, %6697
  %7354 = fmul fast float %7353, %6264
  %7355 = fadd fast float %7354, %6697
  %7356 = fsub fast float %7031, %7355
  %7357 = fmul fast float %7356, %6263
  %7358 = fadd fast float %7357, %7355
  %7359 = fsub fast float %7352, %7358
  %7360 = fmul fast float %7359, %6291
  %7361 = fadd fast float %7360, %7358
  %7362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7363 = extractvalue %dx.types.CBufRet.f32 %7362, 2
  %7364 = fcmp fast ogt float %7363, 0.000000e+00
  br i1 %7364, label %7365, label %7405, !dx.controlflow.hints !121

; <label>:7365                                    ; preds = %7351
  %7366 = fcmp fast ugt float %7363, 0.000000e+00
  br i1 %7366, label %7367, label %7402

; <label>:7367                                    ; preds = %7365
  %7368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7369 = extractvalue %dx.types.CBufRet.f32 %7368, 0
  %7370 = extractvalue %dx.types.CBufRet.f32 %7368, 1
  %7371 = extractvalue %dx.types.CBufRet.f32 %7368, 2
  %7372 = extractvalue %dx.types.CBufRet.f32 %7368, 3
  %7373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7374 = extractvalue %dx.types.CBufRet.f32 %7373, 0
  %7375 = extractvalue %dx.types.CBufRet.f32 %7373, 1
  %7376 = extractvalue %dx.types.CBufRet.f32 %7373, 2
  %7377 = extractvalue %dx.types.CBufRet.f32 %7373, 3
  %7378 = extractvalue %dx.types.CBufRet.f32 %7362, 0
  %7379 = extractvalue %dx.types.CBufRet.f32 %7362, 1
  %7380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7381 = extractvalue %dx.types.CBufRet.f32 %7380, 0
  %7382 = extractvalue %dx.types.CBufRet.f32 %7380, 1
  %7383 = extractvalue %dx.types.CBufRet.f32 %7380, 2
  %7384 = fadd fast float %7381, %6144
  %7385 = fadd fast float %7382, %6145
  %7386 = fadd fast float %7383, %6146
  %7387 = fmul fast float %7384, %7369
  %7388 = call float @dx.op.tertiary.f32(i32 46, float %7370, float %7385, float %7387)  ; FMad(a,b,c)
  %7389 = call float @dx.op.tertiary.f32(i32 46, float %7371, float %7386, float %7388)  ; FMad(a,b,c)
  %7390 = fadd fast float %7389, %7372
  %7391 = fmul fast float %7384, %7374
  %7392 = call float @dx.op.tertiary.f32(i32 46, float %7375, float %7385, float %7391)  ; FMad(a,b,c)
  %7393 = call float @dx.op.tertiary.f32(i32 46, float %7376, float %7386, float %7392)  ; FMad(a,b,c)
  %7394 = fadd fast float %7393, %7377
  %7395 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %40, float %7390, float %7394, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7396 = extractvalue %dx.types.ResRet.f32 %7395, 0
  %7397 = fmul fast float %7396, %7379
  %7398 = fadd fast float %7397, %7378
  %7399 = call float @dx.op.unary.f32(i32 7, float %7398)  ; Saturate(value)
  %7400 = fmul fast float %7399, %7363
  %7401 = fsub fast float 1.000000e+00, %7400
  br label %7402

; <label>:7402                                    ; preds = %7367, %7365
  %7403 = phi float [ %7401, %7367 ], [ 1.000000e+00, %7365 ]
  %7404 = fmul fast float %7403, %7361
  br label %7405

; <label>:7405                                    ; preds = %7402, %7351, %6124
  %7406 = phi float [ 1.000000e+00, %6124 ], [ %7404, %7402 ], [ %7361, %7351 ]
  %7407 = call float @dx.op.binary.f32(i32 36, float %7406, float %7406)  ; FMin(a,b)
  %7408 = call float @dx.op.binary.f32(i32 36, float %7406, float %7407)  ; FMin(a,b)
  %7409 = fcmp fast ogt float %7408, 0.000000e+00
  br i1 %7409, label %7410, label %7576, !dx.controlflow.hints !122

; <label>:7410                                    ; preds = %7405
  %7411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7412 = extractvalue %dx.types.CBufRet.f32 %7411, 0
  %7413 = extractvalue %dx.types.CBufRet.f32 %7411, 1
  %7414 = extractvalue %dx.types.CBufRet.f32 %7411, 2
  %7415 = extractvalue %dx.types.CBufRet.f32 %7411, 3
  %7416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7417 = extractvalue %dx.types.CBufRet.f32 %7416, 0
  %7418 = extractvalue %dx.types.CBufRet.f32 %7416, 1
  %7419 = extractvalue %dx.types.CBufRet.f32 %7416, 2
  %7420 = extractvalue %dx.types.CBufRet.f32 %7416, 3
  %7421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7422 = extractvalue %dx.types.CBufRet.f32 %7421, 0
  %7423 = extractvalue %dx.types.CBufRet.f32 %7421, 1
  %7424 = extractvalue %dx.types.CBufRet.f32 %7421, 2
  %7425 = extractvalue %dx.types.CBufRet.f32 %7421, 3
  %7426 = fmul fast float %7412, %6144
  %7427 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %7413, float %7426)  ; FMad(a,b,c)
  %7428 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %7414, float %7427)  ; FMad(a,b,c)
  %7429 = fadd fast float %7428, %7415
  %7430 = fmul fast float %7417, %6144
  %7431 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %7418, float %7430)  ; FMad(a,b,c)
  %7432 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %7419, float %7431)  ; FMad(a,b,c)
  %7433 = fadd fast float %7432, %7420
  %7434 = fmul fast float %7422, %6144
  %7435 = call float @dx.op.tertiary.f32(i32 46, float %6145, float %7423, float %7434)  ; FMad(a,b,c)
  %7436 = call float @dx.op.tertiary.f32(i32 46, float %6146, float %7424, float %7435)  ; FMad(a,b,c)
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 0
  %7439 = extractvalue %dx.types.CBufRet.f32 %7437, 1
  %7440 = extractvalue %dx.types.CBufRet.f32 %7437, 3
  %7441 = fmul fast float %7440, %7429
  %7442 = fmul fast float %7440, %7433
  %7443 = fadd fast float %7441, %7438
  %7444 = fadd fast float %7442, %7439
  %7445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7446 = extractvalue %dx.types.CBufRet.f32 %7445, 0
  %7447 = extractvalue %dx.types.CBufRet.f32 %7445, 1
  %7448 = fsub fast float %7443, %7446
  %7449 = fsub fast float %7444, %7447
  %7450 = fcmp fast olt float %7448, 0.000000e+00
  %7451 = fcmp fast olt float %7449, 0.000000e+00
  %7452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7453 = extractvalue %dx.types.CBufRet.f32 %7452, 0
  %7454 = extractvalue %dx.types.CBufRet.f32 %7452, 1
  %7455 = extractvalue %dx.types.CBufRet.f32 %7452, 2
  %7456 = extractvalue %dx.types.CBufRet.f32 %7452, 3
  %7457 = select i1 %7450, float %7453, float %7455
  %7458 = select i1 %7451, float %7454, float %7456
  %7459 = fmul fast float %7457, %7448
  %7460 = fmul fast float %7458, %7449
  %7461 = call float @dx.op.unary.f32(i32 6, float %7459)  ; FAbs(value)
  %7462 = call float @dx.op.unary.f32(i32 6, float %7460)  ; FAbs(value)
  %7463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7464 = extractvalue %dx.types.CBufRet.f32 %7463, 0
  %7465 = call float @dx.op.binary.f32(i32 35, float %7461, float %7462)  ; FMax(a,b)
  %7466 = fsub fast float %7464, %7465
  %7467 = call float @dx.op.unary.f32(i32 7, float %7466)  ; Saturate(value)
  %7468 = fcmp fast ogt float %7467, 0.000000e+00
  br i1 %7468, label %7469, label %7510, !dx.controlflow.hints !123

; <label>:7469                                    ; preds = %7410
  %7470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %7443, float %7444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7471 = extractvalue %dx.types.ResRet.f32 %7470, 1
  %7472 = fcmp fast ogt float %7471, 0.000000e+00
  br i1 %7472, label %7473, label %7505

; <label>:7473                                    ; preds = %7469
  %7474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %43, float %7443, float %7444, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7475 = extractvalue %dx.types.ResRet.f32 %7474, 0
  %7476 = extractvalue %dx.types.ResRet.f32 %7474, 1
  %7477 = extractvalue %dx.types.ResRet.f32 %7474, 2
  %7478 = extractvalue %dx.types.ResRet.f32 %7474, 3
  %7479 = fsub fast float 1.000000e+00, %7425
  %7480 = fsub fast float %7479, %7436
  %7481 = fmul fast float %7480, 0x400921FB60000000
  %7482 = fadd fast float %7481, 0x3FF921FB60000000
  %7483 = call float @dx.op.unary.f32(i32 13, float %7482)  ; Sin(value)
  %7484 = fadd fast float %7483, -1.000000e+00
  %7485 = fmul fast float %7484, 0x3FD45F3060000000
  %7486 = fmul fast float %7480, 0x401921FB60000000
  %7487 = fadd fast float %7486, 0x400921FB60000000
  %7488 = call float @dx.op.unary.f32(i32 13, float %7487)  ; Sin(value)
  %7489 = fadd fast float %7488, 0x3E7777A5C0000000
  %7490 = fmul fast float %7489, 0x3FC45F3060000000
  %7491 = fmul fast float %7480, 0x4022D97C80000000
  %7492 = fadd fast float %7491, 0x4012D97C80000000
  %7493 = call float @dx.op.unary.f32(i32 13, float %7492)  ; Sin(value)
  %7494 = fadd fast float %7493, 1.000000e+00
  %7495 = fmul fast float %7494, 0x3FBB2995E0000000
  %7496 = fmul fast float %7480, 0x402921FB60000000
  %7497 = fadd fast float %7496, 0x401921FB60000000
  %7498 = call float @dx.op.unary.f32(i32 13, float %7497)  ; Sin(value)
  %7499 = fadd fast float %7498, 0xBE8777A5C0000000
  %7500 = fmul fast float %7499, 0x3FB45F3060000000
  %7501 = call float @dx.op.dot4.f32(i32 56, float %7475, float %7476, float %7477, float %7478, float %7485, float %7490, float %7495, float %7500)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7502 = fmul fast float %7501, 0xBFF7154760000000
  %7503 = call float @dx.op.unary.f32(i32 21, float %7502)  ; Exp(value)
  %7504 = call float @dx.op.unary.f32(i32 7, float %7503)  ; Saturate(value)
  br label %7505

; <label>:7505                                    ; preds = %7473, %7469
  %7506 = phi float [ %7504, %7473 ], [ 1.000000e+00, %7469 ]
  %7507 = fadd fast float %7506, -1.000000e+00
  %7508 = fmul fast float %7507, %7467
  %7509 = fadd fast float %7508, 1.000000e+00
  br label %7510

; <label>:7510                                    ; preds = %7505, %7410
  %7511 = phi float [ %7509, %7505 ], [ 1.000000e+00, %7410 ]
  %7512 = fmul fast float %7511, %7406
  %7513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7514 = extractvalue %dx.types.CBufRet.f32 %7513, 0
  %7515 = extractvalue %dx.types.CBufRet.f32 %7513, 1
  %7516 = extractvalue %dx.types.CBufRet.f32 %7513, 2
  %7517 = fadd fast float %7514, %188
  %7518 = fadd fast float %7515, %189
  %7519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7520 = extractvalue %dx.types.CBufRet.f32 %7519, 1
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 0
  %7523 = extractvalue %dx.types.CBufRet.f32 %7521, 1
  %7524 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7525 = fsub fast float -0.000000e+00, %7517
  %7526 = fsub fast float -0.000000e+00, %7518
  %7527 = fsub fast float -0.000000e+00, %190
  %7528 = fsub fast float %7527, %7516
  %7529 = fadd fast float %7528, %7520
  %7530 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7525, float %7526, float %7529)  ; Dot3(ax,ay,az,bx,by,bz)
  %7531 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7522, float %7523, float %7524)  ; Dot3(ax,ay,az,bx,by,bz)
  %7532 = fdiv fast float 1.000000e+00, %7531
  %7533 = fmul fast float %7532, %7530
  %7534 = fmul fast float %7522, %7533
  %7535 = fmul fast float %7523, %7533
  %7536 = fadd fast float %7534, %7517
  %7537 = fadd fast float %7535, %7518
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 0
  %7540 = extractvalue %dx.types.CBufRet.f32 %7538, 1
  %7541 = fsub fast float %7536, %7539
  %7542 = fsub fast float %7537, %7540
  %7543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7544 = extractvalue %dx.types.CBufRet.f32 %7543, 2
  %7545 = extractvalue %dx.types.CBufRet.f32 %7543, 3
  %7546 = fmul fast float %7541, %7544
  %7547 = fmul fast float %7542, %7545
  %7548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7549 = extractvalue %dx.types.CBufRet.i32 %7548, 3
  %7550 = icmp eq i32 %7549, 0
  br i1 %7550, label %7556, label %7551

; <label>:7551                                    ; preds = %7510
  %7552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7546, float %7547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7553 = extractvalue %dx.types.ResRet.f32 %7552, 0
  %7554 = extractvalue %dx.types.ResRet.f32 %7552, 1
  %7555 = extractvalue %dx.types.ResRet.f32 %7552, 2
  br label %7561

; <label>:7556                                    ; preds = %7510
  %7557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %43, float %7546, float %7547, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7558 = extractvalue %dx.types.ResRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.ResRet.f32 %7557, 1
  %7560 = extractvalue %dx.types.ResRet.f32 %7557, 2
  br label %7561

; <label>:7561                                    ; preds = %7556, %7551
  %7562 = phi float [ %7553, %7551 ], [ %7558, %7556 ]
  %7563 = phi float [ %7554, %7551 ], [ %7559, %7556 ]
  %7564 = phi float [ %7555, %7551 ], [ %7560, %7556 ]
  %7565 = extractvalue %dx.types.CBufRet.f32 %7519, 2
  %7566 = fmul fast float %7565, %7562
  %7567 = extractvalue %dx.types.CBufRet.f32 %7519, 0
  %7568 = fsub fast float %7533, %7567
  %7569 = fsub fast float %7568, %7566
  %7570 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7569)  ; FMax(a,b)
  %7571 = fmul fast float %7570, %7563
  %7572 = call float @dx.op.binary.f32(i32 36, float %7564, float %7571)  ; FMin(a,b)
  %7573 = fmul fast float %7572, 0xBFF7154760000000
  %7574 = call float @dx.op.unary.f32(i32 21, float %7573)  ; Exp(value)
  %7575 = fmul fast float %7512, %7574
  br label %7576

; <label>:7576                                    ; preds = %7561, %7405
  %7577 = phi float [ %7575, %7561 ], [ %7406, %7405 ]
  %7578 = call float @dx.op.binary.f32(i32 36, float %7577, float %7577)  ; FMin(a,b)
  %7579 = call float @dx.op.binary.f32(i32 36, float %7577, float %7578)  ; FMin(a,b)
  %7580 = fcmp fast ogt float %7579, 0.000000e+00
  br i1 %7580, label %7581, label %7807, !dx.controlflow.hints !124

; <label>:7581                                    ; preds = %7576
  %7582 = bitcast i32 %5296 to float
  %7583 = fmul fast float %7577, %6136
  %7584 = fmul fast float %7577, %6137
  %7585 = fmul fast float %7577, %6138
  %7586 = fsub fast float %6125, %219
  %7587 = fsub fast float %6126, %220
  %7588 = fsub fast float %6127, %221
  %7589 = call float @dx.op.dot3.f32(i32 55, float %7586, float %7587, float %7588, float %7586, float %7587, float %7588)  ; Dot3(ax,ay,az,bx,by,bz)
  %7590 = call float @dx.op.unary.f32(i32 25, float %7589)  ; Rsqrt(value)
  %7591 = fmul fast float %7590, %7586
  %7592 = fmul fast float %7590, %7587
  %7593 = fmul fast float %7590, %7588
  %7594 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6127, float %5265, float %5266, float %5267)  ; Dot3(ax,ay,az,bx,by,bz)
  %7595 = call float @dx.op.dot3.f32(i32 55, float %5094, float %5095, float %5096, float %7591, float %7592, float %7593)  ; Dot3(ax,ay,az,bx,by,bz)
  %7596 = call float @dx.op.unary.f32(i32 7, float %7594)  ; Saturate(value)
  %7597 = fmul fast float %7596, %7596
  %7598 = fmul fast float %7597, %7582
  %7599 = call float @dx.op.unary.f32(i32 7, float %7598)  ; Saturate(value)
  %7600 = fmul fast float %7599, %7596
  %7601 = call float @dx.op.dot3.f32(i32 55, float %5265, float %5266, float %5267, float %7591, float %7592, float %7593)  ; Dot3(ax,ay,az,bx,by,bz)
  %7602 = fmul fast float %7601, %7601
  %7603 = call float @dx.op.unary.f32(i32 6, float %7594)  ; FAbs(value)
  %7604 = fsub fast float 1.000000e+00, %5290
  %7605 = fmul fast float %5272, %5272
  %7606 = fmul fast float %7605, %7604
  %7607 = fadd fast float %7606, %5290
  %7608 = bitcast float %7607 to i32
  %7609 = ashr i32 %7608, 1
  %7610 = add nsw i32 %7609, 532487669
  %7611 = bitcast i32 %7610 to float
  %7612 = fadd fast float %7611, %5272
  %7613 = fmul fast float %5290, %7602
  %7614 = fsub fast float 1.000000e+00, %7602
  %7615 = fadd fast float %7614, %7613
  %7616 = fmul fast float %7603, %7603
  %7617 = fmul fast float %7616, %7604
  %7618 = fadd fast float %7617, %5290
  %7619 = bitcast float %7618 to i32
  %7620 = ashr i32 %7619, 1
  %7621 = add nsw i32 %7620, 532487669
  %7622 = bitcast i32 %7621 to float
  %7623 = fadd fast float %7622, %7603
  %7624 = fmul fast float %7615, %7615
  %7625 = fmul fast float %7624, %7612
  %7626 = fmul fast float %7625, %7623
  %7627 = fdiv fast float 0x3FF0A00000000000, %7626
  %7628 = fmul fast float %7627, %5290
  %7629 = call float @dx.op.unary.f32(i32 6, float %7595)  ; FAbs(value)
  %7630 = fsub fast float 1.000000e+00, %7629
  %7631 = bitcast float %7630 to i32
  %7632 = sitofp i32 %7631 to float
  %7633 = fmul fast float %7632, 5.000000e+00
  %7634 = fadd fast float %7633, 0xC1EFBF8940000000
  %7635 = fptosi float %7634 to i32
  %7636 = bitcast i32 %7635 to float
  %7637 = fsub fast float 1.000000e+00, %5262
  %7638 = fsub fast float 1.000000e+00, %5263
  %7639 = fsub fast float 1.000000e+00, %5270
  %7640 = fmul fast float %7636, %7637
  %7641 = fmul fast float %7636, %7638
  %7642 = fmul fast float %7636, %7639
  %7643 = fadd fast float %7640, %5262
  %7644 = fadd fast float %7641, %5263
  %7645 = fadd fast float %7642, %5270
  br i1 %5554, label %7646, label %7669

; <label>:7646                                    ; preds = %7581
  %7647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4286, float %7629, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7648 = extractvalue %dx.types.ResRet.f32 %7647, 0
  %7649 = extractvalue %dx.types.ResRet.f32 %7647, 1
  %7650 = extractvalue %dx.types.ResRet.f32 %7647, 2
  %7651 = fadd fast float %7648, -5.000000e-01
  %7652 = fadd fast float %7649, -5.000000e-01
  %7653 = fadd fast float %7650, -5.000000e-01
  %7654 = fmul fast float %5262, 4.000000e+00
  %7655 = fmul fast float %7654, %7637
  %7656 = fmul fast float %7655, %7651
  %7657 = fmul fast float %5263, 4.000000e+00
  %7658 = fmul fast float %7657, %7638
  %7659 = fmul fast float %7658, %7652
  %7660 = fmul fast float %5270, 4.000000e+00
  %7661 = fmul fast float %7660, %7639
  %7662 = fmul fast float %7661, %7653
  %7663 = fadd fast float %7656, %7643
  %7664 = fadd fast float %7659, %7644
  %7665 = fadd fast float %7662, %7645
  %7666 = call float @dx.op.unary.f32(i32 7, float %7663)  ; Saturate(value)
  %7667 = call float @dx.op.unary.f32(i32 7, float %7664)  ; Saturate(value)
  %7668 = call float @dx.op.unary.f32(i32 7, float %7665)  ; Saturate(value)
  br label %7669

; <label>:7669                                    ; preds = %7646, %7581
  %7670 = phi float [ %7666, %7646 ], [ %7643, %7581 ]
  %7671 = phi float [ %7667, %7646 ], [ %7644, %7581 ]
  %7672 = phi float [ %7668, %7646 ], [ %7645, %7581 ]
  %7673 = fmul fast float %7594, 9.843750e-01
  %7674 = fadd fast float %7673, 7.812500e-03
  %7675 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %7674, float %5544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 2
  %7677 = extractvalue %dx.types.ResRet.f32 %7675, 3
  %7678 = fmul fast float %7676, %5262
  %7679 = fmul fast float %7676, %5263
  %7680 = fmul fast float %7676, %5270
  %7681 = fadd fast float %7678, %7677
  %7682 = fadd fast float %7679, %7677
  %7683 = fadd fast float %7680, %7677
  br i1 %5554, label %7684, label %7707

; <label>:7684                                    ; preds = %7669
  %7685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4286, float %7594, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7686 = extractvalue %dx.types.ResRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.ResRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.ResRet.f32 %7685, 2
  %7689 = fadd fast float %7686, -5.000000e-01
  %7690 = fadd fast float %7687, -5.000000e-01
  %7691 = fadd fast float %7688, -5.000000e-01
  %7692 = fmul fast float %5262, 4.000000e+00
  %7693 = fmul fast float %7692, %7637
  %7694 = fmul fast float %7693, %7689
  %7695 = fmul fast float %5263, 4.000000e+00
  %7696 = fmul fast float %7695, %7638
  %7697 = fmul fast float %7696, %7690
  %7698 = fmul fast float %5270, 4.000000e+00
  %7699 = fmul fast float %7698, %7639
  %7700 = fmul fast float %7699, %7691
  %7701 = fadd fast float %7694, %7681
  %7702 = fadd fast float %7697, %7682
  %7703 = fadd fast float %7700, %7683
  %7704 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7705 = call float @dx.op.unary.f32(i32 7, float %7702)  ; Saturate(value)
  %7706 = call float @dx.op.unary.f32(i32 7, float %7703)  ; Saturate(value)
  br label %7707

; <label>:7707                                    ; preds = %7684, %7669
  %7708 = phi float [ %7704, %7684 ], [ %7681, %7669 ]
  %7709 = phi float [ %7705, %7684 ], [ %7682, %7669 ]
  %7710 = phi float [ %7706, %7684 ], [ %7683, %7669 ]
  %7711 = call float @dx.op.binary.f32(i32 35, float %7709, float %7710)  ; FMax(a,b)
  %7712 = call float @dx.op.binary.f32(i32 35, float %7708, float %7711)  ; FMax(a,b)
  %7713 = fsub fast float 1.000000e+00, %7712
  %7714 = fsub fast float -0.000000e+00, %5265
  %7715 = fsub fast float -0.000000e+00, %5266
  %7716 = fsub fast float -0.000000e+00, %5267
  %7717 = call float @dx.op.dot3.f32(i32 55, float %6125, float %6126, float %6127, float %7714, float %7715, float %7716)  ; Dot3(ax,ay,az,bx,by,bz)
  %7718 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7719 = fmul fast float %7718, 9.843750e-01
  %7720 = fadd fast float %7719, 7.812500e-03
  %7721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %43, float %7720, float %5544, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7722 = extractvalue %dx.types.ResRet.f32 %7721, 2
  %7723 = extractvalue %dx.types.ResRet.f32 %7721, 3
  %7724 = fmul fast float %7722, %5262
  %7725 = fmul fast float %7722, %5263
  %7726 = fmul fast float %7722, %5270
  %7727 = fadd fast float %7724, %7723
  %7728 = fadd fast float %7725, %7723
  %7729 = fadd fast float %7726, %7723
  br i1 %5554, label %7730, label %7753

; <label>:7730                                    ; preds = %7707
  %7731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %43, float %4286, float %7718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7732 = extractvalue %dx.types.ResRet.f32 %7731, 0
  %7733 = extractvalue %dx.types.ResRet.f32 %7731, 1
  %7734 = extractvalue %dx.types.ResRet.f32 %7731, 2
  %7735 = fadd fast float %7732, -5.000000e-01
  %7736 = fadd fast float %7733, -5.000000e-01
  %7737 = fadd fast float %7734, -5.000000e-01
  %7738 = fmul fast float %5262, 4.000000e+00
  %7739 = fmul fast float %7738, %7637
  %7740 = fmul fast float %7739, %7735
  %7741 = fmul fast float %5263, 4.000000e+00
  %7742 = fmul fast float %7741, %7638
  %7743 = fmul fast float %7742, %7736
  %7744 = fmul fast float %5270, 4.000000e+00
  %7745 = fmul fast float %7744, %7639
  %7746 = fmul fast float %7745, %7737
  %7747 = fadd fast float %7740, %7727
  %7748 = fadd fast float %7743, %7728
  %7749 = fadd fast float %7746, %7729
  %7750 = call float @dx.op.unary.f32(i32 7, float %7747)  ; Saturate(value)
  %7751 = call float @dx.op.unary.f32(i32 7, float %7748)  ; Saturate(value)
  %7752 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  br label %7753

; <label>:7753                                    ; preds = %7730, %7707
  %7754 = phi float [ %7750, %7730 ], [ %7727, %7707 ]
  %7755 = phi float [ %7751, %7730 ], [ %7728, %7707 ]
  %7756 = phi float [ %7752, %7730 ], [ %7729, %7707 ]
  %7757 = call float @dx.op.binary.f32(i32 35, float %7755, float %7756)  ; FMax(a,b)
  %7758 = call float @dx.op.binary.f32(i32 35, float %7754, float %7757)  ; FMax(a,b)
  %7759 = fsub fast float 1.000000e+00, %7758
  %7760 = fmul fast float %7759, %7718
  %7761 = fmul fast float %7760, %4398
  %7762 = fmul fast float %7760, %4399
  %7763 = fmul fast float %7760, %4400
  %7764 = fmul fast float %7670, %7628
  %7765 = fmul fast float %7671, %7628
  %7766 = fmul fast float %7672, %7628
  %7767 = fsub fast float 1.000000e+00, %7595
  %7768 = bitcast float %7767 to i32
  %7769 = sitofp i32 %7768 to float
  %7770 = fmul fast float %7769, 5.000000e+00
  %7771 = fadd fast float %7770, 0xC1EFBF8940000000
  %7772 = fptosi float %7771 to i32
  %7773 = bitcast i32 %7772 to float
  %7774 = fmul fast float %7773, %4287
  %7775 = fmul fast float %7713, %7774
  %7776 = fmul fast float %7775, %6065
  %7777 = fmul fast float %7775, %6066
  %7778 = fmul fast float %7775, %6067
  %7779 = fmul fast float %7713, %7600
  %7780 = fadd fast float %7776, %7764
  %7781 = fadd fast float %7777, %7765
  %7782 = fadd fast float %7778, %7766
  %7783 = fadd fast float %7761, %7779
  %7784 = fadd fast float %7762, %7779
  %7785 = fadd fast float %7763, %7779
  %7786 = fmul fast float %7783, %7583
  %7787 = fmul fast float %7784, %7584
  %7788 = fmul fast float %7785, %7585
  %7789 = fmul fast float %7600, %7583
  %7790 = fmul fast float %7789, %7780
  %7791 = fmul fast float %7600, %7584
  %7792 = fmul fast float %7791, %7781
  %7793 = fmul fast float %7600, %7585
  %7794 = fmul fast float %7793, %7782
  %7795 = fadd fast float %7786, %6115
  %7796 = fmul fast float %7795, %4312
  %7797 = fadd fast float %7787, %6117
  %7798 = fmul fast float %7797, %4312
  %7799 = fadd fast float %7788, %6119
  %7800 = fmul fast float %7799, %4312
  %7801 = fadd fast float %7790, %6098
  %7802 = fmul fast float %7801, %4312
  %7803 = fadd fast float %7792, %6101
  %7804 = fmul fast float %7803, %4312
  %7805 = fadd fast float %7794, %6104
  %7806 = fmul fast float %7805, %4312
  br label %7807

; <label>:7807                                    ; preds = %7753, %7576, %6048
  %7808 = phi float [ %6099, %6048 ], [ %6099, %7576 ], [ %7802, %7753 ]
  %7809 = phi float [ %6102, %6048 ], [ %6102, %7576 ], [ %7804, %7753 ]
  %7810 = phi float [ %6105, %6048 ], [ %6105, %7576 ], [ %7806, %7753 ]
  %7811 = phi float [ %6116, %6048 ], [ %6116, %7576 ], [ %7796, %7753 ]
  %7812 = phi float [ %6118, %6048 ], [ %6118, %7576 ], [ %7798, %7753 ]
  %7813 = phi float [ %6120, %6048 ], [ %6120, %7576 ], [ %7800, %7753 ]
  %7814 = fmul fast float %4312, %6074
  %7815 = fsub fast float -0.000000e+00, %7814
  %7816 = fmul fast float %4312, %6075
  %7817 = fsub fast float -0.000000e+00, %7816
  %7818 = fmul fast float %4312, %6076
  %7819 = fsub fast float -0.000000e+00, %7818
  %7820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7821 = extractvalue %dx.types.CBufRet.f32 %7820, 0
  %7822 = fmul fast float %7821, %6080
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 3
  %7825 = fsub fast float 1.000000e+00, %4290
  %7826 = call float @dx.op.unary.f32(i32 7, float %7825)  ; Saturate(value)
  %7827 = fadd fast float %7813, %4289
  %7828 = fmul fast float %7827, %4290
  %7829 = fmul fast float %7826, %7824
  %7830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4291, i32 undef)  ; BufferLoad(srv,index,wot)
  %7831 = extractvalue %dx.types.ResRet.i32 %7830, 3
  %7832 = bitcast i32 %7831 to float
  %7833 = fsub fast float %7815, %7832
  %7834 = fsub fast float %7817, %7832
  %7835 = fsub fast float %7819, %7832
  %7836 = fmul fast float %7833, %233
  %7837 = fmul fast float %7834, %233
  %7838 = fmul fast float %7835, %233
  %7839 = fadd fast float %7836, %7832
  %7840 = fadd fast float %7837, %7832
  %7841 = fadd fast float %7838, %7832
  %7842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %7843 = extractvalue %dx.types.CBufRet.f32 %7842, 3
  %7844 = fmul fast float %7811, %5259
  %7845 = fmul fast float %7812, %5260
  %7846 = fmul fast float %7813, %5261
  %7847 = fcmp fast ogt float %96, %253
  %7848 = and i1 %7847, %4417
  %7849 = or i1 %4496, %7848
  %7850 = icmp eq i32 %4416, 2
  %7851 = fcmp fast ole float %96, %253
  %7852 = and i1 %7851, %7850
  %7853 = or i1 %7852, %7849
  br i1 %7848, label %7854, label %8111

; <label>:7854                                    ; preds = %7807
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 3
  %7858 = fmul fast float %7856, %109
  %7859 = fmul fast float %7857, %110
  %7860 = call float @dx.op.unary.f32(i32 7, float %7858)  ; Saturate(value)
  %7861 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  %7862 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7860, float %7861, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7863 = extractvalue %dx.types.ResRet.f32 %7862, 0
  %7864 = extractvalue %dx.types.ResRet.f32 %7862, 1
  %7865 = extractvalue %dx.types.ResRet.f32 %7862, 2
  %7866 = extractvalue %dx.types.ResRet.f32 %7862, 3
  %7867 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %7860, float %7861, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7868 = extractvalue %dx.types.ResRet.f32 %7867, 0
  %7869 = extractvalue %dx.types.ResRet.f32 %7867, 1
  %7870 = extractvalue %dx.types.ResRet.f32 %7867, 2
  %7871 = extractvalue %dx.types.ResRet.f32 %7867, 3
  %7872 = call float @dx.op.binary.f32(i32 35, float %7864, float %7865)  ; FMax(a,b)
  %7873 = call float @dx.op.binary.f32(i32 35, float %7863, float %7872)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7873, float %7866)  ; FMax(a,b)
  %7875 = call float @dx.op.binary.f32(i32 36, float %7869, float %7870)  ; FMin(a,b)
  %7876 = call float @dx.op.binary.f32(i32 36, float %7868, float %7875)  ; FMin(a,b)
  %7877 = call float @dx.op.binary.f32(i32 36, float %7876, float %7871)  ; FMin(a,b)
  %7878 = fmul fast float %7874, 2.550000e+02
  %7879 = fadd fast float %7878, 0x3F70101020000000
  %7880 = fptoui float %7879 to i32
  %7881 = fmul fast float %7877, 2.550000e+02
  %7882 = fadd fast float %7881, 0x3F70101020000000
  %7883 = fptoui float %7882 to i32
  %7884 = icmp ult i32 %7880, %7883
  br i1 %7884, label %7885, label %8053

; <label>:7885                                    ; preds = %7854
  %7886 = fcmp fast ogt float %95, 9.843750e-01
  %7887 = fadd fast float %96, -4.000000e+00
  %7888 = select i1 %7886, float -4.000000e+00, float %7887
  %7889 = call float @dx.op.binary.f32(i32 35, float %7888, float 0.000000e+00)  ; FMax(a,b)
  %7890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7891 = extractvalue %dx.types.CBufRet.f32 %7890, 0
  %7892 = fadd fast float %7891, %7889
  %7893 = extractvalue %dx.types.CBufRet.f32 %7890, 2
  %7894 = fmul fast float %7892, %7893
  %7895 = call float @dx.op.unary.f32(i32 23, float %7894)  ; Log(value)
  %7896 = extractvalue %dx.types.CBufRet.f32 %7890, 3
  %7897 = fmul fast float %7896, %7895
  %7898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7899 = extractvalue %dx.types.CBufRet.f32 %7898, 2
  %7900 = fmul fast float %7897, %7899
  %7901 = call float @dx.op.unary.f32(i32 7, float %7900)  ; Saturate(value)
  %7902 = uitofp i32 %7880 to float
  %7903 = uitofp i32 %7883 to float
  %7904 = fadd fast float %7902, 5.000000e-01
  %7905 = fadd fast float %7903, 5.000000e-01
  %7906 = fmul fast float %7899, %7904
  %7907 = fmul fast float %7899, %7905
  %7908 = fadd fast float %7906, 0x3F0FFB4800000000
  %7909 = fadd fast float %7907, 0xBF0FFB4800000000
  %7910 = call float @dx.op.binary.f32(i32 35, float %7901, float %7908)  ; FMax(a,b)
  %7911 = call float @dx.op.binary.f32(i32 36, float %7910, float %7909)  ; FMin(a,b)
  %7912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7913 = extractvalue %dx.types.CBufRet.f32 %7912, 1
  %7914 = extractvalue %dx.types.CBufRet.f32 %7912, 2
  %7915 = extractvalue %dx.types.CBufRet.f32 %7912, 0
  %7916 = fmul fast float %7913, %7911
  %7917 = fadd fast float %7915, %7916
  %7918 = fadd fast float %7915, %7914
  %7919 = fsub fast float %7913, %7914
  %7920 = fadd fast float %7919, %7915
  %7921 = call float @dx.op.binary.f32(i32 35, float %7917, float %7918)  ; FMax(a,b)
  %7922 = call float @dx.op.binary.f32(i32 36, float %7921, float %7920)  ; FMin(a,b)
  %7923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %7860, float %7861, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7924 = extractvalue %dx.types.ResRet.f32 %7923, 0
  %7925 = extractvalue %dx.types.ResRet.f32 %7923, 1
  %7926 = extractvalue %dx.types.ResRet.f32 %7923, 2
  %7927 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %7928 = extractvalue %dx.types.CBufRet.i32 %7927, 0
  %7929 = extractvalue %dx.types.CBufRet.i32 %7927, 1
  %7930 = uitofp i32 %7928 to float
  %7931 = uitofp i32 %7929 to float
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 0
  %7934 = extractvalue %dx.types.CBufRet.f32 %7932, 1
  %7935 = fmul fast float %7930, %7860
  %7936 = fmul fast float %7931, %7861
  %7937 = fadd fast float %7935, -5.000000e-01
  %7938 = fadd fast float %7936, -5.000000e-01
  %7939 = call float @dx.op.unary.f32(i32 22, float %7937)  ; Frc(value)
  %7940 = call float @dx.op.unary.f32(i32 22, float %7938)  ; Frc(value)
  %7941 = fmul fast float %7939, %7939
  %7942 = fmul fast float %7941, %7939
  %7943 = fsub fast float 3.000000e+00, %7939
  %7944 = fmul fast float %7941, %7943
  %7945 = fmul fast float %7939, 3.000000e+00
  %7946 = fmul fast float %7942, 3.000000e+00
  %7947 = fmul fast float %7941, 6.000000e+00
  %7948 = fsub fast float %7946, %7947
  %7949 = fadd fast float %7948, 4.000000e+00
  %7950 = fmul fast float %7949, 0x3FC5555560000000
  %7951 = fmul fast float %7942, -3.000000e+00
  %7952 = fadd fast float %7941, %7939
  %7953 = fmul fast float %7952, 3.000000e+00
  %7954 = fadd fast float %7951, 1.000000e+00
  %7955 = fadd fast float %7954, %7953
  %7956 = fmul fast float %7942, 0x3FC5555560000000
  %7957 = fmul fast float %7940, %7940
  %7958 = fmul fast float %7957, %7940
  %7959 = fsub fast float 3.000000e+00, %7940
  %7960 = fmul fast float %7957, %7959
  %7961 = fmul fast float %7940, 3.000000e+00
  %7962 = fmul fast float %7958, 3.000000e+00
  %7963 = fmul fast float %7957, 6.000000e+00
  %7964 = fsub fast float %7962, %7963
  %7965 = fadd fast float %7964, 4.000000e+00
  %7966 = fmul fast float %7965, 0x3FC5555560000000
  %7967 = fmul fast float %7958, -3.000000e+00
  %7968 = fadd fast float %7957, %7940
  %7969 = fmul fast float %7968, 3.000000e+00
  %7970 = fadd fast float %7967, 1.000000e+00
  %7971 = fadd fast float %7970, %7969
  %7972 = fmul fast float %7958, 0x3FC5555560000000
  %7973 = fadd fast float %7939, 1.000000e+00
  %7974 = fsub fast float 1.000000e+00, %7945
  %7975 = fadd fast float %7974, %7944
  %7976 = fadd fast float %7975, %7949
  %7977 = fmul fast float %7976, 0x3FC5555560000000
  %7978 = fdiv fast float %7950, %7977
  %7979 = fsub fast float %7973, %7978
  %7980 = fsub fast float 1.000000e+00, %7939
  %7981 = fadd fast float %7955, %7942
  %7982 = fmul fast float %7981, 0x3FC5555560000000
  %7983 = fdiv fast float %7956, %7982
  %7984 = fadd fast float %7980, %7983
  %7985 = fadd fast float %7940, 1.000000e+00
  %7986 = fsub fast float 1.000000e+00, %7961
  %7987 = fadd fast float %7986, %7960
  %7988 = fadd fast float %7987, %7965
  %7989 = fmul fast float %7988, 0x3FC5555560000000
  %7990 = fdiv fast float %7966, %7989
  %7991 = fsub fast float %7985, %7990
  %7992 = fsub fast float 1.000000e+00, %7940
  %7993 = fadd fast float %7971, %7958
  %7994 = fmul fast float %7993, 0x3FC5555560000000
  %7995 = fdiv fast float %7972, %7994
  %7996 = fadd fast float %7995, %7992
  %7997 = fmul fast float %7979, %7933
  %7998 = fsub fast float %7860, %7997
  %7999 = fmul fast float %7984, %7933
  %8000 = fadd fast float %7999, %7860
  %8001 = fmul fast float %7996, %7934
  %8002 = fadd fast float %8001, %7861
  %8003 = fmul fast float %7991, %7934
  %8004 = fsub fast float %7861, %8003
  %8005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7998, float %8004, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8006 = extractvalue %dx.types.ResRet.f32 %8005, 0
  %8007 = extractvalue %dx.types.ResRet.f32 %8005, 1
  %8008 = extractvalue %dx.types.ResRet.f32 %8005, 2
  %8009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8000, float %8004, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8010 = extractvalue %dx.types.ResRet.f32 %8009, 0
  %8011 = extractvalue %dx.types.ResRet.f32 %8009, 1
  %8012 = extractvalue %dx.types.ResRet.f32 %8009, 2
  %8013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %7998, float %8002, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8014 = extractvalue %dx.types.ResRet.f32 %8013, 0
  %8015 = extractvalue %dx.types.ResRet.f32 %8013, 1
  %8016 = extractvalue %dx.types.ResRet.f32 %8013, 2
  %8017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %8000, float %8002, float %7922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8018 = extractvalue %dx.types.ResRet.f32 %8017, 0
  %8019 = extractvalue %dx.types.ResRet.f32 %8017, 1
  %8020 = extractvalue %dx.types.ResRet.f32 %8017, 2
  %8021 = fsub fast float %8014, %8006
  %8022 = fsub fast float %8015, %8007
  %8023 = fsub fast float %8016, %8008
  %8024 = fmul fast float %8021, %7994
  %8025 = fmul fast float %8022, %7994
  %8026 = fmul fast float %8023, %7994
  %8027 = fadd fast float %8024, %8006
  %8028 = fadd fast float %8025, %8007
  %8029 = fadd fast float %8026, %8008
  %8030 = fsub fast float %8018, %8010
  %8031 = fsub fast float %8019, %8011
  %8032 = fsub fast float %8020, %8012
  %8033 = fmul fast float %8030, %7994
  %8034 = fmul fast float %8031, %7994
  %8035 = fmul fast float %8032, %7994
  %8036 = fsub fast float %8010, %8027
  %8037 = fadd fast float %8036, %8033
  %8038 = fsub fast float %8011, %8028
  %8039 = fadd fast float %8038, %8034
  %8040 = fsub fast float %8012, %8029
  %8041 = fadd fast float %8040, %8035
  %8042 = fmul fast float %8037, %7982
  %8043 = fmul fast float %8039, %7982
  %8044 = fmul fast float %8041, %7982
  %8045 = fadd fast float %8042, %8027
  %8046 = fadd fast float %8043, %8028
  %8047 = fadd fast float %8044, %8029
  %8048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8049 = extractvalue %dx.types.CBufRet.f32 %8048, 1
  %8050 = fmul fast float %8045, %8049
  %8051 = fmul fast float %8046, %8049
  %8052 = fmul fast float %8047, %8049
  br label %8053

; <label>:8053                                    ; preds = %7885, %7854
  %8054 = phi float [ %7924, %7885 ], [ 1.000000e+00, %7854 ]
  %8055 = phi float [ %7925, %7885 ], [ 1.000000e+00, %7854 ]
  %8056 = phi float [ %7926, %7885 ], [ 1.000000e+00, %7854 ]
  %8057 = phi float [ %8050, %7885 ], [ 0.000000e+00, %7854 ]
  %8058 = phi float [ %8051, %7885 ], [ 0.000000e+00, %7854 ]
  %8059 = phi float [ %8052, %7885 ], [ 0.000000e+00, %7854 ]
  %8060 = fmul fast float %8057, %7839
  %8061 = fmul fast float %8058, %7840
  %8062 = fmul fast float %8059, %7841
  %8063 = call float @dx.op.dot3.f32(i32 55, float %8054, float %8055, float %8056, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8064 = call float @dx.op.dot3.f32(i32 55, float %8060, float %8061, float %8062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8065 = select i1 %292, float %8063, float %8054
  %8066 = select i1 %292, float %8063, float %8055
  %8067 = select i1 %292, float 1.000000e+00, float %8056
  %8068 = select i1 %292, float %8064, float %8060
  %8069 = select i1 %292, float 0.000000e+00, float %8061
  %8070 = select i1 %292, float 0.000000e+00, float %8062
  %8071 = fmul fast float %8065, %7844
  %8072 = fmul fast float %8066, %7845
  %8073 = fmul fast float %8067, %7846
  %8074 = fadd fast float %8071, %8068
  %8075 = fadd fast float %8072, %8069
  %8076 = fadd fast float %8070, %8073
  %8077 = fmul fast float %8065, %7808
  %8078 = fmul fast float %8066, %7809
  %8079 = fmul fast float %8067, %7810
  %8080 = fmul fast float %137, %7856
  %8081 = fmul fast float %139, %7857
  %8082 = fsub fast float 1.000000e+00, %8080
  %8083 = fsub fast float 1.000000e+00, %8081
  %8084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8085 = extractvalue %dx.types.CBufRet.f32 %8084, 0
  %8086 = extractvalue %dx.types.CBufRet.f32 %8084, 1
  %8087 = extractvalue %dx.types.CBufRet.f32 %8084, 2
  %8088 = fmul fast float %8082, %8085
  %8089 = fmul fast float %8082, %8086
  %8090 = fmul fast float %8082, %8087
  %8091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8092 = extractvalue %dx.types.CBufRet.f32 %8091, 0
  %8093 = extractvalue %dx.types.CBufRet.f32 %8091, 1
  %8094 = extractvalue %dx.types.CBufRet.f32 %8091, 2
  %8095 = fmul fast float %8083, %8092
  %8096 = fmul fast float %8083, %8093
  %8097 = fmul fast float %8083, %8094
  %8098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8099 = extractvalue %dx.types.CBufRet.f32 %8098, 0
  %8100 = extractvalue %dx.types.CBufRet.f32 %8098, 1
  %8101 = extractvalue %dx.types.CBufRet.f32 %8098, 2
  %8102 = fadd fast float %8095, %8099
  %8103 = fadd fast float %8102, %8088
  %8104 = fadd fast float %8096, %8100
  %8105 = fadd fast float %8104, %8089
  %8106 = fadd fast float %8097, %8101
  %8107 = fadd fast float %8106, %8090
  %8108 = fmul fast float %8103, %253
  %8109 = fmul fast float %8105, %253
  %8110 = fmul fast float %8107, %253
  br label %8111

; <label>:8111                                    ; preds = %8053, %7807
  %8112 = phi float [ %8108, %8053 ], [ %188, %7807 ]
  %8113 = phi float [ %8109, %8053 ], [ %189, %7807 ]
  %8114 = phi float [ %8110, %8053 ], [ %190, %7807 ]
  %8115 = phi float [ %253, %8053 ], [ %96, %7807 ]
  %8116 = phi float [ %8074, %8053 ], [ %7844, %7807 ]
  %8117 = phi float [ %8075, %8053 ], [ %7845, %7807 ]
  %8118 = phi float [ %8076, %8053 ], [ %7846, %7807 ]
  %8119 = phi float [ %8077, %8053 ], [ %7808, %7807 ]
  %8120 = phi float [ %8078, %8053 ], [ %7809, %7807 ]
  %8121 = phi float [ %8079, %8053 ], [ %7810, %7807 ]
  %8122 = phi float [ %8054, %8053 ], [ 1.000000e+00, %7807 ]
  br i1 %7853, label %9277, label %8123

; <label>:8123                                    ; preds = %8111
  %8124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8125 = extractvalue %dx.types.CBufRet.f32 %8124, 0
  %8126 = extractvalue %dx.types.CBufRet.f32 %8124, 1
  %8127 = extractvalue %dx.types.CBufRet.f32 %8124, 2
  %8128 = extractvalue %dx.types.CBufRet.f32 %8124, 3
  %8129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8130 = extractvalue %dx.types.CBufRet.f32 %8129, 0
  %8131 = extractvalue %dx.types.CBufRet.f32 %8129, 1
  %8132 = extractvalue %dx.types.CBufRet.f32 %8129, 2
  %8133 = extractvalue %dx.types.CBufRet.f32 %8129, 3
  %8134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8135 = extractvalue %dx.types.CBufRet.f32 %8134, 0
  %8136 = extractvalue %dx.types.CBufRet.f32 %8134, 1
  %8137 = extractvalue %dx.types.CBufRet.f32 %8134, 2
  %8138 = extractvalue %dx.types.CBufRet.f32 %8134, 3
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8141 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8142 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8143 = extractvalue %dx.types.CBufRet.f32 %8139, 3
  %8144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8145 = extractvalue %dx.types.CBufRet.f32 %8144, 3
  %8146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8147 = extractvalue %dx.types.CBufRet.f32 %8146, 3
  %8148 = extractvalue %dx.types.CBufRet.f32 %8146, 0
  %8149 = extractvalue %dx.types.CBufRet.f32 %8146, 1
  %8150 = extractvalue %dx.types.CBufRet.f32 %8146, 2
  %8151 = fcmp fast olt float %8150, -5.000000e-01
  %8152 = call float @dx.op.dot3.f32(i32 55, float %8112, float %8113, float %8114, float %8112, float %8113, float %8114)  ; Dot3(ax,ay,az,bx,by,bz)
  %8153 = call float @dx.op.unary.f32(i32 25, float %8152)  ; Rsqrt(value)
  %8154 = fmul fast float %8153, %8152
  %8155 = fmul fast float %8153, %8112
  %8156 = fmul fast float %8153, %8113
  %8157 = fmul fast float %8153, %8114
  %8158 = fadd fast float %8154, %8128
  %8159 = call float @dx.op.dot3.f32(i32 55, float %8155, float %8156, float %8157, float %8125, float %8126, float %8127)  ; Dot3(ax,ay,az,bx,by,bz)
  %8160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8161 = extractvalue %dx.types.CBufRet.i32 %8160, 1
  %8162 = and i32 %8161, 1
  %8163 = icmp ne i32 %8162, 0
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 2
  %8166 = fcmp fast ogt float %8165, 0.000000e+00
  %8167 = and i1 %8163, %8166
  br i1 %8167, label %8168, label %8574, !dx.controlflow.hints !125

; <label>:8168                                    ; preds = %8123
  %8169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8170 = extractvalue %dx.types.CBufRet.f32 %8169, 3
  %8171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8172 = extractvalue %dx.types.CBufRet.f32 %8171, 2
  %8173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8174 = extractvalue %dx.types.CBufRet.f32 %8173, 2
  %8175 = fsub fast float %8172, %8174
  %8176 = and i32 %8161, 2
  %8177 = extractvalue %dx.types.CBufRet.i32 %8160, 0
  %8178 = call i32 @dx.op.binary.i32(i32 40, i32 %8177, i32 3)  ; UMin(a,b)
  %8179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8180 = extractvalue %dx.types.CBufRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.CBufRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.CBufRet.f32 %8173, 0
  %8183 = extractvalue %dx.types.CBufRet.f32 %8173, 1
  %8184 = fsub fast float %8180, %8182
  %8185 = fsub fast float %8181, %8183
  %8186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8187 = extractvalue %dx.types.CBufRet.f32 %8186, 0
  %8188 = fcmp fast ogt float %8187, 0.000000e+00
  %8189 = fsub fast float -0.000000e+00, %8184
  %8190 = fsub fast float -0.000000e+00, %8185
  %8191 = call float @dx.op.dot2.f32(i32 54, float %8155, float %8156, float %8155, float %8156)  ; Dot2(ax,ay,bx,by)
  %8192 = call float @dx.op.dot2.f32(i32 54, float %8155, float %8156, float %8189, float %8190)  ; Dot2(ax,ay,bx,by)
  %8193 = fmul fast float %8192, 2.000000e+00
  %8194 = call float @dx.op.dot2.f32(i32 54, float %8189, float %8190, float %8189, float %8190)  ; Dot2(ax,ay,bx,by)
  %8195 = fmul fast float %8187, %8187
  %8196 = fsub fast float %8194, %8195
  %8197 = fmul fast float %8193, %8193
  %8198 = fmul fast float %8191, 4.000000e+00
  %8199 = fmul fast float %8198, %8196
  %8200 = fsub fast float %8197, %8199
  %8201 = fcmp fast ogt float %8200, 0.000000e+00
  br i1 %8201, label %8202, label %8217

; <label>:8202                                    ; preds = %8168
  %8203 = fcmp fast ogt float %8193, 0.000000e+00
  %8204 = call float @dx.op.unary.f32(i32 24, float %8200)  ; Sqrt(value)
  %8205 = fsub fast float -0.000000e+00, %8204
  %8206 = select i1 %8203, float %8204, float %8205
  %8207 = fadd fast float %8206, %8193
  %8208 = fmul float %8207, -5.000000e-01
  %8209 = fdiv fast float %8208, %8191
  %8210 = call float @dx.op.binary.f32(i32 35, float %8209, float 0.000000e+00)  ; FMax(a,b)
  %8211 = call float @dx.op.binary.f32(i32 36, float %8154, float %8210)  ; FMin(a,b)
  %8212 = fdiv fast float %8196, %8208
  %8213 = call float @dx.op.binary.f32(i32 35, float %8212, float 0.000000e+00)  ; FMax(a,b)
  %8214 = call float @dx.op.binary.f32(i32 36, float %8154, float %8213)  ; FMin(a,b)
  %8215 = call float @dx.op.binary.f32(i32 36, float %8211, float %8214)  ; FMin(a,b)
  %8216 = call float @dx.op.binary.f32(i32 35, float %8211, float %8214)  ; FMax(a,b)
  br label %8217

; <label>:8217                                    ; preds = %8202, %8168
  %8218 = phi float [ %8216, %8202 ], [ -1.000000e+00, %8168 ]
  %8219 = phi float [ %8215, %8202 ], [ -1.000000e+00, %8168 ]
  %8220 = phi i1 [ true, %8202 ], [ false, %8168 ]
  %8221 = and i1 %8188, %8220
  br i1 %8221, label %8222, label %8224

; <label>:8222                                    ; preds = %8217
  %8223 = fcmp fast oeq float %8219, %8218
  br i1 %8223, label %8527, label %8225

; <label>:8224                                    ; preds = %8217
  br i1 %8188, label %8527, label %8225

; <label>:8225                                    ; preds = %8224, %8222
  %8226 = phi float [ %8154, %8224 ], [ %8218, %8222 ]
  %8227 = phi float [ 0.000000e+00, %8224 ], [ %8219, %8222 ]
  %8228 = icmp ne i32 %8176, 0
  %8229 = fmul fast float %8226, %8157
  %8230 = fadd fast float %8229, %8170
  %8231 = fmul fast float %8230, %8226
  %8232 = select i1 %8228, float 0.000000e+00, float %8231
  %8233 = fcmp fast oeq float %8157, 0.000000e+00
  %8234 = fdiv fast float %8175, %8157
  %8235 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8234)  ; FMax(a,b)
  %8236 = select i1 %8233, float %8226, float %8235
  %8237 = call float @dx.op.binary.f32(i32 36, float %8226, float %8236)  ; FMin(a,b)
  %8238 = fcmp fast ogt float %8157, 0.000000e+00
  %8239 = fcmp fast olt float %8175, 0.000000e+00
  br i1 %8238, label %8240, label %8297

; <label>:8240                                    ; preds = %8225
  %8241 = icmp eq i32 %8176, 0
  br i1 %8239, label %8242, label %8286

; <label>:8242                                    ; preds = %8240
  %8243 = select i1 %8241, float %8226, float 0.000000e+00
  %8244 = fsub fast float -0.000000e+00, %8243
  %8245 = call float @dx.op.unary.f32(i32 6, float %8244)  ; FAbs(value)
  %8246 = fmul fast float %8243, %8157
  %8247 = fadd fast float %8246, %8170
  %8248 = fmul fast float %8245, %8247
  %8249 = fsub fast float %8232, %8248
  %8250 = fsub fast float %8226, %8245
  %8251 = select i1 %8241, float %8250, float 0.000000e+00
  %8252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8253 = extractvalue %dx.types.CBufRet.f32 %8252, 0
  %8254 = extractvalue %dx.types.CBufRet.f32 %8252, 1
  %8255 = extractvalue %dx.types.CBufRet.f32 %8252, 2
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 0
  %8258 = extractvalue %dx.types.CBufRet.f32 %8256, 1
  %8259 = extractvalue %dx.types.CBufRet.f32 %8256, 2
  %8260 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 3
  %8263 = call float @dx.op.binary.f32(i32 36, float %8249, float %8262)  ; FMin(a,b)
  %8264 = fmul fast float %8260, %8251
  %8265 = call float @dx.op.unary.f32(i32 7, float %8264)  ; Saturate(value)
  %8266 = fsub fast float %8257, %8253
  %8267 = fsub fast float %8258, %8254
  %8268 = fsub fast float %8259, %8255
  %8269 = fmul fast float %8265, %8266
  %8270 = fmul fast float %8265, %8267
  %8271 = fmul fast float %8265, %8268
  %8272 = fadd fast float %8269, %8253
  %8273 = fadd fast float %8270, %8254
  %8274 = fadd fast float %8271, %8255
  %8275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8276 = extractvalue %dx.types.CBufRet.f32 %8275, 0
  %8277 = extractvalue %dx.types.CBufRet.f32 %8275, 1
  %8278 = fadd fast float %8277, %8276
  %8279 = call float @dx.op.unary.f32(i32 7, float %8278)  ; Saturate(value)
  %8280 = extractvalue %dx.types.CBufRet.f32 %8275, 2
  %8281 = extractvalue %dx.types.CBufRet.f32 %8275, 3
  %8282 = fadd fast float %8281, %8280
  %8283 = call float @dx.op.unary.f32(i32 7, float %8282)  ; Saturate(value)
  %8284 = fmul fast float %8279, %8263
  %8285 = fmul fast float %8284, %8283
  br label %8527

; <label>:8286                                    ; preds = %8240
  br i1 %8241, label %8287, label %8308

; <label>:8287                                    ; preds = %8286
  %8288 = call float @dx.op.binary.f32(i32 36, float %8237, float %8227)  ; FMin(a,b)
  %8289 = fsub fast float %8237, %8288
  %8290 = fsub fast float %8289, %8226
  %8291 = call float @dx.op.unary.f32(i32 6, float %8290)  ; FAbs(value)
  %8292 = fadd fast float %8289, %8226
  %8293 = fmul fast float %8292, %8157
  %8294 = fadd fast float %8293, %8170
  %8295 = fmul fast float %8294, %8291
  %8296 = fsub fast float %8232, %8295
  br label %8308

; <label>:8297                                    ; preds = %8225
  br i1 %8239, label %8298, label %8308

; <label>:8298                                    ; preds = %8297
  %8299 = call float @dx.op.binary.f32(i32 35, float %8227, float %8237)  ; FMax(a,b)
  %8300 = icmp eq i32 %8176, 0
  %8301 = select i1 %8300, float %8237, float 0.000000e+00
  %8302 = fsub fast float -0.000000e+00, %8301
  %8303 = call float @dx.op.unary.f32(i32 6, float %8302)  ; FAbs(value)
  %8304 = fmul fast float %8301, %8157
  %8305 = fadd fast float %8304, %8170
  %8306 = fmul fast float %8303, %8305
  %8307 = fsub fast float %8232, %8306
  br label %8308

; <label>:8308                                    ; preds = %8298, %8297, %8287, %8286
  %8309 = phi float [ %8227, %8286 ], [ %8227, %8287 ], [ %8299, %8298 ], [ %8227, %8297 ]
  %8310 = phi float [ 0.000000e+00, %8286 ], [ %8291, %8287 ], [ %8303, %8298 ], [ 0.000000e+00, %8297 ]
  %8311 = phi float [ %8232, %8286 ], [ %8296, %8287 ], [ %8307, %8298 ], [ %8232, %8297 ]
  %8312 = phi float [ %8237, %8286 ], [ %8237, %8287 ], [ %8226, %8298 ], [ %8226, %8297 ]
  %8313 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %8313, align 4, !tbaa !114, !noalias !126
  %8314 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %8314, align 4, !tbaa !114, !noalias !126
  %8315 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %8315, align 4, !tbaa !114, !noalias !126
  %8316 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %8316, align 4, !tbaa !114, !noalias !126
  %8317 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %8317, align 4, !tbaa !114, !noalias !126
  %8318 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %8318, align 4, !tbaa !114, !noalias !126
  %8319 = icmp sgt i32 %8178, 0
  br i1 %8319, label %8320, label %8381

; <label>:8320                                    ; preds = %8308
  br label %8321

; <label>:8321                                    ; preds = %8370, %8320
  %8322 = phi i32 [ %8371, %8370 ], [ 0, %8320 ]
  %8323 = phi i32 [ %8372, %8370 ], [ 0, %8320 ]
  %8324 = add nuw i32 %8323, 171
  %8325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 %8324)  ; CBufferLoadLegacy(handle,regIndex)
  %8326 = extractvalue %dx.types.CBufRet.f32 %8325, 0
  %8327 = extractvalue %dx.types.CBufRet.f32 %8325, 1
  %8328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8329 = extractvalue %dx.types.CBufRet.f32 %8328, 0
  %8330 = extractvalue %dx.types.CBufRet.f32 %8328, 1
  %8331 = fsub fast float %8326, %8329
  %8332 = fsub fast float %8327, %8330
  %8333 = extractvalue %dx.types.CBufRet.f32 %8325, 2
  %8334 = fsub fast float -0.000000e+00, %8331
  %8335 = fsub fast float -0.000000e+00, %8332
  %8336 = call float @dx.op.dot2.f32(i32 54, float %8155, float %8156, float %8334, float %8335)  ; Dot2(ax,ay,bx,by)
  %8337 = fmul fast float %8336, 2.000000e+00
  %8338 = call float @dx.op.dot2.f32(i32 54, float %8334, float %8335, float %8334, float %8335)  ; Dot2(ax,ay,bx,by)
  %8339 = fmul fast float %8333, %8333
  %8340 = fsub fast float %8338, %8339
  %8341 = fmul fast float %8337, %8337
  %8342 = fmul fast float %8198, %8340
  %8343 = fsub fast float %8341, %8342
  %8344 = fcmp fast ogt float %8343, 0.000000e+00
  br i1 %8344, label %8345, label %8360

; <label>:8345                                    ; preds = %8321
  %8346 = fcmp fast ogt float %8337, 0.000000e+00
  %8347 = call float @dx.op.unary.f32(i32 24, float %8343)  ; Sqrt(value)
  %8348 = fsub fast float -0.000000e+00, %8347
  %8349 = select i1 %8346, float %8347, float %8348
  %8350 = fadd fast float %8349, %8337
  %8351 = fmul float %8350, -5.000000e-01
  %8352 = fdiv fast float %8351, %8191
  %8353 = call float @dx.op.binary.f32(i32 35, float %8352, float 0.000000e+00)  ; FMax(a,b)
  %8354 = call float @dx.op.binary.f32(i32 36, float %8226, float %8353)  ; FMin(a,b)
  %8355 = fdiv fast float %8340, %8351
  %8356 = call float @dx.op.binary.f32(i32 35, float %8355, float 0.000000e+00)  ; FMax(a,b)
  %8357 = call float @dx.op.binary.f32(i32 36, float %8226, float %8356)  ; FMin(a,b)
  %8358 = call float @dx.op.binary.f32(i32 36, float %8354, float %8357)  ; FMin(a,b)
  %8359 = call float @dx.op.binary.f32(i32 35, float %8354, float %8357)  ; FMax(a,b)
  br label %8360

; <label>:8360                                    ; preds = %8345, %8321
  %8361 = phi float [ %8359, %8345 ], [ -1.000000e+00, %8321 ]
  %8362 = phi float [ %8358, %8345 ], [ -1.000000e+00, %8321 ]
  %8363 = phi i1 [ true, %8345 ], [ false, %8321 ]
  br i1 %8363, label %8364, label %8370

; <label>:8364                                    ; preds = %8360
  %8365 = call float @dx.op.binary.f32(i32 35, float %8309, float %8362)  ; FMax(a,b)
  %8366 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8323
  store float %8365, float* %8366, align 4, !tbaa !114, !noalias !126
  %8367 = call float @dx.op.binary.f32(i32 35, float %8309, float %8361)  ; FMax(a,b)
  %8368 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8323
  store float %8367, float* %8368, align 4, !tbaa !114, !noalias !126
  %8369 = add nsw i32 %8322, 1
  br label %8370

; <label>:8370                                    ; preds = %8364, %8360
  %8371 = phi i32 [ %8369, %8364 ], [ %8322, %8360 ]
  %8372 = add nuw nsw i32 %8323, 1
  %8373 = icmp eq i32 %8372, %8178
  br i1 %8373, label %8374, label %8321

; <label>:8374                                    ; preds = %8370
  %8375 = load float, float* %8315, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8376 = load float, float* %8314, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %8377 = load float, float* %8313, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %8378 = load float, float* %8318, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8379 = load float, float* %8317, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %8380 = load float, float* %8316, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %8381

; <label>:8381                                    ; preds = %8374, %8308
  %8382 = phi float [ -1.000000e+00, %8308 ], [ %8380, %8374 ]
  %8383 = phi float [ -1.000000e+00, %8308 ], [ %8379, %8374 ]
  %8384 = phi float [ -1.000000e+00, %8308 ], [ %8378, %8374 ]
  %8385 = phi float [ -1.000000e+00, %8308 ], [ %8377, %8374 ]
  %8386 = phi float [ -1.000000e+00, %8308 ], [ %8376, %8374 ]
  %8387 = phi float [ -1.000000e+00, %8308 ], [ %8375, %8374 ]
  %8388 = phi i32 [ 0, %8308 ], [ %8371, %8374 ]
  %8389 = call float @dx.op.binary.f32(i32 36, float %8386, float %8387)  ; FMin(a,b)
  %8390 = call float @dx.op.binary.f32(i32 36, float %8385, float %8389)  ; FMin(a,b)
  %8391 = call float @dx.op.binary.f32(i32 35, float %8385, float %8386)  ; FMax(a,b)
  %8392 = call float @dx.op.binary.f32(i32 36, float %8391, float %8387)  ; FMin(a,b)
  %8393 = call float @dx.op.binary.f32(i32 36, float %8385, float %8386)  ; FMin(a,b)
  %8394 = call float @dx.op.binary.f32(i32 35, float %8393, float %8392)  ; FMax(a,b)
  %8395 = call float @dx.op.binary.f32(i32 35, float %8386, float %8387)  ; FMax(a,b)
  %8396 = call float @dx.op.binary.f32(i32 35, float %8385, float %8395)  ; FMax(a,b)
  store float %8390, float* %8313, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %8394, float* %8314, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %8396, float* %8315, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %8397 = call float @dx.op.binary.f32(i32 36, float %8383, float %8384)  ; FMin(a,b)
  %8398 = call float @dx.op.binary.f32(i32 36, float %8382, float %8397)  ; FMin(a,b)
  %8399 = call float @dx.op.binary.f32(i32 35, float %8382, float %8383)  ; FMax(a,b)
  %8400 = call float @dx.op.binary.f32(i32 36, float %8399, float %8384)  ; FMin(a,b)
  %8401 = call float @dx.op.binary.f32(i32 36, float %8382, float %8383)  ; FMin(a,b)
  %8402 = call float @dx.op.binary.f32(i32 35, float %8401, float %8400)  ; FMax(a,b)
  %8403 = call float @dx.op.binary.f32(i32 35, float %8383, float %8384)  ; FMax(a,b)
  %8404 = call float @dx.op.binary.f32(i32 35, float %8382, float %8403)  ; FMax(a,b)
  store float %8398, float* %8316, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %8402, float* %8317, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %8404, float* %8318, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %8405 = sub nsw i32 3, %8388
  %8406 = icmp sgt i32 %8405, 2
  br i1 %8406, label %8407, label %8445

; <label>:8407                                    ; preds = %8381
  %8408 = icmp eq i32 %8176, 0
  %8409 = fsub fast float %8226, %8310
  %8410 = select i1 %8408, float %8409, float %8310
  %8411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8411, 0
  %8413 = extractvalue %dx.types.CBufRet.f32 %8411, 1
  %8414 = extractvalue %dx.types.CBufRet.f32 %8411, 2
  %8415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8416 = extractvalue %dx.types.CBufRet.f32 %8415, 0
  %8417 = extractvalue %dx.types.CBufRet.f32 %8415, 1
  %8418 = extractvalue %dx.types.CBufRet.f32 %8415, 2
  %8419 = extractvalue %dx.types.CBufRet.f32 %8415, 3
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 3
  %8422 = call float @dx.op.binary.f32(i32 36, float %8311, float %8421)  ; FMin(a,b)
  %8423 = fmul fast float %8419, %8410
  %8424 = call float @dx.op.unary.f32(i32 7, float %8423)  ; Saturate(value)
  %8425 = fsub fast float %8416, %8412
  %8426 = fsub fast float %8417, %8413
  %8427 = fsub fast float %8418, %8414
  %8428 = fmul fast float %8424, %8425
  %8429 = fmul fast float %8424, %8426
  %8430 = fmul fast float %8424, %8427
  %8431 = fadd fast float %8428, %8412
  %8432 = fadd fast float %8429, %8413
  %8433 = fadd fast float %8430, %8414
  %8434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8435 = extractvalue %dx.types.CBufRet.f32 %8434, 0
  %8436 = extractvalue %dx.types.CBufRet.f32 %8434, 1
  %8437 = fadd fast float %8436, %8435
  %8438 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  %8439 = extractvalue %dx.types.CBufRet.f32 %8434, 2
  %8440 = extractvalue %dx.types.CBufRet.f32 %8434, 3
  %8441 = fadd fast float %8440, %8439
  %8442 = call float @dx.op.unary.f32(i32 7, float %8441)  ; Saturate(value)
  %8443 = fmul fast float %8438, %8422
  %8444 = fmul fast float %8443, %8442
  br label %8527

; <label>:8445                                    ; preds = %8381
  %8446 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8405
  %8447 = load float, float* %8446, align 4, !tbaa !114, !noalias !126
  %8448 = fcmp fast olt float %8447, %8312
  %8449 = icmp sgt i32 %8388, 0
  %8450 = and i1 %8449, %8448
  br i1 %8450, label %8451, label %8488

; <label>:8451                                    ; preds = %8445
  br label %8452

; <label>:8452                                    ; preds = %8481, %8451
  %8453 = phi float [ %8482, %8481 ], [ %8310, %8451 ]
  %8454 = phi float [ %8483, %8481 ], [ %8311, %8451 ]
  %8455 = phi float [ %8463, %8481 ], [ %8447, %8451 ]
  %8456 = phi i32 [ %8460, %8481 ], [ %8405, %8451 ]
  %8457 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %8456
  %8458 = load float, float* %8457, align 4, !tbaa !114, !noalias !126
  %8459 = icmp slt i32 %8456, 2
  %8460 = add nsw i32 %8456, 1
  %8461 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %8460
  %8462 = load float, float* %8461, align 4, !tbaa !114, !noalias !126
  %8463 = select i1 %8459, float %8462, float %8226
  %8464 = call float @dx.op.binary.f32(i32 36, float %8463, float %8458)  ; FMin(a,b)
  %8465 = call float @dx.op.binary.f32(i32 36, float %8312, float %8464)  ; FMin(a,b)
  %8466 = icmp eq i32 %8176, 0
  %8467 = fadd fast float %8465, %8455
  %8468 = fmul fast float %8467, %8157
  %8469 = fadd fast float %8468, %8170
  br i1 %8466, label %8475, label %8470

; <label>:8470                                    ; preds = %8452
  %8471 = fsub fast float %8465, %8455
  %8472 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8471)  ; FMax(a,b)
  %8473 = fmul fast float %8472, %8469
  %8474 = fadd fast float %8473, %8454
  br label %8481

; <label>:8475                                    ; preds = %8452
  %8476 = fsub fast float %8455, %8465
  %8477 = call float @dx.op.unary.f32(i32 6, float %8476)  ; FAbs(value)
  %8478 = fadd fast float %8477, %8453
  %8479 = fmul fast float %8477, %8469
  %8480 = fsub fast float %8454, %8479
  br label %8481

; <label>:8481                                    ; preds = %8475, %8470
  %8482 = phi float [ %8472, %8470 ], [ %8478, %8475 ]
  %8483 = phi float [ %8474, %8470 ], [ %8480, %8475 ]
  %8484 = fcmp fast olt float %8463, %8312
  %8485 = icmp slt i32 %8460, 3
  %8486 = and i1 %8485, %8484
  br i1 %8486, label %8452, label %8487

; <label>:8487                                    ; preds = %8481
  br label %8488

; <label>:8488                                    ; preds = %8487, %8445
  %8489 = phi float [ %8310, %8445 ], [ %8482, %8487 ]
  %8490 = phi float [ %8311, %8445 ], [ %8483, %8487 ]
  %8491 = fsub fast float %8226, %8489
  %8492 = select i1 %8228, float %8489, float %8491
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.CBufRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.CBufRet.f32 %8493, 2
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8501 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8502, 3
  %8504 = call float @dx.op.binary.f32(i32 36, float %8490, float %8503)  ; FMin(a,b)
  %8505 = fmul fast float %8501, %8492
  %8506 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  %8507 = fsub fast float %8498, %8494
  %8508 = fsub fast float %8499, %8495
  %8509 = fsub fast float %8500, %8496
  %8510 = fmul fast float %8506, %8507
  %8511 = fmul fast float %8506, %8508
  %8512 = fmul fast float %8506, %8509
  %8513 = fadd fast float %8510, %8494
  %8514 = fadd fast float %8511, %8495
  %8515 = fadd fast float %8512, %8496
  %8516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8517 = extractvalue %dx.types.CBufRet.f32 %8516, 0
  %8518 = extractvalue %dx.types.CBufRet.f32 %8516, 1
  %8519 = fadd fast float %8518, %8517
  %8520 = call float @dx.op.unary.f32(i32 7, float %8519)  ; Saturate(value)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8516, 2
  %8522 = extractvalue %dx.types.CBufRet.f32 %8516, 3
  %8523 = fadd fast float %8522, %8521
  %8524 = call float @dx.op.unary.f32(i32 7, float %8523)  ; Saturate(value)
  %8525 = fmul fast float %8520, %8504
  %8526 = fmul fast float %8525, %8524
  br label %8527

; <label>:8527                                    ; preds = %8488, %8407, %8242, %8224, %8222
  %8528 = phi float [ %8251, %8242 ], [ %8410, %8407 ], [ %8492, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8529 = phi float [ %8285, %8242 ], [ %8444, %8407 ], [ %8526, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8530 = phi float [ %8272, %8242 ], [ %8431, %8407 ], [ %8513, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8531 = phi float [ %8273, %8242 ], [ %8432, %8407 ], [ %8514, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8532 = phi float [ %8274, %8242 ], [ %8433, %8407 ], [ %8515, %8488 ], [ 0.000000e+00, %8222 ], [ 0.000000e+00, %8224 ]
  %8533 = fmul fast float %8165, %8529
  %8534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.f32 %8534, 2
  %8536 = fsub fast float %8172, %8535
  %8537 = fcmp fast olt float %8533, -2.000000e+01
  %8538 = call float @dx.op.unary.f32(i32 21, float %8533)  ; Exp(value)
  %8539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8540 = extractvalue %dx.types.CBufRet.f32 %8539, 2
  %8541 = extractvalue %dx.types.CBufRet.f32 %8539, 3
  %8542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8543 = extractvalue %dx.types.CBufRet.f32 %8542, 2
  %8544 = fmul fast float %8541, %8536
  %8545 = call float @dx.op.unary.f32(i32 7, float %8544)  ; Saturate(value)
  %8546 = fsub fast float 1.000000e+00, %8545
  %8547 = fmul fast float %8157, 5.000000e-01
  %8548 = fadd fast float %8547, 5.000000e-01
  %8549 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8550 = fsub fast float 1.000000e+00, %8549
  %8551 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8546)  ; FMax(a,b)
  %8552 = fdiv fast float %8550, %8551
  %8553 = fsub fast float %8536, %8114
  %8554 = call float @dx.op.unary.f32(i32 6, float %8553)  ; FAbs(value)
  %8555 = fmul fast float %8554, %8540
  %8556 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8557 = fsub fast float 1.000000e+00, %8555
  %8558 = fmul fast float %8557, %8556
  %8559 = fadd fast float %8558, %8555
  %8560 = fmul fast float %8543, %8536
  %8561 = call float @dx.op.unary.f32(i32 7, float %8560)  ; Saturate(value)
  %8562 = fsub fast float 1.000000e+00, %8559
  %8563 = fmul fast float %8562, %8561
  %8564 = fadd fast float %8563, %8559
  %8565 = call float @dx.op.unary.f32(i32 7, float %8564)  ; Saturate(value)
  %8566 = fadd fast float %8538, -1.000000e+00
  %8567 = select i1 %8537, float -1.000000e+00, float %8566
  %8568 = fmul fast float %8565, %8567
  %8569 = fadd fast float %8568, 1.000000e+00
  %8570 = fsub fast float -0.000000e+00, %8568
  %8571 = fmul fast float %8530, %8570
  %8572 = fmul fast float %8531, %8570
  %8573 = fmul fast float %8532, %8570
  br label %8574

; <label>:8574                                    ; preds = %8527, %8123
  %8575 = phi float [ %8528, %8527 ], [ 0.000000e+00, %8123 ]
  %8576 = phi float [ %8569, %8527 ], [ 1.000000e+00, %8123 ]
  %8577 = phi float [ %8571, %8527 ], [ 0.000000e+00, %8123 ]
  %8578 = phi float [ %8572, %8527 ], [ 0.000000e+00, %8123 ]
  %8579 = phi float [ %8573, %8527 ], [ 0.000000e+00, %8123 ]
  %8580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8581 = extractvalue %dx.types.CBufRet.f32 %8580, 1
  %8582 = fsub fast float 1.000000e+00, %8576
  %8583 = fmul fast float %8582, %8158
  %8584 = fmul fast float %8583, %8581
  %8585 = fsub fast float %8158, %8584
  br i1 %8151, label %8586, label %8615, !dx.controlflow.hints !162

; <label>:8586                                    ; preds = %8574
  %8587 = fmul fast float %8159, %8148
  %8588 = fadd fast float %8587, %8149
  %8589 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8590 = fmul fast float %8130, %8585
  %8591 = fsub fast float -0.000000e+00, %8590
  %8592 = fmul fast float %8131, %8585
  %8593 = fsub fast float -0.000000e+00, %8592
  %8594 = call float @dx.op.unary.f32(i32 21, float %8591)  ; Exp(value)
  %8595 = call float @dx.op.unary.f32(i32 21, float %8593)  ; Exp(value)
  %8596 = call float @dx.op.binary.f32(i32 35, float %8138, float %8594)  ; FMax(a,b)
  %8597 = call float @dx.op.binary.f32(i32 35, float %8138, float %8595)  ; FMax(a,b)
  %8598 = fsub fast float %8597, %8596
  %8599 = fmul fast float %8598, %8589
  %8600 = fadd fast float %8599, %8596
  %8601 = call float @dx.op.unary.f32(i32 7, float %8600)  ; Saturate(value)
  %8602 = fsub fast float %8135, %8140
  %8603 = fsub fast float %8136, %8141
  %8604 = fsub fast float %8137, %8142
  %8605 = fmul fast float %8589, %8602
  %8606 = fmul fast float %8589, %8603
  %8607 = fmul fast float %8589, %8604
  %8608 = fadd fast float %8605, %8140
  %8609 = fadd fast float %8606, %8141
  %8610 = fadd fast float %8607, %8142
  %8611 = fsub fast float 1.000000e+00, %8601
  %8612 = fmul fast float %8611, %8608
  %8613 = fmul fast float %8611, %8609
  %8614 = fmul fast float %8611, %8610
  br label %8674

; <label>:8615                                    ; preds = %8574
  %8616 = fmul fast float %8585, %8147
  %8617 = call float @dx.op.unary.f32(i32 7, float %8616)  ; Saturate(value)
  %8618 = fsub fast float 2.000000e+00, %8617
  %8619 = fmul fast float %8617, 9.921875e-01
  %8620 = fmul fast float %8619, %8618
  %8621 = fadd fast float %8620, 3.906250e-03
  %8622 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %8621, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8623 = extractvalue %dx.types.ResRet.f32 %8622, 0
  %8624 = fsub fast float %8617, %8623
  %8625 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8624)  ; FMax(a,b)
  %8626 = fmul fast float %8133, %8114
  %8627 = call float @dx.op.unary.f32(i32 6, float %8626)  ; FAbs(value)
  %8628 = fcmp fast ogt float %8627, 0x3EB0C6F7A0000000
  br i1 %8628, label %8629, label %8635, !dx.controlflow.hints !163

; <label>:8629                                    ; preds = %8615
  %8630 = fmul fast float %8626, 0xBFF7154760000000
  %8631 = call float @dx.op.unary.f32(i32 21, float %8630)  ; Exp(value)
  %8632 = fsub fast float 1.000000e+00, %8631
  %8633 = fdiv fast float %8632, %8626
  %8634 = fmul fast float %8633, %8143
  br label %8635

; <label>:8635                                    ; preds = %8629, %8615
  %8636 = phi float [ %8634, %8629 ], [ %8143, %8615 ]
  %8637 = fadd fast float %8636, %8145
  %8638 = fmul fast float %8637, %8625
  %8639 = fmul fast float %8130, %8638
  %8640 = fsub fast float -0.000000e+00, %8639
  %8641 = fmul fast float %8131, %8638
  %8642 = fsub fast float -0.000000e+00, %8641
  %8643 = fmul fast float %8132, %8638
  %8644 = fsub fast float -0.000000e+00, %8643
  %8645 = call float @dx.op.unary.f32(i32 21, float %8640)  ; Exp(value)
  %8646 = call float @dx.op.unary.f32(i32 21, float %8642)  ; Exp(value)
  %8647 = call float @dx.op.unary.f32(i32 21, float %8644)  ; Exp(value)
  %8648 = fmul fast float %8159, %8159
  %8649 = fadd fast float %8648, 1.000000e+00
  %8650 = fmul fast float %8649, 0x3FAE8EC8A0000000
  %8651 = fmul fast float %8650, %8140
  %8652 = fmul fast float %8650, %8141
  %8653 = fmul fast float %8650, %8142
  %8654 = fmul fast float %8159, %8138
  %8655 = fsub fast float 1.000000e+00, %8654
  %8656 = fmul fast float %8138, %8138
  %8657 = fsub fast float 1.000000e+00, %8656
  %8658 = fmul fast float %8657, 0x3FB45F3060000000
  %8659 = fmul fast float %8655, %8655
  %8660 = fdiv fast float 1.000000e+00, %8659
  %8661 = fmul fast float %8658, %8660
  %8662 = fmul fast float %8661, %8135
  %8663 = fmul fast float %8661, %8136
  %8664 = fmul fast float %8661, %8137
  %8665 = fadd fast float %8662, %8651
  %8666 = fadd fast float %8663, %8652
  %8667 = fadd fast float %8664, %8653
  %8668 = fsub fast float 1.000000e+00, %8645
  %8669 = fsub fast float 1.000000e+00, %8646
  %8670 = fsub fast float 1.000000e+00, %8647
  %8671 = fmul fast float %8665, %8668
  %8672 = fmul fast float %8666, %8669
  %8673 = fmul fast float %8667, %8670
  br label %8674

; <label>:8674                                    ; preds = %8635, %8586
  %8675 = phi float [ %8612, %8586 ], [ %8671, %8635 ]
  %8676 = phi float [ %8613, %8586 ], [ %8672, %8635 ]
  %8677 = phi float [ %8614, %8586 ], [ %8673, %8635 ]
  %8678 = phi float [ %8601, %8586 ], [ %8645, %8635 ]
  %8679 = phi float [ %8601, %8586 ], [ %8646, %8635 ]
  %8680 = phi float [ %8601, %8586 ], [ %8647, %8635 ]
  br i1 %8167, label %8681, label %8879, !dx.controlflow.hints !164

; <label>:8681                                    ; preds = %8674
  %8682 = extractvalue %dx.types.CBufRet.f32 %8580, 0
  %8683 = fmul fast float %8682, %8582
  %8684 = fsub fast float %8577, %8675
  %8685 = fsub fast float %8578, %8676
  %8686 = fsub fast float %8579, %8677
  %8687 = fmul fast float %8683, %8684
  %8688 = fmul fast float %8683, %8685
  %8689 = fmul fast float %8683, %8686
  %8690 = fadd fast float %8687, %8675
  %8691 = fadd fast float %8688, %8676
  %8692 = fadd fast float %8689, %8677
  %8693 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8678)  ; FMax(a,b)
  %8694 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8679)  ; FMax(a,b)
  %8695 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8680)  ; FMax(a,b)
  %8696 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8576)  ; FMax(a,b)
  %8697 = call float @dx.op.binary.f32(i32 35, float %8575, float %8585)  ; FMax(a,b)
  %8698 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8697)  ; FMax(a,b)
  %8699 = fdiv fast float %8575, %8698
  %8700 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8701 = fdiv fast float %8585, %8698
  %8702 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8703 = fcmp fast une float %8696, 1.000000e+00
  br i1 %8703, label %8704, label %8717, !dx.controlflow.hints !165

; <label>:8704                                    ; preds = %8681
  %8705 = call float @dx.op.unary.f32(i32 23, float %8696)  ; Log(value)
  %8706 = fmul fast float %8705, 0x3FE62E4300000000
  %8707 = fmul fast float %8577, %8706
  %8708 = fsub fast float -0.000000e+00, %8707
  %8709 = fmul fast float %8578, %8706
  %8710 = fsub fast float -0.000000e+00, %8709
  %8711 = fmul fast float %8579, %8706
  %8712 = fsub fast float -0.000000e+00, %8711
  %8713 = fsub fast float 1.000000e+00, %8696
  %8714 = fdiv fast float %8708, %8713
  %8715 = fdiv fast float %8710, %8713
  %8716 = fdiv fast float %8712, %8713
  br label %8717

; <label>:8717                                    ; preds = %8704, %8681
  %8718 = phi float [ %8714, %8704 ], [ %8577, %8681 ]
  %8719 = phi float [ %8715, %8704 ], [ %8578, %8681 ]
  %8720 = phi float [ %8716, %8704 ], [ %8579, %8681 ]
  %8721 = phi float [ %8706, %8704 ], [ 0.000000e+00, %8681 ]
  %8722 = fcmp fast une float %8693, 1.000000e+00
  br i1 %8722, label %8723, label %8730, !dx.controlflow.hints !166

; <label>:8723                                    ; preds = %8717
  %8724 = call float @dx.op.unary.f32(i32 23, float %8693)  ; Log(value)
  %8725 = fmul fast float %8724, 0x3FE62E4300000000
  %8726 = fmul fast float %8690, %8725
  %8727 = fsub fast float -0.000000e+00, %8726
  %8728 = fsub fast float 1.000000e+00, %8693
  %8729 = fdiv fast float %8727, %8728
  br label %8730

; <label>:8730                                    ; preds = %8723, %8717
  %8731 = phi float [ %8729, %8723 ], [ %8690, %8717 ]
  %8732 = phi float [ %8725, %8723 ], [ 0.000000e+00, %8717 ]
  %8733 = fcmp fast une float %8694, 1.000000e+00
  br i1 %8733, label %8734, label %8741, !dx.controlflow.hints !166

; <label>:8734                                    ; preds = %8730
  %8735 = call float @dx.op.unary.f32(i32 23, float %8694)  ; Log(value)
  %8736 = fmul fast float %8735, 0x3FE62E4300000000
  %8737 = fmul fast float %8691, %8736
  %8738 = fsub fast float -0.000000e+00, %8737
  %8739 = fsub fast float 1.000000e+00, %8694
  %8740 = fdiv fast float %8738, %8739
  br label %8741

; <label>:8741                                    ; preds = %8734, %8730
  %8742 = phi float [ %8740, %8734 ], [ %8691, %8730 ]
  %8743 = phi float [ %8736, %8734 ], [ 0.000000e+00, %8730 ]
  %8744 = fcmp fast une float %8695, 1.000000e+00
  br i1 %8744, label %8745, label %8752, !dx.controlflow.hints !166

; <label>:8745                                    ; preds = %8741
  %8746 = call float @dx.op.unary.f32(i32 23, float %8695)  ; Log(value)
  %8747 = fmul fast float %8746, 0x3FE62E4300000000
  %8748 = fmul fast float %8692, %8747
  %8749 = fsub fast float -0.000000e+00, %8748
  %8750 = fsub fast float 1.000000e+00, %8695
  %8751 = fdiv fast float %8749, %8750
  br label %8752

; <label>:8752                                    ; preds = %8745, %8741
  %8753 = phi float [ %8751, %8745 ], [ %8692, %8741 ]
  %8754 = phi float [ %8747, %8745 ], [ 0.000000e+00, %8741 ]
  %8755 = fmul fast float %8718, %8702
  %8756 = fmul fast float %8719, %8702
  %8757 = fmul fast float %8720, %8702
  %8758 = fmul fast float %8721, %8702
  %8759 = fmul fast float %8731, %8700
  %8760 = fmul fast float %8742, %8700
  %8761 = fmul fast float %8753, %8700
  %8762 = fmul fast float %8732, %8700
  %8763 = fmul fast float %8743, %8700
  %8764 = fmul fast float %8754, %8700
  %8765 = fadd fast float %8759, %8755
  %8766 = fadd fast float %8760, %8756
  %8767 = fadd fast float %8761, %8757
  %8768 = fadd fast float %8762, %8758
  %8769 = fadd fast float %8763, %8758
  %8770 = fadd fast float %8764, %8758
  %8771 = fcmp fast une float %8768, 0.000000e+00
  br i1 %8771, label %8772, label %8779, !dx.controlflow.hints !167

; <label>:8772                                    ; preds = %8752
  %8773 = fmul fast float %8768, 0x3FF7154760000000
  %8774 = call float @dx.op.unary.f32(i32 21, float %8773)  ; Exp(value)
  %8775 = fsub fast float 1.000000e+00, %8774
  %8776 = fmul fast float %8765, %8775
  %8777 = fsub fast float -0.000000e+00, %8776
  %8778 = fdiv fast float %8777, %8768
  br label %8779

; <label>:8779                                    ; preds = %8772, %8752
  %8780 = phi float [ %8774, %8772 ], [ 1.000000e+00, %8752 ]
  %8781 = phi float [ %8778, %8772 ], [ %8765, %8752 ]
  %8782 = fcmp fast une float %8769, 0.000000e+00
  br i1 %8782, label %8783, label %8790, !dx.controlflow.hints !167

; <label>:8783                                    ; preds = %8779
  %8784 = fmul fast float %8769, 0x3FF7154760000000
  %8785 = call float @dx.op.unary.f32(i32 21, float %8784)  ; Exp(value)
  %8786 = fsub fast float 1.000000e+00, %8785
  %8787 = fmul fast float %8766, %8786
  %8788 = fsub fast float -0.000000e+00, %8787
  %8789 = fdiv fast float %8788, %8769
  br label %8790

; <label>:8790                                    ; preds = %8783, %8779
  %8791 = phi float [ %8785, %8783 ], [ 1.000000e+00, %8779 ]
  %8792 = phi float [ %8789, %8783 ], [ %8766, %8779 ]
  %8793 = fcmp fast une float %8770, 0.000000e+00
  br i1 %8793, label %8794, label %8801, !dx.controlflow.hints !167

; <label>:8794                                    ; preds = %8790
  %8795 = fmul fast float %8770, 0x3FF7154760000000
  %8796 = call float @dx.op.unary.f32(i32 21, float %8795)  ; Exp(value)
  %8797 = fsub fast float 1.000000e+00, %8796
  %8798 = fmul fast float %8767, %8797
  %8799 = fsub fast float -0.000000e+00, %8798
  %8800 = fdiv fast float %8799, %8770
  br label %8801

; <label>:8801                                    ; preds = %8794, %8790
  %8802 = phi float [ %8796, %8794 ], [ 1.000000e+00, %8790 ]
  %8803 = phi float [ %8800, %8794 ], [ %8767, %8790 ]
  %8804 = fcmp fast ogt float %8700, %8702
  br i1 %8804, label %8805, label %8825

; <label>:8805                                    ; preds = %8801
  %8806 = fsub fast float 1.000000e+00, %8702
  %8807 = fmul fast float %8718, %8806
  %8808 = fmul fast float %8719, %8806
  %8809 = fmul fast float %8720, %8806
  %8810 = fmul fast float %8721, %8806
  %8811 = fcmp fast une float %8810, 0.000000e+00
  br i1 %8811, label %8812, label %8863, !dx.controlflow.hints !168

; <label>:8812                                    ; preds = %8805
  %8813 = fmul fast float %8810, 0x3FF7154760000000
  %8814 = call float @dx.op.unary.f32(i32 21, float %8813)  ; Exp(value)
  %8815 = fsub fast float 1.000000e+00, %8814
  %8816 = fmul fast float %8807, %8815
  %8817 = fsub fast float -0.000000e+00, %8816
  %8818 = fmul fast float %8808, %8815
  %8819 = fsub fast float -0.000000e+00, %8818
  %8820 = fmul fast float %8809, %8815
  %8821 = fsub fast float -0.000000e+00, %8820
  %8822 = fdiv fast float %8817, %8810
  %8823 = fdiv fast float %8819, %8810
  %8824 = fdiv fast float %8821, %8810
  br label %8863

; <label>:8825                                    ; preds = %8801
  %8826 = fsub fast float 1.000000e+00, %8700
  %8827 = fmul fast float %8731, %8826
  %8828 = fmul fast float %8742, %8826
  %8829 = fmul fast float %8753, %8826
  %8830 = fmul fast float %8732, %8826
  %8831 = fmul fast float %8743, %8826
  %8832 = fmul fast float %8754, %8826
  %8833 = fcmp fast une float %8830, 0.000000e+00
  br i1 %8833, label %8834, label %8841, !dx.controlflow.hints !167

; <label>:8834                                    ; preds = %8825
  %8835 = fmul fast float %8830, 0x3FF7154760000000
  %8836 = call float @dx.op.unary.f32(i32 21, float %8835)  ; Exp(value)
  %8837 = fsub fast float 1.000000e+00, %8836
  %8838 = fmul fast float %8827, %8837
  %8839 = fsub fast float -0.000000e+00, %8838
  %8840 = fdiv fast float %8839, %8830
  br label %8841

; <label>:8841                                    ; preds = %8834, %8825
  %8842 = phi float [ %8840, %8834 ], [ %8827, %8825 ]
  %8843 = phi float [ %8836, %8834 ], [ 1.000000e+00, %8825 ]
  %8844 = fcmp fast une float %8831, 0.000000e+00
  br i1 %8844, label %8845, label %8852, !dx.controlflow.hints !167

; <label>:8845                                    ; preds = %8841
  %8846 = fmul fast float %8831, 0x3FF7154760000000
  %8847 = call float @dx.op.unary.f32(i32 21, float %8846)  ; Exp(value)
  %8848 = fsub fast float 1.000000e+00, %8847
  %8849 = fmul fast float %8828, %8848
  %8850 = fsub fast float -0.000000e+00, %8849
  %8851 = fdiv fast float %8850, %8831
  br label %8852

; <label>:8852                                    ; preds = %8845, %8841
  %8853 = phi float [ %8851, %8845 ], [ %8828, %8841 ]
  %8854 = phi float [ %8847, %8845 ], [ 1.000000e+00, %8841 ]
  %8855 = fcmp fast une float %8832, 0.000000e+00
  br i1 %8855, label %8856, label %8863, !dx.controlflow.hints !167

; <label>:8856                                    ; preds = %8852
  %8857 = fmul fast float %8832, 0x3FF7154760000000
  %8858 = call float @dx.op.unary.f32(i32 21, float %8857)  ; Exp(value)
  %8859 = fsub fast float 1.000000e+00, %8858
  %8860 = fmul fast float %8829, %8859
  %8861 = fsub fast float -0.000000e+00, %8860
  %8862 = fdiv fast float %8861, %8832
  br label %8863

; <label>:8863                                    ; preds = %8856, %8852, %8812, %8805
  %8864 = phi float [ %8862, %8856 ], [ %8824, %8812 ], [ %8809, %8805 ], [ %8829, %8852 ]
  %8865 = phi float [ %8853, %8856 ], [ %8823, %8812 ], [ %8808, %8805 ], [ %8853, %8852 ]
  %8866 = phi float [ %8842, %8856 ], [ %8822, %8812 ], [ %8807, %8805 ], [ %8842, %8852 ]
  %8867 = phi float [ %8858, %8856 ], [ %8814, %8812 ], [ 1.000000e+00, %8805 ], [ 1.000000e+00, %8852 ]
  %8868 = phi float [ %8854, %8856 ], [ %8814, %8812 ], [ 1.000000e+00, %8805 ], [ %8854, %8852 ]
  %8869 = phi float [ %8843, %8856 ], [ %8814, %8812 ], [ 1.000000e+00, %8805 ], [ %8843, %8852 ]
  %8870 = fmul fast float %8869, %8781
  %8871 = fmul fast float %8868, %8792
  %8872 = fmul fast float %8867, %8803
  %8873 = fadd fast float %8870, %8866
  %8874 = fadd fast float %8871, %8865
  %8875 = fadd fast float %8872, %8864
  %8876 = fmul fast float %8869, %8780
  %8877 = fmul fast float %8868, %8791
  %8878 = fmul fast float %8867, %8802
  br label %8879

; <label>:8879                                    ; preds = %8863, %8674
  %8880 = phi float [ %8878, %8863 ], [ %8680, %8674 ]
  %8881 = phi float [ %8877, %8863 ], [ %8679, %8674 ]
  %8882 = phi float [ %8876, %8863 ], [ %8678, %8674 ]
  %8883 = phi float [ %8875, %8863 ], [ %8677, %8674 ]
  %8884 = phi float [ %8874, %8863 ], [ %8676, %8674 ]
  %8885 = phi float [ %8873, %8863 ], [ %8675, %8674 ]
  %8886 = fmul fast float %8885, %7839
  %8887 = fmul fast float %8884, %7840
  %8888 = fmul fast float %8883, %7841
  %8889 = fmul fast float %8882, %8122
  %8890 = call float @dx.op.dot3.f32(i32 55, float %8882, float %8881, float %8880, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8891 = call float @dx.op.dot3.f32(i32 55, float %8886, float %8887, float %8888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8892 = select i1 %292, float %8890, float %8882
  %8893 = select i1 %292, float %8890, float %8881
  %8894 = select i1 %292, float 1.000000e+00, float %8880
  %8895 = select i1 %292, float %8891, float %8886
  %8896 = select i1 %292, float 0.000000e+00, float %8887
  %8897 = select i1 %292, float 0.000000e+00, float %8888
  %8898 = fmul fast float %8892, %8116
  %8899 = fmul fast float %8893, %8117
  %8900 = fmul fast float %8894, %8118
  %8901 = fadd fast float %8898, %8895
  %8902 = fadd fast float %8899, %8896
  %8903 = fadd fast float %8897, %8900
  %8904 = fmul fast float %8892, %8119
  %8905 = fmul fast float %8893, %8120
  %8906 = fmul fast float %8894, %8121
  %8907 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.i32 %8907, 0
  %8909 = icmp eq i32 %8908, 0
  br i1 %8909, label %9277, label %8910, !dx.controlflow.hints !169

; <label>:8910                                    ; preds = %8879
  %8911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8912 = extractvalue %dx.types.CBufRet.f32 %8911, 2
  %8913 = extractvalue %dx.types.CBufRet.f32 %8911, 3
  %8914 = fmul fast float %8912, %109
  %8915 = fmul fast float %8913, %110
  %8916 = fmul fast float %8914, 2.000000e+00
  %8917 = fmul fast float %8915, 2.000000e+00
  %8918 = fsub fast float 1.000000e+00, %8916
  %8919 = fsub fast float 1.000000e+00, %8917
  %8920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.f32 %8920, 0
  %8922 = extractvalue %dx.types.CBufRet.f32 %8920, 1
  %8923 = extractvalue %dx.types.CBufRet.f32 %8920, 2
  %8924 = fmul fast float %8918, %8921
  %8925 = fmul fast float %8918, %8922
  %8926 = fmul fast float %8918, %8923
  %8927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8928 = extractvalue %dx.types.CBufRet.f32 %8927, 0
  %8929 = extractvalue %dx.types.CBufRet.f32 %8927, 1
  %8930 = extractvalue %dx.types.CBufRet.f32 %8927, 2
  %8931 = fmul fast float %8919, %8928
  %8932 = fmul fast float %8919, %8929
  %8933 = fmul fast float %8919, %8930
  %8934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8935 = extractvalue %dx.types.CBufRet.f32 %8934, 0
  %8936 = extractvalue %dx.types.CBufRet.f32 %8934, 1
  %8937 = extractvalue %dx.types.CBufRet.f32 %8934, 2
  %8938 = fadd fast float %8931, %8935
  %8939 = fadd fast float %8938, %8924
  %8940 = fadd fast float %8932, %8936
  %8941 = fadd fast float %8940, %8925
  %8942 = fadd fast float %8933, %8937
  %8943 = fadd fast float %8942, %8926
  %8944 = fmul fast float %8939, %8115
  %8945 = fmul fast float %8941, %8115
  %8946 = fmul fast float %8943, %8115
  %8947 = fmul fast float %8944, %8944
  %8948 = fmul fast float %8945, %8945
  %8949 = fadd fast float %8947, %8948
  %8950 = fmul fast float %8946, %8946
  %8951 = fadd fast float %8949, %8950
  %8952 = call float @dx.op.unary.f32(i32 24, float %8951)  ; Sqrt(value)
  %8953 = extractvalue %dx.types.CBufRet.f32 %7842, 0
  %8954 = fsub fast float %8952, %8953
  %8955 = extractvalue %dx.types.CBufRet.f32 %7842, 2
  %8956 = fmul fast float %8954, %8955
  %8957 = call float @dx.op.unary.f32(i32 7, float %8956)  ; Saturate(value)
  %8958 = fadd fast float %8957, -5.000000e-01
  %8959 = fmul fast float %8958, 2.000000e+00
  %8960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %8961 = extractvalue %dx.types.CBufRet.f32 %8960, 2
  %8962 = call float @dx.op.binary.f32(i32 36, float %8961, float %8959)  ; FMin(a,b)
  %8963 = fsub fast float -0.000000e+00, %8961
  %8964 = fcmp fast ogt float %8962, %8963
  br i1 %8964, label %8965, label %9277, !dx.controlflow.hints !170

; <label>:8965                                    ; preds = %8910
  %8966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %8967 = extractvalue %dx.types.CBufRet.f32 %8966, 3
  %8968 = fcmp fast ogt float %8967, 0.000000e+00
  br i1 %8968, label %8969, label %9044, !dx.controlflow.hints !171

; <label>:8969                                    ; preds = %8965
  %8970 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %8971 = extractvalue %dx.types.Dimensions %8970, 0
  %8972 = sitofp i32 %8971 to float
  %8973 = extractvalue %dx.types.Dimensions %8970, 1
  %8974 = sitofp i32 %8973 to float
  %8975 = fmul fast float %8914, %8972
  %8976 = fmul fast float %8915, %8974
  %8977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8978 = extractvalue %dx.types.CBufRet.f32 %8977, 1
  %8979 = fsub fast float -0.000000e+00, %8978
  %8980 = fptoui float %8979 to i32
  %8981 = fptoui float %8975 to i32
  %8982 = fptoui float %8976 to i32
  %8983 = and i32 %8980, 31
  %8984 = lshr i32 %8981, %8983
  %8985 = lshr i32 %8982, %8983
  %8986 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %8980, i32 %8984, i32 %8985, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8987 = extractvalue %dx.types.ResRet.f32 %8986, 0
  %8988 = fcmp fast olt float %8987, -1.000000e+00
  %8989 = fcmp fast ogt float %8987, -1.000000e+00
  %8990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8991 = extractvalue %dx.types.CBufRet.f32 %8990, 1
  %8992 = select i1 %8989, float %8991, float 1.000000e+00
  %8993 = fadd fast float %8987, 1.000000e+00
  %8994 = fmul fast float %8992, %8993
  %8995 = call float @dx.op.unary.f32(i32 6, float %8994)  ; FAbs(value)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8990, 3
  %8997 = fcmp fast oge float %8995, %8996
  %8998 = select i1 %8997, float 0x4197782600000000, float %8995
  %8999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9000 = extractvalue %dx.types.CBufRet.f32 %8999, 0
  %9001 = extractvalue %dx.types.CBufRet.f32 %8999, 1
  %9002 = extractvalue %dx.types.CBufRet.f32 %8999, 2
  %9003 = select i1 %8988, float %9000, float %8921
  %9004 = select i1 %8988, float %9001, float %8922
  %9005 = select i1 %8988, float %9002, float %8923
  %9006 = fmul fast float %9003, %8918
  %9007 = fmul fast float %9004, %8918
  %9008 = fmul fast float %9005, %8918
  %9009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9010 = extractvalue %dx.types.CBufRet.f32 %9009, 0
  %9011 = extractvalue %dx.types.CBufRet.f32 %9009, 1
  %9012 = extractvalue %dx.types.CBufRet.f32 %9009, 2
  %9013 = select i1 %8988, float %9010, float %8928
  %9014 = select i1 %8988, float %9011, float %8929
  %9015 = select i1 %8988, float %9012, float %8930
  %9016 = fmul fast float %9013, %8919
  %9017 = fmul fast float %9014, %8919
  %9018 = fmul fast float %9015, %8919
  %9019 = fadd fast float %9016, %9006
  %9020 = fadd fast float %9017, %9007
  %9021 = fadd fast float %9018, %9008
  %9022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9023 = extractvalue %dx.types.CBufRet.f32 %9022, 0
  %9024 = extractvalue %dx.types.CBufRet.f32 %9022, 1
  %9025 = extractvalue %dx.types.CBufRet.f32 %9022, 2
  %9026 = select i1 %8988, float %9023, float %8935
  %9027 = select i1 %8988, float %9024, float %8936
  %9028 = select i1 %8988, float %9025, float %8937
  %9029 = fadd fast float %9019, %9026
  %9030 = fadd fast float %9020, %9027
  %9031 = fadd fast float %9021, %9028
  %9032 = fmul fast float %9029, %8998
  %9033 = fmul fast float %9030, %8998
  %9034 = fmul fast float %9031, %8998
  %9035 = fmul fast float %9032, %9032
  %9036 = fmul fast float %9033, %9033
  %9037 = fadd fast float %9035, %9036
  %9038 = fmul fast float %9034, %9034
  %9039 = fadd fast float %9037, %9038
  %9040 = call float @dx.op.unary.f32(i32 24, float %9039)  ; Sqrt(value)
  %9041 = fsub fast float %9040, %8953
  %9042 = fmul fast float %9041, %8955
  %9043 = call float @dx.op.unary.f32(i32 7, float %9042)  ; Saturate(value)
  br label %9044

; <label>:9044                                    ; preds = %8969, %8965
  %9045 = phi float [ %9043, %8969 ], [ 1.000000e+00, %8965 ]
  %9046 = fmul fast float %8962, 5.000000e-01
  %9047 = fadd fast float %9046, 5.000000e-01
  %9048 = call float @dx.op.unary.f32(i32 22, float %9047)  ; Frc(value)
  %9049 = call float @dx.op.unary.f32(i32 27, float %9048)  ; Round_ni(value)
  %9050 = call float @dx.op.unary.f32(i32 22, float %9048)  ; Frc(value)
  %9051 = fmul fast float %9050, 2.000000e+00
  %9052 = fadd fast float %9051, -1.000000e+00
  %9053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %8914, float %8915, float %9049, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9054 = extractvalue %dx.types.ResRet.f32 %9053, 0
  %9055 = extractvalue %dx.types.ResRet.f32 %9053, 1
  %9056 = extractvalue %dx.types.ResRet.f32 %9053, 2
  %9057 = extractvalue %dx.types.ResRet.f32 %9053, 3
  %9058 = fadd fast float %9054, -5.000000e-01
  %9059 = fadd fast float %9056, -5.000000e-01
  %9060 = fmul fast float %9058, 0xBFD5555560000000
  %9061 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9059, float %9060)  ; FMad(a,b,c)
  %9062 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9055, float 0.000000e+00)  ; FMad(a,b,c)
  %9063 = fadd fast float %9062, %9057
  %9064 = fmul fast float %9058, -7.500000e-01
  %9065 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9059, float %9064)  ; FMad(a,b,c)
  %9066 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9055, float 0.000000e+00)  ; FMad(a,b,c)
  %9067 = fadd fast float %9066, %9057
  %9068 = call float @dx.op.binary.f32(i32 35, float %9061, float -1.000000e+00)  ; FMax(a,b)
  %9069 = call float @dx.op.binary.f32(i32 35, float %9063, float -1.000000e+00)  ; FMax(a,b)
  %9070 = call float @dx.op.binary.f32(i32 35, float %9065, float -1.000000e+00)  ; FMax(a,b)
  %9071 = call float @dx.op.binary.f32(i32 35, float %9067, float -1.000000e+00)  ; FMax(a,b)
  %9072 = call float @dx.op.binary.f32(i32 36, float %9068, float 1.000000e+00)  ; FMin(a,b)
  %9073 = call float @dx.op.binary.f32(i32 36, float %9069, float 1.000000e+00)  ; FMin(a,b)
  %9074 = call float @dx.op.binary.f32(i32 36, float %9070, float 1.000000e+00)  ; FMin(a,b)
  %9075 = call float @dx.op.binary.f32(i32 36, float %9071, float 1.000000e+00)  ; FMin(a,b)
  %9076 = fcmp fast olt float %9072, 0x3FEFFF8020000000
  br i1 %9076, label %9077, label %9192, !dx.controlflow.hints !172

; <label>:9077                                    ; preds = %9044
  %9078 = extractvalue %dx.types.CBufRet.f32 %8960, 3
  %9079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9080 = extractvalue %dx.types.CBufRet.f32 %9079, 0
  %9081 = extractvalue %dx.types.CBufRet.f32 %9079, 1
  %9082 = extractvalue %dx.types.CBufRet.f32 %9079, 2
  %9083 = extractvalue %dx.types.CBufRet.f32 %9079, 3
  %9084 = fsub fast float %9080, %9072
  %9085 = fsub fast float %9081, %9073
  %9086 = fsub fast float %9082, %9074
  %9087 = fsub fast float %9083, %9075
  %9088 = fmul fast float %9084, %9078
  %9089 = fmul fast float %9085, %9078
  %9090 = fmul fast float %9086, %9078
  %9091 = fmul fast float %9087, %9078
  %9092 = fadd fast float %9088, %9072
  %9093 = fadd fast float %9089, %9073
  %9094 = fsub fast float -0.000000e+00, %9093
  %9095 = fadd fast float %9090, %9074
  %9096 = fadd fast float %9091, %9075
  %9097 = fmul fast float %9092, %9092
  %9098 = fsub fast float %9093, %9097
  %9099 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9098)  ; FMax(a,b)
  %9100 = fdiv fast float 1.000000e+00, %9099
  %9101 = fmul fast float %9093, %9092
  %9102 = fsub fast float %9095, %9101
  %9103 = fsub fast float %9052, %9092
  %9104 = fmul fast float %9052, %9052
  %9105 = fsub fast float %9104, %9093
  %9106 = fmul fast float %9103, %9100
  %9107 = fmul fast float %9106, %9102
  %9108 = fsub fast float %9105, %9107
  %9109 = fmul fast float %9093, %9093
  %9110 = fsub fast float %9096, %9109
  %9111 = fmul fast float %9102, %9102
  %9112 = fmul fast float %9111, %9100
  %9113 = fsub fast float %9110, %9112
  %9114 = fdiv fast float %9108, %9113
  %9115 = fmul fast float %9102, %9114
  %9116 = fsub fast float %9103, %9115
  %9117 = fmul fast float %9116, %9100
  %9118 = fmul fast float %9117, %9092
  %9119 = fsub fast float 1.000000e+00, %9118
  %9120 = fmul fast float %9093, %9114
  %9121 = fsub fast float %9119, %9120
  %9122 = fmul fast float %9117, %9117
  %9123 = fmul fast float %9114, 4.000000e+00
  %9124 = fmul fast float %9123, %9121
  %9125 = fsub fast float %9122, %9124
  %9126 = call float @dx.op.unary.f32(i32 24, float %9125)  ; Sqrt(value)
  %9127 = fcmp fast oge float %9117, 0.000000e+00
  %9128 = fsub fast float -0.000000e+00, %9126
  %9129 = select i1 %9127, float %9128, float %9126
  %9130 = fsub fast float %9129, %9117
  %9131 = fdiv fast float %9130, %9114
  %9132 = fdiv fast float %9121, %9130
  %9133 = fmul fast float %9131, 5.000000e-01
  %9134 = fmul fast float %9132, 2.000000e+00
  %9135 = select i1 %9127, float %9133, float %9134
  %9136 = select i1 %9127, float %9134, float %9133
  %9137 = call float @dx.op.binary.f32(i32 35, float %9135, float %9136)  ; FMax(a,b)
  %9138 = call float @dx.op.binary.f32(i32 36, float %9135, float %9136)  ; FMin(a,b)
  %9139 = fcmp fast ogt float %9052, %9138
  br i1 %9139, label %9140, label %9150

; <label>:9140                                    ; preds = %9077
  %9141 = fsub fast float %9052, %9138
  %9142 = fsub fast float %9137, %9138
  %9143 = fmul fast float %9141, %9142
  %9144 = fmul fast float %9137, %9052
  %9145 = fadd fast float %9137, %9052
  %9146 = fmul fast float %9145, %9092
  %9147 = fadd fast float %9144, %9093
  %9148 = fsub fast float %9147, %9146
  %9149 = fdiv fast float %9148, %9143
  br label %9150

; <label>:9150                                    ; preds = %9140, %9077
  %9151 = phi float [ %9149, %9140 ], [ 0.000000e+00, %9077 ]
  %9152 = fcmp fast ogt float %9052, %9137
  %9153 = fsub fast float %9052, %9137
  br i1 %9152, label %9154, label %9164

; <label>:9154                                    ; preds = %9150
  %9155 = fsub fast float %9137, %9138
  %9156 = fmul fast float %9155, %9153
  %9157 = fmul fast float %9138, %9052
  %9158 = fadd fast float %9138, %9052
  %9159 = fmul fast float %9158, %9092
  %9160 = fsub fast float %9094, %9157
  %9161 = fadd fast float %9160, %9159
  %9162 = fdiv fast float %9161, %9156
  %9163 = fadd fast float %9162, %9151
  br label %9164

; <label>:9164                                    ; preds = %9154, %9150
  %9165 = phi float [ %9163, %9154 ], [ %9151, %9150 ]
  %9166 = fsub fast float %9052, %9138
  %9167 = fmul fast float %9166, %9153
  %9168 = fmul fast float %9138, %9137
  %9169 = fadd fast float %9138, %9137
  %9170 = fmul fast float %9169, %9092
  %9171 = fadd fast float %9168, %9093
  %9172 = fsub fast float %9171, %9170
  %9173 = fdiv fast float %9172, %9167
  %9174 = call float @dx.op.unary.f32(i32 7, float %9165)  ; Saturate(value)
  %9175 = fcmp fast oeq float %7843, 0.000000e+00
  %9176 = extractvalue %dx.types.CBufRet.f32 %8960, 0
  %9177 = fcmp fast oeq float %9176, 0.000000e+00
  %9178 = or i1 %9175, %9177
  %9179 = fmul fast float %9176, 2.000000e+00
  %9180 = fadd fast float %8961, %8962
  %9181 = fdiv fast float %9180, %9179
  %9182 = call float @dx.op.unary.f32(i32 7, float %9181)  ; Saturate(value)
  %9183 = fmul fast float %9182, 2.000000e+00
  %9184 = fsub fast float 3.000000e+00, %9183
  %9185 = fmul fast float %9182, %9182
  %9186 = fmul fast float %9185, %9184
  %9187 = select i1 %9178, float 1.000000e+00, float %9186
  %9188 = fmul fast float %9173, %7843
  %9189 = fadd fast float %9174, %9188
  %9190 = call float @dx.op.unary.f32(i32 7, float %9189)  ; Saturate(value)
  %9191 = fmul fast float %9187, %9190
  br label %9192

; <label>:9192                                    ; preds = %9164, %9044
  %9193 = phi float [ %9191, %9164 ], [ 0.000000e+00, %9044 ]
  %9194 = fsub fast float 1.000000e+00, %9193
  %9195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %43, float %8914, float %8915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9196 = extractvalue %dx.types.ResRet.f32 %9195, 0
  %9197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.i32 %9197, 2
  %9199 = icmp eq i32 %9198, 0
  br i1 %9199, label %9205, label %9200

; <label>:9200                                    ; preds = %9192
  %9201 = call float @dx.op.unary.f32(i32 7, float %9193)  ; Saturate(value)
  %9202 = fadd fast float %9196, -1.000000e+00
  %9203 = fmul fast float %9201, %9202
  %9204 = fadd fast float %9203, 1.000000e+00
  br label %9205

; <label>:9205                                    ; preds = %9200, %9192
  %9206 = phi float [ %9204, %9200 ], [ %9194, %9192 ]
  br i1 %8968, label %9207, label %9225

; <label>:9207                                    ; preds = %9205
  %9208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9209 = extractvalue %dx.types.CBufRet.f32 %9208, 1
  %9210 = fsub fast float %9045, %9209
  %9211 = call float @dx.op.unary.f32(i32 7, float %9210)  ; Saturate(value)
  %9212 = fsub fast float %9045, %8967
  %9213 = call float @dx.op.unary.f32(i32 7, float %9212)  ; Saturate(value)
  %9214 = fsub fast float %9211, %9213
  %9215 = fsub fast float %9047, %9213
  %9216 = fdiv fast float %9215, %9214
  %9217 = call float @dx.op.unary.f32(i32 7, float %9216)  ; Saturate(value)
  %9218 = fmul fast float %9217, 2.000000e+00
  %9219 = fsub fast float 3.000000e+00, %9218
  %9220 = fsub fast float %9196, %9206
  %9221 = fmul fast float %9217, %9217
  %9222 = fmul fast float %9221, %9220
  %9223 = fmul fast float %9222, %9219
  %9224 = fadd fast float %9223, %9206
  br label %9225

; <label>:9225                                    ; preds = %9207, %9205
  %9226 = phi float [ %9224, %9207 ], [ %9206, %9205 ]
  %9227 = call float @dx.op.binary.f32(i32 35, float %9196, float %9226)  ; FMax(a,b)
  %9228 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9229 = extractvalue %dx.types.CBufRet.i32 %9228, 2
  %9230 = and i32 %9229, 1
  %9231 = icmp eq i32 %9230, 0
  %9232 = fcmp fast une float %9227, 1.000000e+00
  %9233 = and i1 %9232, %9231
  br i1 %9233, label %9234, label %9253

; <label>:9234                                    ; preds = %9225
  %9235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %8914, float %8915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9236 = extractvalue %dx.types.ResRet.f32 %9235, 0
  %9237 = extractvalue %dx.types.ResRet.f32 %9235, 1
  %9238 = extractvalue %dx.types.ResRet.f32 %9235, 2
  %9239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9240 = extractvalue %dx.types.CBufRet.f32 %9239, 1
  %9241 = fmul fast float %9240, %9236
  %9242 = fmul fast float %9240, %9237
  %9243 = fmul fast float %9240, %9238
  %9244 = fcmp fast ogt float %9196, 0x3FEFFF2E40000000
  %9245 = fsub fast float 1.000000e+00, %9227
  %9246 = fsub fast float 1.000000e+00, %9196
  %9247 = fdiv fast float %9245, %9246
  %9248 = call float @dx.op.unary.f32(i32 7, float %9247)  ; Saturate(value)
  %9249 = select i1 %9244, float 0.000000e+00, float %9248
  %9250 = fmul fast float %9241, %9249
  %9251 = fmul fast float %9242, %9249
  %9252 = fmul fast float %9243, %9249
  br label %9253

; <label>:9253                                    ; preds = %9234, %9225
  %9254 = phi float [ 0.000000e+00, %9225 ], [ %9250, %9234 ]
  %9255 = phi float [ 0.000000e+00, %9225 ], [ %9251, %9234 ]
  %9256 = phi float [ 0.000000e+00, %9225 ], [ %9252, %9234 ]
  %9257 = fmul fast float %9254, %7839
  %9258 = fmul fast float %9255, %7840
  %9259 = fmul fast float %9256, %7841
  %9260 = fmul fast float %9227, %8889
  %9261 = call float @dx.op.dot3.f32(i32 55, float %9227, float %9227, float %9227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9262 = call float @dx.op.dot3.f32(i32 55, float %9257, float %9258, float %9259, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9263 = select i1 %292, float %9261, float %9227
  %9264 = select i1 %292, float 1.000000e+00, float %9227
  %9265 = select i1 %292, float %9262, float %9257
  %9266 = select i1 %292, float 0.000000e+00, float %9258
  %9267 = select i1 %292, float 0.000000e+00, float %9259
  %9268 = fmul fast float %9263, %8901
  %9269 = fmul fast float %9263, %8902
  %9270 = fmul fast float %9264, %8903
  %9271 = fadd fast float %9268, %9265
  %9272 = fadd fast float %9269, %9266
  %9273 = fadd fast float %9267, %9270
  %9274 = fmul fast float %9263, %8904
  %9275 = fmul fast float %9263, %8905
  %9276 = fmul fast float %9264, %8906
  br label %9277

; <label>:9277                                    ; preds = %9253, %8910, %8879, %8111
  %9278 = phi float [ %8116, %8111 ], [ %8901, %8879 ], [ %9271, %9253 ], [ %8901, %8910 ]
  %9279 = phi float [ %8117, %8111 ], [ %8902, %8879 ], [ %9272, %9253 ], [ %8902, %8910 ]
  %9280 = phi float [ %8118, %8111 ], [ %8903, %8879 ], [ %9273, %9253 ], [ %8903, %8910 ]
  %9281 = phi float [ %8119, %8111 ], [ %8904, %8879 ], [ %9274, %9253 ], [ %8904, %8910 ]
  %9282 = phi float [ %8120, %8111 ], [ %8905, %8879 ], [ %9275, %9253 ], [ %8905, %8910 ]
  %9283 = phi float [ %8121, %8111 ], [ %8906, %8879 ], [ %9276, %9253 ], [ %8906, %8910 ]
  %9284 = phi float [ %8122, %8111 ], [ %8889, %8879 ], [ %9260, %9253 ], [ %8889, %8910 ]
  %9285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9286 = extractvalue %dx.types.CBufRet.f32 %9285, 2
  %9287 = extractvalue %dx.types.CBufRet.f32 %9285, 3
  %9288 = fmul fast float %9286, %109
  %9289 = fmul fast float %9287, %110
  %9290 = call float @dx.op.unary.f32(i32 7, float %9288)  ; Saturate(value)
  %9291 = call float @dx.op.unary.f32(i32 7, float %9289)  ; Saturate(value)
  %9292 = select i1 %7853, i32 2, i32 0
  %9293 = or i32 %9292, 1
  %9294 = uitofp i32 %9293 to float
  %9295 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9290, float %9291, float %9294, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9296 = extractvalue %dx.types.ResRet.f32 %9295, 0
  %9297 = extractvalue %dx.types.ResRet.f32 %9295, 1
  %9298 = extractvalue %dx.types.ResRet.f32 %9295, 2
  %9299 = extractvalue %dx.types.ResRet.f32 %9295, 3
  %9300 = add nuw nsw i32 %9292, 2
  %9301 = uitofp i32 %9300 to float
  %9302 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %43, float %9290, float %9291, float %9301, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9303 = extractvalue %dx.types.ResRet.f32 %9302, 0
  %9304 = extractvalue %dx.types.ResRet.f32 %9302, 1
  %9305 = extractvalue %dx.types.ResRet.f32 %9302, 2
  %9306 = extractvalue %dx.types.ResRet.f32 %9302, 3
  %9307 = call float @dx.op.binary.f32(i32 35, float %9297, float %9298)  ; FMax(a,b)
  %9308 = call float @dx.op.binary.f32(i32 35, float %9296, float %9307)  ; FMax(a,b)
  %9309 = call float @dx.op.binary.f32(i32 35, float %9308, float %9299)  ; FMax(a,b)
  %9310 = call float @dx.op.binary.f32(i32 36, float %9304, float %9305)  ; FMin(a,b)
  %9311 = call float @dx.op.binary.f32(i32 36, float %9303, float %9310)  ; FMin(a,b)
  %9312 = call float @dx.op.binary.f32(i32 36, float %9311, float %9306)  ; FMin(a,b)
  %9313 = fmul fast float %9309, 2.550000e+02
  %9314 = fadd fast float %9313, 0x3F70101020000000
  %9315 = fptoui float %9314 to i32
  %9316 = fmul fast float %9312, 2.550000e+02
  %9317 = fadd fast float %9316, 0x3F70101020000000
  %9318 = fptoui float %9317 to i32
  %9319 = icmp ult i32 %9315, %9318
  br i1 %9319, label %9320, label %9489

; <label>:9320                                    ; preds = %9277
  %9321 = fcmp fast ogt float %95, 9.843750e-01
  %9322 = fadd fast float %8115, -4.000000e+00
  %9323 = select i1 %9321, float -4.000000e+00, float %9322
  %9324 = call float @dx.op.binary.f32(i32 35, float %9323, float 0.000000e+00)  ; FMax(a,b)
  %9325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9326 = extractvalue %dx.types.CBufRet.f32 %9325, 0
  %9327 = fadd fast float %9326, %9324
  %9328 = extractvalue %dx.types.CBufRet.f32 %9325, 2
  %9329 = fmul fast float %9327, %9328
  %9330 = call float @dx.op.unary.f32(i32 23, float %9329)  ; Log(value)
  %9331 = extractvalue %dx.types.CBufRet.f32 %9325, 3
  %9332 = fmul fast float %9331, %9330
  %9333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9334 = extractvalue %dx.types.CBufRet.f32 %9333, 2
  %9335 = fmul fast float %9332, %9334
  %9336 = call float @dx.op.unary.f32(i32 7, float %9335)  ; Saturate(value)
  %9337 = uitofp i32 %9315 to float
  %9338 = uitofp i32 %9318 to float
  %9339 = fadd fast float %9337, 5.000000e-01
  %9340 = fadd fast float %9338, 5.000000e-01
  %9341 = fmul fast float %9334, %9339
  %9342 = fmul fast float %9334, %9340
  %9343 = fadd fast float %9341, 0x3F0FFB4800000000
  %9344 = fadd fast float %9342, 0xBF0FFB4800000000
  %9345 = call float @dx.op.binary.f32(i32 35, float %9336, float %9343)  ; FMax(a,b)
  %9346 = call float @dx.op.binary.f32(i32 36, float %9345, float %9344)  ; FMin(a,b)
  %9347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9348 = extractvalue %dx.types.CBufRet.f32 %9347, 1
  %9349 = extractvalue %dx.types.CBufRet.f32 %9347, 2
  %9350 = extractvalue %dx.types.CBufRet.f32 %9347, 0
  %9351 = select i1 %7853, float %9350, float 0.000000e+00
  %9352 = fmul fast float %9348, %9346
  %9353 = fadd fast float %9351, %9352
  %9354 = fadd fast float %9351, %9349
  %9355 = fsub fast float %9348, %9349
  %9356 = fadd fast float %9355, %9351
  %9357 = call float @dx.op.binary.f32(i32 35, float %9353, float %9354)  ; FMax(a,b)
  %9358 = call float @dx.op.binary.f32(i32 36, float %9357, float %9356)  ; FMin(a,b)
  %9359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %41, float %9290, float %9291, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9360 = extractvalue %dx.types.ResRet.f32 %9359, 0
  %9361 = extractvalue %dx.types.ResRet.f32 %9359, 1
  %9362 = extractvalue %dx.types.ResRet.f32 %9359, 2
  %9363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9364 = extractvalue %dx.types.CBufRet.i32 %9363, 0
  %9365 = extractvalue %dx.types.CBufRet.i32 %9363, 1
  %9366 = uitofp i32 %9364 to float
  %9367 = uitofp i32 %9365 to float
  %9368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9369 = extractvalue %dx.types.CBufRet.f32 %9368, 0
  %9370 = extractvalue %dx.types.CBufRet.f32 %9368, 1
  %9371 = fmul fast float %9366, %9290
  %9372 = fmul fast float %9367, %9291
  %9373 = fadd fast float %9371, -5.000000e-01
  %9374 = fadd fast float %9372, -5.000000e-01
  %9375 = call float @dx.op.unary.f32(i32 22, float %9373)  ; Frc(value)
  %9376 = call float @dx.op.unary.f32(i32 22, float %9374)  ; Frc(value)
  %9377 = fmul fast float %9375, %9375
  %9378 = fmul fast float %9377, %9375
  %9379 = fsub fast float 3.000000e+00, %9375
  %9380 = fmul fast float %9377, %9379
  %9381 = fmul fast float %9375, 3.000000e+00
  %9382 = fmul fast float %9378, 3.000000e+00
  %9383 = fmul fast float %9377, 6.000000e+00
  %9384 = fsub fast float %9382, %9383
  %9385 = fadd fast float %9384, 4.000000e+00
  %9386 = fmul fast float %9385, 0x3FC5555560000000
  %9387 = fmul fast float %9378, -3.000000e+00
  %9388 = fadd fast float %9377, %9375
  %9389 = fmul fast float %9388, 3.000000e+00
  %9390 = fadd fast float %9387, 1.000000e+00
  %9391 = fadd fast float %9390, %9389
  %9392 = fmul fast float %9378, 0x3FC5555560000000
  %9393 = fmul fast float %9376, %9376
  %9394 = fmul fast float %9393, %9376
  %9395 = fsub fast float 3.000000e+00, %9376
  %9396 = fmul fast float %9393, %9395
  %9397 = fmul fast float %9376, 3.000000e+00
  %9398 = fmul fast float %9394, 3.000000e+00
  %9399 = fmul fast float %9393, 6.000000e+00
  %9400 = fsub fast float %9398, %9399
  %9401 = fadd fast float %9400, 4.000000e+00
  %9402 = fmul fast float %9401, 0x3FC5555560000000
  %9403 = fmul fast float %9394, -3.000000e+00
  %9404 = fadd fast float %9393, %9376
  %9405 = fmul fast float %9404, 3.000000e+00
  %9406 = fadd fast float %9403, 1.000000e+00
  %9407 = fadd fast float %9406, %9405
  %9408 = fmul fast float %9394, 0x3FC5555560000000
  %9409 = fadd fast float %9375, 1.000000e+00
  %9410 = fsub fast float 1.000000e+00, %9381
  %9411 = fadd fast float %9410, %9380
  %9412 = fadd fast float %9411, %9385
  %9413 = fmul fast float %9412, 0x3FC5555560000000
  %9414 = fdiv fast float %9386, %9413
  %9415 = fsub fast float %9409, %9414
  %9416 = fsub fast float 1.000000e+00, %9375
  %9417 = fadd fast float %9391, %9378
  %9418 = fmul fast float %9417, 0x3FC5555560000000
  %9419 = fdiv fast float %9392, %9418
  %9420 = fadd fast float %9416, %9419
  %9421 = fadd fast float %9376, 1.000000e+00
  %9422 = fsub fast float 1.000000e+00, %9397
  %9423 = fadd fast float %9422, %9396
  %9424 = fadd fast float %9423, %9401
  %9425 = fmul fast float %9424, 0x3FC5555560000000
  %9426 = fdiv fast float %9402, %9425
  %9427 = fsub fast float %9421, %9426
  %9428 = fsub fast float 1.000000e+00, %9376
  %9429 = fadd fast float %9407, %9394
  %9430 = fmul fast float %9429, 0x3FC5555560000000
  %9431 = fdiv fast float %9408, %9430
  %9432 = fadd fast float %9431, %9428
  %9433 = fmul fast float %9415, %9369
  %9434 = fsub fast float %9290, %9433
  %9435 = fmul fast float %9420, %9369
  %9436 = fadd fast float %9435, %9290
  %9437 = fmul fast float %9432, %9370
  %9438 = fadd fast float %9437, %9291
  %9439 = fmul fast float %9427, %9370
  %9440 = fsub fast float %9291, %9439
  %9441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9434, float %9440, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9442 = extractvalue %dx.types.ResRet.f32 %9441, 0
  %9443 = extractvalue %dx.types.ResRet.f32 %9441, 1
  %9444 = extractvalue %dx.types.ResRet.f32 %9441, 2
  %9445 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9436, float %9440, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9446 = extractvalue %dx.types.ResRet.f32 %9445, 0
  %9447 = extractvalue %dx.types.ResRet.f32 %9445, 1
  %9448 = extractvalue %dx.types.ResRet.f32 %9445, 2
  %9449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9434, float %9438, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9450 = extractvalue %dx.types.ResRet.f32 %9449, 0
  %9451 = extractvalue %dx.types.ResRet.f32 %9449, 1
  %9452 = extractvalue %dx.types.ResRet.f32 %9449, 2
  %9453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %41, float %9436, float %9438, float %9358, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9454 = extractvalue %dx.types.ResRet.f32 %9453, 0
  %9455 = extractvalue %dx.types.ResRet.f32 %9453, 1
  %9456 = extractvalue %dx.types.ResRet.f32 %9453, 2
  %9457 = fsub fast float %9450, %9442
  %9458 = fsub fast float %9451, %9443
  %9459 = fsub fast float %9452, %9444
  %9460 = fmul fast float %9457, %9430
  %9461 = fmul fast float %9458, %9430
  %9462 = fmul fast float %9459, %9430
  %9463 = fadd fast float %9460, %9442
  %9464 = fadd fast float %9461, %9443
  %9465 = fadd fast float %9462, %9444
  %9466 = fsub fast float %9454, %9446
  %9467 = fsub fast float %9455, %9447
  %9468 = fsub fast float %9456, %9448
  %9469 = fmul fast float %9466, %9430
  %9470 = fmul fast float %9467, %9430
  %9471 = fmul fast float %9468, %9430
  %9472 = fsub fast float %9446, %9463
  %9473 = fadd fast float %9472, %9469
  %9474 = fsub fast float %9447, %9464
  %9475 = fadd fast float %9474, %9470
  %9476 = fsub fast float %9448, %9465
  %9477 = fadd fast float %9476, %9471
  %9478 = fmul fast float %9473, %9418
  %9479 = fmul fast float %9475, %9418
  %9480 = fmul fast float %9477, %9418
  %9481 = fadd fast float %9478, %9463
  %9482 = fadd fast float %9479, %9464
  %9483 = fadd fast float %9480, %9465
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 1
  %9486 = fmul fast float %9481, %9485
  %9487 = fmul fast float %9482, %9485
  %9488 = fmul fast float %9483, %9485
  br label %9489

; <label>:9489                                    ; preds = %9320, %9277
  %9490 = phi float [ %9360, %9320 ], [ 1.000000e+00, %9277 ]
  %9491 = phi float [ %9361, %9320 ], [ 1.000000e+00, %9277 ]
  %9492 = phi float [ %9362, %9320 ], [ 1.000000e+00, %9277 ]
  %9493 = phi float [ %9486, %9320 ], [ 0.000000e+00, %9277 ]
  %9494 = phi float [ %9487, %9320 ], [ 0.000000e+00, %9277 ]
  %9495 = phi float [ %9488, %9320 ], [ 0.000000e+00, %9277 ]
  %9496 = fmul fast float %9493, %7839
  %9497 = fmul fast float %9494, %7840
  %9498 = fmul fast float %9495, %7841
  %9499 = fmul fast float %9490, %9284
  %9500 = call float @dx.op.dot3.f32(i32 55, float %9490, float %9491, float %9492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9501 = call float @dx.op.dot3.f32(i32 55, float %9496, float %9497, float %9498, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9502 = select i1 %292, float %9500, float %9490
  %9503 = select i1 %292, float %9500, float %9491
  %9504 = select i1 %292, float 1.000000e+00, float %9492
  %9505 = select i1 %292, float %9501, float %9496
  %9506 = select i1 %292, float 0.000000e+00, float %9497
  %9507 = select i1 %292, float 0.000000e+00, float %9498
  %9508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %47, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.i32 %9508, 3
  %9510 = and i32 %9509, 3
  %9511 = icmp ne i32 %9510, 0
  %9512 = and i32 %9509, 4
  %9513 = icmp ne i32 %9512, 0
  %9514 = and i1 %9511, %9513
  %9515 = and i1 %292, %9514
  br i1 %9515, label %9516, label %9522

; <label>:9516                                    ; preds = %9489
  %9517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9518 = extractvalue %dx.types.CBufRet.f32 %9517, 1
  %9519 = fadd fast float %9499, -1.000000e+00
  %9520 = fmul fast float %9518, %9519
  %9521 = fadd fast float %9520, 1.000000e+00
  br label %9522

; <label>:9522                                    ; preds = %9516, %9489
  %9523 = phi float [ %9521, %9516 ], [ %9499, %9489 ]
  %9524 = fadd fast float %9281, %9278
  %9525 = fmul fast float %9502, %9524
  %9526 = fadd fast float %9525, %9505
  %9527 = fadd fast float %9282, %9279
  %9528 = fmul fast float %9503, %9527
  %9529 = fadd fast float %9528, %9506
  %9530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9531 = extractvalue %dx.types.CBufRet.f32 %9530, 0
  br i1 %292, label %9532, label %9547

; <label>:9532                                    ; preds = %9522
  %9533 = fadd fast float %9526, %9529
  %9534 = fmul fast float %9531, %9533
  %9535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9536 = extractvalue %dx.types.CBufRet.f32 %9535, 3
  %9537 = extractvalue %dx.types.CBufRet.f32 %7823, 1
  %9538 = fsub fast float %7828, %7822
  %9539 = fadd fast float %9538, %7829
  %9540 = fsub fast float %9539, %9537
  %9541 = extractvalue %dx.types.CBufRet.f32 %7823, 2
  %9542 = fmul fast float %9540, %9541
  %9543 = call float @dx.op.unary.f32(i32 7, float %9542)  ; Saturate(value)
  %9544 = fsub fast float %9543, %9536
  %9545 = fmul fast float %9544, %9523
  %9546 = fadd fast float %9545, %9536
  br label %9573

; <label>:9547                                    ; preds = %9522
  %9548 = fadd fast float %9283, %9280
  %9549 = fmul fast float %9504, %9548
  %9550 = fadd fast float %9549, %9507
  %9551 = fmul fast float %9531, %9526
  %9552 = fmul fast float %9531, %9529
  %9553 = fmul fast float %9531, %9550
  %9554 = call float @dx.op.binary.f32(i32 35, float %9552, float %9553)  ; FMax(a,b)
  %9555 = call float @dx.op.binary.f32(i32 35, float %9551, float %9554)  ; FMax(a,b)
  %9556 = call float @dx.op.binary.f32(i32 35, float %7840, float %7841)  ; FMax(a,b)
  %9557 = call float @dx.op.binary.f32(i32 35, float %7839, float %9556)  ; FMax(a,b)
  %9558 = call float @dx.op.binary.f32(i32 35, float %9555, float %9557)  ; FMax(a,b)
  %9559 = fcmp fast ugt float %9558, 0x3F10000000000000
  br i1 %9559, label %9561, label %9560

; <label>:9560                                    ; preds = %9547
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %9561

; <label>:9561                                    ; preds = %9560, %9547
  %9562 = add i32 %49, 356
  %9563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %9562, i32 undef)  ; BufferLoad(srv,index,wot)
  %9564 = extractvalue %dx.types.ResRet.i32 %9563, 0
  %9565 = and i32 %9564, 32
  %9566 = icmp eq i32 %9565, 0
  br i1 %9566, label %9573, label %9567

; <label>:9567                                    ; preds = %9561
  %9568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.f32 %9568, 0
  %9570 = fmul fast float %9569, 0x3FE99999A0000000
  %9571 = fadd fast float %9569, %9551
  %9572 = fadd fast float %9570, %9553
  br label %9573

; <label>:9573                                    ; preds = %9567, %9561, %9532
  %9574 = phi float [ 1.000000e+00, %9532 ], [ %7840, %9567 ], [ %7840, %9561 ]
  %9575 = phi float [ 1.000000e+00, %9532 ], [ %7841, %9567 ], [ %7841, %9561 ]
  %9576 = phi float [ %9534, %9532 ], [ %9571, %9567 ], [ %9551, %9561 ]
  %9577 = phi float [ %9546, %9532 ], [ %9552, %9567 ], [ %9552, %9561 ]
  %9578 = phi float [ 1.000000e+00, %9532 ], [ %9572, %9567 ], [ %9553, %9561 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9579 = call float @dx.op.binary.f32(i32 36, float %9576, float 3.225500e+04)  ; FMin(a,b)
  %9580 = call float @dx.op.binary.f32(i32 36, float %9577, float 3.225500e+04)  ; FMin(a,b)
  %9581 = call float @dx.op.binary.f32(i32 36, float %9578, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %9579)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %9580)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %9581)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %9582 = call float @dx.op.binary.f32(i32 36, float %7839, float 3.225500e+04)  ; FMin(a,b)
  %9583 = call float @dx.op.binary.f32(i32 36, float %9574, float 3.225500e+04)  ; FMin(a,b)
  %9584 = call float @dx.op.binary.f32(i32 36, float %9575, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %9582)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %9583)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %9584)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

