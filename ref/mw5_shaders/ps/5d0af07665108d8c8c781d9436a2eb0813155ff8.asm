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
; shader hash: 76a935ea8dad305a3ffd4f92b9ad2b13
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
  %189 = add i32 %48, 360
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = extractvalue %dx.types.ResRet.i32 %190, 1
  %193 = extractvalue %dx.types.ResRet.i32 %190, 2
  %194 = extractvalue %dx.types.ResRet.i32 %190, 3
  %195 = bitcast i32 %191 to float
  %196 = bitcast i32 %192 to float
  %197 = bitcast i32 %193 to float
  %198 = bitcast i32 %194 to float
  %199 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %200 = call float @dx.op.unary.f32(i32 25, float %199)  ; Rsqrt(value)
  %201 = fmul fast float %200, %114
  %202 = fmul fast float %200, %115
  %203 = fmul fast float %200, %116
  %204 = call float @dx.op.dot3.f32(i32 55, float %186, float %187, float %188, float %186, float %187, float %188)  ; Dot3(ax,ay,az,bx,by,bz)
  %205 = call float @dx.op.unary.f32(i32 25, float %204)  ; Rsqrt(value)
  %206 = fmul fast float %205, %186
  %207 = fmul fast float %205, %187
  %208 = fmul fast float %205, %188
  %209 = call float @dx.op.dot3.f32(i32 55, float %206, float %207, float %208, float %201, float %202, float %203)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = fmul fast float %209, %209
  %211 = fmul fast float %210, %197
  %212 = fadd fast float %211, %198
  %213 = call float @dx.op.unary.f32(i32 7, float %212)  ; Saturate(value)
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %216 = fmul fast float %215, %204
  %217 = fsub fast float %195, %216
  %218 = fmul fast float %217, %196
  %219 = call float @dx.op.unary.f32(i32 7, float %218)  ; Saturate(value)
  %220 = fmul fast float %219, %213
  %221 = fmul fast float %107, 5.000000e-01
  %222 = fmul fast float %108, 5.000000e-01
  %223 = fptosi float %221 to i32
  %224 = fptosi float %222 to i32
  %225 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %223, i32 %224, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = lshr i32 %226, 18
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F4C00EBA0000000
  %230 = call float @dx.op.unary.f32(i32 21, float %229)  ; Exp(value)
  %231 = fadd fast float %230, -1.000000e+00
  %232 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %21, i32 0)  ; GetDimensions(handle,mipLevel)
  %233 = extractvalue %dx.types.Dimensions %232, 0
  %234 = sitofp i32 %233 to float
  %235 = extractvalue %dx.types.Dimensions %232, 1
  %236 = sitofp i32 %235 to float
  %237 = fcmp fast oge float %221, %234
  %238 = fcmp fast oge float %222, %236
  %239 = or i1 %237, %238
  %240 = select i1 %239, float 0x4197782600000000, float %231
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %244 = fmul fast float %242, %107
  %245 = fmul fast float %243, %108
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 114688
  %249 = icmp ne i32 %248, 0
  %250 = select i1 %249, float %244, float 0.000000e+00
  %251 = select i1 %249, float %245, float 0.000000e+00
  %252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %43, float %250, float %251, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = fmul fast float %253, 2.550000e+02
  %255 = fptoui float %254 to i32
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.i32 %257, 3
  %259 = and i32 %258, 3
  %260 = icmp ne i32 %259, 0
  %261 = and i32 %258, 4
  %262 = icmp ne i32 %261, 0
  %263 = and i1 %260, %262
  br i1 %263, label %264, label %275

; <label>:264                                     ; preds = %0
  %265 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %266 = fmul fast float %265, %108
  %267 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %268 = fmul fast float %267, %107
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %42, float %268, float %266, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = fsub fast float 1.000000e+00, %270
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = fcmp fast olt float %271, %273
  br label %278

; <label>:275                                     ; preds = %0
  %276 = icmp eq i32 %261, 0
  %277 = and i1 %260, %276
  br label %278

; <label>:278                                     ; preds = %275, %264
  %279 = phi i1 [ %274, %264 ], [ %277, %275 ]
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = fmul fast float %281, 0x3FE3C6EF40000000
  %283 = frem fast float %107, 2.560000e+02
  %284 = frem fast float %108, 2.560000e+02
  %285 = fptoui float %283 to i32
  %286 = fptoui float %284 to i32
  %287 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %285, i32 %286, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = fadd fast float %288, %282
  %290 = call float @dx.op.unary.f32(i32 22, float %289)  ; Frc(value)
  %291 = add i32 %48, 156
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = shl i32 %293, 4
  %295 = and i32 %294, 32752
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %293, 7
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %293, 22
  %301 = shl nuw nsw i32 %300, 5
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %48, 216
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %305, 8
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = lshr i32 %305, 16
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = add i32 %48, 36
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %48, 288
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %328, 0x3F50624DE0000000
  %332 = fmul fast float %330, 0x3F50624DE0000000
  %333 = add i32 %48, 172
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = shl i32 %335, 4
  %337 = and i32 %336, 32752
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = lshr i32 %335, 7
  %340 = and i32 %339, 32752
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = lshr i32 %335, 22
  %343 = shl nuw nsw i32 %342, 5
  %344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %343)  ; LegacyF16ToF32(value)
  %345 = add i32 %48, 232
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = and i32 %347, 255
  %349 = uitofp i32 %348 to float
  %350 = fmul fast float %349, 0x3F70101020000000
  %351 = lshr i32 %347, 8
  %352 = and i32 %351, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %347, 16
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = add i32 %48, 52
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = add i32 %48, 304
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 65535
  %370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %369)  ; LegacyF16ToF32(value)
  %371 = lshr i32 %368, 16
  %372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %371)  ; LegacyF16ToF32(value)
  %373 = fmul fast float %370, 0x3F50624DE0000000
  %374 = fmul fast float %372, 0x3F50624DE0000000
  %375 = add i32 %48, 188
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = shl i32 %377, 4
  %379 = and i32 %378, 32752
  %380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %379)  ; LegacyF16ToF32(value)
  %381 = lshr i32 %377, 7
  %382 = and i32 %381, 32752
  %383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %382)  ; LegacyF16ToF32(value)
  %384 = lshr i32 %377, 22
  %385 = shl nuw nsw i32 %384, 5
  %386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %385)  ; LegacyF16ToF32(value)
  %387 = add i32 %48, 248
  %388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %389 = extractvalue %dx.types.ResRet.i32 %388, 0
  %390 = and i32 %389, 255
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F70101020000000
  %393 = lshr i32 %389, 8
  %394 = and i32 %393, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = lshr i32 %389, 16
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F70101020000000
  %401 = add i32 %48, 68
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 65535
  %405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %404)  ; LegacyF16ToF32(value)
  %406 = lshr i32 %403, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = add i32 %48, 320
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = and i32 %410, 65535
  %412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %411)  ; LegacyF16ToF32(value)
  %413 = lshr i32 %410, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = fmul fast float %412, 0x3F50624DE0000000
  %416 = fmul fast float %414, 0x3F50624DE0000000
  %417 = add i32 %48, 204
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = shl i32 %419, 4
  %421 = and i32 %420, 32752
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %419, 7
  %424 = and i32 %423, 32752
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %419, 22
  %427 = shl nuw nsw i32 %426, 5
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = add i32 %48, 264
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = and i32 %431, 255
  %433 = uitofp i32 %432 to float
  %434 = fmul fast float %433, 0x3F70101020000000
  %435 = lshr i32 %431, 8
  %436 = and i32 %435, 255
  %437 = uitofp i32 %436 to float
  %438 = fmul fast float %437, 0x3F70101020000000
  %439 = lshr i32 %431, 16
  %440 = and i32 %439, 255
  %441 = uitofp i32 %440 to float
  %442 = fmul fast float %441, 0x3F70101020000000
  %443 = add i32 %48, 84
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = and i32 %445, 65535
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = lshr i32 %445, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = add i32 %48, 336
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 65535
  %454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %453)  ; LegacyF16ToF32(value)
  %455 = lshr i32 %452, 16
  %456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %455)  ; LegacyF16ToF32(value)
  %457 = fmul fast float %454, 0x3F50624DE0000000
  %458 = fmul fast float %456, 0x3F50624DE0000000
  %459 = add i32 %48, 348
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 32
  %463 = icmp eq i32 %462, 0
  %464 = and i32 %461, 64
  %465 = icmp eq i32 %464, 0
  %466 = and i32 %461, 128
  %467 = icmp eq i32 %466, 0
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 2
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %487, label %472

; <label>:472                                     ; preds = %278
  %473 = add i32 %48, 556
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = add i32 %475, 0
  %477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %476, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %477, %dx.types.Handle %104, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = extractvalue %dx.types.ResRet.f32 %478, 1
  %481 = extractvalue %dx.types.ResRet.f32 %478, 2
  %482 = extractvalue %dx.types.ResRet.f32 %478, 3
  %483 = fmul fast float %482, %87
  %484 = fmul fast float %479, %88
  %485 = fmul fast float %480, %89
  %486 = fmul fast float %481, %90
  br label %487

; <label>:487                                     ; preds = %472, %278
  %488 = phi float [ %90, %278 ], [ %486, %472 ]
  %489 = phi float [ %89, %278 ], [ %485, %472 ]
  %490 = phi float [ %88, %278 ], [ %484, %472 ]
  %491 = phi float [ %87, %278 ], [ %483, %472 ]
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 2
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %515, label %496

; <label>:496                                     ; preds = %487
  %497 = add i32 %48, 44
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = and i32 %499, 1
  %501 = icmp ne i32 %500, 0
  %502 = select i1 %501, float %490, float 1.000000e+00
  %503 = add i32 %48, 60
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = and i32 %505, 1
  %507 = icmp ne i32 %506, 0
  %508 = select i1 %507, float %489, float 1.000000e+00
  %509 = add i32 %48, 76
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 1
  %513 = icmp ne i32 %512, 0
  %514 = select i1 %513, float %488, float 1.000000e+00
  br label %515

; <label>:515                                     ; preds = %496, %487
  %516 = phi float [ %488, %487 ], [ %514, %496 ]
  %517 = phi float [ %489, %487 ], [ %508, %496 ]
  %518 = phi float [ %490, %487 ], [ %502, %496 ]
  %519 = lshr i32 %493, 20
  %520 = and i32 %519, 3
  %521 = add nuw nsw i32 %520, 1
  %522 = add i32 %48, 24
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = add i32 %48, 28
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = or i32 %527, %524
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %1175, label %530

; <label>:530                                     ; preds = %515
  %531 = and i32 %524, 262144
  %532 = icmp ne i32 %531, 0
  %533 = select i1 %532, float %53, float 1.000000e+00
  %534 = select i1 %532, float %54, float 0.000000e+00
  %535 = select i1 %532, float %55, float 0.000000e+00
  %536 = select i1 %532, float %56, float 1.000000e+00
  %537 = select i1 %532, float %57, float %85
  %538 = select i1 %532, float %58, float %86
  %539 = add i32 %48, 284
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fmul fast float %543, 0x3F50624DE0000000
  %545 = add i32 %48, 88
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = lshr i32 %547, 16
  %549 = and i32 %548, 255
  %550 = lshr i32 %547, 24
  %551 = add i32 %48, 292
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = lshr i32 %553, 16
  %557 = call float @dx.op.legacyF16ToF32(i32 131, i32 %556)  ; LegacyF16ToF32(value)
  %558 = add i32 %48, 32
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = lshr i32 %560, 22
  %562 = shl nuw nsw i32 %561, 5
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = shl i32 %560, 4
  %565 = and i32 %564, 32752
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = lshr i32 %560, 7
  %568 = and i32 %567, 32752
  %569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %568)  ; LegacyF16ToF32(value)
  %570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %571 = extractvalue %dx.types.CBufRet.f32 %570, 3
  %572 = fmul fast float %571, 1.000000e+03
  %573 = fmul fast float %331, %572
  %574 = call float @dx.op.unary.f32(i32 22, float %573)  ; Frc(value)
  %575 = fadd fast float %574, %321
  %576 = fmul fast float %332, %572
  %577 = call float @dx.op.unary.f32(i32 22, float %576)  ; Frc(value)
  %578 = fadd fast float %577, %323
  %579 = fmul fast float %544, %572
  %580 = call float @dx.op.unary.f32(i32 22, float %579)  ; Frc(value)
  %581 = fmul fast float %580, 0x401921FB60000000
  %582 = fadd fast float %581, %563
  %583 = call float @dx.op.unary.f32(i32 13, float %582)  ; Sin(value)
  %584 = call float @dx.op.unary.f32(i32 12, float %582)  ; Cos(value)
  %585 = fsub fast float -0.000000e+00, %583
  %586 = fadd fast float %537, -5.000000e-01
  %587 = fadd fast float %538, -5.000000e-01
  %588 = fmul fast float %555, %586
  %589 = fmul fast float %557, %587
  %590 = fadd fast float %588, 5.000000e-01
  %591 = fadd fast float %589, 5.000000e-01
  %592 = fmul fast float %566, %590
  %593 = fmul fast float %569, %591
  %594 = fmul fast float %584, %592
  %595 = call float @dx.op.tertiary.f32(i32 46, float %585, float %593, float %594)  ; FMad(a,b,c)
  %596 = fmul fast float %583, %592
  %597 = call float @dx.op.tertiary.f32(i32 46, float %584, float %593, float %596)  ; FMad(a,b,c)
  %598 = fadd fast float %575, %595
  %599 = fadd fast float %578, %597
  %600 = icmp ugt i32 %549, 1
  %601 = icmp ugt i32 %547, 33554431
  %602 = or i1 %601, %600
  br i1 %602, label %603, label %628

; <label>:603                                     ; preds = %530
  %604 = add i32 %48, 228
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = lshr i32 %606, 16
  %608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %607)  ; LegacyF16ToF32(value)
  %609 = fmul fast float %571, %608
  %610 = call float @dx.op.unary.f32(i32 22, float %609)  ; Frc(value)
  %611 = mul nuw nsw i32 %549, %550
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %610, %612
  %614 = call float @dx.op.unary.f32(i32 27, float %613)  ; Round_ni(value)
  %615 = fptoui float %614 to i32
  %616 = urem i32 %615, %549
  %617 = udiv i32 %615, %550
  %618 = call float @dx.op.unary.f32(i32 22, float %598)  ; Frc(value)
  %619 = call float @dx.op.unary.f32(i32 22, float %599)  ; Frc(value)
  %620 = uitofp i32 %616 to float
  %621 = uitofp i32 %617 to float
  %622 = fadd fast float %618, %620
  %623 = fadd fast float %619, %621
  %624 = uitofp i32 %549 to float
  %625 = uitofp i32 %550 to float
  %626 = fdiv fast float %622, %624
  %627 = fdiv fast float %623, %625
  br label %628

; <label>:628                                     ; preds = %603, %530
  %629 = phi float [ %626, %603 ], [ %598, %530 ]
  %630 = phi float [ %627, %603 ], [ %599, %530 ]
  %631 = and i32 %524, 256
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %679, label %633

; <label>:633                                     ; preds = %628
  %634 = add i32 %48, 488
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = add i32 %636, 0
  %638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %637, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %639 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %638, %dx.types.Handle %104, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 0
  %641 = add i32 %48, 100
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = shl i32 %643, 4
  %645 = and i32 %644, 32752
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = lshr i32 %643, 7
  %648 = and i32 %647, 32752
  %649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %648)  ; LegacyF16ToF32(value)
  %650 = fsub fast float 1.000000e+00, %491
  %651 = call float @dx.op.binary.f32(i32 35, float %650, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %652 = bitcast float %491 to i32
  %653 = sitofp i32 %652 to float
  %654 = fadd fast float %653, 0xC1CFBF8940000000
  %655 = fmul fast float %649, %654
  %656 = fadd fast float %655, 0x41CFBF8940000000
  %657 = fptosi float %656 to i32
  %658 = bitcast i32 %657 to float
  %659 = bitcast float %651 to i32
  %660 = sitofp i32 %659 to float
  %661 = fadd fast float %660, 0xC1CFBF8940000000
  %662 = fmul fast float %661, %649
  %663 = fadd fast float %662, 0x41CFBF8940000000
  %664 = fptosi float %663 to i32
  %665 = bitcast i32 %664 to float
  %666 = fmul fast float %658, %646
  %667 = fmul fast float %665, %646
  %668 = fsub fast float %651, %666
  %669 = fadd fast float %667, %651
  %670 = call float @dx.op.unary.f32(i32 7, float %668)  ; Saturate(value)
  %671 = call float @dx.op.unary.f32(i32 7, float %669)  ; Saturate(value)
  %672 = fsub fast float %640, %670
  %673 = fsub fast float %671, %670
  %674 = bitcast float %673 to i32
  %675 = sub nsw i32 2129859010, %674
  %676 = bitcast i32 %675 to float
  %677 = fmul fast float %676, %672
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  br label %679

; <label>:679                                     ; preds = %633, %628
  %680 = phi float [ %678, %633 ], [ %491, %628 ]
  %681 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %682 = extractvalue %dx.types.ResRet.i32 %681, 0
  %683 = and i32 %682, 128
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %701, label %685

; <label>:685                                     ; preds = %679
  %686 = add i32 %48, 472
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %686, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = add i32 %688, 0
  %690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %689, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %691 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %690, %dx.types.Handle %104, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %692 = extractvalue %dx.types.ResRet.f32 %691, 0
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = and i32 %694, 524288
  %696 = icmp ne i32 %695, 0
  %697 = fcmp fast ogt float %692, 0x3FE0101020000000
  %698 = select i1 %697, float 1.000000e+00, float 0.000000e+00
  %699 = select i1 %696, float %698, float %692
  %700 = fmul fast float %699, %680
  br label %701

; <label>:701                                     ; preds = %685, %679
  %702 = phi float [ %700, %685 ], [ %680, %679 ]
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 16
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %905, label %707

; <label>:707                                     ; preds = %701
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = add i32 %48, 424
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %710, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = add i32 %712, 0
  %714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %714, %dx.types.Handle %103, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = extractvalue %dx.types.ResRet.f32 %715, 1
  %718 = extractvalue %dx.types.ResRet.f32 %715, 2
  %719 = extractvalue %dx.types.ResRet.f32 %715, 3
  %720 = and i32 %709, 255
  %721 = uitofp i32 %720 to float
  %722 = lshr i32 %709, 8
  %723 = and i32 %722, 255
  %724 = uitofp i32 %723 to float
  %725 = fmul fast float %719, %721
  %726 = fadd fast float %725, %724
  %727 = fmul fast float %726, 0x3F70101000000000
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 512
  %731 = icmp eq i32 %730, 0
  br i1 %731, label %740, label %732

; <label>:732                                     ; preds = %707
  %733 = add i32 %48, 508
  %734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %733, i32 undef)  ; BufferLoad(srv,index,wot)
  %735 = extractvalue %dx.types.ResRet.i32 %734, 0
  %736 = add i32 %735, 0
  %737 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %736, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %738 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %737, %dx.types.Handle %104, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %739 = extractvalue %dx.types.ResRet.f32 %738, 0
  br label %740

; <label>:740                                     ; preds = %732, %707
  %741 = phi float [ %739, %732 ], [ 1.000000e+00, %707 ]
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 33554432
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %852, label %746

; <label>:746                                     ; preds = %740
  %747 = add i32 %48, 224
  %748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %749 = extractvalue %dx.types.ResRet.i32 %748, 0
  %750 = and i32 %749, 65535
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = lshr i32 %749, 16
  %753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %752)  ; LegacyF16ToF32(value)
  %754 = add i32 %48, 228
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 65535
  %758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %757)  ; LegacyF16ToF32(value)
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %775 = add i32 %48, 220
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %792 = bitcast float %716 to i32
  %793 = ashr i32 %792, 1
  %794 = sub nsw i32 1597463174, %793
  %795 = bitcast i32 %794 to float
  %796 = fmul fast float %716, 5.000000e-01
  %797 = fmul fast float %795, %795
  %798 = fmul fast float %797, %796
  %799 = fsub fast float 1.500000e+00, %798
  %800 = fmul fast float %795, %716
  %801 = fmul fast float %800, %799
  %802 = bitcast float %717 to i32
  %803 = ashr i32 %802, 1
  %804 = sub nsw i32 1597463174, %803
  %805 = bitcast i32 %804 to float
  %806 = fmul fast float %717, 5.000000e-01
  %807 = fmul fast float %805, %805
  %808 = fmul fast float %807, %806
  %809 = fsub fast float 1.500000e+00, %808
  %810 = fmul fast float %805, %717
  %811 = fmul fast float %810, %809
  %812 = bitcast float %718 to i32
  %813 = ashr i32 %812, 1
  %814 = sub nsw i32 1597463174, %813
  %815 = bitcast i32 %814 to float
  %816 = fmul fast float %718, 5.000000e-01
  %817 = fmul fast float %815, %815
  %818 = fmul fast float %817, %816
  %819 = fsub fast float 1.500000e+00, %818
  %820 = fmul fast float %815, %718
  %821 = fmul fast float %820, %819
  %822 = fsub fast float %801, %783
  %823 = fsub fast float %811, %787
  %824 = fsub fast float %821, %791
  %825 = fmul fast float %822, %751
  %826 = fmul fast float %823, %753
  %827 = fmul fast float %824, %758
  %828 = fadd fast float %825, %766
  %829 = fadd fast float %826, %770
  %830 = fadd fast float %827, %774
  %831 = call float @dx.op.unary.f32(i32 7, float %828)  ; Saturate(value)
  %832 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %833 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %834 = fmul fast float %831, %831
  %835 = fmul fast float %832, %832
  %836 = fmul fast float %833, %833
  %837 = fsub fast float %834, %716
  %838 = fsub fast float %835, %717
  %839 = fsub fast float %836, %718
  %840 = fmul fast float %837, %741
  %841 = fmul fast float %838, %741
  %842 = fmul fast float %839, %741
  %843 = fadd fast float %840, %716
  %844 = fadd fast float %841, %717
  %845 = fadd fast float %842, %718
  %846 = fadd fast float %763, %727
  %847 = fsub fast float %846, %780
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  %849 = fsub fast float %848, %727
  %850 = fmul fast float %849, %741
  %851 = fadd fast float %850, %727
  br label %905

; <label>:852                                     ; preds = %740
  %853 = and i32 %743, 134217728
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %889, label %855

; <label>:855                                     ; preds = %852
  %856 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %857 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %858 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %859 = fadd fast float %856, -5.000000e-01
  %860 = fadd fast float %857, -5.000000e-01
  %861 = fadd fast float %858, -5.000000e-01
  %862 = fmul fast float %859, %741
  %863 = fmul fast float %860, %741
  %864 = fmul fast float %861, %741
  %865 = fadd fast float %862, 5.000000e-01
  %866 = fadd fast float %863, 5.000000e-01
  %867 = fadd fast float %864, 5.000000e-01
  %868 = call float @dx.op.unary.f32(i32 24, float %716)  ; Sqrt(value)
  %869 = call float @dx.op.unary.f32(i32 24, float %717)  ; Sqrt(value)
  %870 = call float @dx.op.unary.f32(i32 24, float %718)  ; Sqrt(value)
  %871 = fmul fast float %865, 2.000000e+00
  %872 = fsub fast float 1.000000e+00, %871
  %873 = fmul fast float %872, %868
  %874 = fadd fast float %873, %871
  %875 = fmul fast float %874, %868
  %876 = fmul fast float %866, 2.000000e+00
  %877 = fsub fast float 1.000000e+00, %876
  %878 = fmul fast float %877, %869
  %879 = fadd fast float %878, %876
  %880 = fmul fast float %879, %869
  %881 = fmul fast float %867, 2.000000e+00
  %882 = fsub fast float 1.000000e+00, %881
  %883 = fmul fast float %882, %870
  %884 = fadd fast float %883, %881
  %885 = fmul fast float %884, %870
  %886 = fmul fast float %875, %875
  %887 = fmul fast float %880, %880
  %888 = fmul fast float %885, %885
  br label %905

; <label>:889                                     ; preds = %852
  %890 = fmul fast float %308, %308
  %891 = fmul fast float %312, %312
  %892 = fmul fast float %316, %316
  %893 = fadd fast float %890, -1.000000e+00
  %894 = fadd fast float %891, -1.000000e+00
  %895 = fadd fast float %892, -1.000000e+00
  %896 = fmul fast float %741, %893
  %897 = fmul fast float %741, %894
  %898 = fmul fast float %741, %895
  %899 = fadd fast float %896, 1.000000e+00
  %900 = fadd fast float %897, 1.000000e+00
  %901 = fadd fast float %898, 1.000000e+00
  %902 = fmul fast float %899, %716
  %903 = fmul fast float %900, %717
  %904 = fmul fast float %901, %718
  br label %905

; <label>:905                                     ; preds = %889, %855, %746, %701
  %906 = phi float [ %851, %746 ], [ %727, %855 ], [ %727, %889 ], [ 0x3FA23C0BE0000000, %701 ]
  %907 = phi float [ %843, %746 ], [ %886, %855 ], [ %902, %889 ], [ 1.000000e+00, %701 ]
  %908 = phi float [ %844, %746 ], [ %887, %855 ], [ %903, %889 ], [ 1.000000e+00, %701 ]
  %909 = phi float [ %845, %746 ], [ %888, %855 ], [ %904, %889 ], [ 1.000000e+00, %701 ]
  %910 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %911 = extractvalue %dx.types.CBufRet.i32 %910, 1
  %912 = and i32 %911, 1
  %913 = icmp ne i32 %912, 0
  %914 = add i32 %48, 356
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = and i32 %916, 32
  %918 = icmp ne i32 %917, 0
  %919 = and i1 %913, %918
  %920 = select i1 %919, float 1.000000e+00, float %907
  %921 = select i1 %919, float 0x3FD3333340000000, float %908
  %922 = select i1 %919, float 0x3FD3333340000000, float %909
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = and i32 %924, 32
  %926 = icmp eq i32 %925, 0
  br i1 %926, label %999, label %927

; <label>:927                                     ; preds = %905
  %928 = add i32 %48, 92
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = add i32 %48, 440
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = add i32 %933, 0
  %935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %936 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %935, %dx.types.Handle %103, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = extractvalue %dx.types.ResRet.f32 %936, 3
  %941 = and i32 %930, 255
  %942 = uitofp i32 %941 to float
  %943 = lshr i32 %930, 8
  %944 = and i32 %943, 255
  %945 = uitofp i32 %944 to float
  %946 = lshr i32 %930, 16
  %947 = and i32 %946, 255
  %948 = uitofp i32 %947 to float
  %949 = fmul fast float %948, 0x3F70101000000000
  %950 = fmul fast float %937, %942
  %951 = fadd fast float %950, %945
  %952 = fmul fast float %951, 0x3F70101000000000
  %953 = fadd fast float %938, -5.000000e-01
  %954 = fadd fast float %940, -5.000000e-01
  %955 = fmul fast float %953, %949
  %956 = fmul fast float %954, %949
  %957 = fadd fast float %955, 5.000000e-01
  %958 = fadd fast float %956, 5.000000e-01
  %959 = fmul fast float %957, 2.000000e+00
  %960 = fadd fast float %959, -1.000000e+00
  %961 = fmul fast float %958, 2.000000e+00
  %962 = fadd fast float %961, -1.000000e+00
  %963 = fadd fast float %960, %962
  %964 = fmul fast float %963, 5.000000e-01
  %965 = fsub fast float %960, %962
  %966 = fmul fast float %965, 5.000000e-01
  %967 = call float @dx.op.unary.f32(i32 6, float %964)  ; FAbs(value)
  %968 = fsub fast float 1.000000e+00, %967
  %969 = call float @dx.op.unary.f32(i32 6, float %966)  ; FAbs(value)
  %970 = fsub fast float %968, %969
  %971 = call float @dx.op.dot3.f32(i32 55, float %964, float %966, float %970, float %964, float %966, float %970)  ; Dot3(ax,ay,az,bx,by,bz)
  %972 = call float @dx.op.unary.f32(i32 25, float %971)  ; Rsqrt(value)
  %973 = fmul fast float %964, %972
  %974 = fmul fast float %966, %972
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = and i32 %976, 67108864
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %995, label %979

; <label>:979                                     ; preds = %927
  %980 = add i32 %48, 280
  %981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %980, i32 undef)  ; BufferLoad(srv,index,wot)
  %982 = extractvalue %dx.types.ResRet.i32 %981, 0
  %983 = and i32 %982, 65535
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = and i32 %986, 65535
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = lshr i32 %982, 16
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = fsub fast float %952, %990
  %992 = fmul fast float %991, %984
  %993 = fadd fast float %992, %988
  %994 = call float @dx.op.unary.f32(i32 7, float %993)  ; Saturate(value)
  br label %995

; <label>:995                                     ; preds = %979, %927
  %996 = phi float [ %994, %979 ], [ %952, %927 ]
  %997 = call float @dx.op.dot2.f32(i32 54, float %973, float %974, float %533, float %534)  ; Dot2(ax,ay,bx,by)
  %998 = call float @dx.op.dot2.f32(i32 54, float %973, float %974, float %535, float %536)  ; Dot2(ax,ay,bx,by)
  br label %999

; <label>:999                                     ; preds = %995, %905
  %1000 = phi float [ %996, %995 ], [ 0x3FD6666660000000, %905 ]
  %1001 = phi float [ %997, %995 ], [ 0.000000e+00, %905 ]
  %1002 = phi float [ %998, %995 ], [ 0.000000e+00, %905 ]
  %1003 = phi float [ %939, %995 ], [ 1.000000e+00, %905 ]
  %1004 = add i32 %48, 160
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = lshr i32 %1006, 22
  %1008 = shl nuw nsw i32 %1007, 5
  %1009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1008)  ; LegacyF16ToF32(value)
  %1010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.i32 %1010, 0
  %1012 = and i32 %1011, 64
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1047, label %1014

; <label>:1014                                    ; preds = %999
  %1015 = add i32 %48, 456
  %1016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.i32 %1016, 0
  %1018 = add i32 %1017, 0
  %1019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1018, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = and i32 %1021, 131072
  %1023 = icmp eq i32 %1022, 0
  %1024 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1019, %dx.types.Handle %103, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = fmul fast float %1025, %296
  %1029 = fmul fast float %1026, %299
  %1030 = fmul fast float %1027, %302
  br i1 %1023, label %1037, label %1031

; <label>:1031                                    ; preds = %1014
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 0
  %1034 = fmul fast float %1033, %1028
  %1035 = fmul fast float %1033, %1029
  %1036 = fmul fast float %1033, %1030
  br label %1037

; <label>:1037                                    ; preds = %1031, %1014
  %1038 = phi float [ %1034, %1031 ], [ %1028, %1014 ]
  %1039 = phi float [ %1035, %1031 ], [ %1029, %1014 ]
  %1040 = phi float [ %1036, %1031 ], [ %1030, %1014 ]
  %1041 = fmul fast float %1038, %1009
  %1042 = select i1 %279, float %1041, float %1038
  %1043 = call float @dx.op.dot3.f32(i32 55, float %1042, float %1039, float %1040, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1044 = select i1 %279, float 0.000000e+00, float %1038
  %1045 = select i1 %279, float %1043, float %1039
  %1046 = select i1 %279, float 0.000000e+00, float %1040
  br label %1047

; <label>:1047                                    ; preds = %1037, %999
  %1048 = phi float [ %1044, %1037 ], [ 0.000000e+00, %999 ]
  %1049 = phi float [ %1045, %1037 ], [ 0.000000e+00, %999 ]
  %1050 = phi float [ %1046, %1037 ], [ 0.000000e+00, %999 ]
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = and i32 %1052, 1024
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1085, label %1055

; <label>:1055                                    ; preds = %1047
  %1056 = add i32 %48, 152
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = and i32 %1058, 255
  %1060 = uitofp i32 %1059 to float
  %1061 = fmul fast float %1060, 0x3F70101020000000
  %1062 = lshr i32 %1058, 8
  %1063 = and i32 %1062, 255
  %1064 = uitofp i32 %1063 to float
  %1065 = fmul fast float %1064, 0x3F70101020000000
  %1066 = lshr i32 %1058, 16
  %1067 = and i32 %1066, 255
  %1068 = uitofp i32 %1067 to float
  %1069 = fmul fast float %1068, 0x3F70101020000000
  %1070 = fmul fast float %1061, %1061
  %1071 = fmul fast float %1065, %1065
  %1072 = fmul fast float %1069, %1069
  %1073 = add i32 %48, 524
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = add i32 %1075, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1076, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1077, %dx.types.Handle %104, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = fmul fast float %1070, %1079
  %1083 = fmul fast float %1071, %1080
  %1084 = fmul fast float %1072, %1081
  br label %1085

; <label>:1085                                    ; preds = %1055, %1047
  %1086 = phi float [ %1082, %1055 ], [ 0.000000e+00, %1047 ]
  %1087 = phi float [ %1083, %1055 ], [ 0.000000e+00, %1047 ]
  %1088 = phi float [ %1084, %1055 ], [ 0.000000e+00, %1047 ]
  %1089 = fcmp fast ogt float %1086, 0.000000e+00
  %1090 = fcmp fast ogt float %1087, 0.000000e+00
  %1091 = fcmp fast ogt float %1088, 0.000000e+00
  %1092 = call float @dx.op.unary.f32(i32 23, float %1086)  ; Log(value)
  %1093 = call float @dx.op.unary.f32(i32 23, float %1087)  ; Log(value)
  %1094 = call float @dx.op.unary.f32(i32 23, float %1088)  ; Log(value)
  %1095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1096 = extractvalue %dx.types.ResRet.i32 %1095, 0
  %1097 = lshr i32 %1096, 7
  %1098 = and i32 %1097, 32752
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = fmul fast float %1092, 0xBFE62E4300000000
  %1101 = fmul fast float %1100, %1099
  %1102 = fmul fast float %1093, 0xBFE62E4300000000
  %1103 = fmul fast float %1102, %1099
  %1104 = fmul fast float %1094, 0xBFE62E4300000000
  %1105 = fmul fast float %1104, %1099
  %1106 = select i1 %1089, float %1101, float 1.270000e+02
  %1107 = select i1 %1090, float %1103, float 1.270000e+02
  %1108 = select i1 %1091, float %1105, float 1.270000e+02
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 10240
  %1112 = icmp eq i32 %1111, 0
  br i1 %1112, label %1157, label %1113

; <label>:1113                                    ; preds = %1085
  %1114 = add i32 %48, 540
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1114, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %1116, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1118, %dx.types.Handle %104, float %629, float %630, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 3
  %1122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.i32 %1122, 0
  %1124 = and i32 %1123, 1048576
  %1125 = icmp ne i32 %1124, 0
  %1126 = and i32 %1123, 8192
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1143, label %1128

; <label>:1128                                    ; preds = %1113
  %1129 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1130 = select i1 %1125, float %1129, float %1120
  %1131 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1132 = select i1 %1125, float %1131, float %1120
  %1133 = add i32 %48, 96
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = lshr i32 %1135, 16
  %1137 = and i32 %1136, 255
  %1138 = uitofp i32 %1137 to float
  %1139 = fmul fast float %1138, 0x3F80101020000000
  %1140 = fmul fast float %1139, %1132
  %1141 = fmul fast float %1139, %1120
  %1142 = fmul fast float %1139, %1130
  br label %1143

; <label>:1143                                    ; preds = %1128, %1113
  %1144 = phi float [ %1140, %1128 ], [ 0.000000e+00, %1113 ]
  %1145 = phi float [ %1141, %1128 ], [ 0.000000e+00, %1113 ]
  %1146 = phi float [ %1142, %1128 ], [ 0.000000e+00, %1113 ]
  %1147 = and i32 %1123, 2048
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1157, label %1149

; <label>:1149                                    ; preds = %1143
  %1150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1151 = extractvalue %dx.types.ResRet.i32 %1150, 0
  %1152 = shl i32 %1151, 4
  %1153 = and i32 %1152, 32752
  %1154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1153)  ; LegacyF16ToF32(value)
  %1155 = fmul fast float %1154, %1121
  %1156 = call float @dx.op.binary.f32(i32 35, float %1155, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1157

; <label>:1157                                    ; preds = %1149, %1143, %1085
  %1158 = phi float [ %1144, %1149 ], [ %1144, %1143 ], [ 0.000000e+00, %1085 ]
  %1159 = phi float [ %1145, %1149 ], [ %1145, %1143 ], [ 0.000000e+00, %1085 ]
  %1160 = phi float [ %1146, %1149 ], [ %1146, %1143 ], [ 0.000000e+00, %1085 ]
  %1161 = phi float [ %1156, %1149 ], [ 0x3F70101020000000, %1143 ], [ 0x3F70101020000000, %1085 ]
  %1162 = add i32 %48, 96
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = and i32 %1164, 255
  %1166 = uitofp i32 %1165 to float
  %1167 = lshr i32 %1164, 8
  %1168 = and i32 %1167, 255
  %1169 = uitofp i32 %1168 to float
  %1170 = call float @dx.op.dot3.f32(i32 55, float %920, float %921, float %922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1171 = fmul fast float %1169, %1170
  %1172 = fadd fast float %1171, %1166
  %1173 = fmul fast float %1172, 0x3F70101020000000
  %1174 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  br label %1175

; <label>:1175                                    ; preds = %1157, %515
  %1176 = phi float [ 0.000000e+00, %515 ], [ %1001, %1157 ]
  %1177 = phi float [ 0.000000e+00, %515 ], [ %1002, %1157 ]
  %1178 = phi float [ 0.000000e+00, %515 ], [ %920, %1157 ]
  %1179 = phi float [ 0.000000e+00, %515 ], [ %921, %1157 ]
  %1180 = phi float [ 0.000000e+00, %515 ], [ %922, %1157 ]
  %1181 = phi float [ 0.000000e+00, %515 ], [ %1048, %1157 ]
  %1182 = phi float [ 0.000000e+00, %515 ], [ %1049, %1157 ]
  %1183 = phi float [ 0.000000e+00, %515 ], [ %1050, %1157 ]
  %1184 = phi float [ 0.000000e+00, %515 ], [ %1106, %1157 ]
  %1185 = phi float [ 0.000000e+00, %515 ], [ %1107, %1157 ]
  %1186 = phi float [ 0.000000e+00, %515 ], [ %1108, %1157 ]
  %1187 = phi float [ 0.000000e+00, %515 ], [ %1158, %1157 ]
  %1188 = phi float [ 0.000000e+00, %515 ], [ %1159, %1157 ]
  %1189 = phi float [ 0.000000e+00, %515 ], [ %1160, %1157 ]
  %1190 = phi float [ 0.000000e+00, %515 ], [ %906, %1157 ]
  %1191 = phi float [ 0.000000e+00, %515 ], [ %702, %1157 ]
  %1192 = phi float [ 0.000000e+00, %515 ], [ %1000, %1157 ]
  %1193 = phi float [ 0.000000e+00, %515 ], [ %1003, %1157 ]
  %1194 = phi float [ 0.000000e+00, %515 ], [ %1161, %1157 ]
  %1195 = phi float [ 0.000000e+00, %515 ], [ %1174, %1157 ]
  br i1 %463, label %2118, label %1196

; <label>:1196                                    ; preds = %1175
  %1197 = icmp ult i32 %521, 2
  %1198 = add i32 %48, 40
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = add i32 %48, 44
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = or i32 %1203, %1200
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %2118, label %1206

; <label>:1206                                    ; preds = %1196
  %1207 = and i32 %1200, 262144
  %1208 = icmp ne i32 %1207, 0
  %1209 = select i1 %1208, float %53, float 1.000000e+00
  %1210 = select i1 %1208, float %54, float 0.000000e+00
  %1211 = select i1 %1208, float %55, float 0.000000e+00
  %1212 = select i1 %1208, float %56, float 1.000000e+00
  %1213 = select i1 %1208, float %57, float %85
  %1214 = select i1 %1208, float %58, float %86
  %1215 = add i32 %48, 300
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = lshr i32 %1217, 16
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = fmul fast float %1219, 0x3F50624DE0000000
  %1221 = add i32 %48, 104
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = lshr i32 %1223, 16
  %1225 = and i32 %1224, 255
  %1226 = lshr i32 %1223, 24
  %1227 = add i32 %48, 308
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 65535
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = lshr i32 %1229, 16
  %1233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1232)  ; LegacyF16ToF32(value)
  %1234 = add i32 %48, 48
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = lshr i32 %1236, 22
  %1238 = shl nuw nsw i32 %1237, 5
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = shl i32 %1236, 4
  %1241 = and i32 %1240, 32752
  %1242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1241)  ; LegacyF16ToF32(value)
  %1243 = lshr i32 %1236, 7
  %1244 = and i32 %1243, 32752
  %1245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1244)  ; LegacyF16ToF32(value)
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 3
  %1248 = fmul fast float %1247, 1.000000e+03
  %1249 = fmul fast float %373, %1248
  %1250 = call float @dx.op.unary.f32(i32 22, float %1249)  ; Frc(value)
  %1251 = fadd fast float %1250, %363
  %1252 = fmul fast float %374, %1248
  %1253 = call float @dx.op.unary.f32(i32 22, float %1252)  ; Frc(value)
  %1254 = fadd fast float %1253, %365
  %1255 = fmul fast float %1220, %1248
  %1256 = call float @dx.op.unary.f32(i32 22, float %1255)  ; Frc(value)
  %1257 = fmul fast float %1256, 0x401921FB60000000
  %1258 = fadd fast float %1257, %1239
  %1259 = call float @dx.op.unary.f32(i32 13, float %1258)  ; Sin(value)
  %1260 = call float @dx.op.unary.f32(i32 12, float %1258)  ; Cos(value)
  %1261 = fsub fast float -0.000000e+00, %1259
  %1262 = fadd fast float %1213, -5.000000e-01
  %1263 = fadd fast float %1214, -5.000000e-01
  %1264 = fmul fast float %1231, %1262
  %1265 = fmul fast float %1233, %1263
  %1266 = fadd fast float %1264, 5.000000e-01
  %1267 = fadd fast float %1265, 5.000000e-01
  %1268 = fmul fast float %1242, %1266
  %1269 = fmul fast float %1245, %1267
  %1270 = fmul fast float %1260, %1268
  %1271 = call float @dx.op.tertiary.f32(i32 46, float %1261, float %1269, float %1270)  ; FMad(a,b,c)
  %1272 = fmul fast float %1259, %1268
  %1273 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1269, float %1272)  ; FMad(a,b,c)
  %1274 = fadd fast float %1251, %1271
  %1275 = fadd fast float %1254, %1273
  %1276 = icmp ugt i32 %1225, 1
  %1277 = icmp ugt i32 %1223, 33554431
  %1278 = or i1 %1277, %1276
  br i1 %1278, label %1279, label %1304

; <label>:1279                                    ; preds = %1206
  %1280 = add i32 %48, 244
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 16
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = fmul fast float %1247, %1284
  %1286 = call float @dx.op.unary.f32(i32 22, float %1285)  ; Frc(value)
  %1287 = mul nuw nsw i32 %1225, %1226
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1286, %1288
  %1290 = call float @dx.op.unary.f32(i32 27, float %1289)  ; Round_ni(value)
  %1291 = fptoui float %1290 to i32
  %1292 = urem i32 %1291, %1225
  %1293 = udiv i32 %1291, %1226
  %1294 = call float @dx.op.unary.f32(i32 22, float %1274)  ; Frc(value)
  %1295 = call float @dx.op.unary.f32(i32 22, float %1275)  ; Frc(value)
  %1296 = uitofp i32 %1292 to float
  %1297 = uitofp i32 %1293 to float
  %1298 = fadd fast float %1294, %1296
  %1299 = fadd fast float %1295, %1297
  %1300 = uitofp i32 %1225 to float
  %1301 = uitofp i32 %1226 to float
  %1302 = fdiv fast float %1298, %1300
  %1303 = fdiv fast float %1299, %1301
  br label %1304

; <label>:1304                                    ; preds = %1279, %1206
  %1305 = phi float [ %1302, %1279 ], [ %1274, %1206 ]
  %1306 = phi float [ %1303, %1279 ], [ %1275, %1206 ]
  %1307 = and i32 %1200, 256
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1355, label %1309

; <label>:1309                                    ; preds = %1304
  %1310 = add i32 %48, 492
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = add i32 %1312, 0
  %1314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1314, %dx.types.Handle %104, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = add i32 %48, 116
  %1318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.i32 %1318, 0
  %1320 = shl i32 %1319, 4
  %1321 = and i32 %1320, 32752
  %1322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1321)  ; LegacyF16ToF32(value)
  %1323 = lshr i32 %1319, 7
  %1324 = and i32 %1323, 32752
  %1325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1324)  ; LegacyF16ToF32(value)
  %1326 = fsub fast float 1.000000e+00, %518
  %1327 = call float @dx.op.binary.f32(i32 35, float %1326, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1328 = bitcast float %518 to i32
  %1329 = sitofp i32 %1328 to float
  %1330 = fadd fast float %1329, 0xC1CFBF8940000000
  %1331 = fmul fast float %1325, %1330
  %1332 = fadd fast float %1331, 0x41CFBF8940000000
  %1333 = fptosi float %1332 to i32
  %1334 = bitcast i32 %1333 to float
  %1335 = bitcast float %1327 to i32
  %1336 = sitofp i32 %1335 to float
  %1337 = fadd fast float %1336, 0xC1CFBF8940000000
  %1338 = fmul fast float %1337, %1325
  %1339 = fadd fast float %1338, 0x41CFBF8940000000
  %1340 = fptosi float %1339 to i32
  %1341 = bitcast i32 %1340 to float
  %1342 = fmul fast float %1334, %1322
  %1343 = fmul fast float %1341, %1322
  %1344 = fsub fast float %1327, %1342
  %1345 = fadd fast float %1343, %1327
  %1346 = call float @dx.op.unary.f32(i32 7, float %1344)  ; Saturate(value)
  %1347 = call float @dx.op.unary.f32(i32 7, float %1345)  ; Saturate(value)
  %1348 = fsub fast float %1316, %1346
  %1349 = fsub fast float %1347, %1346
  %1350 = bitcast float %1349 to i32
  %1351 = sub nsw i32 2129859010, %1350
  %1352 = bitcast i32 %1351 to float
  %1353 = fmul fast float %1352, %1348
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  br label %1355

; <label>:1355                                    ; preds = %1309, %1304
  %1356 = phi float [ %1354, %1309 ], [ %518, %1304 ]
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 128
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1377, label %1361

; <label>:1361                                    ; preds = %1355
  %1362 = add i32 %48, 476
  %1363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1362, i32 undef)  ; BufferLoad(srv,index,wot)
  %1364 = extractvalue %dx.types.ResRet.i32 %1363, 0
  %1365 = add i32 %1364, 0
  %1366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1366, %dx.types.Handle %104, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 524288
  %1372 = icmp ne i32 %1371, 0
  %1373 = fcmp fast ogt float %1368, 0x3FE0101020000000
  %1374 = select i1 %1373, float 1.000000e+00, float 0.000000e+00
  %1375 = select i1 %1372, float %1374, float %1368
  %1376 = fmul fast float %1375, %1356
  br label %1377

; <label>:1377                                    ; preds = %1361, %1355
  %1378 = phi float [ %1376, %1361 ], [ %1356, %1355 ]
  %1379 = fcmp fast ult float %1378, 0x3F70101020000000
  br i1 %1379, label %2118, label %1380

; <label>:1380                                    ; preds = %1377
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = and i32 %1382, 16
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1583, label %1385

; <label>:1385                                    ; preds = %1380
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = add i32 %48, 428
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1388, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = add i32 %1390, 0
  %1392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1392, %dx.types.Handle %103, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1394 = extractvalue %dx.types.ResRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.ResRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.ResRet.f32 %1393, 2
  %1397 = extractvalue %dx.types.ResRet.f32 %1393, 3
  %1398 = and i32 %1387, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = lshr i32 %1387, 8
  %1401 = and i32 %1400, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1397, %1399
  %1404 = fadd fast float %1403, %1402
  %1405 = fmul fast float %1404, 0x3F70101000000000
  %1406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1407 = extractvalue %dx.types.ResRet.i32 %1406, 0
  %1408 = and i32 %1407, 512
  %1409 = icmp eq i32 %1408, 0
  br i1 %1409, label %1418, label %1410

; <label>:1410                                    ; preds = %1385
  %1411 = add i32 %48, 512
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1411, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = add i32 %1413, 0
  %1415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1415, %dx.types.Handle %104, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1417 = extractvalue %dx.types.ResRet.f32 %1416, 0
  br label %1418

; <label>:1418                                    ; preds = %1410, %1385
  %1419 = phi float [ %1417, %1410 ], [ 1.000000e+00, %1385 ]
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 33554432
  %1423 = icmp eq i32 %1422, 0
  br i1 %1423, label %1530, label %1424

; <label>:1424                                    ; preds = %1418
  %1425 = add i32 %48, 240
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1425, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 65535
  %1429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1428)  ; LegacyF16ToF32(value)
  %1430 = lshr i32 %1427, 16
  %1431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1430)  ; LegacyF16ToF32(value)
  %1432 = add i32 %48, 244
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 65535
  %1436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1435)  ; LegacyF16ToF32(value)
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = lshr i32 %1438, 24
  %1440 = uitofp i32 %1439 to float
  %1441 = fmul fast float %1440, 0x3F70101020000000
  %1442 = and i32 %1438, 255
  %1443 = uitofp i32 %1442 to float
  %1444 = fmul fast float %1443, 0x3F70101020000000
  %1445 = lshr i32 %1438, 8
  %1446 = and i32 %1445, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = fmul fast float %1447, 0x3F70101020000000
  %1449 = lshr i32 %1438, 16
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1451, 0x3F70101020000000
  %1453 = add i32 %48, 236
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1470 = bitcast float %1394 to i32
  %1471 = ashr i32 %1470, 1
  %1472 = sub nsw i32 1597463174, %1471
  %1473 = bitcast i32 %1472 to float
  %1474 = fmul fast float %1394, 5.000000e-01
  %1475 = fmul fast float %1473, %1473
  %1476 = fmul fast float %1475, %1474
  %1477 = fsub fast float 1.500000e+00, %1476
  %1478 = fmul fast float %1473, %1394
  %1479 = fmul fast float %1478, %1477
  %1480 = bitcast float %1395 to i32
  %1481 = ashr i32 %1480, 1
  %1482 = sub nsw i32 1597463174, %1481
  %1483 = bitcast i32 %1482 to float
  %1484 = fmul fast float %1395, 5.000000e-01
  %1485 = fmul fast float %1483, %1483
  %1486 = fmul fast float %1485, %1484
  %1487 = fsub fast float 1.500000e+00, %1486
  %1488 = fmul fast float %1483, %1395
  %1489 = fmul fast float %1488, %1487
  %1490 = bitcast float %1396 to i32
  %1491 = ashr i32 %1490, 1
  %1492 = sub nsw i32 1597463174, %1491
  %1493 = bitcast i32 %1492 to float
  %1494 = fmul fast float %1396, 5.000000e-01
  %1495 = fmul fast float %1493, %1493
  %1496 = fmul fast float %1495, %1494
  %1497 = fsub fast float 1.500000e+00, %1496
  %1498 = fmul fast float %1493, %1396
  %1499 = fmul fast float %1498, %1497
  %1500 = fsub fast float %1479, %1461
  %1501 = fsub fast float %1489, %1465
  %1502 = fsub fast float %1499, %1469
  %1503 = fmul fast float %1500, %1429
  %1504 = fmul fast float %1501, %1431
  %1505 = fmul fast float %1502, %1436
  %1506 = fadd fast float %1503, %1444
  %1507 = fadd fast float %1504, %1448
  %1508 = fadd fast float %1505, %1452
  %1509 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1510 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1512 = fmul fast float %1509, %1509
  %1513 = fmul fast float %1510, %1510
  %1514 = fmul fast float %1511, %1511
  %1515 = fsub fast float %1512, %1394
  %1516 = fsub fast float %1513, %1395
  %1517 = fsub fast float %1514, %1396
  %1518 = fmul fast float %1515, %1419
  %1519 = fmul fast float %1516, %1419
  %1520 = fmul fast float %1517, %1419
  %1521 = fadd fast float %1518, %1394
  %1522 = fadd fast float %1519, %1395
  %1523 = fadd fast float %1520, %1396
  %1524 = fadd fast float %1441, %1405
  %1525 = fsub fast float %1524, %1458
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  %1527 = fsub fast float %1526, %1405
  %1528 = fmul fast float %1527, %1419
  %1529 = fadd fast float %1528, %1405
  br label %1583

; <label>:1530                                    ; preds = %1418
  %1531 = and i32 %1421, 134217728
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1567, label %1533

; <label>:1533                                    ; preds = %1530
  %1534 = call float @dx.op.unary.f32(i32 24, float %350)  ; Sqrt(value)
  %1535 = call float @dx.op.unary.f32(i32 24, float %354)  ; Sqrt(value)
  %1536 = call float @dx.op.unary.f32(i32 24, float %358)  ; Sqrt(value)
  %1537 = fadd fast float %1534, -5.000000e-01
  %1538 = fadd fast float %1535, -5.000000e-01
  %1539 = fadd fast float %1536, -5.000000e-01
  %1540 = fmul fast float %1537, %1419
  %1541 = fmul fast float %1538, %1419
  %1542 = fmul fast float %1539, %1419
  %1543 = fadd fast float %1540, 5.000000e-01
  %1544 = fadd fast float %1541, 5.000000e-01
  %1545 = fadd fast float %1542, 5.000000e-01
  %1546 = call float @dx.op.unary.f32(i32 24, float %1394)  ; Sqrt(value)
  %1547 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1548 = call float @dx.op.unary.f32(i32 24, float %1396)  ; Sqrt(value)
  %1549 = fmul fast float %1543, 2.000000e+00
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = fmul fast float %1550, %1546
  %1552 = fadd fast float %1551, %1549
  %1553 = fmul fast float %1552, %1546
  %1554 = fmul fast float %1544, 2.000000e+00
  %1555 = fsub fast float 1.000000e+00, %1554
  %1556 = fmul fast float %1555, %1547
  %1557 = fadd fast float %1556, %1554
  %1558 = fmul fast float %1557, %1547
  %1559 = fmul fast float %1545, 2.000000e+00
  %1560 = fsub fast float 1.000000e+00, %1559
  %1561 = fmul fast float %1560, %1548
  %1562 = fadd fast float %1561, %1559
  %1563 = fmul fast float %1562, %1548
  %1564 = fmul fast float %1553, %1553
  %1565 = fmul fast float %1558, %1558
  %1566 = fmul fast float %1563, %1563
  br label %1583

; <label>:1567                                    ; preds = %1530
  %1568 = fmul fast float %350, %350
  %1569 = fmul fast float %354, %354
  %1570 = fmul fast float %358, %358
  %1571 = fadd fast float %1568, -1.000000e+00
  %1572 = fadd fast float %1569, -1.000000e+00
  %1573 = fadd fast float %1570, -1.000000e+00
  %1574 = fmul fast float %1419, %1571
  %1575 = fmul fast float %1419, %1572
  %1576 = fmul fast float %1419, %1573
  %1577 = fadd fast float %1574, 1.000000e+00
  %1578 = fadd fast float %1575, 1.000000e+00
  %1579 = fadd fast float %1576, 1.000000e+00
  %1580 = fmul fast float %1577, %1394
  %1581 = fmul fast float %1578, %1395
  %1582 = fmul fast float %1579, %1396
  br label %1583

; <label>:1583                                    ; preds = %1567, %1533, %1424, %1380
  %1584 = phi float [ %1529, %1424 ], [ %1405, %1533 ], [ %1405, %1567 ], [ 0x3FA23C0BE0000000, %1380 ]
  %1585 = phi float [ %1521, %1424 ], [ %1564, %1533 ], [ %1580, %1567 ], [ 1.000000e+00, %1380 ]
  %1586 = phi float [ %1522, %1424 ], [ %1565, %1533 ], [ %1581, %1567 ], [ 1.000000e+00, %1380 ]
  %1587 = phi float [ %1523, %1424 ], [ %1566, %1533 ], [ %1582, %1567 ], [ 1.000000e+00, %1380 ]
  %1588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1589 = extractvalue %dx.types.CBufRet.i32 %1588, 1
  %1590 = and i32 %1589, 1
  %1591 = icmp ne i32 %1590, 0
  %1592 = add i32 %48, 356
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 32
  %1596 = icmp ne i32 %1595, 0
  %1597 = and i1 %1591, %1596
  %1598 = select i1 %1597, float 1.000000e+00, float %1585
  %1599 = select i1 %1597, float 0x3FD3333340000000, float %1586
  %1600 = select i1 %1597, float 0x3FD3333340000000, float %1587
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = and i32 %1602, 32
  %1604 = icmp eq i32 %1603, 0
  br i1 %1604, label %1677, label %1605

; <label>:1605                                    ; preds = %1583
  %1606 = add i32 %48, 108
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = add i32 %48, 444
  %1610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.i32 %1610, 0
  %1612 = add i32 %1611, 0
  %1613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1613, %dx.types.Handle %103, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = extractvalue %dx.types.ResRet.f32 %1614, 1
  %1617 = extractvalue %dx.types.ResRet.f32 %1614, 2
  %1618 = extractvalue %dx.types.ResRet.f32 %1614, 3
  %1619 = and i32 %1608, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = lshr i32 %1608, 8
  %1622 = and i32 %1621, 255
  %1623 = uitofp i32 %1622 to float
  %1624 = lshr i32 %1608, 16
  %1625 = and i32 %1624, 255
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, 0x3F70101000000000
  %1628 = fmul fast float %1615, %1620
  %1629 = fadd fast float %1628, %1623
  %1630 = fmul fast float %1629, 0x3F70101000000000
  %1631 = fadd fast float %1616, -5.000000e-01
  %1632 = fadd fast float %1618, -5.000000e-01
  %1633 = fmul fast float %1631, %1627
  %1634 = fmul fast float %1632, %1627
  %1635 = fadd fast float %1633, 5.000000e-01
  %1636 = fadd fast float %1634, 5.000000e-01
  %1637 = fmul fast float %1635, 2.000000e+00
  %1638 = fadd fast float %1637, -1.000000e+00
  %1639 = fmul fast float %1636, 2.000000e+00
  %1640 = fadd fast float %1639, -1.000000e+00
  %1641 = fadd fast float %1638, %1640
  %1642 = fmul fast float %1641, 5.000000e-01
  %1643 = fsub fast float %1638, %1640
  %1644 = fmul fast float %1643, 5.000000e-01
  %1645 = call float @dx.op.unary.f32(i32 6, float %1642)  ; FAbs(value)
  %1646 = fsub fast float 1.000000e+00, %1645
  %1647 = call float @dx.op.unary.f32(i32 6, float %1644)  ; FAbs(value)
  %1648 = fsub fast float %1646, %1647
  %1649 = call float @dx.op.dot3.f32(i32 55, float %1642, float %1644, float %1648, float %1642, float %1644, float %1648)  ; Dot3(ax,ay,az,bx,by,bz)
  %1650 = call float @dx.op.unary.f32(i32 25, float %1649)  ; Rsqrt(value)
  %1651 = fmul fast float %1642, %1650
  %1652 = fmul fast float %1644, %1650
  %1653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1654 = extractvalue %dx.types.ResRet.i32 %1653, 0
  %1655 = and i32 %1654, 67108864
  %1656 = icmp eq i32 %1655, 0
  br i1 %1656, label %1673, label %1657

; <label>:1657                                    ; preds = %1605
  %1658 = add i32 %48, 296
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1658, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = and i32 %1660, 65535
  %1662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1661)  ; LegacyF16ToF32(value)
  %1663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1664 = extractvalue %dx.types.ResRet.i32 %1663, 0
  %1665 = and i32 %1664, 65535
  %1666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1665)  ; LegacyF16ToF32(value)
  %1667 = lshr i32 %1660, 16
  %1668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1667)  ; LegacyF16ToF32(value)
  %1669 = fsub fast float %1630, %1668
  %1670 = fmul fast float %1669, %1662
  %1671 = fadd fast float %1670, %1666
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  br label %1673

; <label>:1673                                    ; preds = %1657, %1605
  %1674 = phi float [ %1672, %1657 ], [ %1630, %1605 ]
  %1675 = call float @dx.op.dot2.f32(i32 54, float %1651, float %1652, float %1209, float %1210)  ; Dot2(ax,ay,bx,by)
  %1676 = call float @dx.op.dot2.f32(i32 54, float %1651, float %1652, float %1211, float %1212)  ; Dot2(ax,ay,bx,by)
  br label %1677

; <label>:1677                                    ; preds = %1673, %1583
  %1678 = phi float [ %1674, %1673 ], [ 0x3FD6666660000000, %1583 ]
  %1679 = phi float [ %1675, %1673 ], [ 0.000000e+00, %1583 ]
  %1680 = phi float [ %1676, %1673 ], [ 0.000000e+00, %1583 ]
  %1681 = phi float [ %1617, %1673 ], [ 1.000000e+00, %1583 ]
  %1682 = add i32 %48, 176
  %1683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1684 = extractvalue %dx.types.ResRet.i32 %1683, 0
  %1685 = lshr i32 %1684, 22
  %1686 = shl nuw nsw i32 %1685, 5
  %1687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1686)  ; LegacyF16ToF32(value)
  %1688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1689 = extractvalue %dx.types.ResRet.i32 %1688, 0
  %1690 = and i32 %1689, 64
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1725, label %1692

; <label>:1692                                    ; preds = %1677
  %1693 = add i32 %48, 460
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = add i32 %1695, 0
  %1697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1699 = extractvalue %dx.types.ResRet.i32 %1698, 0
  %1700 = and i32 %1699, 131072
  %1701 = icmp eq i32 %1700, 0
  %1702 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1697, %dx.types.Handle %103, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1703 = extractvalue %dx.types.ResRet.f32 %1702, 0
  %1704 = extractvalue %dx.types.ResRet.f32 %1702, 1
  %1705 = extractvalue %dx.types.ResRet.f32 %1702, 2
  %1706 = fmul fast float %1703, %338
  %1707 = fmul fast float %1704, %341
  %1708 = fmul fast float %1705, %344
  br i1 %1701, label %1715, label %1709

; <label>:1709                                    ; preds = %1692
  %1710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1711 = extractvalue %dx.types.CBufRet.f32 %1710, 0
  %1712 = fmul fast float %1711, %1706
  %1713 = fmul fast float %1711, %1707
  %1714 = fmul fast float %1711, %1708
  br label %1715

; <label>:1715                                    ; preds = %1709, %1692
  %1716 = phi float [ %1712, %1709 ], [ %1706, %1692 ]
  %1717 = phi float [ %1713, %1709 ], [ %1707, %1692 ]
  %1718 = phi float [ %1714, %1709 ], [ %1708, %1692 ]
  %1719 = fmul fast float %1716, %1687
  %1720 = select i1 %279, float %1719, float %1716
  %1721 = call float @dx.op.dot3.f32(i32 55, float %1720, float %1717, float %1718, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1722 = select i1 %279, float 0.000000e+00, float %1716
  %1723 = select i1 %279, float %1721, float %1717
  %1724 = select i1 %279, float 0.000000e+00, float %1718
  br label %1725

; <label>:1725                                    ; preds = %1715, %1677
  %1726 = phi float [ %1722, %1715 ], [ 0.000000e+00, %1677 ]
  %1727 = phi float [ %1723, %1715 ], [ 0.000000e+00, %1677 ]
  %1728 = phi float [ %1724, %1715 ], [ 0.000000e+00, %1677 ]
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = and i32 %1730, 1024
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %1763, label %1733

; <label>:1733                                    ; preds = %1725
  %1734 = add i32 %48, 168
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = and i32 %1736, 255
  %1738 = uitofp i32 %1737 to float
  %1739 = fmul fast float %1738, 0x3F70101020000000
  %1740 = lshr i32 %1736, 8
  %1741 = and i32 %1740, 255
  %1742 = uitofp i32 %1741 to float
  %1743 = fmul fast float %1742, 0x3F70101020000000
  %1744 = lshr i32 %1736, 16
  %1745 = and i32 %1744, 255
  %1746 = uitofp i32 %1745 to float
  %1747 = fmul fast float %1746, 0x3F70101020000000
  %1748 = fmul fast float %1739, %1739
  %1749 = fmul fast float %1743, %1743
  %1750 = fmul fast float %1747, %1747
  %1751 = add i32 %48, 528
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = add i32 %1753, 0
  %1755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1756 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1755, %dx.types.Handle %104, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = extractvalue %dx.types.ResRet.f32 %1756, 1
  %1759 = extractvalue %dx.types.ResRet.f32 %1756, 2
  %1760 = fmul fast float %1748, %1757
  %1761 = fmul fast float %1749, %1758
  %1762 = fmul fast float %1750, %1759
  br label %1763

; <label>:1763                                    ; preds = %1733, %1725
  %1764 = phi float [ %1760, %1733 ], [ 0.000000e+00, %1725 ]
  %1765 = phi float [ %1761, %1733 ], [ 0.000000e+00, %1725 ]
  %1766 = phi float [ %1762, %1733 ], [ 0.000000e+00, %1725 ]
  %1767 = fcmp fast ogt float %1764, 0.000000e+00
  %1768 = fcmp fast ogt float %1765, 0.000000e+00
  %1769 = fcmp fast ogt float %1766, 0.000000e+00
  %1770 = call float @dx.op.unary.f32(i32 23, float %1764)  ; Log(value)
  %1771 = call float @dx.op.unary.f32(i32 23, float %1765)  ; Log(value)
  %1772 = call float @dx.op.unary.f32(i32 23, float %1766)  ; Log(value)
  %1773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1774 = extractvalue %dx.types.ResRet.i32 %1773, 0
  %1775 = lshr i32 %1774, 7
  %1776 = and i32 %1775, 32752
  %1777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1776)  ; LegacyF16ToF32(value)
  %1778 = fmul fast float %1770, 0xBFE62E4300000000
  %1779 = fmul fast float %1778, %1777
  %1780 = fmul fast float %1771, 0xBFE62E4300000000
  %1781 = fmul fast float %1780, %1777
  %1782 = fmul fast float %1772, 0xBFE62E4300000000
  %1783 = fmul fast float %1782, %1777
  %1784 = select i1 %1767, float %1779, float 1.270000e+02
  %1785 = select i1 %1768, float %1781, float 1.270000e+02
  %1786 = select i1 %1769, float %1783, float 1.270000e+02
  %1787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1788 = extractvalue %dx.types.ResRet.i32 %1787, 0
  %1789 = and i32 %1788, 10240
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1835, label %1791

; <label>:1791                                    ; preds = %1763
  %1792 = add i32 %48, 544
  %1793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1792, i32 undef)  ; BufferLoad(srv,index,wot)
  %1794 = extractvalue %dx.types.ResRet.i32 %1793, 0
  %1795 = add i32 %1794, 0
  %1796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1797 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1796, %dx.types.Handle %104, float %1305, float %1306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1798 = extractvalue %dx.types.ResRet.f32 %1797, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1797, 3
  %1800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.i32 %1800, 0
  %1802 = and i32 %1801, 1048576
  %1803 = icmp ne i32 %1802, 0
  %1804 = and i32 %1801, 8192
  %1805 = icmp eq i32 %1804, 0
  br i1 %1805, label %1821, label %1806

; <label>:1806                                    ; preds = %1791
  %1807 = extractvalue %dx.types.ResRet.f32 %1797, 2
  %1808 = select i1 %1803, float %1807, float %1798
  %1809 = extractvalue %dx.types.ResRet.f32 %1797, 0
  %1810 = select i1 %1803, float %1809, float %1798
  %1811 = add i32 %48, 112
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = lshr i32 %1813, 16
  %1815 = and i32 %1814, 255
  %1816 = uitofp i32 %1815 to float
  %1817 = fmul fast float %1816, 0x3F80101020000000
  %1818 = fmul fast float %1817, %1810
  %1819 = fmul fast float %1817, %1798
  %1820 = fmul fast float %1817, %1808
  br label %1821

; <label>:1821                                    ; preds = %1806, %1791
  %1822 = phi float [ %1818, %1806 ], [ 0.000000e+00, %1791 ]
  %1823 = phi float [ %1819, %1806 ], [ 0.000000e+00, %1791 ]
  %1824 = phi float [ %1820, %1806 ], [ 0.000000e+00, %1791 ]
  %1825 = and i32 %1801, 2048
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %1835, label %1827

; <label>:1827                                    ; preds = %1821
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1682, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = shl i32 %1829, 4
  %1831 = and i32 %1830, 32752
  %1832 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1831)  ; LegacyF16ToF32(value)
  %1833 = fmul fast float %1832, %1799
  %1834 = call float @dx.op.binary.f32(i32 35, float %1833, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1835

; <label>:1835                                    ; preds = %1827, %1821, %1763
  %1836 = phi float [ %1822, %1827 ], [ %1822, %1821 ], [ 0.000000e+00, %1763 ]
  %1837 = phi float [ %1823, %1827 ], [ %1823, %1821 ], [ 0.000000e+00, %1763 ]
  %1838 = phi float [ %1824, %1827 ], [ %1824, %1821 ], [ 0.000000e+00, %1763 ]
  %1839 = phi float [ %1834, %1827 ], [ 0x3F70101020000000, %1821 ], [ 0x3F70101020000000, %1763 ]
  %1840 = add i32 %48, 112
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 255
  %1844 = uitofp i32 %1843 to float
  %1845 = lshr i32 %1842, 8
  %1846 = and i32 %1845, 255
  %1847 = uitofp i32 %1846 to float
  %1848 = call float @dx.op.dot3.f32(i32 55, float %1598, float %1599, float %1600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1849 = fmul fast float %1847, %1848
  %1850 = fadd fast float %1849, %1844
  %1851 = fmul fast float %1850, 0x3F70101020000000
  %1852 = call float @dx.op.unary.f32(i32 7, float %1851)  ; Saturate(value)
  br i1 %1197, label %1853, label %1888

; <label>:1853                                    ; preds = %1835
  %1854 = fmul fast float %1839, 2.000000e+00
  %1855 = fcmp fast olt float %1784, 1.270000e+02
  %1856 = fcmp fast olt float %1785, 1.270000e+02
  %1857 = fcmp fast olt float %1786, 1.270000e+02
  %1858 = fmul fast float %1784, 0xBFF7154760000000
  %1859 = fmul fast float %1858, %1854
  %1860 = fmul fast float %1785, 0xBFF7154760000000
  %1861 = fmul fast float %1860, %1854
  %1862 = fmul fast float %1786, 0xBFF7154760000000
  %1863 = fmul fast float %1862, %1854
  %1864 = call float @dx.op.unary.f32(i32 21, float %1859)  ; Exp(value)
  %1865 = call float @dx.op.unary.f32(i32 21, float %1861)  ; Exp(value)
  %1866 = call float @dx.op.unary.f32(i32 21, float %1863)  ; Exp(value)
  %1867 = call float @dx.op.unary.f32(i32 7, float %1864)  ; Saturate(value)
  %1868 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1869 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1870 = fadd fast float %1867, -1.000000e+00
  %1871 = select i1 %1855, float %1870, float -1.000000e+00
  %1872 = fadd fast float %1868, -1.000000e+00
  %1873 = select i1 %1856, float %1872, float -1.000000e+00
  %1874 = fadd fast float %1869, -1.000000e+00
  %1875 = select i1 %1857, float %1874, float -1.000000e+00
  %1876 = fmul fast float %1871, %1378
  %1877 = fmul fast float %1873, %1378
  %1878 = fmul fast float %1875, %1378
  %1879 = fadd fast float %1876, 1.000000e+00
  %1880 = fadd fast float %1877, 1.000000e+00
  %1881 = fadd fast float %1878, 1.000000e+00
  %1882 = fmul fast float %1879, %1178
  %1883 = fmul fast float %1880, %1179
  %1884 = fmul fast float %1881, %1180
  %1885 = fmul fast float %1879, %1181
  %1886 = fmul fast float %1880, %1182
  %1887 = fmul fast float %1881, %1183
  br label %1888

; <label>:1888                                    ; preds = %1853, %1835
  %1889 = phi float [ %1882, %1853 ], [ %1178, %1835 ]
  %1890 = phi float [ %1883, %1853 ], [ %1179, %1835 ]
  %1891 = phi float [ %1884, %1853 ], [ %1180, %1835 ]
  %1892 = phi float [ %1885, %1853 ], [ %1181, %1835 ]
  %1893 = phi float [ %1886, %1853 ], [ %1182, %1835 ]
  %1894 = phi float [ %1887, %1853 ], [ %1183, %1835 ]
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = and i32 %1896, 3
  %1898 = icmp eq i32 %1897, 3
  br i1 %1898, label %1977, label %1899

; <label>:1899                                    ; preds = %1888
  %1900 = and i32 %1896, 16
  %1901 = icmp ne i32 %1900, 0
  %1902 = select i1 %1901, float %1378, float 0.000000e+00
  %1903 = icmp eq i32 %1897, 0
  br i1 %1903, label %1904, label %1932

; <label>:1904                                    ; preds = %1899
  %1905 = and i32 %1896, 64
  %1906 = icmp ne i32 %1905, 0
  %1907 = select i1 %1906, float %1378, float 0.000000e+00
  %1908 = fsub fast float %1598, %1889
  %1909 = fsub fast float %1599, %1890
  %1910 = fsub fast float %1600, %1891
  %1911 = fmul fast float %1902, %1908
  %1912 = fmul fast float %1902, %1909
  %1913 = fmul fast float %1902, %1910
  %1914 = fadd fast float %1911, %1889
  %1915 = fadd fast float %1912, %1890
  %1916 = fadd fast float %1913, %1891
  %1917 = fsub fast float %1584, %1190
  %1918 = fmul fast float %1902, %1917
  %1919 = fadd fast float %1918, %1190
  %1920 = fsub fast float %1726, %1892
  %1921 = fsub fast float %1727, %1893
  %1922 = fsub fast float %1728, %1894
  %1923 = fmul fast float %1907, %1920
  %1924 = fmul fast float %1907, %1921
  %1925 = fmul fast float %1907, %1922
  %1926 = fadd fast float %1923, %1892
  %1927 = fadd fast float %1924, %1893
  %1928 = fadd fast float %1925, %1894
  %1929 = fsub fast float %1852, %1195
  %1930 = fmul fast float %1902, %1929
  %1931 = fadd fast float %1930, %1195
  br label %1977

; <label>:1932                                    ; preds = %1899
  %1933 = icmp eq i32 %1897, 1
  br i1 %1933, label %1934, label %1947

; <label>:1934                                    ; preds = %1932
  %1935 = fadd fast float %1598, -1.000000e+00
  %1936 = fadd fast float %1599, -1.000000e+00
  %1937 = fadd fast float %1600, -1.000000e+00
  %1938 = fmul fast float %1902, %1935
  %1939 = fmul fast float %1902, %1936
  %1940 = fmul fast float %1902, %1937
  %1941 = fadd fast float %1938, 1.000000e+00
  %1942 = fadd fast float %1939, 1.000000e+00
  %1943 = fadd fast float %1940, 1.000000e+00
  %1944 = fmul fast float %1941, %1889
  %1945 = fmul fast float %1942, %1890
  %1946 = fmul fast float %1943, %1891
  br label %1977

; <label>:1947                                    ; preds = %1932
  %1948 = icmp eq i32 %1897, 2
  br i1 %1948, label %1949, label %1977

; <label>:1949                                    ; preds = %1947
  %1950 = call float @dx.op.unary.f32(i32 24, float %1598)  ; Sqrt(value)
  %1951 = call float @dx.op.unary.f32(i32 24, float %1599)  ; Sqrt(value)
  %1952 = call float @dx.op.unary.f32(i32 24, float %1600)  ; Sqrt(value)
  %1953 = fadd fast float %1950, -5.000000e-01
  %1954 = fadd fast float %1951, -5.000000e-01
  %1955 = fadd fast float %1952, -5.000000e-01
  %1956 = fmul fast float %1953, %1902
  %1957 = fmul fast float %1954, %1902
  %1958 = fmul fast float %1955, %1902
  %1959 = fadd fast float %1956, 5.000000e-01
  %1960 = fadd fast float %1957, 5.000000e-01
  %1961 = fadd fast float %1958, 5.000000e-01
  %1962 = fmul fast float %1959, 2.000000e+00
  %1963 = fsub fast float 1.000000e+00, %1962
  %1964 = fmul fast float %1963, %1889
  %1965 = fadd fast float %1964, %1962
  %1966 = fmul fast float %1965, %1889
  %1967 = fmul fast float %1960, 2.000000e+00
  %1968 = fsub fast float 1.000000e+00, %1967
  %1969 = fmul fast float %1968, %1890
  %1970 = fadd fast float %1969, %1967
  %1971 = fmul fast float %1970, %1890
  %1972 = fmul fast float %1961, 2.000000e+00
  %1973 = fsub fast float 1.000000e+00, %1972
  %1974 = fmul fast float %1973, %1891
  %1975 = fadd fast float %1974, %1972
  %1976 = fmul fast float %1975, %1891
  br label %1977

; <label>:1977                                    ; preds = %1949, %1947, %1934, %1904, %1888
  %1978 = phi float [ %1889, %1888 ], [ %1966, %1949 ], [ %1889, %1947 ], [ %1944, %1934 ], [ %1914, %1904 ]
  %1979 = phi float [ %1890, %1888 ], [ %1971, %1949 ], [ %1890, %1947 ], [ %1945, %1934 ], [ %1915, %1904 ]
  %1980 = phi float [ %1891, %1888 ], [ %1976, %1949 ], [ %1891, %1947 ], [ %1946, %1934 ], [ %1916, %1904 ]
  %1981 = phi float [ %1892, %1888 ], [ %1892, %1949 ], [ %1892, %1947 ], [ %1892, %1934 ], [ %1926, %1904 ]
  %1982 = phi float [ %1893, %1888 ], [ %1893, %1949 ], [ %1893, %1947 ], [ %1893, %1934 ], [ %1927, %1904 ]
  %1983 = phi float [ %1894, %1888 ], [ %1894, %1949 ], [ %1894, %1947 ], [ %1894, %1934 ], [ %1928, %1904 ]
  %1984 = phi float [ %1190, %1888 ], [ %1190, %1949 ], [ %1190, %1947 ], [ %1190, %1934 ], [ %1919, %1904 ]
  %1985 = phi float [ %1195, %1888 ], [ %1195, %1949 ], [ %1195, %1947 ], [ %1195, %1934 ], [ %1931, %1904 ]
  %1986 = and i32 %1896, 12
  %1987 = icmp eq i32 %1986, 12
  br i1 %1987, label %2118, label %1988

; <label>:1988                                    ; preds = %1977
  %1989 = and i32 %1896, 2097184
  %1990 = icmp eq i32 %1989, 2097184
  %1991 = select i1 %1990, float %1378, float 0.000000e+00
  %1992 = and i32 %1896, 4194336
  %1993 = icmp eq i32 %1992, 4194336
  %1994 = select i1 %1993, float %1378, float 0.000000e+00
  %1995 = and i32 %1896, 8388640
  %1996 = icmp eq i32 %1995, 8388640
  %1997 = select i1 %1996, float %1378, float 0.000000e+00
  %1998 = and i32 %1896, 1024
  %1999 = icmp ne i32 %1998, 0
  %2000 = select i1 %1999, float %1378, float 0.000000e+00
  %2001 = and i32 %1896, 2048
  %2002 = icmp ne i32 %2001, 0
  %2003 = select i1 %2002, float %1378, float 0.000000e+00
  %2004 = and i32 %1896, 8192
  %2005 = icmp ne i32 %2004, 0
  %2006 = select i1 %2005, float %1378, float 0.000000e+00
  %2007 = icmp eq i32 %1986, 0
  br i1 %2007, label %2008, label %2042

; <label>:2008                                    ; preds = %1988
  %2009 = fsub fast float %1679, %1176
  %2010 = fsub fast float %1680, %1177
  %2011 = fmul fast float %1991, %2009
  %2012 = fmul fast float %1991, %2010
  %2013 = fadd fast float %2011, %1176
  %2014 = fadd fast float %2012, %1177
  %2015 = fsub fast float %1681, %1193
  %2016 = fmul fast float %1994, %2015
  %2017 = fadd fast float %2016, %1193
  %2018 = fsub fast float %1678, %1192
  %2019 = fmul fast float %1997, %2018
  %2020 = fadd fast float %2019, %1192
  %2021 = fsub fast float %1784, %1184
  %2022 = fsub fast float %1785, %1185
  %2023 = fsub fast float %1786, %1186
  %2024 = fmul fast float %2000, %2021
  %2025 = fmul fast float %2000, %2022
  %2026 = fmul fast float %2000, %2023
  %2027 = fadd fast float %2024, %1184
  %2028 = fadd fast float %2025, %1185
  %2029 = fadd fast float %2026, %1186
  %2030 = fsub fast float %1839, %1194
  %2031 = fmul fast float %2003, %2030
  %2032 = fadd fast float %2031, %1194
  %2033 = fsub fast float %1836, %1187
  %2034 = fsub fast float %1837, %1188
  %2035 = fsub fast float %1838, %1189
  %2036 = fmul fast float %2006, %2033
  %2037 = fmul fast float %2006, %2034
  %2038 = fmul fast float %2006, %2035
  %2039 = fadd fast float %2036, %1187
  %2040 = fadd fast float %2037, %1188
  %2041 = fadd fast float %2038, %1189
  br label %2118

; <label>:2042                                    ; preds = %1988
  %2043 = icmp eq i32 %1986, 4
  br i1 %2043, label %2044, label %2090

; <label>:2044                                    ; preds = %2042
  %2045 = fmul fast float %1991, %1679
  %2046 = fmul fast float %1991, %1680
  %2047 = fadd fast float %2045, %1176
  %2048 = fadd fast float %2046, %1177
  %2049 = call float @dx.op.binary.f32(i32 36, float %1193, float %1681)  ; FMin(a,b)
  %2050 = fsub fast float %2049, %1193
  %2051 = fmul fast float %2050, %1994
  %2052 = fadd fast float %2051, %1193
  %2053 = fadd fast float %1678, %1192
  %2054 = fmul fast float %2053, 0x3FF337FAE0000000
  %2055 = fmul fast float %1192, %1192
  %2056 = fmul fast float %1678, %1678
  %2057 = fadd fast float %2056, %2055
  %2058 = fmul fast float %2057, 0x3FE5152B00000000
  %2059 = fmul fast float %1192, 0xBFCC1F85E0000000
  %2060 = fmul fast float %2059, %1678
  %2061 = fadd fast float %2060, 0xBFE1363700000000
  %2062 = fadd fast float %2061, %2054
  %2063 = fsub fast float %2062, %2058
  %2064 = fmul fast float %2053, 0x3FBA6F0D00000000
  %2065 = fmul fast float %2057, 0x3FD0432880000000
  %2066 = fmul fast float %1192, 0xBFEF110800000000
  %2067 = fmul fast float %2066, %1678
  %2068 = fadd fast float %2067, 1.000000e+00
  %2069 = fsub fast float %2068, %2064
  %2070 = fadd fast float %2069, %2065
  %2071 = fdiv fast float %2063, %2070
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = fsub fast float %2072, %1192
  %2074 = fmul fast float %2073, %1997
  %2075 = fadd fast float %2074, %1192
  %2076 = fmul fast float %2000, %1784
  %2077 = fmul fast float %2000, %1785
  %2078 = fmul fast float %2000, %1786
  %2079 = fadd fast float %2076, %1184
  %2080 = fadd fast float %2077, %1185
  %2081 = fadd fast float %2078, %1186
  %2082 = fmul fast float %2003, %1839
  %2083 = fadd fast float %2082, %1194
  %2084 = fmul fast float %2006, %1836
  %2085 = fmul fast float %2006, %1837
  %2086 = fmul fast float %2006, %1838
  %2087 = fadd fast float %2084, %1187
  %2088 = fadd fast float %2085, %1188
  %2089 = fadd fast float %2086, %1189
  br label %2118

; <label>:2090                                    ; preds = %2042
  %2091 = icmp eq i32 %1986, 8
  br i1 %2091, label %2092, label %2118

; <label>:2092                                    ; preds = %2090
  %2093 = fmul fast float %1991, %1679
  %2094 = fmul fast float %1991, %1680
  %2095 = fadd fast float %2093, %1176
  %2096 = fadd fast float %2094, %1177
  %2097 = call float @dx.op.binary.f32(i32 36, float %1193, float %1681)  ; FMin(a,b)
  %2098 = fsub fast float %2097, %1193
  %2099 = fmul fast float %2098, %1994
  %2100 = fadd fast float %2099, %1193
  %2101 = fsub fast float %1678, %1192
  %2102 = fmul fast float %1997, %2101
  %2103 = fadd fast float %2102, %1192
  %2104 = fmul fast float %2000, %1784
  %2105 = fmul fast float %2000, %1785
  %2106 = fmul fast float %2000, %1786
  %2107 = fadd fast float %2104, %1184
  %2108 = fadd fast float %2105, %1185
  %2109 = fadd fast float %2106, %1186
  %2110 = fmul fast float %2003, %1839
  %2111 = fadd fast float %2110, %1194
  %2112 = fmul fast float %2006, %1836
  %2113 = fmul fast float %2006, %1837
  %2114 = fmul fast float %2006, %1838
  %2115 = fadd fast float %2112, %1187
  %2116 = fadd fast float %2113, %1188
  %2117 = fadd fast float %2114, %1189
  br label %2118

; <label>:2118                                    ; preds = %2092, %2090, %2044, %2008, %1977, %1377, %1196, %1175
  %2119 = phi float [ %1176, %1977 ], [ %1176, %1377 ], [ %1176, %1175 ], [ %2095, %2092 ], [ %1176, %2090 ], [ %2047, %2044 ], [ %2013, %2008 ], [ %1176, %1196 ]
  %2120 = phi float [ %1177, %1977 ], [ %1177, %1377 ], [ %1177, %1175 ], [ %2096, %2092 ], [ %1177, %2090 ], [ %2048, %2044 ], [ %2014, %2008 ], [ %1177, %1196 ]
  %2121 = phi float [ %1978, %1977 ], [ %1178, %1377 ], [ %1178, %1175 ], [ %1978, %2092 ], [ %1978, %2090 ], [ %1978, %2044 ], [ %1978, %2008 ], [ %1178, %1196 ]
  %2122 = phi float [ %1979, %1977 ], [ %1179, %1377 ], [ %1179, %1175 ], [ %1979, %2092 ], [ %1979, %2090 ], [ %1979, %2044 ], [ %1979, %2008 ], [ %1179, %1196 ]
  %2123 = phi float [ %1980, %1977 ], [ %1180, %1377 ], [ %1180, %1175 ], [ %1980, %2092 ], [ %1980, %2090 ], [ %1980, %2044 ], [ %1980, %2008 ], [ %1180, %1196 ]
  %2124 = phi float [ %1981, %1977 ], [ %1181, %1377 ], [ %1181, %1175 ], [ %1981, %2092 ], [ %1981, %2090 ], [ %1981, %2044 ], [ %1981, %2008 ], [ %1181, %1196 ]
  %2125 = phi float [ %1982, %1977 ], [ %1182, %1377 ], [ %1182, %1175 ], [ %1982, %2092 ], [ %1982, %2090 ], [ %1982, %2044 ], [ %1982, %2008 ], [ %1182, %1196 ]
  %2126 = phi float [ %1983, %1977 ], [ %1183, %1377 ], [ %1183, %1175 ], [ %1983, %2092 ], [ %1983, %2090 ], [ %1983, %2044 ], [ %1983, %2008 ], [ %1183, %1196 ]
  %2127 = phi float [ %1184, %1977 ], [ %1184, %1377 ], [ %1184, %1175 ], [ %2107, %2092 ], [ %1184, %2090 ], [ %2079, %2044 ], [ %2027, %2008 ], [ %1184, %1196 ]
  %2128 = phi float [ %1185, %1977 ], [ %1185, %1377 ], [ %1185, %1175 ], [ %2108, %2092 ], [ %1185, %2090 ], [ %2080, %2044 ], [ %2028, %2008 ], [ %1185, %1196 ]
  %2129 = phi float [ %1186, %1977 ], [ %1186, %1377 ], [ %1186, %1175 ], [ %2109, %2092 ], [ %1186, %2090 ], [ %2081, %2044 ], [ %2029, %2008 ], [ %1186, %1196 ]
  %2130 = phi float [ %1187, %1977 ], [ %1187, %1377 ], [ %1187, %1175 ], [ %2115, %2092 ], [ %1187, %2090 ], [ %2087, %2044 ], [ %2039, %2008 ], [ %1187, %1196 ]
  %2131 = phi float [ %1188, %1977 ], [ %1188, %1377 ], [ %1188, %1175 ], [ %2116, %2092 ], [ %1188, %2090 ], [ %2088, %2044 ], [ %2040, %2008 ], [ %1188, %1196 ]
  %2132 = phi float [ %1189, %1977 ], [ %1189, %1377 ], [ %1189, %1175 ], [ %2117, %2092 ], [ %1189, %2090 ], [ %2089, %2044 ], [ %2041, %2008 ], [ %1189, %1196 ]
  %2133 = phi float [ %1984, %1977 ], [ %1190, %1377 ], [ %1190, %1175 ], [ %1984, %2092 ], [ %1984, %2090 ], [ %1984, %2044 ], [ %1984, %2008 ], [ %1190, %1196 ]
  %2134 = phi float [ %1192, %1977 ], [ %1192, %1377 ], [ %1192, %1175 ], [ %2103, %2092 ], [ %1192, %2090 ], [ %2075, %2044 ], [ %2020, %2008 ], [ %1192, %1196 ]
  %2135 = phi float [ %1193, %1977 ], [ %1193, %1377 ], [ %1193, %1175 ], [ %2100, %2092 ], [ %1193, %2090 ], [ %2052, %2044 ], [ %2017, %2008 ], [ %1193, %1196 ]
  %2136 = phi float [ %1194, %1977 ], [ %1194, %1377 ], [ %1194, %1175 ], [ %2111, %2092 ], [ %1194, %2090 ], [ %2083, %2044 ], [ %2032, %2008 ], [ %1194, %1196 ]
  %2137 = phi float [ %1985, %1977 ], [ %1195, %1377 ], [ %1195, %1175 ], [ %1985, %2092 ], [ %1985, %2090 ], [ %1985, %2044 ], [ %1985, %2008 ], [ %1195, %1196 ]
  br i1 %465, label %3060, label %2138

; <label>:2138                                    ; preds = %2118
  %2139 = icmp ult i32 %521, 3
  %2140 = add i32 %48, 56
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = add i32 %48, 60
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = or i32 %2145, %2142
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %3060, label %2148

; <label>:2148                                    ; preds = %2138
  %2149 = and i32 %2142, 262144
  %2150 = icmp ne i32 %2149, 0
  %2151 = select i1 %2150, float %53, float 1.000000e+00
  %2152 = select i1 %2150, float %54, float 0.000000e+00
  %2153 = select i1 %2150, float %55, float 0.000000e+00
  %2154 = select i1 %2150, float %56, float 1.000000e+00
  %2155 = select i1 %2150, float %57, float %85
  %2156 = select i1 %2150, float %58, float %86
  %2157 = add i32 %48, 316
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = lshr i32 %2159, 16
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = fmul fast float %2161, 0x3F50624DE0000000
  %2163 = add i32 %48, 120
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = lshr i32 %2165, 16
  %2167 = and i32 %2166, 255
  %2168 = lshr i32 %2165, 24
  %2169 = add i32 %48, 324
  %2170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2169, i32 undef)  ; BufferLoad(srv,index,wot)
  %2171 = extractvalue %dx.types.ResRet.i32 %2170, 0
  %2172 = and i32 %2171, 65535
  %2173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2172)  ; LegacyF16ToF32(value)
  %2174 = lshr i32 %2171, 16
  %2175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2174)  ; LegacyF16ToF32(value)
  %2176 = add i32 %48, 64
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = lshr i32 %2178, 22
  %2180 = shl nuw nsw i32 %2179, 5
  %2181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2180)  ; LegacyF16ToF32(value)
  %2182 = shl i32 %2178, 4
  %2183 = and i32 %2182, 32752
  %2184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2183)  ; LegacyF16ToF32(value)
  %2185 = lshr i32 %2178, 7
  %2186 = and i32 %2185, 32752
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 3
  %2190 = fmul fast float %2189, 1.000000e+03
  %2191 = fmul fast float %415, %2190
  %2192 = call float @dx.op.unary.f32(i32 22, float %2191)  ; Frc(value)
  %2193 = fadd fast float %2192, %405
  %2194 = fmul fast float %416, %2190
  %2195 = call float @dx.op.unary.f32(i32 22, float %2194)  ; Frc(value)
  %2196 = fadd fast float %2195, %407
  %2197 = fmul fast float %2162, %2190
  %2198 = call float @dx.op.unary.f32(i32 22, float %2197)  ; Frc(value)
  %2199 = fmul fast float %2198, 0x401921FB60000000
  %2200 = fadd fast float %2199, %2181
  %2201 = call float @dx.op.unary.f32(i32 13, float %2200)  ; Sin(value)
  %2202 = call float @dx.op.unary.f32(i32 12, float %2200)  ; Cos(value)
  %2203 = fsub fast float -0.000000e+00, %2201
  %2204 = fadd fast float %2155, -5.000000e-01
  %2205 = fadd fast float %2156, -5.000000e-01
  %2206 = fmul fast float %2173, %2204
  %2207 = fmul fast float %2175, %2205
  %2208 = fadd fast float %2206, 5.000000e-01
  %2209 = fadd fast float %2207, 5.000000e-01
  %2210 = fmul fast float %2184, %2208
  %2211 = fmul fast float %2187, %2209
  %2212 = fmul fast float %2202, %2210
  %2213 = call float @dx.op.tertiary.f32(i32 46, float %2203, float %2211, float %2212)  ; FMad(a,b,c)
  %2214 = fmul fast float %2201, %2210
  %2215 = call float @dx.op.tertiary.f32(i32 46, float %2202, float %2211, float %2214)  ; FMad(a,b,c)
  %2216 = fadd fast float %2193, %2213
  %2217 = fadd fast float %2196, %2215
  %2218 = icmp ugt i32 %2167, 1
  %2219 = icmp ugt i32 %2165, 33554431
  %2220 = or i1 %2219, %2218
  br i1 %2220, label %2221, label %2246

; <label>:2221                                    ; preds = %2148
  %2222 = add i32 %48, 260
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = lshr i32 %2224, 16
  %2226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2225)  ; LegacyF16ToF32(value)
  %2227 = fmul fast float %2189, %2226
  %2228 = call float @dx.op.unary.f32(i32 22, float %2227)  ; Frc(value)
  %2229 = mul nuw nsw i32 %2167, %2168
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2228, %2230
  %2232 = call float @dx.op.unary.f32(i32 27, float %2231)  ; Round_ni(value)
  %2233 = fptoui float %2232 to i32
  %2234 = urem i32 %2233, %2167
  %2235 = udiv i32 %2233, %2168
  %2236 = call float @dx.op.unary.f32(i32 22, float %2216)  ; Frc(value)
  %2237 = call float @dx.op.unary.f32(i32 22, float %2217)  ; Frc(value)
  %2238 = uitofp i32 %2234 to float
  %2239 = uitofp i32 %2235 to float
  %2240 = fadd fast float %2236, %2238
  %2241 = fadd fast float %2237, %2239
  %2242 = uitofp i32 %2167 to float
  %2243 = uitofp i32 %2168 to float
  %2244 = fdiv fast float %2240, %2242
  %2245 = fdiv fast float %2241, %2243
  br label %2246

; <label>:2246                                    ; preds = %2221, %2148
  %2247 = phi float [ %2244, %2221 ], [ %2216, %2148 ]
  %2248 = phi float [ %2245, %2221 ], [ %2217, %2148 ]
  %2249 = and i32 %2142, 256
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2297, label %2251

; <label>:2251                                    ; preds = %2246
  %2252 = add i32 %48, 496
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = add i32 %2254, 0
  %2256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2256, %dx.types.Handle %104, float %2247, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  %2259 = add i32 %48, 132
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = shl i32 %2261, 4
  %2263 = and i32 %2262, 32752
  %2264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2263)  ; LegacyF16ToF32(value)
  %2265 = lshr i32 %2261, 7
  %2266 = and i32 %2265, 32752
  %2267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2266)  ; LegacyF16ToF32(value)
  %2268 = fsub fast float 1.000000e+00, %517
  %2269 = call float @dx.op.binary.f32(i32 35, float %2268, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2270 = bitcast float %517 to i32
  %2271 = sitofp i32 %2270 to float
  %2272 = fadd fast float %2271, 0xC1CFBF8940000000
  %2273 = fmul fast float %2267, %2272
  %2274 = fadd fast float %2273, 0x41CFBF8940000000
  %2275 = fptosi float %2274 to i32
  %2276 = bitcast i32 %2275 to float
  %2277 = bitcast float %2269 to i32
  %2278 = sitofp i32 %2277 to float
  %2279 = fadd fast float %2278, 0xC1CFBF8940000000
  %2280 = fmul fast float %2279, %2267
  %2281 = fadd fast float %2280, 0x41CFBF8940000000
  %2282 = fptosi float %2281 to i32
  %2283 = bitcast i32 %2282 to float
  %2284 = fmul fast float %2276, %2264
  %2285 = fmul fast float %2283, %2264
  %2286 = fsub fast float %2269, %2284
  %2287 = fadd fast float %2285, %2269
  %2288 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2289 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2290 = fsub fast float %2258, %2288
  %2291 = fsub fast float %2289, %2288
  %2292 = bitcast float %2291 to i32
  %2293 = sub nsw i32 2129859010, %2292
  %2294 = bitcast i32 %2293 to float
  %2295 = fmul fast float %2294, %2290
  %2296 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  br label %2297

; <label>:2297                                    ; preds = %2251, %2246
  %2298 = phi float [ %2296, %2251 ], [ %517, %2246 ]
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 128
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2319, label %2303

; <label>:2303                                    ; preds = %2297
  %2304 = add i32 %48, 480
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = add i32 %2306, 0
  %2308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2308, %dx.types.Handle %104, float %2247, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2310 = extractvalue %dx.types.ResRet.f32 %2309, 0
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 524288
  %2314 = icmp ne i32 %2313, 0
  %2315 = fcmp fast ogt float %2310, 0x3FE0101020000000
  %2316 = select i1 %2315, float 1.000000e+00, float 0.000000e+00
  %2317 = select i1 %2314, float %2316, float %2310
  %2318 = fmul fast float %2317, %2298
  br label %2319

; <label>:2319                                    ; preds = %2303, %2297
  %2320 = phi float [ %2318, %2303 ], [ %2298, %2297 ]
  %2321 = fcmp fast ult float %2320, 0x3F70101020000000
  br i1 %2321, label %3060, label %2322

; <label>:2322                                    ; preds = %2319
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 16
  %2326 = icmp eq i32 %2325, 0
  br i1 %2326, label %2525, label %2327

; <label>:2327                                    ; preds = %2322
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = add i32 %48, 432
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = add i32 %2332, 0
  %2334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2334, %dx.types.Handle %103, float %2247, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2336 = extractvalue %dx.types.ResRet.f32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.f32 %2335, 1
  %2338 = extractvalue %dx.types.ResRet.f32 %2335, 2
  %2339 = extractvalue %dx.types.ResRet.f32 %2335, 3
  %2340 = and i32 %2329, 255
  %2341 = uitofp i32 %2340 to float
  %2342 = lshr i32 %2329, 8
  %2343 = and i32 %2342, 255
  %2344 = uitofp i32 %2343 to float
  %2345 = fmul fast float %2339, %2341
  %2346 = fadd fast float %2345, %2344
  %2347 = fmul fast float %2346, 0x3F70101000000000
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 512
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2360, label %2352

; <label>:2352                                    ; preds = %2327
  %2353 = add i32 %48, 516
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = add i32 %2355, 0
  %2357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2357, %dx.types.Handle %104, float %2247, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2359 = extractvalue %dx.types.ResRet.f32 %2358, 0
  br label %2360

; <label>:2360                                    ; preds = %2352, %2327
  %2361 = phi float [ %2359, %2352 ], [ 1.000000e+00, %2327 ]
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = and i32 %2363, 33554432
  %2365 = icmp eq i32 %2364, 0
  br i1 %2365, label %2472, label %2366

; <label>:2366                                    ; preds = %2360
  %2367 = add i32 %48, 256
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2367, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 65535
  %2371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2370)  ; LegacyF16ToF32(value)
  %2372 = lshr i32 %2369, 16
  %2373 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2372)  ; LegacyF16ToF32(value)
  %2374 = add i32 %48, 260
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 65535
  %2378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2377)  ; LegacyF16ToF32(value)
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = lshr i32 %2380, 24
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101020000000
  %2384 = and i32 %2380, 255
  %2385 = uitofp i32 %2384 to float
  %2386 = fmul fast float %2385, 0x3F70101020000000
  %2387 = lshr i32 %2380, 8
  %2388 = and i32 %2387, 255
  %2389 = uitofp i32 %2388 to float
  %2390 = fmul fast float %2389, 0x3F70101020000000
  %2391 = lshr i32 %2380, 16
  %2392 = and i32 %2391, 255
  %2393 = uitofp i32 %2392 to float
  %2394 = fmul fast float %2393, 0x3F70101020000000
  %2395 = add i32 %48, 252
  %2396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2412 = bitcast float %2336 to i32
  %2413 = ashr i32 %2412, 1
  %2414 = sub nsw i32 1597463174, %2413
  %2415 = bitcast i32 %2414 to float
  %2416 = fmul fast float %2336, 5.000000e-01
  %2417 = fmul fast float %2415, %2415
  %2418 = fmul fast float %2417, %2416
  %2419 = fsub fast float 1.500000e+00, %2418
  %2420 = fmul fast float %2415, %2336
  %2421 = fmul fast float %2420, %2419
  %2422 = bitcast float %2337 to i32
  %2423 = ashr i32 %2422, 1
  %2424 = sub nsw i32 1597463174, %2423
  %2425 = bitcast i32 %2424 to float
  %2426 = fmul fast float %2337, 5.000000e-01
  %2427 = fmul fast float %2425, %2425
  %2428 = fmul fast float %2427, %2426
  %2429 = fsub fast float 1.500000e+00, %2428
  %2430 = fmul fast float %2425, %2337
  %2431 = fmul fast float %2430, %2429
  %2432 = bitcast float %2338 to i32
  %2433 = ashr i32 %2432, 1
  %2434 = sub nsw i32 1597463174, %2433
  %2435 = bitcast i32 %2434 to float
  %2436 = fmul fast float %2338, 5.000000e-01
  %2437 = fmul fast float %2435, %2435
  %2438 = fmul fast float %2437, %2436
  %2439 = fsub fast float 1.500000e+00, %2438
  %2440 = fmul fast float %2435, %2338
  %2441 = fmul fast float %2440, %2439
  %2442 = fsub fast float %2421, %2403
  %2443 = fsub fast float %2431, %2407
  %2444 = fsub fast float %2441, %2411
  %2445 = fmul fast float %2442, %2371
  %2446 = fmul fast float %2443, %2373
  %2447 = fmul fast float %2444, %2378
  %2448 = fadd fast float %2445, %2386
  %2449 = fadd fast float %2446, %2390
  %2450 = fadd fast float %2447, %2394
  %2451 = call float @dx.op.unary.f32(i32 7, float %2448)  ; Saturate(value)
  %2452 = call float @dx.op.unary.f32(i32 7, float %2449)  ; Saturate(value)
  %2453 = call float @dx.op.unary.f32(i32 7, float %2450)  ; Saturate(value)
  %2454 = fmul fast float %2451, %2451
  %2455 = fmul fast float %2452, %2452
  %2456 = fmul fast float %2453, %2453
  %2457 = fsub fast float %2454, %2336
  %2458 = fsub fast float %2455, %2337
  %2459 = fsub fast float %2456, %2338
  %2460 = fmul fast float %2457, %2361
  %2461 = fmul fast float %2458, %2361
  %2462 = fmul fast float %2459, %2361
  %2463 = fadd fast float %2460, %2336
  %2464 = fadd fast float %2461, %2337
  %2465 = fadd fast float %2462, %2338
  %2466 = fadd fast float %2383, %2347
  %2467 = fsub fast float %2466, %2400
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = fsub fast float %2468, %2347
  %2470 = fmul fast float %2469, %2361
  %2471 = fadd fast float %2470, %2347
  br label %2525

; <label>:2472                                    ; preds = %2360
  %2473 = and i32 %2363, 134217728
  %2474 = icmp eq i32 %2473, 0
  br i1 %2474, label %2509, label %2475

; <label>:2475                                    ; preds = %2472
  %2476 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %2477 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %2478 = call float @dx.op.unary.f32(i32 24, float %400)  ; Sqrt(value)
  %2479 = fadd fast float %2476, -5.000000e-01
  %2480 = fadd fast float %2477, -5.000000e-01
  %2481 = fadd fast float %2478, -5.000000e-01
  %2482 = fmul fast float %2479, %2361
  %2483 = fmul fast float %2480, %2361
  %2484 = fmul fast float %2481, %2361
  %2485 = fadd fast float %2482, 5.000000e-01
  %2486 = fadd fast float %2483, 5.000000e-01
  %2487 = fadd fast float %2484, 5.000000e-01
  %2488 = call float @dx.op.unary.f32(i32 24, float %2336)  ; Sqrt(value)
  %2489 = call float @dx.op.unary.f32(i32 24, float %2337)  ; Sqrt(value)
  %2490 = call float @dx.op.unary.f32(i32 24, float %2338)  ; Sqrt(value)
  %2491 = fmul fast float %2485, 2.000000e+00
  %2492 = fsub fast float 1.000000e+00, %2491
  %2493 = fmul fast float %2492, %2488
  %2494 = fadd fast float %2493, %2491
  %2495 = fmul fast float %2494, %2488
  %2496 = fmul fast float %2486, 2.000000e+00
  %2497 = fsub fast float 1.000000e+00, %2496
  %2498 = fmul fast float %2497, %2489
  %2499 = fadd fast float %2498, %2496
  %2500 = fmul fast float %2499, %2489
  %2501 = fmul fast float %2487, 2.000000e+00
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2502, %2490
  %2504 = fadd fast float %2503, %2501
  %2505 = fmul fast float %2504, %2490
  %2506 = fmul fast float %2495, %2495
  %2507 = fmul fast float %2500, %2500
  %2508 = fmul fast float %2505, %2505
  br label %2525

; <label>:2509                                    ; preds = %2472
  %2510 = fmul fast float %392, %392
  %2511 = fmul fast float %396, %396
  %2512 = fmul fast float %400, %400
  %2513 = fadd fast float %2510, -1.000000e+00
  %2514 = fadd fast float %2511, -1.000000e+00
  %2515 = fadd fast float %2512, -1.000000e+00
  %2516 = fmul fast float %2361, %2513
  %2517 = fmul fast float %2361, %2514
  %2518 = fmul fast float %2361, %2515
  %2519 = fadd fast float %2516, 1.000000e+00
  %2520 = fadd fast float %2517, 1.000000e+00
  %2521 = fadd fast float %2518, 1.000000e+00
  %2522 = fmul fast float %2519, %2336
  %2523 = fmul fast float %2520, %2337
  %2524 = fmul fast float %2521, %2338
  br label %2525

; <label>:2525                                    ; preds = %2509, %2475, %2366, %2322
  %2526 = phi float [ %2471, %2366 ], [ %2347, %2475 ], [ %2347, %2509 ], [ 0x3FA23C0BE0000000, %2322 ]
  %2527 = phi float [ %2463, %2366 ], [ %2506, %2475 ], [ %2522, %2509 ], [ 1.000000e+00, %2322 ]
  %2528 = phi float [ %2464, %2366 ], [ %2507, %2475 ], [ %2523, %2509 ], [ 1.000000e+00, %2322 ]
  %2529 = phi float [ %2465, %2366 ], [ %2508, %2475 ], [ %2524, %2509 ], [ 1.000000e+00, %2322 ]
  %2530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2531 = extractvalue %dx.types.CBufRet.i32 %2530, 1
  %2532 = and i32 %2531, 1
  %2533 = icmp ne i32 %2532, 0
  %2534 = add i32 %48, 356
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 32
  %2538 = icmp ne i32 %2537, 0
  %2539 = and i1 %2533, %2538
  %2540 = select i1 %2539, float 1.000000e+00, float %2527
  %2541 = select i1 %2539, float 0x3FD3333340000000, float %2528
  %2542 = select i1 %2539, float 0x3FD3333340000000, float %2529
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = and i32 %2544, 32
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %2619, label %2547

; <label>:2547                                    ; preds = %2525
  %2548 = add i32 %48, 124
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2548, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = add i32 %48, 448
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = add i32 %2553, 0
  %2555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2554, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2555, %dx.types.Handle %103, float %2247, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2557 = extractvalue %dx.types.ResRet.f32 %2556, 0
  %2558 = extractvalue %dx.types.ResRet.f32 %2556, 1
  %2559 = extractvalue %dx.types.ResRet.f32 %2556, 2
  %2560 = extractvalue %dx.types.ResRet.f32 %2556, 3
  %2561 = and i32 %2550, 255
  %2562 = uitofp i32 %2561 to float
  %2563 = lshr i32 %2550, 8
  %2564 = and i32 %2563, 255
  %2565 = uitofp i32 %2564 to float
  %2566 = lshr i32 %2550, 16
  %2567 = and i32 %2566, 255
  %2568 = uitofp i32 %2567 to float
  %2569 = fmul fast float %2568, 0x3F70101000000000
  %2570 = fmul fast float %2557, %2562
  %2571 = fadd fast float %2570, %2565
  %2572 = fmul fast float %2571, 0x3F70101000000000
  %2573 = fadd fast float %2558, -5.000000e-01
  %2574 = fadd fast float %2560, -5.000000e-01
  %2575 = fmul fast float %2573, %2569
  %2576 = fmul fast float %2574, %2569
  %2577 = fadd fast float %2575, 5.000000e-01
  %2578 = fadd fast float %2576, 5.000000e-01
  %2579 = fmul fast float %2577, 2.000000e+00
  %2580 = fadd fast float %2579, -1.000000e+00
  %2581 = fmul fast float %2578, 2.000000e+00
  %2582 = fadd fast float %2581, -1.000000e+00
  %2583 = fadd fast float %2580, %2582
  %2584 = fmul fast float %2583, 5.000000e-01
  %2585 = fsub fast float %2580, %2582
  %2586 = fmul fast float %2585, 5.000000e-01
  %2587 = call float @dx.op.unary.f32(i32 6, float %2584)  ; FAbs(value)
  %2588 = fsub fast float 1.000000e+00, %2587
  %2589 = call float @dx.op.unary.f32(i32 6, float %2586)  ; FAbs(value)
  %2590 = fsub fast float %2588, %2589
  %2591 = call float @dx.op.dot3.f32(i32 55, float %2584, float %2586, float %2590, float %2584, float %2586, float %2590)  ; Dot3(ax,ay,az,bx,by,bz)
  %2592 = call float @dx.op.unary.f32(i32 25, float %2591)  ; Rsqrt(value)
  %2593 = fmul fast float %2584, %2592
  %2594 = fmul fast float %2586, %2592
  %2595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2596 = extractvalue %dx.types.ResRet.i32 %2595, 0
  %2597 = and i32 %2596, 67108864
  %2598 = icmp eq i32 %2597, 0
  br i1 %2598, label %2615, label %2599

; <label>:2599                                    ; preds = %2547
  %2600 = add i32 %48, 312
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 65535
  %2604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2603)  ; LegacyF16ToF32(value)
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = and i32 %2606, 65535
  %2608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2607)  ; LegacyF16ToF32(value)
  %2609 = lshr i32 %2602, 16
  %2610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2609)  ; LegacyF16ToF32(value)
  %2611 = fsub fast float %2572, %2610
  %2612 = fmul fast float %2611, %2604
  %2613 = fadd fast float %2612, %2608
  %2614 = call float @dx.op.unary.f32(i32 7, float %2613)  ; Saturate(value)
  br label %2615

; <label>:2615                                    ; preds = %2599, %2547
  %2616 = phi float [ %2614, %2599 ], [ %2572, %2547 ]
  %2617 = call float @dx.op.dot2.f32(i32 54, float %2593, float %2594, float %2151, float %2152)  ; Dot2(ax,ay,bx,by)
  %2618 = call float @dx.op.dot2.f32(i32 54, float %2593, float %2594, float %2153, float %2154)  ; Dot2(ax,ay,bx,by)
  br label %2619

; <label>:2619                                    ; preds = %2615, %2525
  %2620 = phi float [ %2616, %2615 ], [ 0x3FD6666660000000, %2525 ]
  %2621 = phi float [ %2617, %2615 ], [ 0.000000e+00, %2525 ]
  %2622 = phi float [ %2618, %2615 ], [ 0.000000e+00, %2525 ]
  %2623 = phi float [ %2559, %2615 ], [ 1.000000e+00, %2525 ]
  %2624 = add i32 %48, 192
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = lshr i32 %2626, 22
  %2628 = shl nuw nsw i32 %2627, 5
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2631 = extractvalue %dx.types.ResRet.i32 %2630, 0
  %2632 = and i32 %2631, 64
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %2667, label %2634

; <label>:2634                                    ; preds = %2619
  %2635 = add i32 %48, 464
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = add i32 %2637, 0
  %2639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = and i32 %2641, 131072
  %2643 = icmp eq i32 %2642, 0
  %2644 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2639, %dx.types.Handle %103, float %2247, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2645 = extractvalue %dx.types.ResRet.f32 %2644, 0
  %2646 = extractvalue %dx.types.ResRet.f32 %2644, 1
  %2647 = extractvalue %dx.types.ResRet.f32 %2644, 2
  %2648 = fmul fast float %2645, %380
  %2649 = fmul fast float %2646, %383
  %2650 = fmul fast float %2647, %386
  br i1 %2643, label %2657, label %2651

; <label>:2651                                    ; preds = %2634
  %2652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2653 = extractvalue %dx.types.CBufRet.f32 %2652, 0
  %2654 = fmul fast float %2653, %2648
  %2655 = fmul fast float %2653, %2649
  %2656 = fmul fast float %2653, %2650
  br label %2657

; <label>:2657                                    ; preds = %2651, %2634
  %2658 = phi float [ %2654, %2651 ], [ %2648, %2634 ]
  %2659 = phi float [ %2655, %2651 ], [ %2649, %2634 ]
  %2660 = phi float [ %2656, %2651 ], [ %2650, %2634 ]
  %2661 = fmul fast float %2658, %2629
  %2662 = select i1 %279, float %2661, float %2658
  %2663 = call float @dx.op.dot3.f32(i32 55, float %2662, float %2659, float %2660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2664 = select i1 %279, float 0.000000e+00, float %2658
  %2665 = select i1 %279, float %2663, float %2659
  %2666 = select i1 %279, float 0.000000e+00, float %2660
  br label %2667

; <label>:2667                                    ; preds = %2657, %2619
  %2668 = phi float [ %2664, %2657 ], [ 0.000000e+00, %2619 ]
  %2669 = phi float [ %2665, %2657 ], [ 0.000000e+00, %2619 ]
  %2670 = phi float [ %2666, %2657 ], [ 0.000000e+00, %2619 ]
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = and i32 %2672, 1024
  %2674 = icmp eq i32 %2673, 0
  br i1 %2674, label %2705, label %2675

; <label>:2675                                    ; preds = %2667
  %2676 = add i32 %48, 184
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 255
  %2680 = uitofp i32 %2679 to float
  %2681 = fmul fast float %2680, 0x3F70101020000000
  %2682 = lshr i32 %2678, 8
  %2683 = and i32 %2682, 255
  %2684 = uitofp i32 %2683 to float
  %2685 = fmul fast float %2684, 0x3F70101020000000
  %2686 = lshr i32 %2678, 16
  %2687 = and i32 %2686, 255
  %2688 = uitofp i32 %2687 to float
  %2689 = fmul fast float %2688, 0x3F70101020000000
  %2690 = fmul fast float %2681, %2681
  %2691 = fmul fast float %2685, %2685
  %2692 = fmul fast float %2689, %2689
  %2693 = add i32 %48, 532
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = add i32 %2695, 0
  %2697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2697, %dx.types.Handle %104, float %2247, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2699 = extractvalue %dx.types.ResRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.ResRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.ResRet.f32 %2698, 2
  %2702 = fmul fast float %2690, %2699
  %2703 = fmul fast float %2691, %2700
  %2704 = fmul fast float %2692, %2701
  br label %2705

; <label>:2705                                    ; preds = %2675, %2667
  %2706 = phi float [ %2702, %2675 ], [ 0.000000e+00, %2667 ]
  %2707 = phi float [ %2703, %2675 ], [ 0.000000e+00, %2667 ]
  %2708 = phi float [ %2704, %2675 ], [ 0.000000e+00, %2667 ]
  %2709 = fcmp fast ogt float %2706, 0.000000e+00
  %2710 = fcmp fast ogt float %2707, 0.000000e+00
  %2711 = fcmp fast ogt float %2708, 0.000000e+00
  %2712 = call float @dx.op.unary.f32(i32 23, float %2706)  ; Log(value)
  %2713 = call float @dx.op.unary.f32(i32 23, float %2707)  ; Log(value)
  %2714 = call float @dx.op.unary.f32(i32 23, float %2708)  ; Log(value)
  %2715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.i32 %2715, 0
  %2717 = lshr i32 %2716, 7
  %2718 = and i32 %2717, 32752
  %2719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2718)  ; LegacyF16ToF32(value)
  %2720 = fmul fast float %2712, 0xBFE62E4300000000
  %2721 = fmul fast float %2720, %2719
  %2722 = fmul fast float %2713, 0xBFE62E4300000000
  %2723 = fmul fast float %2722, %2719
  %2724 = fmul fast float %2714, 0xBFE62E4300000000
  %2725 = fmul fast float %2724, %2719
  %2726 = select i1 %2709, float %2721, float 1.270000e+02
  %2727 = select i1 %2710, float %2723, float 1.270000e+02
  %2728 = select i1 %2711, float %2725, float 1.270000e+02
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = and i32 %2730, 10240
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2777, label %2733

; <label>:2733                                    ; preds = %2705
  %2734 = add i32 %48, 548
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = add i32 %2736, 0
  %2738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2738, %dx.types.Handle %104, float %2247, float %2248, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 3
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 1048576
  %2745 = icmp ne i32 %2744, 0
  %2746 = and i32 %2743, 8192
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2763, label %2748

; <label>:2748                                    ; preds = %2733
  %2749 = extractvalue %dx.types.ResRet.f32 %2739, 2
  %2750 = select i1 %2745, float %2749, float %2740
  %2751 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2752 = select i1 %2745, float %2751, float %2740
  %2753 = add i32 %48, 128
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = lshr i32 %2755, 16
  %2757 = and i32 %2756, 255
  %2758 = uitofp i32 %2757 to float
  %2759 = fmul fast float %2758, 0x3F80101020000000
  %2760 = fmul fast float %2759, %2752
  %2761 = fmul fast float %2759, %2740
  %2762 = fmul fast float %2759, %2750
  br label %2763

; <label>:2763                                    ; preds = %2748, %2733
  %2764 = phi float [ %2760, %2748 ], [ 0.000000e+00, %2733 ]
  %2765 = phi float [ %2761, %2748 ], [ 0.000000e+00, %2733 ]
  %2766 = phi float [ %2762, %2748 ], [ 0.000000e+00, %2733 ]
  %2767 = and i32 %2743, 2048
  %2768 = icmp eq i32 %2767, 0
  br i1 %2768, label %2777, label %2769

; <label>:2769                                    ; preds = %2763
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = shl i32 %2771, 4
  %2773 = and i32 %2772, 32752
  %2774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2773)  ; LegacyF16ToF32(value)
  %2775 = fmul fast float %2774, %2741
  %2776 = call float @dx.op.binary.f32(i32 35, float %2775, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2777

; <label>:2777                                    ; preds = %2769, %2763, %2705
  %2778 = phi float [ %2764, %2769 ], [ %2764, %2763 ], [ 0.000000e+00, %2705 ]
  %2779 = phi float [ %2765, %2769 ], [ %2765, %2763 ], [ 0.000000e+00, %2705 ]
  %2780 = phi float [ %2766, %2769 ], [ %2766, %2763 ], [ 0.000000e+00, %2705 ]
  %2781 = phi float [ %2776, %2769 ], [ 0x3F70101020000000, %2763 ], [ 0x3F70101020000000, %2705 ]
  %2782 = add i32 %48, 128
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = and i32 %2784, 255
  %2786 = uitofp i32 %2785 to float
  %2787 = lshr i32 %2784, 8
  %2788 = and i32 %2787, 255
  %2789 = uitofp i32 %2788 to float
  %2790 = call float @dx.op.dot3.f32(i32 55, float %2540, float %2541, float %2542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2791 = fmul fast float %2789, %2790
  %2792 = fadd fast float %2791, %2786
  %2793 = fmul fast float %2792, 0x3F70101020000000
  %2794 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  br i1 %2139, label %2795, label %2830

; <label>:2795                                    ; preds = %2777
  %2796 = fmul fast float %2781, 2.000000e+00
  %2797 = fcmp fast olt float %2726, 1.270000e+02
  %2798 = fcmp fast olt float %2727, 1.270000e+02
  %2799 = fcmp fast olt float %2728, 1.270000e+02
  %2800 = fmul fast float %2726, 0xBFF7154760000000
  %2801 = fmul fast float %2800, %2796
  %2802 = fmul fast float %2727, 0xBFF7154760000000
  %2803 = fmul fast float %2802, %2796
  %2804 = fmul fast float %2728, 0xBFF7154760000000
  %2805 = fmul fast float %2804, %2796
  %2806 = call float @dx.op.unary.f32(i32 21, float %2801)  ; Exp(value)
  %2807 = call float @dx.op.unary.f32(i32 21, float %2803)  ; Exp(value)
  %2808 = call float @dx.op.unary.f32(i32 21, float %2805)  ; Exp(value)
  %2809 = call float @dx.op.unary.f32(i32 7, float %2806)  ; Saturate(value)
  %2810 = call float @dx.op.unary.f32(i32 7, float %2807)  ; Saturate(value)
  %2811 = call float @dx.op.unary.f32(i32 7, float %2808)  ; Saturate(value)
  %2812 = fadd fast float %2809, -1.000000e+00
  %2813 = select i1 %2797, float %2812, float -1.000000e+00
  %2814 = fadd fast float %2810, -1.000000e+00
  %2815 = select i1 %2798, float %2814, float -1.000000e+00
  %2816 = fadd fast float %2811, -1.000000e+00
  %2817 = select i1 %2799, float %2816, float -1.000000e+00
  %2818 = fmul fast float %2813, %2320
  %2819 = fmul fast float %2815, %2320
  %2820 = fmul fast float %2817, %2320
  %2821 = fadd fast float %2818, 1.000000e+00
  %2822 = fadd fast float %2819, 1.000000e+00
  %2823 = fadd fast float %2820, 1.000000e+00
  %2824 = fmul fast float %2821, %2121
  %2825 = fmul fast float %2822, %2122
  %2826 = fmul fast float %2823, %2123
  %2827 = fmul fast float %2821, %2124
  %2828 = fmul fast float %2822, %2125
  %2829 = fmul fast float %2823, %2126
  br label %2830

; <label>:2830                                    ; preds = %2795, %2777
  %2831 = phi float [ %2824, %2795 ], [ %2121, %2777 ]
  %2832 = phi float [ %2825, %2795 ], [ %2122, %2777 ]
  %2833 = phi float [ %2826, %2795 ], [ %2123, %2777 ]
  %2834 = phi float [ %2827, %2795 ], [ %2124, %2777 ]
  %2835 = phi float [ %2828, %2795 ], [ %2125, %2777 ]
  %2836 = phi float [ %2829, %2795 ], [ %2126, %2777 ]
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = and i32 %2838, 3
  %2840 = icmp eq i32 %2839, 3
  br i1 %2840, label %2919, label %2841

; <label>:2841                                    ; preds = %2830
  %2842 = and i32 %2838, 16
  %2843 = icmp ne i32 %2842, 0
  %2844 = select i1 %2843, float %2320, float 0.000000e+00
  %2845 = icmp eq i32 %2839, 0
  br i1 %2845, label %2846, label %2874

; <label>:2846                                    ; preds = %2841
  %2847 = and i32 %2838, 64
  %2848 = icmp ne i32 %2847, 0
  %2849 = select i1 %2848, float %2320, float 0.000000e+00
  %2850 = fsub fast float %2540, %2831
  %2851 = fsub fast float %2541, %2832
  %2852 = fsub fast float %2542, %2833
  %2853 = fmul fast float %2844, %2850
  %2854 = fmul fast float %2844, %2851
  %2855 = fmul fast float %2844, %2852
  %2856 = fadd fast float %2853, %2831
  %2857 = fadd fast float %2854, %2832
  %2858 = fadd fast float %2855, %2833
  %2859 = fsub fast float %2526, %2133
  %2860 = fmul fast float %2844, %2859
  %2861 = fadd fast float %2860, %2133
  %2862 = fsub fast float %2668, %2834
  %2863 = fsub fast float %2669, %2835
  %2864 = fsub fast float %2670, %2836
  %2865 = fmul fast float %2849, %2862
  %2866 = fmul fast float %2849, %2863
  %2867 = fmul fast float %2849, %2864
  %2868 = fadd fast float %2865, %2834
  %2869 = fadd fast float %2866, %2835
  %2870 = fadd fast float %2867, %2836
  %2871 = fsub fast float %2794, %2137
  %2872 = fmul fast float %2844, %2871
  %2873 = fadd fast float %2872, %2137
  br label %2919

; <label>:2874                                    ; preds = %2841
  %2875 = icmp eq i32 %2839, 1
  br i1 %2875, label %2876, label %2889

; <label>:2876                                    ; preds = %2874
  %2877 = fadd fast float %2540, -1.000000e+00
  %2878 = fadd fast float %2541, -1.000000e+00
  %2879 = fadd fast float %2542, -1.000000e+00
  %2880 = fmul fast float %2844, %2877
  %2881 = fmul fast float %2844, %2878
  %2882 = fmul fast float %2844, %2879
  %2883 = fadd fast float %2880, 1.000000e+00
  %2884 = fadd fast float %2881, 1.000000e+00
  %2885 = fadd fast float %2882, 1.000000e+00
  %2886 = fmul fast float %2883, %2831
  %2887 = fmul fast float %2884, %2832
  %2888 = fmul fast float %2885, %2833
  br label %2919

; <label>:2889                                    ; preds = %2874
  %2890 = icmp eq i32 %2839, 2
  br i1 %2890, label %2891, label %2919

; <label>:2891                                    ; preds = %2889
  %2892 = call float @dx.op.unary.f32(i32 24, float %2540)  ; Sqrt(value)
  %2893 = call float @dx.op.unary.f32(i32 24, float %2541)  ; Sqrt(value)
  %2894 = call float @dx.op.unary.f32(i32 24, float %2542)  ; Sqrt(value)
  %2895 = fadd fast float %2892, -5.000000e-01
  %2896 = fadd fast float %2893, -5.000000e-01
  %2897 = fadd fast float %2894, -5.000000e-01
  %2898 = fmul fast float %2895, %2844
  %2899 = fmul fast float %2896, %2844
  %2900 = fmul fast float %2897, %2844
  %2901 = fadd fast float %2898, 5.000000e-01
  %2902 = fadd fast float %2899, 5.000000e-01
  %2903 = fadd fast float %2900, 5.000000e-01
  %2904 = fmul fast float %2901, 2.000000e+00
  %2905 = fsub fast float 1.000000e+00, %2904
  %2906 = fmul fast float %2905, %2831
  %2907 = fadd fast float %2906, %2904
  %2908 = fmul fast float %2907, %2831
  %2909 = fmul fast float %2902, 2.000000e+00
  %2910 = fsub fast float 1.000000e+00, %2909
  %2911 = fmul fast float %2910, %2832
  %2912 = fadd fast float %2911, %2909
  %2913 = fmul fast float %2912, %2832
  %2914 = fmul fast float %2903, 2.000000e+00
  %2915 = fsub fast float 1.000000e+00, %2914
  %2916 = fmul fast float %2915, %2833
  %2917 = fadd fast float %2916, %2914
  %2918 = fmul fast float %2917, %2833
  br label %2919

; <label>:2919                                    ; preds = %2891, %2889, %2876, %2846, %2830
  %2920 = phi float [ %2831, %2830 ], [ %2908, %2891 ], [ %2831, %2889 ], [ %2886, %2876 ], [ %2856, %2846 ]
  %2921 = phi float [ %2832, %2830 ], [ %2913, %2891 ], [ %2832, %2889 ], [ %2887, %2876 ], [ %2857, %2846 ]
  %2922 = phi float [ %2833, %2830 ], [ %2918, %2891 ], [ %2833, %2889 ], [ %2888, %2876 ], [ %2858, %2846 ]
  %2923 = phi float [ %2834, %2830 ], [ %2834, %2891 ], [ %2834, %2889 ], [ %2834, %2876 ], [ %2868, %2846 ]
  %2924 = phi float [ %2835, %2830 ], [ %2835, %2891 ], [ %2835, %2889 ], [ %2835, %2876 ], [ %2869, %2846 ]
  %2925 = phi float [ %2836, %2830 ], [ %2836, %2891 ], [ %2836, %2889 ], [ %2836, %2876 ], [ %2870, %2846 ]
  %2926 = phi float [ %2133, %2830 ], [ %2133, %2891 ], [ %2133, %2889 ], [ %2133, %2876 ], [ %2861, %2846 ]
  %2927 = phi float [ %2137, %2830 ], [ %2137, %2891 ], [ %2137, %2889 ], [ %2137, %2876 ], [ %2873, %2846 ]
  %2928 = and i32 %2838, 12
  %2929 = icmp eq i32 %2928, 12
  br i1 %2929, label %3060, label %2930

; <label>:2930                                    ; preds = %2919
  %2931 = and i32 %2838, 2097184
  %2932 = icmp eq i32 %2931, 2097184
  %2933 = select i1 %2932, float %2320, float 0.000000e+00
  %2934 = and i32 %2838, 4194336
  %2935 = icmp eq i32 %2934, 4194336
  %2936 = select i1 %2935, float %2320, float 0.000000e+00
  %2937 = and i32 %2838, 8388640
  %2938 = icmp eq i32 %2937, 8388640
  %2939 = select i1 %2938, float %2320, float 0.000000e+00
  %2940 = and i32 %2838, 1024
  %2941 = icmp ne i32 %2940, 0
  %2942 = select i1 %2941, float %2320, float 0.000000e+00
  %2943 = and i32 %2838, 2048
  %2944 = icmp ne i32 %2943, 0
  %2945 = select i1 %2944, float %2320, float 0.000000e+00
  %2946 = and i32 %2838, 8192
  %2947 = icmp ne i32 %2946, 0
  %2948 = select i1 %2947, float %2320, float 0.000000e+00
  %2949 = icmp eq i32 %2928, 0
  br i1 %2949, label %2950, label %2984

; <label>:2950                                    ; preds = %2930
  %2951 = fsub fast float %2621, %2119
  %2952 = fsub fast float %2622, %2120
  %2953 = fmul fast float %2933, %2951
  %2954 = fmul fast float %2933, %2952
  %2955 = fadd fast float %2953, %2119
  %2956 = fadd fast float %2954, %2120
  %2957 = fsub fast float %2623, %2135
  %2958 = fmul fast float %2936, %2957
  %2959 = fadd fast float %2958, %2135
  %2960 = fsub fast float %2620, %2134
  %2961 = fmul fast float %2939, %2960
  %2962 = fadd fast float %2961, %2134
  %2963 = fsub fast float %2726, %2127
  %2964 = fsub fast float %2727, %2128
  %2965 = fsub fast float %2728, %2129
  %2966 = fmul fast float %2942, %2963
  %2967 = fmul fast float %2942, %2964
  %2968 = fmul fast float %2942, %2965
  %2969 = fadd fast float %2966, %2127
  %2970 = fadd fast float %2967, %2128
  %2971 = fadd fast float %2968, %2129
  %2972 = fsub fast float %2781, %2136
  %2973 = fmul fast float %2945, %2972
  %2974 = fadd fast float %2973, %2136
  %2975 = fsub fast float %2778, %2130
  %2976 = fsub fast float %2779, %2131
  %2977 = fsub fast float %2780, %2132
  %2978 = fmul fast float %2948, %2975
  %2979 = fmul fast float %2948, %2976
  %2980 = fmul fast float %2948, %2977
  %2981 = fadd fast float %2978, %2130
  %2982 = fadd fast float %2979, %2131
  %2983 = fadd fast float %2980, %2132
  br label %3060

; <label>:2984                                    ; preds = %2930
  %2985 = icmp eq i32 %2928, 4
  br i1 %2985, label %2986, label %3032

; <label>:2986                                    ; preds = %2984
  %2987 = fmul fast float %2933, %2621
  %2988 = fmul fast float %2933, %2622
  %2989 = fadd fast float %2987, %2119
  %2990 = fadd fast float %2988, %2120
  %2991 = call float @dx.op.binary.f32(i32 36, float %2135, float %2623)  ; FMin(a,b)
  %2992 = fsub fast float %2991, %2135
  %2993 = fmul fast float %2992, %2936
  %2994 = fadd fast float %2993, %2135
  %2995 = fadd fast float %2620, %2134
  %2996 = fmul fast float %2995, 0x3FF337FAE0000000
  %2997 = fmul fast float %2134, %2134
  %2998 = fmul fast float %2620, %2620
  %2999 = fadd fast float %2998, %2997
  %3000 = fmul fast float %2999, 0x3FE5152B00000000
  %3001 = fmul fast float %2134, 0xBFCC1F85E0000000
  %3002 = fmul fast float %3001, %2620
  %3003 = fadd fast float %3002, 0xBFE1363700000000
  %3004 = fadd fast float %3003, %2996
  %3005 = fsub fast float %3004, %3000
  %3006 = fmul fast float %2995, 0x3FBA6F0D00000000
  %3007 = fmul fast float %2999, 0x3FD0432880000000
  %3008 = fmul fast float %2134, 0xBFEF110800000000
  %3009 = fmul fast float %3008, %2620
  %3010 = fadd fast float %3009, 1.000000e+00
  %3011 = fsub fast float %3010, %3006
  %3012 = fadd fast float %3011, %3007
  %3013 = fdiv fast float %3005, %3012
  %3014 = call float @dx.op.unary.f32(i32 7, float %3013)  ; Saturate(value)
  %3015 = fsub fast float %3014, %2134
  %3016 = fmul fast float %3015, %2939
  %3017 = fadd fast float %3016, %2134
  %3018 = fmul fast float %2942, %2726
  %3019 = fmul fast float %2942, %2727
  %3020 = fmul fast float %2942, %2728
  %3021 = fadd fast float %3018, %2127
  %3022 = fadd fast float %3019, %2128
  %3023 = fadd fast float %3020, %2129
  %3024 = fmul fast float %2945, %2781
  %3025 = fadd fast float %3024, %2136
  %3026 = fmul fast float %2948, %2778
  %3027 = fmul fast float %2948, %2779
  %3028 = fmul fast float %2948, %2780
  %3029 = fadd fast float %3026, %2130
  %3030 = fadd fast float %3027, %2131
  %3031 = fadd fast float %3028, %2132
  br label %3060

; <label>:3032                                    ; preds = %2984
  %3033 = icmp eq i32 %2928, 8
  br i1 %3033, label %3034, label %3060

; <label>:3034                                    ; preds = %3032
  %3035 = fmul fast float %2933, %2621
  %3036 = fmul fast float %2933, %2622
  %3037 = fadd fast float %3035, %2119
  %3038 = fadd fast float %3036, %2120
  %3039 = call float @dx.op.binary.f32(i32 36, float %2135, float %2623)  ; FMin(a,b)
  %3040 = fsub fast float %3039, %2135
  %3041 = fmul fast float %3040, %2936
  %3042 = fadd fast float %3041, %2135
  %3043 = fsub fast float %2620, %2134
  %3044 = fmul fast float %2939, %3043
  %3045 = fadd fast float %3044, %2134
  %3046 = fmul fast float %2942, %2726
  %3047 = fmul fast float %2942, %2727
  %3048 = fmul fast float %2942, %2728
  %3049 = fadd fast float %3046, %2127
  %3050 = fadd fast float %3047, %2128
  %3051 = fadd fast float %3048, %2129
  %3052 = fmul fast float %2945, %2781
  %3053 = fadd fast float %3052, %2136
  %3054 = fmul fast float %2948, %2778
  %3055 = fmul fast float %2948, %2779
  %3056 = fmul fast float %2948, %2780
  %3057 = fadd fast float %3054, %2130
  %3058 = fadd fast float %3055, %2131
  %3059 = fadd fast float %3056, %2132
  br label %3060

; <label>:3060                                    ; preds = %3034, %3032, %2986, %2950, %2919, %2319, %2138, %2118
  %3061 = phi float [ %2119, %2919 ], [ %2119, %2319 ], [ %2119, %2118 ], [ %3037, %3034 ], [ %2119, %3032 ], [ %2989, %2986 ], [ %2955, %2950 ], [ %2119, %2138 ]
  %3062 = phi float [ %2120, %2919 ], [ %2120, %2319 ], [ %2120, %2118 ], [ %3038, %3034 ], [ %2120, %3032 ], [ %2990, %2986 ], [ %2956, %2950 ], [ %2120, %2138 ]
  %3063 = phi float [ %2920, %2919 ], [ %2121, %2319 ], [ %2121, %2118 ], [ %2920, %3034 ], [ %2920, %3032 ], [ %2920, %2986 ], [ %2920, %2950 ], [ %2121, %2138 ]
  %3064 = phi float [ %2921, %2919 ], [ %2122, %2319 ], [ %2122, %2118 ], [ %2921, %3034 ], [ %2921, %3032 ], [ %2921, %2986 ], [ %2921, %2950 ], [ %2122, %2138 ]
  %3065 = phi float [ %2922, %2919 ], [ %2123, %2319 ], [ %2123, %2118 ], [ %2922, %3034 ], [ %2922, %3032 ], [ %2922, %2986 ], [ %2922, %2950 ], [ %2123, %2138 ]
  %3066 = phi float [ %2923, %2919 ], [ %2124, %2319 ], [ %2124, %2118 ], [ %2923, %3034 ], [ %2923, %3032 ], [ %2923, %2986 ], [ %2923, %2950 ], [ %2124, %2138 ]
  %3067 = phi float [ %2924, %2919 ], [ %2125, %2319 ], [ %2125, %2118 ], [ %2924, %3034 ], [ %2924, %3032 ], [ %2924, %2986 ], [ %2924, %2950 ], [ %2125, %2138 ]
  %3068 = phi float [ %2925, %2919 ], [ %2126, %2319 ], [ %2126, %2118 ], [ %2925, %3034 ], [ %2925, %3032 ], [ %2925, %2986 ], [ %2925, %2950 ], [ %2126, %2138 ]
  %3069 = phi float [ %2127, %2919 ], [ %2127, %2319 ], [ %2127, %2118 ], [ %3049, %3034 ], [ %2127, %3032 ], [ %3021, %2986 ], [ %2969, %2950 ], [ %2127, %2138 ]
  %3070 = phi float [ %2128, %2919 ], [ %2128, %2319 ], [ %2128, %2118 ], [ %3050, %3034 ], [ %2128, %3032 ], [ %3022, %2986 ], [ %2970, %2950 ], [ %2128, %2138 ]
  %3071 = phi float [ %2129, %2919 ], [ %2129, %2319 ], [ %2129, %2118 ], [ %3051, %3034 ], [ %2129, %3032 ], [ %3023, %2986 ], [ %2971, %2950 ], [ %2129, %2138 ]
  %3072 = phi float [ %2130, %2919 ], [ %2130, %2319 ], [ %2130, %2118 ], [ %3057, %3034 ], [ %2130, %3032 ], [ %3029, %2986 ], [ %2981, %2950 ], [ %2130, %2138 ]
  %3073 = phi float [ %2131, %2919 ], [ %2131, %2319 ], [ %2131, %2118 ], [ %3058, %3034 ], [ %2131, %3032 ], [ %3030, %2986 ], [ %2982, %2950 ], [ %2131, %2138 ]
  %3074 = phi float [ %2132, %2919 ], [ %2132, %2319 ], [ %2132, %2118 ], [ %3059, %3034 ], [ %2132, %3032 ], [ %3031, %2986 ], [ %2983, %2950 ], [ %2132, %2138 ]
  %3075 = phi float [ %2926, %2919 ], [ %2133, %2319 ], [ %2133, %2118 ], [ %2926, %3034 ], [ %2926, %3032 ], [ %2926, %2986 ], [ %2926, %2950 ], [ %2133, %2138 ]
  %3076 = phi float [ %2134, %2919 ], [ %2134, %2319 ], [ %2134, %2118 ], [ %3045, %3034 ], [ %2134, %3032 ], [ %3017, %2986 ], [ %2962, %2950 ], [ %2134, %2138 ]
  %3077 = phi float [ %2135, %2919 ], [ %2135, %2319 ], [ %2135, %2118 ], [ %3042, %3034 ], [ %2135, %3032 ], [ %2994, %2986 ], [ %2959, %2950 ], [ %2135, %2138 ]
  %3078 = phi float [ %2136, %2919 ], [ %2136, %2319 ], [ %2136, %2118 ], [ %3053, %3034 ], [ %2136, %3032 ], [ %3025, %2986 ], [ %2974, %2950 ], [ %2136, %2138 ]
  %3079 = phi float [ %2927, %2919 ], [ %2137, %2319 ], [ %2137, %2118 ], [ %2927, %3034 ], [ %2927, %3032 ], [ %2927, %2986 ], [ %2927, %2950 ], [ %2137, %2138 ]
  br i1 %467, label %4002, label %3080

; <label>:3080                                    ; preds = %3060
  %3081 = icmp ult i32 %521, 4
  %3082 = add i32 %48, 72
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = add i32 %48, 76
  %3086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3085, i32 undef)  ; BufferLoad(srv,index,wot)
  %3087 = extractvalue %dx.types.ResRet.i32 %3086, 0
  %3088 = or i32 %3087, %3084
  %3089 = icmp eq i32 %3088, 0
  br i1 %3089, label %4002, label %3090

; <label>:3090                                    ; preds = %3080
  %3091 = and i32 %3084, 262144
  %3092 = icmp ne i32 %3091, 0
  %3093 = select i1 %3092, float %53, float 1.000000e+00
  %3094 = select i1 %3092, float %54, float 0.000000e+00
  %3095 = select i1 %3092, float %55, float 0.000000e+00
  %3096 = select i1 %3092, float %56, float 1.000000e+00
  %3097 = select i1 %3092, float %57, float %85
  %3098 = select i1 %3092, float %58, float %86
  %3099 = add i32 %48, 332
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = lshr i32 %3101, 16
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = fmul fast float %3103, 0x3F50624DE0000000
  %3105 = add i32 %48, 136
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = lshr i32 %3107, 16
  %3109 = and i32 %3108, 255
  %3110 = lshr i32 %3107, 24
  %3111 = add i32 %48, 340
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3111, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 65535
  %3115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3114)  ; LegacyF16ToF32(value)
  %3116 = lshr i32 %3113, 16
  %3117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3116)  ; LegacyF16ToF32(value)
  %3118 = add i32 %48, 80
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = lshr i32 %3120, 22
  %3122 = shl nuw nsw i32 %3121, 5
  %3123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3122)  ; LegacyF16ToF32(value)
  %3124 = shl i32 %3120, 4
  %3125 = and i32 %3124, 32752
  %3126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3125)  ; LegacyF16ToF32(value)
  %3127 = lshr i32 %3120, 7
  %3128 = and i32 %3127, 32752
  %3129 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3128)  ; LegacyF16ToF32(value)
  %3130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3131 = extractvalue %dx.types.CBufRet.f32 %3130, 3
  %3132 = fmul fast float %3131, 1.000000e+03
  %3133 = fmul fast float %457, %3132
  %3134 = call float @dx.op.unary.f32(i32 22, float %3133)  ; Frc(value)
  %3135 = fadd fast float %3134, %447
  %3136 = fmul fast float %458, %3132
  %3137 = call float @dx.op.unary.f32(i32 22, float %3136)  ; Frc(value)
  %3138 = fadd fast float %3137, %449
  %3139 = fmul fast float %3104, %3132
  %3140 = call float @dx.op.unary.f32(i32 22, float %3139)  ; Frc(value)
  %3141 = fmul fast float %3140, 0x401921FB60000000
  %3142 = fadd fast float %3141, %3123
  %3143 = call float @dx.op.unary.f32(i32 13, float %3142)  ; Sin(value)
  %3144 = call float @dx.op.unary.f32(i32 12, float %3142)  ; Cos(value)
  %3145 = fsub fast float -0.000000e+00, %3143
  %3146 = fadd fast float %3097, -5.000000e-01
  %3147 = fadd fast float %3098, -5.000000e-01
  %3148 = fmul fast float %3115, %3146
  %3149 = fmul fast float %3117, %3147
  %3150 = fadd fast float %3148, 5.000000e-01
  %3151 = fadd fast float %3149, 5.000000e-01
  %3152 = fmul fast float %3126, %3150
  %3153 = fmul fast float %3129, %3151
  %3154 = fmul fast float %3144, %3152
  %3155 = call float @dx.op.tertiary.f32(i32 46, float %3145, float %3153, float %3154)  ; FMad(a,b,c)
  %3156 = fmul fast float %3143, %3152
  %3157 = call float @dx.op.tertiary.f32(i32 46, float %3144, float %3153, float %3156)  ; FMad(a,b,c)
  %3158 = fadd fast float %3135, %3155
  %3159 = fadd fast float %3138, %3157
  %3160 = icmp ugt i32 %3109, 1
  %3161 = icmp ugt i32 %3107, 33554431
  %3162 = or i1 %3161, %3160
  br i1 %3162, label %3163, label %3188

; <label>:3163                                    ; preds = %3090
  %3164 = add i32 %48, 276
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = lshr i32 %3166, 16
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = fmul fast float %3131, %3168
  %3170 = call float @dx.op.unary.f32(i32 22, float %3169)  ; Frc(value)
  %3171 = mul nuw nsw i32 %3109, %3110
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3170, %3172
  %3174 = call float @dx.op.unary.f32(i32 27, float %3173)  ; Round_ni(value)
  %3175 = fptoui float %3174 to i32
  %3176 = urem i32 %3175, %3109
  %3177 = udiv i32 %3175, %3110
  %3178 = call float @dx.op.unary.f32(i32 22, float %3158)  ; Frc(value)
  %3179 = call float @dx.op.unary.f32(i32 22, float %3159)  ; Frc(value)
  %3180 = uitofp i32 %3176 to float
  %3181 = uitofp i32 %3177 to float
  %3182 = fadd fast float %3178, %3180
  %3183 = fadd fast float %3179, %3181
  %3184 = uitofp i32 %3109 to float
  %3185 = uitofp i32 %3110 to float
  %3186 = fdiv fast float %3182, %3184
  %3187 = fdiv fast float %3183, %3185
  br label %3188

; <label>:3188                                    ; preds = %3163, %3090
  %3189 = phi float [ %3186, %3163 ], [ %3158, %3090 ]
  %3190 = phi float [ %3187, %3163 ], [ %3159, %3090 ]
  %3191 = and i32 %3084, 256
  %3192 = icmp eq i32 %3191, 0
  br i1 %3192, label %3239, label %3193

; <label>:3193                                    ; preds = %3188
  %3194 = add i32 %48, 500
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = add i32 %3196, 0
  %3198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3198, %dx.types.Handle %104, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3200 = extractvalue %dx.types.ResRet.f32 %3199, 0
  %3201 = add i32 %48, 148
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = shl i32 %3203, 4
  %3205 = and i32 %3204, 32752
  %3206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3205)  ; LegacyF16ToF32(value)
  %3207 = lshr i32 %3203, 7
  %3208 = and i32 %3207, 32752
  %3209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3208)  ; LegacyF16ToF32(value)
  %3210 = fsub fast float 1.000000e+00, %516
  %3211 = call float @dx.op.binary.f32(i32 35, float %3210, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3212 = bitcast float %516 to i32
  %3213 = sitofp i32 %3212 to float
  %3214 = fadd fast float %3213, 0xC1CFBF8940000000
  %3215 = fmul fast float %3209, %3214
  %3216 = fadd fast float %3215, 0x41CFBF8940000000
  %3217 = fptosi float %3216 to i32
  %3218 = bitcast i32 %3217 to float
  %3219 = bitcast float %3211 to i32
  %3220 = sitofp i32 %3219 to float
  %3221 = fadd fast float %3220, 0xC1CFBF8940000000
  %3222 = fmul fast float %3221, %3209
  %3223 = fadd fast float %3222, 0x41CFBF8940000000
  %3224 = fptosi float %3223 to i32
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3218, %3206
  %3227 = fmul fast float %3225, %3206
  %3228 = fsub fast float %3211, %3226
  %3229 = fadd fast float %3227, %3211
  %3230 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3231 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3232 = fsub fast float %3200, %3230
  %3233 = fsub fast float %3231, %3230
  %3234 = bitcast float %3233 to i32
  %3235 = sub nsw i32 2129859010, %3234
  %3236 = bitcast i32 %3235 to float
  %3237 = fmul fast float %3236, %3232
  %3238 = call float @dx.op.unary.f32(i32 7, float %3237)  ; Saturate(value)
  br label %3239

; <label>:3239                                    ; preds = %3193, %3188
  %3240 = phi float [ %3238, %3193 ], [ %516, %3188 ]
  %3241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3242 = extractvalue %dx.types.ResRet.i32 %3241, 0
  %3243 = and i32 %3242, 128
  %3244 = icmp eq i32 %3243, 0
  br i1 %3244, label %3261, label %3245

; <label>:3245                                    ; preds = %3239
  %3246 = add i32 %48, 484
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3246, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = add i32 %3248, 0
  %3250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3250, %dx.types.Handle %104, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3252 = extractvalue %dx.types.ResRet.f32 %3251, 0
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = and i32 %3254, 524288
  %3256 = icmp ne i32 %3255, 0
  %3257 = fcmp fast ogt float %3252, 0x3FE0101020000000
  %3258 = select i1 %3257, float 1.000000e+00, float 0.000000e+00
  %3259 = select i1 %3256, float %3258, float %3252
  %3260 = fmul fast float %3259, %3240
  br label %3261

; <label>:3261                                    ; preds = %3245, %3239
  %3262 = phi float [ %3260, %3245 ], [ %3240, %3239 ]
  %3263 = fcmp fast ult float %3262, 0x3F70101020000000
  br i1 %3263, label %4002, label %3264

; <label>:3264                                    ; preds = %3261
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 16
  %3268 = icmp eq i32 %3267, 0
  br i1 %3268, label %3467, label %3269

; <label>:3269                                    ; preds = %3264
  %3270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3271 = extractvalue %dx.types.ResRet.i32 %3270, 0
  %3272 = add i32 %48, 436
  %3273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3272, i32 undef)  ; BufferLoad(srv,index,wot)
  %3274 = extractvalue %dx.types.ResRet.i32 %3273, 0
  %3275 = add i32 %3274, 0
  %3276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3276, %dx.types.Handle %103, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3278 = extractvalue %dx.types.ResRet.f32 %3277, 0
  %3279 = extractvalue %dx.types.ResRet.f32 %3277, 1
  %3280 = extractvalue %dx.types.ResRet.f32 %3277, 2
  %3281 = extractvalue %dx.types.ResRet.f32 %3277, 3
  %3282 = and i32 %3271, 255
  %3283 = uitofp i32 %3282 to float
  %3284 = lshr i32 %3271, 8
  %3285 = and i32 %3284, 255
  %3286 = uitofp i32 %3285 to float
  %3287 = fmul fast float %3281, %3283
  %3288 = fadd fast float %3287, %3286
  %3289 = fmul fast float %3288, 0x3F70101000000000
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = and i32 %3291, 512
  %3293 = icmp eq i32 %3292, 0
  br i1 %3293, label %3302, label %3294

; <label>:3294                                    ; preds = %3269
  %3295 = add i32 %48, 520
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3295, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = add i32 %3297, 0
  %3299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3299, %dx.types.Handle %104, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3301 = extractvalue %dx.types.ResRet.f32 %3300, 0
  br label %3302

; <label>:3302                                    ; preds = %3294, %3269
  %3303 = phi float [ %3301, %3294 ], [ 1.000000e+00, %3269 ]
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = and i32 %3305, 33554432
  %3307 = icmp eq i32 %3306, 0
  br i1 %3307, label %3414, label %3308

; <label>:3308                                    ; preds = %3302
  %3309 = add i32 %48, 272
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 65535
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = lshr i32 %3311, 16
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = add i32 %48, 276
  %3317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3316, i32 undef)  ; BufferLoad(srv,index,wot)
  %3318 = extractvalue %dx.types.ResRet.i32 %3317, 0
  %3319 = and i32 %3318, 65535
  %3320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3319)  ; LegacyF16ToF32(value)
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = lshr i32 %3322, 24
  %3324 = uitofp i32 %3323 to float
  %3325 = fmul fast float %3324, 0x3F70101020000000
  %3326 = and i32 %3322, 255
  %3327 = uitofp i32 %3326 to float
  %3328 = fmul fast float %3327, 0x3F70101020000000
  %3329 = lshr i32 %3322, 8
  %3330 = and i32 %3329, 255
  %3331 = uitofp i32 %3330 to float
  %3332 = fmul fast float %3331, 0x3F70101020000000
  %3333 = lshr i32 %3322, 16
  %3334 = and i32 %3333, 255
  %3335 = uitofp i32 %3334 to float
  %3336 = fmul fast float %3335, 0x3F70101020000000
  %3337 = add i32 %48, 268
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %3354 = bitcast float %3278 to i32
  %3355 = ashr i32 %3354, 1
  %3356 = sub nsw i32 1597463174, %3355
  %3357 = bitcast i32 %3356 to float
  %3358 = fmul fast float %3278, 5.000000e-01
  %3359 = fmul fast float %3357, %3357
  %3360 = fmul fast float %3359, %3358
  %3361 = fsub fast float 1.500000e+00, %3360
  %3362 = fmul fast float %3357, %3278
  %3363 = fmul fast float %3362, %3361
  %3364 = bitcast float %3279 to i32
  %3365 = ashr i32 %3364, 1
  %3366 = sub nsw i32 1597463174, %3365
  %3367 = bitcast i32 %3366 to float
  %3368 = fmul fast float %3279, 5.000000e-01
  %3369 = fmul fast float %3367, %3367
  %3370 = fmul fast float %3369, %3368
  %3371 = fsub fast float 1.500000e+00, %3370
  %3372 = fmul fast float %3367, %3279
  %3373 = fmul fast float %3372, %3371
  %3374 = bitcast float %3280 to i32
  %3375 = ashr i32 %3374, 1
  %3376 = sub nsw i32 1597463174, %3375
  %3377 = bitcast i32 %3376 to float
  %3378 = fmul fast float %3280, 5.000000e-01
  %3379 = fmul fast float %3377, %3377
  %3380 = fmul fast float %3379, %3378
  %3381 = fsub fast float 1.500000e+00, %3380
  %3382 = fmul fast float %3377, %3280
  %3383 = fmul fast float %3382, %3381
  %3384 = fsub fast float %3363, %3345
  %3385 = fsub fast float %3373, %3349
  %3386 = fsub fast float %3383, %3353
  %3387 = fmul fast float %3384, %3313
  %3388 = fmul fast float %3385, %3315
  %3389 = fmul fast float %3386, %3320
  %3390 = fadd fast float %3387, %3328
  %3391 = fadd fast float %3388, %3332
  %3392 = fadd fast float %3389, %3336
  %3393 = call float @dx.op.unary.f32(i32 7, float %3390)  ; Saturate(value)
  %3394 = call float @dx.op.unary.f32(i32 7, float %3391)  ; Saturate(value)
  %3395 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  %3396 = fmul fast float %3393, %3393
  %3397 = fmul fast float %3394, %3394
  %3398 = fmul fast float %3395, %3395
  %3399 = fsub fast float %3396, %3278
  %3400 = fsub fast float %3397, %3279
  %3401 = fsub fast float %3398, %3280
  %3402 = fmul fast float %3399, %3303
  %3403 = fmul fast float %3400, %3303
  %3404 = fmul fast float %3401, %3303
  %3405 = fadd fast float %3402, %3278
  %3406 = fadd fast float %3403, %3279
  %3407 = fadd fast float %3404, %3280
  %3408 = fadd fast float %3325, %3289
  %3409 = fsub fast float %3408, %3342
  %3410 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  %3411 = fsub fast float %3410, %3289
  %3412 = fmul fast float %3411, %3303
  %3413 = fadd fast float %3412, %3289
  br label %3467

; <label>:3414                                    ; preds = %3302
  %3415 = and i32 %3305, 134217728
  %3416 = icmp eq i32 %3415, 0
  br i1 %3416, label %3451, label %3417

; <label>:3417                                    ; preds = %3414
  %3418 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %3419 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %3420 = call float @dx.op.unary.f32(i32 24, float %442)  ; Sqrt(value)
  %3421 = fadd fast float %3418, -5.000000e-01
  %3422 = fadd fast float %3419, -5.000000e-01
  %3423 = fadd fast float %3420, -5.000000e-01
  %3424 = fmul fast float %3421, %3303
  %3425 = fmul fast float %3422, %3303
  %3426 = fmul fast float %3423, %3303
  %3427 = fadd fast float %3424, 5.000000e-01
  %3428 = fadd fast float %3425, 5.000000e-01
  %3429 = fadd fast float %3426, 5.000000e-01
  %3430 = call float @dx.op.unary.f32(i32 24, float %3278)  ; Sqrt(value)
  %3431 = call float @dx.op.unary.f32(i32 24, float %3279)  ; Sqrt(value)
  %3432 = call float @dx.op.unary.f32(i32 24, float %3280)  ; Sqrt(value)
  %3433 = fmul fast float %3427, 2.000000e+00
  %3434 = fsub fast float 1.000000e+00, %3433
  %3435 = fmul fast float %3434, %3430
  %3436 = fadd fast float %3435, %3433
  %3437 = fmul fast float %3436, %3430
  %3438 = fmul fast float %3428, 2.000000e+00
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = fmul fast float %3439, %3431
  %3441 = fadd fast float %3440, %3438
  %3442 = fmul fast float %3441, %3431
  %3443 = fmul fast float %3429, 2.000000e+00
  %3444 = fsub fast float 1.000000e+00, %3443
  %3445 = fmul fast float %3444, %3432
  %3446 = fadd fast float %3445, %3443
  %3447 = fmul fast float %3446, %3432
  %3448 = fmul fast float %3437, %3437
  %3449 = fmul fast float %3442, %3442
  %3450 = fmul fast float %3447, %3447
  br label %3467

; <label>:3451                                    ; preds = %3414
  %3452 = fmul fast float %434, %434
  %3453 = fmul fast float %438, %438
  %3454 = fmul fast float %442, %442
  %3455 = fadd fast float %3452, -1.000000e+00
  %3456 = fadd fast float %3453, -1.000000e+00
  %3457 = fadd fast float %3454, -1.000000e+00
  %3458 = fmul fast float %3303, %3455
  %3459 = fmul fast float %3303, %3456
  %3460 = fmul fast float %3303, %3457
  %3461 = fadd fast float %3458, 1.000000e+00
  %3462 = fadd fast float %3459, 1.000000e+00
  %3463 = fadd fast float %3460, 1.000000e+00
  %3464 = fmul fast float %3461, %3278
  %3465 = fmul fast float %3462, %3279
  %3466 = fmul fast float %3463, %3280
  br label %3467

; <label>:3467                                    ; preds = %3451, %3417, %3308, %3264
  %3468 = phi float [ %3413, %3308 ], [ %3289, %3417 ], [ %3289, %3451 ], [ 0x3FA23C0BE0000000, %3264 ]
  %3469 = phi float [ %3405, %3308 ], [ %3448, %3417 ], [ %3464, %3451 ], [ 1.000000e+00, %3264 ]
  %3470 = phi float [ %3406, %3308 ], [ %3449, %3417 ], [ %3465, %3451 ], [ 1.000000e+00, %3264 ]
  %3471 = phi float [ %3407, %3308 ], [ %3450, %3417 ], [ %3466, %3451 ], [ 1.000000e+00, %3264 ]
  %3472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3473 = extractvalue %dx.types.CBufRet.i32 %3472, 1
  %3474 = and i32 %3473, 1
  %3475 = icmp ne i32 %3474, 0
  %3476 = add i32 %48, 356
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = and i32 %3478, 32
  %3480 = icmp ne i32 %3479, 0
  %3481 = and i1 %3475, %3480
  %3482 = select i1 %3481, float 1.000000e+00, float %3469
  %3483 = select i1 %3481, float 0x3FD3333340000000, float %3470
  %3484 = select i1 %3481, float 0x3FD3333340000000, float %3471
  %3485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3486 = extractvalue %dx.types.ResRet.i32 %3485, 0
  %3487 = and i32 %3486, 32
  %3488 = icmp eq i32 %3487, 0
  br i1 %3488, label %3561, label %3489

; <label>:3489                                    ; preds = %3467
  %3490 = add i32 %48, 140
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = add i32 %48, 452
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3493, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = add i32 %3495, 0
  %3497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3497, %dx.types.Handle %103, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3499 = extractvalue %dx.types.ResRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.ResRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.ResRet.f32 %3498, 2
  %3502 = extractvalue %dx.types.ResRet.f32 %3498, 3
  %3503 = and i32 %3492, 255
  %3504 = uitofp i32 %3503 to float
  %3505 = lshr i32 %3492, 8
  %3506 = and i32 %3505, 255
  %3507 = uitofp i32 %3506 to float
  %3508 = lshr i32 %3492, 16
  %3509 = and i32 %3508, 255
  %3510 = uitofp i32 %3509 to float
  %3511 = fmul fast float %3510, 0x3F70101000000000
  %3512 = fmul fast float %3499, %3504
  %3513 = fadd fast float %3512, %3507
  %3514 = fmul fast float %3513, 0x3F70101000000000
  %3515 = fadd fast float %3500, -5.000000e-01
  %3516 = fadd fast float %3502, -5.000000e-01
  %3517 = fmul fast float %3515, %3511
  %3518 = fmul fast float %3516, %3511
  %3519 = fadd fast float %3517, 5.000000e-01
  %3520 = fadd fast float %3518, 5.000000e-01
  %3521 = fmul fast float %3519, 2.000000e+00
  %3522 = fadd fast float %3521, -1.000000e+00
  %3523 = fmul fast float %3520, 2.000000e+00
  %3524 = fadd fast float %3523, -1.000000e+00
  %3525 = fadd fast float %3522, %3524
  %3526 = fmul fast float %3525, 5.000000e-01
  %3527 = fsub fast float %3522, %3524
  %3528 = fmul fast float %3527, 5.000000e-01
  %3529 = call float @dx.op.unary.f32(i32 6, float %3526)  ; FAbs(value)
  %3530 = fsub fast float 1.000000e+00, %3529
  %3531 = call float @dx.op.unary.f32(i32 6, float %3528)  ; FAbs(value)
  %3532 = fsub fast float %3530, %3531
  %3533 = call float @dx.op.dot3.f32(i32 55, float %3526, float %3528, float %3532, float %3526, float %3528, float %3532)  ; Dot3(ax,ay,az,bx,by,bz)
  %3534 = call float @dx.op.unary.f32(i32 25, float %3533)  ; Rsqrt(value)
  %3535 = fmul fast float %3526, %3534
  %3536 = fmul fast float %3528, %3534
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = and i32 %3538, 67108864
  %3540 = icmp eq i32 %3539, 0
  br i1 %3540, label %3557, label %3541

; <label>:3541                                    ; preds = %3489
  %3542 = add i32 %48, 328
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = and i32 %3544, 65535
  %3546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3545)  ; LegacyF16ToF32(value)
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = and i32 %3548, 65535
  %3550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3549)  ; LegacyF16ToF32(value)
  %3551 = lshr i32 %3544, 16
  %3552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3551)  ; LegacyF16ToF32(value)
  %3553 = fsub fast float %3514, %3552
  %3554 = fmul fast float %3553, %3546
  %3555 = fadd fast float %3554, %3550
  %3556 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  br label %3557

; <label>:3557                                    ; preds = %3541, %3489
  %3558 = phi float [ %3556, %3541 ], [ %3514, %3489 ]
  %3559 = call float @dx.op.dot2.f32(i32 54, float %3535, float %3536, float %3093, float %3094)  ; Dot2(ax,ay,bx,by)
  %3560 = call float @dx.op.dot2.f32(i32 54, float %3535, float %3536, float %3095, float %3096)  ; Dot2(ax,ay,bx,by)
  br label %3561

; <label>:3561                                    ; preds = %3557, %3467
  %3562 = phi float [ %3558, %3557 ], [ 0x3FD6666660000000, %3467 ]
  %3563 = phi float [ %3559, %3557 ], [ 0.000000e+00, %3467 ]
  %3564 = phi float [ %3560, %3557 ], [ 0.000000e+00, %3467 ]
  %3565 = phi float [ %3501, %3557 ], [ 1.000000e+00, %3467 ]
  %3566 = add i32 %48, 208
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = lshr i32 %3568, 22
  %3570 = shl nuw nsw i32 %3569, 5
  %3571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3570)  ; LegacyF16ToF32(value)
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = and i32 %3573, 64
  %3575 = icmp eq i32 %3574, 0
  br i1 %3575, label %3609, label %3576

; <label>:3576                                    ; preds = %3561
  %3577 = add i32 %48, 468
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = add i32 %3579, 0
  %3581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.i32 %3582, 0
  %3584 = and i32 %3583, 131072
  %3585 = icmp eq i32 %3584, 0
  %3586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3581, %dx.types.Handle %103, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3587 = extractvalue %dx.types.ResRet.f32 %3586, 0
  %3588 = extractvalue %dx.types.ResRet.f32 %3586, 1
  %3589 = extractvalue %dx.types.ResRet.f32 %3586, 2
  %3590 = fmul fast float %3587, %422
  %3591 = fmul fast float %3588, %425
  %3592 = fmul fast float %3589, %428
  br i1 %3585, label %3599, label %3593

; <label>:3593                                    ; preds = %3576
  %3594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3595 = extractvalue %dx.types.CBufRet.f32 %3594, 0
  %3596 = fmul fast float %3595, %3590
  %3597 = fmul fast float %3595, %3591
  %3598 = fmul fast float %3595, %3592
  br label %3599

; <label>:3599                                    ; preds = %3593, %3576
  %3600 = phi float [ %3596, %3593 ], [ %3590, %3576 ]
  %3601 = phi float [ %3597, %3593 ], [ %3591, %3576 ]
  %3602 = phi float [ %3598, %3593 ], [ %3592, %3576 ]
  %3603 = fmul fast float %3600, %3571
  %3604 = select i1 %279, float %3603, float %3600
  %3605 = call float @dx.op.dot3.f32(i32 55, float %3604, float %3601, float %3602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3606 = select i1 %279, float 0.000000e+00, float %3600
  %3607 = select i1 %279, float %3605, float %3601
  %3608 = select i1 %279, float 0.000000e+00, float %3602
  br label %3609

; <label>:3609                                    ; preds = %3599, %3561
  %3610 = phi float [ %3606, %3599 ], [ 0.000000e+00, %3561 ]
  %3611 = phi float [ %3607, %3599 ], [ 0.000000e+00, %3561 ]
  %3612 = phi float [ %3608, %3599 ], [ 0.000000e+00, %3561 ]
  %3613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.i32 %3613, 0
  %3615 = and i32 %3614, 1024
  %3616 = icmp eq i32 %3615, 0
  br i1 %3616, label %3647, label %3617

; <label>:3617                                    ; preds = %3609
  %3618 = add i32 %48, 200
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = and i32 %3620, 255
  %3622 = uitofp i32 %3621 to float
  %3623 = fmul fast float %3622, 0x3F70101020000000
  %3624 = lshr i32 %3620, 8
  %3625 = and i32 %3624, 255
  %3626 = uitofp i32 %3625 to float
  %3627 = fmul fast float %3626, 0x3F70101020000000
  %3628 = lshr i32 %3620, 16
  %3629 = and i32 %3628, 255
  %3630 = uitofp i32 %3629 to float
  %3631 = fmul fast float %3630, 0x3F70101020000000
  %3632 = fmul fast float %3623, %3623
  %3633 = fmul fast float %3627, %3627
  %3634 = fmul fast float %3631, %3631
  %3635 = add i32 %48, 536
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = add i32 %3637, 0
  %3639 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3638, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3640 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3639, %dx.types.Handle %104, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.ResRet.f32 %3640, 1
  %3643 = extractvalue %dx.types.ResRet.f32 %3640, 2
  %3644 = fmul fast float %3632, %3641
  %3645 = fmul fast float %3633, %3642
  %3646 = fmul fast float %3634, %3643
  br label %3647

; <label>:3647                                    ; preds = %3617, %3609
  %3648 = phi float [ %3644, %3617 ], [ 0.000000e+00, %3609 ]
  %3649 = phi float [ %3645, %3617 ], [ 0.000000e+00, %3609 ]
  %3650 = phi float [ %3646, %3617 ], [ 0.000000e+00, %3609 ]
  %3651 = fcmp fast ogt float %3648, 0.000000e+00
  %3652 = fcmp fast ogt float %3649, 0.000000e+00
  %3653 = fcmp fast ogt float %3650, 0.000000e+00
  %3654 = call float @dx.op.unary.f32(i32 23, float %3648)  ; Log(value)
  %3655 = call float @dx.op.unary.f32(i32 23, float %3649)  ; Log(value)
  %3656 = call float @dx.op.unary.f32(i32 23, float %3650)  ; Log(value)
  %3657 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3658 = extractvalue %dx.types.ResRet.i32 %3657, 0
  %3659 = lshr i32 %3658, 7
  %3660 = and i32 %3659, 32752
  %3661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3660)  ; LegacyF16ToF32(value)
  %3662 = fmul fast float %3654, 0xBFE62E4300000000
  %3663 = fmul fast float %3662, %3661
  %3664 = fmul fast float %3655, 0xBFE62E4300000000
  %3665 = fmul fast float %3664, %3661
  %3666 = fmul fast float %3656, 0xBFE62E4300000000
  %3667 = fmul fast float %3666, %3661
  %3668 = select i1 %3651, float %3663, float 1.270000e+02
  %3669 = select i1 %3652, float %3665, float 1.270000e+02
  %3670 = select i1 %3653, float %3667, float 1.270000e+02
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = and i32 %3672, 10240
  %3674 = icmp eq i32 %3673, 0
  br i1 %3674, label %3719, label %3675

; <label>:3675                                    ; preds = %3647
  %3676 = add i32 %48, 552
  %3677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.i32 %3677, 0
  %3679 = add i32 %3678, 0
  %3680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3680, %dx.types.Handle %104, float %3189, float %3190, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 3
  %3684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.i32 %3684, 0
  %3686 = and i32 %3685, 1048576
  %3687 = icmp ne i32 %3686, 0
  %3688 = and i32 %3685, 8192
  %3689 = icmp eq i32 %3688, 0
  br i1 %3689, label %3705, label %3690

; <label>:3690                                    ; preds = %3675
  %3691 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3692 = select i1 %3687, float %3691, float %3682
  %3693 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3694 = select i1 %3687, float %3693, float %3682
  %3695 = add i32 %48, 144
  %3696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3695, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.i32 %3696, 0
  %3698 = lshr i32 %3697, 16
  %3699 = and i32 %3698, 255
  %3700 = uitofp i32 %3699 to float
  %3701 = fmul fast float %3700, 0x3F80101020000000
  %3702 = fmul fast float %3701, %3694
  %3703 = fmul fast float %3701, %3682
  %3704 = fmul fast float %3701, %3692
  br label %3705

; <label>:3705                                    ; preds = %3690, %3675
  %3706 = phi float [ %3702, %3690 ], [ 0.000000e+00, %3675 ]
  %3707 = phi float [ %3703, %3690 ], [ 0.000000e+00, %3675 ]
  %3708 = phi float [ %3704, %3690 ], [ 0.000000e+00, %3675 ]
  %3709 = and i32 %3685, 2048
  %3710 = icmp eq i32 %3709, 0
  br i1 %3710, label %3719, label %3711

; <label>:3711                                    ; preds = %3705
  %3712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.i32 %3712, 0
  %3714 = shl i32 %3713, 4
  %3715 = and i32 %3714, 32752
  %3716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3715)  ; LegacyF16ToF32(value)
  %3717 = fmul fast float %3716, %3683
  %3718 = call float @dx.op.binary.f32(i32 35, float %3717, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3719

; <label>:3719                                    ; preds = %3711, %3705, %3647
  %3720 = phi float [ %3706, %3711 ], [ %3706, %3705 ], [ 0.000000e+00, %3647 ]
  %3721 = phi float [ %3707, %3711 ], [ %3707, %3705 ], [ 0.000000e+00, %3647 ]
  %3722 = phi float [ %3708, %3711 ], [ %3708, %3705 ], [ 0.000000e+00, %3647 ]
  %3723 = phi float [ %3718, %3711 ], [ 0x3F70101020000000, %3705 ], [ 0x3F70101020000000, %3647 ]
  %3724 = add i32 %48, 144
  %3725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.i32 %3725, 0
  %3727 = and i32 %3726, 255
  %3728 = uitofp i32 %3727 to float
  %3729 = lshr i32 %3726, 8
  %3730 = and i32 %3729, 255
  %3731 = uitofp i32 %3730 to float
  %3732 = call float @dx.op.dot3.f32(i32 55, float %3482, float %3483, float %3484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3733 = fmul fast float %3731, %3732
  %3734 = fadd fast float %3733, %3728
  %3735 = fmul fast float %3734, 0x3F70101020000000
  %3736 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  br i1 %3081, label %3737, label %3772

; <label>:3737                                    ; preds = %3719
  %3738 = fmul fast float %3723, 2.000000e+00
  %3739 = fcmp fast olt float %3668, 1.270000e+02
  %3740 = fcmp fast olt float %3669, 1.270000e+02
  %3741 = fcmp fast olt float %3670, 1.270000e+02
  %3742 = fmul fast float %3668, 0xBFF7154760000000
  %3743 = fmul fast float %3742, %3738
  %3744 = fmul fast float %3669, 0xBFF7154760000000
  %3745 = fmul fast float %3744, %3738
  %3746 = fmul fast float %3670, 0xBFF7154760000000
  %3747 = fmul fast float %3746, %3738
  %3748 = call float @dx.op.unary.f32(i32 21, float %3743)  ; Exp(value)
  %3749 = call float @dx.op.unary.f32(i32 21, float %3745)  ; Exp(value)
  %3750 = call float @dx.op.unary.f32(i32 21, float %3747)  ; Exp(value)
  %3751 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3752 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3753 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3754 = fadd fast float %3751, -1.000000e+00
  %3755 = select i1 %3739, float %3754, float -1.000000e+00
  %3756 = fadd fast float %3752, -1.000000e+00
  %3757 = select i1 %3740, float %3756, float -1.000000e+00
  %3758 = fadd fast float %3753, -1.000000e+00
  %3759 = select i1 %3741, float %3758, float -1.000000e+00
  %3760 = fmul fast float %3755, %3262
  %3761 = fmul fast float %3757, %3262
  %3762 = fmul fast float %3759, %3262
  %3763 = fadd fast float %3760, 1.000000e+00
  %3764 = fadd fast float %3761, 1.000000e+00
  %3765 = fadd fast float %3762, 1.000000e+00
  %3766 = fmul fast float %3763, %3063
  %3767 = fmul fast float %3764, %3064
  %3768 = fmul fast float %3765, %3065
  %3769 = fmul fast float %3763, %3066
  %3770 = fmul fast float %3764, %3067
  %3771 = fmul fast float %3765, %3068
  br label %3772

; <label>:3772                                    ; preds = %3737, %3719
  %3773 = phi float [ %3766, %3737 ], [ %3063, %3719 ]
  %3774 = phi float [ %3767, %3737 ], [ %3064, %3719 ]
  %3775 = phi float [ %3768, %3737 ], [ %3065, %3719 ]
  %3776 = phi float [ %3769, %3737 ], [ %3066, %3719 ]
  %3777 = phi float [ %3770, %3737 ], [ %3067, %3719 ]
  %3778 = phi float [ %3771, %3737 ], [ %3068, %3719 ]
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = and i32 %3780, 3
  %3782 = icmp eq i32 %3781, 3
  br i1 %3782, label %3861, label %3783

; <label>:3783                                    ; preds = %3772
  %3784 = and i32 %3780, 16
  %3785 = icmp ne i32 %3784, 0
  %3786 = select i1 %3785, float %3262, float 0.000000e+00
  %3787 = icmp eq i32 %3781, 0
  br i1 %3787, label %3788, label %3816

; <label>:3788                                    ; preds = %3783
  %3789 = and i32 %3780, 64
  %3790 = icmp ne i32 %3789, 0
  %3791 = select i1 %3790, float %3262, float 0.000000e+00
  %3792 = fsub fast float %3482, %3773
  %3793 = fsub fast float %3483, %3774
  %3794 = fsub fast float %3484, %3775
  %3795 = fmul fast float %3786, %3792
  %3796 = fmul fast float %3786, %3793
  %3797 = fmul fast float %3786, %3794
  %3798 = fadd fast float %3795, %3773
  %3799 = fadd fast float %3796, %3774
  %3800 = fadd fast float %3797, %3775
  %3801 = fsub fast float %3468, %3075
  %3802 = fmul fast float %3786, %3801
  %3803 = fadd fast float %3802, %3075
  %3804 = fsub fast float %3610, %3776
  %3805 = fsub fast float %3611, %3777
  %3806 = fsub fast float %3612, %3778
  %3807 = fmul fast float %3791, %3804
  %3808 = fmul fast float %3791, %3805
  %3809 = fmul fast float %3791, %3806
  %3810 = fadd fast float %3807, %3776
  %3811 = fadd fast float %3808, %3777
  %3812 = fadd fast float %3809, %3778
  %3813 = fsub fast float %3736, %3079
  %3814 = fmul fast float %3786, %3813
  %3815 = fadd fast float %3814, %3079
  br label %3861

; <label>:3816                                    ; preds = %3783
  %3817 = icmp eq i32 %3781, 1
  br i1 %3817, label %3818, label %3831

; <label>:3818                                    ; preds = %3816
  %3819 = fadd fast float %3482, -1.000000e+00
  %3820 = fadd fast float %3483, -1.000000e+00
  %3821 = fadd fast float %3484, -1.000000e+00
  %3822 = fmul fast float %3786, %3819
  %3823 = fmul fast float %3786, %3820
  %3824 = fmul fast float %3786, %3821
  %3825 = fadd fast float %3822, 1.000000e+00
  %3826 = fadd fast float %3823, 1.000000e+00
  %3827 = fadd fast float %3824, 1.000000e+00
  %3828 = fmul fast float %3825, %3773
  %3829 = fmul fast float %3826, %3774
  %3830 = fmul fast float %3827, %3775
  br label %3861

; <label>:3831                                    ; preds = %3816
  %3832 = icmp eq i32 %3781, 2
  br i1 %3832, label %3833, label %3861

; <label>:3833                                    ; preds = %3831
  %3834 = call float @dx.op.unary.f32(i32 24, float %3482)  ; Sqrt(value)
  %3835 = call float @dx.op.unary.f32(i32 24, float %3483)  ; Sqrt(value)
  %3836 = call float @dx.op.unary.f32(i32 24, float %3484)  ; Sqrt(value)
  %3837 = fadd fast float %3834, -5.000000e-01
  %3838 = fadd fast float %3835, -5.000000e-01
  %3839 = fadd fast float %3836, -5.000000e-01
  %3840 = fmul fast float %3837, %3786
  %3841 = fmul fast float %3838, %3786
  %3842 = fmul fast float %3839, %3786
  %3843 = fadd fast float %3840, 5.000000e-01
  %3844 = fadd fast float %3841, 5.000000e-01
  %3845 = fadd fast float %3842, 5.000000e-01
  %3846 = fmul fast float %3843, 2.000000e+00
  %3847 = fsub fast float 1.000000e+00, %3846
  %3848 = fmul fast float %3847, %3773
  %3849 = fadd fast float %3848, %3846
  %3850 = fmul fast float %3849, %3773
  %3851 = fmul fast float %3844, 2.000000e+00
  %3852 = fsub fast float 1.000000e+00, %3851
  %3853 = fmul fast float %3852, %3774
  %3854 = fadd fast float %3853, %3851
  %3855 = fmul fast float %3854, %3774
  %3856 = fmul fast float %3845, 2.000000e+00
  %3857 = fsub fast float 1.000000e+00, %3856
  %3858 = fmul fast float %3857, %3775
  %3859 = fadd fast float %3858, %3856
  %3860 = fmul fast float %3859, %3775
  br label %3861

; <label>:3861                                    ; preds = %3833, %3831, %3818, %3788, %3772
  %3862 = phi float [ %3773, %3772 ], [ %3850, %3833 ], [ %3773, %3831 ], [ %3828, %3818 ], [ %3798, %3788 ]
  %3863 = phi float [ %3774, %3772 ], [ %3855, %3833 ], [ %3774, %3831 ], [ %3829, %3818 ], [ %3799, %3788 ]
  %3864 = phi float [ %3775, %3772 ], [ %3860, %3833 ], [ %3775, %3831 ], [ %3830, %3818 ], [ %3800, %3788 ]
  %3865 = phi float [ %3776, %3772 ], [ %3776, %3833 ], [ %3776, %3831 ], [ %3776, %3818 ], [ %3810, %3788 ]
  %3866 = phi float [ %3777, %3772 ], [ %3777, %3833 ], [ %3777, %3831 ], [ %3777, %3818 ], [ %3811, %3788 ]
  %3867 = phi float [ %3778, %3772 ], [ %3778, %3833 ], [ %3778, %3831 ], [ %3778, %3818 ], [ %3812, %3788 ]
  %3868 = phi float [ %3075, %3772 ], [ %3075, %3833 ], [ %3075, %3831 ], [ %3075, %3818 ], [ %3803, %3788 ]
  %3869 = phi float [ %3079, %3772 ], [ %3079, %3833 ], [ %3079, %3831 ], [ %3079, %3818 ], [ %3815, %3788 ]
  %3870 = and i32 %3780, 12
  %3871 = icmp eq i32 %3870, 12
  br i1 %3871, label %4002, label %3872

; <label>:3872                                    ; preds = %3861
  %3873 = and i32 %3780, 2097184
  %3874 = icmp eq i32 %3873, 2097184
  %3875 = select i1 %3874, float %3262, float 0.000000e+00
  %3876 = and i32 %3780, 4194336
  %3877 = icmp eq i32 %3876, 4194336
  %3878 = select i1 %3877, float %3262, float 0.000000e+00
  %3879 = and i32 %3780, 8388640
  %3880 = icmp eq i32 %3879, 8388640
  %3881 = select i1 %3880, float %3262, float 0.000000e+00
  %3882 = and i32 %3780, 1024
  %3883 = icmp ne i32 %3882, 0
  %3884 = select i1 %3883, float %3262, float 0.000000e+00
  %3885 = and i32 %3780, 2048
  %3886 = icmp ne i32 %3885, 0
  %3887 = select i1 %3886, float %3262, float 0.000000e+00
  %3888 = and i32 %3780, 8192
  %3889 = icmp ne i32 %3888, 0
  %3890 = select i1 %3889, float %3262, float 0.000000e+00
  %3891 = icmp eq i32 %3870, 0
  br i1 %3891, label %3892, label %3926

; <label>:3892                                    ; preds = %3872
  %3893 = fsub fast float %3563, %3061
  %3894 = fsub fast float %3564, %3062
  %3895 = fmul fast float %3875, %3893
  %3896 = fmul fast float %3875, %3894
  %3897 = fadd fast float %3895, %3061
  %3898 = fadd fast float %3896, %3062
  %3899 = fsub fast float %3565, %3077
  %3900 = fmul fast float %3878, %3899
  %3901 = fadd fast float %3900, %3077
  %3902 = fsub fast float %3562, %3076
  %3903 = fmul fast float %3881, %3902
  %3904 = fadd fast float %3903, %3076
  %3905 = fsub fast float %3668, %3069
  %3906 = fsub fast float %3669, %3070
  %3907 = fsub fast float %3670, %3071
  %3908 = fmul fast float %3884, %3905
  %3909 = fmul fast float %3884, %3906
  %3910 = fmul fast float %3884, %3907
  %3911 = fadd fast float %3908, %3069
  %3912 = fadd fast float %3909, %3070
  %3913 = fadd fast float %3910, %3071
  %3914 = fsub fast float %3723, %3078
  %3915 = fmul fast float %3887, %3914
  %3916 = fadd fast float %3915, %3078
  %3917 = fsub fast float %3720, %3072
  %3918 = fsub fast float %3721, %3073
  %3919 = fsub fast float %3722, %3074
  %3920 = fmul fast float %3890, %3917
  %3921 = fmul fast float %3890, %3918
  %3922 = fmul fast float %3890, %3919
  %3923 = fadd fast float %3920, %3072
  %3924 = fadd fast float %3921, %3073
  %3925 = fadd fast float %3922, %3074
  br label %4002

; <label>:3926                                    ; preds = %3872
  %3927 = icmp eq i32 %3870, 4
  br i1 %3927, label %3928, label %3974

; <label>:3928                                    ; preds = %3926
  %3929 = fmul fast float %3875, %3563
  %3930 = fmul fast float %3875, %3564
  %3931 = fadd fast float %3929, %3061
  %3932 = fadd fast float %3930, %3062
  %3933 = call float @dx.op.binary.f32(i32 36, float %3077, float %3565)  ; FMin(a,b)
  %3934 = fsub fast float %3933, %3077
  %3935 = fmul fast float %3934, %3878
  %3936 = fadd fast float %3935, %3077
  %3937 = fadd fast float %3562, %3076
  %3938 = fmul fast float %3937, 0x3FF337FAE0000000
  %3939 = fmul fast float %3076, %3076
  %3940 = fmul fast float %3562, %3562
  %3941 = fadd fast float %3940, %3939
  %3942 = fmul fast float %3941, 0x3FE5152B00000000
  %3943 = fmul fast float %3076, 0xBFCC1F85E0000000
  %3944 = fmul fast float %3943, %3562
  %3945 = fadd fast float %3944, 0xBFE1363700000000
  %3946 = fadd fast float %3945, %3938
  %3947 = fsub fast float %3946, %3942
  %3948 = fmul fast float %3937, 0x3FBA6F0D00000000
  %3949 = fmul fast float %3941, 0x3FD0432880000000
  %3950 = fmul fast float %3076, 0xBFEF110800000000
  %3951 = fmul fast float %3950, %3562
  %3952 = fadd fast float %3951, 1.000000e+00
  %3953 = fsub fast float %3952, %3948
  %3954 = fadd fast float %3953, %3949
  %3955 = fdiv fast float %3947, %3954
  %3956 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3957 = fsub fast float %3956, %3076
  %3958 = fmul fast float %3957, %3881
  %3959 = fadd fast float %3958, %3076
  %3960 = fmul fast float %3884, %3668
  %3961 = fmul fast float %3884, %3669
  %3962 = fmul fast float %3884, %3670
  %3963 = fadd fast float %3960, %3069
  %3964 = fadd fast float %3961, %3070
  %3965 = fadd fast float %3962, %3071
  %3966 = fmul fast float %3887, %3723
  %3967 = fadd fast float %3966, %3078
  %3968 = fmul fast float %3890, %3720
  %3969 = fmul fast float %3890, %3721
  %3970 = fmul fast float %3890, %3722
  %3971 = fadd fast float %3968, %3072
  %3972 = fadd fast float %3969, %3073
  %3973 = fadd fast float %3970, %3074
  br label %4002

; <label>:3974                                    ; preds = %3926
  %3975 = icmp eq i32 %3870, 8
  br i1 %3975, label %3976, label %4002

; <label>:3976                                    ; preds = %3974
  %3977 = fmul fast float %3875, %3563
  %3978 = fmul fast float %3875, %3564
  %3979 = fadd fast float %3977, %3061
  %3980 = fadd fast float %3978, %3062
  %3981 = call float @dx.op.binary.f32(i32 36, float %3077, float %3565)  ; FMin(a,b)
  %3982 = fsub fast float %3981, %3077
  %3983 = fmul fast float %3982, %3878
  %3984 = fadd fast float %3983, %3077
  %3985 = fsub fast float %3562, %3076
  %3986 = fmul fast float %3881, %3985
  %3987 = fadd fast float %3986, %3076
  %3988 = fmul fast float %3884, %3668
  %3989 = fmul fast float %3884, %3669
  %3990 = fmul fast float %3884, %3670
  %3991 = fadd fast float %3988, %3069
  %3992 = fadd fast float %3989, %3070
  %3993 = fadd fast float %3990, %3071
  %3994 = fmul fast float %3887, %3723
  %3995 = fadd fast float %3994, %3078
  %3996 = fmul fast float %3890, %3720
  %3997 = fmul fast float %3890, %3721
  %3998 = fmul fast float %3890, %3722
  %3999 = fadd fast float %3996, %3072
  %4000 = fadd fast float %3997, %3073
  %4001 = fadd fast float %3998, %3074
  br label %4002

; <label>:4002                                    ; preds = %3976, %3974, %3928, %3892, %3861, %3261, %3080, %3060
  %4003 = phi float [ %3061, %3861 ], [ %3061, %3261 ], [ %3061, %3060 ], [ %3061, %3080 ], [ %3897, %3892 ], [ %3931, %3928 ], [ %3061, %3974 ], [ %3979, %3976 ]
  %4004 = phi float [ %3062, %3861 ], [ %3062, %3261 ], [ %3062, %3060 ], [ %3062, %3080 ], [ %3898, %3892 ], [ %3932, %3928 ], [ %3062, %3974 ], [ %3980, %3976 ]
  %4005 = phi float [ %3862, %3861 ], [ %3063, %3261 ], [ %3063, %3060 ], [ %3063, %3080 ], [ %3862, %3892 ], [ %3862, %3928 ], [ %3862, %3974 ], [ %3862, %3976 ]
  %4006 = phi float [ %3863, %3861 ], [ %3064, %3261 ], [ %3064, %3060 ], [ %3064, %3080 ], [ %3863, %3892 ], [ %3863, %3928 ], [ %3863, %3974 ], [ %3863, %3976 ]
  %4007 = phi float [ %3864, %3861 ], [ %3065, %3261 ], [ %3065, %3060 ], [ %3065, %3080 ], [ %3864, %3892 ], [ %3864, %3928 ], [ %3864, %3974 ], [ %3864, %3976 ]
  %4008 = phi float [ %3865, %3861 ], [ %3066, %3261 ], [ %3066, %3060 ], [ %3066, %3080 ], [ %3865, %3892 ], [ %3865, %3928 ], [ %3865, %3974 ], [ %3865, %3976 ]
  %4009 = phi float [ %3866, %3861 ], [ %3067, %3261 ], [ %3067, %3060 ], [ %3067, %3080 ], [ %3866, %3892 ], [ %3866, %3928 ], [ %3866, %3974 ], [ %3866, %3976 ]
  %4010 = phi float [ %3867, %3861 ], [ %3068, %3261 ], [ %3068, %3060 ], [ %3068, %3080 ], [ %3867, %3892 ], [ %3867, %3928 ], [ %3867, %3974 ], [ %3867, %3976 ]
  %4011 = phi float [ %3069, %3861 ], [ %3069, %3261 ], [ %3069, %3060 ], [ %3069, %3080 ], [ %3911, %3892 ], [ %3963, %3928 ], [ %3069, %3974 ], [ %3991, %3976 ]
  %4012 = phi float [ %3070, %3861 ], [ %3070, %3261 ], [ %3070, %3060 ], [ %3070, %3080 ], [ %3912, %3892 ], [ %3964, %3928 ], [ %3070, %3974 ], [ %3992, %3976 ]
  %4013 = phi float [ %3071, %3861 ], [ %3071, %3261 ], [ %3071, %3060 ], [ %3071, %3080 ], [ %3913, %3892 ], [ %3965, %3928 ], [ %3071, %3974 ], [ %3993, %3976 ]
  %4014 = phi float [ %3072, %3861 ], [ %3072, %3261 ], [ %3072, %3060 ], [ %3072, %3080 ], [ %3923, %3892 ], [ %3971, %3928 ], [ %3072, %3974 ], [ %3999, %3976 ]
  %4015 = phi float [ %3073, %3861 ], [ %3073, %3261 ], [ %3073, %3060 ], [ %3073, %3080 ], [ %3924, %3892 ], [ %3972, %3928 ], [ %3073, %3974 ], [ %4000, %3976 ]
  %4016 = phi float [ %3074, %3861 ], [ %3074, %3261 ], [ %3074, %3060 ], [ %3074, %3080 ], [ %3925, %3892 ], [ %3973, %3928 ], [ %3074, %3974 ], [ %4001, %3976 ]
  %4017 = phi float [ %3868, %3861 ], [ %3075, %3261 ], [ %3075, %3060 ], [ %3075, %3080 ], [ %3868, %3892 ], [ %3868, %3928 ], [ %3868, %3974 ], [ %3868, %3976 ]
  %4018 = phi float [ %3076, %3861 ], [ %3076, %3261 ], [ %3076, %3060 ], [ %3076, %3080 ], [ %3904, %3892 ], [ %3959, %3928 ], [ %3076, %3974 ], [ %3987, %3976 ]
  %4019 = phi float [ %3077, %3861 ], [ %3077, %3261 ], [ %3077, %3060 ], [ %3077, %3080 ], [ %3901, %3892 ], [ %3936, %3928 ], [ %3077, %3974 ], [ %3984, %3976 ]
  %4020 = phi float [ %3078, %3861 ], [ %3078, %3261 ], [ %3078, %3060 ], [ %3078, %3080 ], [ %3916, %3892 ], [ %3967, %3928 ], [ %3078, %3974 ], [ %3995, %3976 ]
  %4021 = phi float [ %3869, %3861 ], [ %3079, %3261 ], [ %3079, %3060 ], [ %3079, %3080 ], [ %3869, %3892 ], [ %3869, %3928 ], [ %3869, %3974 ], [ %3869, %3976 ]
  %4022 = add i32 %48, 408
  %4023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4022, i32 undef)  ; BufferLoad(srv,index,wot)
  %4024 = extractvalue %dx.types.ResRet.i32 %4023, 0
  %4025 = extractvalue %dx.types.ResRet.i32 %4023, 1
  %4026 = bitcast i32 %4024 to float
  %4027 = bitcast i32 %4025 to float
  %4028 = fcmp fast oge float %4026, 0.000000e+00
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = select i1 %4028, float %4026, float %4030
  %4032 = add i32 %48, 504
  %4033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.i32 %4033, 0
  %4035 = add i32 %4034, 0
  %4036 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4035, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4037 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4036, %dx.types.Handle %104, float %85, float %86, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4038 = extractvalue %dx.types.ResRet.f32 %4037, 0
  %4039 = fmul fast float %4038, %4027
  %4040 = fadd fast float %4039, %4031
  %4041 = call float @dx.op.dot2.f32(i32 54, float %4003, float %4004, float %4003, float %4004)  ; Dot2(ax,ay,bx,by)
  %4042 = fmul fast float %4041, 0x3FE3333340000000
  %4043 = fsub fast float 1.000000e+00, %4042
  %4044 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4043, float %4003, float %4004, float %4043)  ; Dot3(ax,ay,az,bx,by,bz)
  %4045 = call float @dx.op.unary.f32(i32 25, float %4044)  ; Rsqrt(value)
  %4046 = fmul fast float %4045, %4003
  %4047 = fmul fast float %4045, %4004
  %4048 = fmul fast float %4043, %4045
  %4049 = fmul fast float %4048, %114
  %4050 = fmul fast float %4048, %115
  %4051 = fmul fast float %4048, %116
  %4052 = fmul fast float %4046, %78
  %4053 = fmul fast float %4046, %79
  %4054 = fmul fast float %4046, %80
  %4055 = fadd fast float %4049, %4052
  %4056 = fadd fast float %4050, %4053
  %4057 = fadd fast float %4051, %4054
  %4058 = fmul fast float %126, %4047
  %4059 = fmul fast float %127, %4047
  %4060 = fmul fast float %128, %4047
  %4061 = fadd fast float %4055, %4058
  %4062 = fadd fast float %4056, %4059
  %4063 = fadd fast float %4057, %4060
  %4064 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4062, float %4063, float %4061, float %4062, float %4063)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = call float @dx.op.unary.f32(i32 25, float %4064)  ; Rsqrt(value)
  %4066 = fmul fast float %4061, %4065
  %4067 = fmul fast float %4062, %4065
  %4068 = fmul fast float %4063, %4065
  %4069 = icmp eq i32 %49, 65535
  br i1 %4069, label %4668, label %4070

; <label>:4070                                    ; preds = %4002
  %4071 = call float @dx.op.unary.f32(i32 83, float %50)  ; DerivCoarseX(value)
  %4072 = call float @dx.op.unary.f32(i32 83, float %51)  ; DerivCoarseX(value)
  %4073 = call float @dx.op.unary.f32(i32 83, float %52)  ; DerivCoarseX(value)
  %4074 = call float @dx.op.unary.f32(i32 84, float %50)  ; DerivCoarseY(value)
  %4075 = call float @dx.op.unary.f32(i32 84, float %51)  ; DerivCoarseY(value)
  %4076 = call float @dx.op.unary.f32(i32 84, float %52)  ; DerivCoarseY(value)
  %4077 = fadd fast float %4071, %50
  %4078 = fadd fast float %4072, %51
  %4079 = fadd fast float %4073, %52
  %4080 = fadd fast float %4074, %50
  %4081 = fadd fast float %4075, %51
  %4082 = fadd fast float %4076, %52
  %4083 = mul i32 %49, 48
  %4084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4083, i32 undef)  ; BufferLoad(srv,index,wot)
  %4085 = extractvalue %dx.types.ResRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.ResRet.f32 %4084, 1
  %4087 = extractvalue %dx.types.ResRet.f32 %4084, 2
  %4088 = add i32 %4083, 16
  %4089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4088, i32 undef)  ; BufferLoad(srv,index,wot)
  %4090 = extractvalue %dx.types.ResRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.ResRet.f32 %4089, 1
  %4092 = extractvalue %dx.types.ResRet.f32 %4089, 2
  %4093 = add i32 %4083, 32
  %4094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.ResRet.f32 %4094, 1
  %4097 = extractvalue %dx.types.ResRet.f32 %4094, 2
  %4098 = extractvalue %dx.types.ResRet.f32 %4094, 3
  %4099 = bitcast float %4098 to i32
  %4100 = fmul fast float %4085, %50
  %4101 = fmul fast float %4086, %51
  %4102 = fmul fast float %4087, %52
  %4103 = fsub fast float %4100, %4090
  %4104 = fsub fast float %4101, %4091
  %4105 = fsub fast float %4102, %4092
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4109 = fmul fast float %4106, %4095
  %4110 = fmul fast float %4107, %4096
  %4111 = fmul fast float %4108, %4097
  %4112 = fadd fast float %4095, -1.000000e+00
  %4113 = fadd fast float %4096, -1.000000e+00
  %4114 = fadd fast float %4097, -1.000000e+00
  %4115 = call float @dx.op.unary.f32(i32 27, float %4109)  ; Round_ni(value)
  %4116 = call float @dx.op.unary.f32(i32 27, float %4110)  ; Round_ni(value)
  %4117 = call float @dx.op.unary.f32(i32 27, float %4111)  ; Round_ni(value)
  %4118 = call float @dx.op.binary.f32(i32 36, float %4115, float %4112)  ; FMin(a,b)
  %4119 = call float @dx.op.binary.f32(i32 36, float %4116, float %4113)  ; FMin(a,b)
  %4120 = call float @dx.op.binary.f32(i32 36, float %4117, float %4114)  ; FMin(a,b)
  %4121 = fmul fast float %4120, %4096
  %4122 = fadd fast float %4121, %4119
  %4123 = fmul fast float %4122, %4095
  %4124 = fadd fast float %4123, %4118
  %4125 = fptosi float %4124 to i32
  %4126 = add nsw i32 %4125, %4099
  %4127 = shl nsw i32 %4126, 2
  %4128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4127, i32 undef)  ; BufferLoad(srv,index,wot)
  %4129 = extractvalue %dx.types.ResRet.i32 %4128, 0
  %4130 = lshr i32 %4129, 16
  %4131 = icmp eq i32 %4130, 0
  br i1 %4131, label %4631, label %4132

; <label>:4132                                    ; preds = %4070
  br label %4133

; <label>:4133                                    ; preds = %4260, %4132
  %4134 = phi i32 [ %4162, %4260 ], [ %4130, %4132 ]
  %4135 = phi float [ %4261, %4260 ], [ 0.000000e+00, %4132 ]
  %4136 = phi float [ %4262, %4260 ], [ %4040, %4132 ]
  %4137 = phi float [ %4263, %4260 ], [ %4021, %4132 ]
  %4138 = phi float [ %4264, %4260 ], [ %4011, %4132 ]
  %4139 = phi float [ %4265, %4260 ], [ %4012, %4132 ]
  %4140 = phi float [ %4266, %4260 ], [ %4013, %4132 ]
  %4141 = phi float [ %4267, %4260 ], [ 0.000000e+00, %4132 ]
  %4142 = phi float [ %4268, %4260 ], [ 0.000000e+00, %4132 ]
  %4143 = phi float [ %4269, %4260 ], [ %4014, %4132 ]
  %4144 = phi float [ %4270, %4260 ], [ %4015, %4132 ]
  %4145 = phi float [ %4271, %4260 ], [ %4016, %4132 ]
  %4146 = phi float [ %4272, %4260 ], [ %4008, %4132 ]
  %4147 = phi float [ %4273, %4260 ], [ %4009, %4132 ]
  %4148 = phi float [ %4274, %4260 ], [ %4010, %4132 ]
  %4149 = phi float [ %4275, %4260 ], [ %4066, %4132 ]
  %4150 = phi float [ %4276, %4260 ], [ %4067, %4132 ]
  %4151 = phi float [ %4277, %4260 ], [ %4068, %4132 ]
  %4152 = phi float [ %4278, %4260 ], [ %4019, %4132 ]
  %4153 = phi float [ %4279, %4260 ], [ %4018, %4132 ]
  %4154 = phi float [ %4280, %4260 ], [ 0.000000e+00, %4132 ]
  %4155 = phi float [ %4281, %4260 ], [ %4017, %4132 ]
  %4156 = phi float [ %4282, %4260 ], [ %4005, %4132 ]
  %4157 = phi float [ %4283, %4260 ], [ %4006, %4132 ]
  %4158 = phi float [ %4284, %4260 ], [ %4007, %4132 ]
  %4159 = shl nuw nsw i32 %4134, 2
  %4160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.i32 %4160, 0
  %4162 = lshr i32 %4161, 16
  %4163 = shl i32 %4161, 8
  %4164 = and i32 %4163, 16776960
  %4165 = or i32 %4164, 48
  %4166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4165, i32 undef)  ; BufferLoad(srv,index,wot)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.ResRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.ResRet.f32 %4166, 2
  %4170 = or i32 %4164, 64
  %4171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.i32 %4171, 0
  %4173 = extractvalue %dx.types.ResRet.i32 %4171, 1
  %4174 = or i32 %4164, 80
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 2
  %4177 = extractvalue %dx.types.ResRet.f32 %4175, 3
  %4178 = or i32 %4164, 96
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.ResRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.ResRet.f32 %4179, 2
  %4183 = extractvalue %dx.types.ResRet.f32 %4179, 3
  %4184 = or i32 %4164, 112
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 2
  %4187 = or i32 %4164, 128
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.ResRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.ResRet.f32 %4188, 2
  %4192 = extractvalue %dx.types.ResRet.f32 %4188, 3
  %4193 = or i32 %4164, 144
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.ResRet.f32 %4194, 2
  %4198 = extractvalue %dx.types.ResRet.f32 %4194, 3
  %4199 = or i32 %4164, 160
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = extractvalue %dx.types.ResRet.f32 %4200, 1
  %4203 = extractvalue %dx.types.ResRet.f32 %4200, 2
  %4204 = extractvalue %dx.types.ResRet.f32 %4200, 3
  %4205 = or i32 %4164, 192
  %4206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.i32 %4206, 0
  %4208 = or i32 %4164, 208
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = or i32 %4164, 248
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = extractvalue %dx.types.ResRet.f32 %4212, 1
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.ResRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4215, 2
  %4219 = extractvalue %dx.types.ResRet.f32 %4215, 3
  %4220 = call float @dx.op.dot4.f32(i32 56, float %4216, float %4217, float %4218, float %4219, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4221 = or i32 %4164, 16
  %4222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.f32 %4222, 0
  %4224 = extractvalue %dx.types.ResRet.f32 %4222, 1
  %4225 = extractvalue %dx.types.ResRet.f32 %4222, 2
  %4226 = extractvalue %dx.types.ResRet.f32 %4222, 3
  %4227 = call float @dx.op.dot4.f32(i32 56, float %4223, float %4224, float %4225, float %4226, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4228 = or i32 %4164, 32
  %4229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = extractvalue %dx.types.ResRet.f32 %4229, 1
  %4232 = extractvalue %dx.types.ResRet.f32 %4229, 2
  %4233 = extractvalue %dx.types.ResRet.f32 %4229, 3
  %4234 = call float @dx.op.dot4.f32(i32 56, float %4230, float %4231, float %4232, float %4233, float %50, float %51, float %52, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4235 = call float @dx.op.unary.f32(i32 27, float %4220)  ; Round_ni(value)
  %4236 = call float @dx.op.unary.f32(i32 6, float %4235)  ; FAbs(value)
  %4237 = call float @dx.op.unary.f32(i32 27, float %4227)  ; Round_ni(value)
  %4238 = call float @dx.op.unary.f32(i32 6, float %4237)  ; FAbs(value)
  %4239 = call float @dx.op.unary.f32(i32 6, float %4234)  ; FAbs(value)
  %4240 = call float @dx.op.unary.f32(i32 27, float %4239)  ; Round_ni(value)
  %4241 = fadd fast float %4238, %4236
  %4242 = fadd fast float %4241, %4240
  %4243 = fcmp fast oeq float %4242, 0.000000e+00
  %4244 = call float @dx.op.dot4.f32(i32 56, float %4216, float %4217, float %4218, float %4219, float %4077, float %4078, float %4079, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4245 = call float @dx.op.dot4.f32(i32 56, float %4223, float %4224, float %4225, float %4226, float %4077, float %4078, float %4079, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4246 = call float @dx.op.dot4.f32(i32 56, float %4216, float %4217, float %4218, float %4219, float %4080, float %4081, float %4082, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4247 = call float @dx.op.dot4.f32(i32 56, float %4223, float %4224, float %4225, float %4226, float %4080, float %4081, float %4082, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4248 = fsub fast float %4244, %4220
  %4249 = fsub fast float %4246, %4220
  %4250 = fsub fast float %4245, %4227
  %4251 = fsub fast float %4247, %4227
  %4252 = call float @dx.op.dot3.f32(i32 55, float %4167, float %4168, float %4169, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 2
  %4255 = fadd fast float %4254, %4252
  %4256 = call float @dx.op.unary.f32(i32 7, float %4255)  ; Saturate(value)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4253, 0
  %4258 = fcmp fast ogt float %4256, %4257
  %4259 = and i1 %4243, %4258
  br i1 %4259, label %4286, label %4260

; <label>:4260                                    ; preds = %4617, %4369, %4286, %4133
  %4261 = phi float [ %4135, %4286 ], [ %4372, %4369 ], [ %4372, %4617 ], [ %4135, %4133 ]
  %4262 = phi float [ %4136, %4286 ], [ %4136, %4369 ], [ %4593, %4617 ], [ %4136, %4133 ]
  %4263 = phi float [ %4137, %4286 ], [ %4137, %4369 ], [ %4591, %4617 ], [ %4137, %4133 ]
  %4264 = phi float [ %4138, %4286 ], [ %4138, %4369 ], [ %4569, %4617 ], [ %4138, %4133 ]
  %4265 = phi float [ %4139, %4286 ], [ %4139, %4369 ], [ %4570, %4617 ], [ %4139, %4133 ]
  %4266 = phi float [ %4140, %4286 ], [ %4140, %4369 ], [ %4571, %4617 ], [ %4140, %4133 ]
  %4267 = phi float [ %4141, %4286 ], [ %4141, %4369 ], [ %4496, %4617 ], [ %4141, %4133 ]
  %4268 = phi float [ %4142, %4286 ], [ %4142, %4369 ], [ %4494, %4617 ], [ %4142, %4133 ]
  %4269 = phi float [ %4143, %4286 ], [ %4143, %4369 ], [ %4539, %4617 ], [ %4143, %4133 ]
  %4270 = phi float [ %4144, %4286 ], [ %4144, %4369 ], [ %4540, %4617 ], [ %4144, %4133 ]
  %4271 = phi float [ %4145, %4286 ], [ %4145, %4369 ], [ %4541, %4617 ], [ %4145, %4133 ]
  %4272 = phi float [ %4146, %4286 ], [ %4146, %4369 ], [ %4627, %4617 ], [ %4146, %4133 ]
  %4273 = phi float [ %4147, %4286 ], [ %4147, %4369 ], [ %4628, %4617 ], [ %4147, %4133 ]
  %4274 = phi float [ %4148, %4286 ], [ %4148, %4369 ], [ %4629, %4617 ], [ %4148, %4133 ]
  %4275 = phi float [ %4149, %4286 ], [ %4149, %4369 ], [ %4475, %4617 ], [ %4149, %4133 ]
  %4276 = phi float [ %4150, %4286 ], [ %4150, %4369 ], [ %4476, %4617 ], [ %4150, %4133 ]
  %4277 = phi float [ %4151, %4286 ], [ %4151, %4369 ], [ %4477, %4617 ], [ %4151, %4133 ]
  %4278 = phi float [ %4152, %4286 ], [ %4152, %4369 ], [ %4549, %4617 ], [ %4152, %4133 ]
  %4279 = phi float [ %4153, %4286 ], [ %4153, %4369 ], [ %4546, %4617 ], [ %4153, %4133 ]
  %4280 = phi float [ %4154, %4286 ], [ %4154, %4369 ], [ %4543, %4617 ], [ %4154, %4133 ]
  %4281 = phi float [ %4155, %4286 ], [ %4155, %4369 ], [ %4492, %4617 ], [ %4155, %4133 ]
  %4282 = phi float [ %4156, %4286 ], [ %4156, %4369 ], [ %4487, %4617 ], [ %4156, %4133 ]
  %4283 = phi float [ %4157, %4286 ], [ %4157, %4369 ], [ %4488, %4617 ], [ %4157, %4133 ]
  %4284 = phi float [ %4158, %4286 ], [ %4158, %4369 ], [ %4489, %4617 ], [ %4158, %4133 ]
  %4285 = icmp eq i32 %4162, 0
  br i1 %4285, label %4630, label %4133

; <label>:4286                                    ; preds = %4133
  %4287 = extractvalue %dx.types.ResRet.f32 %4166, 3
  %4288 = extractvalue %dx.types.ResRet.f32 %4185, 3
  %4289 = extractvalue %dx.types.ResRet.f32 %4185, 1
  %4290 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4291 = extractvalue %dx.types.ResRet.f32 %4175, 1
  %4292 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4293 = extractvalue %dx.types.ResRet.i32 %4171, 3
  %4294 = extractvalue %dx.types.ResRet.i32 %4171, 2
  %4295 = bitcast float %4287 to i32
  %4296 = add i32 %4293, 0
  %4297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4299 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4297, %dx.types.Handle %4298, float %4220, float %4227, float undef, float undef, i32 0, i32 0, i32 undef, float %4248, float %4250, float undef, float %4249, float %4251, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = fmul fast float %4300, %4292
  %4302 = fadd fast float %4301, %4291
  %4303 = call float @dx.op.unary.f32(i32 7, float %4302)  ; Saturate(value)
  %4304 = fmul fast float %4220, %4180
  %4305 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4227, float %4304)  ; FMad(a,b,c)
  %4306 = fadd fast float %4305, %4290
  %4307 = fmul fast float %4220, %4182
  %4308 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4227, float %4307)  ; FMad(a,b,c)
  %4309 = fadd fast float %4308, %4289
  %4310 = fmul fast float %4248, %4180
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4250, float %4310)  ; FMad(a,b,c)
  %4312 = fmul fast float %4248, %4182
  %4313 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4250, float %4312)  ; FMad(a,b,c)
  %4314 = fmul fast float %4249, %4180
  %4315 = call float @dx.op.tertiary.f32(i32 46, float %4181, float %4251, float %4314)  ; FMad(a,b,c)
  %4316 = fmul fast float %4249, %4182
  %4317 = call float @dx.op.tertiary.f32(i32 46, float %4183, float %4251, float %4316)  ; FMad(a,b,c)
  %4318 = add i32 %4294, 0
  %4319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4318, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4320 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4319, %dx.types.Handle %4298, float %4306, float %4309, float undef, float undef, i32 0, i32 0, i32 undef, float %4311, float %4313, float undef, float %4315, float %4317, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4321 = extractvalue %dx.types.ResRet.f32 %4320, 0
  %4322 = and i32 %4295, 1024
  %4323 = icmp ne i32 %4322, 0
  %4324 = fcmp fast ogt float %4321, 0x3FE0101020000000
  %4325 = uitofp i1 %4324 to float
  %4326 = select i1 %4323, float %4325, float %4321
  %4327 = and i32 %4295, 8192
  %4328 = icmp ne i32 %4327, 0
  %4329 = select i1 %4328, float %4288, float 1.000000e+00
  %4330 = fmul fast float %4220, 2.000000e+00
  %4331 = fadd fast float %4330, -1.000000e+00
  %4332 = call float @dx.op.unary.f32(i32 6, float %4331)  ; FAbs(value)
  %4333 = fmul fast float %4332, %4213
  %4334 = fsub fast float %4333, %4213
  %4335 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4336 = fmul fast float %4227, 2.000000e+00
  %4337 = fadd fast float %4336, -1.000000e+00
  %4338 = call float @dx.op.unary.f32(i32 6, float %4337)  ; FAbs(value)
  %4339 = fmul fast float %4338, %4214
  %4340 = fsub fast float %4339, %4214
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fmul fast float %4239, %4176
  %4343 = fsub fast float %4342, %4176
  %4344 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4345 = fmul fast float %4303, %4329
  %4346 = fmul fast float %4345, %4300
  %4347 = fmul fast float %4346, %4335
  %4348 = fmul fast float %4347, %4326
  %4349 = fmul fast float %4348, %4341
  %4350 = fmul fast float %4349, %4344
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 1
  %4353 = extractvalue %dx.types.CBufRet.f32 %4351, 0
  %4354 = fsub fast float %4256, %4353
  %4355 = fmul fast float %4354, %4352
  %4356 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4357 = fmul fast float %4350, %4177
  %4358 = fadd fast float %4350, %4177
  %4359 = fmul fast float %4358, %4186
  %4360 = fsub fast float %4359, %4186
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = and i32 %4295, 128
  %4363 = icmp ne i32 %4362, 0
  %4364 = select i1 %4363, float %4361, float %4357
  %4365 = fmul fast float %4364, %4356
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 0
  %4368 = fcmp fast ugt float %4365, %4367
  br i1 %4368, label %4369, label %4260

; <label>:4369                                    ; preds = %4286
  %4370 = select i1 %4328, float %4365, float 0.000000e+00
  %4371 = fadd fast float %4370, %4135
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  br i1 %4328, label %4260, label %4373

; <label>:4373                                    ; preds = %4369
  %4374 = and i32 %4295, 4
  %4375 = and i32 %4295, 8
  %4376 = add i32 %4172, 0
  %4377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4376, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4379 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4377, %dx.types.Handle %4378, float %4306, float %4309, float undef, float undef, i32 0, i32 0, i32 undef, float %4311, float %4313, float undef, float %4315, float %4317, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = extractvalue %dx.types.ResRet.f32 %4379, 1
  %4382 = extractvalue %dx.types.ResRet.f32 %4379, 2
  %4383 = extractvalue %dx.types.ResRet.f32 %4379, 3
  %4384 = bitcast float %4198 to i32
  %4385 = and i32 %4384, 255
  %4386 = uitofp i32 %4385 to float
  %4387 = lshr i32 %4384, 8
  %4388 = and i32 %4387, 255
  %4389 = uitofp i32 %4388 to float
  %4390 = fmul fast float %4383, %4386
  %4391 = fadd fast float %4390, %4389
  %4392 = fmul fast float %4391, 0x3F70101000000000
  %4393 = add i32 %4173, 0
  %4394 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4393, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4395 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4394, %dx.types.Handle %4378, float %4306, float %4309, float undef, float undef, i32 0, i32 0, i32 undef, float %4311, float %4313, float undef, float %4315, float %4317, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4396 = extractvalue %dx.types.ResRet.f32 %4395, 0
  %4397 = extractvalue %dx.types.ResRet.f32 %4395, 1
  %4398 = extractvalue %dx.types.ResRet.f32 %4395, 2
  %4399 = extractvalue %dx.types.ResRet.f32 %4395, 3
  %4400 = bitcast float %4192 to i32
  %4401 = and i32 %4400, 255
  %4402 = uitofp i32 %4401 to float
  %4403 = lshr i32 %4400, 8
  %4404 = and i32 %4403, 255
  %4405 = uitofp i32 %4404 to float
  %4406 = lshr i32 %4400, 16
  %4407 = and i32 %4406, 255
  %4408 = uitofp i32 %4407 to float
  %4409 = fmul fast float %4408, 0x3F70101000000000
  %4410 = fmul fast float %4396, %4402
  %4411 = fadd fast float %4410, %4405
  %4412 = fmul fast float %4411, 0x3F70101000000000
  %4413 = fadd fast float %4397, -5.000000e-01
  %4414 = fadd fast float %4399, -5.000000e-01
  %4415 = fmul fast float %4413, %4409
  %4416 = fmul fast float %4414, %4409
  %4417 = fadd fast float %4415, 5.000000e-01
  %4418 = fadd fast float %4416, 5.000000e-01
  %4419 = fmul fast float %4380, %4201
  %4420 = fmul fast float %4381, %4202
  %4421 = fmul fast float %4382, %4203
  %4422 = fmul fast float %4417, 2.000000e+00
  %4423 = fadd fast float %4422, -1.000000e+00
  %4424 = fmul fast float %4418, 2.000000e+00
  %4425 = fadd fast float %4424, -1.000000e+00
  %4426 = fadd fast float %4423, %4425
  %4427 = fmul fast float %4426, 5.000000e-01
  %4428 = fsub fast float %4423, %4425
  %4429 = fmul fast float %4428, 5.000000e-01
  %4430 = call float @dx.op.unary.f32(i32 6, float %4427)  ; FAbs(value)
  %4431 = fsub fast float 1.000000e+00, %4430
  %4432 = call float @dx.op.unary.f32(i32 6, float %4429)  ; FAbs(value)
  %4433 = fsub fast float %4431, %4432
  %4434 = call float @dx.op.dot3.f32(i32 55, float %4427, float %4429, float %4433, float %4427, float %4429, float %4433)  ; Dot3(ax,ay,az,bx,by,bz)
  %4435 = call float @dx.op.unary.f32(i32 25, float %4434)  ; Rsqrt(value)
  %4436 = fmul fast float %4427, %4435
  %4437 = fmul fast float %4429, %4435
  %4438 = fmul fast float %4435, %4433
  %4439 = fmul fast float %4438, %4167
  %4440 = fmul fast float %4438, %4168
  %4441 = fmul fast float %4438, %4169
  %4442 = fmul fast float %4436, %4189
  %4443 = fmul fast float %4436, %4190
  %4444 = fmul fast float %4436, %4191
  %4445 = fadd fast float %4442, %4439
  %4446 = fadd fast float %4443, %4440
  %4447 = fadd fast float %4444, %4441
  %4448 = fmul fast float %4437, %4195
  %4449 = fmul fast float %4437, %4196
  %4450 = fmul fast float %4437, %4197
  %4451 = fadd fast float %4445, %4448
  %4452 = fadd fast float %4446, %4449
  %4453 = fadd fast float %4447, %4450
  %4454 = call float @dx.op.dot3.f32(i32 55, float %4451, float %4452, float %4453, float %4451, float %4452, float %4453)  ; Dot3(ax,ay,az,bx,by,bz)
  %4455 = call float @dx.op.unary.f32(i32 25, float %4454)  ; Rsqrt(value)
  %4456 = fmul fast float %4451, %4455
  %4457 = fmul fast float %4452, %4455
  %4458 = fmul fast float %4453, %4455
  %4459 = icmp ne i32 %4375, 0
  %4460 = select i1 %4459, float 1.000000e+00, float 0.000000e+00
  %4461 = fmul fast float %4365, %4460
  %4462 = and i32 %4295, 1
  %4463 = icmp eq i32 %4462, 0
  br i1 %4463, label %4464, label %4468

; <label>:4464                                    ; preds = %4373
  %4465 = fsub fast float %4456, %4149
  %4466 = fsub fast float %4457, %4150
  %4467 = fsub fast float %4458, %4151
  br label %4468

; <label>:4468                                    ; preds = %4464, %4373
  %4469 = phi float [ %4465, %4464 ], [ %4456, %4373 ]
  %4470 = phi float [ %4466, %4464 ], [ %4457, %4373 ]
  %4471 = phi float [ %4467, %4464 ], [ %4458, %4373 ]
  %4472 = fmul float %4471, %4461
  %4473 = fmul float %4470, %4461
  %4474 = fmul float %4469, %4461
  %4475 = fadd fast float %4474, %4149
  %4476 = fadd fast float %4473, %4150
  %4477 = fadd fast float %4472, %4151
  %4478 = icmp ne i32 %4374, 0
  %4479 = select i1 %4478, float 1.000000e+00, float 0.000000e+00
  %4480 = fmul fast float %4365, %4479
  %4481 = fsub fast float %4419, %4156
  %4482 = fsub fast float %4420, %4157
  %4483 = fsub fast float %4421, %4158
  %4484 = fmul fast float %4481, %4480
  %4485 = fmul fast float %4482, %4480
  %4486 = fmul fast float %4483, %4480
  %4487 = fadd fast float %4484, %4156
  %4488 = fadd fast float %4485, %4157
  %4489 = fadd fast float %4486, %4158
  %4490 = fsub fast float %4392, %4155
  %4491 = fmul fast float %4490, %4480
  %4492 = fadd fast float %4491, %4155
  %4493 = fmul fast float %4480, %4142
  %4494 = fsub fast float %4142, %4493
  %4495 = fmul fast float %4480, %4141
  %4496 = fsub fast float %4141, %4495
  %4497 = bitcast float %4210 to i32
  %4498 = lshr i32 %4497, 16
  %4499 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4498)  ; LegacyF16ToF32(value)
  %4500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %4501 = extractvalue %dx.types.ResRet.i32 %4500, 0
  %4502 = and i32 %4501, 1
  %4503 = icmp eq i32 %4502, 0
  br i1 %4503, label %4504, label %4529

; <label>:4504                                    ; preds = %4468
  %4505 = fadd fast float %4392, 0xBFB99999A0000000
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fmul fast float %4506, 0x3FF1C71C80000000
  %4508 = fsub fast float 1.000000e+00, %4507
  %4509 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4510 = fmul fast float %4509, %4419
  %4511 = fmul fast float %4509, %4420
  %4512 = fmul fast float %4509, %4421
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4512)  ; Saturate(value)
  %4516 = call float @dx.op.binary.f32(i32 35, float %4514, float %4515)  ; FMax(a,b)
  %4517 = call float @dx.op.binary.f32(i32 35, float %4513, float %4516)  ; FMax(a,b)
  %4518 = fcmp fast ogt float %4517, 0.000000e+00
  %4519 = bitcast float %4517 to i32
  %4520 = sub nsw i32 2129859010, %4519
  %4521 = bitcast i32 %4520 to float
  %4522 = select i1 %4518, float %4521, float 0.000000e+00
  %4523 = fmul fast float %4513, %4499
  %4524 = fmul fast float %4514, %4499
  %4525 = fmul fast float %4515, %4499
  %4526 = fmul fast float %4523, %4522
  %4527 = fmul fast float %4524, %4522
  %4528 = fmul fast float %4525, %4522
  br label %4529

; <label>:4529                                    ; preds = %4504, %4468
  %4530 = phi float [ %4499, %4468 ], [ %4526, %4504 ]
  %4531 = phi float [ %4499, %4468 ], [ %4527, %4504 ]
  %4532 = phi float [ %4499, %4468 ], [ %4528, %4504 ]
  %4533 = fsub fast float %4530, %4143
  %4534 = fsub fast float %4531, %4144
  %4535 = fsub fast float %4532, %4145
  %4536 = fmul fast float %4533, %4480
  %4537 = fmul fast float %4534, %4480
  %4538 = fmul fast float %4535, %4480
  %4539 = fadd fast float %4536, %4143
  %4540 = fadd fast float %4537, %4144
  %4541 = fadd fast float %4538, %4145
  %4542 = fadd fast float %4365, %4154
  %4543 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4544 = fsub fast float %4412, %4153
  %4545 = fmul fast float %4544, %4461
  %4546 = fadd fast float %4545, %4153
  %4547 = fsub fast float %4398, %4152
  %4548 = fmul fast float %4547, %4461
  %4549 = fadd fast float %4548, %4152
  br i1 %4463, label %4558, label %4550

; <label>:4550                                    ; preds = %4529
  %4551 = and i32 %4295, 32768
  %4552 = icmp eq i32 %4551, 0
  br i1 %4552, label %4568, label %4553

; <label>:4553                                    ; preds = %4550
  %4554 = fmul fast float %4461, 1.270000e+02
  %4555 = fadd fast float %4554, %4138
  %4556 = fadd fast float %4554, %4139
  %4557 = fadd fast float %4554, %4140
  br label %4568

; <label>:4558                                    ; preds = %4529
  %4559 = fsub fast float 1.270000e+02, %4138
  %4560 = fsub fast float 1.270000e+02, %4139
  %4561 = fsub fast float 1.270000e+02, %4140
  %4562 = fmul fast float %4461, %4559
  %4563 = fmul fast float %4461, %4560
  %4564 = fmul fast float %4461, %4561
  %4565 = fadd fast float %4562, %4138
  %4566 = fadd fast float %4563, %4139
  %4567 = fadd fast float %4564, %4140
  br label %4568

; <label>:4568                                    ; preds = %4558, %4553, %4550
  %4569 = phi float [ %4555, %4553 ], [ %4138, %4550 ], [ %4565, %4558 ]
  %4570 = phi float [ %4556, %4553 ], [ %4139, %4550 ], [ %4566, %4558 ]
  %4571 = phi float [ %4557, %4553 ], [ %4140, %4550 ], [ %4567, %4558 ]
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4419, float %4420, float %4421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.CBufRet.f32 %4573, 1
  %4576 = fmul fast float %4575, %4572
  %4577 = fadd fast float %4576, %4574
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = bitcast float %4204 to i32
  %4580 = and i32 %4579, 65535
  %4581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4580)  ; LegacyF16ToF32(value)
  %4582 = lshr i32 %4579, 16
  %4583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4582)  ; LegacyF16ToF32(value)
  %4584 = fcmp fast oge float %4581, 0.000000e+00
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = select i1 %4584, float %4581, float %4586
  %4588 = fadd fast float %4587, %4583
  %4589 = fsub fast float %4578, %4137
  %4590 = fmul fast float %4589, %4365
  %4591 = fadd fast float %4590, %4137
  %4592 = fmul fast float %4588, %4365
  %4593 = call float @dx.op.binary.f32(i32 35, float %4136, float %4592)  ; FMax(a,b)
  %4594 = and i32 %4295, 16
  %4595 = icmp eq i32 %4594, 0
  br i1 %4595, label %4617, label %4596

; <label>:4596                                    ; preds = %4568
  %4597 = add i32 %4207, 0
  %4598 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4597, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4599 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4598, %dx.types.Handle %4378, float %4306, float %4309, float undef, float undef, i32 0, i32 0, i32 undef, float %4311, float %4313, float undef, float %4315, float %4317, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4600 = extractvalue %dx.types.ResRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.ResRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.ResRet.f32 %4599, 2
  %4603 = and i32 %4497, 65535
  %4604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4603)  ; LegacyF16ToF32(value)
  %4605 = fmul fast float %4600, %4201
  %4606 = fmul fast float %4601, %4202
  %4607 = fmul fast float %4602, %4203
  %4608 = and i32 %4295, 16384
  %4609 = icmp ne i32 %4608, 0
  %4610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.f32 %4610, 0
  %4612 = select i1 %4609, float %4611, float 1.000000e+00
  %4613 = fmul fast float %4612, %4604
  %4614 = fmul fast float %4605, %4613
  %4615 = fmul fast float %4606, %4613
  %4616 = fmul fast float %4607, %4613
  br label %4617

; <label>:4617                                    ; preds = %4596, %4568
  %4618 = phi float [ %4614, %4596 ], [ 0.000000e+00, %4568 ]
  %4619 = phi float [ %4615, %4596 ], [ 0.000000e+00, %4568 ]
  %4620 = phi float [ %4616, %4596 ], [ 0.000000e+00, %4568 ]
  %4621 = fsub fast float %4618, %4146
  %4622 = fsub fast float %4619, %4147
  %4623 = fsub fast float %4620, %4148
  %4624 = fmul fast float %4621, %4365
  %4625 = fmul fast float %4622, %4365
  %4626 = fmul fast float %4623, %4365
  %4627 = fadd fast float %4624, %4146
  %4628 = fadd fast float %4625, %4147
  %4629 = fadd fast float %4626, %4148
  br label %4260

; <label>:4630                                    ; preds = %4260
  br label %4631

; <label>:4631                                    ; preds = %4630, %4070
  %4632 = phi float [ 0.000000e+00, %4070 ], [ %4261, %4630 ]
  %4633 = phi float [ %4040, %4070 ], [ %4262, %4630 ]
  %4634 = phi float [ %4021, %4070 ], [ %4263, %4630 ]
  %4635 = phi float [ %4011, %4070 ], [ %4264, %4630 ]
  %4636 = phi float [ %4012, %4070 ], [ %4265, %4630 ]
  %4637 = phi float [ %4013, %4070 ], [ %4266, %4630 ]
  %4638 = phi float [ 0.000000e+00, %4070 ], [ %4267, %4630 ]
  %4639 = phi float [ 0.000000e+00, %4070 ], [ %4268, %4630 ]
  %4640 = phi float [ %4014, %4070 ], [ %4269, %4630 ]
  %4641 = phi float [ %4015, %4070 ], [ %4270, %4630 ]
  %4642 = phi float [ %4016, %4070 ], [ %4271, %4630 ]
  %4643 = phi float [ %4008, %4070 ], [ %4272, %4630 ]
  %4644 = phi float [ %4009, %4070 ], [ %4273, %4630 ]
  %4645 = phi float [ %4010, %4070 ], [ %4274, %4630 ]
  %4646 = phi float [ %4066, %4070 ], [ %4275, %4630 ]
  %4647 = phi float [ %4067, %4070 ], [ %4276, %4630 ]
  %4648 = phi float [ %4068, %4070 ], [ %4277, %4630 ]
  %4649 = phi float [ %4019, %4070 ], [ %4278, %4630 ]
  %4650 = phi float [ %4018, %4070 ], [ %4279, %4630 ]
  %4651 = phi float [ 0.000000e+00, %4070 ], [ %4280, %4630 ]
  %4652 = phi float [ %4017, %4070 ], [ %4281, %4630 ]
  %4653 = phi float [ %4005, %4070 ], [ %4282, %4630 ]
  %4654 = phi float [ %4006, %4070 ], [ %4283, %4630 ]
  %4655 = phi float [ %4007, %4070 ], [ %4284, %4630 ]
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %4646, float %4647, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = call float @dx.op.unary.f32(i32 25, float %4656)  ; Rsqrt(value)
  %4658 = fmul fast float %4657, %4646
  %4659 = fmul fast float %4657, %4647
  %4660 = fmul fast float %4657, %4648
  %4661 = fadd fast float %4651, %1191
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4659, float %4660, float %4658, float %4659, float %4660)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = call float @dx.op.unary.f32(i32 25, float %4663)  ; Rsqrt(value)
  %4665 = fmul fast float %4664, %4658
  %4666 = fmul fast float %4664, %4659
  %4667 = fmul fast float %4664, %4660
  br label %4668

; <label>:4668                                    ; preds = %4631, %4002
  %4669 = phi float [ %4665, %4631 ], [ %4066, %4002 ]
  %4670 = phi float [ %4666, %4631 ], [ %4067, %4002 ]
  %4671 = phi float [ %4667, %4631 ], [ %4068, %4002 ]
  %4672 = phi float [ %4653, %4631 ], [ %4005, %4002 ]
  %4673 = phi float [ %4654, %4631 ], [ %4006, %4002 ]
  %4674 = phi float [ %4655, %4631 ], [ %4007, %4002 ]
  %4675 = phi float [ %4643, %4631 ], [ %4008, %4002 ]
  %4676 = phi float [ %4644, %4631 ], [ %4009, %4002 ]
  %4677 = phi float [ %4645, %4631 ], [ %4010, %4002 ]
  %4678 = phi float [ %4635, %4631 ], [ %4011, %4002 ]
  %4679 = phi float [ %4636, %4631 ], [ %4012, %4002 ]
  %4680 = phi float [ %4637, %4631 ], [ %4013, %4002 ]
  %4681 = phi float [ %4640, %4631 ], [ %4014, %4002 ]
  %4682 = phi float [ %4641, %4631 ], [ %4015, %4002 ]
  %4683 = phi float [ %4642, %4631 ], [ %4016, %4002 ]
  %4684 = phi float [ %4652, %4631 ], [ %4017, %4002 ]
  %4685 = phi float [ %4662, %4631 ], [ %1191, %4002 ]
  %4686 = phi float [ %4650, %4631 ], [ %4018, %4002 ]
  %4687 = phi float [ %4649, %4631 ], [ %4019, %4002 ]
  %4688 = phi float [ %4639, %4631 ], [ 0.000000e+00, %4002 ]
  %4689 = phi float [ %4638, %4631 ], [ 0.000000e+00, %4002 ]
  %4690 = phi float [ %4632, %4631 ], [ 0.000000e+00, %4002 ]
  %4691 = phi float [ %4633, %4631 ], [ %4040, %4002 ]
  %4692 = phi float [ %4634, %4631 ], [ %4021, %4002 ]
  %4693 = add i32 %48, 392
  %4694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.i32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.i32 %4694, 1
  %4697 = extractvalue %dx.types.ResRet.i32 %4694, 2
  %4698 = extractvalue %dx.types.ResRet.i32 %4694, 3
  %4699 = bitcast i32 %4695 to float
  %4700 = bitcast i32 %4696 to float
  %4701 = bitcast i32 %4697 to float
  %4702 = bitcast i32 %4698 to float
  %4703 = fsub fast float %4672, %4699
  %4704 = fsub fast float %4673, %4700
  %4705 = fsub fast float %4674, %4701
  %4706 = fmul fast float %4703, %220
  %4707 = fmul fast float %4704, %220
  %4708 = fmul fast float %4705, %220
  %4709 = fadd fast float %4706, %4699
  %4710 = fadd fast float %4707, %4700
  %4711 = fadd fast float %4708, %4701
  %4712 = fsub fast float %4685, %4702
  %4713 = fmul fast float %4712, %220
  %4714 = fadd fast float %4713, %4702
  %4715 = fadd fast float %4684, 0xBFB99999A0000000
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4716, 0x3FF1C71C80000000
  %4718 = call float @dx.op.binary.f32(i32 36, float %4684, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4719 = fsub fast float 1.000000e+00, %4717
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = fmul fast float %4709, %4720
  %4722 = fmul fast float %4710, %4720
  %4723 = fmul fast float %4711, %4720
  %4724 = call float @dx.op.unary.f32(i32 7, float %4721)  ; Saturate(value)
  %4725 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4726 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4727 = fmul fast float %4709, %4717
  %4728 = fmul fast float %4710, %4717
  %4729 = fmul fast float %4711, %4717
  %4730 = fadd fast float %4727, %4718
  %4731 = fadd fast float %4728, %4718
  %4732 = fadd fast float %4729, %4718
  %4733 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4734 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4735 = call float @dx.op.unary.f32(i32 7, float %4732)  ; Saturate(value)
  %4736 = call float @dx.op.unary.f32(i32 7, float %4686)  ; Saturate(value)
  %4737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %4738 = extractvalue %dx.types.ResRet.i32 %4737, 0
  %4739 = and i32 %4738, 1
  %4740 = icmp eq i32 %4739, 0
  br i1 %4740, label %4755, label %4741

; <label>:4741                                    ; preds = %4668
  %4742 = call float @dx.op.binary.f32(i32 35, float %4725, float %4726)  ; FMax(a,b)
  %4743 = call float @dx.op.binary.f32(i32 35, float %4724, float %4742)  ; FMax(a,b)
  %4744 = fcmp fast ogt float %4743, 0.000000e+00
  %4745 = bitcast float %4743 to i32
  %4746 = sub nsw i32 2129859010, %4745
  %4747 = bitcast i32 %4746 to float
  %4748 = select i1 %4744, float %4747, float 0.000000e+00
  %4749 = fmul fast float %4724, %4681
  %4750 = fmul fast float %4725, %4682
  %4751 = fmul fast float %4726, %4683
  %4752 = fmul fast float %4749, %4748
  %4753 = fmul fast float %4750, %4748
  %4754 = fmul fast float %4751, %4748
  br label %4755

; <label>:4755                                    ; preds = %4741, %4668
  %4756 = phi float [ %4752, %4741 ], [ %4681, %4668 ]
  %4757 = phi float [ %4753, %4741 ], [ %4682, %4668 ]
  %4758 = phi float [ %4754, %4741 ], [ %4683, %4668 ]
  %4759 = call float @dx.op.binary.f32(i32 36, float %4678, float 1.270000e+02)  ; FMin(a,b)
  %4760 = call float @dx.op.binary.f32(i32 36, float %4679, float 1.270000e+02)  ; FMin(a,b)
  %4761 = call float @dx.op.binary.f32(i32 36, float %4680, float 1.270000e+02)  ; FMin(a,b)
  %4762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.i32 %4762, 3
  %4764 = and i32 %4763, 8
  %4765 = icmp ne i32 %4764, 0
  %4766 = call float @dx.op.binary.f32(i32 35, float %4724, float %4709)  ; FMax(a,b)
  %4767 = call float @dx.op.binary.f32(i32 35, float %4725, float %4709)  ; FMax(a,b)
  %4768 = call float @dx.op.binary.f32(i32 35, float %4726, float %4709)  ; FMax(a,b)
  %4769 = call float @dx.op.dot3.f32(i32 55, float %4724, float %4725, float %4726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4770 = select i1 %279, float %4709, float %4724
  %4771 = select i1 %279, float %4769, float %4725
  %4772 = select i1 %279, float 1.000000e+00, float %4726
  %4773 = select i1 %4765, float %4766, float %4770
  %4774 = select i1 %4765, float %4767, float %4771
  %4775 = select i1 %4765, float %4768, float %4772
  %4776 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4757, float %4758, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4777 = select i1 %279, float %4776, float %4756
  %4778 = select i1 %279, float %4776, float %4757
  %4779 = select i1 %279, float %4776, float %4758
  %4780 = and i32 %255, 3
  %4781 = select i1 %249, i32 %4780, i32 0
  %4782 = icmp eq i32 %4781, 1
  br i1 %4782, label %4783, label %4859

; <label>:4783                                    ; preds = %4755
  %4784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4785 = extractvalue %dx.types.CBufRet.f32 %4784, 0
  %4786 = extractvalue %dx.types.CBufRet.f32 %4784, 1
  %4787 = fadd fast float %4785, %186
  %4788 = fadd fast float %4786, %187
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = extractvalue %dx.types.CBufRet.f32 %4789, 1
  %4792 = fsub fast float %4787, %4790
  %4793 = fsub fast float %4788, %4791
  %4794 = fmul fast float %4792, %4792
  %4795 = fmul fast float %4793, %4793
  %4796 = fadd fast float %4794, %4795
  %4797 = call float @dx.op.unary.f32(i32 24, float %4796)  ; Sqrt(value)
  %4798 = extractvalue %dx.types.CBufRet.f32 %4789, 2
  %4799 = fcmp fast olt float %4797, %4798
  br i1 %4799, label %4800, label %4853

; <label>:4800                                    ; preds = %4783
  %4801 = extractvalue %dx.types.CBufRet.f32 %4784, 2
  %4802 = fadd fast float %4801, %188
  %4803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.f32 %4803, 0
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 0
  %4807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4808 = extractvalue %dx.types.CBufRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.CBufRet.f32 %4803, 1
  %4810 = extractvalue %dx.types.CBufRet.f32 %4805, 1
  %4811 = extractvalue %dx.types.CBufRet.f32 %4807, 1
  %4812 = extractvalue %dx.types.CBufRet.f32 %4803, 3
  %4813 = extractvalue %dx.types.CBufRet.f32 %4805, 3
  %4814 = extractvalue %dx.types.CBufRet.f32 %4807, 3
  %4815 = fadd fast float %4812, %4787
  %4816 = fadd fast float %4813, %4788
  %4817 = fadd fast float %4802, %4814
  %4818 = fmul fast float %4815, %4804
  %4819 = call float @dx.op.tertiary.f32(i32 46, float %4816, float %4806, float %4818)  ; FMad(a,b,c)
  %4820 = call float @dx.op.tertiary.f32(i32 46, float %4817, float %4808, float %4819)  ; FMad(a,b,c)
  %4821 = fmul fast float %4815, %4809
  %4822 = call float @dx.op.tertiary.f32(i32 46, float %4816, float %4810, float %4821)  ; FMad(a,b,c)
  %4823 = call float @dx.op.tertiary.f32(i32 46, float %4817, float %4811, float %4822)  ; FMad(a,b,c)
  %4824 = fsub fast float %4820, %4812
  %4825 = fsub fast float %4823, %4813
  %4826 = fsub fast float %4824, %4790
  %4827 = fadd fast float %4826, %4798
  %4828 = fsub fast float %4825, %4791
  %4829 = fadd fast float %4828, %4798
  %4830 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4831 = fmul fast float %4827, %4830
  %4832 = fmul fast float %4829, %4830
  %4833 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4834 = call float @dx.op.unary.f32(i32 7, float %4832)  ; Saturate(value)
  %4835 = fsub fast float 1.000000e+00, %4833
  %4836 = fsub fast float 1.000000e+00, %4834
  %4837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %4835, float %4836, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4838 = extractvalue %dx.types.ResRet.f32 %4837, 0
  %4839 = fcmp fast ugt float %4838, 0.000000e+00
  br i1 %4839, label %4840, label %4853

; <label>:4840                                    ; preds = %4800
  %4841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4842 = extractvalue %dx.types.CBufRet.f32 %4841, 2
  %4843 = fmul fast float %4842, %4838
  %4844 = extractvalue %dx.types.CBufRet.f32 %4841, 3
  %4845 = fadd fast float %4844, %4843
  %4846 = extractvalue %dx.types.CBufRet.f32 %4807, 2
  %4847 = fadd fast float %4845, %4814
  %4848 = fmul fast float %4820, %4808
  %4849 = call float @dx.op.tertiary.f32(i32 46, float %4823, float %4811, float %4848)  ; FMad(a,b,c)
  %4850 = call float @dx.op.tertiary.f32(i32 46, float %4847, float %4846, float %4849)  ; FMad(a,b,c)
  %4851 = fsub fast float %4850, %4814
  %4852 = fsub fast float %4851, %4801
  br label %4853

; <label>:4853                                    ; preds = %4840, %4800, %4783
  %4854 = phi i1 [ true, %4840 ], [ false, %4800 ], [ false, %4783 ]
  %4855 = phi float [ %4852, %4840 ], [ -1.310720e+05, %4800 ], [ -1.310720e+05, %4783 ]
  %4856 = fsub fast float %4855, %188
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = select i1 %4854, float %4857, float 1.000000e+00
  br label %4859

; <label>:4859                                    ; preds = %4853, %4755
  %4860 = phi float [ %4858, %4853 ], [ 0.000000e+00, %4755 ]
  %4861 = icmp eq i32 %4781, 3
  %4862 = select i1 %4861, float 1.000000e+00, float %4860
  %4863 = call float @dx.op.binary.f32(i32 35, float %4690, float %4862)  ; FMax(a,b)
  %4864 = fcmp fast olt float %4862, 1.000000e+00
  %4865 = fcmp uge float %63, 0.000000e+00
  %4866 = and i1 %4865, %4864
  br i1 %4866, label %4867, label %4877

; <label>:4867                                    ; preds = %4859
  %4868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %40, float %63, float %64, float %65, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4869 = extractvalue %dx.types.ResRet.f32 %4868, 0
  %4870 = extractvalue %dx.types.ResRet.f32 %4868, 1
  %4871 = extractvalue %dx.types.ResRet.f32 %4868, 2
  %4872 = fadd fast float %4869, %4863
  %4873 = fcmp ule float %62, 0.000000e+00
  %4874 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = select i1 %4873, float %4874, float 1.000000e+00
  %4876 = fmul fast float %4875, %4871
  br label %4877

; <label>:4877                                    ; preds = %4867, %4859
  %4878 = phi float [ %4872, %4867 ], [ %4863, %4859 ]
  %4879 = phi float [ %4870, %4867 ], [ 0.000000e+00, %4859 ]
  %4880 = phi float [ %4876, %4867 ], [ 0.000000e+00, %4859 ]
  %4881 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4882 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4883 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  %4884 = fcmp fast une float %4882, 0.000000e+00
  %4885 = fcmp fast une float %4883, 0.000000e+00
  %4886 = or i1 %4884, %4885
  br i1 %4886, label %4887, label %5462

; <label>:4887                                    ; preds = %4877
  br i1 %4884, label %4888, label %5161

; <label>:4888                                    ; preds = %4887
  %4889 = call float @dx.op.unary.f32(i32 23, float %4687)  ; Log(value)
  %4890 = fmul fast float %4889, 4.000000e+00
  %4891 = call float @dx.op.unary.f32(i32 21, float %4890)  ; Exp(value)
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 0
  %4894 = fmul fast float %4893, %50
  %4895 = fmul fast float %4893, %51
  %4896 = fmul fast float %4893, %52
  %4897 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %4898 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %4899 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %4900 = call float @dx.op.unary.f32(i32 23, float %4897)  ; Log(value)
  %4901 = call float @dx.op.unary.f32(i32 23, float %4898)  ; Log(value)
  %4902 = call float @dx.op.unary.f32(i32 23, float %4899)  ; Log(value)
  %4903 = fmul fast float %4900, 4.000000e+00
  %4904 = fmul fast float %4901, 4.000000e+00
  %4905 = fmul fast float %4902, 4.000000e+00
  %4906 = call float @dx.op.unary.f32(i32 21, float %4903)  ; Exp(value)
  %4907 = call float @dx.op.unary.f32(i32 21, float %4904)  ; Exp(value)
  %4908 = call float @dx.op.unary.f32(i32 21, float %4905)  ; Exp(value)
  %4909 = fadd fast float %4907, %4906
  %4910 = fadd fast float %4909, %4908
  %4911 = fdiv fast float 1.000000e+00, %4910
  %4912 = fmul fast float %4911, %4906
  %4913 = fcmp fast ogt float %59, 0.000000e+00
  %4914 = fcmp fast ogt float %60, 0.000000e+00
  %4915 = fcmp fast ogt float %61, 0.000000e+00
  %4916 = fcmp fast olt float %59, 0.000000e+00
  %4917 = fcmp fast olt float %60, 0.000000e+00
  %4918 = fcmp fast olt float %61, 0.000000e+00
  %4919 = zext i1 %4913 to i32
  %4920 = zext i1 %4914 to i32
  %4921 = zext i1 %4915 to i32
  %4922 = zext i1 %4916 to i32
  %4923 = zext i1 %4917 to i32
  %4924 = zext i1 %4918 to i32
  %4925 = sub nsw i32 %4919, %4922
  %4926 = sub nsw i32 %4920, %4923
  %4927 = sub nsw i32 %4921, %4924
  %4928 = call float @dx.op.unary.f32(i32 83, float %4894)  ; DerivCoarseX(value)
  %4929 = call float @dx.op.unary.f32(i32 83, float %4895)  ; DerivCoarseX(value)
  %4930 = call float @dx.op.unary.f32(i32 83, float %4896)  ; DerivCoarseX(value)
  %4931 = call float @dx.op.unary.f32(i32 84, float %4894)  ; DerivCoarseY(value)
  %4932 = call float @dx.op.unary.f32(i32 84, float %4895)  ; DerivCoarseY(value)
  %4933 = call float @dx.op.unary.f32(i32 84, float %4896)  ; DerivCoarseY(value)
  %4934 = fcmp fast ole float %290, %4912
  %4935 = fmul fast float %4911, %4909
  %4936 = fcmp fast ole float %290, %4935
  %4937 = select i1 %4936, float %4896, float %4894
  %4938 = select i1 %4936, float %4894, float %4895
  %4939 = select i1 %4934, float %4895, float %4937
  %4940 = select i1 %4934, float %4896, float %4938
  %4941 = select i1 %4936, float %4930, float %4928
  %4942 = select i1 %4936, float %4928, float %4929
  %4943 = select i1 %4934, float %4929, float %4941
  %4944 = select i1 %4934, float %4930, float %4942
  %4945 = select i1 %4936, float %4933, float %4931
  %4946 = select i1 %4936, float %4931, float %4932
  %4947 = select i1 %4934, float %4932, float %4945
  %4948 = select i1 %4934, float %4933, float %4946
  %4949 = call float @dx.op.unary.f32(i32 27, float %4939)  ; Round_ni(value)
  %4950 = call float @dx.op.unary.f32(i32 27, float %4940)  ; Round_ni(value)
  %4951 = fptosi float %4949 to i32
  %4952 = fptosi float %4950 to i32
  %4953 = xor i32 %4952, %4951
  %4954 = sitofp i32 %4953 to float
  %4955 = fptosi float %4954 to i32
  %4956 = sitofp i32 %4955 to float
  %4957 = fmul fast float %4956, 0x3FE3C6EF40000000
  %4958 = frem fast float %4949, 2.560000e+02
  %4959 = frem fast float %4950, 2.560000e+02
  %4960 = fptoui float %4958 to i32
  %4961 = fptoui float %4959 to i32
  %4962 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %4960, i32 %4961, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 0
  %4964 = extractvalue %dx.types.ResRet.f32 %4962, 1
  %4965 = extractvalue %dx.types.ResRet.f32 %4962, 2
  %4966 = fadd fast float %4963, %4957
  %4967 = fadd fast float %4964, %4957
  %4968 = fadd fast float %4965, %4957
  %4969 = call float @dx.op.unary.f32(i32 22, float %4966)  ; Frc(value)
  %4970 = call float @dx.op.unary.f32(i32 22, float %4967)  ; Frc(value)
  %4971 = call float @dx.op.unary.f32(i32 22, float %4968)  ; Frc(value)
  %4972 = fmul fast float %4971, 0x401921FB60000000
  %4973 = call float @dx.op.unary.f32(i32 13, float %4972)  ; Sin(value)
  %4974 = call float @dx.op.unary.f32(i32 12, float %4972)  ; Cos(value)
  %4975 = fsub fast float -0.000000e+00, %4974
  %4976 = fmul fast float %4974, %4939
  %4977 = call float @dx.op.tertiary.f32(i32 46, float %4973, float %4940, float %4976)  ; FMad(a,b,c)
  %4978 = fmul fast float %4973, %4939
  %4979 = call float @dx.op.tertiary.f32(i32 46, float %4975, float %4940, float %4978)  ; FMad(a,b,c)
  %4980 = fadd fast float %4977, %4969
  %4981 = fadd fast float %4979, %4970
  %4982 = extractvalue %dx.types.CBufRet.f32 %4892, 3
  %4983 = bitcast float %4982 to i32
  %4984 = icmp eq i32 %4983, 0
  br i1 %4984, label %5023, label %4985

; <label>:4985                                    ; preds = %4888
  %4986 = add i32 %4983, 0
  %4987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4987, %dx.types.Handle %104, float %4980, float %4981, float undef, float undef, i32 0, i32 0, i32 undef, float %4943, float %4944, float undef, float %4947, float %4948, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 372)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 1
  %4992 = extractvalue %dx.types.CBufRet.f32 %4990, 2
  %4993 = fsub fast float 1.000000e+00, %4882
  %4994 = call float @dx.op.binary.f32(i32 35, float %4993, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %4995 = bitcast float %4882 to i32
  %4996 = sitofp i32 %4995 to float
  %4997 = fadd fast float %4996, 0xC1CFBF8940000000
  %4998 = fmul fast float %4992, %4997
  %4999 = fadd fast float %4998, 0x41CFBF8940000000
  %5000 = fptosi float %4999 to i32
  %5001 = bitcast i32 %5000 to float
  %5002 = bitcast float %4994 to i32
  %5003 = sitofp i32 %5002 to float
  %5004 = fadd fast float %5003, 0xC1CFBF8940000000
  %5005 = fmul fast float %5004, %4992
  %5006 = fadd fast float %5005, 0x41CFBF8940000000
  %5007 = fptosi float %5006 to i32
  %5008 = bitcast i32 %5007 to float
  %5009 = fmul fast float %5001, %4991
  %5010 = fmul fast float %5008, %4991
  %5011 = fsub fast float %4994, %5009
  %5012 = fadd fast float %5010, %4994
  %5013 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  %5015 = fsub fast float %4989, %5013
  %5016 = fsub fast float %5014, %5013
  %5017 = bitcast float %5016 to i32
  %5018 = sub nsw i32 2129859010, %5017
  %5019 = bitcast i32 %5018 to float
  %5020 = fmul fast float %5019, %5015
  %5021 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5022 = fcmp fast olt float %5021, 0x3F70101020000000
  br i1 %5022, label %5161, label %5023

; <label>:5023                                    ; preds = %4985, %4888
  %5024 = phi float [ %5021, %4985 ], [ %4882, %4888 ]
  %5025 = fmul fast float %5024, %4891
  %5026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.i32 %5026, 1
  %5028 = extractvalue %dx.types.CBufRet.i32 %5026, 0
  %5029 = add i32 %5028, 0
  %5030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5031 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5030, %dx.types.Handle %103, float %4980, float %4981, float undef, float undef, i32 0, i32 0, i32 undef, float %4943, float %4944, float undef, float %4947, float %4948, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5035 = extractvalue %dx.types.ResRet.f32 %5031, 3
  %5036 = and i32 %5027, 255
  %5037 = uitofp i32 %5036 to float
  %5038 = lshr i32 %5027, 8
  %5039 = and i32 %5038, 255
  %5040 = uitofp i32 %5039 to float
  %5041 = fmul fast float %5035, %5037
  %5042 = fadd fast float %5041, %5040
  %5043 = fmul fast float %5042, 0x3F70101000000000
  %5044 = fadd fast float %5043, 0xBFB99999A0000000
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %5045, 0x3FF1C71C80000000
  %5047 = call float @dx.op.binary.f32(i32 36, float %5043, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5048 = fsub fast float 1.000000e+00, %5046
  %5049 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5050 = fmul fast float %5049, %5032
  %5051 = fmul fast float %5049, %5033
  %5052 = fmul fast float %5049, %5034
  %5053 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5054 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5056 = fmul fast float %5046, %5032
  %5057 = fmul fast float %5046, %5033
  %5058 = fmul fast float %5046, %5034
  %5059 = fadd fast float %5056, %5047
  %5060 = fadd fast float %5057, %5047
  %5061 = fadd fast float %5058, %5047
  %5062 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5063 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5064 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 373)  ; CBufferLoadLegacy(handle,regIndex)
  %5066 = extractvalue %dx.types.CBufRet.i32 %5065, 3
  %5067 = extractvalue %dx.types.CBufRet.i32 %5065, 2
  %5068 = add i32 %5067, 0
  %5069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5070 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5069, %dx.types.Handle %103, float %4980, float %4981, float undef, float undef, i32 0, i32 0, i32 undef, float %4943, float %4944, float undef, float %4947, float %4948, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5071 = extractvalue %dx.types.ResRet.f32 %5070, 0
  %5072 = extractvalue %dx.types.ResRet.f32 %5070, 1
  %5073 = extractvalue %dx.types.ResRet.f32 %5070, 2
  %5074 = extractvalue %dx.types.ResRet.f32 %5070, 3
  %5075 = and i32 %5066, 255
  %5076 = uitofp i32 %5075 to float
  %5077 = lshr i32 %5066, 8
  %5078 = and i32 %5077, 255
  %5079 = uitofp i32 %5078 to float
  %5080 = lshr i32 %5066, 16
  %5081 = and i32 %5080, 255
  %5082 = uitofp i32 %5081 to float
  %5083 = fmul fast float %5082, 0x3F70101000000000
  %5084 = fmul fast float %5071, %5076
  %5085 = fadd fast float %5084, %5079
  %5086 = fmul fast float %5085, 0x3F70101000000000
  %5087 = fadd fast float %5072, -5.000000e-01
  %5088 = fadd fast float %5074, -5.000000e-01
  %5089 = fmul fast float %5087, %5083
  %5090 = fmul fast float %5088, %5083
  %5091 = fadd fast float %5089, 5.000000e-01
  %5092 = fadd fast float %5090, 5.000000e-01
  %5093 = fmul fast float %5091, 2.000000e+00
  %5094 = fadd fast float %5093, -1.000000e+00
  %5095 = fmul fast float %5092, 2.000000e+00
  %5096 = fadd fast float %5095, -1.000000e+00
  %5097 = fadd fast float %5094, %5096
  %5098 = fmul fast float %5097, 5.000000e-01
  %5099 = fsub fast float %5094, %5096
  %5100 = fmul fast float %5099, 5.000000e-01
  %5101 = call float @dx.op.unary.f32(i32 6, float %5098)  ; FAbs(value)
  %5102 = fsub fast float 1.000000e+00, %5101
  %5103 = call float @dx.op.unary.f32(i32 6, float %5100)  ; FAbs(value)
  %5104 = fsub fast float %5102, %5103
  %5105 = call float @dx.op.dot3.f32(i32 55, float %5098, float %5100, float %5104, float %5098, float %5100, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 25, float %5105)  ; Rsqrt(value)
  %5107 = fmul fast float %5098, %5106
  %5108 = fmul fast float %5100, %5106
  %5109 = select i1 %4936, i32 %4926, i32 %4927
  %5110 = select i1 %4934, i32 %4925, i32 %5109
  %5111 = sitofp i32 %5110 to float
  %5112 = fmul fast float %5104, %5111
  %5113 = fmul fast float %5112, %5106
  %5114 = select i1 %4936, float %5113, float %5108
  %5115 = select i1 %4936, float %5108, float %5113
  %5116 = select i1 %4934, float %5113, float %5107
  %5117 = select i1 %4934, float %5108, float %5114
  %5118 = select i1 %4934, float %5107, float %5115
  %5119 = fsub fast float %5053, %4773
  %5120 = fsub fast float %5054, %4774
  %5121 = fsub fast float %5055, %4775
  %5122 = fmul fast float %5119, %5025
  %5123 = fmul fast float %5120, %5025
  %5124 = fmul fast float %5121, %5025
  %5125 = fadd fast float %5122, %4773
  %5126 = fadd fast float %5123, %4774
  %5127 = fadd fast float %5124, %4775
  %5128 = fsub fast float %5062, %4733
  %5129 = fsub fast float %5063, %4734
  %5130 = fsub fast float %5064, %4735
  %5131 = fmul fast float %5128, %5025
  %5132 = fmul fast float %5129, %5025
  %5133 = fmul fast float %5130, %5025
  %5134 = fadd fast float %5131, %4733
  %5135 = fadd fast float %5132, %4734
  %5136 = fadd fast float %5133, %4735
  %5137 = fadd fast float %5116, %4669
  %5138 = fadd fast float %5117, %4670
  %5139 = fadd fast float %5118, %4671
  %5140 = call float @dx.op.dot3.f32(i32 55, float %5137, float %5138, float %5139, float %5137, float %5138, float %5139)  ; Dot3(ax,ay,az,bx,by,bz)
  %5141 = call float @dx.op.unary.f32(i32 25, float %5140)  ; Rsqrt(value)
  %5142 = fmul fast float %5137, %5141
  %5143 = fmul fast float %5138, %5141
  %5144 = fmul fast float %5139, %5141
  %5145 = fsub fast float %5142, %4669
  %5146 = fsub fast float %5143, %4670
  %5147 = fsub fast float %5144, %4671
  %5148 = fmul fast float %5145, %5025
  %5149 = fmul fast float %5146, %5025
  %5150 = fmul fast float %5147, %5025
  %5151 = fadd fast float %5148, %4669
  %5152 = fadd fast float %5149, %4670
  %5153 = fadd fast float %5150, %4671
  %5154 = call float @dx.op.binary.f32(i32 36, float %4687, float %5073)  ; FMin(a,b)
  %5155 = fsub fast float %5154, %4687
  %5156 = fmul fast float %5155, %5025
  %5157 = fadd fast float %5156, %4687
  %5158 = fsub fast float %5086, %4736
  %5159 = fmul fast float %5158, %5025
  %5160 = fadd fast float %5159, %4736
  br label %5161

; <label>:5161                                    ; preds = %5023, %4985, %4887
  %5162 = phi float [ %5134, %5023 ], [ %4733, %4985 ], [ %4733, %4887 ]
  %5163 = phi float [ %5135, %5023 ], [ %4734, %4985 ], [ %4734, %4887 ]
  %5164 = phi float [ %5136, %5023 ], [ %4735, %4985 ], [ %4735, %4887 ]
  %5165 = phi float [ %5151, %5023 ], [ %4669, %4985 ], [ %4669, %4887 ]
  %5166 = phi float [ %5152, %5023 ], [ %4670, %4985 ], [ %4670, %4887 ]
  %5167 = phi float [ %5153, %5023 ], [ %4671, %4985 ], [ %4671, %4887 ]
  %5168 = phi float [ %5125, %5023 ], [ %4773, %4985 ], [ %4773, %4887 ]
  %5169 = phi float [ %5126, %5023 ], [ %4774, %4985 ], [ %4774, %4887 ]
  %5170 = phi float [ %5127, %5023 ], [ %4775, %4985 ], [ %4775, %4887 ]
  %5171 = phi float [ %5160, %5023 ], [ %4736, %4985 ], [ %4736, %4887 ]
  %5172 = phi float [ %5157, %5023 ], [ %4687, %4985 ], [ %4687, %4887 ]
  br i1 %4885, label %5173, label %5462

; <label>:5173                                    ; preds = %5161
  %5174 = call float @dx.op.unary.f32(i32 23, float %5172)  ; Log(value)
  %5175 = fmul fast float %5174, 4.000000e+00
  %5176 = call float @dx.op.unary.f32(i32 21, float %5175)  ; Exp(value)
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 0
  %5179 = fmul fast float %5178, %50
  %5180 = fmul fast float %5178, %51
  %5181 = fmul fast float %5178, %52
  %5182 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %5183 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %5184 = call float @dx.op.unary.f32(i32 6, float %61)  ; FAbs(value)
  %5185 = call float @dx.op.unary.f32(i32 23, float %5182)  ; Log(value)
  %5186 = call float @dx.op.unary.f32(i32 23, float %5183)  ; Log(value)
  %5187 = call float @dx.op.unary.f32(i32 23, float %5184)  ; Log(value)
  %5188 = fmul fast float %5185, 4.000000e+00
  %5189 = fmul fast float %5186, 4.000000e+00
  %5190 = fmul fast float %5187, 4.000000e+00
  %5191 = call float @dx.op.unary.f32(i32 21, float %5188)  ; Exp(value)
  %5192 = call float @dx.op.unary.f32(i32 21, float %5189)  ; Exp(value)
  %5193 = call float @dx.op.unary.f32(i32 21, float %5190)  ; Exp(value)
  %5194 = fadd fast float %5192, %5191
  %5195 = fadd fast float %5194, %5193
  %5196 = fdiv fast float 1.000000e+00, %5195
  %5197 = fmul fast float %5196, %5191
  %5198 = fcmp fast ogt float %59, 0.000000e+00
  %5199 = fcmp fast ogt float %60, 0.000000e+00
  %5200 = fcmp fast ogt float %61, 0.000000e+00
  %5201 = fcmp fast olt float %59, 0.000000e+00
  %5202 = fcmp fast olt float %60, 0.000000e+00
  %5203 = fcmp fast olt float %61, 0.000000e+00
  %5204 = zext i1 %5198 to i32
  %5205 = zext i1 %5199 to i32
  %5206 = zext i1 %5200 to i32
  %5207 = zext i1 %5201 to i32
  %5208 = zext i1 %5202 to i32
  %5209 = zext i1 %5203 to i32
  %5210 = sub nsw i32 %5204, %5207
  %5211 = sub nsw i32 %5205, %5208
  %5212 = sub nsw i32 %5206, %5209
  %5213 = call float @dx.op.unary.f32(i32 83, float %5179)  ; DerivCoarseX(value)
  %5214 = call float @dx.op.unary.f32(i32 83, float %5180)  ; DerivCoarseX(value)
  %5215 = call float @dx.op.unary.f32(i32 83, float %5181)  ; DerivCoarseX(value)
  %5216 = call float @dx.op.unary.f32(i32 84, float %5179)  ; DerivCoarseY(value)
  %5217 = call float @dx.op.unary.f32(i32 84, float %5180)  ; DerivCoarseY(value)
  %5218 = call float @dx.op.unary.f32(i32 84, float %5181)  ; DerivCoarseY(value)
  %5219 = fcmp fast ole float %290, %5197
  %5220 = fmul fast float %5196, %5194
  %5221 = fcmp fast ole float %290, %5220
  %5222 = select i1 %5221, float %5181, float %5179
  %5223 = select i1 %5221, float %5179, float %5180
  %5224 = select i1 %5219, float %5180, float %5222
  %5225 = select i1 %5219, float %5181, float %5223
  %5226 = select i1 %5221, float %5215, float %5213
  %5227 = select i1 %5221, float %5213, float %5214
  %5228 = select i1 %5219, float %5214, float %5226
  %5229 = select i1 %5219, float %5215, float %5227
  %5230 = select i1 %5221, float %5218, float %5216
  %5231 = select i1 %5221, float %5216, float %5217
  %5232 = select i1 %5219, float %5217, float %5230
  %5233 = select i1 %5219, float %5218, float %5231
  %5234 = call float @dx.op.unary.f32(i32 27, float %5224)  ; Round_ni(value)
  %5235 = call float @dx.op.unary.f32(i32 27, float %5225)  ; Round_ni(value)
  %5236 = fptosi float %5234 to i32
  %5237 = fptosi float %5235 to i32
  %5238 = xor i32 %5237, %5236
  %5239 = sitofp i32 %5238 to float
  %5240 = fptosi float %5239 to i32
  %5241 = sitofp i32 %5240 to float
  %5242 = fmul fast float %5241, 0x3FE3C6EF40000000
  %5243 = frem fast float %5234, 2.560000e+02
  %5244 = frem fast float %5235, 2.560000e+02
  %5245 = fptoui float %5243 to i32
  %5246 = fptoui float %5244 to i32
  %5247 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5245, i32 %5246, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = fadd fast float %5248, %5242
  %5252 = fadd fast float %5249, %5242
  %5253 = fadd fast float %5250, %5242
  %5254 = call float @dx.op.unary.f32(i32 22, float %5251)  ; Frc(value)
  %5255 = call float @dx.op.unary.f32(i32 22, float %5252)  ; Frc(value)
  %5256 = call float @dx.op.unary.f32(i32 22, float %5253)  ; Frc(value)
  %5257 = fmul fast float %5256, 0x401921FB60000000
  %5258 = call float @dx.op.unary.f32(i32 13, float %5257)  ; Sin(value)
  %5259 = call float @dx.op.unary.f32(i32 12, float %5257)  ; Cos(value)
  %5260 = fsub fast float -0.000000e+00, %5259
  %5261 = fmul fast float %5259, %5224
  %5262 = call float @dx.op.tertiary.f32(i32 46, float %5258, float %5225, float %5261)  ; FMad(a,b,c)
  %5263 = fmul fast float %5258, %5224
  %5264 = call float @dx.op.tertiary.f32(i32 46, float %5260, float %5225, float %5263)  ; FMad(a,b,c)
  %5265 = fadd fast float %5262, %5254
  %5266 = fadd fast float %5264, %5255
  %5267 = extractvalue %dx.types.CBufRet.f32 %5177, 3
  %5268 = bitcast float %5267 to i32
  %5269 = icmp eq i32 %5268, 0
  br i1 %5269, label %5308, label %5270

; <label>:5270                                    ; preds = %5173
  %5271 = add i32 %5268, 0
  %5272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5273 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5272, %dx.types.Handle %104, float %5265, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float %5228, float %5229, float undef, float %5232, float %5233, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 374)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.f32 %5275, 1
  %5277 = extractvalue %dx.types.CBufRet.f32 %5275, 2
  %5278 = fsub fast float 1.000000e+00, %4883
  %5279 = call float @dx.op.binary.f32(i32 35, float %5278, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %5280 = bitcast float %4883 to i32
  %5281 = sitofp i32 %5280 to float
  %5282 = fadd fast float %5281, 0xC1CFBF8940000000
  %5283 = fmul fast float %5277, %5282
  %5284 = fadd fast float %5283, 0x41CFBF8940000000
  %5285 = fptosi float %5284 to i32
  %5286 = bitcast i32 %5285 to float
  %5287 = bitcast float %5279 to i32
  %5288 = sitofp i32 %5287 to float
  %5289 = fadd fast float %5288, 0xC1CFBF8940000000
  %5290 = fmul fast float %5289, %5277
  %5291 = fadd fast float %5290, 0x41CFBF8940000000
  %5292 = fptosi float %5291 to i32
  %5293 = bitcast i32 %5292 to float
  %5294 = fmul fast float %5286, %5276
  %5295 = fmul fast float %5293, %5276
  %5296 = fsub fast float %5279, %5294
  %5297 = fadd fast float %5295, %5279
  %5298 = call float @dx.op.unary.f32(i32 7, float %5296)  ; Saturate(value)
  %5299 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5300 = fsub fast float %5274, %5298
  %5301 = fsub fast float %5299, %5298
  %5302 = bitcast float %5301 to i32
  %5303 = sub nsw i32 2129859010, %5302
  %5304 = bitcast i32 %5303 to float
  %5305 = fmul fast float %5304, %5300
  %5306 = call float @dx.op.unary.f32(i32 7, float %5305)  ; Saturate(value)
  %5307 = fcmp fast olt float %5306, 0x3F70101020000000
  br i1 %5307, label %5462, label %5308

; <label>:5308                                    ; preds = %5270, %5173
  %5309 = phi float [ %5306, %5270 ], [ %4883, %5173 ]
  %5310 = fmul fast float %5309, %5176
  %5311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.i32 %5311, 1
  %5313 = extractvalue %dx.types.CBufRet.i32 %5311, 0
  %5314 = add i32 %5313, 0
  %5315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5316 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5315, %dx.types.Handle %103, float %5265, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float %5228, float %5229, float undef, float %5232, float %5233, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = extractvalue %dx.types.ResRet.f32 %5316, 1
  %5319 = extractvalue %dx.types.ResRet.f32 %5316, 2
  %5320 = extractvalue %dx.types.ResRet.f32 %5316, 3
  %5321 = and i32 %5312, 255
  %5322 = uitofp i32 %5321 to float
  %5323 = lshr i32 %5312, 8
  %5324 = and i32 %5323, 255
  %5325 = uitofp i32 %5324 to float
  %5326 = fmul fast float %5320, %5322
  %5327 = fadd fast float %5326, %5325
  %5328 = fmul fast float %5327, 0x3F70101000000000
  %5329 = fadd fast float %5328, 0xBFB99999A0000000
  %5330 = call float @dx.op.unary.f32(i32 7, float %5329)  ; Saturate(value)
  %5331 = fmul fast float %5330, 0x3FF1C71C80000000
  %5332 = call float @dx.op.binary.f32(i32 36, float %5328, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5333 = fsub fast float 1.000000e+00, %5331
  %5334 = call float @dx.op.unary.f32(i32 7, float %5333)  ; Saturate(value)
  %5335 = fmul fast float %5334, %5317
  %5336 = fmul fast float %5334, %5318
  %5337 = fmul fast float %5334, %5319
  %5338 = call float @dx.op.unary.f32(i32 7, float %5335)  ; Saturate(value)
  %5339 = call float @dx.op.unary.f32(i32 7, float %5336)  ; Saturate(value)
  %5340 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5341 = fmul fast float %5331, %5317
  %5342 = fmul fast float %5331, %5318
  %5343 = fmul fast float %5331, %5319
  %5344 = fadd fast float %5341, %5332
  %5345 = fadd fast float %5342, %5332
  %5346 = fadd fast float %5343, %5332
  %5347 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5349 = call float @dx.op.unary.f32(i32 7, float %5346)  ; Saturate(value)
  %5350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 376)  ; CBufferLoadLegacy(handle,regIndex)
  %5351 = extractvalue %dx.types.CBufRet.i32 %5350, 3
  %5352 = extractvalue %dx.types.CBufRet.i32 %5350, 2
  %5353 = add i32 %5352, 0
  %5354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5355 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5354, %dx.types.Handle %103, float %5265, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float %5228, float %5229, float undef, float %5232, float %5233, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5356 = extractvalue %dx.types.ResRet.f32 %5355, 0
  %5357 = extractvalue %dx.types.ResRet.f32 %5355, 1
  %5358 = extractvalue %dx.types.ResRet.f32 %5355, 2
  %5359 = extractvalue %dx.types.ResRet.f32 %5355, 3
  %5360 = and i32 %5351, 255
  %5361 = uitofp i32 %5360 to float
  %5362 = lshr i32 %5351, 8
  %5363 = and i32 %5362, 255
  %5364 = uitofp i32 %5363 to float
  %5365 = lshr i32 %5351, 16
  %5366 = and i32 %5365, 255
  %5367 = uitofp i32 %5366 to float
  %5368 = fmul fast float %5367, 0x3F70101000000000
  %5369 = fmul fast float %5356, %5361
  %5370 = fadd fast float %5369, %5364
  %5371 = fmul fast float %5370, 0x3F70101000000000
  %5372 = fadd fast float %5357, -5.000000e-01
  %5373 = fadd fast float %5359, -5.000000e-01
  %5374 = fmul fast float %5372, %5368
  %5375 = fmul fast float %5373, %5368
  %5376 = fadd fast float %5374, 5.000000e-01
  %5377 = fadd fast float %5375, 5.000000e-01
  %5378 = fmul fast float %5376, 2.000000e+00
  %5379 = fadd fast float %5378, -1.000000e+00
  %5380 = fmul fast float %5377, 2.000000e+00
  %5381 = fadd fast float %5380, -1.000000e+00
  %5382 = fadd fast float %5379, %5381
  %5383 = fmul fast float %5382, 5.000000e-01
  %5384 = fsub fast float %5379, %5381
  %5385 = fmul fast float %5384, 5.000000e-01
  %5386 = call float @dx.op.unary.f32(i32 6, float %5383)  ; FAbs(value)
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5389 = fsub fast float %5387, %5388
  %5390 = call float @dx.op.dot3.f32(i32 55, float %5383, float %5385, float %5389, float %5383, float %5385, float %5389)  ; Dot3(ax,ay,az,bx,by,bz)
  %5391 = call float @dx.op.unary.f32(i32 25, float %5390)  ; Rsqrt(value)
  %5392 = fmul fast float %5383, %5391
  %5393 = fmul fast float %5385, %5391
  %5394 = select i1 %5221, i32 %5211, i32 %5212
  %5395 = select i1 %5219, i32 %5210, i32 %5394
  %5396 = sitofp i32 %5395 to float
  %5397 = fmul fast float %5389, %5396
  %5398 = fmul fast float %5397, %5391
  %5399 = select i1 %5221, float %5398, float %5393
  %5400 = select i1 %5221, float %5393, float %5398
  %5401 = select i1 %5219, float %5398, float %5392
  %5402 = select i1 %5219, float %5393, float %5399
  %5403 = select i1 %5219, float %5392, float %5400
  %5404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 375)  ; CBufferLoadLegacy(handle,regIndex)
  %5405 = extractvalue %dx.types.CBufRet.f32 %5404, 0
  %5406 = fptoui float %5405 to i32
  %5407 = add i32 %5406, 0
  %5408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5409 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5408, %dx.types.Handle %103, float %5265, float %5266, float undef, float undef, i32 0, i32 0, i32 undef, float %5228, float %5229, float undef, float %5232, float %5233, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5410 = extractvalue %dx.types.ResRet.f32 %5409, 0
  %5411 = fsub fast float %5338, %5168
  %5412 = fsub fast float %5339, %5169
  %5413 = fsub fast float %5340, %5170
  %5414 = fmul fast float %5411, %5310
  %5415 = fmul fast float %5412, %5310
  %5416 = fmul fast float %5413, %5310
  %5417 = fadd fast float %5414, %5168
  %5418 = fadd fast float %5415, %5169
  %5419 = fadd fast float %5416, %5170
  %5420 = fsub fast float %5347, %5162
  %5421 = fsub fast float %5348, %5163
  %5422 = fsub fast float %5349, %5164
  %5423 = fmul fast float %5420, %5310
  %5424 = fmul fast float %5421, %5310
  %5425 = fmul fast float %5422, %5310
  %5426 = fadd fast float %5423, %5162
  %5427 = fadd fast float %5424, %5163
  %5428 = fadd fast float %5425, %5164
  %5429 = fadd fast float %5401, %5165
  %5430 = fadd fast float %5402, %5166
  %5431 = fadd fast float %5403, %5167
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %5429, float %5430, float %5431)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = call float @dx.op.unary.f32(i32 25, float %5432)  ; Rsqrt(value)
  %5434 = fmul fast float %5433, %5429
  %5435 = fmul fast float %5433, %5430
  %5436 = fmul fast float %5433, %5431
  %5437 = fsub fast float %5434, %5165
  %5438 = fsub fast float %5435, %5166
  %5439 = fsub fast float %5436, %5167
  %5440 = fmul fast float %5437, %5310
  %5441 = fmul fast float %5438, %5310
  %5442 = fmul fast float %5439, %5310
  %5443 = fadd fast float %5440, %5165
  %5444 = fadd fast float %5441, %5166
  %5445 = fadd fast float %5442, %5167
  %5446 = call float @dx.op.binary.f32(i32 36, float %5172, float %5358)  ; FMin(a,b)
  %5447 = fsub fast float %5446, %5172
  %5448 = fmul fast float %5447, %5310
  %5449 = fadd fast float %5448, %5172
  %5450 = fsub fast float %5371, %5171
  %5451 = fmul fast float %5450, %5310
  %5452 = fadd fast float %5451, %5171
  %5453 = fsub fast float %5410, %4777
  %5454 = fsub fast float %5410, %4778
  %5455 = fsub fast float %5410, %4779
  %5456 = fmul fast float %5453, %5310
  %5457 = fmul fast float %5454, %5310
  %5458 = fmul fast float %5455, %5310
  %5459 = fadd fast float %5456, %4777
  %5460 = fadd fast float %5457, %4778
  %5461 = fadd fast float %5458, %4779
  br label %5462

; <label>:5462                                    ; preds = %5308, %5270, %5161, %4877
  %5463 = phi float [ %5426, %5308 ], [ %5162, %5270 ], [ %5162, %5161 ], [ %4733, %4877 ]
  %5464 = phi float [ %5427, %5308 ], [ %5163, %5270 ], [ %5163, %5161 ], [ %4734, %4877 ]
  %5465 = phi float [ %5428, %5308 ], [ %5164, %5270 ], [ %5164, %5161 ], [ %4735, %4877 ]
  %5466 = phi float [ %5443, %5308 ], [ %5165, %5270 ], [ %5165, %5161 ], [ %4669, %4877 ]
  %5467 = phi float [ %5444, %5308 ], [ %5166, %5270 ], [ %5166, %5161 ], [ %4670, %4877 ]
  %5468 = phi float [ %5445, %5308 ], [ %5167, %5270 ], [ %5167, %5161 ], [ %4671, %4877 ]
  %5469 = phi float [ %5459, %5308 ], [ %4777, %5270 ], [ %4777, %5161 ], [ %4777, %4877 ]
  %5470 = phi float [ %5460, %5308 ], [ %4778, %5270 ], [ %4778, %5161 ], [ %4778, %4877 ]
  %5471 = phi float [ %5461, %5308 ], [ %4779, %5270 ], [ %4779, %5161 ], [ %4779, %4877 ]
  %5472 = phi float [ %5417, %5308 ], [ %5168, %5270 ], [ %5168, %5161 ], [ %4773, %4877 ]
  %5473 = phi float [ %5418, %5308 ], [ %5169, %5270 ], [ %5169, %5161 ], [ %4774, %4877 ]
  %5474 = phi float [ %5419, %5308 ], [ %5170, %5270 ], [ %5170, %5161 ], [ %4775, %4877 ]
  %5475 = phi float [ %5452, %5308 ], [ %5171, %5270 ], [ %5171, %5161 ], [ %4736, %4877 ]
  %5476 = phi float [ %5449, %5308 ], [ %5172, %5270 ], [ %5172, %5161 ], [ %4687, %4877 ]
  %5477 = fcmp fast une float %4881, 0.000000e+00
  %5478 = fsub fast float -0.000000e+00, %206
  %5479 = fsub fast float -0.000000e+00, %207
  %5480 = fsub fast float -0.000000e+00, %208
  br i1 %5477, label %5481, label %5642

; <label>:5481                                    ; preds = %5462
  %5482 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %114, float %115, float %116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5483 = fmul fast float %4881, 2.500000e+00
  %5484 = call float @dx.op.unary.f32(i32 7, float %5483)  ; Saturate(value)
  %5485 = fmul fast float %4881, 0x4013FFFFE0000000
  %5486 = fadd fast float %5485, 0xBFFFFFFFE0000000
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5488 = fmul fast float %4881, 0x4004000020000000
  %5489 = fadd fast float %5488, 0xBFF8000040000000
  %5490 = call float @dx.op.unary.f32(i32 7, float %5489)  ; Saturate(value)
  %5491 = fmul fast float %4715, 1.000000e+01
  %5492 = call float @dx.op.unary.f32(i32 7, float %5491)  ; Saturate(value)
  %5493 = fmul fast float %5492, 2.000000e+00
  %5494 = fsub fast float 3.000000e+00, %5493
  %5495 = fmul fast float %5492, %5492
  %5496 = fmul fast float %5495, %5494
  %5497 = fsub fast float 1.000000e+00, %5496
  %5498 = fsub fast float 0x3FE3333340000000, %5475
  %5499 = fmul fast float %5498, 0x400AAAAAA0000000
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = fmul fast float %5497, %5500
  %5502 = fmul fast float %5472, 0x3FEA2B8620000000
  %5503 = fmul fast float %5473, 0x3FEA2B8620000000
  %5504 = fmul fast float %5474, 0x3FEA2B8620000000
  %5505 = fadd fast float %5502, 0x3FC81DFBA0000000
  %5506 = fmul fast float %5505, %5472
  %5507 = fadd fast float %5506, 0x3F910E6020000000
  %5508 = fadd fast float %5503, 0x3FC81DFBA0000000
  %5509 = fmul fast float %5508, %5473
  %5510 = fadd fast float %5509, 0x3F910E6020000000
  %5511 = fadd fast float %5504, 0x3FC81DFBA0000000
  %5512 = fmul fast float %5511, %5474
  %5513 = fadd fast float %5512, 0x3F910E6020000000
  %5514 = call float @dx.op.unary.f32(i32 7, float %5507)  ; Saturate(value)
  %5515 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5516 = call float @dx.op.unary.f32(i32 7, float %5513)  ; Saturate(value)
  %5517 = fsub fast float %5514, %5472
  %5518 = fsub fast float %5515, %5473
  %5519 = fsub fast float %5516, %5474
  %5520 = fmul fast float %5517, %5484
  %5521 = fmul fast float %5520, %5501
  %5522 = fmul fast float %5518, %5484
  %5523 = fmul fast float %5522, %5501
  %5524 = fmul fast float %5519, %5484
  %5525 = fmul fast float %5524, %5501
  %5526 = fadd fast float %5521, %5472
  %5527 = fadd fast float %5523, %5473
  %5528 = fadd fast float %5525, %5474
  %5529 = fmul fast float %5476, %5476
  %5530 = fmul fast float %5529, %5529
  %5531 = fadd fast float %5487, 1.000000e+00
  %5532 = fsub fast float %5531, %5501
  %5533 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5534 = call float @dx.op.dot3.f32(i32 55, float %114, float %115, float %116, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5535 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5536 = fsub fast float 1.000000e+00, %5530
  %5537 = call float @dx.op.binary.f32(i32 36, float %5533, float %5536)  ; FMin(a,b)
  %5538 = call float @dx.op.unary.f32(i32 7, float %5490)  ; Saturate(value)
  %5539 = call float @dx.op.binary.f32(i32 35, float %5537, float %5538)  ; FMax(a,b)
  %5540 = fadd fast float %5535, 0xBFE4CCCCC0000000
  %5541 = fmul fast float %5540, 0x4006DB6DA0000000
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5543 = fmul fast float %5542, 2.000000e+00
  %5544 = fsub fast float 3.000000e+00, %5543
  %5545 = bitcast float %5463 to i32
  %5546 = ashr i32 %5545, 1
  %5547 = add nsw i32 %5546, 532487669
  %5548 = bitcast i32 %5547 to float
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = bitcast float %5549 to i32
  %5551 = sub nsw i32 2129859010, %5550
  %5552 = bitcast i32 %5551 to float
  %5553 = fmul fast float %5552, 2.000000e+00
  %5554 = bitcast float %5464 to i32
  %5555 = ashr i32 %5554, 1
  %5556 = add nsw i32 %5555, 532487669
  %5557 = bitcast i32 %5556 to float
  %5558 = fsub fast float 1.000000e+00, %5557
  %5559 = bitcast float %5558 to i32
  %5560 = sub nsw i32 2129859010, %5559
  %5561 = bitcast i32 %5560 to float
  %5562 = fmul fast float %5561, 2.000000e+00
  %5563 = bitcast float %5465 to i32
  %5564 = ashr i32 %5563, 1
  %5565 = add nsw i32 %5564, 532487669
  %5566 = bitcast i32 %5565 to float
  %5567 = fsub fast float 1.000000e+00, %5566
  %5568 = bitcast float %5567 to i32
  %5569 = sub nsw i32 2129859010, %5568
  %5570 = bitcast i32 %5569 to float
  %5571 = fmul fast float %5570, 2.000000e+00
  %5572 = fsub fast float 0x4002A9FBE0000000, %5553
  %5573 = fadd fast float %5553, 0x3FD54FDF00000000
  %5574 = bitcast float %5573 to i32
  %5575 = sub nsw i32 2129859010, %5574
  %5576 = bitcast i32 %5575 to float
  %5577 = fmul fast float %5576, %5572
  %5578 = fmul fast float %5577, %5577
  %5579 = fsub fast float 0x4002A9FBE0000000, %5562
  %5580 = fadd fast float %5562, 0x3FD54FDF00000000
  %5581 = bitcast float %5580 to i32
  %5582 = sub nsw i32 2129859010, %5581
  %5583 = bitcast i32 %5582 to float
  %5584 = fmul fast float %5583, %5579
  %5585 = fmul fast float %5584, %5584
  %5586 = fsub fast float 0x4002A9FBE0000000, %5571
  %5587 = fadd fast float %5571, 0x3FD54FDF00000000
  %5588 = bitcast float %5587 to i32
  %5589 = sub nsw i32 2129859010, %5588
  %5590 = bitcast i32 %5589 to float
  %5591 = fmul fast float %5590, %5586
  %5592 = fmul fast float %5591, %5591
  %5593 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5578)  ; FMax(a,b)
  %5594 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5585)  ; FMax(a,b)
  %5595 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5592)  ; FMax(a,b)
  %5596 = fsub fast float 1.000000e+00, %5482
  %5597 = fadd fast float %5596, %5497
  %5598 = call float @dx.op.unary.f32(i32 7, float %5597)  ; Saturate(value)
  %5599 = fsub fast float 1.000000e+00, %4862
  %5600 = fmul fast float %5539, %5599
  %5601 = fmul fast float %5542, %5542
  %5602 = fmul fast float %5601, %5600
  %5603 = fmul fast float %5602, %5544
  %5604 = fmul fast float %5599, 0xBFE99999A0000000
  %5605 = fmul fast float %5604, %5484
  %5606 = fmul fast float %5605, %5501
  %5607 = fadd fast float %5606, 1.000000e+00
  %5608 = fadd fast float %5475, -1.000000e+00
  %5609 = fmul fast float %5607, %5608
  %5610 = fadd fast float %5609, 1.000000e+00
  %5611 = fsub fast float %5593, %5463
  %5612 = fsub fast float %5594, %5464
  %5613 = fsub fast float %5595, %5465
  %5614 = fmul fast float %5603, %5611
  %5615 = fmul fast float %5603, %5612
  %5616 = fmul fast float %5603, %5613
  %5617 = fadd fast float %5614, %5463
  %5618 = fadd fast float %5615, %5464
  %5619 = fadd fast float %5616, %5465
  %5620 = fsub fast float %114, %5466
  %5621 = fsub fast float %115, %5467
  %5622 = fsub fast float %116, %5468
  %5623 = fmul fast float %5603, %5620
  %5624 = fmul fast float %5603, %5621
  %5625 = fmul fast float %5603, %5622
  %5626 = fadd fast float %5623, %5466
  %5627 = fadd fast float %5624, %5467
  %5628 = fadd fast float %5625, %5468
  %5629 = fmul fast float %5603, %5598
  %5630 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5631 = fsub fast float 1.000000e+00, %5630
  %5632 = fmul fast float %5629, %5631
  %5633 = fadd fast float %5632, %5630
  %5634 = fsub fast float 1.000000e+00, %5476
  %5635 = fmul fast float %5603, %5634
  %5636 = fadd fast float %5635, %5476
  %5637 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5638 = call float @dx.op.unary.f32(i32 25, float %5637)  ; Rsqrt(value)
  %5639 = fmul fast float %5626, %5638
  %5640 = fmul fast float %5627, %5638
  %5641 = fmul fast float %5628, %5638
  br label %5642

; <label>:5642                                    ; preds = %5481, %5462
  %5643 = phi float [ %5617, %5481 ], [ %5463, %5462 ]
  %5644 = phi float [ %5618, %5481 ], [ %5464, %5462 ]
  %5645 = phi float [ %5619, %5481 ], [ %5465, %5462 ]
  %5646 = phi float [ %5639, %5481 ], [ %5466, %5462 ]
  %5647 = phi float [ %5640, %5481 ], [ %5467, %5462 ]
  %5648 = phi float [ %5641, %5481 ], [ %5468, %5462 ]
  %5649 = phi float [ %5526, %5481 ], [ %5472, %5462 ]
  %5650 = phi float [ %5527, %5481 ], [ %5473, %5462 ]
  %5651 = phi float [ %5528, %5481 ], [ %5474, %5462 ]
  %5652 = phi float [ %5633, %5481 ], [ %5475, %5462 ]
  %5653 = phi float [ %5636, %5481 ], [ %5476, %5462 ]
  %5654 = select i1 %279, float 0.000000e+00, float %5645
  %5655 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = call float @dx.op.dot3.f32(i32 55, float %206, float %207, float %208, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5658 = fmul fast float %5657, 2.000000e+00
  %5659 = fmul fast float %5658, %5646
  %5660 = fmul fast float %5658, %5647
  %5661 = fmul fast float %5658, %5648
  %5662 = fsub fast float %206, %5659
  %5663 = fsub fast float %207, %5660
  %5664 = fsub fast float %208, %5661
  %5665 = call float @dx.op.binary.f32(i32 36, float %5653, float 1.000000e+00)  ; FMin(a,b)
  %5666 = fsub fast float 1.000000e+00, %5665
  %5667 = bitcast float %5666 to i32
  %5668 = ashr i32 %5667, 1
  %5669 = add nsw i32 %5668, 532487669
  %5670 = bitcast i32 %5669 to float
  %5671 = fsub fast float 1.000000e+00, %5652
  %5672 = call float @dx.op.binary.f32(i32 35, float %5671, float 0x3F847AE140000000)  ; FMax(a,b)
  %5673 = fmul fast float %5672, %5672
  %5674 = fmul fast float %5673, %5673
  %5675 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %42, float %5670, float %5674, float %5675, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5677 = extractvalue %dx.types.ResRet.f32 %5676, 0
  %5678 = fsub fast float 1.000000e+00, %5653
  %5679 = bitcast float %5678 to i32
  %5680 = sub nsw i32 2129859010, %5679
  %5681 = call float @dx.op.dot3.f32(i32 55, float %74, float %70, float %66, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = fmul fast float %5681, 0x3FD20DD760000000
  %5683 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %74)  ; FMax(a,b)
  %5684 = call float @dx.op.dot3.f32(i32 55, float %75, float %76, float %77, float %75, float %76, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = fcmp fast oeq float %5684, 0.000000e+00
  %5686 = fcmp fast oeq float %5683, 0.000000e+00
  %5687 = or i1 %5686, %5685
  br i1 %5687, label %5717, label %5688

; <label>:5688                                    ; preds = %5642
  %5689 = fsub fast float -0.000000e+00, %77
  %5690 = fsub fast float -0.000000e+00, %75
  %5691 = call float @dx.op.unary.f32(i32 24, float %5684)  ; Sqrt(value)
  %5692 = fdiv fast float %5691, %5683
  %5693 = fcmp fast ogt float %5692, 0x3FFB6F8900000000
  %5694 = select i1 %5693, float 0x3FFB6F8900000000, float %5692
  %5695 = fmul fast float %5694, 0x3FE8A23460000000
  %5696 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5697 = call float @dx.op.binary.f32(i32 35, float %5694, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5698 = fmul fast float %5696, %5683
  %5699 = fmul fast float %5697, 0x3FF279A740000000
  %5700 = fadd fast float %5699, -1.000000e+00
  %5701 = call float @dx.op.dot3.f32(i32 55, float %5689, float %5690, float %76, float %5689, float %5690, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = call float @dx.op.unary.f32(i32 25, float %5701)  ; Rsqrt(value)
  %5703 = fmul fast float %5702, %5689
  %5704 = fmul fast float %5702, %5690
  %5705 = fmul fast float %5702, %76
  %5706 = fmul fast float %5700, %5700
  %5707 = fsub fast float 1.000000e+00, %5706
  %5708 = fmul fast float %5697, 0x40005F8BE0000000
  %5709 = fsub fast float 0x400C5BF8A0000000, %5708
  %5710 = fdiv fast float %5698, %5709
  %5711 = fmul fast float %5710, 0x3FEE31C3C0000000
  %5712 = fmul fast float %5711, %5707
  %5713 = fmul fast float %5697, 0x3FDACB7480000000
  %5714 = fadd fast float %5713, 0xBFD7347680000000
  %5715 = fmul fast float %5714, %5710
  %5716 = fmul fast float %5715, %5707
  br label %5717

; <label>:5717                                    ; preds = %5688, %5642
  %5718 = phi float [ %5703, %5688 ], [ 0.000000e+00, %5642 ]
  %5719 = phi float [ %5704, %5688 ], [ 0.000000e+00, %5642 ]
  %5720 = phi float [ %5705, %5688 ], [ 0.000000e+00, %5642 ]
  %5721 = phi float [ %5712, %5688 ], [ 0.000000e+00, %5642 ]
  %5722 = phi float [ %5716, %5688 ], [ 0.000000e+00, %5642 ]
  %5723 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5724 = fmul fast float %5723, 0x3FDF454380000000
  %5725 = fmul fast float %5723, %5723
  %5726 = fmul fast float %5725, 0x3FEE471020000000
  %5727 = fadd fast float %5726, 0xBFD42F6020000000
  %5728 = fmul fast float %5683, 0x3FD20DD760000000
  %5729 = fmul fast float %5727, %5722
  %5730 = fadd fast float %5729, %5728
  %5731 = fmul fast float %5724, %5721
  %5732 = fadd fast float %5730, %5731
  %5733 = fsub fast float %5730, %5731
  %5734 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = fmul fast float %5734, 0x3FDF454380000000
  %5736 = fmul fast float %5734, %5734
  %5737 = fmul fast float %5736, 0x3FEE471020000000
  %5738 = fadd fast float %5737, 0xBFD42F6020000000
  %5739 = call float @dx.op.dot3.f32(i32 55, float %5683, float %5721, float %5722, float 0x3FD20DD760000000, float %5735, float %5738)  ; Dot3(ax,ay,az,bx,by,bz)
  %5740 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %70)  ; FMax(a,b)
  %5741 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = fcmp fast oeq float %5741, 0.000000e+00
  %5743 = fcmp fast oeq float %5740, 0.000000e+00
  %5744 = or i1 %5743, %5742
  br i1 %5744, label %5774, label %5745

; <label>:5745                                    ; preds = %5717
  %5746 = fsub fast float -0.000000e+00, %73
  %5747 = fsub fast float -0.000000e+00, %71
  %5748 = call float @dx.op.unary.f32(i32 24, float %5741)  ; Sqrt(value)
  %5749 = fdiv fast float %5748, %5740
  %5750 = fcmp fast ogt float %5749, 0x3FFB6F8900000000
  %5751 = select i1 %5750, float 0x3FFB6F8900000000, float %5749
  %5752 = fmul fast float %5751, 0x3FE8A23460000000
  %5753 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5754 = call float @dx.op.binary.f32(i32 35, float %5751, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5755 = fmul fast float %5753, %5740
  %5756 = fmul fast float %5754, 0x3FF279A740000000
  %5757 = fadd fast float %5756, -1.000000e+00
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %72, float %5746, float %5747, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = call float @dx.op.unary.f32(i32 25, float %5758)  ; Rsqrt(value)
  %5760 = fmul fast float %5759, %5746
  %5761 = fmul fast float %5759, %5747
  %5762 = fmul fast float %5759, %72
  %5763 = fmul fast float %5757, %5757
  %5764 = fsub fast float 1.000000e+00, %5763
  %5765 = fmul fast float %5754, 0x40005F8BE0000000
  %5766 = fsub fast float 0x400C5BF8A0000000, %5765
  %5767 = fdiv fast float %5755, %5766
  %5768 = fmul fast float %5767, 0x3FEE31C3C0000000
  %5769 = fmul fast float %5768, %5764
  %5770 = fmul fast float %5754, 0x3FDACB7480000000
  %5771 = fadd fast float %5770, 0xBFD7347680000000
  %5772 = fmul fast float %5771, %5767
  %5773 = fmul fast float %5772, %5764
  br label %5774

; <label>:5774                                    ; preds = %5745, %5717
  %5775 = phi float [ %5760, %5745 ], [ 0.000000e+00, %5717 ]
  %5776 = phi float [ %5761, %5745 ], [ 0.000000e+00, %5717 ]
  %5777 = phi float [ %5762, %5745 ], [ 0.000000e+00, %5717 ]
  %5778 = phi float [ %5769, %5745 ], [ 0.000000e+00, %5717 ]
  %5779 = phi float [ %5773, %5745 ], [ 0.000000e+00, %5717 ]
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5776, float %5777, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fmul fast float %5780, 0x3FDF454380000000
  %5782 = fmul fast float %5780, %5780
  %5783 = fmul fast float %5782, 0x3FEE471020000000
  %5784 = fadd fast float %5783, 0xBFD42F6020000000
  %5785 = fmul fast float %5740, 0x3FD20DD760000000
  %5786 = fmul fast float %5784, %5779
  %5787 = fadd fast float %5786, %5785
  %5788 = fmul fast float %5781, %5778
  %5789 = fadd fast float %5787, %5788
  %5790 = fsub fast float %5787, %5788
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5776, float %5777, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = fmul fast float %5791, 0x3FDF454380000000
  %5793 = fmul fast float %5791, %5791
  %5794 = fmul fast float %5793, 0x3FEE471020000000
  %5795 = fadd fast float %5794, 0xBFD42F6020000000
  %5796 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5778, float %5779, float 0x3FD20DD760000000, float %5792, float %5795)  ; Dot3(ax,ay,az,bx,by,bz)
  %5797 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %66)  ; FMax(a,b)
  %5798 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = fcmp fast oeq float %5798, 0.000000e+00
  %5800 = fcmp fast oeq float %5797, 0.000000e+00
  %5801 = or i1 %5800, %5799
  br i1 %5801, label %5831, label %5802

; <label>:5802                                    ; preds = %5774
  %5803 = fsub fast float -0.000000e+00, %69
  %5804 = fsub fast float -0.000000e+00, %67
  %5805 = call float @dx.op.unary.f32(i32 24, float %5798)  ; Sqrt(value)
  %5806 = fdiv fast float %5805, %5797
  %5807 = fcmp fast ogt float %5806, 0x3FFB6F8900000000
  %5808 = select i1 %5807, float 0x3FFB6F8900000000, float %5806
  %5809 = fmul fast float %5808, 0x3FE8A23460000000
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = call float @dx.op.binary.f32(i32 35, float %5808, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5812 = fmul fast float %5810, %5797
  %5813 = fmul fast float %5811, 0x3FF279A740000000
  %5814 = fadd fast float %5813, -1.000000e+00
  %5815 = call float @dx.op.dot3.f32(i32 55, float %5803, float %5804, float %68, float %5803, float %5804, float %68)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = call float @dx.op.unary.f32(i32 25, float %5815)  ; Rsqrt(value)
  %5817 = fmul fast float %5816, %5803
  %5818 = fmul fast float %5816, %5804
  %5819 = fmul fast float %5816, %68
  %5820 = fmul fast float %5814, %5814
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = fmul fast float %5811, 0x40005F8BE0000000
  %5823 = fsub fast float 0x400C5BF8A0000000, %5822
  %5824 = fdiv fast float %5812, %5823
  %5825 = fmul fast float %5824, 0x3FEE31C3C0000000
  %5826 = fmul fast float %5825, %5821
  %5827 = fmul fast float %5811, 0x3FDACB7480000000
  %5828 = fadd fast float %5827, 0xBFD7347680000000
  %5829 = fmul fast float %5828, %5824
  %5830 = fmul fast float %5829, %5821
  br label %5831

; <label>:5831                                    ; preds = %5802, %5774
  %5832 = phi float [ %5817, %5802 ], [ 0.000000e+00, %5774 ]
  %5833 = phi float [ %5818, %5802 ], [ 0.000000e+00, %5774 ]
  %5834 = phi float [ %5819, %5802 ], [ 0.000000e+00, %5774 ]
  %5835 = phi float [ %5826, %5802 ], [ 0.000000e+00, %5774 ]
  %5836 = phi float [ %5830, %5802 ], [ 0.000000e+00, %5774 ]
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = fmul fast float %5837, 0x3FDF454380000000
  %5839 = fmul fast float %5837, %5837
  %5840 = fmul fast float %5839, 0x3FEE471020000000
  %5841 = fadd fast float %5840, 0xBFD42F6020000000
  %5842 = fmul fast float %5797, 0x3FD20DD760000000
  %5843 = fmul fast float %5841, %5836
  %5844 = fadd fast float %5843, %5842
  %5845 = fmul fast float %5838, %5835
  %5846 = fadd fast float %5844, %5845
  %5847 = fsub fast float %5844, %5845
  %5848 = call float @dx.op.dot3.f32(i32 55, float %5832, float %5833, float %5834, float %5662, float %5663, float %5664)  ; Dot3(ax,ay,az,bx,by,bz)
  %5849 = fmul fast float %5848, 0x3FDF454380000000
  %5850 = fmul fast float %5848, %5848
  %5851 = fmul fast float %5850, 0x3FEE471020000000
  %5852 = fadd fast float %5851, 0xBFD42F6020000000
  %5853 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5835, float %5836, float 0x3FD20DD760000000, float %5849, float %5852)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = call float @dx.op.binary.f32(i32 35, float %5732, float 0.000000e+00)  ; FMax(a,b)
  %5855 = call float @dx.op.binary.f32(i32 35, float %5789, float 0.000000e+00)  ; FMax(a,b)
  %5856 = call float @dx.op.binary.f32(i32 35, float %5846, float 0.000000e+00)  ; FMax(a,b)
  %5857 = call float @dx.op.binary.f32(i32 35, float %5733, float 0.000000e+00)  ; FMax(a,b)
  %5858 = call float @dx.op.binary.f32(i32 35, float %5790, float 0.000000e+00)  ; FMax(a,b)
  %5859 = call float @dx.op.binary.f32(i32 35, float %5847, float 0.000000e+00)  ; FMax(a,b)
  %5860 = call float @dx.op.binary.f32(i32 35, float %5739, float 0.000000e+00)  ; FMax(a,b)
  %5861 = call float @dx.op.binary.f32(i32 35, float %5796, float 0.000000e+00)  ; FMax(a,b)
  %5862 = call float @dx.op.binary.f32(i32 35, float %5853, float 0.000000e+00)  ; FMax(a,b)
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 0
  %5865 = call float @dx.op.binary.f32(i32 36, float %5649, float %5864)  ; FMin(a,b)
  %5866 = fmul fast float %5865, %5666
  %5867 = fsub fast float 1.000000e+00, %5866
  %5868 = bitcast float %5867 to i32
  %5869 = sub nsw i32 2129859010, %5868
  %5870 = bitcast i32 %5869 to float
  %5871 = call float @dx.op.binary.f32(i32 36, float %5650, float %5864)  ; FMin(a,b)
  %5872 = fmul fast float %5871, %5666
  %5873 = fsub fast float 1.000000e+00, %5872
  %5874 = bitcast float %5873 to i32
  %5875 = sub nsw i32 2129859010, %5874
  %5876 = bitcast i32 %5875 to float
  %5877 = call float @dx.op.binary.f32(i32 36, float %5651, float %5864)  ; FMin(a,b)
  %5878 = fmul fast float %5877, %5666
  %5879 = fsub fast float 1.000000e+00, %5878
  %5880 = bitcast float %5879 to i32
  %5881 = sub nsw i32 2129859010, %5880
  %5882 = bitcast i32 %5881 to float
  %5883 = fmul fast float %5854, %5665
  %5884 = fmul fast float %5883, %5870
  %5885 = fmul fast float %5855, %5665
  %5886 = fmul fast float %5885, %5876
  %5887 = fmul fast float %5856, %5665
  %5888 = fmul fast float %5887, %5882
  %5889 = call float @dx.op.binary.f32(i32 36, float %5643, float %5864)  ; FMin(a,b)
  %5890 = fmul fast float %5889, %5666
  %5891 = fsub fast float 1.000000e+00, %5890
  %5892 = bitcast float %5891 to i32
  %5893 = sub nsw i32 2129859010, %5892
  %5894 = bitcast i32 %5893 to float
  %5895 = call float @dx.op.binary.f32(i32 36, float %5644, float %5864)  ; FMin(a,b)
  %5896 = fmul fast float %5895, %5666
  %5897 = fsub fast float 1.000000e+00, %5896
  %5898 = bitcast float %5897 to i32
  %5899 = sub nsw i32 2129859010, %5898
  %5900 = bitcast i32 %5899 to float
  %5901 = call float @dx.op.binary.f32(i32 36, float %5654, float %5864)  ; FMin(a,b)
  %5902 = fmul fast float %5901, %5666
  %5903 = fsub fast float 1.000000e+00, %5902
  %5904 = bitcast float %5903 to i32
  %5905 = sub nsw i32 2129859010, %5904
  %5906 = bitcast i32 %5905 to float
  %5907 = fmul fast float %5860, %5665
  %5908 = fmul fast float %5907, %5894
  %5909 = fmul fast float %5861, %5665
  %5910 = fmul fast float %5909, %5900
  %5911 = fmul fast float %5862, %5665
  %5912 = fmul fast float %5911, %5906
  %5913 = call float @dx.op.dot3.f32(i32 55, float %5884, float %5886, float %5888, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = select i1 %279, float 0.000000e+00, float %5884
  %5915 = select i1 %279, float %5913, float %5886
  %5916 = select i1 %279, float 0.000000e+00, float %5888
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5857, float %5858, float %5859, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = select i1 %279, float 0.000000e+00, float %5857
  %5919 = select i1 %279, float %5917, float %5858
  %5920 = select i1 %279, float 0.000000e+00, float %5859
  %5921 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5910, float %5912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5922 = select i1 %279, float 0.000000e+00, float %5908
  %5923 = select i1 %279, float %5921, float %5910
  %5924 = select i1 %279, float 0.000000e+00, float %5912
  %5925 = fmul fast float %4020, %4020
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5927 = fmul fast float %5656, 9.843750e-01
  %5928 = fmul fast float %5652, 9.843750e-01
  %5929 = fadd fast float %5927, 7.812500e-03
  %5930 = fadd fast float %5928, 7.812500e-03
  %5931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %5929, float %5930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5932 = extractvalue %dx.types.ResRet.f32 %5931, 0
  %5933 = extractvalue %dx.types.ResRet.f32 %5931, 1
  %5934 = extractvalue %dx.types.ResRet.f32 %5931, 2
  %5935 = extractvalue %dx.types.ResRet.f32 %5931, 3
  %5936 = fsub fast float 1.000000e+00, %5926
  %5937 = fsub fast float %5934, %5932
  %5938 = fsub fast float %5935, %5933
  %5939 = fmul fast float %5937, %5936
  %5940 = fmul fast float %5938, %5936
  %5941 = fadd fast float %5939, %5932
  %5942 = fadd fast float %5940, %5933
  %5943 = fmul fast float %5941, %5643
  %5944 = fmul fast float %5941, %5644
  %5945 = fmul fast float %5941, %5654
  %5946 = fadd fast float %5943, %5942
  %5947 = fadd fast float %5944, %5942
  %5948 = fadd fast float %5945, %5942
  %5949 = fcmp fast ogt float %4688, 0.000000e+00
  br i1 %5949, label %5950, label %5976

; <label>:5950                                    ; preds = %5831
  %5951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4688, float %5656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5952 = extractvalue %dx.types.ResRet.f32 %5951, 0
  %5953 = extractvalue %dx.types.ResRet.f32 %5951, 1
  %5954 = extractvalue %dx.types.ResRet.f32 %5951, 2
  %5955 = fadd fast float %5952, -5.000000e-01
  %5956 = fadd fast float %5953, -5.000000e-01
  %5957 = fadd fast float %5954, -5.000000e-01
  %5958 = fsub fast float 1.000000e+00, %5643
  %5959 = fsub fast float 1.000000e+00, %5644
  %5960 = fsub fast float 1.000000e+00, %5654
  %5961 = fmul fast float %5643, 4.000000e+00
  %5962 = fmul fast float %5961, %5958
  %5963 = fmul fast float %5962, %5955
  %5964 = fmul fast float %5644, 4.000000e+00
  %5965 = fmul fast float %5964, %5959
  %5966 = fmul fast float %5965, %5956
  %5967 = fmul fast float %5654, 4.000000e+00
  %5968 = fmul fast float %5967, %5960
  %5969 = fmul fast float %5968, %5957
  %5970 = fadd fast float %5963, %5946
  %5971 = fadd fast float %5966, %5947
  %5972 = fadd fast float %5969, %5948
  %5973 = call float @dx.op.unary.f32(i32 7, float %5970)  ; Saturate(value)
  %5974 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5975 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  br label %5976

; <label>:5976                                    ; preds = %5950, %5831
  %5977 = phi float [ %5973, %5950 ], [ %5946, %5831 ]
  %5978 = phi float [ %5974, %5950 ], [ %5947, %5831 ]
  %5979 = phi float [ %5975, %5950 ], [ %5948, %5831 ]
  %5980 = call float @dx.op.binary.f32(i32 35, float %5978, float %5979)  ; FMax(a,b)
  %5981 = call float @dx.op.binary.f32(i32 35, float %5977, float %5980)  ; FMax(a,b)
  %5982 = fsub fast float 1.000000e+00, %5981
  %5983 = fmul fast float %5981, %5652
  %5984 = fadd fast float %5983, %5652
  %5985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5985, 2
  %5987 = extractvalue %dx.types.CBufRet.f32 %5985, 3
  %5988 = fmul fast float %5984, %5986
  %5989 = fadd fast float %5988, %5987
  %5990 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5991 = fsub fast float 1.000000e+00, %5677
  %5992 = fadd fast float %5991, %5990
  %5993 = call float @dx.op.unary.f32(i32 7, float %5992)  ; Saturate(value)
  %5994 = fcmp fast olt float %5993, 1.000000e+00
  br i1 %5994, label %5995, label %6443

; <label>:5995                                    ; preds = %5976
  %5996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5997 = extractvalue %dx.types.CBufRet.f32 %5996, 2
  %5998 = extractvalue %dx.types.CBufRet.f32 %5996, 3
  %5999 = fmul fast float %5997, %107
  %6000 = fmul fast float %5998, %108
  %6001 = fptoui float %5999 to i32
  %6002 = fptoui float %6000 to i32
  %6003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.f32 %6003, 0
  %6005 = extractvalue %dx.types.CBufRet.f32 %6003, 2
  %6006 = extractvalue %dx.types.CBufRet.f32 %6003, 3
  %6007 = fadd fast float %94, -4.000000e+00
  %6008 = call float @dx.op.binary.f32(i32 35, float %6007, float 0.000000e+00)  ; FMax(a,b)
  %6009 = fadd fast float %6008, %6004
  %6010 = fmul fast float %6009, %6005
  %6011 = call float @dx.op.unary.f32(i32 23, float %6010)  ; Log(value)
  %6012 = fmul fast float %6011, %6006
  %6013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6014 = extractvalue %dx.types.CBufRet.f32 %6013, 2
  %6015 = fmul fast float %6012, %6014
  %6016 = call float @dx.op.unary.f32(i32 7, float %6015)  ; Saturate(value)
  %6017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.i32 %6017, 1
  %6019 = add i32 %6018, -1
  %6020 = uitofp i32 %6018 to float
  %6021 = fmul fast float %6020, %6016
  %6022 = fptoui float %6021 to i32
  %6023 = call i32 @dx.op.binary.i32(i32 40, i32 %6022, i32 %6019)  ; UMin(a,b)
  %6024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.i32 %6024, 2
  %6026 = extractvalue %dx.types.CBufRet.i32 %6024, 3
  %6027 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6002, i32 %6025, i32 %6001)  ; UMad(a,b,c)
  %6028 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6023, i32 %6026, i32 %6027)  ; UMad(a,b,c)
  %6029 = call float @dx.op.binary.f32(i32 35, float %94, float 0.000000e+00)  ; FMax(a,b)
  %6030 = fptoui float %6029 to i32
  %6031 = lshr i32 %6030, 5
  %6032 = call i32 @dx.op.binary.i32(i32 40, i32 %6031, i32 8191)  ; UMin(a,b)
  br i1 false, label %6033, label %6040

; <label>:6033                                    ; preds = %5995
  %6034 = fadd fast float 0.000000e+00, %5664
  %6035 = call float @dx.op.dot3.f32(i32 55, float %5662, float %5663, float %6034, float %5662, float %5663, float %6034)  ; Dot3(ax,ay,az,bx,by,bz)
  %6036 = call float @dx.op.unary.f32(i32 25, float %6035)  ; Rsqrt(value)
  %6037 = fmul fast float %6036, %5662
  %6038 = fmul fast float %6036, %5663
  %6039 = fmul fast float %6034, %6036
  br label %6040

; <label>:6040                                    ; preds = %6033, %5995
  %6041 = phi float [ %6037, %6033 ], [ %5662, %5995 ]
  %6042 = phi float [ %6038, %6033 ], [ %5663, %5995 ]
  %6043 = phi float [ %6039, %6033 ], [ %5664, %5995 ]
  %6044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.i32 %6044, 2
  %6046 = add nsw i32 %6045, -1
  %6047 = call i32 @dx.op.binary.i32(i32 37, i32 %6046, i32 0)  ; IMax(a,b)
  %6048 = shl i32 %6032, 2
  %6049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %6048, i32 undef)  ; BufferLoad(srv,index,wot)
  %6050 = extractvalue %dx.types.ResRet.i32 %6049, 0
  %6051 = lshr i32 %6050, 16
  %6052 = and i32 %6050, 65535
  %6053 = lshr i32 %6050, 21
  %6054 = lshr i32 %6052, 5
  %6055 = call i32 @dx.op.binary.i32(i32 40, i32 %6054, i32 %6047)  ; UMin(a,b)
  %6056 = icmp ugt i32 %6053, %6055
  br i1 %6056, label %6419, label %6057

; <label>:6057                                    ; preds = %6040
  br label %6058

; <label>:6058                                    ; preds = %6411, %6057
  %6059 = phi float [ %6412, %6411 ], [ 0.000000e+00, %6057 ]
  %6060 = phi float [ %6413, %6411 ], [ 0.000000e+00, %6057 ]
  %6061 = phi float [ %6414, %6411 ], [ 0.000000e+00, %6057 ]
  %6062 = phi float [ %6415, %6411 ], [ 1.000000e+00, %6057 ]
  %6063 = phi i32 [ %6416, %6411 ], [ %6053, %6057 ]
  %6064 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.i32 %6064, 2
  %6066 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6028, i32 %6065, i32 %6063)  ; UMad(a,b,c)
  %6067 = shl i32 %6066, 2
  %6068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %6067, i32 undef)  ; BufferLoad(srv,index,wot)
  %6069 = extractvalue %dx.types.ResRet.i32 %6068, 0
  %6070 = shl i32 %6063, 5
  %6071 = sub nsw i32 %6051, %6070
  %6072 = call i32 @dx.op.binary.i32(i32 37, i32 %6071, i32 0)  ; IMax(a,b)
  %6073 = call i32 @dx.op.binary.i32(i32 38, i32 %6072, i32 31)  ; IMin(a,b)
  %6074 = sub nsw i32 1, %6051
  %6075 = add nsw i32 %6074, %6052
  %6076 = call i32 @dx.op.binary.i32(i32 37, i32 %6075, i32 0)  ; IMax(a,b)
  %6077 = call i32 @dx.op.binary.i32(i32 38, i32 %6076, i32 32)  ; IMin(a,b)
  %6078 = and i32 %6077, 31
  %6079 = shl i32 -1, %6078
  %6080 = xor i32 %6079, -1
  %6081 = and i32 %6073, 31
  %6082 = shl i32 %6080, %6081
  %6083 = icmp eq i32 %6077, 32
  %6084 = select i1 %6083, i32 -1, i32 %6082
  %6085 = and i32 %6084, %6069
  %6086 = icmp eq i32 %6085, 0
  br i1 %6086, label %6411, label %6087

; <label>:6087                                    ; preds = %6058
  br label %6088

; <label>:6088                                    ; preds = %6194, %6087
  %6089 = phi float [ %6195, %6194 ], [ %6059, %6087 ]
  %6090 = phi float [ %6196, %6194 ], [ %6060, %6087 ]
  %6091 = phi float [ %6197, %6194 ], [ %6061, %6087 ]
  %6092 = phi float [ %6198, %6194 ], [ %6062, %6087 ]
  %6093 = phi i32 [ %6098, %6194 ], [ %6085, %6087 ]
  %6094 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6093)  ; FirstbitLo(value)
  %6095 = add i32 %6094, %6070
  %6096 = and i32 %6094, 31
  %6097 = shl i32 1, %6096
  %6098 = xor i32 %6097, %6093
  %6099 = mul i32 %6095, 72
  %6100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6099, i32 undef)  ; BufferLoad(srv,index,wot)
  %6101 = extractvalue %dx.types.ResRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.ResRet.f32 %6100, 1
  %6103 = extractvalue %dx.types.ResRet.f32 %6100, 2
  %6104 = add i32 %6099, 12
  %6105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6104, i32 undef)  ; BufferLoad(srv,index,wot)
  %6106 = extractvalue %dx.types.ResRet.i32 %6105, 0
  %6107 = add i32 %6099, 16
  %6108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6107, i32 undef)  ; BufferLoad(srv,index,wot)
  %6109 = extractvalue %dx.types.ResRet.f32 %6108, 0
  %6110 = extractvalue %dx.types.ResRet.f32 %6108, 1
  %6111 = extractvalue %dx.types.ResRet.f32 %6108, 2
  %6112 = add i32 %6099, 28
  %6113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6112, i32 undef)  ; BufferLoad(srv,index,wot)
  %6114 = extractvalue %dx.types.ResRet.f32 %6113, 0
  %6115 = add i32 %6099, 32
  %6116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6115, i32 undef)  ; BufferLoad(srv,index,wot)
  %6117 = extractvalue %dx.types.ResRet.f32 %6116, 0
  %6118 = extractvalue %dx.types.ResRet.f32 %6116, 1
  %6119 = extractvalue %dx.types.ResRet.f32 %6116, 2
  %6120 = extractvalue %dx.types.ResRet.f32 %6116, 3
  %6121 = add i32 %6099, 48
  %6122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6121, i32 undef)  ; BufferLoad(srv,index,wot)
  %6123 = extractvalue %dx.types.ResRet.f32 %6122, 0
  %6124 = extractvalue %dx.types.ResRet.f32 %6122, 1
  %6125 = add i32 %6099, 56
  %6126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6125, i32 undef)  ; BufferLoad(srv,index,wot)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = add i32 %6099, 64
  %6130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %6129, i32 undef)  ; BufferLoad(srv,index,wot)
  %6131 = extractvalue %dx.types.ResRet.f32 %6130, 0
  %6132 = extractvalue %dx.types.ResRet.f32 %6130, 1
  %6133 = mul i32 %6095, 60
  %6134 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6133, i32 undef)  ; BufferLoad(srv,index,wot)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 0
  %6136 = extractvalue %dx.types.ResRet.f32 %6134, 1
  %6137 = extractvalue %dx.types.ResRet.f32 %6134, 2
  %6138 = add i32 %6133, 12
  %6139 = add i32 %6133, 48
  %6140 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6139, i32 undef)  ; BufferLoad(srv,index,wot)
  %6141 = extractvalue %dx.types.ResRet.f32 %6140, 0
  %6142 = extractvalue %dx.types.ResRet.f32 %6140, 1
  %6143 = extractvalue %dx.types.ResRet.f32 %6140, 2
  %6144 = and i32 %6106, 32767
  %6145 = bitcast float %6101 to i32
  %6146 = icmp eq i32 %6145, -1
  %6147 = bitcast float %6102 to i32
  %6148 = and i32 %6106, 32768
  %6149 = icmp ne i32 %6148, 0
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = extractvalue %dx.types.CBufRet.f32 %6150, 0
  %6152 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6153 = extractvalue %dx.types.CBufRet.f32 %6150, 2
  %6154 = fsub fast float %6135, %6151
  %6155 = fsub fast float %6136, %6152
  %6156 = fsub fast float %6137, %6153
  %6157 = fsub fast float %186, %6154
  %6158 = fsub fast float %187, %6155
  %6159 = fsub fast float %188, %6156
  %6160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6138, i32 undef)  ; BufferLoad(srv,index,wot)
  %6161 = extractvalue %dx.types.ResRet.f32 %6160, 0
  %6162 = extractvalue %dx.types.ResRet.f32 %6160, 1
  %6163 = extractvalue %dx.types.ResRet.f32 %6160, 2
  %6164 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6161, float %6162, float %6163)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = add i32 %6133, 24
  %6166 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6165, i32 undef)  ; BufferLoad(srv,index,wot)
  %6167 = extractvalue %dx.types.ResRet.f32 %6166, 0
  %6168 = extractvalue %dx.types.ResRet.f32 %6166, 1
  %6169 = extractvalue %dx.types.ResRet.f32 %6166, 2
  %6170 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6167, float %6168, float %6169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = add i32 %6133, 36
  %6172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %6171, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.f32 %6172, 0
  %6174 = extractvalue %dx.types.ResRet.f32 %6172, 1
  %6175 = extractvalue %dx.types.ResRet.f32 %6172, 2
  %6176 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6173, float %6174, float %6175)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = call float @dx.op.unary.f32(i32 6, float %6164)  ; FAbs(value)
  %6178 = call float @dx.op.unary.f32(i32 6, float %6170)  ; FAbs(value)
  %6179 = call float @dx.op.unary.f32(i32 6, float %6176)  ; FAbs(value)
  %6180 = fsub fast float %6141, %6177
  %6181 = fsub fast float %6142, %6178
  %6182 = fsub fast float %6143, %6179
  %6183 = fmul fast float %6180, %6109
  %6184 = fmul fast float %6181, %6110
  %6185 = fmul fast float %6182, %6111
  %6186 = call float @dx.op.binary.f32(i32 36, float %6184, float %6185)  ; FMin(a,b)
  %6187 = call float @dx.op.binary.f32(i32 36, float %6183, float %6186)  ; FMin(a,b)
  %6188 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6189 = call float @dx.op.binary.f32(i32 36, float %6092, float %6188)  ; FMin(a,b)
  %6190 = uitofp i1 %6149 to float
  %6191 = fsub fast float 1.000000e+00, %6190
  %6192 = fmul fast float %6189, %6191
  %6193 = fcmp fast ogt float %6192, 0.000000e+00
  br i1 %6193, label %6200, label %6194

; <label>:6194                                    ; preds = %6342, %6088
  %6195 = phi float [ %6406, %6342 ], [ %6089, %6088 ]
  %6196 = phi float [ %6407, %6342 ], [ %6090, %6088 ]
  %6197 = phi float [ %6408, %6342 ], [ %6091, %6088 ]
  %6198 = phi float [ %6409, %6342 ], [ %6092, %6088 ]
  %6199 = icmp eq i32 %6093, %6097
  br i1 %6199, label %6410, label %6088

; <label>:6200                                    ; preds = %6088
  br i1 %6146, label %6258, label %6201

; <label>:6201                                    ; preds = %6200
  %6202 = fsub fast float -0.000000e+00, %6161
  %6203 = fsub fast float -0.000000e+00, %6162
  %6204 = fsub fast float -0.000000e+00, %6163
  %6205 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6202, float %6203, float %6204)  ; Dot3(ax,ay,az,bx,by,bz)
  %6206 = fsub fast float -0.000000e+00, %6205
  %6207 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6202, float %6203, float %6204)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = fadd fast float %6207, %6124
  %6209 = fadd fast float %6123, %6207
  %6210 = fsub fast float -0.000000e+00, %6209
  %6211 = fcmp ogt float %6205, -0.000000e+00
  %6212 = select i1 %6211, float %6210, float %6208
  %6213 = call float @dx.op.unary.f32(i32 6, float %6206)  ; FAbs(value)
  %6214 = fdiv fast float 1.000000e+00, %6213
  %6215 = fmul fast float %6212, %6214
  %6216 = call float @dx.op.binary.f32(i32 35, float %6215, float 0.000000e+00)  ; FMax(a,b)
  %6217 = fsub fast float -0.000000e+00, %6167
  %6218 = fsub fast float -0.000000e+00, %6168
  %6219 = fsub fast float -0.000000e+00, %6169
  %6220 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6217, float %6218, float %6219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6221 = fsub fast float -0.000000e+00, %6220
  %6222 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6217, float %6218, float %6219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6223 = fadd fast float %6222, %6128
  %6224 = fadd fast float %6127, %6222
  %6225 = fsub fast float -0.000000e+00, %6224
  %6226 = fcmp ogt float %6220, -0.000000e+00
  %6227 = select i1 %6226, float %6225, float %6223
  %6228 = call float @dx.op.unary.f32(i32 6, float %6221)  ; FAbs(value)
  %6229 = fdiv fast float 1.000000e+00, %6228
  %6230 = fmul fast float %6227, %6229
  %6231 = call float @dx.op.binary.f32(i32 35, float %6230, float 0.000000e+00)  ; FMax(a,b)
  %6232 = fsub fast float -0.000000e+00, %6173
  %6233 = fsub fast float -0.000000e+00, %6174
  %6234 = fsub fast float -0.000000e+00, %6175
  %6235 = call float @dx.op.dot3.f32(i32 55, float %6041, float %6042, float %6043, float %6232, float %6233, float %6234)  ; Dot3(ax,ay,az,bx,by,bz)
  %6236 = fsub fast float -0.000000e+00, %6235
  %6237 = call float @dx.op.dot3.f32(i32 55, float %6157, float %6158, float %6159, float %6232, float %6233, float %6234)  ; Dot3(ax,ay,az,bx,by,bz)
  %6238 = fadd fast float %6237, %6132
  %6239 = fadd fast float %6131, %6237
  %6240 = fsub fast float -0.000000e+00, %6239
  %6241 = fcmp ogt float %6235, -0.000000e+00
  %6242 = select i1 %6241, float %6240, float %6238
  %6243 = call float @dx.op.unary.f32(i32 6, float %6236)  ; FAbs(value)
  %6244 = fdiv fast float 1.000000e+00, %6243
  %6245 = fmul fast float %6242, %6244
  %6246 = call float @dx.op.binary.f32(i32 35, float %6245, float 0.000000e+00)  ; FMax(a,b)
  %6247 = call float @dx.op.binary.f32(i32 36, float %6231, float %6246)  ; FMin(a,b)
  %6248 = call float @dx.op.binary.f32(i32 36, float %6216, float %6247)  ; FMin(a,b)
  %6249 = fmul fast float %6248, %6041
  %6250 = fmul fast float %6248, %6042
  %6251 = fmul fast float %6248, %6043
  %6252 = fadd fast float %6249, %186
  %6253 = fadd fast float %6250, %187
  %6254 = fadd fast float %6251, %188
  %6255 = fsub fast float %6252, %6101
  %6256 = fsub fast float %6253, %6102
  %6257 = fsub fast float %6254, %6103
  br label %6265

; <label>:6258                                    ; preds = %6200
  %6259 = fmul fast float %6041, 8.096000e+03
  %6260 = fmul fast float %6042, 8.096000e+03
  %6261 = fmul fast float %6043, 8.096000e+03
  %6262 = fadd fast float %6259, %186
  %6263 = fadd fast float %6260, %187
  %6264 = fadd fast float %6261, %188
  br label %6265

; <label>:6265                                    ; preds = %6258, %6201
  %6266 = phi float [ %6041, %6258 ], [ %6255, %6201 ]
  %6267 = phi float [ %6042, %6258 ], [ %6256, %6201 ]
  %6268 = phi float [ %6043, %6258 ], [ %6257, %6201 ]
  %6269 = phi float [ %6262, %6258 ], [ %6252, %6201 ]
  %6270 = phi float [ %6263, %6258 ], [ %6253, %6201 ]
  %6271 = phi float [ %6264, %6258 ], [ %6254, %6201 ]
  %6272 = fcmp fast olt float %6120, 1.000000e+00
  br i1 %6272, label %6273, label %6304, !dx.controlflow.hints !90

; <label>:6273                                    ; preds = %6265
  %6274 = fmul fast float %6268, %6118
  %6275 = fmul fast float %6267, %6119
  %6276 = fsub fast float %6274, %6275
  %6277 = fmul fast float %6266, %6119
  %6278 = fmul fast float %6268, %6117
  %6279 = fsub fast float %6277, %6278
  %6280 = fmul fast float %6267, %6117
  %6281 = fmul fast float %6266, %6118
  %6282 = fsub fast float %6280, %6281
  %6283 = fmul fast float %6276, 2.000000e+00
  %6284 = fmul fast float %6279, 2.000000e+00
  %6285 = fmul fast float %6282, 2.000000e+00
  %6286 = fmul fast float %6283, %6120
  %6287 = fmul fast float %6284, %6120
  %6288 = fmul fast float %6285, %6120
  %6289 = fmul fast float %6285, %6118
  %6290 = fmul fast float %6284, %6119
  %6291 = fmul fast float %6283, %6119
  %6292 = fmul fast float %6285, %6117
  %6293 = fmul fast float %6284, %6117
  %6294 = fmul fast float %6283, %6118
  %6295 = fadd fast float %6289, %6266
  %6296 = fadd fast float %6295, %6286
  %6297 = fsub fast float %6296, %6290
  %6298 = fsub fast float %6267, %6292
  %6299 = fadd fast float %6298, %6287
  %6300 = fadd fast float %6299, %6291
  %6301 = fadd fast float %6288, %6268
  %6302 = fsub fast float %6301, %6294
  %6303 = fadd fast float %6302, %6293
  br label %6304

; <label>:6304                                    ; preds = %6273, %6265
  %6305 = phi float [ %6297, %6273 ], [ %6266, %6265 ]
  %6306 = phi float [ %6300, %6273 ], [ %6267, %6265 ]
  %6307 = phi float [ %6303, %6273 ], [ %6268, %6265 ]
  br i1 %6146, label %6339, label %6308

; <label>:6308                                    ; preds = %6304
  %6309 = fmul fast float %5652, 0x400187C840000000
  %6310 = fadd fast float %6309, 0xC00EFC2120000000
  %6311 = fmul fast float %6310, %5652
  %6312 = fadd fast float %6311, 0x3FE5D16340000000
  %6313 = fmul fast float %6312, %5652
  %6314 = fadd fast float %6313, 1.000000e+00
  %6315 = call float @dx.op.unary.f32(i32 7, float %6314)  ; Saturate(value)
  %6316 = fsub fast float %6269, %186
  %6317 = fsub fast float %6270, %187
  %6318 = fsub fast float %6271, %188
  %6319 = fsub fast float %6269, %6101
  %6320 = fsub fast float %6270, %6102
  %6321 = fsub fast float %6271, %6103
  %6322 = call float @dx.op.dot3.f32(i32 55, float %6316, float %6317, float %6318, float %6316, float %6317, float %6318)  ; Dot3(ax,ay,az,bx,by,bz)
  %6323 = call float @dx.op.dot3.f32(i32 55, float %6319, float %6320, float %6321, float %6319, float %6320, float %6321)  ; Dot3(ax,ay,az,bx,by,bz)
  %6324 = fadd fast float %6323, 0x3EE4F8B580000000
  %6325 = fdiv fast float %6322, %6324
  %6326 = bitcast float %6325 to i32
  %6327 = ashr i32 %6326, 1
  %6328 = add nsw i32 %6327, 532487669
  %6329 = bitcast i32 %6328 to float
  %6330 = fmul fast float %6329, %6315
  %6331 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6332 = fmul fast float %6331, 0x4009981AE0000000
  %6333 = fsub fast float 0x40111BBD80000000, %6332
  %6334 = fmul fast float %6333, %6331
  %6335 = fadd fast float %6334, 0xC0009F6020000000
  %6336 = fmul fast float %6335, %6331
  %6337 = fadd fast float %6336, 1.000000e+00
  %6338 = call float @dx.op.unary.f32(i32 7, float %6337)  ; Saturate(value)
  br label %6342

; <label>:6339                                    ; preds = %6304
  %6340 = icmp ne i32 %6147, -1
  %6341 = zext i1 %6340 to i32
  br label %6342

; <label>:6342                                    ; preds = %6339, %6308
  %6343 = phi float [ %5652, %6339 ], [ %6338, %6308 ]
  %6344 = phi i32 [ %6341, %6339 ], [ 0, %6308 ]
  %6345 = fmul float %6343, 5.000000e+00
  %6346 = fsub float 5.000000e+00, %6345
  %6347 = icmp ne i32 %6344, 0
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6350 = fadd fast float %6349, %6346
  %6351 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6350)  ; FMax(a,b)
  %6352 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6353 = call float @dx.op.unary.f32(i32 6, float %6306)  ; FAbs(value)
  %6354 = fadd fast float %6353, %6352
  %6355 = call float @dx.op.unary.f32(i32 6, float %6307)  ; FAbs(value)
  %6356 = fadd fast float %6354, %6355
  %6357 = fcmp fast oeq float %6356, 0.000000e+00
  %6358 = fdiv fast float 1.000000e+00, %6356
  %6359 = select i1 %6357, float 1.000000e+00, float %6358
  %6360 = fmul fast float %6359, %6305
  %6361 = fmul fast float %6359, %6306
  %6362 = call float @dx.op.unary.f32(i32 6, float %6361)  ; FAbs(value)
  %6363 = call float @dx.op.unary.f32(i32 6, float %6360)  ; FAbs(value)
  %6364 = fsub fast float 1.000000e+00, %6362
  %6365 = fsub fast float 1.000000e+00, %6363
  %6366 = fcmp fast oge float %6360, 0.000000e+00
  %6367 = fcmp fast oge float %6361, 0.000000e+00
  %6368 = select i1 %6366, float 1.000000e+00, float -1.000000e+00
  %6369 = select i1 %6367, float 1.000000e+00, float -1.000000e+00
  %6370 = fcmp fast ole float %6307, 0.000000e+00
  %6371 = fmul fast float %6368, %6364
  %6372 = fmul fast float %6369, %6365
  %6373 = select i1 %6370, float %6371, float %6360
  %6374 = select i1 %6370, float %6372, float %6361
  %6375 = fmul fast float %6373, 5.000000e-01
  %6376 = fmul fast float %6374, 5.000000e-01
  %6377 = fadd fast float %6375, 5.000000e-01
  %6378 = fadd fast float %6376, 5.000000e-01
  %6379 = uitofp i32 %6144 to float
  %6380 = call float @dx.op.binary.f32(i32 36, float %6351, float 3.000000e+00)  ; FMin(a,b)
  %6381 = fadd fast float %6380, 2.000000e+00
  %6382 = call float @dx.op.unary.f32(i32 21, float %6381)  ; Exp(value)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6384 = fmul fast float %6383, %6382
  %6385 = fmul fast float %6384, 2.000000e+00
  %6386 = fsub fast float 1.000000e+00, %6385
  %6387 = fmul fast float %6377, %6386
  %6388 = fmul fast float %6378, %6386
  %6389 = fadd fast float %6387, %6384
  %6390 = fadd fast float %6388, %6384
  %6391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %40, float %6389, float %6390, float %6379, float undef, i32 0, i32 0, i32 undef, float %6351)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6392 = extractvalue %dx.types.ResRet.f32 %6391, 0
  %6393 = extractvalue %dx.types.ResRet.f32 %6391, 1
  %6394 = extractvalue %dx.types.ResRet.f32 %6391, 2
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 3
  %6397 = fmul fast float %6396, %6114
  %6398 = call float @dx.op.binary.f32(i32 36, float %5682, float %6397)  ; FMin(a,b)
  %6399 = select i1 %6347, float %6398, float %6397
  %6400 = fmul fast float %6392, %6192
  %6401 = fmul fast float %6400, %6399
  %6402 = fmul fast float %6393, %6192
  %6403 = fmul fast float %6402, %6399
  %6404 = fmul fast float %6394, %6192
  %6405 = fmul fast float %6404, %6399
  %6406 = fadd fast float %6401, %6089
  %6407 = fadd fast float %6403, %6090
  %6408 = fadd fast float %6405, %6091
  %6409 = fsub fast float %6092, %6192
  br label %6194

; <label>:6410                                    ; preds = %6194
  br label %6411

; <label>:6411                                    ; preds = %6410, %6058
  %6412 = phi float [ %6059, %6058 ], [ %6195, %6410 ]
  %6413 = phi float [ %6060, %6058 ], [ %6196, %6410 ]
  %6414 = phi float [ %6061, %6058 ], [ %6197, %6410 ]
  %6415 = phi float [ %6062, %6058 ], [ %6198, %6410 ]
  %6416 = add i32 %6063, 1
  %6417 = icmp ugt i32 %6416, %6055
  br i1 %6417, label %6418, label %6058, !llvm.loop !91

; <label>:6418                                    ; preds = %6411
  br label %6419

; <label>:6419                                    ; preds = %6418, %6040
  %6420 = phi float [ 0.000000e+00, %6040 ], [ %6412, %6418 ]
  %6421 = phi float [ 0.000000e+00, %6040 ], [ %6413, %6418 ]
  %6422 = phi float [ 0.000000e+00, %6040 ], [ %6414, %6418 ]
  %6423 = call float @dx.op.dot3.f32(i32 55, float %6420, float %6421, float %6422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6424 = select i1 %279, float 0.000000e+00, float %6420
  %6425 = select i1 %279, float %6423, float %6421
  %6426 = select i1 %279, float 0.000000e+00, float %6422
  %6427 = fcmp fast olt float %5993, 0.000000e+00
  %6428 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %6429 = fmul fast float %6428, %5922
  %6430 = fmul fast float %6428, %5923
  %6431 = fmul fast float %6428, %5924
  %6432 = select i1 %6427, float %5922, float %6429
  %6433 = select i1 %6427, float %5923, float %6430
  %6434 = select i1 %6427, float %5924, float %6431
  %6435 = fsub fast float 1.000000e+00, %6428
  %6436 = call float @dx.op.unary.f32(i32 7, float %6435)  ; Saturate(value)
  %6437 = fmul fast float %6436, %6424
  %6438 = fmul fast float %6436, %6425
  %6439 = fmul fast float %6436, %6426
  %6440 = fadd fast float %6432, %6437
  %6441 = fadd fast float %6433, %6438
  %6442 = fadd fast float %6434, %6439
  br label %6443

; <label>:6443                                    ; preds = %6419, %5976
  %6444 = phi float [ %5922, %5976 ], [ %6440, %6419 ]
  %6445 = phi float [ %5923, %5976 ], [ %6441, %6419 ]
  %6446 = phi float [ %5924, %5976 ], [ %6442, %6419 ]
  %6447 = call float @dx.op.dot3.f32(i32 55, float %5649, float %5650, float %5651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6448 = fcmp fast ogt float %6447, 0x3E7FF19E20000000
  %6449 = fdiv fast float 1.000000e+00, %6447
  %6450 = select i1 %6448, float %6449, float 0.000000e+00
  %6451 = fmul fast float %6450, %5649
  %6452 = fmul fast float %6450, %5650
  %6453 = fmul fast float %6450, %5651
  %6454 = fadd fast float %6451, -1.000000e+00
  %6455 = fadd fast float %6452, -1.000000e+00
  %6456 = fadd fast float %6453, -1.000000e+00
  %6457 = fmul fast float %6454, 5.000000e-01
  %6458 = fmul fast float %6455, 5.000000e-01
  %6459 = fmul fast float %6456, 5.000000e-01
  %6460 = fadd fast float %6457, 1.000000e+00
  %6461 = fadd fast float %6458, 1.000000e+00
  %6462 = fadd fast float %6459, 1.000000e+00
  %6463 = call float @dx.op.binary.f32(i32 35, float %5656, float 0x3F50624DE0000000)  ; FMax(a,b)
  %6464 = fdiv fast float %4020, %6463
  %6465 = fcmp fast olt float %4759, 1.270000e+02
  %6466 = fcmp fast olt float %4760, 1.270000e+02
  %6467 = fcmp fast olt float %4761, 1.270000e+02
  %6468 = fmul fast float %4759, 0xBFF7154760000000
  %6469 = fmul fast float %6468, %6464
  %6470 = fmul fast float %4760, 0xBFF7154760000000
  %6471 = fmul fast float %6470, %6464
  %6472 = fmul fast float %4761, 0xBFF7154760000000
  %6473 = fmul fast float %6472, %6464
  %6474 = call float @dx.op.unary.f32(i32 21, float %6469)  ; Exp(value)
  %6475 = call float @dx.op.unary.f32(i32 21, float %6471)  ; Exp(value)
  %6476 = call float @dx.op.unary.f32(i32 21, float %6473)  ; Exp(value)
  %6477 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6478 = call float @dx.op.unary.f32(i32 7, float %6475)  ; Saturate(value)
  %6479 = call float @dx.op.unary.f32(i32 7, float %6476)  ; Saturate(value)
  %6480 = select i1 %6465, float %6477, float 0.000000e+00
  %6481 = select i1 %6466, float %6478, float 0.000000e+00
  %6482 = select i1 %6467, float %6479, float 0.000000e+00
  %6483 = fmul fast float %6480, %5982
  %6484 = fmul fast float %6481, %5982
  %6485 = fmul fast float %6482, %5982
  %6486 = fadd fast float %6483, -1.000000e+00
  %6487 = fadd fast float %6484, -1.000000e+00
  %6488 = fadd fast float %6485, -1.000000e+00
  %6489 = fmul fast float %6486, %4714
  %6490 = fmul fast float %6487, %4714
  %6491 = fmul fast float %6488, %4714
  %6492 = fmul fast float %6444, %5977
  %6493 = fmul fast float %6445, %5978
  %6494 = fmul fast float %6446, %5979
  %6495 = fsub fast float 1.000000e+00, %5656
  %6496 = bitcast float %6495 to i32
  %6497 = sitofp i32 %6496 to float
  %6498 = fmul fast float %6497, 5.000000e+00
  %6499 = fadd fast float %6498, 0xC1EFBF8940000000
  %6500 = fptosi float %6499 to i32
  %6501 = bitcast i32 %6500 to float
  %6502 = fmul fast float %6501, %4689
  %6503 = fmul fast float %5914, %6502
  %6504 = fmul fast float %6503, %5982
  %6505 = fmul fast float %6504, %6460
  %6506 = fmul fast float %5915, %6502
  %6507 = fmul fast float %6506, %5982
  %6508 = fmul fast float %6507, %6461
  %6509 = fmul fast float %5916, %6502
  %6510 = fmul fast float %6509, %5982
  %6511 = fmul fast float %6510, %6462
  %6512 = fadd fast float %6492, %4675
  %6513 = fadd fast float %6512, %6505
  %6514 = fmul fast float %6513, %4714
  %6515 = fadd fast float %6493, %4676
  %6516 = fadd fast float %6515, %6508
  %6517 = fmul fast float %6516, %4714
  %6518 = fadd fast float %6494, %4677
  %6519 = fadd fast float %6518, %6511
  %6520 = fmul fast float %6519, %4714
  %6521 = fmul fast float %5644, 0x4012D0A400000000
  %6522 = fadd fast float %6491, 1.000000e+00
  %6523 = fadd fast float %6490, 1.000000e+00
  %6524 = fadd fast float %6489, 1.000000e+00
  %6525 = fmul fast float %5982, %5916
  %6526 = fmul fast float %5982, %5915
  %6527 = fmul fast float %5982, %5914
  %6528 = fmul fast float %5671, %4714
  %6529 = fsub fast float 1.000000e+00, %6528
  %6530 = call float @dx.op.unary.f32(i32 7, float %6529)  ; Saturate(value)
  %6531 = fsub fast float 1.000000e+00, %6530
  %6532 = fadd fast float %6521, 0x3FDB6377A0000000
  %6533 = fmul fast float %6531, %6532
  %6534 = call float @dx.op.dot3.f32(i32 55, float %5469, float %5470, float %5471, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6535 = fadd fast float %6533, %6534
  %6536 = call float @dx.op.unary.f32(i32 7, float %6535)  ; Saturate(value)
  %6537 = call float @dx.op.binary.f32(i32 35, float %6536, float 0x3F847AE140000000)  ; FMax(a,b)
  %6538 = fmul fast float %6537, %6537
  %6539 = fmul fast float %6538, %6538
  %6540 = fmul fast float %6539, 0xC00A935000000000
  %6541 = call float @dx.op.unary.f32(i32 21, float %6540)  ; Exp(value)
  %6542 = fsub fast float 1.000000e+00, %6541
  %6543 = fmul fast float %6524, %5918
  %6544 = fmul fast float %6543, %6542
  %6545 = fmul fast float %6523, %5919
  %6546 = fmul fast float %6545, %6542
  %6547 = fmul fast float %6522, %5920
  %6548 = fmul fast float %6547, %6542
  %6549 = fadd fast float %6544, %6527
  %6550 = fmul fast float %6549, %4714
  %6551 = fadd fast float %6546, %6526
  %6552 = fmul fast float %6551, %4714
  %6553 = fadd fast float %6548, %6525
  %6554 = fmul fast float %6553, %4714
  %6555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6556 = extractvalue %dx.types.CBufRet.f32 %6555, 3
  %6557 = fcmp fast oeq float %6556, 0.000000e+00
  br i1 %6557, label %8323, label %6558

; <label>:6558                                    ; preds = %6443
  %6559 = extractvalue %dx.types.CBufRet.f32 %6555, 0
  %6560 = extractvalue %dx.types.CBufRet.f32 %6555, 1
  %6561 = extractvalue %dx.types.CBufRet.f32 %6555, 2
  %6562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6563 = extractvalue %dx.types.CBufRet.f32 %6562, 0
  %6564 = extractvalue %dx.types.CBufRet.f32 %6562, 1
  %6565 = extractvalue %dx.types.CBufRet.f32 %6562, 2
  %6566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6567 = extractvalue %dx.types.CBufRet.f32 %6566, 0
  %6568 = extractvalue %dx.types.CBufRet.f32 %6566, 1
  %6569 = call float @dx.op.dot3.f32(i32 55, float %6563, float %6564, float %6565, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6570 = select i1 %279, float %6567, float %6563
  %6571 = select i1 %279, float %6569, float %6564
  %6572 = select i1 %279, float %6568, float %6565
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 2
  %6575 = fmul fast float %6574, %114
  %6576 = fmul fast float %6574, %115
  %6577 = fmul fast float %6574, %116
  %6578 = fadd fast float %6575, %186
  %6579 = fadd fast float %6576, %187
  %6580 = fadd fast float %6577, %188
  %6581 = fcmp fast olt float %6556, 0.000000e+00
  br i1 %6581, label %7839, label %6582

; <label>:6582                                    ; preds = %6558
  %6583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6584 = extractvalue %dx.types.CBufRet.f32 %6583, 0
  %6585 = extractvalue %dx.types.CBufRet.f32 %6583, 1
  %6586 = extractvalue %dx.types.CBufRet.f32 %6583, 2
  %6587 = extractvalue %dx.types.CBufRet.f32 %6583, 3
  %6588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6589 = extractvalue %dx.types.CBufRet.f32 %6588, 0
  %6590 = extractvalue %dx.types.CBufRet.f32 %6588, 1
  %6591 = extractvalue %dx.types.CBufRet.f32 %6588, 2
  %6592 = extractvalue %dx.types.CBufRet.f32 %6588, 3
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 0
  %6595 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6596 = extractvalue %dx.types.CBufRet.f32 %6593, 2
  %6597 = extractvalue %dx.types.CBufRet.f32 %6593, 3
  %6598 = fmul fast float %6584, %6578
  %6599 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %6585, float %6598)  ; FMad(a,b,c)
  %6600 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %6586, float %6599)  ; FMad(a,b,c)
  %6601 = fadd fast float %6600, %6587
  %6602 = fmul fast float %6589, %6578
  %6603 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %6590, float %6602)  ; FMad(a,b,c)
  %6604 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %6591, float %6603)  ; FMad(a,b,c)
  %6605 = fadd fast float %6604, %6592
  %6606 = fmul fast float %6594, %6578
  %6607 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %6595, float %6606)  ; FMad(a,b,c)
  %6608 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %6596, float %6607)  ; FMad(a,b,c)
  %6609 = fadd fast float %6608, %6597
  %6610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %6611 = extractvalue %dx.types.CBufRet.f32 %6610, 0
  %6612 = fcmp fast une float %6611, 0.000000e+00
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6615 = extractvalue %dx.types.CBufRet.f32 %6613, 1
  %6616 = extractvalue %dx.types.CBufRet.f32 %6613, 3
  %6617 = fmul fast float %6616, %6601
  %6618 = fmul fast float %6616, %6605
  %6619 = fadd fast float %6617, %6614
  %6620 = fadd fast float %6618, %6615
  %6621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6622 = extractvalue %dx.types.CBufRet.f32 %6621, 0
  %6623 = extractvalue %dx.types.CBufRet.f32 %6621, 1
  %6624 = extractvalue %dx.types.CBufRet.f32 %6621, 3
  %6625 = fmul fast float %6624, %6601
  %6626 = fmul fast float %6624, %6605
  %6627 = fadd fast float %6625, %6622
  %6628 = fadd fast float %6626, %6623
  %6629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6629, 1
  %6631 = fsub fast float %6630, %6609
  %6632 = extractvalue %dx.types.CBufRet.f32 %6629, 2
  %6633 = fmul fast float %6631, %6632
  %6634 = fsub fast float 1.000000e+00, %6633
  %6635 = call float @dx.op.unary.f32(i32 7, float %6634)  ; Saturate(value)
  br i1 %6612, label %6696, label %6636

; <label>:6636                                    ; preds = %6582
  %6637 = extractvalue %dx.types.CBufRet.f32 %6621, 2
  %6638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6639 = extractvalue %dx.types.CBufRet.f32 %6638, 2
  %6640 = fadd fast float %6639, %6637
  %6641 = fcmp fast ogt float %6640, 0.000000e+00
  br i1 %6641, label %6642, label %6666

; <label>:6642                                    ; preds = %6636
  %6643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6644 = extractvalue %dx.types.CBufRet.f32 %6643, 0
  %6645 = extractvalue %dx.types.CBufRet.f32 %6643, 1
  %6646 = fsub fast float %6627, %6644
  %6647 = fsub fast float %6628, %6645
  %6648 = fcmp fast olt float %6646, 0.000000e+00
  %6649 = fcmp fast olt float %6647, 0.000000e+00
  %6650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6651 = extractvalue %dx.types.CBufRet.f32 %6650, 0
  %6652 = extractvalue %dx.types.CBufRet.f32 %6650, 1
  %6653 = extractvalue %dx.types.CBufRet.f32 %6650, 2
  %6654 = extractvalue %dx.types.CBufRet.f32 %6650, 3
  %6655 = select i1 %6648, float %6651, float %6653
  %6656 = select i1 %6649, float %6652, float %6654
  %6657 = fmul fast float %6655, %6646
  %6658 = fmul fast float %6656, %6647
  %6659 = call float @dx.op.unary.f32(i32 6, float %6657)  ; FAbs(value)
  %6660 = call float @dx.op.unary.f32(i32 6, float %6658)  ; FAbs(value)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6662 = call float @dx.op.binary.f32(i32 35, float %6659, float %6660)  ; FMax(a,b)
  %6663 = fsub fast float %6661, %6662
  %6664 = call float @dx.op.unary.f32(i32 7, float %6663)  ; Saturate(value)
  %6665 = fmul fast float %6664, %6635
  br label %6666

; <label>:6666                                    ; preds = %6642, %6636
  %6667 = phi float [ %6665, %6642 ], [ 0.000000e+00, %6636 ]
  %6668 = extractvalue %dx.types.CBufRet.f32 %6613, 2
  %6669 = extractvalue %dx.types.CBufRet.f32 %6638, 1
  %6670 = fadd fast float %6669, %6668
  %6671 = fcmp fast ogt float %6670, 0.000000e+00
  br i1 %6671, label %6672, label %6696

; <label>:6672                                    ; preds = %6666
  %6673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6674 = extractvalue %dx.types.CBufRet.f32 %6673, 0
  %6675 = extractvalue %dx.types.CBufRet.f32 %6673, 1
  %6676 = fsub fast float %6619, %6674
  %6677 = fsub fast float %6620, %6675
  %6678 = fcmp fast olt float %6676, 0.000000e+00
  %6679 = fcmp fast olt float %6677, 0.000000e+00
  %6680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6681 = extractvalue %dx.types.CBufRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.CBufRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.CBufRet.f32 %6680, 2
  %6684 = extractvalue %dx.types.CBufRet.f32 %6680, 3
  %6685 = select i1 %6678, float %6681, float %6683
  %6686 = select i1 %6679, float %6682, float %6684
  %6687 = fmul fast float %6685, %6676
  %6688 = fmul fast float %6686, %6677
  %6689 = call float @dx.op.unary.f32(i32 6, float %6687)  ; FAbs(value)
  %6690 = call float @dx.op.unary.f32(i32 6, float %6688)  ; FAbs(value)
  %6691 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6692 = call float @dx.op.binary.f32(i32 35, float %6689, float %6690)  ; FMax(a,b)
  %6693 = fsub fast float %6691, %6692
  %6694 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  %6695 = fmul fast float %6694, %6635
  br label %6696

; <label>:6696                                    ; preds = %6672, %6666, %6582
  %6697 = phi float [ 0.000000e+00, %6582 ], [ %6695, %6672 ], [ 0.000000e+00, %6666 ]
  %6698 = phi float [ 0.000000e+00, %6582 ], [ %6667, %6672 ], [ %6667, %6666 ]
  %6699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6700 = extractvalue %dx.types.CBufRet.f32 %6699, 1
  %6701 = call float @dx.op.unary.f32(i32 7, float %6700)  ; Saturate(value)
  %6702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6703 = extractvalue %dx.types.CBufRet.f32 %6702, 0
  %6704 = extractvalue %dx.types.CBufRet.f32 %6702, 1
  %6705 = fsub fast float %6601, %6703
  %6706 = fsub fast float %6605, %6704
  %6707 = fcmp fast olt float %6705, 0.000000e+00
  %6708 = fcmp fast olt float %6706, 0.000000e+00
  %6709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
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
  %6720 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6721 = call float @dx.op.binary.f32(i32 35, float %6718, float %6719)  ; FMax(a,b)
  %6722 = fsub fast float %6720, %6721
  %6723 = call float @dx.op.unary.f32(i32 7, float %6722)  ; Saturate(value)
  %6724 = call float @dx.op.binary.f32(i32 36, float %6723, float %6701)  ; FMin(a,b)
  %6725 = fmul fast float %6724, %6635
  %6726 = fsub fast float %6697, %6725
  %6727 = fsub fast float %6698, %6697
  %6728 = fsub fast float %6727, %6725
  %6729 = call float @dx.op.binary.f32(i32 35, float %6697, float %6698)  ; FMax(a,b)
  %6730 = call float @dx.op.binary.f32(i32 35, float %6725, float %6729)  ; FMax(a,b)
  %6731 = fcmp fast olt float %6730, 1.000000e+00
  br i1 %6731, label %6732, label %7130, !dx.controlflow.hints !93

; <label>:6732                                    ; preds = %6696
  %6733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6734 = extractvalue %dx.types.CBufRet.f32 %6733, 0
  %6735 = fcmp fast une float %6734, 0.000000e+00
  br i1 %6735, label %6736, label %7130, !dx.controlflow.hints !94

; <label>:6736                                    ; preds = %6732
  %6737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6738 = extractvalue %dx.types.CBufRet.f32 %6737, 0
  %6739 = extractvalue %dx.types.CBufRet.f32 %6737, 1
  %6740 = extractvalue %dx.types.CBufRet.f32 %6737, 2
  %6741 = extractvalue %dx.types.CBufRet.f32 %6737, 3
  %6742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6743 = extractvalue %dx.types.CBufRet.f32 %6742, 0
  %6744 = extractvalue %dx.types.CBufRet.f32 %6742, 1
  %6745 = extractvalue %dx.types.CBufRet.f32 %6742, 2
  %6746 = extractvalue %dx.types.CBufRet.f32 %6742, 3
  %6747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6748 = extractvalue %dx.types.CBufRet.f32 %6747, 0
  %6749 = extractvalue %dx.types.CBufRet.f32 %6747, 1
  %6750 = extractvalue %dx.types.CBufRet.f32 %6747, 2
  %6751 = extractvalue %dx.types.CBufRet.f32 %6747, 3
  %6752 = fmul fast float %6738, %6578
  %6753 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %6739, float %6752)  ; FMad(a,b,c)
  %6754 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %6740, float %6753)  ; FMad(a,b,c)
  %6755 = fadd fast float %6754, %6741
  %6756 = fmul fast float %6743, %6578
  %6757 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %6744, float %6756)  ; FMad(a,b,c)
  %6758 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %6745, float %6757)  ; FMad(a,b,c)
  %6759 = fadd fast float %6758, %6746
  %6760 = fmul fast float %6748, %6578
  %6761 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %6749, float %6760)  ; FMad(a,b,c)
  %6762 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %6750, float %6761)  ; FMad(a,b,c)
  %6763 = fadd fast float %6762, %6751
  %6764 = fcmp fast oge float %6755, 1.000000e+00
  %6765 = fcmp fast oge float %6759, 1.000000e+00
  %6766 = or i1 %6764, %6765
  %6767 = fcmp fast olt float %6755, 0.000000e+00
  %6768 = fcmp fast olt float %6759, 0.000000e+00
  %6769 = or i1 %6767, %6768
  %6770 = or i1 %6766, %6769
  br i1 %6770, label %7130, label %6771, !dx.controlflow.hints !95

; <label>:6771                                    ; preds = %6736
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = extractvalue %dx.types.CBufRet.f32 %6772, 1
  %6775 = extractvalue %dx.types.CBufRet.f32 %6772, 2
  %6776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6777 = extractvalue %dx.types.CBufRet.i32 %6776, 2
  %6778 = uitofp i32 %6777 to float
  %6779 = extractvalue %dx.types.CBufRet.i32 %6776, 3
  %6780 = uitofp i32 %6779 to float
  %6781 = extractvalue %dx.types.CBufRet.f32 %6772, 3
  %6782 = fmul fast float %6781, 2.000000e+00
  %6783 = fsub fast float %6755, %6773
  %6784 = fsub fast float %6759, %6774
  %6785 = fmul fast float %6782, %6783
  %6786 = fmul fast float %6782, %6784
  %6787 = fdiv fast float 1.000000e+00, %6561
  %6788 = fmul fast float %6786, %6787
  %6789 = call float @dx.op.unary.f32(i32 6, float %6788)  ; FAbs(value)
  %6790 = fmul fast float %6775, %6580
  %6791 = fmul fast float %6790, %6782
  %6792 = call float @dx.op.unary.f32(i32 6, float %6791)  ; FAbs(value)
  %6793 = call float @dx.op.unary.f32(i32 6, float %6785)  ; FAbs(value)
  %6794 = call float @dx.op.binary.f32(i32 35, float %6792, float %6789)  ; FMax(a,b)
  %6795 = call float @dx.op.binary.f32(i32 35, float %6793, float %6794)  ; FMax(a,b)
  %6796 = fmul fast float %6795, 2.000000e+00
  %6797 = call float @dx.op.unary.f32(i32 23, float %6796)  ; Log(value)
  %6798 = call float @dx.op.binary.f32(i32 35, float %6797, float %6778)  ; FMax(a,b)
  %6799 = call float @dx.op.unary.f32(i32 22, float %6798)  ; Frc(value)
  %6800 = fadd fast float %6799, 0xBFEA666660000000
  %6801 = fmul fast float %6800, 8.000000e+00
  %6802 = call float @dx.op.unary.f32(i32 7, float %6801)  ; Saturate(value)
  %6803 = call float @dx.op.unary.f32(i32 27, float %6798)  ; Round_ni(value)
  %6804 = fadd fast float %6803, %6802
  %6805 = call float @dx.op.binary.f32(i32 36, float %6804, float %6780)  ; FMin(a,b)
  %6806 = call float @dx.op.unary.f32(i32 27, float %6805)  ; Round_ni(value)
  %6807 = fsub fast float -0.000000e+00, %6806
  %6808 = call float @dx.op.unary.f32(i32 21, float %6807)  ; Exp(value)
  %6809 = fmul fast float %6808, %6782
  %6810 = fmul fast float %6809, %6755
  %6811 = fmul fast float %6809, %6759
  %6812 = fmul fast float %6810, 2.500000e-01
  %6813 = fmul fast float %6811, 2.500000e-01
  %6814 = fadd fast float %6812, 5.000000e-01
  %6815 = fadd fast float %6813, 5.000000e-01
  %6816 = fsub fast float %6780, %6778
  %6817 = fptoui float %6816 to i32
  %6818 = add i32 %6817, 320
  %6819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %6818)  ; CBufferLoadLegacy(handle,regIndex)
  %6820 = extractvalue %dx.types.CBufRet.f32 %6819, 0
  %6821 = extractvalue %dx.types.CBufRet.f32 %6819, 1
  %6822 = fcmp fast une float %6805, %6780
  %6823 = fsub fast float %6755, %6820
  %6824 = fsub fast float %6759, %6821
  %6825 = call float @dx.op.unary.f32(i32 6, float %6823)  ; FAbs(value)
  %6826 = call float @dx.op.unary.f32(i32 6, float %6824)  ; FAbs(value)
  %6827 = fmul fast float %6825, %6809
  %6828 = fmul fast float %6826, %6809
  %6829 = fcmp fast olt float %6827, 1.000000e+00
  %6830 = fcmp fast olt float %6828, 1.000000e+00
  %6831 = and i1 %6829, %6830
  %6832 = or i1 %6822, %6831
  br i1 %6832, label %6833, label %7130, !dx.controlflow.hints !96

; <label>:6833                                    ; preds = %6771
  %6834 = fmul fast float %6811, 5.000000e-01
  %6835 = fmul fast float %6810, 5.000000e-01
  %6836 = fadd fast float %6834, 5.000000e-01
  %6837 = fadd fast float %6835, 5.000000e-01
  %6838 = sitofp i32 %6777 to float
  %6839 = fsub fast float %6805, %6838
  %6840 = call float @dx.op.unary.f32(i32 27, float %6839)  ; Round_ni(value)
  %6841 = call float @dx.op.unary.f32(i32 22, float %6805)  ; Frc(value)
  %6842 = call float @dx.op.unary.f32(i32 22, float %6837)  ; Frc(value)
  %6843 = call float @dx.op.unary.f32(i32 22, float %6836)  ; Frc(value)
  %6844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6842, float %6843, float %6840, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6845 = extractvalue %dx.types.ResRet.f32 %6844, 0
  %6846 = extractvalue %dx.types.ResRet.f32 %6844, 1
  %6847 = extractvalue %dx.types.ResRet.f32 %6844, 2
  %6848 = extractvalue %dx.types.ResRet.f32 %6844, 3
  %6849 = fcmp fast ogt float %6841, 0.000000e+00
  br i1 %6849, label %6850, label %6871, !dx.controlflow.hints !97

; <label>:6850                                    ; preds = %6833
  %6851 = fadd fast float %6840, 1.000000e+00
  %6852 = call float @dx.op.unary.f32(i32 22, float %6814)  ; Frc(value)
  %6853 = call float @dx.op.unary.f32(i32 22, float %6815)  ; Frc(value)
  %6854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %41, float %6852, float %6853, float %6851, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6855 = extractvalue %dx.types.ResRet.f32 %6854, 0
  %6856 = extractvalue %dx.types.ResRet.f32 %6854, 1
  %6857 = extractvalue %dx.types.ResRet.f32 %6854, 2
  %6858 = extractvalue %dx.types.ResRet.f32 %6854, 3
  %6859 = fsub fast float %6855, %6845
  %6860 = fsub fast float %6856, %6846
  %6861 = fsub fast float %6857, %6847
  %6862 = fsub fast float %6858, %6848
  %6863 = fmul fast float %6859, %6841
  %6864 = fmul fast float %6860, %6841
  %6865 = fmul fast float %6861, %6841
  %6866 = fmul fast float %6862, %6841
  %6867 = fadd fast float %6863, %6845
  %6868 = fadd fast float %6864, %6846
  %6869 = fadd fast float %6865, %6847
  %6870 = fadd fast float %6866, %6848
  br label %6871

; <label>:6871                                    ; preds = %6850, %6833
  %6872 = phi float [ %6867, %6850 ], [ %6845, %6833 ]
  %6873 = phi float [ %6868, %6850 ], [ %6846, %6833 ]
  %6874 = phi float [ %6869, %6850 ], [ %6847, %6833 ]
  %6875 = phi float [ %6870, %6850 ], [ %6848, %6833 ]
  %6876 = fadd fast float %6872, -5.000000e-01
  %6877 = fadd fast float %6874, -5.000000e-01
  %6878 = fmul fast float %6876, 0xBFD5555560000000
  %6879 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6877, float %6878)  ; FMad(a,b,c)
  %6880 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6873, float 0.000000e+00)  ; FMad(a,b,c)
  %6881 = fadd fast float %6880, %6875
  %6882 = fmul fast float %6876, -7.500000e-01
  %6883 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6877, float %6882)  ; FMad(a,b,c)
  %6884 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6873, float 0.000000e+00)  ; FMad(a,b,c)
  %6885 = fadd fast float %6884, %6875
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6889 = extractvalue %dx.types.CBufRet.f32 %6888, 0
  %6890 = extractvalue %dx.types.CBufRet.f32 %6888, 1
  %6891 = extractvalue %dx.types.CBufRet.f32 %6888, 2
  %6892 = extractvalue %dx.types.CBufRet.f32 %6888, 3
  %6893 = fsub fast float %6889, %6879
  %6894 = fsub fast float %6890, %6881
  %6895 = fsub fast float %6891, %6883
  %6896 = fsub fast float %6892, %6885
  %6897 = fmul fast float %6893, %6887
  %6898 = fmul fast float %6894, %6887
  %6899 = fmul fast float %6895, %6887
  %6900 = fmul fast float %6896, %6887
  %6901 = fadd fast float %6897, %6879
  %6902 = fadd fast float %6898, %6881
  %6903 = fadd fast float %6899, %6883
  %6904 = fadd fast float %6900, %6885
  %6905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6906 = extractvalue %dx.types.ResRet.i32 %6905, 0
  %6907 = and i32 %6906, 536870911
  %6908 = uitofp i32 %6907 to float
  %6909 = fmul fast float %6908, %6755
  %6910 = fmul fast float %6908, %6759
  %6911 = fptoui float %6909 to i32
  %6912 = fptoui float %6910 to i32
  %6913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6914 = extractvalue %dx.types.ResRet.i32 %6913, 0
  %6915 = and i32 %6914, 31
  %6916 = lshr i32 %6911, %6915
  %6917 = lshr i32 %6912, %6915
  %6918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6919 = extractvalue %dx.types.ResRet.i32 %6918, 0
  %6920 = and i32 %6919, 31
  %6921 = shl i32 1, %6920
  %6922 = call i32 @dx.op.binary.i32(i32 40, i32 %6921, i32 4)  ; UMin(a,b)
  %6923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6924 = extractvalue %dx.types.ResRet.i32 %6923, 0
  %6925 = extractvalue %dx.types.ResRet.i32 %6923, 1
  %6926 = icmp eq i32 %6922, 0
  br i1 %6926, label %6968, label %6927

; <label>:6927                                    ; preds = %6871
  br label %6928

; <label>:6928                                    ; preds = %6956, %6927
  %6929 = phi i32 [ %6959, %6956 ], [ 0, %6927 ]
  %6930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6931 = extractvalue %dx.types.ResRet.i32 %6930, 0
  %6932 = lshr i32 %6931, 16
  %6933 = and i32 %6932, 31
  %6934 = shl i32 %6917, %6933
  %6935 = add i32 %6934, %6916
  %6936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6937 = extractvalue %dx.types.ResRet.i32 %6936, 0
  %6938 = and i32 %6937, 31
  %6939 = shl i32 %6935, %6938
  %6940 = add i32 %6939, %6929
  %6941 = shl i32 %6940, 2
  %6942 = add i32 %6941, 32
  %6943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6942, i32 undef)  ; BufferLoad(srv,index,wot)
  %6944 = extractvalue %dx.types.ResRet.i32 %6943, 0
  %6945 = icmp slt i32 %6944, 0
  %6946 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6929
  %6947 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6929
  %6948 = bitcast float* %6946 to i32*
  %6949 = bitcast float* %6947 to i32*
  br i1 %6945, label %6950, label %6956

; <label>:6950                                    ; preds = %6928
  %6951 = and i32 %6944, 1073741823
  %6952 = add nuw nsw i32 %6951, 20
  %6953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6952, i32 undef)  ; BufferLoad(srv,index,wot)
  %6954 = extractvalue %dx.types.ResRet.i32 %6953, 0
  %6955 = extractvalue %dx.types.ResRet.i32 %6953, 1
  br label %6956

; <label>:6956                                    ; preds = %6950, %6928
  %6957 = phi i32 [ %6954, %6950 ], [ %6924, %6928 ]
  %6958 = phi i32 [ %6955, %6950 ], [ %6925, %6928 ]
  store i32 %6957, i32* %6948, align 4
  store i32 %6958, i32* %6949, align 4
  %6959 = add nuw i32 %6929, 1
  %6960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.i32 %6960, 2
  %6962 = icmp eq i32 %6961, 0
  %6963 = icmp ugt i32 %6944, -1073741825
  %6964 = and i1 %6963, %6962
  %6965 = icmp ult i32 %6959, %6922
  %6966 = and i1 %6964, %6965
  br i1 %6966, label %6928, label %6967

; <label>:6967                                    ; preds = %6956
  br label %6968

; <label>:6968                                    ; preds = %6967, %6871
  %6969 = phi i32 [ 0, %6871 ], [ %6959, %6967 ]
  %6970 = extractvalue %dx.types.CBufRet.f32 %6733, 2
  %6971 = fptoui float %6970 to i32
  %6972 = icmp eq i32 %6971, 0
  br i1 %6972, label %7024, label %6973

; <label>:6973                                    ; preds = %6968
  br label %6974

; <label>:6974                                    ; preds = %7019, %6973
  %6975 = phi i32 [ %7020, %7019 ], [ %6969, %6973 ]
  %6976 = phi i32 [ %7021, %7019 ], [ 0, %6973 ]
  %6977 = lshr i32 %6976, 2
  %6978 = and i32 %6976, 3
  %6979 = add nuw nsw i32 %6977, 83
  %6980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 %6979)  ; CBufferLoadLegacy(handle,regIndex)
  %6981 = extractvalue %dx.types.CBufRet.i32 %6980, 0
  %6982 = extractvalue %dx.types.CBufRet.i32 %6980, 1
  %6983 = extractvalue %dx.types.CBufRet.i32 %6980, 2
  %6984 = extractvalue %dx.types.CBufRet.i32 %6980, 3
  %6985 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 0
  store i32 %6981, i32* %6985, align 4
  %6986 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 1
  store i32 %6982, i32* %6986, align 4
  %6987 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 2
  store i32 %6983, i32* %6987, align 4
  %6988 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 3
  store i32 %6984, i32* %6988, align 4
  %6989 = getelementptr inbounds [4 x i32], [4 x i32]* %47, i32 0, i32 %6978
  %6990 = load i32, i32* %6989, align 4, !tbaa !98, !noalias !102
  %6991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6992 = extractvalue %dx.types.ResRet.i32 %6991, 0
  %6993 = lshr i32 %6992, 16
  %6994 = and i32 %6993, 31
  %6995 = shl i32 %6917, %6994
  %6996 = add i32 %6995, %6916
  %6997 = shl i32 %6996, 2
  %6998 = add i32 %6997, %6990
  %6999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %6998, i32 undef)  ; BufferLoad(srv,index,wot)
  %7000 = extractvalue %dx.types.ResRet.i32 %6999, 0
  %7001 = icmp eq i32 %7000, 0
  br i1 %7001, label %7019, label %7002

; <label>:7002                                    ; preds = %6974
  %7003 = icmp slt i32 %7000, 0
  %7004 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %6975
  %7005 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %6975
  %7006 = bitcast float* %7004 to i32*
  %7007 = bitcast float* %7005 to i32*
  br i1 %7003, label %7008, label %7015

; <label>:7008                                    ; preds = %7002
  %7009 = and i32 %7000, 1073741823
  %7010 = add i32 %6990, 20
  %7011 = add i32 %7010, %7009
  %7012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %7011, i32 undef)  ; BufferLoad(srv,index,wot)
  %7013 = extractvalue %dx.types.ResRet.i32 %7012, 0
  %7014 = extractvalue %dx.types.ResRet.i32 %7012, 1
  br label %7015

; <label>:7015                                    ; preds = %7008, %7002
  %7016 = phi i32 [ %7013, %7008 ], [ %6924, %7002 ]
  %7017 = phi i32 [ %7014, %7008 ], [ %6925, %7002 ]
  store i32 %7016, i32* %7006, align 4
  store i32 %7017, i32* %7007, align 4
  %7018 = add i32 %6975, 1
  br label %7019

; <label>:7019                                    ; preds = %7015, %6974
  %7020 = phi i32 [ %6975, %6974 ], [ %7018, %7015 ]
  %7021 = add nuw i32 %6976, 1
  %7022 = icmp eq i32 %7021, %6971
  br i1 %7022, label %7023, label %6974

; <label>:7023                                    ; preds = %7019
  br label %7024

; <label>:7024                                    ; preds = %7023, %6968
  %7025 = phi i32 [ %6969, %6968 ], [ %7020, %7023 ]
  %7026 = icmp eq i32 %7025, 1
  %7027 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 0
  %7028 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 0
  br i1 %7026, label %7029, label %7032

; <label>:7029                                    ; preds = %7024
  %7030 = load float, float* %7027, align 4
  %7031 = load float, float* %7028, align 4
  br label %7059

; <label>:7032                                    ; preds = %7024
  %7033 = load float, float* %7027, align 4
  %7034 = load float, float* %7028, align 4
  %7035 = fdiv fast float 1.000000e+00, %7034
  %7036 = fsub fast float %7033, %7035
  %7037 = icmp ugt i32 %7025, 1
  br i1 %7037, label %7038, label %7054

; <label>:7038                                    ; preds = %7032
  br label %7039

; <label>:7039                                    ; preds = %7039, %7038
  %7040 = phi float [ %7049, %7039 ], [ %7036, %7038 ]
  %7041 = phi float [ %7050, %7039 ], [ %7033, %7038 ]
  %7042 = phi i32 [ %7051, %7039 ], [ 1, %7038 ]
  %7043 = getelementptr [12 x float], [12 x float]* %95, i32 0, i32 %7042
  %7044 = load float, float* %7043, align 4
  %7045 = getelementptr [12 x float], [12 x float]* %96, i32 0, i32 %7042
  %7046 = load float, float* %7045, align 4
  %7047 = fdiv fast float 1.000000e+00, %7046
  %7048 = fsub fast float %7044, %7047
  %7049 = call float @dx.op.binary.f32(i32 36, float %7040, float %7048)  ; FMin(a,b)
  %7050 = call float @dx.op.binary.f32(i32 35, float %7041, float %7044)  ; FMax(a,b)
  %7051 = add nuw i32 %7042, 1
  %7052 = icmp eq i32 %7051, %7025
  br i1 %7052, label %7053, label %7039

; <label>:7053                                    ; preds = %7039
  br label %7054

; <label>:7054                                    ; preds = %7053, %7032
  %7055 = phi float [ %7036, %7032 ], [ %7049, %7053 ]
  %7056 = phi float [ %7033, %7032 ], [ %7050, %7053 ]
  %7057 = fsub fast float %7056, %7055
  %7058 = fdiv fast float 1.000000e+00, %7057
  br label %7059

; <label>:7059                                    ; preds = %7054, %7029
  %7060 = phi float [ %7030, %7029 ], [ %7056, %7054 ]
  %7061 = phi float [ %7031, %7029 ], [ %7058, %7054 ]
  %7062 = fadd fast float %6763, %7060
  %7063 = fmul fast float %7062, %7061
  %7064 = call float @dx.op.unary.f32(i32 7, float %7063)  ; Saturate(value)
  %7065 = fmul fast float %7064, 2.000000e+00
  %7066 = fsub fast float 1.000000e+00, %7065
  %7067 = fmul fast float %6901, %6901
  %7068 = fsub fast float %6902, %7067
  %7069 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7068)  ; FMax(a,b)
  %7070 = fdiv fast float 1.000000e+00, %7069
  %7071 = fmul fast float %6902, %6901
  %7072 = fsub fast float %6903, %7071
  %7073 = fsub fast float %7066, %6901
  %7074 = fmul fast float %7066, %7066
  %7075 = fsub fast float %7074, %6902
  %7076 = fmul fast float %7070, %7072
  %7077 = fmul fast float %7076, %7073
  %7078 = fsub fast float %7075, %7077
  %7079 = fmul fast float %6902, %6902
  %7080 = fsub fast float %6904, %7079
  %7081 = fmul fast float %7072, %7072
  %7082 = fmul fast float %7081, %7070
  %7083 = fsub fast float %7080, %7082
  %7084 = fdiv fast float %7078, %7083
  %7085 = fmul fast float %7084, %7072
  %7086 = fsub fast float %7073, %7085
  %7087 = fmul fast float %7086, %7070
  %7088 = fmul fast float %7087, %6901
  %7089 = fsub fast float 1.000000e+00, %7088
  %7090 = fmul fast float %7084, %6902
  %7091 = fsub fast float %7089, %7090
  %7092 = fmul fast float %7087, %7087
  %7093 = fmul fast float %7084, 4.000000e+00
  %7094 = fmul fast float %7093, %7091
  %7095 = fsub fast float %7092, %7094
  %7096 = call float @dx.op.unary.f32(i32 24, float %7095)  ; Sqrt(value)
  %7097 = fcmp fast oge float %7087, 0.000000e+00
  %7098 = fsub fast float -0.000000e+00, %7096
  %7099 = select i1 %7097, float %7098, float %7096
  %7100 = fsub fast float %7099, %7087
  %7101 = fdiv fast float %7100, %7084
  %7102 = fdiv fast float %7091, %7100
  %7103 = fmul fast float %7101, 5.000000e-01
  %7104 = fmul fast float %7102, 2.000000e+00
  %7105 = select i1 %7097, float %7103, float %7104
  %7106 = select i1 %7097, float %7104, float %7103
  %7107 = call float @dx.op.binary.f32(i32 35, float %7105, float %7106)  ; FMax(a,b)
  %7108 = call float @dx.op.binary.f32(i32 36, float %7105, float %7106)  ; FMin(a,b)
  %7109 = fcmp fast ogt float %7066, %7107
  %7110 = fsub fast float %7066, %7108
  %7111 = fsub fast float %7066, %7107
  %7112 = fsub fast float %7107, %7108
  %7113 = select i1 %7109, float %7111, float %7112
  %7114 = fmul float %7110, %7113
  %7115 = select i1 %7109, float %7108, float %7066
  %7116 = fcmp fast ogt float %7066, %7108
  %7117 = fmul fast float %7115, %7107
  %7118 = fadd fast float %7115, %7107
  %7119 = fmul fast float %7118, %6901
  %7120 = fadd fast float %7117, %6902
  %7121 = fsub fast float %7120, %7119
  %7122 = fdiv fast float %7121, %7114
  %7123 = select i1 %7116, float %7122, float 0.000000e+00
  %7124 = fsub fast float 1.000000e+00, %7123
  %7125 = select i1 %7109, float %7124, float %7123
  %7126 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7127 = extractvalue %dx.types.CBufRet.f32 %6886, 3
  %7128 = fmul fast float %7127, %7126
  %7129 = fsub fast float 1.000000e+00, %7128
  br label %7130

; <label>:7130                                    ; preds = %7059, %6771, %6736, %6732, %6696
  %7131 = phi float [ 1.000000e+00, %6696 ], [ %7129, %7059 ], [ 1.000000e+00, %6736 ], [ 1.000000e+00, %6771 ], [ 1.000000e+00, %6732 ]
  %7132 = fcmp fast ogt float %6728, 0.000000e+00
  br i1 %7132, label %7133, label %7297, !dx.controlflow.hints !111

; <label>:7133                                    ; preds = %7130
  %7134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7135 = extractvalue %dx.types.CBufRet.f32 %7134, 2
  %7136 = fadd fast float %7135, %6609
  %7137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7138 = extractvalue %dx.types.CBufRet.f32 %7137, 2
  %7139 = extractvalue %dx.types.CBufRet.f32 %7137, 3
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 2
  %7142 = call float @dx.op.binary.f32(i32 35, float %7136, float 0.000000e+00)  ; FMax(a,b)
  %7143 = fadd fast float %7142, 0x3F10000000000000
  %7144 = fcmp fast oeq float %7141, 0.000000e+00
  br i1 %7144, label %7145, label %7212

; <label>:7145                                    ; preds = %7133
  %7146 = extractvalue %dx.types.CBufRet.f32 %7137, 1
  %7147 = extractvalue %dx.types.CBufRet.f32 %7137, 0
  %7148 = fmul fast float %7147, %6627
  %7149 = fmul fast float %7146, %6628
  %7150 = fadd fast float %7148, 5.000000e-01
  %7151 = call float @dx.op.unary.f32(i32 27, float %7150)  ; Round_ni(value)
  %7152 = fadd fast float %7149, 5.000000e-01
  %7153 = call float @dx.op.unary.f32(i32 27, float %7152)  ; Round_ni(value)
  %7154 = fsub fast float %7150, %7151
  %7155 = fsub fast float %7152, %7153
  %7156 = fadd fast float %7151, -5.000000e-01
  %7157 = fadd fast float %7153, -5.000000e-01
  %7158 = fmul fast float %7154, 2.000000e+00
  %7159 = fsub fast float 3.000000e+00, %7158
  %7160 = fadd fast float %7158, 1.000000e+00
  %7161 = fsub fast float 2.000000e+00, %7154
  %7162 = bitcast float %7159 to i32
  %7163 = sub nsw i32 2129859010, %7162
  %7164 = bitcast i32 %7163 to float
  %7165 = fmul fast float %7164, %7161
  %7166 = fadd fast float %7165, -1.000000e+00
  %7167 = bitcast float %7160 to i32
  %7168 = sub nsw i32 2129859010, %7167
  %7169 = bitcast i32 %7168 to float
  %7170 = fmul fast float %7169, %7154
  %7171 = fadd fast float %7170, 1.000000e+00
  %7172 = fmul fast float %7155, 2.000000e+00
  %7173 = fsub fast float 3.000000e+00, %7172
  %7174 = fadd fast float %7172, 1.000000e+00
  %7175 = fsub fast float 2.000000e+00, %7155
  %7176 = bitcast float %7173 to i32
  %7177 = sub nsw i32 2129859010, %7176
  %7178 = bitcast i32 %7177 to float
  %7179 = fmul fast float %7178, %7175
  %7180 = fadd fast float %7179, -1.000000e+00
  %7181 = bitcast float %7174 to i32
  %7182 = sub nsw i32 2129859010, %7181
  %7183 = bitcast i32 %7182 to float
  %7184 = fmul fast float %7183, %7155
  %7185 = fadd fast float %7184, 1.000000e+00
  %7186 = fadd fast float %7166, %7156
  %7187 = fmul fast float %7186, %7138
  %7188 = fadd fast float %7180, %7157
  %7189 = fmul fast float %7188, %7139
  %7190 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7187, float %7189, float undef, float undef, i32 0, i32 0, i32 undef, float %7143)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7191 = extractvalue %dx.types.ResRet.f32 %7190, 0
  %7192 = fmul fast float %7191, %7159
  %7193 = fadd fast float %7171, %7156
  %7194 = fmul fast float %7193, %7138
  %7195 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7194, float %7189, float undef, float undef, i32 0, i32 0, i32 undef, float %7143)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7196 = extractvalue %dx.types.ResRet.f32 %7195, 0
  %7197 = fmul fast float %7196, %7160
  %7198 = fadd fast float %7185, %7157
  %7199 = fmul fast float %7198, %7139
  %7200 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7187, float %7199, float undef, float undef, i32 0, i32 0, i32 undef, float %7143)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7201 = extractvalue %dx.types.ResRet.f32 %7200, 0
  %7202 = fmul fast float %7201, %7159
  %7203 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %14, %dx.types.Handle %44, float %7194, float %7199, float undef, float undef, i32 0, i32 0, i32 undef, float %7143)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7204 = extractvalue %dx.types.ResRet.f32 %7203, 0
  %7205 = fmul fast float %7204, %7160
  %7206 = fadd fast float %7205, %7202
  %7207 = fmul fast float %7206, %7174
  %7208 = fadd fast float %7197, %7192
  %7209 = fmul fast float %7208, %7173
  %7210 = fadd fast float %7209, %7207
  %7211 = fmul fast float %7210, 6.250000e-02
  br label %7297

; <label>:7212                                    ; preds = %7133
  %7213 = fmul fast float %290, 0x401921FB60000000
  %7214 = call float @dx.op.unary.f32(i32 13, float %7213)  ; Sin(value)
  %7215 = call float @dx.op.unary.f32(i32 12, float %7213)  ; Cos(value)
  %7216 = fsub fast float -0.000000e+00, %7214
  br label %7217

; <label>:7217                                    ; preds = %7266, %7212
  %7218 = phi float [ 0.000000e+00, %7212 ], [ %7261, %7266 ]
  %7219 = phi float [ 0.000000e+00, %7212 ], [ %7263, %7266 ]
  %7220 = phi i32 [ 0, %7212 ], [ %7267, %7266 ]
  %7221 = mul i32 %7220, 2
  %7222 = add i32 0, %7221
  %7223 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7222
  %7224 = load float, float* %7223, align 4
  %7225 = mul i32 %7220, 2
  %7226 = add i32 1, %7225
  %7227 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7226
  %7228 = load float, float* %7227, align 4
  %7229 = fmul fast float %7224, %7215
  %7230 = call float @dx.op.tertiary.f32(i32 46, float %7228, float %7216, float %7229)  ; FMad(a,b,c)
  %7231 = fmul fast float %7224, %7214
  %7232 = call float @dx.op.tertiary.f32(i32 46, float %7228, float %7215, float %7231)  ; FMad(a,b,c)
  %7233 = fmul fast float %7230, %7141
  %7234 = fmul fast float %7232, %7141
  %7235 = fadd fast float %7233, %6627
  %7236 = fadd fast float %7234, %6628
  %7237 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %14, %dx.types.Handle %43, float %7235, float %7236, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7238 = extractvalue %dx.types.ResRet.f32 %7237, 0
  %7239 = extractvalue %dx.types.ResRet.f32 %7237, 1
  %7240 = extractvalue %dx.types.ResRet.f32 %7237, 2
  %7241 = extractvalue %dx.types.ResRet.f32 %7237, 3
  %7242 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 0
  store float %7238, float* %7242, align 4
  %7243 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 1
  store float %7239, float* %7243, align 4
  %7244 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 2
  store float %7240, float* %7244, align 4
  %7245 = getelementptr inbounds [4 x float], [4 x float]* %100, i32 0, i32 3
  store float %7241, float* %7245, align 4
  %7246 = fsub fast float %7238, %7143
  %7247 = fcmp fast olt float %7246, 0.000000e+00
  %7248 = select i1 %7247, float 0.000000e+00, float 1.000000e+00
  %7249 = fadd fast float %7248, %7218
  %7250 = fmul fast float %7248, %7246
  %7251 = fadd fast float %7250, %7219
  br label %7252

; <label>:7252                                    ; preds = %7252, %7217
  %7253 = phi i32 [ 1, %7217 ], [ %7264, %7252 ]
  %7254 = phi float [ %7251, %7217 ], [ %7263, %7252 ]
  %7255 = phi float [ %7249, %7217 ], [ %7261, %7252 ]
  %7256 = getelementptr [4 x float], [4 x float]* %100, i32 0, i32 %7253
  %7257 = load float, float* %7256, align 4, !tbaa !112, !noalias !102
  %7258 = fsub fast float %7257, %7143
  %7259 = fcmp fast olt float %7258, 0.000000e+00
  %7260 = select i1 %7259, float 0.000000e+00, float 1.000000e+00
  %7261 = fadd fast float %7260, %7255
  %7262 = fmul fast float %7260, %7258
  %7263 = fadd fast float %7262, %7254
  %7264 = add nuw nsw i32 %7253, 1
  %7265 = icmp eq i32 %7264, 4
  br i1 %7265, label %7266, label %7252, !llvm.loop !114

; <label>:7266                                    ; preds = %7252
  %7267 = add nuw nsw i32 %7220, 1
  %7268 = icmp eq i32 %7267, 8
  br i1 %7268, label %7269, label %7217, !llvm.loop !115

; <label>:7269                                    ; preds = %7266
  %7270 = fdiv fast float 1.000000e+00, %7261
  %7271 = fmul fast float %7270, %7263
  %7272 = fdiv fast float 1.000000e+00, %7143
  %7273 = fmul fast float %7271, %7272
  %7274 = call float @dx.op.unary.f32(i32 7, float %7273)  ; Saturate(value)
  %7275 = call float @dx.op.binary.f32(i32 35, float %7274, float 0.000000e+00)  ; FMax(a,b)
  %7276 = fmul fast float %7261, 3.125000e-02
  %7277 = call float @dx.op.unary.f32(i32 7, float %7276)  ; Saturate(value)
  %7278 = fmul fast float %7277, 2.000000e+00
  %7279 = fadd fast float %7278, -1.000000e+00
  %7280 = fcmp fast ogt float %7279, 0.000000e+00
  %7281 = fcmp fast olt float %7279, 0.000000e+00
  %7282 = zext i1 %7280 to i32
  %7283 = zext i1 %7281 to i32
  %7284 = sub nsw i32 %7282, %7283
  %7285 = sitofp i32 %7284 to float
  %7286 = fmul fast float %7285, %7279
  %7287 = fsub fast float 1.000000e+00, %7286
  %7288 = fmul fast float %7287, %7287
  %7289 = fmul fast float %7288, %7287
  %7290 = fsub fast float %7287, %7289
  %7291 = fmul fast float %7290, %7275
  %7292 = fsub fast float 1.000000e+00, %7289
  %7293 = fsub fast float %7292, %7291
  %7294 = fmul fast float %7285, 5.000000e-01
  %7295 = fmul fast float %7294, %7293
  %7296 = fsub fast float 5.000000e-01, %7295
  br label %7297

; <label>:7297                                    ; preds = %7269, %7145, %7130
  %7298 = phi float [ 1.000000e+00, %7130 ], [ %7211, %7145 ], [ %7296, %7269 ]
  %7299 = fcmp fast ogt float %6726, 0.000000e+00
  br i1 %7299, label %7300, label %7464, !dx.controlflow.hints !116

; <label>:7300                                    ; preds = %7297
  %7301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7302 = extractvalue %dx.types.CBufRet.f32 %7301, 1
  %7303 = fadd fast float %7302, %6609
  %7304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7305 = extractvalue %dx.types.CBufRet.f32 %7304, 2
  %7306 = extractvalue %dx.types.CBufRet.f32 %7304, 3
  %7307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7308 = extractvalue %dx.types.CBufRet.f32 %7307, 1
  %7309 = call float @dx.op.binary.f32(i32 35, float %7303, float 0.000000e+00)  ; FMax(a,b)
  %7310 = fadd fast float %7309, 0x3F10000000000000
  %7311 = fcmp fast oeq float %7308, 0.000000e+00
  br i1 %7311, label %7312, label %7379

; <label>:7312                                    ; preds = %7300
  %7313 = extractvalue %dx.types.CBufRet.f32 %7304, 1
  %7314 = extractvalue %dx.types.CBufRet.f32 %7304, 0
  %7315 = fmul fast float %7314, %6619
  %7316 = fmul fast float %7313, %6620
  %7317 = fadd fast float %7315, 5.000000e-01
  %7318 = call float @dx.op.unary.f32(i32 27, float %7317)  ; Round_ni(value)
  %7319 = fadd fast float %7316, 5.000000e-01
  %7320 = call float @dx.op.unary.f32(i32 27, float %7319)  ; Round_ni(value)
  %7321 = fsub fast float %7317, %7318
  %7322 = fsub fast float %7319, %7320
  %7323 = fadd fast float %7318, -5.000000e-01
  %7324 = fadd fast float %7320, -5.000000e-01
  %7325 = fmul fast float %7321, 2.000000e+00
  %7326 = fsub fast float 3.000000e+00, %7325
  %7327 = fadd fast float %7325, 1.000000e+00
  %7328 = fsub fast float 2.000000e+00, %7321
  %7329 = bitcast float %7326 to i32
  %7330 = sub nsw i32 2129859010, %7329
  %7331 = bitcast i32 %7330 to float
  %7332 = fmul fast float %7331, %7328
  %7333 = fadd fast float %7332, -1.000000e+00
  %7334 = bitcast float %7327 to i32
  %7335 = sub nsw i32 2129859010, %7334
  %7336 = bitcast i32 %7335 to float
  %7337 = fmul fast float %7336, %7321
  %7338 = fadd fast float %7337, 1.000000e+00
  %7339 = fmul fast float %7322, 2.000000e+00
  %7340 = fsub fast float 3.000000e+00, %7339
  %7341 = fadd fast float %7339, 1.000000e+00
  %7342 = fsub fast float 2.000000e+00, %7322
  %7343 = bitcast float %7340 to i32
  %7344 = sub nsw i32 2129859010, %7343
  %7345 = bitcast i32 %7344 to float
  %7346 = fmul fast float %7345, %7342
  %7347 = fadd fast float %7346, -1.000000e+00
  %7348 = bitcast float %7341 to i32
  %7349 = sub nsw i32 2129859010, %7348
  %7350 = bitcast i32 %7349 to float
  %7351 = fmul fast float %7350, %7322
  %7352 = fadd fast float %7351, 1.000000e+00
  %7353 = fadd fast float %7333, %7323
  %7354 = fmul fast float %7353, %7305
  %7355 = fadd fast float %7347, %7324
  %7356 = fmul fast float %7355, %7306
  %7357 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7354, float %7356, float undef, float undef, i32 0, i32 0, i32 undef, float %7310)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7358 = extractvalue %dx.types.ResRet.f32 %7357, 0
  %7359 = fmul fast float %7358, %7326
  %7360 = fadd fast float %7338, %7323
  %7361 = fmul fast float %7360, %7305
  %7362 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7361, float %7356, float undef, float undef, i32 0, i32 0, i32 undef, float %7310)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7363 = extractvalue %dx.types.ResRet.f32 %7362, 0
  %7364 = fmul fast float %7363, %7327
  %7365 = fadd fast float %7352, %7324
  %7366 = fmul fast float %7365, %7306
  %7367 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7354, float %7366, float undef, float undef, i32 0, i32 0, i32 undef, float %7310)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = fmul fast float %7368, %7326
  %7370 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %15, %dx.types.Handle %44, float %7361, float %7366, float undef, float undef, i32 0, i32 0, i32 undef, float %7310)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7371 = extractvalue %dx.types.ResRet.f32 %7370, 0
  %7372 = fmul fast float %7371, %7327
  %7373 = fadd fast float %7372, %7369
  %7374 = fmul fast float %7373, %7341
  %7375 = fadd fast float %7364, %7359
  %7376 = fmul fast float %7375, %7340
  %7377 = fadd fast float %7376, %7374
  %7378 = fmul fast float %7377, 6.250000e-02
  br label %7464

; <label>:7379                                    ; preds = %7300
  %7380 = fmul fast float %290, 0x401921FB60000000
  %7381 = call float @dx.op.unary.f32(i32 13, float %7380)  ; Sin(value)
  %7382 = call float @dx.op.unary.f32(i32 12, float %7380)  ; Cos(value)
  %7383 = fsub fast float -0.000000e+00, %7381
  br label %7384

; <label>:7384                                    ; preds = %7433, %7379
  %7385 = phi float [ 0.000000e+00, %7379 ], [ %7428, %7433 ]
  %7386 = phi float [ 0.000000e+00, %7379 ], [ %7430, %7433 ]
  %7387 = phi i32 [ 0, %7379 ], [ %7434, %7433 ]
  %7388 = mul i32 %7387, 2
  %7389 = add i32 0, %7388
  %7390 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7389
  %7391 = load float, float* %7390, align 4
  %7392 = mul i32 %7387, 2
  %7393 = add i32 1, %7392
  %7394 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7393
  %7395 = load float, float* %7394, align 4
  %7396 = fmul fast float %7391, %7382
  %7397 = call float @dx.op.tertiary.f32(i32 46, float %7395, float %7383, float %7396)  ; FMad(a,b,c)
  %7398 = fmul fast float %7391, %7381
  %7399 = call float @dx.op.tertiary.f32(i32 46, float %7395, float %7382, float %7398)  ; FMad(a,b,c)
  %7400 = fmul fast float %7397, %7308
  %7401 = fmul fast float %7399, %7308
  %7402 = fadd fast float %7400, %6619
  %7403 = fadd fast float %7401, %6620
  %7404 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %15, %dx.types.Handle %43, float %7402, float %7403, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7405 = extractvalue %dx.types.ResRet.f32 %7404, 0
  %7406 = extractvalue %dx.types.ResRet.f32 %7404, 1
  %7407 = extractvalue %dx.types.ResRet.f32 %7404, 2
  %7408 = extractvalue %dx.types.ResRet.f32 %7404, 3
  %7409 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 0
  store float %7405, float* %7409, align 4
  %7410 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 1
  store float %7406, float* %7410, align 4
  %7411 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 2
  store float %7407, float* %7411, align 4
  %7412 = getelementptr inbounds [4 x float], [4 x float]* %99, i32 0, i32 3
  store float %7408, float* %7412, align 4
  %7413 = fsub fast float %7405, %7310
  %7414 = fcmp fast olt float %7413, 0.000000e+00
  %7415 = select i1 %7414, float 0.000000e+00, float 1.000000e+00
  %7416 = fadd fast float %7415, %7385
  %7417 = fmul fast float %7415, %7413
  %7418 = fadd fast float %7417, %7386
  br label %7419

; <label>:7419                                    ; preds = %7419, %7384
  %7420 = phi i32 [ 1, %7384 ], [ %7431, %7419 ]
  %7421 = phi float [ %7418, %7384 ], [ %7430, %7419 ]
  %7422 = phi float [ %7416, %7384 ], [ %7428, %7419 ]
  %7423 = getelementptr [4 x float], [4 x float]* %99, i32 0, i32 %7420
  %7424 = load float, float* %7423, align 4, !tbaa !112, !noalias !102
  %7425 = fsub fast float %7424, %7310
  %7426 = fcmp fast olt float %7425, 0.000000e+00
  %7427 = select i1 %7426, float 0.000000e+00, float 1.000000e+00
  %7428 = fadd fast float %7427, %7422
  %7429 = fmul fast float %7427, %7425
  %7430 = fadd fast float %7429, %7421
  %7431 = add nuw nsw i32 %7420, 1
  %7432 = icmp eq i32 %7431, 4
  br i1 %7432, label %7433, label %7419, !llvm.loop !114

; <label>:7433                                    ; preds = %7419
  %7434 = add nuw nsw i32 %7387, 1
  %7435 = icmp eq i32 %7434, 8
  br i1 %7435, label %7436, label %7384, !llvm.loop !115

; <label>:7436                                    ; preds = %7433
  %7437 = fdiv fast float 1.000000e+00, %7428
  %7438 = fmul fast float %7437, %7430
  %7439 = fdiv fast float 1.000000e+00, %7310
  %7440 = fmul fast float %7438, %7439
  %7441 = call float @dx.op.unary.f32(i32 7, float %7440)  ; Saturate(value)
  %7442 = call float @dx.op.binary.f32(i32 35, float %7441, float 0.000000e+00)  ; FMax(a,b)
  %7443 = fmul fast float %7428, 3.125000e-02
  %7444 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  %7445 = fmul fast float %7444, 2.000000e+00
  %7446 = fadd fast float %7445, -1.000000e+00
  %7447 = fcmp fast ogt float %7446, 0.000000e+00
  %7448 = fcmp fast olt float %7446, 0.000000e+00
  %7449 = zext i1 %7447 to i32
  %7450 = zext i1 %7448 to i32
  %7451 = sub nsw i32 %7449, %7450
  %7452 = sitofp i32 %7451 to float
  %7453 = fmul fast float %7452, %7446
  %7454 = fsub fast float 1.000000e+00, %7453
  %7455 = fmul fast float %7454, %7454
  %7456 = fmul fast float %7455, %7454
  %7457 = fsub fast float %7454, %7456
  %7458 = fmul fast float %7457, %7442
  %7459 = fsub fast float 1.000000e+00, %7456
  %7460 = fsub fast float %7459, %7458
  %7461 = fmul fast float %7452, 5.000000e-01
  %7462 = fmul fast float %7461, %7460
  %7463 = fsub fast float 5.000000e-01, %7462
  br label %7464

; <label>:7464                                    ; preds = %7436, %7312, %7297
  %7465 = phi float [ 1.000000e+00, %7297 ], [ %7378, %7312 ], [ %7463, %7436 ]
  %7466 = fcmp fast ogt float %6725, 0.000000e+00
  br i1 %7466, label %7467, label %7785, !dx.controlflow.hints !117

; <label>:7467                                    ; preds = %7464
  %7468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7469 = extractvalue %dx.types.CBufRet.f32 %7468, 0
  %7470 = fadd fast float %7469, %6609
  %7471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7472 = extractvalue %dx.types.CBufRet.f32 %7471, 2
  %7473 = extractvalue %dx.types.CBufRet.f32 %7471, 3
  %7474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7475 = extractvalue %dx.types.CBufRet.f32 %7474, 0
  %7476 = call float @dx.op.binary.f32(i32 35, float %7470, float 0.000000e+00)  ; FMax(a,b)
  %7477 = fadd fast float %7476, 0x3F10000000000000
  %7478 = fcmp fast oeq float %7475, 0.000000e+00
  br i1 %6612, label %7479, label %7632, !dx.controlflow.hints !118

; <label>:7479                                    ; preds = %7467
  br i1 %7478, label %7480, label %7547

; <label>:7480                                    ; preds = %7479
  %7481 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7482 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7483 = fmul fast float %7482, %6601
  %7484 = fmul fast float %7481, %6605
  %7485 = fadd fast float %7483, 5.000000e-01
  %7486 = call float @dx.op.unary.f32(i32 27, float %7485)  ; Round_ni(value)
  %7487 = fadd fast float %7484, 5.000000e-01
  %7488 = call float @dx.op.unary.f32(i32 27, float %7487)  ; Round_ni(value)
  %7489 = fsub fast float %7485, %7486
  %7490 = fsub fast float %7487, %7488
  %7491 = fadd fast float %7486, -5.000000e-01
  %7492 = fadd fast float %7488, -5.000000e-01
  %7493 = fmul fast float %7489, 2.000000e+00
  %7494 = fsub fast float 3.000000e+00, %7493
  %7495 = fadd fast float %7493, 1.000000e+00
  %7496 = fsub fast float 2.000000e+00, %7489
  %7497 = bitcast float %7494 to i32
  %7498 = sub nsw i32 2129859010, %7497
  %7499 = bitcast i32 %7498 to float
  %7500 = fmul fast float %7499, %7496
  %7501 = fadd fast float %7500, -1.000000e+00
  %7502 = bitcast float %7495 to i32
  %7503 = sub nsw i32 2129859010, %7502
  %7504 = bitcast i32 %7503 to float
  %7505 = fmul fast float %7504, %7489
  %7506 = fadd fast float %7505, 1.000000e+00
  %7507 = fmul fast float %7490, 2.000000e+00
  %7508 = fsub fast float 3.000000e+00, %7507
  %7509 = fadd fast float %7507, 1.000000e+00
  %7510 = fsub fast float 2.000000e+00, %7490
  %7511 = bitcast float %7508 to i32
  %7512 = sub nsw i32 2129859010, %7511
  %7513 = bitcast i32 %7512 to float
  %7514 = fmul fast float %7513, %7510
  %7515 = fadd fast float %7514, -1.000000e+00
  %7516 = bitcast float %7509 to i32
  %7517 = sub nsw i32 2129859010, %7516
  %7518 = bitcast i32 %7517 to float
  %7519 = fmul fast float %7518, %7490
  %7520 = fadd fast float %7519, 1.000000e+00
  %7521 = fadd fast float %7501, %7491
  %7522 = fmul fast float %7521, %7472
  %7523 = fadd fast float %7515, %7492
  %7524 = fmul fast float %7523, %7473
  %7525 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7522, float %7524, float undef, float undef, i32 0, i32 0, i32 undef, float %7477)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7526 = extractvalue %dx.types.ResRet.f32 %7525, 0
  %7527 = fmul fast float %7526, %7494
  %7528 = fadd fast float %7506, %7491
  %7529 = fmul fast float %7528, %7472
  %7530 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7529, float %7524, float undef, float undef, i32 0, i32 0, i32 undef, float %7477)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7531 = extractvalue %dx.types.ResRet.f32 %7530, 0
  %7532 = fmul fast float %7531, %7495
  %7533 = fadd fast float %7520, %7492
  %7534 = fmul fast float %7533, %7473
  %7535 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7522, float %7534, float undef, float undef, i32 0, i32 0, i32 undef, float %7477)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7536 = extractvalue %dx.types.ResRet.f32 %7535, 0
  %7537 = fmul fast float %7536, %7494
  %7538 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %44, float %7529, float %7534, float undef, float undef, i32 0, i32 0, i32 undef, float %7477)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7539 = extractvalue %dx.types.ResRet.f32 %7538, 0
  %7540 = fmul fast float %7539, %7495
  %7541 = fadd fast float %7540, %7537
  %7542 = fmul fast float %7541, %7509
  %7543 = fadd fast float %7532, %7527
  %7544 = fmul fast float %7543, %7508
  %7545 = fadd fast float %7544, %7542
  %7546 = fmul fast float %7545, 6.250000e-02
  br label %7785

; <label>:7547                                    ; preds = %7479
  %7548 = fmul fast float %290, 0x401921FB60000000
  %7549 = call float @dx.op.unary.f32(i32 13, float %7548)  ; Sin(value)
  %7550 = call float @dx.op.unary.f32(i32 12, float %7548)  ; Cos(value)
  %7551 = fsub fast float -0.000000e+00, %7549
  br label %7552

; <label>:7552                                    ; preds = %7601, %7547
  %7553 = phi float [ 0.000000e+00, %7547 ], [ %7596, %7601 ]
  %7554 = phi float [ 0.000000e+00, %7547 ], [ %7598, %7601 ]
  %7555 = phi i32 [ 0, %7547 ], [ %7602, %7601 ]
  %7556 = mul i32 %7555, 2
  %7557 = add i32 0, %7556
  %7558 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7557
  %7559 = load float, float* %7558, align 4
  %7560 = mul i32 %7555, 2
  %7561 = add i32 1, %7560
  %7562 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7561
  %7563 = load float, float* %7562, align 4
  %7564 = fmul fast float %7559, %7550
  %7565 = call float @dx.op.tertiary.f32(i32 46, float %7563, float %7551, float %7564)  ; FMad(a,b,c)
  %7566 = fmul fast float %7559, %7549
  %7567 = call float @dx.op.tertiary.f32(i32 46, float %7563, float %7550, float %7566)  ; FMad(a,b,c)
  %7568 = fmul fast float %7565, %7475
  %7569 = fmul fast float %7567, %7475
  %7570 = fadd fast float %7568, %6601
  %7571 = fadd fast float %7569, %6605
  %7572 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %43, float %7570, float %7571, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7573 = extractvalue %dx.types.ResRet.f32 %7572, 0
  %7574 = extractvalue %dx.types.ResRet.f32 %7572, 1
  %7575 = extractvalue %dx.types.ResRet.f32 %7572, 2
  %7576 = extractvalue %dx.types.ResRet.f32 %7572, 3
  %7577 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 0
  store float %7573, float* %7577, align 4
  %7578 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 1
  store float %7574, float* %7578, align 4
  %7579 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 2
  store float %7575, float* %7579, align 4
  %7580 = getelementptr inbounds [4 x float], [4 x float]* %98, i32 0, i32 3
  store float %7576, float* %7580, align 4
  %7581 = fsub fast float %7573, %7477
  %7582 = fcmp fast olt float %7581, 0.000000e+00
  %7583 = select i1 %7582, float 0.000000e+00, float 1.000000e+00
  %7584 = fadd fast float %7583, %7553
  %7585 = fmul fast float %7583, %7581
  %7586 = fadd fast float %7585, %7554
  br label %7587

; <label>:7587                                    ; preds = %7587, %7552
  %7588 = phi i32 [ 1, %7552 ], [ %7599, %7587 ]
  %7589 = phi float [ %7586, %7552 ], [ %7598, %7587 ]
  %7590 = phi float [ %7584, %7552 ], [ %7596, %7587 ]
  %7591 = getelementptr [4 x float], [4 x float]* %98, i32 0, i32 %7588
  %7592 = load float, float* %7591, align 4, !tbaa !112, !noalias !102
  %7593 = fsub fast float %7592, %7477
  %7594 = fcmp fast olt float %7593, 0.000000e+00
  %7595 = select i1 %7594, float 0.000000e+00, float 1.000000e+00
  %7596 = fadd fast float %7595, %7590
  %7597 = fmul fast float %7595, %7593
  %7598 = fadd fast float %7597, %7589
  %7599 = add nuw nsw i32 %7588, 1
  %7600 = icmp eq i32 %7599, 4
  br i1 %7600, label %7601, label %7587, !llvm.loop !114

; <label>:7601                                    ; preds = %7587
  %7602 = add nuw nsw i32 %7555, 1
  %7603 = icmp eq i32 %7602, 8
  br i1 %7603, label %7604, label %7552, !llvm.loop !115

; <label>:7604                                    ; preds = %7601
  %7605 = fdiv fast float 1.000000e+00, %7596
  %7606 = fmul fast float %7605, %7598
  %7607 = fdiv fast float 1.000000e+00, %7477
  %7608 = fmul fast float %7606, %7607
  %7609 = call float @dx.op.unary.f32(i32 7, float %7608)  ; Saturate(value)
  %7610 = call float @dx.op.binary.f32(i32 35, float %7609, float 0.000000e+00)  ; FMax(a,b)
  %7611 = fmul fast float %7596, 3.125000e-02
  %7612 = call float @dx.op.unary.f32(i32 7, float %7611)  ; Saturate(value)
  %7613 = fmul fast float %7612, 2.000000e+00
  %7614 = fadd fast float %7613, -1.000000e+00
  %7615 = fcmp fast ogt float %7614, 0.000000e+00
  %7616 = fcmp fast olt float %7614, 0.000000e+00
  %7617 = zext i1 %7615 to i32
  %7618 = zext i1 %7616 to i32
  %7619 = sub nsw i32 %7617, %7618
  %7620 = sitofp i32 %7619 to float
  %7621 = fmul fast float %7620, %7614
  %7622 = fsub fast float 1.000000e+00, %7621
  %7623 = fmul fast float %7622, %7622
  %7624 = fmul fast float %7623, %7622
  %7625 = fsub fast float %7622, %7624
  %7626 = fmul fast float %7625, %7610
  %7627 = fsub fast float 1.000000e+00, %7624
  %7628 = fsub fast float %7627, %7626
  %7629 = fmul fast float %7620, 5.000000e-01
  %7630 = fmul fast float %7629, %7628
  %7631 = fsub fast float 5.000000e-01, %7630
  br label %7785

; <label>:7632                                    ; preds = %7467
  br i1 %7478, label %7633, label %7700

; <label>:7633                                    ; preds = %7632
  %7634 = extractvalue %dx.types.CBufRet.f32 %7471, 1
  %7635 = extractvalue %dx.types.CBufRet.f32 %7471, 0
  %7636 = fmul fast float %7635, %6601
  %7637 = fmul fast float %7634, %6605
  %7638 = fadd fast float %7636, 5.000000e-01
  %7639 = call float @dx.op.unary.f32(i32 27, float %7638)  ; Round_ni(value)
  %7640 = fadd fast float %7637, 5.000000e-01
  %7641 = call float @dx.op.unary.f32(i32 27, float %7640)  ; Round_ni(value)
  %7642 = fsub fast float %7638, %7639
  %7643 = fsub fast float %7640, %7641
  %7644 = fadd fast float %7639, -5.000000e-01
  %7645 = fadd fast float %7641, -5.000000e-01
  %7646 = fmul fast float %7642, 2.000000e+00
  %7647 = fsub fast float 3.000000e+00, %7646
  %7648 = fadd fast float %7646, 1.000000e+00
  %7649 = fsub fast float 2.000000e+00, %7642
  %7650 = bitcast float %7647 to i32
  %7651 = sub nsw i32 2129859010, %7650
  %7652 = bitcast i32 %7651 to float
  %7653 = fmul fast float %7652, %7649
  %7654 = fadd fast float %7653, -1.000000e+00
  %7655 = bitcast float %7648 to i32
  %7656 = sub nsw i32 2129859010, %7655
  %7657 = bitcast i32 %7656 to float
  %7658 = fmul fast float %7657, %7642
  %7659 = fadd fast float %7658, 1.000000e+00
  %7660 = fmul fast float %7643, 2.000000e+00
  %7661 = fsub fast float 3.000000e+00, %7660
  %7662 = fadd fast float %7660, 1.000000e+00
  %7663 = fsub fast float 2.000000e+00, %7643
  %7664 = bitcast float %7661 to i32
  %7665 = sub nsw i32 2129859010, %7664
  %7666 = bitcast i32 %7665 to float
  %7667 = fmul fast float %7666, %7663
  %7668 = fadd fast float %7667, -1.000000e+00
  %7669 = bitcast float %7662 to i32
  %7670 = sub nsw i32 2129859010, %7669
  %7671 = bitcast i32 %7670 to float
  %7672 = fmul fast float %7671, %7643
  %7673 = fadd fast float %7672, 1.000000e+00
  %7674 = fadd fast float %7654, %7644
  %7675 = fmul fast float %7674, %7472
  %7676 = fadd fast float %7668, %7645
  %7677 = fmul fast float %7676, %7473
  %7678 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7675, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float %7477)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7679 = extractvalue %dx.types.ResRet.f32 %7678, 0
  %7680 = fmul fast float %7679, %7647
  %7681 = fadd fast float %7659, %7644
  %7682 = fmul fast float %7681, %7472
  %7683 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7682, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float %7477)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7684 = extractvalue %dx.types.ResRet.f32 %7683, 0
  %7685 = fmul fast float %7684, %7648
  %7686 = fadd fast float %7673, %7645
  %7687 = fmul fast float %7686, %7473
  %7688 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7675, float %7687, float undef, float undef, i32 0, i32 0, i32 undef, float %7477)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7689 = extractvalue %dx.types.ResRet.f32 %7688, 0
  %7690 = fmul fast float %7689, %7647
  %7691 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %44, float %7682, float %7687, float undef, float undef, i32 0, i32 0, i32 undef, float %7477)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7692 = extractvalue %dx.types.ResRet.f32 %7691, 0
  %7693 = fmul fast float %7692, %7648
  %7694 = fadd fast float %7693, %7690
  %7695 = fmul fast float %7694, %7662
  %7696 = fadd fast float %7685, %7680
  %7697 = fmul fast float %7696, %7661
  %7698 = fadd fast float %7697, %7695
  %7699 = fmul fast float %7698, 6.250000e-02
  br label %7785

; <label>:7700                                    ; preds = %7632
  %7701 = fmul fast float %290, 0x401921FB60000000
  %7702 = call float @dx.op.unary.f32(i32 13, float %7701)  ; Sin(value)
  %7703 = call float @dx.op.unary.f32(i32 12, float %7701)  ; Cos(value)
  %7704 = fsub fast float -0.000000e+00, %7702
  br label %7705

; <label>:7705                                    ; preds = %7754, %7700
  %7706 = phi float [ 0.000000e+00, %7700 ], [ %7749, %7754 ]
  %7707 = phi float [ 0.000000e+00, %7700 ], [ %7751, %7754 ]
  %7708 = phi i32 [ 0, %7700 ], [ %7755, %7754 ]
  %7709 = mul i32 %7708, 2
  %7710 = add i32 0, %7709
  %7711 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7710
  %7712 = load float, float* %7711, align 4
  %7713 = mul i32 %7708, 2
  %7714 = add i32 1, %7713
  %7715 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7714
  %7716 = load float, float* %7715, align 4
  %7717 = fmul fast float %7712, %7703
  %7718 = call float @dx.op.tertiary.f32(i32 46, float %7716, float %7704, float %7717)  ; FMad(a,b,c)
  %7719 = fmul fast float %7712, %7702
  %7720 = call float @dx.op.tertiary.f32(i32 46, float %7716, float %7703, float %7719)  ; FMad(a,b,c)
  %7721 = fmul fast float %7718, %7475
  %7722 = fmul fast float %7720, %7475
  %7723 = fadd fast float %7721, %6601
  %7724 = fadd fast float %7722, %6605
  %7725 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %43, float %7723, float %7724, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7726 = extractvalue %dx.types.ResRet.f32 %7725, 0
  %7727 = extractvalue %dx.types.ResRet.f32 %7725, 1
  %7728 = extractvalue %dx.types.ResRet.f32 %7725, 2
  %7729 = extractvalue %dx.types.ResRet.f32 %7725, 3
  %7730 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %7726, float* %7730, align 4
  %7731 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %7727, float* %7731, align 4
  %7732 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %7728, float* %7732, align 4
  %7733 = getelementptr inbounds [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %7729, float* %7733, align 4
  %7734 = fsub fast float %7726, %7477
  %7735 = fcmp fast olt float %7734, 0.000000e+00
  %7736 = select i1 %7735, float 0.000000e+00, float 1.000000e+00
  %7737 = fadd fast float %7736, %7706
  %7738 = fmul fast float %7736, %7734
  %7739 = fadd fast float %7738, %7707
  br label %7740

; <label>:7740                                    ; preds = %7740, %7705
  %7741 = phi i32 [ 1, %7705 ], [ %7752, %7740 ]
  %7742 = phi float [ %7739, %7705 ], [ %7751, %7740 ]
  %7743 = phi float [ %7737, %7705 ], [ %7749, %7740 ]
  %7744 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %7741
  %7745 = load float, float* %7744, align 4, !tbaa !112, !noalias !102
  %7746 = fsub fast float %7745, %7477
  %7747 = fcmp fast olt float %7746, 0.000000e+00
  %7748 = select i1 %7747, float 0.000000e+00, float 1.000000e+00
  %7749 = fadd fast float %7748, %7743
  %7750 = fmul fast float %7748, %7746
  %7751 = fadd fast float %7750, %7742
  %7752 = add nuw nsw i32 %7741, 1
  %7753 = icmp eq i32 %7752, 4
  br i1 %7753, label %7754, label %7740, !llvm.loop !114

; <label>:7754                                    ; preds = %7740
  %7755 = add nuw nsw i32 %7708, 1
  %7756 = icmp eq i32 %7755, 8
  br i1 %7756, label %7757, label %7705, !llvm.loop !115

; <label>:7757                                    ; preds = %7754
  %7758 = fdiv fast float 1.000000e+00, %7749
  %7759 = fmul fast float %7758, %7751
  %7760 = fdiv fast float 1.000000e+00, %7477
  %7761 = fmul fast float %7759, %7760
  %7762 = call float @dx.op.unary.f32(i32 7, float %7761)  ; Saturate(value)
  %7763 = call float @dx.op.binary.f32(i32 35, float %7762, float 0.000000e+00)  ; FMax(a,b)
  %7764 = fmul fast float %7749, 3.125000e-02
  %7765 = call float @dx.op.unary.f32(i32 7, float %7764)  ; Saturate(value)
  %7766 = fmul fast float %7765, 2.000000e+00
  %7767 = fadd fast float %7766, -1.000000e+00
  %7768 = fcmp fast ogt float %7767, 0.000000e+00
  %7769 = fcmp fast olt float %7767, 0.000000e+00
  %7770 = zext i1 %7768 to i32
  %7771 = zext i1 %7769 to i32
  %7772 = sub nsw i32 %7770, %7771
  %7773 = sitofp i32 %7772 to float
  %7774 = fmul fast float %7773, %7767
  %7775 = fsub fast float 1.000000e+00, %7774
  %7776 = fmul fast float %7775, %7775
  %7777 = fmul fast float %7776, %7775
  %7778 = fsub fast float %7775, %7777
  %7779 = fmul fast float %7778, %7763
  %7780 = fsub fast float 1.000000e+00, %7777
  %7781 = fsub fast float %7780, %7779
  %7782 = fmul fast float %7773, 5.000000e-01
  %7783 = fmul fast float %7782, %7781
  %7784 = fsub fast float 5.000000e-01, %7783
  br label %7785

; <label>:7785                                    ; preds = %7757, %7633, %7604, %7480, %7464
  %7786 = phi float [ 1.000000e+00, %7464 ], [ %7546, %7480 ], [ %7631, %7604 ], [ %7699, %7633 ], [ %7784, %7757 ]
  %7787 = fsub fast float %7298, %7131
  %7788 = fmul fast float %7787, %6698
  %7789 = fadd fast float %7788, %7131
  %7790 = fsub fast float %7465, %7789
  %7791 = fmul fast float %7790, %6697
  %7792 = fadd fast float %7791, %7789
  %7793 = fsub fast float %7786, %7792
  %7794 = fmul fast float %7793, %6725
  %7795 = fadd fast float %7794, %7792
  %7796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7797 = extractvalue %dx.types.CBufRet.f32 %7796, 2
  %7798 = fcmp fast ogt float %7797, 0.000000e+00
  br i1 %7798, label %7799, label %7839, !dx.controlflow.hints !119

; <label>:7799                                    ; preds = %7785
  %7800 = fcmp fast ugt float %7797, 0.000000e+00
  br i1 %7800, label %7801, label %7836

; <label>:7801                                    ; preds = %7799
  %7802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7803 = extractvalue %dx.types.CBufRet.f32 %7802, 0
  %7804 = extractvalue %dx.types.CBufRet.f32 %7802, 1
  %7805 = extractvalue %dx.types.CBufRet.f32 %7802, 2
  %7806 = extractvalue %dx.types.CBufRet.f32 %7802, 3
  %7807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7808 = extractvalue %dx.types.CBufRet.f32 %7807, 0
  %7809 = extractvalue %dx.types.CBufRet.f32 %7807, 1
  %7810 = extractvalue %dx.types.CBufRet.f32 %7807, 2
  %7811 = extractvalue %dx.types.CBufRet.f32 %7807, 3
  %7812 = extractvalue %dx.types.CBufRet.f32 %7796, 0
  %7813 = extractvalue %dx.types.CBufRet.f32 %7796, 1
  %7814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7815 = extractvalue %dx.types.CBufRet.f32 %7814, 0
  %7816 = extractvalue %dx.types.CBufRet.f32 %7814, 1
  %7817 = extractvalue %dx.types.CBufRet.f32 %7814, 2
  %7818 = fadd fast float %7815, %6578
  %7819 = fadd fast float %7816, %6579
  %7820 = fadd fast float %7817, %6580
  %7821 = fmul fast float %7818, %7803
  %7822 = call float @dx.op.tertiary.f32(i32 46, float %7804, float %7819, float %7821)  ; FMad(a,b,c)
  %7823 = call float @dx.op.tertiary.f32(i32 46, float %7805, float %7820, float %7822)  ; FMad(a,b,c)
  %7824 = fadd fast float %7823, %7806
  %7825 = fmul fast float %7818, %7808
  %7826 = call float @dx.op.tertiary.f32(i32 46, float %7809, float %7819, float %7825)  ; FMad(a,b,c)
  %7827 = call float @dx.op.tertiary.f32(i32 46, float %7810, float %7820, float %7826)  ; FMad(a,b,c)
  %7828 = fadd fast float %7827, %7811
  %7829 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %11, %dx.types.Handle %39, float %7824, float %7828, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7830 = extractvalue %dx.types.ResRet.f32 %7829, 0
  %7831 = fmul fast float %7830, %7813
  %7832 = fadd fast float %7831, %7812
  %7833 = call float @dx.op.unary.f32(i32 7, float %7832)  ; Saturate(value)
  %7834 = fmul fast float %7833, %7797
  %7835 = fsub fast float 1.000000e+00, %7834
  br label %7836

; <label>:7836                                    ; preds = %7801, %7799
  %7837 = phi float [ %7835, %7801 ], [ 1.000000e+00, %7799 ]
  %7838 = fmul fast float %7837, %7795
  br label %7839

; <label>:7839                                    ; preds = %7836, %7785, %6558
  %7840 = phi float [ 1.000000e+00, %6558 ], [ %7838, %7836 ], [ %7795, %7785 ]
  %7841 = call float @dx.op.binary.f32(i32 36, float %7840, float %7840)  ; FMin(a,b)
  %7842 = call float @dx.op.binary.f32(i32 36, float %7840, float %7841)  ; FMin(a,b)
  %7843 = fcmp fast ogt float %7842, 0.000000e+00
  br i1 %7843, label %7844, label %8010, !dx.controlflow.hints !120

; <label>:7844                                    ; preds = %7839
  %7845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7846 = extractvalue %dx.types.CBufRet.f32 %7845, 0
  %7847 = extractvalue %dx.types.CBufRet.f32 %7845, 1
  %7848 = extractvalue %dx.types.CBufRet.f32 %7845, 2
  %7849 = extractvalue %dx.types.CBufRet.f32 %7845, 3
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 0
  %7852 = extractvalue %dx.types.CBufRet.f32 %7850, 1
  %7853 = extractvalue %dx.types.CBufRet.f32 %7850, 2
  %7854 = extractvalue %dx.types.CBufRet.f32 %7850, 3
  %7855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7856 = extractvalue %dx.types.CBufRet.f32 %7855, 0
  %7857 = extractvalue %dx.types.CBufRet.f32 %7855, 1
  %7858 = extractvalue %dx.types.CBufRet.f32 %7855, 2
  %7859 = extractvalue %dx.types.CBufRet.f32 %7855, 3
  %7860 = fmul fast float %7846, %6578
  %7861 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %7847, float %7860)  ; FMad(a,b,c)
  %7862 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %7848, float %7861)  ; FMad(a,b,c)
  %7863 = fadd fast float %7862, %7849
  %7864 = fmul fast float %7851, %6578
  %7865 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %7852, float %7864)  ; FMad(a,b,c)
  %7866 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %7853, float %7865)  ; FMad(a,b,c)
  %7867 = fadd fast float %7866, %7854
  %7868 = fmul fast float %7856, %6578
  %7869 = call float @dx.op.tertiary.f32(i32 46, float %6579, float %7857, float %7868)  ; FMad(a,b,c)
  %7870 = call float @dx.op.tertiary.f32(i32 46, float %6580, float %7858, float %7869)  ; FMad(a,b,c)
  %7871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7872 = extractvalue %dx.types.CBufRet.f32 %7871, 0
  %7873 = extractvalue %dx.types.CBufRet.f32 %7871, 1
  %7874 = extractvalue %dx.types.CBufRet.f32 %7871, 3
  %7875 = fmul fast float %7874, %7863
  %7876 = fmul fast float %7874, %7867
  %7877 = fadd fast float %7875, %7872
  %7878 = fadd fast float %7876, %7873
  %7879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7880 = extractvalue %dx.types.CBufRet.f32 %7879, 0
  %7881 = extractvalue %dx.types.CBufRet.f32 %7879, 1
  %7882 = fsub fast float %7877, %7880
  %7883 = fsub fast float %7878, %7881
  %7884 = fcmp fast olt float %7882, 0.000000e+00
  %7885 = fcmp fast olt float %7883, 0.000000e+00
  %7886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7887 = extractvalue %dx.types.CBufRet.f32 %7886, 0
  %7888 = extractvalue %dx.types.CBufRet.f32 %7886, 1
  %7889 = extractvalue %dx.types.CBufRet.f32 %7886, 2
  %7890 = extractvalue %dx.types.CBufRet.f32 %7886, 3
  %7891 = select i1 %7884, float %7887, float %7889
  %7892 = select i1 %7885, float %7888, float %7890
  %7893 = fmul fast float %7891, %7882
  %7894 = fmul fast float %7892, %7883
  %7895 = call float @dx.op.unary.f32(i32 6, float %7893)  ; FAbs(value)
  %7896 = call float @dx.op.unary.f32(i32 6, float %7894)  ; FAbs(value)
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 0
  %7899 = call float @dx.op.binary.f32(i32 35, float %7895, float %7896)  ; FMax(a,b)
  %7900 = fsub fast float %7898, %7899
  %7901 = call float @dx.op.unary.f32(i32 7, float %7900)  ; Saturate(value)
  %7902 = fcmp fast ogt float %7901, 0.000000e+00
  br i1 %7902, label %7903, label %7944, !dx.controlflow.hints !121

; <label>:7903                                    ; preds = %7844
  %7904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %42, float %7877, float %7878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7905 = extractvalue %dx.types.ResRet.f32 %7904, 1
  %7906 = fcmp fast ogt float %7905, 0.000000e+00
  br i1 %7906, label %7907, label %7939

; <label>:7907                                    ; preds = %7903
  %7908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %7877, float %7878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7909 = extractvalue %dx.types.ResRet.f32 %7908, 0
  %7910 = extractvalue %dx.types.ResRet.f32 %7908, 1
  %7911 = extractvalue %dx.types.ResRet.f32 %7908, 2
  %7912 = extractvalue %dx.types.ResRet.f32 %7908, 3
  %7913 = fsub fast float 1.000000e+00, %7859
  %7914 = fsub fast float %7913, %7870
  %7915 = fmul fast float %7914, 0x400921FB60000000
  %7916 = fadd fast float %7915, 0x3FF921FB60000000
  %7917 = call float @dx.op.unary.f32(i32 13, float %7916)  ; Sin(value)
  %7918 = fadd fast float %7917, -1.000000e+00
  %7919 = fmul fast float %7918, 0x3FD45F3060000000
  %7920 = fmul fast float %7914, 0x401921FB60000000
  %7921 = fadd fast float %7920, 0x400921FB60000000
  %7922 = call float @dx.op.unary.f32(i32 13, float %7921)  ; Sin(value)
  %7923 = fadd fast float %7922, 0x3E7777A5C0000000
  %7924 = fmul fast float %7923, 0x3FC45F3060000000
  %7925 = fmul fast float %7914, 0x4022D97C80000000
  %7926 = fadd fast float %7925, 0x4012D97C80000000
  %7927 = call float @dx.op.unary.f32(i32 13, float %7926)  ; Sin(value)
  %7928 = fadd fast float %7927, 1.000000e+00
  %7929 = fmul fast float %7928, 0x3FBB2995E0000000
  %7930 = fmul fast float %7914, 0x402921FB60000000
  %7931 = fadd fast float %7930, 0x401921FB60000000
  %7932 = call float @dx.op.unary.f32(i32 13, float %7931)  ; Sin(value)
  %7933 = fadd fast float %7932, 0xBE8777A5C0000000
  %7934 = fmul fast float %7933, 0x3FB45F3060000000
  %7935 = call float @dx.op.dot4.f32(i32 56, float %7909, float %7910, float %7911, float %7912, float %7919, float %7924, float %7929, float %7934)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7936 = fmul fast float %7935, 0xBFF7154760000000
  %7937 = call float @dx.op.unary.f32(i32 21, float %7936)  ; Exp(value)
  %7938 = call float @dx.op.unary.f32(i32 7, float %7937)  ; Saturate(value)
  br label %7939

; <label>:7939                                    ; preds = %7907, %7903
  %7940 = phi float [ %7938, %7907 ], [ 1.000000e+00, %7903 ]
  %7941 = fadd fast float %7940, -1.000000e+00
  %7942 = fmul fast float %7941, %7901
  %7943 = fadd fast float %7942, 1.000000e+00
  br label %7944

; <label>:7944                                    ; preds = %7939, %7844
  %7945 = phi float [ %7943, %7939 ], [ 1.000000e+00, %7844 ]
  %7946 = fmul fast float %7945, %7840
  %7947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %7948 = extractvalue %dx.types.CBufRet.f32 %7947, 0
  %7949 = extractvalue %dx.types.CBufRet.f32 %7947, 1
  %7950 = extractvalue %dx.types.CBufRet.f32 %7947, 2
  %7951 = fadd fast float %7948, %186
  %7952 = fadd fast float %7949, %187
  %7953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.f32 %7953, 1
  %7955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.CBufRet.f32 %7955, 1
  %7958 = extractvalue %dx.types.CBufRet.f32 %7955, 2
  %7959 = fsub fast float -0.000000e+00, %7951
  %7960 = fsub fast float -0.000000e+00, %7952
  %7961 = fsub fast float -0.000000e+00, %188
  %7962 = fsub fast float %7961, %7950
  %7963 = fadd fast float %7962, %7954
  %7964 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7959, float %7960, float %7963)  ; Dot3(ax,ay,az,bx,by,bz)
  %7965 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7956, float %7957, float %7958)  ; Dot3(ax,ay,az,bx,by,bz)
  %7966 = fdiv fast float 1.000000e+00, %7965
  %7967 = fmul fast float %7966, %7964
  %7968 = fmul fast float %7956, %7967
  %7969 = fmul fast float %7957, %7967
  %7970 = fadd fast float %7968, %7951
  %7971 = fadd fast float %7969, %7952
  %7972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7973 = extractvalue %dx.types.CBufRet.f32 %7972, 0
  %7974 = extractvalue %dx.types.CBufRet.f32 %7972, 1
  %7975 = fsub fast float %7970, %7973
  %7976 = fsub fast float %7971, %7974
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 2
  %7979 = extractvalue %dx.types.CBufRet.f32 %7977, 3
  %7980 = fmul fast float %7975, %7978
  %7981 = fmul fast float %7976, %7979
  %7982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7983 = extractvalue %dx.types.CBufRet.i32 %7982, 3
  %7984 = icmp eq i32 %7983, 0
  br i1 %7984, label %7990, label %7985

; <label>:7985                                    ; preds = %7944
  %7986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %41, float %7980, float %7981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7987 = extractvalue %dx.types.ResRet.f32 %7986, 0
  %7988 = extractvalue %dx.types.ResRet.f32 %7986, 1
  %7989 = extractvalue %dx.types.ResRet.f32 %7986, 2
  br label %7995

; <label>:7990                                    ; preds = %7944
  %7991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %42, float %7980, float %7981, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7992 = extractvalue %dx.types.ResRet.f32 %7991, 0
  %7993 = extractvalue %dx.types.ResRet.f32 %7991, 1
  %7994 = extractvalue %dx.types.ResRet.f32 %7991, 2
  br label %7995

; <label>:7995                                    ; preds = %7990, %7985
  %7996 = phi float [ %7987, %7985 ], [ %7992, %7990 ]
  %7997 = phi float [ %7988, %7985 ], [ %7993, %7990 ]
  %7998 = phi float [ %7989, %7985 ], [ %7994, %7990 ]
  %7999 = extractvalue %dx.types.CBufRet.f32 %7953, 2
  %8000 = fmul fast float %7999, %7996
  %8001 = extractvalue %dx.types.CBufRet.f32 %7953, 0
  %8002 = fsub fast float %7967, %8001
  %8003 = fsub fast float %8002, %8000
  %8004 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8003)  ; FMax(a,b)
  %8005 = fmul fast float %8004, %7997
  %8006 = call float @dx.op.binary.f32(i32 36, float %7998, float %8005)  ; FMin(a,b)
  %8007 = fmul fast float %8006, 0xBFF7154760000000
  %8008 = call float @dx.op.unary.f32(i32 21, float %8007)  ; Exp(value)
  %8009 = fmul fast float %7946, %8008
  br label %8010

; <label>:8010                                    ; preds = %7995, %7839
  %8011 = phi float [ %8009, %7995 ], [ %7840, %7839 ]
  %8012 = call float @dx.op.binary.f32(i32 36, float %8011, float %8011)  ; FMin(a,b)
  %8013 = call float @dx.op.binary.f32(i32 36, float %8011, float %8012)  ; FMin(a,b)
  %8014 = fcmp fast ogt float %8013, 0.000000e+00
  br i1 %8014, label %8015, label %8323, !dx.controlflow.hints !122

; <label>:8015                                    ; preds = %8010
  %8016 = bitcast i32 %5680 to float
  %8017 = fmul fast float %8011, %6570
  %8018 = fmul fast float %8011, %6571
  %8019 = fmul fast float %8011, %6572
  %8020 = fsub fast float %6559, %206
  %8021 = fsub fast float %6560, %207
  %8022 = fsub fast float %6561, %208
  %8023 = call float @dx.op.dot3.f32(i32 55, float %8020, float %8021, float %8022, float %8020, float %8021, float %8022)  ; Dot3(ax,ay,az,bx,by,bz)
  %8024 = call float @dx.op.unary.f32(i32 25, float %8023)  ; Rsqrt(value)
  %8025 = fmul fast float %8024, %8020
  %8026 = fmul fast float %8024, %8021
  %8027 = fmul fast float %8024, %8022
  %8028 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %8029 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %8025, float %8026, float %8027)  ; Dot3(ax,ay,az,bx,by,bz)
  %8030 = call float @dx.op.unary.f32(i32 7, float %8028)  ; Saturate(value)
  %8031 = fmul fast float %8030, %8030
  %8032 = fmul fast float %8031, %8016
  %8033 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8034 = fmul fast float %8033, %8030
  %8035 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %8025, float %8026, float %8027)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = fmul fast float %8035, %8035
  %8037 = call float @dx.op.unary.f32(i32 6, float %8028)  ; FAbs(value)
  %8038 = fsub fast float 1.000000e+00, %5674
  %8039 = fmul fast float %5656, %5656
  %8040 = fmul fast float %8039, %8038
  %8041 = fadd fast float %8040, %5674
  %8042 = bitcast float %8041 to i32
  %8043 = ashr i32 %8042, 1
  %8044 = add nsw i32 %8043, 532487669
  %8045 = bitcast i32 %8044 to float
  %8046 = fadd fast float %8045, %5656
  %8047 = fmul fast float %5674, %8036
  %8048 = fsub fast float 1.000000e+00, %8036
  %8049 = fadd fast float %8048, %8047
  %8050 = fmul fast float %8037, %8037
  %8051 = fmul fast float %8050, %8038
  %8052 = fadd fast float %8051, %5674
  %8053 = bitcast float %8052 to i32
  %8054 = ashr i32 %8053, 1
  %8055 = add nsw i32 %8054, 532487669
  %8056 = bitcast i32 %8055 to float
  %8057 = fadd fast float %8056, %8037
  %8058 = fmul fast float %8049, %8049
  %8059 = fmul fast float %8058, %8046
  %8060 = fmul fast float %8059, %8057
  %8061 = fdiv fast float 0x3FF0A00000000000, %8060
  %8062 = fmul fast float %8061, %5674
  %8063 = fmul fast float %5926, 0x3FF9999980000000
  %8064 = fsub fast float 5.000000e+00, %8063
  %8065 = call float @dx.op.unary.f32(i32 6, float %8029)  ; FAbs(value)
  %8066 = fsub fast float 1.000000e+00, %8065
  %8067 = fmul fast float %5926, 0x41D9660740000000
  %8068 = fadd fast float %8067, 0xC1EFBF8940000000
  %8069 = bitcast float %8066 to i32
  %8070 = sitofp i32 %8069 to float
  %8071 = fmul fast float %8070, %8064
  %8072 = fadd fast float %8068, %8071
  %8073 = fptosi float %8072 to i32
  %8074 = bitcast i32 %8073 to float
  %8075 = fsub fast float 1.000000e+00, %5643
  %8076 = fsub fast float 1.000000e+00, %5644
  %8077 = fsub fast float 1.000000e+00, %5654
  %8078 = fmul fast float %8074, %8075
  %8079 = fmul fast float %8074, %8076
  %8080 = fmul fast float %8074, %8077
  %8081 = fadd fast float %8078, %5643
  %8082 = fadd fast float %8079, %5644
  %8083 = fadd fast float %8080, %5654
  br i1 %5949, label %8084, label %8107

; <label>:8084                                    ; preds = %8015
  %8085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4688, float %8065, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 0
  %8087 = extractvalue %dx.types.ResRet.f32 %8085, 1
  %8088 = extractvalue %dx.types.ResRet.f32 %8085, 2
  %8089 = fadd fast float %8086, -5.000000e-01
  %8090 = fadd fast float %8087, -5.000000e-01
  %8091 = fadd fast float %8088, -5.000000e-01
  %8092 = fmul fast float %5643, 4.000000e+00
  %8093 = fmul fast float %8092, %8075
  %8094 = fmul fast float %8093, %8089
  %8095 = fmul fast float %5644, 4.000000e+00
  %8096 = fmul fast float %8095, %8076
  %8097 = fmul fast float %8096, %8090
  %8098 = fmul fast float %5654, 4.000000e+00
  %8099 = fmul fast float %8098, %8077
  %8100 = fmul fast float %8099, %8091
  %8101 = fadd fast float %8094, %8081
  %8102 = fadd fast float %8097, %8082
  %8103 = fadd fast float %8100, %8083
  %8104 = call float @dx.op.unary.f32(i32 7, float %8101)  ; Saturate(value)
  %8105 = call float @dx.op.unary.f32(i32 7, float %8102)  ; Saturate(value)
  %8106 = call float @dx.op.unary.f32(i32 7, float %8103)  ; Saturate(value)
  br label %8107

; <label>:8107                                    ; preds = %8084, %8015
  %8108 = phi float [ %8104, %8084 ], [ %8081, %8015 ]
  %8109 = phi float [ %8105, %8084 ], [ %8082, %8015 ]
  %8110 = phi float [ %8106, %8084 ], [ %8083, %8015 ]
  %8111 = fmul fast float %8028, 9.843750e-01
  %8112 = fadd fast float %8111, 7.812500e-03
  %8113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %8112, float %5930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8114 = extractvalue %dx.types.ResRet.f32 %8113, 0
  %8115 = extractvalue %dx.types.ResRet.f32 %8113, 1
  %8116 = extractvalue %dx.types.ResRet.f32 %8113, 2
  %8117 = extractvalue %dx.types.ResRet.f32 %8113, 3
  %8118 = fsub fast float %8116, %8114
  %8119 = fsub fast float %8117, %8115
  %8120 = fmul fast float %8118, %5936
  %8121 = fmul fast float %8119, %5936
  %8122 = fadd fast float %8120, %8114
  %8123 = fadd fast float %8121, %8115
  %8124 = fmul fast float %8122, %5643
  %8125 = fmul fast float %8122, %5644
  %8126 = fmul fast float %8122, %5654
  %8127 = fadd fast float %8124, %8123
  %8128 = fadd fast float %8125, %8123
  %8129 = fadd fast float %8126, %8123
  br i1 %5949, label %8130, label %8153

; <label>:8130                                    ; preds = %8107
  %8131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4688, float %8028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8132 = extractvalue %dx.types.ResRet.f32 %8131, 0
  %8133 = extractvalue %dx.types.ResRet.f32 %8131, 1
  %8134 = extractvalue %dx.types.ResRet.f32 %8131, 2
  %8135 = fadd fast float %8132, -5.000000e-01
  %8136 = fadd fast float %8133, -5.000000e-01
  %8137 = fadd fast float %8134, -5.000000e-01
  %8138 = fmul fast float %5643, 4.000000e+00
  %8139 = fmul fast float %8138, %8075
  %8140 = fmul fast float %8139, %8135
  %8141 = fmul fast float %5644, 4.000000e+00
  %8142 = fmul fast float %8141, %8076
  %8143 = fmul fast float %8142, %8136
  %8144 = fmul fast float %5654, 4.000000e+00
  %8145 = fmul fast float %8144, %8077
  %8146 = fmul fast float %8145, %8137
  %8147 = fadd fast float %8140, %8127
  %8148 = fadd fast float %8143, %8128
  %8149 = fadd fast float %8146, %8129
  %8150 = call float @dx.op.unary.f32(i32 7, float %8147)  ; Saturate(value)
  %8151 = call float @dx.op.unary.f32(i32 7, float %8148)  ; Saturate(value)
  %8152 = call float @dx.op.unary.f32(i32 7, float %8149)  ; Saturate(value)
  br label %8153

; <label>:8153                                    ; preds = %8130, %8107
  %8154 = phi float [ %8150, %8130 ], [ %8127, %8107 ]
  %8155 = phi float [ %8151, %8130 ], [ %8128, %8107 ]
  %8156 = phi float [ %8152, %8130 ], [ %8129, %8107 ]
  %8157 = call float @dx.op.binary.f32(i32 35, float %8155, float %8156)  ; FMax(a,b)
  %8158 = call float @dx.op.binary.f32(i32 35, float %8154, float %8157)  ; FMax(a,b)
  %8159 = fsub fast float 1.000000e+00, %8158
  %8160 = call float @dx.op.binary.f32(i32 35, float %8037, float 0x3F50624DE0000000)  ; FMax(a,b)
  %8161 = fdiv fast float %4020, %8160
  %8162 = fmul fast float %6468, %8161
  %8163 = fmul fast float %6470, %8161
  %8164 = fmul fast float %6472, %8161
  %8165 = call float @dx.op.unary.f32(i32 21, float %8162)  ; Exp(value)
  %8166 = call float @dx.op.unary.f32(i32 21, float %8163)  ; Exp(value)
  %8167 = call float @dx.op.unary.f32(i32 21, float %8164)  ; Exp(value)
  %8168 = call float @dx.op.unary.f32(i32 7, float %8165)  ; Saturate(value)
  %8169 = call float @dx.op.unary.f32(i32 7, float %8166)  ; Saturate(value)
  %8170 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  %8171 = select i1 %6465, float %8168, float 0.000000e+00
  %8172 = select i1 %6466, float %8169, float 0.000000e+00
  %8173 = select i1 %6467, float %8170, float 0.000000e+00
  %8174 = fsub fast float -0.000000e+00, %5646
  %8175 = fsub fast float -0.000000e+00, %5647
  %8176 = fsub fast float -0.000000e+00, %5648
  %8177 = call float @dx.op.dot3.f32(i32 55, float %6559, float %6560, float %6561, float %8174, float %8175, float %8176)  ; Dot3(ax,ay,az,bx,by,bz)
  %8178 = call float @dx.op.unary.f32(i32 7, float %8177)  ; Saturate(value)
  %8179 = fmul fast float %8178, 9.843750e-01
  %8180 = fadd fast float %8179, 7.812500e-03
  %8181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %42, float %8180, float %5930, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8182 = extractvalue %dx.types.ResRet.f32 %8181, 0
  %8183 = extractvalue %dx.types.ResRet.f32 %8181, 1
  %8184 = extractvalue %dx.types.ResRet.f32 %8181, 2
  %8185 = extractvalue %dx.types.ResRet.f32 %8181, 3
  %8186 = fsub fast float %8184, %8182
  %8187 = fsub fast float %8185, %8183
  %8188 = fmul fast float %8186, %5936
  %8189 = fmul fast float %8187, %5936
  %8190 = fadd fast float %8188, %8182
  %8191 = fadd fast float %8189, %8183
  %8192 = fmul fast float %8190, %5643
  %8193 = fmul fast float %8190, %5644
  %8194 = fmul fast float %8190, %5654
  %8195 = fadd fast float %8192, %8191
  %8196 = fadd fast float %8193, %8191
  %8197 = fadd fast float %8194, %8191
  br i1 %5949, label %8198, label %8221

; <label>:8198                                    ; preds = %8153
  %8199 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %4688, float %8178, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8200 = extractvalue %dx.types.ResRet.f32 %8199, 0
  %8201 = extractvalue %dx.types.ResRet.f32 %8199, 1
  %8202 = extractvalue %dx.types.ResRet.f32 %8199, 2
  %8203 = fadd fast float %8200, -5.000000e-01
  %8204 = fadd fast float %8201, -5.000000e-01
  %8205 = fadd fast float %8202, -5.000000e-01
  %8206 = fmul fast float %5643, 4.000000e+00
  %8207 = fmul fast float %8206, %8075
  %8208 = fmul fast float %8207, %8203
  %8209 = fmul fast float %5644, 4.000000e+00
  %8210 = fmul fast float %8209, %8076
  %8211 = fmul fast float %8210, %8204
  %8212 = fmul fast float %5654, 4.000000e+00
  %8213 = fmul fast float %8212, %8077
  %8214 = fmul fast float %8213, %8205
  %8215 = fadd fast float %8208, %8195
  %8216 = fadd fast float %8211, %8196
  %8217 = fadd fast float %8214, %8197
  %8218 = call float @dx.op.unary.f32(i32 7, float %8215)  ; Saturate(value)
  %8219 = call float @dx.op.unary.f32(i32 7, float %8216)  ; Saturate(value)
  %8220 = call float @dx.op.unary.f32(i32 7, float %8217)  ; Saturate(value)
  br label %8221

; <label>:8221                                    ; preds = %8198, %8153
  %8222 = phi float [ %8218, %8198 ], [ %8195, %8153 ]
  %8223 = phi float [ %8219, %8198 ], [ %8196, %8153 ]
  %8224 = phi float [ %8220, %8198 ], [ %8197, %8153 ]
  %8225 = call float @dx.op.binary.f32(i32 35, float %8223, float %8224)  ; FMax(a,b)
  %8226 = call float @dx.op.binary.f32(i32 35, float %8222, float %8225)  ; FMax(a,b)
  %8227 = fsub fast float 1.000000e+00, %8226
  %8228 = fmul fast float %5671, %6532
  %8229 = fadd fast float %6534, %8228
  %8230 = call float @dx.op.unary.f32(i32 7, float %8229)  ; Saturate(value)
  %8231 = fsub fast float %6559, %5662
  %8232 = fsub fast float %6560, %5663
  %8233 = fsub fast float %6561, %5664
  %8234 = call float @dx.op.dot3.f32(i32 55, float %8231, float %8232, float %8233, float %8231, float %8232, float %8233)  ; Dot3(ax,ay,az,bx,by,bz)
  %8235 = call float @dx.op.unary.f32(i32 25, float %8234)  ; Rsqrt(value)
  %8236 = fmul fast float %8235, %8231
  %8237 = fmul fast float %8235, %8232
  %8238 = fmul fast float %8235, %8233
  %8239 = call float @dx.op.dot3.f32(i32 55, float %8174, float %8175, float %8176, float %8236, float %8237, float %8238)  ; Dot3(ax,ay,az,bx,by,bz)
  %8240 = fmul fast float %8239, %8239
  %8241 = call float @dx.op.unary.f32(i32 6, float %8178)  ; FAbs(value)
  %8242 = call float @dx.op.binary.f32(i32 35, float %8230, float 0x3F847AE140000000)  ; FMax(a,b)
  %8243 = fmul fast float %8242, %8242
  %8244 = fmul fast float %8243, %8243
  %8245 = fsub fast float 1.000000e+00, %8244
  %8246 = fmul fast float %8039, %8245
  %8247 = fadd fast float %8246, %8244
  %8248 = bitcast float %8247 to i32
  %8249 = ashr i32 %8248, 1
  %8250 = add nsw i32 %8249, 532487669
  %8251 = bitcast i32 %8250 to float
  %8252 = fadd fast float %8251, %5656
  %8253 = fmul fast float %8244, %8240
  %8254 = fsub fast float 1.000000e+00, %8240
  %8255 = fadd fast float %8254, %8253
  %8256 = fmul fast float %8241, %8241
  %8257 = fmul fast float %8256, %8245
  %8258 = fadd fast float %8257, %8244
  %8259 = bitcast float %8258 to i32
  %8260 = ashr i32 %8259, 1
  %8261 = add nsw i32 %8260, 532487669
  %8262 = bitcast i32 %8261 to float
  %8263 = fadd fast float %8262, %8241
  %8264 = fmul fast float %8255, %8255
  %8265 = fmul fast float %8264, %8252
  %8266 = fmul fast float %8265, %8263
  %8267 = fdiv fast float 0x3FF0A00000000000, %8266
  %8268 = fmul fast float %8267, %8244
  %8269 = fmul fast float %8178, %8171
  %8270 = fmul fast float %8178, %8172
  %8271 = fmul fast float %8178, %8173
  %8272 = fmul fast float %8269, %8227
  %8273 = fmul fast float %8272, %8268
  %8274 = fmul fast float %8270, %8227
  %8275 = fmul fast float %8274, %8268
  %8276 = fmul fast float %8271, %8227
  %8277 = fmul fast float %8276, %8268
  %8278 = fmul fast float %8108, %8062
  %8279 = fmul fast float %8109, %8062
  %8280 = fmul fast float %8110, %8062
  %8281 = fsub fast float 1.000000e+00, %8029
  %8282 = bitcast float %8281 to i32
  %8283 = sitofp i32 %8282 to float
  %8284 = fmul fast float %8283, 5.000000e+00
  %8285 = fadd fast float %8284, 0xC1EFBF8940000000
  %8286 = fptosi float %8285 to i32
  %8287 = bitcast i32 %8286 to float
  %8288 = fmul fast float %8287, %4689
  %8289 = fmul fast float %8159, %8288
  %8290 = fmul fast float %8289, %6460
  %8291 = fmul fast float %8289, %6461
  %8292 = fmul fast float %8289, %6462
  %8293 = fadd fast float %8290, %8278
  %8294 = fadd fast float %8291, %8279
  %8295 = fadd fast float %8292, %8280
  %8296 = fmul fast float %8293, %8034
  %8297 = fmul fast float %8294, %8034
  %8298 = fmul fast float %8295, %8034
  %8299 = fmul fast float %8034, %8017
  %8300 = fmul fast float %8299, %8159
  %8301 = fmul fast float %8034, %8018
  %8302 = fmul fast float %8301, %8159
  %8303 = fmul fast float %8034, %8019
  %8304 = fmul fast float %8303, %8159
  %8305 = fadd fast float %8296, %8273
  %8306 = fadd fast float %8297, %8275
  %8307 = fadd fast float %8298, %8277
  %8308 = fmul fast float %8305, %8017
  %8309 = fmul fast float %8306, %8018
  %8310 = fmul fast float %8307, %8019
  %8311 = fadd fast float %8300, %6549
  %8312 = fmul fast float %8311, %4714
  %8313 = fadd fast float %8302, %6551
  %8314 = fmul fast float %8313, %4714
  %8315 = fadd fast float %8304, %6553
  %8316 = fmul fast float %8315, %4714
  %8317 = fadd fast float %8308, %6513
  %8318 = fmul fast float %8317, %4714
  %8319 = fadd fast float %8309, %6516
  %8320 = fmul fast float %8319, %4714
  %8321 = fadd fast float %8310, %6519
  %8322 = fmul fast float %8321, %4714
  br label %8323

; <label>:8323                                    ; preds = %8221, %8010, %6443
  %8324 = phi float [ %6514, %6443 ], [ %6514, %8010 ], [ %8318, %8221 ]
  %8325 = phi float [ %6517, %6443 ], [ %6517, %8010 ], [ %8320, %8221 ]
  %8326 = phi float [ %6520, %6443 ], [ %6520, %8010 ], [ %8322, %8221 ]
  %8327 = phi float [ %6550, %6443 ], [ %6550, %8010 ], [ %8312, %8221 ]
  %8328 = phi float [ %6552, %6443 ], [ %6552, %8010 ], [ %8314, %8221 ]
  %8329 = phi float [ %6554, %6443 ], [ %6554, %8010 ], [ %8316, %8221 ]
  %8330 = fmul fast float %4714, %6489
  %8331 = fsub fast float -0.000000e+00, %8330
  %8332 = fmul fast float %4714, %6490
  %8333 = fsub fast float -0.000000e+00, %8332
  %8334 = fmul fast float %4714, %6491
  %8335 = fsub fast float -0.000000e+00, %8334
  %8336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.f32 %8336, 0
  %8338 = fmul fast float %8337, %6495
  %8339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8340 = extractvalue %dx.types.CBufRet.f32 %8339, 3
  %8341 = fsub fast float 1.000000e+00, %4692
  %8342 = call float @dx.op.unary.f32(i32 7, float %8341)  ; Saturate(value)
  %8343 = fadd fast float %8329, %4691
  %8344 = fmul fast float %8343, %4692
  %8345 = fmul fast float %8342, %8340
  %8346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %8347 = extractvalue %dx.types.ResRet.i32 %8346, 3
  %8348 = bitcast i32 %8347 to float
  %8349 = fsub fast float %8331, %8348
  %8350 = fsub fast float %8333, %8348
  %8351 = fsub fast float %8335, %8348
  %8352 = fmul fast float %8349, %220
  %8353 = fmul fast float %8350, %220
  %8354 = fmul fast float %8351, %220
  %8355 = fadd fast float %8352, %8348
  %8356 = fadd fast float %8353, %8348
  %8357 = fadd fast float %8354, %8348
  %8358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 42)  ; CBufferLoadLegacy(handle,regIndex)
  %8359 = extractvalue %dx.types.CBufRet.f32 %8358, 3
  %8360 = fmul fast float %8327, %5649
  %8361 = fmul fast float %8328, %5650
  %8362 = fmul fast float %8329, %5651
  %8363 = fcmp fast ogt float %94, %240
  %8364 = and i1 %8363, %4782
  %8365 = or i1 %4861, %8364
  %8366 = icmp eq i32 %4781, 2
  %8367 = fcmp fast ole float %94, %240
  %8368 = and i1 %8367, %8366
  %8369 = or i1 %8368, %8365
  br i1 %8364, label %8370, label %8627

; <label>:8370                                    ; preds = %8323
  %8371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.f32 %8371, 2
  %8373 = extractvalue %dx.types.CBufRet.f32 %8371, 3
  %8374 = fmul fast float %8372, %107
  %8375 = fmul fast float %8373, %108
  %8376 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8377 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8378 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8376, float %8377, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8379 = extractvalue %dx.types.ResRet.f32 %8378, 0
  %8380 = extractvalue %dx.types.ResRet.f32 %8378, 1
  %8381 = extractvalue %dx.types.ResRet.f32 %8378, 2
  %8382 = extractvalue %dx.types.ResRet.f32 %8378, 3
  %8383 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %8376, float %8377, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8384 = extractvalue %dx.types.ResRet.f32 %8383, 0
  %8385 = extractvalue %dx.types.ResRet.f32 %8383, 1
  %8386 = extractvalue %dx.types.ResRet.f32 %8383, 2
  %8387 = extractvalue %dx.types.ResRet.f32 %8383, 3
  %8388 = call float @dx.op.binary.f32(i32 35, float %8380, float %8381)  ; FMax(a,b)
  %8389 = call float @dx.op.binary.f32(i32 35, float %8379, float %8388)  ; FMax(a,b)
  %8390 = call float @dx.op.binary.f32(i32 35, float %8389, float %8382)  ; FMax(a,b)
  %8391 = call float @dx.op.binary.f32(i32 36, float %8385, float %8386)  ; FMin(a,b)
  %8392 = call float @dx.op.binary.f32(i32 36, float %8384, float %8391)  ; FMin(a,b)
  %8393 = call float @dx.op.binary.f32(i32 36, float %8392, float %8387)  ; FMin(a,b)
  %8394 = fmul fast float %8390, 2.550000e+02
  %8395 = fadd fast float %8394, 0x3F70101020000000
  %8396 = fptoui float %8395 to i32
  %8397 = fmul fast float %8393, 2.550000e+02
  %8398 = fadd fast float %8397, 0x3F70101020000000
  %8399 = fptoui float %8398 to i32
  %8400 = icmp ult i32 %8396, %8399
  br i1 %8400, label %8401, label %8569

; <label>:8401                                    ; preds = %8370
  %8402 = fcmp fast ogt float %93, 9.843750e-01
  %8403 = fadd fast float %94, -4.000000e+00
  %8404 = select i1 %8402, float -4.000000e+00, float %8403
  %8405 = call float @dx.op.binary.f32(i32 35, float %8404, float 0.000000e+00)  ; FMax(a,b)
  %8406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8407 = extractvalue %dx.types.CBufRet.f32 %8406, 0
  %8408 = fadd fast float %8407, %8405
  %8409 = extractvalue %dx.types.CBufRet.f32 %8406, 2
  %8410 = fmul fast float %8408, %8409
  %8411 = call float @dx.op.unary.f32(i32 23, float %8410)  ; Log(value)
  %8412 = extractvalue %dx.types.CBufRet.f32 %8406, 3
  %8413 = fmul fast float %8412, %8411
  %8414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8415 = extractvalue %dx.types.CBufRet.f32 %8414, 2
  %8416 = fmul fast float %8413, %8415
  %8417 = call float @dx.op.unary.f32(i32 7, float %8416)  ; Saturate(value)
  %8418 = uitofp i32 %8396 to float
  %8419 = uitofp i32 %8399 to float
  %8420 = fadd fast float %8418, 5.000000e-01
  %8421 = fadd fast float %8419, 5.000000e-01
  %8422 = fmul fast float %8415, %8420
  %8423 = fmul fast float %8415, %8421
  %8424 = fadd fast float %8422, 0x3F0FFB4800000000
  %8425 = fadd fast float %8423, 0xBF0FFB4800000000
  %8426 = call float @dx.op.binary.f32(i32 35, float %8417, float %8424)  ; FMax(a,b)
  %8427 = call float @dx.op.binary.f32(i32 36, float %8426, float %8425)  ; FMin(a,b)
  %8428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8429 = extractvalue %dx.types.CBufRet.f32 %8428, 1
  %8430 = extractvalue %dx.types.CBufRet.f32 %8428, 2
  %8431 = extractvalue %dx.types.CBufRet.f32 %8428, 0
  %8432 = fmul fast float %8429, %8427
  %8433 = fadd fast float %8431, %8432
  %8434 = fadd fast float %8431, %8430
  %8435 = fsub fast float %8429, %8430
  %8436 = fadd fast float %8435, %8431
  %8437 = call float @dx.op.binary.f32(i32 35, float %8433, float %8434)  ; FMax(a,b)
  %8438 = call float @dx.op.binary.f32(i32 36, float %8437, float %8436)  ; FMin(a,b)
  %8439 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %8376, float %8377, float %8438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8440 = extractvalue %dx.types.ResRet.f32 %8439, 0
  %8441 = extractvalue %dx.types.ResRet.f32 %8439, 1
  %8442 = extractvalue %dx.types.ResRet.f32 %8439, 2
  %8443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.i32 %8443, 0
  %8445 = extractvalue %dx.types.CBufRet.i32 %8443, 1
  %8446 = uitofp i32 %8444 to float
  %8447 = uitofp i32 %8445 to float
  %8448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %8449 = extractvalue %dx.types.CBufRet.f32 %8448, 0
  %8450 = extractvalue %dx.types.CBufRet.f32 %8448, 1
  %8451 = fmul fast float %8446, %8376
  %8452 = fmul fast float %8447, %8377
  %8453 = fadd fast float %8451, -5.000000e-01
  %8454 = fadd fast float %8452, -5.000000e-01
  %8455 = call float @dx.op.unary.f32(i32 22, float %8453)  ; Frc(value)
  %8456 = call float @dx.op.unary.f32(i32 22, float %8454)  ; Frc(value)
  %8457 = fmul fast float %8455, %8455
  %8458 = fmul fast float %8457, %8455
  %8459 = fsub fast float 3.000000e+00, %8455
  %8460 = fmul fast float %8457, %8459
  %8461 = fmul fast float %8455, 3.000000e+00
  %8462 = fmul fast float %8458, 3.000000e+00
  %8463 = fmul fast float %8457, 6.000000e+00
  %8464 = fsub fast float %8462, %8463
  %8465 = fadd fast float %8464, 4.000000e+00
  %8466 = fmul fast float %8465, 0x3FC5555560000000
  %8467 = fmul fast float %8458, -3.000000e+00
  %8468 = fadd fast float %8457, %8455
  %8469 = fmul fast float %8468, 3.000000e+00
  %8470 = fadd fast float %8467, 1.000000e+00
  %8471 = fadd fast float %8470, %8469
  %8472 = fmul fast float %8458, 0x3FC5555560000000
  %8473 = fmul fast float %8456, %8456
  %8474 = fmul fast float %8473, %8456
  %8475 = fsub fast float 3.000000e+00, %8456
  %8476 = fmul fast float %8473, %8475
  %8477 = fmul fast float %8456, 3.000000e+00
  %8478 = fmul fast float %8474, 3.000000e+00
  %8479 = fmul fast float %8473, 6.000000e+00
  %8480 = fsub fast float %8478, %8479
  %8481 = fadd fast float %8480, 4.000000e+00
  %8482 = fmul fast float %8481, 0x3FC5555560000000
  %8483 = fmul fast float %8474, -3.000000e+00
  %8484 = fadd fast float %8473, %8456
  %8485 = fmul fast float %8484, 3.000000e+00
  %8486 = fadd fast float %8483, 1.000000e+00
  %8487 = fadd fast float %8486, %8485
  %8488 = fmul fast float %8474, 0x3FC5555560000000
  %8489 = fadd fast float %8455, 1.000000e+00
  %8490 = fsub fast float 1.000000e+00, %8461
  %8491 = fadd fast float %8490, %8460
  %8492 = fadd fast float %8491, %8465
  %8493 = fmul fast float %8492, 0x3FC5555560000000
  %8494 = fdiv fast float %8466, %8493
  %8495 = fsub fast float %8489, %8494
  %8496 = fsub fast float 1.000000e+00, %8455
  %8497 = fadd fast float %8471, %8458
  %8498 = fmul fast float %8497, 0x3FC5555560000000
  %8499 = fdiv fast float %8472, %8498
  %8500 = fadd fast float %8496, %8499
  %8501 = fadd fast float %8456, 1.000000e+00
  %8502 = fsub fast float 1.000000e+00, %8477
  %8503 = fadd fast float %8502, %8476
  %8504 = fadd fast float %8503, %8481
  %8505 = fmul fast float %8504, 0x3FC5555560000000
  %8506 = fdiv fast float %8482, %8505
  %8507 = fsub fast float %8501, %8506
  %8508 = fsub fast float 1.000000e+00, %8456
  %8509 = fadd fast float %8487, %8474
  %8510 = fmul fast float %8509, 0x3FC5555560000000
  %8511 = fdiv fast float %8488, %8510
  %8512 = fadd fast float %8511, %8508
  %8513 = fmul fast float %8495, %8449
  %8514 = fsub fast float %8376, %8513
  %8515 = fmul fast float %8500, %8449
  %8516 = fadd fast float %8515, %8376
  %8517 = fmul fast float %8512, %8450
  %8518 = fadd fast float %8517, %8377
  %8519 = fmul fast float %8507, %8450
  %8520 = fsub fast float %8377, %8519
  %8521 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8514, float %8520, float %8438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8522 = extractvalue %dx.types.ResRet.f32 %8521, 0
  %8523 = extractvalue %dx.types.ResRet.f32 %8521, 1
  %8524 = extractvalue %dx.types.ResRet.f32 %8521, 2
  %8525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8516, float %8520, float %8438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8526 = extractvalue %dx.types.ResRet.f32 %8525, 0
  %8527 = extractvalue %dx.types.ResRet.f32 %8525, 1
  %8528 = extractvalue %dx.types.ResRet.f32 %8525, 2
  %8529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8514, float %8518, float %8438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8530 = extractvalue %dx.types.ResRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.ResRet.f32 %8529, 1
  %8532 = extractvalue %dx.types.ResRet.f32 %8529, 2
  %8533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %8516, float %8518, float %8438, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8534 = extractvalue %dx.types.ResRet.f32 %8533, 0
  %8535 = extractvalue %dx.types.ResRet.f32 %8533, 1
  %8536 = extractvalue %dx.types.ResRet.f32 %8533, 2
  %8537 = fsub fast float %8530, %8522
  %8538 = fsub fast float %8531, %8523
  %8539 = fsub fast float %8532, %8524
  %8540 = fmul fast float %8537, %8510
  %8541 = fmul fast float %8538, %8510
  %8542 = fmul fast float %8539, %8510
  %8543 = fadd fast float %8540, %8522
  %8544 = fadd fast float %8541, %8523
  %8545 = fadd fast float %8542, %8524
  %8546 = fsub fast float %8534, %8526
  %8547 = fsub fast float %8535, %8527
  %8548 = fsub fast float %8536, %8528
  %8549 = fmul fast float %8546, %8510
  %8550 = fmul fast float %8547, %8510
  %8551 = fmul fast float %8548, %8510
  %8552 = fsub fast float %8526, %8543
  %8553 = fadd fast float %8552, %8549
  %8554 = fsub fast float %8527, %8544
  %8555 = fadd fast float %8554, %8550
  %8556 = fsub fast float %8528, %8545
  %8557 = fadd fast float %8556, %8551
  %8558 = fmul fast float %8553, %8498
  %8559 = fmul fast float %8555, %8498
  %8560 = fmul fast float %8557, %8498
  %8561 = fadd fast float %8558, %8543
  %8562 = fadd fast float %8559, %8544
  %8563 = fadd fast float %8560, %8545
  %8564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8565 = extractvalue %dx.types.CBufRet.f32 %8564, 1
  %8566 = fmul fast float %8561, %8565
  %8567 = fmul fast float %8562, %8565
  %8568 = fmul fast float %8563, %8565
  br label %8569

; <label>:8569                                    ; preds = %8401, %8370
  %8570 = phi float [ %8440, %8401 ], [ 1.000000e+00, %8370 ]
  %8571 = phi float [ %8441, %8401 ], [ 1.000000e+00, %8370 ]
  %8572 = phi float [ %8442, %8401 ], [ 1.000000e+00, %8370 ]
  %8573 = phi float [ %8566, %8401 ], [ 0.000000e+00, %8370 ]
  %8574 = phi float [ %8567, %8401 ], [ 0.000000e+00, %8370 ]
  %8575 = phi float [ %8568, %8401 ], [ 0.000000e+00, %8370 ]
  %8576 = fmul fast float %8573, %8355
  %8577 = fmul fast float %8574, %8356
  %8578 = fmul fast float %8575, %8357
  %8579 = call float @dx.op.dot3.f32(i32 55, float %8570, float %8571, float %8572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8580 = call float @dx.op.dot3.f32(i32 55, float %8576, float %8577, float %8578, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8581 = select i1 %279, float %8579, float %8570
  %8582 = select i1 %279, float %8579, float %8571
  %8583 = select i1 %279, float 1.000000e+00, float %8572
  %8584 = select i1 %279, float %8580, float %8576
  %8585 = select i1 %279, float 0.000000e+00, float %8577
  %8586 = select i1 %279, float 0.000000e+00, float %8578
  %8587 = fmul fast float %8581, %8360
  %8588 = fmul fast float %8582, %8361
  %8589 = fmul fast float %8583, %8362
  %8590 = fadd fast float %8587, %8584
  %8591 = fadd fast float %8588, %8585
  %8592 = fadd fast float %8586, %8589
  %8593 = fmul fast float %8581, %8324
  %8594 = fmul fast float %8582, %8325
  %8595 = fmul fast float %8583, %8326
  %8596 = fmul fast float %135, %8372
  %8597 = fmul fast float %137, %8373
  %8598 = fsub fast float 1.000000e+00, %8596
  %8599 = fsub fast float 1.000000e+00, %8597
  %8600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8601 = extractvalue %dx.types.CBufRet.f32 %8600, 0
  %8602 = extractvalue %dx.types.CBufRet.f32 %8600, 1
  %8603 = extractvalue %dx.types.CBufRet.f32 %8600, 2
  %8604 = fmul fast float %8598, %8601
  %8605 = fmul fast float %8598, %8602
  %8606 = fmul fast float %8598, %8603
  %8607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8608 = extractvalue %dx.types.CBufRet.f32 %8607, 0
  %8609 = extractvalue %dx.types.CBufRet.f32 %8607, 1
  %8610 = extractvalue %dx.types.CBufRet.f32 %8607, 2
  %8611 = fmul fast float %8599, %8608
  %8612 = fmul fast float %8599, %8609
  %8613 = fmul fast float %8599, %8610
  %8614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8615 = extractvalue %dx.types.CBufRet.f32 %8614, 0
  %8616 = extractvalue %dx.types.CBufRet.f32 %8614, 1
  %8617 = extractvalue %dx.types.CBufRet.f32 %8614, 2
  %8618 = fadd fast float %8611, %8615
  %8619 = fadd fast float %8618, %8604
  %8620 = fadd fast float %8612, %8616
  %8621 = fadd fast float %8620, %8605
  %8622 = fadd fast float %8613, %8617
  %8623 = fadd fast float %8622, %8606
  %8624 = fmul fast float %8619, %240
  %8625 = fmul fast float %8621, %240
  %8626 = fmul fast float %8623, %240
  br label %8627

; <label>:8627                                    ; preds = %8569, %8323
  %8628 = phi float [ %8624, %8569 ], [ %186, %8323 ]
  %8629 = phi float [ %8625, %8569 ], [ %187, %8323 ]
  %8630 = phi float [ %8626, %8569 ], [ %188, %8323 ]
  %8631 = phi float [ %240, %8569 ], [ %94, %8323 ]
  %8632 = phi float [ %8590, %8569 ], [ %8360, %8323 ]
  %8633 = phi float [ %8591, %8569 ], [ %8361, %8323 ]
  %8634 = phi float [ %8592, %8569 ], [ %8362, %8323 ]
  %8635 = phi float [ %8593, %8569 ], [ %8324, %8323 ]
  %8636 = phi float [ %8594, %8569 ], [ %8325, %8323 ]
  %8637 = phi float [ %8595, %8569 ], [ %8326, %8323 ]
  %8638 = phi float [ %8570, %8569 ], [ 1.000000e+00, %8323 ]
  br i1 %8369, label %9793, label %8639

; <label>:8639                                    ; preds = %8627
  %8640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8641 = extractvalue %dx.types.CBufRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.CBufRet.f32 %8640, 1
  %8643 = extractvalue %dx.types.CBufRet.f32 %8640, 2
  %8644 = extractvalue %dx.types.CBufRet.f32 %8640, 3
  %8645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8646 = extractvalue %dx.types.CBufRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.CBufRet.f32 %8645, 1
  %8648 = extractvalue %dx.types.CBufRet.f32 %8645, 2
  %8649 = extractvalue %dx.types.CBufRet.f32 %8645, 3
  %8650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8651 = extractvalue %dx.types.CBufRet.f32 %8650, 0
  %8652 = extractvalue %dx.types.CBufRet.f32 %8650, 1
  %8653 = extractvalue %dx.types.CBufRet.f32 %8650, 2
  %8654 = extractvalue %dx.types.CBufRet.f32 %8650, 3
  %8655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8656 = extractvalue %dx.types.CBufRet.f32 %8655, 0
  %8657 = extractvalue %dx.types.CBufRet.f32 %8655, 1
  %8658 = extractvalue %dx.types.CBufRet.f32 %8655, 2
  %8659 = extractvalue %dx.types.CBufRet.f32 %8655, 3
  %8660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8661 = extractvalue %dx.types.CBufRet.f32 %8660, 3
  %8662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8663 = extractvalue %dx.types.CBufRet.f32 %8662, 3
  %8664 = extractvalue %dx.types.CBufRet.f32 %8662, 0
  %8665 = extractvalue %dx.types.CBufRet.f32 %8662, 1
  %8666 = extractvalue %dx.types.CBufRet.f32 %8662, 2
  %8667 = fcmp fast olt float %8666, -5.000000e-01
  %8668 = call float @dx.op.dot3.f32(i32 55, float %8628, float %8629, float %8630, float %8628, float %8629, float %8630)  ; Dot3(ax,ay,az,bx,by,bz)
  %8669 = call float @dx.op.unary.f32(i32 25, float %8668)  ; Rsqrt(value)
  %8670 = fmul fast float %8669, %8668
  %8671 = fmul fast float %8669, %8628
  %8672 = fmul fast float %8669, %8629
  %8673 = fmul fast float %8669, %8630
  %8674 = fadd fast float %8670, %8644
  %8675 = call float @dx.op.dot3.f32(i32 55, float %8671, float %8672, float %8673, float %8641, float %8642, float %8643)  ; Dot3(ax,ay,az,bx,by,bz)
  %8676 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8677 = extractvalue %dx.types.CBufRet.i32 %8676, 1
  %8678 = and i32 %8677, 1
  %8679 = icmp ne i32 %8678, 0
  %8680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8681 = extractvalue %dx.types.CBufRet.f32 %8680, 2
  %8682 = fcmp fast ogt float %8681, 0.000000e+00
  %8683 = and i1 %8679, %8682
  br i1 %8683, label %8684, label %9090, !dx.controlflow.hints !123

; <label>:8684                                    ; preds = %8639
  %8685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8686 = extractvalue %dx.types.CBufRet.f32 %8685, 3
  %8687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8688 = extractvalue %dx.types.CBufRet.f32 %8687, 2
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8691 = fsub fast float %8688, %8690
  %8692 = and i32 %8677, 2
  %8693 = extractvalue %dx.types.CBufRet.i32 %8676, 0
  %8694 = call i32 @dx.op.binary.i32(i32 40, i32 %8693, i32 3)  ; UMin(a,b)
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 0
  %8697 = extractvalue %dx.types.CBufRet.f32 %8695, 1
  %8698 = extractvalue %dx.types.CBufRet.f32 %8689, 0
  %8699 = extractvalue %dx.types.CBufRet.f32 %8689, 1
  %8700 = fsub fast float %8696, %8698
  %8701 = fsub fast float %8697, %8699
  %8702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8703 = extractvalue %dx.types.CBufRet.f32 %8702, 0
  %8704 = fcmp fast ogt float %8703, 0.000000e+00
  %8705 = fsub fast float -0.000000e+00, %8700
  %8706 = fsub fast float -0.000000e+00, %8701
  %8707 = call float @dx.op.dot2.f32(i32 54, float %8671, float %8672, float %8671, float %8672)  ; Dot2(ax,ay,bx,by)
  %8708 = call float @dx.op.dot2.f32(i32 54, float %8671, float %8672, float %8705, float %8706)  ; Dot2(ax,ay,bx,by)
  %8709 = fmul fast float %8708, 2.000000e+00
  %8710 = call float @dx.op.dot2.f32(i32 54, float %8705, float %8706, float %8705, float %8706)  ; Dot2(ax,ay,bx,by)
  %8711 = fmul fast float %8703, %8703
  %8712 = fsub fast float %8710, %8711
  %8713 = fmul fast float %8709, %8709
  %8714 = fmul fast float %8707, 4.000000e+00
  %8715 = fmul fast float %8714, %8712
  %8716 = fsub fast float %8713, %8715
  %8717 = fcmp fast ogt float %8716, 0.000000e+00
  br i1 %8717, label %8718, label %8733

; <label>:8718                                    ; preds = %8684
  %8719 = fcmp fast ogt float %8709, 0.000000e+00
  %8720 = call float @dx.op.unary.f32(i32 24, float %8716)  ; Sqrt(value)
  %8721 = fsub fast float -0.000000e+00, %8720
  %8722 = select i1 %8719, float %8720, float %8721
  %8723 = fadd fast float %8722, %8709
  %8724 = fmul float %8723, -5.000000e-01
  %8725 = fdiv fast float %8724, %8707
  %8726 = call float @dx.op.binary.f32(i32 35, float %8725, float 0.000000e+00)  ; FMax(a,b)
  %8727 = call float @dx.op.binary.f32(i32 36, float %8670, float %8726)  ; FMin(a,b)
  %8728 = fdiv fast float %8712, %8724
  %8729 = call float @dx.op.binary.f32(i32 35, float %8728, float 0.000000e+00)  ; FMax(a,b)
  %8730 = call float @dx.op.binary.f32(i32 36, float %8670, float %8729)  ; FMin(a,b)
  %8731 = call float @dx.op.binary.f32(i32 36, float %8727, float %8730)  ; FMin(a,b)
  %8732 = call float @dx.op.binary.f32(i32 35, float %8727, float %8730)  ; FMax(a,b)
  br label %8733

; <label>:8733                                    ; preds = %8718, %8684
  %8734 = phi float [ %8732, %8718 ], [ -1.000000e+00, %8684 ]
  %8735 = phi float [ %8731, %8718 ], [ -1.000000e+00, %8684 ]
  %8736 = phi i1 [ true, %8718 ], [ false, %8684 ]
  %8737 = and i1 %8704, %8736
  br i1 %8737, label %8738, label %8740

; <label>:8738                                    ; preds = %8733
  %8739 = fcmp fast oeq float %8735, %8734
  br i1 %8739, label %9043, label %8741

; <label>:8740                                    ; preds = %8733
  br i1 %8704, label %9043, label %8741

; <label>:8741                                    ; preds = %8740, %8738
  %8742 = phi float [ %8670, %8740 ], [ %8734, %8738 ]
  %8743 = phi float [ 0.000000e+00, %8740 ], [ %8735, %8738 ]
  %8744 = icmp ne i32 %8692, 0
  %8745 = fmul fast float %8742, %8673
  %8746 = fadd fast float %8745, %8686
  %8747 = fmul fast float %8746, %8742
  %8748 = select i1 %8744, float 0.000000e+00, float %8747
  %8749 = fcmp fast oeq float %8673, 0.000000e+00
  %8750 = fdiv fast float %8691, %8673
  %8751 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8750)  ; FMax(a,b)
  %8752 = select i1 %8749, float %8742, float %8751
  %8753 = call float @dx.op.binary.f32(i32 36, float %8742, float %8752)  ; FMin(a,b)
  %8754 = fcmp fast ogt float %8673, 0.000000e+00
  %8755 = fcmp fast olt float %8691, 0.000000e+00
  br i1 %8754, label %8756, label %8813

; <label>:8756                                    ; preds = %8741
  %8757 = icmp eq i32 %8692, 0
  br i1 %8755, label %8758, label %8802

; <label>:8758                                    ; preds = %8756
  %8759 = select i1 %8757, float %8742, float 0.000000e+00
  %8760 = fsub fast float -0.000000e+00, %8759
  %8761 = call float @dx.op.unary.f32(i32 6, float %8760)  ; FAbs(value)
  %8762 = fmul fast float %8759, %8673
  %8763 = fadd fast float %8762, %8686
  %8764 = fmul fast float %8761, %8763
  %8765 = fsub fast float %8748, %8764
  %8766 = fsub fast float %8742, %8761
  %8767 = select i1 %8757, float %8766, float 0.000000e+00
  %8768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8769 = extractvalue %dx.types.CBufRet.f32 %8768, 0
  %8770 = extractvalue %dx.types.CBufRet.f32 %8768, 1
  %8771 = extractvalue %dx.types.CBufRet.f32 %8768, 2
  %8772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8773 = extractvalue %dx.types.CBufRet.f32 %8772, 0
  %8774 = extractvalue %dx.types.CBufRet.f32 %8772, 1
  %8775 = extractvalue %dx.types.CBufRet.f32 %8772, 2
  %8776 = extractvalue %dx.types.CBufRet.f32 %8772, 3
  %8777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8778 = extractvalue %dx.types.CBufRet.f32 %8777, 3
  %8779 = call float @dx.op.binary.f32(i32 36, float %8765, float %8778)  ; FMin(a,b)
  %8780 = fmul fast float %8776, %8767
  %8781 = call float @dx.op.unary.f32(i32 7, float %8780)  ; Saturate(value)
  %8782 = fsub fast float %8773, %8769
  %8783 = fsub fast float %8774, %8770
  %8784 = fsub fast float %8775, %8771
  %8785 = fmul fast float %8781, %8782
  %8786 = fmul fast float %8781, %8783
  %8787 = fmul fast float %8781, %8784
  %8788 = fadd fast float %8785, %8769
  %8789 = fadd fast float %8786, %8770
  %8790 = fadd fast float %8787, %8771
  %8791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8792 = extractvalue %dx.types.CBufRet.f32 %8791, 0
  %8793 = extractvalue %dx.types.CBufRet.f32 %8791, 1
  %8794 = fadd fast float %8793, %8792
  %8795 = call float @dx.op.unary.f32(i32 7, float %8794)  ; Saturate(value)
  %8796 = extractvalue %dx.types.CBufRet.f32 %8791, 2
  %8797 = extractvalue %dx.types.CBufRet.f32 %8791, 3
  %8798 = fadd fast float %8797, %8796
  %8799 = call float @dx.op.unary.f32(i32 7, float %8798)  ; Saturate(value)
  %8800 = fmul fast float %8795, %8779
  %8801 = fmul fast float %8800, %8799
  br label %9043

; <label>:8802                                    ; preds = %8756
  br i1 %8757, label %8803, label %8824

; <label>:8803                                    ; preds = %8802
  %8804 = call float @dx.op.binary.f32(i32 36, float %8753, float %8743)  ; FMin(a,b)
  %8805 = fsub fast float %8753, %8804
  %8806 = fsub fast float %8805, %8742
  %8807 = call float @dx.op.unary.f32(i32 6, float %8806)  ; FAbs(value)
  %8808 = fadd fast float %8805, %8742
  %8809 = fmul fast float %8808, %8673
  %8810 = fadd fast float %8809, %8686
  %8811 = fmul fast float %8810, %8807
  %8812 = fsub fast float %8748, %8811
  br label %8824

; <label>:8813                                    ; preds = %8741
  br i1 %8755, label %8814, label %8824

; <label>:8814                                    ; preds = %8813
  %8815 = call float @dx.op.binary.f32(i32 35, float %8743, float %8753)  ; FMax(a,b)
  %8816 = icmp eq i32 %8692, 0
  %8817 = select i1 %8816, float %8753, float 0.000000e+00
  %8818 = fsub fast float -0.000000e+00, %8817
  %8819 = call float @dx.op.unary.f32(i32 6, float %8818)  ; FAbs(value)
  %8820 = fmul fast float %8817, %8673
  %8821 = fadd fast float %8820, %8686
  %8822 = fmul fast float %8819, %8821
  %8823 = fsub fast float %8748, %8822
  br label %8824

; <label>:8824                                    ; preds = %8814, %8813, %8803, %8802
  %8825 = phi float [ %8743, %8802 ], [ %8743, %8803 ], [ %8815, %8814 ], [ %8743, %8813 ]
  %8826 = phi float [ 0.000000e+00, %8802 ], [ %8807, %8803 ], [ %8819, %8814 ], [ 0.000000e+00, %8813 ]
  %8827 = phi float [ %8748, %8802 ], [ %8812, %8803 ], [ %8823, %8814 ], [ %8748, %8813 ]
  %8828 = phi float [ %8753, %8802 ], [ %8753, %8803 ], [ %8742, %8814 ], [ %8742, %8813 ]
  %8829 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 0
  store float -1.000000e+00, float* %8829, align 4, !tbaa !112, !noalias !124
  %8830 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 1
  store float -1.000000e+00, float* %8830, align 4, !tbaa !112, !noalias !124
  %8831 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 2
  store float -1.000000e+00, float* %8831, align 4, !tbaa !112, !noalias !124
  %8832 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 0
  store float -1.000000e+00, float* %8832, align 4, !tbaa !112, !noalias !124
  %8833 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 1
  store float -1.000000e+00, float* %8833, align 4, !tbaa !112, !noalias !124
  %8834 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 2
  store float -1.000000e+00, float* %8834, align 4, !tbaa !112, !noalias !124
  %8835 = icmp sgt i32 %8694, 0
  br i1 %8835, label %8836, label %8897

; <label>:8836                                    ; preds = %8824
  br label %8837

; <label>:8837                                    ; preds = %8886, %8836
  %8838 = phi i32 [ %8887, %8886 ], [ 0, %8836 ]
  %8839 = phi i32 [ %8888, %8886 ], [ 0, %8836 ]
  %8840 = add nuw i32 %8839, 171
  %8841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 %8840)  ; CBufferLoadLegacy(handle,regIndex)
  %8842 = extractvalue %dx.types.CBufRet.f32 %8841, 0
  %8843 = extractvalue %dx.types.CBufRet.f32 %8841, 1
  %8844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8845 = extractvalue %dx.types.CBufRet.f32 %8844, 0
  %8846 = extractvalue %dx.types.CBufRet.f32 %8844, 1
  %8847 = fsub fast float %8842, %8845
  %8848 = fsub fast float %8843, %8846
  %8849 = extractvalue %dx.types.CBufRet.f32 %8841, 2
  %8850 = fsub fast float -0.000000e+00, %8847
  %8851 = fsub fast float -0.000000e+00, %8848
  %8852 = call float @dx.op.dot2.f32(i32 54, float %8671, float %8672, float %8850, float %8851)  ; Dot2(ax,ay,bx,by)
  %8853 = fmul fast float %8852, 2.000000e+00
  %8854 = call float @dx.op.dot2.f32(i32 54, float %8850, float %8851, float %8850, float %8851)  ; Dot2(ax,ay,bx,by)
  %8855 = fmul fast float %8849, %8849
  %8856 = fsub fast float %8854, %8855
  %8857 = fmul fast float %8853, %8853
  %8858 = fmul fast float %8714, %8856
  %8859 = fsub fast float %8857, %8858
  %8860 = fcmp fast ogt float %8859, 0.000000e+00
  br i1 %8860, label %8861, label %8876

; <label>:8861                                    ; preds = %8837
  %8862 = fcmp fast ogt float %8853, 0.000000e+00
  %8863 = call float @dx.op.unary.f32(i32 24, float %8859)  ; Sqrt(value)
  %8864 = fsub fast float -0.000000e+00, %8863
  %8865 = select i1 %8862, float %8863, float %8864
  %8866 = fadd fast float %8865, %8853
  %8867 = fmul float %8866, -5.000000e-01
  %8868 = fdiv fast float %8867, %8707
  %8869 = call float @dx.op.binary.f32(i32 35, float %8868, float 0.000000e+00)  ; FMax(a,b)
  %8870 = call float @dx.op.binary.f32(i32 36, float %8742, float %8869)  ; FMin(a,b)
  %8871 = fdiv fast float %8856, %8867
  %8872 = call float @dx.op.binary.f32(i32 35, float %8871, float 0.000000e+00)  ; FMax(a,b)
  %8873 = call float @dx.op.binary.f32(i32 36, float %8742, float %8872)  ; FMin(a,b)
  %8874 = call float @dx.op.binary.f32(i32 36, float %8870, float %8873)  ; FMin(a,b)
  %8875 = call float @dx.op.binary.f32(i32 35, float %8870, float %8873)  ; FMax(a,b)
  br label %8876

; <label>:8876                                    ; preds = %8861, %8837
  %8877 = phi float [ %8875, %8861 ], [ -1.000000e+00, %8837 ]
  %8878 = phi float [ %8874, %8861 ], [ -1.000000e+00, %8837 ]
  %8879 = phi i1 [ true, %8861 ], [ false, %8837 ]
  br i1 %8879, label %8880, label %8886

; <label>:8880                                    ; preds = %8876
  %8881 = call float @dx.op.binary.f32(i32 35, float %8825, float %8878)  ; FMax(a,b)
  %8882 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8839
  store float %8881, float* %8882, align 4, !tbaa !112, !noalias !124
  %8883 = call float @dx.op.binary.f32(i32 35, float %8825, float %8877)  ; FMax(a,b)
  %8884 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8839
  store float %8883, float* %8884, align 4, !tbaa !112, !noalias !124
  %8885 = add nsw i32 %8838, 1
  br label %8886

; <label>:8886                                    ; preds = %8880, %8876
  %8887 = phi i32 [ %8885, %8880 ], [ %8838, %8876 ]
  %8888 = add nuw nsw i32 %8839, 1
  %8889 = icmp eq i32 %8888, %8694
  br i1 %8889, label %8890, label %8837

; <label>:8890                                    ; preds = %8886
  %8891 = load float, float* %8831, align 4, !tbaa !112, !alias.scope !140, !noalias !143
  %8892 = load float, float* %8830, align 4, !tbaa !112, !alias.scope !146, !noalias !147
  %8893 = load float, float* %8829, align 4, !tbaa !112, !alias.scope !148, !noalias !149
  %8894 = load float, float* %8834, align 4, !tbaa !112, !alias.scope !150, !noalias !153
  %8895 = load float, float* %8833, align 4, !tbaa !112, !alias.scope !156, !noalias !157
  %8896 = load float, float* %8832, align 4, !tbaa !112, !alias.scope !158, !noalias !159
  br label %8897

; <label>:8897                                    ; preds = %8890, %8824
  %8898 = phi float [ -1.000000e+00, %8824 ], [ %8896, %8890 ]
  %8899 = phi float [ -1.000000e+00, %8824 ], [ %8895, %8890 ]
  %8900 = phi float [ -1.000000e+00, %8824 ], [ %8894, %8890 ]
  %8901 = phi float [ -1.000000e+00, %8824 ], [ %8893, %8890 ]
  %8902 = phi float [ -1.000000e+00, %8824 ], [ %8892, %8890 ]
  %8903 = phi float [ -1.000000e+00, %8824 ], [ %8891, %8890 ]
  %8904 = phi i32 [ 0, %8824 ], [ %8887, %8890 ]
  %8905 = call float @dx.op.binary.f32(i32 36, float %8902, float %8903)  ; FMin(a,b)
  %8906 = call float @dx.op.binary.f32(i32 36, float %8901, float %8905)  ; FMin(a,b)
  %8907 = call float @dx.op.binary.f32(i32 35, float %8901, float %8902)  ; FMax(a,b)
  %8908 = call float @dx.op.binary.f32(i32 36, float %8907, float %8903)  ; FMin(a,b)
  %8909 = call float @dx.op.binary.f32(i32 36, float %8901, float %8902)  ; FMin(a,b)
  %8910 = call float @dx.op.binary.f32(i32 35, float %8909, float %8908)  ; FMax(a,b)
  %8911 = call float @dx.op.binary.f32(i32 35, float %8902, float %8903)  ; FMax(a,b)
  %8912 = call float @dx.op.binary.f32(i32 35, float %8901, float %8911)  ; FMax(a,b)
  store float %8906, float* %8829, align 4, !tbaa !112, !alias.scope !148, !noalias !149
  store float %8910, float* %8830, align 4, !tbaa !112, !alias.scope !146, !noalias !147
  store float %8912, float* %8831, align 4, !tbaa !112, !alias.scope !140, !noalias !143
  %8913 = call float @dx.op.binary.f32(i32 36, float %8899, float %8900)  ; FMin(a,b)
  %8914 = call float @dx.op.binary.f32(i32 36, float %8898, float %8913)  ; FMin(a,b)
  %8915 = call float @dx.op.binary.f32(i32 35, float %8898, float %8899)  ; FMax(a,b)
  %8916 = call float @dx.op.binary.f32(i32 36, float %8915, float %8900)  ; FMin(a,b)
  %8917 = call float @dx.op.binary.f32(i32 36, float %8898, float %8899)  ; FMin(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float %8917, float %8916)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 35, float %8899, float %8900)  ; FMax(a,b)
  %8920 = call float @dx.op.binary.f32(i32 35, float %8898, float %8919)  ; FMax(a,b)
  store float %8914, float* %8832, align 4, !tbaa !112, !alias.scope !158, !noalias !159
  store float %8918, float* %8833, align 4, !tbaa !112, !alias.scope !156, !noalias !157
  store float %8920, float* %8834, align 4, !tbaa !112, !alias.scope !150, !noalias !153
  %8921 = sub nsw i32 3, %8904
  %8922 = icmp sgt i32 %8921, 2
  br i1 %8922, label %8923, label %8961

; <label>:8923                                    ; preds = %8897
  %8924 = icmp eq i32 %8692, 0
  %8925 = fsub fast float %8742, %8826
  %8926 = select i1 %8924, float %8925, float %8826
  %8927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8928 = extractvalue %dx.types.CBufRet.f32 %8927, 0
  %8929 = extractvalue %dx.types.CBufRet.f32 %8927, 1
  %8930 = extractvalue %dx.types.CBufRet.f32 %8927, 2
  %8931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8932 = extractvalue %dx.types.CBufRet.f32 %8931, 0
  %8933 = extractvalue %dx.types.CBufRet.f32 %8931, 1
  %8934 = extractvalue %dx.types.CBufRet.f32 %8931, 2
  %8935 = extractvalue %dx.types.CBufRet.f32 %8931, 3
  %8936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8937 = extractvalue %dx.types.CBufRet.f32 %8936, 3
  %8938 = call float @dx.op.binary.f32(i32 36, float %8827, float %8937)  ; FMin(a,b)
  %8939 = fmul fast float %8935, %8926
  %8940 = call float @dx.op.unary.f32(i32 7, float %8939)  ; Saturate(value)
  %8941 = fsub fast float %8932, %8928
  %8942 = fsub fast float %8933, %8929
  %8943 = fsub fast float %8934, %8930
  %8944 = fmul fast float %8940, %8941
  %8945 = fmul fast float %8940, %8942
  %8946 = fmul fast float %8940, %8943
  %8947 = fadd fast float %8944, %8928
  %8948 = fadd fast float %8945, %8929
  %8949 = fadd fast float %8946, %8930
  %8950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8951 = extractvalue %dx.types.CBufRet.f32 %8950, 0
  %8952 = extractvalue %dx.types.CBufRet.f32 %8950, 1
  %8953 = fadd fast float %8952, %8951
  %8954 = call float @dx.op.unary.f32(i32 7, float %8953)  ; Saturate(value)
  %8955 = extractvalue %dx.types.CBufRet.f32 %8950, 2
  %8956 = extractvalue %dx.types.CBufRet.f32 %8950, 3
  %8957 = fadd fast float %8956, %8955
  %8958 = call float @dx.op.unary.f32(i32 7, float %8957)  ; Saturate(value)
  %8959 = fmul fast float %8954, %8938
  %8960 = fmul fast float %8959, %8958
  br label %9043

; <label>:8961                                    ; preds = %8897
  %8962 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8921
  %8963 = load float, float* %8962, align 4, !tbaa !112, !noalias !124
  %8964 = fcmp fast olt float %8963, %8828
  %8965 = icmp sgt i32 %8904, 0
  %8966 = and i1 %8965, %8964
  br i1 %8966, label %8967, label %9004

; <label>:8967                                    ; preds = %8961
  br label %8968

; <label>:8968                                    ; preds = %8997, %8967
  %8969 = phi float [ %8998, %8997 ], [ %8826, %8967 ]
  %8970 = phi float [ %8999, %8997 ], [ %8827, %8967 ]
  %8971 = phi float [ %8979, %8997 ], [ %8963, %8967 ]
  %8972 = phi i32 [ %8976, %8997 ], [ %8921, %8967 ]
  %8973 = getelementptr inbounds [3 x float], [3 x float]* %102, i32 0, i32 %8972
  %8974 = load float, float* %8973, align 4, !tbaa !112, !noalias !124
  %8975 = icmp slt i32 %8972, 2
  %8976 = add nsw i32 %8972, 1
  %8977 = getelementptr inbounds [3 x float], [3 x float]* %101, i32 0, i32 %8976
  %8978 = load float, float* %8977, align 4, !tbaa !112, !noalias !124
  %8979 = select i1 %8975, float %8978, float %8742
  %8980 = call float @dx.op.binary.f32(i32 36, float %8979, float %8974)  ; FMin(a,b)
  %8981 = call float @dx.op.binary.f32(i32 36, float %8828, float %8980)  ; FMin(a,b)
  %8982 = icmp eq i32 %8692, 0
  %8983 = fadd fast float %8981, %8971
  %8984 = fmul fast float %8983, %8673
  %8985 = fadd fast float %8984, %8686
  br i1 %8982, label %8991, label %8986

; <label>:8986                                    ; preds = %8968
  %8987 = fsub fast float %8981, %8971
  %8988 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8987)  ; FMax(a,b)
  %8989 = fmul fast float %8988, %8985
  %8990 = fadd fast float %8989, %8970
  br label %8997

; <label>:8991                                    ; preds = %8968
  %8992 = fsub fast float %8971, %8981
  %8993 = call float @dx.op.unary.f32(i32 6, float %8992)  ; FAbs(value)
  %8994 = fadd fast float %8993, %8969
  %8995 = fmul fast float %8993, %8985
  %8996 = fsub fast float %8970, %8995
  br label %8997

; <label>:8997                                    ; preds = %8991, %8986
  %8998 = phi float [ %8988, %8986 ], [ %8994, %8991 ]
  %8999 = phi float [ %8990, %8986 ], [ %8996, %8991 ]
  %9000 = fcmp fast olt float %8979, %8828
  %9001 = icmp slt i32 %8976, 3
  %9002 = and i1 %9001, %9000
  br i1 %9002, label %8968, label %9003

; <label>:9003                                    ; preds = %8997
  br label %9004

; <label>:9004                                    ; preds = %9003, %8961
  %9005 = phi float [ %8826, %8961 ], [ %8998, %9003 ]
  %9006 = phi float [ %8827, %8961 ], [ %8999, %9003 ]
  %9007 = fsub fast float %8742, %9005
  %9008 = select i1 %8744, float %9005, float %9007
  %9009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9010 = extractvalue %dx.types.CBufRet.f32 %9009, 0
  %9011 = extractvalue %dx.types.CBufRet.f32 %9009, 1
  %9012 = extractvalue %dx.types.CBufRet.f32 %9009, 2
  %9013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9014 = extractvalue %dx.types.CBufRet.f32 %9013, 0
  %9015 = extractvalue %dx.types.CBufRet.f32 %9013, 1
  %9016 = extractvalue %dx.types.CBufRet.f32 %9013, 2
  %9017 = extractvalue %dx.types.CBufRet.f32 %9013, 3
  %9018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9019 = extractvalue %dx.types.CBufRet.f32 %9018, 3
  %9020 = call float @dx.op.binary.f32(i32 36, float %9006, float %9019)  ; FMin(a,b)
  %9021 = fmul fast float %9017, %9008
  %9022 = call float @dx.op.unary.f32(i32 7, float %9021)  ; Saturate(value)
  %9023 = fsub fast float %9014, %9010
  %9024 = fsub fast float %9015, %9011
  %9025 = fsub fast float %9016, %9012
  %9026 = fmul fast float %9022, %9023
  %9027 = fmul fast float %9022, %9024
  %9028 = fmul fast float %9022, %9025
  %9029 = fadd fast float %9026, %9010
  %9030 = fadd fast float %9027, %9011
  %9031 = fadd fast float %9028, %9012
  %9032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9033 = extractvalue %dx.types.CBufRet.f32 %9032, 0
  %9034 = extractvalue %dx.types.CBufRet.f32 %9032, 1
  %9035 = fadd fast float %9034, %9033
  %9036 = call float @dx.op.unary.f32(i32 7, float %9035)  ; Saturate(value)
  %9037 = extractvalue %dx.types.CBufRet.f32 %9032, 2
  %9038 = extractvalue %dx.types.CBufRet.f32 %9032, 3
  %9039 = fadd fast float %9038, %9037
  %9040 = call float @dx.op.unary.f32(i32 7, float %9039)  ; Saturate(value)
  %9041 = fmul fast float %9036, %9020
  %9042 = fmul fast float %9041, %9040
  br label %9043

; <label>:9043                                    ; preds = %9004, %8923, %8758, %8740, %8738
  %9044 = phi float [ %8767, %8758 ], [ %8926, %8923 ], [ %9008, %9004 ], [ 0.000000e+00, %8738 ], [ 0.000000e+00, %8740 ]
  %9045 = phi float [ %8801, %8758 ], [ %8960, %8923 ], [ %9042, %9004 ], [ 0.000000e+00, %8738 ], [ 0.000000e+00, %8740 ]
  %9046 = phi float [ %8788, %8758 ], [ %8947, %8923 ], [ %9029, %9004 ], [ 0.000000e+00, %8738 ], [ 0.000000e+00, %8740 ]
  %9047 = phi float [ %8789, %8758 ], [ %8948, %8923 ], [ %9030, %9004 ], [ 0.000000e+00, %8738 ], [ 0.000000e+00, %8740 ]
  %9048 = phi float [ %8790, %8758 ], [ %8949, %8923 ], [ %9031, %9004 ], [ 0.000000e+00, %8738 ], [ 0.000000e+00, %8740 ]
  %9049 = fmul fast float %8681, %9045
  %9050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9051 = extractvalue %dx.types.CBufRet.f32 %9050, 2
  %9052 = fsub fast float %8688, %9051
  %9053 = fcmp fast olt float %9049, -2.000000e+01
  %9054 = call float @dx.op.unary.f32(i32 21, float %9049)  ; Exp(value)
  %9055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9056 = extractvalue %dx.types.CBufRet.f32 %9055, 2
  %9057 = extractvalue %dx.types.CBufRet.f32 %9055, 3
  %9058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9059 = extractvalue %dx.types.CBufRet.f32 %9058, 2
  %9060 = fmul fast float %9057, %9052
  %9061 = call float @dx.op.unary.f32(i32 7, float %9060)  ; Saturate(value)
  %9062 = fsub fast float 1.000000e+00, %9061
  %9063 = fmul fast float %8673, 5.000000e-01
  %9064 = fadd fast float %9063, 5.000000e-01
  %9065 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  %9066 = fsub fast float 1.000000e+00, %9065
  %9067 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9062)  ; FMax(a,b)
  %9068 = fdiv fast float %9066, %9067
  %9069 = fsub fast float %9052, %8630
  %9070 = call float @dx.op.unary.f32(i32 6, float %9069)  ; FAbs(value)
  %9071 = fmul fast float %9070, %9056
  %9072 = call float @dx.op.unary.f32(i32 7, float %9068)  ; Saturate(value)
  %9073 = fsub fast float 1.000000e+00, %9071
  %9074 = fmul fast float %9073, %9072
  %9075 = fadd fast float %9074, %9071
  %9076 = fmul fast float %9059, %9052
  %9077 = call float @dx.op.unary.f32(i32 7, float %9076)  ; Saturate(value)
  %9078 = fsub fast float 1.000000e+00, %9075
  %9079 = fmul fast float %9078, %9077
  %9080 = fadd fast float %9079, %9075
  %9081 = call float @dx.op.unary.f32(i32 7, float %9080)  ; Saturate(value)
  %9082 = fadd fast float %9054, -1.000000e+00
  %9083 = select i1 %9053, float -1.000000e+00, float %9082
  %9084 = fmul fast float %9081, %9083
  %9085 = fadd fast float %9084, 1.000000e+00
  %9086 = fsub fast float -0.000000e+00, %9084
  %9087 = fmul fast float %9046, %9086
  %9088 = fmul fast float %9047, %9086
  %9089 = fmul fast float %9048, %9086
  br label %9090

; <label>:9090                                    ; preds = %9043, %8639
  %9091 = phi float [ %9044, %9043 ], [ 0.000000e+00, %8639 ]
  %9092 = phi float [ %9085, %9043 ], [ 1.000000e+00, %8639 ]
  %9093 = phi float [ %9087, %9043 ], [ 0.000000e+00, %8639 ]
  %9094 = phi float [ %9088, %9043 ], [ 0.000000e+00, %8639 ]
  %9095 = phi float [ %9089, %9043 ], [ 0.000000e+00, %8639 ]
  %9096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9097 = extractvalue %dx.types.CBufRet.f32 %9096, 1
  %9098 = fsub fast float 1.000000e+00, %9092
  %9099 = fmul fast float %9098, %8674
  %9100 = fmul fast float %9099, %9097
  %9101 = fsub fast float %8674, %9100
  br i1 %8667, label %9102, label %9131, !dx.controlflow.hints !160

; <label>:9102                                    ; preds = %9090
  %9103 = fmul fast float %8675, %8664
  %9104 = fadd fast float %9103, %8665
  %9105 = call float @dx.op.unary.f32(i32 7, float %9104)  ; Saturate(value)
  %9106 = fmul fast float %8646, %9101
  %9107 = fsub fast float -0.000000e+00, %9106
  %9108 = fmul fast float %8647, %9101
  %9109 = fsub fast float -0.000000e+00, %9108
  %9110 = call float @dx.op.unary.f32(i32 21, float %9107)  ; Exp(value)
  %9111 = call float @dx.op.unary.f32(i32 21, float %9109)  ; Exp(value)
  %9112 = call float @dx.op.binary.f32(i32 35, float %8654, float %9110)  ; FMax(a,b)
  %9113 = call float @dx.op.binary.f32(i32 35, float %8654, float %9111)  ; FMax(a,b)
  %9114 = fsub fast float %9113, %9112
  %9115 = fmul fast float %9114, %9105
  %9116 = fadd fast float %9115, %9112
  %9117 = call float @dx.op.unary.f32(i32 7, float %9116)  ; Saturate(value)
  %9118 = fsub fast float %8651, %8656
  %9119 = fsub fast float %8652, %8657
  %9120 = fsub fast float %8653, %8658
  %9121 = fmul fast float %9105, %9118
  %9122 = fmul fast float %9105, %9119
  %9123 = fmul fast float %9105, %9120
  %9124 = fadd fast float %9121, %8656
  %9125 = fadd fast float %9122, %8657
  %9126 = fadd fast float %9123, %8658
  %9127 = fsub fast float 1.000000e+00, %9117
  %9128 = fmul fast float %9127, %9124
  %9129 = fmul fast float %9127, %9125
  %9130 = fmul fast float %9127, %9126
  br label %9190

; <label>:9131                                    ; preds = %9090
  %9132 = fmul fast float %9101, %8663
  %9133 = call float @dx.op.unary.f32(i32 7, float %9132)  ; Saturate(value)
  %9134 = fsub fast float 2.000000e+00, %9133
  %9135 = fmul fast float %9133, 9.921875e-01
  %9136 = fmul fast float %9135, %9134
  %9137 = fadd fast float %9136, 3.906250e-03
  %9138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %9137, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9139 = extractvalue %dx.types.ResRet.f32 %9138, 0
  %9140 = fsub fast float %9133, %9139
  %9141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9140)  ; FMax(a,b)
  %9142 = fmul fast float %8649, %8630
  %9143 = call float @dx.op.unary.f32(i32 6, float %9142)  ; FAbs(value)
  %9144 = fcmp fast ogt float %9143, 0x3EB0C6F7A0000000
  br i1 %9144, label %9145, label %9151, !dx.controlflow.hints !161

; <label>:9145                                    ; preds = %9131
  %9146 = fmul fast float %9142, 0xBFF7154760000000
  %9147 = call float @dx.op.unary.f32(i32 21, float %9146)  ; Exp(value)
  %9148 = fsub fast float 1.000000e+00, %9147
  %9149 = fdiv fast float %9148, %9142
  %9150 = fmul fast float %9149, %8659
  br label %9151

; <label>:9151                                    ; preds = %9145, %9131
  %9152 = phi float [ %9150, %9145 ], [ %8659, %9131 ]
  %9153 = fadd fast float %9152, %8661
  %9154 = fmul fast float %9153, %9141
  %9155 = fmul fast float %8646, %9154
  %9156 = fsub fast float -0.000000e+00, %9155
  %9157 = fmul fast float %8647, %9154
  %9158 = fsub fast float -0.000000e+00, %9157
  %9159 = fmul fast float %8648, %9154
  %9160 = fsub fast float -0.000000e+00, %9159
  %9161 = call float @dx.op.unary.f32(i32 21, float %9156)  ; Exp(value)
  %9162 = call float @dx.op.unary.f32(i32 21, float %9158)  ; Exp(value)
  %9163 = call float @dx.op.unary.f32(i32 21, float %9160)  ; Exp(value)
  %9164 = fmul fast float %8675, %8675
  %9165 = fadd fast float %9164, 1.000000e+00
  %9166 = fmul fast float %9165, 0x3FAE8EC8A0000000
  %9167 = fmul fast float %9166, %8656
  %9168 = fmul fast float %9166, %8657
  %9169 = fmul fast float %9166, %8658
  %9170 = fmul fast float %8675, %8654
  %9171 = fsub fast float 1.000000e+00, %9170
  %9172 = fmul fast float %8654, %8654
  %9173 = fsub fast float 1.000000e+00, %9172
  %9174 = fmul fast float %9173, 0x3FB45F3060000000
  %9175 = fmul fast float %9171, %9171
  %9176 = fdiv fast float 1.000000e+00, %9175
  %9177 = fmul fast float %9174, %9176
  %9178 = fmul fast float %9177, %8651
  %9179 = fmul fast float %9177, %8652
  %9180 = fmul fast float %9177, %8653
  %9181 = fadd fast float %9178, %9167
  %9182 = fadd fast float %9179, %9168
  %9183 = fadd fast float %9180, %9169
  %9184 = fsub fast float 1.000000e+00, %9161
  %9185 = fsub fast float 1.000000e+00, %9162
  %9186 = fsub fast float 1.000000e+00, %9163
  %9187 = fmul fast float %9181, %9184
  %9188 = fmul fast float %9182, %9185
  %9189 = fmul fast float %9183, %9186
  br label %9190

; <label>:9190                                    ; preds = %9151, %9102
  %9191 = phi float [ %9128, %9102 ], [ %9187, %9151 ]
  %9192 = phi float [ %9129, %9102 ], [ %9188, %9151 ]
  %9193 = phi float [ %9130, %9102 ], [ %9189, %9151 ]
  %9194 = phi float [ %9117, %9102 ], [ %9161, %9151 ]
  %9195 = phi float [ %9117, %9102 ], [ %9162, %9151 ]
  %9196 = phi float [ %9117, %9102 ], [ %9163, %9151 ]
  br i1 %8683, label %9197, label %9395, !dx.controlflow.hints !162

; <label>:9197                                    ; preds = %9190
  %9198 = extractvalue %dx.types.CBufRet.f32 %9096, 0
  %9199 = fmul fast float %9198, %9098
  %9200 = fsub fast float %9093, %9191
  %9201 = fsub fast float %9094, %9192
  %9202 = fsub fast float %9095, %9193
  %9203 = fmul fast float %9199, %9200
  %9204 = fmul fast float %9199, %9201
  %9205 = fmul fast float %9199, %9202
  %9206 = fadd fast float %9203, %9191
  %9207 = fadd fast float %9204, %9192
  %9208 = fadd fast float %9205, %9193
  %9209 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9194)  ; FMax(a,b)
  %9210 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9195)  ; FMax(a,b)
  %9211 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9196)  ; FMax(a,b)
  %9212 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9092)  ; FMax(a,b)
  %9213 = call float @dx.op.binary.f32(i32 35, float %9091, float %9101)  ; FMax(a,b)
  %9214 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9213)  ; FMax(a,b)
  %9215 = fdiv fast float %9091, %9214
  %9216 = call float @dx.op.unary.f32(i32 7, float %9215)  ; Saturate(value)
  %9217 = fdiv fast float %9101, %9214
  %9218 = call float @dx.op.unary.f32(i32 7, float %9217)  ; Saturate(value)
  %9219 = fcmp fast une float %9212, 1.000000e+00
  br i1 %9219, label %9220, label %9233, !dx.controlflow.hints !163

; <label>:9220                                    ; preds = %9197
  %9221 = call float @dx.op.unary.f32(i32 23, float %9212)  ; Log(value)
  %9222 = fmul fast float %9221, 0x3FE62E4300000000
  %9223 = fmul fast float %9093, %9222
  %9224 = fsub fast float -0.000000e+00, %9223
  %9225 = fmul fast float %9094, %9222
  %9226 = fsub fast float -0.000000e+00, %9225
  %9227 = fmul fast float %9095, %9222
  %9228 = fsub fast float -0.000000e+00, %9227
  %9229 = fsub fast float 1.000000e+00, %9212
  %9230 = fdiv fast float %9224, %9229
  %9231 = fdiv fast float %9226, %9229
  %9232 = fdiv fast float %9228, %9229
  br label %9233

; <label>:9233                                    ; preds = %9220, %9197
  %9234 = phi float [ %9230, %9220 ], [ %9093, %9197 ]
  %9235 = phi float [ %9231, %9220 ], [ %9094, %9197 ]
  %9236 = phi float [ %9232, %9220 ], [ %9095, %9197 ]
  %9237 = phi float [ %9222, %9220 ], [ 0.000000e+00, %9197 ]
  %9238 = fcmp fast une float %9209, 1.000000e+00
  br i1 %9238, label %9239, label %9246, !dx.controlflow.hints !164

; <label>:9239                                    ; preds = %9233
  %9240 = call float @dx.op.unary.f32(i32 23, float %9209)  ; Log(value)
  %9241 = fmul fast float %9240, 0x3FE62E4300000000
  %9242 = fmul fast float %9206, %9241
  %9243 = fsub fast float -0.000000e+00, %9242
  %9244 = fsub fast float 1.000000e+00, %9209
  %9245 = fdiv fast float %9243, %9244
  br label %9246

; <label>:9246                                    ; preds = %9239, %9233
  %9247 = phi float [ %9245, %9239 ], [ %9206, %9233 ]
  %9248 = phi float [ %9241, %9239 ], [ 0.000000e+00, %9233 ]
  %9249 = fcmp fast une float %9210, 1.000000e+00
  br i1 %9249, label %9250, label %9257, !dx.controlflow.hints !164

; <label>:9250                                    ; preds = %9246
  %9251 = call float @dx.op.unary.f32(i32 23, float %9210)  ; Log(value)
  %9252 = fmul fast float %9251, 0x3FE62E4300000000
  %9253 = fmul fast float %9207, %9252
  %9254 = fsub fast float -0.000000e+00, %9253
  %9255 = fsub fast float 1.000000e+00, %9210
  %9256 = fdiv fast float %9254, %9255
  br label %9257

; <label>:9257                                    ; preds = %9250, %9246
  %9258 = phi float [ %9256, %9250 ], [ %9207, %9246 ]
  %9259 = phi float [ %9252, %9250 ], [ 0.000000e+00, %9246 ]
  %9260 = fcmp fast une float %9211, 1.000000e+00
  br i1 %9260, label %9261, label %9268, !dx.controlflow.hints !164

; <label>:9261                                    ; preds = %9257
  %9262 = call float @dx.op.unary.f32(i32 23, float %9211)  ; Log(value)
  %9263 = fmul fast float %9262, 0x3FE62E4300000000
  %9264 = fmul fast float %9208, %9263
  %9265 = fsub fast float -0.000000e+00, %9264
  %9266 = fsub fast float 1.000000e+00, %9211
  %9267 = fdiv fast float %9265, %9266
  br label %9268

; <label>:9268                                    ; preds = %9261, %9257
  %9269 = phi float [ %9267, %9261 ], [ %9208, %9257 ]
  %9270 = phi float [ %9263, %9261 ], [ 0.000000e+00, %9257 ]
  %9271 = fmul fast float %9234, %9218
  %9272 = fmul fast float %9235, %9218
  %9273 = fmul fast float %9236, %9218
  %9274 = fmul fast float %9237, %9218
  %9275 = fmul fast float %9247, %9216
  %9276 = fmul fast float %9258, %9216
  %9277 = fmul fast float %9269, %9216
  %9278 = fmul fast float %9248, %9216
  %9279 = fmul fast float %9259, %9216
  %9280 = fmul fast float %9270, %9216
  %9281 = fadd fast float %9275, %9271
  %9282 = fadd fast float %9276, %9272
  %9283 = fadd fast float %9277, %9273
  %9284 = fadd fast float %9278, %9274
  %9285 = fadd fast float %9279, %9274
  %9286 = fadd fast float %9280, %9274
  %9287 = fcmp fast une float %9284, 0.000000e+00
  br i1 %9287, label %9288, label %9295, !dx.controlflow.hints !165

; <label>:9288                                    ; preds = %9268
  %9289 = fmul fast float %9284, 0x3FF7154760000000
  %9290 = call float @dx.op.unary.f32(i32 21, float %9289)  ; Exp(value)
  %9291 = fsub fast float 1.000000e+00, %9290
  %9292 = fmul fast float %9281, %9291
  %9293 = fsub fast float -0.000000e+00, %9292
  %9294 = fdiv fast float %9293, %9284
  br label %9295

; <label>:9295                                    ; preds = %9288, %9268
  %9296 = phi float [ %9290, %9288 ], [ 1.000000e+00, %9268 ]
  %9297 = phi float [ %9294, %9288 ], [ %9281, %9268 ]
  %9298 = fcmp fast une float %9285, 0.000000e+00
  br i1 %9298, label %9299, label %9306, !dx.controlflow.hints !165

; <label>:9299                                    ; preds = %9295
  %9300 = fmul fast float %9285, 0x3FF7154760000000
  %9301 = call float @dx.op.unary.f32(i32 21, float %9300)  ; Exp(value)
  %9302 = fsub fast float 1.000000e+00, %9301
  %9303 = fmul fast float %9282, %9302
  %9304 = fsub fast float -0.000000e+00, %9303
  %9305 = fdiv fast float %9304, %9285
  br label %9306

; <label>:9306                                    ; preds = %9299, %9295
  %9307 = phi float [ %9301, %9299 ], [ 1.000000e+00, %9295 ]
  %9308 = phi float [ %9305, %9299 ], [ %9282, %9295 ]
  %9309 = fcmp fast une float %9286, 0.000000e+00
  br i1 %9309, label %9310, label %9317, !dx.controlflow.hints !165

; <label>:9310                                    ; preds = %9306
  %9311 = fmul fast float %9286, 0x3FF7154760000000
  %9312 = call float @dx.op.unary.f32(i32 21, float %9311)  ; Exp(value)
  %9313 = fsub fast float 1.000000e+00, %9312
  %9314 = fmul fast float %9283, %9313
  %9315 = fsub fast float -0.000000e+00, %9314
  %9316 = fdiv fast float %9315, %9286
  br label %9317

; <label>:9317                                    ; preds = %9310, %9306
  %9318 = phi float [ %9312, %9310 ], [ 1.000000e+00, %9306 ]
  %9319 = phi float [ %9316, %9310 ], [ %9283, %9306 ]
  %9320 = fcmp fast ogt float %9216, %9218
  br i1 %9320, label %9321, label %9341

; <label>:9321                                    ; preds = %9317
  %9322 = fsub fast float 1.000000e+00, %9218
  %9323 = fmul fast float %9234, %9322
  %9324 = fmul fast float %9235, %9322
  %9325 = fmul fast float %9236, %9322
  %9326 = fmul fast float %9237, %9322
  %9327 = fcmp fast une float %9326, 0.000000e+00
  br i1 %9327, label %9328, label %9379, !dx.controlflow.hints !166

; <label>:9328                                    ; preds = %9321
  %9329 = fmul fast float %9326, 0x3FF7154760000000
  %9330 = call float @dx.op.unary.f32(i32 21, float %9329)  ; Exp(value)
  %9331 = fsub fast float 1.000000e+00, %9330
  %9332 = fmul fast float %9323, %9331
  %9333 = fsub fast float -0.000000e+00, %9332
  %9334 = fmul fast float %9324, %9331
  %9335 = fsub fast float -0.000000e+00, %9334
  %9336 = fmul fast float %9325, %9331
  %9337 = fsub fast float -0.000000e+00, %9336
  %9338 = fdiv fast float %9333, %9326
  %9339 = fdiv fast float %9335, %9326
  %9340 = fdiv fast float %9337, %9326
  br label %9379

; <label>:9341                                    ; preds = %9317
  %9342 = fsub fast float 1.000000e+00, %9216
  %9343 = fmul fast float %9247, %9342
  %9344 = fmul fast float %9258, %9342
  %9345 = fmul fast float %9269, %9342
  %9346 = fmul fast float %9248, %9342
  %9347 = fmul fast float %9259, %9342
  %9348 = fmul fast float %9270, %9342
  %9349 = fcmp fast une float %9346, 0.000000e+00
  br i1 %9349, label %9350, label %9357, !dx.controlflow.hints !165

; <label>:9350                                    ; preds = %9341
  %9351 = fmul fast float %9346, 0x3FF7154760000000
  %9352 = call float @dx.op.unary.f32(i32 21, float %9351)  ; Exp(value)
  %9353 = fsub fast float 1.000000e+00, %9352
  %9354 = fmul fast float %9343, %9353
  %9355 = fsub fast float -0.000000e+00, %9354
  %9356 = fdiv fast float %9355, %9346
  br label %9357

; <label>:9357                                    ; preds = %9350, %9341
  %9358 = phi float [ %9356, %9350 ], [ %9343, %9341 ]
  %9359 = phi float [ %9352, %9350 ], [ 1.000000e+00, %9341 ]
  %9360 = fcmp fast une float %9347, 0.000000e+00
  br i1 %9360, label %9361, label %9368, !dx.controlflow.hints !165

; <label>:9361                                    ; preds = %9357
  %9362 = fmul fast float %9347, 0x3FF7154760000000
  %9363 = call float @dx.op.unary.f32(i32 21, float %9362)  ; Exp(value)
  %9364 = fsub fast float 1.000000e+00, %9363
  %9365 = fmul fast float %9344, %9364
  %9366 = fsub fast float -0.000000e+00, %9365
  %9367 = fdiv fast float %9366, %9347
  br label %9368

; <label>:9368                                    ; preds = %9361, %9357
  %9369 = phi float [ %9367, %9361 ], [ %9344, %9357 ]
  %9370 = phi float [ %9363, %9361 ], [ 1.000000e+00, %9357 ]
  %9371 = fcmp fast une float %9348, 0.000000e+00
  br i1 %9371, label %9372, label %9379, !dx.controlflow.hints !165

; <label>:9372                                    ; preds = %9368
  %9373 = fmul fast float %9348, 0x3FF7154760000000
  %9374 = call float @dx.op.unary.f32(i32 21, float %9373)  ; Exp(value)
  %9375 = fsub fast float 1.000000e+00, %9374
  %9376 = fmul fast float %9345, %9375
  %9377 = fsub fast float -0.000000e+00, %9376
  %9378 = fdiv fast float %9377, %9348
  br label %9379

; <label>:9379                                    ; preds = %9372, %9368, %9328, %9321
  %9380 = phi float [ %9378, %9372 ], [ %9340, %9328 ], [ %9325, %9321 ], [ %9345, %9368 ]
  %9381 = phi float [ %9369, %9372 ], [ %9339, %9328 ], [ %9324, %9321 ], [ %9369, %9368 ]
  %9382 = phi float [ %9358, %9372 ], [ %9338, %9328 ], [ %9323, %9321 ], [ %9358, %9368 ]
  %9383 = phi float [ %9374, %9372 ], [ %9330, %9328 ], [ 1.000000e+00, %9321 ], [ 1.000000e+00, %9368 ]
  %9384 = phi float [ %9370, %9372 ], [ %9330, %9328 ], [ 1.000000e+00, %9321 ], [ %9370, %9368 ]
  %9385 = phi float [ %9359, %9372 ], [ %9330, %9328 ], [ 1.000000e+00, %9321 ], [ %9359, %9368 ]
  %9386 = fmul fast float %9385, %9297
  %9387 = fmul fast float %9384, %9308
  %9388 = fmul fast float %9383, %9319
  %9389 = fadd fast float %9386, %9382
  %9390 = fadd fast float %9387, %9381
  %9391 = fadd fast float %9388, %9380
  %9392 = fmul fast float %9385, %9296
  %9393 = fmul fast float %9384, %9307
  %9394 = fmul fast float %9383, %9318
  br label %9395

; <label>:9395                                    ; preds = %9379, %9190
  %9396 = phi float [ %9394, %9379 ], [ %9196, %9190 ]
  %9397 = phi float [ %9393, %9379 ], [ %9195, %9190 ]
  %9398 = phi float [ %9392, %9379 ], [ %9194, %9190 ]
  %9399 = phi float [ %9391, %9379 ], [ %9193, %9190 ]
  %9400 = phi float [ %9390, %9379 ], [ %9192, %9190 ]
  %9401 = phi float [ %9389, %9379 ], [ %9191, %9190 ]
  %9402 = fmul fast float %9401, %8355
  %9403 = fmul fast float %9400, %8356
  %9404 = fmul fast float %9399, %8357
  %9405 = fmul fast float %9398, %8638
  %9406 = call float @dx.op.dot3.f32(i32 55, float %9398, float %9397, float %9396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9407 = call float @dx.op.dot3.f32(i32 55, float %9402, float %9403, float %9404, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9408 = select i1 %279, float %9406, float %9398
  %9409 = select i1 %279, float %9406, float %9397
  %9410 = select i1 %279, float 1.000000e+00, float %9396
  %9411 = select i1 %279, float %9407, float %9402
  %9412 = select i1 %279, float 0.000000e+00, float %9403
  %9413 = select i1 %279, float 0.000000e+00, float %9404
  %9414 = fmul fast float %9408, %8632
  %9415 = fmul fast float %9409, %8633
  %9416 = fmul fast float %9410, %8634
  %9417 = fadd fast float %9414, %9411
  %9418 = fadd fast float %9415, %9412
  %9419 = fadd fast float %9413, %9416
  %9420 = fmul fast float %9408, %8635
  %9421 = fmul fast float %9409, %8636
  %9422 = fmul fast float %9410, %8637
  %9423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9424 = extractvalue %dx.types.CBufRet.i32 %9423, 0
  %9425 = icmp eq i32 %9424, 0
  br i1 %9425, label %9793, label %9426, !dx.controlflow.hints !167

; <label>:9426                                    ; preds = %9395
  %9427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9428 = extractvalue %dx.types.CBufRet.f32 %9427, 2
  %9429 = extractvalue %dx.types.CBufRet.f32 %9427, 3
  %9430 = fmul fast float %9428, %107
  %9431 = fmul fast float %9429, %108
  %9432 = fmul fast float %9430, 2.000000e+00
  %9433 = fmul fast float %9431, 2.000000e+00
  %9434 = fsub fast float 1.000000e+00, %9432
  %9435 = fsub fast float 1.000000e+00, %9433
  %9436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9437 = extractvalue %dx.types.CBufRet.f32 %9436, 0
  %9438 = extractvalue %dx.types.CBufRet.f32 %9436, 1
  %9439 = extractvalue %dx.types.CBufRet.f32 %9436, 2
  %9440 = fmul fast float %9434, %9437
  %9441 = fmul fast float %9434, %9438
  %9442 = fmul fast float %9434, %9439
  %9443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9444 = extractvalue %dx.types.CBufRet.f32 %9443, 0
  %9445 = extractvalue %dx.types.CBufRet.f32 %9443, 1
  %9446 = extractvalue %dx.types.CBufRet.f32 %9443, 2
  %9447 = fmul fast float %9435, %9444
  %9448 = fmul fast float %9435, %9445
  %9449 = fmul fast float %9435, %9446
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 0
  %9452 = extractvalue %dx.types.CBufRet.f32 %9450, 1
  %9453 = extractvalue %dx.types.CBufRet.f32 %9450, 2
  %9454 = fadd fast float %9447, %9451
  %9455 = fadd fast float %9454, %9440
  %9456 = fadd fast float %9448, %9452
  %9457 = fadd fast float %9456, %9441
  %9458 = fadd fast float %9449, %9453
  %9459 = fadd fast float %9458, %9442
  %9460 = fmul fast float %9455, %8631
  %9461 = fmul fast float %9457, %8631
  %9462 = fmul fast float %9459, %8631
  %9463 = fmul fast float %9460, %9460
  %9464 = fmul fast float %9461, %9461
  %9465 = fadd fast float %9463, %9464
  %9466 = fmul fast float %9462, %9462
  %9467 = fadd fast float %9465, %9466
  %9468 = call float @dx.op.unary.f32(i32 24, float %9467)  ; Sqrt(value)
  %9469 = extractvalue %dx.types.CBufRet.f32 %8358, 0
  %9470 = fsub fast float %9468, %9469
  %9471 = extractvalue %dx.types.CBufRet.f32 %8358, 2
  %9472 = fmul fast float %9470, %9471
  %9473 = call float @dx.op.unary.f32(i32 7, float %9472)  ; Saturate(value)
  %9474 = fadd fast float %9473, -5.000000e-01
  %9475 = fmul fast float %9474, 2.000000e+00
  %9476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 44)  ; CBufferLoadLegacy(handle,regIndex)
  %9477 = extractvalue %dx.types.CBufRet.f32 %9476, 2
  %9478 = call float @dx.op.binary.f32(i32 36, float %9477, float %9475)  ; FMin(a,b)
  %9479 = fsub fast float -0.000000e+00, %9477
  %9480 = fcmp fast ogt float %9478, %9479
  br i1 %9480, label %9481, label %9793, !dx.controlflow.hints !168

; <label>:9481                                    ; preds = %9426
  %9482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 38)  ; CBufferLoadLegacy(handle,regIndex)
  %9483 = extractvalue %dx.types.CBufRet.f32 %9482, 3
  %9484 = fcmp fast ogt float %9483, 0.000000e+00
  br i1 %9484, label %9485, label %9560, !dx.controlflow.hints !169

; <label>:9485                                    ; preds = %9481
  %9486 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %25, i32 0)  ; GetDimensions(handle,mipLevel)
  %9487 = extractvalue %dx.types.Dimensions %9486, 0
  %9488 = sitofp i32 %9487 to float
  %9489 = extractvalue %dx.types.Dimensions %9486, 1
  %9490 = sitofp i32 %9489 to float
  %9491 = fmul fast float %9430, %9488
  %9492 = fmul fast float %9431, %9490
  %9493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9494 = extractvalue %dx.types.CBufRet.f32 %9493, 1
  %9495 = fsub fast float -0.000000e+00, %9494
  %9496 = fptoui float %9495 to i32
  %9497 = fptoui float %9491 to i32
  %9498 = fptoui float %9492 to i32
  %9499 = and i32 %9496, 31
  %9500 = lshr i32 %9497, %9499
  %9501 = lshr i32 %9498, %9499
  %9502 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %25, i32 %9496, i32 %9500, i32 %9501, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9503 = extractvalue %dx.types.ResRet.f32 %9502, 0
  %9504 = fcmp fast olt float %9503, -1.000000e+00
  %9505 = fcmp fast ogt float %9503, -1.000000e+00
  %9506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9507 = extractvalue %dx.types.CBufRet.f32 %9506, 1
  %9508 = select i1 %9505, float %9507, float 1.000000e+00
  %9509 = fadd fast float %9503, 1.000000e+00
  %9510 = fmul fast float %9508, %9509
  %9511 = call float @dx.op.unary.f32(i32 6, float %9510)  ; FAbs(value)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9506, 3
  %9513 = fcmp fast oge float %9511, %9512
  %9514 = select i1 %9513, float 0x4197782600000000, float %9511
  %9515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 112)  ; CBufferLoadLegacy(handle,regIndex)
  %9516 = extractvalue %dx.types.CBufRet.f32 %9515, 0
  %9517 = extractvalue %dx.types.CBufRet.f32 %9515, 1
  %9518 = extractvalue %dx.types.CBufRet.f32 %9515, 2
  %9519 = select i1 %9504, float %9516, float %9437
  %9520 = select i1 %9504, float %9517, float %9438
  %9521 = select i1 %9504, float %9518, float %9439
  %9522 = fmul fast float %9519, %9434
  %9523 = fmul fast float %9520, %9434
  %9524 = fmul fast float %9521, %9434
  %9525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 113)  ; CBufferLoadLegacy(handle,regIndex)
  %9526 = extractvalue %dx.types.CBufRet.f32 %9525, 0
  %9527 = extractvalue %dx.types.CBufRet.f32 %9525, 1
  %9528 = extractvalue %dx.types.CBufRet.f32 %9525, 2
  %9529 = select i1 %9504, float %9526, float %9444
  %9530 = select i1 %9504, float %9527, float %9445
  %9531 = select i1 %9504, float %9528, float %9446
  %9532 = fmul fast float %9529, %9435
  %9533 = fmul fast float %9530, %9435
  %9534 = fmul fast float %9531, %9435
  %9535 = fadd fast float %9532, %9522
  %9536 = fadd fast float %9533, %9523
  %9537 = fadd fast float %9534, %9524
  %9538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 114)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9538, 0
  %9540 = extractvalue %dx.types.CBufRet.f32 %9538, 1
  %9541 = extractvalue %dx.types.CBufRet.f32 %9538, 2
  %9542 = select i1 %9504, float %9539, float %9451
  %9543 = select i1 %9504, float %9540, float %9452
  %9544 = select i1 %9504, float %9541, float %9453
  %9545 = fadd fast float %9535, %9542
  %9546 = fadd fast float %9536, %9543
  %9547 = fadd fast float %9537, %9544
  %9548 = fmul fast float %9545, %9514
  %9549 = fmul fast float %9546, %9514
  %9550 = fmul fast float %9547, %9514
  %9551 = fmul fast float %9548, %9548
  %9552 = fmul fast float %9549, %9549
  %9553 = fadd fast float %9551, %9552
  %9554 = fmul fast float %9550, %9550
  %9555 = fadd fast float %9553, %9554
  %9556 = call float @dx.op.unary.f32(i32 24, float %9555)  ; Sqrt(value)
  %9557 = fsub fast float %9556, %9469
  %9558 = fmul fast float %9557, %9471
  %9559 = call float @dx.op.unary.f32(i32 7, float %9558)  ; Saturate(value)
  br label %9560

; <label>:9560                                    ; preds = %9485, %9481
  %9561 = phi float [ %9559, %9485 ], [ 1.000000e+00, %9481 ]
  %9562 = fmul fast float %9478, 5.000000e-01
  %9563 = fadd fast float %9562, 5.000000e-01
  %9564 = call float @dx.op.unary.f32(i32 22, float %9563)  ; Frc(value)
  %9565 = call float @dx.op.unary.f32(i32 27, float %9564)  ; Round_ni(value)
  %9566 = call float @dx.op.unary.f32(i32 22, float %9564)  ; Frc(value)
  %9567 = fmul fast float %9566, 2.000000e+00
  %9568 = fadd fast float %9567, -1.000000e+00
  %9569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %42, float %9430, float %9431, float %9565, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9570 = extractvalue %dx.types.ResRet.f32 %9569, 0
  %9571 = extractvalue %dx.types.ResRet.f32 %9569, 1
  %9572 = extractvalue %dx.types.ResRet.f32 %9569, 2
  %9573 = extractvalue %dx.types.ResRet.f32 %9569, 3
  %9574 = fadd fast float %9570, -5.000000e-01
  %9575 = fadd fast float %9572, -5.000000e-01
  %9576 = fmul fast float %9574, 0xBFD5555560000000
  %9577 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %9575, float %9576)  ; FMad(a,b,c)
  %9578 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %9571, float 0.000000e+00)  ; FMad(a,b,c)
  %9579 = fadd fast float %9578, %9573
  %9580 = fmul fast float %9574, -7.500000e-01
  %9581 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %9575, float %9580)  ; FMad(a,b,c)
  %9582 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %9571, float 0.000000e+00)  ; FMad(a,b,c)
  %9583 = fadd fast float %9582, %9573
  %9584 = call float @dx.op.binary.f32(i32 35, float %9577, float -1.000000e+00)  ; FMax(a,b)
  %9585 = call float @dx.op.binary.f32(i32 35, float %9579, float -1.000000e+00)  ; FMax(a,b)
  %9586 = call float @dx.op.binary.f32(i32 35, float %9581, float -1.000000e+00)  ; FMax(a,b)
  %9587 = call float @dx.op.binary.f32(i32 35, float %9583, float -1.000000e+00)  ; FMax(a,b)
  %9588 = call float @dx.op.binary.f32(i32 36, float %9584, float 1.000000e+00)  ; FMin(a,b)
  %9589 = call float @dx.op.binary.f32(i32 36, float %9585, float 1.000000e+00)  ; FMin(a,b)
  %9590 = call float @dx.op.binary.f32(i32 36, float %9586, float 1.000000e+00)  ; FMin(a,b)
  %9591 = call float @dx.op.binary.f32(i32 36, float %9587, float 1.000000e+00)  ; FMin(a,b)
  %9592 = fcmp fast olt float %9588, 0x3FEFFF8020000000
  br i1 %9592, label %9593, label %9708, !dx.controlflow.hints !170

; <label>:9593                                    ; preds = %9560
  %9594 = extractvalue %dx.types.CBufRet.f32 %9476, 3
  %9595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 43)  ; CBufferLoadLegacy(handle,regIndex)
  %9596 = extractvalue %dx.types.CBufRet.f32 %9595, 0
  %9597 = extractvalue %dx.types.CBufRet.f32 %9595, 1
  %9598 = extractvalue %dx.types.CBufRet.f32 %9595, 2
  %9599 = extractvalue %dx.types.CBufRet.f32 %9595, 3
  %9600 = fsub fast float %9596, %9588
  %9601 = fsub fast float %9597, %9589
  %9602 = fsub fast float %9598, %9590
  %9603 = fsub fast float %9599, %9591
  %9604 = fmul fast float %9600, %9594
  %9605 = fmul fast float %9601, %9594
  %9606 = fmul fast float %9602, %9594
  %9607 = fmul fast float %9603, %9594
  %9608 = fadd fast float %9604, %9588
  %9609 = fadd fast float %9605, %9589
  %9610 = fsub fast float -0.000000e+00, %9609
  %9611 = fadd fast float %9606, %9590
  %9612 = fadd fast float %9607, %9591
  %9613 = fmul fast float %9608, %9608
  %9614 = fsub fast float %9609, %9613
  %9615 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %9614)  ; FMax(a,b)
  %9616 = fdiv fast float 1.000000e+00, %9615
  %9617 = fmul fast float %9609, %9608
  %9618 = fsub fast float %9611, %9617
  %9619 = fsub fast float %9568, %9608
  %9620 = fmul fast float %9568, %9568
  %9621 = fsub fast float %9620, %9609
  %9622 = fmul fast float %9619, %9616
  %9623 = fmul fast float %9622, %9618
  %9624 = fsub fast float %9621, %9623
  %9625 = fmul fast float %9609, %9609
  %9626 = fsub fast float %9612, %9625
  %9627 = fmul fast float %9618, %9618
  %9628 = fmul fast float %9627, %9616
  %9629 = fsub fast float %9626, %9628
  %9630 = fdiv fast float %9624, %9629
  %9631 = fmul fast float %9618, %9630
  %9632 = fsub fast float %9619, %9631
  %9633 = fmul fast float %9632, %9616
  %9634 = fmul fast float %9633, %9608
  %9635 = fsub fast float 1.000000e+00, %9634
  %9636 = fmul fast float %9609, %9630
  %9637 = fsub fast float %9635, %9636
  %9638 = fmul fast float %9633, %9633
  %9639 = fmul fast float %9630, 4.000000e+00
  %9640 = fmul fast float %9639, %9637
  %9641 = fsub fast float %9638, %9640
  %9642 = call float @dx.op.unary.f32(i32 24, float %9641)  ; Sqrt(value)
  %9643 = fcmp fast oge float %9633, 0.000000e+00
  %9644 = fsub fast float -0.000000e+00, %9642
  %9645 = select i1 %9643, float %9644, float %9642
  %9646 = fsub fast float %9645, %9633
  %9647 = fdiv fast float %9646, %9630
  %9648 = fdiv fast float %9637, %9646
  %9649 = fmul fast float %9647, 5.000000e-01
  %9650 = fmul fast float %9648, 2.000000e+00
  %9651 = select i1 %9643, float %9649, float %9650
  %9652 = select i1 %9643, float %9650, float %9649
  %9653 = call float @dx.op.binary.f32(i32 35, float %9651, float %9652)  ; FMax(a,b)
  %9654 = call float @dx.op.binary.f32(i32 36, float %9651, float %9652)  ; FMin(a,b)
  %9655 = fcmp fast ogt float %9568, %9654
  br i1 %9655, label %9656, label %9666

; <label>:9656                                    ; preds = %9593
  %9657 = fsub fast float %9568, %9654
  %9658 = fsub fast float %9653, %9654
  %9659 = fmul fast float %9657, %9658
  %9660 = fmul fast float %9653, %9568
  %9661 = fadd fast float %9653, %9568
  %9662 = fmul fast float %9661, %9608
  %9663 = fadd fast float %9660, %9609
  %9664 = fsub fast float %9663, %9662
  %9665 = fdiv fast float %9664, %9659
  br label %9666

; <label>:9666                                    ; preds = %9656, %9593
  %9667 = phi float [ %9665, %9656 ], [ 0.000000e+00, %9593 ]
  %9668 = fcmp fast ogt float %9568, %9653
  %9669 = fsub fast float %9568, %9653
  br i1 %9668, label %9670, label %9680

; <label>:9670                                    ; preds = %9666
  %9671 = fsub fast float %9653, %9654
  %9672 = fmul fast float %9671, %9669
  %9673 = fmul fast float %9654, %9568
  %9674 = fadd fast float %9654, %9568
  %9675 = fmul fast float %9674, %9608
  %9676 = fsub fast float %9610, %9673
  %9677 = fadd fast float %9676, %9675
  %9678 = fdiv fast float %9677, %9672
  %9679 = fadd fast float %9678, %9667
  br label %9680

; <label>:9680                                    ; preds = %9670, %9666
  %9681 = phi float [ %9679, %9670 ], [ %9667, %9666 ]
  %9682 = fsub fast float %9568, %9654
  %9683 = fmul fast float %9682, %9669
  %9684 = fmul fast float %9654, %9653
  %9685 = fadd fast float %9654, %9653
  %9686 = fmul fast float %9685, %9608
  %9687 = fadd fast float %9684, %9609
  %9688 = fsub fast float %9687, %9686
  %9689 = fdiv fast float %9688, %9683
  %9690 = call float @dx.op.unary.f32(i32 7, float %9681)  ; Saturate(value)
  %9691 = fcmp fast oeq float %8359, 0.000000e+00
  %9692 = extractvalue %dx.types.CBufRet.f32 %9476, 0
  %9693 = fcmp fast oeq float %9692, 0.000000e+00
  %9694 = or i1 %9691, %9693
  %9695 = fmul fast float %9692, 2.000000e+00
  %9696 = fadd fast float %9477, %9478
  %9697 = fdiv fast float %9696, %9695
  %9698 = call float @dx.op.unary.f32(i32 7, float %9697)  ; Saturate(value)
  %9699 = fmul fast float %9698, 2.000000e+00
  %9700 = fsub fast float 3.000000e+00, %9699
  %9701 = fmul fast float %9698, %9698
  %9702 = fmul fast float %9701, %9700
  %9703 = select i1 %9694, float 1.000000e+00, float %9702
  %9704 = fmul fast float %9689, %8359
  %9705 = fadd fast float %9690, %9704
  %9706 = call float @dx.op.unary.f32(i32 7, float %9705)  ; Saturate(value)
  %9707 = fmul fast float %9703, %9706
  br label %9708

; <label>:9708                                    ; preds = %9680, %9560
  %9709 = phi float [ %9707, %9680 ], [ 0.000000e+00, %9560 ]
  %9710 = fsub fast float 1.000000e+00, %9709
  %9711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %42, float %9430, float %9431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9712 = extractvalue %dx.types.ResRet.f32 %9711, 0
  %9713 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 45)  ; CBufferLoadLegacy(handle,regIndex)
  %9714 = extractvalue %dx.types.CBufRet.i32 %9713, 2
  %9715 = icmp eq i32 %9714, 0
  br i1 %9715, label %9721, label %9716

; <label>:9716                                    ; preds = %9708
  %9717 = call float @dx.op.unary.f32(i32 7, float %9709)  ; Saturate(value)
  %9718 = fadd fast float %9712, -1.000000e+00
  %9719 = fmul fast float %9717, %9718
  %9720 = fadd fast float %9719, 1.000000e+00
  br label %9721

; <label>:9721                                    ; preds = %9716, %9708
  %9722 = phi float [ %9720, %9716 ], [ %9710, %9708 ]
  br i1 %9484, label %9723, label %9741

; <label>:9723                                    ; preds = %9721
  %9724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 39)  ; CBufferLoadLegacy(handle,regIndex)
  %9725 = extractvalue %dx.types.CBufRet.f32 %9724, 1
  %9726 = fsub fast float %9561, %9725
  %9727 = call float @dx.op.unary.f32(i32 7, float %9726)  ; Saturate(value)
  %9728 = fsub fast float %9561, %9483
  %9729 = call float @dx.op.unary.f32(i32 7, float %9728)  ; Saturate(value)
  %9730 = fsub fast float %9727, %9729
  %9731 = fsub fast float %9563, %9729
  %9732 = fdiv fast float %9731, %9730
  %9733 = call float @dx.op.unary.f32(i32 7, float %9732)  ; Saturate(value)
  %9734 = fmul fast float %9733, 2.000000e+00
  %9735 = fsub fast float 3.000000e+00, %9734
  %9736 = fsub fast float %9712, %9722
  %9737 = fmul fast float %9733, %9733
  %9738 = fmul fast float %9737, %9736
  %9739 = fmul fast float %9738, %9735
  %9740 = fadd fast float %9739, %9722
  br label %9741

; <label>:9741                                    ; preds = %9723, %9721
  %9742 = phi float [ %9740, %9723 ], [ %9722, %9721 ]
  %9743 = call float @dx.op.binary.f32(i32 35, float %9712, float %9742)  ; FMax(a,b)
  %9744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 251)  ; CBufferLoadLegacy(handle,regIndex)
  %9745 = extractvalue %dx.types.CBufRet.i32 %9744, 2
  %9746 = and i32 %9745, 1
  %9747 = icmp eq i32 %9746, 0
  %9748 = fcmp fast une float %9743, 1.000000e+00
  %9749 = and i1 %9748, %9747
  br i1 %9749, label %9750, label %9769

; <label>:9750                                    ; preds = %9741
  %9751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %42, float %9430, float %9431, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9752 = extractvalue %dx.types.ResRet.f32 %9751, 0
  %9753 = extractvalue %dx.types.ResRet.f32 %9751, 1
  %9754 = extractvalue %dx.types.ResRet.f32 %9751, 2
  %9755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9756 = extractvalue %dx.types.CBufRet.f32 %9755, 1
  %9757 = fmul fast float %9756, %9752
  %9758 = fmul fast float %9756, %9753
  %9759 = fmul fast float %9756, %9754
  %9760 = fcmp fast ogt float %9712, 0x3FEFFF2E40000000
  %9761 = fsub fast float 1.000000e+00, %9743
  %9762 = fsub fast float 1.000000e+00, %9712
  %9763 = fdiv fast float %9761, %9762
  %9764 = call float @dx.op.unary.f32(i32 7, float %9763)  ; Saturate(value)
  %9765 = select i1 %9760, float 0.000000e+00, float %9764
  %9766 = fmul fast float %9757, %9765
  %9767 = fmul fast float %9758, %9765
  %9768 = fmul fast float %9759, %9765
  br label %9769

; <label>:9769                                    ; preds = %9750, %9741
  %9770 = phi float [ 0.000000e+00, %9741 ], [ %9766, %9750 ]
  %9771 = phi float [ 0.000000e+00, %9741 ], [ %9767, %9750 ]
  %9772 = phi float [ 0.000000e+00, %9741 ], [ %9768, %9750 ]
  %9773 = fmul fast float %9770, %8355
  %9774 = fmul fast float %9771, %8356
  %9775 = fmul fast float %9772, %8357
  %9776 = fmul fast float %9743, %9405
  %9777 = call float @dx.op.dot3.f32(i32 55, float %9743, float %9743, float %9743, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9778 = call float @dx.op.dot3.f32(i32 55, float %9773, float %9774, float %9775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9779 = select i1 %279, float %9777, float %9743
  %9780 = select i1 %279, float 1.000000e+00, float %9743
  %9781 = select i1 %279, float %9778, float %9773
  %9782 = select i1 %279, float 0.000000e+00, float %9774
  %9783 = select i1 %279, float 0.000000e+00, float %9775
  %9784 = fmul fast float %9779, %9417
  %9785 = fmul fast float %9779, %9418
  %9786 = fmul fast float %9780, %9419
  %9787 = fadd fast float %9784, %9781
  %9788 = fadd fast float %9785, %9782
  %9789 = fadd fast float %9783, %9786
  %9790 = fmul fast float %9779, %9420
  %9791 = fmul fast float %9779, %9421
  %9792 = fmul fast float %9780, %9422
  br label %9793

; <label>:9793                                    ; preds = %9769, %9426, %9395, %8627
  %9794 = phi float [ %8632, %8627 ], [ %9417, %9395 ], [ %9787, %9769 ], [ %9417, %9426 ]
  %9795 = phi float [ %8633, %8627 ], [ %9418, %9395 ], [ %9788, %9769 ], [ %9418, %9426 ]
  %9796 = phi float [ %8634, %8627 ], [ %9419, %9395 ], [ %9789, %9769 ], [ %9419, %9426 ]
  %9797 = phi float [ %8635, %8627 ], [ %9420, %9395 ], [ %9790, %9769 ], [ %9420, %9426 ]
  %9798 = phi float [ %8636, %8627 ], [ %9421, %9395 ], [ %9791, %9769 ], [ %9421, %9426 ]
  %9799 = phi float [ %8637, %8627 ], [ %9422, %9395 ], [ %9792, %9769 ], [ %9422, %9426 ]
  %9800 = phi float [ %8638, %8627 ], [ %9405, %9395 ], [ %9776, %9769 ], [ %9405, %9426 ]
  %9801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %9802 = extractvalue %dx.types.CBufRet.f32 %9801, 2
  %9803 = extractvalue %dx.types.CBufRet.f32 %9801, 3
  %9804 = fmul fast float %9802, %107
  %9805 = fmul fast float %9803, %108
  %9806 = call float @dx.op.unary.f32(i32 7, float %9804)  ; Saturate(value)
  %9807 = call float @dx.op.unary.f32(i32 7, float %9805)  ; Saturate(value)
  %9808 = select i1 %8369, i32 2, i32 0
  %9809 = or i32 %9808, 1
  %9810 = uitofp i32 %9809 to float
  %9811 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9806, float %9807, float %9810, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9812 = extractvalue %dx.types.ResRet.f32 %9811, 0
  %9813 = extractvalue %dx.types.ResRet.f32 %9811, 1
  %9814 = extractvalue %dx.types.ResRet.f32 %9811, 2
  %9815 = extractvalue %dx.types.ResRet.f32 %9811, 3
  %9816 = add nuw nsw i32 %9808, 2
  %9817 = uitofp i32 %9816 to float
  %9818 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %4, %dx.types.Handle %42, float %9806, float %9807, float %9817, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9819 = extractvalue %dx.types.ResRet.f32 %9818, 0
  %9820 = extractvalue %dx.types.ResRet.f32 %9818, 1
  %9821 = extractvalue %dx.types.ResRet.f32 %9818, 2
  %9822 = extractvalue %dx.types.ResRet.f32 %9818, 3
  %9823 = call float @dx.op.binary.f32(i32 35, float %9813, float %9814)  ; FMax(a,b)
  %9824 = call float @dx.op.binary.f32(i32 35, float %9812, float %9823)  ; FMax(a,b)
  %9825 = call float @dx.op.binary.f32(i32 35, float %9824, float %9815)  ; FMax(a,b)
  %9826 = call float @dx.op.binary.f32(i32 36, float %9820, float %9821)  ; FMin(a,b)
  %9827 = call float @dx.op.binary.f32(i32 36, float %9819, float %9826)  ; FMin(a,b)
  %9828 = call float @dx.op.binary.f32(i32 36, float %9827, float %9822)  ; FMin(a,b)
  %9829 = fmul fast float %9825, 2.550000e+02
  %9830 = fadd fast float %9829, 0x3F70101020000000
  %9831 = fptoui float %9830 to i32
  %9832 = fmul fast float %9828, 2.550000e+02
  %9833 = fadd fast float %9832, 0x3F70101020000000
  %9834 = fptoui float %9833 to i32
  %9835 = icmp ult i32 %9831, %9834
  br i1 %9835, label %9836, label %10005

; <label>:9836                                    ; preds = %9793
  %9837 = fcmp fast ogt float %93, 9.843750e-01
  %9838 = fadd fast float %8631, -4.000000e+00
  %9839 = select i1 %9837, float -4.000000e+00, float %9838
  %9840 = call float @dx.op.binary.f32(i32 35, float %9839, float 0.000000e+00)  ; FMax(a,b)
  %9841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9842 = extractvalue %dx.types.CBufRet.f32 %9841, 0
  %9843 = fadd fast float %9842, %9840
  %9844 = extractvalue %dx.types.CBufRet.f32 %9841, 2
  %9845 = fmul fast float %9843, %9844
  %9846 = call float @dx.op.unary.f32(i32 23, float %9845)  ; Log(value)
  %9847 = extractvalue %dx.types.CBufRet.f32 %9841, 3
  %9848 = fmul fast float %9847, %9846
  %9849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9850 = extractvalue %dx.types.CBufRet.f32 %9849, 2
  %9851 = fmul fast float %9848, %9850
  %9852 = call float @dx.op.unary.f32(i32 7, float %9851)  ; Saturate(value)
  %9853 = uitofp i32 %9831 to float
  %9854 = uitofp i32 %9834 to float
  %9855 = fadd fast float %9853, 5.000000e-01
  %9856 = fadd fast float %9854, 5.000000e-01
  %9857 = fmul fast float %9850, %9855
  %9858 = fmul fast float %9850, %9856
  %9859 = fadd fast float %9857, 0x3F0FFB4800000000
  %9860 = fadd fast float %9858, 0xBF0FFB4800000000
  %9861 = call float @dx.op.binary.f32(i32 35, float %9852, float %9859)  ; FMax(a,b)
  %9862 = call float @dx.op.binary.f32(i32 36, float %9861, float %9860)  ; FMin(a,b)
  %9863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9864 = extractvalue %dx.types.CBufRet.f32 %9863, 1
  %9865 = extractvalue %dx.types.CBufRet.f32 %9863, 2
  %9866 = extractvalue %dx.types.CBufRet.f32 %9863, 0
  %9867 = select i1 %8369, float %9866, float 0.000000e+00
  %9868 = fmul fast float %9864, %9862
  %9869 = fadd fast float %9867, %9868
  %9870 = fadd fast float %9867, %9865
  %9871 = fsub fast float %9864, %9865
  %9872 = fadd fast float %9871, %9867
  %9873 = call float @dx.op.binary.f32(i32 35, float %9869, float %9870)  ; FMax(a,b)
  %9874 = call float @dx.op.binary.f32(i32 36, float %9873, float %9872)  ; FMin(a,b)
  %9875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %40, float %9806, float %9807, float %9874, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9876 = extractvalue %dx.types.ResRet.f32 %9875, 0
  %9877 = extractvalue %dx.types.ResRet.f32 %9875, 1
  %9878 = extractvalue %dx.types.ResRet.f32 %9875, 2
  %9879 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %9880 = extractvalue %dx.types.CBufRet.i32 %9879, 0
  %9881 = extractvalue %dx.types.CBufRet.i32 %9879, 1
  %9882 = uitofp i32 %9880 to float
  %9883 = uitofp i32 %9881 to float
  %9884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %9885 = extractvalue %dx.types.CBufRet.f32 %9884, 0
  %9886 = extractvalue %dx.types.CBufRet.f32 %9884, 1
  %9887 = fmul fast float %9882, %9806
  %9888 = fmul fast float %9883, %9807
  %9889 = fadd fast float %9887, -5.000000e-01
  %9890 = fadd fast float %9888, -5.000000e-01
  %9891 = call float @dx.op.unary.f32(i32 22, float %9889)  ; Frc(value)
  %9892 = call float @dx.op.unary.f32(i32 22, float %9890)  ; Frc(value)
  %9893 = fmul fast float %9891, %9891
  %9894 = fmul fast float %9893, %9891
  %9895 = fsub fast float 3.000000e+00, %9891
  %9896 = fmul fast float %9893, %9895
  %9897 = fmul fast float %9891, 3.000000e+00
  %9898 = fmul fast float %9894, 3.000000e+00
  %9899 = fmul fast float %9893, 6.000000e+00
  %9900 = fsub fast float %9898, %9899
  %9901 = fadd fast float %9900, 4.000000e+00
  %9902 = fmul fast float %9901, 0x3FC5555560000000
  %9903 = fmul fast float %9894, -3.000000e+00
  %9904 = fadd fast float %9893, %9891
  %9905 = fmul fast float %9904, 3.000000e+00
  %9906 = fadd fast float %9903, 1.000000e+00
  %9907 = fadd fast float %9906, %9905
  %9908 = fmul fast float %9894, 0x3FC5555560000000
  %9909 = fmul fast float %9892, %9892
  %9910 = fmul fast float %9909, %9892
  %9911 = fsub fast float 3.000000e+00, %9892
  %9912 = fmul fast float %9909, %9911
  %9913 = fmul fast float %9892, 3.000000e+00
  %9914 = fmul fast float %9910, 3.000000e+00
  %9915 = fmul fast float %9909, 6.000000e+00
  %9916 = fsub fast float %9914, %9915
  %9917 = fadd fast float %9916, 4.000000e+00
  %9918 = fmul fast float %9917, 0x3FC5555560000000
  %9919 = fmul fast float %9910, -3.000000e+00
  %9920 = fadd fast float %9909, %9892
  %9921 = fmul fast float %9920, 3.000000e+00
  %9922 = fadd fast float %9919, 1.000000e+00
  %9923 = fadd fast float %9922, %9921
  %9924 = fmul fast float %9910, 0x3FC5555560000000
  %9925 = fadd fast float %9891, 1.000000e+00
  %9926 = fsub fast float 1.000000e+00, %9897
  %9927 = fadd fast float %9926, %9896
  %9928 = fadd fast float %9927, %9901
  %9929 = fmul fast float %9928, 0x3FC5555560000000
  %9930 = fdiv fast float %9902, %9929
  %9931 = fsub fast float %9925, %9930
  %9932 = fsub fast float 1.000000e+00, %9891
  %9933 = fadd fast float %9907, %9894
  %9934 = fmul fast float %9933, 0x3FC5555560000000
  %9935 = fdiv fast float %9908, %9934
  %9936 = fadd fast float %9932, %9935
  %9937 = fadd fast float %9892, 1.000000e+00
  %9938 = fsub fast float 1.000000e+00, %9913
  %9939 = fadd fast float %9938, %9912
  %9940 = fadd fast float %9939, %9917
  %9941 = fmul fast float %9940, 0x3FC5555560000000
  %9942 = fdiv fast float %9918, %9941
  %9943 = fsub fast float %9937, %9942
  %9944 = fsub fast float 1.000000e+00, %9892
  %9945 = fadd fast float %9923, %9910
  %9946 = fmul fast float %9945, 0x3FC5555560000000
  %9947 = fdiv fast float %9924, %9946
  %9948 = fadd fast float %9947, %9944
  %9949 = fmul fast float %9931, %9885
  %9950 = fsub fast float %9806, %9949
  %9951 = fmul fast float %9936, %9885
  %9952 = fadd fast float %9951, %9806
  %9953 = fmul fast float %9948, %9886
  %9954 = fadd fast float %9953, %9807
  %9955 = fmul fast float %9943, %9886
  %9956 = fsub fast float %9807, %9955
  %9957 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9950, float %9956, float %9874, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9958 = extractvalue %dx.types.ResRet.f32 %9957, 0
  %9959 = extractvalue %dx.types.ResRet.f32 %9957, 1
  %9960 = extractvalue %dx.types.ResRet.f32 %9957, 2
  %9961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9952, float %9956, float %9874, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9962 = extractvalue %dx.types.ResRet.f32 %9961, 0
  %9963 = extractvalue %dx.types.ResRet.f32 %9961, 1
  %9964 = extractvalue %dx.types.ResRet.f32 %9961, 2
  %9965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9950, float %9954, float %9874, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9966 = extractvalue %dx.types.ResRet.f32 %9965, 0
  %9967 = extractvalue %dx.types.ResRet.f32 %9965, 1
  %9968 = extractvalue %dx.types.ResRet.f32 %9965, 2
  %9969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %40, float %9952, float %9954, float %9874, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9970 = extractvalue %dx.types.ResRet.f32 %9969, 0
  %9971 = extractvalue %dx.types.ResRet.f32 %9969, 1
  %9972 = extractvalue %dx.types.ResRet.f32 %9969, 2
  %9973 = fsub fast float %9966, %9958
  %9974 = fsub fast float %9967, %9959
  %9975 = fsub fast float %9968, %9960
  %9976 = fmul fast float %9973, %9946
  %9977 = fmul fast float %9974, %9946
  %9978 = fmul fast float %9975, %9946
  %9979 = fadd fast float %9976, %9958
  %9980 = fadd fast float %9977, %9959
  %9981 = fadd fast float %9978, %9960
  %9982 = fsub fast float %9970, %9962
  %9983 = fsub fast float %9971, %9963
  %9984 = fsub fast float %9972, %9964
  %9985 = fmul fast float %9982, %9946
  %9986 = fmul fast float %9983, %9946
  %9987 = fmul fast float %9984, %9946
  %9988 = fsub fast float %9962, %9979
  %9989 = fadd fast float %9988, %9985
  %9990 = fsub fast float %9963, %9980
  %9991 = fadd fast float %9990, %9986
  %9992 = fsub fast float %9964, %9981
  %9993 = fadd fast float %9992, %9987
  %9994 = fmul fast float %9989, %9934
  %9995 = fmul fast float %9991, %9934
  %9996 = fmul fast float %9993, %9934
  %9997 = fadd fast float %9994, %9979
  %9998 = fadd fast float %9995, %9980
  %9999 = fadd fast float %9996, %9981
  %10000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10001 = extractvalue %dx.types.CBufRet.f32 %10000, 1
  %10002 = fmul fast float %9997, %10001
  %10003 = fmul fast float %9998, %10001
  %10004 = fmul fast float %9999, %10001
  br label %10005

; <label>:10005                                   ; preds = %9836, %9793
  %10006 = phi float [ %9876, %9836 ], [ 1.000000e+00, %9793 ]
  %10007 = phi float [ %9877, %9836 ], [ 1.000000e+00, %9793 ]
  %10008 = phi float [ %9878, %9836 ], [ 1.000000e+00, %9793 ]
  %10009 = phi float [ %10002, %9836 ], [ 0.000000e+00, %9793 ]
  %10010 = phi float [ %10003, %9836 ], [ 0.000000e+00, %9793 ]
  %10011 = phi float [ %10004, %9836 ], [ 0.000000e+00, %9793 ]
  %10012 = fmul fast float %10009, %8355
  %10013 = fmul fast float %10010, %8356
  %10014 = fmul fast float %10011, %8357
  %10015 = fmul fast float %10006, %9800
  %10016 = call float @dx.op.dot3.f32(i32 55, float %10006, float %10007, float %10008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10017 = call float @dx.op.dot3.f32(i32 55, float %10012, float %10013, float %10014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10018 = select i1 %279, float %10016, float %10006
  %10019 = select i1 %279, float %10016, float %10007
  %10020 = select i1 %279, float 1.000000e+00, float %10008
  %10021 = select i1 %279, float %10017, float %10012
  %10022 = select i1 %279, float 0.000000e+00, float %10013
  %10023 = select i1 %279, float 0.000000e+00, float %10014
  %10024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %46, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10025 = extractvalue %dx.types.CBufRet.i32 %10024, 3
  %10026 = and i32 %10025, 3
  %10027 = icmp ne i32 %10026, 0
  %10028 = and i32 %10025, 4
  %10029 = icmp ne i32 %10028, 0
  %10030 = and i1 %10027, %10029
  %10031 = and i1 %279, %10030
  br i1 %10031, label %10032, label %10038

; <label>:10032                                   ; preds = %10005
  %10033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10034 = extractvalue %dx.types.CBufRet.f32 %10033, 1
  %10035 = fadd fast float %10015, -1.000000e+00
  %10036 = fmul fast float %10034, %10035
  %10037 = fadd fast float %10036, 1.000000e+00
  br label %10038

; <label>:10038                                   ; preds = %10032, %10005
  %10039 = phi float [ %10037, %10032 ], [ %10015, %10005 ]
  %10040 = fadd fast float %9797, %9794
  %10041 = fmul fast float %10018, %10040
  %10042 = fadd fast float %10041, %10021
  %10043 = fadd fast float %9798, %9795
  %10044 = fmul fast float %10019, %10043
  %10045 = fadd fast float %10044, %10022
  %10046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10047 = extractvalue %dx.types.CBufRet.f32 %10046, 0
  br i1 %279, label %10048, label %10063

; <label>:10048                                   ; preds = %10038
  %10049 = fadd fast float %10042, %10045
  %10050 = fmul fast float %10047, %10049
  %10051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10052 = extractvalue %dx.types.CBufRet.f32 %10051, 3
  %10053 = extractvalue %dx.types.CBufRet.f32 %8339, 1
  %10054 = fsub fast float %8344, %8338
  %10055 = fadd fast float %10054, %8345
  %10056 = fsub fast float %10055, %10053
  %10057 = extractvalue %dx.types.CBufRet.f32 %8339, 2
  %10058 = fmul fast float %10056, %10057
  %10059 = call float @dx.op.unary.f32(i32 7, float %10058)  ; Saturate(value)
  %10060 = fsub fast float %10059, %10052
  %10061 = fmul fast float %10060, %10039
  %10062 = fadd fast float %10061, %10052
  br label %10089

; <label>:10063                                   ; preds = %10038
  %10064 = fadd fast float %9799, %9796
  %10065 = fmul fast float %10020, %10064
  %10066 = fadd fast float %10065, %10023
  %10067 = fmul fast float %10047, %10042
  %10068 = fmul fast float %10047, %10045
  %10069 = fmul fast float %10047, %10066
  %10070 = call float @dx.op.binary.f32(i32 35, float %10068, float %10069)  ; FMax(a,b)
  %10071 = call float @dx.op.binary.f32(i32 35, float %10067, float %10070)  ; FMax(a,b)
  %10072 = call float @dx.op.binary.f32(i32 35, float %8356, float %8357)  ; FMax(a,b)
  %10073 = call float @dx.op.binary.f32(i32 35, float %8355, float %10072)  ; FMax(a,b)
  %10074 = call float @dx.op.binary.f32(i32 35, float %10071, float %10073)  ; FMax(a,b)
  %10075 = fcmp fast ugt float %10074, 0x3F10000000000000
  br i1 %10075, label %10077, label %10076

; <label>:10076                                   ; preds = %10063
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %10077

; <label>:10077                                   ; preds = %10076, %10063
  %10078 = add i32 %48, 356
  %10079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %10078, i32 undef)  ; BufferLoad(srv,index,wot)
  %10080 = extractvalue %dx.types.ResRet.i32 %10079, 0
  %10081 = and i32 %10080, 32
  %10082 = icmp eq i32 %10081, 0
  br i1 %10082, label %10089, label %10083

; <label>:10083                                   ; preds = %10077
  %10084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %46, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %10085 = extractvalue %dx.types.CBufRet.f32 %10084, 0
  %10086 = fmul fast float %10085, 0x3FE99999A0000000
  %10087 = fadd fast float %10085, %10067
  %10088 = fadd fast float %10086, %10069
  br label %10089

; <label>:10089                                   ; preds = %10083, %10077, %10048
  %10090 = phi float [ 1.000000e+00, %10048 ], [ %8356, %10083 ], [ %8356, %10077 ]
  %10091 = phi float [ 1.000000e+00, %10048 ], [ %8357, %10083 ], [ %8357, %10077 ]
  %10092 = phi float [ %10050, %10048 ], [ %10087, %10083 ], [ %10067, %10077 ]
  %10093 = phi float [ %10062, %10048 ], [ %10068, %10083 ], [ %10068, %10077 ]
  %10094 = phi float [ 1.000000e+00, %10048 ], [ %10088, %10083 ], [ %10069, %10077 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10095 = call float @dx.op.binary.f32(i32 36, float %10092, float 3.225500e+04)  ; FMin(a,b)
  %10096 = call float @dx.op.binary.f32(i32 36, float %10093, float 3.225500e+04)  ; FMin(a,b)
  %10097 = call float @dx.op.binary.f32(i32 36, float %10094, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10095)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10096)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10097)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %10098 = call float @dx.op.binary.f32(i32 36, float %8355, float 3.225500e+04)  ; FMin(a,b)
  %10099 = call float @dx.op.binary.f32(i32 36, float %10090, float 3.225500e+04)  ; FMin(a,b)
  %10100 = call float @dx.op.binary.f32(i32 36, float %10091, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %10098)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %10099)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %10100)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

