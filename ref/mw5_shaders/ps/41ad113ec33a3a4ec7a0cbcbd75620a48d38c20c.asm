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
; shader hash: 062e2ab652a4969e97cddba92847ac05
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
  %443 = add i32 %50, 488
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
  %604 = add i32 %50, 424
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
  %656 = add i32 %50, 408
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
  %680 = add i32 %50, 360
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
  %703 = add i32 %50, 440
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
  %901 = add i32 %50, 376
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
  %985 = add i32 %50, 392
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
  %1043 = add i32 %50, 456
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
  %1084 = add i32 %50, 472
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
  %1148 = phi float [ 0.000000e+00, %485 ], [ %1018, %1127 ]
  %1149 = phi float [ 0.000000e+00, %485 ], [ %1019, %1127 ]
  %1150 = phi float [ 0.000000e+00, %485 ], [ %1020, %1127 ]
  %1151 = phi float [ 0.000000e+00, %485 ], [ %890, %1127 ]
  %1152 = phi float [ 0.000000e+00, %485 ], [ %891, %1127 ]
  %1153 = phi float [ 0.000000e+00, %485 ], [ %892, %1127 ]
  %1154 = phi float [ 0.000000e+00, %485 ], [ %1076, %1127 ]
  %1155 = phi float [ 0.000000e+00, %485 ], [ %1077, %1127 ]
  %1156 = phi float [ 0.000000e+00, %485 ], [ %1078, %1127 ]
  %1157 = phi float [ 0.000000e+00, %485 ], [ %1128, %1127 ]
  %1158 = phi float [ 0.000000e+00, %485 ], [ %1129, %1127 ]
  %1159 = phi float [ 0.000000e+00, %485 ], [ %1130, %1127 ]
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
  %1280 = add i32 %50, 428
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
  %1332 = add i32 %50, 412
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
  %1358 = add i32 %50, 364
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
  %1381 = add i32 %50, 444
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
  %1579 = add i32 %50, 380
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
  %1663 = add i32 %50, 396
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
  %1721 = add i32 %50, 460
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
  %1762 = add i32 %50, 476
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
  %1852 = fmul fast float %1849, %1151
  %1853 = fmul fast float %1850, %1152
  %1854 = fmul fast float %1851, %1153
  %1855 = fmul fast float %1849, %1148
  %1856 = fmul fast float %1850, %1149
  %1857 = fmul fast float %1851, %1150
  br label %1858

; <label>:1858                                    ; preds = %1823, %1805
  %1859 = phi float [ %1855, %1823 ], [ %1148, %1805 ]
  %1860 = phi float [ %1856, %1823 ], [ %1149, %1805 ]
  %1861 = phi float [ %1857, %1823 ], [ %1150, %1805 ]
  %1862 = phi float [ %1852, %1823 ], [ %1151, %1805 ]
  %1863 = phi float [ %1853, %1823 ], [ %1152, %1805 ]
  %1864 = phi float [ %1854, %1823 ], [ %1153, %1805 ]
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
  %1878 = fsub fast float %1568, %1862
  %1879 = fsub fast float %1569, %1863
  %1880 = fsub fast float %1570, %1864
  %1881 = fmul fast float %1872, %1878
  %1882 = fmul fast float %1872, %1879
  %1883 = fmul fast float %1872, %1880
  %1884 = fadd fast float %1881, %1862
  %1885 = fadd fast float %1882, %1863
  %1886 = fadd fast float %1883, %1864
  %1887 = fsub fast float %1554, %1160
  %1888 = fmul fast float %1872, %1887
  %1889 = fadd fast float %1888, %1160
  %1890 = fsub fast float %1696, %1859
  %1891 = fsub fast float %1697, %1860
  %1892 = fsub fast float %1698, %1861
  %1893 = fmul fast float %1877, %1890
  %1894 = fmul fast float %1877, %1891
  %1895 = fmul fast float %1877, %1892
  %1896 = fadd fast float %1893, %1859
  %1897 = fadd fast float %1894, %1860
  %1898 = fadd fast float %1895, %1861
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
  %1914 = fmul fast float %1911, %1862
  %1915 = fmul fast float %1912, %1863
  %1916 = fmul fast float %1913, %1864
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
  %1934 = fmul fast float %1933, %1862
  %1935 = fadd fast float %1934, %1932
  %1936 = fmul fast float %1935, %1862
  %1937 = fmul fast float %1930, 2.000000e+00
  %1938 = fsub fast float 1.000000e+00, %1937
  %1939 = fmul fast float %1938, %1863
  %1940 = fadd fast float %1939, %1937
  %1941 = fmul fast float %1940, %1863
  %1942 = fmul fast float %1931, 2.000000e+00
  %1943 = fsub fast float 1.000000e+00, %1942
  %1944 = fmul fast float %1943, %1864
  %1945 = fadd fast float %1944, %1942
  %1946 = fmul fast float %1945, %1864
  br label %1947

; <label>:1947                                    ; preds = %1919, %1917, %1904, %1874, %1858
  %1948 = phi float [ %1859, %1858 ], [ %1859, %1919 ], [ %1859, %1917 ], [ %1859, %1904 ], [ %1896, %1874 ]
  %1949 = phi float [ %1860, %1858 ], [ %1860, %1919 ], [ %1860, %1917 ], [ %1860, %1904 ], [ %1897, %1874 ]
  %1950 = phi float [ %1861, %1858 ], [ %1861, %1919 ], [ %1861, %1917 ], [ %1861, %1904 ], [ %1898, %1874 ]
  %1951 = phi float [ %1862, %1858 ], [ %1936, %1919 ], [ %1862, %1917 ], [ %1914, %1904 ], [ %1884, %1874 ]
  %1952 = phi float [ %1863, %1858 ], [ %1941, %1919 ], [ %1863, %1917 ], [ %1915, %1904 ], [ %1885, %1874 ]
  %1953 = phi float [ %1864, %1858 ], [ %1946, %1919 ], [ %1864, %1917 ], [ %1916, %1904 ], [ %1886, %1874 ]
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
  %2003 = fsub fast float %1806, %1157
  %2004 = fsub fast float %1807, %1158
  %2005 = fsub fast float %1808, %1159
  %2006 = fmul fast float %1976, %2003
  %2007 = fmul fast float %1976, %2004
  %2008 = fmul fast float %1976, %2005
  %2009 = fadd fast float %2006, %1157
  %2010 = fadd fast float %2007, %1158
  %2011 = fadd fast float %2008, %1159
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
  %2057 = fadd fast float %2054, %1157
  %2058 = fadd fast float %2055, %1158
  %2059 = fadd fast float %2056, %1159
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
  %2085 = fadd fast float %2082, %1157
  %2086 = fadd fast float %2083, %1158
  %2087 = fadd fast float %2084, %1159
  br label %2088

; <label>:2088                                    ; preds = %2062, %2060, %2014, %1978, %1947, %1347, %1166, %1145
  %2089 = phi float [ %1146, %1947 ], [ %1146, %1347 ], [ %1146, %1145 ], [ %2065, %2062 ], [ %1146, %2060 ], [ %2017, %2014 ], [ %1983, %1978 ], [ %1146, %1166 ]
  %2090 = phi float [ %1147, %1947 ], [ %1147, %1347 ], [ %1147, %1145 ], [ %2066, %2062 ], [ %1147, %2060 ], [ %2018, %2014 ], [ %1984, %1978 ], [ %1147, %1166 ]
  %2091 = phi float [ %1948, %1947 ], [ %1148, %1347 ], [ %1148, %1145 ], [ %1948, %2062 ], [ %1948, %2060 ], [ %1948, %2014 ], [ %1948, %1978 ], [ %1148, %1166 ]
  %2092 = phi float [ %1949, %1947 ], [ %1149, %1347 ], [ %1149, %1145 ], [ %1949, %2062 ], [ %1949, %2060 ], [ %1949, %2014 ], [ %1949, %1978 ], [ %1149, %1166 ]
  %2093 = phi float [ %1950, %1947 ], [ %1150, %1347 ], [ %1150, %1145 ], [ %1950, %2062 ], [ %1950, %2060 ], [ %1950, %2014 ], [ %1950, %1978 ], [ %1150, %1166 ]
  %2094 = phi float [ %1951, %1947 ], [ %1151, %1347 ], [ %1151, %1145 ], [ %1951, %2062 ], [ %1951, %2060 ], [ %1951, %2014 ], [ %1951, %1978 ], [ %1151, %1166 ]
  %2095 = phi float [ %1952, %1947 ], [ %1152, %1347 ], [ %1152, %1145 ], [ %1952, %2062 ], [ %1952, %2060 ], [ %1952, %2014 ], [ %1952, %1978 ], [ %1152, %1166 ]
  %2096 = phi float [ %1953, %1947 ], [ %1153, %1347 ], [ %1153, %1145 ], [ %1953, %2062 ], [ %1953, %2060 ], [ %1953, %2014 ], [ %1953, %1978 ], [ %1153, %1166 ]
  %2097 = phi float [ %1154, %1947 ], [ %1154, %1347 ], [ %1154, %1145 ], [ %2077, %2062 ], [ %1154, %2060 ], [ %2049, %2014 ], [ %1997, %1978 ], [ %1154, %1166 ]
  %2098 = phi float [ %1155, %1947 ], [ %1155, %1347 ], [ %1155, %1145 ], [ %2078, %2062 ], [ %1155, %2060 ], [ %2050, %2014 ], [ %1998, %1978 ], [ %1155, %1166 ]
  %2099 = phi float [ %1156, %1947 ], [ %1156, %1347 ], [ %1156, %1145 ], [ %2079, %2062 ], [ %1156, %2060 ], [ %2051, %2014 ], [ %1999, %1978 ], [ %1156, %1166 ]
  %2100 = phi float [ %1157, %1947 ], [ %1157, %1347 ], [ %1157, %1145 ], [ %2085, %2062 ], [ %1157, %2060 ], [ %2057, %2014 ], [ %2009, %1978 ], [ %1157, %1166 ]
  %2101 = phi float [ %1158, %1947 ], [ %1158, %1347 ], [ %1158, %1145 ], [ %2086, %2062 ], [ %1158, %2060 ], [ %2058, %2014 ], [ %2010, %1978 ], [ %1158, %1166 ]
  %2102 = phi float [ %1159, %1947 ], [ %1159, %1347 ], [ %1159, %1145 ], [ %2087, %2062 ], [ %1159, %2060 ], [ %2059, %2014 ], [ %2011, %1978 ], [ %1159, %1166 ]
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
  %2222 = add i32 %50, 432
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
  %2274 = add i32 %50, 416
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
  %2300 = add i32 %50, 368
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
  %2323 = add i32 %50, 448
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
  %2521 = add i32 %50, 384
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
  %2605 = add i32 %50, 400
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
  %2663 = add i32 %50, 464
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
  %2704 = add i32 %50, 480
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
  %2794 = fmul fast float %2791, %2094
  %2795 = fmul fast float %2792, %2095
  %2796 = fmul fast float %2793, %2096
  %2797 = fmul fast float %2791, %2091
  %2798 = fmul fast float %2792, %2092
  %2799 = fmul fast float %2793, %2093
  br label %2800

; <label>:2800                                    ; preds = %2765, %2747
  %2801 = phi float [ %2797, %2765 ], [ %2091, %2747 ]
  %2802 = phi float [ %2798, %2765 ], [ %2092, %2747 ]
  %2803 = phi float [ %2799, %2765 ], [ %2093, %2747 ]
  %2804 = phi float [ %2794, %2765 ], [ %2094, %2747 ]
  %2805 = phi float [ %2795, %2765 ], [ %2095, %2747 ]
  %2806 = phi float [ %2796, %2765 ], [ %2096, %2747 ]
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
  %2820 = fsub fast float %2510, %2804
  %2821 = fsub fast float %2511, %2805
  %2822 = fsub fast float %2512, %2806
  %2823 = fmul fast float %2814, %2820
  %2824 = fmul fast float %2814, %2821
  %2825 = fmul fast float %2814, %2822
  %2826 = fadd fast float %2823, %2804
  %2827 = fadd fast float %2824, %2805
  %2828 = fadd fast float %2825, %2806
  %2829 = fsub fast float %2496, %2103
  %2830 = fmul fast float %2814, %2829
  %2831 = fadd fast float %2830, %2103
  %2832 = fsub fast float %2638, %2801
  %2833 = fsub fast float %2639, %2802
  %2834 = fsub fast float %2640, %2803
  %2835 = fmul fast float %2819, %2832
  %2836 = fmul fast float %2819, %2833
  %2837 = fmul fast float %2819, %2834
  %2838 = fadd fast float %2835, %2801
  %2839 = fadd fast float %2836, %2802
  %2840 = fadd fast float %2837, %2803
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
  %2856 = fmul fast float %2853, %2804
  %2857 = fmul fast float %2854, %2805
  %2858 = fmul fast float %2855, %2806
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
  %2876 = fmul fast float %2875, %2804
  %2877 = fadd fast float %2876, %2874
  %2878 = fmul fast float %2877, %2804
  %2879 = fmul fast float %2872, 2.000000e+00
  %2880 = fsub fast float 1.000000e+00, %2879
  %2881 = fmul fast float %2880, %2805
  %2882 = fadd fast float %2881, %2879
  %2883 = fmul fast float %2882, %2805
  %2884 = fmul fast float %2873, 2.000000e+00
  %2885 = fsub fast float 1.000000e+00, %2884
  %2886 = fmul fast float %2885, %2806
  %2887 = fadd fast float %2886, %2884
  %2888 = fmul fast float %2887, %2806
  br label %2889

; <label>:2889                                    ; preds = %2861, %2859, %2846, %2816, %2800
  %2890 = phi float [ %2801, %2800 ], [ %2801, %2861 ], [ %2801, %2859 ], [ %2801, %2846 ], [ %2838, %2816 ]
  %2891 = phi float [ %2802, %2800 ], [ %2802, %2861 ], [ %2802, %2859 ], [ %2802, %2846 ], [ %2839, %2816 ]
  %2892 = phi float [ %2803, %2800 ], [ %2803, %2861 ], [ %2803, %2859 ], [ %2803, %2846 ], [ %2840, %2816 ]
  %2893 = phi float [ %2804, %2800 ], [ %2878, %2861 ], [ %2804, %2859 ], [ %2856, %2846 ], [ %2826, %2816 ]
  %2894 = phi float [ %2805, %2800 ], [ %2883, %2861 ], [ %2805, %2859 ], [ %2857, %2846 ], [ %2827, %2816 ]
  %2895 = phi float [ %2806, %2800 ], [ %2888, %2861 ], [ %2806, %2859 ], [ %2858, %2846 ], [ %2828, %2816 ]
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
  %2945 = fsub fast float %2748, %2100
  %2946 = fsub fast float %2749, %2101
  %2947 = fsub fast float %2750, %2102
  %2948 = fmul fast float %2918, %2945
  %2949 = fmul fast float %2918, %2946
  %2950 = fmul fast float %2918, %2947
  %2951 = fadd fast float %2948, %2100
  %2952 = fadd fast float %2949, %2101
  %2953 = fadd fast float %2950, %2102
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
  %2999 = fadd fast float %2996, %2100
  %3000 = fadd fast float %2997, %2101
  %3001 = fadd fast float %2998, %2102
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
  %3027 = fadd fast float %3024, %2100
  %3028 = fadd fast float %3025, %2101
  %3029 = fadd fast float %3026, %2102
  br label %3030

; <label>:3030                                    ; preds = %3004, %3002, %2956, %2920, %2889, %2289, %2108, %2088
  %3031 = phi float [ %2089, %2889 ], [ %2089, %2289 ], [ %2089, %2088 ], [ %3007, %3004 ], [ %2089, %3002 ], [ %2959, %2956 ], [ %2925, %2920 ], [ %2089, %2108 ]
  %3032 = phi float [ %2090, %2889 ], [ %2090, %2289 ], [ %2090, %2088 ], [ %3008, %3004 ], [ %2090, %3002 ], [ %2960, %2956 ], [ %2926, %2920 ], [ %2090, %2108 ]
  %3033 = phi float [ %2890, %2889 ], [ %2091, %2289 ], [ %2091, %2088 ], [ %2890, %3004 ], [ %2890, %3002 ], [ %2890, %2956 ], [ %2890, %2920 ], [ %2091, %2108 ]
  %3034 = phi float [ %2891, %2889 ], [ %2092, %2289 ], [ %2092, %2088 ], [ %2891, %3004 ], [ %2891, %3002 ], [ %2891, %2956 ], [ %2891, %2920 ], [ %2092, %2108 ]
  %3035 = phi float [ %2892, %2889 ], [ %2093, %2289 ], [ %2093, %2088 ], [ %2892, %3004 ], [ %2892, %3002 ], [ %2892, %2956 ], [ %2892, %2920 ], [ %2093, %2108 ]
  %3036 = phi float [ %2893, %2889 ], [ %2094, %2289 ], [ %2094, %2088 ], [ %2893, %3004 ], [ %2893, %3002 ], [ %2893, %2956 ], [ %2893, %2920 ], [ %2094, %2108 ]
  %3037 = phi float [ %2894, %2889 ], [ %2095, %2289 ], [ %2095, %2088 ], [ %2894, %3004 ], [ %2894, %3002 ], [ %2894, %2956 ], [ %2894, %2920 ], [ %2095, %2108 ]
  %3038 = phi float [ %2895, %2889 ], [ %2096, %2289 ], [ %2096, %2088 ], [ %2895, %3004 ], [ %2895, %3002 ], [ %2895, %2956 ], [ %2895, %2920 ], [ %2096, %2108 ]
  %3039 = phi float [ %2097, %2889 ], [ %2097, %2289 ], [ %2097, %2088 ], [ %3019, %3004 ], [ %2097, %3002 ], [ %2991, %2956 ], [ %2939, %2920 ], [ %2097, %2108 ]
  %3040 = phi float [ %2098, %2889 ], [ %2098, %2289 ], [ %2098, %2088 ], [ %3020, %3004 ], [ %2098, %3002 ], [ %2992, %2956 ], [ %2940, %2920 ], [ %2098, %2108 ]
  %3041 = phi float [ %2099, %2889 ], [ %2099, %2289 ], [ %2099, %2088 ], [ %3021, %3004 ], [ %2099, %3002 ], [ %2993, %2956 ], [ %2941, %2920 ], [ %2099, %2108 ]
  %3042 = phi float [ %2100, %2889 ], [ %2100, %2289 ], [ %2100, %2088 ], [ %3027, %3004 ], [ %2100, %3002 ], [ %2999, %2956 ], [ %2951, %2920 ], [ %2100, %2108 ]
  %3043 = phi float [ %2101, %2889 ], [ %2101, %2289 ], [ %2101, %2088 ], [ %3028, %3004 ], [ %2101, %3002 ], [ %3000, %2956 ], [ %2952, %2920 ], [ %2101, %2108 ]
  %3044 = phi float [ %2102, %2889 ], [ %2102, %2289 ], [ %2102, %2088 ], [ %3029, %3004 ], [ %2102, %3002 ], [ %3001, %2956 ], [ %2953, %2920 ], [ %2102, %2108 ]
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
  %3164 = add i32 %50, 436
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
  %3216 = add i32 %50, 420
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
  %3242 = add i32 %50, 372
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
  %3265 = add i32 %50, 452
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
  %3463 = add i32 %50, 388
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
  %3547 = add i32 %50, 404
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
  %3605 = add i32 %50, 468
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
  %3646 = add i32 %50, 484
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
  %3736 = fmul fast float %3733, %3036
  %3737 = fmul fast float %3734, %3037
  %3738 = fmul fast float %3735, %3038
  %3739 = fmul fast float %3733, %3033
  %3740 = fmul fast float %3734, %3034
  %3741 = fmul fast float %3735, %3035
  br label %3742

; <label>:3742                                    ; preds = %3707, %3689
  %3743 = phi float [ %3739, %3707 ], [ %3033, %3689 ]
  %3744 = phi float [ %3740, %3707 ], [ %3034, %3689 ]
  %3745 = phi float [ %3741, %3707 ], [ %3035, %3689 ]
  %3746 = phi float [ %3736, %3707 ], [ %3036, %3689 ]
  %3747 = phi float [ %3737, %3707 ], [ %3037, %3689 ]
  %3748 = phi float [ %3738, %3707 ], [ %3038, %3689 ]
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
  %3762 = fsub fast float %3452, %3746
  %3763 = fsub fast float %3453, %3747
  %3764 = fsub fast float %3454, %3748
  %3765 = fmul fast float %3756, %3762
  %3766 = fmul fast float %3756, %3763
  %3767 = fmul fast float %3756, %3764
  %3768 = fadd fast float %3765, %3746
  %3769 = fadd fast float %3766, %3747
  %3770 = fadd fast float %3767, %3748
  %3771 = fsub fast float %3438, %3045
  %3772 = fmul fast float %3756, %3771
  %3773 = fadd fast float %3772, %3045
  %3774 = fsub fast float %3580, %3743
  %3775 = fsub fast float %3581, %3744
  %3776 = fsub fast float %3582, %3745
  %3777 = fmul fast float %3761, %3774
  %3778 = fmul fast float %3761, %3775
  %3779 = fmul fast float %3761, %3776
  %3780 = fadd fast float %3777, %3743
  %3781 = fadd fast float %3778, %3744
  %3782 = fadd fast float %3779, %3745
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
  %3798 = fmul fast float %3795, %3746
  %3799 = fmul fast float %3796, %3747
  %3800 = fmul fast float %3797, %3748
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
  %3818 = fmul fast float %3817, %3746
  %3819 = fadd fast float %3818, %3816
  %3820 = fmul fast float %3819, %3746
  %3821 = fmul fast float %3814, 2.000000e+00
  %3822 = fsub fast float 1.000000e+00, %3821
  %3823 = fmul fast float %3822, %3747
  %3824 = fadd fast float %3823, %3821
  %3825 = fmul fast float %3824, %3747
  %3826 = fmul fast float %3815, 2.000000e+00
  %3827 = fsub fast float 1.000000e+00, %3826
  %3828 = fmul fast float %3827, %3748
  %3829 = fadd fast float %3828, %3826
  %3830 = fmul fast float %3829, %3748
  br label %3831

; <label>:3831                                    ; preds = %3803, %3801, %3788, %3758, %3742
  %3832 = phi float [ %3743, %3742 ], [ %3743, %3803 ], [ %3743, %3801 ], [ %3743, %3788 ], [ %3780, %3758 ]
  %3833 = phi float [ %3744, %3742 ], [ %3744, %3803 ], [ %3744, %3801 ], [ %3744, %3788 ], [ %3781, %3758 ]
  %3834 = phi float [ %3745, %3742 ], [ %3745, %3803 ], [ %3745, %3801 ], [ %3745, %3788 ], [ %3782, %3758 ]
  %3835 = phi float [ %3746, %3742 ], [ %3820, %3803 ], [ %3746, %3801 ], [ %3798, %3788 ], [ %3768, %3758 ]
  %3836 = phi float [ %3747, %3742 ], [ %3825, %3803 ], [ %3747, %3801 ], [ %3799, %3788 ], [ %3769, %3758 ]
  %3837 = phi float [ %3748, %3742 ], [ %3830, %3803 ], [ %3748, %3801 ], [ %3800, %3788 ], [ %3770, %3758 ]
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
  %3887 = fsub fast float %3690, %3042
  %3888 = fsub fast float %3691, %3043
  %3889 = fsub fast float %3692, %3044
  %3890 = fmul fast float %3860, %3887
  %3891 = fmul fast float %3860, %3888
  %3892 = fmul fast float %3860, %3889
  %3893 = fadd fast float %3890, %3042
  %3894 = fadd fast float %3891, %3043
  %3895 = fadd fast float %3892, %3044
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
  %3941 = fadd fast float %3938, %3042
  %3942 = fadd fast float %3939, %3043
  %3943 = fadd fast float %3940, %3044
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
  %3969 = fadd fast float %3966, %3042
  %3970 = fadd fast float %3967, %3043
  %3971 = fadd fast float %3968, %3044
  br label %3972

; <label>:3972                                    ; preds = %3946, %3944, %3898, %3862, %3831, %3231, %3050, %3030
  %3973 = phi float [ %3031, %3831 ], [ %3031, %3231 ], [ %3031, %3030 ], [ %3031, %3050 ], [ %3867, %3862 ], [ %3901, %3898 ], [ %3031, %3944 ], [ %3949, %3946 ]
  %3974 = phi float [ %3032, %3831 ], [ %3032, %3231 ], [ %3032, %3030 ], [ %3032, %3050 ], [ %3868, %3862 ], [ %3902, %3898 ], [ %3032, %3944 ], [ %3950, %3946 ]
  %3975 = phi float [ %3832, %3831 ], [ %3033, %3231 ], [ %3033, %3030 ], [ %3033, %3050 ], [ %3832, %3862 ], [ %3832, %3898 ], [ %3832, %3944 ], [ %3832, %3946 ]
  %3976 = phi float [ %3833, %3831 ], [ %3034, %3231 ], [ %3034, %3030 ], [ %3034, %3050 ], [ %3833, %3862 ], [ %3833, %3898 ], [ %3833, %3944 ], [ %3833, %3946 ]
  %3977 = phi float [ %3834, %3831 ], [ %3035, %3231 ], [ %3035, %3030 ], [ %3035, %3050 ], [ %3834, %3862 ], [ %3834, %3898 ], [ %3834, %3944 ], [ %3834, %3946 ]
  %3978 = phi float [ %3835, %3831 ], [ %3036, %3231 ], [ %3036, %3030 ], [ %3036, %3050 ], [ %3835, %3862 ], [ %3835, %3898 ], [ %3835, %3944 ], [ %3835, %3946 ]
  %3979 = phi float [ %3836, %3831 ], [ %3037, %3231 ], [ %3037, %3030 ], [ %3037, %3050 ], [ %3836, %3862 ], [ %3836, %3898 ], [ %3836, %3944 ], [ %3836, %3946 ]
  %3980 = phi float [ %3837, %3831 ], [ %3038, %3231 ], [ %3038, %3030 ], [ %3038, %3050 ], [ %3837, %3862 ], [ %3837, %3898 ], [ %3837, %3944 ], [ %3837, %3946 ]
  %3981 = phi float [ %3039, %3831 ], [ %3039, %3231 ], [ %3039, %3030 ], [ %3039, %3050 ], [ %3881, %3862 ], [ %3933, %3898 ], [ %3039, %3944 ], [ %3961, %3946 ]
  %3982 = phi float [ %3040, %3831 ], [ %3040, %3231 ], [ %3040, %3030 ], [ %3040, %3050 ], [ %3882, %3862 ], [ %3934, %3898 ], [ %3040, %3944 ], [ %3962, %3946 ]
  %3983 = phi float [ %3041, %3831 ], [ %3041, %3231 ], [ %3041, %3030 ], [ %3041, %3050 ], [ %3883, %3862 ], [ %3935, %3898 ], [ %3041, %3944 ], [ %3963, %3946 ]
  %3984 = phi float [ %3042, %3831 ], [ %3042, %3231 ], [ %3042, %3030 ], [ %3042, %3050 ], [ %3893, %3862 ], [ %3941, %3898 ], [ %3042, %3944 ], [ %3969, %3946 ]
  %3985 = phi float [ %3043, %3831 ], [ %3043, %3231 ], [ %3043, %3030 ], [ %3043, %3050 ], [ %3894, %3862 ], [ %3942, %3898 ], [ %3043, %3944 ], [ %3970, %3946 ]
  %3986 = phi float [ %3044, %3831 ], [ %3044, %3231 ], [ %3044, %3030 ], [ %3044, %3050 ], [ %3895, %3862 ], [ %3943, %3898 ], [ %3044, %3944 ], [ %3971, %3946 ]
  %3987 = phi float [ %3838, %3831 ], [ %3045, %3231 ], [ %3045, %3030 ], [ %3045, %3050 ], [ %3838, %3862 ], [ %3838, %3898 ], [ %3838, %3944 ], [ %3838, %3946 ]
  %3988 = phi float [ %3046, %3831 ], [ %3046, %3231 ], [ %3046, %3030 ], [ %3046, %3050 ], [ %3874, %3862 ], [ %3929, %3898 ], [ %3046, %3944 ], [ %3957, %3946 ]
  %3989 = phi float [ %3047, %3831 ], [ %3047, %3231 ], [ %3047, %3030 ], [ %3047, %3050 ], [ %3871, %3862 ], [ %3906, %3898 ], [ %3047, %3944 ], [ %3954, %3946 ]
  %3990 = phi float [ %3048, %3831 ], [ %3048, %3231 ], [ %3048, %3030 ], [ %3048, %3050 ], [ %3886, %3862 ], [ %3937, %3898 ], [ %3048, %3944 ], [ %3965, %3946 ]
  %3991 = phi float [ %3839, %3831 ], [ %3049, %3231 ], [ %3049, %3030 ], [ %3049, %3050 ], [ %3839, %3862 ], [ %3839, %3898 ], [ %3839, %3944 ], [ %3839, %3946 ]
  %3992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3993 = extractvalue %dx.types.CBufRet.f32 %3992, 0
  %3994 = call float @dx.op.dot2.f32(i32 54, float %3973, float %3974, float %3973, float %3974)  ; Dot2(ax,ay,bx,by)
  %3995 = fmul fast float %3994, 0x3FE3333340000000
  %3996 = fsub fast float 1.000000e+00, %3995
  %3997 = call float @dx.op.dot3.f32(i32 55, float %3973, float %3974, float %3996, float %3973, float %3974, float %3996)  ; Dot3(ax,ay,az,bx,by,bz)
  %3998 = call float @dx.op.unary.f32(i32 25, float %3997)  ; Rsqrt(value)
  %3999 = fmul fast float %3998, %3973
  %4000 = fmul fast float %3998, %3974
  %4001 = fmul fast float %3996, %3998
  %4002 = fmul fast float %4001, %116
  %4003 = fmul fast float %4001, %117
  %4004 = fmul fast float %4001, %118
  %4005 = fmul fast float %3999, %80
  %4006 = fmul fast float %3999, %81
  %4007 = fmul fast float %3999, %82
  %4008 = fadd fast float %4002, %4005
  %4009 = fadd fast float %4003, %4006
  %4010 = fadd fast float %4004, %4007
  %4011 = fmul fast float %128, %4000
  %4012 = fmul fast float %129, %4000
  %4013 = fmul fast float %130, %4000
  %4014 = fadd fast float %4008, %4011
  %4015 = fadd fast float %4009, %4012
  %4016 = fadd fast float %4010, %4013
  %4017 = call float @dx.op.dot3.f32(i32 55, float %4014, float %4015, float %4016, float %4014, float %4015, float %4016)  ; Dot3(ax,ay,az,bx,by,bz)
  %4018 = call float @dx.op.unary.f32(i32 25, float %4017)  ; Rsqrt(value)
  %4019 = fmul fast float %4014, %4018
  %4020 = fmul fast float %4015, %4018
  %4021 = fmul fast float %4016, %4018
  %4022 = icmp eq i32 %51, 65535
  br i1 %4022, label %4621, label %4023

; <label>:4023                                    ; preds = %3972
  %4024 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4025 = call float @dx.op.unary.f32(i32 83, float %53)  ; DerivCoarseX(value)
  %4026 = call float @dx.op.unary.f32(i32 83, float %54)  ; DerivCoarseX(value)
  %4027 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4028 = call float @dx.op.unary.f32(i32 84, float %53)  ; DerivCoarseY(value)
  %4029 = call float @dx.op.unary.f32(i32 84, float %54)  ; DerivCoarseY(value)
  %4030 = fadd fast float %4024, %52
  %4031 = fadd fast float %4025, %53
  %4032 = fadd fast float %4026, %54
  %4033 = fadd fast float %4027, %52
  %4034 = fadd fast float %4028, %53
  %4035 = fadd fast float %4029, %54
  %4036 = mul i32 %51, 48
  %4037 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4036, i32 undef)  ; BufferLoad(srv,index,wot)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.ResRet.f32 %4037, 1
  %4040 = extractvalue %dx.types.ResRet.f32 %4037, 2
  %4041 = add i32 %4036, 16
  %4042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4041, i32 undef)  ; BufferLoad(srv,index,wot)
  %4043 = extractvalue %dx.types.ResRet.f32 %4042, 0
  %4044 = extractvalue %dx.types.ResRet.f32 %4042, 1
  %4045 = extractvalue %dx.types.ResRet.f32 %4042, 2
  %4046 = add i32 %4036, 32
  %4047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4046, i32 undef)  ; BufferLoad(srv,index,wot)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.ResRet.f32 %4047, 1
  %4050 = extractvalue %dx.types.ResRet.f32 %4047, 2
  %4051 = extractvalue %dx.types.ResRet.f32 %4047, 3
  %4052 = bitcast float %4051 to i32
  %4053 = fmul fast float %4038, %52
  %4054 = fmul fast float %4039, %53
  %4055 = fmul fast float %4040, %54
  %4056 = fsub fast float %4053, %4043
  %4057 = fsub fast float %4054, %4044
  %4058 = fsub fast float %4055, %4045
  %4059 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4060 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4061 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4062 = fmul fast float %4059, %4048
  %4063 = fmul fast float %4060, %4049
  %4064 = fmul fast float %4061, %4050
  %4065 = fadd fast float %4048, -1.000000e+00
  %4066 = fadd fast float %4049, -1.000000e+00
  %4067 = fadd fast float %4050, -1.000000e+00
  %4068 = call float @dx.op.unary.f32(i32 27, float %4062)  ; Round_ni(value)
  %4069 = call float @dx.op.unary.f32(i32 27, float %4063)  ; Round_ni(value)
  %4070 = call float @dx.op.unary.f32(i32 27, float %4064)  ; Round_ni(value)
  %4071 = call float @dx.op.binary.f32(i32 36, float %4068, float %4065)  ; FMin(a,b)
  %4072 = call float @dx.op.binary.f32(i32 36, float %4069, float %4066)  ; FMin(a,b)
  %4073 = call float @dx.op.binary.f32(i32 36, float %4070, float %4067)  ; FMin(a,b)
  %4074 = fmul fast float %4073, %4049
  %4075 = fadd fast float %4074, %4072
  %4076 = fmul fast float %4075, %4048
  %4077 = fadd fast float %4076, %4071
  %4078 = fptosi float %4077 to i32
  %4079 = add nsw i32 %4078, %4052
  %4080 = shl nsw i32 %4079, 2
  %4081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4080, i32 undef)  ; BufferLoad(srv,index,wot)
  %4082 = extractvalue %dx.types.ResRet.i32 %4081, 0
  %4083 = lshr i32 %4082, 16
  %4084 = icmp eq i32 %4083, 0
  br i1 %4084, label %4584, label %4085

; <label>:4085                                    ; preds = %4023
  br label %4086

; <label>:4086                                    ; preds = %4213, %4085
  %4087 = phi i32 [ %4115, %4213 ], [ %4083, %4085 ]
  %4088 = phi float [ %4214, %4213 ], [ 0.000000e+00, %4085 ]
  %4089 = phi float [ %4215, %4213 ], [ %3993, %4085 ]
  %4090 = phi float [ %4216, %4213 ], [ %3991, %4085 ]
  %4091 = phi float [ %4217, %4213 ], [ %3981, %4085 ]
  %4092 = phi float [ %4218, %4213 ], [ %3982, %4085 ]
  %4093 = phi float [ %4219, %4213 ], [ %3983, %4085 ]
  %4094 = phi float [ %4220, %4213 ], [ 0.000000e+00, %4085 ]
  %4095 = phi float [ %4221, %4213 ], [ 0.000000e+00, %4085 ]
  %4096 = phi float [ %4222, %4213 ], [ %3984, %4085 ]
  %4097 = phi float [ %4223, %4213 ], [ %3985, %4085 ]
  %4098 = phi float [ %4224, %4213 ], [ %3986, %4085 ]
  %4099 = phi float [ %4225, %4213 ], [ %3975, %4085 ]
  %4100 = phi float [ %4226, %4213 ], [ %3976, %4085 ]
  %4101 = phi float [ %4227, %4213 ], [ %3977, %4085 ]
  %4102 = phi float [ %4228, %4213 ], [ %4019, %4085 ]
  %4103 = phi float [ %4229, %4213 ], [ %4020, %4085 ]
  %4104 = phi float [ %4230, %4213 ], [ %4021, %4085 ]
  %4105 = phi float [ %4231, %4213 ], [ %3989, %4085 ]
  %4106 = phi float [ %4232, %4213 ], [ %3988, %4085 ]
  %4107 = phi float [ %4233, %4213 ], [ 0.000000e+00, %4085 ]
  %4108 = phi float [ %4234, %4213 ], [ %3987, %4085 ]
  %4109 = phi float [ %4235, %4213 ], [ %3978, %4085 ]
  %4110 = phi float [ %4236, %4213 ], [ %3979, %4085 ]
  %4111 = phi float [ %4237, %4213 ], [ %3980, %4085 ]
  %4112 = shl nuw nsw i32 %4087, 2
  %4113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4112, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.i32 %4113, 0
  %4115 = lshr i32 %4114, 16
  %4116 = shl i32 %4114, 8
  %4117 = and i32 %4116, 16776960
  %4118 = or i32 %4117, 48
  %4119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4118, i32 undef)  ; BufferLoad(srv,index,wot)
  %4120 = extractvalue %dx.types.ResRet.f32 %4119, 0
  %4121 = extractvalue %dx.types.ResRet.f32 %4119, 1
  %4122 = extractvalue %dx.types.ResRet.f32 %4119, 2
  %4123 = or i32 %4117, 64
  %4124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.i32 %4124, 0
  %4126 = extractvalue %dx.types.ResRet.i32 %4124, 1
  %4127 = or i32 %4117, 80
  %4128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 3
  %4131 = or i32 %4117, 96
  %4132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4131, i32 undef)  ; BufferLoad(srv,index,wot)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.ResRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.ResRet.f32 %4132, 2
  %4136 = extractvalue %dx.types.ResRet.f32 %4132, 3
  %4137 = or i32 %4117, 112
  %4138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.f32 %4138, 2
  %4140 = or i32 %4117, 128
  %4141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4140, i32 undef)  ; BufferLoad(srv,index,wot)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.ResRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.ResRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.ResRet.f32 %4141, 3
  %4146 = or i32 %4117, 144
  %4147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.ResRet.f32 %4147, 1
  %4150 = extractvalue %dx.types.ResRet.f32 %4147, 2
  %4151 = extractvalue %dx.types.ResRet.f32 %4147, 3
  %4152 = or i32 %4117, 160
  %4153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4152, i32 undef)  ; BufferLoad(srv,index,wot)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = extractvalue %dx.types.ResRet.f32 %4153, 3
  %4158 = or i32 %4117, 192
  %4159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4158, i32 undef)  ; BufferLoad(srv,index,wot)
  %4160 = extractvalue %dx.types.ResRet.i32 %4159, 0
  %4161 = or i32 %4117, 208
  %4162 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4161, i32 undef)  ; BufferLoad(srv,index,wot)
  %4163 = extractvalue %dx.types.ResRet.f32 %4162, 0
  %4164 = or i32 %4117, 248
  %4165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = extractvalue %dx.types.ResRet.f32 %4165, 1
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4117, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.ResRet.f32 %4168, 1
  %4171 = extractvalue %dx.types.ResRet.f32 %4168, 2
  %4172 = extractvalue %dx.types.ResRet.f32 %4168, 3
  %4173 = call float @dx.op.dot4.f32(i32 56, float %4169, float %4170, float %4171, float %4172, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4174 = or i32 %4117, 16
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.ResRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.ResRet.f32 %4175, 2
  %4179 = extractvalue %dx.types.ResRet.f32 %4175, 3
  %4180 = call float @dx.op.dot4.f32(i32 56, float %4176, float %4177, float %4178, float %4179, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4181 = or i32 %4117, 32
  %4182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = extractvalue %dx.types.ResRet.f32 %4182, 3
  %4187 = call float @dx.op.dot4.f32(i32 56, float %4183, float %4184, float %4185, float %4186, float %52, float %53, float %54, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4188 = call float @dx.op.unary.f32(i32 27, float %4173)  ; Round_ni(value)
  %4189 = call float @dx.op.unary.f32(i32 6, float %4188)  ; FAbs(value)
  %4190 = call float @dx.op.unary.f32(i32 27, float %4180)  ; Round_ni(value)
  %4191 = call float @dx.op.unary.f32(i32 6, float %4190)  ; FAbs(value)
  %4192 = call float @dx.op.unary.f32(i32 6, float %4187)  ; FAbs(value)
  %4193 = call float @dx.op.unary.f32(i32 27, float %4192)  ; Round_ni(value)
  %4194 = fadd fast float %4191, %4189
  %4195 = fadd fast float %4194, %4193
  %4196 = fcmp fast oeq float %4195, 0.000000e+00
  %4197 = call float @dx.op.dot4.f32(i32 56, float %4169, float %4170, float %4171, float %4172, float %4030, float %4031, float %4032, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4198 = call float @dx.op.dot4.f32(i32 56, float %4176, float %4177, float %4178, float %4179, float %4030, float %4031, float %4032, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4199 = call float @dx.op.dot4.f32(i32 56, float %4169, float %4170, float %4171, float %4172, float %4033, float %4034, float %4035, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4200 = call float @dx.op.dot4.f32(i32 56, float %4176, float %4177, float %4178, float %4179, float %4033, float %4034, float %4035, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4201 = fsub fast float %4197, %4173
  %4202 = fsub fast float %4199, %4173
  %4203 = fsub fast float %4198, %4180
  %4204 = fsub fast float %4200, %4180
  %4205 = call float @dx.op.dot3.f32(i32 55, float %4120, float %4121, float %4122, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4207 = extractvalue %dx.types.CBufRet.f32 %4206, 2
  %4208 = fadd fast float %4207, %4205
  %4209 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4210 = extractvalue %dx.types.CBufRet.f32 %4206, 0
  %4211 = fcmp fast ogt float %4209, %4210
  %4212 = and i1 %4196, %4211
  br i1 %4212, label %4239, label %4213

; <label>:4213                                    ; preds = %4570, %4322, %4239, %4086
  %4214 = phi float [ %4088, %4239 ], [ %4325, %4322 ], [ %4325, %4570 ], [ %4088, %4086 ]
  %4215 = phi float [ %4089, %4239 ], [ %4089, %4322 ], [ %4546, %4570 ], [ %4089, %4086 ]
  %4216 = phi float [ %4090, %4239 ], [ %4090, %4322 ], [ %4544, %4570 ], [ %4090, %4086 ]
  %4217 = phi float [ %4091, %4239 ], [ %4091, %4322 ], [ %4522, %4570 ], [ %4091, %4086 ]
  %4218 = phi float [ %4092, %4239 ], [ %4092, %4322 ], [ %4523, %4570 ], [ %4092, %4086 ]
  %4219 = phi float [ %4093, %4239 ], [ %4093, %4322 ], [ %4524, %4570 ], [ %4093, %4086 ]
  %4220 = phi float [ %4094, %4239 ], [ %4094, %4322 ], [ %4449, %4570 ], [ %4094, %4086 ]
  %4221 = phi float [ %4095, %4239 ], [ %4095, %4322 ], [ %4447, %4570 ], [ %4095, %4086 ]
  %4222 = phi float [ %4096, %4239 ], [ %4096, %4322 ], [ %4492, %4570 ], [ %4096, %4086 ]
  %4223 = phi float [ %4097, %4239 ], [ %4097, %4322 ], [ %4493, %4570 ], [ %4097, %4086 ]
  %4224 = phi float [ %4098, %4239 ], [ %4098, %4322 ], [ %4494, %4570 ], [ %4098, %4086 ]
  %4225 = phi float [ %4099, %4239 ], [ %4099, %4322 ], [ %4580, %4570 ], [ %4099, %4086 ]
  %4226 = phi float [ %4100, %4239 ], [ %4100, %4322 ], [ %4581, %4570 ], [ %4100, %4086 ]
  %4227 = phi float [ %4101, %4239 ], [ %4101, %4322 ], [ %4582, %4570 ], [ %4101, %4086 ]
  %4228 = phi float [ %4102, %4239 ], [ %4102, %4322 ], [ %4428, %4570 ], [ %4102, %4086 ]
  %4229 = phi float [ %4103, %4239 ], [ %4103, %4322 ], [ %4429, %4570 ], [ %4103, %4086 ]
  %4230 = phi float [ %4104, %4239 ], [ %4104, %4322 ], [ %4430, %4570 ], [ %4104, %4086 ]
  %4231 = phi float [ %4105, %4239 ], [ %4105, %4322 ], [ %4502, %4570 ], [ %4105, %4086 ]
  %4232 = phi float [ %4106, %4239 ], [ %4106, %4322 ], [ %4499, %4570 ], [ %4106, %4086 ]
  %4233 = phi float [ %4107, %4239 ], [ %4107, %4322 ], [ %4496, %4570 ], [ %4107, %4086 ]
  %4234 = phi float [ %4108, %4239 ], [ %4108, %4322 ], [ %4445, %4570 ], [ %4108, %4086 ]
  %4235 = phi float [ %4109, %4239 ], [ %4109, %4322 ], [ %4440, %4570 ], [ %4109, %4086 ]
  %4236 = phi float [ %4110, %4239 ], [ %4110, %4322 ], [ %4441, %4570 ], [ %4110, %4086 ]
  %4237 = phi float [ %4111, %4239 ], [ %4111, %4322 ], [ %4442, %4570 ], [ %4111, %4086 ]
  %4238 = icmp eq i32 %4115, 0
  br i1 %4238, label %4583, label %4086

; <label>:4239                                    ; preds = %4086
  %4240 = extractvalue %dx.types.ResRet.f32 %4119, 3
  %4241 = extractvalue %dx.types.ResRet.f32 %4138, 3
  %4242 = extractvalue %dx.types.ResRet.f32 %4138, 1
  %4243 = extractvalue %dx.types.ResRet.f32 %4138, 0
  %4244 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4245 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4246 = extractvalue %dx.types.ResRet.i32 %4124, 3
  %4247 = extractvalue %dx.types.ResRet.i32 %4124, 2
  %4248 = bitcast float %4240 to i32
  %4249 = add i32 %4246, 0
  %4250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4249, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4252 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4250, %dx.types.Handle %4251, float %4173, float %4180, float undef, float undef, i32 0, i32 0, i32 undef, float %4201, float %4203, float undef, float %4202, float %4204, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4253 = extractvalue %dx.types.ResRet.f32 %4252, 0
  %4254 = fmul fast float %4253, %4245
  %4255 = fadd fast float %4254, %4244
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = fmul fast float %4173, %4133
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4180, float %4257)  ; FMad(a,b,c)
  %4259 = fadd fast float %4258, %4243
  %4260 = fmul fast float %4173, %4135
  %4261 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4180, float %4260)  ; FMad(a,b,c)
  %4262 = fadd fast float %4261, %4242
  %4263 = fmul fast float %4201, %4133
  %4264 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4203, float %4263)  ; FMad(a,b,c)
  %4265 = fmul fast float %4201, %4135
  %4266 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4203, float %4265)  ; FMad(a,b,c)
  %4267 = fmul fast float %4202, %4133
  %4268 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4204, float %4267)  ; FMad(a,b,c)
  %4269 = fmul fast float %4202, %4135
  %4270 = call float @dx.op.tertiary.f32(i32 46, float %4136, float %4204, float %4269)  ; FMad(a,b,c)
  %4271 = add i32 %4247, 0
  %4272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4271, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4273 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4272, %dx.types.Handle %4251, float %4259, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float %4264, float %4266, float undef, float %4268, float %4270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = and i32 %4248, 1024
  %4276 = icmp ne i32 %4275, 0
  %4277 = fcmp fast ogt float %4274, 0x3FE0101020000000
  %4278 = uitofp i1 %4277 to float
  %4279 = select i1 %4276, float %4278, float %4274
  %4280 = and i32 %4248, 8192
  %4281 = icmp ne i32 %4280, 0
  %4282 = select i1 %4281, float %4241, float 1.000000e+00
  %4283 = fmul fast float %4173, 2.000000e+00
  %4284 = fadd fast float %4283, -1.000000e+00
  %4285 = call float @dx.op.unary.f32(i32 6, float %4284)  ; FAbs(value)
  %4286 = fmul fast float %4285, %4166
  %4287 = fsub fast float %4286, %4166
  %4288 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4289 = fmul fast float %4180, 2.000000e+00
  %4290 = fadd fast float %4289, -1.000000e+00
  %4291 = call float @dx.op.unary.f32(i32 6, float %4290)  ; FAbs(value)
  %4292 = fmul fast float %4291, %4167
  %4293 = fsub fast float %4292, %4167
  %4294 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4295 = fmul fast float %4192, %4129
  %4296 = fsub fast float %4295, %4129
  %4297 = call float @dx.op.unary.f32(i32 7, float %4296)  ; Saturate(value)
  %4298 = fmul fast float %4256, %4282
  %4299 = fmul fast float %4298, %4253
  %4300 = fmul fast float %4299, %4288
  %4301 = fmul fast float %4300, %4279
  %4302 = fmul fast float %4301, %4294
  %4303 = fmul fast float %4302, %4297
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 1
  %4306 = extractvalue %dx.types.CBufRet.f32 %4304, 0
  %4307 = fsub fast float %4209, %4306
  %4308 = fmul fast float %4307, %4305
  %4309 = call float @dx.op.unary.f32(i32 7, float %4308)  ; Saturate(value)
  %4310 = fmul fast float %4303, %4130
  %4311 = fadd fast float %4303, %4130
  %4312 = fmul fast float %4311, %4139
  %4313 = fsub fast float %4312, %4139
  %4314 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4315 = and i32 %4248, 128
  %4316 = icmp ne i32 %4315, 0
  %4317 = select i1 %4316, float %4314, float %4310
  %4318 = fmul fast float %4317, %4309
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = fcmp fast ugt float %4318, %4320
  br i1 %4321, label %4322, label %4213

; <label>:4322                                    ; preds = %4239
  %4323 = select i1 %4281, float %4318, float 0.000000e+00
  %4324 = fadd fast float %4323, %4088
  %4325 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  br i1 %4281, label %4213, label %4326

; <label>:4326                                    ; preds = %4322
  %4327 = and i32 %4248, 4
  %4328 = and i32 %4248, 8
  %4329 = add i32 %4125, 0
  %4330 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4329, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4332 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4330, %dx.types.Handle %4331, float %4259, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float %4264, float %4266, float undef, float %4268, float %4270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4333 = extractvalue %dx.types.ResRet.f32 %4332, 0
  %4334 = extractvalue %dx.types.ResRet.f32 %4332, 1
  %4335 = extractvalue %dx.types.ResRet.f32 %4332, 2
  %4336 = extractvalue %dx.types.ResRet.f32 %4332, 3
  %4337 = bitcast float %4151 to i32
  %4338 = and i32 %4337, 255
  %4339 = uitofp i32 %4338 to float
  %4340 = lshr i32 %4337, 8
  %4341 = and i32 %4340, 255
  %4342 = uitofp i32 %4341 to float
  %4343 = fmul fast float %4336, %4339
  %4344 = fadd fast float %4343, %4342
  %4345 = fmul fast float %4344, 0x3F70101000000000
  %4346 = add i32 %4126, 0
  %4347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4346, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4348 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4347, %dx.types.Handle %4331, float %4259, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float %4264, float %4266, float undef, float %4268, float %4270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = extractvalue %dx.types.ResRet.f32 %4348, 1
  %4351 = extractvalue %dx.types.ResRet.f32 %4348, 2
  %4352 = extractvalue %dx.types.ResRet.f32 %4348, 3
  %4353 = bitcast float %4145 to i32
  %4354 = and i32 %4353, 255
  %4355 = uitofp i32 %4354 to float
  %4356 = lshr i32 %4353, 8
  %4357 = and i32 %4356, 255
  %4358 = uitofp i32 %4357 to float
  %4359 = lshr i32 %4353, 16
  %4360 = and i32 %4359, 255
  %4361 = uitofp i32 %4360 to float
  %4362 = fmul fast float %4361, 0x3F70101000000000
  %4363 = fmul fast float %4349, %4355
  %4364 = fadd fast float %4363, %4358
  %4365 = fmul fast float %4364, 0x3F70101000000000
  %4366 = fadd fast float %4350, -5.000000e-01
  %4367 = fadd fast float %4352, -5.000000e-01
  %4368 = fmul fast float %4366, %4362
  %4369 = fmul fast float %4367, %4362
  %4370 = fadd fast float %4368, 5.000000e-01
  %4371 = fadd fast float %4369, 5.000000e-01
  %4372 = fmul fast float %4333, %4154
  %4373 = fmul fast float %4334, %4155
  %4374 = fmul fast float %4335, %4156
  %4375 = fmul fast float %4370, 2.000000e+00
  %4376 = fadd fast float %4375, -1.000000e+00
  %4377 = fmul fast float %4371, 2.000000e+00
  %4378 = fadd fast float %4377, -1.000000e+00
  %4379 = fadd fast float %4376, %4378
  %4380 = fmul fast float %4379, 5.000000e-01
  %4381 = fsub fast float %4376, %4378
  %4382 = fmul fast float %4381, 5.000000e-01
  %4383 = call float @dx.op.unary.f32(i32 6, float %4380)  ; FAbs(value)
  %4384 = fsub fast float 1.000000e+00, %4383
  %4385 = call float @dx.op.unary.f32(i32 6, float %4382)  ; FAbs(value)
  %4386 = fsub fast float %4384, %4385
  %4387 = call float @dx.op.dot3.f32(i32 55, float %4380, float %4382, float %4386, float %4380, float %4382, float %4386)  ; Dot3(ax,ay,az,bx,by,bz)
  %4388 = call float @dx.op.unary.f32(i32 25, float %4387)  ; Rsqrt(value)
  %4389 = fmul fast float %4380, %4388
  %4390 = fmul fast float %4382, %4388
  %4391 = fmul fast float %4388, %4386
  %4392 = fmul fast float %4391, %4120
  %4393 = fmul fast float %4391, %4121
  %4394 = fmul fast float %4391, %4122
  %4395 = fmul fast float %4389, %4142
  %4396 = fmul fast float %4389, %4143
  %4397 = fmul fast float %4389, %4144
  %4398 = fadd fast float %4395, %4392
  %4399 = fadd fast float %4396, %4393
  %4400 = fadd fast float %4397, %4394
  %4401 = fmul fast float %4390, %4148
  %4402 = fmul fast float %4390, %4149
  %4403 = fmul fast float %4390, %4150
  %4404 = fadd fast float %4398, %4401
  %4405 = fadd fast float %4399, %4402
  %4406 = fadd fast float %4400, %4403
  %4407 = call float @dx.op.dot3.f32(i32 55, float %4404, float %4405, float %4406, float %4404, float %4405, float %4406)  ; Dot3(ax,ay,az,bx,by,bz)
  %4408 = call float @dx.op.unary.f32(i32 25, float %4407)  ; Rsqrt(value)
  %4409 = fmul fast float %4404, %4408
  %4410 = fmul fast float %4405, %4408
  %4411 = fmul fast float %4406, %4408
  %4412 = icmp ne i32 %4328, 0
  %4413 = select i1 %4412, float 1.000000e+00, float 0.000000e+00
  %4414 = fmul fast float %4318, %4413
  %4415 = and i32 %4248, 1
  %4416 = icmp eq i32 %4415, 0
  br i1 %4416, label %4417, label %4421

; <label>:4417                                    ; preds = %4326
  %4418 = fsub fast float %4409, %4102
  %4419 = fsub fast float %4410, %4103
  %4420 = fsub fast float %4411, %4104
  br label %4421

; <label>:4421                                    ; preds = %4417, %4326
  %4422 = phi float [ %4418, %4417 ], [ %4409, %4326 ]
  %4423 = phi float [ %4419, %4417 ], [ %4410, %4326 ]
  %4424 = phi float [ %4420, %4417 ], [ %4411, %4326 ]
  %4425 = fmul float %4424, %4414
  %4426 = fmul float %4423, %4414
  %4427 = fmul float %4422, %4414
  %4428 = fadd fast float %4427, %4102
  %4429 = fadd fast float %4426, %4103
  %4430 = fadd fast float %4425, %4104
  %4431 = icmp ne i32 %4327, 0
  %4432 = select i1 %4431, float 1.000000e+00, float 0.000000e+00
  %4433 = fmul fast float %4318, %4432
  %4434 = fsub fast float %4372, %4109
  %4435 = fsub fast float %4373, %4110
  %4436 = fsub fast float %4374, %4111
  %4437 = fmul fast float %4434, %4433
  %4438 = fmul fast float %4435, %4433
  %4439 = fmul fast float %4436, %4433
  %4440 = fadd fast float %4437, %4109
  %4441 = fadd fast float %4438, %4110
  %4442 = fadd fast float %4439, %4111
  %4443 = fsub fast float %4345, %4108
  %4444 = fmul fast float %4443, %4433
  %4445 = fadd fast float %4444, %4108
  %4446 = fmul fast float %4433, %4095
  %4447 = fsub fast float %4095, %4446
  %4448 = fmul fast float %4433, %4094
  %4449 = fsub fast float %4094, %4448
  %4450 = bitcast float %4163 to i32
  %4451 = lshr i32 %4450, 16
  %4452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4451)  ; LegacyF16ToF32(value)
  %4453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4454 = extractvalue %dx.types.ResRet.i32 %4453, 0
  %4455 = and i32 %4454, 1
  %4456 = icmp eq i32 %4455, 0
  br i1 %4456, label %4457, label %4482

; <label>:4457                                    ; preds = %4421
  %4458 = fadd fast float %4345, 0xBFB99999A0000000
  %4459 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4460 = fmul fast float %4459, 0x3FF1C71C80000000
  %4461 = fsub fast float 1.000000e+00, %4460
  %4462 = call float @dx.op.unary.f32(i32 7, float %4461)  ; Saturate(value)
  %4463 = fmul fast float %4462, %4372
  %4464 = fmul fast float %4462, %4373
  %4465 = fmul fast float %4462, %4374
  %4466 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4467 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4468 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4469 = call float @dx.op.binary.f32(i32 35, float %4467, float %4468)  ; FMax(a,b)
  %4470 = call float @dx.op.binary.f32(i32 35, float %4466, float %4469)  ; FMax(a,b)
  %4471 = fcmp fast ogt float %4470, 0.000000e+00
  %4472 = bitcast float %4470 to i32
  %4473 = sub nsw i32 2129859010, %4472
  %4474 = bitcast i32 %4473 to float
  %4475 = select i1 %4471, float %4474, float 0.000000e+00
  %4476 = fmul fast float %4466, %4452
  %4477 = fmul fast float %4467, %4452
  %4478 = fmul fast float %4468, %4452
  %4479 = fmul fast float %4476, %4475
  %4480 = fmul fast float %4477, %4475
  %4481 = fmul fast float %4478, %4475
  br label %4482

; <label>:4482                                    ; preds = %4457, %4421
  %4483 = phi float [ %4452, %4421 ], [ %4479, %4457 ]
  %4484 = phi float [ %4452, %4421 ], [ %4480, %4457 ]
  %4485 = phi float [ %4452, %4421 ], [ %4481, %4457 ]
  %4486 = fsub fast float %4483, %4096
  %4487 = fsub fast float %4484, %4097
  %4488 = fsub fast float %4485, %4098
  %4489 = fmul fast float %4486, %4433
  %4490 = fmul fast float %4487, %4433
  %4491 = fmul fast float %4488, %4433
  %4492 = fadd fast float %4489, %4096
  %4493 = fadd fast float %4490, %4097
  %4494 = fadd fast float %4491, %4098
  %4495 = fadd fast float %4318, %4107
  %4496 = call float @dx.op.unary.f32(i32 7, float %4495)  ; Saturate(value)
  %4497 = fsub fast float %4365, %4106
  %4498 = fmul fast float %4497, %4414
  %4499 = fadd fast float %4498, %4106
  %4500 = fsub fast float %4351, %4105
  %4501 = fmul fast float %4500, %4414
  %4502 = fadd fast float %4501, %4105
  br i1 %4416, label %4511, label %4503

; <label>:4503                                    ; preds = %4482
  %4504 = and i32 %4248, 32768
  %4505 = icmp eq i32 %4504, 0
  br i1 %4505, label %4521, label %4506

; <label>:4506                                    ; preds = %4503
  %4507 = fmul fast float %4414, 1.270000e+02
  %4508 = fadd fast float %4507, %4091
  %4509 = fadd fast float %4507, %4092
  %4510 = fadd fast float %4507, %4093
  br label %4521

; <label>:4511                                    ; preds = %4482
  %4512 = fsub fast float 1.270000e+02, %4091
  %4513 = fsub fast float 1.270000e+02, %4092
  %4514 = fsub fast float 1.270000e+02, %4093
  %4515 = fmul fast float %4414, %4512
  %4516 = fmul fast float %4414, %4513
  %4517 = fmul fast float %4414, %4514
  %4518 = fadd fast float %4515, %4091
  %4519 = fadd fast float %4516, %4092
  %4520 = fadd fast float %4517, %4093
  br label %4521

; <label>:4521                                    ; preds = %4511, %4506, %4503
  %4522 = phi float [ %4508, %4506 ], [ %4091, %4503 ], [ %4518, %4511 ]
  %4523 = phi float [ %4509, %4506 ], [ %4092, %4503 ], [ %4519, %4511 ]
  %4524 = phi float [ %4510, %4506 ], [ %4093, %4503 ], [ %4520, %4511 ]
  %4525 = call float @dx.op.dot3.f32(i32 55, float %4372, float %4373, float %4374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.f32 %4526, 0
  %4528 = extractvalue %dx.types.CBufRet.f32 %4526, 1
  %4529 = fmul fast float %4528, %4525
  %4530 = fadd fast float %4529, %4527
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = bitcast float %4157 to i32
  %4533 = and i32 %4532, 65535
  %4534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4533)  ; LegacyF16ToF32(value)
  %4535 = lshr i32 %4532, 16
  %4536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4535)  ; LegacyF16ToF32(value)
  %4537 = fcmp fast oge float %4534, 0.000000e+00
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 0
  %4540 = select i1 %4537, float %4534, float %4539
  %4541 = fadd fast float %4540, %4536
  %4542 = fsub fast float %4531, %4090
  %4543 = fmul fast float %4542, %4318
  %4544 = fadd fast float %4543, %4090
  %4545 = fmul fast float %4541, %4318
  %4546 = call float @dx.op.binary.f32(i32 35, float %4089, float %4545)  ; FMax(a,b)
  %4547 = and i32 %4248, 16
  %4548 = icmp eq i32 %4547, 0
  br i1 %4548, label %4570, label %4549

; <label>:4549                                    ; preds = %4521
  %4550 = add i32 %4160, 0
  %4551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4550, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4552 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4551, %dx.types.Handle %4331, float %4259, float %4262, float undef, float undef, i32 0, i32 0, i32 undef, float %4264, float %4266, float undef, float %4268, float %4270, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.ResRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.ResRet.f32 %4552, 2
  %4556 = and i32 %4450, 65535
  %4557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4556)  ; LegacyF16ToF32(value)
  %4558 = fmul fast float %4553, %4154
  %4559 = fmul fast float %4554, %4155
  %4560 = fmul fast float %4555, %4156
  %4561 = and i32 %4248, 16384
  %4562 = icmp ne i32 %4561, 0
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4565 = select i1 %4562, float %4564, float 1.000000e+00
  %4566 = fmul fast float %4565, %4557
  %4567 = fmul fast float %4558, %4566
  %4568 = fmul fast float %4559, %4566
  %4569 = fmul fast float %4560, %4566
  br label %4570

; <label>:4570                                    ; preds = %4549, %4521
  %4571 = phi float [ %4567, %4549 ], [ 0.000000e+00, %4521 ]
  %4572 = phi float [ %4568, %4549 ], [ 0.000000e+00, %4521 ]
  %4573 = phi float [ %4569, %4549 ], [ 0.000000e+00, %4521 ]
  %4574 = fsub fast float %4571, %4099
  %4575 = fsub fast float %4572, %4100
  %4576 = fsub fast float %4573, %4101
  %4577 = fmul fast float %4574, %4318
  %4578 = fmul fast float %4575, %4318
  %4579 = fmul fast float %4576, %4318
  %4580 = fadd fast float %4577, %4099
  %4581 = fadd fast float %4578, %4100
  %4582 = fadd fast float %4579, %4101
  br label %4213

; <label>:4583                                    ; preds = %4213
  br label %4584

; <label>:4584                                    ; preds = %4583, %4023
  %4585 = phi float [ 0.000000e+00, %4023 ], [ %4214, %4583 ]
  %4586 = phi float [ %3993, %4023 ], [ %4215, %4583 ]
  %4587 = phi float [ %3991, %4023 ], [ %4216, %4583 ]
  %4588 = phi float [ %3981, %4023 ], [ %4217, %4583 ]
  %4589 = phi float [ %3982, %4023 ], [ %4218, %4583 ]
  %4590 = phi float [ %3983, %4023 ], [ %4219, %4583 ]
  %4591 = phi float [ 0.000000e+00, %4023 ], [ %4220, %4583 ]
  %4592 = phi float [ 0.000000e+00, %4023 ], [ %4221, %4583 ]
  %4593 = phi float [ %3984, %4023 ], [ %4222, %4583 ]
  %4594 = phi float [ %3985, %4023 ], [ %4223, %4583 ]
  %4595 = phi float [ %3986, %4023 ], [ %4224, %4583 ]
  %4596 = phi float [ %3975, %4023 ], [ %4225, %4583 ]
  %4597 = phi float [ %3976, %4023 ], [ %4226, %4583 ]
  %4598 = phi float [ %3977, %4023 ], [ %4227, %4583 ]
  %4599 = phi float [ %4019, %4023 ], [ %4228, %4583 ]
  %4600 = phi float [ %4020, %4023 ], [ %4229, %4583 ]
  %4601 = phi float [ %4021, %4023 ], [ %4230, %4583 ]
  %4602 = phi float [ %3989, %4023 ], [ %4231, %4583 ]
  %4603 = phi float [ %3988, %4023 ], [ %4232, %4583 ]
  %4604 = phi float [ 0.000000e+00, %4023 ], [ %4233, %4583 ]
  %4605 = phi float [ %3987, %4023 ], [ %4234, %4583 ]
  %4606 = phi float [ %3978, %4023 ], [ %4235, %4583 ]
  %4607 = phi float [ %3979, %4023 ], [ %4236, %4583 ]
  %4608 = phi float [ %3980, %4023 ], [ %4237, %4583 ]
  %4609 = call float @dx.op.dot3.f32(i32 55, float %4599, float %4600, float %4601, float %4599, float %4600, float %4601)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = call float @dx.op.unary.f32(i32 25, float %4609)  ; Rsqrt(value)
  %4611 = fmul fast float %4610, %4599
  %4612 = fmul fast float %4610, %4600
  %4613 = fmul fast float %4610, %4601
  %4614 = fadd fast float %4604, %1161
  %4615 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4616 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float %4611, float %4612, float %4613)  ; Dot3(ax,ay,az,bx,by,bz)
  %4617 = call float @dx.op.unary.f32(i32 25, float %4616)  ; Rsqrt(value)
  %4618 = fmul fast float %4617, %4611
  %4619 = fmul fast float %4617, %4612
  %4620 = fmul fast float %4617, %4613
  br label %4621

; <label>:4621                                    ; preds = %4584, %3972
  %4622 = phi float [ %4618, %4584 ], [ %4019, %3972 ]
  %4623 = phi float [ %4619, %4584 ], [ %4020, %3972 ]
  %4624 = phi float [ %4620, %4584 ], [ %4021, %3972 ]
  %4625 = phi float [ %4606, %4584 ], [ %3978, %3972 ]
  %4626 = phi float [ %4607, %4584 ], [ %3979, %3972 ]
  %4627 = phi float [ %4608, %4584 ], [ %3980, %3972 ]
  %4628 = phi float [ %4596, %4584 ], [ %3975, %3972 ]
  %4629 = phi float [ %4597, %4584 ], [ %3976, %3972 ]
  %4630 = phi float [ %4598, %4584 ], [ %3977, %3972 ]
  %4631 = phi float [ %4593, %4584 ], [ %3984, %3972 ]
  %4632 = phi float [ %4594, %4584 ], [ %3985, %3972 ]
  %4633 = phi float [ %4595, %4584 ], [ %3986, %3972 ]
  %4634 = phi float [ %4588, %4584 ], [ %3981, %3972 ]
  %4635 = phi float [ %4589, %4584 ], [ %3982, %3972 ]
  %4636 = phi float [ %4590, %4584 ], [ %3983, %3972 ]
  %4637 = phi float [ %4605, %4584 ], [ %3987, %3972 ]
  %4638 = phi float [ %4615, %4584 ], [ %1161, %3972 ]
  %4639 = phi float [ %4603, %4584 ], [ %3988, %3972 ]
  %4640 = phi float [ %4602, %4584 ], [ %3989, %3972 ]
  %4641 = phi float [ %4592, %4584 ], [ 0.000000e+00, %3972 ]
  %4642 = phi float [ %4591, %4584 ], [ 0.000000e+00, %3972 ]
  %4643 = phi float [ %4585, %4584 ], [ 0.000000e+00, %3972 ]
  %4644 = phi float [ %4586, %4584 ], [ %3993, %3972 ]
  %4645 = phi float [ %4587, %4584 ], [ %3991, %3972 ]
  %4646 = fadd fast float %4637, 0xBFB99999A0000000
  %4647 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4648 = fmul fast float %4647, 0x3FF1C71C80000000
  %4649 = call float @dx.op.binary.f32(i32 36, float %4637, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4650 = fsub fast float 1.000000e+00, %4648
  %4651 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4652 = fmul fast float %4651, %4625
  %4653 = fmul fast float %4651, %4626
  %4654 = fmul fast float %4651, %4627
  %4655 = call float @dx.op.unary.f32(i32 7, float %4652)  ; Saturate(value)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4657 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4658 = fmul fast float %4648, %4625
  %4659 = fmul fast float %4648, %4626
  %4660 = fmul fast float %4648, %4627
  %4661 = fadd fast float %4658, %4649
  %4662 = fadd fast float %4659, %4649
  %4663 = fadd fast float %4660, %4649
  %4664 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4666 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4669 = extractvalue %dx.types.ResRet.i32 %4668, 0
  %4670 = and i32 %4669, 1
  %4671 = icmp eq i32 %4670, 0
  br i1 %4671, label %4686, label %4672

; <label>:4672                                    ; preds = %4621
  %4673 = call float @dx.op.binary.f32(i32 35, float %4656, float %4657)  ; FMax(a,b)
  %4674 = call float @dx.op.binary.f32(i32 35, float %4655, float %4673)  ; FMax(a,b)
  %4675 = fcmp fast ogt float %4674, 0.000000e+00
  %4676 = bitcast float %4674 to i32
  %4677 = sub nsw i32 2129859010, %4676
  %4678 = bitcast i32 %4677 to float
  %4679 = select i1 %4675, float %4678, float 0.000000e+00
  %4680 = fmul fast float %4655, %4631
  %4681 = fmul fast float %4656, %4632
  %4682 = fmul fast float %4657, %4633
  %4683 = fmul fast float %4680, %4679
  %4684 = fmul fast float %4681, %4679
  %4685 = fmul fast float %4682, %4679
  br label %4686

; <label>:4686                                    ; preds = %4672, %4621
  %4687 = phi float [ %4683, %4672 ], [ %4631, %4621 ]
  %4688 = phi float [ %4684, %4672 ], [ %4632, %4621 ]
  %4689 = phi float [ %4685, %4672 ], [ %4633, %4621 ]
  %4690 = call float @dx.op.binary.f32(i32 36, float %4634, float 1.270000e+02)  ; FMin(a,b)
  %4691 = call float @dx.op.binary.f32(i32 36, float %4635, float 1.270000e+02)  ; FMin(a,b)
  %4692 = call float @dx.op.binary.f32(i32 36, float %4636, float 1.270000e+02)  ; FMin(a,b)
  %4693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.i32 %4693, 3
  %4695 = and i32 %4694, 8
  %4696 = icmp ne i32 %4695, 0
  %4697 = call float @dx.op.binary.f32(i32 35, float %4655, float %4625)  ; FMax(a,b)
  %4698 = call float @dx.op.binary.f32(i32 35, float %4656, float %4625)  ; FMax(a,b)
  %4699 = call float @dx.op.binary.f32(i32 35, float %4657, float %4625)  ; FMax(a,b)
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4655, float %4656, float %4657, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = select i1 %249, float %4625, float %4655
  %4702 = select i1 %249, float %4700, float %4656
  %4703 = select i1 %249, float 1.000000e+00, float %4657
  %4704 = select i1 %4696, float %4697, float %4701
  %4705 = select i1 %4696, float %4698, float %4702
  %4706 = select i1 %4696, float %4699, float %4703
  %4707 = call float @dx.op.dot3.f32(i32 55, float %4687, float %4688, float %4689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4708 = select i1 %249, float %4707, float %4687
  %4709 = select i1 %249, float %4707, float %4688
  %4710 = select i1 %249, float %4707, float %4689
  %4711 = and i32 %225, 3
  %4712 = select i1 %219, i32 %4711, i32 0
  %4713 = icmp eq i32 %4712, 1
  br i1 %4713, label %4714, label %4790

; <label>:4714                                    ; preds = %4686
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 0
  %4717 = extractvalue %dx.types.CBufRet.f32 %4715, 1
  %4718 = fadd fast float %4716, %188
  %4719 = fadd fast float %4717, %189
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4723 = fsub fast float %4718, %4721
  %4724 = fsub fast float %4719, %4722
  %4725 = fmul fast float %4723, %4723
  %4726 = fmul fast float %4724, %4724
  %4727 = fadd fast float %4725, %4726
  %4728 = call float @dx.op.unary.f32(i32 24, float %4727)  ; Sqrt(value)
  %4729 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4730 = fcmp fast olt float %4728, %4729
  br i1 %4730, label %4731, label %4784

; <label>:4731                                    ; preds = %4714
  %4732 = extractvalue %dx.types.CBufRet.f32 %4715, 2
  %4733 = fadd fast float %4732, %190
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 0
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.CBufRet.f32 %4734, 1
  %4741 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %4742 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4743 = extractvalue %dx.types.CBufRet.f32 %4734, 3
  %4744 = extractvalue %dx.types.CBufRet.f32 %4736, 3
  %4745 = extractvalue %dx.types.CBufRet.f32 %4738, 3
  %4746 = fadd fast float %4743, %4718
  %4747 = fadd fast float %4744, %4719
  %4748 = fadd fast float %4733, %4745
  %4749 = fmul fast float %4746, %4735
  %4750 = call float @dx.op.tertiary.f32(i32 46, float %4747, float %4737, float %4749)  ; FMad(a,b,c)
  %4751 = call float @dx.op.tertiary.f32(i32 46, float %4748, float %4739, float %4750)  ; FMad(a,b,c)
  %4752 = fmul fast float %4746, %4740
  %4753 = call float @dx.op.tertiary.f32(i32 46, float %4747, float %4741, float %4752)  ; FMad(a,b,c)
  %4754 = call float @dx.op.tertiary.f32(i32 46, float %4748, float %4742, float %4753)  ; FMad(a,b,c)
  %4755 = fsub fast float %4751, %4743
  %4756 = fsub fast float %4754, %4744
  %4757 = fsub fast float %4755, %4721
  %4758 = fadd fast float %4757, %4729
  %4759 = fsub fast float %4756, %4722
  %4760 = fadd fast float %4759, %4729
  %4761 = extractvalue %dx.types.CBufRet.f32 %4720, 3
  %4762 = fmul fast float %4758, %4761
  %4763 = fmul fast float %4760, %4761
  %4764 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4765 = call float @dx.op.unary.f32(i32 7, float %4763)  ; Saturate(value)
  %4766 = fsub fast float 1.000000e+00, %4764
  %4767 = fsub fast float 1.000000e+00, %4765
  %4768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %44, float %4766, float %4767, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4769 = extractvalue %dx.types.ResRet.f32 %4768, 0
  %4770 = fcmp fast ugt float %4769, 0.000000e+00
  br i1 %4770, label %4771, label %4784

; <label>:4771                                    ; preds = %4731
  %4772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4773 = extractvalue %dx.types.CBufRet.f32 %4772, 2
  %4774 = fmul fast float %4773, %4769
  %4775 = extractvalue %dx.types.CBufRet.f32 %4772, 3
  %4776 = fadd fast float %4775, %4774
  %4777 = extractvalue %dx.types.CBufRet.f32 %4738, 2
  %4778 = fadd fast float %4776, %4745
  %4779 = fmul fast float %4751, %4739
  %4780 = call float @dx.op.tertiary.f32(i32 46, float %4754, float %4742, float %4779)  ; FMad(a,b,c)
  %4781 = call float @dx.op.tertiary.f32(i32 46, float %4778, float %4777, float %4780)  ; FMad(a,b,c)
  %4782 = fsub fast float %4781, %4745
  %4783 = fsub fast float %4782, %4732
  br label %4784

; <label>:4784                                    ; preds = %4771, %4731, %4714
  %4785 = phi i1 [ true, %4771 ], [ false, %4731 ], [ false, %4714 ]
  %4786 = phi float [ %4783, %4771 ], [ -1.310720e+05, %4731 ], [ -1.310720e+05, %4714 ]
  %4787 = fsub fast float %4786, %190
  %4788 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4789 = select i1 %4785, float %4788, float 1.000000e+00
  br label %4790

; <label>:4790                                    ; preds = %4784, %4686
  %4791 = phi float [ %4789, %4784 ], [ 0.000000e+00, %4686 ]
  %4792 = icmp eq i32 %4712, 3
  %4793 = select i1 %4792, float 1.000000e+00, float %4791
  %4794 = call float @dx.op.binary.f32(i32 35, float %4643, float %4793)  ; FMax(a,b)
  %4795 = fcmp fast olt float %4793, 1.000000e+00
  br i1 %4795, label %4796, label %4969

; <label>:4796                                    ; preds = %4790
  %4797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4798 = extractvalue %dx.types.CBufRet.i32 %4797, 0
  %4799 = and i32 %4798, 7
  %4800 = icmp eq i32 %4799, 0
  br i1 %4800, label %4872, label %4801

; <label>:4801                                    ; preds = %4796
  %4802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4803 = extractvalue %dx.types.CBufRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.CBufRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.CBufRet.f32 %4802, 2
  %4806 = fadd fast float %4803, %188
  %4807 = fadd fast float %4804, %189
  %4808 = fadd fast float %4805, %190
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 151)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.CBufRet.f32 %4809, 1
  %4812 = extractvalue %dx.types.CBufRet.f32 %4809, 2
  %4813 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 152)  ; CBufferLoadLegacy(handle,regIndex)
  %4815 = extractvalue %dx.types.CBufRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.CBufRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.CBufRet.f32 %4814, 2
  %4818 = extractvalue %dx.types.CBufRet.f32 %4814, 3
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 153)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4822 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4823 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4824 = fmul fast float %4806, %4810
  %4825 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4811, float %4824)  ; FMad(a,b,c)
  %4826 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4812, float %4825)  ; FMad(a,b,c)
  %4827 = fadd fast float %4826, %4813
  %4828 = fmul fast float %4815, %4806
  %4829 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4816, float %4828)  ; FMad(a,b,c)
  %4830 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4817, float %4829)  ; FMad(a,b,c)
  %4831 = fadd fast float %4830, %4818
  %4832 = fmul fast float %4820, %4806
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %4807, float %4821, float %4832)  ; FMad(a,b,c)
  %4834 = call float @dx.op.tertiary.f32(i32 46, float %4808, float %4822, float %4833)  ; FMad(a,b,c)
  %4835 = fadd fast float %4834, %4823
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 155)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4839 = fmul fast float %4838, %260
  %4840 = fadd fast float %4835, %4839
  %4841 = fmul fast float %260, 0x401921FB60000000
  %4842 = call float @dx.op.unary.f32(i32 13, float %4841)  ; Sin(value)
  %4843 = call float @dx.op.unary.f32(i32 12, float %4841)  ; Cos(value)
  %4844 = fmul fast float %4843, %4837
  %4845 = call float @dx.op.tertiary.f32(i32 46, float %4842, float %4837, float 0.000000e+00)  ; FMad(a,b,c)
  %4846 = fmul fast float %4837, %4842
  %4847 = fsub fast float -0.000000e+00, %4846
  %4848 = call float @dx.op.tertiary.f32(i32 46, float %4843, float %4837, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4849

; <label>:4849                                    ; preds = %4849, %4801
  %4850 = phi float [ 0.000000e+00, %4801 ], [ %4864, %4849 ]
  %4851 = phi i32 [ 0, %4801 ], [ %4865, %4849 ]
  %4852 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.0, i32 0, i32 %4851
  %4853 = getelementptr [4 x float], [4 x float]* @PCF_OFFSETS_4.1, i32 0, i32 %4851
  %4854 = load float, float* %4852, align 4
  %4855 = load float, float* %4853, align 4
  %4856 = fmul fast float %4844, %4854
  %4857 = call float @dx.op.tertiary.f32(i32 46, float %4855, float %4847, float %4856)  ; FMad(a,b,c)
  %4858 = fmul fast float %4854, %4845
  %4859 = call float @dx.op.tertiary.f32(i32 46, float %4855, float %4848, float %4858)  ; FMad(a,b,c)
  %4860 = fadd fast float %4827, %4857
  %4861 = fadd fast float %4831, %4859
  %4862 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %2, %dx.types.Handle %46, float %4860, float %4861, float undef, float undef, i32 0, i32 0, i32 undef, float %4840)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 0
  %4864 = fadd fast float %4863, %4850
  %4865 = add nuw nsw i32 %4851, 1
  %4866 = icmp eq i32 %4865, 4
  br i1 %4866, label %4867, label %4849

; <label>:4867                                    ; preds = %4849
  %4868 = fmul fast float %4864, 2.500000e-01
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4871 = fmul fast float %4870, %4868
  br label %4872

; <label>:4872                                    ; preds = %4867, %4796
  %4873 = phi float [ %4868, %4867 ], [ 0.000000e+00, %4796 ]
  %4874 = phi float [ %4871, %4867 ], [ 0.000000e+00, %4796 ]
  %4875 = fcmp uge float %65, 0.000000e+00
  br i1 %4875, label %4876, label %4887

; <label>:4876                                    ; preds = %4872
  %4877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %42, float %65, float %66, float %67, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4878 = extractvalue %dx.types.ResRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.ResRet.f32 %4877, 1
  %4880 = extractvalue %dx.types.ResRet.f32 %4877, 2
  %4881 = fadd fast float %4878, %4794
  %4882 = fcmp fast ogt float %64, 0.000000e+00
  %4883 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = select i1 %4882, float 1.000000e+00, float %4883
  %4885 = fmul fast float %4884, %4880
  %4886 = select i1 %4882, float 0.000000e+00, float %4874
  br label %4969

; <label>:4887                                    ; preds = %4872
  %4888 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.i32 %4888, 0
  %4890 = and i32 %4889, 7
  %4891 = icmp eq i32 %4890, 0
  br i1 %4891, label %4969, label %4892

; <label>:4892                                    ; preds = %4887
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 370)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = fmul fast float %4894, %4873
  %4896 = fadd fast float %4895, %4794
  %4897 = extractvalue %dx.types.CBufRet.f32 %4893, 2
  %4898 = fmul fast float %4897, %4873
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 371)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4901 = fmul fast float %4900, %4873
  %4902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4903 = and i32 %4889, 8
  %4904 = icmp eq i32 %4903, 0
  br i1 %4904, label %4969, label %4905

; <label>:4905                                    ; preds = %4892
  %4906 = extractvalue %dx.types.CBufRet.f32 %4902, 2
  %4907 = fadd fast float %4906, %190
  %4908 = extractvalue %dx.types.CBufRet.f32 %4902, 1
  %4909 = fadd fast float %4908, %189
  %4910 = extractvalue %dx.types.CBufRet.f32 %4902, 0
  %4911 = fadd fast float %4910, %188
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 377)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 0
  %4914 = extractvalue %dx.types.CBufRet.f32 %4912, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4912, 2
  %4916 = fsub fast float %4911, %4913
  %4917 = fsub fast float %4909, %4914
  %4918 = fsub fast float %4907, %4915
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 378)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 0
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4922 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4923 = fmul fast float %4916, %4920
  %4924 = fmul fast float %4917, %4921
  %4925 = fmul fast float %4918, %4922
  %4926 = fcmp fast oge float %4923, 0.000000e+00
  %4927 = fcmp fast oge float %4924, 0.000000e+00
  %4928 = fcmp fast oge float %4925, 0.000000e+00
  %4929 = and i1 %4926, %4927
  %4930 = and i1 %4928, %4929
  %4931 = fcmp fast ole float %4923, 1.000000e+00
  %4932 = fcmp fast ole float %4924, 1.000000e+00
  %4933 = fcmp fast ole float %4925, 1.000000e+00
  %4934 = and i1 %4931, %4932
  %4935 = and i1 %4933, %4934
  %4936 = and i1 %4930, %4935
  br i1 %4936, label %4937, label %4969

; <label>:4937                                    ; preds = %4905
  %4938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.i32 %4938, 0
  %4940 = icmp eq i32 %4939, 0
  br i1 %4940, label %4947, label %4941

; <label>:4941                                    ; preds = %4937
  %4942 = add i32 %4939, 0
  %4943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4942, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4944 = fsub fast float -0.000000e+00, %4924
  %4945 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4943, %dx.types.Handle %106, float %4923, float %4944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4946 = extractvalue %dx.types.ResRet.f32 %4945, 0
  br label %4947

; <label>:4947                                    ; preds = %4941, %4937
  %4948 = phi float [ %4946, %4941 ], [ 1.000000e+00, %4937 ]
  %4949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 369)  ; CBufferLoadLegacy(handle,regIndex)
  %4950 = extractvalue %dx.types.CBufRet.i32 %4949, 0
  %4951 = and i32 %4950, 32
  %4952 = icmp ne i32 %4951, 0
  %4953 = fmul fast float %4948, %4873
  %4954 = select i1 %4952, float %4948, float %4953
  %4955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 379)  ; CBufferLoadLegacy(handle,regIndex)
  %4956 = extractvalue %dx.types.CBufRet.f32 %4955, 1
  %4957 = fmul fast float %4954, %4956
  %4958 = fadd fast float %4957, %4896
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 380)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = fmul fast float %4954, %4960
  %4962 = fadd fast float %4961, %4874
  %4963 = extractvalue %dx.types.CBufRet.f32 %4959, 1
  %4964 = fmul fast float %4954, %4963
  %4965 = fadd fast float %4964, %4898
  %4966 = extractvalue %dx.types.CBufRet.f32 %4959, 2
  %4967 = fmul fast float %4966, %4954
  %4968 = fadd fast float %4967, %4901
  br label %4969

; <label>:4969                                    ; preds = %4947, %4905, %4892, %4887, %4876, %4790
  %4970 = phi float [ %4794, %4887 ], [ %4794, %4790 ], [ %4881, %4876 ], [ %4958, %4947 ], [ %4896, %4905 ], [ %4896, %4892 ]
  %4971 = phi float [ %4874, %4887 ], [ 0.000000e+00, %4790 ], [ %4886, %4876 ], [ %4962, %4947 ], [ %4874, %4905 ], [ %4874, %4892 ]
  %4972 = phi float [ 0.000000e+00, %4887 ], [ 0.000000e+00, %4790 ], [ %4879, %4876 ], [ %4965, %4947 ], [ %4898, %4905 ], [ %4898, %4892 ]
  %4973 = phi float [ 0.000000e+00, %4887 ], [ 0.000000e+00, %4790 ], [ %4885, %4876 ], [ %4968, %4947 ], [ %4901, %4905 ], [ %4901, %4892 ]
  %4974 = call float @dx.op.unary.f32(i32 7, float %4970)  ; Saturate(value)
  %4975 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4976 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4977 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4978 = fcmp fast une float %4976, 0.000000e+00
  %4979 = fcmp fast une float %4977, 0.000000e+00
  %4980 = or i1 %4978, %4979
  br i1 %4980, label %4981, label %5556

; <label>:4981                                    ; preds = %4969
  br i1 %4978, label %4982, label %5255

; <label>:4982                                    ; preds = %4981
  %4983 = call float @dx.op.unary.f32(i32 23, float %4640)  ; Log(value)
  %4984 = fmul fast float %4983, 4.000000e+00
  %4985 = call float @dx.op.unary.f32(i32 21, float %4984)  ; Exp(value)
  %4986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4987 = extractvalue %dx.types.CBufRet.f32 %4986, 0
  %4988 = fmul fast float %4987, %52
  %4989 = fmul fast float %4987, %53
  %4990 = fmul fast float %4987, %54
  %4991 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4992 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %4993 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %4994 = call float @dx.op.unary.f32(i32 23, float %4991)  ; Log(value)
  %4995 = call float @dx.op.unary.f32(i32 23, float %4992)  ; Log(value)
  %4996 = call float @dx.op.unary.f32(i32 23, float %4993)  ; Log(value)
  %4997 = fmul fast float %4994, 4.000000e+00
  %4998 = fmul fast float %4995, 4.000000e+00
  %4999 = fmul fast float %4996, 4.000000e+00
  %5000 = call float @dx.op.unary.f32(i32 21, float %4997)  ; Exp(value)
  %5001 = call float @dx.op.unary.f32(i32 21, float %4998)  ; Exp(value)
  %5002 = call float @dx.op.unary.f32(i32 21, float %4999)  ; Exp(value)
  %5003 = fadd fast float %5001, %5000
  %5004 = fadd fast float %5003, %5002
  %5005 = fdiv fast float 1.000000e+00, %5004
  %5006 = fmul fast float %5005, %5000
  %5007 = fcmp fast ogt float %61, 0.000000e+00
  %5008 = fcmp fast ogt float %62, 0.000000e+00
  %5009 = fcmp fast ogt float %63, 0.000000e+00
  %5010 = fcmp fast olt float %61, 0.000000e+00
  %5011 = fcmp fast olt float %62, 0.000000e+00
  %5012 = fcmp fast olt float %63, 0.000000e+00
  %5013 = zext i1 %5007 to i32
  %5014 = zext i1 %5008 to i32
  %5015 = zext i1 %5009 to i32
  %5016 = zext i1 %5010 to i32
  %5017 = zext i1 %5011 to i32
  %5018 = zext i1 %5012 to i32
  %5019 = sub nsw i32 %5013, %5016
  %5020 = sub nsw i32 %5014, %5017
  %5021 = sub nsw i32 %5015, %5018
  %5022 = call float @dx.op.unary.f32(i32 83, float %4988)  ; DerivCoarseX(value)
  %5023 = call float @dx.op.unary.f32(i32 83, float %4989)  ; DerivCoarseX(value)
  %5024 = call float @dx.op.unary.f32(i32 83, float %4990)  ; DerivCoarseX(value)
  %5025 = call float @dx.op.unary.f32(i32 84, float %4988)  ; DerivCoarseY(value)
  %5026 = call float @dx.op.unary.f32(i32 84, float %4989)  ; DerivCoarseY(value)
  %5027 = call float @dx.op.unary.f32(i32 84, float %4990)  ; DerivCoarseY(value)
  %5028 = fcmp fast ole float %260, %5006
  %5029 = fmul fast float %5005, %5003
  %5030 = fcmp fast ole float %260, %5029
  %5031 = select i1 %5030, float %4990, float %4988
  %5032 = select i1 %5030, float %4988, float %4989
  %5033 = select i1 %5028, float %4989, float %5031
  %5034 = select i1 %5028, float %4990, float %5032
  %5035 = select i1 %5030, float %5024, float %5022
  %5036 = select i1 %5030, float %5022, float %5023
  %5037 = select i1 %5028, float %5023, float %5035
  %5038 = select i1 %5028, float %5024, float %5036
  %5039 = select i1 %5030, float %5027, float %5025
  %5040 = select i1 %5030, float %5025, float %5026
  %5041 = select i1 %5028, float %5026, float %5039
  %5042 = select i1 %5028, float %5027, float %5040
  %5043 = call float @dx.op.unary.f32(i32 27, float %5033)  ; Round_ni(value)
  %5044 = call float @dx.op.unary.f32(i32 27, float %5034)  ; Round_ni(value)
  %5045 = fptosi float %5043 to i32
  %5046 = fptosi float %5044 to i32
  %5047 = xor i32 %5046, %5045
  %5048 = sitofp i32 %5047 to float
  %5049 = fptosi float %5048 to i32
  %5050 = sitofp i32 %5049 to float
  %5051 = fmul fast float %5050, 0x3FE3C6EF40000000
  %5052 = frem fast float %5043, 2.560000e+02
  %5053 = frem fast float %5044, 2.560000e+02
  %5054 = fptoui float %5052 to i32
  %5055 = fptoui float %5053 to i32
  %5056 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5054, i32 %5055, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5057 = extractvalue %dx.types.ResRet.f32 %5056, 0
  %5058 = extractvalue %dx.types.ResRet.f32 %5056, 1
  %5059 = extractvalue %dx.types.ResRet.f32 %5056, 2
  %5060 = fadd fast float %5057, %5051
  %5061 = fadd fast float %5058, %5051
  %5062 = fadd fast float %5059, %5051
  %5063 = call float @dx.op.unary.f32(i32 22, float %5060)  ; Frc(value)
  %5064 = call float @dx.op.unary.f32(i32 22, float %5061)  ; Frc(value)
  %5065 = call float @dx.op.unary.f32(i32 22, float %5062)  ; Frc(value)
  %5066 = fmul fast float %5065, 0x401921FB60000000
  %5067 = call float @dx.op.unary.f32(i32 13, float %5066)  ; Sin(value)
  %5068 = call float @dx.op.unary.f32(i32 12, float %5066)  ; Cos(value)
  %5069 = fsub fast float -0.000000e+00, %5068
  %5070 = fmul fast float %5068, %5033
  %5071 = call float @dx.op.tertiary.f32(i32 46, float %5067, float %5034, float %5070)  ; FMad(a,b,c)
  %5072 = fmul fast float %5067, %5033
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %5069, float %5034, float %5072)  ; FMad(a,b,c)
  %5074 = fadd fast float %5071, %5063
  %5075 = fadd fast float %5073, %5064
  %5076 = extractvalue %dx.types.CBufRet.f32 %4986, 3
  %5077 = bitcast float %5076 to i32
  %5078 = icmp eq i32 %5077, 0
  br i1 %5078, label %5117, label %5079

; <label>:5079                                    ; preds = %4982
  %5080 = add i32 %5077, 0
  %5081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5082 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5081, %dx.types.Handle %106, float %5074, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float %5037, float %5038, float undef, float %5041, float %5042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5083 = extractvalue %dx.types.ResRet.f32 %5082, 0
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5087 = fsub fast float 1.000000e+00, %4976
  %5088 = call float @dx.op.binary.f32(i32 35, float %5087, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5089 = bitcast float %4976 to i32
  %5090 = sitofp i32 %5089 to float
  %5091 = fadd fast float %5090, 0xC1CFBF8940000000
  %5092 = fmul fast float %5086, %5091
  %5093 = fadd fast float %5092, 0x41CFBF8940000000
  %5094 = fptosi float %5093 to i32
  %5095 = bitcast i32 %5094 to float
  %5096 = bitcast float %5088 to i32
  %5097 = sitofp i32 %5096 to float
  %5098 = fadd fast float %5097, 0xC1CFBF8940000000
  %5099 = fmul fast float %5098, %5086
  %5100 = fadd fast float %5099, 0x41CFBF8940000000
  %5101 = fptosi float %5100 to i32
  %5102 = bitcast i32 %5101 to float
  %5103 = fmul fast float %5095, %5085
  %5104 = fmul fast float %5102, %5085
  %5105 = fsub fast float %5088, %5103
  %5106 = fadd fast float %5104, %5088
  %5107 = call float @dx.op.unary.f32(i32 7, float %5105)  ; Saturate(value)
  %5108 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5109 = fsub fast float %5083, %5107
  %5110 = fsub fast float %5108, %5107
  %5111 = bitcast float %5110 to i32
  %5112 = sub nsw i32 2129859010, %5111
  %5113 = bitcast i32 %5112 to float
  %5114 = fmul fast float %5113, %5109
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = fcmp fast olt float %5115, 0x3F70101020000000
  br i1 %5116, label %5255, label %5117

; <label>:5117                                    ; preds = %5079, %4982
  %5118 = phi float [ %5115, %5079 ], [ %4976, %4982 ]
  %5119 = fmul fast float %5118, %4985
  %5120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.i32 %5120, 1
  %5122 = extractvalue %dx.types.CBufRet.i32 %5120, 0
  %5123 = add i32 %5122, 0
  %5124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5125 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5124, %dx.types.Handle %105, float %5074, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float %5037, float %5038, float undef, float %5041, float %5042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5126 = extractvalue %dx.types.ResRet.f32 %5125, 0
  %5127 = extractvalue %dx.types.ResRet.f32 %5125, 1
  %5128 = extractvalue %dx.types.ResRet.f32 %5125, 2
  %5129 = extractvalue %dx.types.ResRet.f32 %5125, 3
  %5130 = and i32 %5121, 255
  %5131 = uitofp i32 %5130 to float
  %5132 = lshr i32 %5121, 8
  %5133 = and i32 %5132, 255
  %5134 = uitofp i32 %5133 to float
  %5135 = fmul fast float %5129, %5131
  %5136 = fadd fast float %5135, %5134
  %5137 = fmul fast float %5136, 0x3F70101000000000
  %5138 = fadd fast float %5137, 0xBFB99999A0000000
  %5139 = call float @dx.op.unary.f32(i32 7, float %5138)  ; Saturate(value)
  %5140 = fmul fast float %5139, 0x3FF1C71C80000000
  %5141 = call float @dx.op.binary.f32(i32 36, float %5137, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5142 = fsub fast float 1.000000e+00, %5140
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = fmul fast float %5143, %5126
  %5145 = fmul fast float %5143, %5127
  %5146 = fmul fast float %5143, %5128
  %5147 = call float @dx.op.unary.f32(i32 7, float %5144)  ; Saturate(value)
  %5148 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5149 = call float @dx.op.unary.f32(i32 7, float %5146)  ; Saturate(value)
  %5150 = fmul fast float %5140, %5126
  %5151 = fmul fast float %5140, %5127
  %5152 = fmul fast float %5140, %5128
  %5153 = fadd fast float %5150, %5141
  %5154 = fadd fast float %5151, %5141
  %5155 = fadd fast float %5152, %5141
  %5156 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5157 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5158 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.i32 %5159, 3
  %5161 = extractvalue %dx.types.CBufRet.i32 %5159, 2
  %5162 = add i32 %5161, 0
  %5163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5164 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5163, %dx.types.Handle %105, float %5074, float %5075, float undef, float undef, i32 0, i32 0, i32 undef, float %5037, float %5038, float undef, float %5041, float %5042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.ResRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.ResRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.ResRet.f32 %5164, 3
  %5169 = and i32 %5160, 255
  %5170 = uitofp i32 %5169 to float
  %5171 = lshr i32 %5160, 8
  %5172 = and i32 %5171, 255
  %5173 = uitofp i32 %5172 to float
  %5174 = lshr i32 %5160, 16
  %5175 = and i32 %5174, 255
  %5176 = uitofp i32 %5175 to float
  %5177 = fmul fast float %5176, 0x3F70101000000000
  %5178 = fmul fast float %5165, %5170
  %5179 = fadd fast float %5178, %5173
  %5180 = fmul fast float %5179, 0x3F70101000000000
  %5181 = fadd fast float %5166, -5.000000e-01
  %5182 = fadd fast float %5168, -5.000000e-01
  %5183 = fmul fast float %5181, %5177
  %5184 = fmul fast float %5182, %5177
  %5185 = fadd fast float %5183, 5.000000e-01
  %5186 = fadd fast float %5184, 5.000000e-01
  %5187 = fmul fast float %5185, 2.000000e+00
  %5188 = fadd fast float %5187, -1.000000e+00
  %5189 = fmul fast float %5186, 2.000000e+00
  %5190 = fadd fast float %5189, -1.000000e+00
  %5191 = fadd fast float %5188, %5190
  %5192 = fmul fast float %5191, 5.000000e-01
  %5193 = fsub fast float %5188, %5190
  %5194 = fmul fast float %5193, 5.000000e-01
  %5195 = call float @dx.op.unary.f32(i32 6, float %5192)  ; FAbs(value)
  %5196 = fsub fast float 1.000000e+00, %5195
  %5197 = call float @dx.op.unary.f32(i32 6, float %5194)  ; FAbs(value)
  %5198 = fsub fast float %5196, %5197
  %5199 = call float @dx.op.dot3.f32(i32 55, float %5192, float %5194, float %5198, float %5192, float %5194, float %5198)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = call float @dx.op.unary.f32(i32 25, float %5199)  ; Rsqrt(value)
  %5201 = fmul fast float %5192, %5200
  %5202 = fmul fast float %5194, %5200
  %5203 = select i1 %5030, i32 %5020, i32 %5021
  %5204 = select i1 %5028, i32 %5019, i32 %5203
  %5205 = sitofp i32 %5204 to float
  %5206 = fmul fast float %5198, %5205
  %5207 = fmul fast float %5206, %5200
  %5208 = select i1 %5030, float %5207, float %5202
  %5209 = select i1 %5030, float %5202, float %5207
  %5210 = select i1 %5028, float %5207, float %5201
  %5211 = select i1 %5028, float %5202, float %5208
  %5212 = select i1 %5028, float %5201, float %5209
  %5213 = fsub fast float %5147, %4704
  %5214 = fsub fast float %5148, %4705
  %5215 = fsub fast float %5149, %4706
  %5216 = fmul fast float %5213, %5119
  %5217 = fmul fast float %5214, %5119
  %5218 = fmul fast float %5215, %5119
  %5219 = fadd fast float %5216, %4704
  %5220 = fadd fast float %5217, %4705
  %5221 = fadd fast float %5218, %4706
  %5222 = fsub fast float %5156, %4664
  %5223 = fsub fast float %5157, %4665
  %5224 = fsub fast float %5158, %4666
  %5225 = fmul fast float %5222, %5119
  %5226 = fmul fast float %5223, %5119
  %5227 = fmul fast float %5224, %5119
  %5228 = fadd fast float %5225, %4664
  %5229 = fadd fast float %5226, %4665
  %5230 = fadd fast float %5227, %4666
  %5231 = fadd fast float %5210, %4622
  %5232 = fadd fast float %5211, %4623
  %5233 = fadd fast float %5212, %4624
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %5231, float %5232, float %5233)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = call float @dx.op.unary.f32(i32 25, float %5234)  ; Rsqrt(value)
  %5236 = fmul fast float %5231, %5235
  %5237 = fmul fast float %5232, %5235
  %5238 = fmul fast float %5233, %5235
  %5239 = fsub fast float %5236, %4622
  %5240 = fsub fast float %5237, %4623
  %5241 = fsub fast float %5238, %4624
  %5242 = fmul fast float %5239, %5119
  %5243 = fmul fast float %5240, %5119
  %5244 = fmul fast float %5241, %5119
  %5245 = fadd fast float %5242, %4622
  %5246 = fadd fast float %5243, %4623
  %5247 = fadd fast float %5244, %4624
  %5248 = call float @dx.op.binary.f32(i32 36, float %4640, float %5167)  ; FMin(a,b)
  %5249 = fsub fast float %5248, %4640
  %5250 = fmul fast float %5249, %5119
  %5251 = fadd fast float %5250, %4640
  %5252 = fsub fast float %5180, %4667
  %5253 = fmul fast float %5252, %5119
  %5254 = fadd fast float %5253, %4667
  br label %5255

; <label>:5255                                    ; preds = %5117, %5079, %4981
  %5256 = phi float [ %5228, %5117 ], [ %4664, %5079 ], [ %4664, %4981 ]
  %5257 = phi float [ %5229, %5117 ], [ %4665, %5079 ], [ %4665, %4981 ]
  %5258 = phi float [ %5230, %5117 ], [ %4666, %5079 ], [ %4666, %4981 ]
  %5259 = phi float [ %5219, %5117 ], [ %4704, %5079 ], [ %4704, %4981 ]
  %5260 = phi float [ %5220, %5117 ], [ %4705, %5079 ], [ %4705, %4981 ]
  %5261 = phi float [ %5221, %5117 ], [ %4706, %5079 ], [ %4706, %4981 ]
  %5262 = phi float [ %5245, %5117 ], [ %4622, %5079 ], [ %4622, %4981 ]
  %5263 = phi float [ %5246, %5117 ], [ %4623, %5079 ], [ %4623, %4981 ]
  %5264 = phi float [ %5247, %5117 ], [ %4624, %5079 ], [ %4624, %4981 ]
  %5265 = phi float [ %5254, %5117 ], [ %4667, %5079 ], [ %4667, %4981 ]
  %5266 = phi float [ %5251, %5117 ], [ %4640, %5079 ], [ %4640, %4981 ]
  br i1 %4979, label %5267, label %5556

; <label>:5267                                    ; preds = %5255
  %5268 = call float @dx.op.unary.f32(i32 23, float %5266)  ; Log(value)
  %5269 = fmul fast float %5268, 4.000000e+00
  %5270 = call float @dx.op.unary.f32(i32 21, float %5269)  ; Exp(value)
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 0
  %5273 = fmul fast float %5272, %52
  %5274 = fmul fast float %5272, %53
  %5275 = fmul fast float %5272, %54
  %5276 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5277 = call float @dx.op.unary.f32(i32 6, float %62)  ; FAbs(value)
  %5278 = call float @dx.op.unary.f32(i32 6, float %63)  ; FAbs(value)
  %5279 = call float @dx.op.unary.f32(i32 23, float %5276)  ; Log(value)
  %5280 = call float @dx.op.unary.f32(i32 23, float %5277)  ; Log(value)
  %5281 = call float @dx.op.unary.f32(i32 23, float %5278)  ; Log(value)
  %5282 = fmul fast float %5279, 4.000000e+00
  %5283 = fmul fast float %5280, 4.000000e+00
  %5284 = fmul fast float %5281, 4.000000e+00
  %5285 = call float @dx.op.unary.f32(i32 21, float %5282)  ; Exp(value)
  %5286 = call float @dx.op.unary.f32(i32 21, float %5283)  ; Exp(value)
  %5287 = call float @dx.op.unary.f32(i32 21, float %5284)  ; Exp(value)
  %5288 = fadd fast float %5286, %5285
  %5289 = fadd fast float %5288, %5287
  %5290 = fdiv fast float 1.000000e+00, %5289
  %5291 = fmul fast float %5290, %5285
  %5292 = fcmp fast ogt float %61, 0.000000e+00
  %5293 = fcmp fast ogt float %62, 0.000000e+00
  %5294 = fcmp fast ogt float %63, 0.000000e+00
  %5295 = fcmp fast olt float %61, 0.000000e+00
  %5296 = fcmp fast olt float %62, 0.000000e+00
  %5297 = fcmp fast olt float %63, 0.000000e+00
  %5298 = zext i1 %5292 to i32
  %5299 = zext i1 %5293 to i32
  %5300 = zext i1 %5294 to i32
  %5301 = zext i1 %5295 to i32
  %5302 = zext i1 %5296 to i32
  %5303 = zext i1 %5297 to i32
  %5304 = sub nsw i32 %5298, %5301
  %5305 = sub nsw i32 %5299, %5302
  %5306 = sub nsw i32 %5300, %5303
  %5307 = call float @dx.op.unary.f32(i32 83, float %5273)  ; DerivCoarseX(value)
  %5308 = call float @dx.op.unary.f32(i32 83, float %5274)  ; DerivCoarseX(value)
  %5309 = call float @dx.op.unary.f32(i32 83, float %5275)  ; DerivCoarseX(value)
  %5310 = call float @dx.op.unary.f32(i32 84, float %5273)  ; DerivCoarseY(value)
  %5311 = call float @dx.op.unary.f32(i32 84, float %5274)  ; DerivCoarseY(value)
  %5312 = call float @dx.op.unary.f32(i32 84, float %5275)  ; DerivCoarseY(value)
  %5313 = fcmp fast ole float %260, %5291
  %5314 = fmul fast float %5290, %5288
  %5315 = fcmp fast ole float %260, %5314
  %5316 = select i1 %5315, float %5275, float %5273
  %5317 = select i1 %5315, float %5273, float %5274
  %5318 = select i1 %5313, float %5274, float %5316
  %5319 = select i1 %5313, float %5275, float %5317
  %5320 = select i1 %5315, float %5309, float %5307
  %5321 = select i1 %5315, float %5307, float %5308
  %5322 = select i1 %5313, float %5308, float %5320
  %5323 = select i1 %5313, float %5309, float %5321
  %5324 = select i1 %5315, float %5312, float %5310
  %5325 = select i1 %5315, float %5310, float %5311
  %5326 = select i1 %5313, float %5311, float %5324
  %5327 = select i1 %5313, float %5312, float %5325
  %5328 = call float @dx.op.unary.f32(i32 27, float %5318)  ; Round_ni(value)
  %5329 = call float @dx.op.unary.f32(i32 27, float %5319)  ; Round_ni(value)
  %5330 = fptosi float %5328 to i32
  %5331 = fptosi float %5329 to i32
  %5332 = xor i32 %5331, %5330
  %5333 = sitofp i32 %5332 to float
  %5334 = fptosi float %5333 to i32
  %5335 = sitofp i32 %5334 to float
  %5336 = fmul fast float %5335, 0x3FE3C6EF40000000
  %5337 = frem fast float %5328, 2.560000e+02
  %5338 = frem fast float %5329, 2.560000e+02
  %5339 = fptoui float %5337 to i32
  %5340 = fptoui float %5338 to i32
  %5341 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %28, i32 0, i32 %5339, i32 %5340, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5342 = extractvalue %dx.types.ResRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.ResRet.f32 %5341, 1
  %5344 = extractvalue %dx.types.ResRet.f32 %5341, 2
  %5345 = fadd fast float %5342, %5336
  %5346 = fadd fast float %5343, %5336
  %5347 = fadd fast float %5344, %5336
  %5348 = call float @dx.op.unary.f32(i32 22, float %5345)  ; Frc(value)
  %5349 = call float @dx.op.unary.f32(i32 22, float %5346)  ; Frc(value)
  %5350 = call float @dx.op.unary.f32(i32 22, float %5347)  ; Frc(value)
  %5351 = fmul fast float %5350, 0x401921FB60000000
  %5352 = call float @dx.op.unary.f32(i32 13, float %5351)  ; Sin(value)
  %5353 = call float @dx.op.unary.f32(i32 12, float %5351)  ; Cos(value)
  %5354 = fsub fast float -0.000000e+00, %5353
  %5355 = fmul fast float %5353, %5318
  %5356 = call float @dx.op.tertiary.f32(i32 46, float %5352, float %5319, float %5355)  ; FMad(a,b,c)
  %5357 = fmul fast float %5352, %5318
  %5358 = call float @dx.op.tertiary.f32(i32 46, float %5354, float %5319, float %5357)  ; FMad(a,b,c)
  %5359 = fadd fast float %5356, %5348
  %5360 = fadd fast float %5358, %5349
  %5361 = extractvalue %dx.types.CBufRet.f32 %5271, 3
  %5362 = bitcast float %5361 to i32
  %5363 = icmp eq i32 %5362, 0
  br i1 %5363, label %5402, label %5364

; <label>:5364                                    ; preds = %5267
  %5365 = add i32 %5362, 0
  %5366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5367 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5366, %dx.types.Handle %106, float %5359, float %5360, float undef, float undef, i32 0, i32 0, i32 undef, float %5322, float %5323, float undef, float %5326, float %5327, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 0
  %5369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.f32 %5369, 1
  %5371 = extractvalue %dx.types.CBufRet.f32 %5369, 2
  %5372 = fsub fast float 1.000000e+00, %4977
  %5373 = call float @dx.op.binary.f32(i32 35, float %5372, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5374 = bitcast float %4977 to i32
  %5375 = sitofp i32 %5374 to float
  %5376 = fadd fast float %5375, 0xC1CFBF8940000000
  %5377 = fmul fast float %5371, %5376
  %5378 = fadd fast float %5377, 0x41CFBF8940000000
  %5379 = fptosi float %5378 to i32
  %5380 = bitcast i32 %5379 to float
  %5381 = bitcast float %5373 to i32
  %5382 = sitofp i32 %5381 to float
  %5383 = fadd fast float %5382, 0xC1CFBF8940000000
  %5384 = fmul fast float %5383, %5371
  %5385 = fadd fast float %5384, 0x41CFBF8940000000
  %5386 = fptosi float %5385 to i32
  %5387 = bitcast i32 %5386 to float
  %5388 = fmul fast float %5380, %5370
  %5389 = fmul fast float %5387, %5370
  %5390 = fsub fast float %5373, %5388
  %5391 = fadd fast float %5389, %5373
  %5392 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5393 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5394 = fsub fast float %5368, %5392
  %5395 = fsub fast float %5393, %5392
  %5396 = bitcast float %5395 to i32
  %5397 = sub nsw i32 2129859010, %5396
  %5398 = bitcast i32 %5397 to float
  %5399 = fmul fast float %5398, %5394
  %5400 = call float @dx.op.unary.f32(i32 7, float %5399)  ; Saturate(value)
  %5401 = fcmp fast olt float %5400, 0x3F70101020000000
  br i1 %5401, label %5556, label %5402

; <label>:5402                                    ; preds = %5364, %5267
  %5403 = phi float [ %5400, %5364 ], [ %4977, %5267 ]
  %5404 = fmul fast float %5403, %5270
  %5405 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5406 = extractvalue %dx.types.CBufRet.i32 %5405, 1
  %5407 = extractvalue %dx.types.CBufRet.i32 %5405, 0
  %5408 = add i32 %5407, 0
  %5409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5408, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5410 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5409, %dx.types.Handle %105, float %5359, float %5360, float undef, float undef, i32 0, i32 0, i32 undef, float %5322, float %5323, float undef, float %5326, float %5327, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.ResRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.ResRet.f32 %5410, 2
  %5414 = extractvalue %dx.types.ResRet.f32 %5410, 3
  %5415 = and i32 %5406, 255
  %5416 = uitofp i32 %5415 to float
  %5417 = lshr i32 %5406, 8
  %5418 = and i32 %5417, 255
  %5419 = uitofp i32 %5418 to float
  %5420 = fmul fast float %5414, %5416
  %5421 = fadd fast float %5420, %5419
  %5422 = fmul fast float %5421, 0x3F70101000000000
  %5423 = fadd fast float %5422, 0xBFB99999A0000000
  %5424 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5425 = fmul fast float %5424, 0x3FF1C71C80000000
  %5426 = call float @dx.op.binary.f32(i32 36, float %5422, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5427 = fsub fast float 1.000000e+00, %5425
  %5428 = call float @dx.op.unary.f32(i32 7, float %5427)  ; Saturate(value)
  %5429 = fmul fast float %5428, %5411
  %5430 = fmul fast float %5428, %5412
  %5431 = fmul fast float %5428, %5413
  %5432 = call float @dx.op.unary.f32(i32 7, float %5429)  ; Saturate(value)
  %5433 = call float @dx.op.unary.f32(i32 7, float %5430)  ; Saturate(value)
  %5434 = call float @dx.op.unary.f32(i32 7, float %5431)  ; Saturate(value)
  %5435 = fmul fast float %5425, %5411
  %5436 = fmul fast float %5425, %5412
  %5437 = fmul fast float %5425, %5413
  %5438 = fadd fast float %5435, %5426
  %5439 = fadd fast float %5436, %5426
  %5440 = fadd fast float %5437, %5426
  %5441 = call float @dx.op.unary.f32(i32 7, float %5438)  ; Saturate(value)
  %5442 = call float @dx.op.unary.f32(i32 7, float %5439)  ; Saturate(value)
  %5443 = call float @dx.op.unary.f32(i32 7, float %5440)  ; Saturate(value)
  %5444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.i32 %5444, 3
  %5446 = extractvalue %dx.types.CBufRet.i32 %5444, 2
  %5447 = add i32 %5446, 0
  %5448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5449 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5448, %dx.types.Handle %105, float %5359, float %5360, float undef, float undef, i32 0, i32 0, i32 undef, float %5322, float %5323, float undef, float %5326, float %5327, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.ResRet.f32 %5449, 2
  %5453 = extractvalue %dx.types.ResRet.f32 %5449, 3
  %5454 = and i32 %5445, 255
  %5455 = uitofp i32 %5454 to float
  %5456 = lshr i32 %5445, 8
  %5457 = and i32 %5456, 255
  %5458 = uitofp i32 %5457 to float
  %5459 = lshr i32 %5445, 16
  %5460 = and i32 %5459, 255
  %5461 = uitofp i32 %5460 to float
  %5462 = fmul fast float %5461, 0x3F70101000000000
  %5463 = fmul fast float %5450, %5455
  %5464 = fadd fast float %5463, %5458
  %5465 = fmul fast float %5464, 0x3F70101000000000
  %5466 = fadd fast float %5451, -5.000000e-01
  %5467 = fadd fast float %5453, -5.000000e-01
  %5468 = fmul fast float %5466, %5462
  %5469 = fmul fast float %5467, %5462
  %5470 = fadd fast float %5468, 5.000000e-01
  %5471 = fadd fast float %5469, 5.000000e-01
  %5472 = fmul fast float %5470, 2.000000e+00
  %5473 = fadd fast float %5472, -1.000000e+00
  %5474 = fmul fast float %5471, 2.000000e+00
  %5475 = fadd fast float %5474, -1.000000e+00
  %5476 = fadd fast float %5473, %5475
  %5477 = fmul fast float %5476, 5.000000e-01
  %5478 = fsub fast float %5473, %5475
  %5479 = fmul fast float %5478, 5.000000e-01
  %5480 = call float @dx.op.unary.f32(i32 6, float %5477)  ; FAbs(value)
  %5481 = fsub fast float 1.000000e+00, %5480
  %5482 = call float @dx.op.unary.f32(i32 6, float %5479)  ; FAbs(value)
  %5483 = fsub fast float %5481, %5482
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5477, float %5479, float %5483, float %5477, float %5479, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = call float @dx.op.unary.f32(i32 25, float %5484)  ; Rsqrt(value)
  %5486 = fmul fast float %5477, %5485
  %5487 = fmul fast float %5479, %5485
  %5488 = select i1 %5315, i32 %5305, i32 %5306
  %5489 = select i1 %5313, i32 %5304, i32 %5488
  %5490 = sitofp i32 %5489 to float
  %5491 = fmul fast float %5483, %5490
  %5492 = fmul fast float %5491, %5485
  %5493 = select i1 %5315, float %5492, float %5487
  %5494 = select i1 %5315, float %5487, float %5492
  %5495 = select i1 %5313, float %5492, float %5486
  %5496 = select i1 %5313, float %5487, float %5493
  %5497 = select i1 %5313, float %5486, float %5494
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 0
  %5500 = fptoui float %5499 to i32
  %5501 = add i32 %5500, 0
  %5502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5503 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5502, %dx.types.Handle %105, float %5359, float %5360, float undef, float undef, i32 0, i32 0, i32 undef, float %5322, float %5323, float undef, float %5326, float %5327, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5504 = extractvalue %dx.types.ResRet.f32 %5503, 0
  %5505 = fsub fast float %5432, %5259
  %5506 = fsub fast float %5433, %5260
  %5507 = fsub fast float %5434, %5261
  %5508 = fmul fast float %5505, %5404
  %5509 = fmul fast float %5506, %5404
  %5510 = fmul fast float %5507, %5404
  %5511 = fadd fast float %5508, %5259
  %5512 = fadd fast float %5509, %5260
  %5513 = fadd fast float %5510, %5261
  %5514 = fsub fast float %5441, %5256
  %5515 = fsub fast float %5442, %5257
  %5516 = fsub fast float %5443, %5258
  %5517 = fmul fast float %5514, %5404
  %5518 = fmul fast float %5515, %5404
  %5519 = fmul fast float %5516, %5404
  %5520 = fadd fast float %5517, %5256
  %5521 = fadd fast float %5518, %5257
  %5522 = fadd fast float %5519, %5258
  %5523 = fadd fast float %5495, %5262
  %5524 = fadd fast float %5496, %5263
  %5525 = fadd fast float %5497, %5264
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5523, float %5524, float %5525, float %5523, float %5524, float %5525)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = call float @dx.op.unary.f32(i32 25, float %5526)  ; Rsqrt(value)
  %5528 = fmul fast float %5527, %5523
  %5529 = fmul fast float %5527, %5524
  %5530 = fmul fast float %5527, %5525
  %5531 = fsub fast float %5528, %5262
  %5532 = fsub fast float %5529, %5263
  %5533 = fsub fast float %5530, %5264
  %5534 = fmul fast float %5531, %5404
  %5535 = fmul fast float %5532, %5404
  %5536 = fmul fast float %5533, %5404
  %5537 = fadd fast float %5534, %5262
  %5538 = fadd fast float %5535, %5263
  %5539 = fadd fast float %5536, %5264
  %5540 = call float @dx.op.binary.f32(i32 36, float %5266, float %5452)  ; FMin(a,b)
  %5541 = fsub fast float %5540, %5266
  %5542 = fmul fast float %5541, %5404
  %5543 = fadd fast float %5542, %5266
  %5544 = fsub fast float %5465, %5265
  %5545 = fmul fast float %5544, %5404
  %5546 = fadd fast float %5545, %5265
  %5547 = fsub fast float %5504, %4708
  %5548 = fsub fast float %5504, %4709
  %5549 = fsub fast float %5504, %4710
  %5550 = fmul fast float %5547, %5404
  %5551 = fmul fast float %5548, %5404
  %5552 = fmul fast float %5549, %5404
  %5553 = fadd fast float %5550, %4708
  %5554 = fadd fast float %5551, %4709
  %5555 = fadd fast float %5552, %4710
  br label %5556

; <label>:5556                                    ; preds = %5402, %5364, %5255, %4969
  %5557 = phi float [ %5520, %5402 ], [ %5256, %5364 ], [ %5256, %5255 ], [ %4664, %4969 ]
  %5558 = phi float [ %5521, %5402 ], [ %5257, %5364 ], [ %5257, %5255 ], [ %4665, %4969 ]
  %5559 = phi float [ %5522, %5402 ], [ %5258, %5364 ], [ %5258, %5255 ], [ %4666, %4969 ]
  %5560 = phi float [ %5511, %5402 ], [ %5259, %5364 ], [ %5259, %5255 ], [ %4704, %4969 ]
  %5561 = phi float [ %5512, %5402 ], [ %5260, %5364 ], [ %5260, %5255 ], [ %4705, %4969 ]
  %5562 = phi float [ %5513, %5402 ], [ %5261, %5364 ], [ %5261, %5255 ], [ %4706, %4969 ]
  %5563 = phi float [ %5537, %5402 ], [ %5262, %5364 ], [ %5262, %5255 ], [ %4622, %4969 ]
  %5564 = phi float [ %5538, %5402 ], [ %5263, %5364 ], [ %5263, %5255 ], [ %4623, %4969 ]
  %5565 = phi float [ %5539, %5402 ], [ %5264, %5364 ], [ %5264, %5255 ], [ %4624, %4969 ]
  %5566 = phi float [ %5553, %5402 ], [ %4708, %5364 ], [ %4708, %5255 ], [ %4708, %4969 ]
  %5567 = phi float [ %5554, %5402 ], [ %4709, %5364 ], [ %4709, %5255 ], [ %4709, %4969 ]
  %5568 = phi float [ %5555, %5402 ], [ %4710, %5364 ], [ %4710, %5255 ], [ %4710, %4969 ]
  %5569 = phi float [ %5546, %5402 ], [ %5265, %5364 ], [ %5265, %5255 ], [ %4667, %4969 ]
  %5570 = phi float [ %5543, %5402 ], [ %5266, %5364 ], [ %5266, %5255 ], [ %4640, %4969 ]
  %5571 = fcmp fast une float %4974, 0.000000e+00
  %5572 = call float @dx.op.dot3.f32(i32 55, float %188, float %189, float %190, float %188, float %189, float %190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5573 = call float @dx.op.unary.f32(i32 25, float %5572)  ; Rsqrt(value)
  br i1 %5571, label %5581, label %5574

; <label>:5574                                    ; preds = %5556
  %5575 = fmul fast float %5573, %188
  %5576 = fmul fast float %5573, %189
  %5577 = fmul fast float %5573, %190
  %5578 = fsub fast float -0.000000e+00, %5575
  %5579 = fsub fast float -0.000000e+00, %5576
  %5580 = fsub fast float -0.000000e+00, %5577
  br label %5941

; <label>:5581                                    ; preds = %5556
  %5582 = fmul fast float %188, %5573
  %5583 = fsub fast float -0.000000e+00, %5582
  %5584 = fmul fast float %189, %5573
  %5585 = fsub fast float -0.000000e+00, %5584
  %5586 = fmul fast float %190, %5573
  %5587 = fsub fast float -0.000000e+00, %5586
  %5588 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5585, float %5587, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5590 = fmul fast float %4974, 2.500000e+00
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = fmul fast float %4974, 0x4013FFFFE0000000
  %5593 = fadd fast float %5592, 0xBFFFFFFFE0000000
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = fmul fast float %4974, 0x4004000020000000
  %5596 = fadd fast float %5595, 0xBFF8000040000000
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5598 = fmul fast float %4646, 1.000000e+01
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = fmul fast float %5599, 2.000000e+00
  %5601 = fsub fast float 3.000000e+00, %5600
  %5602 = fmul fast float %5599, %5599
  %5603 = fmul fast float %5602, %5601
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = fsub fast float 0x3FE3333340000000, %5569
  %5606 = fmul fast float %5605, 0x400AAAAAA0000000
  %5607 = call float @dx.op.unary.f32(i32 7, float %5606)  ; Saturate(value)
  %5608 = fmul fast float %5604, %5607
  %5609 = fmul fast float %5560, 0x3FEA2B8620000000
  %5610 = fmul fast float %5561, 0x3FEA2B8620000000
  %5611 = fmul fast float %5562, 0x3FEA2B8620000000
  %5612 = fadd fast float %5609, 0x3FC81DFBA0000000
  %5613 = fmul fast float %5612, %5560
  %5614 = fadd fast float %5613, 0x3F910E6020000000
  %5615 = fadd fast float %5610, 0x3FC81DFBA0000000
  %5616 = fmul fast float %5615, %5561
  %5617 = fadd fast float %5616, 0x3F910E6020000000
  %5618 = fadd fast float %5611, 0x3FC81DFBA0000000
  %5619 = fmul fast float %5618, %5562
  %5620 = fadd fast float %5619, 0x3F910E6020000000
  %5621 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5622 = call float @dx.op.unary.f32(i32 7, float %5617)  ; Saturate(value)
  %5623 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5624 = fsub fast float %5621, %5560
  %5625 = fsub fast float %5622, %5561
  %5626 = fsub fast float %5623, %5562
  %5627 = fmul fast float %5624, %5591
  %5628 = fmul fast float %5627, %5608
  %5629 = fmul fast float %5625, %5591
  %5630 = fmul fast float %5629, %5608
  %5631 = fmul fast float %5626, %5591
  %5632 = fmul fast float %5631, %5608
  %5633 = fadd fast float %5628, %5560
  %5634 = fadd fast float %5630, %5561
  %5635 = fadd fast float %5632, %5562
  %5636 = fmul fast float %5570, %5570
  %5637 = fmul fast float %5636, %5636
  %5638 = fadd fast float %5594, 1.000000e+00
  %5639 = fsub fast float %5638, %5608
  %5640 = call float @dx.op.unary.f32(i32 7, float %5639)  ; Saturate(value)
  %5641 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fsub fast float 1.000000e+00, %5637
  %5644 = call float @dx.op.binary.f32(i32 36, float %5640, float %5643)  ; FMin(a,b)
  %5645 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5646 = call float @dx.op.binary.f32(i32 35, float %5644, float %5645)  ; FMax(a,b)
  %5647 = fadd fast float %5642, 0xBFE4CCCCC0000000
  %5648 = fmul fast float %5647, 0x4006DB6DA0000000
  %5649 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5650 = fmul fast float %5649, 2.000000e+00
  %5651 = fsub fast float 3.000000e+00, %5650
  %5652 = bitcast float %5557 to i32
  %5653 = ashr i32 %5652, 1
  %5654 = add nsw i32 %5653, 532487669
  %5655 = bitcast i32 %5654 to float
  %5656 = fsub fast float 1.000000e+00, %5655
  %5657 = bitcast float %5656 to i32
  %5658 = sub nsw i32 2129859010, %5657
  %5659 = bitcast i32 %5658 to float
  %5660 = fmul fast float %5659, 2.000000e+00
  %5661 = bitcast float %5558 to i32
  %5662 = ashr i32 %5661, 1
  %5663 = add nsw i32 %5662, 532487669
  %5664 = bitcast i32 %5663 to float
  %5665 = fsub fast float 1.000000e+00, %5664
  %5666 = bitcast float %5665 to i32
  %5667 = sub nsw i32 2129859010, %5666
  %5668 = bitcast i32 %5667 to float
  %5669 = fmul fast float %5668, 2.000000e+00
  %5670 = bitcast float %5559 to i32
  %5671 = ashr i32 %5670, 1
  %5672 = add nsw i32 %5671, 532487669
  %5673 = bitcast i32 %5672 to float
  %5674 = fsub fast float 1.000000e+00, %5673
  %5675 = bitcast float %5674 to i32
  %5676 = sub nsw i32 2129859010, %5675
  %5677 = bitcast i32 %5676 to float
  %5678 = fmul fast float %5677, 2.000000e+00
  %5679 = fsub fast float 0x4002A9FBE0000000, %5660
  %5680 = fadd fast float %5660, 0x3FD54FDF00000000
  %5681 = bitcast float %5680 to i32
  %5682 = sub nsw i32 2129859010, %5681
  %5683 = bitcast i32 %5682 to float
  %5684 = fmul fast float %5683, %5679
  %5685 = fmul fast float %5684, %5684
  %5686 = fsub fast float 0x4002A9FBE0000000, %5669
  %5687 = fadd fast float %5669, 0x3FD54FDF00000000
  %5688 = bitcast float %5687 to i32
  %5689 = sub nsw i32 2129859010, %5688
  %5690 = bitcast i32 %5689 to float
  %5691 = fmul fast float %5690, %5686
  %5692 = fmul fast float %5691, %5691
  %5693 = fsub fast float 0x4002A9FBE0000000, %5678
  %5694 = fadd fast float %5678, 0x3FD54FDF00000000
  %5695 = bitcast float %5694 to i32
  %5696 = sub nsw i32 2129859010, %5695
  %5697 = bitcast i32 %5696 to float
  %5698 = fmul fast float %5697, %5693
  %5699 = fmul fast float %5698, %5698
  %5700 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5685)  ; FMax(a,b)
  %5701 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5692)  ; FMax(a,b)
  %5702 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5699)  ; FMax(a,b)
  %5703 = fsub fast float 1.000000e+00, %5588
  %5704 = fadd fast float %5703, %5604
  %5705 = call float @dx.op.unary.f32(i32 7, float %5704)  ; Saturate(value)
  %5706 = fsub fast float 1.000000e+00, %4793
  %5707 = fmul fast float %5646, %5706
  %5708 = fmul fast float %5649, %5649
  %5709 = fmul fast float %5708, %5707
  %5710 = fmul fast float %5709, %5651
  %5711 = fmul fast float %5706, 0xBFE99999A0000000
  %5712 = fmul fast float %5711, %5591
  %5713 = fmul fast float %5712, %5608
  %5714 = fadd fast float %5713, 1.000000e+00
  %5715 = fadd fast float %5569, -1.000000e+00
  %5716 = fmul fast float %5714, %5715
  %5717 = fadd fast float %5716, 1.000000e+00
  %5718 = fsub fast float %5700, %5557
  %5719 = fsub fast float %5701, %5558
  %5720 = fsub fast float %5702, %5559
  %5721 = fmul fast float %5710, %5718
  %5722 = fmul fast float %5710, %5719
  %5723 = fmul fast float %5710, %5720
  %5724 = fadd fast float %5721, %5557
  %5725 = fadd fast float %5722, %5558
  %5726 = fadd fast float %5723, %5559
  %5727 = fsub fast float %116, %5563
  %5728 = fsub fast float %117, %5564
  %5729 = fsub fast float %118, %5565
  %5730 = fmul fast float %5710, %5727
  %5731 = fmul fast float %5710, %5728
  %5732 = fmul fast float %5710, %5729
  %5733 = fadd fast float %5730, %5563
  %5734 = fadd fast float %5731, %5564
  %5735 = fadd fast float %5732, %5565
  %5736 = fmul fast float %5710, %5705
  %5737 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5738 = fsub fast float 1.000000e+00, %5737
  %5739 = fmul fast float %5736, %5738
  %5740 = fadd fast float %5739, %5737
  %5741 = fsub fast float 1.000000e+00, %5570
  %5742 = fmul fast float %5710, %5741
  %5743 = fadd fast float %5742, %5570
  %5744 = fcmp fast une float %4975, 0.000000e+00
  %5745 = fcmp fast ogt float %5642, 0x3FE4CCCCC0000000
  %5746 = and i1 %5744, %5745
  br i1 %5746, label %5747, label %5933

; <label>:5747                                    ; preds = %5581
  %5748 = extractvalue %dx.types.CBufRet.f32 %5589, 1
  %5749 = fadd fast float %5748, %189
  %5750 = extractvalue %dx.types.CBufRet.f32 %5589, 0
  %5751 = fadd fast float %5750, %188
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5754 = fadd fast float %5753, 0x3FC0A3D700000000
  %5755 = fmul fast float %5754, 0x3FF6666660000000
  %5756 = fmul fast float %5753, 0x3FF2978D40000000
  %5757 = fmul fast float %5753, 0x3FF5BA5E40000000
  %5758 = fmul fast float %5753, 0x3FF94FDF40000000
  %5759 = call float @dx.op.unary.f32(i32 6, float %5751)  ; FAbs(value)
  %5760 = call float @dx.op.unary.f32(i32 6, float %5749)  ; FAbs(value)
  %5761 = fmul fast float %5759, 0x3F8EB851E0000000
  %5762 = fmul fast float %5760, 0x3F8EB851E0000000
  %5763 = fmul fast float %4975, 4.000000e+00
  %5764 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  %5765 = fadd fast float %5761, 2.500000e-01
  %5766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5765, float %5762, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5767 = extractvalue %dx.types.ResRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.ResRet.f32 %5766, 1
  %5769 = extractvalue %dx.types.ResRet.f32 %5766, 2
  %5770 = extractvalue %dx.types.ResRet.f32 %5766, 3
  %5771 = fmul fast float %5768, 2.000000e+00
  %5772 = fmul fast float %5769, 2.000000e+00
  %5773 = fadd fast float %5771, -1.000000e+00
  %5774 = fadd fast float %5772, -1.000000e+00
  %5775 = fsub fast float 1.000000e+00, %5764
  %5776 = fmul fast float %5775, 8.000000e+00
  %5777 = call float @dx.op.unary.f32(i32 21, float %5776)  ; Exp(value)
  %5778 = fmul fast float %5770, %5777
  %5779 = fadd fast float %5755, -1.000000e+00
  %5780 = fadd fast float %5779, %5770
  %5781 = fadd fast float %5780, %5778
  %5782 = frem fast float %5781, %5777
  %5783 = fcmp fast ole float %5782, 1.000000e+00
  %5784 = call float @dx.op.unary.f32(i32 22, float %5782)  ; Frc(value)
  %5785 = select i1 %5783, float %5784, float 0.000000e+00
  %5786 = fadd fast float %5767, -1.000000e+00
  %5787 = fadd fast float %5786, %5785
  %5788 = fsub fast float 1.000000e+00, %5785
  %5789 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5790 = fmul fast float %5789, %5767
  %5791 = fmul fast float %5787, 8.000000e+00
  %5792 = call float @dx.op.binary.f32(i32 35, float %5791, float 0.000000e+00)  ; FMax(a,b)
  %5793 = call float @dx.op.binary.f32(i32 36, float %5792, float 4.000000e+00)  ; FMin(a,b)
  %5794 = fmul fast float %5793, 0x400921FB60000000
  %5795 = call float @dx.op.unary.f32(i32 13, float %5794)  ; Sin(value)
  %5796 = fadd fast float %5785, -1.000000e+00
  %5797 = fmul fast float %5790, %5796
  %5798 = fmul fast float %5797, %5795
  %5799 = fmul fast float %5798, %5773
  %5800 = fmul fast float %5798, %5774
  %5801 = fadd fast float %5763, -1.000000e+00
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = fadd fast float %5761, 0xBFE19999A0000000
  %5804 = fadd fast float %5762, 0x3FD3D70A40000000
  %5805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5803, float %5804, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5806 = extractvalue %dx.types.ResRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.ResRet.f32 %5805, 1
  %5808 = extractvalue %dx.types.ResRet.f32 %5805, 2
  %5809 = extractvalue %dx.types.ResRet.f32 %5805, 3
  %5810 = fmul fast float %5807, 2.000000e+00
  %5811 = fmul fast float %5808, 2.000000e+00
  %5812 = fadd fast float %5810, -1.000000e+00
  %5813 = fadd fast float %5811, -1.000000e+00
  %5814 = fsub fast float 1.000000e+00, %5802
  %5815 = fmul fast float %5814, 8.000000e+00
  %5816 = call float @dx.op.unary.f32(i32 21, float %5815)  ; Exp(value)
  %5817 = fmul fast float %5809, %5816
  %5818 = fadd fast float %5756, 0xBFE5B22D00000000
  %5819 = fadd fast float %5818, %5809
  %5820 = fadd fast float %5819, %5817
  %5821 = frem fast float %5820, %5816
  %5822 = fcmp fast ole float %5821, 1.000000e+00
  %5823 = call float @dx.op.unary.f32(i32 22, float %5821)  ; Frc(value)
  %5824 = select i1 %5822, float %5823, float 0.000000e+00
  %5825 = fadd fast float %5806, -1.000000e+00
  %5826 = fadd fast float %5825, %5824
  %5827 = fsub fast float 1.000000e+00, %5824
  %5828 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5829 = fmul fast float %5828, %5806
  %5830 = fmul fast float %5826, 8.000000e+00
  %5831 = call float @dx.op.binary.f32(i32 35, float %5830, float 0.000000e+00)  ; FMax(a,b)
  %5832 = call float @dx.op.binary.f32(i32 36, float %5831, float 4.000000e+00)  ; FMin(a,b)
  %5833 = fmul fast float %5832, 0x400921FB60000000
  %5834 = call float @dx.op.unary.f32(i32 13, float %5833)  ; Sin(value)
  %5835 = fadd fast float %5824, -1.000000e+00
  %5836 = fmul fast float %5829, %5835
  %5837 = fmul fast float %5836, %5834
  %5838 = fmul fast float %5837, %5812
  %5839 = fmul fast float %5837, %5813
  %5840 = fadd fast float %5763, -2.000000e+00
  %5841 = call float @dx.op.unary.f32(i32 7, float %5840)  ; Saturate(value)
  %5842 = fadd fast float %5761, 0x3FE3333340000000
  %5843 = fadd fast float %5762, 0x3FEB333340000000
  %5844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5842, float %5843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5845 = extractvalue %dx.types.ResRet.f32 %5844, 0
  %5846 = extractvalue %dx.types.ResRet.f32 %5844, 1
  %5847 = extractvalue %dx.types.ResRet.f32 %5844, 2
  %5848 = extractvalue %dx.types.ResRet.f32 %5844, 3
  %5849 = fmul fast float %5846, 2.000000e+00
  %5850 = fmul fast float %5847, 2.000000e+00
  %5851 = fadd fast float %5849, -1.000000e+00
  %5852 = fadd fast float %5850, -1.000000e+00
  %5853 = fsub fast float 1.000000e+00, %5841
  %5854 = fmul fast float %5853, 8.000000e+00
  %5855 = call float @dx.op.unary.f32(i32 21, float %5854)  ; Exp(value)
  %5856 = fmul fast float %5848, %5855
  %5857 = fadd fast float %5757, 0xBFD5E35400000000
  %5858 = fadd fast float %5857, %5848
  %5859 = fadd fast float %5858, %5856
  %5860 = frem fast float %5859, %5855
  %5861 = fcmp fast ole float %5860, 1.000000e+00
  %5862 = call float @dx.op.unary.f32(i32 22, float %5860)  ; Frc(value)
  %5863 = select i1 %5861, float %5862, float 0.000000e+00
  %5864 = fadd fast float %5845, -1.000000e+00
  %5865 = fadd fast float %5864, %5863
  %5866 = fsub fast float 1.000000e+00, %5863
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = fmul fast float %5867, %5845
  %5869 = fmul fast float %5865, 8.000000e+00
  %5870 = call float @dx.op.binary.f32(i32 35, float %5869, float 0.000000e+00)  ; FMax(a,b)
  %5871 = call float @dx.op.binary.f32(i32 36, float %5870, float 4.000000e+00)  ; FMin(a,b)
  %5872 = fmul fast float %5871, 0x400921FB60000000
  %5873 = call float @dx.op.unary.f32(i32 13, float %5872)  ; Sin(value)
  %5874 = fadd fast float %5863, -1.000000e+00
  %5875 = fmul fast float %5868, %5874
  %5876 = fmul fast float %5875, %5873
  %5877 = fmul fast float %5876, %5851
  %5878 = fmul fast float %5876, %5852
  %5879 = fadd fast float %5763, -3.000000e+00
  %5880 = call float @dx.op.unary.f32(i32 7, float %5879)  ; Saturate(value)
  %5881 = fadd fast float %5761, 5.000000e-01
  %5882 = fadd fast float %5762, -7.500000e-01
  %5883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %43, float %5881, float %5882, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5884 = extractvalue %dx.types.ResRet.f32 %5883, 0
  %5885 = extractvalue %dx.types.ResRet.f32 %5883, 1
  %5886 = extractvalue %dx.types.ResRet.f32 %5883, 2
  %5887 = extractvalue %dx.types.ResRet.f32 %5883, 3
  %5888 = fmul fast float %5885, 2.000000e+00
  %5889 = fmul fast float %5886, 2.000000e+00
  %5890 = fadd fast float %5888, -1.000000e+00
  %5891 = fadd fast float %5889, -1.000000e+00
  %5892 = fsub fast float 1.000000e+00, %5880
  %5893 = fmul fast float %5892, 8.000000e+00
  %5894 = call float @dx.op.unary.f32(i32 21, float %5893)  ; Exp(value)
  %5895 = fmul fast float %5887, %5894
  %5896 = fadd fast float %5758, 0xBF78938000000000
  %5897 = fadd fast float %5896, %5887
  %5898 = fadd fast float %5897, %5895
  %5899 = frem fast float %5898, %5894
  %5900 = fcmp fast ole float %5899, 1.000000e+00
  %5901 = call float @dx.op.unary.f32(i32 22, float %5899)  ; Frc(value)
  %5902 = select i1 %5900, float %5901, float 0.000000e+00
  %5903 = fadd fast float %5884, -1.000000e+00
  %5904 = fadd fast float %5903, %5902
  %5905 = fsub fast float 1.000000e+00, %5902
  %5906 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5907 = fmul fast float %5906, %5884
  %5908 = fmul fast float %5904, 8.000000e+00
  %5909 = call float @dx.op.binary.f32(i32 35, float %5908, float 0.000000e+00)  ; FMax(a,b)
  %5910 = call float @dx.op.binary.f32(i32 36, float %5909, float 4.000000e+00)  ; FMin(a,b)
  %5911 = fmul fast float %5910, 0x400921FB60000000
  %5912 = call float @dx.op.unary.f32(i32 13, float %5911)  ; Sin(value)
  %5913 = fadd fast float %5902, -1.000000e+00
  %5914 = fmul fast float %5907, %5913
  %5915 = fmul fast float %5914, %5912
  %5916 = fmul fast float %5915, %5890
  %5917 = fmul fast float %5915, %5891
  %5918 = fadd fast float %5838, %5799
  %5919 = fadd fast float %5839, %5800
  %5920 = fadd fast float %5918, %5877
  %5921 = fadd fast float %5919, %5878
  %5922 = fadd fast float %5920, %5916
  %5923 = fadd fast float %5921, %5917
  %5924 = fmul fast float %5642, 0x4006DB6DA0000000
  %5925 = fadd fast float %5924, 0xBFFDB6DB40000000
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5927 = fmul fast float %5926, %5591
  %5928 = fmul fast float %5927, %5706
  %5929 = fmul fast float %5928, %5922
  %5930 = fmul fast float %5928, %5923
  %5931 = fadd fast float %5929, %5733
  %5932 = fadd fast float %5930, %5734
  br label %5933

; <label>:5933                                    ; preds = %5747, %5581
  %5934 = phi float [ %5733, %5581 ], [ %5931, %5747 ]
  %5935 = phi float [ %5734, %5581 ], [ %5932, %5747 ]
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5934, float %5935, float %5735, float %5934, float %5935, float %5735)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = call float @dx.op.unary.f32(i32 25, float %5936)  ; Rsqrt(value)
  %5938 = fmul fast float %5937, %5934
  %5939 = fmul fast float %5937, %5935
  %5940 = fmul fast float %5937, %5735
  br label %5941

; <label>:5941                                    ; preds = %5933, %5574
  %5942 = phi float [ %5580, %5574 ], [ %5587, %5933 ]
  %5943 = phi float [ %5579, %5574 ], [ %5585, %5933 ]
  %5944 = phi float [ %5578, %5574 ], [ %5583, %5933 ]
  %5945 = phi float [ %5577, %5574 ], [ %5586, %5933 ]
  %5946 = phi float [ %5576, %5574 ], [ %5584, %5933 ]
  %5947 = phi float [ %5575, %5574 ], [ %5582, %5933 ]
  %5948 = phi float [ %5557, %5574 ], [ %5724, %5933 ]
  %5949 = phi float [ %5558, %5574 ], [ %5725, %5933 ]
  %5950 = phi float [ %5559, %5574 ], [ %5726, %5933 ]
  %5951 = phi float [ %5560, %5574 ], [ %5633, %5933 ]
  %5952 = phi float [ %5561, %5574 ], [ %5634, %5933 ]
  %5953 = phi float [ %5562, %5574 ], [ %5635, %5933 ]
  %5954 = phi float [ %5563, %5574 ], [ %5938, %5933 ]
  %5955 = phi float [ %5564, %5574 ], [ %5939, %5933 ]
  %5956 = phi float [ %5565, %5574 ], [ %5940, %5933 ]
  %5957 = phi float [ %5569, %5574 ], [ %5740, %5933 ]
  %5958 = phi float [ %5570, %5574 ], [ %5743, %5933 ]
  %5959 = select i1 %249, float 0.000000e+00, float %5950
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5954, float %5955, float %5956, float %5944, float %5943, float %5942)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = call float @dx.op.unary.f32(i32 7, float %5960)  ; Saturate(value)
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5947, float %5946, float %5945, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = fmul fast float %5962, 2.000000e+00
  %5964 = fmul fast float %5963, %5954
  %5965 = fmul fast float %5963, %5955
  %5966 = fmul fast float %5963, %5956
  %5967 = fsub fast float %5947, %5964
  %5968 = fsub fast float %5946, %5965
  %5969 = fsub fast float %5945, %5966
  %5970 = call float @dx.op.binary.f32(i32 36, float %5958, float 1.000000e+00)  ; FMin(a,b)
  %5971 = fsub fast float 1.000000e+00, %5970
  %5972 = bitcast float %5971 to i32
  %5973 = ashr i32 %5972, 1
  %5974 = add nsw i32 %5973, 532487669
  %5975 = bitcast i32 %5974 to float
  %5976 = fsub fast float 1.000000e+00, %5957
  %5977 = call float @dx.op.binary.f32(i32 35, float %5976, float 0x3F847AE140000000)  ; FMax(a,b)
  %5978 = fmul fast float %5977, %5977
  %5979 = fmul fast float %5978, %5978
  %5980 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %44, float %5975, float %5979, float %5980, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = fsub fast float 1.000000e+00, %5958
  %5984 = bitcast float %5983 to i32
  %5985 = sub nsw i32 2129859010, %5984
  %5986 = bitcast i32 %5985 to float
  %5987 = call float @dx.op.dot3.f32(i32 55, float %76, float %72, float %68, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5988 = fmul fast float %5987, 0x3FD20DD760000000
  %5989 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %76)  ; FMax(a,b)
  %5990 = call float @dx.op.dot3.f32(i32 55, float %77, float %78, float %79, float %77, float %78, float %79)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = fcmp fast oeq float %5990, 0.000000e+00
  %5992 = fcmp fast oeq float %5989, 0.000000e+00
  %5993 = or i1 %5992, %5991
  br i1 %5993, label %6023, label %5994

; <label>:5994                                    ; preds = %5941
  %5995 = fsub fast float -0.000000e+00, %79
  %5996 = fsub fast float -0.000000e+00, %77
  %5997 = call float @dx.op.unary.f32(i32 24, float %5990)  ; Sqrt(value)
  %5998 = fdiv fast float %5997, %5989
  %5999 = fcmp fast ogt float %5998, 0x3FFB6F8900000000
  %6000 = select i1 %5999, float 0x3FFB6F8900000000, float %5998
  %6001 = fmul fast float %6000, 0x3FE8A23460000000
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6003 = call float @dx.op.binary.f32(i32 35, float %6000, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6004 = fmul fast float %6002, %5989
  %6005 = fmul fast float %6003, 0x3FF279A740000000
  %6006 = fadd fast float %6005, -1.000000e+00
  %6007 = call float @dx.op.dot3.f32(i32 55, float %5995, float %5996, float %78, float %5995, float %5996, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = call float @dx.op.unary.f32(i32 25, float %6007)  ; Rsqrt(value)
  %6009 = fmul fast float %6008, %5995
  %6010 = fmul fast float %6008, %5996
  %6011 = fmul fast float %6008, %78
  %6012 = fmul fast float %6006, %6006
  %6013 = fsub fast float 1.000000e+00, %6012
  %6014 = fmul fast float %6003, 0x40005F8BE0000000
  %6015 = fsub fast float 0x400C5BF8A0000000, %6014
  %6016 = fdiv fast float %6004, %6015
  %6017 = fmul fast float %6016, 0x3FEE31C3C0000000
  %6018 = fmul fast float %6017, %6013
  %6019 = fmul fast float %6003, 0x3FDACB7480000000
  %6020 = fadd fast float %6019, 0xBFD7347680000000
  %6021 = fmul fast float %6020, %6016
  %6022 = fmul fast float %6021, %6013
  br label %6023

; <label>:6023                                    ; preds = %5994, %5941
  %6024 = phi float [ %6009, %5994 ], [ 0.000000e+00, %5941 ]
  %6025 = phi float [ %6010, %5994 ], [ 0.000000e+00, %5941 ]
  %6026 = phi float [ %6011, %5994 ], [ 0.000000e+00, %5941 ]
  %6027 = phi float [ %6018, %5994 ], [ 0.000000e+00, %5941 ]
  %6028 = phi float [ %6022, %5994 ], [ 0.000000e+00, %5941 ]
  %6029 = call float @dx.op.dot3.f32(i32 55, float %6024, float %6025, float %6026, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %6030 = fmul fast float %6029, 0x3FDF454380000000
  %6031 = fmul fast float %6029, %6029
  %6032 = fmul fast float %6031, 0x3FEE471020000000
  %6033 = fadd fast float %6032, 0xBFD42F6020000000
  %6034 = fmul fast float %5989, 0x3FD20DD760000000
  %6035 = fmul fast float %6033, %6028
  %6036 = fadd fast float %6035, %6034
  %6037 = fmul fast float %6030, %6027
  %6038 = fadd fast float %6036, %6037
  %6039 = fsub fast float %6036, %6037
  %6040 = call float @dx.op.dot3.f32(i32 55, float %6024, float %6025, float %6026, float %5967, float %5968, float %5969)  ; Dot3(ax,ay,az,bx,by,bz)
  %6041 = fmul fast float %6040, 0x3FDF454380000000
  %6042 = fmul fast float %6040, %6040
  %6043 = fmul fast float %6042, 0x3FEE471020000000
  %6044 = fadd fast float %6043, 0xBFD42F6020000000
  %6045 = call float @dx.op.dot3.f32(i32 55, float %5989, float %6027, float %6028, float 0x3FD20DD760000000, float %6041, float %6044)  ; Dot3(ax,ay,az,bx,by,bz)
  %6046 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %72)  ; FMax(a,b)
  %6047 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %6048 = fcmp fast oeq float %6047, 0.000000e+00
  %6049 = fcmp fast oeq float %6046, 0.000000e+00
  %6050 = or i1 %6049, %6048
  br i1 %6050, label %6080, label %6051

; <label>:6051                                    ; preds = %6023
  %6052 = fsub fast float -0.000000e+00, %75
  %6053 = fsub fast float -0.000000e+00, %73
  %6054 = call float @dx.op.unary.f32(i32 24, float %6047)  ; Sqrt(value)
  %6055 = fdiv fast float %6054, %6046
  %6056 = fcmp fast ogt float %6055, 0x3FFB6F8900000000
  %6057 = select i1 %6056, float 0x3FFB6F8900000000, float %6055
  %6058 = fmul fast float %6057, 0x3FE8A23460000000
  %6059 = call float @dx.op.unary.f32(i32 7, float %6058)  ; Saturate(value)
  %6060 = call float @dx.op.binary.f32(i32 35, float %6057, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6061 = fmul fast float %6059, %6046
  %6062 = fmul fast float %6060, 0x3FF279A740000000
  %6063 = fadd fast float %6062, -1.000000e+00
  %6064 = call float @dx.op.dot3.f32(i32 55, float %6052, float %6053, float %74, float %6052, float %6053, float %74)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = call float @dx.op.unary.f32(i32 25, float %6064)  ; Rsqrt(value)
  %6066 = fmul fast float %6065, %6052
  %6067 = fmul fast float %6065, %6053
  %6068 = fmul fast float %6065, %74
  %6069 = fmul fast float %6063, %6063
  %6070 = fsub fast float 1.000000e+00, %6069
  %6071 = fmul fast float %6060, 0x40005F8BE0000000
  %6072 = fsub fast float 0x400C5BF8A0000000, %6071
  %6073 = fdiv fast float %6061, %6072
  %6074 = fmul fast float %6073, 0x3FEE31C3C0000000
  %6075 = fmul fast float %6074, %6070
  %6076 = fmul fast float %6060, 0x3FDACB7480000000
  %6077 = fadd fast float %6076, 0xBFD7347680000000
  %6078 = fmul fast float %6077, %6073
  %6079 = fmul fast float %6078, %6070
  br label %6080

; <label>:6080                                    ; preds = %6051, %6023
  %6081 = phi float [ %6066, %6051 ], [ 0.000000e+00, %6023 ]
  %6082 = phi float [ %6067, %6051 ], [ 0.000000e+00, %6023 ]
  %6083 = phi float [ %6068, %6051 ], [ 0.000000e+00, %6023 ]
  %6084 = phi float [ %6075, %6051 ], [ 0.000000e+00, %6023 ]
  %6085 = phi float [ %6079, %6051 ], [ 0.000000e+00, %6023 ]
  %6086 = call float @dx.op.dot3.f32(i32 55, float %6081, float %6082, float %6083, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %6087 = fmul fast float %6086, 0x3FDF454380000000
  %6088 = fmul fast float %6086, %6086
  %6089 = fmul fast float %6088, 0x3FEE471020000000
  %6090 = fadd fast float %6089, 0xBFD42F6020000000
  %6091 = fmul fast float %6046, 0x3FD20DD760000000
  %6092 = fmul fast float %6090, %6085
  %6093 = fadd fast float %6092, %6091
  %6094 = fmul fast float %6087, %6084
  %6095 = fadd fast float %6093, %6094
  %6096 = fsub fast float %6093, %6094
  %6097 = call float @dx.op.dot3.f32(i32 55, float %6081, float %6082, float %6083, float %5967, float %5968, float %5969)  ; Dot3(ax,ay,az,bx,by,bz)
  %6098 = fmul fast float %6097, 0x3FDF454380000000
  %6099 = fmul fast float %6097, %6097
  %6100 = fmul fast float %6099, 0x3FEE471020000000
  %6101 = fadd fast float %6100, 0xBFD42F6020000000
  %6102 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6084, float %6085, float 0x3FD20DD760000000, float %6098, float %6101)  ; Dot3(ax,ay,az,bx,by,bz)
  %6103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %68)  ; FMax(a,b)
  %6104 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %6105 = fcmp fast oeq float %6104, 0.000000e+00
  %6106 = fcmp fast oeq float %6103, 0.000000e+00
  %6107 = or i1 %6106, %6105
  br i1 %6107, label %6137, label %6108

; <label>:6108                                    ; preds = %6080
  %6109 = fsub fast float -0.000000e+00, %71
  %6110 = fsub fast float -0.000000e+00, %69
  %6111 = call float @dx.op.unary.f32(i32 24, float %6104)  ; Sqrt(value)
  %6112 = fdiv fast float %6111, %6103
  %6113 = fcmp fast ogt float %6112, 0x3FFB6F8900000000
  %6114 = select i1 %6113, float 0x3FFB6F8900000000, float %6112
  %6115 = fmul fast float %6114, 0x3FE8A23460000000
  %6116 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  %6117 = call float @dx.op.binary.f32(i32 35, float %6114, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6118 = fmul fast float %6116, %6103
  %6119 = fmul fast float %6117, 0x3FF279A740000000
  %6120 = fadd fast float %6119, -1.000000e+00
  %6121 = call float @dx.op.dot3.f32(i32 55, float %6109, float %6110, float %70, float %6109, float %6110, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = call float @dx.op.unary.f32(i32 25, float %6121)  ; Rsqrt(value)
  %6123 = fmul fast float %6122, %6109
  %6124 = fmul fast float %6122, %6110
  %6125 = fmul fast float %6122, %70
  %6126 = fmul fast float %6120, %6120
  %6127 = fsub fast float 1.000000e+00, %6126
  %6128 = fmul fast float %6117, 0x40005F8BE0000000
  %6129 = fsub fast float 0x400C5BF8A0000000, %6128
  %6130 = fdiv fast float %6118, %6129
  %6131 = fmul fast float %6130, 0x3FEE31C3C0000000
  %6132 = fmul fast float %6131, %6127
  %6133 = fmul fast float %6117, 0x3FDACB7480000000
  %6134 = fadd fast float %6133, 0xBFD7347680000000
  %6135 = fmul fast float %6134, %6130
  %6136 = fmul fast float %6135, %6127
  br label %6137

; <label>:6137                                    ; preds = %6108, %6080
  %6138 = phi float [ %6123, %6108 ], [ 0.000000e+00, %6080 ]
  %6139 = phi float [ %6124, %6108 ], [ 0.000000e+00, %6080 ]
  %6140 = phi float [ %6125, %6108 ], [ 0.000000e+00, %6080 ]
  %6141 = phi float [ %6132, %6108 ], [ 0.000000e+00, %6080 ]
  %6142 = phi float [ %6136, %6108 ], [ 0.000000e+00, %6080 ]
  %6143 = call float @dx.op.dot3.f32(i32 55, float %6138, float %6139, float %6140, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %6144 = fmul fast float %6143, 0x3FDF454380000000
  %6145 = fmul fast float %6143, %6143
  %6146 = fmul fast float %6145, 0x3FEE471020000000
  %6147 = fadd fast float %6146, 0xBFD42F6020000000
  %6148 = fmul fast float %6103, 0x3FD20DD760000000
  %6149 = fmul fast float %6147, %6142
  %6150 = fadd fast float %6149, %6148
  %6151 = fmul fast float %6144, %6141
  %6152 = fadd fast float %6150, %6151
  %6153 = fsub fast float %6150, %6151
  %6154 = call float @dx.op.dot3.f32(i32 55, float %6138, float %6139, float %6140, float %5967, float %5968, float %5969)  ; Dot3(ax,ay,az,bx,by,bz)
  %6155 = fmul fast float %6154, 0x3FDF454380000000
  %6156 = fmul fast float %6154, %6154
  %6157 = fmul fast float %6156, 0x3FEE471020000000
  %6158 = fadd fast float %6157, 0xBFD42F6020000000
  %6159 = call float @dx.op.dot3.f32(i32 55, float %6103, float %6141, float %6142, float 0x3FD20DD760000000, float %6155, float %6158)  ; Dot3(ax,ay,az,bx,by,bz)
  %6160 = call float @dx.op.binary.f32(i32 35, float %6038, float 0.000000e+00)  ; FMax(a,b)
  %6161 = call float @dx.op.binary.f32(i32 35, float %6095, float 0.000000e+00)  ; FMax(a,b)
  %6162 = call float @dx.op.binary.f32(i32 35, float %6152, float 0.000000e+00)  ; FMax(a,b)
  %6163 = call float @dx.op.binary.f32(i32 35, float %6039, float 0.000000e+00)  ; FMax(a,b)
  %6164 = call float @dx.op.binary.f32(i32 35, float %6096, float 0.000000e+00)  ; FMax(a,b)
  %6165 = call float @dx.op.binary.f32(i32 35, float %6153, float 0.000000e+00)  ; FMax(a,b)
  %6166 = call float @dx.op.binary.f32(i32 35, float %6045, float 0.000000e+00)  ; FMax(a,b)
  %6167 = call float @dx.op.binary.f32(i32 35, float %6102, float 0.000000e+00)  ; FMax(a,b)
  %6168 = call float @dx.op.binary.f32(i32 35, float %6159, float 0.000000e+00)  ; FMax(a,b)
  %6169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.f32 %6169, 0
  %6171 = call float @dx.op.binary.f32(i32 36, float %5951, float %6170)  ; FMin(a,b)
  %6172 = fmul fast float %6171, %5971
  %6173 = fsub fast float 1.000000e+00, %6172
  %6174 = bitcast float %6173 to i32
  %6175 = sub nsw i32 2129859010, %6174
  %6176 = bitcast i32 %6175 to float
  %6177 = call float @dx.op.binary.f32(i32 36, float %5952, float %6170)  ; FMin(a,b)
  %6178 = fmul fast float %6177, %5971
  %6179 = fsub fast float 1.000000e+00, %6178
  %6180 = bitcast float %6179 to i32
  %6181 = sub nsw i32 2129859010, %6180
  %6182 = bitcast i32 %6181 to float
  %6183 = call float @dx.op.binary.f32(i32 36, float %5953, float %6170)  ; FMin(a,b)
  %6184 = fmul fast float %6183, %5971
  %6185 = fsub fast float 1.000000e+00, %6184
  %6186 = bitcast float %6185 to i32
  %6187 = sub nsw i32 2129859010, %6186
  %6188 = bitcast i32 %6187 to float
  %6189 = fmul fast float %6160, %5970
  %6190 = fmul fast float %6189, %6176
  %6191 = fmul fast float %6161, %5970
  %6192 = fmul fast float %6191, %6182
  %6193 = fmul fast float %6162, %5970
  %6194 = fmul fast float %6193, %6188
  %6195 = call float @dx.op.binary.f32(i32 36, float %5948, float %6170)  ; FMin(a,b)
  %6196 = fmul fast float %6195, %5971
  %6197 = fsub fast float 1.000000e+00, %6196
  %6198 = bitcast float %6197 to i32
  %6199 = sub nsw i32 2129859010, %6198
  %6200 = bitcast i32 %6199 to float
  %6201 = call float @dx.op.binary.f32(i32 36, float %5949, float %6170)  ; FMin(a,b)
  %6202 = fmul fast float %6201, %5971
  %6203 = fsub fast float 1.000000e+00, %6202
  %6204 = bitcast float %6203 to i32
  %6205 = sub nsw i32 2129859010, %6204
  %6206 = bitcast i32 %6205 to float
  %6207 = call float @dx.op.binary.f32(i32 36, float %5959, float %6170)  ; FMin(a,b)
  %6208 = fmul fast float %6207, %5971
  %6209 = fsub fast float 1.000000e+00, %6208
  %6210 = bitcast float %6209 to i32
  %6211 = sub nsw i32 2129859010, %6210
  %6212 = bitcast i32 %6211 to float
  %6213 = fmul fast float %6166, %5970
  %6214 = fmul fast float %6213, %6200
  %6215 = fmul fast float %6167, %5970
  %6216 = fmul fast float %6215, %6206
  %6217 = fmul fast float %6168, %5970
  %6218 = fmul fast float %6217, %6212
  %6219 = call float @dx.op.dot3.f32(i32 55, float %6190, float %6192, float %6194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6220 = select i1 %249, float 0.000000e+00, float %6190
  %6221 = select i1 %249, float %6219, float %6192
  %6222 = select i1 %249, float 0.000000e+00, float %6194
  %6223 = call float @dx.op.dot3.f32(i32 55, float %6163, float %6164, float %6165, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6224 = select i1 %249, float 0.000000e+00, float %6163
  %6225 = select i1 %249, float %6223, float %6164
  %6226 = select i1 %249, float 0.000000e+00, float %6165
  %6227 = call float @dx.op.dot3.f32(i32 55, float %6214, float %6216, float %6218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6228 = select i1 %249, float 0.000000e+00, float %6214
  %6229 = select i1 %249, float %6227, float %6216
  %6230 = select i1 %249, float 0.000000e+00, float %6218
  %6231 = fmul fast float %3990, %3990
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6233 = fmul fast float %5961, 9.843750e-01
  %6234 = fmul fast float %5957, 9.843750e-01
  %6235 = fadd fast float %6233, 7.812500e-03
  %6236 = fadd fast float %6234, 7.812500e-03
  %6237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %6235, float %6236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6238 = extractvalue %dx.types.ResRet.f32 %6237, 0
  %6239 = extractvalue %dx.types.ResRet.f32 %6237, 1
  %6240 = extractvalue %dx.types.ResRet.f32 %6237, 2
  %6241 = extractvalue %dx.types.ResRet.f32 %6237, 3
  %6242 = fsub fast float 1.000000e+00, %6232
  %6243 = fsub fast float %6240, %6238
  %6244 = fsub fast float %6241, %6239
  %6245 = fmul fast float %6243, %6242
  %6246 = fmul fast float %6244, %6242
  %6247 = fadd fast float %6245, %6238
  %6248 = fadd fast float %6246, %6239
  %6249 = fmul fast float %6247, %5948
  %6250 = fmul fast float %6247, %5949
  %6251 = fmul fast float %6247, %5959
  %6252 = fadd fast float %6249, %6248
  %6253 = fadd fast float %6250, %6248
  %6254 = fadd fast float %6251, %6248
  %6255 = fcmp fast ogt float %4641, 0.000000e+00
  br i1 %6255, label %6256, label %6282

; <label>:6256                                    ; preds = %6137
  %6257 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4641, float %5961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6258 = extractvalue %dx.types.ResRet.f32 %6257, 0
  %6259 = extractvalue %dx.types.ResRet.f32 %6257, 1
  %6260 = extractvalue %dx.types.ResRet.f32 %6257, 2
  %6261 = fadd fast float %6258, -5.000000e-01
  %6262 = fadd fast float %6259, -5.000000e-01
  %6263 = fadd fast float %6260, -5.000000e-01
  %6264 = fsub fast float 1.000000e+00, %5948
  %6265 = fsub fast float 1.000000e+00, %5949
  %6266 = fsub fast float 1.000000e+00, %5959
  %6267 = fmul fast float %5948, 4.000000e+00
  %6268 = fmul fast float %6267, %6264
  %6269 = fmul fast float %6268, %6261
  %6270 = fmul fast float %5949, 4.000000e+00
  %6271 = fmul fast float %6270, %6265
  %6272 = fmul fast float %6271, %6262
  %6273 = fmul fast float %5959, 4.000000e+00
  %6274 = fmul fast float %6273, %6266
  %6275 = fmul fast float %6274, %6263
  %6276 = fadd fast float %6269, %6252
  %6277 = fadd fast float %6272, %6253
  %6278 = fadd fast float %6275, %6254
  %6279 = call float @dx.op.unary.f32(i32 7, float %6276)  ; Saturate(value)
  %6280 = call float @dx.op.unary.f32(i32 7, float %6277)  ; Saturate(value)
  %6281 = call float @dx.op.unary.f32(i32 7, float %6278)  ; Saturate(value)
  br label %6282

; <label>:6282                                    ; preds = %6256, %6137
  %6283 = phi float [ %6279, %6256 ], [ %6252, %6137 ]
  %6284 = phi float [ %6280, %6256 ], [ %6253, %6137 ]
  %6285 = phi float [ %6281, %6256 ], [ %6254, %6137 ]
  %6286 = call float @dx.op.binary.f32(i32 35, float %6284, float %6285)  ; FMax(a,b)
  %6287 = call float @dx.op.binary.f32(i32 35, float %6283, float %6286)  ; FMax(a,b)
  %6288 = fsub fast float 1.000000e+00, %6287
  %6289 = fmul fast float %6287, %5957
  %6290 = fadd fast float %6289, %5957
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 2
  %6293 = extractvalue %dx.types.CBufRet.f32 %6291, 3
  %6294 = fmul fast float %6290, %6292
  %6295 = fadd fast float %6294, %6293
  %6296 = call float @dx.op.unary.f32(i32 7, float %6295)  ; Saturate(value)
  %6297 = fsub fast float 1.000000e+00, %5982
  %6298 = fadd fast float %6297, %6296
  %6299 = call float @dx.op.unary.f32(i32 7, float %6298)  ; Saturate(value)
  %6300 = fcmp fast olt float %6299, 1.000000e+00
  br i1 %6300, label %6301, label %6749

; <label>:6301                                    ; preds = %6282
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 2
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 3
  %6305 = fmul fast float %6303, %109
  %6306 = fmul fast float %6304, %110
  %6307 = fptoui float %6305 to i32
  %6308 = fptoui float %6306 to i32
  %6309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6310 = extractvalue %dx.types.CBufRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.CBufRet.f32 %6309, 2
  %6312 = extractvalue %dx.types.CBufRet.f32 %6309, 3
  %6313 = fadd fast float %96, -4.000000e+00
  %6314 = call float @dx.op.binary.f32(i32 35, float %6313, float 0.000000e+00)  ; FMax(a,b)
  %6315 = fadd fast float %6314, %6310
  %6316 = fmul fast float %6315, %6311
  %6317 = call float @dx.op.unary.f32(i32 23, float %6316)  ; Log(value)
  %6318 = fmul fast float %6317, %6312
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 2
  %6321 = fmul fast float %6318, %6320
  %6322 = call float @dx.op.unary.f32(i32 7, float %6321)  ; Saturate(value)
  %6323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.i32 %6323, 1
  %6325 = add i32 %6324, -1
  %6326 = uitofp i32 %6324 to float
  %6327 = fmul fast float %6326, %6322
  %6328 = fptoui float %6327 to i32
  %6329 = call i32 @dx.op.binary.i32(i32 40, i32 %6328, i32 %6325)  ; UMin(a,b)
  %6330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6331 = extractvalue %dx.types.CBufRet.i32 %6330, 2
  %6332 = extractvalue %dx.types.CBufRet.i32 %6330, 3
  %6333 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6308, i32 %6331, i32 %6307)  ; UMad(a,b,c)
  %6334 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6329, i32 %6332, i32 %6333)  ; UMad(a,b,c)
  %6335 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %6336 = fptoui float %6335 to i32
  %6337 = lshr i32 %6336, 5
  %6338 = call i32 @dx.op.binary.i32(i32 40, i32 %6337, i32 8191)  ; UMin(a,b)
  br i1 false, label %6339, label %6346

; <label>:6339                                    ; preds = %6301
  %6340 = fadd fast float 0.000000e+00, %5969
  %6341 = call float @dx.op.dot3.f32(i32 55, float %5967, float %5968, float %6340, float %5967, float %5968, float %6340)  ; Dot3(ax,ay,az,bx,by,bz)
  %6342 = call float @dx.op.unary.f32(i32 25, float %6341)  ; Rsqrt(value)
  %6343 = fmul fast float %6342, %5967
  %6344 = fmul fast float %6342, %5968
  %6345 = fmul fast float %6340, %6342
  br label %6346

; <label>:6346                                    ; preds = %6339, %6301
  %6347 = phi float [ %6343, %6339 ], [ %5967, %6301 ]
  %6348 = phi float [ %6344, %6339 ], [ %5968, %6301 ]
  %6349 = phi float [ %6345, %6339 ], [ %5969, %6301 ]
  %6350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6351 = extractvalue %dx.types.CBufRet.i32 %6350, 2
  %6352 = add nsw i32 %6351, -1
  %6353 = call i32 @dx.op.binary.i32(i32 37, i32 %6352, i32 0)  ; IMax(a,b)
  %6354 = shl i32 %6338, 2
  %6355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %6354, i32 undef)  ; BufferLoad(srv,index,wot)
  %6356 = extractvalue %dx.types.ResRet.i32 %6355, 0
  %6357 = lshr i32 %6356, 16
  %6358 = and i32 %6356, 65535
  %6359 = lshr i32 %6356, 21
  %6360 = lshr i32 %6358, 5
  %6361 = call i32 @dx.op.binary.i32(i32 40, i32 %6360, i32 %6353)  ; UMin(a,b)
  %6362 = icmp ugt i32 %6359, %6361
  br i1 %6362, label %6725, label %6363

; <label>:6363                                    ; preds = %6346
  br label %6364

; <label>:6364                                    ; preds = %6717, %6363
  %6365 = phi float [ %6718, %6717 ], [ 0.000000e+00, %6363 ]
  %6366 = phi float [ %6719, %6717 ], [ 0.000000e+00, %6363 ]
  %6367 = phi float [ %6720, %6717 ], [ 0.000000e+00, %6363 ]
  %6368 = phi float [ %6721, %6717 ], [ 1.000000e+00, %6363 ]
  %6369 = phi i32 [ %6722, %6717 ], [ %6359, %6363 ]
  %6370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6371 = extractvalue %dx.types.CBufRet.i32 %6370, 2
  %6372 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6334, i32 %6371, i32 %6369)  ; UMad(a,b,c)
  %6373 = shl i32 %6372, 2
  %6374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6373, i32 undef)  ; BufferLoad(srv,index,wot)
  %6375 = extractvalue %dx.types.ResRet.i32 %6374, 0
  %6376 = shl i32 %6369, 5
  %6377 = sub nsw i32 %6357, %6376
  %6378 = call i32 @dx.op.binary.i32(i32 37, i32 %6377, i32 0)  ; IMax(a,b)
  %6379 = call i32 @dx.op.binary.i32(i32 38, i32 %6378, i32 31)  ; IMin(a,b)
  %6380 = sub nsw i32 1, %6357
  %6381 = add nsw i32 %6380, %6358
  %6382 = call i32 @dx.op.binary.i32(i32 37, i32 %6381, i32 0)  ; IMax(a,b)
  %6383 = call i32 @dx.op.binary.i32(i32 38, i32 %6382, i32 32)  ; IMin(a,b)
  %6384 = and i32 %6383, 31
  %6385 = shl i32 -1, %6384
  %6386 = xor i32 %6385, -1
  %6387 = and i32 %6379, 31
  %6388 = shl i32 %6386, %6387
  %6389 = icmp eq i32 %6383, 32
  %6390 = select i1 %6389, i32 -1, i32 %6388
  %6391 = and i32 %6390, %6375
  %6392 = icmp eq i32 %6391, 0
  br i1 %6392, label %6717, label %6393

; <label>:6393                                    ; preds = %6364
  br label %6394

; <label>:6394                                    ; preds = %6500, %6393
  %6395 = phi float [ %6501, %6500 ], [ %6365, %6393 ]
  %6396 = phi float [ %6502, %6500 ], [ %6366, %6393 ]
  %6397 = phi float [ %6503, %6500 ], [ %6367, %6393 ]
  %6398 = phi float [ %6504, %6500 ], [ %6368, %6393 ]
  %6399 = phi i32 [ %6404, %6500 ], [ %6391, %6393 ]
  %6400 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6399)  ; FirstbitLo(value)
  %6401 = add i32 %6400, %6376
  %6402 = and i32 %6400, 31
  %6403 = shl i32 1, %6402
  %6404 = xor i32 %6403, %6399
  %6405 = mul i32 %6401, 72
  %6406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6405, i32 undef)  ; BufferLoad(srv,index,wot)
  %6407 = extractvalue %dx.types.ResRet.f32 %6406, 0
  %6408 = extractvalue %dx.types.ResRet.f32 %6406, 1
  %6409 = extractvalue %dx.types.ResRet.f32 %6406, 2
  %6410 = add i32 %6405, 12
  %6411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %6410, i32 undef)  ; BufferLoad(srv,index,wot)
  %6412 = extractvalue %dx.types.ResRet.i32 %6411, 0
  %6413 = add i32 %6405, 16
  %6414 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6413, i32 undef)  ; BufferLoad(srv,index,wot)
  %6415 = extractvalue %dx.types.ResRet.f32 %6414, 0
  %6416 = extractvalue %dx.types.ResRet.f32 %6414, 1
  %6417 = extractvalue %dx.types.ResRet.f32 %6414, 2
  %6418 = add i32 %6405, 28
  %6419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6418, i32 undef)  ; BufferLoad(srv,index,wot)
  %6420 = extractvalue %dx.types.ResRet.f32 %6419, 0
  %6421 = add i32 %6405, 32
  %6422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6421, i32 undef)  ; BufferLoad(srv,index,wot)
  %6423 = extractvalue %dx.types.ResRet.f32 %6422, 0
  %6424 = extractvalue %dx.types.ResRet.f32 %6422, 1
  %6425 = extractvalue %dx.types.ResRet.f32 %6422, 2
  %6426 = extractvalue %dx.types.ResRet.f32 %6422, 3
  %6427 = add i32 %6405, 48
  %6428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6427, i32 undef)  ; BufferLoad(srv,index,wot)
  %6429 = extractvalue %dx.types.ResRet.f32 %6428, 0
  %6430 = extractvalue %dx.types.ResRet.f32 %6428, 1
  %6431 = add i32 %6405, 56
  %6432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6431, i32 undef)  ; BufferLoad(srv,index,wot)
  %6433 = extractvalue %dx.types.ResRet.f32 %6432, 0
  %6434 = extractvalue %dx.types.ResRet.f32 %6432, 1
  %6435 = add i32 %6405, 64
  %6436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %6435, i32 undef)  ; BufferLoad(srv,index,wot)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.ResRet.f32 %6436, 1
  %6439 = mul i32 %6401, 60
  %6440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6439, i32 undef)  ; BufferLoad(srv,index,wot)
  %6441 = extractvalue %dx.types.ResRet.f32 %6440, 0
  %6442 = extractvalue %dx.types.ResRet.f32 %6440, 1
  %6443 = extractvalue %dx.types.ResRet.f32 %6440, 2
  %6444 = add i32 %6439, 12
  %6445 = add i32 %6439, 48
  %6446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6445, i32 undef)  ; BufferLoad(srv,index,wot)
  %6447 = extractvalue %dx.types.ResRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.ResRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.ResRet.f32 %6446, 2
  %6450 = and i32 %6412, 32767
  %6451 = bitcast float %6407 to i32
  %6452 = icmp eq i32 %6451, -1
  %6453 = bitcast float %6408 to i32
  %6454 = and i32 %6412, 32768
  %6455 = icmp ne i32 %6454, 0
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6459 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6460 = fsub fast float %6441, %6457
  %6461 = fsub fast float %6442, %6458
  %6462 = fsub fast float %6443, %6459
  %6463 = fsub fast float %188, %6460
  %6464 = fsub fast float %189, %6461
  %6465 = fsub fast float %190, %6462
  %6466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6444, i32 undef)  ; BufferLoad(srv,index,wot)
  %6467 = extractvalue %dx.types.ResRet.f32 %6466, 0
  %6468 = extractvalue %dx.types.ResRet.f32 %6466, 1
  %6469 = extractvalue %dx.types.ResRet.f32 %6466, 2
  %6470 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6467, float %6468, float %6469)  ; Dot3(ax,ay,az,bx,by,bz)
  %6471 = add i32 %6439, 24
  %6472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6471, i32 undef)  ; BufferLoad(srv,index,wot)
  %6473 = extractvalue %dx.types.ResRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.ResRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.ResRet.f32 %6472, 2
  %6476 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6473, float %6474, float %6475)  ; Dot3(ax,ay,az,bx,by,bz)
  %6477 = add i32 %6439, 36
  %6478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %36, i32 %6477, i32 undef)  ; BufferLoad(srv,index,wot)
  %6479 = extractvalue %dx.types.ResRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.ResRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.ResRet.f32 %6478, 2
  %6482 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6479, float %6480, float %6481)  ; Dot3(ax,ay,az,bx,by,bz)
  %6483 = call float @dx.op.unary.f32(i32 6, float %6470)  ; FAbs(value)
  %6484 = call float @dx.op.unary.f32(i32 6, float %6476)  ; FAbs(value)
  %6485 = call float @dx.op.unary.f32(i32 6, float %6482)  ; FAbs(value)
  %6486 = fsub fast float %6447, %6483
  %6487 = fsub fast float %6448, %6484
  %6488 = fsub fast float %6449, %6485
  %6489 = fmul fast float %6486, %6415
  %6490 = fmul fast float %6487, %6416
  %6491 = fmul fast float %6488, %6417
  %6492 = call float @dx.op.binary.f32(i32 36, float %6490, float %6491)  ; FMin(a,b)
  %6493 = call float @dx.op.binary.f32(i32 36, float %6489, float %6492)  ; FMin(a,b)
  %6494 = call float @dx.op.unary.f32(i32 7, float %6493)  ; Saturate(value)
  %6495 = call float @dx.op.binary.f32(i32 36, float %6398, float %6494)  ; FMin(a,b)
  %6496 = uitofp i1 %6455 to float
  %6497 = fsub fast float 1.000000e+00, %6496
  %6498 = fmul fast float %6495, %6497
  %6499 = fcmp fast ogt float %6498, 0.000000e+00
  br i1 %6499, label %6506, label %6500

; <label>:6500                                    ; preds = %6648, %6394
  %6501 = phi float [ %6712, %6648 ], [ %6395, %6394 ]
  %6502 = phi float [ %6713, %6648 ], [ %6396, %6394 ]
  %6503 = phi float [ %6714, %6648 ], [ %6397, %6394 ]
  %6504 = phi float [ %6715, %6648 ], [ %6398, %6394 ]
  %6505 = icmp eq i32 %6399, %6403
  br i1 %6505, label %6716, label %6394

; <label>:6506                                    ; preds = %6394
  br i1 %6452, label %6564, label %6507

; <label>:6507                                    ; preds = %6506
  %6508 = fsub fast float -0.000000e+00, %6467
  %6509 = fsub fast float -0.000000e+00, %6468
  %6510 = fsub fast float -0.000000e+00, %6469
  %6511 = call float @dx.op.dot3.f32(i32 55, float %6347, float %6348, float %6349, float %6508, float %6509, float %6510)  ; Dot3(ax,ay,az,bx,by,bz)
  %6512 = fsub fast float -0.000000e+00, %6511
  %6513 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6508, float %6509, float %6510)  ; Dot3(ax,ay,az,bx,by,bz)
  %6514 = fadd fast float %6513, %6430
  %6515 = fadd fast float %6429, %6513
  %6516 = fsub fast float -0.000000e+00, %6515
  %6517 = fcmp ogt float %6511, -0.000000e+00
  %6518 = select i1 %6517, float %6516, float %6514
  %6519 = call float @dx.op.unary.f32(i32 6, float %6512)  ; FAbs(value)
  %6520 = fdiv fast float 1.000000e+00, %6519
  %6521 = fmul fast float %6518, %6520
  %6522 = call float @dx.op.binary.f32(i32 35, float %6521, float 0.000000e+00)  ; FMax(a,b)
  %6523 = fsub fast float -0.000000e+00, %6473
  %6524 = fsub fast float -0.000000e+00, %6474
  %6525 = fsub fast float -0.000000e+00, %6475
  %6526 = call float @dx.op.dot3.f32(i32 55, float %6347, float %6348, float %6349, float %6523, float %6524, float %6525)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = fsub fast float -0.000000e+00, %6526
  %6528 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6523, float %6524, float %6525)  ; Dot3(ax,ay,az,bx,by,bz)
  %6529 = fadd fast float %6528, %6434
  %6530 = fadd fast float %6433, %6528
  %6531 = fsub fast float -0.000000e+00, %6530
  %6532 = fcmp ogt float %6526, -0.000000e+00
  %6533 = select i1 %6532, float %6531, float %6529
  %6534 = call float @dx.op.unary.f32(i32 6, float %6527)  ; FAbs(value)
  %6535 = fdiv fast float 1.000000e+00, %6534
  %6536 = fmul fast float %6533, %6535
  %6537 = call float @dx.op.binary.f32(i32 35, float %6536, float 0.000000e+00)  ; FMax(a,b)
  %6538 = fsub fast float -0.000000e+00, %6479
  %6539 = fsub fast float -0.000000e+00, %6480
  %6540 = fsub fast float -0.000000e+00, %6481
  %6541 = call float @dx.op.dot3.f32(i32 55, float %6347, float %6348, float %6349, float %6538, float %6539, float %6540)  ; Dot3(ax,ay,az,bx,by,bz)
  %6542 = fsub fast float -0.000000e+00, %6541
  %6543 = call float @dx.op.dot3.f32(i32 55, float %6463, float %6464, float %6465, float %6538, float %6539, float %6540)  ; Dot3(ax,ay,az,bx,by,bz)
  %6544 = fadd fast float %6543, %6438
  %6545 = fadd fast float %6437, %6543
  %6546 = fsub fast float -0.000000e+00, %6545
  %6547 = fcmp ogt float %6541, -0.000000e+00
  %6548 = select i1 %6547, float %6546, float %6544
  %6549 = call float @dx.op.unary.f32(i32 6, float %6542)  ; FAbs(value)
  %6550 = fdiv fast float 1.000000e+00, %6549
  %6551 = fmul fast float %6548, %6550
  %6552 = call float @dx.op.binary.f32(i32 35, float %6551, float 0.000000e+00)  ; FMax(a,b)
  %6553 = call float @dx.op.binary.f32(i32 36, float %6537, float %6552)  ; FMin(a,b)
  %6554 = call float @dx.op.binary.f32(i32 36, float %6522, float %6553)  ; FMin(a,b)
  %6555 = fmul fast float %6554, %6347
  %6556 = fmul fast float %6554, %6348
  %6557 = fmul fast float %6554, %6349
  %6558 = fadd fast float %6555, %188
  %6559 = fadd fast float %6556, %189
  %6560 = fadd fast float %6557, %190
  %6561 = fsub fast float %6558, %6407
  %6562 = fsub fast float %6559, %6408
  %6563 = fsub fast float %6560, %6409
  br label %6571

; <label>:6564                                    ; preds = %6506
  %6565 = fmul fast float %6347, 8.096000e+03
  %6566 = fmul fast float %6348, 8.096000e+03
  %6567 = fmul fast float %6349, 8.096000e+03
  %6568 = fadd fast float %6565, %188
  %6569 = fadd fast float %6566, %189
  %6570 = fadd fast float %6567, %190
  br label %6571

; <label>:6571                                    ; preds = %6564, %6507
  %6572 = phi float [ %6347, %6564 ], [ %6561, %6507 ]
  %6573 = phi float [ %6348, %6564 ], [ %6562, %6507 ]
  %6574 = phi float [ %6349, %6564 ], [ %6563, %6507 ]
  %6575 = phi float [ %6568, %6564 ], [ %6558, %6507 ]
  %6576 = phi float [ %6569, %6564 ], [ %6559, %6507 ]
  %6577 = phi float [ %6570, %6564 ], [ %6560, %6507 ]
  %6578 = fcmp fast olt float %6426, 1.000000e+00
  br i1 %6578, label %6579, label %6610, !dx.controlflow.hints !92

; <label>:6579                                    ; preds = %6571
  %6580 = fmul fast float %6574, %6424
  %6581 = fmul fast float %6573, %6425
  %6582 = fsub fast float %6580, %6581
  %6583 = fmul fast float %6572, %6425
  %6584 = fmul fast float %6574, %6423
  %6585 = fsub fast float %6583, %6584
  %6586 = fmul fast float %6573, %6423
  %6587 = fmul fast float %6572, %6424
  %6588 = fsub fast float %6586, %6587
  %6589 = fmul fast float %6582, 2.000000e+00
  %6590 = fmul fast float %6585, 2.000000e+00
  %6591 = fmul fast float %6588, 2.000000e+00
  %6592 = fmul fast float %6589, %6426
  %6593 = fmul fast float %6590, %6426
  %6594 = fmul fast float %6591, %6426
  %6595 = fmul fast float %6591, %6424
  %6596 = fmul fast float %6590, %6425
  %6597 = fmul fast float %6589, %6425
  %6598 = fmul fast float %6591, %6423
  %6599 = fmul fast float %6590, %6423
  %6600 = fmul fast float %6589, %6424
  %6601 = fadd fast float %6595, %6572
  %6602 = fadd fast float %6601, %6592
  %6603 = fsub fast float %6602, %6596
  %6604 = fsub fast float %6573, %6598
  %6605 = fadd fast float %6604, %6593
  %6606 = fadd fast float %6605, %6597
  %6607 = fadd fast float %6594, %6574
  %6608 = fsub fast float %6607, %6600
  %6609 = fadd fast float %6608, %6599
  br label %6610

; <label>:6610                                    ; preds = %6579, %6571
  %6611 = phi float [ %6603, %6579 ], [ %6572, %6571 ]
  %6612 = phi float [ %6606, %6579 ], [ %6573, %6571 ]
  %6613 = phi float [ %6609, %6579 ], [ %6574, %6571 ]
  br i1 %6452, label %6645, label %6614

; <label>:6614                                    ; preds = %6610
  %6615 = fmul fast float %5957, 0x400187C840000000
  %6616 = fadd fast float %6615, 0xC00EFC2120000000
  %6617 = fmul fast float %6616, %5957
  %6618 = fadd fast float %6617, 0x3FE5D16340000000
  %6619 = fmul fast float %6618, %5957
  %6620 = fadd fast float %6619, 1.000000e+00
  %6621 = call float @dx.op.unary.f32(i32 7, float %6620)  ; Saturate(value)
  %6622 = fsub fast float %6575, %188
  %6623 = fsub fast float %6576, %189
  %6624 = fsub fast float %6577, %190
  %6625 = fsub fast float %6575, %6407
  %6626 = fsub fast float %6576, %6408
  %6627 = fsub fast float %6577, %6409
  %6628 = call float @dx.op.dot3.f32(i32 55, float %6622, float %6623, float %6624, float %6622, float %6623, float %6624)  ; Dot3(ax,ay,az,bx,by,bz)
  %6629 = call float @dx.op.dot3.f32(i32 55, float %6625, float %6626, float %6627, float %6625, float %6626, float %6627)  ; Dot3(ax,ay,az,bx,by,bz)
  %6630 = fadd fast float %6629, 0x3EE4F8B580000000
  %6631 = fdiv fast float %6628, %6630
  %6632 = bitcast float %6631 to i32
  %6633 = ashr i32 %6632, 1
  %6634 = add nsw i32 %6633, 532487669
  %6635 = bitcast i32 %6634 to float
  %6636 = fmul fast float %6635, %6621
  %6637 = call float @dx.op.unary.f32(i32 7, float %6636)  ; Saturate(value)
  %6638 = fmul fast float %6637, 0x4009981AE0000000
  %6639 = fsub fast float 0x40111BBD80000000, %6638
  %6640 = fmul fast float %6639, %6637
  %6641 = fadd fast float %6640, 0xC0009F6020000000
  %6642 = fmul fast float %6641, %6637
  %6643 = fadd fast float %6642, 1.000000e+00
  %6644 = call float @dx.op.unary.f32(i32 7, float %6643)  ; Saturate(value)
  br label %6648

; <label>:6645                                    ; preds = %6610
  %6646 = icmp ne i32 %6453, -1
  %6647 = zext i1 %6646 to i32
  br label %6648

; <label>:6648                                    ; preds = %6645, %6614
  %6649 = phi float [ %5957, %6645 ], [ %6644, %6614 ]
  %6650 = phi i32 [ %6647, %6645 ], [ 0, %6614 ]
  %6651 = fmul float %6649, 5.000000e+00
  %6652 = fsub float 5.000000e+00, %6651
  %6653 = icmp ne i32 %6650, 0
  %6654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6655 = extractvalue %dx.types.CBufRet.f32 %6654, 3
  %6656 = fadd fast float %6655, %6652
  %6657 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6656)  ; FMax(a,b)
  %6658 = call float @dx.op.unary.f32(i32 6, float %6611)  ; FAbs(value)
  %6659 = call float @dx.op.unary.f32(i32 6, float %6612)  ; FAbs(value)
  %6660 = fadd fast float %6659, %6658
  %6661 = call float @dx.op.unary.f32(i32 6, float %6613)  ; FAbs(value)
  %6662 = fadd fast float %6660, %6661
  %6663 = fcmp fast oeq float %6662, 0.000000e+00
  %6664 = fdiv fast float 1.000000e+00, %6662
  %6665 = select i1 %6663, float 1.000000e+00, float %6664
  %6666 = fmul fast float %6665, %6611
  %6667 = fmul fast float %6665, %6612
  %6668 = call float @dx.op.unary.f32(i32 6, float %6667)  ; FAbs(value)
  %6669 = call float @dx.op.unary.f32(i32 6, float %6666)  ; FAbs(value)
  %6670 = fsub fast float 1.000000e+00, %6668
  %6671 = fsub fast float 1.000000e+00, %6669
  %6672 = fcmp fast oge float %6666, 0.000000e+00
  %6673 = fcmp fast oge float %6667, 0.000000e+00
  %6674 = select i1 %6672, float 1.000000e+00, float -1.000000e+00
  %6675 = select i1 %6673, float 1.000000e+00, float -1.000000e+00
  %6676 = fcmp fast ole float %6613, 0.000000e+00
  %6677 = fmul fast float %6674, %6670
  %6678 = fmul fast float %6675, %6671
  %6679 = select i1 %6676, float %6677, float %6666
  %6680 = select i1 %6676, float %6678, float %6667
  %6681 = fmul fast float %6679, 5.000000e-01
  %6682 = fmul fast float %6680, 5.000000e-01
  %6683 = fadd fast float %6681, 5.000000e-01
  %6684 = fadd fast float %6682, 5.000000e-01
  %6685 = uitofp i32 %6450 to float
  %6686 = call float @dx.op.binary.f32(i32 36, float %6657, float 3.000000e+00)  ; FMin(a,b)
  %6687 = fadd fast float %6686, 2.000000e+00
  %6688 = call float @dx.op.unary.f32(i32 21, float %6687)  ; Exp(value)
  %6689 = extractvalue %dx.types.CBufRet.f32 %6654, 1
  %6690 = fmul fast float %6689, %6688
  %6691 = fmul fast float %6690, 2.000000e+00
  %6692 = fsub fast float 1.000000e+00, %6691
  %6693 = fmul fast float %6683, %6692
  %6694 = fmul fast float %6684, %6692
  %6695 = fadd fast float %6693, %6690
  %6696 = fadd fast float %6694, %6690
  %6697 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %42, float %6695, float %6696, float %6685, float undef, i32 0, i32 0, i32 undef, float %6657)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6698 = extractvalue %dx.types.ResRet.f32 %6697, 0
  %6699 = extractvalue %dx.types.ResRet.f32 %6697, 1
  %6700 = extractvalue %dx.types.ResRet.f32 %6697, 2
  %6701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6702 = extractvalue %dx.types.CBufRet.f32 %6701, 3
  %6703 = fmul fast float %6702, %6420
  %6704 = call float @dx.op.binary.f32(i32 36, float %5988, float %6703)  ; FMin(a,b)
  %6705 = select i1 %6653, float %6704, float %6703
  %6706 = fmul fast float %6698, %6498
  %6707 = fmul fast float %6706, %6705
  %6708 = fmul fast float %6699, %6498
  %6709 = fmul fast float %6708, %6705
  %6710 = fmul fast float %6700, %6498
  %6711 = fmul fast float %6710, %6705
  %6712 = fadd fast float %6707, %6395
  %6713 = fadd fast float %6709, %6396
  %6714 = fadd fast float %6711, %6397
  %6715 = fsub fast float %6398, %6498
  br label %6500

; <label>:6716                                    ; preds = %6500
  br label %6717

; <label>:6717                                    ; preds = %6716, %6364
  %6718 = phi float [ %6365, %6364 ], [ %6501, %6716 ]
  %6719 = phi float [ %6366, %6364 ], [ %6502, %6716 ]
  %6720 = phi float [ %6367, %6364 ], [ %6503, %6716 ]
  %6721 = phi float [ %6368, %6364 ], [ %6504, %6716 ]
  %6722 = add i32 %6369, 1
  %6723 = icmp ugt i32 %6722, %6361
  br i1 %6723, label %6724, label %6364, !llvm.loop !93

; <label>:6724                                    ; preds = %6717
  br label %6725

; <label>:6725                                    ; preds = %6724, %6346
  %6726 = phi float [ 0.000000e+00, %6346 ], [ %6718, %6724 ]
  %6727 = phi float [ 0.000000e+00, %6346 ], [ %6719, %6724 ]
  %6728 = phi float [ 0.000000e+00, %6346 ], [ %6720, %6724 ]
  %6729 = call float @dx.op.dot3.f32(i32 55, float %6726, float %6727, float %6728, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6730 = select i1 %249, float 0.000000e+00, float %6726
  %6731 = select i1 %249, float %6729, float %6727
  %6732 = select i1 %249, float 0.000000e+00, float %6728
  %6733 = fcmp fast olt float %6299, 0.000000e+00
  %6734 = call float @dx.op.unary.f32(i32 6, float %6299)  ; FAbs(value)
  %6735 = fmul fast float %6734, %6228
  %6736 = fmul fast float %6734, %6229
  %6737 = fmul fast float %6734, %6230
  %6738 = select i1 %6733, float %6228, float %6735
  %6739 = select i1 %6733, float %6229, float %6736
  %6740 = select i1 %6733, float %6230, float %6737
  %6741 = fsub fast float 1.000000e+00, %6734
  %6742 = call float @dx.op.unary.f32(i32 7, float %6741)  ; Saturate(value)
  %6743 = fmul fast float %6742, %6730
  %6744 = fmul fast float %6742, %6731
  %6745 = fmul fast float %6742, %6732
  %6746 = fadd fast float %6738, %6743
  %6747 = fadd fast float %6739, %6744
  %6748 = fadd fast float %6740, %6745
  br label %6749

; <label>:6749                                    ; preds = %6725, %6282
  %6750 = phi float [ %6228, %6282 ], [ %6746, %6725 ]
  %6751 = phi float [ %6229, %6282 ], [ %6747, %6725 ]
  %6752 = phi float [ %6230, %6282 ], [ %6748, %6725 ]
  %6753 = call float @dx.op.dot3.f32(i32 55, float %5951, float %5952, float %5953, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6754 = fcmp fast ogt float %6753, 0x3E7FF19E20000000
  %6755 = fdiv fast float 1.000000e+00, %6753
  %6756 = select i1 %6754, float %6755, float 0.000000e+00
  %6757 = fmul fast float %6756, %5951
  %6758 = fmul fast float %6756, %5952
  %6759 = fmul fast float %6756, %5953
  %6760 = fadd fast float %6757, -1.000000e+00
  %6761 = fadd fast float %6758, -1.000000e+00
  %6762 = fadd fast float %6759, -1.000000e+00
  %6763 = fmul fast float %6760, 5.000000e-01
  %6764 = fmul fast float %6761, 5.000000e-01
  %6765 = fmul fast float %6762, 5.000000e-01
  %6766 = fadd fast float %6763, 1.000000e+00
  %6767 = fadd fast float %6764, 1.000000e+00
  %6768 = fadd fast float %6765, 1.000000e+00
  %6769 = call float @dx.op.binary.f32(i32 35, float %5961, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6770 = fdiv fast float %3990, %6769
  %6771 = fcmp fast olt float %4690, 1.270000e+02
  %6772 = fcmp fast olt float %4691, 1.270000e+02
  %6773 = fcmp fast olt float %4692, 1.270000e+02
  %6774 = fmul fast float %4690, 0xBFF7154760000000
  %6775 = fmul fast float %6774, %6770
  %6776 = fmul fast float %4691, 0xBFF7154760000000
  %6777 = fmul fast float %6776, %6770
  %6778 = fmul fast float %4692, 0xBFF7154760000000
  %6779 = fmul fast float %6778, %6770
  %6780 = call float @dx.op.unary.f32(i32 21, float %6775)  ; Exp(value)
  %6781 = call float @dx.op.unary.f32(i32 21, float %6777)  ; Exp(value)
  %6782 = call float @dx.op.unary.f32(i32 21, float %6779)  ; Exp(value)
  %6783 = call float @dx.op.unary.f32(i32 7, float %6780)  ; Saturate(value)
  %6784 = call float @dx.op.unary.f32(i32 7, float %6781)  ; Saturate(value)
  %6785 = call float @dx.op.unary.f32(i32 7, float %6782)  ; Saturate(value)
  %6786 = select i1 %6771, float %6783, float 0.000000e+00
  %6787 = select i1 %6772, float %6784, float 0.000000e+00
  %6788 = select i1 %6773, float %6785, float 0.000000e+00
  %6789 = fmul fast float %6786, %6288
  %6790 = fmul fast float %6787, %6288
  %6791 = fmul fast float %6788, %6288
  %6792 = fadd fast float %6789, -1.000000e+00
  %6793 = fadd fast float %6790, -1.000000e+00
  %6794 = fadd fast float %6791, -1.000000e+00
  %6795 = fmul fast float %6792, %4638
  %6796 = fmul fast float %6793, %4638
  %6797 = fmul fast float %6794, %4638
  %6798 = fmul fast float %6750, %6283
  %6799 = fmul fast float %6751, %6284
  %6800 = fmul fast float %6752, %6285
  %6801 = fsub fast float 1.000000e+00, %5961
  %6802 = bitcast float %6801 to i32
  %6803 = sitofp i32 %6802 to float
  %6804 = fmul fast float %6803, 5.000000e+00
  %6805 = fadd fast float %6804, 0xC1EFBF8940000000
  %6806 = fptosi float %6805 to i32
  %6807 = bitcast i32 %6806 to float
  %6808 = fmul fast float %6807, %4642
  %6809 = fmul fast float %6220, %6808
  %6810 = fmul fast float %6809, %6288
  %6811 = fmul fast float %6810, %6766
  %6812 = fmul fast float %6221, %6808
  %6813 = fmul fast float %6812, %6288
  %6814 = fmul fast float %6813, %6767
  %6815 = fmul fast float %6222, %6808
  %6816 = fmul fast float %6815, %6288
  %6817 = fmul fast float %6816, %6768
  %6818 = fadd fast float %6798, %4628
  %6819 = fadd fast float %6818, %6811
  %6820 = fmul fast float %6819, %4638
  %6821 = fadd fast float %6799, %4629
  %6822 = fadd fast float %6821, %6814
  %6823 = fmul fast float %6822, %4638
  %6824 = fadd fast float %6800, %4630
  %6825 = fadd fast float %6824, %6817
  %6826 = fmul fast float %6825, %4638
  %6827 = fmul fast float %5949, 0x4012D0A400000000
  %6828 = fadd fast float %6797, 1.000000e+00
  %6829 = fadd fast float %6796, 1.000000e+00
  %6830 = fadd fast float %6795, 1.000000e+00
  %6831 = fmul fast float %6288, %6222
  %6832 = fmul fast float %6288, %6221
  %6833 = fmul fast float %6288, %6220
  %6834 = fmul fast float %5976, %4638
  %6835 = fsub fast float 1.000000e+00, %6834
  %6836 = call float @dx.op.unary.f32(i32 7, float %6835)  ; Saturate(value)
  %6837 = fsub fast float 1.000000e+00, %6836
  %6838 = fadd fast float %6827, 0x3FDB6377A0000000
  %6839 = fmul fast float %6837, %6838
  %6840 = call float @dx.op.dot3.f32(i32 55, float %5566, float %5567, float %5568, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6841 = fadd fast float %6839, %6840
  %6842 = call float @dx.op.unary.f32(i32 7, float %6841)  ; Saturate(value)
  %6843 = call float @dx.op.binary.f32(i32 35, float %6842, float 0x3F847AE140000000)  ; FMax(a,b)
  %6844 = fmul fast float %6843, %6843
  %6845 = fmul fast float %6844, %6844
  %6846 = fmul fast float %6845, 0xC00A935000000000
  %6847 = call float @dx.op.unary.f32(i32 21, float %6846)  ; Exp(value)
  %6848 = fsub fast float 1.000000e+00, %6847
  %6849 = fmul fast float %6830, %6224
  %6850 = fmul fast float %6849, %6848
  %6851 = fmul fast float %6829, %6225
  %6852 = fmul fast float %6851, %6848
  %6853 = fmul fast float %6828, %6226
  %6854 = fmul fast float %6853, %6848
  %6855 = fadd fast float %6850, %6833
  %6856 = fmul fast float %6855, %4638
  %6857 = fadd fast float %6852, %6832
  %6858 = fmul fast float %6857, %4638
  %6859 = fadd fast float %6854, %6831
  %6860 = fmul fast float %6859, %4638
  %6861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6862 = extractvalue %dx.types.CBufRet.f32 %6861, 3
  %6863 = fcmp fast oeq float %6862, 0.000000e+00
  br i1 %6863, label %8628, label %6864

; <label>:6864                                    ; preds = %6749
  %6865 = extractvalue %dx.types.CBufRet.f32 %6861, 0
  %6866 = extractvalue %dx.types.CBufRet.f32 %6861, 1
  %6867 = extractvalue %dx.types.CBufRet.f32 %6861, 2
  %6868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6869 = extractvalue %dx.types.CBufRet.f32 %6868, 0
  %6870 = extractvalue %dx.types.CBufRet.f32 %6868, 1
  %6871 = extractvalue %dx.types.CBufRet.f32 %6868, 2
  %6872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6873 = extractvalue %dx.types.CBufRet.f32 %6872, 0
  %6874 = extractvalue %dx.types.CBufRet.f32 %6872, 1
  %6875 = call float @dx.op.dot3.f32(i32 55, float %6869, float %6870, float %6871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6876 = select i1 %249, float %6873, float %6869
  %6877 = select i1 %249, float %6875, float %6870
  %6878 = select i1 %249, float %6874, float %6871
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 2
  %6881 = fmul fast float %6880, %116
  %6882 = fmul fast float %6880, %117
  %6883 = fmul fast float %6880, %118
  %6884 = fadd fast float %6881, %188
  %6885 = fadd fast float %6882, %189
  %6886 = fadd fast float %6883, %190
  %6887 = fcmp fast olt float %6862, 0.000000e+00
  br i1 %6887, label %8145, label %6888

; <label>:6888                                    ; preds = %6864
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.CBufRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.CBufRet.f32 %6889, 2
  %6893 = extractvalue %dx.types.CBufRet.f32 %6889, 3
  %6894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6895 = extractvalue %dx.types.CBufRet.f32 %6894, 0
  %6896 = extractvalue %dx.types.CBufRet.f32 %6894, 1
  %6897 = extractvalue %dx.types.CBufRet.f32 %6894, 2
  %6898 = extractvalue %dx.types.CBufRet.f32 %6894, 3
  %6899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6900 = extractvalue %dx.types.CBufRet.f32 %6899, 0
  %6901 = extractvalue %dx.types.CBufRet.f32 %6899, 1
  %6902 = extractvalue %dx.types.CBufRet.f32 %6899, 2
  %6903 = extractvalue %dx.types.CBufRet.f32 %6899, 3
  %6904 = fmul fast float %6890, %6884
  %6905 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %6891, float %6904)  ; FMad(a,b,c)
  %6906 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %6892, float %6905)  ; FMad(a,b,c)
  %6907 = fadd fast float %6906, %6893
  %6908 = fmul fast float %6895, %6884
  %6909 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %6896, float %6908)  ; FMad(a,b,c)
  %6910 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %6897, float %6909)  ; FMad(a,b,c)
  %6911 = fadd fast float %6910, %6898
  %6912 = fmul fast float %6900, %6884
  %6913 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %6901, float %6912)  ; FMad(a,b,c)
  %6914 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %6902, float %6913)  ; FMad(a,b,c)
  %6915 = fadd fast float %6914, %6903
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6918 = fcmp fast une float %6917, 0.000000e+00
  %6919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6920 = extractvalue %dx.types.CBufRet.f32 %6919, 0
  %6921 = extractvalue %dx.types.CBufRet.f32 %6919, 1
  %6922 = extractvalue %dx.types.CBufRet.f32 %6919, 3
  %6923 = fmul fast float %6922, %6907
  %6924 = fmul fast float %6922, %6911
  %6925 = fadd fast float %6923, %6920
  %6926 = fadd fast float %6924, %6921
  %6927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6928 = extractvalue %dx.types.CBufRet.f32 %6927, 0
  %6929 = extractvalue %dx.types.CBufRet.f32 %6927, 1
  %6930 = extractvalue %dx.types.CBufRet.f32 %6927, 3
  %6931 = fmul fast float %6930, %6907
  %6932 = fmul fast float %6930, %6911
  %6933 = fadd fast float %6931, %6928
  %6934 = fadd fast float %6932, %6929
  %6935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6936 = extractvalue %dx.types.CBufRet.f32 %6935, 1
  %6937 = fsub fast float %6936, %6915
  %6938 = extractvalue %dx.types.CBufRet.f32 %6935, 2
  %6939 = fmul fast float %6937, %6938
  %6940 = fsub fast float 1.000000e+00, %6939
  %6941 = call float @dx.op.unary.f32(i32 7, float %6940)  ; Saturate(value)
  br i1 %6918, label %7002, label %6942

; <label>:6942                                    ; preds = %6888
  %6943 = extractvalue %dx.types.CBufRet.f32 %6927, 2
  %6944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6945 = extractvalue %dx.types.CBufRet.f32 %6944, 2
  %6946 = fadd fast float %6945, %6943
  %6947 = fcmp fast ogt float %6946, 0.000000e+00
  br i1 %6947, label %6948, label %6972

; <label>:6948                                    ; preds = %6942
  %6949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6950 = extractvalue %dx.types.CBufRet.f32 %6949, 0
  %6951 = extractvalue %dx.types.CBufRet.f32 %6949, 1
  %6952 = fsub fast float %6933, %6950
  %6953 = fsub fast float %6934, %6951
  %6954 = fcmp fast olt float %6952, 0.000000e+00
  %6955 = fcmp fast olt float %6953, 0.000000e+00
  %6956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6957 = extractvalue %dx.types.CBufRet.f32 %6956, 0
  %6958 = extractvalue %dx.types.CBufRet.f32 %6956, 1
  %6959 = extractvalue %dx.types.CBufRet.f32 %6956, 2
  %6960 = extractvalue %dx.types.CBufRet.f32 %6956, 3
  %6961 = select i1 %6954, float %6957, float %6959
  %6962 = select i1 %6955, float %6958, float %6960
  %6963 = fmul fast float %6961, %6952
  %6964 = fmul fast float %6962, %6953
  %6965 = call float @dx.op.unary.f32(i32 6, float %6963)  ; FAbs(value)
  %6966 = call float @dx.op.unary.f32(i32 6, float %6964)  ; FAbs(value)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6968 = call float @dx.op.binary.f32(i32 35, float %6965, float %6966)  ; FMax(a,b)
  %6969 = fsub fast float %6967, %6968
  %6970 = call float @dx.op.unary.f32(i32 7, float %6969)  ; Saturate(value)
  %6971 = fmul fast float %6970, %6941
  br label %6972

; <label>:6972                                    ; preds = %6948, %6942
  %6973 = phi float [ %6971, %6948 ], [ 0.000000e+00, %6942 ]
  %6974 = extractvalue %dx.types.CBufRet.f32 %6919, 2
  %6975 = extractvalue %dx.types.CBufRet.f32 %6944, 1
  %6976 = fadd fast float %6975, %6974
  %6977 = fcmp fast ogt float %6976, 0.000000e+00
  br i1 %6977, label %6978, label %7002

; <label>:6978                                    ; preds = %6972
  %6979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6980 = extractvalue %dx.types.CBufRet.f32 %6979, 0
  %6981 = extractvalue %dx.types.CBufRet.f32 %6979, 1
  %6982 = fsub fast float %6925, %6980
  %6983 = fsub fast float %6926, %6981
  %6984 = fcmp fast olt float %6982, 0.000000e+00
  %6985 = fcmp fast olt float %6983, 0.000000e+00
  %6986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6987 = extractvalue %dx.types.CBufRet.f32 %6986, 0
  %6988 = extractvalue %dx.types.CBufRet.f32 %6986, 1
  %6989 = extractvalue %dx.types.CBufRet.f32 %6986, 2
  %6990 = extractvalue %dx.types.CBufRet.f32 %6986, 3
  %6991 = select i1 %6984, float %6987, float %6989
  %6992 = select i1 %6985, float %6988, float %6990
  %6993 = fmul fast float %6991, %6982
  %6994 = fmul fast float %6992, %6983
  %6995 = call float @dx.op.unary.f32(i32 6, float %6993)  ; FAbs(value)
  %6996 = call float @dx.op.unary.f32(i32 6, float %6994)  ; FAbs(value)
  %6997 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %6998 = call float @dx.op.binary.f32(i32 35, float %6995, float %6996)  ; FMax(a,b)
  %6999 = fsub fast float %6997, %6998
  %7000 = call float @dx.op.unary.f32(i32 7, float %6999)  ; Saturate(value)
  %7001 = fmul fast float %7000, %6941
  br label %7002

; <label>:7002                                    ; preds = %6978, %6972, %6888
  %7003 = phi float [ 0.000000e+00, %6888 ], [ %7001, %6978 ], [ 0.000000e+00, %6972 ]
  %7004 = phi float [ 0.000000e+00, %6888 ], [ %6973, %6978 ], [ %6973, %6972 ]
  %7005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %7006 = extractvalue %dx.types.CBufRet.f32 %7005, 1
  %7007 = call float @dx.op.unary.f32(i32 7, float %7006)  ; Saturate(value)
  %7008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %7009 = extractvalue %dx.types.CBufRet.f32 %7008, 0
  %7010 = extractvalue %dx.types.CBufRet.f32 %7008, 1
  %7011 = fsub fast float %6907, %7009
  %7012 = fsub fast float %6911, %7010
  %7013 = fcmp fast olt float %7011, 0.000000e+00
  %7014 = fcmp fast olt float %7012, 0.000000e+00
  %7015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %7016 = extractvalue %dx.types.CBufRet.f32 %7015, 0
  %7017 = extractvalue %dx.types.CBufRet.f32 %7015, 1
  %7018 = extractvalue %dx.types.CBufRet.f32 %7015, 2
  %7019 = extractvalue %dx.types.CBufRet.f32 %7015, 3
  %7020 = select i1 %7013, float %7016, float %7018
  %7021 = select i1 %7014, float %7017, float %7019
  %7022 = fmul fast float %7020, %7011
  %7023 = fmul fast float %7021, %7012
  %7024 = call float @dx.op.unary.f32(i32 6, float %7022)  ; FAbs(value)
  %7025 = call float @dx.op.unary.f32(i32 6, float %7023)  ; FAbs(value)
  %7026 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  %7027 = call float @dx.op.binary.f32(i32 35, float %7024, float %7025)  ; FMax(a,b)
  %7028 = fsub fast float %7026, %7027
  %7029 = call float @dx.op.unary.f32(i32 7, float %7028)  ; Saturate(value)
  %7030 = call float @dx.op.binary.f32(i32 36, float %7029, float %7007)  ; FMin(a,b)
  %7031 = fmul fast float %7030, %6941
  %7032 = fsub fast float %7003, %7031
  %7033 = fsub fast float %7004, %7003
  %7034 = fsub fast float %7033, %7031
  %7035 = call float @dx.op.binary.f32(i32 35, float %7003, float %7004)  ; FMax(a,b)
  %7036 = call float @dx.op.binary.f32(i32 35, float %7031, float %7035)  ; FMax(a,b)
  %7037 = fcmp fast olt float %7036, 1.000000e+00
  br i1 %7037, label %7038, label %7436, !dx.controlflow.hints !95

; <label>:7038                                    ; preds = %7002
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = fcmp fast une float %7040, 0.000000e+00
  br i1 %7041, label %7042, label %7436, !dx.controlflow.hints !96

; <label>:7042                                    ; preds = %7038
  %7043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %7044 = extractvalue %dx.types.CBufRet.f32 %7043, 0
  %7045 = extractvalue %dx.types.CBufRet.f32 %7043, 1
  %7046 = extractvalue %dx.types.CBufRet.f32 %7043, 2
  %7047 = extractvalue %dx.types.CBufRet.f32 %7043, 3
  %7048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7049 = extractvalue %dx.types.CBufRet.f32 %7048, 0
  %7050 = extractvalue %dx.types.CBufRet.f32 %7048, 1
  %7051 = extractvalue %dx.types.CBufRet.f32 %7048, 2
  %7052 = extractvalue %dx.types.CBufRet.f32 %7048, 3
  %7053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %7054 = extractvalue %dx.types.CBufRet.f32 %7053, 0
  %7055 = extractvalue %dx.types.CBufRet.f32 %7053, 1
  %7056 = extractvalue %dx.types.CBufRet.f32 %7053, 2
  %7057 = extractvalue %dx.types.CBufRet.f32 %7053, 3
  %7058 = fmul fast float %7044, %6884
  %7059 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %7045, float %7058)  ; FMad(a,b,c)
  %7060 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %7046, float %7059)  ; FMad(a,b,c)
  %7061 = fadd fast float %7060, %7047
  %7062 = fmul fast float %7049, %6884
  %7063 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %7050, float %7062)  ; FMad(a,b,c)
  %7064 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %7051, float %7063)  ; FMad(a,b,c)
  %7065 = fadd fast float %7064, %7052
  %7066 = fmul fast float %7054, %6884
  %7067 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %7055, float %7066)  ; FMad(a,b,c)
  %7068 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %7056, float %7067)  ; FMad(a,b,c)
  %7069 = fadd fast float %7068, %7057
  %7070 = fcmp fast oge float %7061, 1.000000e+00
  %7071 = fcmp fast oge float %7065, 1.000000e+00
  %7072 = or i1 %7070, %7071
  %7073 = fcmp fast olt float %7061, 0.000000e+00
  %7074 = fcmp fast olt float %7065, 0.000000e+00
  %7075 = or i1 %7073, %7074
  %7076 = or i1 %7072, %7075
  br i1 %7076, label %7436, label %7077, !dx.controlflow.hints !97

; <label>:7077                                    ; preds = %7042
  %7078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %7079 = extractvalue %dx.types.CBufRet.f32 %7078, 0
  %7080 = extractvalue %dx.types.CBufRet.f32 %7078, 1
  %7081 = extractvalue %dx.types.CBufRet.f32 %7078, 2
  %7082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %7083 = extractvalue %dx.types.CBufRet.i32 %7082, 2
  %7084 = uitofp i32 %7083 to float
  %7085 = extractvalue %dx.types.CBufRet.i32 %7082, 3
  %7086 = uitofp i32 %7085 to float
  %7087 = extractvalue %dx.types.CBufRet.f32 %7078, 3
  %7088 = fmul fast float %7087, 2.000000e+00
  %7089 = fsub fast float %7061, %7079
  %7090 = fsub fast float %7065, %7080
  %7091 = fmul fast float %7088, %7089
  %7092 = fmul fast float %7088, %7090
  %7093 = fdiv fast float 1.000000e+00, %6867
  %7094 = fmul fast float %7092, %7093
  %7095 = call float @dx.op.unary.f32(i32 6, float %7094)  ; FAbs(value)
  %7096 = fmul fast float %7081, %6886
  %7097 = fmul fast float %7096, %7088
  %7098 = call float @dx.op.unary.f32(i32 6, float %7097)  ; FAbs(value)
  %7099 = call float @dx.op.unary.f32(i32 6, float %7091)  ; FAbs(value)
  %7100 = call float @dx.op.binary.f32(i32 35, float %7098, float %7095)  ; FMax(a,b)
  %7101 = call float @dx.op.binary.f32(i32 35, float %7099, float %7100)  ; FMax(a,b)
  %7102 = fmul fast float %7101, 2.000000e+00
  %7103 = call float @dx.op.unary.f32(i32 23, float %7102)  ; Log(value)
  %7104 = call float @dx.op.binary.f32(i32 35, float %7103, float %7084)  ; FMax(a,b)
  %7105 = call float @dx.op.unary.f32(i32 22, float %7104)  ; Frc(value)
  %7106 = fadd fast float %7105, 0xBFEA666660000000
  %7107 = fmul fast float %7106, 8.000000e+00
  %7108 = call float @dx.op.unary.f32(i32 7, float %7107)  ; Saturate(value)
  %7109 = call float @dx.op.unary.f32(i32 27, float %7104)  ; Round_ni(value)
  %7110 = fadd fast float %7109, %7108
  %7111 = call float @dx.op.binary.f32(i32 36, float %7110, float %7086)  ; FMin(a,b)
  %7112 = call float @dx.op.unary.f32(i32 27, float %7111)  ; Round_ni(value)
  %7113 = fsub fast float -0.000000e+00, %7112
  %7114 = call float @dx.op.unary.f32(i32 21, float %7113)  ; Exp(value)
  %7115 = fmul fast float %7114, %7088
  %7116 = fmul fast float %7115, %7061
  %7117 = fmul fast float %7115, %7065
  %7118 = fmul fast float %7116, 2.500000e-01
  %7119 = fmul fast float %7117, 2.500000e-01
  %7120 = fadd fast float %7118, 5.000000e-01
  %7121 = fadd fast float %7119, 5.000000e-01
  %7122 = fsub fast float %7086, %7084
  %7123 = fptoui float %7122 to i32
  %7124 = add i32 %7123, 320
  %7125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %7124)  ; CBufferLoadLegacy(handle,regIndex)
  %7126 = extractvalue %dx.types.CBufRet.f32 %7125, 0
  %7127 = extractvalue %dx.types.CBufRet.f32 %7125, 1
  %7128 = fcmp fast une float %7111, %7086
  %7129 = fsub fast float %7061, %7126
  %7130 = fsub fast float %7065, %7127
  %7131 = call float @dx.op.unary.f32(i32 6, float %7129)  ; FAbs(value)
  %7132 = call float @dx.op.unary.f32(i32 6, float %7130)  ; FAbs(value)
  %7133 = fmul fast float %7131, %7115
  %7134 = fmul fast float %7132, %7115
  %7135 = fcmp fast olt float %7133, 1.000000e+00
  %7136 = fcmp fast olt float %7134, 1.000000e+00
  %7137 = and i1 %7135, %7136
  %7138 = or i1 %7128, %7137
  br i1 %7138, label %7139, label %7436, !dx.controlflow.hints !98

; <label>:7139                                    ; preds = %7077
  %7140 = fmul fast float %7117, 5.000000e-01
  %7141 = fmul fast float %7116, 5.000000e-01
  %7142 = fadd fast float %7140, 5.000000e-01
  %7143 = fadd fast float %7141, 5.000000e-01
  %7144 = sitofp i32 %7083 to float
  %7145 = fsub fast float %7111, %7144
  %7146 = call float @dx.op.unary.f32(i32 27, float %7145)  ; Round_ni(value)
  %7147 = call float @dx.op.unary.f32(i32 22, float %7111)  ; Frc(value)
  %7148 = call float @dx.op.unary.f32(i32 22, float %7143)  ; Frc(value)
  %7149 = call float @dx.op.unary.f32(i32 22, float %7142)  ; Frc(value)
  %7150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %7148, float %7149, float %7146, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7151 = extractvalue %dx.types.ResRet.f32 %7150, 0
  %7152 = extractvalue %dx.types.ResRet.f32 %7150, 1
  %7153 = extractvalue %dx.types.ResRet.f32 %7150, 2
  %7154 = extractvalue %dx.types.ResRet.f32 %7150, 3
  %7155 = fcmp fast ogt float %7147, 0.000000e+00
  br i1 %7155, label %7156, label %7177, !dx.controlflow.hints !99

; <label>:7156                                    ; preds = %7139
  %7157 = fadd fast float %7146, 1.000000e+00
  %7158 = call float @dx.op.unary.f32(i32 22, float %7120)  ; Frc(value)
  %7159 = call float @dx.op.unary.f32(i32 22, float %7121)  ; Frc(value)
  %7160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %43, float %7158, float %7159, float %7157, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7161 = extractvalue %dx.types.ResRet.f32 %7160, 0
  %7162 = extractvalue %dx.types.ResRet.f32 %7160, 1
  %7163 = extractvalue %dx.types.ResRet.f32 %7160, 2
  %7164 = extractvalue %dx.types.ResRet.f32 %7160, 3
  %7165 = fsub fast float %7161, %7151
  %7166 = fsub fast float %7162, %7152
  %7167 = fsub fast float %7163, %7153
  %7168 = fsub fast float %7164, %7154
  %7169 = fmul fast float %7165, %7147
  %7170 = fmul fast float %7166, %7147
  %7171 = fmul fast float %7167, %7147
  %7172 = fmul fast float %7168, %7147
  %7173 = fadd fast float %7169, %7151
  %7174 = fadd fast float %7170, %7152
  %7175 = fadd fast float %7171, %7153
  %7176 = fadd fast float %7172, %7154
  br label %7177

; <label>:7177                                    ; preds = %7156, %7139
  %7178 = phi float [ %7173, %7156 ], [ %7151, %7139 ]
  %7179 = phi float [ %7174, %7156 ], [ %7152, %7139 ]
  %7180 = phi float [ %7175, %7156 ], [ %7153, %7139 ]
  %7181 = phi float [ %7176, %7156 ], [ %7154, %7139 ]
  %7182 = fadd fast float %7178, -5.000000e-01
  %7183 = fadd fast float %7180, -5.000000e-01
  %7184 = fmul fast float %7182, 0xBFD5555560000000
  %7185 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %7183, float %7184)  ; FMad(a,b,c)
  %7186 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %7179, float 0.000000e+00)  ; FMad(a,b,c)
  %7187 = fadd fast float %7186, %7181
  %7188 = fmul fast float %7182, -7.500000e-01
  %7189 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %7183, float %7188)  ; FMad(a,b,c)
  %7190 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %7179, float 0.000000e+00)  ; FMad(a,b,c)
  %7191 = fadd fast float %7190, %7181
  %7192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %7193 = extractvalue %dx.types.CBufRet.f32 %7192, 0
  %7194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.f32 %7194, 0
  %7196 = extractvalue %dx.types.CBufRet.f32 %7194, 1
  %7197 = extractvalue %dx.types.CBufRet.f32 %7194, 2
  %7198 = extractvalue %dx.types.CBufRet.f32 %7194, 3
  %7199 = fsub fast float %7195, %7185
  %7200 = fsub fast float %7196, %7187
  %7201 = fsub fast float %7197, %7189
  %7202 = fsub fast float %7198, %7191
  %7203 = fmul fast float %7199, %7193
  %7204 = fmul fast float %7200, %7193
  %7205 = fmul fast float %7201, %7193
  %7206 = fmul fast float %7202, %7193
  %7207 = fadd fast float %7203, %7185
  %7208 = fadd fast float %7204, %7187
  %7209 = fadd fast float %7205, %7189
  %7210 = fadd fast float %7206, %7191
  %7211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %7212 = extractvalue %dx.types.ResRet.i32 %7211, 0
  %7213 = and i32 %7212, 536870911
  %7214 = uitofp i32 %7213 to float
  %7215 = fmul fast float %7214, %7061
  %7216 = fmul fast float %7214, %7065
  %7217 = fptoui float %7215 to i32
  %7218 = fptoui float %7216 to i32
  %7219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7220 = extractvalue %dx.types.ResRet.i32 %7219, 0
  %7221 = and i32 %7220, 31
  %7222 = lshr i32 %7217, %7221
  %7223 = lshr i32 %7218, %7221
  %7224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7225 = extractvalue %dx.types.ResRet.i32 %7224, 0
  %7226 = and i32 %7225, 31
  %7227 = shl i32 1, %7226
  %7228 = call i32 @dx.op.binary.i32(i32 40, i32 %7227, i32 4)  ; UMin(a,b)
  %7229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %7230 = extractvalue %dx.types.ResRet.i32 %7229, 0
  %7231 = extractvalue %dx.types.ResRet.i32 %7229, 1
  %7232 = icmp eq i32 %7228, 0
  br i1 %7232, label %7274, label %7233

; <label>:7233                                    ; preds = %7177
  br label %7234

; <label>:7234                                    ; preds = %7262, %7233
  %7235 = phi i32 [ %7265, %7262 ], [ 0, %7233 ]
  %7236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7237 = extractvalue %dx.types.ResRet.i32 %7236, 0
  %7238 = lshr i32 %7237, 16
  %7239 = and i32 %7238, 31
  %7240 = shl i32 %7223, %7239
  %7241 = add i32 %7240, %7222
  %7242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %7243 = extractvalue %dx.types.ResRet.i32 %7242, 0
  %7244 = and i32 %7243, 31
  %7245 = shl i32 %7241, %7244
  %7246 = add i32 %7245, %7235
  %7247 = shl i32 %7246, 2
  %7248 = add i32 %7247, 32
  %7249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7248, i32 undef)  ; BufferLoad(srv,index,wot)
  %7250 = extractvalue %dx.types.ResRet.i32 %7249, 0
  %7251 = icmp slt i32 %7250, 0
  %7252 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7235
  %7253 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7235
  %7254 = bitcast float* %7252 to i32*
  %7255 = bitcast float* %7253 to i32*
  br i1 %7251, label %7256, label %7262

; <label>:7256                                    ; preds = %7234
  %7257 = and i32 %7250, 1073741823
  %7258 = add nuw nsw i32 %7257, 20
  %7259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7258, i32 undef)  ; BufferLoad(srv,index,wot)
  %7260 = extractvalue %dx.types.ResRet.i32 %7259, 0
  %7261 = extractvalue %dx.types.ResRet.i32 %7259, 1
  br label %7262

; <label>:7262                                    ; preds = %7256, %7234
  %7263 = phi i32 [ %7260, %7256 ], [ %7230, %7234 ]
  %7264 = phi i32 [ %7261, %7256 ], [ %7231, %7234 ]
  store i32 %7263, i32* %7254, align 4
  store i32 %7264, i32* %7255, align 4
  %7265 = add nuw i32 %7235, 1
  %7266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %7267 = extractvalue %dx.types.CBufRet.i32 %7266, 2
  %7268 = icmp eq i32 %7267, 0
  %7269 = icmp ugt i32 %7250, -1073741825
  %7270 = and i1 %7269, %7268
  %7271 = icmp ult i32 %7265, %7228
  %7272 = and i1 %7270, %7271
  br i1 %7272, label %7234, label %7273

; <label>:7273                                    ; preds = %7262
  br label %7274

; <label>:7274                                    ; preds = %7273, %7177
  %7275 = phi i32 [ 0, %7177 ], [ %7265, %7273 ]
  %7276 = extractvalue %dx.types.CBufRet.f32 %7039, 2
  %7277 = fptoui float %7276 to i32
  %7278 = icmp eq i32 %7277, 0
  br i1 %7278, label %7330, label %7279

; <label>:7279                                    ; preds = %7274
  br label %7280

; <label>:7280                                    ; preds = %7325, %7279
  %7281 = phi i32 [ %7326, %7325 ], [ %7275, %7279 ]
  %7282 = phi i32 [ %7327, %7325 ], [ 0, %7279 ]
  %7283 = lshr i32 %7282, 2
  %7284 = and i32 %7282, 3
  %7285 = add nuw nsw i32 %7283, 83
  %7286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 %7285)  ; CBufferLoadLegacy(handle,regIndex)
  %7287 = extractvalue %dx.types.CBufRet.i32 %7286, 0
  %7288 = extractvalue %dx.types.CBufRet.i32 %7286, 1
  %7289 = extractvalue %dx.types.CBufRet.i32 %7286, 2
  %7290 = extractvalue %dx.types.CBufRet.i32 %7286, 3
  %7291 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 0
  store i32 %7287, i32* %7291, align 4
  %7292 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 1
  store i32 %7288, i32* %7292, align 4
  %7293 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 2
  store i32 %7289, i32* %7293, align 4
  %7294 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 3
  store i32 %7290, i32* %7294, align 4
  %7295 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i32 0, i32 %7284
  %7296 = load i32, i32* %7295, align 4, !tbaa !100, !noalias !104
  %7297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7298 = extractvalue %dx.types.ResRet.i32 %7297, 0
  %7299 = lshr i32 %7298, 16
  %7300 = and i32 %7299, 31
  %7301 = shl i32 %7223, %7300
  %7302 = add i32 %7301, %7222
  %7303 = shl i32 %7302, 2
  %7304 = add i32 %7303, %7296
  %7305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7304, i32 undef)  ; BufferLoad(srv,index,wot)
  %7306 = extractvalue %dx.types.ResRet.i32 %7305, 0
  %7307 = icmp eq i32 %7306, 0
  br i1 %7307, label %7325, label %7308

; <label>:7308                                    ; preds = %7280
  %7309 = icmp slt i32 %7306, 0
  %7310 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7281
  %7311 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7281
  %7312 = bitcast float* %7310 to i32*
  %7313 = bitcast float* %7311 to i32*
  br i1 %7309, label %7314, label %7321

; <label>:7314                                    ; preds = %7308
  %7315 = and i32 %7306, 1073741823
  %7316 = add i32 %7296, 20
  %7317 = add i32 %7316, %7315
  %7318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %7317, i32 undef)  ; BufferLoad(srv,index,wot)
  %7319 = extractvalue %dx.types.ResRet.i32 %7318, 0
  %7320 = extractvalue %dx.types.ResRet.i32 %7318, 1
  br label %7321

; <label>:7321                                    ; preds = %7314, %7308
  %7322 = phi i32 [ %7319, %7314 ], [ %7230, %7308 ]
  %7323 = phi i32 [ %7320, %7314 ], [ %7231, %7308 ]
  store i32 %7322, i32* %7312, align 4
  store i32 %7323, i32* %7313, align 4
  %7324 = add i32 %7281, 1
  br label %7325

; <label>:7325                                    ; preds = %7321, %7280
  %7326 = phi i32 [ %7281, %7280 ], [ %7324, %7321 ]
  %7327 = add nuw i32 %7282, 1
  %7328 = icmp eq i32 %7327, %7277
  br i1 %7328, label %7329, label %7280

; <label>:7329                                    ; preds = %7325
  br label %7330

; <label>:7330                                    ; preds = %7329, %7274
  %7331 = phi i32 [ %7275, %7274 ], [ %7326, %7329 ]
  %7332 = icmp eq i32 %7331, 1
  %7333 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 0
  %7334 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 0
  br i1 %7332, label %7335, label %7338

; <label>:7335                                    ; preds = %7330
  %7336 = load float, float* %7333, align 4
  %7337 = load float, float* %7334, align 4
  br label %7365

; <label>:7338                                    ; preds = %7330
  %7339 = load float, float* %7333, align 4
  %7340 = load float, float* %7334, align 4
  %7341 = fdiv fast float 1.000000e+00, %7340
  %7342 = fsub fast float %7339, %7341
  %7343 = icmp ugt i32 %7331, 1
  br i1 %7343, label %7344, label %7360

; <label>:7344                                    ; preds = %7338
  br label %7345

; <label>:7345                                    ; preds = %7345, %7344
  %7346 = phi float [ %7355, %7345 ], [ %7342, %7344 ]
  %7347 = phi float [ %7356, %7345 ], [ %7339, %7344 ]
  %7348 = phi i32 [ %7357, %7345 ], [ 1, %7344 ]
  %7349 = getelementptr [12 x float], [12 x float]* %97, i32 0, i32 %7348
  %7350 = load float, float* %7349, align 4
  %7351 = getelementptr [12 x float], [12 x float]* %98, i32 0, i32 %7348
  %7352 = load float, float* %7351, align 4
  %7353 = fdiv fast float 1.000000e+00, %7352
  %7354 = fsub fast float %7350, %7353
  %7355 = call float @dx.op.binary.f32(i32 36, float %7346, float %7354)  ; FMin(a,b)
  %7356 = call float @dx.op.binary.f32(i32 35, float %7347, float %7350)  ; FMax(a,b)
  %7357 = add nuw i32 %7348, 1
  %7358 = icmp eq i32 %7357, %7331
  br i1 %7358, label %7359, label %7345

; <label>:7359                                    ; preds = %7345
  br label %7360

; <label>:7360                                    ; preds = %7359, %7338
  %7361 = phi float [ %7342, %7338 ], [ %7355, %7359 ]
  %7362 = phi float [ %7339, %7338 ], [ %7356, %7359 ]
  %7363 = fsub fast float %7362, %7361
  %7364 = fdiv fast float 1.000000e+00, %7363
  br label %7365

; <label>:7365                                    ; preds = %7360, %7335
  %7366 = phi float [ %7336, %7335 ], [ %7362, %7360 ]
  %7367 = phi float [ %7337, %7335 ], [ %7364, %7360 ]
  %7368 = fadd fast float %7069, %7366
  %7369 = fmul fast float %7368, %7367
  %7370 = call float @dx.op.unary.f32(i32 7, float %7369)  ; Saturate(value)
  %7371 = fmul fast float %7370, 2.000000e+00
  %7372 = fsub fast float 1.000000e+00, %7371
  %7373 = fmul fast float %7207, %7207
  %7374 = fsub fast float %7208, %7373
  %7375 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7374)  ; FMax(a,b)
  %7376 = fdiv fast float 1.000000e+00, %7375
  %7377 = fmul fast float %7208, %7207
  %7378 = fsub fast float %7209, %7377
  %7379 = fsub fast float %7372, %7207
  %7380 = fmul fast float %7372, %7372
  %7381 = fsub fast float %7380, %7208
  %7382 = fmul fast float %7376, %7378
  %7383 = fmul fast float %7382, %7379
  %7384 = fsub fast float %7381, %7383
  %7385 = fmul fast float %7208, %7208
  %7386 = fsub fast float %7210, %7385
  %7387 = fmul fast float %7378, %7378
  %7388 = fmul fast float %7387, %7376
  %7389 = fsub fast float %7386, %7388
  %7390 = fdiv fast float %7384, %7389
  %7391 = fmul fast float %7390, %7378
  %7392 = fsub fast float %7379, %7391
  %7393 = fmul fast float %7392, %7376
  %7394 = fmul fast float %7393, %7207
  %7395 = fsub fast float 1.000000e+00, %7394
  %7396 = fmul fast float %7390, %7208
  %7397 = fsub fast float %7395, %7396
  %7398 = fmul fast float %7393, %7393
  %7399 = fmul fast float %7390, 4.000000e+00
  %7400 = fmul fast float %7399, %7397
  %7401 = fsub fast float %7398, %7400
  %7402 = call float @dx.op.unary.f32(i32 24, float %7401)  ; Sqrt(value)
  %7403 = fcmp fast oge float %7393, 0.000000e+00
  %7404 = fsub fast float -0.000000e+00, %7402
  %7405 = select i1 %7403, float %7404, float %7402
  %7406 = fsub fast float %7405, %7393
  %7407 = fdiv fast float %7406, %7390
  %7408 = fdiv fast float %7397, %7406
  %7409 = fmul fast float %7407, 5.000000e-01
  %7410 = fmul fast float %7408, 2.000000e+00
  %7411 = select i1 %7403, float %7409, float %7410
  %7412 = select i1 %7403, float %7410, float %7409
  %7413 = call float @dx.op.binary.f32(i32 35, float %7411, float %7412)  ; FMax(a,b)
  %7414 = call float @dx.op.binary.f32(i32 36, float %7411, float %7412)  ; FMin(a,b)
  %7415 = fcmp fast ogt float %7372, %7413
  %7416 = fsub fast float %7372, %7414
  %7417 = fsub fast float %7372, %7413
  %7418 = fsub fast float %7413, %7414
  %7419 = select i1 %7415, float %7417, float %7418
  %7420 = fmul float %7416, %7419
  %7421 = select i1 %7415, float %7414, float %7372
  %7422 = fcmp fast ogt float %7372, %7414
  %7423 = fmul fast float %7421, %7413
  %7424 = fadd fast float %7421, %7413
  %7425 = fmul fast float %7424, %7207
  %7426 = fadd fast float %7423, %7208
  %7427 = fsub fast float %7426, %7425
  %7428 = fdiv fast float %7427, %7420
  %7429 = select i1 %7422, float %7428, float 0.000000e+00
  %7430 = fsub fast float 1.000000e+00, %7429
  %7431 = select i1 %7415, float %7430, float %7429
  %7432 = call float @dx.op.unary.f32(i32 7, float %7431)  ; Saturate(value)
  %7433 = extractvalue %dx.types.CBufRet.f32 %7192, 3
  %7434 = fmul fast float %7433, %7432
  %7435 = fsub fast float 1.000000e+00, %7434
  br label %7436

; <label>:7436                                    ; preds = %7365, %7077, %7042, %7038, %7002
  %7437 = phi float [ 1.000000e+00, %7002 ], [ %7435, %7365 ], [ 1.000000e+00, %7042 ], [ 1.000000e+00, %7077 ], [ 1.000000e+00, %7038 ]
  %7438 = fcmp fast ogt float %7034, 0.000000e+00
  br i1 %7438, label %7439, label %7603, !dx.controlflow.hints !113

; <label>:7439                                    ; preds = %7436
  %7440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7441 = extractvalue %dx.types.CBufRet.f32 %7440, 2
  %7442 = fadd fast float %7441, %6915
  %7443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7444 = extractvalue %dx.types.CBufRet.f32 %7443, 2
  %7445 = extractvalue %dx.types.CBufRet.f32 %7443, 3
  %7446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7447 = extractvalue %dx.types.CBufRet.f32 %7446, 2
  %7448 = call float @dx.op.binary.f32(i32 35, float %7442, float 0.000000e+00)  ; FMax(a,b)
  %7449 = fadd fast float %7448, 0x3F10000000000000
  %7450 = fcmp fast oeq float %7447, 0.000000e+00
  br i1 %7450, label %7451, label %7518

; <label>:7451                                    ; preds = %7439
  %7452 = extractvalue %dx.types.CBufRet.f32 %7443, 1
  %7453 = extractvalue %dx.types.CBufRet.f32 %7443, 0
  %7454 = fmul fast float %7453, %6933
  %7455 = fmul fast float %7452, %6934
  %7456 = fadd fast float %7454, 5.000000e-01
  %7457 = call float @dx.op.unary.f32(i32 27, float %7456)  ; Round_ni(value)
  %7458 = fadd fast float %7455, 5.000000e-01
  %7459 = call float @dx.op.unary.f32(i32 27, float %7458)  ; Round_ni(value)
  %7460 = fsub fast float %7456, %7457
  %7461 = fsub fast float %7458, %7459
  %7462 = fadd fast float %7457, -5.000000e-01
  %7463 = fadd fast float %7459, -5.000000e-01
  %7464 = fmul fast float %7460, 2.000000e+00
  %7465 = fsub fast float 3.000000e+00, %7464
  %7466 = fadd fast float %7464, 1.000000e+00
  %7467 = fsub fast float 2.000000e+00, %7460
  %7468 = bitcast float %7465 to i32
  %7469 = sub nsw i32 2129859010, %7468
  %7470 = bitcast i32 %7469 to float
  %7471 = fmul fast float %7470, %7467
  %7472 = fadd fast float %7471, -1.000000e+00
  %7473 = bitcast float %7466 to i32
  %7474 = sub nsw i32 2129859010, %7473
  %7475 = bitcast i32 %7474 to float
  %7476 = fmul fast float %7475, %7460
  %7477 = fadd fast float %7476, 1.000000e+00
  %7478 = fmul fast float %7461, 2.000000e+00
  %7479 = fsub fast float 3.000000e+00, %7478
  %7480 = fadd fast float %7478, 1.000000e+00
  %7481 = fsub fast float 2.000000e+00, %7461
  %7482 = bitcast float %7479 to i32
  %7483 = sub nsw i32 2129859010, %7482
  %7484 = bitcast i32 %7483 to float
  %7485 = fmul fast float %7484, %7481
  %7486 = fadd fast float %7485, -1.000000e+00
  %7487 = bitcast float %7480 to i32
  %7488 = sub nsw i32 2129859010, %7487
  %7489 = bitcast i32 %7488 to float
  %7490 = fmul fast float %7489, %7461
  %7491 = fadd fast float %7490, 1.000000e+00
  %7492 = fadd fast float %7472, %7462
  %7493 = fmul fast float %7492, %7444
  %7494 = fadd fast float %7486, %7463
  %7495 = fmul fast float %7494, %7445
  %7496 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7493, float %7495, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7497 = extractvalue %dx.types.ResRet.f32 %7496, 0
  %7498 = fmul fast float %7497, %7465
  %7499 = fadd fast float %7477, %7462
  %7500 = fmul fast float %7499, %7444
  %7501 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7500, float %7495, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = fmul fast float %7502, %7466
  %7504 = fadd fast float %7491, %7463
  %7505 = fmul fast float %7504, %7445
  %7506 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7493, float %7505, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = fmul fast float %7507, %7465
  %7509 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %46, float %7500, float %7505, float undef, float undef, i32 0, i32 0, i32 undef, float %7449)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = fmul fast float %7510, %7466
  %7512 = fadd fast float %7511, %7508
  %7513 = fmul fast float %7512, %7480
  %7514 = fadd fast float %7503, %7498
  %7515 = fmul fast float %7514, %7479
  %7516 = fadd fast float %7515, %7513
  %7517 = fmul fast float %7516, 6.250000e-02
  br label %7603

; <label>:7518                                    ; preds = %7439
  %7519 = fmul fast float %260, 0x401921FB60000000
  %7520 = call float @dx.op.unary.f32(i32 13, float %7519)  ; Sin(value)
  %7521 = call float @dx.op.unary.f32(i32 12, float %7519)  ; Cos(value)
  %7522 = fsub fast float -0.000000e+00, %7520
  br label %7523

; <label>:7523                                    ; preds = %7572, %7518
  %7524 = phi float [ 0.000000e+00, %7518 ], [ %7567, %7572 ]
  %7525 = phi float [ 0.000000e+00, %7518 ], [ %7569, %7572 ]
  %7526 = phi i32 [ 0, %7518 ], [ %7573, %7572 ]
  %7527 = mul i32 %7526, 2
  %7528 = add i32 0, %7527
  %7529 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7528
  %7530 = load float, float* %7529, align 4
  %7531 = mul i32 %7526, 2
  %7532 = add i32 1, %7531
  %7533 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7532
  %7534 = load float, float* %7533, align 4
  %7535 = fmul fast float %7530, %7521
  %7536 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7522, float %7535)  ; FMad(a,b,c)
  %7537 = fmul fast float %7530, %7520
  %7538 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7521, float %7537)  ; FMad(a,b,c)
  %7539 = fmul fast float %7536, %7447
  %7540 = fmul fast float %7538, %7447
  %7541 = fadd fast float %7539, %6933
  %7542 = fadd fast float %7540, %6934
  %7543 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %45, float %7541, float %7542, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7544 = extractvalue %dx.types.ResRet.f32 %7543, 0
  %7545 = extractvalue %dx.types.ResRet.f32 %7543, 1
  %7546 = extractvalue %dx.types.ResRet.f32 %7543, 2
  %7547 = extractvalue %dx.types.ResRet.f32 %7543, 3
  %7548 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 0
  store float %7544, float* %7548, align 4
  %7549 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 1
  store float %7545, float* %7549, align 4
  %7550 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 2
  store float %7546, float* %7550, align 4
  %7551 = getelementptr inbounds [4 x float], [4 x float]* %102, i32 0, i32 3
  store float %7547, float* %7551, align 4
  %7552 = fsub fast float %7544, %7449
  %7553 = fcmp fast olt float %7552, 0.000000e+00
  %7554 = select i1 %7553, float 0.000000e+00, float 1.000000e+00
  %7555 = fadd fast float %7554, %7524
  %7556 = fmul fast float %7554, %7552
  %7557 = fadd fast float %7556, %7525
  br label %7558

; <label>:7558                                    ; preds = %7558, %7523
  %7559 = phi i32 [ 1, %7523 ], [ %7570, %7558 ]
  %7560 = phi float [ %7557, %7523 ], [ %7569, %7558 ]
  %7561 = phi float [ %7555, %7523 ], [ %7567, %7558 ]
  %7562 = getelementptr [4 x float], [4 x float]* %102, i32 0, i32 %7559
  %7563 = load float, float* %7562, align 4, !tbaa !114, !noalias !104
  %7564 = fsub fast float %7563, %7449
  %7565 = fcmp fast olt float %7564, 0.000000e+00
  %7566 = select i1 %7565, float 0.000000e+00, float 1.000000e+00
  %7567 = fadd fast float %7566, %7561
  %7568 = fmul fast float %7566, %7564
  %7569 = fadd fast float %7568, %7560
  %7570 = add nuw nsw i32 %7559, 1
  %7571 = icmp eq i32 %7570, 4
  br i1 %7571, label %7572, label %7558, !llvm.loop !116

; <label>:7572                                    ; preds = %7558
  %7573 = add nuw nsw i32 %7526, 1
  %7574 = icmp eq i32 %7573, 8
  br i1 %7574, label %7575, label %7523, !llvm.loop !117

; <label>:7575                                    ; preds = %7572
  %7576 = fdiv fast float 1.000000e+00, %7567
  %7577 = fmul fast float %7576, %7569
  %7578 = fdiv fast float 1.000000e+00, %7449
  %7579 = fmul fast float %7577, %7578
  %7580 = call float @dx.op.unary.f32(i32 7, float %7579)  ; Saturate(value)
  %7581 = call float @dx.op.binary.f32(i32 35, float %7580, float 0.000000e+00)  ; FMax(a,b)
  %7582 = fmul fast float %7567, 3.125000e-02
  %7583 = call float @dx.op.unary.f32(i32 7, float %7582)  ; Saturate(value)
  %7584 = fmul fast float %7583, 2.000000e+00
  %7585 = fadd fast float %7584, -1.000000e+00
  %7586 = fcmp fast ogt float %7585, 0.000000e+00
  %7587 = fcmp fast olt float %7585, 0.000000e+00
  %7588 = zext i1 %7586 to i32
  %7589 = zext i1 %7587 to i32
  %7590 = sub nsw i32 %7588, %7589
  %7591 = sitofp i32 %7590 to float
  %7592 = fmul fast float %7591, %7585
  %7593 = fsub fast float 1.000000e+00, %7592
  %7594 = fmul fast float %7593, %7593
  %7595 = fmul fast float %7594, %7593
  %7596 = fsub fast float %7593, %7595
  %7597 = fmul fast float %7596, %7581
  %7598 = fsub fast float 1.000000e+00, %7595
  %7599 = fsub fast float %7598, %7597
  %7600 = fmul fast float %7591, 5.000000e-01
  %7601 = fmul fast float %7600, %7599
  %7602 = fsub fast float 5.000000e-01, %7601
  br label %7603

; <label>:7603                                    ; preds = %7575, %7451, %7436
  %7604 = phi float [ 1.000000e+00, %7436 ], [ %7517, %7451 ], [ %7602, %7575 ]
  %7605 = fcmp fast ogt float %7032, 0.000000e+00
  br i1 %7605, label %7606, label %7770, !dx.controlflow.hints !118

; <label>:7606                                    ; preds = %7603
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7609 = fadd fast float %7608, %6915
  %7610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7611 = extractvalue %dx.types.CBufRet.f32 %7610, 2
  %7612 = extractvalue %dx.types.CBufRet.f32 %7610, 3
  %7613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7614 = extractvalue %dx.types.CBufRet.f32 %7613, 1
  %7615 = call float @dx.op.binary.f32(i32 35, float %7609, float 0.000000e+00)  ; FMax(a,b)
  %7616 = fadd fast float %7615, 0x3F10000000000000
  %7617 = fcmp fast oeq float %7614, 0.000000e+00
  br i1 %7617, label %7618, label %7685

; <label>:7618                                    ; preds = %7606
  %7619 = extractvalue %dx.types.CBufRet.f32 %7610, 1
  %7620 = extractvalue %dx.types.CBufRet.f32 %7610, 0
  %7621 = fmul fast float %7620, %6925
  %7622 = fmul fast float %7619, %6926
  %7623 = fadd fast float %7621, 5.000000e-01
  %7624 = call float @dx.op.unary.f32(i32 27, float %7623)  ; Round_ni(value)
  %7625 = fadd fast float %7622, 5.000000e-01
  %7626 = call float @dx.op.unary.f32(i32 27, float %7625)  ; Round_ni(value)
  %7627 = fsub fast float %7623, %7624
  %7628 = fsub fast float %7625, %7626
  %7629 = fadd fast float %7624, -5.000000e-01
  %7630 = fadd fast float %7626, -5.000000e-01
  %7631 = fmul fast float %7627, 2.000000e+00
  %7632 = fsub fast float 3.000000e+00, %7631
  %7633 = fadd fast float %7631, 1.000000e+00
  %7634 = fsub fast float 2.000000e+00, %7627
  %7635 = bitcast float %7632 to i32
  %7636 = sub nsw i32 2129859010, %7635
  %7637 = bitcast i32 %7636 to float
  %7638 = fmul fast float %7637, %7634
  %7639 = fadd fast float %7638, -1.000000e+00
  %7640 = bitcast float %7633 to i32
  %7641 = sub nsw i32 2129859010, %7640
  %7642 = bitcast i32 %7641 to float
  %7643 = fmul fast float %7642, %7627
  %7644 = fadd fast float %7643, 1.000000e+00
  %7645 = fmul fast float %7628, 2.000000e+00
  %7646 = fsub fast float 3.000000e+00, %7645
  %7647 = fadd fast float %7645, 1.000000e+00
  %7648 = fsub fast float 2.000000e+00, %7628
  %7649 = bitcast float %7646 to i32
  %7650 = sub nsw i32 2129859010, %7649
  %7651 = bitcast i32 %7650 to float
  %7652 = fmul fast float %7651, %7648
  %7653 = fadd fast float %7652, -1.000000e+00
  %7654 = bitcast float %7647 to i32
  %7655 = sub nsw i32 2129859010, %7654
  %7656 = bitcast i32 %7655 to float
  %7657 = fmul fast float %7656, %7628
  %7658 = fadd fast float %7657, 1.000000e+00
  %7659 = fadd fast float %7639, %7629
  %7660 = fmul fast float %7659, %7611
  %7661 = fadd fast float %7653, %7630
  %7662 = fmul fast float %7661, %7612
  %7663 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7660, float %7662, float undef, float undef, i32 0, i32 0, i32 undef, float %7616)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7664 = extractvalue %dx.types.ResRet.f32 %7663, 0
  %7665 = fmul fast float %7664, %7632
  %7666 = fadd fast float %7644, %7629
  %7667 = fmul fast float %7666, %7611
  %7668 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7667, float %7662, float undef, float undef, i32 0, i32 0, i32 undef, float %7616)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7669 = extractvalue %dx.types.ResRet.f32 %7668, 0
  %7670 = fmul fast float %7669, %7633
  %7671 = fadd fast float %7658, %7630
  %7672 = fmul fast float %7671, %7612
  %7673 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7660, float %7672, float undef, float undef, i32 0, i32 0, i32 undef, float %7616)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7674 = extractvalue %dx.types.ResRet.f32 %7673, 0
  %7675 = fmul fast float %7674, %7632
  %7676 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %46, float %7667, float %7672, float undef, float undef, i32 0, i32 0, i32 undef, float %7616)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7677 = extractvalue %dx.types.ResRet.f32 %7676, 0
  %7678 = fmul fast float %7677, %7633
  %7679 = fadd fast float %7678, %7675
  %7680 = fmul fast float %7679, %7647
  %7681 = fadd fast float %7670, %7665
  %7682 = fmul fast float %7681, %7646
  %7683 = fadd fast float %7682, %7680
  %7684 = fmul fast float %7683, 6.250000e-02
  br label %7770

; <label>:7685                                    ; preds = %7606
  %7686 = fmul fast float %260, 0x401921FB60000000
  %7687 = call float @dx.op.unary.f32(i32 13, float %7686)  ; Sin(value)
  %7688 = call float @dx.op.unary.f32(i32 12, float %7686)  ; Cos(value)
  %7689 = fsub fast float -0.000000e+00, %7687
  br label %7690

; <label>:7690                                    ; preds = %7739, %7685
  %7691 = phi float [ 0.000000e+00, %7685 ], [ %7734, %7739 ]
  %7692 = phi float [ 0.000000e+00, %7685 ], [ %7736, %7739 ]
  %7693 = phi i32 [ 0, %7685 ], [ %7740, %7739 ]
  %7694 = mul i32 %7693, 2
  %7695 = add i32 0, %7694
  %7696 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7695
  %7697 = load float, float* %7696, align 4
  %7698 = mul i32 %7693, 2
  %7699 = add i32 1, %7698
  %7700 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7699
  %7701 = load float, float* %7700, align 4
  %7702 = fmul fast float %7697, %7688
  %7703 = call float @dx.op.tertiary.f32(i32 46, float %7701, float %7689, float %7702)  ; FMad(a,b,c)
  %7704 = fmul fast float %7697, %7687
  %7705 = call float @dx.op.tertiary.f32(i32 46, float %7701, float %7688, float %7704)  ; FMad(a,b,c)
  %7706 = fmul fast float %7703, %7614
  %7707 = fmul fast float %7705, %7614
  %7708 = fadd fast float %7706, %6925
  %7709 = fadd fast float %7707, %6926
  %7710 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %45, float %7708, float %7709, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7711 = extractvalue %dx.types.ResRet.f32 %7710, 0
  %7712 = extractvalue %dx.types.ResRet.f32 %7710, 1
  %7713 = extractvalue %dx.types.ResRet.f32 %7710, 2
  %7714 = extractvalue %dx.types.ResRet.f32 %7710, 3
  %7715 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 0
  store float %7711, float* %7715, align 4
  %7716 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 1
  store float %7712, float* %7716, align 4
  %7717 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 2
  store float %7713, float* %7717, align 4
  %7718 = getelementptr inbounds [4 x float], [4 x float]* %101, i32 0, i32 3
  store float %7714, float* %7718, align 4
  %7719 = fsub fast float %7711, %7616
  %7720 = fcmp fast olt float %7719, 0.000000e+00
  %7721 = select i1 %7720, float 0.000000e+00, float 1.000000e+00
  %7722 = fadd fast float %7721, %7691
  %7723 = fmul fast float %7721, %7719
  %7724 = fadd fast float %7723, %7692
  br label %7725

; <label>:7725                                    ; preds = %7725, %7690
  %7726 = phi i32 [ 1, %7690 ], [ %7737, %7725 ]
  %7727 = phi float [ %7724, %7690 ], [ %7736, %7725 ]
  %7728 = phi float [ %7722, %7690 ], [ %7734, %7725 ]
  %7729 = getelementptr [4 x float], [4 x float]* %101, i32 0, i32 %7726
  %7730 = load float, float* %7729, align 4, !tbaa !114, !noalias !104
  %7731 = fsub fast float %7730, %7616
  %7732 = fcmp fast olt float %7731, 0.000000e+00
  %7733 = select i1 %7732, float 0.000000e+00, float 1.000000e+00
  %7734 = fadd fast float %7733, %7728
  %7735 = fmul fast float %7733, %7731
  %7736 = fadd fast float %7735, %7727
  %7737 = add nuw nsw i32 %7726, 1
  %7738 = icmp eq i32 %7737, 4
  br i1 %7738, label %7739, label %7725, !llvm.loop !116

; <label>:7739                                    ; preds = %7725
  %7740 = add nuw nsw i32 %7693, 1
  %7741 = icmp eq i32 %7740, 8
  br i1 %7741, label %7742, label %7690, !llvm.loop !117

; <label>:7742                                    ; preds = %7739
  %7743 = fdiv fast float 1.000000e+00, %7734
  %7744 = fmul fast float %7743, %7736
  %7745 = fdiv fast float 1.000000e+00, %7616
  %7746 = fmul fast float %7744, %7745
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = call float @dx.op.binary.f32(i32 35, float %7747, float 0.000000e+00)  ; FMax(a,b)
  %7749 = fmul fast float %7734, 3.125000e-02
  %7750 = call float @dx.op.unary.f32(i32 7, float %7749)  ; Saturate(value)
  %7751 = fmul fast float %7750, 2.000000e+00
  %7752 = fadd fast float %7751, -1.000000e+00
  %7753 = fcmp fast ogt float %7752, 0.000000e+00
  %7754 = fcmp fast olt float %7752, 0.000000e+00
  %7755 = zext i1 %7753 to i32
  %7756 = zext i1 %7754 to i32
  %7757 = sub nsw i32 %7755, %7756
  %7758 = sitofp i32 %7757 to float
  %7759 = fmul fast float %7758, %7752
  %7760 = fsub fast float 1.000000e+00, %7759
  %7761 = fmul fast float %7760, %7760
  %7762 = fmul fast float %7761, %7760
  %7763 = fsub fast float %7760, %7762
  %7764 = fmul fast float %7763, %7748
  %7765 = fsub fast float 1.000000e+00, %7762
  %7766 = fsub fast float %7765, %7764
  %7767 = fmul fast float %7758, 5.000000e-01
  %7768 = fmul fast float %7767, %7766
  %7769 = fsub fast float 5.000000e-01, %7768
  br label %7770

; <label>:7770                                    ; preds = %7742, %7618, %7603
  %7771 = phi float [ 1.000000e+00, %7603 ], [ %7684, %7618 ], [ %7769, %7742 ]
  %7772 = fcmp fast ogt float %7031, 0.000000e+00
  br i1 %7772, label %7773, label %8091, !dx.controlflow.hints !119

; <label>:7773                                    ; preds = %7770
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = fadd fast float %7775, %6915
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 2
  %7779 = extractvalue %dx.types.CBufRet.f32 %7777, 3
  %7780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7781 = extractvalue %dx.types.CBufRet.f32 %7780, 0
  %7782 = call float @dx.op.binary.f32(i32 35, float %7776, float 0.000000e+00)  ; FMax(a,b)
  %7783 = fadd fast float %7782, 0x3F10000000000000
  %7784 = fcmp fast oeq float %7781, 0.000000e+00
  br i1 %6918, label %7785, label %7938, !dx.controlflow.hints !120

; <label>:7785                                    ; preds = %7773
  br i1 %7784, label %7786, label %7853

; <label>:7786                                    ; preds = %7785
  %7787 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7788 = extractvalue %dx.types.CBufRet.f32 %7777, 0
  %7789 = fmul fast float %7788, %6907
  %7790 = fmul fast float %7787, %6911
  %7791 = fadd fast float %7789, 5.000000e-01
  %7792 = call float @dx.op.unary.f32(i32 27, float %7791)  ; Round_ni(value)
  %7793 = fadd fast float %7790, 5.000000e-01
  %7794 = call float @dx.op.unary.f32(i32 27, float %7793)  ; Round_ni(value)
  %7795 = fsub fast float %7791, %7792
  %7796 = fsub fast float %7793, %7794
  %7797 = fadd fast float %7792, -5.000000e-01
  %7798 = fadd fast float %7794, -5.000000e-01
  %7799 = fmul fast float %7795, 2.000000e+00
  %7800 = fsub fast float 3.000000e+00, %7799
  %7801 = fadd fast float %7799, 1.000000e+00
  %7802 = fsub fast float 2.000000e+00, %7795
  %7803 = bitcast float %7800 to i32
  %7804 = sub nsw i32 2129859010, %7803
  %7805 = bitcast i32 %7804 to float
  %7806 = fmul fast float %7805, %7802
  %7807 = fadd fast float %7806, -1.000000e+00
  %7808 = bitcast float %7801 to i32
  %7809 = sub nsw i32 2129859010, %7808
  %7810 = bitcast i32 %7809 to float
  %7811 = fmul fast float %7810, %7795
  %7812 = fadd fast float %7811, 1.000000e+00
  %7813 = fmul fast float %7796, 2.000000e+00
  %7814 = fsub fast float 3.000000e+00, %7813
  %7815 = fadd fast float %7813, 1.000000e+00
  %7816 = fsub fast float 2.000000e+00, %7796
  %7817 = bitcast float %7814 to i32
  %7818 = sub nsw i32 2129859010, %7817
  %7819 = bitcast i32 %7818 to float
  %7820 = fmul fast float %7819, %7816
  %7821 = fadd fast float %7820, -1.000000e+00
  %7822 = bitcast float %7815 to i32
  %7823 = sub nsw i32 2129859010, %7822
  %7824 = bitcast i32 %7823 to float
  %7825 = fmul fast float %7824, %7796
  %7826 = fadd fast float %7825, 1.000000e+00
  %7827 = fadd fast float %7807, %7797
  %7828 = fmul fast float %7827, %7778
  %7829 = fadd fast float %7821, %7798
  %7830 = fmul fast float %7829, %7779
  %7831 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7828, float %7830, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7832 = extractvalue %dx.types.ResRet.f32 %7831, 0
  %7833 = fmul fast float %7832, %7800
  %7834 = fadd fast float %7812, %7797
  %7835 = fmul fast float %7834, %7778
  %7836 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7835, float %7830, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7837 = extractvalue %dx.types.ResRet.f32 %7836, 0
  %7838 = fmul fast float %7837, %7801
  %7839 = fadd fast float %7826, %7798
  %7840 = fmul fast float %7839, %7779
  %7841 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7828, float %7840, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7842 = extractvalue %dx.types.ResRet.f32 %7841, 0
  %7843 = fmul fast float %7842, %7800
  %7844 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %46, float %7835, float %7840, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7845 = extractvalue %dx.types.ResRet.f32 %7844, 0
  %7846 = fmul fast float %7845, %7801
  %7847 = fadd fast float %7846, %7843
  %7848 = fmul fast float %7847, %7815
  %7849 = fadd fast float %7838, %7833
  %7850 = fmul fast float %7849, %7814
  %7851 = fadd fast float %7850, %7848
  %7852 = fmul fast float %7851, 6.250000e-02
  br label %8091

; <label>:7853                                    ; preds = %7785
  %7854 = fmul fast float %260, 0x401921FB60000000
  %7855 = call float @dx.op.unary.f32(i32 13, float %7854)  ; Sin(value)
  %7856 = call float @dx.op.unary.f32(i32 12, float %7854)  ; Cos(value)
  %7857 = fsub fast float -0.000000e+00, %7855
  br label %7858

; <label>:7858                                    ; preds = %7907, %7853
  %7859 = phi float [ 0.000000e+00, %7853 ], [ %7902, %7907 ]
  %7860 = phi float [ 0.000000e+00, %7853 ], [ %7904, %7907 ]
  %7861 = phi i32 [ 0, %7853 ], [ %7908, %7907 ]
  %7862 = mul i32 %7861, 2
  %7863 = add i32 0, %7862
  %7864 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7863
  %7865 = load float, float* %7864, align 4
  %7866 = mul i32 %7861, 2
  %7867 = add i32 1, %7866
  %7868 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7867
  %7869 = load float, float* %7868, align 4
  %7870 = fmul fast float %7865, %7856
  %7871 = call float @dx.op.tertiary.f32(i32 46, float %7869, float %7857, float %7870)  ; FMad(a,b,c)
  %7872 = fmul fast float %7865, %7855
  %7873 = call float @dx.op.tertiary.f32(i32 46, float %7869, float %7856, float %7872)  ; FMad(a,b,c)
  %7874 = fmul fast float %7871, %7781
  %7875 = fmul fast float %7873, %7781
  %7876 = fadd fast float %7874, %6907
  %7877 = fadd fast float %7875, %6911
  %7878 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %45, float %7876, float %7877, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7879 = extractvalue %dx.types.ResRet.f32 %7878, 0
  %7880 = extractvalue %dx.types.ResRet.f32 %7878, 1
  %7881 = extractvalue %dx.types.ResRet.f32 %7878, 2
  %7882 = extractvalue %dx.types.ResRet.f32 %7878, 3
  %7883 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7879, float* %7883, align 4
  %7884 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7880, float* %7884, align 4
  %7885 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7881, float* %7885, align 4
  %7886 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7882, float* %7886, align 4
  %7887 = fsub fast float %7879, %7783
  %7888 = fcmp fast olt float %7887, 0.000000e+00
  %7889 = select i1 %7888, float 0.000000e+00, float 1.000000e+00
  %7890 = fadd fast float %7889, %7859
  %7891 = fmul fast float %7889, %7887
  %7892 = fadd fast float %7891, %7860
  br label %7893

; <label>:7893                                    ; preds = %7893, %7858
  %7894 = phi i32 [ 1, %7858 ], [ %7905, %7893 ]
  %7895 = phi float [ %7892, %7858 ], [ %7904, %7893 ]
  %7896 = phi float [ %7890, %7858 ], [ %7902, %7893 ]
  %7897 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7894
  %7898 = load float, float* %7897, align 4, !tbaa !114, !noalias !104
  %7899 = fsub fast float %7898, %7783
  %7900 = fcmp fast olt float %7899, 0.000000e+00
  %7901 = select i1 %7900, float 0.000000e+00, float 1.000000e+00
  %7902 = fadd fast float %7901, %7896
  %7903 = fmul fast float %7901, %7899
  %7904 = fadd fast float %7903, %7895
  %7905 = add nuw nsw i32 %7894, 1
  %7906 = icmp eq i32 %7905, 4
  br i1 %7906, label %7907, label %7893, !llvm.loop !116

; <label>:7907                                    ; preds = %7893
  %7908 = add nuw nsw i32 %7861, 1
  %7909 = icmp eq i32 %7908, 8
  br i1 %7909, label %7910, label %7858, !llvm.loop !117

; <label>:7910                                    ; preds = %7907
  %7911 = fdiv fast float 1.000000e+00, %7902
  %7912 = fmul fast float %7911, %7904
  %7913 = fdiv fast float 1.000000e+00, %7783
  %7914 = fmul fast float %7912, %7913
  %7915 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  %7916 = call float @dx.op.binary.f32(i32 35, float %7915, float 0.000000e+00)  ; FMax(a,b)
  %7917 = fmul fast float %7902, 3.125000e-02
  %7918 = call float @dx.op.unary.f32(i32 7, float %7917)  ; Saturate(value)
  %7919 = fmul fast float %7918, 2.000000e+00
  %7920 = fadd fast float %7919, -1.000000e+00
  %7921 = fcmp fast ogt float %7920, 0.000000e+00
  %7922 = fcmp fast olt float %7920, 0.000000e+00
  %7923 = zext i1 %7921 to i32
  %7924 = zext i1 %7922 to i32
  %7925 = sub nsw i32 %7923, %7924
  %7926 = sitofp i32 %7925 to float
  %7927 = fmul fast float %7926, %7920
  %7928 = fsub fast float 1.000000e+00, %7927
  %7929 = fmul fast float %7928, %7928
  %7930 = fmul fast float %7929, %7928
  %7931 = fsub fast float %7928, %7930
  %7932 = fmul fast float %7931, %7916
  %7933 = fsub fast float 1.000000e+00, %7930
  %7934 = fsub fast float %7933, %7932
  %7935 = fmul fast float %7926, 5.000000e-01
  %7936 = fmul fast float %7935, %7934
  %7937 = fsub fast float 5.000000e-01, %7936
  br label %8091

; <label>:7938                                    ; preds = %7773
  br i1 %7784, label %7939, label %8006

; <label>:7939                                    ; preds = %7938
  %7940 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7941 = extractvalue %dx.types.CBufRet.f32 %7777, 0
  %7942 = fmul fast float %7941, %6907
  %7943 = fmul fast float %7940, %6911
  %7944 = fadd fast float %7942, 5.000000e-01
  %7945 = call float @dx.op.unary.f32(i32 27, float %7944)  ; Round_ni(value)
  %7946 = fadd fast float %7943, 5.000000e-01
  %7947 = call float @dx.op.unary.f32(i32 27, float %7946)  ; Round_ni(value)
  %7948 = fsub fast float %7944, %7945
  %7949 = fsub fast float %7946, %7947
  %7950 = fadd fast float %7945, -5.000000e-01
  %7951 = fadd fast float %7947, -5.000000e-01
  %7952 = fmul fast float %7948, 2.000000e+00
  %7953 = fsub fast float 3.000000e+00, %7952
  %7954 = fadd fast float %7952, 1.000000e+00
  %7955 = fsub fast float 2.000000e+00, %7948
  %7956 = bitcast float %7953 to i32
  %7957 = sub nsw i32 2129859010, %7956
  %7958 = bitcast i32 %7957 to float
  %7959 = fmul fast float %7958, %7955
  %7960 = fadd fast float %7959, -1.000000e+00
  %7961 = bitcast float %7954 to i32
  %7962 = sub nsw i32 2129859010, %7961
  %7963 = bitcast i32 %7962 to float
  %7964 = fmul fast float %7963, %7948
  %7965 = fadd fast float %7964, 1.000000e+00
  %7966 = fmul fast float %7949, 2.000000e+00
  %7967 = fsub fast float 3.000000e+00, %7966
  %7968 = fadd fast float %7966, 1.000000e+00
  %7969 = fsub fast float 2.000000e+00, %7949
  %7970 = bitcast float %7967 to i32
  %7971 = sub nsw i32 2129859010, %7970
  %7972 = bitcast i32 %7971 to float
  %7973 = fmul fast float %7972, %7969
  %7974 = fadd fast float %7973, -1.000000e+00
  %7975 = bitcast float %7968 to i32
  %7976 = sub nsw i32 2129859010, %7975
  %7977 = bitcast i32 %7976 to float
  %7978 = fmul fast float %7977, %7949
  %7979 = fadd fast float %7978, 1.000000e+00
  %7980 = fadd fast float %7960, %7950
  %7981 = fmul fast float %7980, %7778
  %7982 = fadd fast float %7974, %7951
  %7983 = fmul fast float %7982, %7779
  %7984 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7981, float %7983, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7985 = extractvalue %dx.types.ResRet.f32 %7984, 0
  %7986 = fmul fast float %7985, %7953
  %7987 = fadd fast float %7965, %7950
  %7988 = fmul fast float %7987, %7778
  %7989 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7988, float %7983, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7990 = extractvalue %dx.types.ResRet.f32 %7989, 0
  %7991 = fmul fast float %7990, %7954
  %7992 = fadd fast float %7979, %7951
  %7993 = fmul fast float %7992, %7779
  %7994 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7981, float %7993, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7995 = extractvalue %dx.types.ResRet.f32 %7994, 0
  %7996 = fmul fast float %7995, %7953
  %7997 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %46, float %7988, float %7993, float undef, float undef, i32 0, i32 0, i32 undef, float %7783)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7998 = extractvalue %dx.types.ResRet.f32 %7997, 0
  %7999 = fmul fast float %7998, %7954
  %8000 = fadd fast float %7999, %7996
  %8001 = fmul fast float %8000, %7968
  %8002 = fadd fast float %7991, %7986
  %8003 = fmul fast float %8002, %7967
  %8004 = fadd fast float %8003, %8001
  %8005 = fmul fast float %8004, 6.250000e-02
  br label %8091

; <label>:8006                                    ; preds = %7938
  %8007 = fmul fast float %260, 0x401921FB60000000
  %8008 = call float @dx.op.unary.f32(i32 13, float %8007)  ; Sin(value)
  %8009 = call float @dx.op.unary.f32(i32 12, float %8007)  ; Cos(value)
  %8010 = fsub fast float -0.000000e+00, %8008
  br label %8011

; <label>:8011                                    ; preds = %8060, %8006
  %8012 = phi float [ 0.000000e+00, %8006 ], [ %8055, %8060 ]
  %8013 = phi float [ 0.000000e+00, %8006 ], [ %8057, %8060 ]
  %8014 = phi i32 [ 0, %8006 ], [ %8061, %8060 ]
  %8015 = mul i32 %8014, 2
  %8016 = add i32 0, %8015
  %8017 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8016
  %8018 = load float, float* %8017, align 4
  %8019 = mul i32 %8014, 2
  %8020 = add i32 1, %8019
  %8021 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8020
  %8022 = load float, float* %8021, align 4
  %8023 = fmul fast float %8018, %8009
  %8024 = call float @dx.op.tertiary.f32(i32 46, float %8022, float %8010, float %8023)  ; FMad(a,b,c)
  %8025 = fmul fast float %8018, %8008
  %8026 = call float @dx.op.tertiary.f32(i32 46, float %8022, float %8009, float %8025)  ; FMad(a,b,c)
  %8027 = fmul fast float %8024, %7781
  %8028 = fmul fast float %8026, %7781
  %8029 = fadd fast float %8027, %6907
  %8030 = fadd fast float %8028, %6911
  %8031 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %45, float %8029, float %8030, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8032 = extractvalue %dx.types.ResRet.f32 %8031, 0
  %8033 = extractvalue %dx.types.ResRet.f32 %8031, 1
  %8034 = extractvalue %dx.types.ResRet.f32 %8031, 2
  %8035 = extractvalue %dx.types.ResRet.f32 %8031, 3
  %8036 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %8032, float* %8036, align 4
  %8037 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %8033, float* %8037, align 4
  %8038 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %8034, float* %8038, align 4
  %8039 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %8035, float* %8039, align 4
  %8040 = fsub fast float %8032, %7783
  %8041 = fcmp fast olt float %8040, 0.000000e+00
  %8042 = select i1 %8041, float 0.000000e+00, float 1.000000e+00
  %8043 = fadd fast float %8042, %8012
  %8044 = fmul fast float %8042, %8040
  %8045 = fadd fast float %8044, %8013
  br label %8046

; <label>:8046                                    ; preds = %8046, %8011
  %8047 = phi i32 [ 1, %8011 ], [ %8058, %8046 ]
  %8048 = phi float [ %8045, %8011 ], [ %8057, %8046 ]
  %8049 = phi float [ %8043, %8011 ], [ %8055, %8046 ]
  %8050 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %8047
  %8051 = load float, float* %8050, align 4, !tbaa !114, !noalias !104
  %8052 = fsub fast float %8051, %7783
  %8053 = fcmp fast olt float %8052, 0.000000e+00
  %8054 = select i1 %8053, float 0.000000e+00, float 1.000000e+00
  %8055 = fadd fast float %8054, %8049
  %8056 = fmul fast float %8054, %8052
  %8057 = fadd fast float %8056, %8048
  %8058 = add nuw nsw i32 %8047, 1
  %8059 = icmp eq i32 %8058, 4
  br i1 %8059, label %8060, label %8046, !llvm.loop !116

; <label>:8060                                    ; preds = %8046
  %8061 = add nuw nsw i32 %8014, 1
  %8062 = icmp eq i32 %8061, 8
  br i1 %8062, label %8063, label %8011, !llvm.loop !117

; <label>:8063                                    ; preds = %8060
  %8064 = fdiv fast float 1.000000e+00, %8055
  %8065 = fmul fast float %8064, %8057
  %8066 = fdiv fast float 1.000000e+00, %7783
  %8067 = fmul fast float %8065, %8066
  %8068 = call float @dx.op.unary.f32(i32 7, float %8067)  ; Saturate(value)
  %8069 = call float @dx.op.binary.f32(i32 35, float %8068, float 0.000000e+00)  ; FMax(a,b)
  %8070 = fmul fast float %8055, 3.125000e-02
  %8071 = call float @dx.op.unary.f32(i32 7, float %8070)  ; Saturate(value)
  %8072 = fmul fast float %8071, 2.000000e+00
  %8073 = fadd fast float %8072, -1.000000e+00
  %8074 = fcmp fast ogt float %8073, 0.000000e+00
  %8075 = fcmp fast olt float %8073, 0.000000e+00
  %8076 = zext i1 %8074 to i32
  %8077 = zext i1 %8075 to i32
  %8078 = sub nsw i32 %8076, %8077
  %8079 = sitofp i32 %8078 to float
  %8080 = fmul fast float %8079, %8073
  %8081 = fsub fast float 1.000000e+00, %8080
  %8082 = fmul fast float %8081, %8081
  %8083 = fmul fast float %8082, %8081
  %8084 = fsub fast float %8081, %8083
  %8085 = fmul fast float %8084, %8069
  %8086 = fsub fast float 1.000000e+00, %8083
  %8087 = fsub fast float %8086, %8085
  %8088 = fmul fast float %8079, 5.000000e-01
  %8089 = fmul fast float %8088, %8087
  %8090 = fsub fast float 5.000000e-01, %8089
  br label %8091

; <label>:8091                                    ; preds = %8063, %7939, %7910, %7786, %7770
  %8092 = phi float [ 1.000000e+00, %7770 ], [ %7852, %7786 ], [ %7937, %7910 ], [ %8005, %7939 ], [ %8090, %8063 ]
  %8093 = fsub fast float %7604, %7437
  %8094 = fmul fast float %8093, %7004
  %8095 = fadd fast float %8094, %7437
  %8096 = fsub fast float %7771, %8095
  %8097 = fmul fast float %8096, %7003
  %8098 = fadd fast float %8097, %8095
  %8099 = fsub fast float %8092, %8098
  %8100 = fmul fast float %8099, %7031
  %8101 = fadd fast float %8100, %8098
  %8102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %8103 = extractvalue %dx.types.CBufRet.f32 %8102, 2
  %8104 = fcmp fast ogt float %8103, 0.000000e+00
  br i1 %8104, label %8105, label %8145, !dx.controlflow.hints !121

; <label>:8105                                    ; preds = %8091
  %8106 = fcmp fast ugt float %8103, 0.000000e+00
  br i1 %8106, label %8107, label %8142

; <label>:8107                                    ; preds = %8105
  %8108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %8109 = extractvalue %dx.types.CBufRet.f32 %8108, 0
  %8110 = extractvalue %dx.types.CBufRet.f32 %8108, 1
  %8111 = extractvalue %dx.types.CBufRet.f32 %8108, 2
  %8112 = extractvalue %dx.types.CBufRet.f32 %8108, 3
  %8113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %8114 = extractvalue %dx.types.CBufRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.CBufRet.f32 %8113, 1
  %8116 = extractvalue %dx.types.CBufRet.f32 %8113, 2
  %8117 = extractvalue %dx.types.CBufRet.f32 %8113, 3
  %8118 = extractvalue %dx.types.CBufRet.f32 %8102, 0
  %8119 = extractvalue %dx.types.CBufRet.f32 %8102, 1
  %8120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8121 = extractvalue %dx.types.CBufRet.f32 %8120, 0
  %8122 = extractvalue %dx.types.CBufRet.f32 %8120, 1
  %8123 = extractvalue %dx.types.CBufRet.f32 %8120, 2
  %8124 = fadd fast float %8121, %6884
  %8125 = fadd fast float %8122, %6885
  %8126 = fadd fast float %8123, %6886
  %8127 = fmul fast float %8124, %8109
  %8128 = call float @dx.op.tertiary.f32(i32 46, float %8110, float %8125, float %8127)  ; FMad(a,b,c)
  %8129 = call float @dx.op.tertiary.f32(i32 46, float %8111, float %8126, float %8128)  ; FMad(a,b,c)
  %8130 = fadd fast float %8129, %8112
  %8131 = fmul fast float %8124, %8114
  %8132 = call float @dx.op.tertiary.f32(i32 46, float %8115, float %8125, float %8131)  ; FMad(a,b,c)
  %8133 = call float @dx.op.tertiary.f32(i32 46, float %8116, float %8126, float %8132)  ; FMad(a,b,c)
  %8134 = fadd fast float %8133, %8117
  %8135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %41, float %8130, float %8134, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %8136 = extractvalue %dx.types.ResRet.f32 %8135, 0
  %8137 = fmul fast float %8136, %8119
  %8138 = fadd fast float %8137, %8118
  %8139 = call float @dx.op.unary.f32(i32 7, float %8138)  ; Saturate(value)
  %8140 = fmul fast float %8139, %8103
  %8141 = fsub fast float 1.000000e+00, %8140
  br label %8142

; <label>:8142                                    ; preds = %8107, %8105
  %8143 = phi float [ %8141, %8107 ], [ 1.000000e+00, %8105 ]
  %8144 = fmul fast float %8143, %8101
  br label %8145

; <label>:8145                                    ; preds = %8142, %8091, %6864
  %8146 = phi float [ 1.000000e+00, %6864 ], [ %8144, %8142 ], [ %8101, %8091 ]
  %8147 = call float @dx.op.binary.f32(i32 36, float %8146, float %8146)  ; FMin(a,b)
  %8148 = call float @dx.op.binary.f32(i32 36, float %8146, float %8147)  ; FMin(a,b)
  %8149 = fcmp fast ogt float %8148, 0.000000e+00
  br i1 %8149, label %8150, label %8316, !dx.controlflow.hints !122

; <label>:8150                                    ; preds = %8145
  %8151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %8152 = extractvalue %dx.types.CBufRet.f32 %8151, 0
  %8153 = extractvalue %dx.types.CBufRet.f32 %8151, 1
  %8154 = extractvalue %dx.types.CBufRet.f32 %8151, 2
  %8155 = extractvalue %dx.types.CBufRet.f32 %8151, 3
  %8156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %8157 = extractvalue %dx.types.CBufRet.f32 %8156, 0
  %8158 = extractvalue %dx.types.CBufRet.f32 %8156, 1
  %8159 = extractvalue %dx.types.CBufRet.f32 %8156, 2
  %8160 = extractvalue %dx.types.CBufRet.f32 %8156, 3
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 0
  %8163 = extractvalue %dx.types.CBufRet.f32 %8161, 1
  %8164 = extractvalue %dx.types.CBufRet.f32 %8161, 2
  %8165 = extractvalue %dx.types.CBufRet.f32 %8161, 3
  %8166 = fmul fast float %8152, %6884
  %8167 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %8153, float %8166)  ; FMad(a,b,c)
  %8168 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %8154, float %8167)  ; FMad(a,b,c)
  %8169 = fadd fast float %8168, %8155
  %8170 = fmul fast float %8157, %6884
  %8171 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %8158, float %8170)  ; FMad(a,b,c)
  %8172 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %8159, float %8171)  ; FMad(a,b,c)
  %8173 = fadd fast float %8172, %8160
  %8174 = fmul fast float %8162, %6884
  %8175 = call float @dx.op.tertiary.f32(i32 46, float %6885, float %8163, float %8174)  ; FMad(a,b,c)
  %8176 = call float @dx.op.tertiary.f32(i32 46, float %6886, float %8164, float %8175)  ; FMad(a,b,c)
  %8177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %8178 = extractvalue %dx.types.CBufRet.f32 %8177, 0
  %8179 = extractvalue %dx.types.CBufRet.f32 %8177, 1
  %8180 = extractvalue %dx.types.CBufRet.f32 %8177, 3
  %8181 = fmul fast float %8180, %8169
  %8182 = fmul fast float %8180, %8173
  %8183 = fadd fast float %8181, %8178
  %8184 = fadd fast float %8182, %8179
  %8185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %8186 = extractvalue %dx.types.CBufRet.f32 %8185, 0
  %8187 = extractvalue %dx.types.CBufRet.f32 %8185, 1
  %8188 = fsub fast float %8183, %8186
  %8189 = fsub fast float %8184, %8187
  %8190 = fcmp fast olt float %8188, 0.000000e+00
  %8191 = fcmp fast olt float %8189, 0.000000e+00
  %8192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %8193 = extractvalue %dx.types.CBufRet.f32 %8192, 0
  %8194 = extractvalue %dx.types.CBufRet.f32 %8192, 1
  %8195 = extractvalue %dx.types.CBufRet.f32 %8192, 2
  %8196 = extractvalue %dx.types.CBufRet.f32 %8192, 3
  %8197 = select i1 %8190, float %8193, float %8195
  %8198 = select i1 %8191, float %8194, float %8196
  %8199 = fmul fast float %8197, %8188
  %8200 = fmul fast float %8198, %8189
  %8201 = call float @dx.op.unary.f32(i32 6, float %8199)  ; FAbs(value)
  %8202 = call float @dx.op.unary.f32(i32 6, float %8200)  ; FAbs(value)
  %8203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %8204 = extractvalue %dx.types.CBufRet.f32 %8203, 0
  %8205 = call float @dx.op.binary.f32(i32 35, float %8201, float %8202)  ; FMax(a,b)
  %8206 = fsub fast float %8204, %8205
  %8207 = call float @dx.op.unary.f32(i32 7, float %8206)  ; Saturate(value)
  %8208 = fcmp fast ogt float %8207, 0.000000e+00
  br i1 %8208, label %8209, label %8250, !dx.controlflow.hints !123

; <label>:8209                                    ; preds = %8150
  %8210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %44, float %8183, float %8184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8211 = extractvalue %dx.types.ResRet.f32 %8210, 1
  %8212 = fcmp fast ogt float %8211, 0.000000e+00
  br i1 %8212, label %8213, label %8245

; <label>:8213                                    ; preds = %8209
  %8214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %44, float %8183, float %8184, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8215 = extractvalue %dx.types.ResRet.f32 %8214, 0
  %8216 = extractvalue %dx.types.ResRet.f32 %8214, 1
  %8217 = extractvalue %dx.types.ResRet.f32 %8214, 2
  %8218 = extractvalue %dx.types.ResRet.f32 %8214, 3
  %8219 = fsub fast float 1.000000e+00, %8165
  %8220 = fsub fast float %8219, %8176
  %8221 = fmul fast float %8220, 0x400921FB60000000
  %8222 = fadd fast float %8221, 0x3FF921FB60000000
  %8223 = call float @dx.op.unary.f32(i32 13, float %8222)  ; Sin(value)
  %8224 = fadd fast float %8223, -1.000000e+00
  %8225 = fmul fast float %8224, 0x3FD45F3060000000
  %8226 = fmul fast float %8220, 0x401921FB60000000
  %8227 = fadd fast float %8226, 0x400921FB60000000
  %8228 = call float @dx.op.unary.f32(i32 13, float %8227)  ; Sin(value)
  %8229 = fadd fast float %8228, 0x3E7777A5C0000000
  %8230 = fmul fast float %8229, 0x3FC45F3060000000
  %8231 = fmul fast float %8220, 0x4022D97C80000000
  %8232 = fadd fast float %8231, 0x4012D97C80000000
  %8233 = call float @dx.op.unary.f32(i32 13, float %8232)  ; Sin(value)
  %8234 = fadd fast float %8233, 1.000000e+00
  %8235 = fmul fast float %8234, 0x3FBB2995E0000000
  %8236 = fmul fast float %8220, 0x402921FB60000000
  %8237 = fadd fast float %8236, 0x401921FB60000000
  %8238 = call float @dx.op.unary.f32(i32 13, float %8237)  ; Sin(value)
  %8239 = fadd fast float %8238, 0xBE8777A5C0000000
  %8240 = fmul fast float %8239, 0x3FB45F3060000000
  %8241 = call float @dx.op.dot4.f32(i32 56, float %8215, float %8216, float %8217, float %8218, float %8225, float %8230, float %8235, float %8240)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %8242 = fmul fast float %8241, 0xBFF7154760000000
  %8243 = call float @dx.op.unary.f32(i32 21, float %8242)  ; Exp(value)
  %8244 = call float @dx.op.unary.f32(i32 7, float %8243)  ; Saturate(value)
  br label %8245

; <label>:8245                                    ; preds = %8213, %8209
  %8246 = phi float [ %8244, %8213 ], [ 1.000000e+00, %8209 ]
  %8247 = fadd fast float %8246, -1.000000e+00
  %8248 = fmul fast float %8247, %8207
  %8249 = fadd fast float %8248, 1.000000e+00
  br label %8250

; <label>:8250                                    ; preds = %8245, %8150
  %8251 = phi float [ %8249, %8245 ], [ 1.000000e+00, %8150 ]
  %8252 = fmul fast float %8251, %8146
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 0
  %8255 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8256 = extractvalue %dx.types.CBufRet.f32 %8253, 2
  %8257 = fadd fast float %8254, %188
  %8258 = fadd fast float %8255, %189
  %8259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %8260 = extractvalue %dx.types.CBufRet.f32 %8259, 1
  %8261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8262 = extractvalue %dx.types.CBufRet.f32 %8261, 0
  %8263 = extractvalue %dx.types.CBufRet.f32 %8261, 1
  %8264 = extractvalue %dx.types.CBufRet.f32 %8261, 2
  %8265 = fsub fast float -0.000000e+00, %8257
  %8266 = fsub fast float -0.000000e+00, %8258
  %8267 = fsub fast float -0.000000e+00, %190
  %8268 = fsub fast float %8267, %8256
  %8269 = fadd fast float %8268, %8260
  %8270 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8265, float %8266, float %8269)  ; Dot3(ax,ay,az,bx,by,bz)
  %8271 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %8262, float %8263, float %8264)  ; Dot3(ax,ay,az,bx,by,bz)
  %8272 = fdiv fast float 1.000000e+00, %8271
  %8273 = fmul fast float %8272, %8270
  %8274 = fmul fast float %8262, %8273
  %8275 = fmul fast float %8263, %8273
  %8276 = fadd fast float %8274, %8257
  %8277 = fadd fast float %8275, %8258
  %8278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %8279 = extractvalue %dx.types.CBufRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.CBufRet.f32 %8278, 1
  %8281 = fsub fast float %8276, %8279
  %8282 = fsub fast float %8277, %8280
  %8283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %8284 = extractvalue %dx.types.CBufRet.f32 %8283, 2
  %8285 = extractvalue %dx.types.CBufRet.f32 %8283, 3
  %8286 = fmul fast float %8281, %8284
  %8287 = fmul fast float %8282, %8285
  %8288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %8289 = extractvalue %dx.types.CBufRet.i32 %8288, 3
  %8290 = icmp eq i32 %8289, 0
  br i1 %8290, label %8296, label %8291

; <label>:8291                                    ; preds = %8250
  %8292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %43, float %8286, float %8287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8293 = extractvalue %dx.types.ResRet.f32 %8292, 0
  %8294 = extractvalue %dx.types.ResRet.f32 %8292, 1
  %8295 = extractvalue %dx.types.ResRet.f32 %8292, 2
  br label %8301

; <label>:8296                                    ; preds = %8250
  %8297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %44, float %8286, float %8287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8298 = extractvalue %dx.types.ResRet.f32 %8297, 0
  %8299 = extractvalue %dx.types.ResRet.f32 %8297, 1
  %8300 = extractvalue %dx.types.ResRet.f32 %8297, 2
  br label %8301

; <label>:8301                                    ; preds = %8296, %8291
  %8302 = phi float [ %8293, %8291 ], [ %8298, %8296 ]
  %8303 = phi float [ %8294, %8291 ], [ %8299, %8296 ]
  %8304 = phi float [ %8295, %8291 ], [ %8300, %8296 ]
  %8305 = extractvalue %dx.types.CBufRet.f32 %8259, 2
  %8306 = fmul fast float %8305, %8302
  %8307 = extractvalue %dx.types.CBufRet.f32 %8259, 0
  %8308 = fsub fast float %8273, %8307
  %8309 = fsub fast float %8308, %8306
  %8310 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8309)  ; FMax(a,b)
  %8311 = fmul fast float %8310, %8303
  %8312 = call float @dx.op.binary.f32(i32 36, float %8304, float %8311)  ; FMin(a,b)
  %8313 = fmul fast float %8312, 0xBFF7154760000000
  %8314 = call float @dx.op.unary.f32(i32 21, float %8313)  ; Exp(value)
  %8315 = fmul fast float %8252, %8314
  br label %8316

; <label>:8316                                    ; preds = %8301, %8145
  %8317 = phi float [ %8315, %8301 ], [ %8146, %8145 ]
  %8318 = call float @dx.op.binary.f32(i32 36, float %8317, float %8317)  ; FMin(a,b)
  %8319 = call float @dx.op.binary.f32(i32 36, float %8317, float %8318)  ; FMin(a,b)
  %8320 = fcmp fast ogt float %8319, 0.000000e+00
  br i1 %8320, label %8321, label %8628, !dx.controlflow.hints !124

; <label>:8321                                    ; preds = %8316
  %8322 = fmul fast float %8317, %6876
  %8323 = fmul fast float %8317, %6877
  %8324 = fmul fast float %8317, %6878
  %8325 = fsub fast float %6865, %5947
  %8326 = fsub fast float %6866, %5946
  %8327 = fsub fast float %6867, %5945
  %8328 = call float @dx.op.dot3.f32(i32 55, float %8325, float %8326, float %8327, float %8325, float %8326, float %8327)  ; Dot3(ax,ay,az,bx,by,bz)
  %8329 = call float @dx.op.unary.f32(i32 25, float %8328)  ; Rsqrt(value)
  %8330 = fmul fast float %8329, %8325
  %8331 = fmul fast float %8329, %8326
  %8332 = fmul fast float %8329, %8327
  %8333 = call float @dx.op.dot3.f32(i32 55, float %6865, float %6866, float %6867, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %8334 = call float @dx.op.dot3.f32(i32 55, float %5944, float %5943, float %5942, float %8330, float %8331, float %8332)  ; Dot3(ax,ay,az,bx,by,bz)
  %8335 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8336 = fmul fast float %8335, %8335
  %8337 = fmul fast float %8336, %5986
  %8338 = call float @dx.op.unary.f32(i32 7, float %8337)  ; Saturate(value)
  %8339 = fmul fast float %8338, %8335
  %8340 = call float @dx.op.dot3.f32(i32 55, float %5954, float %5955, float %5956, float %8330, float %8331, float %8332)  ; Dot3(ax,ay,az,bx,by,bz)
  %8341 = fmul fast float %8340, %8340
  %8342 = call float @dx.op.unary.f32(i32 6, float %8333)  ; FAbs(value)
  %8343 = fsub fast float 1.000000e+00, %5979
  %8344 = fmul fast float %5961, %5961
  %8345 = fmul fast float %8344, %8343
  %8346 = fadd fast float %8345, %5979
  %8347 = bitcast float %8346 to i32
  %8348 = ashr i32 %8347, 1
  %8349 = add nsw i32 %8348, 532487669
  %8350 = bitcast i32 %8349 to float
  %8351 = fadd fast float %8350, %5961
  %8352 = fmul fast float %5979, %8341
  %8353 = fsub fast float 1.000000e+00, %8341
  %8354 = fadd fast float %8353, %8352
  %8355 = fmul fast float %8342, %8342
  %8356 = fmul fast float %8355, %8343
  %8357 = fadd fast float %8356, %5979
  %8358 = bitcast float %8357 to i32
  %8359 = ashr i32 %8358, 1
  %8360 = add nsw i32 %8359, 532487669
  %8361 = bitcast i32 %8360 to float
  %8362 = fadd fast float %8361, %8342
  %8363 = fmul fast float %8354, %8354
  %8364 = fmul fast float %8363, %8351
  %8365 = fmul fast float %8364, %8362
  %8366 = fdiv fast float 0x3FF0A00000000000, %8365
  %8367 = fmul fast float %8366, %5979
  %8368 = fmul fast float %6232, 0x3FF9999980000000
  %8369 = fsub fast float 5.000000e+00, %8368
  %8370 = call float @dx.op.unary.f32(i32 6, float %8334)  ; FAbs(value)
  %8371 = fsub fast float 1.000000e+00, %8370
  %8372 = fmul fast float %6232, 0x41D9660740000000
  %8373 = fadd fast float %8372, 0xC1EFBF8940000000
  %8374 = bitcast float %8371 to i32
  %8375 = sitofp i32 %8374 to float
  %8376 = fmul fast float %8375, %8369
  %8377 = fadd fast float %8373, %8376
  %8378 = fptosi float %8377 to i32
  %8379 = bitcast i32 %8378 to float
  %8380 = fsub fast float 1.000000e+00, %5948
  %8381 = fsub fast float 1.000000e+00, %5949
  %8382 = fsub fast float 1.000000e+00, %5959
  %8383 = fmul fast float %8379, %8380
  %8384 = fmul fast float %8379, %8381
  %8385 = fmul fast float %8379, %8382
  %8386 = fadd fast float %8383, %5948
  %8387 = fadd fast float %8384, %5949
  %8388 = fadd fast float %8385, %5959
  br i1 %6255, label %8389, label %8412

; <label>:8389                                    ; preds = %8321
  %8390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4641, float %8370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8391 = extractvalue %dx.types.ResRet.f32 %8390, 0
  %8392 = extractvalue %dx.types.ResRet.f32 %8390, 1
  %8393 = extractvalue %dx.types.ResRet.f32 %8390, 2
  %8394 = fadd fast float %8391, -5.000000e-01
  %8395 = fadd fast float %8392, -5.000000e-01
  %8396 = fadd fast float %8393, -5.000000e-01
  %8397 = fmul fast float %5948, 4.000000e+00
  %8398 = fmul fast float %8397, %8380
  %8399 = fmul fast float %8398, %8394
  %8400 = fmul fast float %5949, 4.000000e+00
  %8401 = fmul fast float %8400, %8381
  %8402 = fmul fast float %8401, %8395
  %8403 = fmul fast float %5959, 4.000000e+00
  %8404 = fmul fast float %8403, %8382
  %8405 = fmul fast float %8404, %8396
  %8406 = fadd fast float %8399, %8386
  %8407 = fadd fast float %8402, %8387
  %8408 = fadd fast float %8405, %8388
  %8409 = call float @dx.op.unary.f32(i32 7, float %8406)  ; Saturate(value)
  %8410 = call float @dx.op.unary.f32(i32 7, float %8407)  ; Saturate(value)
  %8411 = call float @dx.op.unary.f32(i32 7, float %8408)  ; Saturate(value)
  br label %8412

; <label>:8412                                    ; preds = %8389, %8321
  %8413 = phi float [ %8409, %8389 ], [ %8386, %8321 ]
  %8414 = phi float [ %8410, %8389 ], [ %8387, %8321 ]
  %8415 = phi float [ %8411, %8389 ], [ %8388, %8321 ]
  %8416 = fmul fast float %8333, 9.843750e-01
  %8417 = fadd fast float %8416, 7.812500e-03
  %8418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %8417, float %6236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8419 = extractvalue %dx.types.ResRet.f32 %8418, 0
  %8420 = extractvalue %dx.types.ResRet.f32 %8418, 1
  %8421 = extractvalue %dx.types.ResRet.f32 %8418, 2
  %8422 = extractvalue %dx.types.ResRet.f32 %8418, 3
  %8423 = fsub fast float %8421, %8419
  %8424 = fsub fast float %8422, %8420
  %8425 = fmul fast float %8423, %6242
  %8426 = fmul fast float %8424, %6242
  %8427 = fadd fast float %8425, %8419
  %8428 = fadd fast float %8426, %8420
  %8429 = fmul fast float %8427, %5948
  %8430 = fmul fast float %8427, %5949
  %8431 = fmul fast float %8427, %5959
  %8432 = fadd fast float %8429, %8428
  %8433 = fadd fast float %8430, %8428
  %8434 = fadd fast float %8431, %8428
  br i1 %6255, label %8435, label %8458

; <label>:8435                                    ; preds = %8412
  %8436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4641, float %8333, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8437 = extractvalue %dx.types.ResRet.f32 %8436, 0
  %8438 = extractvalue %dx.types.ResRet.f32 %8436, 1
  %8439 = extractvalue %dx.types.ResRet.f32 %8436, 2
  %8440 = fadd fast float %8437, -5.000000e-01
  %8441 = fadd fast float %8438, -5.000000e-01
  %8442 = fadd fast float %8439, -5.000000e-01
  %8443 = fmul fast float %5948, 4.000000e+00
  %8444 = fmul fast float %8443, %8380
  %8445 = fmul fast float %8444, %8440
  %8446 = fmul fast float %5949, 4.000000e+00
  %8447 = fmul fast float %8446, %8381
  %8448 = fmul fast float %8447, %8441
  %8449 = fmul fast float %5959, 4.000000e+00
  %8450 = fmul fast float %8449, %8382
  %8451 = fmul fast float %8450, %8442
  %8452 = fadd fast float %8445, %8432
  %8453 = fadd fast float %8448, %8433
  %8454 = fadd fast float %8451, %8434
  %8455 = call float @dx.op.unary.f32(i32 7, float %8452)  ; Saturate(value)
  %8456 = call float @dx.op.unary.f32(i32 7, float %8453)  ; Saturate(value)
  %8457 = call float @dx.op.unary.f32(i32 7, float %8454)  ; Saturate(value)
  br label %8458

; <label>:8458                                    ; preds = %8435, %8412
  %8459 = phi float [ %8455, %8435 ], [ %8432, %8412 ]
  %8460 = phi float [ %8456, %8435 ], [ %8433, %8412 ]
  %8461 = phi float [ %8457, %8435 ], [ %8434, %8412 ]
  %8462 = call float @dx.op.binary.f32(i32 35, float %8460, float %8461)  ; FMax(a,b)
  %8463 = call float @dx.op.binary.f32(i32 35, float %8459, float %8462)  ; FMax(a,b)
  %8464 = fsub fast float 1.000000e+00, %8463
  %8465 = call float @dx.op.binary.f32(i32 35, float %8342, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8466 = fdiv fast float %3990, %8465
  %8467 = fmul fast float %6774, %8466
  %8468 = fmul fast float %6776, %8466
  %8469 = fmul fast float %6778, %8466
  %8470 = call float @dx.op.unary.f32(i32 21, float %8467)  ; Exp(value)
  %8471 = call float @dx.op.unary.f32(i32 21, float %8468)  ; Exp(value)
  %8472 = call float @dx.op.unary.f32(i32 21, float %8469)  ; Exp(value)
  %8473 = call float @dx.op.unary.f32(i32 7, float %8470)  ; Saturate(value)
  %8474 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8475 = call float @dx.op.unary.f32(i32 7, float %8472)  ; Saturate(value)
  %8476 = select i1 %6771, float %8473, float 0.000000e+00
  %8477 = select i1 %6772, float %8474, float 0.000000e+00
  %8478 = select i1 %6773, float %8475, float 0.000000e+00
  %8479 = fsub fast float -0.000000e+00, %5954
  %8480 = fsub fast float -0.000000e+00, %5955
  %8481 = fsub fast float -0.000000e+00, %5956
  %8482 = call float @dx.op.dot3.f32(i32 55, float %6865, float %6866, float %6867, float %8479, float %8480, float %8481)  ; Dot3(ax,ay,az,bx,by,bz)
  %8483 = call float @dx.op.unary.f32(i32 7, float %8482)  ; Saturate(value)
  %8484 = fmul fast float %8483, 9.843750e-01
  %8485 = fadd fast float %8484, 7.812500e-03
  %8486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %44, float %8485, float %6236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8487 = extractvalue %dx.types.ResRet.f32 %8486, 0
  %8488 = extractvalue %dx.types.ResRet.f32 %8486, 1
  %8489 = extractvalue %dx.types.ResRet.f32 %8486, 2
  %8490 = extractvalue %dx.types.ResRet.f32 %8486, 3
  %8491 = fsub fast float %8489, %8487
  %8492 = fsub fast float %8490, %8488
  %8493 = fmul fast float %8491, %6242
  %8494 = fmul fast float %8492, %6242
  %8495 = fadd fast float %8493, %8487
  %8496 = fadd fast float %8494, %8488
  %8497 = fmul fast float %8495, %5948
  %8498 = fmul fast float %8495, %5949
  %8499 = fmul fast float %8495, %5959
  %8500 = fadd fast float %8497, %8496
  %8501 = fadd fast float %8498, %8496
  %8502 = fadd fast float %8499, %8496
  br i1 %6255, label %8503, label %8526

; <label>:8503                                    ; preds = %8458
  %8504 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %44, float %4641, float %8483, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8505 = extractvalue %dx.types.ResRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.ResRet.f32 %8504, 1
  %8507 = extractvalue %dx.types.ResRet.f32 %8504, 2
  %8508 = fadd fast float %8505, -5.000000e-01
  %8509 = fadd fast float %8506, -5.000000e-01
  %8510 = fadd fast float %8507, -5.000000e-01
  %8511 = fmul fast float %5948, 4.000000e+00
  %8512 = fmul fast float %8511, %8380
  %8513 = fmul fast float %8512, %8508
  %8514 = fmul fast float %5949, 4.000000e+00
  %8515 = fmul fast float %8514, %8381
  %8516 = fmul fast float %8515, %8509
  %8517 = fmul fast float %5959, 4.000000e+00
  %8518 = fmul fast float %8517, %8382
  %8519 = fmul fast float %8518, %8510
  %8520 = fadd fast float %8513, %8500
  %8521 = fadd fast float %8516, %8501
  %8522 = fadd fast float %8519, %8502
  %8523 = call float @dx.op.unary.f32(i32 7, float %8520)  ; Saturate(value)
  %8524 = call float @dx.op.unary.f32(i32 7, float %8521)  ; Saturate(value)
  %8525 = call float @dx.op.unary.f32(i32 7, float %8522)  ; Saturate(value)
  br label %8526

; <label>:8526                                    ; preds = %8503, %8458
  %8527 = phi float [ %8523, %8503 ], [ %8500, %8458 ]
  %8528 = phi float [ %8524, %8503 ], [ %8501, %8458 ]
  %8529 = phi float [ %8525, %8503 ], [ %8502, %8458 ]
  %8530 = call float @dx.op.binary.f32(i32 35, float %8528, float %8529)  ; FMax(a,b)
  %8531 = call float @dx.op.binary.f32(i32 35, float %8527, float %8530)  ; FMax(a,b)
  %8532 = fsub fast float 1.000000e+00, %8531
  %8533 = fmul fast float %5976, %6838
  %8534 = fadd fast float %6840, %8533
  %8535 = call float @dx.op.unary.f32(i32 7, float %8534)  ; Saturate(value)
  %8536 = fsub fast float %6865, %5967
  %8537 = fsub fast float %6866, %5968
  %8538 = fsub fast float %6867, %5969
  %8539 = call float @dx.op.dot3.f32(i32 55, float %8536, float %8537, float %8538, float %8536, float %8537, float %8538)  ; Dot3(ax,ay,az,bx,by,bz)
  %8540 = call float @dx.op.unary.f32(i32 25, float %8539)  ; Rsqrt(value)
  %8541 = fmul fast float %8540, %8536
  %8542 = fmul fast float %8540, %8537
  %8543 = fmul fast float %8540, %8538
  %8544 = call float @dx.op.dot3.f32(i32 55, float %8479, float %8480, float %8481, float %8541, float %8542, float %8543)  ; Dot3(ax,ay,az,bx,by,bz)
  %8545 = fmul fast float %8544, %8544
  %8546 = call float @dx.op.unary.f32(i32 6, float %8483)  ; FAbs(value)
  %8547 = call float @dx.op.binary.f32(i32 35, float %8535, float 0x3F847AE140000000)  ; FMax(a,b)
  %8548 = fmul fast float %8547, %8547
  %8549 = fmul fast float %8548, %8548
  %8550 = fsub fast float 1.000000e+00, %8549
  %8551 = fmul fast float %8344, %8550
  %8552 = fadd fast float %8551, %8549
  %8553 = bitcast float %8552 to i32
  %8554 = ashr i32 %8553, 1
  %8555 = add nsw i32 %8554, 532487669
  %8556 = bitcast i32 %8555 to float
  %8557 = fadd fast float %8556, %5961
  %8558 = fmul fast float %8549, %8545
  %8559 = fsub fast float 1.000000e+00, %8545
  %8560 = fadd fast float %8559, %8558
  %8561 = fmul fast float %8546, %8546
  %8562 = fmul fast float %8561, %8550
  %8563 = fadd fast float %8562, %8549
  %8564 = bitcast float %8563 to i32
  %8565 = ashr i32 %8564, 1
  %8566 = add nsw i32 %8565, 532487669
  %8567 = bitcast i32 %8566 to float
  %8568 = fadd fast float %8567, %8546
  %8569 = fmul fast float %8560, %8560
  %8570 = fmul fast float %8569, %8557
  %8571 = fmul fast float %8570, %8568
  %8572 = fdiv fast float 0x3FF0A00000000000, %8571
  %8573 = fmul fast float %8572, %8549
  %8574 = fmul fast float %8483, %8476
  %8575 = fmul fast float %8483, %8477
  %8576 = fmul fast float %8483, %8478
  %8577 = fmul fast float %8574, %8532
  %8578 = fmul fast float %8577, %8573
  %8579 = fmul fast float %8575, %8532
  %8580 = fmul fast float %8579, %8573
  %8581 = fmul fast float %8576, %8532
  %8582 = fmul fast float %8581, %8573
  %8583 = fmul fast float %8413, %8367
  %8584 = fmul fast float %8414, %8367
  %8585 = fmul fast float %8415, %8367
  %8586 = fsub fast float 1.000000e+00, %8334
  %8587 = bitcast float %8586 to i32
  %8588 = sitofp i32 %8587 to float
  %8589 = fmul fast float %8588, 5.000000e+00
  %8590 = fadd fast float %8589, 0xC1EFBF8940000000
  %8591 = fptosi float %8590 to i32
  %8592 = bitcast i32 %8591 to float
  %8593 = fmul fast float %8592, %4642
  %8594 = fmul fast float %8464, %8593
  %8595 = fmul fast float %8594, %6766
  %8596 = fmul fast float %8594, %6767
  %8597 = fmul fast float %8594, %6768
  %8598 = fadd fast float %8595, %8583
  %8599 = fadd fast float %8596, %8584
  %8600 = fadd fast float %8597, %8585
  %8601 = fmul fast float %8598, %8339
  %8602 = fmul fast float %8599, %8339
  %8603 = fmul fast float %8600, %8339
  %8604 = fmul fast float %8339, %8322
  %8605 = fmul fast float %8604, %8464
  %8606 = fmul fast float %8339, %8323
  %8607 = fmul fast float %8606, %8464
  %8608 = fmul fast float %8339, %8324
  %8609 = fmul fast float %8608, %8464
  %8610 = fadd fast float %8601, %8578
  %8611 = fadd fast float %8602, %8580
  %8612 = fadd fast float %8603, %8582
  %8613 = fmul fast float %8610, %8322
  %8614 = fmul fast float %8611, %8323
  %8615 = fmul fast float %8612, %8324
  %8616 = fadd fast float %8605, %6855
  %8617 = fmul fast float %8616, %4638
  %8618 = fadd fast float %8607, %6857
  %8619 = fmul fast float %8618, %4638
  %8620 = fadd fast float %8609, %6859
  %8621 = fmul fast float %8620, %4638
  %8622 = fadd fast float %8613, %6819
  %8623 = fmul fast float %8622, %4638
  %8624 = fadd fast float %8614, %6822
  %8625 = fmul fast float %8624, %4638
  %8626 = fadd fast float %8615, %6825
  %8627 = fmul fast float %8626, %4638
  br label %8628

; <label>:8628                                    ; preds = %8526, %8316, %6749
  %8629 = phi float [ %6820, %6749 ], [ %6820, %8316 ], [ %8623, %8526 ]
  %8630 = phi float [ %6823, %6749 ], [ %6823, %8316 ], [ %8625, %8526 ]
  %8631 = phi float [ %6826, %6749 ], [ %6826, %8316 ], [ %8627, %8526 ]
  %8632 = phi float [ %6856, %6749 ], [ %6856, %8316 ], [ %8617, %8526 ]
  %8633 = phi float [ %6858, %6749 ], [ %6858, %8316 ], [ %8619, %8526 ]
  %8634 = phi float [ %6860, %6749 ], [ %6860, %8316 ], [ %8621, %8526 ]
  %8635 = fmul fast float %4638, %6795
  %8636 = fsub fast float -0.000000e+00, %8635
  %8637 = fmul fast float %4638, %6796
  %8638 = fsub fast float -0.000000e+00, %8637
  %8639 = fmul fast float %4638, %6797
  %8640 = fsub fast float -0.000000e+00, %8639
  %8641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8642 = extractvalue %dx.types.CBufRet.f32 %8641, 0
  %8643 = fmul fast float %8642, %6801
  %8644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8645 = extractvalue %dx.types.CBufRet.f32 %8644, 3
  %8646 = fsub fast float 1.000000e+00, %4645
  %8647 = call float @dx.op.unary.f32(i32 7, float %8646)  ; Saturate(value)
  %8648 = fadd fast float %8634, %4644
  %8649 = fmul fast float %8648, %4645
  %8650 = fmul fast float %8647, %8645
  %8651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8652 = extractvalue %dx.types.CBufRet.f32 %8651, 3
  %8653 = fmul fast float %8632, %5951
  %8654 = fmul fast float %8633, %5952
  %8655 = fmul fast float %8634, %5953
  %8656 = fcmp fast ogt float %96, %210
  %8657 = and i1 %8656, %4713
  %8658 = or i1 %4792, %8657
  %8659 = icmp eq i32 %4712, 2
  %8660 = fcmp fast ole float %96, %210
  %8661 = and i1 %8660, %8659
  %8662 = or i1 %8661, %8658
  br i1 %8657, label %8663, label %8920

; <label>:8663                                    ; preds = %8628
  %8664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8665 = extractvalue %dx.types.CBufRet.f32 %8664, 2
  %8666 = extractvalue %dx.types.CBufRet.f32 %8664, 3
  %8667 = fmul fast float %8665, %109
  %8668 = fmul fast float %8666, %110
  %8669 = call float @dx.op.unary.f32(i32 7, float %8667)  ; Saturate(value)
  %8670 = call float @dx.op.unary.f32(i32 7, float %8668)  ; Saturate(value)
  %8671 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %8669, float %8670, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8672 = extractvalue %dx.types.ResRet.f32 %8671, 0
  %8673 = extractvalue %dx.types.ResRet.f32 %8671, 1
  %8674 = extractvalue %dx.types.ResRet.f32 %8671, 2
  %8675 = extractvalue %dx.types.ResRet.f32 %8671, 3
  %8676 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %8669, float %8670, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8677 = extractvalue %dx.types.ResRet.f32 %8676, 0
  %8678 = extractvalue %dx.types.ResRet.f32 %8676, 1
  %8679 = extractvalue %dx.types.ResRet.f32 %8676, 2
  %8680 = extractvalue %dx.types.ResRet.f32 %8676, 3
  %8681 = call float @dx.op.binary.f32(i32 35, float %8673, float %8674)  ; FMax(a,b)
  %8682 = call float @dx.op.binary.f32(i32 35, float %8672, float %8681)  ; FMax(a,b)
  %8683 = call float @dx.op.binary.f32(i32 35, float %8682, float %8675)  ; FMax(a,b)
  %8684 = call float @dx.op.binary.f32(i32 36, float %8678, float %8679)  ; FMin(a,b)
  %8685 = call float @dx.op.binary.f32(i32 36, float %8677, float %8684)  ; FMin(a,b)
  %8686 = call float @dx.op.binary.f32(i32 36, float %8685, float %8680)  ; FMin(a,b)
  %8687 = fmul fast float %8683, 2.550000e+02
  %8688 = fadd fast float %8687, 0x3F70101020000000
  %8689 = fptoui float %8688 to i32
  %8690 = fmul fast float %8686, 2.550000e+02
  %8691 = fadd fast float %8690, 0x3F70101020000000
  %8692 = fptoui float %8691 to i32
  %8693 = icmp ult i32 %8689, %8692
  br i1 %8693, label %8694, label %8862

; <label>:8694                                    ; preds = %8663
  %8695 = fcmp fast ogt float %95, 9.843750e-01
  %8696 = fadd fast float %96, -4.000000e+00
  %8697 = select i1 %8695, float -4.000000e+00, float %8696
  %8698 = call float @dx.op.binary.f32(i32 35, float %8697, float 0.000000e+00)  ; FMax(a,b)
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 0
  %8701 = fadd fast float %8700, %8698
  %8702 = extractvalue %dx.types.CBufRet.f32 %8699, 2
  %8703 = fmul fast float %8701, %8702
  %8704 = call float @dx.op.unary.f32(i32 23, float %8703)  ; Log(value)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8699, 3
  %8706 = fmul fast float %8705, %8704
  %8707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8708 = extractvalue %dx.types.CBufRet.f32 %8707, 2
  %8709 = fmul fast float %8706, %8708
  %8710 = call float @dx.op.unary.f32(i32 7, float %8709)  ; Saturate(value)
  %8711 = uitofp i32 %8689 to float
  %8712 = uitofp i32 %8692 to float
  %8713 = fadd fast float %8711, 5.000000e-01
  %8714 = fadd fast float %8712, 5.000000e-01
  %8715 = fmul fast float %8708, %8713
  %8716 = fmul fast float %8708, %8714
  %8717 = fadd fast float %8715, 0x3F0FFB4800000000
  %8718 = fadd fast float %8716, 0xBF0FFB4800000000
  %8719 = call float @dx.op.binary.f32(i32 35, float %8710, float %8717)  ; FMax(a,b)
  %8720 = call float @dx.op.binary.f32(i32 36, float %8719, float %8718)  ; FMin(a,b)
  %8721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8722 = extractvalue %dx.types.CBufRet.f32 %8721, 1
  %8723 = extractvalue %dx.types.CBufRet.f32 %8721, 2
  %8724 = extractvalue %dx.types.CBufRet.f32 %8721, 0
  %8725 = fmul fast float %8722, %8720
  %8726 = fadd fast float %8724, %8725
  %8727 = fadd fast float %8724, %8723
  %8728 = fsub fast float %8722, %8723
  %8729 = fadd fast float %8728, %8724
  %8730 = call float @dx.op.binary.f32(i32 35, float %8726, float %8727)  ; FMax(a,b)
  %8731 = call float @dx.op.binary.f32(i32 36, float %8730, float %8729)  ; FMin(a,b)
  %8732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %8669, float %8670, float %8731, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8733 = extractvalue %dx.types.ResRet.f32 %8732, 0
  %8734 = extractvalue %dx.types.ResRet.f32 %8732, 1
  %8735 = extractvalue %dx.types.ResRet.f32 %8732, 2
  %8736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8737 = extractvalue %dx.types.CBufRet.i32 %8736, 0
  %8738 = extractvalue %dx.types.CBufRet.i32 %8736, 1
  %8739 = uitofp i32 %8737 to float
  %8740 = uitofp i32 %8738 to float
  %8741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8742 = extractvalue %dx.types.CBufRet.f32 %8741, 0
  %8743 = extractvalue %dx.types.CBufRet.f32 %8741, 1
  %8744 = fmul fast float %8739, %8669
  %8745 = fmul fast float %8740, %8670
  %8746 = fadd fast float %8744, -5.000000e-01
  %8747 = fadd fast float %8745, -5.000000e-01
  %8748 = call float @dx.op.unary.f32(i32 22, float %8746)  ; Frc(value)
  %8749 = call float @dx.op.unary.f32(i32 22, float %8747)  ; Frc(value)
  %8750 = fmul fast float %8748, %8748
  %8751 = fmul fast float %8750, %8748
  %8752 = fsub fast float 3.000000e+00, %8748
  %8753 = fmul fast float %8750, %8752
  %8754 = fmul fast float %8748, 3.000000e+00
  %8755 = fmul fast float %8751, 3.000000e+00
  %8756 = fmul fast float %8750, 6.000000e+00
  %8757 = fsub fast float %8755, %8756
  %8758 = fadd fast float %8757, 4.000000e+00
  %8759 = fmul fast float %8758, 0x3FC5555560000000
  %8760 = fmul fast float %8751, -3.000000e+00
  %8761 = fadd fast float %8750, %8748
  %8762 = fmul fast float %8761, 3.000000e+00
  %8763 = fadd fast float %8760, 1.000000e+00
  %8764 = fadd fast float %8763, %8762
  %8765 = fmul fast float %8751, 0x3FC5555560000000
  %8766 = fmul fast float %8749, %8749
  %8767 = fmul fast float %8766, %8749
  %8768 = fsub fast float 3.000000e+00, %8749
  %8769 = fmul fast float %8766, %8768
  %8770 = fmul fast float %8749, 3.000000e+00
  %8771 = fmul fast float %8767, 3.000000e+00
  %8772 = fmul fast float %8766, 6.000000e+00
  %8773 = fsub fast float %8771, %8772
  %8774 = fadd fast float %8773, 4.000000e+00
  %8775 = fmul fast float %8774, 0x3FC5555560000000
  %8776 = fmul fast float %8767, -3.000000e+00
  %8777 = fadd fast float %8766, %8749
  %8778 = fmul fast float %8777, 3.000000e+00
  %8779 = fadd fast float %8776, 1.000000e+00
  %8780 = fadd fast float %8779, %8778
  %8781 = fmul fast float %8767, 0x3FC5555560000000
  %8782 = fadd fast float %8748, 1.000000e+00
  %8783 = fsub fast float 1.000000e+00, %8754
  %8784 = fadd fast float %8783, %8753
  %8785 = fadd fast float %8784, %8758
  %8786 = fmul fast float %8785, 0x3FC5555560000000
  %8787 = fdiv fast float %8759, %8786
  %8788 = fsub fast float %8782, %8787
  %8789 = fsub fast float 1.000000e+00, %8748
  %8790 = fadd fast float %8764, %8751
  %8791 = fmul fast float %8790, 0x3FC5555560000000
  %8792 = fdiv fast float %8765, %8791
  %8793 = fadd fast float %8789, %8792
  %8794 = fadd fast float %8749, 1.000000e+00
  %8795 = fsub fast float 1.000000e+00, %8770
  %8796 = fadd fast float %8795, %8769
  %8797 = fadd fast float %8796, %8774
  %8798 = fmul fast float %8797, 0x3FC5555560000000
  %8799 = fdiv fast float %8775, %8798
  %8800 = fsub fast float %8794, %8799
  %8801 = fsub fast float 1.000000e+00, %8749
  %8802 = fadd fast float %8780, %8767
  %8803 = fmul fast float %8802, 0x3FC5555560000000
  %8804 = fdiv fast float %8781, %8803
  %8805 = fadd fast float %8804, %8801
  %8806 = fmul fast float %8788, %8742
  %8807 = fsub fast float %8669, %8806
  %8808 = fmul fast float %8793, %8742
  %8809 = fadd fast float %8808, %8669
  %8810 = fmul fast float %8805, %8743
  %8811 = fadd fast float %8810, %8670
  %8812 = fmul fast float %8800, %8743
  %8813 = fsub fast float %8670, %8812
  %8814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8807, float %8813, float %8731, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8815 = extractvalue %dx.types.ResRet.f32 %8814, 0
  %8816 = extractvalue %dx.types.ResRet.f32 %8814, 1
  %8817 = extractvalue %dx.types.ResRet.f32 %8814, 2
  %8818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8809, float %8813, float %8731, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8819 = extractvalue %dx.types.ResRet.f32 %8818, 0
  %8820 = extractvalue %dx.types.ResRet.f32 %8818, 1
  %8821 = extractvalue %dx.types.ResRet.f32 %8818, 2
  %8822 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8807, float %8811, float %8731, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8823 = extractvalue %dx.types.ResRet.f32 %8822, 0
  %8824 = extractvalue %dx.types.ResRet.f32 %8822, 1
  %8825 = extractvalue %dx.types.ResRet.f32 %8822, 2
  %8826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %8809, float %8811, float %8731, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8827 = extractvalue %dx.types.ResRet.f32 %8826, 0
  %8828 = extractvalue %dx.types.ResRet.f32 %8826, 1
  %8829 = extractvalue %dx.types.ResRet.f32 %8826, 2
  %8830 = fsub fast float %8823, %8815
  %8831 = fsub fast float %8824, %8816
  %8832 = fsub fast float %8825, %8817
  %8833 = fmul fast float %8830, %8803
  %8834 = fmul fast float %8831, %8803
  %8835 = fmul fast float %8832, %8803
  %8836 = fadd fast float %8833, %8815
  %8837 = fadd fast float %8834, %8816
  %8838 = fadd fast float %8835, %8817
  %8839 = fsub fast float %8827, %8819
  %8840 = fsub fast float %8828, %8820
  %8841 = fsub fast float %8829, %8821
  %8842 = fmul fast float %8839, %8803
  %8843 = fmul fast float %8840, %8803
  %8844 = fmul fast float %8841, %8803
  %8845 = fsub fast float %8819, %8836
  %8846 = fadd fast float %8845, %8842
  %8847 = fsub fast float %8820, %8837
  %8848 = fadd fast float %8847, %8843
  %8849 = fsub fast float %8821, %8838
  %8850 = fadd fast float %8849, %8844
  %8851 = fmul fast float %8846, %8791
  %8852 = fmul fast float %8848, %8791
  %8853 = fmul fast float %8850, %8791
  %8854 = fadd fast float %8851, %8836
  %8855 = fadd fast float %8852, %8837
  %8856 = fadd fast float %8853, %8838
  %8857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8858 = extractvalue %dx.types.CBufRet.f32 %8857, 1
  %8859 = fmul fast float %8854, %8858
  %8860 = fmul fast float %8855, %8858
  %8861 = fmul fast float %8856, %8858
  br label %8862

; <label>:8862                                    ; preds = %8694, %8663
  %8863 = phi float [ %8733, %8694 ], [ 1.000000e+00, %8663 ]
  %8864 = phi float [ %8734, %8694 ], [ 1.000000e+00, %8663 ]
  %8865 = phi float [ %8735, %8694 ], [ 1.000000e+00, %8663 ]
  %8866 = phi float [ %8859, %8694 ], [ 0.000000e+00, %8663 ]
  %8867 = phi float [ %8860, %8694 ], [ 0.000000e+00, %8663 ]
  %8868 = phi float [ %8861, %8694 ], [ 0.000000e+00, %8663 ]
  %8869 = fmul fast float %8866, %8636
  %8870 = fmul fast float %8867, %8638
  %8871 = fmul fast float %8868, %8640
  %8872 = call float @dx.op.dot3.f32(i32 55, float %8863, float %8864, float %8865, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8873 = call float @dx.op.dot3.f32(i32 55, float %8869, float %8870, float %8871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8874 = select i1 %249, float %8872, float %8863
  %8875 = select i1 %249, float %8872, float %8864
  %8876 = select i1 %249, float 1.000000e+00, float %8865
  %8877 = select i1 %249, float %8873, float %8869
  %8878 = select i1 %249, float 0.000000e+00, float %8870
  %8879 = select i1 %249, float 0.000000e+00, float %8871
  %8880 = fmul fast float %8874, %8653
  %8881 = fmul fast float %8875, %8654
  %8882 = fmul fast float %8876, %8655
  %8883 = fadd fast float %8880, %8877
  %8884 = fadd fast float %8881, %8878
  %8885 = fadd fast float %8879, %8882
  %8886 = fmul fast float %8874, %8629
  %8887 = fmul fast float %8875, %8630
  %8888 = fmul fast float %8876, %8631
  %8889 = fmul fast float %137, %8665
  %8890 = fmul fast float %139, %8666
  %8891 = fsub fast float 1.000000e+00, %8889
  %8892 = fsub fast float 1.000000e+00, %8890
  %8893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.f32 %8893, 0
  %8895 = extractvalue %dx.types.CBufRet.f32 %8893, 1
  %8896 = extractvalue %dx.types.CBufRet.f32 %8893, 2
  %8897 = fmul fast float %8891, %8894
  %8898 = fmul fast float %8891, %8895
  %8899 = fmul fast float %8891, %8896
  %8900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8901 = extractvalue %dx.types.CBufRet.f32 %8900, 0
  %8902 = extractvalue %dx.types.CBufRet.f32 %8900, 1
  %8903 = extractvalue %dx.types.CBufRet.f32 %8900, 2
  %8904 = fmul fast float %8892, %8901
  %8905 = fmul fast float %8892, %8902
  %8906 = fmul fast float %8892, %8903
  %8907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8908 = extractvalue %dx.types.CBufRet.f32 %8907, 0
  %8909 = extractvalue %dx.types.CBufRet.f32 %8907, 1
  %8910 = extractvalue %dx.types.CBufRet.f32 %8907, 2
  %8911 = fadd fast float %8904, %8908
  %8912 = fadd fast float %8911, %8897
  %8913 = fadd fast float %8905, %8909
  %8914 = fadd fast float %8913, %8898
  %8915 = fadd fast float %8906, %8910
  %8916 = fadd fast float %8915, %8899
  %8917 = fmul fast float %8912, %210
  %8918 = fmul fast float %8914, %210
  %8919 = fmul fast float %8916, %210
  br label %8920

; <label>:8920                                    ; preds = %8862, %8628
  %8921 = phi float [ %8917, %8862 ], [ %188, %8628 ]
  %8922 = phi float [ %8918, %8862 ], [ %189, %8628 ]
  %8923 = phi float [ %8919, %8862 ], [ %190, %8628 ]
  %8924 = phi float [ %210, %8862 ], [ %96, %8628 ]
  %8925 = phi float [ %8883, %8862 ], [ %8653, %8628 ]
  %8926 = phi float [ %8884, %8862 ], [ %8654, %8628 ]
  %8927 = phi float [ %8885, %8862 ], [ %8655, %8628 ]
  %8928 = phi float [ %8886, %8862 ], [ %8629, %8628 ]
  %8929 = phi float [ %8887, %8862 ], [ %8630, %8628 ]
  %8930 = phi float [ %8888, %8862 ], [ %8631, %8628 ]
  %8931 = phi float [ %8863, %8862 ], [ 1.000000e+00, %8628 ]
  br i1 %8662, label %10086, label %8932

; <label>:8932                                    ; preds = %8920
  %8933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8934 = extractvalue %dx.types.CBufRet.f32 %8933, 0
  %8935 = extractvalue %dx.types.CBufRet.f32 %8933, 1
  %8936 = extractvalue %dx.types.CBufRet.f32 %8933, 2
  %8937 = extractvalue %dx.types.CBufRet.f32 %8933, 3
  %8938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8939 = extractvalue %dx.types.CBufRet.f32 %8938, 0
  %8940 = extractvalue %dx.types.CBufRet.f32 %8938, 1
  %8941 = extractvalue %dx.types.CBufRet.f32 %8938, 2
  %8942 = extractvalue %dx.types.CBufRet.f32 %8938, 3
  %8943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8944 = extractvalue %dx.types.CBufRet.f32 %8943, 0
  %8945 = extractvalue %dx.types.CBufRet.f32 %8943, 1
  %8946 = extractvalue %dx.types.CBufRet.f32 %8943, 2
  %8947 = extractvalue %dx.types.CBufRet.f32 %8943, 3
  %8948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8949 = extractvalue %dx.types.CBufRet.f32 %8948, 0
  %8950 = extractvalue %dx.types.CBufRet.f32 %8948, 1
  %8951 = extractvalue %dx.types.CBufRet.f32 %8948, 2
  %8952 = extractvalue %dx.types.CBufRet.f32 %8948, 3
  %8953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8954 = extractvalue %dx.types.CBufRet.f32 %8953, 3
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 3
  %8957 = extractvalue %dx.types.CBufRet.f32 %8955, 0
  %8958 = extractvalue %dx.types.CBufRet.f32 %8955, 1
  %8959 = extractvalue %dx.types.CBufRet.f32 %8955, 2
  %8960 = fcmp fast olt float %8959, -5.000000e-01
  %8961 = call float @dx.op.dot3.f32(i32 55, float %8921, float %8922, float %8923, float %8921, float %8922, float %8923)  ; Dot3(ax,ay,az,bx,by,bz)
  %8962 = call float @dx.op.unary.f32(i32 25, float %8961)  ; Rsqrt(value)
  %8963 = fmul fast float %8962, %8961
  %8964 = fmul fast float %8962, %8921
  %8965 = fmul fast float %8962, %8922
  %8966 = fmul fast float %8962, %8923
  %8967 = fadd fast float %8963, %8937
  %8968 = call float @dx.op.dot3.f32(i32 55, float %8964, float %8965, float %8966, float %8934, float %8935, float %8936)  ; Dot3(ax,ay,az,bx,by,bz)
  %8969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8970 = extractvalue %dx.types.CBufRet.i32 %8969, 1
  %8971 = and i32 %8970, 1
  %8972 = icmp ne i32 %8971, 0
  %8973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8974 = extractvalue %dx.types.CBufRet.f32 %8973, 2
  %8975 = fcmp fast ogt float %8974, 0.000000e+00
  %8976 = and i1 %8972, %8975
  br i1 %8976, label %8977, label %9383, !dx.controlflow.hints !125

; <label>:8977                                    ; preds = %8932
  %8978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8979 = extractvalue %dx.types.CBufRet.f32 %8978, 3
  %8980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8981 = extractvalue %dx.types.CBufRet.f32 %8980, 2
  %8982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8983 = extractvalue %dx.types.CBufRet.f32 %8982, 2
  %8984 = fsub fast float %8981, %8983
  %8985 = and i32 %8970, 2
  %8986 = extractvalue %dx.types.CBufRet.i32 %8969, 0
  %8987 = call i32 @dx.op.binary.i32(i32 40, i32 %8986, i32 3)  ; UMin(a,b)
  %8988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8989 = extractvalue %dx.types.CBufRet.f32 %8988, 0
  %8990 = extractvalue %dx.types.CBufRet.f32 %8988, 1
  %8991 = extractvalue %dx.types.CBufRet.f32 %8982, 0
  %8992 = extractvalue %dx.types.CBufRet.f32 %8982, 1
  %8993 = fsub fast float %8989, %8991
  %8994 = fsub fast float %8990, %8992
  %8995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8996 = extractvalue %dx.types.CBufRet.f32 %8995, 0
  %8997 = fcmp fast ogt float %8996, 0.000000e+00
  %8998 = fsub fast float -0.000000e+00, %8993
  %8999 = fsub fast float -0.000000e+00, %8994
  %9000 = call float @dx.op.dot2.f32(i32 54, float %8964, float %8965, float %8964, float %8965)  ; Dot2(ax,ay,bx,by)
  %9001 = call float @dx.op.dot2.f32(i32 54, float %8964, float %8965, float %8998, float %8999)  ; Dot2(ax,ay,bx,by)
  %9002 = fmul fast float %9001, 2.000000e+00
  %9003 = call float @dx.op.dot2.f32(i32 54, float %8998, float %8999, float %8998, float %8999)  ; Dot2(ax,ay,bx,by)
  %9004 = fmul fast float %8996, %8996
  %9005 = fsub fast float %9003, %9004
  %9006 = fmul fast float %9002, %9002
  %9007 = fmul fast float %9000, 4.000000e+00
  %9008 = fmul fast float %9007, %9005
  %9009 = fsub fast float %9006, %9008
  %9010 = fcmp fast ogt float %9009, 0.000000e+00
  br i1 %9010, label %9011, label %9026

; <label>:9011                                    ; preds = %8977
  %9012 = fcmp fast ogt float %9002, 0.000000e+00
  %9013 = call float @dx.op.unary.f32(i32 24, float %9009)  ; Sqrt(value)
  %9014 = fsub fast float -0.000000e+00, %9013
  %9015 = select i1 %9012, float %9013, float %9014
  %9016 = fadd fast float %9015, %9002
  %9017 = fmul float %9016, -5.000000e-01
  %9018 = fdiv fast float %9017, %9000
  %9019 = call float @dx.op.binary.f32(i32 35, float %9018, float 0.000000e+00)  ; FMax(a,b)
  %9020 = call float @dx.op.binary.f32(i32 36, float %8963, float %9019)  ; FMin(a,b)
  %9021 = fdiv fast float %9005, %9017
  %9022 = call float @dx.op.binary.f32(i32 35, float %9021, float 0.000000e+00)  ; FMax(a,b)
  %9023 = call float @dx.op.binary.f32(i32 36, float %8963, float %9022)  ; FMin(a,b)
  %9024 = call float @dx.op.binary.f32(i32 36, float %9020, float %9023)  ; FMin(a,b)
  %9025 = call float @dx.op.binary.f32(i32 35, float %9020, float %9023)  ; FMax(a,b)
  br label %9026

; <label>:9026                                    ; preds = %9011, %8977
  %9027 = phi float [ %9025, %9011 ], [ -1.000000e+00, %8977 ]
  %9028 = phi float [ %9024, %9011 ], [ -1.000000e+00, %8977 ]
  %9029 = phi i1 [ true, %9011 ], [ false, %8977 ]
  %9030 = and i1 %8997, %9029
  br i1 %9030, label %9031, label %9033

; <label>:9031                                    ; preds = %9026
  %9032 = fcmp fast oeq float %9028, %9027
  br i1 %9032, label %9336, label %9034

; <label>:9033                                    ; preds = %9026
  br i1 %8997, label %9336, label %9034

; <label>:9034                                    ; preds = %9033, %9031
  %9035 = phi float [ %8963, %9033 ], [ %9027, %9031 ]
  %9036 = phi float [ 0.000000e+00, %9033 ], [ %9028, %9031 ]
  %9037 = icmp ne i32 %8985, 0
  %9038 = fmul fast float %9035, %8966
  %9039 = fadd fast float %9038, %8979
  %9040 = fmul fast float %9039, %9035
  %9041 = select i1 %9037, float 0.000000e+00, float %9040
  %9042 = fcmp fast oeq float %8966, 0.000000e+00
  %9043 = fdiv fast float %8984, %8966
  %9044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9043)  ; FMax(a,b)
  %9045 = select i1 %9042, float %9035, float %9044
  %9046 = call float @dx.op.binary.f32(i32 36, float %9035, float %9045)  ; FMin(a,b)
  %9047 = fcmp fast ogt float %8966, 0.000000e+00
  %9048 = fcmp fast olt float %8984, 0.000000e+00
  br i1 %9047, label %9049, label %9106

; <label>:9049                                    ; preds = %9034
  %9050 = icmp eq i32 %8985, 0
  br i1 %9048, label %9051, label %9095

; <label>:9051                                    ; preds = %9049
  %9052 = select i1 %9050, float %9035, float 0.000000e+00
  %9053 = fsub fast float -0.000000e+00, %9052
  %9054 = call float @dx.op.unary.f32(i32 6, float %9053)  ; FAbs(value)
  %9055 = fmul fast float %9052, %8966
  %9056 = fadd fast float %9055, %8979
  %9057 = fmul fast float %9054, %9056
  %9058 = fsub fast float %9041, %9057
  %9059 = fsub fast float %9035, %9054
  %9060 = select i1 %9050, float %9059, float 0.000000e+00
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9064 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9065, 0
  %9067 = extractvalue %dx.types.CBufRet.f32 %9065, 1
  %9068 = extractvalue %dx.types.CBufRet.f32 %9065, 2
  %9069 = extractvalue %dx.types.CBufRet.f32 %9065, 3
  %9070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9071 = extractvalue %dx.types.CBufRet.f32 %9070, 3
  %9072 = call float @dx.op.binary.f32(i32 36, float %9058, float %9071)  ; FMin(a,b)
  %9073 = fmul fast float %9069, %9060
  %9074 = call float @dx.op.unary.f32(i32 7, float %9073)  ; Saturate(value)
  %9075 = fsub fast float %9066, %9062
  %9076 = fsub fast float %9067, %9063
  %9077 = fsub fast float %9068, %9064
  %9078 = fmul fast float %9074, %9075
  %9079 = fmul fast float %9074, %9076
  %9080 = fmul fast float %9074, %9077
  %9081 = fadd fast float %9078, %9062
  %9082 = fadd fast float %9079, %9063
  %9083 = fadd fast float %9080, %9064
  %9084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9085 = extractvalue %dx.types.CBufRet.f32 %9084, 0
  %9086 = extractvalue %dx.types.CBufRet.f32 %9084, 1
  %9087 = fadd fast float %9086, %9085
  %9088 = call float @dx.op.unary.f32(i32 7, float %9087)  ; Saturate(value)
  %9089 = extractvalue %dx.types.CBufRet.f32 %9084, 2
  %9090 = extractvalue %dx.types.CBufRet.f32 %9084, 3
  %9091 = fadd fast float %9090, %9089
  %9092 = call float @dx.op.unary.f32(i32 7, float %9091)  ; Saturate(value)
  %9093 = fmul fast float %9088, %9072
  %9094 = fmul fast float %9093, %9092
  br label %9336

; <label>:9095                                    ; preds = %9049
  br i1 %9050, label %9096, label %9117

; <label>:9096                                    ; preds = %9095
  %9097 = call float @dx.op.binary.f32(i32 36, float %9046, float %9036)  ; FMin(a,b)
  %9098 = fsub fast float %9046, %9097
  %9099 = fsub fast float %9098, %9035
  %9100 = call float @dx.op.unary.f32(i32 6, float %9099)  ; FAbs(value)
  %9101 = fadd fast float %9098, %9035
  %9102 = fmul fast float %9101, %8966
  %9103 = fadd fast float %9102, %8979
  %9104 = fmul fast float %9103, %9100
  %9105 = fsub fast float %9041, %9104
  br label %9117

; <label>:9106                                    ; preds = %9034
  br i1 %9048, label %9107, label %9117

; <label>:9107                                    ; preds = %9106
  %9108 = call float @dx.op.binary.f32(i32 35, float %9036, float %9046)  ; FMax(a,b)
  %9109 = icmp eq i32 %8985, 0
  %9110 = select i1 %9109, float %9046, float 0.000000e+00
  %9111 = fsub fast float -0.000000e+00, %9110
  %9112 = call float @dx.op.unary.f32(i32 6, float %9111)  ; FAbs(value)
  %9113 = fmul fast float %9110, %8966
  %9114 = fadd fast float %9113, %8979
  %9115 = fmul fast float %9112, %9114
  %9116 = fsub fast float %9041, %9115
  br label %9117

; <label>:9117                                    ; preds = %9107, %9106, %9096, %9095
  %9118 = phi float [ %9036, %9095 ], [ %9036, %9096 ], [ %9108, %9107 ], [ %9036, %9106 ]
  %9119 = phi float [ 0.000000e+00, %9095 ], [ %9100, %9096 ], [ %9112, %9107 ], [ 0.000000e+00, %9106 ]
  %9120 = phi float [ %9041, %9095 ], [ %9105, %9096 ], [ %9116, %9107 ], [ %9041, %9106 ]
  %9121 = phi float [ %9046, %9095 ], [ %9046, %9096 ], [ %9035, %9107 ], [ %9035, %9106 ]
  %9122 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 0
  store float -1.000000e+00, float* %9122, align 4, !tbaa !114, !noalias !126
  %9123 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 1
  store float -1.000000e+00, float* %9123, align 4, !tbaa !114, !noalias !126
  %9124 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 2
  store float -1.000000e+00, float* %9124, align 4, !tbaa !114, !noalias !126
  %9125 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 0
  store float -1.000000e+00, float* %9125, align 4, !tbaa !114, !noalias !126
  %9126 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 1
  store float -1.000000e+00, float* %9126, align 4, !tbaa !114, !noalias !126
  %9127 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 2
  store float -1.000000e+00, float* %9127, align 4, !tbaa !114, !noalias !126
  %9128 = icmp sgt i32 %8987, 0
  br i1 %9128, label %9129, label %9190

; <label>:9129                                    ; preds = %9117
  br label %9130

; <label>:9130                                    ; preds = %9179, %9129
  %9131 = phi i32 [ %9180, %9179 ], [ 0, %9129 ]
  %9132 = phi i32 [ %9181, %9179 ], [ 0, %9129 ]
  %9133 = add nuw i32 %9132, 171
  %9134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 %9133)  ; CBufferLoadLegacy(handle,regIndex)
  %9135 = extractvalue %dx.types.CBufRet.f32 %9134, 0
  %9136 = extractvalue %dx.types.CBufRet.f32 %9134, 1
  %9137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9138 = extractvalue %dx.types.CBufRet.f32 %9137, 0
  %9139 = extractvalue %dx.types.CBufRet.f32 %9137, 1
  %9140 = fsub fast float %9135, %9138
  %9141 = fsub fast float %9136, %9139
  %9142 = extractvalue %dx.types.CBufRet.f32 %9134, 2
  %9143 = fsub fast float -0.000000e+00, %9140
  %9144 = fsub fast float -0.000000e+00, %9141
  %9145 = call float @dx.op.dot2.f32(i32 54, float %8964, float %8965, float %9143, float %9144)  ; Dot2(ax,ay,bx,by)
  %9146 = fmul fast float %9145, 2.000000e+00
  %9147 = call float @dx.op.dot2.f32(i32 54, float %9143, float %9144, float %9143, float %9144)  ; Dot2(ax,ay,bx,by)
  %9148 = fmul fast float %9142, %9142
  %9149 = fsub fast float %9147, %9148
  %9150 = fmul fast float %9146, %9146
  %9151 = fmul fast float %9007, %9149
  %9152 = fsub fast float %9150, %9151
  %9153 = fcmp fast ogt float %9152, 0.000000e+00
  br i1 %9153, label %9154, label %9169

; <label>:9154                                    ; preds = %9130
  %9155 = fcmp fast ogt float %9146, 0.000000e+00
  %9156 = call float @dx.op.unary.f32(i32 24, float %9152)  ; Sqrt(value)
  %9157 = fsub fast float -0.000000e+00, %9156
  %9158 = select i1 %9155, float %9156, float %9157
  %9159 = fadd fast float %9158, %9146
  %9160 = fmul float %9159, -5.000000e-01
  %9161 = fdiv fast float %9160, %9000
  %9162 = call float @dx.op.binary.f32(i32 35, float %9161, float 0.000000e+00)  ; FMax(a,b)
  %9163 = call float @dx.op.binary.f32(i32 36, float %9035, float %9162)  ; FMin(a,b)
  %9164 = fdiv fast float %9149, %9160
  %9165 = call float @dx.op.binary.f32(i32 35, float %9164, float 0.000000e+00)  ; FMax(a,b)
  %9166 = call float @dx.op.binary.f32(i32 36, float %9035, float %9165)  ; FMin(a,b)
  %9167 = call float @dx.op.binary.f32(i32 36, float %9163, float %9166)  ; FMin(a,b)
  %9168 = call float @dx.op.binary.f32(i32 35, float %9163, float %9166)  ; FMax(a,b)
  br label %9169

; <label>:9169                                    ; preds = %9154, %9130
  %9170 = phi float [ %9168, %9154 ], [ -1.000000e+00, %9130 ]
  %9171 = phi float [ %9167, %9154 ], [ -1.000000e+00, %9130 ]
  %9172 = phi i1 [ true, %9154 ], [ false, %9130 ]
  br i1 %9172, label %9173, label %9179

; <label>:9173                                    ; preds = %9169
  %9174 = call float @dx.op.binary.f32(i32 35, float %9118, float %9171)  ; FMax(a,b)
  %9175 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9132
  store float %9174, float* %9175, align 4, !tbaa !114, !noalias !126
  %9176 = call float @dx.op.binary.f32(i32 35, float %9118, float %9170)  ; FMax(a,b)
  %9177 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9132
  store float %9176, float* %9177, align 4, !tbaa !114, !noalias !126
  %9178 = add nsw i32 %9131, 1
  br label %9179

; <label>:9179                                    ; preds = %9173, %9169
  %9180 = phi i32 [ %9178, %9173 ], [ %9131, %9169 ]
  %9181 = add nuw nsw i32 %9132, 1
  %9182 = icmp eq i32 %9181, %8987
  br i1 %9182, label %9183, label %9130

; <label>:9183                                    ; preds = %9179
  %9184 = load float, float* %9124, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %9185 = load float, float* %9123, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  %9186 = load float, float* %9122, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  %9187 = load float, float* %9127, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %9188 = load float, float* %9126, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  %9189 = load float, float* %9125, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  br label %9190

; <label>:9190                                    ; preds = %9183, %9117
  %9191 = phi float [ -1.000000e+00, %9117 ], [ %9189, %9183 ]
  %9192 = phi float [ -1.000000e+00, %9117 ], [ %9188, %9183 ]
  %9193 = phi float [ -1.000000e+00, %9117 ], [ %9187, %9183 ]
  %9194 = phi float [ -1.000000e+00, %9117 ], [ %9186, %9183 ]
  %9195 = phi float [ -1.000000e+00, %9117 ], [ %9185, %9183 ]
  %9196 = phi float [ -1.000000e+00, %9117 ], [ %9184, %9183 ]
  %9197 = phi i32 [ 0, %9117 ], [ %9180, %9183 ]
  %9198 = call float @dx.op.binary.f32(i32 36, float %9195, float %9196)  ; FMin(a,b)
  %9199 = call float @dx.op.binary.f32(i32 36, float %9194, float %9198)  ; FMin(a,b)
  %9200 = call float @dx.op.binary.f32(i32 35, float %9194, float %9195)  ; FMax(a,b)
  %9201 = call float @dx.op.binary.f32(i32 36, float %9200, float %9196)  ; FMin(a,b)
  %9202 = call float @dx.op.binary.f32(i32 36, float %9194, float %9195)  ; FMin(a,b)
  %9203 = call float @dx.op.binary.f32(i32 35, float %9202, float %9201)  ; FMax(a,b)
  %9204 = call float @dx.op.binary.f32(i32 35, float %9195, float %9196)  ; FMax(a,b)
  %9205 = call float @dx.op.binary.f32(i32 35, float %9194, float %9204)  ; FMax(a,b)
  store float %9199, float* %9122, align 4, !tbaa !114, !alias.scope !150, !noalias !151
  store float %9203, float* %9123, align 4, !tbaa !114, !alias.scope !148, !noalias !149
  store float %9205, float* %9124, align 4, !tbaa !114, !alias.scope !142, !noalias !145
  %9206 = call float @dx.op.binary.f32(i32 36, float %9192, float %9193)  ; FMin(a,b)
  %9207 = call float @dx.op.binary.f32(i32 36, float %9191, float %9206)  ; FMin(a,b)
  %9208 = call float @dx.op.binary.f32(i32 35, float %9191, float %9192)  ; FMax(a,b)
  %9209 = call float @dx.op.binary.f32(i32 36, float %9208, float %9193)  ; FMin(a,b)
  %9210 = call float @dx.op.binary.f32(i32 36, float %9191, float %9192)  ; FMin(a,b)
  %9211 = call float @dx.op.binary.f32(i32 35, float %9210, float %9209)  ; FMax(a,b)
  %9212 = call float @dx.op.binary.f32(i32 35, float %9192, float %9193)  ; FMax(a,b)
  %9213 = call float @dx.op.binary.f32(i32 35, float %9191, float %9212)  ; FMax(a,b)
  store float %9207, float* %9125, align 4, !tbaa !114, !alias.scope !160, !noalias !161
  store float %9211, float* %9126, align 4, !tbaa !114, !alias.scope !158, !noalias !159
  store float %9213, float* %9127, align 4, !tbaa !114, !alias.scope !152, !noalias !155
  %9214 = sub nsw i32 3, %9197
  %9215 = icmp sgt i32 %9214, 2
  br i1 %9215, label %9216, label %9254

; <label>:9216                                    ; preds = %9190
  %9217 = icmp eq i32 %8985, 0
  %9218 = fsub fast float %9035, %9119
  %9219 = select i1 %9217, float %9218, float %9119
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 0
  %9222 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9223 = extractvalue %dx.types.CBufRet.f32 %9220, 2
  %9224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9225 = extractvalue %dx.types.CBufRet.f32 %9224, 0
  %9226 = extractvalue %dx.types.CBufRet.f32 %9224, 1
  %9227 = extractvalue %dx.types.CBufRet.f32 %9224, 2
  %9228 = extractvalue %dx.types.CBufRet.f32 %9224, 3
  %9229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9230 = extractvalue %dx.types.CBufRet.f32 %9229, 3
  %9231 = call float @dx.op.binary.f32(i32 36, float %9120, float %9230)  ; FMin(a,b)
  %9232 = fmul fast float %9228, %9219
  %9233 = call float @dx.op.unary.f32(i32 7, float %9232)  ; Saturate(value)
  %9234 = fsub fast float %9225, %9221
  %9235 = fsub fast float %9226, %9222
  %9236 = fsub fast float %9227, %9223
  %9237 = fmul fast float %9233, %9234
  %9238 = fmul fast float %9233, %9235
  %9239 = fmul fast float %9233, %9236
  %9240 = fadd fast float %9237, %9221
  %9241 = fadd fast float %9238, %9222
  %9242 = fadd fast float %9239, %9223
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 0
  %9245 = extractvalue %dx.types.CBufRet.f32 %9243, 1
  %9246 = fadd fast float %9245, %9244
  %9247 = call float @dx.op.unary.f32(i32 7, float %9246)  ; Saturate(value)
  %9248 = extractvalue %dx.types.CBufRet.f32 %9243, 2
  %9249 = extractvalue %dx.types.CBufRet.f32 %9243, 3
  %9250 = fadd fast float %9249, %9248
  %9251 = call float @dx.op.unary.f32(i32 7, float %9250)  ; Saturate(value)
  %9252 = fmul fast float %9247, %9231
  %9253 = fmul fast float %9252, %9251
  br label %9336

; <label>:9254                                    ; preds = %9190
  %9255 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9214
  %9256 = load float, float* %9255, align 4, !tbaa !114, !noalias !126
  %9257 = fcmp fast olt float %9256, %9121
  %9258 = icmp sgt i32 %9197, 0
  %9259 = and i1 %9258, %9257
  br i1 %9259, label %9260, label %9297

; <label>:9260                                    ; preds = %9254
  br label %9261

; <label>:9261                                    ; preds = %9290, %9260
  %9262 = phi float [ %9291, %9290 ], [ %9119, %9260 ]
  %9263 = phi float [ %9292, %9290 ], [ %9120, %9260 ]
  %9264 = phi float [ %9272, %9290 ], [ %9256, %9260 ]
  %9265 = phi i32 [ %9269, %9290 ], [ %9214, %9260 ]
  %9266 = getelementptr inbounds [3 x float], [3 x float]* %104, i32 0, i32 %9265
  %9267 = load float, float* %9266, align 4, !tbaa !114, !noalias !126
  %9268 = icmp slt i32 %9265, 2
  %9269 = add nsw i32 %9265, 1
  %9270 = getelementptr inbounds [3 x float], [3 x float]* %103, i32 0, i32 %9269
  %9271 = load float, float* %9270, align 4, !tbaa !114, !noalias !126
  %9272 = select i1 %9268, float %9271, float %9035
  %9273 = call float @dx.op.binary.f32(i32 36, float %9272, float %9267)  ; FMin(a,b)
  %9274 = call float @dx.op.binary.f32(i32 36, float %9121, float %9273)  ; FMin(a,b)
  %9275 = icmp eq i32 %8985, 0
  %9276 = fadd fast float %9274, %9264
  %9277 = fmul fast float %9276, %8966
  %9278 = fadd fast float %9277, %8979
  br i1 %9275, label %9284, label %9279

; <label>:9279                                    ; preds = %9261
  %9280 = fsub fast float %9274, %9264
  %9281 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9280)  ; FMax(a,b)
  %9282 = fmul fast float %9281, %9278
  %9283 = fadd fast float %9282, %9263
  br label %9290

; <label>:9284                                    ; preds = %9261
  %9285 = fsub fast float %9264, %9274
  %9286 = call float @dx.op.unary.f32(i32 6, float %9285)  ; FAbs(value)
  %9287 = fadd fast float %9286, %9262
  %9288 = fmul fast float %9286, %9278
  %9289 = fsub fast float %9263, %9288
  br label %9290

; <label>:9290                                    ; preds = %9284, %9279
  %9291 = phi float [ %9281, %9279 ], [ %9287, %9284 ]
  %9292 = phi float [ %9283, %9279 ], [ %9289, %9284 ]
  %9293 = fcmp fast olt float %9272, %9121
  %9294 = icmp slt i32 %9269, 3
  %9295 = and i1 %9294, %9293
  br i1 %9295, label %9261, label %9296

; <label>:9296                                    ; preds = %9290
  br label %9297

; <label>:9297                                    ; preds = %9296, %9254
  %9298 = phi float [ %9119, %9254 ], [ %9291, %9296 ]
  %9299 = phi float [ %9120, %9254 ], [ %9292, %9296 ]
  %9300 = fsub fast float %9035, %9298
  %9301 = select i1 %9037, float %9298, float %9300
  %9302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9303 = extractvalue %dx.types.CBufRet.f32 %9302, 0
  %9304 = extractvalue %dx.types.CBufRet.f32 %9302, 1
  %9305 = extractvalue %dx.types.CBufRet.f32 %9302, 2
  %9306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9307 = extractvalue %dx.types.CBufRet.f32 %9306, 0
  %9308 = extractvalue %dx.types.CBufRet.f32 %9306, 1
  %9309 = extractvalue %dx.types.CBufRet.f32 %9306, 2
  %9310 = extractvalue %dx.types.CBufRet.f32 %9306, 3
  %9311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9312 = extractvalue %dx.types.CBufRet.f32 %9311, 3
  %9313 = call float @dx.op.binary.f32(i32 36, float %9299, float %9312)  ; FMin(a,b)
  %9314 = fmul fast float %9310, %9301
  %9315 = call float @dx.op.unary.f32(i32 7, float %9314)  ; Saturate(value)
  %9316 = fsub fast float %9307, %9303
  %9317 = fsub fast float %9308, %9304
  %9318 = fsub fast float %9309, %9305
  %9319 = fmul fast float %9315, %9316
  %9320 = fmul fast float %9315, %9317
  %9321 = fmul fast float %9315, %9318
  %9322 = fadd fast float %9319, %9303
  %9323 = fadd fast float %9320, %9304
  %9324 = fadd fast float %9321, %9305
  %9325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9326 = extractvalue %dx.types.CBufRet.f32 %9325, 0
  %9327 = extractvalue %dx.types.CBufRet.f32 %9325, 1
  %9328 = fadd fast float %9327, %9326
  %9329 = call float @dx.op.unary.f32(i32 7, float %9328)  ; Saturate(value)
  %9330 = extractvalue %dx.types.CBufRet.f32 %9325, 2
  %9331 = extractvalue %dx.types.CBufRet.f32 %9325, 3
  %9332 = fadd fast float %9331, %9330
  %9333 = call float @dx.op.unary.f32(i32 7, float %9332)  ; Saturate(value)
  %9334 = fmul fast float %9329, %9313
  %9335 = fmul fast float %9334, %9333
  br label %9336

; <label>:9336                                    ; preds = %9297, %9216, %9051, %9033, %9031
  %9337 = phi float [ %9060, %9051 ], [ %9219, %9216 ], [ %9301, %9297 ], [ 0.000000e+00, %9031 ], [ 0.000000e+00, %9033 ]
  %9338 = phi float [ %9094, %9051 ], [ %9253, %9216 ], [ %9335, %9297 ], [ 0.000000e+00, %9031 ], [ 0.000000e+00, %9033 ]
  %9339 = phi float [ %9081, %9051 ], [ %9240, %9216 ], [ %9322, %9297 ], [ 0.000000e+00, %9031 ], [ 0.000000e+00, %9033 ]
  %9340 = phi float [ %9082, %9051 ], [ %9241, %9216 ], [ %9323, %9297 ], [ 0.000000e+00, %9031 ], [ 0.000000e+00, %9033 ]
  %9341 = phi float [ %9083, %9051 ], [ %9242, %9216 ], [ %9324, %9297 ], [ 0.000000e+00, %9031 ], [ 0.000000e+00, %9033 ]
  %9342 = fmul fast float %8974, %9338
  %9343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9344 = extractvalue %dx.types.CBufRet.f32 %9343, 2
  %9345 = fsub fast float %8981, %9344
  %9346 = fcmp fast olt float %9342, -2.000000e+01
  %9347 = call float @dx.op.unary.f32(i32 21, float %9342)  ; Exp(value)
  %9348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9349 = extractvalue %dx.types.CBufRet.f32 %9348, 2
  %9350 = extractvalue %dx.types.CBufRet.f32 %9348, 3
  %9351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9352 = extractvalue %dx.types.CBufRet.f32 %9351, 2
  %9353 = fmul fast float %9350, %9345
  %9354 = call float @dx.op.unary.f32(i32 7, float %9353)  ; Saturate(value)
  %9355 = fsub fast float 1.000000e+00, %9354
  %9356 = fmul fast float %8966, 5.000000e-01
  %9357 = fadd fast float %9356, 5.000000e-01
  %9358 = call float @dx.op.unary.f32(i32 7, float %9357)  ; Saturate(value)
  %9359 = fsub fast float 1.000000e+00, %9358
  %9360 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9355)  ; FMax(a,b)
  %9361 = fdiv fast float %9359, %9360
  %9362 = fsub fast float %9345, %8923
  %9363 = call float @dx.op.unary.f32(i32 6, float %9362)  ; FAbs(value)
  %9364 = fmul fast float %9363, %9349
  %9365 = call float @dx.op.unary.f32(i32 7, float %9361)  ; Saturate(value)
  %9366 = fsub fast float 1.000000e+00, %9364
  %9367 = fmul fast float %9366, %9365
  %9368 = fadd fast float %9367, %9364
  %9369 = fmul fast float %9352, %9345
  %9370 = call float @dx.op.unary.f32(i32 7, float %9369)  ; Saturate(value)
  %9371 = fsub fast float 1.000000e+00, %9368
  %9372 = fmul fast float %9371, %9370
  %9373 = fadd fast float %9372, %9368
  %9374 = call float @dx.op.unary.f32(i32 7, float %9373)  ; Saturate(value)
  %9375 = fadd fast float %9347, -1.000000e+00
  %9376 = select i1 %9346, float -1.000000e+00, float %9375
  %9377 = fmul fast float %9374, %9376
  %9378 = fadd fast float %9377, 1.000000e+00
  %9379 = fsub fast float -0.000000e+00, %9377
  %9380 = fmul fast float %9339, %9379
  %9381 = fmul fast float %9340, %9379
  %9382 = fmul fast float %9341, %9379
  br label %9383

; <label>:9383                                    ; preds = %9336, %8932
  %9384 = phi float [ %9337, %9336 ], [ 0.000000e+00, %8932 ]
  %9385 = phi float [ %9378, %9336 ], [ 1.000000e+00, %8932 ]
  %9386 = phi float [ %9380, %9336 ], [ 0.000000e+00, %8932 ]
  %9387 = phi float [ %9381, %9336 ], [ 0.000000e+00, %8932 ]
  %9388 = phi float [ %9382, %9336 ], [ 0.000000e+00, %8932 ]
  %9389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9390 = extractvalue %dx.types.CBufRet.f32 %9389, 1
  %9391 = fsub fast float 1.000000e+00, %9385
  %9392 = fmul fast float %9391, %8967
  %9393 = fmul fast float %9392, %9390
  %9394 = fsub fast float %8967, %9393
  br i1 %8960, label %9395, label %9424, !dx.controlflow.hints !162

; <label>:9395                                    ; preds = %9383
  %9396 = fmul fast float %8968, %8957
  %9397 = fadd fast float %9396, %8958
  %9398 = call float @dx.op.unary.f32(i32 7, float %9397)  ; Saturate(value)
  %9399 = fmul fast float %8939, %9394
  %9400 = fsub fast float -0.000000e+00, %9399
  %9401 = fmul fast float %8940, %9394
  %9402 = fsub fast float -0.000000e+00, %9401
  %9403 = call float @dx.op.unary.f32(i32 21, float %9400)  ; Exp(value)
  %9404 = call float @dx.op.unary.f32(i32 21, float %9402)  ; Exp(value)
  %9405 = call float @dx.op.binary.f32(i32 35, float %8947, float %9403)  ; FMax(a,b)
  %9406 = call float @dx.op.binary.f32(i32 35, float %8947, float %9404)  ; FMax(a,b)
  %9407 = fsub fast float %9406, %9405
  %9408 = fmul fast float %9407, %9398
  %9409 = fadd fast float %9408, %9405
  %9410 = call float @dx.op.unary.f32(i32 7, float %9409)  ; Saturate(value)
  %9411 = fsub fast float %8944, %8949
  %9412 = fsub fast float %8945, %8950
  %9413 = fsub fast float %8946, %8951
  %9414 = fmul fast float %9398, %9411
  %9415 = fmul fast float %9398, %9412
  %9416 = fmul fast float %9398, %9413
  %9417 = fadd fast float %9414, %8949
  %9418 = fadd fast float %9415, %8950
  %9419 = fadd fast float %9416, %8951
  %9420 = fsub fast float 1.000000e+00, %9410
  %9421 = fmul fast float %9420, %9417
  %9422 = fmul fast float %9420, %9418
  %9423 = fmul fast float %9420, %9419
  br label %9483

; <label>:9424                                    ; preds = %9383
  %9425 = fmul fast float %9394, %8956
  %9426 = call float @dx.op.unary.f32(i32 7, float %9425)  ; Saturate(value)
  %9427 = fsub fast float 2.000000e+00, %9426
  %9428 = fmul fast float %9426, 9.921875e-01
  %9429 = fmul fast float %9428, %9427
  %9430 = fadd fast float %9429, 3.906250e-03
  %9431 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %44, float %9430, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9432 = extractvalue %dx.types.ResRet.f32 %9431, 0
  %9433 = fsub fast float %9426, %9432
  %9434 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9433)  ; FMax(a,b)
  %9435 = fmul fast float %8942, %8923
  %9436 = call float @dx.op.unary.f32(i32 6, float %9435)  ; FAbs(value)
  %9437 = fcmp fast ogt float %9436, 0x3EB0C6F7A0000000
  br i1 %9437, label %9438, label %9444, !dx.controlflow.hints !163

; <label>:9438                                    ; preds = %9424
  %9439 = fmul fast float %9435, 0xBFF7154760000000
  %9440 = call float @dx.op.unary.f32(i32 21, float %9439)  ; Exp(value)
  %9441 = fsub fast float 1.000000e+00, %9440
  %9442 = fdiv fast float %9441, %9435
  %9443 = fmul fast float %9442, %8952
  br label %9444

; <label>:9444                                    ; preds = %9438, %9424
  %9445 = phi float [ %9443, %9438 ], [ %8952, %9424 ]
  %9446 = fadd fast float %9445, %8954
  %9447 = fmul fast float %9446, %9434
  %9448 = fmul fast float %8939, %9447
  %9449 = fsub fast float -0.000000e+00, %9448
  %9450 = fmul fast float %8940, %9447
  %9451 = fsub fast float -0.000000e+00, %9450
  %9452 = fmul fast float %8941, %9447
  %9453 = fsub fast float -0.000000e+00, %9452
  %9454 = call float @dx.op.unary.f32(i32 21, float %9449)  ; Exp(value)
  %9455 = call float @dx.op.unary.f32(i32 21, float %9451)  ; Exp(value)
  %9456 = call float @dx.op.unary.f32(i32 21, float %9453)  ; Exp(value)
  %9457 = fmul fast float %8968, %8968
  %9458 = fadd fast float %9457, 1.000000e+00
  %9459 = fmul fast float %9458, 0x3FAE8EC8A0000000
  %9460 = fmul fast float %9459, %8949
  %9461 = fmul fast float %9459, %8950
  %9462 = fmul fast float %9459, %8951
  %9463 = fmul fast float %8968, %8947
  %9464 = fsub fast float 1.000000e+00, %9463
  %9465 = fmul fast float %8947, %8947
  %9466 = fsub fast float 1.000000e+00, %9465
  %9467 = fmul fast float %9466, 0x3FB45F3060000000
  %9468 = fmul fast float %9464, %9464
  %9469 = fdiv fast float 1.000000e+00, %9468
  %9470 = fmul fast float %9467, %9469
  %9471 = fmul fast float %9470, %8944
  %9472 = fmul fast float %9470, %8945
  %9473 = fmul fast float %9470, %8946
  %9474 = fadd fast float %9471, %9460
  %9475 = fadd fast float %9472, %9461
  %9476 = fadd fast float %9473, %9462
  %9477 = fsub fast float 1.000000e+00, %9454
  %9478 = fsub fast float 1.000000e+00, %9455
  %9479 = fsub fast float 1.000000e+00, %9456
  %9480 = fmul fast float %9474, %9477
  %9481 = fmul fast float %9475, %9478
  %9482 = fmul fast float %9476, %9479
  br label %9483

; <label>:9483                                    ; preds = %9444, %9395
  %9484 = phi float [ %9421, %9395 ], [ %9480, %9444 ]
  %9485 = phi float [ %9422, %9395 ], [ %9481, %9444 ]
  %9486 = phi float [ %9423, %9395 ], [ %9482, %9444 ]
  %9487 = phi float [ %9410, %9395 ], [ %9454, %9444 ]
  %9488 = phi float [ %9410, %9395 ], [ %9455, %9444 ]
  %9489 = phi float [ %9410, %9395 ], [ %9456, %9444 ]
  br i1 %8976, label %9490, label %9688, !dx.controlflow.hints !164

; <label>:9490                                    ; preds = %9483
  %9491 = extractvalue %dx.types.CBufRet.f32 %9389, 0
  %9492 = fmul fast float %9491, %9391
  %9493 = fsub fast float %9386, %9484
  %9494 = fsub fast float %9387, %9485
  %9495 = fsub fast float %9388, %9486
  %9496 = fmul fast float %9492, %9493
  %9497 = fmul fast float %9492, %9494
  %9498 = fmul fast float %9492, %9495
  %9499 = fadd fast float %9496, %9484
  %9500 = fadd fast float %9497, %9485
  %9501 = fadd fast float %9498, %9486
  %9502 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9487)  ; FMax(a,b)
  %9503 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9488)  ; FMax(a,b)
  %9504 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9489)  ; FMax(a,b)
  %9505 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9385)  ; FMax(a,b)
  %9506 = call float @dx.op.binary.f32(i32 35, float %9384, float %9394)  ; FMax(a,b)
  %9507 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9506)  ; FMax(a,b)
  %9508 = fdiv fast float %9384, %9507
  %9509 = call float @dx.op.unary.f32(i32 7, float %9508)  ; Saturate(value)
  %9510 = fdiv fast float %9394, %9507
  %9511 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  %9512 = fcmp fast une float %9505, 1.000000e+00
  br i1 %9512, label %9513, label %9526, !dx.controlflow.hints !165

; <label>:9513                                    ; preds = %9490
  %9514 = call float @dx.op.unary.f32(i32 23, float %9505)  ; Log(value)
  %9515 = fmul fast float %9514, 0x3FE62E4300000000
  %9516 = fmul fast float %9386, %9515
  %9517 = fsub fast float -0.000000e+00, %9516
  %9518 = fmul fast float %9387, %9515
  %9519 = fsub fast float -0.000000e+00, %9518
  %9520 = fmul fast float %9388, %9515
  %9521 = fsub fast float -0.000000e+00, %9520
  %9522 = fsub fast float 1.000000e+00, %9505
  %9523 = fdiv fast float %9517, %9522
  %9524 = fdiv fast float %9519, %9522
  %9525 = fdiv fast float %9521, %9522
  br label %9526

; <label>:9526                                    ; preds = %9513, %9490
  %9527 = phi float [ %9523, %9513 ], [ %9386, %9490 ]
  %9528 = phi float [ %9524, %9513 ], [ %9387, %9490 ]
  %9529 = phi float [ %9525, %9513 ], [ %9388, %9490 ]
  %9530 = phi float [ %9515, %9513 ], [ 0.000000e+00, %9490 ]
  %9531 = fcmp fast une float %9502, 1.000000e+00
  br i1 %9531, label %9532, label %9539, !dx.controlflow.hints !166

; <label>:9532                                    ; preds = %9526
  %9533 = call float @dx.op.unary.f32(i32 23, float %9502)  ; Log(value)
  %9534 = fmul fast float %9533, 0x3FE62E4300000000
  %9535 = fmul fast float %9499, %9534
  %9536 = fsub fast float -0.000000e+00, %9535
  %9537 = fsub fast float 1.000000e+00, %9502
  %9538 = fdiv fast float %9536, %9537
  br label %9539

; <label>:9539                                    ; preds = %9532, %9526
  %9540 = phi float [ %9538, %9532 ], [ %9499, %9526 ]
  %9541 = phi float [ %9534, %9532 ], [ 0.000000e+00, %9526 ]
  %9542 = fcmp fast une float %9503, 1.000000e+00
  br i1 %9542, label %9543, label %9550, !dx.controlflow.hints !166

; <label>:9543                                    ; preds = %9539
  %9544 = call float @dx.op.unary.f32(i32 23, float %9503)  ; Log(value)
  %9545 = fmul fast float %9544, 0x3FE62E4300000000
  %9546 = fmul fast float %9500, %9545
  %9547 = fsub fast float -0.000000e+00, %9546
  %9548 = fsub fast float 1.000000e+00, %9503
  %9549 = fdiv fast float %9547, %9548
  br label %9550

; <label>:9550                                    ; preds = %9543, %9539
  %9551 = phi float [ %9549, %9543 ], [ %9500, %9539 ]
  %9552 = phi float [ %9545, %9543 ], [ 0.000000e+00, %9539 ]
  %9553 = fcmp fast une float %9504, 1.000000e+00
  br i1 %9553, label %9554, label %9561, !dx.controlflow.hints !166

; <label>:9554                                    ; preds = %9550
  %9555 = call float @dx.op.unary.f32(i32 23, float %9504)  ; Log(value)
  %9556 = fmul fast float %9555, 0x3FE62E4300000000
  %9557 = fmul fast float %9501, %9556
  %9558 = fsub fast float -0.000000e+00, %9557
  %9559 = fsub fast float 1.000000e+00, %9504
  %9560 = fdiv fast float %9558, %9559
  br label %9561

; <label>:9561                                    ; preds = %9554, %9550
  %9562 = phi float [ %9560, %9554 ], [ %9501, %9550 ]
  %9563 = phi float [ %9556, %9554 ], [ 0.000000e+00, %9550 ]
  %9564 = fmul fast float %9527, %9511
  %9565 = fmul fast float %9528, %9511
  %9566 = fmul fast float %9529, %9511
  %9567 = fmul fast float %9530, %9511
  %9568 = fmul fast float %9540, %9509
  %9569 = fmul fast float %9551, %9509
  %9570 = fmul fast float %9562, %9509
  %9571 = fmul fast float %9541, %9509
  %9572 = fmul fast float %9552, %9509
  %9573 = fmul fast float %9563, %9509
  %9574 = fadd fast float %9568, %9564
  %9575 = fadd fast float %9569, %9565
  %9576 = fadd fast float %9570, %9566
  %9577 = fadd fast float %9571, %9567
  %9578 = fadd fast float %9572, %9567
  %9579 = fadd fast float %9573, %9567
  %9580 = fcmp fast une float %9577, 0.000000e+00
  br i1 %9580, label %9581, label %9588, !dx.controlflow.hints !167

; <label>:9581                                    ; preds = %9561
  %9582 = fmul fast float %9577, 0x3FF7154760000000
  %9583 = call float @dx.op.unary.f32(i32 21, float %9582)  ; Exp(value)
  %9584 = fsub fast float 1.000000e+00, %9583
  %9585 = fmul fast float %9574, %9584
  %9586 = fsub fast float -0.000000e+00, %9585
  %9587 = fdiv fast float %9586, %9577
  br label %9588

; <label>:9588                                    ; preds = %9581, %9561
  %9589 = phi float [ %9583, %9581 ], [ 1.000000e+00, %9561 ]
  %9590 = phi float [ %9587, %9581 ], [ %9574, %9561 ]
  %9591 = fcmp fast une float %9578, 0.000000e+00
  br i1 %9591, label %9592, label %9599, !dx.controlflow.hints !167

; <label>:9592                                    ; preds = %9588
  %9593 = fmul fast float %9578, 0x3FF7154760000000
  %9594 = call float @dx.op.unary.f32(i32 21, float %9593)  ; Exp(value)
  %9595 = fsub fast float 1.000000e+00, %9594
  %9596 = fmul fast float %9575, %9595
  %9597 = fsub fast float -0.000000e+00, %9596
  %9598 = fdiv fast float %9597, %9578
  br label %9599

; <label>:9599                                    ; preds = %9592, %9588
  %9600 = phi float [ %9594, %9592 ], [ 1.000000e+00, %9588 ]
  %9601 = phi float [ %9598, %9592 ], [ %9575, %9588 ]
  %9602 = fcmp fast une float %9579, 0.000000e+00
  br i1 %9602, label %9603, label %9610, !dx.controlflow.hints !167

; <label>:9603                                    ; preds = %9599
  %9604 = fmul fast float %9579, 0x3FF7154760000000
  %9605 = call float @dx.op.unary.f32(i32 21, float %9604)  ; Exp(value)
  %9606 = fsub fast float 1.000000e+00, %9605
  %9607 = fmul fast float %9576, %9606
  %9608 = fsub fast float -0.000000e+00, %9607
  %9609 = fdiv fast float %9608, %9579
  br label %9610

; <label>:9610                                    ; preds = %9603, %9599
  %9611 = phi float [ %9605, %9603 ], [ 1.000000e+00, %9599 ]
  %9612 = phi float [ %9609, %9603 ], [ %9576, %9599 ]
  %9613 = fcmp fast ogt float %9509, %9511
  br i1 %9613, label %9614, label %9634

; <label>:9614                                    ; preds = %9610
  %9615 = fsub fast float 1.000000e+00, %9511
  %9616 = fmul fast float %9527, %9615
  %9617 = fmul fast float %9528, %9615
  %9618 = fmul fast float %9529, %9615
  %9619 = fmul fast float %9530, %9615
  %9620 = fcmp fast une float %9619, 0.000000e+00
  br i1 %9620, label %9621, label %9672, !dx.controlflow.hints !168

; <label>:9621                                    ; preds = %9614
  %9622 = fmul fast float %9619, 0x3FF7154760000000
  %9623 = call float @dx.op.unary.f32(i32 21, float %9622)  ; Exp(value)
  %9624 = fsub fast float 1.000000e+00, %9623
  %9625 = fmul fast float %9616, %9624
  %9626 = fsub fast float -0.000000e+00, %9625
  %9627 = fmul fast float %9617, %9624
  %9628 = fsub fast float -0.000000e+00, %9627
  %9629 = fmul fast float %9618, %9624
  %9630 = fsub fast float -0.000000e+00, %9629
  %9631 = fdiv fast float %9626, %9619
  %9632 = fdiv fast float %9628, %9619
  %9633 = fdiv fast float %9630, %9619
  br label %9672

; <label>:9634                                    ; preds = %9610
  %9635 = fsub fast float 1.000000e+00, %9509
  %9636 = fmul fast float %9540, %9635
  %9637 = fmul fast float %9551, %9635
  %9638 = fmul fast float %9562, %9635
  %9639 = fmul fast float %9541, %9635
  %9640 = fmul fast float %9552, %9635
  %9641 = fmul fast float %9563, %9635
  %9642 = fcmp fast une float %9639, 0.000000e+00
  br i1 %9642, label %9643, label %9650, !dx.controlflow.hints !167

; <label>:9643                                    ; preds = %9634
  %9644 = fmul fast float %9639, 0x3FF7154760000000
  %9645 = call float @dx.op.unary.f32(i32 21, float %9644)  ; Exp(value)
  %9646 = fsub fast float 1.000000e+00, %9645
  %9647 = fmul fast float %9636, %9646
  %9648 = fsub fast float -0.000000e+00, %9647
  %9649 = fdiv fast float %9648, %9639
  br label %9650

; <label>:9650                                    ; preds = %9643, %9634
  %9651 = phi float [ %9649, %9643 ], [ %9636, %9634 ]
  %9652 = phi float [ %9645, %9643 ], [ 1.000000e+00, %9634 ]
  %9653 = fcmp fast une float %9640, 0.000000e+00
  br i1 %9653, label %9654, label %9661, !dx.controlflow.hints !167

; <label>:9654                                    ; preds = %9650
  %9655 = fmul fast float %9640, 0x3FF7154760000000
  %9656 = call float @dx.op.unary.f32(i32 21, float %9655)  ; Exp(value)
  %9657 = fsub fast float 1.000000e+00, %9656
  %9658 = fmul fast float %9637, %9657
  %9659 = fsub fast float -0.000000e+00, %9658
  %9660 = fdiv fast float %9659, %9640
  br label %9661

; <label>:9661                                    ; preds = %9654, %9650
  %9662 = phi float [ %9660, %9654 ], [ %9637, %9650 ]
  %9663 = phi float [ %9656, %9654 ], [ 1.000000e+00, %9650 ]
  %9664 = fcmp fast une float %9641, 0.000000e+00
  br i1 %9664, label %9665, label %9672, !dx.controlflow.hints !167

; <label>:9665                                    ; preds = %9661
  %9666 = fmul fast float %9641, 0x3FF7154760000000
  %9667 = call float @dx.op.unary.f32(i32 21, float %9666)  ; Exp(value)
  %9668 = fsub fast float 1.000000e+00, %9667
  %9669 = fmul fast float %9638, %9668
  %9670 = fsub fast float -0.000000e+00, %9669
  %9671 = fdiv fast float %9670, %9641
  br label %9672

; <label>:9672                                    ; preds = %9665, %9661, %9621, %9614
  %9673 = phi float [ %9671, %9665 ], [ %9633, %9621 ], [ %9618, %9614 ], [ %9638, %9661 ]
  %9674 = phi float [ %9662, %9665 ], [ %9632, %9621 ], [ %9617, %9614 ], [ %9662, %9661 ]
  %9675 = phi float [ %9651, %9665 ], [ %9631, %9621 ], [ %9616, %9614 ], [ %9651, %9661 ]
  %9676 = phi float [ %9667, %9665 ], [ %9623, %9621 ], [ 1.000000e+00, %9614 ], [ 1.000000e+00, %9661 ]
  %9677 = phi float [ %9663, %9665 ], [ %9623, %9621 ], [ 1.000000e+00, %9614 ], [ %9663, %9661 ]
  %9678 = phi float [ %9652, %9665 ], [ %9623, %9621 ], [ 1.000000e+00, %9614 ], [ %9652, %9661 ]
  %9679 = fmul fast float %9678, %9590
  %9680 = fmul fast float %9677, %9601
  %9681 = fmul fast float %9676, %9612
  %9682 = fadd fast float %9679, %9675
  %9683 = fadd fast float %9680, %9674
  %9684 = fadd fast float %9681, %9673
  %9685 = fmul fast float %9678, %9589
  %9686 = fmul fast float %9677, %9600
  %9687 = fmul fast float %9676, %9611
  br label %9688

; <label>:9688                                    ; preds = %9672, %9483
  %9689 = phi float [ %9687, %9672 ], [ %9489, %9483 ]
  %9690 = phi float [ %9686, %9672 ], [ %9488, %9483 ]
  %9691 = phi float [ %9685, %9672 ], [ %9487, %9483 ]
  %9692 = phi float [ %9684, %9672 ], [ %9486, %9483 ]
  %9693 = phi float [ %9683, %9672 ], [ %9485, %9483 ]
  %9694 = phi float [ %9682, %9672 ], [ %9484, %9483 ]
  %9695 = fmul fast float %9694, %8636
  %9696 = fmul fast float %9693, %8638
  %9697 = fmul fast float %9692, %8640
  %9698 = fmul fast float %9691, %8931
  %9699 = call float @dx.op.dot3.f32(i32 55, float %9691, float %9690, float %9689, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9700 = call float @dx.op.dot3.f32(i32 55, float %9695, float %9696, float %9697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9701 = select i1 %249, float %9699, float %9691
  %9702 = select i1 %249, float %9699, float %9690
  %9703 = select i1 %249, float 1.000000e+00, float %9689
  %9704 = select i1 %249, float %9700, float %9695
  %9705 = select i1 %249, float 0.000000e+00, float %9696
  %9706 = select i1 %249, float 0.000000e+00, float %9697
  %9707 = fmul fast float %9701, %8925
  %9708 = fmul fast float %9702, %8926
  %9709 = fmul fast float %9703, %8927
  %9710 = fadd fast float %9707, %9704
  %9711 = fadd fast float %9708, %9705
  %9712 = fadd fast float %9706, %9709
  %9713 = fmul fast float %9701, %8928
  %9714 = fmul fast float %9702, %8929
  %9715 = fmul fast float %9703, %8930
  %9716 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9717 = extractvalue %dx.types.CBufRet.i32 %9716, 0
  %9718 = icmp eq i32 %9717, 0
  br i1 %9718, label %10086, label %9719, !dx.controlflow.hints !169

; <label>:9719                                    ; preds = %9688
  %9720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9721 = extractvalue %dx.types.CBufRet.f32 %9720, 2
  %9722 = extractvalue %dx.types.CBufRet.f32 %9720, 3
  %9723 = fmul fast float %9721, %109
  %9724 = fmul fast float %9722, %110
  %9725 = fmul fast float %9723, 2.000000e+00
  %9726 = fmul fast float %9724, 2.000000e+00
  %9727 = fsub fast float 1.000000e+00, %9725
  %9728 = fsub fast float 1.000000e+00, %9726
  %9729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9730 = extractvalue %dx.types.CBufRet.f32 %9729, 0
  %9731 = extractvalue %dx.types.CBufRet.f32 %9729, 1
  %9732 = extractvalue %dx.types.CBufRet.f32 %9729, 2
  %9733 = fmul fast float %9727, %9730
  %9734 = fmul fast float %9727, %9731
  %9735 = fmul fast float %9727, %9732
  %9736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9737 = extractvalue %dx.types.CBufRet.f32 %9736, 0
  %9738 = extractvalue %dx.types.CBufRet.f32 %9736, 1
  %9739 = extractvalue %dx.types.CBufRet.f32 %9736, 2
  %9740 = fmul fast float %9728, %9737
  %9741 = fmul fast float %9728, %9738
  %9742 = fmul fast float %9728, %9739
  %9743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9744 = extractvalue %dx.types.CBufRet.f32 %9743, 0
  %9745 = extractvalue %dx.types.CBufRet.f32 %9743, 1
  %9746 = extractvalue %dx.types.CBufRet.f32 %9743, 2
  %9747 = fadd fast float %9740, %9744
  %9748 = fadd fast float %9747, %9733
  %9749 = fadd fast float %9741, %9745
  %9750 = fadd fast float %9749, %9734
  %9751 = fadd fast float %9742, %9746
  %9752 = fadd fast float %9751, %9735
  %9753 = fmul fast float %9748, %8924
  %9754 = fmul fast float %9750, %8924
  %9755 = fmul fast float %9752, %8924
  %9756 = fmul fast float %9753, %9753
  %9757 = fmul fast float %9754, %9754
  %9758 = fadd fast float %9756, %9757
  %9759 = fmul fast float %9755, %9755
  %9760 = fadd fast float %9758, %9759
  %9761 = call float @dx.op.unary.f32(i32 24, float %9760)  ; Sqrt(value)
  %9762 = extractvalue %dx.types.CBufRet.f32 %8651, 0
  %9763 = fsub fast float %9761, %9762
  %9764 = extractvalue %dx.types.CBufRet.f32 %8651, 2
  %9765 = fmul fast float %9763, %9764
  %9766 = call float @dx.op.unary.f32(i32 7, float %9765)  ; Saturate(value)
  %9767 = fadd fast float %9766, -5.000000e-01
  %9768 = fmul fast float %9767, 2.000000e+00
  %9769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9770 = extractvalue %dx.types.CBufRet.f32 %9769, 2
  %9771 = call float @dx.op.binary.f32(i32 36, float %9770, float %9768)  ; FMin(a,b)
  %9772 = fsub fast float -0.000000e+00, %9770
  %9773 = fcmp fast ogt float %9771, %9772
  br i1 %9773, label %9774, label %10086, !dx.controlflow.hints !170

; <label>:9774                                    ; preds = %9719
  %9775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9776 = extractvalue %dx.types.CBufRet.f32 %9775, 3
  %9777 = fcmp fast ogt float %9776, 0.000000e+00
  br i1 %9777, label %9778, label %9853, !dx.controlflow.hints !171

; <label>:9778                                    ; preds = %9774
  %9779 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %9780 = extractvalue %dx.types.Dimensions %9779, 0
  %9781 = sitofp i32 %9780 to float
  %9782 = extractvalue %dx.types.Dimensions %9779, 1
  %9783 = sitofp i32 %9782 to float
  %9784 = fmul fast float %9723, %9781
  %9785 = fmul fast float %9724, %9783
  %9786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9787 = extractvalue %dx.types.CBufRet.f32 %9786, 1
  %9788 = fsub fast float -0.000000e+00, %9787
  %9789 = fptoui float %9788 to i32
  %9790 = fptoui float %9784 to i32
  %9791 = fptoui float %9785 to i32
  %9792 = and i32 %9789, 31
  %9793 = lshr i32 %9790, %9792
  %9794 = lshr i32 %9791, %9792
  %9795 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %27, i32 %9789, i32 %9793, i32 %9794, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9796 = extractvalue %dx.types.ResRet.f32 %9795, 0
  %9797 = fcmp fast olt float %9796, -1.000000e+00
  %9798 = fcmp fast ogt float %9796, -1.000000e+00
  %9799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9800 = extractvalue %dx.types.CBufRet.f32 %9799, 1
  %9801 = select i1 %9798, float %9800, float 1.000000e+00
  %9802 = fadd fast float %9796, 1.000000e+00
  %9803 = fmul fast float %9801, %9802
  %9804 = call float @dx.op.unary.f32(i32 6, float %9803)  ; FAbs(value)
  %9805 = extractvalue %dx.types.CBufRet.f32 %9799, 3
  %9806 = fcmp fast oge float %9804, %9805
  %9807 = select i1 %9806, float 0x4197782600000000, float %9804
  %9808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9809 = extractvalue %dx.types.CBufRet.f32 %9808, 0
  %9810 = extractvalue %dx.types.CBufRet.f32 %9808, 1
  %9811 = extractvalue %dx.types.CBufRet.f32 %9808, 2
  %9812 = select i1 %9797, float %9809, float %9730
  %9813 = select i1 %9797, float %9810, float %9731
  %9814 = select i1 %9797, float %9811, float %9732
  %9815 = fmul fast float %9812, %9727
  %9816 = fmul fast float %9813, %9727
  %9817 = fmul fast float %9814, %9727
  %9818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9819 = extractvalue %dx.types.CBufRet.f32 %9818, 0
  %9820 = extractvalue %dx.types.CBufRet.f32 %9818, 1
  %9821 = extractvalue %dx.types.CBufRet.f32 %9818, 2
  %9822 = select i1 %9797, float %9819, float %9737
  %9823 = select i1 %9797, float %9820, float %9738
  %9824 = select i1 %9797, float %9821, float %9739
  %9825 = fmul fast float %9822, %9728
  %9826 = fmul fast float %9823, %9728
  %9827 = fmul fast float %9824, %9728
  %9828 = fadd fast float %9825, %9815
  %9829 = fadd fast float %9826, %9816
  %9830 = fadd fast float %9827, %9817
  %9831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9832 = extractvalue %dx.types.CBufRet.f32 %9831, 0
  %9833 = extractvalue %dx.types.CBufRet.f32 %9831, 1
  %9834 = extractvalue %dx.types.CBufRet.f32 %9831, 2
  %9835 = select i1 %9797, float %9832, float %9744
  %9836 = select i1 %9797, float %9833, float %9745
  %9837 = select i1 %9797, float %9834, float %9746
  %9838 = fadd fast float %9828, %9835
  %9839 = fadd fast float %9829, %9836
  %9840 = fadd fast float %9830, %9837
  %9841 = fmul fast float %9838, %9807
  %9842 = fmul fast float %9839, %9807
  %9843 = fmul fast float %9840, %9807
  %9844 = fmul fast float %9841, %9841
  %9845 = fmul fast float %9842, %9842
  %9846 = fadd fast float %9844, %9845
  %9847 = fmul fast float %9843, %9843
  %9848 = fadd fast float %9846, %9847
  %9849 = call float @dx.op.unary.f32(i32 24, float %9848)  ; Sqrt(value)
  %9850 = fsub fast float %9849, %9762
  %9851 = fmul fast float %9850, %9764
  %9852 = call float @dx.op.unary.f32(i32 7, float %9851)  ; Saturate(value)
  br label %9853

; <label>:9853                                    ; preds = %9778, %9774
  %9854 = phi float [ %9852, %9778 ], [ 1.000000e+00, %9774 ]
  %9855 = fmul fast float %9771, 5.000000e-01
  %9856 = fadd fast float %9855, 5.000000e-01
  %9857 = call float @dx.op.unary.f32(i32 22, float %9856)  ; Frc(value)
  %9858 = call float @dx.op.unary.f32(i32 27, float %9857)  ; Round_ni(value)
  %9859 = call float @dx.op.unary.f32(i32 22, float %9857)  ; Frc(value)
  %9860 = fmul fast float %9859, 2.000000e+00
  %9861 = fadd fast float %9860, -1.000000e+00
  %9862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %44, float %9723, float %9724, float %9858, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9863 = extractvalue %dx.types.ResRet.f32 %9862, 0
  %9864 = extractvalue %dx.types.ResRet.f32 %9862, 1
  %9865 = extractvalue %dx.types.ResRet.f32 %9862, 2
  %9866 = extractvalue %dx.types.ResRet.f32 %9862, 3
  %9867 = fadd fast float %9863, -5.000000e-01
  %9868 = fadd fast float %9865, -5.000000e-01
  %9869 = fmul fast float %9867, 0xBFD5555560000000
  %9870 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9868, float %9869)  ; FMad(a,b,c)
  %9871 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9864, float 0.000000e+00)  ; FMad(a,b,c)
  %9872 = fadd fast float %9871, %9866
  %9873 = fmul fast float %9867, -7.500000e-01
  %9874 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9868, float %9873)  ; FMad(a,b,c)
  %9875 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9864, float 0.000000e+00)  ; FMad(a,b,c)
  %9876 = fadd fast float %9875, %9866
  %9877 = call float @dx.op.binary.f32(i32 35, float %9870, float -1.000000e+00)  ; FMax(a,b)
  %9878 = call float @dx.op.binary.f32(i32 35, float %9872, float -1.000000e+00)  ; FMax(a,b)
  %9879 = call float @dx.op.binary.f32(i32 35, float %9874, float -1.000000e+00)  ; FMax(a,b)
  %9880 = call float @dx.op.binary.f32(i32 35, float %9876, float -1.000000e+00)  ; FMax(a,b)
  %9881 = call float @dx.op.binary.f32(i32 36, float %9877, float 1.000000e+00)  ; FMin(a,b)
  %9882 = call float @dx.op.binary.f32(i32 36, float %9878, float 1.000000e+00)  ; FMin(a,b)
  %9883 = call float @dx.op.binary.f32(i32 36, float %9879, float 1.000000e+00)  ; FMin(a,b)
  %9884 = call float @dx.op.binary.f32(i32 36, float %9880, float 1.000000e+00)  ; FMin(a,b)
  %9885 = fcmp fast olt float %9881, 0x3FEFFF8020000000
  br i1 %9885, label %9886, label %10001, !dx.controlflow.hints !172

; <label>:9886                                    ; preds = %9853
  %9887 = extractvalue %dx.types.CBufRet.f32 %9769, 3
  %9888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9889 = extractvalue %dx.types.CBufRet.f32 %9888, 0
  %9890 = extractvalue %dx.types.CBufRet.f32 %9888, 1
  %9891 = extractvalue %dx.types.CBufRet.f32 %9888, 2
  %9892 = extractvalue %dx.types.CBufRet.f32 %9888, 3
  %9893 = fsub fast float %9889, %9881
  %9894 = fsub fast float %9890, %9882
  %9895 = fsub fast float %9891, %9883
  %9896 = fsub fast float %9892, %9884
  %9897 = fmul fast float %9893, %9887
  %9898 = fmul fast float %9894, %9887
  %9899 = fmul fast float %9895, %9887
  %9900 = fmul fast float %9896, %9887
  %9901 = fadd fast float %9897, %9881
  %9902 = fadd fast float %9898, %9882
  %9903 = fsub fast float -0.000000e+00, %9902
  %9904 = fadd fast float %9899, %9883
  %9905 = fadd fast float %9900, %9884
  %9906 = fmul fast float %9901, %9901
  %9907 = fsub fast float %9902, %9906
  %9908 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9907)  ; FMax(a,b)
  %9909 = fdiv fast float 1.000000e+00, %9908
  %9910 = fmul fast float %9902, %9901
  %9911 = fsub fast float %9904, %9910
  %9912 = fsub fast float %9861, %9901
  %9913 = fmul fast float %9861, %9861
  %9914 = fsub fast float %9913, %9902
  %9915 = fmul fast float %9912, %9909
  %9916 = fmul fast float %9915, %9911
  %9917 = fsub fast float %9914, %9916
  %9918 = fmul fast float %9902, %9902
  %9919 = fsub fast float %9905, %9918
  %9920 = fmul fast float %9911, %9911
  %9921 = fmul fast float %9920, %9909
  %9922 = fsub fast float %9919, %9921
  %9923 = fdiv fast float %9917, %9922
  %9924 = fmul fast float %9911, %9923
  %9925 = fsub fast float %9912, %9924
  %9926 = fmul fast float %9925, %9909
  %9927 = fmul fast float %9926, %9901
  %9928 = fsub fast float 1.000000e+00, %9927
  %9929 = fmul fast float %9902, %9923
  %9930 = fsub fast float %9928, %9929
  %9931 = fmul fast float %9926, %9926
  %9932 = fmul fast float %9923, 4.000000e+00
  %9933 = fmul fast float %9932, %9930
  %9934 = fsub fast float %9931, %9933
  %9935 = call float @dx.op.unary.f32(i32 24, float %9934)  ; Sqrt(value)
  %9936 = fcmp fast oge float %9926, 0.000000e+00
  %9937 = fsub fast float -0.000000e+00, %9935
  %9938 = select i1 %9936, float %9937, float %9935
  %9939 = fsub fast float %9938, %9926
  %9940 = fdiv fast float %9939, %9923
  %9941 = fdiv fast float %9930, %9939
  %9942 = fmul fast float %9940, 5.000000e-01
  %9943 = fmul fast float %9941, 2.000000e+00
  %9944 = select i1 %9936, float %9942, float %9943
  %9945 = select i1 %9936, float %9943, float %9942
  %9946 = call float @dx.op.binary.f32(i32 35, float %9944, float %9945)  ; FMax(a,b)
  %9947 = call float @dx.op.binary.f32(i32 36, float %9944, float %9945)  ; FMin(a,b)
  %9948 = fcmp fast ogt float %9861, %9947
  br i1 %9948, label %9949, label %9959

; <label>:9949                                    ; preds = %9886
  %9950 = fsub fast float %9861, %9947
  %9951 = fsub fast float %9946, %9947
  %9952 = fmul fast float %9950, %9951
  %9953 = fmul fast float %9946, %9861
  %9954 = fadd fast float %9946, %9861
  %9955 = fmul fast float %9954, %9901
  %9956 = fadd fast float %9953, %9902
  %9957 = fsub fast float %9956, %9955
  %9958 = fdiv fast float %9957, %9952
  br label %9959

; <label>:9959                                    ; preds = %9949, %9886
  %9960 = phi float [ %9958, %9949 ], [ 0.000000e+00, %9886 ]
  %9961 = fcmp fast ogt float %9861, %9946
  %9962 = fsub fast float %9861, %9946
  br i1 %9961, label %9963, label %9973

; <label>:9963                                    ; preds = %9959
  %9964 = fsub fast float %9946, %9947
  %9965 = fmul fast float %9964, %9962
  %9966 = fmul fast float %9947, %9861
  %9967 = fadd fast float %9947, %9861
  %9968 = fmul fast float %9967, %9901
  %9969 = fsub fast float %9903, %9966
  %9970 = fadd fast float %9969, %9968
  %9971 = fdiv fast float %9970, %9965
  %9972 = fadd fast float %9971, %9960
  br label %9973

; <label>:9973                                    ; preds = %9963, %9959
  %9974 = phi float [ %9972, %9963 ], [ %9960, %9959 ]
  %9975 = fsub fast float %9861, %9947
  %9976 = fmul fast float %9975, %9962
  %9977 = fmul fast float %9947, %9946
  %9978 = fadd fast float %9947, %9946
  %9979 = fmul fast float %9978, %9901
  %9980 = fadd fast float %9977, %9902
  %9981 = fsub fast float %9980, %9979
  %9982 = fdiv fast float %9981, %9976
  %9983 = call float @dx.op.unary.f32(i32 7, float %9974)  ; Saturate(value)
  %9984 = fcmp fast oeq float %8652, 0.000000e+00
  %9985 = extractvalue %dx.types.CBufRet.f32 %9769, 0
  %9986 = fcmp fast oeq float %9985, 0.000000e+00
  %9987 = or i1 %9984, %9986
  %9988 = fmul fast float %9985, 2.000000e+00
  %9989 = fadd fast float %9770, %9771
  %9990 = fdiv fast float %9989, %9988
  %9991 = call float @dx.op.unary.f32(i32 7, float %9990)  ; Saturate(value)
  %9992 = fmul fast float %9991, 2.000000e+00
  %9993 = fsub fast float 3.000000e+00, %9992
  %9994 = fmul fast float %9991, %9991
  %9995 = fmul fast float %9994, %9993
  %9996 = select i1 %9987, float 1.000000e+00, float %9995
  %9997 = fmul fast float %9982, %8652
  %9998 = fadd fast float %9983, %9997
  %9999 = call float @dx.op.unary.f32(i32 7, float %9998)  ; Saturate(value)
  %10000 = fmul fast float %9996, %9999
  br label %10001

; <label>:10001                                   ; preds = %9973, %9853
  %10002 = phi float [ %10000, %9973 ], [ 0.000000e+00, %9853 ]
  %10003 = fsub fast float 1.000000e+00, %10002
  %10004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %44, float %9723, float %9724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10005 = extractvalue %dx.types.ResRet.f32 %10004, 0
  %10006 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %10007 = extractvalue %dx.types.CBufRet.i32 %10006, 2
  %10008 = icmp eq i32 %10007, 0
  br i1 %10008, label %10014, label %10009

; <label>:10009                                   ; preds = %10001
  %10010 = call float @dx.op.unary.f32(i32 7, float %10002)  ; Saturate(value)
  %10011 = fadd fast float %10005, -1.000000e+00
  %10012 = fmul fast float %10010, %10011
  %10013 = fadd fast float %10012, 1.000000e+00
  br label %10014

; <label>:10014                                   ; preds = %10009, %10001
  %10015 = phi float [ %10013, %10009 ], [ %10003, %10001 ]
  br i1 %9777, label %10016, label %10034

; <label>:10016                                   ; preds = %10014
  %10017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %10018 = extractvalue %dx.types.CBufRet.f32 %10017, 1
  %10019 = fsub fast float %9854, %10018
  %10020 = call float @dx.op.unary.f32(i32 7, float %10019)  ; Saturate(value)
  %10021 = fsub fast float %9854, %9776
  %10022 = call float @dx.op.unary.f32(i32 7, float %10021)  ; Saturate(value)
  %10023 = fsub fast float %10020, %10022
  %10024 = fsub fast float %9856, %10022
  %10025 = fdiv fast float %10024, %10023
  %10026 = call float @dx.op.unary.f32(i32 7, float %10025)  ; Saturate(value)
  %10027 = fmul fast float %10026, 2.000000e+00
  %10028 = fsub fast float 3.000000e+00, %10027
  %10029 = fsub fast float %10005, %10015
  %10030 = fmul fast float %10026, %10026
  %10031 = fmul fast float %10030, %10029
  %10032 = fmul fast float %10031, %10028
  %10033 = fadd fast float %10032, %10015
  br label %10034

; <label>:10034                                   ; preds = %10016, %10014
  %10035 = phi float [ %10033, %10016 ], [ %10015, %10014 ]
  %10036 = call float @dx.op.binary.f32(i32 35, float %10005, float %10035)  ; FMax(a,b)
  %10037 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %10038 = extractvalue %dx.types.CBufRet.i32 %10037, 2
  %10039 = and i32 %10038, 1
  %10040 = icmp eq i32 %10039, 0
  %10041 = fcmp fast une float %10036, 1.000000e+00
  %10042 = and i1 %10041, %10040
  br i1 %10042, label %10043, label %10062

; <label>:10043                                   ; preds = %10034
  %10044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %9723, float %9724, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10045 = extractvalue %dx.types.ResRet.f32 %10044, 0
  %10046 = extractvalue %dx.types.ResRet.f32 %10044, 1
  %10047 = extractvalue %dx.types.ResRet.f32 %10044, 2
  %10048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10049 = extractvalue %dx.types.CBufRet.f32 %10048, 1
  %10050 = fmul fast float %10049, %10045
  %10051 = fmul fast float %10049, %10046
  %10052 = fmul fast float %10049, %10047
  %10053 = fcmp fast ogt float %10005, 0x3FEFFF2E40000000
  %10054 = fsub fast float 1.000000e+00, %10036
  %10055 = fsub fast float 1.000000e+00, %10005
  %10056 = fdiv fast float %10054, %10055
  %10057 = call float @dx.op.unary.f32(i32 7, float %10056)  ; Saturate(value)
  %10058 = select i1 %10053, float 0.000000e+00, float %10057
  %10059 = fmul fast float %10050, %10058
  %10060 = fmul fast float %10051, %10058
  %10061 = fmul fast float %10052, %10058
  br label %10062

; <label>:10062                                   ; preds = %10043, %10034
  %10063 = phi float [ 0.000000e+00, %10034 ], [ %10059, %10043 ]
  %10064 = phi float [ 0.000000e+00, %10034 ], [ %10060, %10043 ]
  %10065 = phi float [ 0.000000e+00, %10034 ], [ %10061, %10043 ]
  %10066 = fmul fast float %10063, %8636
  %10067 = fmul fast float %10064, %8638
  %10068 = fmul fast float %10065, %8640
  %10069 = fmul fast float %10036, %9698
  %10070 = call float @dx.op.dot3.f32(i32 55, float %10036, float %10036, float %10036, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10071 = call float @dx.op.dot3.f32(i32 55, float %10066, float %10067, float %10068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10072 = select i1 %249, float %10070, float %10036
  %10073 = select i1 %249, float 1.000000e+00, float %10036
  %10074 = select i1 %249, float %10071, float %10066
  %10075 = select i1 %249, float 0.000000e+00, float %10067
  %10076 = select i1 %249, float 0.000000e+00, float %10068
  %10077 = fmul fast float %10072, %9710
  %10078 = fmul fast float %10072, %9711
  %10079 = fmul fast float %10073, %9712
  %10080 = fadd fast float %10077, %10074
  %10081 = fadd fast float %10078, %10075
  %10082 = fadd fast float %10076, %10079
  %10083 = fmul fast float %10072, %9713
  %10084 = fmul fast float %10072, %9714
  %10085 = fmul fast float %10073, %9715
  br label %10086

; <label>:10086                                   ; preds = %10062, %9719, %9688, %8920
  %10087 = phi float [ %8925, %8920 ], [ %9710, %9688 ], [ %10080, %10062 ], [ %9710, %9719 ]
  %10088 = phi float [ %8926, %8920 ], [ %9711, %9688 ], [ %10081, %10062 ], [ %9711, %9719 ]
  %10089 = phi float [ %8927, %8920 ], [ %9712, %9688 ], [ %10082, %10062 ], [ %9712, %9719 ]
  %10090 = phi float [ %8928, %8920 ], [ %9713, %9688 ], [ %10083, %10062 ], [ %9713, %9719 ]
  %10091 = phi float [ %8929, %8920 ], [ %9714, %9688 ], [ %10084, %10062 ], [ %9714, %9719 ]
  %10092 = phi float [ %8930, %8920 ], [ %9715, %9688 ], [ %10085, %10062 ], [ %9715, %9719 ]
  %10093 = phi float [ %8931, %8920 ], [ %9698, %9688 ], [ %10069, %10062 ], [ %9698, %9719 ]
  %10094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %10095 = extractvalue %dx.types.CBufRet.f32 %10094, 2
  %10096 = extractvalue %dx.types.CBufRet.f32 %10094, 3
  %10097 = fmul fast float %10095, %109
  %10098 = fmul fast float %10096, %110
  %10099 = call float @dx.op.unary.f32(i32 7, float %10097)  ; Saturate(value)
  %10100 = call float @dx.op.unary.f32(i32 7, float %10098)  ; Saturate(value)
  %10101 = select i1 %8662, i32 2, i32 0
  %10102 = or i32 %10101, 1
  %10103 = uitofp i32 %10102 to float
  %10104 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %10099, float %10100, float %10103, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10105 = extractvalue %dx.types.ResRet.f32 %10104, 0
  %10106 = extractvalue %dx.types.ResRet.f32 %10104, 1
  %10107 = extractvalue %dx.types.ResRet.f32 %10104, 2
  %10108 = extractvalue %dx.types.ResRet.f32 %10104, 3
  %10109 = add nuw nsw i32 %10101, 2
  %10110 = uitofp i32 %10109 to float
  %10111 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %44, float %10099, float %10100, float %10110, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10112 = extractvalue %dx.types.ResRet.f32 %10111, 0
  %10113 = extractvalue %dx.types.ResRet.f32 %10111, 1
  %10114 = extractvalue %dx.types.ResRet.f32 %10111, 2
  %10115 = extractvalue %dx.types.ResRet.f32 %10111, 3
  %10116 = call float @dx.op.binary.f32(i32 35, float %10106, float %10107)  ; FMax(a,b)
  %10117 = call float @dx.op.binary.f32(i32 35, float %10105, float %10116)  ; FMax(a,b)
  %10118 = call float @dx.op.binary.f32(i32 35, float %10117, float %10108)  ; FMax(a,b)
  %10119 = call float @dx.op.binary.f32(i32 36, float %10113, float %10114)  ; FMin(a,b)
  %10120 = call float @dx.op.binary.f32(i32 36, float %10112, float %10119)  ; FMin(a,b)
  %10121 = call float @dx.op.binary.f32(i32 36, float %10120, float %10115)  ; FMin(a,b)
  %10122 = fmul fast float %10118, 2.550000e+02
  %10123 = fadd fast float %10122, 0x3F70101020000000
  %10124 = fptoui float %10123 to i32
  %10125 = fmul fast float %10121, 2.550000e+02
  %10126 = fadd fast float %10125, 0x3F70101020000000
  %10127 = fptoui float %10126 to i32
  %10128 = icmp ult i32 %10124, %10127
  br i1 %10128, label %10129, label %10298

; <label>:10129                                   ; preds = %10086
  %10130 = fcmp fast ogt float %95, 9.843750e-01
  %10131 = fadd fast float %8924, -4.000000e+00
  %10132 = select i1 %10130, float -4.000000e+00, float %10131
  %10133 = call float @dx.op.binary.f32(i32 35, float %10132, float 0.000000e+00)  ; FMax(a,b)
  %10134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10135 = extractvalue %dx.types.CBufRet.f32 %10134, 0
  %10136 = fadd fast float %10135, %10133
  %10137 = extractvalue %dx.types.CBufRet.f32 %10134, 2
  %10138 = fmul fast float %10136, %10137
  %10139 = call float @dx.op.unary.f32(i32 23, float %10138)  ; Log(value)
  %10140 = extractvalue %dx.types.CBufRet.f32 %10134, 3
  %10141 = fmul fast float %10140, %10139
  %10142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10143 = extractvalue %dx.types.CBufRet.f32 %10142, 2
  %10144 = fmul fast float %10141, %10143
  %10145 = call float @dx.op.unary.f32(i32 7, float %10144)  ; Saturate(value)
  %10146 = uitofp i32 %10124 to float
  %10147 = uitofp i32 %10127 to float
  %10148 = fadd fast float %10146, 5.000000e-01
  %10149 = fadd fast float %10147, 5.000000e-01
  %10150 = fmul fast float %10143, %10148
  %10151 = fmul fast float %10143, %10149
  %10152 = fadd fast float %10150, 0x3F0FFB4800000000
  %10153 = fadd fast float %10151, 0xBF0FFB4800000000
  %10154 = call float @dx.op.binary.f32(i32 35, float %10145, float %10152)  ; FMax(a,b)
  %10155 = call float @dx.op.binary.f32(i32 36, float %10154, float %10153)  ; FMin(a,b)
  %10156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10157 = extractvalue %dx.types.CBufRet.f32 %10156, 1
  %10158 = extractvalue %dx.types.CBufRet.f32 %10156, 2
  %10159 = extractvalue %dx.types.CBufRet.f32 %10156, 0
  %10160 = select i1 %8662, float %10159, float 0.000000e+00
  %10161 = fmul fast float %10157, %10155
  %10162 = fadd fast float %10160, %10161
  %10163 = fadd fast float %10160, %10158
  %10164 = fsub fast float %10157, %10158
  %10165 = fadd fast float %10164, %10160
  %10166 = call float @dx.op.binary.f32(i32 35, float %10162, float %10163)  ; FMax(a,b)
  %10167 = call float @dx.op.binary.f32(i32 36, float %10166, float %10165)  ; FMin(a,b)
  %10168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %10099, float %10100, float %10167, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10169 = extractvalue %dx.types.ResRet.f32 %10168, 0
  %10170 = extractvalue %dx.types.ResRet.f32 %10168, 1
  %10171 = extractvalue %dx.types.ResRet.f32 %10168, 2
  %10172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %10173 = extractvalue %dx.types.CBufRet.i32 %10172, 0
  %10174 = extractvalue %dx.types.CBufRet.i32 %10172, 1
  %10175 = uitofp i32 %10173 to float
  %10176 = uitofp i32 %10174 to float
  %10177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %10178 = extractvalue %dx.types.CBufRet.f32 %10177, 0
  %10179 = extractvalue %dx.types.CBufRet.f32 %10177, 1
  %10180 = fmul fast float %10175, %10099
  %10181 = fmul fast float %10176, %10100
  %10182 = fadd fast float %10180, -5.000000e-01
  %10183 = fadd fast float %10181, -5.000000e-01
  %10184 = call float @dx.op.unary.f32(i32 22, float %10182)  ; Frc(value)
  %10185 = call float @dx.op.unary.f32(i32 22, float %10183)  ; Frc(value)
  %10186 = fmul fast float %10184, %10184
  %10187 = fmul fast float %10186, %10184
  %10188 = fsub fast float 3.000000e+00, %10184
  %10189 = fmul fast float %10186, %10188
  %10190 = fmul fast float %10184, 3.000000e+00
  %10191 = fmul fast float %10187, 3.000000e+00
  %10192 = fmul fast float %10186, 6.000000e+00
  %10193 = fsub fast float %10191, %10192
  %10194 = fadd fast float %10193, 4.000000e+00
  %10195 = fmul fast float %10194, 0x3FC5555560000000
  %10196 = fmul fast float %10187, -3.000000e+00
  %10197 = fadd fast float %10186, %10184
  %10198 = fmul fast float %10197, 3.000000e+00
  %10199 = fadd fast float %10196, 1.000000e+00
  %10200 = fadd fast float %10199, %10198
  %10201 = fmul fast float %10187, 0x3FC5555560000000
  %10202 = fmul fast float %10185, %10185
  %10203 = fmul fast float %10202, %10185
  %10204 = fsub fast float 3.000000e+00, %10185
  %10205 = fmul fast float %10202, %10204
  %10206 = fmul fast float %10185, 3.000000e+00
  %10207 = fmul fast float %10203, 3.000000e+00
  %10208 = fmul fast float %10202, 6.000000e+00
  %10209 = fsub fast float %10207, %10208
  %10210 = fadd fast float %10209, 4.000000e+00
  %10211 = fmul fast float %10210, 0x3FC5555560000000
  %10212 = fmul fast float %10203, -3.000000e+00
  %10213 = fadd fast float %10202, %10185
  %10214 = fmul fast float %10213, 3.000000e+00
  %10215 = fadd fast float %10212, 1.000000e+00
  %10216 = fadd fast float %10215, %10214
  %10217 = fmul fast float %10203, 0x3FC5555560000000
  %10218 = fadd fast float %10184, 1.000000e+00
  %10219 = fsub fast float 1.000000e+00, %10190
  %10220 = fadd fast float %10219, %10189
  %10221 = fadd fast float %10220, %10194
  %10222 = fmul fast float %10221, 0x3FC5555560000000
  %10223 = fdiv fast float %10195, %10222
  %10224 = fsub fast float %10218, %10223
  %10225 = fsub fast float 1.000000e+00, %10184
  %10226 = fadd fast float %10200, %10187
  %10227 = fmul fast float %10226, 0x3FC5555560000000
  %10228 = fdiv fast float %10201, %10227
  %10229 = fadd fast float %10225, %10228
  %10230 = fadd fast float %10185, 1.000000e+00
  %10231 = fsub fast float 1.000000e+00, %10206
  %10232 = fadd fast float %10231, %10205
  %10233 = fadd fast float %10232, %10210
  %10234 = fmul fast float %10233, 0x3FC5555560000000
  %10235 = fdiv fast float %10211, %10234
  %10236 = fsub fast float %10230, %10235
  %10237 = fsub fast float 1.000000e+00, %10185
  %10238 = fadd fast float %10216, %10203
  %10239 = fmul fast float %10238, 0x3FC5555560000000
  %10240 = fdiv fast float %10217, %10239
  %10241 = fadd fast float %10240, %10237
  %10242 = fmul fast float %10224, %10178
  %10243 = fsub fast float %10099, %10242
  %10244 = fmul fast float %10229, %10178
  %10245 = fadd fast float %10244, %10099
  %10246 = fmul fast float %10241, %10179
  %10247 = fadd fast float %10246, %10100
  %10248 = fmul fast float %10236, %10179
  %10249 = fsub fast float %10100, %10248
  %10250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %10243, float %10249, float %10167, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10251 = extractvalue %dx.types.ResRet.f32 %10250, 0
  %10252 = extractvalue %dx.types.ResRet.f32 %10250, 1
  %10253 = extractvalue %dx.types.ResRet.f32 %10250, 2
  %10254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %10245, float %10249, float %10167, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10255 = extractvalue %dx.types.ResRet.f32 %10254, 0
  %10256 = extractvalue %dx.types.ResRet.f32 %10254, 1
  %10257 = extractvalue %dx.types.ResRet.f32 %10254, 2
  %10258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %10243, float %10247, float %10167, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10259 = extractvalue %dx.types.ResRet.f32 %10258, 0
  %10260 = extractvalue %dx.types.ResRet.f32 %10258, 1
  %10261 = extractvalue %dx.types.ResRet.f32 %10258, 2
  %10262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %10245, float %10247, float %10167, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10263 = extractvalue %dx.types.ResRet.f32 %10262, 0
  %10264 = extractvalue %dx.types.ResRet.f32 %10262, 1
  %10265 = extractvalue %dx.types.ResRet.f32 %10262, 2
  %10266 = fsub fast float %10259, %10251
  %10267 = fsub fast float %10260, %10252
  %10268 = fsub fast float %10261, %10253
  %10269 = fmul fast float %10266, %10239
  %10270 = fmul fast float %10267, %10239
  %10271 = fmul fast float %10268, %10239
  %10272 = fadd fast float %10269, %10251
  %10273 = fadd fast float %10270, %10252
  %10274 = fadd fast float %10271, %10253
  %10275 = fsub fast float %10263, %10255
  %10276 = fsub fast float %10264, %10256
  %10277 = fsub fast float %10265, %10257
  %10278 = fmul fast float %10275, %10239
  %10279 = fmul fast float %10276, %10239
  %10280 = fmul fast float %10277, %10239
  %10281 = fsub fast float %10255, %10272
  %10282 = fadd fast float %10281, %10278
  %10283 = fsub fast float %10256, %10273
  %10284 = fadd fast float %10283, %10279
  %10285 = fsub fast float %10257, %10274
  %10286 = fadd fast float %10285, %10280
  %10287 = fmul fast float %10282, %10227
  %10288 = fmul fast float %10284, %10227
  %10289 = fmul fast float %10286, %10227
  %10290 = fadd fast float %10287, %10272
  %10291 = fadd fast float %10288, %10273
  %10292 = fadd fast float %10289, %10274
  %10293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10294 = extractvalue %dx.types.CBufRet.f32 %10293, 1
  %10295 = fmul fast float %10290, %10294
  %10296 = fmul fast float %10291, %10294
  %10297 = fmul fast float %10292, %10294
  br label %10298

; <label>:10298                                   ; preds = %10129, %10086
  %10299 = phi float [ %10169, %10129 ], [ 1.000000e+00, %10086 ]
  %10300 = phi float [ %10170, %10129 ], [ 1.000000e+00, %10086 ]
  %10301 = phi float [ %10171, %10129 ], [ 1.000000e+00, %10086 ]
  %10302 = phi float [ %10295, %10129 ], [ 0.000000e+00, %10086 ]
  %10303 = phi float [ %10296, %10129 ], [ 0.000000e+00, %10086 ]
  %10304 = phi float [ %10297, %10129 ], [ 0.000000e+00, %10086 ]
  %10305 = fmul fast float %10302, %8636
  %10306 = fmul fast float %10303, %8638
  %10307 = fmul fast float %10304, %8640
  %10308 = fmul fast float %10299, %10093
  %10309 = call float @dx.op.dot3.f32(i32 55, float %10299, float %10300, float %10301, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10310 = call float @dx.op.dot3.f32(i32 55, float %10305, float %10306, float %10307, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10311 = select i1 %249, float %10309, float %10299
  %10312 = select i1 %249, float %10309, float %10300
  %10313 = select i1 %249, float 1.000000e+00, float %10301
  %10314 = select i1 %249, float %10310, float %10305
  %10315 = select i1 %249, float 0.000000e+00, float %10306
  %10316 = select i1 %249, float 0.000000e+00, float %10307
  %10317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10318 = extractvalue %dx.types.CBufRet.i32 %10317, 3
  %10319 = and i32 %10318, 3
  %10320 = icmp ne i32 %10319, 0
  %10321 = and i32 %10318, 4
  %10322 = icmp ne i32 %10321, 0
  %10323 = and i1 %10320, %10322
  %10324 = and i1 %249, %10323
  br i1 %10324, label %10325, label %10331

; <label>:10325                                   ; preds = %10298
  %10326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10327 = extractvalue %dx.types.CBufRet.f32 %10326, 1
  %10328 = fadd fast float %10308, -1.000000e+00
  %10329 = fmul fast float %10327, %10328
  %10330 = fadd fast float %10329, 1.000000e+00
  br label %10331

; <label>:10331                                   ; preds = %10325, %10298
  %10332 = phi float [ %10330, %10325 ], [ %10308, %10298 ]
  %10333 = fadd fast float %10090, %10087
  %10334 = fmul fast float %10311, %10333
  %10335 = fadd fast float %10334, %10314
  %10336 = fadd fast float %10091, %10088
  %10337 = fmul fast float %10312, %10336
  %10338 = fadd fast float %10337, %10315
  %10339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10340 = extractvalue %dx.types.CBufRet.f32 %10339, 0
  br i1 %249, label %10341, label %10356

; <label>:10341                                   ; preds = %10331
  %10342 = fadd fast float %10335, %10338
  %10343 = fmul fast float %10340, %10342
  %10344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10345 = extractvalue %dx.types.CBufRet.f32 %10344, 3
  %10346 = extractvalue %dx.types.CBufRet.f32 %8644, 1
  %10347 = fsub fast float %8649, %8643
  %10348 = fadd fast float %10347, %8650
  %10349 = fsub fast float %10348, %10346
  %10350 = extractvalue %dx.types.CBufRet.f32 %8644, 2
  %10351 = fmul fast float %10349, %10350
  %10352 = call float @dx.op.unary.f32(i32 7, float %10351)  ; Saturate(value)
  %10353 = fsub fast float %10352, %10345
  %10354 = fmul fast float %10353, %10332
  %10355 = fadd fast float %10354, %10345
  br label %10382

; <label>:10356                                   ; preds = %10331
  %10357 = fadd fast float %10092, %10089
  %10358 = fmul fast float %10313, %10357
  %10359 = fadd fast float %10358, %10316
  %10360 = fmul fast float %10340, %10335
  %10361 = fmul fast float %10340, %10338
  %10362 = fmul fast float %10340, %10359
  %10363 = call float @dx.op.binary.f32(i32 35, float %10361, float %10362)  ; FMax(a,b)
  %10364 = call float @dx.op.binary.f32(i32 35, float %10360, float %10363)  ; FMax(a,b)
  %10365 = call float @dx.op.binary.f32(i32 35, float %8638, float %8640)  ; FMax(a,b)
  %10366 = call float @dx.op.binary.f32(i32 35, float %8636, float %10365)  ; FMax(a,b)
  %10367 = call float @dx.op.binary.f32(i32 35, float %10364, float %10366)  ; FMax(a,b)
  %10368 = fcmp fast ugt float %10367, 0x3F10000000000000
  br i1 %10368, label %10370, label %10369

; <label>:10369                                   ; preds = %10356
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10370

; <label>:10370                                   ; preds = %10369, %10356
  %10371 = add i32 %50, 356
  %10372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %10371, i32 undef)  ; BufferLoad(srv,index,wot)
  %10373 = extractvalue %dx.types.ResRet.i32 %10372, 0
  %10374 = and i32 %10373, 32
  %10375 = icmp eq i32 %10374, 0
  br i1 %10375, label %10382, label %10376

; <label>:10376                                   ; preds = %10370
  %10377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10378 = extractvalue %dx.types.CBufRet.f32 %10377, 0
  %10379 = fmul fast float %10378, 0x3FE99999A0000000
  %10380 = fadd fast float %10378, %10360
  %10381 = fadd fast float %10379, %10362
  br label %10382

; <label>:10382                                   ; preds = %10376, %10370, %10341
  %10383 = phi float [ 1.000000e+00, %10341 ], [ %8638, %10376 ], [ %8638, %10370 ]
  %10384 = phi float [ 1.000000e+00, %10341 ], [ %8640, %10376 ], [ %8640, %10370 ]
  %10385 = phi float [ %10343, %10341 ], [ %10380, %10376 ], [ %10360, %10370 ]
  %10386 = phi float [ %10355, %10341 ], [ %10361, %10376 ], [ %10361, %10370 ]
  %10387 = phi float [ 1.000000e+00, %10341 ], [ %10381, %10376 ], [ %10362, %10370 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10388 = call float @dx.op.binary.f32(i32 36, float %10385, float 3.225500e+04)  ; FMin(a,b)
  %10389 = call float @dx.op.binary.f32(i32 36, float %10386, float 3.225500e+04)  ; FMin(a,b)
  %10390 = call float @dx.op.binary.f32(i32 36, float %10387, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10388)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10389)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10390)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10391 = call float @dx.op.binary.f32(i32 36, float %8636, float 3.225500e+04)  ; FMin(a,b)
  %10392 = call float @dx.op.binary.f32(i32 36, float %10383, float 3.225500e+04)  ; FMin(a,b)
  %10393 = call float @dx.op.binary.f32(i32 36, float %10384, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10391)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10392)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10393)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

